// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2022.2 (lin64) Build 3671981 Fri Oct 14 04:59:54 MDT 2022
// Date        : Mon Dec  5 00:21:05 2022
// Host        : xsjdcslab02.xilinx.com running 64-bit CentOS Linux release 8.1.1911 (Core)
// Command     : write_verilog -force -mode synth_stub -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ top_qdma_shim_0_stub.v
// Design      : top_qdma_shim_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xcvc1902-vsvd1760-2MP-e-S
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* X_CORE_INFO = "qdma_versal_shim,Vivado 2022.2" *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix(clk, rstn, usr_irq_req, usr_irq_ack, 
  usr_irq_in_vld, usr_irq_in_vec, usr_irq_in_fnc, usr_irq_out_ack)
/* synthesis syn_black_box black_box_pad_pin="clk,rstn,usr_irq_req[15:0],usr_irq_ack[15:0],usr_irq_in_vld,usr_irq_in_vec[4:0],usr_irq_in_fnc[7:0],usr_irq_out_ack" */;
  input clk;
  input rstn;
  input [15:0]usr_irq_req;
  output [15:0]usr_irq_ack;
  output usr_irq_in_vld;
  output [4:0]usr_irq_in_vec;
  output [7:0]usr_irq_in_fnc;
  input usr_irq_out_ack;
endmodule
