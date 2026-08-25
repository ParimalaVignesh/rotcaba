#!/usr/bin/env python3
"""
prepare_weights.py
==================
Stage 1 + 2: Model Preparation & C++ Header Generation
-------------------------------------------------------
Fuses BatchNorm into Conv1D weights, applies fixed-point scaling,
exports .txt weight files, then generates weights.h for Vitis HLS.

Usage:
    python prepare_weights.py --model ecg_denoiser.h5  --out ../include/weights_denoiser.h
    python prepare_weights.py --model ecg_classifier.h5 --out ../include/weights_classifier.h --mode clf
"""

import os, sys, argparse
import numpy as np

# ---------------------------------------------------------------------------
# 1.  BatchNorm fusion helpers
# ---------------------------------------------------------------------------

def fuse_conv_bn(conv_w, conv_b, bn_gamma, bn_beta, bn_mean, bn_var, eps=1e-3):
    """
    Fold a BatchNormalization layer into the preceding Conv1D.

    Conv1D weight shape (Keras):  [kernel, in_ch, out_ch]
    After fusion the effective operation is:
        y = W_fused * x + b_fused
    where
        scale   = gamma / sqrt(var + eps)
        W_fused = W * scale          (broadcast over kernel & in_ch axes)
        b_fused = (b - mean) * scale + beta
    """
    scale   = bn_gamma / np.sqrt(bn_var + eps)          # [out_ch]
    W_fused = conv_w * scale[np.newaxis, np.newaxis, :]  # [K, in_ch, out_ch]
    b_fused = (conv_b - bn_mean) * scale + bn_beta       # [out_ch]
    return W_fused.astype(np.float32), b_fused.astype(np.float32)


def extract_fused_layers(model):
    """
    Walk a Keras model and return a list of fused (W, b) pairs,
    one per Conv1D+BN block (the final Conv1D with no BN is included as-is).
    """
    layers      = model.layers
    fused_list  = []
    skip_next   = False

    for i, layer in enumerate(layers):
        if skip_next:
            skip_next = False
            continue

        ltype = type(layer).__name__

        if ltype == "Conv1D":
            conv_w, conv_b = layer.get_weights()   # [K, in_ch, out_ch], [out_ch]

            # Look ahead for BatchNorm
            if i + 1 < len(layers) and type(layers[i+1]).__name__ == "BatchNormalization":
                bn = layers[i+1]
                gamma, beta, mean, var = bn.get_weights()
                W_f, b_f = fuse_conv_bn(conv_w, conv_b, gamma, beta, mean, var)
                fused_list.append(("conv_bn", W_f, b_f))
                skip_next = True
            else:
                fused_list.append(("conv", conv_w.astype(np.float32),
                                            conv_b.astype(np.float32)))

        elif ltype == "Dense":
            W, b = layer.get_weights()
            fused_list.append(("dense", W.astype(np.float32), b.astype(np.float32)))

    return fused_list


# ---------------------------------------------------------------------------
# 2.  Fixed-point scaling
# ---------------------------------------------------------------------------

SCALE = 1.0   # denoiser default: weights already in float range, no scaling needed

def scale_weights(fused_list, scale=SCALE):
    scaled = []
    for entry in fused_list:
        kind = entry[0]
        W    = entry[1] * scale
        b    = entry[2] * scale
        scaled.append((kind, W, b))
    return scaled


# ---------------------------------------------------------------------------
# 3.  Export raw .txt files (one per layer, weights then biases)
# ---------------------------------------------------------------------------

def export_txt(scaled_list, out_dir):
    os.makedirs(out_dir, exist_ok=True)
    txt_files = []
    for idx, (kind, W, b) in enumerate(scaled_list):
        wpath = os.path.join(out_dir, f"layer{idx}_weights.txt")
        bpath = os.path.join(out_dir, f"layer{idx}_biases.txt")
        np.savetxt(wpath, W.flatten(),  fmt="%.8f")
        np.savetxt(bpath, np.atleast_1d(b).flatten(), fmt="%.8f")
        txt_files.append((idx, kind, W.shape, b.shape, wpath, bpath))
        print(f"  Layer {idx} ({kind}): W{W.shape}  b{b.shape}")
    return txt_files


# ---------------------------------------------------------------------------
# 4.  C++ header generation  (Stage 2)
# ---------------------------------------------------------------------------

def shape_to_ctype(layer_idx, kind, W_shape, b_shape):
    """
    Map weight tensor shapes to C-array dimension strings.
    Conv1D:  [K, in_ch, out_ch]  -> [out_ch][in_ch][K]   (HLS-friendly: out-major)
    Dense:   [in, out]           -> [out][in]
    Bias:    [out_ch]            -> [out_ch]
    """
    if kind in ("conv_bn", "conv"):
        K, in_ch, out_ch = W_shape
        w_dims = f"[{out_ch}][{in_ch}][{K}]"
    elif kind == "dense":
        in_f, out_f = W_shape
        w_dims = f"[{out_f}][{in_f}]"
    else:
        raise ValueError(f"Unknown kind: {kind}")

    b_dims = f"[{b_shape[0]}]"
    return w_dims, b_dims


