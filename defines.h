#ifndef DEFINES_H_
#define DEFINES_H_

#include "ap_fixed.h"
#include "ap_int.h"
#include "nnet_utils/nnet_types.h"
#include <cstddef>
#include <cstdio>

// hls-fpga-machine-learning insert numbers
#define N_INPUT_1_1 480
#define N_INPUT_2_1 128
#define N_INPUT_3_1 1
#define OUT_HEIGHT_2 512
#define OUT_WIDTH_2 128
#define N_CHAN_2 1
#define OUT_HEIGHT_3 510
#define OUT_WIDTH_3 126
#define N_FILT_3 32
#define OUT_HEIGHT_5 127
#define OUT_WIDTH_5 31
#define N_FILT_5 32
#define OUT_HEIGHT_6 125
#define OUT_WIDTH_6 29
#define N_FILT_6 64
#define OUT_HEIGHT_8 62
#define OUT_WIDTH_8 14
#define N_FILT_8 64
#define OUT_HEIGHT_9 60
#define OUT_WIDTH_9 12
#define N_FILT_9 64
#define OUT_HEIGHT_11 30
#define OUT_WIDTH_11 6
#define N_FILT_11 64
#define OUT_HEIGHT_12 28
#define OUT_WIDTH_12 4
#define N_FILT_12 32
#define OUT_HEIGHT_14 14
#define OUT_WIDTH_14 2
#define N_FILT_14 32
#define N_SIZE_0_15 896
#define N_LAYER_16 8
#define N_LAYER_18 3
#define N_LAYER_18 3

// hls-fpga-machine-learning insert layer-precision
typedef nnet::array<ap_fixed<16,6>, 1*1> input_t;
typedef nnet::array<ap_fixed<16,6>, 1*1> layer2_t;
typedef ap_fixed<16,6> model_default_t;
typedef nnet::array<ap_fixed<16,6>, 32*1> layer3_t;
typedef ap_fixed<16,6> conv2d_weight_t;
typedef ap_fixed<16,6> conv2d_bias_t;
typedef nnet::array<ap_fixed<16,6>, 32*1> layer5_t;
typedef nnet::array<ap_fixed<16,6>, 64*1> layer6_t;
typedef ap_fixed<16,6> conv2d_1_weight_t;
typedef ap_fixed<16,6> conv2d_1_bias_t;
typedef nnet::array<ap_fixed<16,6>, 64*1> layer8_t;
typedef nnet::array<ap_fixed<16,6>, 64*1> layer9_t;
typedef ap_fixed<16,6> conv2d_2_weight_t;
typedef ap_fixed<16,6> conv2d_2_bias_t;
typedef nnet::array<ap_fixed<16,6>, 64*1> layer11_t;
typedef nnet::array<ap_fixed<16,6>, 32*1> layer12_t;
typedef ap_fixed<16,6> conv2d_3_weight_t;
typedef ap_fixed<16,6> conv2d_3_bias_t;
typedef nnet::array<ap_fixed<16,6>, 32*1> layer14_t;
typedef nnet::array<ap_fixed<16,6>, 8*1> layer16_t;
typedef ap_fixed<16,6> dense_weight_t;
typedef ap_fixed<16,6> dense_bias_t;
typedef ap_uint<1> layer16_index;
typedef nnet::array<ap_fixed<16,6>, 3*1> layer18_t;
typedef ap_fixed<16,6> dense_1_weight_t;
typedef ap_fixed<16,6> dense_1_bias_t;
typedef ap_uint<1> layer18_index;
typedef nnet::array<ap_fixed<16,6>, 3*1> result_t;
typedef ap_fixed<18,8> dense_1_softmax_table_t;
typedef ap_fixed<18,8,AP_RND,AP_SAT> dense_1_softmax_exp_table_t;
typedef ap_fixed<18,8,AP_RND,AP_SAT> dense_1_softmax_inv_table_t;

#endif
