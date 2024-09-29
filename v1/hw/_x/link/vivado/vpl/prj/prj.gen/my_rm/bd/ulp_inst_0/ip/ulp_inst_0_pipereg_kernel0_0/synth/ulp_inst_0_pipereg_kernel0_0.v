// (c) Copyright 1995-2022 Xilinx, Inc. All rights reserved.
// 
// This file contains confidential and proprietary information
// of Xilinx, Inc. and is protected under U.S. and
// international copyright and other intellectual property
// laws.
// 
// DISCLAIMER
// This disclaimer is not a license and does not grant any
// rights to the materials distributed herewith. Except as
// otherwise provided in a valid license issued to you by
// Xilinx, and to the maximum extent permitted by applicable
// law: (1) THESE MATERIALS ARE MADE AVAILABLE "AS IS" AND
// WITH ALL FAULTS, AND XILINX HEREBY DISCLAIMS ALL WARRANTIES
// AND CONDITIONS, EXPRESS, IMPLIED, OR STATUTORY, INCLUDING
// BUT NOT LIMITED TO WARRANTIES OF MERCHANTABILITY, NON-
// INFRINGEMENT, OR FITNESS FOR ANY PARTICULAR PURPOSE; and
// (2) Xilinx shall not be liable (whether in contract or tort,
// including negligence, or under any other theory of
// liability) for any loss or damage of any kind or nature
// related to, arising under or in connection with these
// materials, including for any direct, or any indirect,
// special, incidental, or consequential loss or damage
// (including loss of data, profits, goodwill, or any type of
// loss or damage suffered as a result of any action brought
// by a third party) even if such damage or loss was
// reasonably foreseeable or Xilinx had been advised of the
// possibility of the same.
// 
// CRITICAL APPLICATIONS
// Xilinx products are not designed or intended to be fail-
// safe, or for use in any application requiring fail-safe
// performance, such as life-support or safety devices or
// systems, Class III medical devices, nuclear facilities,
// applications related to the deployment of airbags, or any
// other applications that could lead to death, personal
// injury, or severe property or environmental damage
// (individually and collectively, "Critical
// Applications"). Customer assumes the sole risk and
// liability of any use of Xilinx products in Critical
// Applications, subject only to applicable laws and
// regulations governing limitations on product liability.
// 
// THIS COPYRIGHT NOTICE AND DISCLAIMER MUST BE RETAINED AS
// PART OF THIS FILE AT ALL TIMES.
// 
// DO NOT MODIFY THIS FILE.


// IP VLNV: xilinx.com:ip:util_ff:1.0
// IP Revision: 1

(* X_CORE_INFO = "util_ff_v1_0_1_util_ff,Vivado 2022.2" *)
(* CHECK_LICENSE_TYPE = "ulp_inst_0_pipereg_kernel0_0,util_ff_v1_0_1_util_ff,{}" *)
(* CORE_GENERATION_INFO = "ulp_inst_0_pipereg_kernel0_0,util_ff_v1_0_1_util_ff,{x_ipProduct=Vivado 2022.2,x_ipVendor=xilinx.com,x_ipLibrary=ip,x_ipName=util_ff,x_ipVersion=1.0,x_ipCoreRevision=1,x_ipLanguage=VERILOG,x_ipSimLanguage=MIXED,C_WIDTH=1,C_FF_TYPE=1,C_INIT=0x0,C_C_INVERTED=0,C_R_INVERTED=1,C_G_INVERTED=0,C_S_INVERTED=0,C_CLR_INVERTED=0,C_PRE_INVERTED=0,C_D_INVERTED=0,C_FF_LEVELS=1}" *)
(* DowngradeIPIdentifiedWarnings = "yes" *)
module ulp_inst_0_pipereg_kernel0_0 (
  clk,
  D,
  Q,
  reset,
  clk_enable
);

(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME clk, FREQ_HZ 299996999, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN cd_aclk_kernel_00, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 clk CLK" *)
input wire clk;
input wire [0 : 0] D;
output wire [0 : 0] Q;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME reset, POLARITY ACTIVE_LOW, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 reset RST" *)
input wire reset;
input wire clk_enable;

  util_ff_v1_0_1_util_ff #(
    .C_WIDTH(1),
    .C_FF_TYPE(1),
    .C_INIT(1'H0),
    .C_C_INVERTED(0),
    .C_R_INVERTED(1),
    .C_G_INVERTED(0),
    .C_S_INVERTED(0),
    .C_CLR_INVERTED(0),
    .C_PRE_INVERTED(0),
    .C_D_INVERTED(0),
    .C_FF_LEVELS(1)
  ) inst (
    .clk(clk),
    .D(D),
    .Q(Q),
    .reset(reset),
    .set(1'B0),
    .clear(1'B0),
    .preset(1'B0),
    .G(1'B0),
    .clk_enable(clk_enable),
    .gate_enable(1'B1)
  );
endmodule
