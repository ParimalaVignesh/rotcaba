#ifndef ECG_CLASSIFIER_H
#define ECG_CLASSIFIER_H

#include "ecg_types.h"

void ecg_classifier(
    hls::stream<axis_pkt_t> &in_stream,
    hls::stream<axis_pkt_t> &out_stream
);

#endif