// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2022.2 (lin64) Build 3671981 Fri Oct 14 04:59:54 MDT 2022
// Date        : Mon Dec  5 00:21:09 2022
// Host        : xsjdcslab02.xilinx.com running 64-bit CentOS Linux release 8.1.1911 (Core)
// Command     : write_verilog -force -mode synth_stub -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ top_shell_utils_remap_1_0_stub.v
// Design      : top_shell_utils_remap_1_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xcvc1902-vsvd1760-2MP-e-S
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* x_core_info = "shell_utils_versal_remap_v1_0_0,Vivado 2022.2" *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix(AXI_ACLK, AXI_ARESETN, S_AXI_ARADDR, 
  S_AXI_ARBURST, S_AXI_ARCACHE, S_AXI_ARID, S_AXI_ARLEN, S_AXI_ARLOCK, S_AXI_ARPROT, 
  S_AXI_ARREADY, S_AXI_ARSIZE, S_AXI_ARVALID, S_AXI_AWADDR, S_AXI_AWBURST, S_AXI_AWCACHE, 
  S_AXI_AWID, S_AXI_AWLEN, S_AXI_AWLOCK, S_AXI_AWPROT, S_AXI_AWREADY, S_AXI_AWSIZE, 
  S_AXI_AWVALID, S_AXI_BID, S_AXI_BREADY, S_AXI_BRESP, S_AXI_BVALID, S_AXI_RDATA, S_AXI_RID, 
  S_AXI_RLAST, S_AXI_RREADY, S_AXI_RRESP, S_AXI_RVALID, S_AXI_WDATA, S_AXI_WLAST, S_AXI_WREADY, 
  S_AXI_WSTRB, S_AXI_WVALID, M_AXI_ARADDR, M_AXI_ARBURST, M_AXI_ARCACHE, M_AXI_ARID, 
  M_AXI_ARLEN, M_AXI_ARLOCK, M_AXI_ARPROT, M_AXI_ARREADY, M_AXI_ARSIZE, M_AXI_ARVALID, 
  M_AXI_AWADDR, M_AXI_AWBURST, M_AXI_AWCACHE, M_AXI_AWID, M_AXI_AWLEN, M_AXI_AWLOCK, 
  M_AXI_AWPROT, M_AXI_AWREADY, M_AXI_AWSIZE, M_AXI_AWVALID, M_AXI_BID, M_AXI_BREADY, 
  M_AXI_BRESP, M_AXI_BVALID, M_AXI_RDATA, M_AXI_RID, M_AXI_RLAST, M_AXI_RREADY, M_AXI_RRESP, 
  M_AXI_RVALID, M_AXI_WDATA, M_AXI_WLAST, M_AXI_WREADY, M_AXI_WSTRB, M_AXI_WVALID)
