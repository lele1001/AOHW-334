// ==============================================================
// Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2022.2.2 (64-bit)
// Tool Version Limit: 2019.12
// Copyright 1986-2023 Xilinx, Inc. All Rights Reserved.
// ==============================================================
#ifndef XSINK_FROM_AIE_H
#define XSINK_FROM_AIE_H

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
#include "xsink_from_aie_hw.h"

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
} XSink_from_aie_Config;
#endif

typedef struct {
    u64 Control_BaseAddress;
    u32 IsReady;
} XSink_from_aie;

typedef u32 word_type;

/***************** Macros (Inline Functions) Definitions *********************/
#ifndef __linux__
#define XSink_from_aie_WriteReg(BaseAddress, RegOffset, Data) \
    Xil_Out32((BaseAddress) + (RegOffset), (u32)(Data))
#define XSink_from_aie_ReadReg(BaseAddress, RegOffset) \
    Xil_In32((BaseAddress) + (RegOffset))
#else
#define XSink_from_aie_WriteReg(BaseAddress, RegOffset, Data) \
    *(volatile u32*)((BaseAddress) + (RegOffset)) = (u32)(Data)
#define XSink_from_aie_ReadReg(BaseAddress, RegOffset) \
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
int XSink_from_aie_Initialize(XSink_from_aie *InstancePtr, u16 DeviceId);
XSink_from_aie_Config* XSink_from_aie_LookupConfig(u16 DeviceId);
int XSink_from_aie_CfgInitialize(XSink_from_aie *InstancePtr, XSink_from_aie_Config *ConfigPtr);
#else
int XSink_from_aie_Initialize(XSink_from_aie *InstancePtr, const char* InstanceName);
int XSink_from_aie_Release(XSink_from_aie *InstancePtr);
#endif

void XSink_from_aie_Start(XSink_from_aie *InstancePtr);
u32 XSink_from_aie_IsDone(XSink_from_aie *InstancePtr);
u32 XSink_from_aie_IsIdle(XSink_from_aie *InstancePtr);
u32 XSink_from_aie_IsReady(XSink_from_aie *InstancePtr);
void XSink_from_aie_Continue(XSink_from_aie *InstancePtr);
void XSink_from_aie_EnableAutoRestart(XSink_from_aie *InstancePtr);
void XSink_from_aie_DisableAutoRestart(XSink_from_aie *InstancePtr);

void XSink_from_aie_Set_output_r(XSink_from_aie *InstancePtr, u64 Data);
u64 XSink_from_aie_Get_output_r(XSink_from_aie *InstancePtr);
void XSink_from_aie_Set_size(XSink_from_aie *InstancePtr, u32 Data);
u32 XSink_from_aie_Get_size(XSink_from_aie *InstancePtr);

void XSink_from_aie_InterruptGlobalEnable(XSink_from_aie *InstancePtr);
void XSink_from_aie_InterruptGlobalDisable(XSink_from_aie *InstancePtr);
void XSink_from_aie_InterruptEnable(XSink_from_aie *InstancePtr, u32 Mask);
void XSink_from_aie_InterruptDisable(XSink_from_aie *InstancePtr, u32 Mask);
void XSink_from_aie_InterruptClear(XSink_from_aie *InstancePtr, u32 Mask);
u32 XSink_from_aie_InterruptGetEnabled(XSink_from_aie *InstancePtr);
u32 XSink_from_aie_InterruptGetStatus(XSink_from_aie *InstancePtr);

#ifdef __cplusplus
}
#endif

#endif
