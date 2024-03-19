#ifndef CNN2D_H_
#define CNN2D_H_

#include "ap_fixed.h"
#include "ap_int.h"
#include "hls_stream.h"

#include "defines.h"

// Prototype of top level function for C-synthesis
void cnn2d(
    hls::stream<input_t> &input_3,
    hls::stream<result_t> &layer23_out
);

#endif
