// ==============================================================
// Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2022.2.2 (64-bit)
// Tool Version Limit: 2019.12
// Copyright 1986-2023 Xilinx, Inc. All Rights Reserved.
// ==============================================================
/***************************** Include Files *********************************/
#include "xsink_from_aie.h"

/************************** Function Implementation *************************/
#ifndef __linux__
int XSink_from_aie_CfgInitialize(XSink_from_aie *InstancePtr, XSink_from_aie_Config *ConfigPtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(ConfigPtr != NULL);

    InstancePtr->Control_BaseAddress = ConfigPtr->Control_BaseAddress;
    InstancePtr->IsReady = XIL_COMPONENT_IS_READY;

    return XST_SUCCESS;
}
#endif

void XSink_from_aie_Start(XSink_from_aie *InstancePtr) {
    u32 Data;

    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XSink_from_aie_ReadReg(InstancePtr->Control_BaseAddress, XSINK_FROM_AIE_CONTROL_ADDR_AP_CTRL) & 0x80;
    XSink_from_aie_WriteReg(InstancePtr->Control_BaseAddress, XSINK_FROM_AIE_CONTROL_ADDR_AP_CTRL, Data | 0x01);
}

u32 XSink_from_aie_IsDone(XSink_from_aie *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XSink_from_aie_ReadReg(InstancePtr->Control_BaseAddress, XSINK_FROM_AIE_CONTROL_ADDR_AP_CTRL);
    return (Data >> 1) & 0x1;
}

u32 XSink_from_aie_IsIdle(XSink_from_aie *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XSink_from_aie_ReadReg(InstancePtr->Control_BaseAddress, XSINK_FROM_AIE_CONTROL_ADDR_AP_CTRL);
    return (Data >> 2) & 0x1;
}

u32 XSink_from_aie_IsReady(XSink_from_aie *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XSink_from_aie_ReadReg(InstancePtr->Control_BaseAddress, XSINK_FROM_AIE_CONTROL_ADDR_AP_CTRL);
    // check ap_start to see if the pcore is ready for next input
    return !(Data & 0x1);
}

void XSink_from_aie_Continue(XSink_from_aie *InstancePtr) {
    u32 Data;

    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XSink_from_aie_ReadReg(InstancePtr->Control_BaseAddress, XSINK_FROM_AIE_CONTROL_ADDR_AP_CTRL) & 0x80;
    XSink_from_aie_WriteReg(InstancePtr->Control_BaseAddress, XSINK_FROM_AIE_CONTROL_ADDR_AP_CTRL, Data | 0x10);
}

void XSink_from_aie_EnableAutoRestart(XSink_from_aie *InstancePtr) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XSink_from_aie_WriteReg(InstancePtr->Control_BaseAddress, XSINK_FROM_AIE_CONTROL_ADDR_AP_CTRL, 0x80);
}

void XSink_from_aie_DisableAutoRestart(XSink_from_aie *InstancePtr) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XSink_from_aie_WriteReg(InstancePtr->Control_BaseAddress, XSINK_FROM_AIE_CONTROL_ADDR_AP_CTRL, 0);
}

void XSink_from_aie_Set_output_r(XSink_from_aie *InstancePtr, u64 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XSink_from_aie_WriteReg(InstancePtr->Control_BaseAddress, XSINK_FROM_AIE_CONTROL_ADDR_OUTPUT_R_DATA, (u32)(Data));
    XSink_from_aie_WriteReg(InstancePtr->Control_BaseAddress, XSINK_FROM_AIE_CONTROL_ADDR_OUTPUT_R_DATA + 4, (u32)(Data >> 32));
}

u64 XSink_from_aie_Get_output_r(XSink_from_aie *InstancePtr) {
    u64 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XSink_from_aie_ReadReg(InstancePtr->Control_BaseAddress, XSINK_FROM_AIE_CONTROL_ADDR_OUTPUT_R_DATA);
    Data += (u64)XSink_from_aie_ReadReg(InstancePtr->Control_BaseAddress, XSINK_FROM_AIE_CONTROL_ADDR_OUTPUT_R_DATA + 4) << 32;
    return Data;
}

void XSink_from_aie_Set_size(XSink_from_aie *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XSink_from_aie_WriteReg(InstancePtr->Control_BaseAddress, XSINK_FROM_AIE_CONTROL_ADDR_SIZE_DATA, Data);
}

u32 XSink_from_aie_Get_size(XSink_from_aie *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XSink_from_aie_ReadReg(InstancePtr->Control_BaseAddress, XSINK_FROM_AIE_CONTROL_ADDR_SIZE_DATA);
    return Data;
}

void XSink_from_aie_InterruptGlobalEnable(XSink_from_aie *InstancePtr) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XSink_from_aie_WriteReg(InstancePtr->Control_BaseAddress, XSINK_FROM_AIE_CONTROL_ADDR_GIE, 1);
}

void XSink_from_aie_InterruptGlobalDisable(XSink_from_aie *InstancePtr) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XSink_from_aie_WriteReg(InstancePtr->Control_BaseAddress, XSINK_FROM_AIE_CONTROL_ADDR_GIE, 0);
}

void XSink_from_aie_InterruptEnable(XSink_from_aie *InstancePtr, u32 Mask) {
    u32 Register;

    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Register =  XSink_from_aie_ReadReg(InstancePtr->Control_BaseAddress, XSINK_FROM_AIE_CONTROL_ADDR_IER);
    XSink_from_aie_WriteReg(InstancePtr->Control_BaseAddress, XSINK_FROM_AIE_CONTROL_ADDR_IER, Register | Mask);
}

void XSink_from_aie_InterruptDisable(XSink_from_aie *InstancePtr, u32 Mask) {
    u32 Register;

    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Register =  XSink_from_aie_ReadReg(InstancePtr->Control_BaseAddress, XSINK_FROM_AIE_CONTROL_ADDR_IER);
    XSink_from_aie_WriteReg(InstancePtr->Control_BaseAddress, XSINK_FROM_AIE_CONTROL_ADDR_IER, Register & (~Mask));
}

void XSink_from_aie_InterruptClear(XSink_from_aie *InstancePtr, u32 Mask) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XSink_from_aie_WriteReg(InstancePtr->Control_BaseAddress, XSINK_FROM_AIE_CONTROL_ADDR_ISR, Mask);
}

u32 XSink_from_aie_InterruptGetEnabled(XSink_from_aie *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return XSink_from_aie_ReadReg(InstancePtr->Control_BaseAddress, XSINK_FROM_AIE_CONTROL_ADDR_IER);
}

u32 XSink_from_aie_InterruptGetStatus(XSink_from_aie *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return XSink_from_aie_ReadReg(InstancePtr->Control_BaseAddress, XSINK_FROM_AIE_CONTROL_ADDR_ISR);
}

