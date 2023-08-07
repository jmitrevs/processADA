# This script segment is generated automatically by AutoPilot

set name process_data_mul_21ns_23ns_43_1_1
if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler $name BINDTYPE {op} TYPE {mul} IMPL {auto} LATENCY 0 ALLOW_PRAGMA 1
}


set id 174
set name process_data_mux_50_6_14_1_1
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
set din8_width 14
set din8_signed 0
set din9_width 14
set din9_signed 0
set din10_width 14
set din10_signed 0
set din11_width 14
set din11_signed 0
set din12_width 14
set din12_signed 0
set din13_width 14
set din13_signed 0
set din14_width 14
set din14_signed 0
set din15_width 14
set din15_signed 0
set din16_width 14
set din16_signed 0
set din17_width 14
set din17_signed 0
set din18_width 14
set din18_signed 0
set din19_width 14
set din19_signed 0
set din20_width 14
set din20_signed 0
set din21_width 14
set din21_signed 0
set din22_width 14
set din22_signed 0
set din23_width 14
set din23_signed 0
set din24_width 14
set din24_signed 0
set din25_width 14
set din25_signed 0
set din26_width 14
set din26_signed 0
set din27_width 14
set din27_signed 0
set din28_width 14
set din28_signed 0
set din29_width 14
set din29_signed 0
set din30_width 14
set din30_signed 0
set din31_width 14
set din31_signed 0
set din32_width 14
set din32_signed 0
set din33_width 14
set din33_signed 0
set din34_width 14
set din34_signed 0
set din35_width 14
set din35_signed 0
set din36_width 14
set din36_signed 0
set din37_width 14
set din37_signed 0
set din38_width 14
set din38_signed 0
set din39_width 14
set din39_signed 0
set din40_width 14
set din40_signed 0
set din41_width 14
set din41_signed 0
set din42_width 14
set din42_signed 0
set din43_width 14
set din43_signed 0
set din44_width 14
set din44_signed 0
set din45_width 14
set din45_signed 0
set din46_width 14
set din46_signed 0
set din47_width 14
set din47_signed 0
set din48_width 14
set din48_signed 0
set din49_width 14
set din49_signed 0
set din50_width 6
set din50_signed 0
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
    din9_width ${din9_width} \
    din9_signed ${din9_signed} \
    din10_width ${din10_width} \
    din10_signed ${din10_signed} \
    din11_width ${din11_width} \
    din11_signed ${din11_signed} \
    din12_width ${din12_width} \
    din12_signed ${din12_signed} \
    din13_width ${din13_width} \
    din13_signed ${din13_signed} \
    din14_width ${din14_width} \
    din14_signed ${din14_signed} \
    din15_width ${din15_width} \
    din15_signed ${din15_signed} \
    din16_width ${din16_width} \
    din16_signed ${din16_signed} \
    din17_width ${din17_width} \
    din17_signed ${din17_signed} \
    din18_width ${din18_width} \
    din18_signed ${din18_signed} \
    din19_width ${din19_width} \
    din19_signed ${din19_signed} \
    din20_width ${din20_width} \
    din20_signed ${din20_signed} \
    din21_width ${din21_width} \
    din21_signed ${din21_signed} \
    din22_width ${din22_width} \
    din22_signed ${din22_signed} \
    din23_width ${din23_width} \
    din23_signed ${din23_signed} \
    din24_width ${din24_width} \
    din24_signed ${din24_signed} \
    din25_width ${din25_width} \
    din25_signed ${din25_signed} \
    din26_width ${din26_width} \
    din26_signed ${din26_signed} \
    din27_width ${din27_width} \
    din27_signed ${din27_signed} \
    din28_width ${din28_width} \
    din28_signed ${din28_signed} \
    din29_width ${din29_width} \
    din29_signed ${din29_signed} \
    din30_width ${din30_width} \
    din30_signed ${din30_signed} \
    din31_width ${din31_width} \
    din31_signed ${din31_signed} \
    din32_width ${din32_width} \
    din32_signed ${din32_signed} \
    din33_width ${din33_width} \
    din33_signed ${din33_signed} \
    din34_width ${din34_width} \
    din34_signed ${din34_signed} \
    din35_width ${din35_width} \
    din35_signed ${din35_signed} \
    din36_width ${din36_width} \
    din36_signed ${din36_signed} \
    din37_width ${din37_width} \
    din37_signed ${din37_signed} \
    din38_width ${din38_width} \
    din38_signed ${din38_signed} \
    din39_width ${din39_width} \
    din39_signed ${din39_signed} \
    din40_width ${din40_width} \
    din40_signed ${din40_signed} \
    din41_width ${din41_width} \
    din41_signed ${din41_signed} \
    din42_width ${din42_width} \
    din42_signed ${din42_signed} \
    din43_width ${din43_width} \
    din43_signed ${din43_signed} \
    din44_width ${din44_width} \
    din44_signed ${din44_signed} \
    din45_width ${din45_width} \
    din45_signed ${din45_signed} \
    din46_width ${din46_width} \
    din46_signed ${din46_signed} \
    din47_width ${din47_width} \
    din47_signed ${din47_signed} \
    din48_width ${din48_width} \
    din48_signed ${din48_signed} \
    din49_width ${din49_width} \
    din49_signed ${din49_signed} \
    din50_width ${din50_width} \
    din50_signed ${din50_signed} \
    dout_width ${dout_width} \
}"
} else {
puts "@W \[IMPL-101\] Cannot find ::AESL_LIB_VIRTEX::xil_gen_pipemux, check your platform lib"
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
    id 177 \
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
    id 178 \
    name process_data_int_char_FDHDChannelMapSP_int_adc_vectors \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename process_data_int_char_FDHDChannelMapSP_int_adc_vectors \
    op interface \
    ports { process_data_int_char_FDHDChannelMapSP_int_adc_vectors_address0 { O 9 vector } process_data_int_char_FDHDChannelMapSP_int_adc_vectors_ce0 { O 1 bit } process_data_int_char_FDHDChannelMapSP_int_adc_vectors_q0 { I 14 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'process_data_int_char_FDHDChannelMapSP_int_adc_vectors'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 179 \
    name process_data_int_char_FDHDChannelMapSP_int_adc_vectors_2 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename process_data_int_char_FDHDChannelMapSP_int_adc_vectors_2 \
    op interface \
    ports { process_data_int_char_FDHDChannelMapSP_int_adc_vectors_2_address0 { O 9 vector } process_data_int_char_FDHDChannelMapSP_int_adc_vectors_2_ce0 { O 1 bit } process_data_int_char_FDHDChannelMapSP_int_adc_vectors_2_q0 { I 14 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'process_data_int_char_FDHDChannelMapSP_int_adc_vectors_2'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 180 \
    name process_data_int_char_FDHDChannelMapSP_int_adc_vectors_3 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename process_data_int_char_FDHDChannelMapSP_int_adc_vectors_3 \
    op interface \
    ports { process_data_int_char_FDHDChannelMapSP_int_adc_vectors_3_address0 { O 9 vector } process_data_int_char_FDHDChannelMapSP_int_adc_vectors_3_ce0 { O 1 bit } process_data_int_char_FDHDChannelMapSP_int_adc_vectors_3_q0 { I 14 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'process_data_int_char_FDHDChannelMapSP_int_adc_vectors_3'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 181 \
    name process_data_int_char_FDHDChannelMapSP_int_adc_vectors_4 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename process_data_int_char_FDHDChannelMapSP_int_adc_vectors_4 \
    op interface \
    ports { process_data_int_char_FDHDChannelMapSP_int_adc_vectors_4_address0 { O 9 vector } process_data_int_char_FDHDChannelMapSP_int_adc_vectors_4_ce0 { O 1 bit } process_data_int_char_FDHDChannelMapSP_int_adc_vectors_4_q0 { I 14 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'process_data_int_char_FDHDChannelMapSP_int_adc_vectors_4'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 182 \
    name process_data_int_char_FDHDChannelMapSP_int_adc_vectors_5 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename process_data_int_char_FDHDChannelMapSP_int_adc_vectors_5 \
    op interface \
    ports { process_data_int_char_FDHDChannelMapSP_int_adc_vectors_5_address0 { O 9 vector } process_data_int_char_FDHDChannelMapSP_int_adc_vectors_5_ce0 { O 1 bit } process_data_int_char_FDHDChannelMapSP_int_adc_vectors_5_q0 { I 14 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'process_data_int_char_FDHDChannelMapSP_int_adc_vectors_5'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 183 \
    name process_data_int_char_FDHDChannelMapSP_int_adc_vectors_6 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename process_data_int_char_FDHDChannelMapSP_int_adc_vectors_6 \
    op interface \
    ports { process_data_int_char_FDHDChannelMapSP_int_adc_vectors_6_address0 { O 9 vector } process_data_int_char_FDHDChannelMapSP_int_adc_vectors_6_ce0 { O 1 bit } process_data_int_char_FDHDChannelMapSP_int_adc_vectors_6_q0 { I 14 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'process_data_int_char_FDHDChannelMapSP_int_adc_vectors_6'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 184 \
    name process_data_int_char_FDHDChannelMapSP_int_adc_vectors_7 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename process_data_int_char_FDHDChannelMapSP_int_adc_vectors_7 \
    op interface \
    ports { process_data_int_char_FDHDChannelMapSP_int_adc_vectors_7_address0 { O 9 vector } process_data_int_char_FDHDChannelMapSP_int_adc_vectors_7_ce0 { O 1 bit } process_data_int_char_FDHDChannelMapSP_int_adc_vectors_7_q0 { I 14 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'process_data_int_char_FDHDChannelMapSP_int_adc_vectors_7'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 185 \
    name process_data_int_char_FDHDChannelMapSP_int_adc_vectors_8 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename process_data_int_char_FDHDChannelMapSP_int_adc_vectors_8 \
    op interface \
    ports { process_data_int_char_FDHDChannelMapSP_int_adc_vectors_8_address0 { O 9 vector } process_data_int_char_FDHDChannelMapSP_int_adc_vectors_8_ce0 { O 1 bit } process_data_int_char_FDHDChannelMapSP_int_adc_vectors_8_q0 { I 14 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'process_data_int_char_FDHDChannelMapSP_int_adc_vectors_8'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 186 \
    name process_data_int_char_FDHDChannelMapSP_int_adc_vectors_9 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename process_data_int_char_FDHDChannelMapSP_int_adc_vectors_9 \
    op interface \
    ports { process_data_int_char_FDHDChannelMapSP_int_adc_vectors_9_address0 { O 9 vector } process_data_int_char_FDHDChannelMapSP_int_adc_vectors_9_ce0 { O 1 bit } process_data_int_char_FDHDChannelMapSP_int_adc_vectors_9_q0 { I 14 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'process_data_int_char_FDHDChannelMapSP_int_adc_vectors_9'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 187 \
    name process_data_int_char_FDHDChannelMapSP_int_adc_vectors_10 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename process_data_int_char_FDHDChannelMapSP_int_adc_vectors_10 \
    op interface \
    ports { process_data_int_char_FDHDChannelMapSP_int_adc_vectors_10_address0 { O 9 vector } process_data_int_char_FDHDChannelMapSP_int_adc_vectors_10_ce0 { O 1 bit } process_data_int_char_FDHDChannelMapSP_int_adc_vectors_10_q0 { I 14 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'process_data_int_char_FDHDChannelMapSP_int_adc_vectors_10'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 188 \
    name p_ZZ12process_dataiPcRN4dune16FDHDChannelMapSPEPiE11adc_vectors_10 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename p_ZZ12process_dataiPcRN4dune16FDHDChannelMapSPEPiE11adc_vectors_10 \
    op interface \
    ports { p_ZZ12process_dataiPcRN4dune16FDHDChannelMapSPEPiE11adc_vectors_10_address0 { O 9 vector } p_ZZ12process_dataiPcRN4dune16FDHDChannelMapSPEPiE11adc_vectors_10_ce0 { O 1 bit } p_ZZ12process_dataiPcRN4dune16FDHDChannelMapSPEPiE11adc_vectors_10_q0 { I 14 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'p_ZZ12process_dataiPcRN4dune16FDHDChannelMapSPEPiE11adc_vectors_10'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 189 \
    name p_ZZ12process_dataiPcRN4dune16FDHDChannelMapSPEPiE11adc_vectors_11 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename p_ZZ12process_dataiPcRN4dune16FDHDChannelMapSPEPiE11adc_vectors_11 \
    op interface \
    ports { p_ZZ12process_dataiPcRN4dune16FDHDChannelMapSPEPiE11adc_vectors_11_address0 { O 9 vector } p_ZZ12process_dataiPcRN4dune16FDHDChannelMapSPEPiE11adc_vectors_11_ce0 { O 1 bit } p_ZZ12process_dataiPcRN4dune16FDHDChannelMapSPEPiE11adc_vectors_11_q0 { I 14 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'p_ZZ12process_dataiPcRN4dune16FDHDChannelMapSPEPiE11adc_vectors_11'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 190 \
    name p_ZZ12process_dataiPcRN4dune16FDHDChannelMapSPEPiE11adc_vectors_12 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename p_ZZ12process_dataiPcRN4dune16FDHDChannelMapSPEPiE11adc_vectors_12 \
    op interface \
    ports { p_ZZ12process_dataiPcRN4dune16FDHDChannelMapSPEPiE11adc_vectors_12_address0 { O 9 vector } p_ZZ12process_dataiPcRN4dune16FDHDChannelMapSPEPiE11adc_vectors_12_ce0 { O 1 bit } p_ZZ12process_dataiPcRN4dune16FDHDChannelMapSPEPiE11adc_vectors_12_q0 { I 14 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'p_ZZ12process_dataiPcRN4dune16FDHDChannelMapSPEPiE11adc_vectors_12'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 191 \
    name p_ZZ12process_dataiPcRN4dune16FDHDChannelMapSPEPiE11adc_vectors_13 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename p_ZZ12process_dataiPcRN4dune16FDHDChannelMapSPEPiE11adc_vectors_13 \
    op interface \
    ports { p_ZZ12process_dataiPcRN4dune16FDHDChannelMapSPEPiE11adc_vectors_13_address0 { O 9 vector } p_ZZ12process_dataiPcRN4dune16FDHDChannelMapSPEPiE11adc_vectors_13_ce0 { O 1 bit } p_ZZ12process_dataiPcRN4dune16FDHDChannelMapSPEPiE11adc_vectors_13_q0 { I 14 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'p_ZZ12process_dataiPcRN4dune16FDHDChannelMapSPEPiE11adc_vectors_13'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 192 \
    name p_ZZ12process_dataiPcRN4dune16FDHDChannelMapSPEPiE11adc_vectors_14 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename p_ZZ12process_dataiPcRN4dune16FDHDChannelMapSPEPiE11adc_vectors_14 \
    op interface \
    ports { p_ZZ12process_dataiPcRN4dune16FDHDChannelMapSPEPiE11adc_vectors_14_address0 { O 9 vector } p_ZZ12process_dataiPcRN4dune16FDHDChannelMapSPEPiE11adc_vectors_14_ce0 { O 1 bit } p_ZZ12process_dataiPcRN4dune16FDHDChannelMapSPEPiE11adc_vectors_14_q0 { I 14 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'p_ZZ12process_dataiPcRN4dune16FDHDChannelMapSPEPiE11adc_vectors_14'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 193 \
    name p_ZZ12process_dataiPcRN4dune16FDHDChannelMapSPEPiE11adc_vectors_15 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename p_ZZ12process_dataiPcRN4dune16FDHDChannelMapSPEPiE11adc_vectors_15 \
    op interface \
    ports { p_ZZ12process_dataiPcRN4dune16FDHDChannelMapSPEPiE11adc_vectors_15_address0 { O 9 vector } p_ZZ12process_dataiPcRN4dune16FDHDChannelMapSPEPiE11adc_vectors_15_ce0 { O 1 bit } p_ZZ12process_dataiPcRN4dune16FDHDChannelMapSPEPiE11adc_vectors_15_q0 { I 14 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'p_ZZ12process_dataiPcRN4dune16FDHDChannelMapSPEPiE11adc_vectors_15'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 194 \
    name p_ZZ12process_dataiPcRN4dune16FDHDChannelMapSPEPiE11adc_vectors_16 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename p_ZZ12process_dataiPcRN4dune16FDHDChannelMapSPEPiE11adc_vectors_16 \
    op interface \
    ports { p_ZZ12process_dataiPcRN4dune16FDHDChannelMapSPEPiE11adc_vectors_16_address0 { O 9 vector } p_ZZ12process_dataiPcRN4dune16FDHDChannelMapSPEPiE11adc_vectors_16_ce0 { O 1 bit } p_ZZ12process_dataiPcRN4dune16FDHDChannelMapSPEPiE11adc_vectors_16_q0 { I 14 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'p_ZZ12process_dataiPcRN4dune16FDHDChannelMapSPEPiE11adc_vectors_16'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 195 \
    name p_ZZ12process_dataiPcRN4dune16FDHDChannelMapSPEPiE11adc_vectors_17 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename p_ZZ12process_dataiPcRN4dune16FDHDChannelMapSPEPiE11adc_vectors_17 \
    op interface \
    ports { p_ZZ12process_dataiPcRN4dune16FDHDChannelMapSPEPiE11adc_vectors_17_address0 { O 9 vector } p_ZZ12process_dataiPcRN4dune16FDHDChannelMapSPEPiE11adc_vectors_17_ce0 { O 1 bit } p_ZZ12process_dataiPcRN4dune16FDHDChannelMapSPEPiE11adc_vectors_17_q0 { I 14 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'p_ZZ12process_dataiPcRN4dune16FDHDChannelMapSPEPiE11adc_vectors_17'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 196 \
    name p_ZZ12process_dataiPcRN4dune16FDHDChannelMapSPEPiE11adc_vectors_18 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename p_ZZ12process_dataiPcRN4dune16FDHDChannelMapSPEPiE11adc_vectors_18 \
    op interface \
    ports { p_ZZ12process_dataiPcRN4dune16FDHDChannelMapSPEPiE11adc_vectors_18_address0 { O 9 vector } p_ZZ12process_dataiPcRN4dune16FDHDChannelMapSPEPiE11adc_vectors_18_ce0 { O 1 bit } p_ZZ12process_dataiPcRN4dune16FDHDChannelMapSPEPiE11adc_vectors_18_q0 { I 14 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'p_ZZ12process_dataiPcRN4dune16FDHDChannelMapSPEPiE11adc_vectors_18'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 197 \
    name p_ZZ12process_dataiPcRN4dune16FDHDChannelMapSPEPiE11adc_vectors_19 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename p_ZZ12process_dataiPcRN4dune16FDHDChannelMapSPEPiE11adc_vectors_19 \
    op interface \
    ports { p_ZZ12process_dataiPcRN4dune16FDHDChannelMapSPEPiE11adc_vectors_19_address0 { O 9 vector } p_ZZ12process_dataiPcRN4dune16FDHDChannelMapSPEPiE11adc_vectors_19_ce0 { O 1 bit } p_ZZ12process_dataiPcRN4dune16FDHDChannelMapSPEPiE11adc_vectors_19_q0 { I 14 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'p_ZZ12process_dataiPcRN4dune16FDHDChannelMapSPEPiE11adc_vectors_19'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 198 \
    name p_ZZ12process_dataiPcRN4dune16FDHDChannelMapSPEPiE11adc_vectors_20 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename p_ZZ12process_dataiPcRN4dune16FDHDChannelMapSPEPiE11adc_vectors_20 \
    op interface \
    ports { p_ZZ12process_dataiPcRN4dune16FDHDChannelMapSPEPiE11adc_vectors_20_address0 { O 9 vector } p_ZZ12process_dataiPcRN4dune16FDHDChannelMapSPEPiE11adc_vectors_20_ce0 { O 1 bit } p_ZZ12process_dataiPcRN4dune16FDHDChannelMapSPEPiE11adc_vectors_20_q0 { I 14 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'p_ZZ12process_dataiPcRN4dune16FDHDChannelMapSPEPiE11adc_vectors_20'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 199 \
    name p_ZZ12process_dataiPcRN4dune16FDHDChannelMapSPEPiE11adc_vectors_21 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename p_ZZ12process_dataiPcRN4dune16FDHDChannelMapSPEPiE11adc_vectors_21 \
    op interface \
    ports { p_ZZ12process_dataiPcRN4dune16FDHDChannelMapSPEPiE11adc_vectors_21_address0 { O 9 vector } p_ZZ12process_dataiPcRN4dune16FDHDChannelMapSPEPiE11adc_vectors_21_ce0 { O 1 bit } p_ZZ12process_dataiPcRN4dune16FDHDChannelMapSPEPiE11adc_vectors_21_q0 { I 14 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'p_ZZ12process_dataiPcRN4dune16FDHDChannelMapSPEPiE11adc_vectors_21'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 200 \
    name p_ZZ12process_dataiPcRN4dune16FDHDChannelMapSPEPiE11adc_vectors_22 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename p_ZZ12process_dataiPcRN4dune16FDHDChannelMapSPEPiE11adc_vectors_22 \
    op interface \
    ports { p_ZZ12process_dataiPcRN4dune16FDHDChannelMapSPEPiE11adc_vectors_22_address0 { O 9 vector } p_ZZ12process_dataiPcRN4dune16FDHDChannelMapSPEPiE11adc_vectors_22_ce0 { O 1 bit } p_ZZ12process_dataiPcRN4dune16FDHDChannelMapSPEPiE11adc_vectors_22_q0 { I 14 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'p_ZZ12process_dataiPcRN4dune16FDHDChannelMapSPEPiE11adc_vectors_22'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 201 \
    name p_ZZ12process_dataiPcRN4dune16FDHDChannelMapSPEPiE11adc_vectors_23 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename p_ZZ12process_dataiPcRN4dune16FDHDChannelMapSPEPiE11adc_vectors_23 \
    op interface \
    ports { p_ZZ12process_dataiPcRN4dune16FDHDChannelMapSPEPiE11adc_vectors_23_address0 { O 9 vector } p_ZZ12process_dataiPcRN4dune16FDHDChannelMapSPEPiE11adc_vectors_23_ce0 { O 1 bit } p_ZZ12process_dataiPcRN4dune16FDHDChannelMapSPEPiE11adc_vectors_23_q0 { I 14 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'p_ZZ12process_dataiPcRN4dune16FDHDChannelMapSPEPiE11adc_vectors_23'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 202 \
    name p_ZZ12process_dataiPcRN4dune16FDHDChannelMapSPEPiE11adc_vectors_24 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename p_ZZ12process_dataiPcRN4dune16FDHDChannelMapSPEPiE11adc_vectors_24 \
    op interface \
    ports { p_ZZ12process_dataiPcRN4dune16FDHDChannelMapSPEPiE11adc_vectors_24_address0 { O 9 vector } p_ZZ12process_dataiPcRN4dune16FDHDChannelMapSPEPiE11adc_vectors_24_ce0 { O 1 bit } p_ZZ12process_dataiPcRN4dune16FDHDChannelMapSPEPiE11adc_vectors_24_q0 { I 14 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'p_ZZ12process_dataiPcRN4dune16FDHDChannelMapSPEPiE11adc_vectors_24'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 203 \
    name p_ZZ12process_dataiPcRN4dune16FDHDChannelMapSPEPiE11adc_vectors_25 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename p_ZZ12process_dataiPcRN4dune16FDHDChannelMapSPEPiE11adc_vectors_25 \
    op interface \
    ports { p_ZZ12process_dataiPcRN4dune16FDHDChannelMapSPEPiE11adc_vectors_25_address0 { O 9 vector } p_ZZ12process_dataiPcRN4dune16FDHDChannelMapSPEPiE11adc_vectors_25_ce0 { O 1 bit } p_ZZ12process_dataiPcRN4dune16FDHDChannelMapSPEPiE11adc_vectors_25_q0 { I 14 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'p_ZZ12process_dataiPcRN4dune16FDHDChannelMapSPEPiE11adc_vectors_25'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 204 \
    name p_ZZ12process_dataiPcRN4dune16FDHDChannelMapSPEPiE11adc_vectors_26 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename p_ZZ12process_dataiPcRN4dune16FDHDChannelMapSPEPiE11adc_vectors_26 \
    op interface \
    ports { p_ZZ12process_dataiPcRN4dune16FDHDChannelMapSPEPiE11adc_vectors_26_address0 { O 9 vector } p_ZZ12process_dataiPcRN4dune16FDHDChannelMapSPEPiE11adc_vectors_26_ce0 { O 1 bit } p_ZZ12process_dataiPcRN4dune16FDHDChannelMapSPEPiE11adc_vectors_26_q0 { I 14 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'p_ZZ12process_dataiPcRN4dune16FDHDChannelMapSPEPiE11adc_vectors_26'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 205 \
    name p_ZZ12process_dataiPcRN4dune16FDHDChannelMapSPEPiE11adc_vectors_27 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename p_ZZ12process_dataiPcRN4dune16FDHDChannelMapSPEPiE11adc_vectors_27 \
    op interface \
    ports { p_ZZ12process_dataiPcRN4dune16FDHDChannelMapSPEPiE11adc_vectors_27_address0 { O 9 vector } p_ZZ12process_dataiPcRN4dune16FDHDChannelMapSPEPiE11adc_vectors_27_ce0 { O 1 bit } p_ZZ12process_dataiPcRN4dune16FDHDChannelMapSPEPiE11adc_vectors_27_q0 { I 14 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'p_ZZ12process_dataiPcRN4dune16FDHDChannelMapSPEPiE11adc_vectors_27'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 206 \
    name p_ZZ12process_dataiPcRN4dune16FDHDChannelMapSPEPiE11adc_vectors_28 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename p_ZZ12process_dataiPcRN4dune16FDHDChannelMapSPEPiE11adc_vectors_28 \
    op interface \
    ports { p_ZZ12process_dataiPcRN4dune16FDHDChannelMapSPEPiE11adc_vectors_28_address0 { O 9 vector } p_ZZ12process_dataiPcRN4dune16FDHDChannelMapSPEPiE11adc_vectors_28_ce0 { O 1 bit } p_ZZ12process_dataiPcRN4dune16FDHDChannelMapSPEPiE11adc_vectors_28_q0 { I 14 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'p_ZZ12process_dataiPcRN4dune16FDHDChannelMapSPEPiE11adc_vectors_28'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 207 \
    name p_ZZ12process_dataiPcRN4dune16FDHDChannelMapSPEPiE11adc_vectors_29 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename p_ZZ12process_dataiPcRN4dune16FDHDChannelMapSPEPiE11adc_vectors_29 \
    op interface \
    ports { p_ZZ12process_dataiPcRN4dune16FDHDChannelMapSPEPiE11adc_vectors_29_address0 { O 9 vector } p_ZZ12process_dataiPcRN4dune16FDHDChannelMapSPEPiE11adc_vectors_29_ce0 { O 1 bit } p_ZZ12process_dataiPcRN4dune16FDHDChannelMapSPEPiE11adc_vectors_29_q0 { I 14 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'p_ZZ12process_dataiPcRN4dune16FDHDChannelMapSPEPiE11adc_vectors_29'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 208 \
    name p_ZZ12process_dataiPcRN4dune16FDHDChannelMapSPEPiE11adc_vectors_30 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename p_ZZ12process_dataiPcRN4dune16FDHDChannelMapSPEPiE11adc_vectors_30 \
    op interface \
    ports { p_ZZ12process_dataiPcRN4dune16FDHDChannelMapSPEPiE11adc_vectors_30_address0 { O 9 vector } p_ZZ12process_dataiPcRN4dune16FDHDChannelMapSPEPiE11adc_vectors_30_ce0 { O 1 bit } p_ZZ12process_dataiPcRN4dune16FDHDChannelMapSPEPiE11adc_vectors_30_q0 { I 14 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'p_ZZ12process_dataiPcRN4dune16FDHDChannelMapSPEPiE11adc_vectors_30'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 209 \
    name p_ZZ12process_dataiPcRN4dune16FDHDChannelMapSPEPiE11adc_vectors_31 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename p_ZZ12process_dataiPcRN4dune16FDHDChannelMapSPEPiE11adc_vectors_31 \
    op interface \
    ports { p_ZZ12process_dataiPcRN4dune16FDHDChannelMapSPEPiE11adc_vectors_31_address0 { O 9 vector } p_ZZ12process_dataiPcRN4dune16FDHDChannelMapSPEPiE11adc_vectors_31_ce0 { O 1 bit } p_ZZ12process_dataiPcRN4dune16FDHDChannelMapSPEPiE11adc_vectors_31_q0 { I 14 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'p_ZZ12process_dataiPcRN4dune16FDHDChannelMapSPEPiE11adc_vectors_31'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 210 \
    name p_ZZ12process_dataiPcRN4dune16FDHDChannelMapSPEPiE11adc_vectors_32 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename p_ZZ12process_dataiPcRN4dune16FDHDChannelMapSPEPiE11adc_vectors_32 \
    op interface \
    ports { p_ZZ12process_dataiPcRN4dune16FDHDChannelMapSPEPiE11adc_vectors_32_address0 { O 9 vector } p_ZZ12process_dataiPcRN4dune16FDHDChannelMapSPEPiE11adc_vectors_32_ce0 { O 1 bit } p_ZZ12process_dataiPcRN4dune16FDHDChannelMapSPEPiE11adc_vectors_32_q0 { I 14 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'p_ZZ12process_dataiPcRN4dune16FDHDChannelMapSPEPiE11adc_vectors_32'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 211 \
    name p_ZZ12process_dataiPcRN4dune16FDHDChannelMapSPEPiE11adc_vectors_33 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename p_ZZ12process_dataiPcRN4dune16FDHDChannelMapSPEPiE11adc_vectors_33 \
    op interface \
    ports { p_ZZ12process_dataiPcRN4dune16FDHDChannelMapSPEPiE11adc_vectors_33_address0 { O 9 vector } p_ZZ12process_dataiPcRN4dune16FDHDChannelMapSPEPiE11adc_vectors_33_ce0 { O 1 bit } p_ZZ12process_dataiPcRN4dune16FDHDChannelMapSPEPiE11adc_vectors_33_q0 { I 14 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'p_ZZ12process_dataiPcRN4dune16FDHDChannelMapSPEPiE11adc_vectors_33'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 212 \
    name p_ZZ12process_dataiPcRN4dune16FDHDChannelMapSPEPiE11adc_vectors_34 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename p_ZZ12process_dataiPcRN4dune16FDHDChannelMapSPEPiE11adc_vectors_34 \
    op interface \
    ports { p_ZZ12process_dataiPcRN4dune16FDHDChannelMapSPEPiE11adc_vectors_34_address0 { O 9 vector } p_ZZ12process_dataiPcRN4dune16FDHDChannelMapSPEPiE11adc_vectors_34_ce0 { O 1 bit } p_ZZ12process_dataiPcRN4dune16FDHDChannelMapSPEPiE11adc_vectors_34_q0 { I 14 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'p_ZZ12process_dataiPcRN4dune16FDHDChannelMapSPEPiE11adc_vectors_34'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 213 \
    name p_ZZ12process_dataiPcRN4dune16FDHDChannelMapSPEPiE11adc_vectors_35 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename p_ZZ12process_dataiPcRN4dune16FDHDChannelMapSPEPiE11adc_vectors_35 \
    op interface \
    ports { p_ZZ12process_dataiPcRN4dune16FDHDChannelMapSPEPiE11adc_vectors_35_address0 { O 9 vector } p_ZZ12process_dataiPcRN4dune16FDHDChannelMapSPEPiE11adc_vectors_35_ce0 { O 1 bit } p_ZZ12process_dataiPcRN4dune16FDHDChannelMapSPEPiE11adc_vectors_35_q0 { I 14 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'p_ZZ12process_dataiPcRN4dune16FDHDChannelMapSPEPiE11adc_vectors_35'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 214 \
    name p_ZZ12process_dataiPcRN4dune16FDHDChannelMapSPEPiE11adc_vectors_36 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename p_ZZ12process_dataiPcRN4dune16FDHDChannelMapSPEPiE11adc_vectors_36 \
    op interface \
    ports { p_ZZ12process_dataiPcRN4dune16FDHDChannelMapSPEPiE11adc_vectors_36_address0 { O 9 vector } p_ZZ12process_dataiPcRN4dune16FDHDChannelMapSPEPiE11adc_vectors_36_ce0 { O 1 bit } p_ZZ12process_dataiPcRN4dune16FDHDChannelMapSPEPiE11adc_vectors_36_q0 { I 14 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'p_ZZ12process_dataiPcRN4dune16FDHDChannelMapSPEPiE11adc_vectors_36'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 215 \
    name p_ZZ12process_dataiPcRN4dune16FDHDChannelMapSPEPiE11adc_vectors_37 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename p_ZZ12process_dataiPcRN4dune16FDHDChannelMapSPEPiE11adc_vectors_37 \
    op interface \
    ports { p_ZZ12process_dataiPcRN4dune16FDHDChannelMapSPEPiE11adc_vectors_37_address0 { O 9 vector } p_ZZ12process_dataiPcRN4dune16FDHDChannelMapSPEPiE11adc_vectors_37_ce0 { O 1 bit } p_ZZ12process_dataiPcRN4dune16FDHDChannelMapSPEPiE11adc_vectors_37_q0 { I 14 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'p_ZZ12process_dataiPcRN4dune16FDHDChannelMapSPEPiE11adc_vectors_37'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 216 \
    name p_ZZ12process_dataiPcRN4dune16FDHDChannelMapSPEPiE11adc_vectors_38 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename p_ZZ12process_dataiPcRN4dune16FDHDChannelMapSPEPiE11adc_vectors_38 \
    op interface \
    ports { p_ZZ12process_dataiPcRN4dune16FDHDChannelMapSPEPiE11adc_vectors_38_address0 { O 9 vector } p_ZZ12process_dataiPcRN4dune16FDHDChannelMapSPEPiE11adc_vectors_38_ce0 { O 1 bit } p_ZZ12process_dataiPcRN4dune16FDHDChannelMapSPEPiE11adc_vectors_38_q0 { I 14 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'p_ZZ12process_dataiPcRN4dune16FDHDChannelMapSPEPiE11adc_vectors_38'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 217 \
    name p_ZZ12process_dataiPcRN4dune16FDHDChannelMapSPEPiE11adc_vectors_39 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename p_ZZ12process_dataiPcRN4dune16FDHDChannelMapSPEPiE11adc_vectors_39 \
    op interface \
    ports { p_ZZ12process_dataiPcRN4dune16FDHDChannelMapSPEPiE11adc_vectors_39_address0 { O 9 vector } p_ZZ12process_dataiPcRN4dune16FDHDChannelMapSPEPiE11adc_vectors_39_ce0 { O 1 bit } p_ZZ12process_dataiPcRN4dune16FDHDChannelMapSPEPiE11adc_vectors_39_q0 { I 14 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'p_ZZ12process_dataiPcRN4dune16FDHDChannelMapSPEPiE11adc_vectors_39'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 218 \
    name p_ZZ12process_dataiPcRN4dune16FDHDChannelMapSPEPiE11adc_vectors_40 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename p_ZZ12process_dataiPcRN4dune16FDHDChannelMapSPEPiE11adc_vectors_40 \
    op interface \
    ports { p_ZZ12process_dataiPcRN4dune16FDHDChannelMapSPEPiE11adc_vectors_40_address0 { O 9 vector } p_ZZ12process_dataiPcRN4dune16FDHDChannelMapSPEPiE11adc_vectors_40_ce0 { O 1 bit } p_ZZ12process_dataiPcRN4dune16FDHDChannelMapSPEPiE11adc_vectors_40_q0 { I 14 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'p_ZZ12process_dataiPcRN4dune16FDHDChannelMapSPEPiE11adc_vectors_40'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 219 \
    name p_ZZ12process_dataiPcRN4dune16FDHDChannelMapSPEPiE11adc_vectors_41 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename p_ZZ12process_dataiPcRN4dune16FDHDChannelMapSPEPiE11adc_vectors_41 \
    op interface \
    ports { p_ZZ12process_dataiPcRN4dune16FDHDChannelMapSPEPiE11adc_vectors_41_address0 { O 9 vector } p_ZZ12process_dataiPcRN4dune16FDHDChannelMapSPEPiE11adc_vectors_41_ce0 { O 1 bit } p_ZZ12process_dataiPcRN4dune16FDHDChannelMapSPEPiE11adc_vectors_41_q0 { I 14 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'p_ZZ12process_dataiPcRN4dune16FDHDChannelMapSPEPiE11adc_vectors_41'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 220 \
    name p_ZZ12process_dataiPcRN4dune16FDHDChannelMapSPEPiE11adc_vectors_42 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename p_ZZ12process_dataiPcRN4dune16FDHDChannelMapSPEPiE11adc_vectors_42 \
    op interface \
    ports { p_ZZ12process_dataiPcRN4dune16FDHDChannelMapSPEPiE11adc_vectors_42_address0 { O 9 vector } p_ZZ12process_dataiPcRN4dune16FDHDChannelMapSPEPiE11adc_vectors_42_ce0 { O 1 bit } p_ZZ12process_dataiPcRN4dune16FDHDChannelMapSPEPiE11adc_vectors_42_q0 { I 14 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'p_ZZ12process_dataiPcRN4dune16FDHDChannelMapSPEPiE11adc_vectors_42'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 221 \
    name p_ZZ12process_dataiPcRN4dune16FDHDChannelMapSPEPiE11adc_vectors_43 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename p_ZZ12process_dataiPcRN4dune16FDHDChannelMapSPEPiE11adc_vectors_43 \
    op interface \
    ports { p_ZZ12process_dataiPcRN4dune16FDHDChannelMapSPEPiE11adc_vectors_43_address0 { O 9 vector } p_ZZ12process_dataiPcRN4dune16FDHDChannelMapSPEPiE11adc_vectors_43_ce0 { O 1 bit } p_ZZ12process_dataiPcRN4dune16FDHDChannelMapSPEPiE11adc_vectors_43_q0 { I 14 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'p_ZZ12process_dataiPcRN4dune16FDHDChannelMapSPEPiE11adc_vectors_43'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 222 \
    name p_ZZ12process_dataiPcRN4dune16FDHDChannelMapSPEPiE11adc_vectors_44 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename p_ZZ12process_dataiPcRN4dune16FDHDChannelMapSPEPiE11adc_vectors_44 \
    op interface \
    ports { p_ZZ12process_dataiPcRN4dune16FDHDChannelMapSPEPiE11adc_vectors_44_address0 { O 9 vector } p_ZZ12process_dataiPcRN4dune16FDHDChannelMapSPEPiE11adc_vectors_44_ce0 { O 1 bit } p_ZZ12process_dataiPcRN4dune16FDHDChannelMapSPEPiE11adc_vectors_44_q0 { I 14 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'p_ZZ12process_dataiPcRN4dune16FDHDChannelMapSPEPiE11adc_vectors_44'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 223 \
    name p_ZZ12process_dataiPcRN4dune16FDHDChannelMapSPEPiE11adc_vectors_45 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename p_ZZ12process_dataiPcRN4dune16FDHDChannelMapSPEPiE11adc_vectors_45 \
    op interface \
    ports { p_ZZ12process_dataiPcRN4dune16FDHDChannelMapSPEPiE11adc_vectors_45_address0 { O 9 vector } p_ZZ12process_dataiPcRN4dune16FDHDChannelMapSPEPiE11adc_vectors_45_ce0 { O 1 bit } p_ZZ12process_dataiPcRN4dune16FDHDChannelMapSPEPiE11adc_vectors_45_q0 { I 14 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'p_ZZ12process_dataiPcRN4dune16FDHDChannelMapSPEPiE11adc_vectors_45'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 224 \
    name p_ZZ12process_dataiPcRN4dune16FDHDChannelMapSPEPiE11adc_vectors_46 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename p_ZZ12process_dataiPcRN4dune16FDHDChannelMapSPEPiE11adc_vectors_46 \
    op interface \
    ports { p_ZZ12process_dataiPcRN4dune16FDHDChannelMapSPEPiE11adc_vectors_46_address0 { O 9 vector } p_ZZ12process_dataiPcRN4dune16FDHDChannelMapSPEPiE11adc_vectors_46_ce0 { O 1 bit } p_ZZ12process_dataiPcRN4dune16FDHDChannelMapSPEPiE11adc_vectors_46_q0 { I 14 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'p_ZZ12process_dataiPcRN4dune16FDHDChannelMapSPEPiE11adc_vectors_46'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 225 \
    name p_ZZ12process_dataiPcRN4dune16FDHDChannelMapSPEPiE11adc_vectors_47 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename p_ZZ12process_dataiPcRN4dune16FDHDChannelMapSPEPiE11adc_vectors_47 \
    op interface \
    ports { p_ZZ12process_dataiPcRN4dune16FDHDChannelMapSPEPiE11adc_vectors_47_address0 { O 9 vector } p_ZZ12process_dataiPcRN4dune16FDHDChannelMapSPEPiE11adc_vectors_47_ce0 { O 1 bit } p_ZZ12process_dataiPcRN4dune16FDHDChannelMapSPEPiE11adc_vectors_47_q0 { I 14 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'p_ZZ12process_dataiPcRN4dune16FDHDChannelMapSPEPiE11adc_vectors_47'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 226 \
    name p_ZZ12process_dataiPcRN4dune16FDHDChannelMapSPEPiE11adc_vectors_48 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename p_ZZ12process_dataiPcRN4dune16FDHDChannelMapSPEPiE11adc_vectors_48 \
    op interface \
    ports { p_ZZ12process_dataiPcRN4dune16FDHDChannelMapSPEPiE11adc_vectors_48_address0 { O 9 vector } p_ZZ12process_dataiPcRN4dune16FDHDChannelMapSPEPiE11adc_vectors_48_ce0 { O 1 bit } p_ZZ12process_dataiPcRN4dune16FDHDChannelMapSPEPiE11adc_vectors_48_q0 { I 14 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'p_ZZ12process_dataiPcRN4dune16FDHDChannelMapSPEPiE11adc_vectors_48'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 227 \
    name p_ZZ12process_dataiPcRN4dune16FDHDChannelMapSPEPiE11adc_vectors_49 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename p_ZZ12process_dataiPcRN4dune16FDHDChannelMapSPEPiE11adc_vectors_49 \
    op interface \
    ports { p_ZZ12process_dataiPcRN4dune16FDHDChannelMapSPEPiE11adc_vectors_49_address0 { O 9 vector } p_ZZ12process_dataiPcRN4dune16FDHDChannelMapSPEPiE11adc_vectors_49_ce0 { O 1 bit } p_ZZ12process_dataiPcRN4dune16FDHDChannelMapSPEPiE11adc_vectors_49_q0 { I 14 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'p_ZZ12process_dataiPcRN4dune16FDHDChannelMapSPEPiE11adc_vectors_49'"
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


