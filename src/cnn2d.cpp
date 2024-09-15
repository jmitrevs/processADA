#include <iostream>

#include "cnn2d.h"
#include "parameters.h"


void cnn2d(
    hls::stream<input_t> &input_3,
    hls::stream<result_t> &layer14_out
) {

    // hls-fpga-machine-learning insert IO
    #pragma HLS INTERFACE axis port=input_3,layer14_out 
    #pragma HLS DATAFLOW 

    // hls-fpga-machine-learning insert load weights
#ifndef __SYNTHESIS__
    static bool loaded_weights = false;
    if (!loaded_weights) {
        nnet::load_weights_from_txt<weight2_t, 72>(w2, "w2.txt");
        nnet::load_weights_from_txt<bias2_t, 8>(b2, "b2.txt");
        nnet::load_exponent_weights_from_txt<exponent_scale15_t, 8>(s15, "s15.txt");
        nnet::load_weights_from_txt<bias15_t, 8>(b15, "b15.txt");
        nnet::load_weights_from_txt<weight5_t, 1152>(w5, "w5.txt");
        nnet::load_weights_from_txt<bias5_t, 16>(b5, "b5.txt");
        nnet::load_exponent_weights_from_txt<exponent_scale16_t, 16>(s16, "s16.txt");
        nnet::load_weights_from_txt<bias16_t, 16>(b16, "b16.txt");
        nnet::load_weights_from_txt<weight8_t, 4608>(w8, "w8.txt");
        nnet::load_weights_from_txt<bias8_t, 32>(b8, "b8.txt");
        nnet::load_exponent_weights_from_txt<exponent_scale17_t, 32>(s17, "s17.txt");
        nnet::load_weights_from_txt<bias17_t, 32>(b17, "b17.txt");
        nnet::load_weights_from_txt<weight11_t, 13824>(w11, "w11.txt");
        nnet::load_weights_from_txt<bias11_t, 12>(b11, "b11.txt");
        nnet::load_exponent_weights_from_txt<exponent_scale18_t, 12>(s18, "s18.txt");
        nnet::load_weights_from_txt<bias18_t, 12>(b18, "b18.txt");
        nnet::load_weights_from_txt<weight13_t, 24>(w13, "w13.txt");
        nnet::load_weights_from_txt<bias13_t, 2>(b13, "b13.txt");
        nnet::load_exponent_weights_from_txt<exponent_scale19_t, 2>(s19, "s19.txt");
        nnet::load_weights_from_txt<bias19_t, 2>(b19, "b19.txt");
        loaded_weights = true;    }
#endif
    // ****************************************
    // NETWORK INSTANTIATION
    // ****************************************

    // hls-fpga-machine-learning insert layers

    hls::stream<layer20_t> layer20_out("layer20_out");
    #pragma HLS STREAM variable=layer20_out depth=16900
    nnet::zeropad2d_cl<input_t, layer20_t, config20>(input_3, layer20_out); // zp2d_q_conv2d_3

    hls::stream<q_conv2d_3_result_t> layer2_out("layer2_out");
    #pragma HLS STREAM variable=layer2_out depth=16384
    nnet::conv_2d_cl<layer20_t, q_conv2d_3_result_t, config2>(layer20_out, layer2_out, w2, b2); // q_conv2d_3

    hls::stream<layer15_t> layer15_out("layer15_out");
    #pragma HLS STREAM variable=layer15_out depth=16384
    nnet::normalize<q_conv2d_3_result_t, layer15_t, config15>(layer2_out, layer15_out, s15, b15); // q_conv2d_3_alpha

    hls::stream<layer3_t> layer3_out("layer3_out");
    #pragma HLS STREAM variable=layer3_out depth=16384
    nnet::relu<layer15_t, layer3_t, relu_config3>(layer15_out, layer3_out); // q_conv2d_3_QActivation

    hls::stream<layer4_t> layer4_out("layer4_out");
    #pragma HLS STREAM variable=layer4_out depth=1024
    nnet::pooling2d_cl<layer3_t, layer4_t, config4>(layer3_out, layer4_out); // max_pooling2d_2

    hls::stream<layer21_t> layer21_out("layer21_out");
    #pragma HLS STREAM variable=layer21_out depth=1156
    nnet::zeropad2d_cl<layer4_t, layer21_t, config21>(layer4_out, layer21_out); // zp2d_q_conv2d_4

    hls::stream<q_conv2d_4_result_t> layer5_out("layer5_out");
    #pragma HLS STREAM variable=layer5_out depth=1024
    nnet::conv_2d_cl<layer21_t, q_conv2d_4_result_t, config5>(layer21_out, layer5_out, w5, b5); // q_conv2d_4

    hls::stream<layer16_t> layer16_out("layer16_out");
    #pragma HLS STREAM variable=layer16_out depth=1024
    nnet::normalize<q_conv2d_4_result_t, layer16_t, config16>(layer5_out, layer16_out, s16, b16); // q_conv2d_4_alpha

    hls::stream<layer6_t> layer6_out("layer6_out");
    #pragma HLS STREAM variable=layer6_out depth=1024
    nnet::relu<layer16_t, layer6_t, relu_config6>(layer16_out, layer6_out); // q_conv2d_4_QActivation

    hls::stream<layer7_t> layer7_out("layer7_out");
    #pragma HLS STREAM variable=layer7_out depth=64
    nnet::pooling2d_cl<layer6_t, layer7_t, config7>(layer6_out, layer7_out); // max_pooling2d_3

    hls::stream<q_conv2d_5_result_t> layer8_out("layer8_out");
    #pragma HLS STREAM variable=layer8_out depth=36
    nnet::conv_2d_cl<layer7_t, q_conv2d_5_result_t, config8>(layer7_out, layer8_out, w8, b8); // q_conv2d_5

    hls::stream<layer17_t> layer17_out("layer17_out");
    #pragma HLS STREAM variable=layer17_out depth=36
    nnet::normalize<q_conv2d_5_result_t, layer17_t, config17>(layer8_out, layer17_out, s17, b17); // q_conv2d_5_alpha

    hls::stream<layer9_t> layer9_out("layer9_out");
    #pragma HLS STREAM variable=layer9_out depth=36
    nnet::relu<layer17_t, layer9_t, relu_config9>(layer17_out, layer9_out); // q_conv2d_5_QActivation

    auto& layer10_out = layer9_out;
    hls::stream<q_dense_2_result_t> layer11_out("layer11_out");
    #pragma HLS STREAM variable=layer11_out depth=1
    nnet::dense<layer9_t, q_dense_2_result_t, config11>(layer10_out, layer11_out, w11, b11); // q_dense_2

    hls::stream<layer18_t> layer18_out("layer18_out");
    #pragma HLS STREAM variable=layer18_out depth=1
    nnet::normalize<q_dense_2_result_t, layer18_t, config18>(layer11_out, layer18_out, s18, b18); // q_dense_2_alpha

    hls::stream<layer12_t> layer12_out("layer12_out");
    #pragma HLS STREAM variable=layer12_out depth=1
    nnet::relu<layer18_t, layer12_t, relu_config12>(layer18_out, layer12_out); // q_dense_2_QActivation

    hls::stream<q_dense_3_result_t> layer13_out("layer13_out");
    #pragma HLS STREAM variable=layer13_out depth=1
    nnet::dense<layer12_t, q_dense_3_result_t, config13>(layer12_out, layer13_out, w13, b13); // q_dense_3

    hls::stream<layer19_t> layer19_out("layer19_out");
    #pragma HLS STREAM variable=layer19_out depth=1
    nnet::normalize<q_dense_3_result_t, layer19_t, config19>(layer13_out, layer19_out, s19, b19); // q_dense_3_alpha

    nnet::softmax<layer19_t, result_t, softmax_config14>(layer19_out, layer14_out); // q_dense_3_softmax

}

