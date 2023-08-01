set SynModuleInfo {
  {SRCNAME process_data_Pipeline_frame_chan_loop MODELNAME process_data_Pipeline_frame_chan_loop RTLNAME process_data_process_data_Pipeline_frame_chan_loop
    SUBMODULES {
      {MODELNAME process_data_flow_control_loop_pipe_sequential_init RTLNAME process_data_flow_control_loop_pipe_sequential_init BINDTYPE interface TYPE internal_upc_flow_control INSTNAME process_data_flow_control_loop_pipe_sequential_init_U}
    }
  }
  {SRCNAME process_data_Pipeline_first_chan_loop_first_chan_frame_loop MODELNAME process_data_Pipeline_first_chan_loop_first_chan_frame_loop RTLNAME process_data_process_data_Pipeline_first_chan_loop_first_chan_frame_loop
    SUBMODULES {
      {MODELNAME process_data_mul_21ns_23ns_43_1_1 RTLNAME process_data_mul_21ns_23ns_43_1_1 BINDTYPE op TYPE mul IMPL auto LATENCY 0 ALLOW_PRAGMA 1}
      {MODELNAME process_data_mac_muladd_9ns_13ns_7ns_21_4_1 RTLNAME process_data_mac_muladd_9ns_13ns_7ns_21_4_1 BINDTYPE op TYPE all IMPL dsp48 LATENCY 3 ALLOW_PRAGMA 1}
    }
  }
  {SRCNAME process_data_Pipeline_VITIS_LOOP_169_1 MODELNAME process_data_Pipeline_VITIS_LOOP_169_1 RTLNAME process_data_process_data_Pipeline_VITIS_LOOP_169_1}
  {SRCNAME process_data_Pipeline_4 MODELNAME process_data_Pipeline_4 RTLNAME process_data_process_data_Pipeline_4}
  {SRCNAME process_data_Pipeline_VITIS_LOOP_99_1 MODELNAME process_data_Pipeline_VITIS_LOOP_99_1 RTLNAME process_data_process_data_Pipeline_VITIS_LOOP_99_1}
  {SRCNAME process_data_Pipeline_VITIS_LOOP_160_4_VITIS_LOOP_162_5 MODELNAME process_data_Pipeline_VITIS_LOOP_160_4_VITIS_LOOP_162_5 RTLNAME process_data_process_data_Pipeline_VITIS_LOOP_160_4_VITIS_LOOP_162_5
    SUBMODULES {
      {MODELNAME process_data_mac_muladd_9ns_13ns_8ns_22_4_1 RTLNAME process_data_mac_muladd_9ns_13ns_8ns_22_4_1 BINDTYPE op TYPE all IMPL dsp48 LATENCY 3 ALLOW_PRAGMA 1}
    }
  }
  {SRCNAME zeropad2d_cl<array,array<ap_fixed,1u>,config2>_Pipeline_PadTop_PadTopWidth MODELNAME zeropad2d_cl_array_array_ap_fixed_1u_config2_Pipeline_PadTop_PadTopWidth RTLNAME process_data_zeropad2d_cl_array_array_ap_fixed_1u_config2_Pipeline_PadTop_PadTopWidth}
  {SRCNAME zeropad2d_cl<array,array<ap_fixed,1u>,config2>_Pipeline_PadMain_CopyMain MODELNAME zeropad2d_cl_array_array_ap_fixed_1u_config2_Pipeline_PadMain_CopyMain RTLNAME process_data_zeropad2d_cl_array_array_ap_fixed_1u_config2_Pipeline_PadMain_CopyMain}
  {SRCNAME zeropad2d_cl<array,array<ap_fixed,1u>,config2>_Pipeline_PadBottom_PadBottomWidth MODELNAME zeropad2d_cl_array_array_ap_fixed_1u_config2_Pipeline_PadBottom_PadBottomWidth RTLNAME process_data_zeropad2d_cl_array_array_ap_fixed_1u_config2_Pipeline_PadBottom_PadBottomWidth}
  {SRCNAME zeropad2d_cl<array<ap_fixed,1u>,array<ap_fixed<16,6,5,3,0>,1u>,config2> MODELNAME zeropad2d_cl_array_ap_fixed_1u_array_ap_fixed_16_6_5_3_0_1u_config2_s RTLNAME process_data_zeropad2d_cl_array_ap_fixed_1u_array_ap_fixed_16_6_5_3_0_1u_config2_s}
  {SRCNAME {shift_line_buffer<array<ap_fixed<16, 6, 5, 3, 0>, 1u>, config3>} MODELNAME shift_line_buffer_array_ap_fixed_16_6_5_3_0_1u_config3_s RTLNAME process_data_shift_line_buffer_array_ap_fixed_16_6_5_3_0_1u_config3_s
    SUBMODULES {
      {MODELNAME process_data_shift_line_buffer_array_ap_fixed_16_6_5_3_0_1u_config3_s_void_conv_2d_buffer_bkb RTLNAME process_data_shift_line_buffer_array_ap_fixed_16_6_5_3_0_1u_config3_s_void_conv_2d_buffer_bkb BINDTYPE storage TYPE shiftreg IMPL auto LATENCY 1 ALLOW_PRAGMA 1}
    }
  }
  {SRCNAME {dense_resource<ap_fixed<16, 6, 5, 3, 0>, ap_fixed<16, 6, 5, 3, 0>, config3_mult>} MODELNAME dense_resource_ap_fixed_16_6_5_3_0_ap_fixed_16_6_5_3_0_config3_mult_s RTLNAME process_data_dense_resource_ap_fixed_16_6_5_3_0_ap_fixed_16_6_5_3_0_config3_mult_s
    SUBMODULES {
      {MODELNAME process_data_mux_9_4_16_1_1 RTLNAME process_data_mux_9_4_16_1_1 BINDTYPE op TYPE mux IMPL auto LATENCY 0 ALLOW_PRAGMA 1}
      {MODELNAME process_data_mul_16s_16s_26_1_1 RTLNAME process_data_mul_16s_16s_26_1_1 BINDTYPE op TYPE mul IMPL auto LATENCY 0 ALLOW_PRAGMA 1}
      {MODELNAME process_data_mux_16_4_16_1_1 RTLNAME process_data_mux_16_4_16_1_1 BINDTYPE op TYPE mux IMPL auto LATENCY 0 ALLOW_PRAGMA 1}
      {MODELNAME process_data_mul_16s_9s_25_1_1 RTLNAME process_data_mul_16s_9s_25_1_1 BINDTYPE op TYPE mul IMPL auto LATENCY 0 ALLOW_PRAGMA 1}
      {MODELNAME process_data_dense_resource_ap_fixed_16_6_5_3_0_ap_fixed_16_6_5_3_0_config3_mult_s_outidx_dEe RTLNAME process_data_dense_resource_ap_fixed_16_6_5_3_0_ap_fixed_16_6_5_3_0_config3_mult_s_outidx_dEe BINDTYPE storage TYPE rom IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME process_data_dense_resource_ap_fixed_16_6_5_3_0_ap_fixed_16_6_5_3_0_config3_mult_s_w3_ROM_eOg RTLNAME process_data_dense_resource_ap_fixed_16_6_5_3_0_ap_fixed_16_6_5_3_0_config3_mult_s_w3_ROM_eOg BINDTYPE storage TYPE rom IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
    }
  }
  {SRCNAME compute_output_buffer_2d<array,array<ap_fixed<16,6,5,3,0>,32u>,config3> MODELNAME compute_output_buffer_2d_array_array_ap_fixed_16_6_5_3_0_32u_config3_s RTLNAME process_data_compute_output_buffer_2d_array_array_ap_fixed_16_6_5_3_0_32u_config3_s}
  {SRCNAME conv_2d_cl<array<ap_fixed,1u>,array<ap_fixed<16,6,5,3,0>,32u>,config3> MODELNAME conv_2d_cl_array_ap_fixed_1u_array_ap_fixed_16_6_5_3_0_32u_config3_s RTLNAME process_data_conv_2d_cl_array_ap_fixed_1u_array_ap_fixed_16_6_5_3_0_32u_config3_s}
  {SRCNAME pooling2d_cl<array,array<ap_fixed<16,6,5,3,0>,32u>,config5> MODELNAME pooling2d_cl_array_array_ap_fixed_16_6_5_3_0_32u_config5_s RTLNAME process_data_pooling2d_cl_array_array_ap_fixed_16_6_5_3_0_32u_config5_s
    SUBMODULES {
      {MODELNAME process_data_pooling2d_cl_array_array_ap_fixed_16_6_5_3_0_32u_config5_s_p_ZZN4nnet19poolinfYi RTLNAME process_data_pooling2d_cl_array_array_ap_fixed_16_6_5_3_0_32u_config5_s_p_ZZN4nnet19poolinfYi BINDTYPE storage TYPE shiftreg IMPL auto LATENCY 1 ALLOW_PRAGMA 1}
      {MODELNAME process_data_frp_fifoout RTLNAME process_data_frp_fifoout BINDTYPE interface TYPE internal_frp_fifoout}
      {MODELNAME process_data_frp_pipeline_valid RTLNAME process_data_frp_pipeline_valid BINDTYPE interface TYPE internal_frp_validbits INSTNAME process_data_frp_pipeline_valid_U}
      {MODELNAME process_data_flow_control_loop_pipe RTLNAME process_data_flow_control_loop_pipe BINDTYPE interface TYPE internal_upc_flow_control INSTNAME process_data_flow_control_loop_pipe_U}
    }
  }
  {SRCNAME {shift_line_buffer<array<ap_fixed<16, 6, 5, 3, 0>, 32u>, config6>} MODELNAME shift_line_buffer_array_ap_fixed_16_6_5_3_0_32u_config6_s RTLNAME process_data_shift_line_buffer_array_ap_fixed_16_6_5_3_0_32u_config6_s
    SUBMODULES {
      {MODELNAME process_data_shift_line_buffer_array_ap_fixed_16_6_5_3_0_32u_config6_s_p_ZZN4nnet17conv_2dbNq RTLNAME process_data_shift_line_buffer_array_ap_fixed_16_6_5_3_0_32u_config6_s_p_ZZN4nnet17conv_2dbNq BINDTYPE storage TYPE shiftreg IMPL auto LATENCY 1 ALLOW_PRAGMA 1}
    }
  }
  {SRCNAME {dense_resource<ap_fixed<16, 6, 5, 3, 0>, ap_fixed<16, 6, 5, 3, 0>, config6_mult>} MODELNAME dense_resource_ap_fixed_16_6_5_3_0_ap_fixed_16_6_5_3_0_config6_mult_s RTLNAME process_data_dense_resource_ap_fixed_16_6_5_3_0_ap_fixed_16_6_5_3_0_config6_mult_s
    SUBMODULES {
      {MODELNAME process_data_mux_144_8_16_1_1 RTLNAME process_data_mux_144_8_16_1_1 BINDTYPE op TYPE mux IMPL auto LATENCY 0 ALLOW_PRAGMA 1}
      {MODELNAME process_data_mul_16s_8s_24_1_1 RTLNAME process_data_mul_16s_8s_24_1_1 BINDTYPE op TYPE mul IMPL auto LATENCY 0 ALLOW_PRAGMA 1}
      {MODELNAME process_data_dense_resource_ap_fixed_16_6_5_3_0_ap_fixed_16_6_5_3_0_config6_mult_s_w6_ROM_cPA RTLNAME process_data_dense_resource_ap_fixed_16_6_5_3_0_ap_fixed_16_6_5_3_0_config6_mult_s_w6_ROM_cPA BINDTYPE storage TYPE rom IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
    }
  }
  {SRCNAME compute_output_buffer_2d<array,array<ap_fixed<16,6,5,3,0>,64u>,config6> MODELNAME compute_output_buffer_2d_array_array_ap_fixed_16_6_5_3_0_64u_config6_s RTLNAME process_data_compute_output_buffer_2d_array_array_ap_fixed_16_6_5_3_0_64u_config6_s}
  {SRCNAME conv_2d_cl<array<ap_fixed,32u>,array<ap_fixed<16,6,5,3,0>,64u>,config6> MODELNAME conv_2d_cl_array_ap_fixed_32u_array_ap_fixed_16_6_5_3_0_64u_config6_s RTLNAME process_data_conv_2d_cl_array_ap_fixed_32u_array_ap_fixed_16_6_5_3_0_64u_config6_s}
  {SRCNAME pooling2d_cl<array,array<ap_fixed<16,6,5,3,0>,64u>,config8> MODELNAME pooling2d_cl_array_array_ap_fixed_16_6_5_3_0_64u_config8_s RTLNAME process_data_pooling2d_cl_array_array_ap_fixed_16_6_5_3_0_64u_config8_s
    SUBMODULES {
      {MODELNAME process_data_pooling2d_cl_array_array_ap_fixed_16_6_5_3_0_64u_config8_s_void_pooling2d_bufcQA RTLNAME process_data_pooling2d_cl_array_array_ap_fixed_16_6_5_3_0_64u_config8_s_void_pooling2d_bufcQA BINDTYPE storage TYPE shiftreg IMPL auto LATENCY 1 ALLOW_PRAGMA 1}
    }
  }
  {SRCNAME {shift_line_buffer<array<ap_fixed<16, 6, 5, 3, 0>, 64u>, config9>} MODELNAME shift_line_buffer_array_ap_fixed_16_6_5_3_0_64u_config9_s RTLNAME process_data_shift_line_buffer_array_ap_fixed_16_6_5_3_0_64u_config9_s
    SUBMODULES {
      {MODELNAME process_data_shift_line_buffer_array_ap_fixed_16_6_5_3_0_64u_config9_s_p_ZZN4nnet17conv_2ddSL RTLNAME process_data_shift_line_buffer_array_ap_fixed_16_6_5_3_0_64u_config9_s_p_ZZN4nnet17conv_2ddSL BINDTYPE storage TYPE shiftreg IMPL auto LATENCY 1 ALLOW_PRAGMA 1}
    }
  }
  {SRCNAME {dense_resource<ap_fixed<16, 6, 5, 3, 0>, ap_fixed<16, 6, 5, 3, 0>, config9_mult>} MODELNAME dense_resource_ap_fixed_16_6_5_3_0_ap_fixed_16_6_5_3_0_config9_mult_s RTLNAME process_data_dense_resource_ap_fixed_16_6_5_3_0_ap_fixed_16_6_5_3_0_config9_mult_s
    SUBMODULES {
      {MODELNAME process_data_mux_288_9_16_1_1 RTLNAME process_data_mux_288_9_16_1_1 BINDTYPE op TYPE mux IMPL auto LATENCY 0 ALLOW_PRAGMA 1}
      {MODELNAME process_data_dense_resource_ap_fixed_16_6_5_3_0_ap_fixed_16_6_5_3_0_config9_mult_s_w9_ROM_fW5 RTLNAME process_data_dense_resource_ap_fixed_16_6_5_3_0_ap_fixed_16_6_5_3_0_config9_mult_s_w9_ROM_fW5 BINDTYPE storage TYPE rom IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
    }
  }
  {SRCNAME compute_output_buffer_2d<array,array<ap_fixed<16,6,5,3,0>,64u>,config9> MODELNAME compute_output_buffer_2d_array_array_ap_fixed_16_6_5_3_0_64u_config9_s RTLNAME process_data_compute_output_buffer_2d_array_array_ap_fixed_16_6_5_3_0_64u_config9_s}
  {SRCNAME conv_2d_cl<array<ap_fixed,64u>,array<ap_fixed<16,6,5,3,0>,64u>,config9> MODELNAME conv_2d_cl_array_ap_fixed_64u_array_ap_fixed_16_6_5_3_0_64u_config9_s RTLNAME process_data_conv_2d_cl_array_ap_fixed_64u_array_ap_fixed_16_6_5_3_0_64u_config9_s}
  {SRCNAME pooling2d_cl<array,array<ap_fixed<16,6,5,3,0>,64u>,config11> MODELNAME pooling2d_cl_array_array_ap_fixed_16_6_5_3_0_64u_config11_s RTLNAME process_data_pooling2d_cl_array_array_ap_fixed_16_6_5_3_0_64u_config11_s
    SUBMODULES {
      {MODELNAME process_data_pooling2d_cl_array_array_ap_fixed_16_6_5_3_0_64u_config11_s_void_pooling2d_bufX5 RTLNAME process_data_pooling2d_cl_array_array_ap_fixed_16_6_5_3_0_64u_config11_s_void_pooling2d_bufX5 BINDTYPE storage TYPE shiftreg IMPL auto LATENCY 1 ALLOW_PRAGMA 1}
    }
  }
  {SRCNAME {shift_line_buffer<array<ap_fixed<16, 6, 5, 3, 0>, 64u>, config12>} MODELNAME shift_line_buffer_array_ap_fixed_16_6_5_3_0_64u_config12_s RTLNAME process_data_shift_line_buffer_array_ap_fixed_16_6_5_3_0_64u_config12_s
    SUBMODULES {
      {MODELNAME process_data_shift_line_buffer_array_ap_fixed_16_6_5_3_0_64u_config12_s_p_ZZN4nnet17conv_2gZb RTLNAME process_data_shift_line_buffer_array_ap_fixed_16_6_5_3_0_64u_config12_s_p_ZZN4nnet17conv_2gZb BINDTYPE storage TYPE shiftreg IMPL auto LATENCY 1 ALLOW_PRAGMA 1}
    }
  }
  {SRCNAME dense_resource<ap_fixed,ap_fixed<16,6,5,3,0>,config12_mult> MODELNAME dense_resource_ap_fixed_ap_fixed_16_6_5_3_0_config12_mult_s RTLNAME process_data_dense_resource_ap_fixed_ap_fixed_16_6_5_3_0_config12_mult_s
    SUBMODULES {
      {MODELNAME process_data_dense_resource_ap_fixed_ap_fixed_16_6_5_3_0_config12_mult_s_w12_ROM_AUTO_1R RTLNAME process_data_dense_resource_ap_fixed_ap_fixed_16_6_5_3_0_config12_mult_s_w12_ROM_AUTO_1R BINDTYPE storage TYPE rom IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
    }
  }
  {SRCNAME compute_output_buffer_2d<array,array<ap_fixed<16,6,5,3,0>,32u>,config12> MODELNAME compute_output_buffer_2d_array_array_ap_fixed_16_6_5_3_0_32u_config12_s RTLNAME process_data_compute_output_buffer_2d_array_array_ap_fixed_16_6_5_3_0_32u_config12_s}
  {SRCNAME conv_2d_cl<array<ap_fixed,64u>,array<ap_fixed<16,6,5,3,0>,32u>,config12> MODELNAME conv_2d_cl_array_ap_fixed_64u_array_ap_fixed_16_6_5_3_0_32u_config12_s RTLNAME process_data_conv_2d_cl_array_ap_fixed_64u_array_ap_fixed_16_6_5_3_0_32u_config12_s}
  {SRCNAME pooling2d_cl<array,array<ap_fixed<16,6,5,3,0>,32u>,config14> MODELNAME pooling2d_cl_array_array_ap_fixed_16_6_5_3_0_32u_config14_s RTLNAME process_data_pooling2d_cl_array_array_ap_fixed_16_6_5_3_0_32u_config14_s
    SUBMODULES {
      {MODELNAME process_data_pooling2d_cl_array_array_ap_fixed_16_6_5_3_0_32u_config14_s_void_pooling2d_bui3b RTLNAME process_data_pooling2d_cl_array_array_ap_fixed_16_6_5_3_0_32u_config14_s_void_pooling2d_bui3b BINDTYPE storage TYPE shiftreg IMPL auto LATENCY 1 ALLOW_PRAGMA 1}
    }
  }
  {SRCNAME dense<array,array<ap_fixed<16,6,5,3,0>,8u>,config16>_Pipeline_DataPrepare MODELNAME dense_array_array_ap_fixed_16_6_5_3_0_8u_config16_Pipeline_DataPrepare RTLNAME process_data_dense_array_array_ap_fixed_16_6_5_3_0_8u_config16_Pipeline_DataPrepare}
  {SRCNAME {dense_wrapper<ap_fixed<16, 6, 5, 3, 0>, ap_fixed<16, 6, 5, 3, 0>, config16>} MODELNAME dense_wrapper_ap_fixed_16_6_5_3_0_ap_fixed_16_6_5_3_0_config16_s RTLNAME process_data_dense_wrapper_ap_fixed_16_6_5_3_0_ap_fixed_16_6_5_3_0_config16_s
    SUBMODULES {
      {MODELNAME process_data_mux_128_7_16_1_1 RTLNAME process_data_mux_128_7_16_1_1 BINDTYPE op TYPE mux IMPL auto LATENCY 0 ALLOW_PRAGMA 1}
      {MODELNAME process_data_dense_wrapper_ap_fixed_16_6_5_3_0_ap_fixed_16_6_5_3_0_config16_s_w16_ROM_AUTOjzb RTLNAME process_data_dense_wrapper_ap_fixed_16_6_5_3_0_ap_fixed_16_6_5_3_0_config16_s_w16_ROM_AUTOjzb BINDTYPE storage TYPE rom IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
    }
  }
  {SRCNAME dense<array<ap_fixed,32u>,array<ap_fixed<16,6,5,3,0>,8u>,config16> MODELNAME dense_array_ap_fixed_32u_array_ap_fixed_16_6_5_3_0_8u_config16_s RTLNAME process_data_dense_array_ap_fixed_32u_array_ap_fixed_16_6_5_3_0_8u_config16_s}
  {SRCNAME {dense_wrapper<ap_fixed<16, 6, 5, 3, 0>, ap_fixed<16, 6, 5, 3, 0>, config18>} MODELNAME dense_wrapper_ap_fixed_16_6_5_3_0_ap_fixed_16_6_5_3_0_config18_s RTLNAME process_data_dense_wrapper_ap_fixed_16_6_5_3_0_ap_fixed_16_6_5_3_0_config18_s
    SUBMODULES {
      {MODELNAME process_data_mux_8_3_16_1_1 RTLNAME process_data_mux_8_3_16_1_1 BINDTYPE op TYPE mux IMPL auto LATENCY 0 ALLOW_PRAGMA 1}
      {MODELNAME process_data_mul_16s_11s_26_1_1 RTLNAME process_data_mul_16s_11s_26_1_1 BINDTYPE op TYPE mul IMPL auto LATENCY 0 ALLOW_PRAGMA 1}
      {MODELNAME process_data_dense_wrapper_ap_fixed_16_6_5_3_0_ap_fixed_16_6_5_3_0_config18_s_w18_ROM_AUTOjAb RTLNAME process_data_dense_wrapper_ap_fixed_16_6_5_3_0_ap_fixed_16_6_5_3_0_config18_s_w18_ROM_AUTOjAb BINDTYPE storage TYPE rom IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
    }
  }
  {SRCNAME dense<array<ap_fixed,8u>,array<ap_fixed<16,6,5,3,0>,3u>,config18> MODELNAME dense_array_ap_fixed_8u_array_ap_fixed_16_6_5_3_0_3u_config18_s RTLNAME process_data_dense_array_ap_fixed_8u_array_ap_fixed_16_6_5_3_0_3u_config18_s}
  {SRCNAME softmax_stable<array,array<ap_fixed<16,6,5,3,0>,3u>,softmax_config19> MODELNAME softmax_stable_array_array_ap_fixed_16_6_5_3_0_3u_softmax_config19_s RTLNAME process_data_softmax_stable_array_array_ap_fixed_16_6_5_3_0_3u_softmax_config19_s
    SUBMODULES {
      {MODELNAME process_data_mul_18s_17ns_26_1_1 RTLNAME process_data_mul_18s_17ns_26_1_1 BINDTYPE op TYPE mul IMPL auto LATENCY 0 ALLOW_PRAGMA 1}
      {MODELNAME process_data_softmax_stable_array_array_ap_fixed_16_6_5_3_0_3u_softmax_config19_s_exp_tabljBb RTLNAME process_data_softmax_stable_array_array_ap_fixed_16_6_5_3_0_3u_softmax_config19_s_exp_tabljBb BINDTYPE storage TYPE rom IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME process_data_softmax_stable_array_array_ap_fixed_16_6_5_3_0_3u_softmax_config19_s_invert_tjCb RTLNAME process_data_softmax_stable_array_array_ap_fixed_16_6_5_3_0_3u_softmax_config19_s_invert_tjCb BINDTYPE storage TYPE rom IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
    }
  }
  {SRCNAME softmax<array,array<ap_fixed<16,6,5,3,0>,3u>,softmax_config19> MODELNAME softmax_array_array_ap_fixed_16_6_5_3_0_3u_softmax_config19_s RTLNAME process_data_softmax_array_array_ap_fixed_16_6_5_3_0_3u_softmax_config19_s}
  {SRCNAME myproject MODELNAME myproject RTLNAME process_data_myproject
    SUBMODULES {
      {MODELNAME process_data_fifo_w16_d65536_A RTLNAME process_data_fifo_w16_d65536_A BINDTYPE storage TYPE fifo IMPL memory ALLOW_PRAGMA 1 INSTNAME layer2_out_U}
      {MODELNAME process_data_fifo_w512_d64260_A RTLNAME process_data_fifo_w512_d64260_A BINDTYPE storage TYPE fifo IMPL memory ALLOW_PRAGMA 1 INSTNAME layer3_out_U}
      {MODELNAME process_data_fifo_w512_d3937_A RTLNAME process_data_fifo_w512_d3937_A BINDTYPE storage TYPE fifo IMPL memory ALLOW_PRAGMA 1 INSTNAME layer5_out_U}
      {MODELNAME process_data_fifo_w1024_d3625_A RTLNAME process_data_fifo_w1024_d3625_A BINDTYPE storage TYPE fifo IMPL memory ALLOW_PRAGMA 1 INSTNAME layer6_out_U}
      {MODELNAME process_data_fifo_w1024_d868_A RTLNAME process_data_fifo_w1024_d868_A BINDTYPE storage TYPE fifo IMPL memory ALLOW_PRAGMA 1 INSTNAME layer8_out_U}
      {MODELNAME process_data_fifo_w1024_d720_A RTLNAME process_data_fifo_w1024_d720_A BINDTYPE storage TYPE fifo IMPL memory ALLOW_PRAGMA 1 INSTNAME layer9_out_U}
      {MODELNAME process_data_fifo_w1024_d180_A RTLNAME process_data_fifo_w1024_d180_A BINDTYPE storage TYPE fifo IMPL memory ALLOW_PRAGMA 1 INSTNAME layer11_out_U}
      {MODELNAME process_data_fifo_w512_d112_A RTLNAME process_data_fifo_w512_d112_A BINDTYPE storage TYPE fifo IMPL memory ALLOW_PRAGMA 1 INSTNAME layer12_out_U}
      {MODELNAME process_data_fifo_w512_d28_A RTLNAME process_data_fifo_w512_d28_A BINDTYPE storage TYPE fifo IMPL memory ALLOW_PRAGMA 1 INSTNAME layer14_out_U}
      {MODELNAME process_data_fifo_w128_d1_S RTLNAME process_data_fifo_w128_d1_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME layer16_out_U}
      {MODELNAME process_data_fifo_w48_d1_S RTLNAME process_data_fifo_w48_d1_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME layer18_out_U}
      {MODELNAME process_data_start_for_conv_2d_cl_array_ap_fixed_1u_array_ap_fixed_16_6_5_3_0_32u_config3_U0 RTLNAME process_data_start_for_conv_2d_cl_array_ap_fixed_1u_array_ap_fixed_16_6_5_3_0_32u_config3_U0 BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME start_for_conv_2d_cl_array_ap_fixed_1u_array_ap_fixed_16_6_5_3_0_32u_config3_U0_U}
      {MODELNAME process_data_start_for_pooling2d_cl_array_array_ap_fixed_16_6_5_3_0_32u_config5_U0 RTLNAME process_data_start_for_pooling2d_cl_array_array_ap_fixed_16_6_5_3_0_32u_config5_U0 BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME start_for_pooling2d_cl_array_array_ap_fixed_16_6_5_3_0_32u_config5_U0_U}
      {MODELNAME process_data_start_for_conv_2d_cl_array_ap_fixed_32u_array_ap_fixed_16_6_5_3_0_64u_config6jDb RTLNAME process_data_start_for_conv_2d_cl_array_ap_fixed_32u_array_ap_fixed_16_6_5_3_0_64u_config6jDb BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME start_for_conv_2d_cl_array_ap_fixed_32u_array_ap_fixed_16_6_5_3_0_64u_config6jDb_U}
      {MODELNAME process_data_start_for_pooling2d_cl_array_array_ap_fixed_16_6_5_3_0_64u_config8_U0 RTLNAME process_data_start_for_pooling2d_cl_array_array_ap_fixed_16_6_5_3_0_64u_config8_U0 BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME start_for_pooling2d_cl_array_array_ap_fixed_16_6_5_3_0_64u_config8_U0_U}
      {MODELNAME process_data_start_for_conv_2d_cl_array_ap_fixed_64u_array_ap_fixed_16_6_5_3_0_64u_config9jEb RTLNAME process_data_start_for_conv_2d_cl_array_ap_fixed_64u_array_ap_fixed_16_6_5_3_0_64u_config9jEb BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME start_for_conv_2d_cl_array_ap_fixed_64u_array_ap_fixed_16_6_5_3_0_64u_config9jEb_U}
      {MODELNAME process_data_start_for_pooling2d_cl_array_array_ap_fixed_16_6_5_3_0_64u_config11_U0 RTLNAME process_data_start_for_pooling2d_cl_array_array_ap_fixed_16_6_5_3_0_64u_config11_U0 BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME start_for_pooling2d_cl_array_array_ap_fixed_16_6_5_3_0_64u_config11_U0_U}
      {MODELNAME process_data_start_for_conv_2d_cl_array_ap_fixed_64u_array_ap_fixed_16_6_5_3_0_32u_config1jFb RTLNAME process_data_start_for_conv_2d_cl_array_ap_fixed_64u_array_ap_fixed_16_6_5_3_0_32u_config1jFb BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME start_for_conv_2d_cl_array_ap_fixed_64u_array_ap_fixed_16_6_5_3_0_32u_config1jFb_U}
      {MODELNAME process_data_start_for_pooling2d_cl_array_array_ap_fixed_16_6_5_3_0_32u_config14_U0 RTLNAME process_data_start_for_pooling2d_cl_array_array_ap_fixed_16_6_5_3_0_32u_config14_U0 BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME start_for_pooling2d_cl_array_array_ap_fixed_16_6_5_3_0_32u_config14_U0_U}
      {MODELNAME process_data_start_for_dense_array_ap_fixed_32u_array_ap_fixed_16_6_5_3_0_8u_config16_U0 RTLNAME process_data_start_for_dense_array_ap_fixed_32u_array_ap_fixed_16_6_5_3_0_8u_config16_U0 BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME start_for_dense_array_ap_fixed_32u_array_ap_fixed_16_6_5_3_0_8u_config16_U0_U}
      {MODELNAME process_data_start_for_dense_array_ap_fixed_8u_array_ap_fixed_16_6_5_3_0_3u_config18_U0 RTLNAME process_data_start_for_dense_array_ap_fixed_8u_array_ap_fixed_16_6_5_3_0_3u_config18_U0 BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME start_for_dense_array_ap_fixed_8u_array_ap_fixed_16_6_5_3_0_3u_config18_U0_U}
      {MODELNAME process_data_start_for_softmax_array_array_ap_fixed_16_6_5_3_0_3u_softmax_config19_U0 RTLNAME process_data_start_for_softmax_array_array_ap_fixed_16_6_5_3_0_3u_softmax_config19_U0 BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME start_for_softmax_array_array_ap_fixed_16_6_5_3_0_3u_softmax_config19_U0_U}
    }
  }
  {SRCNAME process_data_Pipeline_VITIS_LOOP_181_6 MODELNAME process_data_Pipeline_VITIS_LOOP_181_6 RTLNAME process_data_process_data_Pipeline_VITIS_LOOP_181_6}
  {SRCNAME process_data MODELNAME process_data RTLNAME process_data IS_TOP 1
    SUBMODULES {
      {MODELNAME process_data_mul_32ns_34ns_65_1_1 RTLNAME process_data_mul_32ns_34ns_65_1_1 BINDTYPE op TYPE mul IMPL auto LATENCY 0 ALLOW_PRAGMA 1}
      {MODELNAME process_data_urem_32ns_5ns_4_36_seq_1 RTLNAME process_data_urem_32ns_5ns_4_36_seq_1 BINDTYPE op TYPE urem IMPL auto_seq LATENCY 35 ALLOW_PRAGMA 1}
      {MODELNAME process_data_mul_29ns_4ns_32_1_1 RTLNAME process_data_mul_29ns_4ns_32_1_1 BINDTYPE op TYPE mul IMPL auto LATENCY 0 ALLOW_PRAGMA 1}
      {MODELNAME process_data_mul_9ns_14ns_22_1_1 RTLNAME process_data_mul_9ns_14ns_22_1_1 BINDTYPE op TYPE mul IMPL auto LATENCY 0 ALLOW_PRAGMA 1}
      {MODELNAME process_data_planes_RAM_AUTO_1R1W RTLNAME process_data_planes_RAM_AUTO_1R1W BINDTYPE storage TYPE ram IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME process_data_adc_vectors_RAM_AUTO_1R1W RTLNAME process_data_adc_vectors_RAM_AUTO_1R1W BINDTYPE storage TYPE ram IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME process_data_ave_RAM_AUTO_1R1W RTLNAME process_data_ave_RAM_AUTO_1R1W BINDTYPE storage TYPE ram IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME process_data_cc_prob_RAM_AUTO_1R1W RTLNAME process_data_cc_prob_RAM_AUTO_1R1W BINDTYPE storage TYPE ram IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME process_data_fifo_w15_d2_S RTLNAME process_data_fifo_w15_d2_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME zero_padding2d_input_U}
      {MODELNAME process_data_fifo_w48_d2_S RTLNAME process_data_fifo_w48_d2_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME layer19_out_U}
      {MODELNAME process_data_gmem_m_axi RTLNAME process_data_gmem_m_axi BINDTYPE interface TYPE adapter IMPL m_axi}
      {MODELNAME process_data_control_s_axi RTLNAME process_data_control_s_axi BINDTYPE interface TYPE interface_s_axilite}
    }
  }
}
