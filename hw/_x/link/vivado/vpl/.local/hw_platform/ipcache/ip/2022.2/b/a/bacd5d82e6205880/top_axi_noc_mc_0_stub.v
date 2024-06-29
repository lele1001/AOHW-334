// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2022.2 (lin64) Build 3671981 Fri Oct 14 04:59:54 MDT 2022
// Date        : Mon Dec  5 00:29:21 2022
// Host        : xsjdcslab02.xilinx.com running 64-bit CentOS Linux release 8.1.1911 (Core)
// Command     : write_verilog -force -mode synth_stub -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ top_axi_noc_mc_0_stub.v
// Design      : top_axi_noc_mc_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xcvc1902-vsvd1760-2MP-e-S
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* X_CORE_INFO = "bd_0e6e,Vivado 2022.2" *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix(S00_AXI_awaddr, S00_AXI_awlen, 
  S00_AXI_awsize, S00_AXI_awburst, S00_AXI_awlock, S00_AXI_awcache, S00_AXI_awprot, 
  S00_AXI_awregion, S00_AXI_awqos, S00_AXI_awvalid, S00_AXI_awready, S00_AXI_wdata, 
  S00_AXI_wstrb, S00_AXI_wlast, S00_AXI_wvalid, S00_AXI_wready, S00_AXI_bresp, 
  S00_AXI_bvalid, S00_AXI_bready, S00_AXI_araddr, S00_AXI_arlen, S00_AXI_arsize, 
  S00_AXI_arburst, S00_AXI_arlock, S00_AXI_arcache, S00_AXI_arprot, S00_AXI_arregion, 
  S00_AXI_arqos, S00_AXI_arvalid, S00_AXI_arready, S00_AXI_rdata, S00_AXI_rresp, 
  S00_AXI_rlast, S00_AXI_rvalid, S00_AXI_rready, S01_AXI_awaddr, S01_AXI_awlen, 
  S01_AXI_awsize, S01_AXI_awburst, S01_AXI_awlock, S01_AXI_awcache, S01_AXI_awprot, 
  S01_AXI_awregion, S01_AXI_awqos, S01_AXI_awvalid, S01_AXI_awready, S01_AXI_wdata, 
  S01_AXI_wstrb, S01_AXI_wlast, S01_AXI_wvalid, S01_AXI_wready, S01_AXI_bresp, 
  S01_AXI_bvalid, S01_AXI_bready, S01_AXI_araddr, S01_AXI_arlen, S01_AXI_arsize, 
  S01_AXI_arburst, S01_AXI_arlock, S01_AXI_arcache, S01_AXI_arprot, S01_AXI_arregion, 
  S01_AXI_arqos, S01_AXI_arvalid, S01_AXI_arready, S01_AXI_rdata, S01_AXI_rresp, 
  S01_AXI_rlast, S01_AXI_rvalid, S01_AXI_rready, S00_INI_internoc, S01_INI_internoc, 
  S02_INI_internoc, S03_INI_internoc, S04_INI_internoc, S05_INI_internoc, S06_INI_internoc, 
  aclk0, sys_clk0_clk_p, sys_clk0_clk_n, CH0_DDR4_0_dq, CH0_DDR4_0_dqs_t, CH0_DDR4_0_dqs_c, 
  CH0_DDR4_0_adr, CH0_DDR4_0_ba, CH0_DDR4_0_bg, CH0_DDR4_0_act_n, CH0_DDR4_0_reset_n, 
  CH0_DDR4_0_ck_t, CH0_DDR4_0_ck_c, CH0_DDR4_0_cke, CH0_DDR4_0_cs_n, CH0_DDR4_0_dm_n, 
  CH0_DDR4_0_odt, sys_clk1_clk_p, sys_clk1_clk_n, CH0_DDR4_1_dq, CH0_DDR4_1_dqs_t, 
  CH0_DDR4_1_dqs_c, CH0_DDR4_1_adr, CH0_DDR4_1_ba, CH0_DDR4_1_bg, CH0_DDR4_1_act_n, 
  CH0_DDR4_1_reset_n, CH0_DDR4_1_ck_t, CH0_DDR4_1_ck_c, CH0_DDR4_1_cke, CH0_DDR4_1_cs_n, 
  CH0_DDR4_1_dm_n, CH0_DDR4_1_odt, sys_clk2_clk_p, sys_clk2_clk_n, CH0_DDR4_2_dq, 
  CH0_DDR4_2_dqs_t, CH0_DDR4_2_dqs_c, CH0_DDR4_2_adr, CH0_DDR4_2_ba, CH0_DDR4_2_bg, 
  CH0_DDR4_2_act_n, CH0_DDR4_2_reset_n, CH0_DDR4_2_ck_t, CH0_DDR4_2_ck_c, CH0_DDR4_2_cke, 
  CH0_DDR4_2_cs_n, CH0_DDR4_2_dm_n, CH0_DDR4_2_odt, sys_clk3_clk_p, sys_clk3_clk_n, 
  CH0_DDR4_3_dq, CH0_DDR4_3_dqs_t, CH0_DDR4_3_dqs_c, CH0_DDR4_3_adr, CH0_DDR4_3_ba, 
  CH0_DDR4_3_bg, CH0_DDR4_3_act_n, CH0_DDR4_3_reset_n, CH0_DDR4_3_ck_t, CH0_DDR4_3_ck_c, 
  CH0_DDR4_3_cke, CH0_DDR4_3_cs_n, CH0_DDR4_3_dm_n, CH0_DDR4_3_odt, S01_AXI_arid, 
  S01_AXI_awid, S01_AXI_bid, S01_AXI_rid, S00_AXI_arid, S00_AXI_awid, S00_AXI_bid, S00_AXI_rid)
