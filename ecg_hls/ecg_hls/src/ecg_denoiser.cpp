#include "hls_math.h"
#include "ecg_denoiser.h"
#include "ecg_types.h"
#include "weights_denoiser.h"

static void conv_layer01234_fused(data_t in[WIN],
                                  data_t out[WIN][DEN_L4_OUT_CH]) {
#pragma HLS INLINE off

#pragma HLS BIND_STORAGE variable=denoiser_w::L0_W type=rom_np impl=lutram
#pragma HLS BIND_STORAGE variable=denoiser_w::L1_W type=rom_np impl=bram
#pragma HLS BIND_STORAGE variable=denoiser_w::L2_W type=rom_np impl=lutram
#pragma HLS BIND_STORAGE variable=denoiser_w::L3_W type=rom_np impl=lutram
#pragma HLS BIND_STORAGE variable=denoiser_w::L4_W type=rom_np impl=lutram

    data_t win01[DEN_L1_K][DEN_L0_OUT_CH];
#pragma HLS ARRAY_PARTITION variable=win01 dim=1 type=complete
#pragma HLS ARRAY_PARTITION variable=win01 dim=2 type=cyclic factor=1

    data_t win12[DEN_L2_K][DEN_L1_OUT_CH];
#pragma HLS ARRAY_PARTITION variable=win12 dim=1 type=complete
#pragma HLS ARRAY_PARTITION variable=win12 dim=2 type=cyclic factor=1

    data_t win23[DEN_L3_K][DEN_L2_OUT_CH];
#pragma HLS ARRAY_PARTITION variable=win23 dim=1 type=complete
#pragma HLS ARRAY_PARTITION variable=win23 dim=2 type=cyclic factor=2

    data_t win34[DEN_L4_K][DEN_L3_OUT_CH];
#pragma HLS ARRAY_PARTITION variable=win34 dim=1 type=complete
#pragma HLS ARRAY_PARTITION variable=win34 dim=2 type=cyclic factor=2

INIT_WIN01_K:
    for (int k = 0; k < DEN_L1_K; k++) {
#pragma HLS UNROLL
    INIT_WIN01_OC:
        for (int oc = 0; oc < DEN_L0_OUT_CH; oc++) {
#pragma HLS UNROLL
            win01[k][oc] = data_t(0);
        }
    }
INIT_WIN12_K:
    for (int k = 0; k < DEN_L2_K; k++) {
#pragma HLS UNROLL
    INIT_WIN12_OC:
        for (int oc = 0; oc < DEN_L1_OUT_CH; oc++) {
#pragma HLS UNROLL
            win12[k][oc] = data_t(0);
        }
    }
INIT_WIN23_K:
    for (int k = 0; k < DEN_L3_K; k++) {
#pragma HLS UNROLL
    INIT_WIN23_OC:
        for (int oc = 0; oc < DEN_L2_OUT_CH; oc++) {
#pragma HLS UNROLL
            win23[k][oc] = data_t(0);
        }
    }
INIT_WIN34_K:
    for (int k = 0; k < DEN_L4_K; k++) {
#pragma HLS UNROLL
    INIT_WIN34_OC:
        for (int oc = 0; oc < DEN_L3_OUT_CH; oc++) {
#pragma HLS UNROLL
            win34[k][oc] = data_t(0);
        }
    }

FUSED_T:
    for (int t = 0; t < WIN; t++) {

        // ---- Layer 0: 1->64 ch, kernel=11 ----
        data_t l0_out[DEN_L0_OUT_CH];
#pragma HLS ARRAY_PARTITION variable=l0_out type=cyclic factor=2
    L0_OC:
        for (int oc = 0; oc < DEN_L0_OUT_CH; oc++) {
            sum_t acc = (sum_t)denoiser_w::L0_b[oc];
        L0_K:
            for (int k = 0; k < DEN_L0_K; k++) {
#pragma HLS PIPELINE II=1
                int ti = t + k - DEN_L0_K / 2;
                data_t x = (ti >= 0 && ti < WIN) ? in[ti] : data_t(0);
                acc += (sum_t)x * (sum_t)denoiser_w::L0_W[oc][0][k];
            }
            l0_out[oc] = relu((data_t)acc);
        }
    SHIFT_WIN01_K:
        for (int k = 0; k < DEN_L1_K - 1; k++) {
#pragma HLS UNROLL
        SHIFT_WIN01_OC:
            for (int oc = 0; oc < DEN_L0_OUT_CH; oc++) {
#pragma HLS UNROLL
                win01[k][oc] = win01[k+1][oc];
            }
        }
    INSERT_WIN01_OC:
        for (int oc = 0; oc < DEN_L0_OUT_CH; oc++) {
#pragma HLS UNROLL
            win01[DEN_L1_K-1][oc] = l0_out[oc];
        }

        // ---- Layer 1: 64->128 ch, kernel=7 ----
        data_t l1_out[DEN_L1_OUT_CH];
#pragma HLS ARRAY_PARTITION variable=l1_out type=cyclic factor=2
    L1_OC_GROUP:
        for (int oc_base = 0; oc_base < DEN_L1_OUT_CH; oc_base += 2) {
            sum_t acc0 = (sum_t)denoiser_w::L1_b[oc_base+0];
            sum_t acc1 = (sum_t)denoiser_w::L1_b[oc_base+1];
        L1_IC:
            for (int ic = 0; ic < DEN_L1_IN_CH; ic++) {
            L1_K:
                for (int k = 0; k < DEN_L1_K; k++) {
#pragma HLS PIPELINE II=1
                    data_t x = win01[k][ic];
                    acc0 += (sum_t)x * (sum_t)denoiser_w::L1_W[oc_base+0][ic][k];
                    acc1 += (sum_t)x * (sum_t)denoiser_w::L1_W[oc_base+1][ic][k];
                }
            }
            l1_out[oc_base+0] = relu((data_t)acc0);
            l1_out[oc_base+1] = relu((data_t)acc1);
        }
    SHIFT_WIN12_K:
        for (int k = 0; k < DEN_L2_K - 1; k++) {
#pragma HLS UNROLL
        SHIFT_WIN12_OC:
            for (int oc = 0; oc < DEN_L1_OUT_CH; oc++) {
#pragma HLS UNROLL
                win12[k][oc] = win12[k+1][oc];
            }
        }
    INSERT_WIN12_OC:
        for (int oc = 0; oc < DEN_L1_OUT_CH; oc++) {
#pragma HLS UNROLL
            win12[DEN_L2_K-1][oc] = l1_out[oc];
        }

        // ---- Layer 2: 128->64 ch, kernel=5 ----
        data_t l2_out[DEN_L2_OUT_CH];
#pragma HLS ARRAY_PARTITION variable=l2_out type=cyclic factor=2
    L2_OC_GROUP:
        for (int oc_base = 0; oc_base < DEN_L2_OUT_CH; oc_base += 2) {
            sum_t acc0 = (sum_t)denoiser_w::L2_b[oc_base+0];
            sum_t acc1 = (sum_t)denoiser_w::L2_b[oc_base+1];
        L2_IC:
            for (int ic = 0; ic < DEN_L2_IN_CH; ic++) {
            L2_K:
                for (int k = 0; k < DEN_L2_K; k++) {
#pragma HLS PIPELINE II=1
                    data_t x = win12[k][ic];
                    acc0 += (sum_t)x * (sum_t)denoiser_w::L2_W[oc_base+0][ic][k];
                    acc1 += (sum_t)x * (sum_t)denoiser_w::L2_W[oc_base+1][ic][k];
                }
            }
            l2_out[oc_base+0] = relu((data_t)acc0);
            l2_out[oc_base+1] = relu((data_t)acc1);
        }
    SHIFT_WIN23_K:
        for (int k = 0; k < DEN_L3_K - 1; k++) {
#pragma HLS UNROLL
        SHIFT_WIN23_OC:
            for (int oc = 0; oc < DEN_L2_OUT_CH; oc++) {
#pragma HLS UNROLL
                win23[k][oc] = win23[k+1][oc];
            }
        }
    INSERT_WIN23_OC:
        for (int oc = 0; oc < DEN_L2_OUT_CH; oc++) {
#pragma HLS UNROLL
            win23[DEN_L3_K-1][oc] = l2_out[oc];
        }

        // ---- Layer 3: 64->32 ch, kernel=3 ----
        data_t l3_out[DEN_L3_OUT_CH];
#pragma HLS ARRAY_PARTITION variable=l3_out type=cyclic factor=2
    L3_OC_GROUP:
        for (int oc_base = 0; oc_base < DEN_L3_OUT_CH; oc_base += 2) {
            sum_t acc0 = (sum_t)denoiser_w::L3_b[oc_base+0];
            sum_t acc1 = (sum_t)denoiser_w::L3_b[oc_base+1];
        L3_IC:
            for (int ic = 0; ic < DEN_L3_IN_CH; ic++) {
            L3_K:
                for (int k = 0; k < DEN_L3_K; k++) {
#pragma HLS PIPELINE II=1
                    data_t x = win23[k][ic];
                    acc0 += (sum_t)x * (sum_t)denoiser_w::L3_W[oc_base+0][ic][k];
                    acc1 += (sum_t)x * (sum_t)denoiser_w::L3_W[oc_base+1][ic][k];
                }
            }
            l3_out[oc_base+0] = relu((data_t)acc0);
            l3_out[oc_base+1] = relu((data_t)acc1);
        }
    SHIFT_WIN34_K:
        for (int k = 0; k < DEN_L4_K - 1; k++) {
#pragma HLS UNROLL
        SHIFT_WIN34_OC:
            for (int oc = 0; oc < DEN_L3_OUT_CH; oc++) {
#pragma HLS UNROLL
                win34[k][oc] = win34[k+1][oc];
            }
        }
    INSERT_WIN34_OC:
        for (int oc = 0; oc < DEN_L3_OUT_CH; oc++) {
#pragma HLS UNROLL
            win34[DEN_L4_K-1][oc] = l3_out[oc];
        }

        // ---- Layer 4: 32->1 ch, kernel=7, no relu ----
    L4_OC:
        for (int oc = 0; oc < DEN_L4_OUT_CH; oc++) {
            sum_t acc = (sum_t)denoiser_w::L4_b[oc];
        L4_IC:
            for (int ic = 0; ic < DEN_L4_IN_CH; ic++) {
            L4_K:
                for (int k = 0; k < DEN_L4_K; k++) {
#pragma HLS PIPELINE II=1
                    data_t x = win34[k][ic];
                    acc += (sum_t)x * (sum_t)denoiser_w::L4_W[oc][ic][k];
                }
            }
            out[t][oc] = (data_t)acc;
        }
    }
}

