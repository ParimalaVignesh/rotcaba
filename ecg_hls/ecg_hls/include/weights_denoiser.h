// Auto-generated — DO NOT EDIT
// Fixed-point scale: 1.0x  |  type: ap_fixed<32,16>
#ifndef WEIGHTS_DENOISER_H
#define WEIGHTS_DENOISER_H

#include "ap_fixed.h"

namespace denoiser_w {

#ifdef __SYNTHESIS__
typedef ap_fixed<32,16> weight_t;
#else
typedef float weight_t;
#endif

extern const weight_t L0_W[64][1][11];
extern const weight_t L0_b[64];
extern const weight_t L1_W[128][64][7];
extern const weight_t L1_b[128];
extern const weight_t L2_W[64][128][5];
extern const weight_t L2_b[64];
extern const weight_t L3_W[32][64][3];
extern const weight_t L3_b[32];
extern const weight_t L4_W[1][32][7];
extern const weight_t L4_b[1];

} // namespace denoiser_w
#endif