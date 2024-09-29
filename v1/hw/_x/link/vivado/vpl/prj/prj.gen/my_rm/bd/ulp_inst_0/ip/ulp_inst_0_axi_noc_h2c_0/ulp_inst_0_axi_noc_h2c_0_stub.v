// Copyright 1986-2023 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2022.2.2 (lin64) Build 3788238 Tue Feb 21 19:59:23 MST 2023
// Date        : Fri Jun 28 10:16:49 2024
// Host        : nags27 running 64-bit Ubuntu 20.04.6 LTS
// Command     : write_verilog -force -mode synth_stub
//               /home/users/eleonora.cabai/Documents/K-Means-AIE/hw/_x/link/vivado/vpl/prj/prj.gen/my_rm/bd/ulp_inst_0/ip/ulp_inst_0_axi_noc_h2c_0/ulp_inst_0_axi_noc_h2c_0_stub.v
// Design      : ulp_inst_0_axi_noc_h2c_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xcvc1902-vsvd1760-2MP-e-S
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* X_CORE_INFO = "bd_0dc7,Vivado 2022.2.2" *)
module ulp_inst_0_axi_noc_h2c_0(S00_INI_internoc, S01_INI_internoc, 
  M00_AXI_awaddr, M00_AXI_awlen, M00_AXI_awsize, M00_AXI_awburst, M00_AXI_awlock, 
  M00_AXI_awcache, M00_AXI_awprot, M00_AXI_awregion, M00_AXI_awqos, M00_AXI_awvalid, 
  M00_AXI_awready, M00_AXI_wdata, M00_AXI_wstrb, M00_AXI_wlast, M00_AXI_wvalid, 
  M00_AXI_wready, M00_AXI_bresp, M00_AXI_bvalid, M00_AXI_bready, M00_AXI_araddr, 
  M00_AXI_arlen, M00_AXI_arsize, M00_AXI_arburst, M00_AXI_arlock, M00_AXI_arcache, 
  M00_AXI_arprot, M00_AXI_arregion, M00_AXI_arqos, M00_AXI_arvalid, M00_AXI_arready, 
  M00_AXI_rdata, M00_AXI_rresp, M00_AXI_rlast, M00_AXI_rvalid, M00_AXI_rready, 
  M01_AXI_awaddr, M01_AXI_awlen, M01_AXI_awsize, M01_AXI_awburst, M01_AXI_awlock, 
  M01_AXI_awcache, M01_AXI_awprot, M01_AXI_awregion, M01_AXI_awqos, M01_AXI_awvalid, 
  M01_AXI_awready, M01_AXI_wdata, M01_AXI_wstrb, M01_AXI_wlast, M01_AXI_wvalid, 
  M01_AXI_wready, M01_AXI_bresp, M01_AXI_bvalid, M01_AXI_bready, M01_AXI_araddr, 
  M01_AXI_arlen, M01_AXI_arsize, M01_AXI_arburst, M01_AXI_arlock, M01_AXI_arcache, 
  M01_AXI_arprot, M01_AXI_arregion, M01_AXI_arqos, M01_AXI_arvalid, M01_AXI_arready, 
  M01_AXI_rdata, M01_AXI_rresp, M01_AXI_rlast, M01_AXI_rvalid, M01_AXI_rready, aclk0, 
  M00_AXI_arid, M00_AXI_aruser, M00_AXI_awid, M00_AXI_awuser, M00_AXI_bid, M00_AXI_rid, 
  M01_AXI_arid, M01_AXI_aruser, M01_AXI_awid, M01_AXI_awuser, M01_AXI_bid, M01_AXI_rid)
