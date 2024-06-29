// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2022.2 (lin64) Build 3671981 Fri Oct 14 04:59:54 MDT 2022
// Date        : Mon Dec  5 00:21:10 2022
// Host        : xsjdcslab02.xilinx.com running 64-bit CentOS Linux release 8.1.1911 (Core)
// Command     : write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ top_shell_utils_remap_1_0_sim_netlist.v
// Design      : top_shell_utils_remap_1_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xcvc1902-vsvd1760-2MP-e-S
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* C_MASTER_ADDR = "32'b00000000000000000011011000000000" *) (* C_S_AXI_ADDR_WIDTH = "64" *) (* C_S_AXI_DATA_WIDTH = "128" *) 
(* C_TRANSPARENT_BITS = "24" *) (* C_XDEVICEFAMILY = "versal" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_shell_utils_versal_remap_v1_0_0
   (AXI_ACLK,
    AXI_ARESETN,
    S_AXI_ARADDR,
    S_AXI_ARBURST,
    S_AXI_ARCACHE,
    S_AXI_ARID,
    S_AXI_ARLEN,
    S_AXI_ARLOCK,
    S_AXI_ARPROT,
    S_AXI_ARREADY,
    S_AXI_ARSIZE,
    S_AXI_ARVALID,
    S_AXI_AWADDR,
    S_AXI_AWBURST,
    S_AXI_AWCACHE,
    S_AXI_AWID,
    S_AXI_AWLEN,
    S_AXI_AWLOCK,
    S_AXI_AWPROT,
    S_AXI_AWREADY,
    S_AXI_AWSIZE,
    S_AXI_AWVALID,
    S_AXI_BID,
    S_AXI_BREADY,
    S_AXI_BRESP,
    S_AXI_BVALID,
    S_AXI_RDATA,
    S_AXI_RID,
    S_AXI_RLAST,
    S_AXI_RREADY,
    S_AXI_RRESP,
    S_AXI_RVALID,
    S_AXI_WDATA,
    S_AXI_WLAST,
    S_AXI_WREADY,
    S_AXI_WSTRB,
    S_AXI_WVALID,
    M_AXI_ARADDR,
    M_AXI_ARBURST,
    M_AXI_ARCACHE,
    M_AXI_ARID,
    M_AXI_ARLEN,
    M_AXI_ARLOCK,
    M_AXI_ARPROT,
    M_AXI_ARREADY,
    M_AXI_ARSIZE,
    M_AXI_ARVALID,
    M_AXI_AWADDR,
    M_AXI_AWBURST,
    M_AXI_AWCACHE,
    M_AXI_AWID,
    M_AXI_AWLEN,
    M_AXI_AWLOCK,
    M_AXI_AWPROT,
    M_AXI_AWREADY,
    M_AXI_AWSIZE,
    M_AXI_AWVALID,
    M_AXI_BID,
    M_AXI_BREADY,
    M_AXI_BRESP,
    M_AXI_BVALID,
    M_AXI_RDATA,
    M_AXI_RID,
    M_AXI_RLAST,
    M_AXI_RREADY,
    M_AXI_RRESP,
    M_AXI_RVALID,
    M_AXI_WDATA,
    M_AXI_WLAST,
    M_AXI_WREADY,
    M_AXI_WSTRB,
    M_AXI_WVALID);
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

  wire \<const0> ;
  wire M_AXI_ARREADY;
  wire M_AXI_AWREADY;
  wire [1:0]M_AXI_BID;
  wire [1:0]M_AXI_BRESP;
  wire M_AXI_BVALID;
  wire [127:0]M_AXI_RDATA;
  wire [1:0]M_AXI_RID;
  wire M_AXI_RLAST;
  wire [1:0]M_AXI_RRESP;
  wire M_AXI_RVALID;
  wire M_AXI_WREADY;
  wire [63:0]S_AXI_ARADDR;
  wire [1:0]S_AXI_ARBURST;
  wire [3:0]S_AXI_ARCACHE;
  wire [1:0]S_AXI_ARID;
  wire [7:0]S_AXI_ARLEN;
  wire [0:0]S_AXI_ARLOCK;
  wire [2:0]S_AXI_ARPROT;
  wire [2:0]S_AXI_ARSIZE;
  wire S_AXI_ARVALID;
  wire [63:0]S_AXI_AWADDR;
  wire [1:0]S_AXI_AWBURST;
  wire [3:0]S_AXI_AWCACHE;
  wire [1:0]S_AXI_AWID;
  wire [7:0]S_AXI_AWLEN;
  wire [0:0]S_AXI_AWLOCK;
  wire [2:0]S_AXI_AWPROT;
  wire [2:0]S_AXI_AWSIZE;
  wire S_AXI_AWVALID;
  wire S_AXI_BREADY;
  wire S_AXI_RREADY;
  wire [127:0]S_AXI_WDATA;
  wire S_AXI_WLAST;
  wire [15:0]S_AXI_WSTRB;
  wire S_AXI_WVALID;

  assign M_AXI_ARADDR[63] = \<const0> ;
  assign M_AXI_ARADDR[62] = \<const0> ;
  assign M_AXI_ARADDR[61] = \<const0> ;
  assign M_AXI_ARADDR[60] = \<const0> ;
  assign M_AXI_ARADDR[59] = \<const0> ;
  assign M_AXI_ARADDR[58] = \<const0> ;
  assign M_AXI_ARADDR[57] = \<const0> ;
  assign M_AXI_ARADDR[56] = \<const0> ;
  assign M_AXI_ARADDR[55] = \<const0> ;
  assign M_AXI_ARADDR[54] = \<const0> ;
  assign M_AXI_ARADDR[53] = \<const0> ;
  assign M_AXI_ARADDR[52] = \<const0> ;
  assign M_AXI_ARADDR[51] = \<const0> ;
  assign M_AXI_ARADDR[50] = \<const0> ;
  assign M_AXI_ARADDR[49] = \<const0> ;
  assign M_AXI_ARADDR[48] = \<const0> ;
  assign M_AXI_ARADDR[47] = \<const0> ;
  assign M_AXI_ARADDR[46] = \<const0> ;
  assign M_AXI_ARADDR[45] = \<const0> ;
  assign M_AXI_ARADDR[44] = \<const0> ;
  assign M_AXI_ARADDR[43] = \<const0> ;
  assign M_AXI_ARADDR[42] = \<const0> ;
  assign M_AXI_ARADDR[41] = \<const0> ;
  assign M_AXI_ARADDR[40] = \<const0> ;
  assign M_AXI_ARADDR[39] = \<const0> ;
  assign M_AXI_ARADDR[38] = \<const0> ;
  assign M_AXI_ARADDR[37] = \<const0> ;
  assign M_AXI_ARADDR[36] = \<const0> ;
  assign M_AXI_ARADDR[35] = \<const0> ;
  assign M_AXI_ARADDR[34] = \<const0> ;
  assign M_AXI_ARADDR[33] = \<const0> ;
  assign M_AXI_ARADDR[32] = \<const0> ;
  assign M_AXI_ARADDR[31] = \<const0> ;
  assign M_AXI_ARADDR[30] = \<const0> ;
  assign M_AXI_ARADDR[29] = \<const0> ;
  assign M_AXI_ARADDR[28] = \<const0> ;
  assign M_AXI_ARADDR[27] = \<const0> ;
  assign M_AXI_ARADDR[26] = \<const0> ;
  assign M_AXI_ARADDR[25] = \<const0> ;
  assign M_AXI_ARADDR[24] = \<const0> ;
  assign M_AXI_ARADDR[23:0] = S_AXI_ARADDR[23:0];
  assign M_AXI_ARBURST[1:0] = S_AXI_ARBURST;
  assign M_AXI_ARCACHE[3:0] = S_AXI_ARCACHE;
  assign M_AXI_ARID[1:0] = S_AXI_ARID;
  assign M_AXI_ARLEN[7:0] = S_AXI_ARLEN;
  assign M_AXI_ARLOCK[0] = S_AXI_ARLOCK;
  assign M_AXI_ARPROT[2:0] = S_AXI_ARPROT;
  assign M_AXI_ARSIZE[2:0] = S_AXI_ARSIZE;
  assign M_AXI_ARVALID = S_AXI_ARVALID;
  assign M_AXI_AWADDR[63] = \<const0> ;
  assign M_AXI_AWADDR[62] = \<const0> ;
  assign M_AXI_AWADDR[61] = \<const0> ;
  assign M_AXI_AWADDR[60] = \<const0> ;
  assign M_AXI_AWADDR[59] = \<const0> ;
  assign M_AXI_AWADDR[58] = \<const0> ;
  assign M_AXI_AWADDR[57] = \<const0> ;
  assign M_AXI_AWADDR[56] = \<const0> ;
  assign M_AXI_AWADDR[55] = \<const0> ;
  assign M_AXI_AWADDR[54] = \<const0> ;
  assign M_AXI_AWADDR[53] = \<const0> ;
  assign M_AXI_AWADDR[52] = \<const0> ;
  assign M_AXI_AWADDR[51] = \<const0> ;
  assign M_AXI_AWADDR[50] = \<const0> ;
  assign M_AXI_AWADDR[49] = \<const0> ;
  assign M_AXI_AWADDR[48] = \<const0> ;
  assign M_AXI_AWADDR[47] = \<const0> ;
  assign M_AXI_AWADDR[46] = \<const0> ;
  assign M_AXI_AWADDR[45] = \<const0> ;
  assign M_AXI_AWADDR[44] = \<const0> ;
  assign M_AXI_AWADDR[43] = \<const0> ;
  assign M_AXI_AWADDR[42] = \<const0> ;
  assign M_AXI_AWADDR[41] = \<const0> ;
  assign M_AXI_AWADDR[40] = \<const0> ;
  assign M_AXI_AWADDR[39] = \<const0> ;
  assign M_AXI_AWADDR[38] = \<const0> ;
  assign M_AXI_AWADDR[37] = \<const0> ;
  assign M_AXI_AWADDR[36] = \<const0> ;
  assign M_AXI_AWADDR[35] = \<const0> ;
  assign M_AXI_AWADDR[34] = \<const0> ;
  assign M_AXI_AWADDR[33] = \<const0> ;
  assign M_AXI_AWADDR[32] = \<const0> ;
  assign M_AXI_AWADDR[31] = \<const0> ;
  assign M_AXI_AWADDR[30] = \<const0> ;
  assign M_AXI_AWADDR[29] = \<const0> ;
  assign M_AXI_AWADDR[28] = \<const0> ;
  assign M_AXI_AWADDR[27] = \<const0> ;
  assign M_AXI_AWADDR[26] = \<const0> ;
  assign M_AXI_AWADDR[25] = \<const0> ;
  assign M_AXI_AWADDR[24] = \<const0> ;
  assign M_AXI_AWADDR[23:0] = S_AXI_AWADDR[23:0];
  assign M_AXI_AWBURST[1:0] = S_AXI_AWBURST;
  assign M_AXI_AWCACHE[3:0] = S_AXI_AWCACHE;
  assign M_AXI_AWID[1:0] = S_AXI_AWID;
  assign M_AXI_AWLEN[7:0] = S_AXI_AWLEN;
  assign M_AXI_AWLOCK[0] = S_AXI_AWLOCK;
  assign M_AXI_AWPROT[2:0] = S_AXI_AWPROT;
  assign M_AXI_AWSIZE[2:0] = S_AXI_AWSIZE;
  assign M_AXI_AWVALID = S_AXI_AWVALID;
  assign M_AXI_BREADY = S_AXI_BREADY;
  assign M_AXI_RREADY = S_AXI_RREADY;
  assign M_AXI_WDATA[127:0] = S_AXI_WDATA;
  assign M_AXI_WLAST = S_AXI_WLAST;
  assign M_AXI_WSTRB[15:0] = S_AXI_WSTRB;
  assign M_AXI_WVALID = S_AXI_WVALID;
  assign S_AXI_ARREADY = M_AXI_ARREADY;
  assign S_AXI_AWREADY = M_AXI_AWREADY;
  assign S_AXI_BID[1:0] = M_AXI_BID;
  assign S_AXI_BRESP[1:0] = M_AXI_BRESP;
  assign S_AXI_BVALID = M_AXI_BVALID;
  assign S_AXI_RDATA[127:0] = M_AXI_RDATA;
  assign S_AXI_RID[1:0] = M_AXI_RID;
  assign S_AXI_RLAST = M_AXI_RLAST;
  assign S_AXI_RRESP[1:0] = M_AXI_RRESP;
  assign S_AXI_RVALID = M_AXI_RVALID;
  assign S_AXI_WREADY = M_AXI_WREADY;
  GND GND
       (.G(\<const0> ));
endmodule

(* CHECK_LICENSE_TYPE = "top_shell_utils_remap_1_0,shell_utils_versal_remap_v1_0_0,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "shell_utils_versal_remap_v1_0_0,Vivado 2022.2" *) 
(* NotValidForBitStream *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix
   (AXI_ACLK,
    AXI_ARESETN,
    S_AXI_ARADDR,
    S_AXI_ARBURST,
    S_AXI_ARCACHE,
    S_AXI_ARID,
    S_AXI_ARLEN,
    S_AXI_ARLOCK,
    S_AXI_ARPROT,
    S_AXI_ARREADY,
    S_AXI_ARSIZE,
    S_AXI_ARVALID,
    S_AXI_AWADDR,
    S_AXI_AWBURST,
    S_AXI_AWCACHE,
    S_AXI_AWID,
    S_AXI_AWLEN,
    S_AXI_AWLOCK,
    S_AXI_AWPROT,
    S_AXI_AWREADY,
    S_AXI_AWSIZE,
    S_AXI_AWVALID,
    S_AXI_BID,
    S_AXI_BREADY,
    S_AXI_BRESP,
    S_AXI_BVALID,
    S_AXI_RDATA,
    S_AXI_RID,
    S_AXI_RLAST,
    S_AXI_RREADY,
    S_AXI_RRESP,
    S_AXI_RVALID,
    S_AXI_WDATA,
    S_AXI_WLAST,
    S_AXI_WREADY,
    S_AXI_WSTRB,
    S_AXI_WVALID,
    M_AXI_ARADDR,
    M_AXI_ARBURST,
    M_AXI_ARCACHE,
    M_AXI_ARID,
    M_AXI_ARLEN,
    M_AXI_ARLOCK,
    M_AXI_ARPROT,
    M_AXI_ARREADY,
    M_AXI_ARSIZE,
    M_AXI_ARVALID,
    M_AXI_AWADDR,
    M_AXI_AWBURST,
    M_AXI_AWCACHE,
    M_AXI_AWID,
    M_AXI_AWLEN,
    M_AXI_AWLOCK,
    M_AXI_AWPROT,
    M_AXI_AWREADY,
    M_AXI_AWSIZE,
    M_AXI_AWVALID,
    M_AXI_BID,
    M_AXI_BREADY,
    M_AXI_BRESP,
    M_AXI_BVALID,
    M_AXI_RDATA,
    M_AXI_RID,
    M_AXI_RLAST,
    M_AXI_RREADY,
    M_AXI_RRESP,
    M_AXI_RVALID,
    M_AXI_WDATA,
    M_AXI_WLAST,
    M_AXI_WREADY,
    M_AXI_WSTRB,
    M_AXI_WVALID);
  (* x_interface_info = "xilinx.com:signal:clock:1.0 AXI_ACLK CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME AXI_ACLK, ASSOCIATED_BUSIF S_AXI:M_AXI, ASSOCIATED_RESET AXI_ARESETN, FREQ_HZ 99999992, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN bd_4885_pspmc_0_0_pl0_ref_clk, INSERT_VIP 0" *) input AXI_ACLK;
  (* x_interface_info = "xilinx.com:signal:reset:1.0 AXI_ARESETN RST" *) (* x_interface_parameter = "XIL_INTERFACENAME AXI_ARESETN, POLARITY ACTIVE_LOW, INSERT_VIP 0" *) input AXI_ARESETN;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S_AXI ARADDR" *) (* x_interface_parameter = "XIL_INTERFACENAME S_AXI, DATA_WIDTH 128, PROTOCOL AXI4, FREQ_HZ 99999992, ID_WIDTH 2, ADDR_WIDTH 64, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, READ_WRITE_MODE READ_WRITE, HAS_BURST 1, HAS_LOCK 1, HAS_PROT 1, HAS_CACHE 1, HAS_QOS 0, HAS_REGION 0, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, SUPPORTS_NARROW_BURST 1, NUM_READ_OUTSTANDING 32, NUM_WRITE_OUTSTANDING 32, MAX_BURST_LENGTH 256, PHASE 0.0, CLK_DOMAIN bd_4885_pspmc_0_0_pl0_ref_clk, NUM_READ_THREADS 4, NUM_WRITE_THREADS 4, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, INSERT_VIP 0" *) input [63:0]S_AXI_ARADDR;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S_AXI ARBURST" *) input [1:0]S_AXI_ARBURST;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S_AXI ARCACHE" *) input [3:0]S_AXI_ARCACHE;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S_AXI ARID" *) input [1:0]S_AXI_ARID;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S_AXI ARLEN" *) input [7:0]S_AXI_ARLEN;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S_AXI ARLOCK" *) input [0:0]S_AXI_ARLOCK;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S_AXI ARPROT" *) input [2:0]S_AXI_ARPROT;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S_AXI ARREADY" *) output S_AXI_ARREADY;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S_AXI ARSIZE" *) input [2:0]S_AXI_ARSIZE;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S_AXI ARVALID" *) input S_AXI_ARVALID;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S_AXI AWADDR" *) input [63:0]S_AXI_AWADDR;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S_AXI AWBURST" *) input [1:0]S_AXI_AWBURST;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S_AXI AWCACHE" *) input [3:0]S_AXI_AWCACHE;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S_AXI AWID" *) input [1:0]S_AXI_AWID;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S_AXI AWLEN" *) input [7:0]S_AXI_AWLEN;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S_AXI AWLOCK" *) input [0:0]S_AXI_AWLOCK;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S_AXI AWPROT" *) input [2:0]S_AXI_AWPROT;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S_AXI AWREADY" *) output S_AXI_AWREADY;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S_AXI AWSIZE" *) input [2:0]S_AXI_AWSIZE;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S_AXI AWVALID" *) input S_AXI_AWVALID;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S_AXI BID" *) output [1:0]S_AXI_BID;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S_AXI BREADY" *) input S_AXI_BREADY;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S_AXI BRESP" *) output [1:0]S_AXI_BRESP;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S_AXI BVALID" *) output S_AXI_BVALID;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S_AXI RDATA" *) output [127:0]S_AXI_RDATA;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S_AXI RID" *) output [1:0]S_AXI_RID;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S_AXI RLAST" *) output S_AXI_RLAST;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S_AXI RREADY" *) input S_AXI_RREADY;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S_AXI RRESP" *) output [1:0]S_AXI_RRESP;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S_AXI RVALID" *) output S_AXI_RVALID;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S_AXI WDATA" *) input [127:0]S_AXI_WDATA;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S_AXI WLAST" *) input S_AXI_WLAST;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S_AXI WREADY" *) output S_AXI_WREADY;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S_AXI WSTRB" *) input [15:0]S_AXI_WSTRB;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S_AXI WVALID" *) input S_AXI_WVALID;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 M_AXI ARADDR" *) (* x_interface_parameter = "XIL_INTERFACENAME M_AXI, DATA_WIDTH 128, PROTOCOL AXI4, FREQ_HZ 99999992, ID_WIDTH 2, ADDR_WIDTH 64, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, READ_WRITE_MODE READ_WRITE, HAS_BURST 1, HAS_LOCK 1, HAS_PROT 1, HAS_CACHE 1, HAS_QOS 0, HAS_REGION 0, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, SUPPORTS_NARROW_BURST 1, NUM_READ_OUTSTANDING 64, NUM_WRITE_OUTSTANDING 64, MAX_BURST_LENGTH 256, PHASE 0.0, CLK_DOMAIN bd_4885_pspmc_0_0_pl0_ref_clk, NUM_READ_THREADS 1, NUM_WRITE_THREADS 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, INSERT_VIP 0" *) output [63:0]M_AXI_ARADDR;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 M_AXI ARBURST" *) output [1:0]M_AXI_ARBURST;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 M_AXI ARCACHE" *) output [3:0]M_AXI_ARCACHE;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 M_AXI ARID" *) output [1:0]M_AXI_ARID;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 M_AXI ARLEN" *) output [7:0]M_AXI_ARLEN;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 M_AXI ARLOCK" *) output [0:0]M_AXI_ARLOCK;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 M_AXI ARPROT" *) output [2:0]M_AXI_ARPROT;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 M_AXI ARREADY" *) input M_AXI_ARREADY;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 M_AXI ARSIZE" *) output [2:0]M_AXI_ARSIZE;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 M_AXI ARVALID" *) output M_AXI_ARVALID;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 M_AXI AWADDR" *) output [63:0]M_AXI_AWADDR;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 M_AXI AWBURST" *) output [1:0]M_AXI_AWBURST;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 M_AXI AWCACHE" *) output [3:0]M_AXI_AWCACHE;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 M_AXI AWID" *) output [1:0]M_AXI_AWID;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 M_AXI AWLEN" *) output [7:0]M_AXI_AWLEN;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 M_AXI AWLOCK" *) output [0:0]M_AXI_AWLOCK;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 M_AXI AWPROT" *) output [2:0]M_AXI_AWPROT;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 M_AXI AWREADY" *) input M_AXI_AWREADY;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 M_AXI AWSIZE" *) output [2:0]M_AXI_AWSIZE;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 M_AXI AWVALID" *) output M_AXI_AWVALID;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 M_AXI BID" *) input [1:0]M_AXI_BID;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 M_AXI BREADY" *) output M_AXI_BREADY;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 M_AXI BRESP" *) input [1:0]M_AXI_BRESP;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 M_AXI BVALID" *) input M_AXI_BVALID;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 M_AXI RDATA" *) input [127:0]M_AXI_RDATA;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 M_AXI RID" *) input [1:0]M_AXI_RID;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 M_AXI RLAST" *) input M_AXI_RLAST;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 M_AXI RREADY" *) output M_AXI_RREADY;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 M_AXI RRESP" *) input [1:0]M_AXI_RRESP;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 M_AXI RVALID" *) input M_AXI_RVALID;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 M_AXI WDATA" *) output [127:0]M_AXI_WDATA;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 M_AXI WLAST" *) output M_AXI_WLAST;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 M_AXI WREADY" *) input M_AXI_WREADY;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 M_AXI WSTRB" *) output [15:0]M_AXI_WSTRB;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 M_AXI WVALID" *) output M_AXI_WVALID;

  wire \<const0> ;
  wire \<const1> ;
  wire [23:0]\^M_AXI_ARADDR ;
  wire [1:0]M_AXI_ARBURST;
  wire [3:0]M_AXI_ARCACHE;
  wire [1:0]M_AXI_ARID;
  wire [7:0]M_AXI_ARLEN;
  wire [0:0]M_AXI_ARLOCK;
  wire [2:0]M_AXI_ARPROT;
  wire M_AXI_ARREADY;
  wire [2:0]M_AXI_ARSIZE;
  wire M_AXI_ARVALID;
  wire [23:0]\^M_AXI_AWADDR ;
  wire [1:0]M_AXI_AWBURST;
  wire [3:0]M_AXI_AWCACHE;
  wire [1:0]M_AXI_AWID;
  wire [7:0]M_AXI_AWLEN;
  wire [0:0]M_AXI_AWLOCK;
  wire [2:0]M_AXI_AWPROT;
  wire M_AXI_AWREADY;
  wire [2:0]M_AXI_AWSIZE;
  wire M_AXI_AWVALID;
  wire [1:0]M_AXI_BID;
  wire M_AXI_BREADY;
  wire [1:0]M_AXI_BRESP;
  wire M_AXI_BVALID;
  wire [127:0]M_AXI_RDATA;
  wire [1:0]M_AXI_RID;
  wire M_AXI_RLAST;
  wire M_AXI_RREADY;
  wire [1:0]M_AXI_RRESP;
  wire M_AXI_RVALID;
  wire [127:0]M_AXI_WDATA;
  wire M_AXI_WLAST;
  wire M_AXI_WREADY;
  wire [15:0]M_AXI_WSTRB;
  wire M_AXI_WVALID;
  wire [63:0]S_AXI_ARADDR;
  wire [1:0]S_AXI_ARBURST;
  wire [3:0]S_AXI_ARCACHE;
  wire [1:0]S_AXI_ARID;
  wire [7:0]S_AXI_ARLEN;
  wire [0:0]S_AXI_ARLOCK;
  wire [2:0]S_AXI_ARPROT;
  wire S_AXI_ARREADY;
  wire [2:0]S_AXI_ARSIZE;
  wire S_AXI_ARVALID;
  wire [63:0]S_AXI_AWADDR;
  wire [1:0]S_AXI_AWBURST;
  wire [3:0]S_AXI_AWCACHE;
  wire [1:0]S_AXI_AWID;
  wire [7:0]S_AXI_AWLEN;
  wire [0:0]S_AXI_AWLOCK;
  wire [2:0]S_AXI_AWPROT;
  wire S_AXI_AWREADY;
  wire [2:0]S_AXI_AWSIZE;
  wire S_AXI_AWVALID;
  wire [1:0]S_AXI_BID;
  wire S_AXI_BREADY;
  wire [1:0]S_AXI_BRESP;
  wire S_AXI_BVALID;
  wire [127:0]S_AXI_RDATA;
  wire [1:0]S_AXI_RID;
  wire S_AXI_RLAST;
  wire S_AXI_RREADY;
  wire [1:0]S_AXI_RRESP;
  wire S_AXI_RVALID;
  wire [127:0]S_AXI_WDATA;
  wire S_AXI_WLAST;
  wire S_AXI_WREADY;
  wire [15:0]S_AXI_WSTRB;
  wire S_AXI_WVALID;
  wire [63:24]NLW_U0_M_AXI_ARADDR_UNCONNECTED;
  wire [63:24]NLW_U0_M_AXI_AWADDR_UNCONNECTED;

  assign M_AXI_ARADDR[63] = \<const0> ;
  assign M_AXI_ARADDR[62] = \<const0> ;
  assign M_AXI_ARADDR[61] = \<const0> ;
  assign M_AXI_ARADDR[60] = \<const0> ;
  assign M_AXI_ARADDR[59] = \<const0> ;
  assign M_AXI_ARADDR[58] = \<const0> ;
  assign M_AXI_ARADDR[57] = \<const0> ;
  assign M_AXI_ARADDR[56] = \<const0> ;
  assign M_AXI_ARADDR[55] = \<const0> ;
  assign M_AXI_ARADDR[54] = \<const0> ;
  assign M_AXI_ARADDR[53] = \<const0> ;
  assign M_AXI_ARADDR[52] = \<const0> ;
  assign M_AXI_ARADDR[51] = \<const0> ;
  assign M_AXI_ARADDR[50] = \<const0> ;
  assign M_AXI_ARADDR[49] = \<const0> ;
  assign M_AXI_ARADDR[48] = \<const0> ;
  assign M_AXI_ARADDR[47] = \<const0> ;
  assign M_AXI_ARADDR[46] = \<const0> ;
  assign M_AXI_ARADDR[45] = \<const0> ;
  assign M_AXI_ARADDR[44] = \<const0> ;
  assign M_AXI_ARADDR[43] = \<const0> ;
  assign M_AXI_ARADDR[42] = \<const0> ;
  assign M_AXI_ARADDR[41] = \<const0> ;
  assign M_AXI_ARADDR[40] = \<const0> ;
  assign M_AXI_ARADDR[39] = \<const0> ;
  assign M_AXI_ARADDR[38] = \<const0> ;
  assign M_AXI_ARADDR[37] = \<const0> ;
  assign M_AXI_ARADDR[36] = \<const0> ;
  assign M_AXI_ARADDR[35] = \<const0> ;
  assign M_AXI_ARADDR[34] = \<const0> ;
  assign M_AXI_ARADDR[33] = \<const0> ;
  assign M_AXI_ARADDR[32] = \<const0> ;
  assign M_AXI_ARADDR[31] = \<const0> ;
  assign M_AXI_ARADDR[30] = \<const0> ;
  assign M_AXI_ARADDR[29] = \<const1> ;
  assign M_AXI_ARADDR[28] = \<const1> ;
  assign M_AXI_ARADDR[27] = \<const0> ;
  assign M_AXI_ARADDR[26] = \<const1> ;
  assign M_AXI_ARADDR[25] = \<const1> ;
  assign M_AXI_ARADDR[24] = \<const0> ;
  assign M_AXI_ARADDR[23:0] = \^M_AXI_ARADDR [23:0];
  assign M_AXI_AWADDR[63] = \<const0> ;
  assign M_AXI_AWADDR[62] = \<const0> ;
  assign M_AXI_AWADDR[61] = \<const0> ;
  assign M_AXI_AWADDR[60] = \<const0> ;
  assign M_AXI_AWADDR[59] = \<const0> ;
  assign M_AXI_AWADDR[58] = \<const0> ;
  assign M_AXI_AWADDR[57] = \<const0> ;
  assign M_AXI_AWADDR[56] = \<const0> ;
  assign M_AXI_AWADDR[55] = \<const0> ;
  assign M_AXI_AWADDR[54] = \<const0> ;
  assign M_AXI_AWADDR[53] = \<const0> ;
  assign M_AXI_AWADDR[52] = \<const0> ;
  assign M_AXI_AWADDR[51] = \<const0> ;
  assign M_AXI_AWADDR[50] = \<const0> ;
  assign M_AXI_AWADDR[49] = \<const0> ;
  assign M_AXI_AWADDR[48] = \<const0> ;
  assign M_AXI_AWADDR[47] = \<const0> ;
  assign M_AXI_AWADDR[46] = \<const0> ;
  assign M_AXI_AWADDR[45] = \<const0> ;
  assign M_AXI_AWADDR[44] = \<const0> ;
  assign M_AXI_AWADDR[43] = \<const0> ;
  assign M_AXI_AWADDR[42] = \<const0> ;
  assign M_AXI_AWADDR[41] = \<const0> ;
  assign M_AXI_AWADDR[40] = \<const0> ;
  assign M_AXI_AWADDR[39] = \<const0> ;
  assign M_AXI_AWADDR[38] = \<const0> ;
  assign M_AXI_AWADDR[37] = \<const0> ;
  assign M_AXI_AWADDR[36] = \<const0> ;
  assign M_AXI_AWADDR[35] = \<const0> ;
  assign M_AXI_AWADDR[34] = \<const0> ;
  assign M_AXI_AWADDR[33] = \<const0> ;
  assign M_AXI_AWADDR[32] = \<const0> ;
  assign M_AXI_AWADDR[31] = \<const0> ;
  assign M_AXI_AWADDR[30] = \<const0> ;
  assign M_AXI_AWADDR[29] = \<const1> ;
  assign M_AXI_AWADDR[28] = \<const1> ;
  assign M_AXI_AWADDR[27] = \<const0> ;
  assign M_AXI_AWADDR[26] = \<const1> ;
  assign M_AXI_AWADDR[25] = \<const1> ;
  assign M_AXI_AWADDR[24] = \<const0> ;
  assign M_AXI_AWADDR[23:0] = \^M_AXI_AWADDR [23:0];
  GND GND
       (.G(\<const0> ));
  (* C_MASTER_ADDR = "32'b00000000000000000011011000000000" *) 
  (* C_S_AXI_ADDR_WIDTH = "64" *) 
  (* C_S_AXI_DATA_WIDTH = "128" *) 
  (* C_TRANSPARENT_BITS = "24" *) 
  (* C_XDEVICEFAMILY = "versal" *) 
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_shell_utils_versal_remap_v1_0_0 U0
       (.AXI_ACLK(1'b0),
        .AXI_ARESETN(1'b0),
        .M_AXI_ARADDR({NLW_U0_M_AXI_ARADDR_UNCONNECTED[63:24],\^M_AXI_ARADDR }),
        .M_AXI_ARBURST(M_AXI_ARBURST),
        .M_AXI_ARCACHE(M_AXI_ARCACHE),
        .M_AXI_ARID(M_AXI_ARID),
        .M_AXI_ARLEN(M_AXI_ARLEN),
        .M_AXI_ARLOCK(M_AXI_ARLOCK),
        .M_AXI_ARPROT(M_AXI_ARPROT),
        .M_AXI_ARREADY(M_AXI_ARREADY),
        .M_AXI_ARSIZE(M_AXI_ARSIZE),
        .M_AXI_ARVALID(M_AXI_ARVALID),
        .M_AXI_AWADDR({NLW_U0_M_AXI_AWADDR_UNCONNECTED[63:24],\^M_AXI_AWADDR }),
        .M_AXI_AWBURST(M_AXI_AWBURST),
        .M_AXI_AWCACHE(M_AXI_AWCACHE),
        .M_AXI_AWID(M_AXI_AWID),
        .M_AXI_AWLEN(M_AXI_AWLEN),
        .M_AXI_AWLOCK(M_AXI_AWLOCK),
        .M_AXI_AWPROT(M_AXI_AWPROT),
        .M_AXI_AWREADY(M_AXI_AWREADY),
        .M_AXI_AWSIZE(M_AXI_AWSIZE),
        .M_AXI_AWVALID(M_AXI_AWVALID),
        .M_AXI_BID(M_AXI_BID),
        .M_AXI_BREADY(M_AXI_BREADY),
        .M_AXI_BRESP(M_AXI_BRESP),
        .M_AXI_BVALID(M_AXI_BVALID),
        .M_AXI_RDATA(M_AXI_RDATA),
        .M_AXI_RID(M_AXI_RID),
        .M_AXI_RLAST(M_AXI_RLAST),
        .M_AXI_RREADY(M_AXI_RREADY),
        .M_AXI_RRESP(M_AXI_RRESP),
        .M_AXI_RVALID(M_AXI_RVALID),
        .M_AXI_WDATA(M_AXI_WDATA),
        .M_AXI_WLAST(M_AXI_WLAST),
        .M_AXI_WREADY(M_AXI_WREADY),
        .M_AXI_WSTRB(M_AXI_WSTRB),
        .M_AXI_WVALID(M_AXI_WVALID),
        .S_AXI_ARADDR({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,S_AXI_ARADDR[23:0]}),
        .S_AXI_ARBURST(S_AXI_ARBURST),
        .S_AXI_ARCACHE(S_AXI_ARCACHE),
        .S_AXI_ARID(S_AXI_ARID),
        .S_AXI_ARLEN(S_AXI_ARLEN),
        .S_AXI_ARLOCK(S_AXI_ARLOCK),
        .S_AXI_ARPROT(S_AXI_ARPROT),
        .S_AXI_ARREADY(S_AXI_ARREADY),
        .S_AXI_ARSIZE(S_AXI_ARSIZE),
        .S_AXI_ARVALID(S_AXI_ARVALID),
        .S_AXI_AWADDR({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,S_AXI_AWADDR[23:0]}),
        .S_AXI_AWBURST(S_AXI_AWBURST),
        .S_AXI_AWCACHE(S_AXI_AWCACHE),
        .S_AXI_AWID(S_AXI_AWID),
        .S_AXI_AWLEN(S_AXI_AWLEN),
        .S_AXI_AWLOCK(S_AXI_AWLOCK),
        .S_AXI_AWPROT(S_AXI_AWPROT),
        .S_AXI_AWREADY(S_AXI_AWREADY),
        .S_AXI_AWSIZE(S_AXI_AWSIZE),
        .S_AXI_AWVALID(S_AXI_AWVALID),
        .S_AXI_BID(S_AXI_BID),
        .S_AXI_BREADY(S_AXI_BREADY),
        .S_AXI_BRESP(S_AXI_BRESP),
        .S_AXI_BVALID(S_AXI_BVALID),
        .S_AXI_RDATA(S_AXI_RDATA),
        .S_AXI_RID(S_AXI_RID),
        .S_AXI_RLAST(S_AXI_RLAST),
        .S_AXI_RREADY(S_AXI_RREADY),
        .S_AXI_RRESP(S_AXI_RRESP),
        .S_AXI_RVALID(S_AXI_RVALID),
        .S_AXI_WDATA(S_AXI_WDATA),
        .S_AXI_WLAST(S_AXI_WLAST),
        .S_AXI_WREADY(S_AXI_WREADY),
        .S_AXI_WSTRB(S_AXI_WSTRB),
        .S_AXI_WVALID(S_AXI_WVALID));
  VCC VCC
       (.P(\<const1> ));
endmodule
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;
    parameter GRES_WIDTH = 10000;
    parameter GRES_START = 10000;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    wire GRESTORE;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;
    wire FCSBO_GLBL;
    wire [3:0] DO_GLBL;
    wire [3:0] DI_GLBL;
   
    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;
    reg GRESTORE_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (strong1, weak0) GSR = GSR_int;
    assign (strong1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;
    assign (strong1, weak0) GRESTORE = GRESTORE_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

    initial begin 
	GRESTORE_int = 1'b0;
	#(GRES_START);
	GRESTORE_int = 1'b1;
	#(GRES_WIDTH);
	GRESTORE_int = 1'b0;
    end

endmodule
`endif
