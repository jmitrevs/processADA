# This script segment is generated automatically by AutoPilot

set id 241
set name process_data_mux_60_6_14_1_1
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
set din50_width 14
set din50_signed 0
set din51_width 14
set din51_signed 0
set din52_width 14
set din52_signed 0
set din53_width 14
set din53_signed 0
set din54_width 14
set din54_signed 0
set din55_width 14
set din55_signed 0
set din56_width 14
set din56_signed 0
set din57_width 14
set din57_signed 0
set din58_width 14
set din58_signed 0
set din59_width 14
set din59_signed 0
set din60_width 6
set din60_signed 0
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
    din51_width ${din51_width} \
    din51_signed ${din51_signed} \
    din52_width ${din52_width} \
    din52_signed ${din52_signed} \
    din53_width ${din53_width} \
    din53_signed ${din53_signed} \
    din54_width ${din54_width} \
    din54_signed ${din54_signed} \
    din55_width ${din55_width} \
    din55_signed ${din55_signed} \
    din56_width ${din56_width} \
    din56_signed ${din56_signed} \
    din57_width ${din57_width} \
    din57_signed ${din57_signed} \
    din58_width ${din58_width} \
    din58_signed ${din58_signed} \
    din59_width ${din59_width} \
    din59_signed ${din59_signed} \
    din60_width ${din60_width} \
    din60_signed ${din60_signed} \
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
    id 247 \
    name planes \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename planes \
    op interface \
    ports { planes_address0 { O 22 vector } planes_ce0 { O 1 bit } planes_we0 { O 1 bit } planes_d0 { O 15 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'planes'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 248 \
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
    id 249 \
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
    id 250 \
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
    id 251 \
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
    id 252 \
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
    id 253 \
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
    id 254 \
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
    id 255 \
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
    id 256 \
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
    id 257 \
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
    id 258 \
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
    id 259 \
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
    id 260 \
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
    id 261 \
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
    id 262 \
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
    id 263 \
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
    id 264 \
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
    id 265 \
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
    id 266 \
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
    id 267 \
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
    id 268 \
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
    id 269 \
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
    id 270 \
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
    id 271 \
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
    id 272 \
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
    id 273 \
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
    id 274 \
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
    id 275 \
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
    id 276 \
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
    id 277 \
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
    id 278 \
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
    id 279 \
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
    id 280 \
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
    id 281 \
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
    id 282 \
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
    id 283 \
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
    id 284 \
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
    id 285 \
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
    id 286 \
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
    id 287 \
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
    id 288 \
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
    id 289 \
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
    id 290 \
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
    id 291 \
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
    id 292 \
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
    id 293 \
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
    id 294 \
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
    id 295 \
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
    id 296 \
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
    id 297 \
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


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 298 \
    name adc_vectors2 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename adc_vectors2 \
    op interface \
    ports { adc_vectors2_address0 { O 15 vector } adc_vectors2_ce0 { O 1 bit } adc_vectors2_q0 { I 14 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'adc_vectors2'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 299 \
    name adc_vectors3 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename adc_vectors3 \
    op interface \
    ports { adc_vectors3_address0 { O 15 vector } adc_vectors3_ce0 { O 1 bit } adc_vectors3_q0 { I 14 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'adc_vectors3'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 300 \
    name adc_vectors4 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename adc_vectors4 \
    op interface \
    ports { adc_vectors4_address0 { O 15 vector } adc_vectors4_ce0 { O 1 bit } adc_vectors4_q0 { I 14 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'adc_vectors4'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 301 \
    name adc_vectors5 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename adc_vectors5 \
    op interface \
    ports { adc_vectors5_address0 { O 15 vector } adc_vectors5_ce0 { O 1 bit } adc_vectors5_q0 { I 14 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'adc_vectors5'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 302 \
    name adc_vectors6 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename adc_vectors6 \
    op interface \
    ports { adc_vectors6_address0 { O 15 vector } adc_vectors6_ce0 { O 1 bit } adc_vectors6_q0 { I 14 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'adc_vectors6'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 303 \
    name adc_vectors7 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename adc_vectors7 \
    op interface \
    ports { adc_vectors7_address0 { O 15 vector } adc_vectors7_ce0 { O 1 bit } adc_vectors7_q0 { I 14 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'adc_vectors7'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 304 \
    name adc_vectors8 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename adc_vectors8 \
    op interface \
    ports { adc_vectors8_address0 { O 15 vector } adc_vectors8_ce0 { O 1 bit } adc_vectors8_q0 { I 14 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'adc_vectors8'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 305 \
    name adc_vectors9 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename adc_vectors9 \
    op interface \
    ports { adc_vectors9_address0 { O 15 vector } adc_vectors9_ce0 { O 1 bit } adc_vectors9_q0 { I 14 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'adc_vectors9'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 306 \
    name adc_vectors10 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename adc_vectors10 \
    op interface \
    ports { adc_vectors10_address0 { O 15 vector } adc_vectors10_ce0 { O 1 bit } adc_vectors10_q0 { I 14 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'adc_vectors10'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 307 \
    name adc_vectors11 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename adc_vectors11 \
    op interface \
    ports { adc_vectors11_address0 { O 15 vector } adc_vectors11_ce0 { O 1 bit } adc_vectors11_q0 { I 14 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'adc_vectors11'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 308 \
    name adc_vectors12 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename adc_vectors12 \
    op interface \
    ports { adc_vectors12_address0 { O 15 vector } adc_vectors12_ce0 { O 1 bit } adc_vectors12_q0 { I 14 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'adc_vectors12'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 309 \
    name adc_vectors13 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename adc_vectors13 \
    op interface \
    ports { adc_vectors13_address0 { O 15 vector } adc_vectors13_ce0 { O 1 bit } adc_vectors13_q0 { I 14 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'adc_vectors13'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 310 \
    name adc_vectors14 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename adc_vectors14 \
    op interface \
    ports { adc_vectors14_address0 { O 15 vector } adc_vectors14_ce0 { O 1 bit } adc_vectors14_q0 { I 14 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'adc_vectors14'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 311 \
    name adc_vectors15 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename adc_vectors15 \
    op interface \
    ports { adc_vectors15_address0 { O 15 vector } adc_vectors15_ce0 { O 1 bit } adc_vectors15_q0 { I 14 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'adc_vectors15'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 312 \
    name adc_vectors16 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename adc_vectors16 \
    op interface \
    ports { adc_vectors16_address0 { O 15 vector } adc_vectors16_ce0 { O 1 bit } adc_vectors16_q0 { I 14 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'adc_vectors16'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 313 \
    name adc_vectors17 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename adc_vectors17 \
    op interface \
    ports { adc_vectors17_address0 { O 15 vector } adc_vectors17_ce0 { O 1 bit } adc_vectors17_q0 { I 14 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'adc_vectors17'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 314 \
    name adc_vectors18 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename adc_vectors18 \
    op interface \
    ports { adc_vectors18_address0 { O 15 vector } adc_vectors18_ce0 { O 1 bit } adc_vectors18_q0 { I 14 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'adc_vectors18'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 315 \
    name adc_vectors19 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename adc_vectors19 \
    op interface \
    ports { adc_vectors19_address0 { O 15 vector } adc_vectors19_ce0 { O 1 bit } adc_vectors19_q0 { I 14 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'adc_vectors19'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 316 \
    name adc_vectors20 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename adc_vectors20 \
    op interface \
    ports { adc_vectors20_address0 { O 15 vector } adc_vectors20_ce0 { O 1 bit } adc_vectors20_q0 { I 14 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'adc_vectors20'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 317 \
    name adc_vectors21 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename adc_vectors21 \
    op interface \
    ports { adc_vectors21_address0 { O 15 vector } adc_vectors21_ce0 { O 1 bit } adc_vectors21_q0 { I 14 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'adc_vectors21'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 318 \
    name adc_vectors22 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename adc_vectors22 \
    op interface \
    ports { adc_vectors22_address0 { O 15 vector } adc_vectors22_ce0 { O 1 bit } adc_vectors22_q0 { I 14 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'adc_vectors22'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 319 \
    name adc_vectors23 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename adc_vectors23 \
    op interface \
    ports { adc_vectors23_address0 { O 15 vector } adc_vectors23_ce0 { O 1 bit } adc_vectors23_q0 { I 14 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'adc_vectors23'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 320 \
    name adc_vectors24 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename adc_vectors24 \
    op interface \
    ports { adc_vectors24_address0 { O 15 vector } adc_vectors24_ce0 { O 1 bit } adc_vectors24_q0 { I 14 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'adc_vectors24'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 321 \
    name adc_vectors25 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename adc_vectors25 \
    op interface \
    ports { adc_vectors25_address0 { O 15 vector } adc_vectors25_ce0 { O 1 bit } adc_vectors25_q0 { I 14 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'adc_vectors25'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 322 \
    name adc_vectors26 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename adc_vectors26 \
    op interface \
    ports { adc_vectors26_address0 { O 15 vector } adc_vectors26_ce0 { O 1 bit } adc_vectors26_q0 { I 14 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'adc_vectors26'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 323 \
    name adc_vectors27 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename adc_vectors27 \
    op interface \
    ports { adc_vectors27_address0 { O 15 vector } adc_vectors27_ce0 { O 1 bit } adc_vectors27_q0 { I 14 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'adc_vectors27'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 324 \
    name adc_vectors28 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename adc_vectors28 \
    op interface \
    ports { adc_vectors28_address0 { O 15 vector } adc_vectors28_ce0 { O 1 bit } adc_vectors28_q0 { I 14 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'adc_vectors28'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 325 \
    name adc_vectors29 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename adc_vectors29 \
    op interface \
    ports { adc_vectors29_address0 { O 15 vector } adc_vectors29_ce0 { O 1 bit } adc_vectors29_q0 { I 14 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'adc_vectors29'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 326 \
    name adc_vectors30 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename adc_vectors30 \
    op interface \
    ports { adc_vectors30_address0 { O 15 vector } adc_vectors30_ce0 { O 1 bit } adc_vectors30_q0 { I 14 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'adc_vectors30'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 327 \
    name adc_vectors31 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename adc_vectors31 \
    op interface \
    ports { adc_vectors31_address0 { O 15 vector } adc_vectors31_ce0 { O 1 bit } adc_vectors31_q0 { I 14 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'adc_vectors31'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 328 \
    name adc_vectors32 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename adc_vectors32 \
    op interface \
    ports { adc_vectors32_address0 { O 15 vector } adc_vectors32_ce0 { O 1 bit } adc_vectors32_q0 { I 14 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'adc_vectors32'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 329 \
    name adc_vectors33 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename adc_vectors33 \
    op interface \
    ports { adc_vectors33_address0 { O 15 vector } adc_vectors33_ce0 { O 1 bit } adc_vectors33_q0 { I 14 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'adc_vectors33'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 330 \
    name adc_vectors34 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename adc_vectors34 \
    op interface \
    ports { adc_vectors34_address0 { O 15 vector } adc_vectors34_ce0 { O 1 bit } adc_vectors34_q0 { I 14 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'adc_vectors34'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 331 \
    name adc_vectors35 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename adc_vectors35 \
    op interface \
    ports { adc_vectors35_address0 { O 15 vector } adc_vectors35_ce0 { O 1 bit } adc_vectors35_q0 { I 14 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'adc_vectors35'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 332 \
    name adc_vectors36 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename adc_vectors36 \
    op interface \
    ports { adc_vectors36_address0 { O 15 vector } adc_vectors36_ce0 { O 1 bit } adc_vectors36_q0 { I 14 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'adc_vectors36'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 333 \
    name adc_vectors37 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename adc_vectors37 \
    op interface \
    ports { adc_vectors37_address0 { O 15 vector } adc_vectors37_ce0 { O 1 bit } adc_vectors37_q0 { I 14 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'adc_vectors37'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 334 \
    name adc_vectors38 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename adc_vectors38 \
    op interface \
    ports { adc_vectors38_address0 { O 15 vector } adc_vectors38_ce0 { O 1 bit } adc_vectors38_q0 { I 14 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'adc_vectors38'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 335 \
    name adc_vectors39 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename adc_vectors39 \
    op interface \
    ports { adc_vectors39_address0 { O 15 vector } adc_vectors39_ce0 { O 1 bit } adc_vectors39_q0 { I 14 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'adc_vectors39'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 336 \
    name adc_vectors40 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename adc_vectors40 \
    op interface \
    ports { adc_vectors40_address0 { O 15 vector } adc_vectors40_ce0 { O 1 bit } adc_vectors40_q0 { I 14 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'adc_vectors40'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 337 \
    name adc_vectors41 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename adc_vectors41 \
    op interface \
    ports { adc_vectors41_address0 { O 15 vector } adc_vectors41_ce0 { O 1 bit } adc_vectors41_q0 { I 14 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'adc_vectors41'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 338 \
    name adc_vectors42 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename adc_vectors42 \
    op interface \
    ports { adc_vectors42_address0 { O 15 vector } adc_vectors42_ce0 { O 1 bit } adc_vectors42_q0 { I 14 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'adc_vectors42'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 339 \
    name adc_vectors43 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename adc_vectors43 \
    op interface \
    ports { adc_vectors43_address0 { O 15 vector } adc_vectors43_ce0 { O 1 bit } adc_vectors43_q0 { I 14 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'adc_vectors43'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 340 \
    name adc_vectors44 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename adc_vectors44 \
    op interface \
    ports { adc_vectors44_address0 { O 15 vector } adc_vectors44_ce0 { O 1 bit } adc_vectors44_q0 { I 14 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'adc_vectors44'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 341 \
    name adc_vectors45 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename adc_vectors45 \
    op interface \
    ports { adc_vectors45_address0 { O 15 vector } adc_vectors45_ce0 { O 1 bit } adc_vectors45_q0 { I 14 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'adc_vectors45'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 342 \
    name adc_vectors46 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename adc_vectors46 \
    op interface \
    ports { adc_vectors46_address0 { O 15 vector } adc_vectors46_ce0 { O 1 bit } adc_vectors46_q0 { I 14 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'adc_vectors46'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 343 \
    name adc_vectors47 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename adc_vectors47 \
    op interface \
    ports { adc_vectors47_address0 { O 15 vector } adc_vectors47_ce0 { O 1 bit } adc_vectors47_q0 { I 14 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'adc_vectors47'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 344 \
    name adc_vectors48 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename adc_vectors48 \
    op interface \
    ports { adc_vectors48_address0 { O 15 vector } adc_vectors48_ce0 { O 1 bit } adc_vectors48_q0 { I 14 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'adc_vectors48'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 345 \
    name adc_vectors49 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename adc_vectors49 \
    op interface \
    ports { adc_vectors49_address0 { O 15 vector } adc_vectors49_ce0 { O 1 bit } adc_vectors49_q0 { I 14 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'adc_vectors49'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 346 \
    name adc_vectors50 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename adc_vectors50 \
    op interface \
    ports { adc_vectors50_address0 { O 15 vector } adc_vectors50_ce0 { O 1 bit } adc_vectors50_q0 { I 14 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'adc_vectors50'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 347 \
    name adc_vectors51 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename adc_vectors51 \
    op interface \
    ports { adc_vectors51_address0 { O 15 vector } adc_vectors51_ce0 { O 1 bit } adc_vectors51_q0 { I 14 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'adc_vectors51'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 348 \
    name adc_vectors52 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename adc_vectors52 \
    op interface \
    ports { adc_vectors52_address0 { O 15 vector } adc_vectors52_ce0 { O 1 bit } adc_vectors52_q0 { I 14 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'adc_vectors52'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 349 \
    name adc_vectors53 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename adc_vectors53 \
    op interface \
    ports { adc_vectors53_address0 { O 15 vector } adc_vectors53_ce0 { O 1 bit } adc_vectors53_q0 { I 14 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'adc_vectors53'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 350 \
    name adc_vectors54 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename adc_vectors54 \
    op interface \
    ports { adc_vectors54_address0 { O 15 vector } adc_vectors54_ce0 { O 1 bit } adc_vectors54_q0 { I 14 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'adc_vectors54'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 351 \
    name adc_vectors55 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename adc_vectors55 \
    op interface \
    ports { adc_vectors55_address0 { O 15 vector } adc_vectors55_ce0 { O 1 bit } adc_vectors55_q0 { I 14 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'adc_vectors55'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 352 \
    name adc_vectors56 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename adc_vectors56 \
    op interface \
    ports { adc_vectors56_address0 { O 15 vector } adc_vectors56_ce0 { O 1 bit } adc_vectors56_q0 { I 14 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'adc_vectors56'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 353 \
    name adc_vectors57 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename adc_vectors57 \
    op interface \
    ports { adc_vectors57_address0 { O 15 vector } adc_vectors57_ce0 { O 1 bit } adc_vectors57_q0 { I 14 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'adc_vectors57'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 354 \
    name adc_vectors58 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename adc_vectors58 \
    op interface \
    ports { adc_vectors58_address0 { O 15 vector } adc_vectors58_ce0 { O 1 bit } adc_vectors58_q0 { I 14 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'adc_vectors58'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 355 \
    name adc_vectors59 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename adc_vectors59 \
    op interface \
    ports { adc_vectors59_address0 { O 15 vector } adc_vectors59_ce0 { O 1 bit } adc_vectors59_q0 { I 14 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'adc_vectors59'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 356 \
    name adc_vectors60 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename adc_vectors60 \
    op interface \
    ports { adc_vectors60_address0 { O 15 vector } adc_vectors60_ce0 { O 1 bit } adc_vectors60_q0 { I 14 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'adc_vectors60'"
}
}


# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 243 \
    name zext_ln408 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_zext_ln408 \
    op interface \
    ports { zext_ln408 { I 14 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 244 \
    name phi_mul16 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_phi_mul16 \
    op interface \
    ports { phi_mul16 { I 15 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 245 \
    name mul_ln414 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_mul_ln414 \
    op interface \
    ports { mul_ln414 { I 22 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 246 \
    name iChan_1 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_iChan_1 \
    op interface \
    ports { iChan_1 { I 8 vector } } \
} "
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


