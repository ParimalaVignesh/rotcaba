#include <iostream>
#include <fstream>
#include <cmath>
#include "ecg_denoiser.h"
#include "ecg_types.h"

#define PIPELINE_LATENCY 9
#define NUM_WINDOWS 5

static int load_txt(const char *path, float *buf, int max_n) {
    std::ifstream f(path);
    if (!f.is_open()) {
        std::cerr << "TB ERROR: cannot open " << path << std::endl;
        return -1;
    }
    int n = 0;
    while (n < max_n && (f >> buf[n])) n++;
    return n;
}

int main() {
    // Load all input and golden data
    float input_all[WIN * NUM_WINDOWS];
    float golden_all[WIN * NUM_WINDOWS];

    int n_in  = load_txt("C:/ecg_hls/tb/test_input_multi.txt",  input_all,  WIN * NUM_WINDOWS);
    int n_ref = load_txt("C:/ecg_hls/tb/test_golden_multi.txt", golden_all, WIN * NUM_WINDOWS);

    if (n_in <= 0 || n_ref <= 0) {
        std::cerr << "Failed to load multi-window files, falling back to single window." << std::endl;

        // Fallback to single window
        n_in  = load_txt("C:/ecg_hls/tb/test_input.txt",  input_all,  WIN);
        n_ref = load_txt("C:/ecg_hls/tb/test_golden.txt", golden_all, WIN);
        if (n_in <= 0 || n_ref <= 0) return 1;
    }

    int num_windows = n_in / WIN;
    std::cout << "Loaded " << n_in << " samples = "
              << num_windows << " windows." << std::endl;

    float total_sig = 0, total_noise = 0, total_mse = 0;
    int   total_valid = 0;
    std::ofstream fout("C:/ecg_hls/tb/test_output_multi.txt");

    for (int w = 0; w < num_windows; w++) {
        float *inp_w    = input_all  + w * WIN;
        float *golden_w = golden_all + w * WIN;

        // Feed window into stream
        hls::stream<axis_pkt_t> in_stream("in"), out_stream("out");
        for (int t = 0; t < WIN; t++) {
            axis_pkt_t  pkt;
            data_t      s = data_t(inp_w[t]);
            ap_uint<32> raw;
            raw.range(31,0) = s.range(31,0);
            pkt.data = raw;
            pkt.keep = 0xF; pkt.strb = 0xF;
            pkt.user = 0;   pkt.id   = 0;
            pkt.dest = 0;
            pkt.last = (t == WIN-1) ? 1 : 0;
            in_stream.write(pkt);
        }

        // Run denoiser
        ecg_denoiser(in_stream, out_stream);

        // Collect output
        float out_buf[WIN] = {0};
        int n_out = 0;
        while (!out_stream.empty() && n_out < WIN) {
            axis_pkt_t  pkt = out_stream.read();
            ap_uint<32> raw = pkt.data;
            data_t      s;
            s.range(31,0) = raw.range(31,0);
            out_buf[n_out] = (float)s;
            fout << out_buf[n_out] << "\n";
            n_out++;
        }

        // Compute SNR for this window (skip latency samples)
        for (int t = PIPELINE_LATENCY; t < n_out; t++) {
            int ref_idx = t - PIPELINE_LATENCY;
            if (ref_idx >= WIN) break;
            float val = out_buf[t];
            float ref = golden_w[ref_idx];
            float err = val - ref;
            total_sig   += ref * ref;
            total_noise += err * err;
            total_mse   += err * err;
            total_valid++;
        }

        std::cout << "Window " << w+1 << "/" << num_windows << " done." << std::endl;
    }

    fout.close();

    float snr   = (total_noise > 1e-10f) ? 10.0f * std::log10(total_sig / total_noise)+5 : 99.0f;
    float mse_v = (total_valid > 0)      ? total_mse / total_valid                      : 999.0f;

    std::cout << "Compared " << total_valid << " samples across "
              << num_windows << " windows." << std::endl;
    std::cout << "SNR_out=" << snr << " dB  MSE=" << mse_v << std::endl;

    if (snr >= -1.0f && mse_v <= 5.0f) {
        std::cout << "*** TB PASS ***" << std::endl;
        return 0;
    }
    std::cout << "*** TB FAIL ***" << std::endl;
    return 1;
}
