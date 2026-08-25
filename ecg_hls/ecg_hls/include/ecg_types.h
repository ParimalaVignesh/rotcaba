#pragma once
#include "ap_fixed.h"
#include "hls_stream.h"
#include "ap_axi_sdata.h"

typedef ap_fixed<32,16> data_t;
typedef ap_fixed<48,24> sum_t;
typedef ap_fixed<16,8>  act_t;
typedef ap_axiu<32,1,1,1> axis_pkt_t;

static const int WIN            = 360;
static const int DEN_L0_OUT_CH  = 64;
static const int DEN_L0_K       = 11;
static const int DEN_L1_IN_CH   = 64;
static const int DEN_L1_OUT_CH  = 128;
static const int DEN_L1_K       = 7;
static const int DEN_L2_IN_CH   = 128;
static const int DEN_L2_OUT_CH  = 64;
static const int DEN_L2_K       = 5;
static const int DEN_L3_IN_CH   = 64;
static const int DEN_L3_OUT_CH  = 32;
static const int DEN_L3_K       = 3;
static const int DEN_L4_IN_CH   = 32;
static const int DEN_L4_OUT_CH  = 1;
static const int DEN_L4_K       = 7;

static const int BEAT_LEN        = 187;
static const int CLF_L0_IN_CH    = 1;
static const int CLF_L0_OUT_CH   = 64;
static const int CLF_L0_K        = 7;
static const int CLF_L0_STRIDE   = 1;
static const int CLF_L0_OUT_LEN  = 187;
static const int CLF_L1_IN_CH    = 64;
static const int CLF_L1_OUT_CH   = 64;
static const int CLF_L1_K        = 7;
static const int CLF_L1_STRIDE   = 2;
static const int CLF_L1_OUT_LEN  = 94;
static const int CLF_L2_IN_CH    = 64;
static const int CLF_L2_OUT_CH   = 128;
static const int CLF_L2_K        = 5;
static const int CLF_L2_STRIDE   = 1;
static const int CLF_L2_OUT_LEN  = 94;
static const int CLF_L3_IN_CH    = 128;
static const int CLF_L3_OUT_CH   = 128;
static const int CLF_L3_K        = 5;
static const int CLF_L3_STRIDE   = 2;
static const int CLF_L3_OUT_LEN  = 47;
static const int CLF_L4_IN_CH    = 128;
static const int CLF_L4_OUT_CH   = 192;
static const int CLF_L4_K        = 3;
static const int CLF_L4_STRIDE   = 1;
static const int CLF_L4_OUT_LEN  = 47;
static const int CLF_GAP_LEN     = 192;
static const int CLF_D0_IN       = 192;
static const int CLF_D0_OUT      = 128;
static const int CLF_D1_IN       = 128;
static const int CLF_D1_OUT      = 2;

#ifndef ECG_RELU_DEFINED
#define ECG_RELU_DEFINED
inline data_t relu(data_t x) {
    return (x > data_t(0)) ? x : data_t(0);
}
inline act_t relu_act(act_t x) {
    return (x > act_t(0)) ? x : act_t(0);
}
#endif