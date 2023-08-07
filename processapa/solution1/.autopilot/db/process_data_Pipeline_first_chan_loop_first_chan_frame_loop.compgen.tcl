# This script segment is generated automatically by AutoPilot

set name process_data_mul_21ns_23ns_43_1_1
if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler $name BINDTYPE {op} TYPE {mul} IMPL {auto} LATENCY 0 ALLOW_PRAGMA 1
}


set id 12
set name process_data_mux_8_3_14_1_1
set corename simcore_mux
set op mux
set stage_num 1
set din0_width 14
set din0_signed 0
set din1_width 14
set din1_signed 0
set din2_width 14
set din2_signed 0
set din3_width 14
set din3_signed 0
set din4_width 14
set din4_signed 0
set din5_width 14
set din5_signed 0
set din6_width 14
set din6_signed 0
set din7_width 14
set din7_signed 0
set din8_width 3
set din8_signed 0
set dout_width 14
if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler $name BINDTYPE {op} TYPE {mux} IMPL {auto} LATENCY 0 ALLOW_PRAGMA 1
}


set op mux
set corename Multiplexer
if {${::AESL::PGuard_autocg_gen} && ${::AESL::PGuard_autocg_ipmgen}} {
if {[info proc ::AESL_LIB_VIRTEX::xil_gen_pipemux] == "::AESL_LIB_VIRTEX::xil_gen_pipemux"} {
eval "::AESL_LIB_VIRTEX::xil_gen_pipemux { \
    id ${id} \
    name ${name} \
    corename ${corename} \
    op ${op} \
    reset_level 1 \
    sync_rst true \
    stage_num ${stage_num} \
    din0_width ${din0_width} \
    din0_signed ${din0_signed} \
    din1_width ${din1_width} \
    din1_signed ${din1_signed} \
    din2_width ${din2_width} \
    din2_signed ${din2_signed} \
    din3_width ${din3_width} \
    din3_signed ${din3_signed} \
    din4_width ${din4_width} \
    din4_signed ${din4_signed} \
    din5_width ${din5_width} \
    din5_signed ${din5_signed} \
    din6_width ${din6_width} \
    din6_signed ${din6_signed} \
    din7_width ${din7_width} \
    din7_signed ${din7_signed} \
    din8_width ${din8_width} \
    din8_signed ${din8_signed} \
    dout_width ${dout_width} \
}"
} else {
puts "@W \[IMPL-101\] Cannot find ::AESL_LIB_VIRTEX::xil_gen_pipemux, check your platform lib"
}
}


set id 13
set name process_data_mac_muladd_9ns_10ns_4ns_18_4_1
set corename simcore_mac
set op mac
set stage_num 4
set clk_width 1
set clk_signed 0
set reset_width 1
set reset_signed 0
set in0_width 9
set in0_signed 0
set in1_width 10
set in1_signed 0
set in2_width 4
set in2_signed 0
set ce_width 1
set ce_signed 0
set out_width 18
set arg_lists {i0 {9 0 +} i1 {10 0 +} m {18 1 +} i2 {4 0 +} p {18 0 +} c_reg {1} rnd {0} acc {0} }
set TrueReset 0
if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler $name BINDTYPE {op} TYPE {all} IMPL {dsp48} LATENCY 3 ALLOW_PRAGMA 1
}


set op mac
set corename DSP48
if {${::AESL::PGuard_autocg_gen} && ${::AESL::PGuard_autocg_ipmgen}} {
if {[info proc ::AESL_LIB_VIRTEX::xil_gen_dsp48] == "::AESL_LIB_VIRTEX::xil_gen_dsp48"} {
eval "::AESL_LIB_VIRTEX::xil_gen_dsp48 { \
    id ${id} \
    name ${name} \
    corename ${corename} \
    op ${op} \
    reset_level 1 \
    sync_rst true \
    true_reset ${TrueReset} \
    stage_num ${stage_num} \
    clk_width ${clk_width} \
    clk_signed ${clk_signed} \
    reset_width ${reset_width} \
    reset_signed ${reset_signed} \
    in0_width ${in0_width} \
    in0_signed ${in0_signed} \
    in1_width ${in1_width} \
    in1_signed ${in1_signed} \
    in2_width ${in2_width} \
    in2_signed ${in2_signed} \
    ce_width ${ce_width} \
    ce_signed ${ce_signed} \
    out_width ${out_width} \
    arg_lists {${arg_lists}} \
}"
} else {
puts "@W \[IMPL-101\] Cannot find ::AESL_LIB_VIRTEX::xil_gen_dsp48, check your platform lib"
}
}


