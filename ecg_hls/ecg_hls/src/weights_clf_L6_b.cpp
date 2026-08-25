#include "weights_classifier.h"

namespace clf_w {
#ifdef __SYNTHESIS__
const ap_fixed<8,4> L6_b[2] = {
#else
const float L6_b[2] = {
#endif
    0.04738577f, -0.04738701f
};
} // namespace clf_w