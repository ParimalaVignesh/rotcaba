#ifndef ECG_DENOISER_H
#define ECG_DENOISER_H

#include "ecg_types.h"

// All types come from ecg_types.h:
// data_t, sum_t, axis_pkt_t (ap_axiu<32,1,1,1>)
// WIN, DEN_L0_*, DEN_L1_*, DEN_L2_*, DEN_L3_*, DEN_L4_*
// relu()

void ecg_denoiser(
    hls::stream<axis_pkt_t> &in_stream,
    hls::stream<axis_pkt_t> &out_stream
);

#endif