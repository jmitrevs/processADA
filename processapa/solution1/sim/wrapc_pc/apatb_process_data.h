// ==============================================================
// Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2023.1 (64-bit)
// Tool Version Limit: 2023.05
// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
// 
// ==============================================================

extern "C" void AESL_WRAP_process_data (
int infile_size,
volatile void* infiledata,
volatile void* chanmap_fNAPAs,
volatile void* chanmap_fNChans,
volatile void* chanmap_fAPANameFromCrate,
volatile void* chanmap_fUprightFromCrate,
volatile void* chanmap_fCrateFromTPCSet,
volatile void* chanmap_fTPCSetFromCrate,
volatile void* chanmap_DetToChanInfo,
volatile void* outdata);
