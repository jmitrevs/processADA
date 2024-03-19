#include <iostream>

#include "cnn2d.h"
#include "parameters.h"

void cnn2d(
    hls::stream<input_t> &input_3,
    hls::stream<result_t> &layer23_out
) {

    // hls-fpga-machine-learning insert IO
    #pragma HLS INTERFACE axis port=input_3,layer23_out 
    #pragma HLS DATAFLOW 

#ifndef __SYNTHESIS__
    static bool loaded_weights = false;
    if (!loaded_weights) {
        // hls-fpga-machine-learning insert load weights
        nnet::load_weights_from_txt<weight2_t, 288>(w2, "w2.txt");
        nnet::load_weights_from_txt<bias2_t, 32>(b2, "b2.txt");
        nnet::load_weights_from_txt<weight6_t, 18432>(w6, "w6.txt");
        nnet::load_weights_from_txt<bias6_t, 64>(b6, "b6.txt");
        nnet::load_weights_from_txt<weight10_t, 36864>(w10, "w10.txt");
        nnet::load_weights_from_txt<bias10_t, 64>(b10, "b10.txt");
        nnet::load_weights_from_txt<weight14_t, 18432>(w14, "w14.txt");
        nnet::load_weights_from_txt<bias14_t, 32>(b14, "b14.txt");
        nnet::load_weights_from_txt<weight19_t, 13312>(w19, "w19.txt");
        nnet::load_weights_from_txt<bias19_t, 8>(b19, "b19.txt");
        nnet::load_weights_from_txt<weight21_t, 16>(w21, "w21.txt");
        nnet::load_weights_from_txt<bias21_t, 2>(b21, "b21.txt");
        loaded_weights = true;
    }
#endif

    // ****************************************
    // NETWORK INSTANTIATION
    // ****************************************

    // hls-fpga-machine-learning insert layers

    hls::stream<layer2_t> layer2_out("layer2_out");
    #pragma HLS STREAM variable=layer2_out depth=2
    nnet::conv_2d_cl<input_t, layer2_t, config2>(input_3, layer2_out, w2, b2); // q_conv2d_8

    hls::stream<layer4_t> layer4_out("layer4_out");
    #pragma HLS STREAM variable=layer4_out depth=2
    nnet::relu<layer2_t, layer4_t, relu_config4>(layer2_out, layer4_out); // q_activation_8

    hls::stream<layer5_t> layer5_out("layer5_out");
    #pragma HLS STREAM variable=layer5_out depth=2
    nnet::pooling2d_cl<layer4_t, layer5_t, config5>(layer4_out, layer5_out); // average_pooling2d_8

    hls::stream<layer6_t> layer6_out("layer6_out");
    #pragma HLS STREAM variable=layer6_out depth=2
    nnet::conv_2d_cl<layer5_t, layer6_t, config6>(layer5_out, layer6_out, w6, b6); // q_conv2d_9

    hls::stream<layer8_t> layer8_out("layer8_out");
    #pragma HLS STREAM variable=layer8_out depth=2
    nnet::relu<layer6_t, layer8_t, relu_config8>(layer6_out, layer8_out); // q_activation_9

    hls::stream<layer9_t> layer9_out("layer9_out");
    #pragma HLS STREAM variable=layer9_out depth=2
    nnet::pooling2d_cl<layer8_t, layer9_t, config9>(layer8_out, layer9_out); // average_pooling2d_9

    hls::stream<layer10_t> layer10_out("layer10_out");
    #pragma HLS STREAM variable=layer10_out depth=2
    nnet::conv_2d_cl<layer9_t, layer10_t, config10>(layer9_out, layer10_out, w10, b10); // q_conv2d_10

    hls::stream<layer12_t> layer12_out("layer12_out");
    #pragma HLS STREAM variable=layer12_out depth=2
    nnet::relu<layer10_t, layer12_t, relu_config12>(layer10_out, layer12_out); // q_activation_10

    hls::stream<layer13_t> layer13_out("layer13_out");
    #pragma HLS STREAM variable=layer13_out depth=2
    nnet::pooling2d_cl<layer12_t, layer13_t, config13>(layer12_out, layer13_out); // average_pooling2d_10

    hls::stream<layer14_t> layer14_out("layer14_out");
    #pragma HLS STREAM variable=layer14_out depth=2
    nnet::conv_2d_cl<layer13_t, layer14_t, config14>(layer13_out, layer14_out, w14, b14); // q_conv2d_11

    hls::stream<layer16_t> layer16_out("layer16_out");
    #pragma HLS STREAM variable=layer16_out depth=2
    nnet::relu<layer14_t, layer16_t, relu_config16>(layer14_out, layer16_out); // q_activation_11

    hls::stream<layer17_t> layer17_out("layer17_out");
    #pragma HLS STREAM variable=layer17_out depth=2
    nnet::pooling2d_cl<layer16_t, layer17_t, config17>(layer16_out, layer17_out); // average_pooling2d_11

    auto& layer18_out = layer17_out;
    hls::stream<layer19_t> layer19_out("layer19_out");
    #pragma HLS STREAM variable=layer19_out depth=2
    nnet::dense<layer17_t, layer19_t, config19>(layer18_out, layer19_out, w19, b19); // q_dense_4

    hls::stream<layer21_t> layer21_out("layer21_out");
    #pragma HLS STREAM variable=layer21_out depth=2
    nnet::dense<layer19_t, layer21_t, config21>(layer19_out, layer21_out, w21, b21); // q_dense_5

    nnet::softmax<layer21_t, result_t, softmax_config23>(layer21_out, layer23_out); // activation_2

}
