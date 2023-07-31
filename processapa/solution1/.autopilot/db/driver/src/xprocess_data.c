// ==============================================================
// Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2023.1 (64-bit)
// Tool Version Limit: 2023.05
// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
// 
// ==============================================================
/***************************** Include Files *********************************/
#include "xprocess_data.h"

/************************** Function Implementation *************************/
#ifndef __linux__
int XProcess_data_CfgInitialize(XProcess_data *InstancePtr, XProcess_data_Config *ConfigPtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(ConfigPtr != NULL);

    InstancePtr->Control_BaseAddress = ConfigPtr->Control_BaseAddress;
    InstancePtr->IsReady = XIL_COMPONENT_IS_READY;

    return XST_SUCCESS;
}
#endif

void XProcess_data_Start(XProcess_data *InstancePtr) {
    u32 Data;

    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XProcess_data_ReadReg(InstancePtr->Control_BaseAddress, XPROCESS_DATA_CONTROL_ADDR_AP_CTRL) & 0x80;
    XProcess_data_WriteReg(InstancePtr->Control_BaseAddress, XPROCESS_DATA_CONTROL_ADDR_AP_CTRL, Data | 0x01);
}

u32 XProcess_data_IsDone(XProcess_data *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XProcess_data_ReadReg(InstancePtr->Control_BaseAddress, XPROCESS_DATA_CONTROL_ADDR_AP_CTRL);
    return (Data >> 1) & 0x1;
}

u32 XProcess_data_IsIdle(XProcess_data *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XProcess_data_ReadReg(InstancePtr->Control_BaseAddress, XPROCESS_DATA_CONTROL_ADDR_AP_CTRL);
    return (Data >> 2) & 0x1;
}

u32 XProcess_data_IsReady(XProcess_data *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XProcess_data_ReadReg(InstancePtr->Control_BaseAddress, XPROCESS_DATA_CONTROL_ADDR_AP_CTRL);
    // check ap_start to see if the pcore is ready for next input
    return !(Data & 0x1);
}

void XProcess_data_Continue(XProcess_data *InstancePtr) {
    u32 Data;

    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XProcess_data_ReadReg(InstancePtr->Control_BaseAddress, XPROCESS_DATA_CONTROL_ADDR_AP_CTRL) & 0x80;
    XProcess_data_WriteReg(InstancePtr->Control_BaseAddress, XPROCESS_DATA_CONTROL_ADDR_AP_CTRL, Data | 0x10);
}

void XProcess_data_EnableAutoRestart(XProcess_data *InstancePtr) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XProcess_data_WriteReg(InstancePtr->Control_BaseAddress, XPROCESS_DATA_CONTROL_ADDR_AP_CTRL, 0x80);
}

void XProcess_data_DisableAutoRestart(XProcess_data *InstancePtr) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XProcess_data_WriteReg(InstancePtr->Control_BaseAddress, XPROCESS_DATA_CONTROL_ADDR_AP_CTRL, 0);
}

void XProcess_data_Set_infile_size(XProcess_data *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XProcess_data_WriteReg(InstancePtr->Control_BaseAddress, XPROCESS_DATA_CONTROL_ADDR_INFILE_SIZE_DATA, Data);
}

u32 XProcess_data_Get_infile_size(XProcess_data *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XProcess_data_ReadReg(InstancePtr->Control_BaseAddress, XPROCESS_DATA_CONTROL_ADDR_INFILE_SIZE_DATA);
    return Data;
}

void XProcess_data_Set_infiledata(XProcess_data *InstancePtr, u64 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XProcess_data_WriteReg(InstancePtr->Control_BaseAddress, XPROCESS_DATA_CONTROL_ADDR_INFILEDATA_DATA, (u32)(Data));
    XProcess_data_WriteReg(InstancePtr->Control_BaseAddress, XPROCESS_DATA_CONTROL_ADDR_INFILEDATA_DATA + 4, (u32)(Data >> 32));
}

u64 XProcess_data_Get_infiledata(XProcess_data *InstancePtr) {
    u64 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XProcess_data_ReadReg(InstancePtr->Control_BaseAddress, XPROCESS_DATA_CONTROL_ADDR_INFILEDATA_DATA);
    Data += (u64)XProcess_data_ReadReg(InstancePtr->Control_BaseAddress, XPROCESS_DATA_CONTROL_ADDR_INFILEDATA_DATA + 4) << 32;
    return Data;
}

void XProcess_data_Set_outdata(XProcess_data *InstancePtr, u64 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XProcess_data_WriteReg(InstancePtr->Control_BaseAddress, XPROCESS_DATA_CONTROL_ADDR_OUTDATA_DATA, (u32)(Data));
    XProcess_data_WriteReg(InstancePtr->Control_BaseAddress, XPROCESS_DATA_CONTROL_ADDR_OUTDATA_DATA + 4, (u32)(Data >> 32));
}

u64 XProcess_data_Get_outdata(XProcess_data *InstancePtr) {
    u64 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XProcess_data_ReadReg(InstancePtr->Control_BaseAddress, XPROCESS_DATA_CONTROL_ADDR_OUTDATA_DATA);
    Data += (u64)XProcess_data_ReadReg(InstancePtr->Control_BaseAddress, XPROCESS_DATA_CONTROL_ADDR_OUTDATA_DATA + 4) << 32;
    return Data;
}

void XProcess_data_InterruptGlobalEnable(XProcess_data *InstancePtr) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XProcess_data_WriteReg(InstancePtr->Control_BaseAddress, XPROCESS_DATA_CONTROL_ADDR_GIE, 1);
}

void XProcess_data_InterruptGlobalDisable(XProcess_data *InstancePtr) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XProcess_data_WriteReg(InstancePtr->Control_BaseAddress, XPROCESS_DATA_CONTROL_ADDR_GIE, 0);
}

void XProcess_data_InterruptEnable(XProcess_data *InstancePtr, u32 Mask) {
    u32 Register;

    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Register =  XProcess_data_ReadReg(InstancePtr->Control_BaseAddress, XPROCESS_DATA_CONTROL_ADDR_IER);
    XProcess_data_WriteReg(InstancePtr->Control_BaseAddress, XPROCESS_DATA_CONTROL_ADDR_IER, Register | Mask);
}

void XProcess_data_InterruptDisable(XProcess_data *InstancePtr, u32 Mask) {
    u32 Register;

    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Register =  XProcess_data_ReadReg(InstancePtr->Control_BaseAddress, XPROCESS_DATA_CONTROL_ADDR_IER);
    XProcess_data_WriteReg(InstancePtr->Control_BaseAddress, XPROCESS_DATA_CONTROL_ADDR_IER, Register & (~Mask));
}

void XProcess_data_InterruptClear(XProcess_data *InstancePtr, u32 Mask) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XProcess_data_WriteReg(InstancePtr->Control_BaseAddress, XPROCESS_DATA_CONTROL_ADDR_ISR, Mask);
}

u32 XProcess_data_InterruptGetEnabled(XProcess_data *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return XProcess_data_ReadReg(InstancePtr->Control_BaseAddress, XPROCESS_DATA_CONTROL_ADDR_IER);
}

u32 XProcess_data_InterruptGetStatus(XProcess_data *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return XProcess_data_ReadReg(InstancePtr->Control_BaseAddress, XPROCESS_DATA_CONTROL_ADDR_ISR);
}

