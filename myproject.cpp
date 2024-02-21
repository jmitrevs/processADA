#include <iostream>

#include "myproject.h"
#include "parameters.h"

void myproject(
    hls::stream<input_t> &zero_padding2d_input,
    hls::stream<result_t> &layer19_out
) {

    // hls-fpga-machine-learning insert IO
    //#pragma HLS INTERFACE axis port=zero_padding2d_input,layer19_out 
    #pragma HLS DATAFLOW 

#ifndef __SYNTHESIS__
    static bool loaded_weights = false;
    if (!loaded_weights) {
        // hls-fpga-machine-learning insert load weights
        nnet::load_weights_from_txt<conv2d_weight_t, 288>(w3, "w3.txt");
        nnet::load_weights_from_txt<conv2d_bias_t, 32>(b3, "b3.txt");
        nnet::load_weights_from_txt<conv2d_1_weight_t, 18432>(w6, "w6.txt");
        nnet::load_weights_from_txt<conv2d_1_bias_t, 64>(b6, "b6.txt");
        nnet::load_weights_from_txt<conv2d_2_weight_t, 36864>(w9, "w9.txt");
        nnet::load_weights_from_txt<conv2d_2_bias_t, 64>(b9, "b9.txt");
        nnet::load_weights_from_txt<conv2d_3_weight_t, 18432>(w12, "w12.txt");
        nnet::load_weights_from_txt<conv2d_3_bias_t, 32>(b12, "b12.txt");
        nnet::load_weights_from_txt<dense_weight_t, 7168>(w16, "w16.txt");
        nnet::load_weights_from_txt<dense_bias_t, 8>(b16, "b16.txt");
        nnet::load_weights_from_txt<dense_1_weight_t, 24>(w18, "w18.txt");
        nnet::load_weights_from_txt<dense_1_bias_t, 3>(b18, "b18.txt");
        loaded_weights = true;
    }
#endif

    // ****************************************
    // NETWORK INSTANTIATION
    // ****************************************

    // hls-fpga-machine-learning insert layers

    hls::stream<layer2_t> layer2_out("layer2_out");
    #pragma HLS STREAM variable=layer2_out depth=2
    nnet::zeropad2d_cl<input_t, layer2_t, config2>(zero_padding2d_input, layer2_out); // zero_padding2d

    hls::stream<layer3_t> layer3_out("layer3_out");
    #pragma HLS STREAM variable=layer3_out depth=2
    nnet::conv_2d_cl<layer2_t, layer3_t, config3>(layer2_out, layer3_out, w3, b3); // conv2d

    hls::stream<layer5_t> layer5_out("layer5_out");
    #pragma HLS STREAM variable=layer5_out depth=2
    nnet::pooling2d_cl<layer3_t, layer5_t, config5>(layer3_out, layer5_out); // average_pooling2d

    hls::stream<layer6_t> layer6_out("layer6_out");
    #pragma HLS STREAM variable=layer6_out depth=2
    nnet::conv_2d_cl<layer5_t, layer6_t, config6>(layer5_out, layer6_out, w6, b6); // conv2d_1

    hls::stream<layer8_t> layer8_out("layer8_out");
    #pragma HLS STREAM variable=layer8_out depth=2
    nnet::pooling2d_cl<layer6_t, layer8_t, config8>(layer6_out, layer8_out); // average_pooling2d_1

    hls::stream<layer9_t> layer9_out("layer9_out");
    #pragma HLS STREAM variable=layer9_out depth=2
    nnet::conv_2d_cl<layer8_t, layer9_t, config9>(layer8_out, layer9_out, w9, b9); // conv2d_2

    hls::stream<layer11_t> layer11_out("layer11_out");
    #pragma HLS STREAM variable=layer11_out depth=2
    nnet::pooling2d_cl<layer9_t, layer11_t, config11>(layer9_out, layer11_out); // average_pooling2d_2

    hls::stream<layer12_t> layer12_out("layer12_out");
    #pragma HLS STREAM variable=layer12_out depth=2
    nnet::conv_2d_cl<layer11_t, layer12_t, config12>(layer11_out, layer12_out, w12, b12); // conv2d_3

    hls::stream<layer14_t> layer14_out("layer14_out");
    #pragma HLS STREAM variable=layer14_out depth=2
    nnet::pooling2d_cl<layer12_t, layer14_t, config14>(layer12_out, layer14_out); // average_pooling2d_3

    auto& layer15_out = layer14_out;
    hls::stream<layer16_t> layer16_out("layer16_out");
    #pragma HLS STREAM variable=layer16_out depth=2
    nnet::dense<layer14_t, layer16_t, config16>(layer15_out, layer16_out, w16, b16); // dense

    hls::stream<layer18_t> layer18_out("layer18_out");
    #pragma HLS STREAM variable=layer18_out depth=2
    nnet::dense<layer16_t, layer18_t, config18>(layer16_out, layer18_out, w18, b18); // dense_1

    nnet::softmax<layer18_t, result_t, softmax_config19>(layer18_out, layer19_out); // dense_1_softmax

}