def load_and_reshape(wpath, bpath, kind, W_shape, b_shape):
    """Load .txt back and reshape to HLS-friendly layout."""
    W_flat = np.loadtxt(wpath, dtype=np.float32)
    b_flat = np.loadtxt(bpath, dtype=np.float32)
    b_flat = np.atleast_1d(b_flat)

    if kind in ("conv_bn", "conv"):
        K, in_ch, out_ch = W_shape
        # Reshape to [out_ch, in_ch, K] for HLS loop order: out -> in -> k
        W = W_flat.reshape(K, in_ch, out_ch).transpose(2, 1, 0)
    elif kind == "dense":
        in_f, out_f = W_shape
        W = W_flat.reshape(in_f, out_f).T   # [out_f, in_f]
    else:
        W = W_flat

    return W.flatten(), b_flat


def array_literal(flat, per_row=8):
    """Format a flat numpy array as a C initializer list."""
    lines = []
    for i in range(0, len(flat), per_row):
        chunk = flat[i:i+per_row]
        lines.append("    " + ", ".join(f"{v:.8f}f" for v in chunk))
    return ",\n".join(lines)


def generate_header(txt_files, header_path, data_type, namespace):
    guard = os.path.basename(header_path).upper().replace(".", "_")
    lines = []
    lines.append(f"// Auto-generated by prepare_weights.py  --  DO NOT EDIT")
    lines.append(f"// Fixed-point scale: {SCALE}x  |  type: {data_type}")
    lines.append(f"#ifndef {guard}")
    lines.append(f"#define {guard}")
    lines.append("")
    lines.append('#include "ap_fixed.h"')
    lines.append("")
    lines.append(f"namespace {namespace} {{")
    lines.append("")
    lines.append(f"typedef {data_type} weight_t;")
    lines.append("")

    for idx, kind, W_shape, b_shape, wpath, bpath in txt_files:
        w_flat, b_flat = load_and_reshape(wpath, bpath, kind, W_shape, b_shape)
        w_dims, b_dims = shape_to_ctype(idx, kind, W_shape, b_shape)

        lines.append(f"// Layer {idx}  ({kind})  W{W_shape}  b{b_shape}")
        lines.append(f"static const weight_t L{idx}_W{w_dims} = {{")
        lines.append(array_literal(w_flat))
        lines.append("};")
        lines.append("")
        lines.append(f"static const weight_t L{idx}_b{b_dims} = {{")
        lines.append(array_literal(b_flat))
        lines.append("};")
        lines.append("")

    lines.append(f"}} // namespace {namespace}")
    lines.append(f"#endif // {guard}")

    with open(header_path, "w") as f:
        f.write("\n".join(lines))
    print(f"\nHeader written to: {header_path}")


# ---------------------------------------------------------------------------
# 5.  CLI entry-point
# ---------------------------------------------------------------------------

def main():
    ap = argparse.ArgumentParser()
    ap.add_argument("--model",    required=True,  help="Path to .h5 or .keras model")
    ap.add_argument("--out",      required=True,  help="Output .h header path")
    ap.add_argument("--mode",     default="den",  choices=["den","clf"],
                    help="den = denoiser, clf = classifier")
    ap.add_argument("--txt_dir",  default="weights_txt",
                    help="Directory for intermediate .txt files")
    ap.add_argument("--scale",    type=float, default=1.0,
                    help="Fixed-point scale factor (default 1.0 = no scaling)")
    args = ap.parse_args()

    global SCALE
    SCALE = args.scale

    # ── Mode-specific settings ───────────────────────────────────────────────
    # denoiser: namespace=denoiser_w, data_type=ap_fixed<32,16>  (matches ecg_types.h data_t)
    # classifier: namespace=clf_w,    data_type=ap_fixed<16,8>   (matches ecg_types.h weight_t)
    if args.mode == "den":
        namespace = "denoiser_w"
        data_type = "ap_fixed<32,16>"
    else:
        namespace = "clf_w"               # ← MUST match ecg_classifier.cpp clf_w:: references
        data_type = "ap_fixed<16,8>"      # ← MUST match ecg_types.h weight_t typedef

    try:
        import tensorflow as tf
        model = tf.keras.models.load_model(args.model)
    except ImportError:
        print("TensorFlow not found. Install it to load .h5/.keras models.")
        sys.exit(1)

    print(f"\n[1] Extracting & fusing layers from: {args.model}")
    fused   = extract_fused_layers(model)
    print(f"    Found {len(fused)} layers:")
    for i, (kind, W, b) in enumerate(fused):
        print(f"    Layer {i}: {kind}  W{W.shape}  b{b.shape}")

    if len(fused) == 0:
        print("\nERROR: No layers extracted. Check that your model file is valid")
        print("       and contains Conv1D / Dense layers (with optional BatchNorm).")
        sys.exit(1)

    print(f"\n[2] Applying {SCALE}x fixed-point scaling")
    scaled  = scale_weights(fused, scale=SCALE)

    txt_dir = args.txt_dir + f"_{args.mode}"
    print(f"\n[3] Exporting .txt weight files to: {txt_dir}")
    txt_files = export_txt(scaled, txt_dir)

    print(f"\n[4] Generating C++ header: {args.out}")
    print(f"    namespace = {namespace}")
    print(f"    data_type = {data_type}")
    generate_header(txt_files, args.out, data_type=data_type, namespace=namespace)
    print("\nDone.")


if __name__ == "__main__":
    main()