# clear list
if {${::AESL::PGuard_autoexp_gen}} {
    cg_default_interface_gen_dc_begin
    cg_default_interface_gen_bundle_begin
    AESL_LIB_XILADAPTER::native_axis_begin
}

# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 17 \
    name ave \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename ave \
    op interface \
    ports { ave_address0 { O 8 vector } ave_ce0 { O 1 bit } ave_we0 { O 1 bit } ave_d0 { O 14 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'ave'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 18 \
    name process_data_int_char_FDHDChannelMapSP_int_adc_vectors \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename process_data_int_char_FDHDChannelMapSP_int_adc_vectors \
    op interface \
    ports { process_data_int_char_FDHDChannelMapSP_int_adc_vectors_address0 { O 18 vector } process_data_int_char_FDHDChannelMapSP_int_adc_vectors_ce0 { O 1 bit } process_data_int_char_FDHDChannelMapSP_int_adc_vectors_q0 { I 14 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'process_data_int_char_FDHDChannelMapSP_int_adc_vectors'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 19 \
    name process_data_int_char_FDHDChannelMapSP_int_adc_vectors_2 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename process_data_int_char_FDHDChannelMapSP_int_adc_vectors_2 \
    op interface \
    ports { process_data_int_char_FDHDChannelMapSP_int_adc_vectors_2_address0 { O 18 vector } process_data_int_char_FDHDChannelMapSP_int_adc_vectors_2_ce0 { O 1 bit } process_data_int_char_FDHDChannelMapSP_int_adc_vectors_2_q0 { I 14 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'process_data_int_char_FDHDChannelMapSP_int_adc_vectors_2'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 20 \
    name process_data_int_char_FDHDChannelMapSP_int_adc_vectors_3 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename process_data_int_char_FDHDChannelMapSP_int_adc_vectors_3 \
    op interface \
    ports { process_data_int_char_FDHDChannelMapSP_int_adc_vectors_3_address0 { O 18 vector } process_data_int_char_FDHDChannelMapSP_int_adc_vectors_3_ce0 { O 1 bit } process_data_int_char_FDHDChannelMapSP_int_adc_vectors_3_q0 { I 14 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'process_data_int_char_FDHDChannelMapSP_int_adc_vectors_3'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 21 \
    name process_data_int_char_FDHDChannelMapSP_int_adc_vectors_4 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename process_data_int_char_FDHDChannelMapSP_int_adc_vectors_4 \
    op interface \
    ports { process_data_int_char_FDHDChannelMapSP_int_adc_vectors_4_address0 { O 18 vector } process_data_int_char_FDHDChannelMapSP_int_adc_vectors_4_ce0 { O 1 bit } process_data_int_char_FDHDChannelMapSP_int_adc_vectors_4_q0 { I 14 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'process_data_int_char_FDHDChannelMapSP_int_adc_vectors_4'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 22 \
    name process_data_int_char_FDHDChannelMapSP_int_adc_vectors_5 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename process_data_int_char_FDHDChannelMapSP_int_adc_vectors_5 \
    op interface \
    ports { process_data_int_char_FDHDChannelMapSP_int_adc_vectors_5_address0 { O 18 vector } process_data_int_char_FDHDChannelMapSP_int_adc_vectors_5_ce0 { O 1 bit } process_data_int_char_FDHDChannelMapSP_int_adc_vectors_5_q0 { I 14 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'process_data_int_char_FDHDChannelMapSP_int_adc_vectors_5'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 23 \
    name process_data_int_char_FDHDChannelMapSP_int_adc_vectors_6 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename process_data_int_char_FDHDChannelMapSP_int_adc_vectors_6 \
    op interface \
    ports { process_data_int_char_FDHDChannelMapSP_int_adc_vectors_6_address0 { O 18 vector } process_data_int_char_FDHDChannelMapSP_int_adc_vectors_6_ce0 { O 1 bit } process_data_int_char_FDHDChannelMapSP_int_adc_vectors_6_q0 { I 14 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'process_data_int_char_FDHDChannelMapSP_int_adc_vectors_6'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 24 \
    name process_data_int_char_FDHDChannelMapSP_int_adc_vectors_7 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename process_data_int_char_FDHDChannelMapSP_int_adc_vectors_7 \
    op interface \
    ports { process_data_int_char_FDHDChannelMapSP_int_adc_vectors_7_address0 { O 18 vector } process_data_int_char_FDHDChannelMapSP_int_adc_vectors_7_ce0 { O 1 bit } process_data_int_char_FDHDChannelMapSP_int_adc_vectors_7_q0 { I 14 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'process_data_int_char_FDHDChannelMapSP_int_adc_vectors_7'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 25 \
    name process_data_int_char_FDHDChannelMapSP_int_adc_vectors_8 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename process_data_int_char_FDHDChannelMapSP_int_adc_vectors_8 \
    op interface \
    ports { process_data_int_char_FDHDChannelMapSP_int_adc_vectors_8_address0 { O 18 vector } process_data_int_char_FDHDChannelMapSP_int_adc_vectors_8_ce0 { O 1 bit } process_data_int_char_FDHDChannelMapSP_int_adc_vectors_8_q0 { I 14 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'process_data_int_char_FDHDChannelMapSP_int_adc_vectors_8'"
}
}


# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id -1 \
    name ap_ctrl \
    type ap_ctrl \
    reset_level 1 \
    sync_rst true \
    corename ap_ctrl \
    op interface \
    ports { ap_start { I 1 bit } ap_ready { O 1 bit } ap_done { O 1 bit } ap_idle { O 1 bit } } \
} "
}


# Adapter definition:
set PortName ap_clk
set DataWd 1 
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc cg_default_interface_gen_clock] == "cg_default_interface_gen_clock"} {
eval "cg_default_interface_gen_clock { \
    id -2 \
    name ${PortName} \
    reset_level 1 \
    sync_rst true \
    corename apif_ap_clk \
    data_wd ${DataWd} \
    op interface \
}"
} else {
puts "@W \[IMPL-113\] Cannot find bus interface model in the library. Ignored generation of bus interface for '${PortName}'"
}
}


# Adapter definition:
set PortName ap_rst
set DataWd 1 
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc cg_default_interface_gen_reset] == "cg_default_interface_gen_reset"} {
eval "cg_default_interface_gen_reset { \
    id -3 \
    name ${PortName} \
    reset_level 1 \
    sync_rst true \
    corename apif_ap_rst \
    data_wd ${DataWd} \
    op interface \
}"
} else {
puts "@W \[IMPL-114\] Cannot find bus interface model in the library. Ignored generation of bus interface for '${PortName}'"
}
}



# merge
if {${::AESL::PGuard_autoexp_gen}} {
    cg_default_interface_gen_dc_end
    cg_default_interface_gen_bundle_end
    AESL_LIB_XILADAPTER::native_axis_end
}


# flow_control definition:
set InstName process_data_flow_control_loop_pipe_sequential_init_U
set CompName process_data_flow_control_loop_pipe_sequential_init
set name flow_control_loop_pipe_sequential_init
if {${::AESL::PGuard_autocg_gen} && ${::AESL::PGuard_autocg_ipmgen}} {
if {[info proc ::AESL_LIB_VIRTEX::xil_gen_UPC_flow_control] == "::AESL_LIB_VIRTEX::xil_gen_UPC_flow_control"} {
eval "::AESL_LIB_VIRTEX::xil_gen_UPC_flow_control { \
    name ${name} \
    prefix process_data_ \
}"
} else {
puts "@W \[IMPL-107\] Cannot find ::AESL_LIB_VIRTEX::xil_gen_UPC_flow_control, check your platform lib"
}
}


if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler $CompName BINDTYPE interface TYPE internal_upc_flow_control INSTNAME $InstName
}


