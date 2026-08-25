#!/usr/bin/env python3
"""
gen_test_vectors.py
===================
Generates test_input.txt / test_golden.txt  (denoiser)
and    test_beats.txt  / test_labels.txt    (classifier)

These files are copied to the Vitis HLS project directory so the
C-simulation testbenches can find them at runtime.

Usage:
    python gen_test_vectors.py \
        --ecg     /content/upoecg_1000.txt \
        --den_model ecg_denoiser.h5 \
        --clf_model ecg_classifier.h5 \
        --csv     /content/100_annotations_1.csv \
        --out_dir ./hls_tb_data
"""

import os, argparse
import numpy as np
from scipy.signal import butter, filtfilt, savgol_filter
from scipy.signal.windows import tukey

# ---- reproduce the Python noise + segment_and_norm exactly ----

def add_irregular_noise(ecg, fs=360, seed=42):
    rng = np.random.default_rng(seed)
    t   = np.arange(len(ecg)) / fs
    noisy = ecg.copy()
    for start in [0, 0.5, 1.0]:
        idx   = int(start * fs * len(ecg) / (fs * 2))
        burst = 20.0 * np.sin(2*np.pi*50*t[:fs]) * tukey(fs, 0.7)
        end   = min(idx + fs, len(noisy))
        if end > idx:
            noisy[idx:end] += burst[:end-idx]
    noisy += 10.0*np.sin(2*np.pi*0.22*t) + 8.0*np.sin(2*np.pi*0.37*t+1)
    noisy += 5.0*rng.standard_normal(len(ecg))
    idx2  = len(ecg)//3
    dur   = min(fs*2, len(ecg)-idx2)
    burst2 = 8.0*rng.standard_normal(int(dur))
    b_filt, a_filt = butter(3, [35,175], btype='band', fs=fs)
    burst2 = filtfilt(b_filt, a_filt, burst2)
    noisy[idx2:idx2+int(dur)] += burst2
    return noisy.astype(np.float32)


def segment_one(sig, start, win=360):
    seg   = sig[start:start+win]
    m, s  = np.mean(seg), np.std(seg)+1e-8
    return (seg-m)/s, m, s


def main():
    ap = argparse.ArgumentParser()
    ap.add_argument("--ecg",        default="/content/upoecg_1000.txt")
    ap.add_argument("--den_model",  default="ecg_denoiser.h5")
    ap.add_argument("--clf_model",  default="ecg_classifier.h5")
    ap.add_argument("--csv",        default="/content/100_annotations_1.csv")
    ap.add_argument("--out_dir",    default="hls_tb_data")
    ap.add_argument("--win",        type=int, default=360)
    ap.add_argument("--beat_len",   type=int, default=187)
    ap.add_argument("--n_beats",    type=int, default=500,
                    help="Number of beats to export for classifier TB")
    args = ap.parse_args()

    os.makedirs(args.out_dir, exist_ok=True)

    # ----------------------------------------------------------------
    # 1. Denoiser vectors
    # ----------------------------------------------------------------
    print("[GEN] Loading ECG …")
    ecg   = np.loadtxt(args.ecg, dtype=np.float32)
    ecg   = ecg[np.isfinite(ecg)].squeeze()

    noisy = add_irregular_noise(ecg, seed=0)

    # Take first WIN=360 samples as the test window
    win   = args.win
    seg_noisy, m, s = segment_one(noisy, 0, win)
    seg_clean, _,_ = segment_one(ecg,   0, win)

    # Generate golden output using the Python model
    try:
        import tensorflow as tf
        den_model = tf.keras.models.load_model(args.den_model)
        seg_pred  = den_model.predict(seg_noisy[np.newaxis,:,np.newaxis], verbose=0).squeeze()
        # de-normalise (matches reconstruct_pred_segs)
        seg_pred_denorm = seg_pred * s + m
        seg_pred_sg     = savgol_filter(seg_pred_denorm, 21, 3)
        # normalise again for direct comparison with HLS output (in normalised domain)
        golden = (seg_pred_sg - np.mean(seg_pred_sg)) / (np.std(seg_pred_sg)+1e-8)
    except Exception as e:
        print(f"[GEN] WARNING: Could not run Python denoiser: {e}")
        print("[GEN]  Using clean segment as golden reference.")
        golden = seg_clean

    np.savetxt(os.path.join(args.out_dir, "test_input.txt"),  seg_noisy, fmt="%.8f")
    np.savetxt(os.path.join(args.out_dir, "test_golden.txt"), golden,    fmt="%.8f")
    print(f"[GEN] Wrote test_input.txt and test_golden.txt  ({win} samples each)")

    # ----------------------------------------------------------------
    # 2. Classifier vectors
    # ----------------------------------------------------------------
    import pandas as pd

    try:
        df      = pd.read_csv(args.csv)
        values  = df.iloc[:,0].values.astype(np.float32)
        labels  = np.array([0 if l=='N' else 1
                            for l in df.iloc[:,1].values], dtype=np.int32)
    except Exception as e:
        print(f"[GEN] WARNING: Could not load CSV: {e}")
        print("[GEN]  Generating synthetic classifier vectors.")
        values = ecg[:args.n_beats*args.beat_len]
        labels = np.zeros(args.n_beats, dtype=np.int32)

    bl  = args.beat_len
    beats, beat_labels = [], []
    step = 60
    for s in range(0, min(len(values)-bl, args.n_beats*step), step):
        seg = values[s:s+bl]
        lab = labels[s:s+bl]
        maj = np.argmax(np.bincount(lab))
        seg = (seg - np.mean(seg)) / (np.std(seg)+1e-8)
        beats.append(seg.astype(np.float32))
        beat_labels.append(maj)
        if len(beats) >= args.n_beats:
            break

    beats       = np.array(beats)       # [N, 187]
    beat_labels = np.array(beat_labels) # [N]

    # Flatten beats row-major for the testbench loader
    np.savetxt(os.path.join(args.out_dir, "test_beats.txt"),
               beats.flatten(), fmt="%.8f")
    np.savetxt(os.path.join(args.out_dir, "test_labels.txt"),
               beat_labels, fmt="%d")
    print(f"[GEN] Wrote test_beats.txt ({beats.shape}) and test_labels.txt ({len(beat_labels)} labels)")
    print("[GEN] Done. Copy files to the Vitis HLS project directory before running C-sim.")


if __name__ == "__main__":
    main()
