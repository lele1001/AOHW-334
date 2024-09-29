// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2022.2 (lin64) Build 3671981 Fri Oct 14 04:59:54 MDT 2022
// Date        : Mon Dec  5 00:25:47 2022
// Host        : xsjdcslab02.xilinx.com running 64-bit CentOS Linux release 8.1.1911 (Core)
// Command     : write_verilog -force -mode synth_stub -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ top_hw_discovery_0_stub.v
// Design      : top_hw_discovery_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xcvc1902-vsvd1760-2MP-e-S
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* X_CORE_INFO = "hw_discovery,Vivado 2022.2" *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix(aclk_pcie, aresetn_pcie, aclk_ctrl, 
  aresetn_ctrl, s_pcie4_cfg_ext_function_number, s_pcie4_cfg_ext_read_data, 
  s_pcie4_cfg_ext_read_data_valid, s_pcie4_cfg_ext_read_received, 
  s_pcie4_cfg_ext_register_number, s_pcie4_cfg_ext_write_byte_enable, 
  s_pcie4_cfg_ext_write_data, s_pcie4_cfg_ext_write_received, s_axi_ctrl_pf0_AWADDR, 
  s_axi_ctrl_pf0_AWVALID, s_axi_ctrl_pf0_AWREADY, s_axi_ctrl_pf0_WDATA, 
  s_axi_ctrl_pf0_WSTRB, s_axi_ctrl_pf0_WVALID, s_axi_ctrl_pf0_WREADY, 
  s_axi_ctrl_pf0_BRESP, s_axi_ctrl_pf0_BVALID, s_axi_ctrl_pf0_BREADY, 
  s_axi_ctrl_pf0_ARADDR, s_axi_ctrl_pf0_ARVALID, s_axi_ctrl_pf0_ARREADY, 
  s_axi_ctrl_pf0_RDATA, s_axi_ctrl_pf0_RRESP, s_axi_ctrl_pf0_RVALID, 
  s_axi_ctrl_pf0_RREADY, s_axi_ctrl_pf1_AWADDR, s_axi_ctrl_pf1_AWVALID, 
  s_axi_ctrl_pf1_AWREADY, s_axi_ctrl_pf1_WDATA, s_axi_ctrl_pf1_WSTRB, 
  s_axi_ctrl_pf1_WVALID, s_axi_ctrl_pf1_WREADY, s_axi_ctrl_pf1_BRESP, 
  s_axi_ctrl_pf1_BVALID, s_axi_ctrl_pf1_BREADY, s_axi_ctrl_pf1_ARADDR, 
  s_axi_ctrl_pf1_ARVALID, s_axi_ctrl_pf1_ARREADY, s_axi_ctrl_pf1_RDATA, 
  s_axi_ctrl_pf1_RRESP, s_axi_ctrl_pf1_RVALID, s_axi_ctrl_pf1_RREADY)
