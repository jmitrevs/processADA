############################################################
## This file is generated automatically by Vitis HLS.
## Please DO NOT edit it.
## Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
## Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
############################################################
open_project processapa
set_top process_data
add_files FDHDChannelMapSP.cxx
add_files kernel.cpp
add_files myproject.cpp
add_files -tb FDHDChannelMap_v1_visiblewires.txt -cflags "-Wno-unknown-pragmas"
add_files -tb FDHDChannelMap_v1_wireends.txt -cflags "-Wno-unknown-pragmas"
add_files -tb FDHD_CrateMap_v1.txt -cflags "-Wno-unknown-pragmas"
add_files -tb ../../workspace/datfiles/TriggerRecord00001_0000TPCAPA000.dat -cflags "-Wno-unknown-pragmas"
add_files -tb ../../workspace/datfiles/TriggerRecord00001_0000TPCAPA001.dat -cflags "-Wno-unknown-pragmas"
add_files -tb ../../workspace/datfiles/TriggerRecord00001_0000TPCAPA002.dat -cflags "-Wno-unknown-pragmas"
add_files -tb ../../workspace/datfiles/TriggerRecord00001_0000TPCAPA003.dat -cflags "-Wno-unknown-pragmas"
add_files -tb processAPA.cxx -cflags "-Wno-unknown-pragmas"
add_files -tb ../../workspace/processAPA/weights -cflags "-Wno-unknown-pragmas"
open_solution "solution1" -flow_target vitis
set_part {xcvu11p-flga2577-1-e}
create_clock -period 10 -name default
config_interface -m_axi_alignment_byte_size 64 -m_axi_latency 64 -m_axi_max_widen_bitwidth 512
config_rtl -register_reset_num 3
source "./processapa/solution1/directives.tcl"
csim_design -clean
csynth_design
cosim_design
export_design -format ip_catalog
