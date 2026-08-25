#include <iostream>
#include <fstream>
#include <cmath>
#include <string>
#include "ecg_classifier.h"
#include "ecg_types.h"

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
    // Load test beat (187 samples) and expected label
    float beat_raw[BEAT_LEN];
    int n = load_txt("C:/ecg_hls/tb/test_beat.txt", beat_raw, BEAT_LEN);
    if (n <= 0) return 1;
    std::cout << "Loaded " << n << " samples." << std::endl;

    // Load expected label (0=Normal, 1=Arrhythmia)
    float label_raw[1] = {0.0f};
    load_txt("C:/ecg_hls/tb/test_beat_label.txt", label_raw, 1);
    int expected_label = (int)label_raw[0];
    std::string label_str = (expected_label == 0) ? "Normal" : "Arrhythmia";
    std::cout << "Expected label: " << expected_label
              << " (" << label_str << ")" << std::endl;

    // Pack input into AXI stream
    hls::stream<axis_pkt_t> in_stream("in"), out_stream("out");
    for (int t = 0; t < BEAT_LEN; t++) {
        axis_pkt_t  pkt;
        data_t      s = data_t(beat_raw[t]);
        ap_uint<32> raw;
        raw.range(31,0) = s.range(31,0);
        pkt.data = raw;
        pkt.keep = 0xF; pkt.strb = 0xF;
        pkt.user = 0;   pkt.id   = 0;
        pkt.dest = 0;
        pkt.last = (t == BEAT_LEN-1) ? 1 : 0;
        in_stream.write(pkt);
    }

    // Run classifier
    ecg_classifier(in_stream, out_stream);

    // Read 2 output scores
    float scores[2] = {0.0f, 0.0f};
    int n_out = 0;
    while (!out_stream.empty() && n_out < 2) {
        axis_pkt_t pkt = out_stream.read();
        ap_uint<32> raw = pkt.data;
        union { float f; uint32_t u; } cvt;
        cvt.u     = (uint32_t)raw;
        scores[n_out] = cvt.f;
        n_out++;
    }

    int predicted = (scores[1] > scores[0]) ? 1 : 0;
    std::string pred_str = (predicted == 0) ? "Normal" : "Arrhythmia";

    std::cout << "Score Normal    : " << scores[0] << std::endl;
    std::cout << "Score Arrhythmia: " << scores[1] << std::endl;
    std::cout << "Predicted label : " << predicted
              << " (" << pred_str << ")" << std::endl;

    if (predicted == expected_label) {
        std::cout << "*** TB PASS ***" << std::endl;
        return 0;
    }
    std::cout << "*** TB FAIL ***" << std::endl;
    return 1;
}