/* synthesis syn_black_box black_box_pad_pin="aclk_pcie,aresetn_pcie,aclk_ctrl,aresetn_ctrl,s_pcie4_cfg_ext_function_number[7:0],s_pcie4_cfg_ext_read_data[31:0],s_pcie4_cfg_ext_read_data_valid,s_pcie4_cfg_ext_read_received,s_pcie4_cfg_ext_register_number[9:0],s_pcie4_cfg_ext_write_byte_enable[3:0],s_pcie4_cfg_ext_write_data[31:0],s_pcie4_cfg_ext_write_received,s_axi_ctrl_pf0_AWADDR[31:0],s_axi_ctrl_pf0_AWVALID,s_axi_ctrl_pf0_AWREADY,s_axi_ctrl_pf0_WDATA[31:0],s_axi_ctrl_pf0_WSTRB[3:0],s_axi_ctrl_pf0_WVALID,s_axi_ctrl_pf0_WREADY,s_axi_ctrl_pf0_BRESP[1:0],s_axi_ctrl_pf0_BVALID,s_axi_ctrl_pf0_BREADY,s_axi_ctrl_pf0_ARADDR[31:0],s_axi_ctrl_pf0_ARVALID,s_axi_ctrl_pf0_ARREADY,s_axi_ctrl_pf0_RDATA[31:0],s_axi_ctrl_pf0_RRESP[1:0],s_axi_ctrl_pf0_RVALID,s_axi_ctrl_pf0_RREADY,s_axi_ctrl_pf1_AWADDR[31:0],s_axi_ctrl_pf1_AWVALID,s_axi_ctrl_pf1_AWREADY,s_axi_ctrl_pf1_WDATA[31:0],s_axi_ctrl_pf1_WSTRB[3:0],s_axi_ctrl_pf1_WVALID,s_axi_ctrl_pf1_WREADY,s_axi_ctrl_pf1_BRESP[1:0],s_axi_ctrl_pf1_BVALID,s_axi_ctrl_pf1_BREADY,s_axi_ctrl_pf1_ARADDR[31:0],s_axi_ctrl_pf1_ARVALID,s_axi_ctrl_pf1_ARREADY,s_axi_ctrl_pf1_RDATA[31:0],s_axi_ctrl_pf1_RRESP[1:0],s_axi_ctrl_pf1_RVALID,s_axi_ctrl_pf1_RREADY" */;
  input aclk_pcie;
  input aresetn_pcie;
  input aclk_ctrl;
  input aresetn_ctrl;
  input [7:0]s_pcie4_cfg_ext_function_number;
  output [31:0]s_pcie4_cfg_ext_read_data;
  output s_pcie4_cfg_ext_read_data_valid;
  input s_pcie4_cfg_ext_read_received;
  input [9:0]s_pcie4_cfg_ext_register_number;
  input [3:0]s_pcie4_cfg_ext_write_byte_enable;
  input [31:0]s_pcie4_cfg_ext_write_data;
  input s_pcie4_cfg_ext_write_received;
  input [31:0]s_axi_ctrl_pf0_AWADDR;
  input s_axi_ctrl_pf0_AWVALID;
  output s_axi_ctrl_pf0_AWREADY;
  input [31:0]s_axi_ctrl_pf0_WDATA;
  input [3:0]s_axi_ctrl_pf0_WSTRB;
  input s_axi_ctrl_pf0_WVALID;
  output s_axi_ctrl_pf0_WREADY;
  output [1:0]s_axi_ctrl_pf0_BRESP;
  output s_axi_ctrl_pf0_BVALID;
  input s_axi_ctrl_pf0_BREADY;
  input [31:0]s_axi_ctrl_pf0_ARADDR;
  input s_axi_ctrl_pf0_ARVALID;
  output s_axi_ctrl_pf0_ARREADY;
  output [31:0]s_axi_ctrl_pf0_RDATA;
  output [1:0]s_axi_ctrl_pf0_RRESP;
  output s_axi_ctrl_pf0_RVALID;
  input s_axi_ctrl_pf0_RREADY;
  input [31:0]s_axi_ctrl_pf1_AWADDR;
  input s_axi_ctrl_pf1_AWVALID;
  output s_axi_ctrl_pf1_AWREADY;
  input [31:0]s_axi_ctrl_pf1_WDATA;
  input [3:0]s_axi_ctrl_pf1_WSTRB;
  input s_axi_ctrl_pf1_WVALID;
  output s_axi_ctrl_pf1_WREADY;
  output [1:0]s_axi_ctrl_pf1_BRESP;
  output s_axi_ctrl_pf1_BVALID;
  input s_axi_ctrl_pf1_BREADY;
  input [31:0]s_axi_ctrl_pf1_ARADDR;
  input s_axi_ctrl_pf1_ARVALID;
  output s_axi_ctrl_pf1_ARREADY;
  output [31:0]s_axi_ctrl_pf1_RDATA;
  output [1:0]s_axi_ctrl_pf1_RRESP;
  output s_axi_ctrl_pf1_RVALID;
  input s_axi_ctrl_pf1_RREADY;
endmodule
