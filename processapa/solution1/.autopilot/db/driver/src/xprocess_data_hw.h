// ==============================================================
// Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2023.1 (64-bit)
// Tool Version Limit: 2023.05
// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
// 
// ==============================================================
// control
// 0x00 : Control signals
//        bit 0  - ap_start (Read/Write/COH)
//        bit 1  - ap_done (Read)
//        bit 2  - ap_idle (Read)
//        bit 3  - ap_ready (Read/COR)
//        bit 4  - ap_continue (Read/Write/SC)
//        bit 7  - auto_restart (Read/Write)
//        bit 9  - interrupt (Read)
//        others - reserved
// 0x04 : Global Interrupt Enable Register
//        bit 0  - Global Interrupt Enable (Read/Write)
//        others - reserved
// 0x08 : IP Interrupt Enable Register (Read/Write)
//        bit 0 - enable ap_done interrupt (Read/Write)
//        bit 1 - enable ap_ready interrupt (Read/Write)
//        others - reserved
// 0x0c : IP Interrupt Status Register (Read/TOW)
//        bit 0 - ap_done (Read/TOW)
//        bit 1 - ap_ready (Read/TOW)
//        others - reserved
// 0x10 : Data signal of infile_size
//        bit 31~0 - infile_size[31:0] (Read/Write)
// 0x14 : reserved
// 0x18 : Data signal of infiledata
//        bit 31~0 - infiledata[31:0] (Read/Write)
// 0x1c : Data signal of infiledata
//        bit 31~0 - infiledata[63:32] (Read/Write)
// 0x20 : reserved
// 0x24 : Data signal of chanmap_fNAPAs
//        bit 31~0 - chanmap_fNAPAs[31:0] (Read/Write)
// 0x28 : reserved
// 0x2c : Data signal of chanmap_fNChans
//        bit 31~0 - chanmap_fNChans[31:0] (Read/Write)
// 0x30 : reserved
// 0x34 : Data signal of chanmap_fAPANameFromCrate
//        bit 31~0 - chanmap_fAPANameFromCrate[31:0] (Read/Write)
// 0x38 : Data signal of chanmap_fAPANameFromCrate
//        bit 31~0 - chanmap_fAPANameFromCrate[63:32] (Read/Write)
// 0x3c : reserved
// 0x40 : Data signal of chanmap_fUprightFromCrate
//        bit 31~0 - chanmap_fUprightFromCrate[31:0] (Read/Write)
// 0x44 : Data signal of chanmap_fUprightFromCrate
//        bit 31~0 - chanmap_fUprightFromCrate[63:32] (Read/Write)
// 0x48 : reserved
// 0x4c : Data signal of chanmap_fCrateFromTPCSet
//        bit 31~0 - chanmap_fCrateFromTPCSet[31:0] (Read/Write)
// 0x50 : Data signal of chanmap_fCrateFromTPCSet
//        bit 31~0 - chanmap_fCrateFromTPCSet[63:32] (Read/Write)
// 0x54 : reserved
// 0x58 : Data signal of chanmap_fTPCSetFromCrate
//        bit 31~0 - chanmap_fTPCSetFromCrate[31:0] (Read/Write)
// 0x5c : Data signal of chanmap_fTPCSetFromCrate
//        bit 31~0 - chanmap_fTPCSetFromCrate[63:32] (Read/Write)
// 0x60 : reserved
// 0x64 : Data signal of chanmap_DetToChanInfo
//        bit 31~0 - chanmap_DetToChanInfo[31:0] (Read/Write)
// 0x68 : Data signal of chanmap_DetToChanInfo
//        bit 31~0 - chanmap_DetToChanInfo[63:32] (Read/Write)
// 0x6c : reserved
// 0x70 : Data signal of outdata
//        bit 31~0 - outdata[31:0] (Read/Write)
// 0x74 : Data signal of outdata
//        bit 31~0 - outdata[63:32] (Read/Write)
// 0x78 : reserved
// (SC = Self Clear, COR = Clear on Read, TOW = Toggle on Write, COH = Clear on Handshake)

#define XPROCESS_DATA_CONTROL_ADDR_AP_CTRL                        0x00
#define XPROCESS_DATA_CONTROL_ADDR_GIE                            0x04
#define XPROCESS_DATA_CONTROL_ADDR_IER                            0x08
#define XPROCESS_DATA_CONTROL_ADDR_ISR                            0x0c
#define XPROCESS_DATA_CONTROL_ADDR_INFILE_SIZE_DATA               0x10
#define XPROCESS_DATA_CONTROL_BITS_INFILE_SIZE_DATA               32
#define XPROCESS_DATA_CONTROL_ADDR_INFILEDATA_DATA                0x18
#define XPROCESS_DATA_CONTROL_BITS_INFILEDATA_DATA                64
#define XPROCESS_DATA_CONTROL_ADDR_CHANMAP_FNAPAS_DATA            0x24
#define XPROCESS_DATA_CONTROL_BITS_CHANMAP_FNAPAS_DATA            32
#define XPROCESS_DATA_CONTROL_ADDR_CHANMAP_FNCHANS_DATA           0x2c
#define XPROCESS_DATA_CONTROL_BITS_CHANMAP_FNCHANS_DATA           32
#define XPROCESS_DATA_CONTROL_ADDR_CHANMAP_FAPANAMEFROMCRATE_DATA 0x34
#define XPROCESS_DATA_CONTROL_BITS_CHANMAP_FAPANAMEFROMCRATE_DATA 64
#define XPROCESS_DATA_CONTROL_ADDR_CHANMAP_FUPRIGHTFROMCRATE_DATA 0x40
#define XPROCESS_DATA_CONTROL_BITS_CHANMAP_FUPRIGHTFROMCRATE_DATA 64
#define XPROCESS_DATA_CONTROL_ADDR_CHANMAP_FCRATEFROMTPCSET_DATA  0x4c
#define XPROCESS_DATA_CONTROL_BITS_CHANMAP_FCRATEFROMTPCSET_DATA  64
#define XPROCESS_DATA_CONTROL_ADDR_CHANMAP_FTPCSETFROMCRATE_DATA  0x58
#define XPROCESS_DATA_CONTROL_BITS_CHANMAP_FTPCSETFROMCRATE_DATA  64
#define XPROCESS_DATA_CONTROL_ADDR_CHANMAP_DETTOCHANINFO_DATA     0x64
#define XPROCESS_DATA_CONTROL_BITS_CHANMAP_DETTOCHANINFO_DATA     64
#define XPROCESS_DATA_CONTROL_ADDR_OUTDATA_DATA                   0x70
#define XPROCESS_DATA_CONTROL_BITS_OUTDATA_DATA                   64

