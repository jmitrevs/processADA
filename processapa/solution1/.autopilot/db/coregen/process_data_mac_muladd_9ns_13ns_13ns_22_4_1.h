// ==============================================================
// Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2023.1 (64-bit)
// Tool Version Limit: 2023.05
// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
// 
// ==============================================================
#ifndef __process_data_mac_muladd_9ns_13ns_13ns_22_4_1__HH__
#define __process_data_mac_muladd_9ns_13ns_13ns_22_4_1__HH__
#include "process_data_mac_muladd_9ns_13ns_13ns_22_4_1_DSP48_1.h"

template<
    int ID,
    int NUM_STAGE,
    int din0_WIDTH,
    int din1_WIDTH,
    int din2_WIDTH,
    int dout_WIDTH>
SC_MODULE(process_data_mac_muladd_9ns_13ns_13ns_22_4_1) {
    sc_core::sc_in_clk clk;
    sc_core::sc_in<sc_dt::sc_logic> reset;
    sc_core::sc_in<sc_dt::sc_logic> ce;
    sc_core::sc_in< sc_dt::sc_lv<din0_WIDTH> >   din0;
    sc_core::sc_in< sc_dt::sc_lv<din1_WIDTH> >   din1;
    sc_core::sc_in< sc_dt::sc_lv<din2_WIDTH> >   din2;
    sc_core::sc_out< sc_dt::sc_lv<dout_WIDTH> >   dout;



    process_data_mac_muladd_9ns_13ns_13ns_22_4_1_DSP48_1 process_data_mac_muladd_9ns_13ns_13ns_22_4_1_DSP48_1_U;

    SC_CTOR(process_data_mac_muladd_9ns_13ns_13ns_22_4_1):  process_data_mac_muladd_9ns_13ns_13ns_22_4_1_DSP48_1_U ("process_data_mac_muladd_9ns_13ns_13ns_22_4_1_DSP48_1_U") {
        process_data_mac_muladd_9ns_13ns_13ns_22_4_1_DSP48_1_U.clk(clk);
        process_data_mac_muladd_9ns_13ns_13ns_22_4_1_DSP48_1_U.rst(reset);
        process_data_mac_muladd_9ns_13ns_13ns_22_4_1_DSP48_1_U.ce(ce);
        process_data_mac_muladd_9ns_13ns_13ns_22_4_1_DSP48_1_U.in0(din0);
        process_data_mac_muladd_9ns_13ns_13ns_22_4_1_DSP48_1_U.in1(din1);
        process_data_mac_muladd_9ns_13ns_13ns_22_4_1_DSP48_1_U.in2(din2);
        process_data_mac_muladd_9ns_13ns_13ns_22_4_1_DSP48_1_U.dout(dout);

    }

};

#endif //