/* synthesis syn_black_box black_box_pad_pin="S00_AXI_awaddr[63:0],S00_AXI_awlen[7:0],S00_AXI_awsize[2:0],S00_AXI_awburst[1:0],S00_AXI_awlock[0:0],S00_AXI_awcache[3:0],S00_AXI_awprot[2:0],S00_AXI_awregion[3:0],S00_AXI_awqos[3:0],S00_AXI_awvalid[0:0],S00_AXI_awready[0:0],S00_AXI_wdata[127:0],S00_AXI_wstrb[15:0],S00_AXI_wlast[0:0],S00_AXI_wvalid[0:0],S00_AXI_wready[0:0],S00_AXI_bresp[1:0],S00_AXI_bvalid[0:0],S00_AXI_bready[0:0],S00_AXI_araddr[63:0],S00_AXI_arlen[7:0],S00_AXI_arsize[2:0],S00_AXI_arburst[1:0],S00_AXI_arlock[0:0],S00_AXI_arcache[3:0],S00_AXI_arprot[2:0],S00_AXI_arregion[3:0],S00_AXI_arqos[3:0],S00_AXI_arvalid[0:0],S00_AXI_arready[0:0],S00_AXI_rdata[127:0],S00_AXI_rresp[1:0],S00_AXI_rlast[0:0],S00_AXI_rvalid[0:0],S00_AXI_rready[0:0],S01_AXI_awaddr[63:0],S01_AXI_awlen[7:0],S01_AXI_awsize[2:0],S01_AXI_awburst[1:0],S01_AXI_awlock[0:0],S01_AXI_awcache[3:0],S01_AXI_awprot[2:0],S01_AXI_awregion[3:0],S01_AXI_awqos[3:0],S01_AXI_awvalid[0:0],S01_AXI_awready[0:0],S01_AXI_wdata[127:0],S01_AXI_wstrb[15:0],S01_AXI_wlast[0:0],S01_AXI_wvalid[0:0],S01_AXI_wready[0:0],S01_AXI_bresp[1:0],S01_AXI_bvalid[0:0],S01_AXI_bready[0:0],S01_AXI_araddr[63:0],S01_AXI_arlen[7:0],S01_AXI_arsize[2:0],S01_AXI_arburst[1:0],S01_AXI_arlock[0:0],S01_AXI_arcache[3:0],S01_AXI_arprot[2:0],S01_AXI_arregion[3:0],S01_AXI_arqos[3:0],S01_AXI_arvalid[0:0],S01_AXI_arready[0:0],S01_AXI_rdata[127:0],S01_AXI_rresp[1:0],S01_AXI_rlast[0:0],S01_AXI_rvalid[0:0],S01_AXI_rready[0:0],S00_INI_internoc[0:0],S01_INI_internoc[0:0],S02_INI_internoc[0:0],S03_INI_internoc[0:0],S04_INI_internoc[0:0],S05_INI_internoc[0:0],S06_INI_internoc[0:0],aclk0,sys_clk0_clk_p[0:0],sys_clk0_clk_n[0:0],CH0_DDR4_0_dq[71:0],CH0_DDR4_0_dqs_t[8:0],CH0_DDR4_0_dqs_c[8:0],CH0_DDR4_0_adr[16:0],CH0_DDR4_0_ba[1:0],CH0_DDR4_0_bg[0:0],CH0_DDR4_0_act_n[0:0],CH0_DDR4_0_reset_n[0:0],CH0_DDR4_0_ck_t[0:0],CH0_DDR4_0_ck_c[0:0],CH0_DDR4_0_cke[0:0],CH0_DDR4_0_cs_n[0:0],CH0_DDR4_0_dm_n[8:0],CH0_DDR4_0_odt[0:0],sys_clk1_clk_p[0:0],sys_clk1_clk_n[0:0],CH0_DDR4_1_dq[71:0],CH0_DDR4_1_dqs_t[8:0],CH0_DDR4_1_dqs_c[8:0],CH0_DDR4_1_adr[16:0],CH0_DDR4_1_ba[1:0],CH0_DDR4_1_bg[0:0],CH0_DDR4_1_act_n[0:0],CH0_DDR4_1_reset_n[0:0],CH0_DDR4_1_ck_t[0:0],CH0_DDR4_1_ck_c[0:0],CH0_DDR4_1_cke[0:0],CH0_DDR4_1_cs_n[0:0],CH0_DDR4_1_dm_n[8:0],CH0_DDR4_1_odt[0:0],sys_clk2_clk_p[0:0],sys_clk2_clk_n[0:0],CH0_DDR4_2_dq[71:0],CH0_DDR4_2_dqs_t[8:0],CH0_DDR4_2_dqs_c[8:0],CH0_DDR4_2_adr[16:0],CH0_DDR4_2_ba[1:0],CH0_DDR4_2_bg[0:0],CH0_DDR4_2_act_n[0:0],CH0_DDR4_2_reset_n[0:0],CH0_DDR4_2_ck_t[0:0],CH0_DDR4_2_ck_c[0:0],CH0_DDR4_2_cke[0:0],CH0_DDR4_2_cs_n[0:0],CH0_DDR4_2_dm_n[8:0],CH0_DDR4_2_odt[0:0],sys_clk3_clk_p[0:0],sys_clk3_clk_n[0:0],CH0_DDR4_3_dq[71:0],CH0_DDR4_3_dqs_t[8:0],CH0_DDR4_3_dqs_c[8:0],CH0_DDR4_3_adr[16:0],CH0_DDR4_3_ba[1:0],CH0_DDR4_3_bg[0:0],CH0_DDR4_3_act_n[0:0],CH0_DDR4_3_reset_n[0:0],CH0_DDR4_3_ck_t[0:0],CH0_DDR4_3_ck_c[0:0],CH0_DDR4_3_cke[0:0],CH0_DDR4_3_cs_n[0:0],CH0_DDR4_3_dm_n[8:0],CH0_DDR4_3_odt[0:0],S01_AXI_arid[1:0],S01_AXI_awid[1:0],S01_AXI_bid[1:0],S01_AXI_rid[1:0],S00_AXI_arid[1:0],S00_AXI_awid[1:0],S00_AXI_bid[1:0],S00_AXI_rid[1:0]" */;
  input [63:0]S00_AXI_awaddr;
  input [7:0]S00_AXI_awlen;
  input [2:0]S00_AXI_awsize;
  input [1:0]S00_AXI_awburst;
  input [0:0]S00_AXI_awlock;
  input [3:0]S00_AXI_awcache;
  input [2:0]S00_AXI_awprot;
  input [3:0]S00_AXI_awregion;
  input [3:0]S00_AXI_awqos;
  input [0:0]S00_AXI_awvalid;
  output [0:0]S00_AXI_awready;
  input [127:0]S00_AXI_wdata;
  input [15:0]S00_AXI_wstrb;
  input [0:0]S00_AXI_wlast;
  input [0:0]S00_AXI_wvalid;
  output [0:0]S00_AXI_wready;
  output [1:0]S00_AXI_bresp;
  output [0:0]S00_AXI_bvalid;
  input [0:0]S00_AXI_bready;
  input [63:0]S00_AXI_araddr;
  input [7:0]S00_AXI_arlen;
  input [2:0]S00_AXI_arsize;
  input [1:0]S00_AXI_arburst;
  input [0:0]S00_AXI_arlock;
  input [3:0]S00_AXI_arcache;
  input [2:0]S00_AXI_arprot;
  input [3:0]S00_AXI_arregion;
  input [3:0]S00_AXI_arqos;
  input [0:0]S00_AXI_arvalid;
  output [0:0]S00_AXI_arready;
  output [127:0]S00_AXI_rdata;
  output [1:0]S00_AXI_rresp;
  output [0:0]S00_AXI_rlast;
  output [0:0]S00_AXI_rvalid;
  input [0:0]S00_AXI_rready;
  input [63:0]S01_AXI_awaddr;
  input [7:0]S01_AXI_awlen;
  input [2:0]S01_AXI_awsize;
  input [1:0]S01_AXI_awburst;
  input [0:0]S01_AXI_awlock;
  input [3:0]S01_AXI_awcache;
  input [2:0]S01_AXI_awprot;
  input [3:0]S01_AXI_awregion;
  input [3:0]S01_AXI_awqos;
  input [0:0]S01_AXI_awvalid;
  output [0:0]S01_AXI_awready;
  input [127:0]S01_AXI_wdata;
  input [15:0]S01_AXI_wstrb;
  input [0:0]S01_AXI_wlast;
  input [0:0]S01_AXI_wvalid;
  output [0:0]S01_AXI_wready;
  output [1:0]S01_AXI_bresp;
  output [0:0]S01_AXI_bvalid;
  input [0:0]S01_AXI_bready;
  input [63:0]S01_AXI_araddr;
  input [7:0]S01_AXI_arlen;
  input [2:0]S01_AXI_arsize;
  input [1:0]S01_AXI_arburst;
  input [0:0]S01_AXI_arlock;
  input [3:0]S01_AXI_arcache;
  input [2:0]S01_AXI_arprot;
  input [3:0]S01_AXI_arregion;
  input [3:0]S01_AXI_arqos;
  input [0:0]S01_AXI_arvalid;
  output [0:0]S01_AXI_arready;
  output [127:0]S01_AXI_rdata;
  output [1:0]S01_AXI_rresp;
  output [0:0]S01_AXI_rlast;
  output [0:0]S01_AXI_rvalid;
  input [0:0]S01_AXI_rready;
  input [0:0]S00_INI_internoc;
  input [0:0]S01_INI_internoc;
  input [0:0]S02_INI_internoc;
  input [0:0]S03_INI_internoc;
  input [0:0]S04_INI_internoc;
  input [0:0]S05_INI_internoc;
  input [0:0]S06_INI_internoc;
  input aclk0;
  input [0:0]sys_clk0_clk_p;
  input [0:0]sys_clk0_clk_n;
  inout [71:0]CH0_DDR4_0_dq;
  inout [8:0]CH0_DDR4_0_dqs_t;
  inout [8:0]CH0_DDR4_0_dqs_c;
  output [16:0]CH0_DDR4_0_adr;
  output [1:0]CH0_DDR4_0_ba;
  output [0:0]CH0_DDR4_0_bg;
  output [0:0]CH0_DDR4_0_act_n;
  output [0:0]CH0_DDR4_0_reset_n;
  output [0:0]CH0_DDR4_0_ck_t;
  output [0:0]CH0_DDR4_0_ck_c;
  output [0:0]CH0_DDR4_0_cke;
  output [0:0]CH0_DDR4_0_cs_n;
  inout [8:0]CH0_DDR4_0_dm_n;
  output [0:0]CH0_DDR4_0_odt;
  input [0:0]sys_clk1_clk_p;
  input [0:0]sys_clk1_clk_n;
  inout [71:0]CH0_DDR4_1_dq;
  inout [8:0]CH0_DDR4_1_dqs_t;
  inout [8:0]CH0_DDR4_1_dqs_c;
  output [16:0]CH0_DDR4_1_adr;
  output [1:0]CH0_DDR4_1_ba;
  output [0:0]CH0_DDR4_1_bg;
  output [0:0]CH0_DDR4_1_act_n;
  output [0:0]CH0_DDR4_1_reset_n;
  output [0:0]CH0_DDR4_1_ck_t;
  output [0:0]CH0_DDR4_1_ck_c;
  output [0:0]CH0_DDR4_1_cke;
  output [0:0]CH0_DDR4_1_cs_n;
  inout [8:0]CH0_DDR4_1_dm_n;
  output [0:0]CH0_DDR4_1_odt;
  input [0:0]sys_clk2_clk_p;
  input [0:0]sys_clk2_clk_n;
  inout [71:0]CH0_DDR4_2_dq;
  inout [8:0]CH0_DDR4_2_dqs_t;
  inout [8:0]CH0_DDR4_2_dqs_c;
  output [16:0]CH0_DDR4_2_adr;
  output [1:0]CH0_DDR4_2_ba;
  output [0:0]CH0_DDR4_2_bg;
  output [0:0]CH0_DDR4_2_act_n;
  output [0:0]CH0_DDR4_2_reset_n;
  output [0:0]CH0_DDR4_2_ck_t;
  output [0:0]CH0_DDR4_2_ck_c;
  output [0:0]CH0_DDR4_2_cke;
  output [0:0]CH0_DDR4_2_cs_n;
  inout [8:0]CH0_DDR4_2_dm_n;
  output [0:0]CH0_DDR4_2_odt;
  input [0:0]sys_clk3_clk_p;
  input [0:0]sys_clk3_clk_n;
  inout [71:0]CH0_DDR4_3_dq;
  inout [8:0]CH0_DDR4_3_dqs_t;
  inout [8:0]CH0_DDR4_3_dqs_c;
  output [16:0]CH0_DDR4_3_adr;
  output [1:0]CH0_DDR4_3_ba;
  output [0:0]CH0_DDR4_3_bg;
  output [0:0]CH0_DDR4_3_act_n;
  output [0:0]CH0_DDR4_3_reset_n;
  output [0:0]CH0_DDR4_3_ck_t;
  output [0:0]CH0_DDR4_3_ck_c;
  output [0:0]CH0_DDR4_3_cke;
  output [0:0]CH0_DDR4_3_cs_n;
  inout [8:0]CH0_DDR4_3_dm_n;
  output [0:0]CH0_DDR4_3_odt;
  input [1:0]S01_AXI_arid;
  input [1:0]S01_AXI_awid;
  output [1:0]S01_AXI_bid;
  output [1:0]S01_AXI_rid;
  input [1:0]S00_AXI_arid;
  input [1:0]S00_AXI_awid;
  output [1:0]S00_AXI_bid;
  output [1:0]S00_AXI_rid;
endmodule
