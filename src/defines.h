#ifndef DEFINES_H_
#define DEFINES_H_

#include "ap_fixed.h"
#include "ap_int.h"
#include "nnet_utils/nnet_types.h"
#include <cstddef>
#include <cstdio>

// hls-fpga-machine-learning insert numbers
#define N_INPUT_1_1 128
#define N_INPUT_2_1 128
#define N_INPUT_3_1 1
#define OUT_HEIGHT_20 130
#define OUT_WIDTH_20 130
#define N_CHAN_20 1
#define OUT_HEIGHT_2 128
#define OUT_WIDTH_2 128
#define N_FILT_2 8
#define OUT_HEIGHT_2 128
#define OUT_WIDTH_2 128
#define N_FILT_2 8
#define OUT_HEIGHT_2 128
#define OUT_WIDTH_2 128
#define N_FILT_2 8
#define OUT_HEIGHT_4 32
#define OUT_WIDTH_4 32
#define N_FILT_4 8
#define OUT_HEIGHT_21 34
#define OUT_WIDTH_21 34
#define N_CHAN_21 8
#define OUT_HEIGHT_5 32
#define OUT_WIDTH_5 32
#define N_FILT_5 16
#define OUT_HEIGHT_5 32
#define OUT_WIDTH_5 32
#define N_FILT_5 16
#define OUT_HEIGHT_5 32
#define OUT_WIDTH_5 32
#define N_FILT_5 16
#define OUT_HEIGHT_7 8
#define OUT_WIDTH_7 8
#define N_FILT_7 16
#define OUT_HEIGHT_8 6
#define OUT_WIDTH_8 6
#define N_FILT_8 32
#define OUT_HEIGHT_8 6
#define OUT_WIDTH_8 6
#define N_FILT_8 32
#define OUT_HEIGHT_8 6
#define OUT_WIDTH_8 6
#define N_FILT_8 32
#define N_SIZE_0_10 1152
#define N_LAYER_11 12
#define N_LAYER_11 12
#define N_LAYER_11 12
#define N_LAYER_13 2
#define N_LAYER_13 2
#define N_LAYER_13 2


// hls-fpga-machine-learning insert layer-precision
typedef nnet::array<ap_fixed<16,6>, 1*1> input_t;
typedef nnet::array<ap_fixed<16,6>, 1*1> layer20_t;
typedef ap_fixed<16,6> model_default_t;
typedef nnet::array<ap_fixed<16,6>, 8*1> layer2_t;
typedef ap_fixed<8,8> weight2_t;
typedef ap_fixed<8,8> bias2_t;
typedef nnet::array<ap_fixed<16,6>, 8*1> layer15_t;
typedef struct exponent_scale15_t {ap_uint<1> sign;ap_int<11> weight; } exponent_scale15_t;
typedef ap_fixed<8,8> bias15_t;
typedef nnet::array<ap_ufixed<8,0,AP_RND_CONV,AP_SAT,0>, 8*1> layer3_t;
typedef ap_fixed<18,8> q_activation_4_table_t;
typedef nnet::array<ap_fixed<16,6>, 8*1> layer4_t;
typedef nnet::array<ap_fixed<16,6>, 8*1> layer21_t;
typedef nnet::array<ap_fixed<16,6>, 16*1> layer5_t;
typedef ap_fixed<8,8> weight5_t;
typedef ap_fixed<8,8> bias5_t;
typedef nnet::array<ap_fixed<16,6>, 16*1> layer16_t;
typedef struct exponent_scale16_t {ap_uint<1> sign;ap_int<10> weight; } exponent_scale16_t;
typedef ap_fixed<8,8> bias16_t;
typedef nnet::array<ap_ufixed<8,0,AP_RND_CONV,AP_SAT,0>, 16*1> layer6_t;
typedef ap_fixed<18,8> q_activation_5_table_t;
typedef nnet::array<ap_fixed<16,6>, 16*1> layer7_t;
typedef nnet::array<ap_fixed<16,6>, 32*1> layer8_t;
typedef ap_fixed<8,8> weight8_t;
typedef ap_fixed<8,8> bias8_t;
typedef nnet::array<ap_fixed<16,6>, 32*1> layer17_t;
typedef struct exponent_scale17_t {ap_uint<1> sign;ap_int<10> weight; } exponent_scale17_t;
typedef ap_fixed<8,8> bias17_t;
typedef nnet::array<ap_ufixed<8,0,AP_RND_CONV,AP_SAT,0>, 32*1> layer9_t;
typedef ap_fixed<18,8> q_activation_6_table_t;
typedef nnet::array<ap_fixed<16,6>, 12*1> layer11_t;
typedef ap_fixed<8,8> weight11_t;
typedef ap_fixed<8,8> bias11_t;
typedef ap_uint<1> layer11_index;
typedef nnet::array<ap_fixed<16,6>, 12*1> layer18_t;
typedef struct exponent_scale18_t {ap_uint<1> sign;ap_int<11> weight; } exponent_scale18_t;
typedef ap_fixed<8,8> bias18_t;
typedef nnet::array<ap_ufixed<8,0,AP_RND_CONV,AP_SAT,0>, 12*1> layer12_t;
typedef ap_fixed<18,8> q_activation_7_table_t;
typedef nnet::array<ap_fixed<16,6>, 2*1> layer13_t;
typedef ap_fixed<8,8> weight13_t;
typedef ap_fixed<8,8> bias13_t;
typedef ap_uint<1> layer13_index;
typedef nnet::array<ap_fixed<16,6>, 2*1> layer19_t;
typedef struct exponent_scale19_t {ap_uint<1> sign;ap_int<8> weight; } exponent_scale19_t;
typedef ap_fixed<8,8> bias19_t;
typedef nnet::array<ap_fixed<16,6>, 2*1> result_t;
typedef ap_fixed<18,8> q_dense_3_softmax_table_t;
typedef ap_fixed<18,8,AP_RND,AP_SAT,0> q_dense_3_softmax_exp_table_t;
typedef ap_fixed<18,8,AP_RND,AP_SAT,0> q_dense_3_softmax_inv_table_t;


#endif
