// Copyright 1986-2023 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2022.2.2 (lin64) Build 3788238 Tue Feb 21 19:59:23 MST 2023
// Date        : Fri Jun 28 09:49:14 2024
// Host        : nags27 running 64-bit Ubuntu 20.04.6 LTS
// Command     : write_verilog -force -mode synth_stub -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ ulp_inst_0_pipereg_pcie0_0_stub.v
// Design      : ulp_inst_0_pipereg_pcie0_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xcvc1902-vsvd1760-2MP-e-S
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* X_CORE_INFO = "util_ff_v1_0_1_util_ff,Vivado 2022.2" *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix(clk, D, Q, reset, clk_enable)
/* synthesis syn_black_box black_box_pad_pin="clk,D[0:0],Q[0:0],reset,clk_enable" */;
  input clk;
  input [0:0]D;
  output [0:0]Q;
  input reset;
  input clk_enable;
endmodule
