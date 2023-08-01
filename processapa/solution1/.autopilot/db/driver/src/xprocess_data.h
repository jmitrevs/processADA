// ==============================================================
// Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2023.1 (64-bit)
// Tool Version Limit: 2023.05
// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
// 
// ==============================================================
#ifndef XPROCESS_DATA_H
#define XPROCESS_DATA_H

#ifdef __cplusplus
extern "C" {
#endif

/***************************** Include Files *********************************/
#ifndef __linux__
#include "xil_types.h"
#include "xil_assert.h"
#include "xstatus.h"
#include "xil_io.h"
#else
#include <stdint.h>
#include <assert.h>
#include <dirent.h>
#include <fcntl.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <sys/mman.h>
#include <unistd.h>
#include <stddef.h>
#endif
#include "xprocess_data_hw.h"

/**************************** Type Definitions ******************************/
#ifdef __linux__
typedef uint8_t u8;
typedef uint16_t u16;
typedef uint32_t u32;
typedef uint64_t u64;
#else
typedef struct {
    u16 DeviceId;
    u64 Control_BaseAddress;
} XProcess_data_Config;
#endif

typedef struct {
    u64 Control_BaseAddress;
    u32 IsReady;
} XProcess_data;

typedef u32 word_type;

/***************** Macros (Inline Functions) Definitions *********************/
#ifndef __linux__
#define XProcess_data_WriteReg(BaseAddress, RegOffset, Data) \
    Xil_Out32((BaseAddress) + (RegOffset), (u32)(Data))
#define XProcess_data_ReadReg(BaseAddress, RegOffset) \
    Xil_In32((BaseAddress) + (RegOffset))
#else
#define XProcess_data_WriteReg(BaseAddress, RegOffset, Data) \
    *(volatile u32*)((BaseAddress) + (RegOffset)) = (u32)(Data)
#define XProcess_data_ReadReg(BaseAddress, RegOffset) \
    *(volatile u32*)((BaseAddress) + (RegOffset))

#define Xil_AssertVoid(expr)    assert(expr)
#define Xil_AssertNonvoid(expr) assert(expr)

#define XST_SUCCESS             0
#define XST_DEVICE_NOT_FOUND    2
#define XST_OPEN_DEVICE_FAILED  3
#define XIL_COMPONENT_IS_READY  1
#endif

/************************** Function Prototypes *****************************/
#ifndef __linux__
int XProcess_data_Initialize(XProcess_data *InstancePtr, u16 DeviceId);
XProcess_data_Config* XProcess_data_LookupConfig(u16 DeviceId);
int XProcess_data_CfgInitialize(XProcess_data *InstancePtr, XProcess_data_Config *ConfigPtr);
#else
int XProcess_data_Initialize(XProcess_data *InstancePtr, const char* InstanceName);
int XProcess_data_Release(XProcess_data *InstancePtr);
#endif

void XProcess_data_Start(XProcess_data *InstancePtr);
u32 XProcess_data_IsDone(XProcess_data *InstancePtr);
u32 XProcess_data_IsIdle(XProcess_data *InstancePtr);
u32 XProcess_data_IsReady(XProcess_data *InstancePtr);
void XProcess_data_Continue(XProcess_data *InstancePtr);
void XProcess_data_EnableAutoRestart(XProcess_data *InstancePtr);
void XProcess_data_DisableAutoRestart(XProcess_data *InstancePtr);

void XProcess_data_Set_infile_size(XProcess_data *InstancePtr, u32 Data);
u32 XProcess_data_Get_infile_size(XProcess_data *InstancePtr);
void XProcess_data_Set_infiledata(XProcess_data *InstancePtr, u64 Data);
u64 XProcess_data_Get_infiledata(XProcess_data *InstancePtr);
void XProcess_data_Set_chanmap_fNAPAs(XProcess_data *InstancePtr, u32 Data);
u32 XProcess_data_Get_chanmap_fNAPAs(XProcess_data *InstancePtr);
void XProcess_data_Set_chanmap_fNChans(XProcess_data *InstancePtr, u32 Data);
u32 XProcess_data_Get_chanmap_fNChans(XProcess_data *InstancePtr);
void XProcess_data_Set_chanmap_fAPANameFromCrate(XProcess_data *InstancePtr, u64 Data);
u64 XProcess_data_Get_chanmap_fAPANameFromCrate(XProcess_data *InstancePtr);
void XProcess_data_Set_chanmap_fUprightFromCrate(XProcess_data *InstancePtr, u64 Data);
u64 XProcess_data_Get_chanmap_fUprightFromCrate(XProcess_data *InstancePtr);
void XProcess_data_Set_chanmap_fCrateFromTPCSet(XProcess_data *InstancePtr, u64 Data);
u64 XProcess_data_Get_chanmap_fCrateFromTPCSet(XProcess_data *InstancePtr);
void XProcess_data_Set_chanmap_fTPCSetFromCrate(XProcess_data *InstancePtr, u64 Data);
u64 XProcess_data_Get_chanmap_fTPCSetFromCrate(XProcess_data *InstancePtr);
void XProcess_data_Set_chanmap_DetToChanInfo(XProcess_data *InstancePtr, u64 Data);
u64 XProcess_data_Get_chanmap_DetToChanInfo(XProcess_data *InstancePtr);
void XProcess_data_Set_outdata(XProcess_data *InstancePtr, u64 Data);
u64 XProcess_data_Get_outdata(XProcess_data *InstancePtr);

void XProcess_data_InterruptGlobalEnable(XProcess_data *InstancePtr);
void XProcess_data_InterruptGlobalDisable(XProcess_data *InstancePtr);
void XProcess_data_InterruptEnable(XProcess_data *InstancePtr, u32 Mask);
void XProcess_data_InterruptDisable(XProcess_data *InstancePtr, u32 Mask);
void XProcess_data_InterruptClear(XProcess_data *InstancePtr, u32 Mask);
u32 XProcess_data_InterruptGetEnabled(XProcess_data *InstancePtr);
u32 XProcess_data_InterruptGetStatus(XProcess_data *InstancePtr);

#ifdef __cplusplus
}
#endif

#endif
