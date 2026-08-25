#ifndef WEIGHTS_CLASSIFIER_H
#define WEIGHTS_CLASSIFIER_H
#include "ap_fixed.h"

namespace clf_w {

#ifdef __SYNTHESIS__
typedef ap_fixed<8,4> weight_t;
#else
typedef float weight_t;
#endif

extern const weight_t L0_W[64][1][7];
extern const weight_t L0_b[64];
extern const weight_t L1_W[64][64][7];
extern const weight_t L1_b[64];
extern const weight_t L2_W[128][64][5];
extern const weight_t L2_b[128];
extern const weight_t L3_W[128][128][5];
extern const weight_t L3_b[128];
extern const weight_t L4_W[192][128][3];
extern const weight_t L4_b[192];
extern const weight_t L5_W[128][192];
extern const weight_t L5_b[128];
extern const weight_t L6_W[2][128];
extern const weight_t L6_b[2];

} // namespace clf_w
#endif