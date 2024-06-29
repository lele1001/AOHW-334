// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2022.2 (lin64) Build 3671981 Fri Oct 14 04:59:54 MDT 2022
// Date        : Mon Dec  5 00:18:57 2022
// Host        : xsjdcslab02.xilinx.com running 64-bit CentOS Linux release 8.1.1911 (Core)
// Command     : write_verilog -force -mode synth_stub -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ ulp_inst_0_plram_ctrl_bram_0_stub.v
// Design      : ulp_inst_0_plram_ctrl_bram_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xcvc1902-vsvd1760-2MP-e-S
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* X_CORE_INFO = "emb_mem_gen_v1_0_6,Vivado 2022.2" *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix(clka, rsta, ena, regcea, wea, addra, dina, douta)
/* synthesis syn_black_box black_box_pad_pin="clka,rsta,ena,regcea,wea[63:0],addra[16:0],dina[511:0],douta[511:0]" */;
  input clka;
  input rsta;
  input ena;
  input regcea;
  input [63:0]wea;
  input [16:0]addra;
  input [511:0]dina;
  output [511:0]douta;
endmodule
