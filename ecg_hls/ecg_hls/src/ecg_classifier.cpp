#include "hls_math.h"
#include "ecg_classifier.h"
#include "ecg_types.h"
#include "weights_classifier.h"

static void softmax2(float a, float b, float &p0, float &p1) {
    float ea = hls::exp(a);
    float eb = hls::exp(b);
    float s  = ea + eb;
    p0 = ea / s;
    p1 = eb / s;
}

void ecg_classifier(
    hls::stream<axis_pkt_t> &in_stream,
    hls::stream<axis_pkt_t> &out_stream)
{
#pragma HLS INTERFACE axis       port=in_stream   register
#pragma HLS INTERFACE axis       port=out_stream  register
#pragma HLS INTERFACE ap_ctrl_hs port=return

    data_t input_buf[BEAT_LEN];
    data_t norm_buf[BEAT_LEN];
#pragma HLS BIND_STORAGE variable=input_buf type=ram_1p impl=lutram
#pragma HLS BIND_STORAGE variable=norm_buf  type=ram_1p impl=lutram
#pragma HLS ARRAY_PARTITION variable=input_buf dim=1 type=cyclic factor=2
#pragma HLS ARRAY_PARTITION variable=norm_buf  dim=1 type=cyclic factor=2

    act_t  buf2_circ[CLF_L3_K][CLF_L2_OUT_CH];
#pragma HLS ARRAY_PARTITION variable=buf2_circ dim=1 type=complete
#pragma HLS ARRAY_PARTITION variable=buf2_circ dim=2 type=cyclic factor=2

    data_t gap_buf[CLF_GAP_LEN];
    data_t dense0_buf[CLF_D0_OUT];
    float  logits[CLF_D1_OUT];

#pragma HLS BIND_STORAGE variable=gap_buf    type=ram_1p impl=lutram
#pragma HLS BIND_STORAGE variable=dense0_buf type=ram_1p impl=lutram
#pragma HLS ARRAY_PARTITION variable=gap_buf    dim=1 type=cyclic factor=2
#pragma HLS ARRAY_PARTITION variable=dense0_buf dim=1 type=cyclic factor=2

READ_INPUT:
    for (int t = 0; t < BEAT_LEN; t++) {
#pragma HLS PIPELINE II=1
        axis_pkt_t  pkt = in_stream.read();
        ap_uint<32> raw = pkt.data;
        data_t s;
        s.range(31,0) = raw.range(31,0);
        input_buf[t]  = s;
    }

    sum_t mean_acc = sum_t(0);
ZNORM_MEAN:
    for (int t = 0; t < BEAT_LEN; t++) {
#pragma HLS PIPELINE II=1
        mean_acc += (sum_t)input_buf[t];
    }
    data_t mean_fx = (data_t)(mean_acc * data_t(1.0f / (float)BEAT_LEN));

    sum_t var_acc = sum_t(0);
ZNORM_VAR:
    for (int t = 0; t < BEAT_LEN; t++) {
#pragma HLS PIPELINE II=1
        data_t d = input_buf[t] - mean_fx;
        var_acc += (sum_t)d * (sum_t)d;
    }
    data_t var_fx     = (data_t)(var_acc * data_t(1.0f / (float)BEAT_LEN));
    float var_fx_f = (float)var_fx;
    float var_safe  = (var_fx_f > 0.0f) ? var_fx_f : 1e-8f;
    data_t std_fx   = (data_t)hls::sqrt(var_safe) + data_t(1e-4f);
    data_t inv_std_fx = data_t(1.0f) / std_fx;

ZNORM_APPLY:
    for (int t = 0; t < BEAT_LEN; t++) {
#pragma HLS PIPELINE II=1
        norm_buf[t] = (input_buf[t] - mean_fx) * inv_std_fx;
    }

    // ---- Fused L0 + L1 + L2 ----
    {
        data_t win0[CLF_L1_K][CLF_L0_OUT_CH];
#pragma HLS ARRAY_PARTITION variable=win0 dim=1 type=complete
#pragma HLS ARRAY_PARTITION variable=win0 dim=2 type=cyclic factor=1

    INIT_WIN0_K:
        for (int k = 0; k < CLF_L1_K; k++) {
#pragma HLS UNROLL
        INIT_WIN0_CH:
            for (int c = 0; c < CLF_L0_OUT_CH; c++) {
#pragma HLS UNROLL
                win0[k][c] = data_t(0);
            }
        }

        data_t win01[CLF_L1_K][CLF_L1_IN_CH];
#pragma HLS ARRAY_PARTITION variable=win01 dim=1 type=complete
#pragma HLS ARRAY_PARTITION variable=win01 dim=2 type=cyclic factor=2

    INIT_WIN01_K:
        for (int k = 0; k < CLF_L1_K; k++) {
#pragma HLS UNROLL
        INIT_WIN01_CH:
            for (int c = 0; c < CLF_L1_IN_CH; c++) {
#pragma HLS UNROLL
                win01[k][c] = data_t(0);
            }
        }

    L012_T:
        for (int t = 0; t < CLF_L1_OUT_LEN; t++) {

        L0_STRIDE_FILL:
            for (int s = 0; s < CLF_L1_STRIDE; s++) {
                int t0 = t * CLF_L1_STRIDE + s;

            SHIFT_WIN0_K:
                for (int k = 0; k < CLF_L1_K - 1; k++) {
#pragma HLS UNROLL
                SHIFT_WIN0_CH:
                    for (int c = 0; c < CLF_L0_OUT_CH; c++) {
#pragma HLS UNROLL
                        win0[k][c] = win0[k+1][c];
                    }
                }

            L0_OC_FILL:
                for (int oc = 0; oc < CLF_L0_OUT_CH; oc++) {
                    sum_t acc = (sum_t)clf_w::L0_b[oc];
                L0_K_FILL:
                    for (int k = 0; k < CLF_L0_K; k++) {
#pragma HLS PIPELINE II=1
                        int ti = t0 + k - CLF_L0_K / 2;
                        data_t x = (ti >= 0 && ti < BEAT_LEN)
                                   ? norm_buf[ti] : data_t(0);
                        acc += (sum_t)x * (sum_t)clf_w::L0_W[oc][0][k];
                    }
                    win0[CLF_L1_K-1][oc] = relu((data_t)acc);
                }
            }

            data_t l1_out[CLF_L1_OUT_CH];
#pragma HLS ARRAY_PARTITION variable=l1_out type=cyclic factor=2

        L1_OC:
            for (int oc = 0; oc < CLF_L1_OUT_CH; oc++) {
                sum_t acc = (sum_t)clf_w::L1_b[oc];
            L1_IC:
                for (int ic = 0; ic < CLF_L1_IN_CH; ic++) {
                L1_K:
                    for (int k = 0; k < CLF_L1_K; k++) {
#pragma HLS PIPELINE II=1
                        acc += (sum_t)win0[k][ic] *
                               (sum_t)clf_w::L1_W[oc][ic][k];
                    }
                }
                l1_out[oc] = relu((data_t)acc);
            }

        SHIFT_WIN01_K:
            for (int k = 0; k < CLF_L1_K - 1; k++) {
#pragma HLS UNROLL
            SHIFT_WIN01_CH:
                for (int c = 0; c < CLF_L1_IN_CH; c++) {
#pragma HLS UNROLL
                    win01[k][c] = win01[k+1][c];
                }
            }
        INSERT_WIN01_CH:
            for (int c = 0; c < CLF_L1_IN_CH; c++) {
#pragma HLS UNROLL
                win01[CLF_L1_K-1][c] = l1_out[c];
            }

            int slot = t % CLF_L3_K;
        L2_OC_GROUP:
            for (int oc_base = 0; oc_base < CLF_L2_OUT_CH; oc_base += 2) {
                sum_t acc0 = (sum_t)clf_w::L2_b[oc_base+0];
                sum_t acc1 = (sum_t)clf_w::L2_b[oc_base+1];
            L2_IC:
                for (int ic = 0; ic < CLF_L2_IN_CH; ic++) {
                L2_K:
                    for (int k = 0; k < CLF_L2_K; k++) {
#pragma HLS PIPELINE II=1
                        data_t x = win01[k + (CLF_L1_K - CLF_L2_K)/2][ic];
                        acc0 += (sum_t)x * (sum_t)clf_w::L2_W[oc_base+0][ic][k];
                        acc1 += (sum_t)x * (sum_t)clf_w::L2_W[oc_base+1][ic][k];
                    }
                }
                buf2_circ[slot][oc_base+0] = relu_act((act_t)acc0);
                buf2_circ[slot][oc_base+1] = relu_act((act_t)acc1);
            }
        }
    }

    // ---- Fused L3 + L4 + GAP ----
GAP_INIT:
    for (int c = 0; c < CLF_GAP_LEN; c++) {
#pragma HLS PIPELINE II=1
        gap_buf[c] = data_t(0);
    }

    {
        data_t win23[CLF_L3_K][CLF_L3_IN_CH];
#pragma HLS ARRAY_PARTITION variable=win23 dim=1 type=complete
#pragma HLS ARRAY_PARTITION variable=win23 dim=2 type=cyclic factor=2

    INIT_WIN23_K:
        for (int k = 0; k < CLF_L3_K; k++) {
#pragma HLS UNROLL
        INIT_WIN23_CH:
            for (int c = 0; c < CLF_L3_IN_CH; c++) {
#pragma HLS UNROLL
                win23[k][c] = data_t(0);
            }
        }

    L34_T:
        for (int t = 0; t < CLF_L3_OUT_LEN; t++) {

            data_t l3_out[CLF_L3_OUT_CH];
#pragma HLS ARRAY_PARTITION variable=l3_out type=cyclic factor=2

        L3_OC_GROUP:
            for (int oc_base = 0; oc_base < CLF_L3_OUT_CH; oc_base += 2) {
                sum_t acc0 = (sum_t)clf_w::L3_b[oc_base+0];
                sum_t acc1 = (sum_t)clf_w::L3_b[oc_base+1];
            L3_IC:
                for (int ic = 0; ic < CLF_L3_IN_CH; ic++) {
                L3_K:
                    for (int k = 0; k < CLF_L3_K; k++) {
#pragma HLS PIPELINE II=1
                        int ti = t * CLF_L3_STRIDE + k - CLF_L3_K / 2;
                        data_t x = (ti >= 0 && ti < CLF_L2_OUT_LEN)
                                   ? (data_t)buf2_circ[ti % CLF_L3_K][ic]
                                   : data_t(0);
                        acc0 += (sum_t)x * (sum_t)clf_w::L3_W[oc_base+0][ic][k];
                        acc1 += (sum_t)x * (sum_t)clf_w::L3_W[oc_base+1][ic][k];
                    }
                }
                l3_out[oc_base+0] = relu((data_t)acc0);
                l3_out[oc_base+1] = relu((data_t)acc1);
            }

        SHIFT_WIN23_K:
            for (int k = 0; k < CLF_L3_K - 1; k++) {
#pragma HLS UNROLL
            SHIFT_WIN23_CH:
                for (int c = 0; c < CLF_L3_IN_CH; c++) {
#pragma HLS UNROLL
                    win23[k][c] = win23[k+1][c];
                }
            }
        INSERT_WIN23_CH:
            for (int c = 0; c < CLF_L3_IN_CH; c++) {
#pragma HLS UNROLL
                win23[CLF_L3_K-1][c] = l3_out[c];
            }

        L4_GAP_OC_GROUP:
            for (int oc_base = 0; oc_base < CLF_L4_OUT_CH; oc_base += 2) {
                sum_t acc0 = (sum_t)clf_w::L4_b[oc_base+0];
                sum_t acc1 = (sum_t)clf_w::L4_b[oc_base+1];
            L4_IC:
                for (int ic = 0; ic < CLF_L4_IN_CH; ic++) {
                L4_K:
                    for (int k = 0; k < CLF_L4_K; k++) {
#pragma HLS PIPELINE II=1
                        data_t x = win23[k + (CLF_L3_K - CLF_L4_K)/2][ic];
                        acc0 += (sum_t)x * (sum_t)clf_w::L4_W[oc_base+0][ic][k];
                        acc1 += (sum_t)x * (sum_t)clf_w::L4_W[oc_base+1][ic][k];
                    }
                }
                gap_buf[oc_base+0] = gap_buf[oc_base+0] + relu((data_t)acc0);
                gap_buf[oc_base+1] = gap_buf[oc_base+1] + relu((data_t)acc1);
            }
        }
    }

    GAP_NORM:
        for (int c = 0; c < CLF_GAP_LEN; c++) {
    #pragma HLS PIPELINE II=1
    #pragma HLS DEPENDENCE variable=gap_buf intra false
            data_t val = gap_buf[c];
            gap_buf[c] = val * data_t(1.0f / (float)CLF_L4_OUT_LEN);
        }

D0_OC:
    for (int oc = 0; oc < CLF_D0_OUT; oc++) {
        sum_t acc = (sum_t)clf_w::L5_b[oc];
    D0_IC:
        for (int ic = 0; ic < CLF_D0_IN; ic++) {
#pragma HLS PIPELINE II=1
            acc += (sum_t)gap_buf[ic] * (sum_t)clf_w::L5_W[oc][ic];
        }
        dense0_buf[oc] = relu((data_t)acc);
    }

D1_OC:
    for (int oc = 0; oc < CLF_D1_OUT; oc++) {
        sum_t acc = (sum_t)clf_w::L6_b[oc];
    D1_IC:
        for (int ic = 0; ic < CLF_D1_IN; ic++) {
#pragma HLS PIPELINE II=1
            acc += (sum_t)dense0_buf[ic] * (sum_t)clf_w::L6_W[oc][ic];
        }
        logits[oc] = (float)acc;
    }

    float p_normal, p_arrhy;
    softmax2(logits[0], logits[1], p_normal, p_arrhy);

WRITE_OUTPUT:
    for (int i = 0; i < 2; i++) {
#pragma HLS PIPELINE II=1
        float val = (i == 0) ? p_normal : p_arrhy;
        union { float f; uint32_t u; } cvt;
        cvt.f = val;
        ap_uint<32> raw = cvt.u;
        axis_pkt_t pkt;
        pkt.data = raw;
        pkt.keep = 0xF; pkt.strb = 0xF;
        pkt.user = 0;   pkt.id   = 0;
        pkt.dest = 0;
        pkt.last = (i == 1) ? 1 : 0;
        out_stream.write(pkt);
    }
}