/* synthesis syn_black_box black_box_pad_pin="AXI_ACLK,AXI_ARESETN,S_AXI_ARADDR[63:0],S_AXI_ARBURST[1:0],S_AXI_ARCACHE[3:0],S_AXI_ARID[1:0],S_AXI_ARLEN[7:0],S_AXI_ARLOCK[0:0],S_AXI_ARPROT[2:0],S_AXI_ARREADY,S_AXI_ARSIZE[2:0],S_AXI_ARVALID,S_AXI_AWADDR[63:0],S_AXI_AWBURST[1:0],S_AXI_AWCACHE[3:0],S_AXI_AWID[1:0],S_AXI_AWLEN[7:0],S_AXI_AWLOCK[0:0],S_AXI_AWPROT[2:0],S_AXI_AWREADY,S_AXI_AWSIZE[2:0],S_AXI_AWVALID,S_AXI_BID[1:0],S_AXI_BREADY,S_AXI_BRESP[1:0],S_AXI_BVALID,S_AXI_RDATA[127:0],S_AXI_RID[1:0],S_AXI_RLAST,S_AXI_RREADY,S_AXI_RRESP[1:0],S_AXI_RVALID,S_AXI_WDATA[127:0],S_AXI_WLAST,S_AXI_WREADY,S_AXI_WSTRB[15:0],S_AXI_WVALID,M_AXI_ARADDR[63:0],M_AXI_ARBURST[1:0],M_AXI_ARCACHE[3:0],M_AXI_ARID[1:0],M_AXI_ARLEN[7:0],M_AXI_ARLOCK[0:0],M_AXI_ARPROT[2:0],M_AXI_ARREADY,M_AXI_ARSIZE[2:0],M_AXI_ARVALID,M_AXI_AWADDR[63:0],M_AXI_AWBURST[1:0],M_AXI_AWCACHE[3:0],M_AXI_AWID[1:0],M_AXI_AWLEN[7:0],M_AXI_AWLOCK[0:0],M_AXI_AWPROT[2:0],M_AXI_AWREADY,M_AXI_AWSIZE[2:0],M_AXI_AWVALID,M_AXI_BID[1:0],M_AXI_BREADY,M_AXI_BRESP[1:0],M_AXI_BVALID,M_AXI_RDATA[127:0],M_AXI_RID[1:0],M_AXI_RLAST,M_AXI_RREADY,M_AXI_RRESP[1:0],M_AXI_RVALID,M_AXI_WDATA[127:0],M_AXI_WLAST,M_AXI_WREADY,M_AXI_WSTRB[15:0],M_AXI_WVALID" */;
  input AXI_ACLK;
  input AXI_ARESETN;
  input [63:0]S_AXI_ARADDR;
  input [1:0]S_AXI_ARBURST;
  input [3:0]S_AXI_ARCACHE;
  input [1:0]S_AXI_ARID;
  input [7:0]S_AXI_ARLEN;
  input [0:0]S_AXI_ARLOCK;
  input [2:0]S_AXI_ARPROT;
  output S_AXI_ARREADY;
  input [2:0]S_AXI_ARSIZE;
  input S_AXI_ARVALID;
  input [63:0]S_AXI_AWADDR;
  input [1:0]S_AXI_AWBURST;
  input [3:0]S_AXI_AWCACHE;
  input [1:0]S_AXI_AWID;
  input [7:0]S_AXI_AWLEN;
  input [0:0]S_AXI_AWLOCK;
  input [2:0]S_AXI_AWPROT;
  output S_AXI_AWREADY;
  input [2:0]S_AXI_AWSIZE;
  input S_AXI_AWVALID;
  output [1:0]S_AXI_BID;
  input S_AXI_BREADY;
  output [1:0]S_AXI_BRESP;
  output S_AXI_BVALID;
  output [127:0]S_AXI_RDATA;
  output [1:0]S_AXI_RID;
  output S_AXI_RLAST;
  input S_AXI_RREADY;
  output [1:0]S_AXI_RRESP;
  output S_AXI_RVALID;
  input [127:0]S_AXI_WDATA;
  input S_AXI_WLAST;
  output S_AXI_WREADY;
  input [15:0]S_AXI_WSTRB;
  input S_AXI_WVALID;
  output [63:0]M_AXI_ARADDR;
  output [1:0]M_AXI_ARBURST;
  output [3:0]M_AXI_ARCACHE;
  output [1:0]M_AXI_ARID;
  output [7:0]M_AXI_ARLEN;
  output [0:0]M_AXI_ARLOCK;
  output [2:0]M_AXI_ARPROT;
  input M_AXI_ARREADY;
  output [2:0]M_AXI_ARSIZE;
  output M_AXI_ARVALID;
  output [63:0]M_AXI_AWADDR;
  output [1:0]M_AXI_AWBURST;
  output [3:0]M_AXI_AWCACHE;
  output [1:0]M_AXI_AWID;
  output [7:0]M_AXI_AWLEN;
  output [0:0]M_AXI_AWLOCK;
  output [2:0]M_AXI_AWPROT;
  input M_AXI_AWREADY;
  output [2:0]M_AXI_AWSIZE;
  output M_AXI_AWVALID;
  input [1:0]M_AXI_BID;
  output M_AXI_BREADY;
  input [1:0]M_AXI_BRESP;
  input M_AXI_BVALID;
  input [127:0]M_AXI_RDATA;
  input [1:0]M_AXI_RID;
  input M_AXI_RLAST;
  output M_AXI_RREADY;
  input [1:0]M_AXI_RRESP;
  input M_AXI_RVALID;
  output [127:0]M_AXI_WDATA;
  output M_AXI_WLAST;
  input M_AXI_WREADY;
  output [15:0]M_AXI_WSTRB;
  output M_AXI_WVALID;
endmodule
