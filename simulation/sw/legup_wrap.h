
#ifndef LEGUP_WRAP_H
#define LEGUP_WRAP_H
#include "hls/types.h"
#include "hls/streaming.hpp"
#include "hls/ap_int.hpp"
#include "hls/ap_fixpt.hpp"
#include "hls/axi_interface.hpp"


extern void sobel_filter_LEGUP_WRAP(unsigned char in[][512], unsigned char out[][512]);
#endif
