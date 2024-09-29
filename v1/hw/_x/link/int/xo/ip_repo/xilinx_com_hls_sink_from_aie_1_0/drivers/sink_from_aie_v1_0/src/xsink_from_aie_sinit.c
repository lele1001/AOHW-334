// ==============================================================
// Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2022.2.2 (64-bit)
// Tool Version Limit: 2019.12
// Copyright 1986-2023 Xilinx, Inc. All Rights Reserved.
// ==============================================================
#ifndef __linux__

#include "xstatus.h"
#include "xparameters.h"
#include "xsink_from_aie.h"

extern XSink_from_aie_Config XSink_from_aie_ConfigTable[];

XSink_from_aie_Config *XSink_from_aie_LookupConfig(u16 DeviceId) {
	XSink_from_aie_Config *ConfigPtr = NULL;

	int Index;

	for (Index = 0; Index < XPAR_XSINK_FROM_AIE_NUM_INSTANCES; Index++) {
		if (XSink_from_aie_ConfigTable[Index].DeviceId == DeviceId) {
			ConfigPtr = &XSink_from_aie_ConfigTable[Index];
			break;
		}
	}

	return ConfigPtr;
}

int XSink_from_aie_Initialize(XSink_from_aie *InstancePtr, u16 DeviceId) {
	XSink_from_aie_Config *ConfigPtr;

	Xil_AssertNonvoid(InstancePtr != NULL);

	ConfigPtr = XSink_from_aie_LookupConfig(DeviceId);
	if (ConfigPtr == NULL) {
		InstancePtr->IsReady = 0;
		return (XST_DEVICE_NOT_FOUND);
	}

	return XSink_from_aie_CfgInitialize(InstancePtr, ConfigPtr);
}

#endif

