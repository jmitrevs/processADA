#ifndef DEFINES_H_
#define DEFINES_H_

#include "ap_fixed.h"
#include "ap_int.h"
#include "nnet_utils/nnet_types.h"
#include <cstddef>
#include <cstdio>

// hls-fpga-machine-learning insert numbers
#define N_INPUT_1_1 480
#define N_INPUT_2_1 200
#define N_INPUT_3_1 1
#define OUT_HEIGHT_2 478
#define OUT_WIDTH_2 198
#define N_FILT_2 32
#define OUT_HEIGHT_2 478
#define OUT_WIDTH_2 198
#define N_FILT_2 32
#define OUT_HEIGHT_5 119
#define OUT_WIDTH_5 49
#define N_FILT_5 32
#define OUT_HEIGHT_6 117
#define OUT_WIDTH_6 47
#define N_FILT_6 64
#define OUT_HEIGHT_6 117
#define OUT_WIDTH_6 47
#define N_FILT_6 64
#define OUT_HEIGHT_9 58
#define OUT_WIDTH_9 23
#define N_FILT_9 64
#define OUT_HEIGHT_10 56
#define OUT_WIDTH_10 21
#define N_FILT_10 64
#define OUT_HEIGHT_10 56
#define OUT_WIDTH_10 21
#define N_FILT_10 64
#define OUT_HEIGHT_13 28
#define OUT_WIDTH_13 10
#define N_FILT_13 64
#define OUT_HEIGHT_14 26
#define OUT_WIDTH_14 8
#define N_FILT_14 32
#define OUT_HEIGHT_14 26
#define OUT_WIDTH_14 8
#define N_FILT_14 32
#define OUT_HEIGHT_17 13
#define OUT_WIDTH_17 4
#define N_FILT_17 32
#define N_SIZE_0_18 1664
#define N_LAYER_19 8
#define N_LAYER_21 2
#define N_LAYER_21 2

// hls-fpga-machine-learning insert layer-precision
typedef nnet::array<ap_int<16>, 1*1> input_t;
typedef ap_fixed<24,12> q_conv2d_8_accum_t;
typedef nnet::array<ap_fixed<7,6,AP_RND_CONV,AP_SAT,0>, 32*1> layer2_t;
typedef ap_fixed<7,1> weight2_t;
typedef ap_fixed<7,1> bias2_t;
typedef nnet::array<ap_ufixed<6,5,AP_RND_CONV,AP_SAT,0>, 32*1> layer4_t;
typedef ap_fixed<18,8> q_activation_8_table_t;
typedef ap_fixed<20,12> average_pooling2d_8_accum_t;
typedef nnet::array<ap_ufixed<6,5,AP_RND_CONV,AP_SAT,0>, 32*1> layer5_t;
typedef ap_fixed<24,12> q_conv2d_9_accum_t;
typedef nnet::array<ap_fixed<7,6,AP_RND_CONV,AP_SAT,0>, 64*1> layer6_t;
typedef ap_fixed<7,1> weight6_t;
typedef ap_fixed<7,1> bias6_t;
typedef nnet::array<ap_ufixed<6,5,AP_RND_CONV,AP_SAT,0>, 64*1> layer8_t;
typedef ap_fixed<18,8> q_activation_9_table_t;
typedef ap_fixed<16,10> average_pooling2d_9_accum_t;
typedef nnet::array<ap_ufixed<6,5,AP_RND_CONV,AP_SAT,0>, 64*1> layer9_t;
typedef ap_fixed<24,9> q_conv2d_10_accum_t;
typedef nnet::array<ap_fixed<7,6,AP_RND_CONV,AP_SAT,0>, 64*1> layer10_t;
typedef ap_fixed<7,1> weight10_t;
typedef ap_fixed<7,1> bias10_t;
typedef nnet::array<ap_ufixed<6,5,AP_RND_CONV,AP_SAT,0>, 64*1> layer12_t;
typedef ap_fixed<18,8> q_activation_10_table_t;
typedef ap_fixed<16,10> average_pooling2d_10_accum_t;
typedef nnet::array<ap_ufixed<6,5,AP_RND_CONV,AP_SAT,0>, 64*1> layer13_t;
typedef ap_fixed<24,9> q_conv2d_11_accum_t;
typedef nnet::array<ap_fixed<7,6,AP_RND_CONV,AP_SAT,0>, 32*1> layer14_t;
typedef ap_fixed<7,1> weight14_t;
typedef ap_fixed<7,1> bias14_t;
typedef nnet::array<ap_ufixed<6,5,AP_RND_CONV,AP_SAT,0>, 32*1> layer16_t;
typedef ap_fixed<18,8> q_activation_11_table_t;
typedef ap_fixed<16,10> average_pooling2d_11_accum_t;
typedef nnet::array<ap_ufixed<6,5,AP_RND_CONV,AP_SAT,0>, 32*1> layer17_t;
typedef ap_fixed<12,8> q_dense_4_accum_t;
typedef nnet::array<ap_fixed<8,4,AP_RND_CONV,AP_SAT,0>, 8*1> layer19_t;
typedef ap_fixed<7,1> weight19_t;
typedef ap_fixed<7,1> bias19_t;
typedef ap_uint<1> layer19_index;
typedef ap_fixed<14,8> q_dense_5_accum_t;
typedef nnet::array<ap_fixed<12,5,AP_RND_CONV,AP_SAT,0>, 2*1> layer21_t;
typedef ap_fixed<7,1> weight21_t;
typedef ap_fixed<7,1> bias21_t;
typedef ap_uint<1> layer21_index;
typedef nnet::array<ap_ufixed<8,1,AP_RND_CONV,AP_SAT,0>, 2*1> result_t;
typedef ap_fixed<18,8> activation_2_table_t;
typedef ap_fixed<18,8,AP_RND,AP_SAT,0> activation_2_exp_table_t;
typedef ap_fixed<18,8,AP_RND,AP_SAT,0> activation_2_inv_table_t;

#endif