// -------------------- Top Function --------------------
void ecg_denoiser(hls::stream<axis_pkt_t> &in_stream,
                  hls::stream<axis_pkt_t> &out_stream) {
#pragma HLS INTERFACE axis       port=in_stream   register
#pragma HLS INTERFACE axis       port=out_stream  register
#pragma HLS INTERFACE ap_ctrl_hs port=return

    data_t input_buf[WIN];
    data_t norm_buf[WIN];
    data_t buf4[WIN][DEN_L4_OUT_CH];

#pragma HLS BIND_STORAGE variable=input_buf type=ram_1p impl=lutram
#pragma HLS BIND_STORAGE variable=norm_buf  type=ram_1p impl=lutram
#pragma HLS ARRAY_PARTITION variable=input_buf dim=1 type=cyclic factor=2
#pragma HLS ARRAY_PARTITION variable=norm_buf  dim=1 type=cyclic factor=2
#pragma HLS ARRAY_PARTITION variable=buf4       dim=2 type=complete

READ_INPUT:
    for (int t = 0; t < WIN; t++) {
#pragma HLS PIPELINE II=1
        axis_pkt_t  pkt = in_stream.read();
        ap_uint<32> raw = pkt.data;
        input_buf[t].range(31,0) = raw.range(31,0);
    }

    sum_t mean_acc = sum_t(0);
ZNORM_MEAN:
    for (int t = 0; t < WIN; t++) {
#pragma HLS PIPELINE II=1
        mean_acc += (sum_t)input_buf[t];
    }
    data_t mean_fx = (data_t)(mean_acc * data_t(1.0f / (float)WIN));

    sum_t var_acc = sum_t(0);
ZNORM_VAR:
    for (int t = 0; t < WIN; t++) {
#pragma HLS PIPELINE II=1
        data_t d = input_buf[t] - mean_fx;
        var_acc += (sum_t)d * (sum_t)d;
    }
    data_t var_fx     = (data_t)(var_acc * data_t(1.0f / (float)WIN));
    float var_fx_f = (float)var_fx;
    float var_safe  = (var_fx_f > 0.0f) ? var_fx_f : 1e-8f;
    data_t std_fx   = (data_t)hls::sqrt(var_safe) + data_t(1e-4f);
    data_t inv_std_fx = data_t(1.0f) / std_fx;

ZNORM_APPLY:
    for (int t = 0; t < WIN; t++) {
#pragma HLS PIPELINE II=1
        norm_buf[t] = (input_buf[t] - mean_fx) * inv_std_fx;
    }

    conv_layer01234_fused(norm_buf, buf4);

WRITE_OUTPUT:
    for (int t = 0; t < WIN; t++) {
#pragma HLS PIPELINE II=1
        axis_pkt_t  pkt;
        ap_uint<32> raw;
        raw.range(31,0) = buf4[t][0].range(31,0);
        pkt.data = raw;
        pkt.keep = 0xF;
        pkt.strb = 0xF;
        pkt.user = 0;
        pkt.id   = 0;
        pkt.dest = 0;
        pkt.last = (t == WIN - 1) ? 1 : 0;
        out_stream.write(pkt);
    }
}
