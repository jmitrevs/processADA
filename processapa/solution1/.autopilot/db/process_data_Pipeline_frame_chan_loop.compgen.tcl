# This script segment is generated automatically by AutoPilot

if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler process_data_process_data_Pipeline_frame_chan_loop_p_ZZ12process_dataiPcRN4dune16FDHDChannbkb BINDTYPE {storage} TYPE {ram} IMPL {auto} LATENCY 2 ALLOW_PRAGMA 1
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
    id 4 \
    name adc_words \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename adc_words \
    op interface \
    ports { adc_words_address0 { O 8 vector } adc_words_ce0 { O 1 bit } adc_words_q0 { I 32 vector } adc_words_address1 { O 8 vector } adc_words_ce1 { O 1 bit } adc_words_q1 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'adc_words'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 64 \
    name process_data_int_char_FDHDChannelMapSP_int_adc_vectors \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename process_data_int_char_FDHDChannelMapSP_int_adc_vectors \
    op interface \
    ports { process_data_int_char_FDHDChannelMapSP_int_adc_vectors_address0 { O 9 vector } process_data_int_char_FDHDChannelMapSP_int_adc_vectors_ce0 { O 1 bit } process_data_int_char_FDHDChannelMapSP_int_adc_vectors_we0 { O 1 bit } process_data_int_char_FDHDChannelMapSP_int_adc_vectors_d0 { O 14 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'process_data_int_char_FDHDChannelMapSP_int_adc_vectors'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 65 \
    name process_data_int_char_FDHDChannelMapSP_int_adc_vectors_2 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename process_data_int_char_FDHDChannelMapSP_int_adc_vectors_2 \
    op interface \
    ports { process_data_int_char_FDHDChannelMapSP_int_adc_vectors_2_address0 { O 9 vector } process_data_int_char_FDHDChannelMapSP_int_adc_vectors_2_ce0 { O 1 bit } process_data_int_char_FDHDChannelMapSP_int_adc_vectors_2_we0 { O 1 bit } process_data_int_char_FDHDChannelMapSP_int_adc_vectors_2_d0 { O 14 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'process_data_int_char_FDHDChannelMapSP_int_adc_vectors_2'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 66 \
    name process_data_int_char_FDHDChannelMapSP_int_adc_vectors_3 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename process_data_int_char_FDHDChannelMapSP_int_adc_vectors_3 \
    op interface \
    ports { process_data_int_char_FDHDChannelMapSP_int_adc_vectors_3_address0 { O 9 vector } process_data_int_char_FDHDChannelMapSP_int_adc_vectors_3_ce0 { O 1 bit } process_data_int_char_FDHDChannelMapSP_int_adc_vectors_3_we0 { O 1 bit } process_data_int_char_FDHDChannelMapSP_int_adc_vectors_3_d0 { O 14 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'process_data_int_char_FDHDChannelMapSP_int_adc_vectors_3'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 67 \
    name process_data_int_char_FDHDChannelMapSP_int_adc_vectors_4 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename process_data_int_char_FDHDChannelMapSP_int_adc_vectors_4 \
    op interface \
    ports { process_data_int_char_FDHDChannelMapSP_int_adc_vectors_4_address0 { O 9 vector } process_data_int_char_FDHDChannelMapSP_int_adc_vectors_4_ce0 { O 1 bit } process_data_int_char_FDHDChannelMapSP_int_adc_vectors_4_we0 { O 1 bit } process_data_int_char_FDHDChannelMapSP_int_adc_vectors_4_d0 { O 14 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'process_data_int_char_FDHDChannelMapSP_int_adc_vectors_4'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 68 \
    name process_data_int_char_FDHDChannelMapSP_int_adc_vectors_5 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename process_data_int_char_FDHDChannelMapSP_int_adc_vectors_5 \
    op interface \
    ports { process_data_int_char_FDHDChannelMapSP_int_adc_vectors_5_address0 { O 9 vector } process_data_int_char_FDHDChannelMapSP_int_adc_vectors_5_ce0 { O 1 bit } process_data_int_char_FDHDChannelMapSP_int_adc_vectors_5_we0 { O 1 bit } process_data_int_char_FDHDChannelMapSP_int_adc_vectors_5_d0 { O 14 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'process_data_int_char_FDHDChannelMapSP_int_adc_vectors_5'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 69 \
    name process_data_int_char_FDHDChannelMapSP_int_adc_vectors_6 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename process_data_int_char_FDHDChannelMapSP_int_adc_vectors_6 \
    op interface \
    ports { process_data_int_char_FDHDChannelMapSP_int_adc_vectors_6_address0 { O 9 vector } process_data_int_char_FDHDChannelMapSP_int_adc_vectors_6_ce0 { O 1 bit } process_data_int_char_FDHDChannelMapSP_int_adc_vectors_6_we0 { O 1 bit } process_data_int_char_FDHDChannelMapSP_int_adc_vectors_6_d0 { O 14 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'process_data_int_char_FDHDChannelMapSP_int_adc_vectors_6'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 70 \
    name process_data_int_char_FDHDChannelMapSP_int_adc_vectors_7 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename process_data_int_char_FDHDChannelMapSP_int_adc_vectors_7 \
    op interface \
    ports { process_data_int_char_FDHDChannelMapSP_int_adc_vectors_7_address0 { O 9 vector } process_data_int_char_FDHDChannelMapSP_int_adc_vectors_7_ce0 { O 1 bit } process_data_int_char_FDHDChannelMapSP_int_adc_vectors_7_we0 { O 1 bit } process_data_int_char_FDHDChannelMapSP_int_adc_vectors_7_d0 { O 14 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'process_data_int_char_FDHDChannelMapSP_int_adc_vectors_7'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 71 \
    name process_data_int_char_FDHDChannelMapSP_int_adc_vectors_8 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename process_data_int_char_FDHDChannelMapSP_int_adc_vectors_8 \
    op interface \
    ports { process_data_int_char_FDHDChannelMapSP_int_adc_vectors_8_address0 { O 9 vector } process_data_int_char_FDHDChannelMapSP_int_adc_vectors_8_ce0 { O 1 bit } process_data_int_char_FDHDChannelMapSP_int_adc_vectors_8_we0 { O 1 bit } process_data_int_char_FDHDChannelMapSP_int_adc_vectors_8_d0 { O 14 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'process_data_int_char_FDHDChannelMapSP_int_adc_vectors_8'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 72 \
    name process_data_int_char_FDHDChannelMapSP_int_adc_vectors_9 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename process_data_int_char_FDHDChannelMapSP_int_adc_vectors_9 \
    op interface \
    ports { process_data_int_char_FDHDChannelMapSP_int_adc_vectors_9_address0 { O 9 vector } process_data_int_char_FDHDChannelMapSP_int_adc_vectors_9_ce0 { O 1 bit } process_data_int_char_FDHDChannelMapSP_int_adc_vectors_9_we0 { O 1 bit } process_data_int_char_FDHDChannelMapSP_int_adc_vectors_9_d0 { O 14 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'process_data_int_char_FDHDChannelMapSP_int_adc_vectors_9'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 73 \
    name process_data_int_char_FDHDChannelMapSP_int_adc_vectors_10 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename process_data_int_char_FDHDChannelMapSP_int_adc_vectors_10 \
    op interface \
    ports { process_data_int_char_FDHDChannelMapSP_int_adc_vectors_10_address0 { O 9 vector } process_data_int_char_FDHDChannelMapSP_int_adc_vectors_10_ce0 { O 1 bit } process_data_int_char_FDHDChannelMapSP_int_adc_vectors_10_we0 { O 1 bit } process_data_int_char_FDHDChannelMapSP_int_adc_vectors_10_d0 { O 14 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'process_data_int_char_FDHDChannelMapSP_int_adc_vectors_10'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 74 \
    name p_ZZ12process_dataiPcRN4dune16FDHDChannelMapSPEPiE11adc_vectors_10 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename p_ZZ12process_dataiPcRN4dune16FDHDChannelMapSPEPiE11adc_vectors_10 \
    op interface \
    ports { p_ZZ12process_dataiPcRN4dune16FDHDChannelMapSPEPiE11adc_vectors_10_address0 { O 9 vector } p_ZZ12process_dataiPcRN4dune16FDHDChannelMapSPEPiE11adc_vectors_10_ce0 { O 1 bit } p_ZZ12process_dataiPcRN4dune16FDHDChannelMapSPEPiE11adc_vectors_10_we0 { O 1 bit } p_ZZ12process_dataiPcRN4dune16FDHDChannelMapSPEPiE11adc_vectors_10_d0 { O 14 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'p_ZZ12process_dataiPcRN4dune16FDHDChannelMapSPEPiE11adc_vectors_10'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 75 \
    name p_ZZ12process_dataiPcRN4dune16FDHDChannelMapSPEPiE11adc_vectors_11 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename p_ZZ12process_dataiPcRN4dune16FDHDChannelMapSPEPiE11adc_vectors_11 \
    op interface \
    ports { p_ZZ12process_dataiPcRN4dune16FDHDChannelMapSPEPiE11adc_vectors_11_address0 { O 9 vector } p_ZZ12process_dataiPcRN4dune16FDHDChannelMapSPEPiE11adc_vectors_11_ce0 { O 1 bit } p_ZZ12process_dataiPcRN4dune16FDHDChannelMapSPEPiE11adc_vectors_11_we0 { O 1 bit } p_ZZ12process_dataiPcRN4dune16FDHDChannelMapSPEPiE11adc_vectors_11_d0 { O 14 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'p_ZZ12process_dataiPcRN4dune16FDHDChannelMapSPEPiE11adc_vectors_11'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 76 \
    name p_ZZ12process_dataiPcRN4dune16FDHDChannelMapSPEPiE11adc_vectors_12 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename p_ZZ12process_dataiPcRN4dune16FDHDChannelMapSPEPiE11adc_vectors_12 \
    op interface \
    ports { p_ZZ12process_dataiPcRN4dune16FDHDChannelMapSPEPiE11adc_vectors_12_address0 { O 9 vector } p_ZZ12process_dataiPcRN4dune16FDHDChannelMapSPEPiE11adc_vectors_12_ce0 { O 1 bit } p_ZZ12process_dataiPcRN4dune16FDHDChannelMapSPEPiE11adc_vectors_12_we0 { O 1 bit } p_ZZ12process_dataiPcRN4dune16FDHDChannelMapSPEPiE11adc_vectors_12_d0 { O 14 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'p_ZZ12process_dataiPcRN4dune16FDHDChannelMapSPEPiE11adc_vectors_12'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 77 \
    name p_ZZ12process_dataiPcRN4dune16FDHDChannelMapSPEPiE11adc_vectors_13 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename p_ZZ12process_dataiPcRN4dune16FDHDChannelMapSPEPiE11adc_vectors_13 \
    op interface \
    ports { p_ZZ12process_dataiPcRN4dune16FDHDChannelMapSPEPiE11adc_vectors_13_address0 { O 9 vector } p_ZZ12process_dataiPcRN4dune16FDHDChannelMapSPEPiE11adc_vectors_13_ce0 { O 1 bit } p_ZZ12process_dataiPcRN4dune16FDHDChannelMapSPEPiE11adc_vectors_13_we0 { O 1 bit } p_ZZ12process_dataiPcRN4dune16FDHDChannelMapSPEPiE11adc_vectors_13_d0 { O 14 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'p_ZZ12process_dataiPcRN4dune16FDHDChannelMapSPEPiE11adc_vectors_13'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 78 \
    name p_ZZ12process_dataiPcRN4dune16FDHDChannelMapSPEPiE11adc_vectors_14 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename p_ZZ12process_dataiPcRN4dune16FDHDChannelMapSPEPiE11adc_vectors_14 \
    op interface \
    ports { p_ZZ12process_dataiPcRN4dune16FDHDChannelMapSPEPiE11adc_vectors_14_address0 { O 9 vector } p_ZZ12process_dataiPcRN4dune16FDHDChannelMapSPEPiE11adc_vectors_14_ce0 { O 1 bit } p_ZZ12process_dataiPcRN4dune16FDHDChannelMapSPEPiE11adc_vectors_14_we0 { O 1 bit } p_ZZ12process_dataiPcRN4dune16FDHDChannelMapSPEPiE11adc_vectors_14_d0 { O 14 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'p_ZZ12process_dataiPcRN4dune16FDHDChannelMapSPEPiE11adc_vectors_14'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 79 \
    name p_ZZ12process_dataiPcRN4dune16FDHDChannelMapSPEPiE11adc_vectors_15 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename p_ZZ12process_dataiPcRN4dune16FDHDChannelMapSPEPiE11adc_vectors_15 \
    op interface \
    ports { p_ZZ12process_dataiPcRN4dune16FDHDChannelMapSPEPiE11adc_vectors_15_address0 { O 9 vector } p_ZZ12process_dataiPcRN4dune16FDHDChannelMapSPEPiE11adc_vectors_15_ce0 { O 1 bit } p_ZZ12process_dataiPcRN4dune16FDHDChannelMapSPEPiE11adc_vectors_15_we0 { O 1 bit } p_ZZ12process_dataiPcRN4dune16FDHDChannelMapSPEPiE11adc_vectors_15_d0 { O 14 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'p_ZZ12process_dataiPcRN4dune16FDHDChannelMapSPEPiE11adc_vectors_15'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 80 \
    name p_ZZ12process_dataiPcRN4dune16FDHDChannelMapSPEPiE11adc_vectors_16 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename p_ZZ12process_dataiPcRN4dune16FDHDChannelMapSPEPiE11adc_vectors_16 \
    op interface \
    ports { p_ZZ12process_dataiPcRN4dune16FDHDChannelMapSPEPiE11adc_vectors_16_address0 { O 9 vector } p_ZZ12process_dataiPcRN4dune16FDHDChannelMapSPEPiE11adc_vectors_16_ce0 { O 1 bit } p_ZZ12process_dataiPcRN4dune16FDHDChannelMapSPEPiE11adc_vectors_16_we0 { O 1 bit } p_ZZ12process_dataiPcRN4dune16FDHDChannelMapSPEPiE11adc_vectors_16_d0 { O 14 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'p_ZZ12process_dataiPcRN4dune16FDHDChannelMapSPEPiE11adc_vectors_16'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 81 \
    name p_ZZ12process_dataiPcRN4dune16FDHDChannelMapSPEPiE11adc_vectors_17 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename p_ZZ12process_dataiPcRN4dune16FDHDChannelMapSPEPiE11adc_vectors_17 \
    op interface \
    ports { p_ZZ12process_dataiPcRN4dune16FDHDChannelMapSPEPiE11adc_vectors_17_address0 { O 9 vector } p_ZZ12process_dataiPcRN4dune16FDHDChannelMapSPEPiE11adc_vectors_17_ce0 { O 1 bit } p_ZZ12process_dataiPcRN4dune16FDHDChannelMapSPEPiE11adc_vectors_17_we0 { O 1 bit } p_ZZ12process_dataiPcRN4dune16FDHDChannelMapSPEPiE11adc_vectors_17_d0 { O 14 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'p_ZZ12process_dataiPcRN4dune16FDHDChannelMapSPEPiE11adc_vectors_17'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 82 \
    name p_ZZ12process_dataiPcRN4dune16FDHDChannelMapSPEPiE11adc_vectors_18 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename p_ZZ12process_dataiPcRN4dune16FDHDChannelMapSPEPiE11adc_vectors_18 \
    op interface \
    ports { p_ZZ12process_dataiPcRN4dune16FDHDChannelMapSPEPiE11adc_vectors_18_address0 { O 9 vector } p_ZZ12process_dataiPcRN4dune16FDHDChannelMapSPEPiE11adc_vectors_18_ce0 { O 1 bit } p_ZZ12process_dataiPcRN4dune16FDHDChannelMapSPEPiE11adc_vectors_18_we0 { O 1 bit } p_ZZ12process_dataiPcRN4dune16FDHDChannelMapSPEPiE11adc_vectors_18_d0 { O 14 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'p_ZZ12process_dataiPcRN4dune16FDHDChannelMapSPEPiE11adc_vectors_18'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 83 \
    name p_ZZ12process_dataiPcRN4dune16FDHDChannelMapSPEPiE11adc_vectors_19 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename p_ZZ12process_dataiPcRN4dune16FDHDChannelMapSPEPiE11adc_vectors_19 \
    op interface \
    ports { p_ZZ12process_dataiPcRN4dune16FDHDChannelMapSPEPiE11adc_vectors_19_address0 { O 9 vector } p_ZZ12process_dataiPcRN4dune16FDHDChannelMapSPEPiE11adc_vectors_19_ce0 { O 1 bit } p_ZZ12process_dataiPcRN4dune16FDHDChannelMapSPEPiE11adc_vectors_19_we0 { O 1 bit } p_ZZ12process_dataiPcRN4dune16FDHDChannelMapSPEPiE11adc_vectors_19_d0 { O 14 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'p_ZZ12process_dataiPcRN4dune16FDHDChannelMapSPEPiE11adc_vectors_19'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 84 \
    name p_ZZ12process_dataiPcRN4dune16FDHDChannelMapSPEPiE11adc_vectors_20 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename p_ZZ12process_dataiPcRN4dune16FDHDChannelMapSPEPiE11adc_vectors_20 \
    op interface \
    ports { p_ZZ12process_dataiPcRN4dune16FDHDChannelMapSPEPiE11adc_vectors_20_address0 { O 9 vector } p_ZZ12process_dataiPcRN4dune16FDHDChannelMapSPEPiE11adc_vectors_20_ce0 { O 1 bit } p_ZZ12process_dataiPcRN4dune16FDHDChannelMapSPEPiE11adc_vectors_20_we0 { O 1 bit } p_ZZ12process_dataiPcRN4dune16FDHDChannelMapSPEPiE11adc_vectors_20_d0 { O 14 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'p_ZZ12process_dataiPcRN4dune16FDHDChannelMapSPEPiE11adc_vectors_20'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 85 \
    name p_ZZ12process_dataiPcRN4dune16FDHDChannelMapSPEPiE11adc_vectors_21 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename p_ZZ12process_dataiPcRN4dune16FDHDChannelMapSPEPiE11adc_vectors_21 \
    op interface \
    ports { p_ZZ12process_dataiPcRN4dune16FDHDChannelMapSPEPiE11adc_vectors_21_address0 { O 9 vector } p_ZZ12process_dataiPcRN4dune16FDHDChannelMapSPEPiE11adc_vectors_21_ce0 { O 1 bit } p_ZZ12process_dataiPcRN4dune16FDHDChannelMapSPEPiE11adc_vectors_21_we0 { O 1 bit } p_ZZ12process_dataiPcRN4dune16FDHDChannelMapSPEPiE11adc_vectors_21_d0 { O 14 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'p_ZZ12process_dataiPcRN4dune16FDHDChannelMapSPEPiE11adc_vectors_21'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 86 \
    name p_ZZ12process_dataiPcRN4dune16FDHDChannelMapSPEPiE11adc_vectors_22 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename p_ZZ12process_dataiPcRN4dune16FDHDChannelMapSPEPiE11adc_vectors_22 \
    op interface \
    ports { p_ZZ12process_dataiPcRN4dune16FDHDChannelMapSPEPiE11adc_vectors_22_address0 { O 9 vector } p_ZZ12process_dataiPcRN4dune16FDHDChannelMapSPEPiE11adc_vectors_22_ce0 { O 1 bit } p_ZZ12process_dataiPcRN4dune16FDHDChannelMapSPEPiE11adc_vectors_22_we0 { O 1 bit } p_ZZ12process_dataiPcRN4dune16FDHDChannelMapSPEPiE11adc_vectors_22_d0 { O 14 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'p_ZZ12process_dataiPcRN4dune16FDHDChannelMapSPEPiE11adc_vectors_22'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 87 \
    name p_ZZ12process_dataiPcRN4dune16FDHDChannelMapSPEPiE11adc_vectors_23 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename p_ZZ12process_dataiPcRN4dune16FDHDChannelMapSPEPiE11adc_vectors_23 \
    op interface \
    ports { p_ZZ12process_dataiPcRN4dune16FDHDChannelMapSPEPiE11adc_vectors_23_address0 { O 9 vector } p_ZZ12process_dataiPcRN4dune16FDHDChannelMapSPEPiE11adc_vectors_23_ce0 { O 1 bit } p_ZZ12process_dataiPcRN4dune16FDHDChannelMapSPEPiE11adc_vectors_23_we0 { O 1 bit } p_ZZ12process_dataiPcRN4dune16FDHDChannelMapSPEPiE11adc_vectors_23_d0 { O 14 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'p_ZZ12process_dataiPcRN4dune16FDHDChannelMapSPEPiE11adc_vectors_23'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 88 \
    name p_ZZ12process_dataiPcRN4dune16FDHDChannelMapSPEPiE11adc_vectors_24 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename p_ZZ12process_dataiPcRN4dune16FDHDChannelMapSPEPiE11adc_vectors_24 \
    op interface \
    ports { p_ZZ12process_dataiPcRN4dune16FDHDChannelMapSPEPiE11adc_vectors_24_address0 { O 9 vector } p_ZZ12process_dataiPcRN4dune16FDHDChannelMapSPEPiE11adc_vectors_24_ce0 { O 1 bit } p_ZZ12process_dataiPcRN4dune16FDHDChannelMapSPEPiE11adc_vectors_24_we0 { O 1 bit } p_ZZ12process_dataiPcRN4dune16FDHDChannelMapSPEPiE11adc_vectors_24_d0 { O 14 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'p_ZZ12process_dataiPcRN4dune16FDHDChannelMapSPEPiE11adc_vectors_24'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 89 \
    name p_ZZ12process_dataiPcRN4dune16FDHDChannelMapSPEPiE11adc_vectors_25 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename p_ZZ12process_dataiPcRN4dune16FDHDChannelMapSPEPiE11adc_vectors_25 \
    op interface \
    ports { p_ZZ12process_dataiPcRN4dune16FDHDChannelMapSPEPiE11adc_vectors_25_address0 { O 9 vector } p_ZZ12process_dataiPcRN4dune16FDHDChannelMapSPEPiE11adc_vectors_25_ce0 { O 1 bit } p_ZZ12process_dataiPcRN4dune16FDHDChannelMapSPEPiE11adc_vectors_25_we0 { O 1 bit } p_ZZ12process_dataiPcRN4dune16FDHDChannelMapSPEPiE11adc_vectors_25_d0 { O 14 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'p_ZZ12process_dataiPcRN4dune16FDHDChannelMapSPEPiE11adc_vectors_25'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 90 \
    name p_ZZ12process_dataiPcRN4dune16FDHDChannelMapSPEPiE11adc_vectors_26 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename p_ZZ12process_dataiPcRN4dune16FDHDChannelMapSPEPiE11adc_vectors_26 \
    op interface \
    ports { p_ZZ12process_dataiPcRN4dune16FDHDChannelMapSPEPiE11adc_vectors_26_address0 { O 9 vector } p_ZZ12process_dataiPcRN4dune16FDHDChannelMapSPEPiE11adc_vectors_26_ce0 { O 1 bit } p_ZZ12process_dataiPcRN4dune16FDHDChannelMapSPEPiE11adc_vectors_26_we0 { O 1 bit } p_ZZ12process_dataiPcRN4dune16FDHDChannelMapSPEPiE11adc_vectors_26_d0 { O 14 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'p_ZZ12process_dataiPcRN4dune16FDHDChannelMapSPEPiE11adc_vectors_26'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 91 \
    name p_ZZ12process_dataiPcRN4dune16FDHDChannelMapSPEPiE11adc_vectors_27 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename p_ZZ12process_dataiPcRN4dune16FDHDChannelMapSPEPiE11adc_vectors_27 \
    op interface \
    ports { p_ZZ12process_dataiPcRN4dune16FDHDChannelMapSPEPiE11adc_vectors_27_address0 { O 9 vector } p_ZZ12process_dataiPcRN4dune16FDHDChannelMapSPEPiE11adc_vectors_27_ce0 { O 1 bit } p_ZZ12process_dataiPcRN4dune16FDHDChannelMapSPEPiE11adc_vectors_27_we0 { O 1 bit } p_ZZ12process_dataiPcRN4dune16FDHDChannelMapSPEPiE11adc_vectors_27_d0 { O 14 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'p_ZZ12process_dataiPcRN4dune16FDHDChannelMapSPEPiE11adc_vectors_27'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 92 \
    name p_ZZ12process_dataiPcRN4dune16FDHDChannelMapSPEPiE11adc_vectors_28 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename p_ZZ12process_dataiPcRN4dune16FDHDChannelMapSPEPiE11adc_vectors_28 \
    op interface \
    ports { p_ZZ12process_dataiPcRN4dune16FDHDChannelMapSPEPiE11adc_vectors_28_address0 { O 9 vector } p_ZZ12process_dataiPcRN4dune16FDHDChannelMapSPEPiE11adc_vectors_28_ce0 { O 1 bit } p_ZZ12process_dataiPcRN4dune16FDHDChannelMapSPEPiE11adc_vectors_28_we0 { O 1 bit } p_ZZ12process_dataiPcRN4dune16FDHDChannelMapSPEPiE11adc_vectors_28_d0 { O 14 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'p_ZZ12process_dataiPcRN4dune16FDHDChannelMapSPEPiE11adc_vectors_28'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 93 \
    name p_ZZ12process_dataiPcRN4dune16FDHDChannelMapSPEPiE11adc_vectors_29 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename p_ZZ12process_dataiPcRN4dune16FDHDChannelMapSPEPiE11adc_vectors_29 \
    op interface \
    ports { p_ZZ12process_dataiPcRN4dune16FDHDChannelMapSPEPiE11adc_vectors_29_address0 { O 9 vector } p_ZZ12process_dataiPcRN4dune16FDHDChannelMapSPEPiE11adc_vectors_29_ce0 { O 1 bit } p_ZZ12process_dataiPcRN4dune16FDHDChannelMapSPEPiE11adc_vectors_29_we0 { O 1 bit } p_ZZ12process_dataiPcRN4dune16FDHDChannelMapSPEPiE11adc_vectors_29_d0 { O 14 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'p_ZZ12process_dataiPcRN4dune16FDHDChannelMapSPEPiE11adc_vectors_29'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 94 \
    name p_ZZ12process_dataiPcRN4dune16FDHDChannelMapSPEPiE11adc_vectors_30 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename p_ZZ12process_dataiPcRN4dune16FDHDChannelMapSPEPiE11adc_vectors_30 \
    op interface \
    ports { p_ZZ12process_dataiPcRN4dune16FDHDChannelMapSPEPiE11adc_vectors_30_address0 { O 9 vector } p_ZZ12process_dataiPcRN4dune16FDHDChannelMapSPEPiE11adc_vectors_30_ce0 { O 1 bit } p_ZZ12process_dataiPcRN4dune16FDHDChannelMapSPEPiE11adc_vectors_30_we0 { O 1 bit } p_ZZ12process_dataiPcRN4dune16FDHDChannelMapSPEPiE11adc_vectors_30_d0 { O 14 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'p_ZZ12process_dataiPcRN4dune16FDHDChannelMapSPEPiE11adc_vectors_30'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 95 \
    name p_ZZ12process_dataiPcRN4dune16FDHDChannelMapSPEPiE11adc_vectors_31 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename p_ZZ12process_dataiPcRN4dune16FDHDChannelMapSPEPiE11adc_vectors_31 \
    op interface \
    ports { p_ZZ12process_dataiPcRN4dune16FDHDChannelMapSPEPiE11adc_vectors_31_address0 { O 9 vector } p_ZZ12process_dataiPcRN4dune16FDHDChannelMapSPEPiE11adc_vectors_31_ce0 { O 1 bit } p_ZZ12process_dataiPcRN4dune16FDHDChannelMapSPEPiE11adc_vectors_31_we0 { O 1 bit } p_ZZ12process_dataiPcRN4dune16FDHDChannelMapSPEPiE11adc_vectors_31_d0 { O 14 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'p_ZZ12process_dataiPcRN4dune16FDHDChannelMapSPEPiE11adc_vectors_31'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 96 \
    name p_ZZ12process_dataiPcRN4dune16FDHDChannelMapSPEPiE11adc_vectors_32 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename p_ZZ12process_dataiPcRN4dune16FDHDChannelMapSPEPiE11adc_vectors_32 \
    op interface \
    ports { p_ZZ12process_dataiPcRN4dune16FDHDChannelMapSPEPiE11adc_vectors_32_address0 { O 9 vector } p_ZZ12process_dataiPcRN4dune16FDHDChannelMapSPEPiE11adc_vectors_32_ce0 { O 1 bit } p_ZZ12process_dataiPcRN4dune16FDHDChannelMapSPEPiE11adc_vectors_32_we0 { O 1 bit } p_ZZ12process_dataiPcRN4dune16FDHDChannelMapSPEPiE11adc_vectors_32_d0 { O 14 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'p_ZZ12process_dataiPcRN4dune16FDHDChannelMapSPEPiE11adc_vectors_32'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 97 \
    name p_ZZ12process_dataiPcRN4dune16FDHDChannelMapSPEPiE11adc_vectors_33 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename p_ZZ12process_dataiPcRN4dune16FDHDChannelMapSPEPiE11adc_vectors_33 \
    op interface \
    ports { p_ZZ12process_dataiPcRN4dune16FDHDChannelMapSPEPiE11adc_vectors_33_address0 { O 9 vector } p_ZZ12process_dataiPcRN4dune16FDHDChannelMapSPEPiE11adc_vectors_33_ce0 { O 1 bit } p_ZZ12process_dataiPcRN4dune16FDHDChannelMapSPEPiE11adc_vectors_33_we0 { O 1 bit } p_ZZ12process_dataiPcRN4dune16FDHDChannelMapSPEPiE11adc_vectors_33_d0 { O 14 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'p_ZZ12process_dataiPcRN4dune16FDHDChannelMapSPEPiE11adc_vectors_33'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 98 \
    name p_ZZ12process_dataiPcRN4dune16FDHDChannelMapSPEPiE11adc_vectors_34 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename p_ZZ12process_dataiPcRN4dune16FDHDChannelMapSPEPiE11adc_vectors_34 \
    op interface \
    ports { p_ZZ12process_dataiPcRN4dune16FDHDChannelMapSPEPiE11adc_vectors_34_address0 { O 9 vector } p_ZZ12process_dataiPcRN4dune16FDHDChannelMapSPEPiE11adc_vectors_34_ce0 { O 1 bit } p_ZZ12process_dataiPcRN4dune16FDHDChannelMapSPEPiE11adc_vectors_34_we0 { O 1 bit } p_ZZ12process_dataiPcRN4dune16FDHDChannelMapSPEPiE11adc_vectors_34_d0 { O 14 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'p_ZZ12process_dataiPcRN4dune16FDHDChannelMapSPEPiE11adc_vectors_34'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 99 \
    name p_ZZ12process_dataiPcRN4dune16FDHDChannelMapSPEPiE11adc_vectors_35 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename p_ZZ12process_dataiPcRN4dune16FDHDChannelMapSPEPiE11adc_vectors_35 \
    op interface \
    ports { p_ZZ12process_dataiPcRN4dune16FDHDChannelMapSPEPiE11adc_vectors_35_address0 { O 9 vector } p_ZZ12process_dataiPcRN4dune16FDHDChannelMapSPEPiE11adc_vectors_35_ce0 { O 1 bit } p_ZZ12process_dataiPcRN4dune16FDHDChannelMapSPEPiE11adc_vectors_35_we0 { O 1 bit } p_ZZ12process_dataiPcRN4dune16FDHDChannelMapSPEPiE11adc_vectors_35_d0 { O 14 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'p_ZZ12process_dataiPcRN4dune16FDHDChannelMapSPEPiE11adc_vectors_35'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 100 \
    name p_ZZ12process_dataiPcRN4dune16FDHDChannelMapSPEPiE11adc_vectors_36 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename p_ZZ12process_dataiPcRN4dune16FDHDChannelMapSPEPiE11adc_vectors_36 \
    op interface \
    ports { p_ZZ12process_dataiPcRN4dune16FDHDChannelMapSPEPiE11adc_vectors_36_address0 { O 9 vector } p_ZZ12process_dataiPcRN4dune16FDHDChannelMapSPEPiE11adc_vectors_36_ce0 { O 1 bit } p_ZZ12process_dataiPcRN4dune16FDHDChannelMapSPEPiE11adc_vectors_36_we0 { O 1 bit } p_ZZ12process_dataiPcRN4dune16FDHDChannelMapSPEPiE11adc_vectors_36_d0 { O 14 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'p_ZZ12process_dataiPcRN4dune16FDHDChannelMapSPEPiE11adc_vectors_36'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 101 \
    name p_ZZ12process_dataiPcRN4dune16FDHDChannelMapSPEPiE11adc_vectors_37 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename p_ZZ12process_dataiPcRN4dune16FDHDChannelMapSPEPiE11adc_vectors_37 \
    op interface \
    ports { p_ZZ12process_dataiPcRN4dune16FDHDChannelMapSPEPiE11adc_vectors_37_address0 { O 9 vector } p_ZZ12process_dataiPcRN4dune16FDHDChannelMapSPEPiE11adc_vectors_37_ce0 { O 1 bit } p_ZZ12process_dataiPcRN4dune16FDHDChannelMapSPEPiE11adc_vectors_37_we0 { O 1 bit } p_ZZ12process_dataiPcRN4dune16FDHDChannelMapSPEPiE11adc_vectors_37_d0 { O 14 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'p_ZZ12process_dataiPcRN4dune16FDHDChannelMapSPEPiE11adc_vectors_37'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 102 \
    name p_ZZ12process_dataiPcRN4dune16FDHDChannelMapSPEPiE11adc_vectors_38 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename p_ZZ12process_dataiPcRN4dune16FDHDChannelMapSPEPiE11adc_vectors_38 \
    op interface \
    ports { p_ZZ12process_dataiPcRN4dune16FDHDChannelMapSPEPiE11adc_vectors_38_address0 { O 9 vector } p_ZZ12process_dataiPcRN4dune16FDHDChannelMapSPEPiE11adc_vectors_38_ce0 { O 1 bit } p_ZZ12process_dataiPcRN4dune16FDHDChannelMapSPEPiE11adc_vectors_38_we0 { O 1 bit } p_ZZ12process_dataiPcRN4dune16FDHDChannelMapSPEPiE11adc_vectors_38_d0 { O 14 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'p_ZZ12process_dataiPcRN4dune16FDHDChannelMapSPEPiE11adc_vectors_38'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 103 \
    name p_ZZ12process_dataiPcRN4dune16FDHDChannelMapSPEPiE11adc_vectors_39 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename p_ZZ12process_dataiPcRN4dune16FDHDChannelMapSPEPiE11adc_vectors_39 \
    op interface \
    ports { p_ZZ12process_dataiPcRN4dune16FDHDChannelMapSPEPiE11adc_vectors_39_address0 { O 9 vector } p_ZZ12process_dataiPcRN4dune16FDHDChannelMapSPEPiE11adc_vectors_39_ce0 { O 1 bit } p_ZZ12process_dataiPcRN4dune16FDHDChannelMapSPEPiE11adc_vectors_39_we0 { O 1 bit } p_ZZ12process_dataiPcRN4dune16FDHDChannelMapSPEPiE11adc_vectors_39_d0 { O 14 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'p_ZZ12process_dataiPcRN4dune16FDHDChannelMapSPEPiE11adc_vectors_39'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 104 \
    name p_ZZ12process_dataiPcRN4dune16FDHDChannelMapSPEPiE11adc_vectors_40 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename p_ZZ12process_dataiPcRN4dune16FDHDChannelMapSPEPiE11adc_vectors_40 \
    op interface \
    ports { p_ZZ12process_dataiPcRN4dune16FDHDChannelMapSPEPiE11adc_vectors_40_address0 { O 9 vector } p_ZZ12process_dataiPcRN4dune16FDHDChannelMapSPEPiE11adc_vectors_40_ce0 { O 1 bit } p_ZZ12process_dataiPcRN4dune16FDHDChannelMapSPEPiE11adc_vectors_40_we0 { O 1 bit } p_ZZ12process_dataiPcRN4dune16FDHDChannelMapSPEPiE11adc_vectors_40_d0 { O 14 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'p_ZZ12process_dataiPcRN4dune16FDHDChannelMapSPEPiE11adc_vectors_40'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 105 \
    name p_ZZ12process_dataiPcRN4dune16FDHDChannelMapSPEPiE11adc_vectors_41 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename p_ZZ12process_dataiPcRN4dune16FDHDChannelMapSPEPiE11adc_vectors_41 \
    op interface \
    ports { p_ZZ12process_dataiPcRN4dune16FDHDChannelMapSPEPiE11adc_vectors_41_address0 { O 9 vector } p_ZZ12process_dataiPcRN4dune16FDHDChannelMapSPEPiE11adc_vectors_41_ce0 { O 1 bit } p_ZZ12process_dataiPcRN4dune16FDHDChannelMapSPEPiE11adc_vectors_41_we0 { O 1 bit } p_ZZ12process_dataiPcRN4dune16FDHDChannelMapSPEPiE11adc_vectors_41_d0 { O 14 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'p_ZZ12process_dataiPcRN4dune16FDHDChannelMapSPEPiE11adc_vectors_41'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 106 \
    name p_ZZ12process_dataiPcRN4dune16FDHDChannelMapSPEPiE11adc_vectors_42 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename p_ZZ12process_dataiPcRN4dune16FDHDChannelMapSPEPiE11adc_vectors_42 \
    op interface \
    ports { p_ZZ12process_dataiPcRN4dune16FDHDChannelMapSPEPiE11adc_vectors_42_address0 { O 9 vector } p_ZZ12process_dataiPcRN4dune16FDHDChannelMapSPEPiE11adc_vectors_42_ce0 { O 1 bit } p_ZZ12process_dataiPcRN4dune16FDHDChannelMapSPEPiE11adc_vectors_42_we0 { O 1 bit } p_ZZ12process_dataiPcRN4dune16FDHDChannelMapSPEPiE11adc_vectors_42_d0 { O 14 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'p_ZZ12process_dataiPcRN4dune16FDHDChannelMapSPEPiE11adc_vectors_42'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 107 \
    name p_ZZ12process_dataiPcRN4dune16FDHDChannelMapSPEPiE11adc_vectors_43 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename p_ZZ12process_dataiPcRN4dune16FDHDChannelMapSPEPiE11adc_vectors_43 \
    op interface \
    ports { p_ZZ12process_dataiPcRN4dune16FDHDChannelMapSPEPiE11adc_vectors_43_address0 { O 9 vector } p_ZZ12process_dataiPcRN4dune16FDHDChannelMapSPEPiE11adc_vectors_43_ce0 { O 1 bit } p_ZZ12process_dataiPcRN4dune16FDHDChannelMapSPEPiE11adc_vectors_43_we0 { O 1 bit } p_ZZ12process_dataiPcRN4dune16FDHDChannelMapSPEPiE11adc_vectors_43_d0 { O 14 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'p_ZZ12process_dataiPcRN4dune16FDHDChannelMapSPEPiE11adc_vectors_43'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 108 \
    name p_ZZ12process_dataiPcRN4dune16FDHDChannelMapSPEPiE11adc_vectors_44 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename p_ZZ12process_dataiPcRN4dune16FDHDChannelMapSPEPiE11adc_vectors_44 \
    op interface \
    ports { p_ZZ12process_dataiPcRN4dune16FDHDChannelMapSPEPiE11adc_vectors_44_address0 { O 9 vector } p_ZZ12process_dataiPcRN4dune16FDHDChannelMapSPEPiE11adc_vectors_44_ce0 { O 1 bit } p_ZZ12process_dataiPcRN4dune16FDHDChannelMapSPEPiE11adc_vectors_44_we0 { O 1 bit } p_ZZ12process_dataiPcRN4dune16FDHDChannelMapSPEPiE11adc_vectors_44_d0 { O 14 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'p_ZZ12process_dataiPcRN4dune16FDHDChannelMapSPEPiE11adc_vectors_44'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 109 \
    name p_ZZ12process_dataiPcRN4dune16FDHDChannelMapSPEPiE11adc_vectors_45 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename p_ZZ12process_dataiPcRN4dune16FDHDChannelMapSPEPiE11adc_vectors_45 \
    op interface \
    ports { p_ZZ12process_dataiPcRN4dune16FDHDChannelMapSPEPiE11adc_vectors_45_address0 { O 9 vector } p_ZZ12process_dataiPcRN4dune16FDHDChannelMapSPEPiE11adc_vectors_45_ce0 { O 1 bit } p_ZZ12process_dataiPcRN4dune16FDHDChannelMapSPEPiE11adc_vectors_45_we0 { O 1 bit } p_ZZ12process_dataiPcRN4dune16FDHDChannelMapSPEPiE11adc_vectors_45_d0 { O 14 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'p_ZZ12process_dataiPcRN4dune16FDHDChannelMapSPEPiE11adc_vectors_45'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 110 \
    name p_ZZ12process_dataiPcRN4dune16FDHDChannelMapSPEPiE11adc_vectors_46 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename p_ZZ12process_dataiPcRN4dune16FDHDChannelMapSPEPiE11adc_vectors_46 \
    op interface \
    ports { p_ZZ12process_dataiPcRN4dune16FDHDChannelMapSPEPiE11adc_vectors_46_address0 { O 9 vector } p_ZZ12process_dataiPcRN4dune16FDHDChannelMapSPEPiE11adc_vectors_46_ce0 { O 1 bit } p_ZZ12process_dataiPcRN4dune16FDHDChannelMapSPEPiE11adc_vectors_46_we0 { O 1 bit } p_ZZ12process_dataiPcRN4dune16FDHDChannelMapSPEPiE11adc_vectors_46_d0 { O 14 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'p_ZZ12process_dataiPcRN4dune16FDHDChannelMapSPEPiE11adc_vectors_46'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 111 \
    name p_ZZ12process_dataiPcRN4dune16FDHDChannelMapSPEPiE11adc_vectors_47 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename p_ZZ12process_dataiPcRN4dune16FDHDChannelMapSPEPiE11adc_vectors_47 \
    op interface \
    ports { p_ZZ12process_dataiPcRN4dune16FDHDChannelMapSPEPiE11adc_vectors_47_address0 { O 9 vector } p_ZZ12process_dataiPcRN4dune16FDHDChannelMapSPEPiE11adc_vectors_47_ce0 { O 1 bit } p_ZZ12process_dataiPcRN4dune16FDHDChannelMapSPEPiE11adc_vectors_47_we0 { O 1 bit } p_ZZ12process_dataiPcRN4dune16FDHDChannelMapSPEPiE11adc_vectors_47_d0 { O 14 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'p_ZZ12process_dataiPcRN4dune16FDHDChannelMapSPEPiE11adc_vectors_47'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 112 \
    name p_ZZ12process_dataiPcRN4dune16FDHDChannelMapSPEPiE11adc_vectors_48 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename p_ZZ12process_dataiPcRN4dune16FDHDChannelMapSPEPiE11adc_vectors_48 \
    op interface \
    ports { p_ZZ12process_dataiPcRN4dune16FDHDChannelMapSPEPiE11adc_vectors_48_address0 { O 9 vector } p_ZZ12process_dataiPcRN4dune16FDHDChannelMapSPEPiE11adc_vectors_48_ce0 { O 1 bit } p_ZZ12process_dataiPcRN4dune16FDHDChannelMapSPEPiE11adc_vectors_48_we0 { O 1 bit } p_ZZ12process_dataiPcRN4dune16FDHDChannelMapSPEPiE11adc_vectors_48_d0 { O 14 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'p_ZZ12process_dataiPcRN4dune16FDHDChannelMapSPEPiE11adc_vectors_48'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 113 \
    name p_ZZ12process_dataiPcRN4dune16FDHDChannelMapSPEPiE11adc_vectors_49 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename p_ZZ12process_dataiPcRN4dune16FDHDChannelMapSPEPiE11adc_vectors_49 \
    op interface \
    ports { p_ZZ12process_dataiPcRN4dune16FDHDChannelMapSPEPiE11adc_vectors_49_address0 { O 9 vector } p_ZZ12process_dataiPcRN4dune16FDHDChannelMapSPEPiE11adc_vectors_49_ce0 { O 1 bit } p_ZZ12process_dataiPcRN4dune16FDHDChannelMapSPEPiE11adc_vectors_49_we0 { O 1 bit } p_ZZ12process_dataiPcRN4dune16FDHDChannelMapSPEPiE11adc_vectors_49_d0 { O 14 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'p_ZZ12process_dataiPcRN4dune16FDHDChannelMapSPEPiE11adc_vectors_49'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 114 \
    name adc_vectors2 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename adc_vectors2 \
    op interface \
    ports { adc_vectors2_address0 { O 15 vector } adc_vectors2_ce0 { O 1 bit } adc_vectors2_we0 { O 1 bit } adc_vectors2_d0 { O 14 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'adc_vectors2'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 115 \
    name adc_vectors3 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename adc_vectors3 \
    op interface \
    ports { adc_vectors3_address0 { O 15 vector } adc_vectors3_ce0 { O 1 bit } adc_vectors3_we0 { O 1 bit } adc_vectors3_d0 { O 14 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'adc_vectors3'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 116 \
    name adc_vectors4 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename adc_vectors4 \
    op interface \
    ports { adc_vectors4_address0 { O 15 vector } adc_vectors4_ce0 { O 1 bit } adc_vectors4_we0 { O 1 bit } adc_vectors4_d0 { O 14 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'adc_vectors4'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 117 \
    name adc_vectors5 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename adc_vectors5 \
    op interface \
    ports { adc_vectors5_address0 { O 15 vector } adc_vectors5_ce0 { O 1 bit } adc_vectors5_we0 { O 1 bit } adc_vectors5_d0 { O 14 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'adc_vectors5'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 118 \
    name adc_vectors6 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename adc_vectors6 \
    op interface \
    ports { adc_vectors6_address0 { O 15 vector } adc_vectors6_ce0 { O 1 bit } adc_vectors6_we0 { O 1 bit } adc_vectors6_d0 { O 14 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'adc_vectors6'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 119 \
    name adc_vectors7 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename adc_vectors7 \
    op interface \
    ports { adc_vectors7_address0 { O 15 vector } adc_vectors7_ce0 { O 1 bit } adc_vectors7_we0 { O 1 bit } adc_vectors7_d0 { O 14 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'adc_vectors7'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 120 \
    name adc_vectors8 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename adc_vectors8 \
    op interface \
    ports { adc_vectors8_address0 { O 15 vector } adc_vectors8_ce0 { O 1 bit } adc_vectors8_we0 { O 1 bit } adc_vectors8_d0 { O 14 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'adc_vectors8'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 121 \
    name adc_vectors9 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename adc_vectors9 \
    op interface \
    ports { adc_vectors9_address0 { O 15 vector } adc_vectors9_ce0 { O 1 bit } adc_vectors9_we0 { O 1 bit } adc_vectors9_d0 { O 14 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'adc_vectors9'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 122 \
    name adc_vectors10 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename adc_vectors10 \
    op interface \
    ports { adc_vectors10_address0 { O 15 vector } adc_vectors10_ce0 { O 1 bit } adc_vectors10_we0 { O 1 bit } adc_vectors10_d0 { O 14 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'adc_vectors10'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 123 \
    name adc_vectors11 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename adc_vectors11 \
    op interface \
    ports { adc_vectors11_address0 { O 15 vector } adc_vectors11_ce0 { O 1 bit } adc_vectors11_we0 { O 1 bit } adc_vectors11_d0 { O 14 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'adc_vectors11'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 124 \
    name adc_vectors12 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename adc_vectors12 \
    op interface \
    ports { adc_vectors12_address0 { O 15 vector } adc_vectors12_ce0 { O 1 bit } adc_vectors12_we0 { O 1 bit } adc_vectors12_d0 { O 14 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'adc_vectors12'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 125 \
    name adc_vectors13 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename adc_vectors13 \
    op interface \
    ports { adc_vectors13_address0 { O 15 vector } adc_vectors13_ce0 { O 1 bit } adc_vectors13_we0 { O 1 bit } adc_vectors13_d0 { O 14 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'adc_vectors13'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 126 \
    name adc_vectors14 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename adc_vectors14 \
    op interface \
    ports { adc_vectors14_address0 { O 15 vector } adc_vectors14_ce0 { O 1 bit } adc_vectors14_we0 { O 1 bit } adc_vectors14_d0 { O 14 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'adc_vectors14'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 127 \
    name adc_vectors15 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename adc_vectors15 \
    op interface \
    ports { adc_vectors15_address0 { O 15 vector } adc_vectors15_ce0 { O 1 bit } adc_vectors15_we0 { O 1 bit } adc_vectors15_d0 { O 14 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'adc_vectors15'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 128 \
    name adc_vectors16 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename adc_vectors16 \
    op interface \
    ports { adc_vectors16_address0 { O 15 vector } adc_vectors16_ce0 { O 1 bit } adc_vectors16_we0 { O 1 bit } adc_vectors16_d0 { O 14 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'adc_vectors16'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 129 \
    name adc_vectors17 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename adc_vectors17 \
    op interface \
    ports { adc_vectors17_address0 { O 15 vector } adc_vectors17_ce0 { O 1 bit } adc_vectors17_we0 { O 1 bit } adc_vectors17_d0 { O 14 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'adc_vectors17'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 130 \
    name adc_vectors18 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename adc_vectors18 \
    op interface \
    ports { adc_vectors18_address0 { O 15 vector } adc_vectors18_ce0 { O 1 bit } adc_vectors18_we0 { O 1 bit } adc_vectors18_d0 { O 14 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'adc_vectors18'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 131 \
    name adc_vectors19 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename adc_vectors19 \
    op interface \
    ports { adc_vectors19_address0 { O 15 vector } adc_vectors19_ce0 { O 1 bit } adc_vectors19_we0 { O 1 bit } adc_vectors19_d0 { O 14 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'adc_vectors19'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 132 \
    name adc_vectors20 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename adc_vectors20 \
    op interface \
    ports { adc_vectors20_address0 { O 15 vector } adc_vectors20_ce0 { O 1 bit } adc_vectors20_we0 { O 1 bit } adc_vectors20_d0 { O 14 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'adc_vectors20'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 133 \
    name adc_vectors21 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename adc_vectors21 \
    op interface \
    ports { adc_vectors21_address0 { O 15 vector } adc_vectors21_ce0 { O 1 bit } adc_vectors21_we0 { O 1 bit } adc_vectors21_d0 { O 14 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'adc_vectors21'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 134 \
    name adc_vectors22 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename adc_vectors22 \
    op interface \
    ports { adc_vectors22_address0 { O 15 vector } adc_vectors22_ce0 { O 1 bit } adc_vectors22_we0 { O 1 bit } adc_vectors22_d0 { O 14 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'adc_vectors22'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 135 \
    name adc_vectors23 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename adc_vectors23 \
    op interface \
    ports { adc_vectors23_address0 { O 15 vector } adc_vectors23_ce0 { O 1 bit } adc_vectors23_we0 { O 1 bit } adc_vectors23_d0 { O 14 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'adc_vectors23'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 136 \
    name adc_vectors24 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename adc_vectors24 \
    op interface \
    ports { adc_vectors24_address0 { O 15 vector } adc_vectors24_ce0 { O 1 bit } adc_vectors24_we0 { O 1 bit } adc_vectors24_d0 { O 14 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'adc_vectors24'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 137 \
    name adc_vectors25 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename adc_vectors25 \
    op interface \
    ports { adc_vectors25_address0 { O 15 vector } adc_vectors25_ce0 { O 1 bit } adc_vectors25_we0 { O 1 bit } adc_vectors25_d0 { O 14 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'adc_vectors25'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 138 \
    name adc_vectors26 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename adc_vectors26 \
    op interface \
    ports { adc_vectors26_address0 { O 15 vector } adc_vectors26_ce0 { O 1 bit } adc_vectors26_we0 { O 1 bit } adc_vectors26_d0 { O 14 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'adc_vectors26'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 139 \
    name adc_vectors27 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename adc_vectors27 \
    op interface \
    ports { adc_vectors27_address0 { O 15 vector } adc_vectors27_ce0 { O 1 bit } adc_vectors27_we0 { O 1 bit } adc_vectors27_d0 { O 14 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'adc_vectors27'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 140 \
    name adc_vectors28 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename adc_vectors28 \
    op interface \
    ports { adc_vectors28_address0 { O 15 vector } adc_vectors28_ce0 { O 1 bit } adc_vectors28_we0 { O 1 bit } adc_vectors28_d0 { O 14 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'adc_vectors28'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 141 \
    name adc_vectors29 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename adc_vectors29 \
    op interface \
    ports { adc_vectors29_address0 { O 15 vector } adc_vectors29_ce0 { O 1 bit } adc_vectors29_we0 { O 1 bit } adc_vectors29_d0 { O 14 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'adc_vectors29'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 142 \
    name adc_vectors30 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename adc_vectors30 \
    op interface \
    ports { adc_vectors30_address0 { O 15 vector } adc_vectors30_ce0 { O 1 bit } adc_vectors30_we0 { O 1 bit } adc_vectors30_d0 { O 14 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'adc_vectors30'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 143 \
    name adc_vectors31 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename adc_vectors31 \
    op interface \
    ports { adc_vectors31_address0 { O 15 vector } adc_vectors31_ce0 { O 1 bit } adc_vectors31_we0 { O 1 bit } adc_vectors31_d0 { O 14 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'adc_vectors31'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 144 \
    name adc_vectors32 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename adc_vectors32 \
    op interface \
    ports { adc_vectors32_address0 { O 15 vector } adc_vectors32_ce0 { O 1 bit } adc_vectors32_we0 { O 1 bit } adc_vectors32_d0 { O 14 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'adc_vectors32'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 145 \
    name adc_vectors33 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename adc_vectors33 \
    op interface \
    ports { adc_vectors33_address0 { O 15 vector } adc_vectors33_ce0 { O 1 bit } adc_vectors33_we0 { O 1 bit } adc_vectors33_d0 { O 14 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'adc_vectors33'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 146 \
    name adc_vectors34 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename adc_vectors34 \
    op interface \
    ports { adc_vectors34_address0 { O 15 vector } adc_vectors34_ce0 { O 1 bit } adc_vectors34_we0 { O 1 bit } adc_vectors34_d0 { O 14 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'adc_vectors34'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 147 \
    name adc_vectors35 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename adc_vectors35 \
    op interface \
    ports { adc_vectors35_address0 { O 15 vector } adc_vectors35_ce0 { O 1 bit } adc_vectors35_we0 { O 1 bit } adc_vectors35_d0 { O 14 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'adc_vectors35'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 148 \
    name adc_vectors36 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename adc_vectors36 \
    op interface \
    ports { adc_vectors36_address0 { O 15 vector } adc_vectors36_ce0 { O 1 bit } adc_vectors36_we0 { O 1 bit } adc_vectors36_d0 { O 14 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'adc_vectors36'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 149 \
    name adc_vectors37 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename adc_vectors37 \
    op interface \
    ports { adc_vectors37_address0 { O 15 vector } adc_vectors37_ce0 { O 1 bit } adc_vectors37_we0 { O 1 bit } adc_vectors37_d0 { O 14 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'adc_vectors37'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 150 \
    name adc_vectors38 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename adc_vectors38 \
    op interface \
    ports { adc_vectors38_address0 { O 15 vector } adc_vectors38_ce0 { O 1 bit } adc_vectors38_we0 { O 1 bit } adc_vectors38_d0 { O 14 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'adc_vectors38'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 151 \
    name adc_vectors39 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename adc_vectors39 \
    op interface \
    ports { adc_vectors39_address0 { O 15 vector } adc_vectors39_ce0 { O 1 bit } adc_vectors39_we0 { O 1 bit } adc_vectors39_d0 { O 14 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'adc_vectors39'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 152 \
    name adc_vectors40 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename adc_vectors40 \
    op interface \
    ports { adc_vectors40_address0 { O 15 vector } adc_vectors40_ce0 { O 1 bit } adc_vectors40_we0 { O 1 bit } adc_vectors40_d0 { O 14 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'adc_vectors40'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 153 \
    name adc_vectors41 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename adc_vectors41 \
    op interface \
    ports { adc_vectors41_address0 { O 15 vector } adc_vectors41_ce0 { O 1 bit } adc_vectors41_we0 { O 1 bit } adc_vectors41_d0 { O 14 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'adc_vectors41'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 154 \
    name adc_vectors42 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename adc_vectors42 \
    op interface \
    ports { adc_vectors42_address0 { O 15 vector } adc_vectors42_ce0 { O 1 bit } adc_vectors42_we0 { O 1 bit } adc_vectors42_d0 { O 14 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'adc_vectors42'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 155 \
    name adc_vectors43 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename adc_vectors43 \
    op interface \
    ports { adc_vectors43_address0 { O 15 vector } adc_vectors43_ce0 { O 1 bit } adc_vectors43_we0 { O 1 bit } adc_vectors43_d0 { O 14 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'adc_vectors43'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 156 \
    name adc_vectors44 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename adc_vectors44 \
    op interface \
    ports { adc_vectors44_address0 { O 15 vector } adc_vectors44_ce0 { O 1 bit } adc_vectors44_we0 { O 1 bit } adc_vectors44_d0 { O 14 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'adc_vectors44'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 157 \
    name adc_vectors45 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename adc_vectors45 \
    op interface \
    ports { adc_vectors45_address0 { O 15 vector } adc_vectors45_ce0 { O 1 bit } adc_vectors45_we0 { O 1 bit } adc_vectors45_d0 { O 14 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'adc_vectors45'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 158 \
    name adc_vectors46 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename adc_vectors46 \
    op interface \
    ports { adc_vectors46_address0 { O 15 vector } adc_vectors46_ce0 { O 1 bit } adc_vectors46_we0 { O 1 bit } adc_vectors46_d0 { O 14 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'adc_vectors46'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 159 \
    name adc_vectors47 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename adc_vectors47 \
    op interface \
    ports { adc_vectors47_address0 { O 15 vector } adc_vectors47_ce0 { O 1 bit } adc_vectors47_we0 { O 1 bit } adc_vectors47_d0 { O 14 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'adc_vectors47'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 160 \
    name adc_vectors48 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename adc_vectors48 \
    op interface \
    ports { adc_vectors48_address0 { O 15 vector } adc_vectors48_ce0 { O 1 bit } adc_vectors48_we0 { O 1 bit } adc_vectors48_d0 { O 14 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'adc_vectors48'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 161 \
    name adc_vectors49 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename adc_vectors49 \
    op interface \
    ports { adc_vectors49_address0 { O 15 vector } adc_vectors49_ce0 { O 1 bit } adc_vectors49_we0 { O 1 bit } adc_vectors49_d0 { O 14 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'adc_vectors49'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 162 \
    name adc_vectors50 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename adc_vectors50 \
    op interface \
    ports { adc_vectors50_address0 { O 15 vector } adc_vectors50_ce0 { O 1 bit } adc_vectors50_we0 { O 1 bit } adc_vectors50_d0 { O 14 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'adc_vectors50'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 163 \
    name adc_vectors51 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename adc_vectors51 \
    op interface \
    ports { adc_vectors51_address0 { O 15 vector } adc_vectors51_ce0 { O 1 bit } adc_vectors51_we0 { O 1 bit } adc_vectors51_d0 { O 14 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'adc_vectors51'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 164 \
    name adc_vectors52 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename adc_vectors52 \
    op interface \
    ports { adc_vectors52_address0 { O 15 vector } adc_vectors52_ce0 { O 1 bit } adc_vectors52_we0 { O 1 bit } adc_vectors52_d0 { O 14 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'adc_vectors52'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 165 \
    name adc_vectors53 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename adc_vectors53 \
    op interface \
    ports { adc_vectors53_address0 { O 15 vector } adc_vectors53_ce0 { O 1 bit } adc_vectors53_we0 { O 1 bit } adc_vectors53_d0 { O 14 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'adc_vectors53'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 166 \
    name adc_vectors54 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename adc_vectors54 \
    op interface \
    ports { adc_vectors54_address0 { O 15 vector } adc_vectors54_ce0 { O 1 bit } adc_vectors54_we0 { O 1 bit } adc_vectors54_d0 { O 14 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'adc_vectors54'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 167 \
    name adc_vectors55 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename adc_vectors55 \
    op interface \
    ports { adc_vectors55_address0 { O 15 vector } adc_vectors55_ce0 { O 1 bit } adc_vectors55_we0 { O 1 bit } adc_vectors55_d0 { O 14 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'adc_vectors55'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 168 \
    name adc_vectors56 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename adc_vectors56 \
    op interface \
    ports { adc_vectors56_address0 { O 15 vector } adc_vectors56_ce0 { O 1 bit } adc_vectors56_we0 { O 1 bit } adc_vectors56_d0 { O 14 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'adc_vectors56'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 169 \
    name adc_vectors57 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename adc_vectors57 \
    op interface \
    ports { adc_vectors57_address0 { O 15 vector } adc_vectors57_ce0 { O 1 bit } adc_vectors57_we0 { O 1 bit } adc_vectors57_d0 { O 14 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'adc_vectors57'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 170 \
    name adc_vectors58 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename adc_vectors58 \
    op interface \
    ports { adc_vectors58_address0 { O 15 vector } adc_vectors58_ce0 { O 1 bit } adc_vectors58_we0 { O 1 bit } adc_vectors58_d0 { O 14 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'adc_vectors58'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 171 \
    name adc_vectors59 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename adc_vectors59 \
    op interface \
    ports { adc_vectors59_address0 { O 15 vector } adc_vectors59_ce0 { O 1 bit } adc_vectors59_we0 { O 1 bit } adc_vectors59_d0 { O 14 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'adc_vectors59'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 172 \
    name adc_vectors60 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename adc_vectors60 \
    op interface \
    ports { adc_vectors60_address0 { O 15 vector } adc_vectors60_ce0 { O 1 bit } adc_vectors60_we0 { O 1 bit } adc_vectors60_d0 { O 14 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'adc_vectors60'"
}
}


# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2 \
    name phi_mul \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_phi_mul \
    op interface \
    ports { phi_mul { I 15 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3 \
    name iFrame \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_iFrame \
    op interface \
    ports { iFrame { I 8 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 5 \
    name cmp26 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_cmp26 \
    op interface \
    ports { cmp26 { I 1 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 6 \
    name cmp31 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_cmp31 \
    op interface \
    ports { cmp31 { I 1 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 7 \
    name cmp37 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_cmp37 \
    op interface \
    ports { cmp37 { I 1 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 8 \
    name cmp43 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_cmp43 \
    op interface \
    ports { cmp43 { I 1 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 9 \
    name cmp49 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_cmp49 \
    op interface \
    ports { cmp49 { I 1 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 10 \
    name cmp55 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_cmp55 \
    op interface \
    ports { cmp55 { I 1 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 11 \
    name cmp61 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_cmp61 \
    op interface \
    ports { cmp61 { I 1 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 12 \
    name cmp67 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_cmp67 \
    op interface \
    ports { cmp67 { I 1 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 13 \
    name cmp73 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_cmp73 \
    op interface \
    ports { cmp73 { I 1 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 14 \
    name cmp79 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_cmp79 \
    op interface \
    ports { cmp79 { I 1 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 15 \
    name cmp85 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_cmp85 \
    op interface \
    ports { cmp85 { I 1 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 16 \
    name cmp91 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_cmp91 \
    op interface \
    ports { cmp91 { I 1 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 17 \
    name cmp97 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_cmp97 \
    op interface \
    ports { cmp97 { I 1 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 18 \
    name cmp103 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_cmp103 \
    op interface \
    ports { cmp103 { I 1 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 19 \
    name cmp109 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_cmp109 \
    op interface \
    ports { cmp109 { I 1 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 20 \
    name cmp115 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_cmp115 \
    op interface \
    ports { cmp115 { I 1 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 21 \
    name cmp121 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_cmp121 \
    op interface \
    ports { cmp121 { I 1 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 22 \
    name cmp127 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_cmp127 \
    op interface \
    ports { cmp127 { I 1 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 23 \
    name cmp133 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_cmp133 \
    op interface \
    ports { cmp133 { I 1 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 24 \
    name cmp139 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_cmp139 \
    op interface \
    ports { cmp139 { I 1 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 25 \
    name cmp145 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_cmp145 \
    op interface \
    ports { cmp145 { I 1 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 26 \
    name cmp151 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_cmp151 \
    op interface \
    ports { cmp151 { I 1 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 27 \
    name cmp157 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_cmp157 \
    op interface \
    ports { cmp157 { I 1 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 28 \
    name cmp163 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_cmp163 \
    op interface \
    ports { cmp163 { I 1 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 29 \
    name cmp169 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_cmp169 \
    op interface \
    ports { cmp169 { I 1 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 30 \
    name cmp175 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_cmp175 \
    op interface \
    ports { cmp175 { I 1 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 31 \
    name cmp181 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_cmp181 \
    op interface \
    ports { cmp181 { I 1 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 32 \
    name cmp187 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_cmp187 \
    op interface \
    ports { cmp187 { I 1 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 33 \
    name cmp193 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_cmp193 \
    op interface \
    ports { cmp193 { I 1 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 34 \
    name cmp199 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_cmp199 \
    op interface \
    ports { cmp199 { I 1 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 35 \
    name cmp205 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_cmp205 \
    op interface \
    ports { cmp205 { I 1 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 36 \
    name cmp211 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_cmp211 \
    op interface \
    ports { cmp211 { I 1 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 37 \
    name cmp217 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_cmp217 \
    op interface \
    ports { cmp217 { I 1 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 38 \
    name cmp223 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_cmp223 \
    op interface \
    ports { cmp223 { I 1 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 39 \
    name cmp229 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_cmp229 \
    op interface \
    ports { cmp229 { I 1 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 40 \
    name cmp235 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_cmp235 \
    op interface \
    ports { cmp235 { I 1 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 41 \
    name cmp241 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_cmp241 \
    op interface \
    ports { cmp241 { I 1 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 42 \
    name cmp247 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_cmp247 \
    op interface \
    ports { cmp247 { I 1 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 43 \
    name cmp253 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_cmp253 \
    op interface \
    ports { cmp253 { I 1 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 44 \
    name cmp259 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_cmp259 \
    op interface \
    ports { cmp259 { I 1 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 45 \
    name cmp265 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_cmp265 \
    op interface \
    ports { cmp265 { I 1 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 46 \
    name cmp271 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_cmp271 \
    op interface \
    ports { cmp271 { I 1 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 47 \
    name cmp277 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_cmp277 \
    op interface \
    ports { cmp277 { I 1 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 48 \
    name cmp283 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_cmp283 \
    op interface \
    ports { cmp283 { I 1 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 49 \
    name cmp289 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_cmp289 \
    op interface \
    ports { cmp289 { I 1 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 50 \
    name cmp295 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_cmp295 \
    op interface \
    ports { cmp295 { I 1 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 51 \
    name cmp301 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_cmp301 \
    op interface \
    ports { cmp301 { I 1 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 52 \
    name cmp307 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_cmp307 \
    op interface \
    ports { cmp307 { I 1 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 53 \
    name cmp313 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_cmp313 \
    op interface \
    ports { cmp313 { I 1 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 54 \
    name cmp319 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_cmp319 \
    op interface \
    ports { cmp319 { I 1 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 55 \
    name cmp325 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_cmp325 \
    op interface \
    ports { cmp325 { I 1 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 56 \
    name cmp331 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_cmp331 \
    op interface \
    ports { cmp331 { I 1 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 57 \
    name cmp337 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_cmp337 \
    op interface \
    ports { cmp337 { I 1 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 58 \
    name cmp343 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_cmp343 \
    op interface \
    ports { cmp343 { I 1 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 59 \
    name cmp349 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_cmp349 \
    op interface \
    ports { cmp349 { I 1 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 60 \
    name cmp355 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_cmp355 \
    op interface \
    ports { cmp355 { I 1 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 61 \
    name cmp361 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_cmp361 \
    op interface \
    ports { cmp361 { I 1 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 62 \
    name cmp367 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_cmp367 \
    op interface \
    ports { cmp367 { I 1 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 63 \
    name cmp373 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_cmp373 \
    op interface \
    ports { cmp373 { I 1 vector } } \
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


