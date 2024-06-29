// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2022.2 (lin64) Build 3671981 Fri Oct 14 04:59:54 MDT 2022
// Date        : Mon Dec  5 00:21:24 2022
// Host        : xsjdcslab02.xilinx.com running 64-bit CentOS Linux release 8.1.1911 (Core)
// Command     : write_verilog -force -mode synth_stub -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ top_shell_utils_ucc_0_stub.v
// Design      : top_shell_utils_ucc_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xcvc1902-vsvd1760-2MP-e-S
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* X_CORE_INFO = "shell_utils_ucc_v1_0_0_top,Vivado 2022.2" *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix(aclk_ctrl, aclk_freerun, aclk_pcie, 
  aresetn_ctrl, aclk_kernel_00, aclk_kernel_01, aclk_kernel_cont_00, aclk_kernel_cont_01, 
  aclk_ext_tog_kernel_00, aclk_ext_tog_kernel_01, clk_in_kernel_00, clk_in_kernel_01, 
  clk_kernel_00_locked, clk_kernel_01_locked, ext_tog_ctrl_kernel_00_enable, 
  ext_tog_ctrl_kernel_01_enable, ext_tog_ctrl_kernel_00_in, ext_tog_ctrl_kernel_01_in, 
  ext_tog_ctrl_kernel_00_out, ext_tog_ctrl_kernel_01_out, rst_async_kernel_00, 
  rst_async_kernel_01, power_down, shutdown_clocks, s_axi_ctrl_mgmt_araddr, 
  s_axi_ctrl_mgmt_arready, s_axi_ctrl_mgmt_arvalid, s_axi_ctrl_mgmt_awaddr, 
  s_axi_ctrl_mgmt_awready, s_axi_ctrl_mgmt_awvalid, s_axi_ctrl_mgmt_bready, 
  s_axi_ctrl_mgmt_bresp, s_axi_ctrl_mgmt_bvalid, s_axi_ctrl_mgmt_rdata, 
  s_axi_ctrl_mgmt_rready, s_axi_ctrl_mgmt_rresp, s_axi_ctrl_mgmt_rvalid, 
  s_axi_ctrl_mgmt_wdata, s_axi_ctrl_mgmt_wready, s_axi_ctrl_mgmt_wstrb, 
  s_axi_ctrl_mgmt_wvalid)
/* synthesis syn_black_box black_box_pad_pin="aclk_ctrl,aclk_freerun,aclk_pcie,aresetn_ctrl,aclk_kernel_00,aclk_kernel_01,aclk_kernel_cont_00,aclk_kernel_cont_01,aclk_ext_tog_kernel_00,aclk_ext_tog_kernel_01,clk_in_kernel_00,clk_in_kernel_01,clk_kernel_00_locked,clk_kernel_01_locked,ext_tog_ctrl_kernel_00_enable,ext_tog_ctrl_kernel_01_enable,ext_tog_ctrl_kernel_00_in,ext_tog_ctrl_kernel_01_in,ext_tog_ctrl_kernel_00_out,ext_tog_ctrl_kernel_01_out,rst_async_kernel_00,rst_async_kernel_01,power_down,shutdown_clocks,s_axi_ctrl_mgmt_araddr[31:0],s_axi_ctrl_mgmt_arready,s_axi_ctrl_mgmt_arvalid,s_axi_ctrl_mgmt_awaddr[31:0],s_axi_ctrl_mgmt_awready,s_axi_ctrl_mgmt_awvalid,s_axi_ctrl_mgmt_bready,s_axi_ctrl_mgmt_bresp[1:0],s_axi_ctrl_mgmt_bvalid,s_axi_ctrl_mgmt_rdata[31:0],s_axi_ctrl_mgmt_rready,s_axi_ctrl_mgmt_rresp[1:0],s_axi_ctrl_mgmt_rvalid,s_axi_ctrl_mgmt_wdata[31:0],s_axi_ctrl_mgmt_wready,s_axi_ctrl_mgmt_wstrb[3:0],s_axi_ctrl_mgmt_wvalid" */;
  input aclk_ctrl;
  input aclk_freerun;
  input aclk_pcie;
  input aresetn_ctrl;
  output aclk_kernel_00;
  output aclk_kernel_01;
  output aclk_kernel_cont_00;
  output aclk_kernel_cont_01;
  output aclk_ext_tog_kernel_00;
  output aclk_ext_tog_kernel_01;
  input clk_in_kernel_00;
  input clk_in_kernel_01;
  input clk_kernel_00_locked;
  input clk_kernel_01_locked;
  input ext_tog_ctrl_kernel_00_enable;
  input ext_tog_ctrl_kernel_01_enable;
  input ext_tog_ctrl_kernel_00_in;
  input ext_tog_ctrl_kernel_01_in;
  output ext_tog_ctrl_kernel_00_out;
  output ext_tog_ctrl_kernel_01_out;
  output rst_async_kernel_00;
  output rst_async_kernel_01;
  output power_down;
  input shutdown_clocks;
  input [31:0]s_axi_ctrl_mgmt_araddr;
  output s_axi_ctrl_mgmt_arready;
  input s_axi_ctrl_mgmt_arvalid;
  input [31:0]s_axi_ctrl_mgmt_awaddr;
  output s_axi_ctrl_mgmt_awready;
  input s_axi_ctrl_mgmt_awvalid;
  input s_axi_ctrl_mgmt_bready;
  output [1:0]s_axi_ctrl_mgmt_bresp;
  output s_axi_ctrl_mgmt_bvalid;
  output [31:0]s_axi_ctrl_mgmt_rdata;
  input s_axi_ctrl_mgmt_rready;
  output [1:0]s_axi_ctrl_mgmt_rresp;
  output s_axi_ctrl_mgmt_rvalid;
  input [31:0]s_axi_ctrl_mgmt_wdata;
  output s_axi_ctrl_mgmt_wready;
  input [3:0]s_axi_ctrl_mgmt_wstrb;
  input s_axi_ctrl_mgmt_wvalid;
endmodule