/* synthesis syn_black_box black_box_pad_pin="S00_INI_internoc[0:0],S01_INI_internoc[0:0],M00_AXI_awaddr[63:0],M00_AXI_awlen[7:0],M00_AXI_awsize[2:0],M00_AXI_awburst[1:0],M00_AXI_awlock[0:0],M00_AXI_awcache[3:0],M00_AXI_awprot[2:0],M00_AXI_awregion[3:0],M00_AXI_awqos[3:0],M00_AXI_awvalid[0:0],M00_AXI_awready[0:0],M00_AXI_wdata[127:0],M00_AXI_wstrb[15:0],M00_AXI_wlast[0:0],M00_AXI_wvalid[0:0],M00_AXI_wready[0:0],M00_AXI_bresp[1:0],M00_AXI_bvalid[0:0],M00_AXI_bready[0:0],M00_AXI_araddr[63:0],M00_AXI_arlen[7:0],M00_AXI_arsize[2:0],M00_AXI_arburst[1:0],M00_AXI_arlock[0:0],M00_AXI_arcache[3:0],M00_AXI_arprot[2:0],M00_AXI_arregion[3:0],M00_AXI_arqos[3:0],M00_AXI_arvalid[0:0],M00_AXI_arready[0:0],M00_AXI_rdata[127:0],M00_AXI_rresp[1:0],M00_AXI_rlast[0:0],M00_AXI_rvalid[0:0],M00_AXI_rready[0:0],M01_AXI_awaddr[63:0],M01_AXI_awlen[7:0],M01_AXI_awsize[2:0],M01_AXI_awburst[1:0],M01_AXI_awlock[0:0],M01_AXI_awcache[3:0],M01_AXI_awprot[2:0],M01_AXI_awregion[3:0],M01_AXI_awqos[3:0],M01_AXI_awvalid[0:0],M01_AXI_awready[0:0],M01_AXI_wdata[511:0],M01_AXI_wstrb[63:0],M01_AXI_wlast[0:0],M01_AXI_wvalid[0:0],M01_AXI_wready[0:0],M01_AXI_bresp[1:0],M01_AXI_bvalid[0:0],M01_AXI_bready[0:0],M01_AXI_araddr[63:0],M01_AXI_arlen[7:0],M01_AXI_arsize[2:0],M01_AXI_arburst[1:0],M01_AXI_arlock[0:0],M01_AXI_arcache[3:0],M01_AXI_arprot[2:0],M01_AXI_arregion[3:0],M01_AXI_arqos[3:0],M01_AXI_arvalid[0:0],M01_AXI_arready[0:0],M01_AXI_rdata[511:0],M01_AXI_rresp[1:0],M01_AXI_rlast[0:0],M01_AXI_rvalid[0:0],M01_AXI_rready[0:0],aclk0,M00_AXI_arid[1:0],M00_AXI_aruser[17:0],M00_AXI_awid[1:0],M00_AXI_awuser[17:0],M00_AXI_bid[1:0],M00_AXI_rid[1:0],M01_AXI_arid[1:0],M01_AXI_aruser[17:0],M01_AXI_awid[1:0],M01_AXI_awuser[17:0],M01_AXI_bid[1:0],M01_AXI_rid[1:0]" */;
  input [0:0]S00_INI_internoc;
  input [0:0]S01_INI_internoc;
  output [63:0]M00_AXI_awaddr;
  output [7:0]M00_AXI_awlen;
  output [2:0]M00_AXI_awsize;
  output [1:0]M00_AXI_awburst;
  output [0:0]M00_AXI_awlock;
  output [3:0]M00_AXI_awcache;
  output [2:0]M00_AXI_awprot;
  output [3:0]M00_AXI_awregion;
  output [3:0]M00_AXI_awqos;
  output [0:0]M00_AXI_awvalid;
  input [0:0]M00_AXI_awready;
  output [127:0]M00_AXI_wdata;
  output [15:0]M00_AXI_wstrb;
  output [0:0]M00_AXI_wlast;
  output [0:0]M00_AXI_wvalid;
  input [0:0]M00_AXI_wready;
  input [1:0]M00_AXI_bresp;
  input [0:0]M00_AXI_bvalid;
  output [0:0]M00_AXI_bready;
  output [63:0]M00_AXI_araddr;
  output [7:0]M00_AXI_arlen;
  output [2:0]M00_AXI_arsize;
  output [1:0]M00_AXI_arburst;
  output [0:0]M00_AXI_arlock;
  output [3:0]M00_AXI_arcache;
  output [2:0]M00_AXI_arprot;
  output [3:0]M00_AXI_arregion;
  output [3:0]M00_AXI_arqos;
  output [0:0]M00_AXI_arvalid;
  input [0:0]M00_AXI_arready;
  input [127:0]M00_AXI_rdata;
  input [1:0]M00_AXI_rresp;
  input [0:0]M00_AXI_rlast;
  input [0:0]M00_AXI_rvalid;
  output [0:0]M00_AXI_rready;
  output [63:0]M01_AXI_awaddr;
  output [7:0]M01_AXI_awlen;
  output [2:0]M01_AXI_awsize;
  output [1:0]M01_AXI_awburst;
  output [0:0]M01_AXI_awlock;
  output [3:0]M01_AXI_awcache;
  output [2:0]M01_AXI_awprot;
  output [3:0]M01_AXI_awregion;
  output [3:0]M01_AXI_awqos;
  output [0:0]M01_AXI_awvalid;
  input [0:0]M01_AXI_awready;
  output [511:0]M01_AXI_wdata;
  output [63:0]M01_AXI_wstrb;
  output [0:0]M01_AXI_wlast;
  output [0:0]M01_AXI_wvalid;
  input [0:0]M01_AXI_wready;
  input [1:0]M01_AXI_bresp;
  input [0:0]M01_AXI_bvalid;
  output [0:0]M01_AXI_bready;
  output [63:0]M01_AXI_araddr;
  output [7:0]M01_AXI_arlen;
  output [2:0]M01_AXI_arsize;
  output [1:0]M01_AXI_arburst;
  output [0:0]M01_AXI_arlock;
  output [3:0]M01_AXI_arcache;
  output [2:0]M01_AXI_arprot;
  output [3:0]M01_AXI_arregion;
  output [3:0]M01_AXI_arqos;
  output [0:0]M01_AXI_arvalid;
  input [0:0]M01_AXI_arready;
  input [511:0]M01_AXI_rdata;
  input [1:0]M01_AXI_rresp;
  input [0:0]M01_AXI_rlast;
  input [0:0]M01_AXI_rvalid;
  output [0:0]M01_AXI_rready;
  input aclk0;
  output [1:0]M00_AXI_arid;
  output [17:0]M00_AXI_aruser;
  output [1:0]M00_AXI_awid;
  output [17:0]M00_AXI_awuser;
  input [1:0]M00_AXI_bid;
  input [1:0]M00_AXI_rid;
  output [1:0]M01_AXI_arid;
  output [17:0]M01_AXI_aruser;
  output [1:0]M01_AXI_awid;
  output [17:0]M01_AXI_awuser;
  input [1:0]M01_AXI_bid;
  input [1:0]M01_AXI_rid;
endmodule
