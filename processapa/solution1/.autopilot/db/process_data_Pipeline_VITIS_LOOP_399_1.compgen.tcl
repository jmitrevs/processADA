# This script segment is generated automatically by AutoPilot

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
    id 362 \
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
    id 363 \
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
    id 364 \
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
    id 365 \
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
    id 366 \
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
    id 367 \
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
    id 368 \
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
    id 369 \
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
    id 370 \
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
    id 371 \
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
    id 372 \
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
    id 373 \
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
    id 374 \
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
    id 375 \
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
    id 376 \
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
    id 377 \
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
    id 378 \
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
    id 379 \
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
    id 380 \
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
    id 381 \
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
    id 382 \
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
    id 383 \
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
    id 384 \
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
    id 385 \
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
    id 386 \
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
    id 387 \
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
    id 388 \
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
    id 389 \
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
    id 390 \
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
    id 391 \
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
    id 392 \
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
    id 393 \
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
    id 394 \
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
    id 395 \
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
    id 396 \
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
    id 397 \
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
    id 398 \
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
    id 399 \
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
    id 400 \
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
    id 401 \
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
    id 402 \
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
    id 403 \
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
    id 404 \
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
    id 405 \
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
    id 406 \
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
    id 407 \
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
    id 408 \
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
    id 409 \
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
    id 410 \
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
    id 411 \
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
    id 412 \
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
    id 413 \
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
    id 414 \
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
    id 415 \
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
    id 416 \
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
    id 417 \
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
    id 418 \
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
    id 419 \
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
    id 420 \
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
    id 421 \
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
    id 422 \
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
    id 423 \
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
    id 424 \
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
    id 425 \
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
    id 426 \
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
    id 427 \
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
    id 428 \
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
    id 429 \
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
    id 430 \
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
    id 431 \
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
    id 432 \
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
    id 433 \
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
    id 434 \
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
    id 435 \
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
    id 436 \
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
    id 437 \
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
    id 438 \
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
    id 439 \
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
    id 440 \
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
    id 441 \
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
    id 442 \
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
    id 443 \
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
    id 444 \
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
    id 445 \
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
    id 446 \
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
    id 447 \
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
    id 448 \
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
    id 449 \
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
    id 450 \
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
    id 451 \
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
    id 452 \
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
    id 453 \
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
    id 454 \
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
    id 455 \
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
    id 456 \
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
    id 457 \
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
    id 458 \
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
    id 459 \
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
    id 460 \
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
    id 461 \
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
    id 462 \
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
    id 463 \
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
    id 464 \
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
    id 465 \
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
    id 466 \
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
    id 467 \
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
    id 468 \
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
    id 469 \
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
    id 470 \
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
    id 471 \
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
    id 358 \
    name zext_ln399 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_zext_ln399 \
    op interface \
    ports { zext_ln399 { I 14 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 359 \
    name phi_mul23 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_phi_mul23 \
    op interface \
    ports { phi_mul23 { I 15 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 360 \
    name mul_ln405 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_mul_ln405 \
    op interface \
    ports { mul_ln405 { I 22 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 361 \
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


