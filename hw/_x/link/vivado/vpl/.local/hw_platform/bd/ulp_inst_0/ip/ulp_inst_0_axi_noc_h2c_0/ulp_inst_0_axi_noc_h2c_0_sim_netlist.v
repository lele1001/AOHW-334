// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2022.2 (lin64) Build 3671981 Fri Oct 14 04:59:54 MDT 2022
// Date        : Mon Dec  5 00:27:20 2022
// Host        : xsjdcslab02.xilinx.com running 64-bit CentOS Linux release 8.1.1911 (Core)
// Command     : write_verilog -force -mode funcsim
//               /proj/ipeng-nobkup/ccase/platforms/p4/Platforms_ccase_vck5000_dev0/Platforms/sources/vck5000/chassis/gen4x8_qdma/2/build_1205a_dbg_hub_fw_flop/hardware/xilinx_vck5000_gen4x8_qdma_base_2/xilinx_vck5000_gen4x8_qdma_base_2.gen/sources_1/bd/top/bd/ulp_inst_0/ip/ulp_inst_0_axi_noc_h2c_0/ulp_inst_0_axi_noc_h2c_0_sim_netlist.v
// Design      : ulp_inst_0_axi_noc_h2c_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xcvc1902-vsvd1760-2MP-e-S
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "ulp_inst_0_axi_noc_h2c_0,bd_0dc7,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* X_CORE_INFO = "bd_0dc7,Vivado 2022.2" *) 
(* NotValidForBitStream *)
module ulp_inst_0_axi_noc_h2c_0
   (S00_INI_internoc,
    S01_INI_internoc,
    M00_AXI_awaddr,
    M00_AXI_awlen,
    M00_AXI_awsize,
    M00_AXI_awburst,
    M00_AXI_awlock,
    M00_AXI_awcache,
    M00_AXI_awprot,
    M00_AXI_awregion,
    M00_AXI_awqos,
    M00_AXI_awvalid,
    M00_AXI_awready,
    M00_AXI_wdata,
    M00_AXI_wstrb,
    M00_AXI_wlast,
    M00_AXI_wvalid,
    M00_AXI_wready,
    M00_AXI_bresp,
    M00_AXI_bvalid,
    M00_AXI_bready,
    M00_AXI_araddr,
    M00_AXI_arlen,
    M00_AXI_arsize,
    M00_AXI_arburst,
    M00_AXI_arlock,
    M00_AXI_arcache,
    M00_AXI_arprot,
    M00_AXI_arregion,
    M00_AXI_arqos,
    M00_AXI_arvalid,
    M00_AXI_arready,
    M00_AXI_rdata,
    M00_AXI_rresp,
    M00_AXI_rlast,
    M00_AXI_rvalid,
    M00_AXI_rready,
    M01_AXI_awaddr,
    M01_AXI_awlen,
    M01_AXI_awsize,
    M01_AXI_awburst,
    M01_AXI_awlock,
    M01_AXI_awcache,
    M01_AXI_awprot,
    M01_AXI_awregion,
    M01_AXI_awqos,
    M01_AXI_awvalid,
    M01_AXI_awready,
    M01_AXI_wdata,
    M01_AXI_wstrb,
    M01_AXI_wlast,
    M01_AXI_wvalid,
    M01_AXI_wready,
    M01_AXI_bresp,
    M01_AXI_bvalid,
    M01_AXI_bready,
    M01_AXI_araddr,
    M01_AXI_arlen,
    M01_AXI_arsize,
    M01_AXI_arburst,
    M01_AXI_arlock,
    M01_AXI_arcache,
    M01_AXI_arprot,
    M01_AXI_arregion,
    M01_AXI_arqos,
    M01_AXI_arvalid,
    M01_AXI_arready,
    M01_AXI_rdata,
    M01_AXI_rresp,
    M01_AXI_rlast,
    M01_AXI_rvalid,
    M01_AXI_rready,
    aclk0,
    M01_AXI_arid,
    M01_AXI_aruser,
    M01_AXI_awid,
    M01_AXI_awuser,
    M01_AXI_bid,
    M01_AXI_rid,
    M00_AXI_arid,
    M00_AXI_aruser,
    M00_AXI_awid,
    M00_AXI_awuser,
    M00_AXI_bid,
    M00_AXI_rid);
  (* X_INTERFACE_INFO = "xilinx.com:interface:inimm:1.0 S00_INI INTERNOC" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME S00_INI, ADDR_WIDTH 64, INI_STRATEGY load, COMPUTED_STRATEGY load, R_TRAFFIC_CLASS BEST_EFFORT, W_TRAFFIC_CLASS BEST_EFFORT, R_LATENCY 300, R_RATE_LIMITER 10, W_RATE_LIMITER 10, R_MAX_BURST_LENGTH 256, W_MAX_BURST_LENGTH 256, CONNECTIONS M00_AXI { read_bw {1720} write_bw {1720} read_avg_burst {64} write_avg_burst {64}} , WRITE_BUFFER_SIZE 80, MY_CATEGORY pl" *) input [0:0]S00_INI_internoc;
  (* X_INTERFACE_INFO = "xilinx.com:interface:inimm:1.0 S01_INI INTERNOC" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME S01_INI, ADDR_WIDTH 64, INI_STRATEGY load, COMPUTED_STRATEGY load, R_TRAFFIC_CLASS BEST_EFFORT, W_TRAFFIC_CLASS BEST_EFFORT, R_LATENCY 300, R_RATE_LIMITER 10, W_RATE_LIMITER 10, R_MAX_BURST_LENGTH 256, W_MAX_BURST_LENGTH 256, CONNECTIONS M01_AXI { read_bw {1720} write_bw {1720} read_avg_burst {64} write_avg_burst {64}} , WRITE_BUFFER_SIZE 80, MY_CATEGORY pl" *) input [0:0]S01_INI_internoc;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M00_AXI AWADDR" *) output [63:0]M00_AXI_awaddr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M00_AXI AWLEN" *) output [7:0]M00_AXI_awlen;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M00_AXI AWSIZE" *) output [2:0]M00_AXI_awsize;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M00_AXI AWBURST" *) output [1:0]M00_AXI_awburst;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M00_AXI AWLOCK" *) output [0:0]M00_AXI_awlock;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M00_AXI AWCACHE" *) output [3:0]M00_AXI_awcache;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M00_AXI AWPROT" *) output [2:0]M00_AXI_awprot;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M00_AXI AWREGION" *) output [3:0]M00_AXI_awregion;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M00_AXI AWQOS" *) output [3:0]M00_AXI_awqos;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M00_AXI AWVALID" *) output [0:0]M00_AXI_awvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M00_AXI AWREADY" *) input [0:0]M00_AXI_awready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M00_AXI WDATA" *) output [127:0]M00_AXI_wdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M00_AXI WSTRB" *) output [15:0]M00_AXI_wstrb;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M00_AXI WLAST" *) output [0:0]M00_AXI_wlast;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M00_AXI WVALID" *) output [0:0]M00_AXI_wvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M00_AXI WREADY" *) input [0:0]M00_AXI_wready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M00_AXI BRESP" *) input [1:0]M00_AXI_bresp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M00_AXI BVALID" *) input [0:0]M00_AXI_bvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M00_AXI BREADY" *) output [0:0]M00_AXI_bready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M00_AXI ARADDR" *) output [63:0]M00_AXI_araddr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M00_AXI ARLEN" *) output [7:0]M00_AXI_arlen;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M00_AXI ARSIZE" *) output [2:0]M00_AXI_arsize;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M00_AXI ARBURST" *) output [1:0]M00_AXI_arburst;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M00_AXI ARLOCK" *) output [0:0]M00_AXI_arlock;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M00_AXI ARCACHE" *) output [3:0]M00_AXI_arcache;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M00_AXI ARPROT" *) output [2:0]M00_AXI_arprot;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M00_AXI ARREGION" *) output [3:0]M00_AXI_arregion;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M00_AXI ARQOS" *) output [3:0]M00_AXI_arqos;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M00_AXI ARVALID" *) output [0:0]M00_AXI_arvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M00_AXI ARREADY" *) input [0:0]M00_AXI_arready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M00_AXI RDATA" *) input [127:0]M00_AXI_rdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M00_AXI RRESP" *) input [1:0]M00_AXI_rresp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M00_AXI RLAST" *) input [0:0]M00_AXI_rlast;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M00_AXI RVALID" *) input [0:0]M00_AXI_rvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M00_AXI RREADY" *) output [0:0]M00_AXI_rready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M01_AXI AWADDR" *) output [63:0]M01_AXI_awaddr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M01_AXI AWLEN" *) output [7:0]M01_AXI_awlen;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M01_AXI AWSIZE" *) output [2:0]M01_AXI_awsize;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M01_AXI AWBURST" *) output [1:0]M01_AXI_awburst;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M01_AXI AWLOCK" *) output [0:0]M01_AXI_awlock;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M01_AXI AWCACHE" *) output [3:0]M01_AXI_awcache;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M01_AXI AWPROT" *) output [2:0]M01_AXI_awprot;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M01_AXI AWREGION" *) output [3:0]M01_AXI_awregion;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M01_AXI AWQOS" *) output [3:0]M01_AXI_awqos;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M01_AXI AWVALID" *) output [0:0]M01_AXI_awvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M01_AXI AWREADY" *) input [0:0]M01_AXI_awready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M01_AXI WDATA" *) output [511:0]M01_AXI_wdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M01_AXI WSTRB" *) output [63:0]M01_AXI_wstrb;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M01_AXI WLAST" *) output [0:0]M01_AXI_wlast;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M01_AXI WVALID" *) output [0:0]M01_AXI_wvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M01_AXI WREADY" *) input [0:0]M01_AXI_wready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M01_AXI BRESP" *) input [1:0]M01_AXI_bresp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M01_AXI BVALID" *) input [0:0]M01_AXI_bvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M01_AXI BREADY" *) output [0:0]M01_AXI_bready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M01_AXI ARADDR" *) output [63:0]M01_AXI_araddr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M01_AXI ARLEN" *) output [7:0]M01_AXI_arlen;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M01_AXI ARSIZE" *) output [2:0]M01_AXI_arsize;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M01_AXI ARBURST" *) output [1:0]M01_AXI_arburst;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M01_AXI ARLOCK" *) output [0:0]M01_AXI_arlock;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M01_AXI ARCACHE" *) output [3:0]M01_AXI_arcache;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M01_AXI ARPROT" *) output [2:0]M01_AXI_arprot;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M01_AXI ARREGION" *) output [3:0]M01_AXI_arregion;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M01_AXI ARQOS" *) output [3:0]M01_AXI_arqos;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M01_AXI ARVALID" *) output [0:0]M01_AXI_arvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M01_AXI ARREADY" *) input [0:0]M01_AXI_arready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M01_AXI RDATA" *) input [511:0]M01_AXI_rdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M01_AXI RRESP" *) input [1:0]M01_AXI_rresp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M01_AXI RLAST" *) input [0:0]M01_AXI_rlast;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M01_AXI RVALID" *) input [0:0]M01_AXI_rvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M01_AXI RREADY" *) output [0:0]M01_AXI_rready;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 CLK.aclk0 CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME CLK.aclk0, FREQ_HZ 249999985, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN bd_4885_pspmc_0_0_pl2_ref_clk, ASSOCIATED_BUSIF M00_AXI:M01_AXI, INSERT_VIP 0" *) input aclk0;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M01_AXI ARID" *) output [1:0]M01_AXI_arid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M01_AXI ARUSER" *) output [17:0]M01_AXI_aruser;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M01_AXI AWID" *) output [1:0]M01_AXI_awid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M01_AXI AWUSER" *) output [17:0]M01_AXI_awuser;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M01_AXI BID" *) input [1:0]M01_AXI_bid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M01_AXI RID" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME M01_AXI, DATA_WIDTH 512, PROTOCOL AXI4, FREQ_HZ 249999985, ID_WIDTH 2, ADDR_WIDTH 64, AWUSER_WIDTH 18, ARUSER_WIDTH 18, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, READ_WRITE_MODE READ_WRITE, HAS_BURST 1, HAS_LOCK 1, HAS_PROT 1, HAS_CACHE 1, HAS_QOS 1, HAS_REGION 1, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, SUPPORTS_NARROW_BURST 1, NUM_READ_OUTSTANDING 32, NUM_WRITE_OUTSTANDING 32, MAX_BURST_LENGTH 256, PHASE 0.0, CLK_DOMAIN bd_4885_pspmc_0_0_pl2_ref_clk, NUM_READ_THREADS 4, NUM_WRITE_THREADS 4, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, INSERT_VIP 0, WRITE_BUFFER_SIZE 80, NOC_ID -1, APERTURES {0x202_0400_0000 16M}, MY_CATEGORY noc, CATEGORY pl" *) input [1:0]M01_AXI_rid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M00_AXI ARID" *) output [1:0]M00_AXI_arid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M00_AXI ARUSER" *) output [17:0]M00_AXI_aruser;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M00_AXI AWID" *) output [1:0]M00_AXI_awid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M00_AXI AWUSER" *) output [17:0]M00_AXI_awuser;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M00_AXI BID" *) input [1:0]M00_AXI_bid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M00_AXI RID" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME M00_AXI, DATA_WIDTH 128, PROTOCOL AXI4, FREQ_HZ 249999985, ID_WIDTH 2, ADDR_WIDTH 64, AWUSER_WIDTH 18, ARUSER_WIDTH 18, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, READ_WRITE_MODE READ_WRITE, HAS_BURST 1, HAS_LOCK 1, HAS_PROT 1, HAS_CACHE 1, HAS_QOS 1, HAS_REGION 1, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, SUPPORTS_NARROW_BURST 1, NUM_READ_OUTSTANDING 32, NUM_WRITE_OUTSTANDING 32, MAX_BURST_LENGTH 256, PHASE 0.0, CLK_DOMAIN bd_4885_pspmc_0_0_pl2_ref_clk, NUM_READ_THREADS 4, NUM_WRITE_THREADS 4, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, INSERT_VIP 0, WRITE_BUFFER_SIZE 80, NOC_ID -1, APERTURES {0x202_0580_0000 2M}, MY_CATEGORY noc, CATEGORY pl" *) input [1:0]M00_AXI_rid;

  wire [63:0]M00_AXI_araddr;
  wire [1:0]M00_AXI_arburst;
  wire [3:0]M00_AXI_arcache;
  wire [1:0]M00_AXI_arid;
  wire [7:0]M00_AXI_arlen;
  wire [0:0]M00_AXI_arlock;
  wire [2:0]M00_AXI_arprot;
  wire [3:0]M00_AXI_arqos;
  wire [0:0]M00_AXI_arready;
  wire [3:0]M00_AXI_arregion;
  wire [2:0]M00_AXI_arsize;
  wire [17:0]M00_AXI_aruser;
  wire [0:0]M00_AXI_arvalid;
  wire [63:0]M00_AXI_awaddr;
  wire [1:0]M00_AXI_awburst;
  wire [3:0]M00_AXI_awcache;
  wire [1:0]M00_AXI_awid;
  wire [7:0]M00_AXI_awlen;
  wire [0:0]M00_AXI_awlock;
  wire [2:0]M00_AXI_awprot;
  wire [3:0]M00_AXI_awqos;
  wire [0:0]M00_AXI_awready;
  wire [3:0]M00_AXI_awregion;
  wire [2:0]M00_AXI_awsize;
  wire [17:0]M00_AXI_awuser;
  wire [0:0]M00_AXI_awvalid;
  wire [1:0]M00_AXI_bid;
  wire [0:0]M00_AXI_bready;
  wire [1:0]M00_AXI_bresp;
  wire [0:0]M00_AXI_bvalid;
  wire [127:0]M00_AXI_rdata;
  wire [1:0]M00_AXI_rid;
  wire [0:0]M00_AXI_rlast;
  wire [0:0]M00_AXI_rready;
  wire [1:0]M00_AXI_rresp;
  wire [0:0]M00_AXI_rvalid;
  wire [127:0]M00_AXI_wdata;
  wire [0:0]M00_AXI_wlast;
  wire [0:0]M00_AXI_wready;
  wire [15:0]M00_AXI_wstrb;
  wire [0:0]M00_AXI_wvalid;
  wire [63:0]M01_AXI_araddr;
  wire [1:0]M01_AXI_arburst;
  wire [3:0]M01_AXI_arcache;
  wire [1:0]M01_AXI_arid;
  wire [7:0]M01_AXI_arlen;
  wire [0:0]M01_AXI_arlock;
  wire [2:0]M01_AXI_arprot;
  wire [3:0]M01_AXI_arqos;
  wire [0:0]M01_AXI_arready;
  wire [3:0]M01_AXI_arregion;
  wire [2:0]M01_AXI_arsize;
  wire [17:0]M01_AXI_aruser;
  wire [0:0]M01_AXI_arvalid;
  wire [63:0]M01_AXI_awaddr;
  wire [1:0]M01_AXI_awburst;
  wire [3:0]M01_AXI_awcache;
  wire [1:0]M01_AXI_awid;
  wire [7:0]M01_AXI_awlen;
  wire [0:0]M01_AXI_awlock;
  wire [2:0]M01_AXI_awprot;
  wire [3:0]M01_AXI_awqos;
  wire [0:0]M01_AXI_awready;
  wire [3:0]M01_AXI_awregion;
  wire [2:0]M01_AXI_awsize;
  wire [17:0]M01_AXI_awuser;
  wire [0:0]M01_AXI_awvalid;
  wire [1:0]M01_AXI_bid;
  wire [0:0]M01_AXI_bready;
  wire [1:0]M01_AXI_bresp;
  wire [0:0]M01_AXI_bvalid;
  wire [511:0]M01_AXI_rdata;
  wire [1:0]M01_AXI_rid;
  wire [0:0]M01_AXI_rlast;
  wire [0:0]M01_AXI_rready;
  wire [1:0]M01_AXI_rresp;
  wire [0:0]M01_AXI_rvalid;
  wire [511:0]M01_AXI_wdata;
  wire [0:0]M01_AXI_wlast;
  wire [0:0]M01_AXI_wready;
  wire [63:0]M01_AXI_wstrb;
  wire [0:0]M01_AXI_wvalid;
  wire aclk0;

  (* HW_HANDOFF = "ulp_inst_0_axi_noc_h2c_0.hwdef" *) 
  ulp_inst_0_axi_noc_h2c_0_bd_0dc7 inst
       (.M00_AXI_araddr(M00_AXI_araddr),
        .M00_AXI_arburst(M00_AXI_arburst),
        .M00_AXI_arcache(M00_AXI_arcache),
        .M00_AXI_arid(M00_AXI_arid),
        .M00_AXI_arlen(M00_AXI_arlen),
        .M00_AXI_arlock(M00_AXI_arlock),
        .M00_AXI_arprot(M00_AXI_arprot),
        .M00_AXI_arqos(M00_AXI_arqos),
        .M00_AXI_arready(M00_AXI_arready),
        .M00_AXI_arregion(M00_AXI_arregion),
        .M00_AXI_arsize(M00_AXI_arsize),
        .M00_AXI_aruser(M00_AXI_aruser),
        .M00_AXI_arvalid(M00_AXI_arvalid),
        .M00_AXI_awaddr(M00_AXI_awaddr),
        .M00_AXI_awburst(M00_AXI_awburst),
        .M00_AXI_awcache(M00_AXI_awcache),
        .M00_AXI_awid(M00_AXI_awid),
        .M00_AXI_awlen(M00_AXI_awlen),
        .M00_AXI_awlock(M00_AXI_awlock),
        .M00_AXI_awprot(M00_AXI_awprot),
        .M00_AXI_awqos(M00_AXI_awqos),
        .M00_AXI_awready(M00_AXI_awready),
        .M00_AXI_awregion(M00_AXI_awregion),
        .M00_AXI_awsize(M00_AXI_awsize),
        .M00_AXI_awuser(M00_AXI_awuser),
        .M00_AXI_awvalid(M00_AXI_awvalid),
        .M00_AXI_bid(M00_AXI_bid),
        .M00_AXI_bready(M00_AXI_bready),
        .M00_AXI_bresp(M00_AXI_bresp),
        .M00_AXI_bvalid(M00_AXI_bvalid),
        .M00_AXI_rdata(M00_AXI_rdata),
        .M00_AXI_rid(M00_AXI_rid),
        .M00_AXI_rlast(M00_AXI_rlast),
        .M00_AXI_rready(M00_AXI_rready),
        .M00_AXI_rresp(M00_AXI_rresp),
        .M00_AXI_rvalid(M00_AXI_rvalid),
        .M00_AXI_wdata(M00_AXI_wdata),
        .M00_AXI_wlast(M00_AXI_wlast),
        .M00_AXI_wready(M00_AXI_wready),
        .M00_AXI_wstrb(M00_AXI_wstrb),
        .M00_AXI_wvalid(M00_AXI_wvalid),
        .M01_AXI_araddr(M01_AXI_araddr),
        .M01_AXI_arburst(M01_AXI_arburst),
        .M01_AXI_arcache(M01_AXI_arcache),
        .M01_AXI_arid(M01_AXI_arid),
        .M01_AXI_arlen(M01_AXI_arlen),
        .M01_AXI_arlock(M01_AXI_arlock),
        .M01_AXI_arprot(M01_AXI_arprot),
        .M01_AXI_arqos(M01_AXI_arqos),
        .M01_AXI_arready(M01_AXI_arready),
        .M01_AXI_arregion(M01_AXI_arregion),
        .M01_AXI_arsize(M01_AXI_arsize),
        .M01_AXI_aruser(M01_AXI_aruser),
        .M01_AXI_arvalid(M01_AXI_arvalid),
        .M01_AXI_awaddr(M01_AXI_awaddr),
        .M01_AXI_awburst(M01_AXI_awburst),
        .M01_AXI_awcache(M01_AXI_awcache),
        .M01_AXI_awid(M01_AXI_awid),
        .M01_AXI_awlen(M01_AXI_awlen),
        .M01_AXI_awlock(M01_AXI_awlock),
        .M01_AXI_awprot(M01_AXI_awprot),
        .M01_AXI_awqos(M01_AXI_awqos),
        .M01_AXI_awready(M01_AXI_awready),
        .M01_AXI_awregion(M01_AXI_awregion),
        .M01_AXI_awsize(M01_AXI_awsize),
        .M01_AXI_awuser(M01_AXI_awuser),
        .M01_AXI_awvalid(M01_AXI_awvalid),
        .M01_AXI_bid(M01_AXI_bid),
        .M01_AXI_bready(M01_AXI_bready),
        .M01_AXI_bresp(M01_AXI_bresp),
        .M01_AXI_bvalid(M01_AXI_bvalid),
        .M01_AXI_rdata(M01_AXI_rdata),
        .M01_AXI_rid(M01_AXI_rid),
        .M01_AXI_rlast(M01_AXI_rlast),
        .M01_AXI_rready(M01_AXI_rready),
        .M01_AXI_rresp(M01_AXI_rresp),
        .M01_AXI_rvalid(M01_AXI_rvalid),
        .M01_AXI_wdata(M01_AXI_wdata),
        .M01_AXI_wlast(M01_AXI_wlast),
        .M01_AXI_wready(M01_AXI_wready),
        .M01_AXI_wstrb(M01_AXI_wstrb),
        .M01_AXI_wvalid(M01_AXI_wvalid),
        .S00_INI_internoc(1'b0),
        .S01_INI_internoc(1'b0),
        .aclk0(aclk0));
endmodule

(* HW_HANDOFF = "ulp_inst_0_axi_noc_h2c_0.hwdef" *) (* ORIG_REF_NAME = "bd_0dc7" *) 
module ulp_inst_0_axi_noc_h2c_0_bd_0dc7
   (M00_AXI_araddr,
    M00_AXI_arburst,
    M00_AXI_arcache,
    M00_AXI_arid,
    M00_AXI_arlen,
    M00_AXI_arlock,
    M00_AXI_arprot,
    M00_AXI_arqos,
    M00_AXI_arready,
    M00_AXI_arregion,
    M00_AXI_arsize,
    M00_AXI_aruser,
    M00_AXI_arvalid,
    M00_AXI_awaddr,
    M00_AXI_awburst,
    M00_AXI_awcache,
    M00_AXI_awid,
    M00_AXI_awlen,
    M00_AXI_awlock,
    M00_AXI_awprot,
    M00_AXI_awqos,
    M00_AXI_awready,
    M00_AXI_awregion,
    M00_AXI_awsize,
    M00_AXI_awuser,
    M00_AXI_awvalid,
    M00_AXI_bid,
    M00_AXI_bready,
    M00_AXI_bresp,
    M00_AXI_bvalid,
    M00_AXI_rdata,
    M00_AXI_rid,
    M00_AXI_rlast,
    M00_AXI_rready,
    M00_AXI_rresp,
    M00_AXI_rvalid,
    M00_AXI_wdata,
    M00_AXI_wlast,
    M00_AXI_wready,
    M00_AXI_wstrb,
    M00_AXI_wvalid,
    M01_AXI_araddr,
    M01_AXI_arburst,
    M01_AXI_arcache,
    M01_AXI_arid,
    M01_AXI_arlen,
    M01_AXI_arlock,
    M01_AXI_arprot,
    M01_AXI_arqos,
    M01_AXI_arready,
    M01_AXI_arregion,
    M01_AXI_arsize,
    M01_AXI_aruser,
    M01_AXI_arvalid,
    M01_AXI_awaddr,
    M01_AXI_awburst,
    M01_AXI_awcache,
    M01_AXI_awid,
    M01_AXI_awlen,
    M01_AXI_awlock,
    M01_AXI_awprot,
    M01_AXI_awqos,
    M01_AXI_awready,
    M01_AXI_awregion,
    M01_AXI_awsize,
    M01_AXI_awuser,
    M01_AXI_awvalid,
    M01_AXI_bid,
    M01_AXI_bready,
    M01_AXI_bresp,
    M01_AXI_bvalid,
    M01_AXI_rdata,
    M01_AXI_rid,
    M01_AXI_rlast,
    M01_AXI_rready,
    M01_AXI_rresp,
    M01_AXI_rvalid,
    M01_AXI_wdata,
    M01_AXI_wlast,
    M01_AXI_wready,
    M01_AXI_wstrb,
    M01_AXI_wvalid,
    S00_INI_internoc,
    S01_INI_internoc,
    aclk0);
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M00_AXI ARADDR" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME M00_AXI, ADDR_WIDTH 64, APERTURES {0x202_0580_0000 2M}, ARUSER_WIDTH 18, AWUSER_WIDTH 18, BUSER_WIDTH 0, CATEGORY pl, CLK_DOMAIN bd_4885_pspmc_0_0_pl2_ref_clk, DATA_WIDTH 128, FREQ_HZ 249999985, HAS_BRESP 1, HAS_BURST 1, HAS_CACHE 1, HAS_LOCK 1, HAS_PROT 1, HAS_QOS 1, HAS_REGION 1, HAS_RRESP 1, HAS_WSTRB 1, ID_WIDTH 2, INSERT_VIP 0, MAX_BURST_LENGTH 256, MY_CATEGORY noc, NOC_ID -1, NUM_READ_OUTSTANDING 32, NUM_READ_THREADS 4, NUM_WRITE_OUTSTANDING 32, NUM_WRITE_THREADS 4, PHASE 0.0, PROTOCOL AXI4, READ_WRITE_MODE READ_WRITE, RUSER_BITS_PER_BYTE 0, RUSER_WIDTH 0, SUPPORTS_NARROW_BURST 1, WRITE_BUFFER_SIZE 80, WUSER_BITS_PER_BYTE 0, WUSER_WIDTH 0" *) output [63:0]M00_AXI_araddr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M00_AXI ARBURST" *) output [1:0]M00_AXI_arburst;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M00_AXI ARCACHE" *) output [3:0]M00_AXI_arcache;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M00_AXI ARID" *) output [1:0]M00_AXI_arid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M00_AXI ARLEN" *) output [7:0]M00_AXI_arlen;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M00_AXI ARLOCK" *) output [0:0]M00_AXI_arlock;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M00_AXI ARPROT" *) output [2:0]M00_AXI_arprot;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M00_AXI ARQOS" *) output [3:0]M00_AXI_arqos;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M00_AXI ARREADY" *) input [0:0]M00_AXI_arready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M00_AXI ARREGION" *) output [3:0]M00_AXI_arregion;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M00_AXI ARSIZE" *) output [2:0]M00_AXI_arsize;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M00_AXI ARUSER" *) output [17:0]M00_AXI_aruser;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M00_AXI ARVALID" *) output [0:0]M00_AXI_arvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M00_AXI AWADDR" *) output [63:0]M00_AXI_awaddr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M00_AXI AWBURST" *) output [1:0]M00_AXI_awburst;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M00_AXI AWCACHE" *) output [3:0]M00_AXI_awcache;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M00_AXI AWID" *) output [1:0]M00_AXI_awid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M00_AXI AWLEN" *) output [7:0]M00_AXI_awlen;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M00_AXI AWLOCK" *) output [0:0]M00_AXI_awlock;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M00_AXI AWPROT" *) output [2:0]M00_AXI_awprot;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M00_AXI AWQOS" *) output [3:0]M00_AXI_awqos;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M00_AXI AWREADY" *) input [0:0]M00_AXI_awready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M00_AXI AWREGION" *) output [3:0]M00_AXI_awregion;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M00_AXI AWSIZE" *) output [2:0]M00_AXI_awsize;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M00_AXI AWUSER" *) output [17:0]M00_AXI_awuser;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M00_AXI AWVALID" *) output [0:0]M00_AXI_awvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M00_AXI BID" *) input [1:0]M00_AXI_bid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M00_AXI BREADY" *) output [0:0]M00_AXI_bready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M00_AXI BRESP" *) input [1:0]M00_AXI_bresp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M00_AXI BVALID" *) input [0:0]M00_AXI_bvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M00_AXI RDATA" *) input [127:0]M00_AXI_rdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M00_AXI RID" *) input [1:0]M00_AXI_rid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M00_AXI RLAST" *) input [0:0]M00_AXI_rlast;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M00_AXI RREADY" *) output [0:0]M00_AXI_rready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M00_AXI RRESP" *) input [1:0]M00_AXI_rresp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M00_AXI RVALID" *) input [0:0]M00_AXI_rvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M00_AXI WDATA" *) output [127:0]M00_AXI_wdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M00_AXI WLAST" *) output [0:0]M00_AXI_wlast;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M00_AXI WREADY" *) input [0:0]M00_AXI_wready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M00_AXI WSTRB" *) output [15:0]M00_AXI_wstrb;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M00_AXI WVALID" *) output [0:0]M00_AXI_wvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M01_AXI ARADDR" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME M01_AXI, ADDR_WIDTH 64, APERTURES {0x202_0400_0000 16M}, ARUSER_WIDTH 18, AWUSER_WIDTH 18, BUSER_WIDTH 0, CATEGORY pl, CLK_DOMAIN bd_4885_pspmc_0_0_pl2_ref_clk, DATA_WIDTH 512, FREQ_HZ 249999985, HAS_BRESP 1, HAS_BURST 1, HAS_CACHE 1, HAS_LOCK 1, HAS_PROT 1, HAS_QOS 1, HAS_REGION 1, HAS_RRESP 1, HAS_WSTRB 1, ID_WIDTH 2, INSERT_VIP 0, MAX_BURST_LENGTH 256, MY_CATEGORY noc, NOC_ID -1, NUM_READ_OUTSTANDING 32, NUM_READ_THREADS 4, NUM_WRITE_OUTSTANDING 32, NUM_WRITE_THREADS 4, PHASE 0.0, PROTOCOL AXI4, READ_WRITE_MODE READ_WRITE, RUSER_BITS_PER_BYTE 0, RUSER_WIDTH 0, SUPPORTS_NARROW_BURST 1, WRITE_BUFFER_SIZE 80, WUSER_BITS_PER_BYTE 0, WUSER_WIDTH 0" *) output [63:0]M01_AXI_araddr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M01_AXI ARBURST" *) output [1:0]M01_AXI_arburst;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M01_AXI ARCACHE" *) output [3:0]M01_AXI_arcache;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M01_AXI ARID" *) output [1:0]M01_AXI_arid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M01_AXI ARLEN" *) output [7:0]M01_AXI_arlen;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M01_AXI ARLOCK" *) output [0:0]M01_AXI_arlock;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M01_AXI ARPROT" *) output [2:0]M01_AXI_arprot;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M01_AXI ARQOS" *) output [3:0]M01_AXI_arqos;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M01_AXI ARREADY" *) input [0:0]M01_AXI_arready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M01_AXI ARREGION" *) output [3:0]M01_AXI_arregion;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M01_AXI ARSIZE" *) output [2:0]M01_AXI_arsize;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M01_AXI ARUSER" *) output [17:0]M01_AXI_aruser;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M01_AXI ARVALID" *) output [0:0]M01_AXI_arvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M01_AXI AWADDR" *) output [63:0]M01_AXI_awaddr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M01_AXI AWBURST" *) output [1:0]M01_AXI_awburst;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M01_AXI AWCACHE" *) output [3:0]M01_AXI_awcache;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M01_AXI AWID" *) output [1:0]M01_AXI_awid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M01_AXI AWLEN" *) output [7:0]M01_AXI_awlen;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M01_AXI AWLOCK" *) output [0:0]M01_AXI_awlock;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M01_AXI AWPROT" *) output [2:0]M01_AXI_awprot;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M01_AXI AWQOS" *) output [3:0]M01_AXI_awqos;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M01_AXI AWREADY" *) input [0:0]M01_AXI_awready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M01_AXI AWREGION" *) output [3:0]M01_AXI_awregion;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M01_AXI AWSIZE" *) output [2:0]M01_AXI_awsize;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M01_AXI AWUSER" *) output [17:0]M01_AXI_awuser;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M01_AXI AWVALID" *) output [0:0]M01_AXI_awvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M01_AXI BID" *) input [1:0]M01_AXI_bid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M01_AXI BREADY" *) output [0:0]M01_AXI_bready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M01_AXI BRESP" *) input [1:0]M01_AXI_bresp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M01_AXI BVALID" *) input [0:0]M01_AXI_bvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M01_AXI RDATA" *) input [511:0]M01_AXI_rdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M01_AXI RID" *) input [1:0]M01_AXI_rid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M01_AXI RLAST" *) input [0:0]M01_AXI_rlast;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M01_AXI RREADY" *) output [0:0]M01_AXI_rready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M01_AXI RRESP" *) input [1:0]M01_AXI_rresp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M01_AXI RVALID" *) input [0:0]M01_AXI_rvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M01_AXI WDATA" *) output [511:0]M01_AXI_wdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M01_AXI WLAST" *) output [0:0]M01_AXI_wlast;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M01_AXI WREADY" *) input [0:0]M01_AXI_wready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M01_AXI WSTRB" *) output [63:0]M01_AXI_wstrb;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M01_AXI WVALID" *) output [0:0]M01_AXI_wvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:inimm:1.0 S00_INI INTERNOC" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME S00_INI, ADDR_WIDTH 64, COMPUTED_STRATEGY load, CONNECTIONS M00_AXI { read_bw {1720} write_bw {1720} read_avg_burst {64} write_avg_burst {64}} , INI_STRATEGY load, MY_CATEGORY pl, R_LATENCY 300, R_MAX_BURST_LENGTH 256, R_RATE_LIMITER 10, R_TRAFFIC_CLASS BEST_EFFORT, WRITE_BUFFER_SIZE 80, W_MAX_BURST_LENGTH 256, W_RATE_LIMITER 10, W_TRAFFIC_CLASS BEST_EFFORT" *) input [0:0]S00_INI_internoc;
  (* X_INTERFACE_INFO = "xilinx.com:interface:inimm:1.0 S01_INI INTERNOC" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME S01_INI, ADDR_WIDTH 64, COMPUTED_STRATEGY load, CONNECTIONS M01_AXI { read_bw {1720} write_bw {1720} read_avg_burst {64} write_avg_burst {64}} , INI_STRATEGY load, MY_CATEGORY pl, R_LATENCY 300, R_MAX_BURST_LENGTH 256, R_RATE_LIMITER 10, R_TRAFFIC_CLASS BEST_EFFORT, WRITE_BUFFER_SIZE 80, W_MAX_BURST_LENGTH 256, W_RATE_LIMITER 10, W_TRAFFIC_CLASS BEST_EFFORT" *) input [0:0]S01_INI_internoc;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 CLK.ACLK0 CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME CLK.ACLK0, ASSOCIATED_BUSIF M00_AXI:M01_AXI, CLK_DOMAIN bd_4885_pspmc_0_0_pl2_ref_clk, FREQ_HZ 249999985, FREQ_TOLERANCE_HZ 0, INSERT_VIP 0, PHASE 0.0" *) input aclk0;

  wire [63:0]M00_AXI_araddr;
  wire [1:0]M00_AXI_arburst;
  wire [3:0]M00_AXI_arcache;
  wire [1:0]M00_AXI_arid;
  wire [7:0]M00_AXI_arlen;
  wire [0:0]M00_AXI_arlock;
  wire [2:0]M00_AXI_arprot;
  wire [3:0]M00_AXI_arqos;
  wire [0:0]M00_AXI_arready;
  wire [3:0]M00_AXI_arregion;
  wire [2:0]M00_AXI_arsize;
  wire [17:0]M00_AXI_aruser;
  wire [0:0]M00_AXI_arvalid;
  wire [63:0]M00_AXI_awaddr;
  wire [1:0]M00_AXI_awburst;
  wire [3:0]M00_AXI_awcache;
  wire [1:0]M00_AXI_awid;
  wire [7:0]M00_AXI_awlen;
  wire [0:0]M00_AXI_awlock;
  wire [2:0]M00_AXI_awprot;
  wire [3:0]M00_AXI_awqos;
  wire [0:0]M00_AXI_awready;
  wire [3:0]M00_AXI_awregion;
  wire [2:0]M00_AXI_awsize;
  wire [17:0]M00_AXI_awuser;
  wire [0:0]M00_AXI_awvalid;
  wire [1:0]M00_AXI_bid;
  wire [0:0]M00_AXI_bready;
  wire [1:0]M00_AXI_bresp;
  wire [0:0]M00_AXI_bvalid;
  wire [127:0]M00_AXI_rdata;
  wire [1:0]M00_AXI_rid;
  wire [0:0]M00_AXI_rlast;
  wire [0:0]M00_AXI_rready;
  wire [1:0]M00_AXI_rresp;
  wire [0:0]M00_AXI_rvalid;
  wire [127:0]M00_AXI_wdata;
  wire [0:0]M00_AXI_wlast;
  wire [0:0]M00_AXI_wready;
  wire [15:0]M00_AXI_wstrb;
  wire [0:0]M00_AXI_wvalid;
  wire [63:0]M01_AXI_araddr;
  wire [1:0]M01_AXI_arburst;
  wire [3:0]M01_AXI_arcache;
  wire [1:0]M01_AXI_arid;
  wire [7:0]M01_AXI_arlen;
  wire [0:0]M01_AXI_arlock;
  wire [2:0]M01_AXI_arprot;
  wire [3:0]M01_AXI_arqos;
  wire [0:0]M01_AXI_arready;
  wire [3:0]M01_AXI_arregion;
  wire [2:0]M01_AXI_arsize;
  wire [17:0]M01_AXI_aruser;
  wire [0:0]M01_AXI_arvalid;
  wire [63:0]M01_AXI_awaddr;
  wire [1:0]M01_AXI_awburst;
  wire [3:0]M01_AXI_awcache;
  wire [1:0]M01_AXI_awid;
  wire [7:0]M01_AXI_awlen;
  wire [0:0]M01_AXI_awlock;
  wire [2:0]M01_AXI_awprot;
  wire [3:0]M01_AXI_awqos;
  wire [0:0]M01_AXI_awready;
  wire [3:0]M01_AXI_awregion;
  wire [2:0]M01_AXI_awsize;
  wire [17:0]M01_AXI_awuser;
  wire [0:0]M01_AXI_awvalid;
  wire [1:0]M01_AXI_bid;
  wire [0:0]M01_AXI_bready;
  wire [1:0]M01_AXI_bresp;
  wire [0:0]M01_AXI_bvalid;
  wire [511:0]M01_AXI_rdata;
  wire [1:0]M01_AXI_rid;
  wire [0:0]M01_AXI_rlast;
  wire [0:0]M01_AXI_rready;
  wire [1:0]M01_AXI_rresp;
  wire [0:0]M01_AXI_rvalid;
  wire [511:0]M01_AXI_wdata;
  wire [0:0]M01_AXI_wlast;
  wire [0:0]M01_AXI_wready;
  wire [63:0]M01_AXI_wstrb;
  wire [0:0]M01_AXI_wvalid;
  wire aclk0;
  wire NLW_M00_AXI_nsu_IF_NOC_NPP_OUT_NOC_CREDIT_RDY_UNCONNECTED;
  wire [7:0]NLW_M00_AXI_nsu_IF_NOC_NPP_IN_NOC_CREDIT_RETURN_UNCONNECTED;
  wire [181:0]NLW_M00_AXI_nsu_IF_NOC_NPP_OUT_NOC_FLIT_UNCONNECTED;
  wire [7:0]NLW_M00_AXI_nsu_IF_NOC_NPP_OUT_NOC_VALID_UNCONNECTED;
  wire NLW_M01_AXI_nsu_IF_NOC_NPP_OUT_NOC_CREDIT_RDY_UNCONNECTED;
  wire [7:0]NLW_M01_AXI_nsu_IF_NOC_NPP_IN_NOC_CREDIT_RETURN_UNCONNECTED;
  wire [181:0]NLW_M01_AXI_nsu_IF_NOC_NPP_OUT_NOC_FLIT_UNCONNECTED;
  wire [7:0]NLW_M01_AXI_nsu_IF_NOC_NPP_OUT_NOC_VALID_UNCONNECTED;

  (* CHECK_LICENSE_TYPE = "noc_nsu_0,noc_nsu_v1_0_0_0,{}" *) 
  (* DowngradeIPIdentifiedWarnings = "yes" *) 
  (* X_CORE_INFO = "noc_nsu_v1_0_0_0,Vivado 2018.1.0" *) 
  ulp_inst_0_axi_noc_h2c_0_bd_0dc7_M00_AXI_nsu_0 M00_AXI_nsu
       (.IF_NOC_AXI_ARADDR(M00_AXI_araddr),
        .IF_NOC_AXI_ARBURST(M00_AXI_arburst),
        .IF_NOC_AXI_ARCACHE(M00_AXI_arcache),
        .IF_NOC_AXI_ARCID(M00_AXI_arid),
        .IF_NOC_AXI_ARLEN(M00_AXI_arlen),
        .IF_NOC_AXI_ARLOCK(M00_AXI_arlock),
        .IF_NOC_AXI_ARPROT(M00_AXI_arprot),
        .IF_NOC_AXI_ARQOS(M00_AXI_arqos),
        .IF_NOC_AXI_ARREADY(M00_AXI_arready),
        .IF_NOC_AXI_ARREGION(M00_AXI_arregion),
        .IF_NOC_AXI_ARSIZE(M00_AXI_arsize),
        .IF_NOC_AXI_ARUSER(M00_AXI_aruser),
        .IF_NOC_AXI_ARVALID(M00_AXI_arvalid),
        .IF_NOC_AXI_AWADDR(M00_AXI_awaddr),
        .IF_NOC_AXI_AWBURST(M00_AXI_awburst),
        .IF_NOC_AXI_AWCACHE(M00_AXI_awcache),
        .IF_NOC_AXI_AWCID(M00_AXI_awid),
        .IF_NOC_AXI_AWLEN(M00_AXI_awlen),
        .IF_NOC_AXI_AWLOCK(M00_AXI_awlock),
        .IF_NOC_AXI_AWPROT(M00_AXI_awprot),
        .IF_NOC_AXI_AWQOS(M00_AXI_awqos),
        .IF_NOC_AXI_AWREADY(M00_AXI_awready),
        .IF_NOC_AXI_AWREGION(M00_AXI_awregion),
        .IF_NOC_AXI_AWSIZE(M00_AXI_awsize),
        .IF_NOC_AXI_AWUSER(M00_AXI_awuser),
        .IF_NOC_AXI_AWVALID(M00_AXI_awvalid),
        .IF_NOC_AXI_BCID(M00_AXI_bid),
        .IF_NOC_AXI_BREADY(M00_AXI_bready),
        .IF_NOC_AXI_BRESP(M00_AXI_bresp),
        .IF_NOC_AXI_BVALID(M00_AXI_bvalid),
        .IF_NOC_AXI_RCID(M00_AXI_rid),
        .IF_NOC_AXI_RDATA(M00_AXI_rdata),
        .IF_NOC_AXI_RLAST(M00_AXI_rlast),
        .IF_NOC_AXI_RREADY(M00_AXI_rready),
        .IF_NOC_AXI_RRESP(M00_AXI_rresp),
        .IF_NOC_AXI_RVALID(M00_AXI_rvalid),
        .IF_NOC_AXI_WDATA(M00_AXI_wdata),
        .IF_NOC_AXI_WLAST(M00_AXI_wlast),
        .IF_NOC_AXI_WREADY(M00_AXI_wready),
        .IF_NOC_AXI_WSTRB(M00_AXI_wstrb),
        .IF_NOC_AXI_WVALID(M00_AXI_wvalid),
        .IF_NOC_NPP_IN_NOC_CREDIT_RDY(1'b0),
        .IF_NOC_NPP_IN_NOC_CREDIT_RETURN(NLW_M00_AXI_nsu_IF_NOC_NPP_IN_NOC_CREDIT_RETURN_UNCONNECTED[7:0]),
        .IF_NOC_NPP_IN_NOC_FLIT({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .IF_NOC_NPP_IN_NOC_VALID({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .IF_NOC_NPP_OUT_NOC_CREDIT_RDY(NLW_M00_AXI_nsu_IF_NOC_NPP_OUT_NOC_CREDIT_RDY_UNCONNECTED),
        .IF_NOC_NPP_OUT_NOC_CREDIT_RETURN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .IF_NOC_NPP_OUT_NOC_FLIT(NLW_M00_AXI_nsu_IF_NOC_NPP_OUT_NOC_FLIT_UNCONNECTED[181:0]),
        .IF_NOC_NPP_OUT_NOC_VALID(NLW_M00_AXI_nsu_IF_NOC_NPP_OUT_NOC_VALID_UNCONNECTED[7:0]),
        .NSU(1'b0),
        .aclk(aclk0));
  (* CHECK_LICENSE_TYPE = "noc_nsu_0,noc_nsu_v1_0_0_0,{}" *) 
  (* DowngradeIPIdentifiedWarnings = "yes" *) 
  (* X_CORE_INFO = "noc_nsu_v1_0_0_0,Vivado 2018.1.0" *) 
  ulp_inst_0_axi_noc_h2c_0_bd_0dc7_M01_AXI_nsu_0 M01_AXI_nsu
       (.IF_NOC_AXI_ARADDR(M01_AXI_araddr),
        .IF_NOC_AXI_ARBURST(M01_AXI_arburst),
        .IF_NOC_AXI_ARCACHE(M01_AXI_arcache),
        .IF_NOC_AXI_ARCID(M01_AXI_arid),
        .IF_NOC_AXI_ARLEN(M01_AXI_arlen),
        .IF_NOC_AXI_ARLOCK(M01_AXI_arlock),
        .IF_NOC_AXI_ARPROT(M01_AXI_arprot),
        .IF_NOC_AXI_ARQOS(M01_AXI_arqos),
        .IF_NOC_AXI_ARREADY(M01_AXI_arready),
        .IF_NOC_AXI_ARREGION(M01_AXI_arregion),
        .IF_NOC_AXI_ARSIZE(M01_AXI_arsize),
        .IF_NOC_AXI_ARUSER(M01_AXI_aruser),
        .IF_NOC_AXI_ARVALID(M01_AXI_arvalid),
        .IF_NOC_AXI_AWADDR(M01_AXI_awaddr),
        .IF_NOC_AXI_AWBURST(M01_AXI_awburst),
        .IF_NOC_AXI_AWCACHE(M01_AXI_awcache),
        .IF_NOC_AXI_AWCID(M01_AXI_awid),
        .IF_NOC_AXI_AWLEN(M01_AXI_awlen),
        .IF_NOC_AXI_AWLOCK(M01_AXI_awlock),
        .IF_NOC_AXI_AWPROT(M01_AXI_awprot),
        .IF_NOC_AXI_AWQOS(M01_AXI_awqos),
        .IF_NOC_AXI_AWREADY(M01_AXI_awready),
        .IF_NOC_AXI_AWREGION(M01_AXI_awregion),
        .IF_NOC_AXI_AWSIZE(M01_AXI_awsize),
        .IF_NOC_AXI_AWUSER(M01_AXI_awuser),
        .IF_NOC_AXI_AWVALID(M01_AXI_awvalid),
        .IF_NOC_AXI_BCID(M01_AXI_bid),
        .IF_NOC_AXI_BREADY(M01_AXI_bready),
        .IF_NOC_AXI_BRESP(M01_AXI_bresp),
        .IF_NOC_AXI_BVALID(M01_AXI_bvalid),
        .IF_NOC_AXI_RCID(M01_AXI_rid),
        .IF_NOC_AXI_RDATA(M01_AXI_rdata),
        .IF_NOC_AXI_RLAST(M01_AXI_rlast),
        .IF_NOC_AXI_RREADY(M01_AXI_rready),
        .IF_NOC_AXI_RRESP(M01_AXI_rresp),
        .IF_NOC_AXI_RVALID(M01_AXI_rvalid),
        .IF_NOC_AXI_WDATA(M01_AXI_wdata),
        .IF_NOC_AXI_WLAST(M01_AXI_wlast),
        .IF_NOC_AXI_WREADY(M01_AXI_wready),
        .IF_NOC_AXI_WSTRB(M01_AXI_wstrb),
        .IF_NOC_AXI_WVALID(M01_AXI_wvalid),
        .IF_NOC_NPP_IN_NOC_CREDIT_RDY(1'b0),
        .IF_NOC_NPP_IN_NOC_CREDIT_RETURN(NLW_M01_AXI_nsu_IF_NOC_NPP_IN_NOC_CREDIT_RETURN_UNCONNECTED[7:0]),
        .IF_NOC_NPP_IN_NOC_FLIT({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .IF_NOC_NPP_IN_NOC_VALID({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .IF_NOC_NPP_OUT_NOC_CREDIT_RDY(NLW_M01_AXI_nsu_IF_NOC_NPP_OUT_NOC_CREDIT_RDY_UNCONNECTED),
        .IF_NOC_NPP_OUT_NOC_CREDIT_RETURN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .IF_NOC_NPP_OUT_NOC_FLIT(NLW_M01_AXI_nsu_IF_NOC_NPP_OUT_NOC_FLIT_UNCONNECTED[181:0]),
        .IF_NOC_NPP_OUT_NOC_VALID(NLW_M01_AXI_nsu_IF_NOC_NPP_OUT_NOC_VALID_UNCONNECTED[7:0]),
        .NSU(1'b0),
        .aclk(aclk0));
endmodule

(* CHECK_LICENSE_TYPE = "noc_nsu_0,noc_nsu_v1_0_0_0,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* ORIG_REF_NAME = "bd_0dc7_M00_AXI_nsu_0" *) 
(* X_CORE_INFO = "noc_nsu_v1_0_0_0,Vivado 2018.1.0" *) 
module ulp_inst_0_axi_noc_h2c_0_bd_0dc7_M00_AXI_nsu_0
   (IF_NOC_AXI_ARADDR,
    IF_NOC_AXI_ARBURST,
    IF_NOC_AXI_ARCACHE,
    IF_NOC_AXI_ARCID,
    IF_NOC_AXI_ARLEN,
    IF_NOC_AXI_ARLOCK,
    IF_NOC_AXI_ARPROT,
    IF_NOC_AXI_ARQOS,
    IF_NOC_AXI_ARREGION,
    IF_NOC_AXI_ARSIZE,
    IF_NOC_AXI_ARUSER,
    IF_NOC_AXI_ARVALID,
    IF_NOC_AXI_AWADDR,
    IF_NOC_AXI_AWBURST,
    IF_NOC_AXI_AWCACHE,
    IF_NOC_AXI_AWCID,
    IF_NOC_AXI_AWLEN,
    IF_NOC_AXI_AWLOCK,
    IF_NOC_AXI_AWPROT,
    IF_NOC_AXI_AWQOS,
    IF_NOC_AXI_AWREGION,
    IF_NOC_AXI_AWSIZE,
    IF_NOC_AXI_AWUSER,
    IF_NOC_AXI_AWVALID,
    IF_NOC_AXI_BREADY,
    IF_NOC_AXI_RREADY,
    IF_NOC_AXI_WDATA,
    IF_NOC_AXI_WLAST,
    IF_NOC_AXI_WSTRB,
    IF_NOC_AXI_WVALID,
    IF_NOC_AXI_ARREADY,
    IF_NOC_AXI_AWREADY,
    IF_NOC_AXI_BCID,
    IF_NOC_AXI_BRESP,
    IF_NOC_AXI_BVALID,
    IF_NOC_AXI_RCID,
    IF_NOC_AXI_RDATA,
    IF_NOC_AXI_RLAST,
    IF_NOC_AXI_RRESP,
    IF_NOC_AXI_RVALID,
    IF_NOC_AXI_WREADY,
    IF_NOC_NPP_IN_NOC_CREDIT_RETURN,
    IF_NOC_NPP_OUT_NOC_CREDIT_RDY,
    IF_NOC_NPP_OUT_NOC_FLIT,
    IF_NOC_NPP_OUT_NOC_VALID,
    aclk,
    IF_NOC_NPP_IN_NOC_CREDIT_RDY,
    IF_NOC_NPP_IN_NOC_FLIT,
    IF_NOC_NPP_IN_NOC_VALID,
    IF_NOC_NPP_OUT_NOC_CREDIT_RETURN,
    NSU);
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 MAXI4 ARADDR" *) output [63:0]IF_NOC_AXI_ARADDR;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 MAXI4 ARBURST" *) output [1:0]IF_NOC_AXI_ARBURST;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 MAXI4 ARCACHE" *) output [3:0]IF_NOC_AXI_ARCACHE;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 MAXI4 ARID" *) output [1:0]IF_NOC_AXI_ARCID;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 MAXI4 ARLEN" *) output [7:0]IF_NOC_AXI_ARLEN;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 MAXI4 ARLOCK" *) output [0:0]IF_NOC_AXI_ARLOCK;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 MAXI4 ARPROT" *) output [2:0]IF_NOC_AXI_ARPROT;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 MAXI4 ARQOS" *) output [3:0]IF_NOC_AXI_ARQOS;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 MAXI4 ARREGION" *) output [3:0]IF_NOC_AXI_ARREGION;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 MAXI4 ARSIZE" *) output [2:0]IF_NOC_AXI_ARSIZE;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 MAXI4 ARUSER" *) output [17:0]IF_NOC_AXI_ARUSER;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 MAXI4 ARVALID" *) output IF_NOC_AXI_ARVALID;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 MAXI4 AWADDR" *) output [63:0]IF_NOC_AXI_AWADDR;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 MAXI4 AWBURST" *) output [1:0]IF_NOC_AXI_AWBURST;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 MAXI4 AWCACHE" *) output [3:0]IF_NOC_AXI_AWCACHE;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 MAXI4 AWID" *) output [1:0]IF_NOC_AXI_AWCID;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 MAXI4 AWLEN" *) output [7:0]IF_NOC_AXI_AWLEN;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 MAXI4 AWLOCK" *) output [0:0]IF_NOC_AXI_AWLOCK;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 MAXI4 AWPROT" *) output [2:0]IF_NOC_AXI_AWPROT;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 MAXI4 AWQOS" *) output [3:0]IF_NOC_AXI_AWQOS;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 MAXI4 AWREGION" *) output [3:0]IF_NOC_AXI_AWREGION;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 MAXI4 AWSIZE" *) output [2:0]IF_NOC_AXI_AWSIZE;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 MAXI4 AWUSER" *) output [17:0]IF_NOC_AXI_AWUSER;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 MAXI4 AWVALID" *) output IF_NOC_AXI_AWVALID;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 MAXI4 BREADY" *) output IF_NOC_AXI_BREADY;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 MAXI4 RREADY" *) output IF_NOC_AXI_RREADY;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 MAXI4 WDATA" *) output [127:0]IF_NOC_AXI_WDATA;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 MAXI4 WLAST" *) output [0:0]IF_NOC_AXI_WLAST;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 MAXI4 WSTRB" *) output [15:0]IF_NOC_AXI_WSTRB;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 MAXI4 WVALID" *) output IF_NOC_AXI_WVALID;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 MAXI4 ARREADY" *) input IF_NOC_AXI_ARREADY;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 MAXI4 AWREADY" *) input IF_NOC_AXI_AWREADY;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 MAXI4 BID" *) input [1:0]IF_NOC_AXI_BCID;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 MAXI4 BRESP" *) input [1:0]IF_NOC_AXI_BRESP;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 MAXI4 BVALID" *) input IF_NOC_AXI_BVALID;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 MAXI4 RID" *) input [1:0]IF_NOC_AXI_RCID;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 MAXI4 RDATA" *) input [127:0]IF_NOC_AXI_RDATA;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 MAXI4 RLAST" *) input [0:0]IF_NOC_AXI_RLAST;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 MAXI4 RRESP" *) input [1:0]IF_NOC_AXI_RRESP;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 MAXI4 RVALID" *) input IF_NOC_AXI_RVALID;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 MAXI4 WREADY" *) input IF_NOC_AXI_WREADY;
  (* X_INTERFACE_INFO = "xilinx.com:interface:npp:1.0 SNPP CREDIT_RETURN" *) output [7:0]IF_NOC_NPP_IN_NOC_CREDIT_RETURN;
  (* X_INTERFACE_INFO = "xilinx.com:interface:npp:1.0 MNPP CREDIT_RDY" *) output IF_NOC_NPP_OUT_NOC_CREDIT_RDY;
  (* X_INTERFACE_INFO = "xilinx.com:interface:npp:1.0 MNPP FLIT" *) output [181:0]IF_NOC_NPP_OUT_NOC_FLIT;
  (* X_INTERFACE_INFO = "xilinx.com:interface:npp:1.0 MNPP VALID" *) output [7:0]IF_NOC_NPP_OUT_NOC_VALID;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 aclk CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME aclk, ASSOCIATED_BUSIF MAXI4:MAXI_STREAM, FREQ_HZ 100000000, PHASE 0.000" *) input aclk;
  (* X_INTERFACE_INFO = "xilinx.com:interface:npp:1.0 SNPP CREDIT_RDY" *) input IF_NOC_NPP_IN_NOC_CREDIT_RDY;
  (* X_INTERFACE_INFO = "xilinx.com:interface:npp:1.0 SNPP FLIT" *) input [181:0]IF_NOC_NPP_IN_NOC_FLIT;
  (* X_INTERFACE_INFO = "xilinx.com:interface:npp:1.0 SNPP VALID" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME SNPP, IN_SYNTHESIS_HDL NO, CAN_DEBUG false" *) input [7:0]IF_NOC_NPP_IN_NOC_VALID;
  (* X_INTERFACE_INFO = "xilinx.com:interface:npp:1.0 MNPP CREDIT_RETURN" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME MNPP, IN_SYNTHESIS_HDL NO, CAN_DEBUG false" *) input [7:0]IF_NOC_NPP_OUT_NOC_CREDIT_RETURN;
  (* dont_touch = "true" *) input NSU;

  wire [63:0]IF_NOC_AXI_ARADDR;
  wire [1:0]IF_NOC_AXI_ARBURST;
  wire [3:0]IF_NOC_AXI_ARCACHE;
  wire [1:0]IF_NOC_AXI_ARCID;
  wire [7:0]IF_NOC_AXI_ARLEN;
  wire [0:0]IF_NOC_AXI_ARLOCK;
  wire [2:0]IF_NOC_AXI_ARPROT;
  wire [3:0]IF_NOC_AXI_ARQOS;
  wire IF_NOC_AXI_ARREADY;
  wire [3:0]IF_NOC_AXI_ARREGION;
  wire [2:0]IF_NOC_AXI_ARSIZE;
  wire [17:0]IF_NOC_AXI_ARUSER;
  wire IF_NOC_AXI_ARVALID;
  wire [63:0]IF_NOC_AXI_AWADDR;
  wire [1:0]IF_NOC_AXI_AWBURST;
  wire [3:0]IF_NOC_AXI_AWCACHE;
  wire [1:0]IF_NOC_AXI_AWCID;
  wire [7:0]IF_NOC_AXI_AWLEN;
  wire [0:0]IF_NOC_AXI_AWLOCK;
  wire [2:0]IF_NOC_AXI_AWPROT;
  wire [3:0]IF_NOC_AXI_AWQOS;
  wire IF_NOC_AXI_AWREADY;
  wire [3:0]IF_NOC_AXI_AWREGION;
  wire [2:0]IF_NOC_AXI_AWSIZE;
  wire [17:0]IF_NOC_AXI_AWUSER;
  wire IF_NOC_AXI_AWVALID;
  wire [1:0]IF_NOC_AXI_BCID;
  wire IF_NOC_AXI_BREADY;
  wire [1:0]IF_NOC_AXI_BRESP;
  wire IF_NOC_AXI_BVALID;
  wire [1:0]IF_NOC_AXI_RCID;
  wire [127:0]IF_NOC_AXI_RDATA;
  wire [0:0]IF_NOC_AXI_RLAST;
  wire IF_NOC_AXI_RREADY;
  wire [1:0]IF_NOC_AXI_RRESP;
  wire IF_NOC_AXI_RVALID;
  wire [127:0]IF_NOC_AXI_WDATA;
  wire [0:0]IF_NOC_AXI_WLAST;
  wire IF_NOC_AXI_WREADY;
  wire [15:0]IF_NOC_AXI_WSTRB;
  wire IF_NOC_AXI_WVALID;
  wire IF_NOC_NPP_IN_NOC_CREDIT_RDY;
  wire [7:0]IF_NOC_NPP_IN_NOC_CREDIT_RETURN;
  wire [181:0]IF_NOC_NPP_IN_NOC_FLIT;
  wire [7:0]IF_NOC_NPP_IN_NOC_VALID;
  wire IF_NOC_NPP_OUT_NOC_CREDIT_RDY;
  wire [7:0]IF_NOC_NPP_OUT_NOC_CREDIT_RETURN;
  wire [181:0]IF_NOC_NPP_OUT_NOC_FLIT;
  wire [7:0]IF_NOC_NPP_OUT_NOC_VALID;
  (* DONT_TOUCH *) wire NSU;
  wire aclk;
  wire [9:0]NLW_bd_0dc7_M00_AXI_nsu_0_top_INST_IF_NOC_AXI_TDEST_UNCONNECTED;

  (* REG_AXI_LOOPBACK = "2'b00" *) 
  (* REG_COMP_ID_INDEX0 = "5'b00000" *) 
  (* REG_COMP_ID_INDEX1 = "5'b00001" *) 
  (* REG_COMP_ID_MODE = "1'b0" *) 
  (* REG_DISABLE_EX_MON = "1'b1" *) 
  (* REG_DWIDTH = "3'b100" *) 
  (* REG_ECC_CHK_EN = "1'b1" *) 
  (* REG_FIXED_COMP_ID = "2'b00" *) 
  (* REG_MODE_SELECT = "2'b00" *) 
  (* REG_ODISABLE_AXI_RESP = "1'b0" *) 
  (* REG_OUTSTANDING_RD_TXN = "6'b100000" *) 
  (* REG_OUTSTANDING_WR_TXN = "6'b100000" *) 
  (* REG_PAR_CHK = "1'b0" *) 
  (* REG_RDTRK_VCA_TOKEN0 = "8'b00010000" *) 
  (* REG_RDTRK_VCA_TOKEN1 = "8'b00010000" *) 
  (* REG_RD_REQ_VC_MAP0 = "3'b100" *) 
  (* REG_RD_REQ_VC_MAP1 = "3'b000" *) 
  (* REG_RD_RESP_VC_MAP0 = "3'b110" *) 
  (* REG_RD_RESP_VC_MAP1 = "3'b010" *) 
  (* REG_RD_VCA_TOKEN0 = "8'b00010000" *) 
  (* REG_RD_VCA_TOKEN1 = "8'b00010000" *) 
  (* REG_SRC = "12'b000001000000" *) 
  (* REG_TBASE_AXI_TIMEOUT = "4'b0010" *) 
  (* REG_TBASE_TRK_TIMEOUT = "4'b0010" *) 
  (* REG_VMAP_OUT_RD_TOKEN0 = "8'b00010000" *) 
  (* REG_VMAP_OUT_RD_TOKEN1 = "8'b00010000" *) 
  (* REG_VMAP_OUT_WR_TOKEN0 = "8'b00010000" *) 
  (* REG_VMAP_OUT_WR_TOKEN1 = "8'b00010000" *) 
  (* REG_WRTRK_VCA_TOKEN0 = "8'b00010000" *) 
  (* REG_WRTRK_VCA_TOKEN1 = "8'b00010000" *) 
  (* REG_WR_REQ_VC_MAP0 = "3'b001" *) 
  (* REG_WR_REQ_VC_MAP1 = "3'b101" *) 
  (* REG_WR_RESP_VC_MAP0 = "3'b011" *) 
  (* REG_WR_RESP_VC_MAP1 = "3'b111" *) 
  (* REG_WR_VCA_TOKEN0 = "8'b00010000" *) 
  (* REG_WR_VCA_TOKEN1 = "8'b00010000" *) 
  ulp_inst_0_axi_noc_h2c_0_bd_0dc7_M00_AXI_nsu_0_top bd_0dc7_M00_AXI_nsu_0_top_INST
       (.IF_NOC_AXI_ARADDR(IF_NOC_AXI_ARADDR),
        .IF_NOC_AXI_ARBURST(IF_NOC_AXI_ARBURST),
        .IF_NOC_AXI_ARCACHE(IF_NOC_AXI_ARCACHE),
        .IF_NOC_AXI_ARCID(IF_NOC_AXI_ARCID),
        .IF_NOC_AXI_ARLEN(IF_NOC_AXI_ARLEN),
        .IF_NOC_AXI_ARLOCK(IF_NOC_AXI_ARLOCK),
        .IF_NOC_AXI_ARPROT(IF_NOC_AXI_ARPROT),
        .IF_NOC_AXI_ARQOS(IF_NOC_AXI_ARQOS),
        .IF_NOC_AXI_ARREADY(IF_NOC_AXI_ARREADY),
        .IF_NOC_AXI_ARREGION(IF_NOC_AXI_ARREGION),
        .IF_NOC_AXI_ARSIZE(IF_NOC_AXI_ARSIZE),
        .IF_NOC_AXI_ARUSER(IF_NOC_AXI_ARUSER),
        .IF_NOC_AXI_ARVALID(IF_NOC_AXI_ARVALID),
        .IF_NOC_AXI_AWADDR(IF_NOC_AXI_AWADDR),
        .IF_NOC_AXI_AWBURST(IF_NOC_AXI_AWBURST),
        .IF_NOC_AXI_AWCACHE(IF_NOC_AXI_AWCACHE),
        .IF_NOC_AXI_AWCID(IF_NOC_AXI_AWCID),
        .IF_NOC_AXI_AWLEN(IF_NOC_AXI_AWLEN),
        .IF_NOC_AXI_AWLOCK(IF_NOC_AXI_AWLOCK),
        .IF_NOC_AXI_AWPROT(IF_NOC_AXI_AWPROT),
        .IF_NOC_AXI_AWQOS(IF_NOC_AXI_AWQOS),
        .IF_NOC_AXI_AWREADY(IF_NOC_AXI_AWREADY),
        .IF_NOC_AXI_AWREGION(IF_NOC_AXI_AWREGION),
        .IF_NOC_AXI_AWSIZE(IF_NOC_AXI_AWSIZE),
        .IF_NOC_AXI_AWUSER(IF_NOC_AXI_AWUSER),
        .IF_NOC_AXI_AWVALID(IF_NOC_AXI_AWVALID),
        .IF_NOC_AXI_BCID(IF_NOC_AXI_BCID),
        .IF_NOC_AXI_BREADY(IF_NOC_AXI_BREADY),
        .IF_NOC_AXI_BRESP(IF_NOC_AXI_BRESP),
        .IF_NOC_AXI_BVALID(IF_NOC_AXI_BVALID),
        .IF_NOC_AXI_RCID(IF_NOC_AXI_RCID),
        .IF_NOC_AXI_RDATA(IF_NOC_AXI_RDATA),
        .IF_NOC_AXI_RLAST(IF_NOC_AXI_RLAST),
        .IF_NOC_AXI_RREADY(IF_NOC_AXI_RREADY),
        .IF_NOC_AXI_RRESP(IF_NOC_AXI_RRESP),
        .IF_NOC_AXI_RVALID(IF_NOC_AXI_RVALID),
        .IF_NOC_AXI_TDEST(NLW_bd_0dc7_M00_AXI_nsu_0_top_INST_IF_NOC_AXI_TDEST_UNCONNECTED[9:0]),
        .IF_NOC_AXI_WDATA(IF_NOC_AXI_WDATA),
        .IF_NOC_AXI_WLAST(IF_NOC_AXI_WLAST),
        .IF_NOC_AXI_WREADY(IF_NOC_AXI_WREADY),
        .IF_NOC_AXI_WSTRB(IF_NOC_AXI_WSTRB),
        .IF_NOC_AXI_WVALID(IF_NOC_AXI_WVALID),
        .IF_NOC_NPP_IN_NOC_CREDIT_RDY(IF_NOC_NPP_IN_NOC_CREDIT_RDY),
        .IF_NOC_NPP_IN_NOC_CREDIT_RETURN(IF_NOC_NPP_IN_NOC_CREDIT_RETURN),
        .IF_NOC_NPP_IN_NOC_FLIT(IF_NOC_NPP_IN_NOC_FLIT),
        .IF_NOC_NPP_IN_NOC_VALID(IF_NOC_NPP_IN_NOC_VALID),
        .IF_NOC_NPP_OUT_NOC_CREDIT_RDY(IF_NOC_NPP_OUT_NOC_CREDIT_RDY),
        .IF_NOC_NPP_OUT_NOC_CREDIT_RETURN(IF_NOC_NPP_OUT_NOC_CREDIT_RETURN),
        .IF_NOC_NPP_OUT_NOC_FLIT(IF_NOC_NPP_OUT_NOC_FLIT),
        .IF_NOC_NPP_OUT_NOC_VALID(IF_NOC_NPP_OUT_NOC_VALID),
        .NSU(NSU),
        .aclk(aclk));
endmodule

(* ORIG_REF_NAME = "bd_0dc7_M00_AXI_nsu_0_top" *) (* REG_AXI_LOOPBACK = "2'b00" *) (* REG_COMP_ID_INDEX0 = "5'b00000" *) 
(* REG_COMP_ID_INDEX1 = "5'b00001" *) (* REG_COMP_ID_MODE = "1'b0" *) (* REG_DISABLE_EX_MON = "1'b1" *) 
(* REG_DWIDTH = "3'b100" *) (* REG_ECC_CHK_EN = "1'b1" *) (* REG_FIXED_COMP_ID = "2'b00" *) 
(* REG_MODE_SELECT = "2'b00" *) (* REG_ODISABLE_AXI_RESP = "1'b0" *) (* REG_OUTSTANDING_RD_TXN = "6'b100000" *) 
(* REG_OUTSTANDING_WR_TXN = "6'b100000" *) (* REG_PAR_CHK = "1'b0" *) (* REG_RDTRK_VCA_TOKEN0 = "8'b00010000" *) 
(* REG_RDTRK_VCA_TOKEN1 = "8'b00010000" *) (* REG_RD_REQ_VC_MAP0 = "3'b100" *) (* REG_RD_REQ_VC_MAP1 = "3'b000" *) 
(* REG_RD_RESP_VC_MAP0 = "3'b110" *) (* REG_RD_RESP_VC_MAP1 = "3'b010" *) (* REG_RD_VCA_TOKEN0 = "8'b00010000" *) 
(* REG_RD_VCA_TOKEN1 = "8'b00010000" *) (* REG_SRC = "12'b000001000000" *) (* REG_TBASE_AXI_TIMEOUT = "4'b0010" *) 
(* REG_TBASE_TRK_TIMEOUT = "4'b0010" *) (* REG_VMAP_OUT_RD_TOKEN0 = "8'b00010000" *) (* REG_VMAP_OUT_RD_TOKEN1 = "8'b00010000" *) 
(* REG_VMAP_OUT_WR_TOKEN0 = "8'b00010000" *) (* REG_VMAP_OUT_WR_TOKEN1 = "8'b00010000" *) (* REG_WRTRK_VCA_TOKEN0 = "8'b00010000" *) 
(* REG_WRTRK_VCA_TOKEN1 = "8'b00010000" *) (* REG_WR_REQ_VC_MAP0 = "3'b001" *) (* REG_WR_REQ_VC_MAP1 = "3'b101" *) 
(* REG_WR_RESP_VC_MAP0 = "3'b011" *) (* REG_WR_RESP_VC_MAP1 = "3'b111" *) (* REG_WR_VCA_TOKEN0 = "8'b00010000" *) 
(* REG_WR_VCA_TOKEN1 = "8'b00010000" *) 
module ulp_inst_0_axi_noc_h2c_0_bd_0dc7_M00_AXI_nsu_0_top
   (IF_NOC_AXI_TDEST,
    IF_NOC_AXI_WVALID,
    IF_NOC_AXI_WREADY,
    IF_NOC_AXI_WLAST,
    IF_NOC_AXI_AWCID,
    IF_NOC_AXI_WDATA,
    IF_NOC_AXI_WSTRB,
    IF_NOC_AXI_ARADDR,
    IF_NOC_AXI_ARBURST,
    IF_NOC_AXI_ARCACHE,
    IF_NOC_AXI_ARCID,
    IF_NOC_AXI_ARLEN,
    IF_NOC_AXI_ARLOCK,
    IF_NOC_AXI_ARPROT,
    IF_NOC_AXI_ARQOS,
    IF_NOC_AXI_ARREGION,
    IF_NOC_AXI_ARSIZE,
    IF_NOC_AXI_ARUSER,
    IF_NOC_AXI_ARVALID,
    IF_NOC_AXI_AWADDR,
    IF_NOC_AXI_AWBURST,
    IF_NOC_AXI_AWCACHE,
    IF_NOC_AXI_AWLEN,
    IF_NOC_AXI_AWLOCK,
    IF_NOC_AXI_AWPROT,
    IF_NOC_AXI_AWQOS,
    IF_NOC_AXI_AWREGION,
    IF_NOC_AXI_AWSIZE,
    IF_NOC_AXI_AWUSER,
    IF_NOC_AXI_AWVALID,
    IF_NOC_AXI_BREADY,
    IF_NOC_AXI_RREADY,
    IF_NOC_AXI_ARREADY,
    IF_NOC_AXI_AWREADY,
    IF_NOC_AXI_BCID,
    IF_NOC_AXI_BRESP,
    IF_NOC_AXI_BVALID,
    IF_NOC_AXI_RCID,
    IF_NOC_AXI_RDATA,
    IF_NOC_AXI_RLAST,
    IF_NOC_AXI_RRESP,
    IF_NOC_AXI_RVALID,
    IF_NOC_NPP_IN_NOC_CREDIT_RETURN,
    IF_NOC_NPP_OUT_NOC_CREDIT_RDY,
    IF_NOC_NPP_OUT_NOC_FLIT,
    IF_NOC_NPP_OUT_NOC_VALID,
    aclk,
    IF_NOC_NPP_IN_NOC_CREDIT_RDY,
    IF_NOC_NPP_IN_NOC_FLIT,
    IF_NOC_NPP_IN_NOC_VALID,
    IF_NOC_NPP_OUT_NOC_CREDIT_RETURN,
    NSU);
  output [9:0]IF_NOC_AXI_TDEST;
  output IF_NOC_AXI_WVALID;
  input IF_NOC_AXI_WREADY;
  output [0:0]IF_NOC_AXI_WLAST;
  output [1:0]IF_NOC_AXI_AWCID;
  output [127:0]IF_NOC_AXI_WDATA;
  output [15:0]IF_NOC_AXI_WSTRB;
  output [63:0]IF_NOC_AXI_ARADDR;
  output [1:0]IF_NOC_AXI_ARBURST;
  output [3:0]IF_NOC_AXI_ARCACHE;
  output [1:0]IF_NOC_AXI_ARCID;
  output [7:0]IF_NOC_AXI_ARLEN;
  output [0:0]IF_NOC_AXI_ARLOCK;
  output [2:0]IF_NOC_AXI_ARPROT;
  output [3:0]IF_NOC_AXI_ARQOS;
  output [3:0]IF_NOC_AXI_ARREGION;
  output [2:0]IF_NOC_AXI_ARSIZE;
  output [17:0]IF_NOC_AXI_ARUSER;
  output IF_NOC_AXI_ARVALID;
  output [63:0]IF_NOC_AXI_AWADDR;
  output [1:0]IF_NOC_AXI_AWBURST;
  output [3:0]IF_NOC_AXI_AWCACHE;
  output [7:0]IF_NOC_AXI_AWLEN;
  output [0:0]IF_NOC_AXI_AWLOCK;
  output [2:0]IF_NOC_AXI_AWPROT;
  output [3:0]IF_NOC_AXI_AWQOS;
  output [3:0]IF_NOC_AXI_AWREGION;
  output [2:0]IF_NOC_AXI_AWSIZE;
  output [17:0]IF_NOC_AXI_AWUSER;
  output IF_NOC_AXI_AWVALID;
  output IF_NOC_AXI_BREADY;
  output IF_NOC_AXI_RREADY;
  input IF_NOC_AXI_ARREADY;
  input IF_NOC_AXI_AWREADY;
  input [1:0]IF_NOC_AXI_BCID;
  input [1:0]IF_NOC_AXI_BRESP;
  input IF_NOC_AXI_BVALID;
  input [1:0]IF_NOC_AXI_RCID;
  input [127:0]IF_NOC_AXI_RDATA;
  input [0:0]IF_NOC_AXI_RLAST;
  input [1:0]IF_NOC_AXI_RRESP;
  input IF_NOC_AXI_RVALID;
  output [7:0]IF_NOC_NPP_IN_NOC_CREDIT_RETURN;
  output IF_NOC_NPP_OUT_NOC_CREDIT_RDY;
  output [181:0]IF_NOC_NPP_OUT_NOC_FLIT;
  output [7:0]IF_NOC_NPP_OUT_NOC_VALID;
  input aclk;
  input IF_NOC_NPP_IN_NOC_CREDIT_RDY;
  input [181:0]IF_NOC_NPP_IN_NOC_FLIT;
  input [7:0]IF_NOC_NPP_IN_NOC_VALID;
  input [7:0]IF_NOC_NPP_OUT_NOC_CREDIT_RETURN;
  input NSU;

  wire \<const0> ;
  wire [63:0]IF_NOC_AXI_ARADDR;
  wire [1:0]IF_NOC_AXI_ARBURST;
  wire [3:0]IF_NOC_AXI_ARCACHE;
  wire [1:0]IF_NOC_AXI_ARCID;
  wire [7:0]IF_NOC_AXI_ARLEN;
  wire [0:0]IF_NOC_AXI_ARLOCK;
  wire [2:0]IF_NOC_AXI_ARPROT;
  wire [3:0]IF_NOC_AXI_ARQOS;
  wire IF_NOC_AXI_ARREADY;
  wire [3:0]IF_NOC_AXI_ARREGION;
  wire [2:0]IF_NOC_AXI_ARSIZE;
  wire [17:0]IF_NOC_AXI_ARUSER;
  wire IF_NOC_AXI_ARVALID;
  wire [63:0]IF_NOC_AXI_AWADDR;
  wire [1:0]IF_NOC_AXI_AWBURST;
  wire [3:0]IF_NOC_AXI_AWCACHE;
  wire [1:0]IF_NOC_AXI_AWCID;
  wire [7:0]IF_NOC_AXI_AWLEN;
  wire [0:0]IF_NOC_AXI_AWLOCK;
  wire [2:0]IF_NOC_AXI_AWPROT;
  wire [3:0]IF_NOC_AXI_AWQOS;
  wire IF_NOC_AXI_AWREADY;
  wire [3:0]IF_NOC_AXI_AWREGION;
  wire [2:0]IF_NOC_AXI_AWSIZE;
  wire [17:0]IF_NOC_AXI_AWUSER;
  wire IF_NOC_AXI_AWVALID;
  wire [1:0]IF_NOC_AXI_BCID;
  wire IF_NOC_AXI_BREADY;
  wire [1:0]IF_NOC_AXI_BRESP;
  wire IF_NOC_AXI_BVALID;
  wire [1:0]IF_NOC_AXI_RCID;
  wire [127:0]IF_NOC_AXI_RDATA;
  wire [0:0]IF_NOC_AXI_RLAST;
  wire IF_NOC_AXI_RREADY;
  wire [1:0]IF_NOC_AXI_RRESP;
  wire IF_NOC_AXI_RVALID;
  wire [127:0]IF_NOC_AXI_WDATA;
  wire [0:0]IF_NOC_AXI_WLAST;
  wire IF_NOC_AXI_WREADY;
  wire [15:0]IF_NOC_AXI_WSTRB;
  wire IF_NOC_AXI_WVALID;
  wire IF_NOC_NPP_IN_NOC_CREDIT_RDY;
  wire [7:0]IF_NOC_NPP_IN_NOC_CREDIT_RETURN;
  wire [181:0]IF_NOC_NPP_IN_NOC_FLIT;
  wire [7:0]IF_NOC_NPP_IN_NOC_VALID;
  wire IF_NOC_NPP_OUT_NOC_CREDIT_RDY;
  wire [7:0]IF_NOC_NPP_OUT_NOC_CREDIT_RETURN;
  wire [181:0]IF_NOC_NPP_OUT_NOC_FLIT;
  wire [7:0]IF_NOC_NPP_OUT_NOC_VALID;
  wire NOC_NSU512_INST_n_1193;
  wire NOC_NSU512_INST_n_1194;
  wire NOC_NSU512_INST_n_1195;
  wire NOC_NSU512_INST_n_1196;
  wire NOC_NSU512_INST_n_1197;
  wire NOC_NSU512_INST_n_1198;
  wire NOC_NSU512_INST_n_1199;
  wire NOC_NSU512_INST_n_1200;
  wire NOC_NSU512_INST_n_1201;
  wire NOC_NSU512_INST_n_1202;
  wire NSU;
  wire aclk;
  wire NLW_NOC_NSU512_INST_IF_NOC_AXI_WPOISON_UNCONNECTED;
  wire NLW_NOC_NSU512_INST_IF_NOC_NPP_IN_NOC_CREDIT_RETURN_EN_UNCONNECTED;
  wire NLW_NOC_NSU512_INST_IF_NOC_NPP_OUT_NOC_FLIT_EN_UNCONNECTED;
  wire NLW_NOC_NSU512_INST_IF_NOC_NPP_OUT_NOC_VALID_EN_UNCONNECTED;
  wire [15:0]NLW_NOC_NSU512_INST_IF_NOC_AXI_ARID_INFO_UNCONNECTED;
  wire [11:0]NLW_NOC_NSU512_INST_IF_NOC_AXI_ARSRC_INFO_UNCONNECTED;
  wire [15:10]NLW_NOC_NSU512_INST_IF_NOC_AXI_ARUSER_UNCONNECTED;
  wire [15:0]NLW_NOC_NSU512_INST_IF_NOC_AXI_AWID_INFO_UNCONNECTED;
  wire [11:0]NLW_NOC_NSU512_INST_IF_NOC_AXI_AWSRC_INFO_UNCONNECTED;
  wire [15:10]NLW_NOC_NSU512_INST_IF_NOC_AXI_AWUSER_UNCONNECTED;
  wire [511:128]NLW_NOC_NSU512_INST_IF_NOC_AXI_RDATA_UNCONNECTED;
  wire [5:0]NLW_NOC_NSU512_INST_IF_NOC_AXI_WCID_UNCONNECTED;
  wire [511:128]NLW_NOC_NSU512_INST_IF_NOC_AXI_WDATA_UNCONNECTED;
  wire [63:0]NLW_NOC_NSU512_INST_IF_NOC_AXI_WDATA_PAR_UNCONNECTED;
  wire [15:0]NLW_NOC_NSU512_INST_IF_NOC_AXI_WID_INFO_UNCONNECTED;
  wire [11:0]NLW_NOC_NSU512_INST_IF_NOC_AXI_WSRC_INFO_UNCONNECTED;
  wire [63:16]NLW_NOC_NSU512_INST_IF_NOC_AXI_WSTRB_UNCONNECTED;
  wire [15:0]NLW_NOC_NSU512_INST_IF_NOC_AXI_WUSER_UNCONNECTED;

  assign IF_NOC_AXI_TDEST[9] = \<const0> ;
  assign IF_NOC_AXI_TDEST[8] = \<const0> ;
  assign IF_NOC_AXI_TDEST[7] = \<const0> ;
  assign IF_NOC_AXI_TDEST[6] = \<const0> ;
  assign IF_NOC_AXI_TDEST[5] = \<const0> ;
  assign IF_NOC_AXI_TDEST[4] = \<const0> ;
  assign IF_NOC_AXI_TDEST[3] = \<const0> ;
  assign IF_NOC_AXI_TDEST[2] = \<const0> ;
  assign IF_NOC_AXI_TDEST[1] = \<const0> ;
  assign IF_NOC_AXI_TDEST[0] = \<const0> ;
  GND GND
       (.G(\<const0> ));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* DONT_TOUCH *) 
  NOC_NSU512 #(
    .REG_AXI_LOOPBACK(2'h0),
    .REG_COMP_ID_INDEX0(5'h00),
    .REG_COMP_ID_INDEX1(5'h01),
    .REG_COMP_ID_MODE(1'h0),
    .REG_DISABLE_EX_MON(1'h1),
    .REG_DWIDTH(3'h4),
    .REG_ECC_CHK_EN(1'h1),
    .REG_FIXED_COMP_ID(2'h0),
    .REG_MODE_SELECT(2'h0),
    .REG_ODISABLE_AXI_RESP(1'h0),
    .REG_OUTSTANDING_RD_TXN(6'h20),
    .REG_OUTSTANDING_WR_TXN(6'h20),
    .REG_PAR_CHK(2'h0),
    .REG_RDTRK_VCA_TOKEN0(8'h10),
    .REG_RDTRK_VCA_TOKEN1(8'h10),
    .REG_RD_REQ_VC_MAP0(3'h4),
    .REG_RD_REQ_VC_MAP1(3'h0),
    .REG_RD_RESP_VC_MAP0(3'h6),
    .REG_RD_RESP_VC_MAP1(3'h2),
    .REG_RD_VCA_TOKEN0(8'h10),
    .REG_RD_VCA_TOKEN1(8'h10),
    .REG_SRC(12'h040),
    .REG_TBASE_AXI_TIMEOUT(4'h2),
    .REG_TBASE_TRK_TIMEOUT(4'h2),
    .REG_VMAP_OUT_RD_TOKEN0(8'h10),
    .REG_VMAP_OUT_RD_TOKEN1(8'h10),
    .REG_VMAP_OUT_WR_TOKEN0(8'h10),
    .REG_VMAP_OUT_WR_TOKEN1(8'h10),
    .REG_WRTRK_VCA_TOKEN0(8'h10),
    .REG_WRTRK_VCA_TOKEN1(8'h10),
    .REG_WR_REQ_VC_MAP0(3'h1),
    .REG_WR_REQ_VC_MAP1(3'h5),
    .REG_WR_RESP_VC_MAP0(3'h3),
    .REG_WR_RESP_VC_MAP1(3'h7),
    .REG_WR_VCA_TOKEN0(8'h10),
    .REG_WR_VCA_TOKEN1(8'h10)) 
    NOC_NSU512_INST
       (.CLK(aclk),
        .IF_NOC_AXI_ARADDR(IF_NOC_AXI_ARADDR),
        .IF_NOC_AXI_ARADDR_PAR(IF_NOC_AXI_ARUSER[17:10]),
        .IF_NOC_AXI_ARBURST(IF_NOC_AXI_ARBURST),
        .IF_NOC_AXI_ARCACHE(IF_NOC_AXI_ARCACHE),
        .IF_NOC_AXI_ARCID(IF_NOC_AXI_ARCID),
        .IF_NOC_AXI_ARID_INFO(NLW_NOC_NSU512_INST_IF_NOC_AXI_ARID_INFO_UNCONNECTED[15:0]),
        .IF_NOC_AXI_ARLEN(IF_NOC_AXI_ARLEN),
        .IF_NOC_AXI_ARLOCK(IF_NOC_AXI_ARLOCK),
        .IF_NOC_AXI_ARPROT(IF_NOC_AXI_ARPROT),
        .IF_NOC_AXI_ARQOS(IF_NOC_AXI_ARQOS),
        .IF_NOC_AXI_ARREADY(IF_NOC_AXI_ARREADY),
        .IF_NOC_AXI_ARREGION(IF_NOC_AXI_ARREGION),
        .IF_NOC_AXI_ARSIZE(IF_NOC_AXI_ARSIZE),
        .IF_NOC_AXI_ARSRC_INFO(NLW_NOC_NSU512_INST_IF_NOC_AXI_ARSRC_INFO_UNCONNECTED[11:0]),
        .IF_NOC_AXI_ARUSER({NLW_NOC_NSU512_INST_IF_NOC_AXI_ARUSER_UNCONNECTED[15:10],IF_NOC_AXI_ARUSER[9:0]}),
        .IF_NOC_AXI_ARVALID(IF_NOC_AXI_ARVALID),
        .IF_NOC_AXI_AWADDR(IF_NOC_AXI_AWADDR),
        .IF_NOC_AXI_AWADDR_PAR(IF_NOC_AXI_AWUSER[17:10]),
        .IF_NOC_AXI_AWBURST(IF_NOC_AXI_AWBURST),
        .IF_NOC_AXI_AWCACHE(IF_NOC_AXI_AWCACHE),
        .IF_NOC_AXI_AWCID(IF_NOC_AXI_AWCID),
        .IF_NOC_AXI_AWID_INFO(NLW_NOC_NSU512_INST_IF_NOC_AXI_AWID_INFO_UNCONNECTED[15:0]),
        .IF_NOC_AXI_AWLEN(IF_NOC_AXI_AWLEN),
        .IF_NOC_AXI_AWLOCK(IF_NOC_AXI_AWLOCK),
        .IF_NOC_AXI_AWPROT(IF_NOC_AXI_AWPROT),
        .IF_NOC_AXI_AWQOS(IF_NOC_AXI_AWQOS),
        .IF_NOC_AXI_AWREADY(IF_NOC_AXI_AWREADY),
        .IF_NOC_AXI_AWREGION(IF_NOC_AXI_AWREGION),
        .IF_NOC_AXI_AWSIZE(IF_NOC_AXI_AWSIZE),
        .IF_NOC_AXI_AWSRC_INFO(NLW_NOC_NSU512_INST_IF_NOC_AXI_AWSRC_INFO_UNCONNECTED[11:0]),
        .IF_NOC_AXI_AWUSER({NLW_NOC_NSU512_INST_IF_NOC_AXI_AWUSER_UNCONNECTED[15:10],IF_NOC_AXI_AWUSER[9:0]}),
        .IF_NOC_AXI_AWVALID(IF_NOC_AXI_AWVALID),
        .IF_NOC_AXI_BCID(IF_NOC_AXI_BCID),
        .IF_NOC_AXI_BREADY(IF_NOC_AXI_BREADY),
        .IF_NOC_AXI_BRESP(IF_NOC_AXI_BRESP),
        .IF_NOC_AXI_BUSER({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .IF_NOC_AXI_BVALID(IF_NOC_AXI_BVALID),
        .IF_NOC_AXI_RCID(IF_NOC_AXI_RCID),
        .IF_NOC_AXI_RDATA({NLW_NOC_NSU512_INST_IF_NOC_AXI_RDATA_UNCONNECTED[511:128],IF_NOC_AXI_RDATA}),
        .IF_NOC_AXI_RDATA_PAR({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .IF_NOC_AXI_RLAST(IF_NOC_AXI_RLAST),
        .IF_NOC_AXI_RPOISON(1'b0),
        .IF_NOC_AXI_RREADY(IF_NOC_AXI_RREADY),
        .IF_NOC_AXI_RRESP(IF_NOC_AXI_RRESP),
        .IF_NOC_AXI_RUSER({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .IF_NOC_AXI_RVALID(IF_NOC_AXI_RVALID),
        .IF_NOC_AXI_TDEST({NOC_NSU512_INST_n_1193,NOC_NSU512_INST_n_1194,NOC_NSU512_INST_n_1195,NOC_NSU512_INST_n_1196,NOC_NSU512_INST_n_1197,NOC_NSU512_INST_n_1198,NOC_NSU512_INST_n_1199,NOC_NSU512_INST_n_1200,NOC_NSU512_INST_n_1201,NOC_NSU512_INST_n_1202}),
        .IF_NOC_AXI_WCID(NLW_NOC_NSU512_INST_IF_NOC_AXI_WCID_UNCONNECTED[5:0]),
        .IF_NOC_AXI_WDATA({NLW_NOC_NSU512_INST_IF_NOC_AXI_WDATA_UNCONNECTED[511:128],IF_NOC_AXI_WDATA}),
        .IF_NOC_AXI_WDATA_PAR(NLW_NOC_NSU512_INST_IF_NOC_AXI_WDATA_PAR_UNCONNECTED[63:0]),
        .IF_NOC_AXI_WID_INFO(NLW_NOC_NSU512_INST_IF_NOC_AXI_WID_INFO_UNCONNECTED[15:0]),
        .IF_NOC_AXI_WLAST(IF_NOC_AXI_WLAST),
        .IF_NOC_AXI_WPOISON(NLW_NOC_NSU512_INST_IF_NOC_AXI_WPOISON_UNCONNECTED),
        .IF_NOC_AXI_WREADY(IF_NOC_AXI_WREADY),
        .IF_NOC_AXI_WSRC_INFO(NLW_NOC_NSU512_INST_IF_NOC_AXI_WSRC_INFO_UNCONNECTED[11:0]),
        .IF_NOC_AXI_WSTRB({NLW_NOC_NSU512_INST_IF_NOC_AXI_WSTRB_UNCONNECTED[63:16],IF_NOC_AXI_WSTRB}),
        .IF_NOC_AXI_WUSER(NLW_NOC_NSU512_INST_IF_NOC_AXI_WUSER_UNCONNECTED[15:0]),
        .IF_NOC_AXI_WVALID(IF_NOC_AXI_WVALID),
        .IF_NOC_NPP_IN_NOC_CREDIT_RDY(IF_NOC_NPP_IN_NOC_CREDIT_RDY),
        .IF_NOC_NPP_IN_NOC_CREDIT_RETURN(IF_NOC_NPP_IN_NOC_CREDIT_RETURN),
        .IF_NOC_NPP_IN_NOC_CREDIT_RETURN_EN(NLW_NOC_NSU512_INST_IF_NOC_NPP_IN_NOC_CREDIT_RETURN_EN_UNCONNECTED),
        .IF_NOC_NPP_IN_NOC_FLIT(IF_NOC_NPP_IN_NOC_FLIT),
        .IF_NOC_NPP_IN_NOC_FLIT_EN(1'b1),
        .IF_NOC_NPP_IN_NOC_VALID(IF_NOC_NPP_IN_NOC_VALID),
        .IF_NOC_NPP_IN_NOC_VALID_EN(1'b1),
        .IF_NOC_NPP_OUT_NOC_CREDIT_RDY(IF_NOC_NPP_OUT_NOC_CREDIT_RDY),
        .IF_NOC_NPP_OUT_NOC_CREDIT_RETURN(IF_NOC_NPP_OUT_NOC_CREDIT_RETURN),
        .IF_NOC_NPP_OUT_NOC_CREDIT_RETURN_EN(1'b1),
        .IF_NOC_NPP_OUT_NOC_FLIT(IF_NOC_NPP_OUT_NOC_FLIT),
        .IF_NOC_NPP_OUT_NOC_FLIT_EN(NLW_NOC_NSU512_INST_IF_NOC_NPP_OUT_NOC_FLIT_EN_UNCONNECTED),
        .IF_NOC_NPP_OUT_NOC_VALID(IF_NOC_NPP_OUT_NOC_VALID),
        .IF_NOC_NPP_OUT_NOC_VALID_EN(NLW_NOC_NSU512_INST_IF_NOC_NPP_OUT_NOC_VALID_EN_UNCONNECTED),
        .NSU(NSU),
        .NSU_USR_INTERRUPT_IN({1'b0,1'b0,1'b0,1'b0}));
endmodule

(* CHECK_LICENSE_TYPE = "noc_nsu_0,noc_nsu_v1_0_0_0,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* ORIG_REF_NAME = "bd_0dc7_M01_AXI_nsu_0" *) 
(* X_CORE_INFO = "noc_nsu_v1_0_0_0,Vivado 2018.1.0" *) 
module ulp_inst_0_axi_noc_h2c_0_bd_0dc7_M01_AXI_nsu_0
   (IF_NOC_AXI_ARADDR,
    IF_NOC_AXI_ARBURST,
    IF_NOC_AXI_ARCACHE,
    IF_NOC_AXI_ARCID,
    IF_NOC_AXI_ARLEN,
    IF_NOC_AXI_ARLOCK,
    IF_NOC_AXI_ARPROT,
    IF_NOC_AXI_ARQOS,
    IF_NOC_AXI_ARREGION,
    IF_NOC_AXI_ARSIZE,
    IF_NOC_AXI_ARUSER,
    IF_NOC_AXI_ARVALID,
    IF_NOC_AXI_AWADDR,
    IF_NOC_AXI_AWBURST,
    IF_NOC_AXI_AWCACHE,
    IF_NOC_AXI_AWCID,
    IF_NOC_AXI_AWLEN,
    IF_NOC_AXI_AWLOCK,
    IF_NOC_AXI_AWPROT,
    IF_NOC_AXI_AWQOS,
    IF_NOC_AXI_AWREGION,
    IF_NOC_AXI_AWSIZE,
    IF_NOC_AXI_AWUSER,
    IF_NOC_AXI_AWVALID,
    IF_NOC_AXI_BREADY,
    IF_NOC_AXI_RREADY,
    IF_NOC_AXI_WDATA,
    IF_NOC_AXI_WLAST,
    IF_NOC_AXI_WSTRB,
    IF_NOC_AXI_WVALID,
    IF_NOC_AXI_ARREADY,
    IF_NOC_AXI_AWREADY,
    IF_NOC_AXI_BCID,
    IF_NOC_AXI_BRESP,
    IF_NOC_AXI_BVALID,
    IF_NOC_AXI_RCID,
    IF_NOC_AXI_RDATA,
    IF_NOC_AXI_RLAST,
    IF_NOC_AXI_RRESP,
    IF_NOC_AXI_RVALID,
    IF_NOC_AXI_WREADY,
    IF_NOC_NPP_IN_NOC_CREDIT_RETURN,
    IF_NOC_NPP_OUT_NOC_CREDIT_RDY,
    IF_NOC_NPP_OUT_NOC_FLIT,
    IF_NOC_NPP_OUT_NOC_VALID,
    aclk,
    IF_NOC_NPP_IN_NOC_CREDIT_RDY,
    IF_NOC_NPP_IN_NOC_FLIT,
    IF_NOC_NPP_IN_NOC_VALID,
    IF_NOC_NPP_OUT_NOC_CREDIT_RETURN,
    NSU);
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 MAXI4 ARADDR" *) output [63:0]IF_NOC_AXI_ARADDR;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 MAXI4 ARBURST" *) output [1:0]IF_NOC_AXI_ARBURST;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 MAXI4 ARCACHE" *) output [3:0]IF_NOC_AXI_ARCACHE;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 MAXI4 ARID" *) output [1:0]IF_NOC_AXI_ARCID;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 MAXI4 ARLEN" *) output [7:0]IF_NOC_AXI_ARLEN;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 MAXI4 ARLOCK" *) output [0:0]IF_NOC_AXI_ARLOCK;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 MAXI4 ARPROT" *) output [2:0]IF_NOC_AXI_ARPROT;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 MAXI4 ARQOS" *) output [3:0]IF_NOC_AXI_ARQOS;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 MAXI4 ARREGION" *) output [3:0]IF_NOC_AXI_ARREGION;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 MAXI4 ARSIZE" *) output [2:0]IF_NOC_AXI_ARSIZE;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 MAXI4 ARUSER" *) output [17:0]IF_NOC_AXI_ARUSER;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 MAXI4 ARVALID" *) output IF_NOC_AXI_ARVALID;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 MAXI4 AWADDR" *) output [63:0]IF_NOC_AXI_AWADDR;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 MAXI4 AWBURST" *) output [1:0]IF_NOC_AXI_AWBURST;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 MAXI4 AWCACHE" *) output [3:0]IF_NOC_AXI_AWCACHE;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 MAXI4 AWID" *) output [1:0]IF_NOC_AXI_AWCID;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 MAXI4 AWLEN" *) output [7:0]IF_NOC_AXI_AWLEN;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 MAXI4 AWLOCK" *) output [0:0]IF_NOC_AXI_AWLOCK;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 MAXI4 AWPROT" *) output [2:0]IF_NOC_AXI_AWPROT;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 MAXI4 AWQOS" *) output [3:0]IF_NOC_AXI_AWQOS;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 MAXI4 AWREGION" *) output [3:0]IF_NOC_AXI_AWREGION;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 MAXI4 AWSIZE" *) output [2:0]IF_NOC_AXI_AWSIZE;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 MAXI4 AWUSER" *) output [17:0]IF_NOC_AXI_AWUSER;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 MAXI4 AWVALID" *) output IF_NOC_AXI_AWVALID;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 MAXI4 BREADY" *) output IF_NOC_AXI_BREADY;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 MAXI4 RREADY" *) output IF_NOC_AXI_RREADY;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 MAXI4 WDATA" *) output [511:0]IF_NOC_AXI_WDATA;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 MAXI4 WLAST" *) output [0:0]IF_NOC_AXI_WLAST;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 MAXI4 WSTRB" *) output [63:0]IF_NOC_AXI_WSTRB;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 MAXI4 WVALID" *) output IF_NOC_AXI_WVALID;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 MAXI4 ARREADY" *) input IF_NOC_AXI_ARREADY;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 MAXI4 AWREADY" *) input IF_NOC_AXI_AWREADY;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 MAXI4 BID" *) input [1:0]IF_NOC_AXI_BCID;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 MAXI4 BRESP" *) input [1:0]IF_NOC_AXI_BRESP;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 MAXI4 BVALID" *) input IF_NOC_AXI_BVALID;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 MAXI4 RID" *) input [1:0]IF_NOC_AXI_RCID;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 MAXI4 RDATA" *) input [511:0]IF_NOC_AXI_RDATA;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 MAXI4 RLAST" *) input [0:0]IF_NOC_AXI_RLAST;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 MAXI4 RRESP" *) input [1:0]IF_NOC_AXI_RRESP;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 MAXI4 RVALID" *) input IF_NOC_AXI_RVALID;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 MAXI4 WREADY" *) input IF_NOC_AXI_WREADY;
  (* X_INTERFACE_INFO = "xilinx.com:interface:npp:1.0 SNPP CREDIT_RETURN" *) output [7:0]IF_NOC_NPP_IN_NOC_CREDIT_RETURN;
  (* X_INTERFACE_INFO = "xilinx.com:interface:npp:1.0 MNPP CREDIT_RDY" *) output IF_NOC_NPP_OUT_NOC_CREDIT_RDY;
  (* X_INTERFACE_INFO = "xilinx.com:interface:npp:1.0 MNPP FLIT" *) output [181:0]IF_NOC_NPP_OUT_NOC_FLIT;
  (* X_INTERFACE_INFO = "xilinx.com:interface:npp:1.0 MNPP VALID" *) output [7:0]IF_NOC_NPP_OUT_NOC_VALID;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 aclk CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME aclk, ASSOCIATED_BUSIF MAXI4:MAXI_STREAM, FREQ_HZ 100000000, PHASE 0.000" *) input aclk;
  (* X_INTERFACE_INFO = "xilinx.com:interface:npp:1.0 SNPP CREDIT_RDY" *) input IF_NOC_NPP_IN_NOC_CREDIT_RDY;
  (* X_INTERFACE_INFO = "xilinx.com:interface:npp:1.0 SNPP FLIT" *) input [181:0]IF_NOC_NPP_IN_NOC_FLIT;
  (* X_INTERFACE_INFO = "xilinx.com:interface:npp:1.0 SNPP VALID" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME SNPP, IN_SYNTHESIS_HDL NO, CAN_DEBUG false" *) input [7:0]IF_NOC_NPP_IN_NOC_VALID;
  (* X_INTERFACE_INFO = "xilinx.com:interface:npp:1.0 MNPP CREDIT_RETURN" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME MNPP, IN_SYNTHESIS_HDL NO, CAN_DEBUG false" *) input [7:0]IF_NOC_NPP_OUT_NOC_CREDIT_RETURN;
  (* dont_touch = "true" *) input NSU;

  wire [63:0]IF_NOC_AXI_ARADDR;
  wire [1:0]IF_NOC_AXI_ARBURST;
  wire [3:0]IF_NOC_AXI_ARCACHE;
  wire [1:0]IF_NOC_AXI_ARCID;
  wire [7:0]IF_NOC_AXI_ARLEN;
  wire [0:0]IF_NOC_AXI_ARLOCK;
  wire [2:0]IF_NOC_AXI_ARPROT;
  wire [3:0]IF_NOC_AXI_ARQOS;
  wire IF_NOC_AXI_ARREADY;
  wire [3:0]IF_NOC_AXI_ARREGION;
  wire [2:0]IF_NOC_AXI_ARSIZE;
  wire [17:0]IF_NOC_AXI_ARUSER;
  wire IF_NOC_AXI_ARVALID;
  wire [63:0]IF_NOC_AXI_AWADDR;
  wire [1:0]IF_NOC_AXI_AWBURST;
  wire [3:0]IF_NOC_AXI_AWCACHE;
  wire [1:0]IF_NOC_AXI_AWCID;
  wire [7:0]IF_NOC_AXI_AWLEN;
  wire [0:0]IF_NOC_AXI_AWLOCK;
  wire [2:0]IF_NOC_AXI_AWPROT;
  wire [3:0]IF_NOC_AXI_AWQOS;
  wire IF_NOC_AXI_AWREADY;
  wire [3:0]IF_NOC_AXI_AWREGION;
  wire [2:0]IF_NOC_AXI_AWSIZE;
  wire [17:0]IF_NOC_AXI_AWUSER;
  wire IF_NOC_AXI_AWVALID;
  wire [1:0]IF_NOC_AXI_BCID;
  wire IF_NOC_AXI_BREADY;
  wire [1:0]IF_NOC_AXI_BRESP;
  wire IF_NOC_AXI_BVALID;
  wire [1:0]IF_NOC_AXI_RCID;
  wire [511:0]IF_NOC_AXI_RDATA;
  wire [0:0]IF_NOC_AXI_RLAST;
  wire IF_NOC_AXI_RREADY;
  wire [1:0]IF_NOC_AXI_RRESP;
  wire IF_NOC_AXI_RVALID;
  wire [511:0]IF_NOC_AXI_WDATA;
  wire [0:0]IF_NOC_AXI_WLAST;
  wire IF_NOC_AXI_WREADY;
  wire [63:0]IF_NOC_AXI_WSTRB;
  wire IF_NOC_AXI_WVALID;
  wire IF_NOC_NPP_IN_NOC_CREDIT_RDY;
  wire [7:0]IF_NOC_NPP_IN_NOC_CREDIT_RETURN;
  wire [181:0]IF_NOC_NPP_IN_NOC_FLIT;
  wire [7:0]IF_NOC_NPP_IN_NOC_VALID;
  wire IF_NOC_NPP_OUT_NOC_CREDIT_RDY;
  wire [7:0]IF_NOC_NPP_OUT_NOC_CREDIT_RETURN;
  wire [181:0]IF_NOC_NPP_OUT_NOC_FLIT;
  wire [7:0]IF_NOC_NPP_OUT_NOC_VALID;
  (* DONT_TOUCH *) wire NSU;
  wire aclk;
  wire [9:0]NLW_bd_0dc7_M01_AXI_nsu_0_top_INST_IF_NOC_AXI_TDEST_UNCONNECTED;

  (* REG_AXI_LOOPBACK = "2'b00" *) 
  (* REG_COMP_ID_INDEX0 = "5'b00000" *) 
  (* REG_COMP_ID_INDEX1 = "5'b00001" *) 
  (* REG_COMP_ID_MODE = "1'b0" *) 
  (* REG_DISABLE_EX_MON = "1'b1" *) 
  (* REG_DWIDTH = "3'b110" *) 
  (* REG_ECC_CHK_EN = "1'b1" *) 
  (* REG_FIXED_COMP_ID = "2'b00" *) 
  (* REG_MODE_SELECT = "2'b00" *) 
  (* REG_ODISABLE_AXI_RESP = "1'b0" *) 
  (* REG_OUTSTANDING_RD_TXN = "6'b100000" *) 
  (* REG_OUTSTANDING_WR_TXN = "6'b100000" *) 
  (* REG_PAR_CHK = "1'b0" *) 
  (* REG_RDTRK_VCA_TOKEN0 = "8'b00000010" *) 
  (* REG_RDTRK_VCA_TOKEN1 = "8'b00000101" *) 
  (* REG_RD_REQ_VC_MAP0 = "3'b000" *) 
  (* REG_RD_REQ_VC_MAP1 = "3'b100" *) 
  (* REG_RD_RESP_VC_MAP0 = "3'b010" *) 
  (* REG_RD_RESP_VC_MAP1 = "3'b110" *) 
  (* REG_RD_VCA_TOKEN0 = "8'b00000100" *) 
  (* REG_RD_VCA_TOKEN1 = "8'b00001010" *) 
  (* REG_SRC = "12'b001001000000" *) 
  (* REG_TBASE_AXI_TIMEOUT = "4'b0010" *) 
  (* REG_TBASE_TRK_TIMEOUT = "4'b0010" *) 
  (* REG_VMAP_OUT_RD_TOKEN0 = "8'b00000010" *) 
  (* REG_VMAP_OUT_RD_TOKEN1 = "8'b00000101" *) 
  (* REG_VMAP_OUT_WR_TOKEN0 = "8'b00001010" *) 
  (* REG_VMAP_OUT_WR_TOKEN1 = "8'b00000100" *) 
  (* REG_WRTRK_VCA_TOKEN0 = "8'b00001010" *) 
  (* REG_WRTRK_VCA_TOKEN1 = "8'b00000100" *) 
  (* REG_WR_REQ_VC_MAP0 = "3'b001" *) 
  (* REG_WR_REQ_VC_MAP1 = "3'b101" *) 
  (* REG_WR_RESP_VC_MAP0 = "3'b011" *) 
  (* REG_WR_RESP_VC_MAP1 = "3'b111" *) 
  (* REG_WR_VCA_TOKEN0 = "8'b00011001" *) 
  (* REG_WR_VCA_TOKEN1 = "8'b00001010" *) 
  ulp_inst_0_axi_noc_h2c_0_bd_0dc7_M01_AXI_nsu_0_top bd_0dc7_M01_AXI_nsu_0_top_INST
       (.IF_NOC_AXI_ARADDR(IF_NOC_AXI_ARADDR),
        .IF_NOC_AXI_ARBURST(IF_NOC_AXI_ARBURST),
        .IF_NOC_AXI_ARCACHE(IF_NOC_AXI_ARCACHE),
        .IF_NOC_AXI_ARCID(IF_NOC_AXI_ARCID),
        .IF_NOC_AXI_ARLEN(IF_NOC_AXI_ARLEN),
        .IF_NOC_AXI_ARLOCK(IF_NOC_AXI_ARLOCK),
        .IF_NOC_AXI_ARPROT(IF_NOC_AXI_ARPROT),
        .IF_NOC_AXI_ARQOS(IF_NOC_AXI_ARQOS),
        .IF_NOC_AXI_ARREADY(IF_NOC_AXI_ARREADY),
        .IF_NOC_AXI_ARREGION(IF_NOC_AXI_ARREGION),
        .IF_NOC_AXI_ARSIZE(IF_NOC_AXI_ARSIZE),
        .IF_NOC_AXI_ARUSER(IF_NOC_AXI_ARUSER),
        .IF_NOC_AXI_ARVALID(IF_NOC_AXI_ARVALID),
        .IF_NOC_AXI_AWADDR(IF_NOC_AXI_AWADDR),
        .IF_NOC_AXI_AWBURST(IF_NOC_AXI_AWBURST),
        .IF_NOC_AXI_AWCACHE(IF_NOC_AXI_AWCACHE),
        .IF_NOC_AXI_AWCID(IF_NOC_AXI_AWCID),
        .IF_NOC_AXI_AWLEN(IF_NOC_AXI_AWLEN),
        .IF_NOC_AXI_AWLOCK(IF_NOC_AXI_AWLOCK),
        .IF_NOC_AXI_AWPROT(IF_NOC_AXI_AWPROT),
        .IF_NOC_AXI_AWQOS(IF_NOC_AXI_AWQOS),
        .IF_NOC_AXI_AWREADY(IF_NOC_AXI_AWREADY),
        .IF_NOC_AXI_AWREGION(IF_NOC_AXI_AWREGION),
        .IF_NOC_AXI_AWSIZE(IF_NOC_AXI_AWSIZE),
        .IF_NOC_AXI_AWUSER(IF_NOC_AXI_AWUSER),
        .IF_NOC_AXI_AWVALID(IF_NOC_AXI_AWVALID),
        .IF_NOC_AXI_BCID(IF_NOC_AXI_BCID),
        .IF_NOC_AXI_BREADY(IF_NOC_AXI_BREADY),
        .IF_NOC_AXI_BRESP(IF_NOC_AXI_BRESP),
        .IF_NOC_AXI_BVALID(IF_NOC_AXI_BVALID),
        .IF_NOC_AXI_RCID(IF_NOC_AXI_RCID),
        .IF_NOC_AXI_RDATA(IF_NOC_AXI_RDATA),
        .IF_NOC_AXI_RLAST(IF_NOC_AXI_RLAST),
        .IF_NOC_AXI_RREADY(IF_NOC_AXI_RREADY),
        .IF_NOC_AXI_RRESP(IF_NOC_AXI_RRESP),
        .IF_NOC_AXI_RVALID(IF_NOC_AXI_RVALID),
        .IF_NOC_AXI_TDEST(NLW_bd_0dc7_M01_AXI_nsu_0_top_INST_IF_NOC_AXI_TDEST_UNCONNECTED[9:0]),
        .IF_NOC_AXI_WDATA(IF_NOC_AXI_WDATA),
        .IF_NOC_AXI_WLAST(IF_NOC_AXI_WLAST),
        .IF_NOC_AXI_WREADY(IF_NOC_AXI_WREADY),
        .IF_NOC_AXI_WSTRB(IF_NOC_AXI_WSTRB),
        .IF_NOC_AXI_WVALID(IF_NOC_AXI_WVALID),
        .IF_NOC_NPP_IN_NOC_CREDIT_RDY(IF_NOC_NPP_IN_NOC_CREDIT_RDY),
        .IF_NOC_NPP_IN_NOC_CREDIT_RETURN(IF_NOC_NPP_IN_NOC_CREDIT_RETURN),
        .IF_NOC_NPP_IN_NOC_FLIT(IF_NOC_NPP_IN_NOC_FLIT),
        .IF_NOC_NPP_IN_NOC_VALID(IF_NOC_NPP_IN_NOC_VALID),
        .IF_NOC_NPP_OUT_NOC_CREDIT_RDY(IF_NOC_NPP_OUT_NOC_CREDIT_RDY),
        .IF_NOC_NPP_OUT_NOC_CREDIT_RETURN(IF_NOC_NPP_OUT_NOC_CREDIT_RETURN),
        .IF_NOC_NPP_OUT_NOC_FLIT(IF_NOC_NPP_OUT_NOC_FLIT),
        .IF_NOC_NPP_OUT_NOC_VALID(IF_NOC_NPP_OUT_NOC_VALID),
        .NSU(NSU),
        .aclk(aclk));
endmodule

(* ORIG_REF_NAME = "bd_0dc7_M01_AXI_nsu_0_top" *) (* REG_AXI_LOOPBACK = "2'b00" *) (* REG_COMP_ID_INDEX0 = "5'b00000" *) 
(* REG_COMP_ID_INDEX1 = "5'b00001" *) (* REG_COMP_ID_MODE = "1'b0" *) (* REG_DISABLE_EX_MON = "1'b1" *) 
(* REG_DWIDTH = "3'b110" *) (* REG_ECC_CHK_EN = "1'b1" *) (* REG_FIXED_COMP_ID = "2'b00" *) 
(* REG_MODE_SELECT = "2'b00" *) (* REG_ODISABLE_AXI_RESP = "1'b0" *) (* REG_OUTSTANDING_RD_TXN = "6'b100000" *) 
(* REG_OUTSTANDING_WR_TXN = "6'b100000" *) (* REG_PAR_CHK = "1'b0" *) (* REG_RDTRK_VCA_TOKEN0 = "8'b00000010" *) 
(* REG_RDTRK_VCA_TOKEN1 = "8'b00000101" *) (* REG_RD_REQ_VC_MAP0 = "3'b000" *) (* REG_RD_REQ_VC_MAP1 = "3'b100" *) 
(* REG_RD_RESP_VC_MAP0 = "3'b010" *) (* REG_RD_RESP_VC_MAP1 = "3'b110" *) (* REG_RD_VCA_TOKEN0 = "8'b00000100" *) 
(* REG_RD_VCA_TOKEN1 = "8'b00001010" *) (* REG_SRC = "12'b001001000000" *) (* REG_TBASE_AXI_TIMEOUT = "4'b0010" *) 
(* REG_TBASE_TRK_TIMEOUT = "4'b0010" *) (* REG_VMAP_OUT_RD_TOKEN0 = "8'b00000010" *) (* REG_VMAP_OUT_RD_TOKEN1 = "8'b00000101" *) 
(* REG_VMAP_OUT_WR_TOKEN0 = "8'b00001010" *) (* REG_VMAP_OUT_WR_TOKEN1 = "8'b00000100" *) (* REG_WRTRK_VCA_TOKEN0 = "8'b00001010" *) 
(* REG_WRTRK_VCA_TOKEN1 = "8'b00000100" *) (* REG_WR_REQ_VC_MAP0 = "3'b001" *) (* REG_WR_REQ_VC_MAP1 = "3'b101" *) 
(* REG_WR_RESP_VC_MAP0 = "3'b011" *) (* REG_WR_RESP_VC_MAP1 = "3'b111" *) (* REG_WR_VCA_TOKEN0 = "8'b00011001" *) 
(* REG_WR_VCA_TOKEN1 = "8'b00001010" *) 
module ulp_inst_0_axi_noc_h2c_0_bd_0dc7_M01_AXI_nsu_0_top
   (IF_NOC_AXI_TDEST,
    IF_NOC_AXI_WVALID,
    IF_NOC_AXI_WREADY,
    IF_NOC_AXI_WLAST,
    IF_NOC_AXI_AWCID,
    IF_NOC_AXI_WDATA,
    IF_NOC_AXI_WSTRB,
    IF_NOC_AXI_ARADDR,
    IF_NOC_AXI_ARBURST,
    IF_NOC_AXI_ARCACHE,
    IF_NOC_AXI_ARCID,
    IF_NOC_AXI_ARLEN,
    IF_NOC_AXI_ARLOCK,
    IF_NOC_AXI_ARPROT,
    IF_NOC_AXI_ARQOS,
    IF_NOC_AXI_ARREGION,
    IF_NOC_AXI_ARSIZE,
    IF_NOC_AXI_ARUSER,
    IF_NOC_AXI_ARVALID,
    IF_NOC_AXI_AWADDR,
    IF_NOC_AXI_AWBURST,
    IF_NOC_AXI_AWCACHE,
    IF_NOC_AXI_AWLEN,
    IF_NOC_AXI_AWLOCK,
    IF_NOC_AXI_AWPROT,
    IF_NOC_AXI_AWQOS,
    IF_NOC_AXI_AWREGION,
    IF_NOC_AXI_AWSIZE,
    IF_NOC_AXI_AWUSER,
    IF_NOC_AXI_AWVALID,
    IF_NOC_AXI_BREADY,
    IF_NOC_AXI_RREADY,
    IF_NOC_AXI_ARREADY,
    IF_NOC_AXI_AWREADY,
    IF_NOC_AXI_BCID,
    IF_NOC_AXI_BRESP,
    IF_NOC_AXI_BVALID,
    IF_NOC_AXI_RCID,
    IF_NOC_AXI_RDATA,
    IF_NOC_AXI_RLAST,
    IF_NOC_AXI_RRESP,
    IF_NOC_AXI_RVALID,
    IF_NOC_NPP_IN_NOC_CREDIT_RETURN,
    IF_NOC_NPP_OUT_NOC_CREDIT_RDY,
    IF_NOC_NPP_OUT_NOC_FLIT,
    IF_NOC_NPP_OUT_NOC_VALID,
    aclk,
    IF_NOC_NPP_IN_NOC_CREDIT_RDY,
    IF_NOC_NPP_IN_NOC_FLIT,
    IF_NOC_NPP_IN_NOC_VALID,
    IF_NOC_NPP_OUT_NOC_CREDIT_RETURN,
    NSU);
  output [9:0]IF_NOC_AXI_TDEST;
  output IF_NOC_AXI_WVALID;
  input IF_NOC_AXI_WREADY;
  output [0:0]IF_NOC_AXI_WLAST;
  output [1:0]IF_NOC_AXI_AWCID;
  output [511:0]IF_NOC_AXI_WDATA;
  output [63:0]IF_NOC_AXI_WSTRB;
  output [63:0]IF_NOC_AXI_ARADDR;
  output [1:0]IF_NOC_AXI_ARBURST;
  output [3:0]IF_NOC_AXI_ARCACHE;
  output [1:0]IF_NOC_AXI_ARCID;
  output [7:0]IF_NOC_AXI_ARLEN;
  output [0:0]IF_NOC_AXI_ARLOCK;
  output [2:0]IF_NOC_AXI_ARPROT;
  output [3:0]IF_NOC_AXI_ARQOS;
  output [3:0]IF_NOC_AXI_ARREGION;
  output [2:0]IF_NOC_AXI_ARSIZE;
  output [17:0]IF_NOC_AXI_ARUSER;
  output IF_NOC_AXI_ARVALID;
  output [63:0]IF_NOC_AXI_AWADDR;
  output [1:0]IF_NOC_AXI_AWBURST;
  output [3:0]IF_NOC_AXI_AWCACHE;
  output [7:0]IF_NOC_AXI_AWLEN;
  output [0:0]IF_NOC_AXI_AWLOCK;
  output [2:0]IF_NOC_AXI_AWPROT;
  output [3:0]IF_NOC_AXI_AWQOS;
  output [3:0]IF_NOC_AXI_AWREGION;
  output [2:0]IF_NOC_AXI_AWSIZE;
  output [17:0]IF_NOC_AXI_AWUSER;
  output IF_NOC_AXI_AWVALID;
  output IF_NOC_AXI_BREADY;
  output IF_NOC_AXI_RREADY;
  input IF_NOC_AXI_ARREADY;
  input IF_NOC_AXI_AWREADY;
  input [1:0]IF_NOC_AXI_BCID;
  input [1:0]IF_NOC_AXI_BRESP;
  input IF_NOC_AXI_BVALID;
  input [1:0]IF_NOC_AXI_RCID;
  input [511:0]IF_NOC_AXI_RDATA;
  input [0:0]IF_NOC_AXI_RLAST;
  input [1:0]IF_NOC_AXI_RRESP;
  input IF_NOC_AXI_RVALID;
  output [7:0]IF_NOC_NPP_IN_NOC_CREDIT_RETURN;
  output IF_NOC_NPP_OUT_NOC_CREDIT_RDY;
  output [181:0]IF_NOC_NPP_OUT_NOC_FLIT;
  output [7:0]IF_NOC_NPP_OUT_NOC_VALID;
  input aclk;
  input IF_NOC_NPP_IN_NOC_CREDIT_RDY;
  input [181:0]IF_NOC_NPP_IN_NOC_FLIT;
  input [7:0]IF_NOC_NPP_IN_NOC_VALID;
  input [7:0]IF_NOC_NPP_OUT_NOC_CREDIT_RETURN;
  input NSU;

  wire \<const0> ;
  wire [63:0]IF_NOC_AXI_ARADDR;
  wire [1:0]IF_NOC_AXI_ARBURST;
  wire [3:0]IF_NOC_AXI_ARCACHE;
  wire [1:0]IF_NOC_AXI_ARCID;
  wire [7:0]IF_NOC_AXI_ARLEN;
  wire [0:0]IF_NOC_AXI_ARLOCK;
  wire [2:0]IF_NOC_AXI_ARPROT;
  wire [3:0]IF_NOC_AXI_ARQOS;
  wire IF_NOC_AXI_ARREADY;
  wire [3:0]IF_NOC_AXI_ARREGION;
  wire [2:0]IF_NOC_AXI_ARSIZE;
  wire [17:0]IF_NOC_AXI_ARUSER;
  wire IF_NOC_AXI_ARVALID;
  wire [63:0]IF_NOC_AXI_AWADDR;
  wire [1:0]IF_NOC_AXI_AWBURST;
  wire [3:0]IF_NOC_AXI_AWCACHE;
  wire [1:0]IF_NOC_AXI_AWCID;
  wire [7:0]IF_NOC_AXI_AWLEN;
  wire [0:0]IF_NOC_AXI_AWLOCK;
  wire [2:0]IF_NOC_AXI_AWPROT;
  wire [3:0]IF_NOC_AXI_AWQOS;
  wire IF_NOC_AXI_AWREADY;
  wire [3:0]IF_NOC_AXI_AWREGION;
  wire [2:0]IF_NOC_AXI_AWSIZE;
  wire [17:0]IF_NOC_AXI_AWUSER;
  wire IF_NOC_AXI_AWVALID;
  wire [1:0]IF_NOC_AXI_BCID;
  wire IF_NOC_AXI_BREADY;
  wire [1:0]IF_NOC_AXI_BRESP;
  wire IF_NOC_AXI_BVALID;
  wire [1:0]IF_NOC_AXI_RCID;
  wire [511:0]IF_NOC_AXI_RDATA;
  wire [0:0]IF_NOC_AXI_RLAST;
  wire IF_NOC_AXI_RREADY;
  wire [1:0]IF_NOC_AXI_RRESP;
  wire IF_NOC_AXI_RVALID;
  wire [511:0]IF_NOC_AXI_WDATA;
  wire [0:0]IF_NOC_AXI_WLAST;
  wire IF_NOC_AXI_WREADY;
  wire [63:0]IF_NOC_AXI_WSTRB;
  wire IF_NOC_AXI_WVALID;
  wire IF_NOC_NPP_IN_NOC_CREDIT_RDY;
  wire [7:0]IF_NOC_NPP_IN_NOC_CREDIT_RETURN;
  wire [181:0]IF_NOC_NPP_IN_NOC_FLIT;
  wire [7:0]IF_NOC_NPP_IN_NOC_VALID;
  wire IF_NOC_NPP_OUT_NOC_CREDIT_RDY;
  wire [7:0]IF_NOC_NPP_OUT_NOC_CREDIT_RETURN;
  wire [181:0]IF_NOC_NPP_OUT_NOC_FLIT;
  wire [7:0]IF_NOC_NPP_OUT_NOC_VALID;
  wire NOC_NSU512_INST_n_1193;
  wire NOC_NSU512_INST_n_1194;
  wire NOC_NSU512_INST_n_1195;
  wire NOC_NSU512_INST_n_1196;
  wire NOC_NSU512_INST_n_1197;
  wire NOC_NSU512_INST_n_1198;
  wire NOC_NSU512_INST_n_1199;
  wire NOC_NSU512_INST_n_1200;
  wire NOC_NSU512_INST_n_1201;
  wire NOC_NSU512_INST_n_1202;
  wire NSU;
  wire aclk;
  wire NLW_NOC_NSU512_INST_IF_NOC_AXI_WPOISON_UNCONNECTED;
  wire NLW_NOC_NSU512_INST_IF_NOC_NPP_IN_NOC_CREDIT_RETURN_EN_UNCONNECTED;
  wire NLW_NOC_NSU512_INST_IF_NOC_NPP_OUT_NOC_FLIT_EN_UNCONNECTED;
  wire NLW_NOC_NSU512_INST_IF_NOC_NPP_OUT_NOC_VALID_EN_UNCONNECTED;
  wire [15:0]NLW_NOC_NSU512_INST_IF_NOC_AXI_ARID_INFO_UNCONNECTED;
  wire [11:0]NLW_NOC_NSU512_INST_IF_NOC_AXI_ARSRC_INFO_UNCONNECTED;
  wire [15:10]NLW_NOC_NSU512_INST_IF_NOC_AXI_ARUSER_UNCONNECTED;
  wire [15:0]NLW_NOC_NSU512_INST_IF_NOC_AXI_AWID_INFO_UNCONNECTED;
  wire [11:0]NLW_NOC_NSU512_INST_IF_NOC_AXI_AWSRC_INFO_UNCONNECTED;
  wire [15:10]NLW_NOC_NSU512_INST_IF_NOC_AXI_AWUSER_UNCONNECTED;
  wire [5:0]NLW_NOC_NSU512_INST_IF_NOC_AXI_WCID_UNCONNECTED;
  wire [63:0]NLW_NOC_NSU512_INST_IF_NOC_AXI_WDATA_PAR_UNCONNECTED;
  wire [15:0]NLW_NOC_NSU512_INST_IF_NOC_AXI_WID_INFO_UNCONNECTED;
  wire [11:0]NLW_NOC_NSU512_INST_IF_NOC_AXI_WSRC_INFO_UNCONNECTED;
  wire [15:0]NLW_NOC_NSU512_INST_IF_NOC_AXI_WUSER_UNCONNECTED;

  assign IF_NOC_AXI_TDEST[9] = \<const0> ;
  assign IF_NOC_AXI_TDEST[8] = \<const0> ;
  assign IF_NOC_AXI_TDEST[7] = \<const0> ;
  assign IF_NOC_AXI_TDEST[6] = \<const0> ;
  assign IF_NOC_AXI_TDEST[5] = \<const0> ;
  assign IF_NOC_AXI_TDEST[4] = \<const0> ;
  assign IF_NOC_AXI_TDEST[3] = \<const0> ;
  assign IF_NOC_AXI_TDEST[2] = \<const0> ;
  assign IF_NOC_AXI_TDEST[1] = \<const0> ;
  assign IF_NOC_AXI_TDEST[0] = \<const0> ;
  GND GND
       (.G(\<const0> ));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* DONT_TOUCH *) 
  NOC_NSU512 #(
    .REG_AXI_LOOPBACK(2'h0),
    .REG_COMP_ID_INDEX0(5'h00),
    .REG_COMP_ID_INDEX1(5'h01),
    .REG_COMP_ID_MODE(1'h0),
    .REG_DISABLE_EX_MON(1'h1),
    .REG_DWIDTH(3'h6),
    .REG_ECC_CHK_EN(1'h1),
    .REG_FIXED_COMP_ID(2'h0),
    .REG_MODE_SELECT(2'h0),
    .REG_ODISABLE_AXI_RESP(1'h0),
    .REG_OUTSTANDING_RD_TXN(6'h20),
    .REG_OUTSTANDING_WR_TXN(6'h20),
    .REG_PAR_CHK(2'h0),
    .REG_RDTRK_VCA_TOKEN0(8'h02),
    .REG_RDTRK_VCA_TOKEN1(8'h05),
    .REG_RD_REQ_VC_MAP0(3'h0),
    .REG_RD_REQ_VC_MAP1(3'h4),
    .REG_RD_RESP_VC_MAP0(3'h2),
    .REG_RD_RESP_VC_MAP1(3'h6),
    .REG_RD_VCA_TOKEN0(8'h04),
    .REG_RD_VCA_TOKEN1(8'h0A),
    .REG_SRC(12'h240),
    .REG_TBASE_AXI_TIMEOUT(4'h2),
    .REG_TBASE_TRK_TIMEOUT(4'h2),
    .REG_VMAP_OUT_RD_TOKEN0(8'h02),
    .REG_VMAP_OUT_RD_TOKEN1(8'h05),
    .REG_VMAP_OUT_WR_TOKEN0(8'h0A),
    .REG_VMAP_OUT_WR_TOKEN1(8'h04),
    .REG_WRTRK_VCA_TOKEN0(8'h0A),
    .REG_WRTRK_VCA_TOKEN1(8'h04),
    .REG_WR_REQ_VC_MAP0(3'h1),
    .REG_WR_REQ_VC_MAP1(3'h5),
    .REG_WR_RESP_VC_MAP0(3'h3),
    .REG_WR_RESP_VC_MAP1(3'h7),
    .REG_WR_VCA_TOKEN0(8'h19),
    .REG_WR_VCA_TOKEN1(8'h0A)) 
    NOC_NSU512_INST
       (.CLK(aclk),
        .IF_NOC_AXI_ARADDR(IF_NOC_AXI_ARADDR),
        .IF_NOC_AXI_ARADDR_PAR(IF_NOC_AXI_ARUSER[17:10]),
        .IF_NOC_AXI_ARBURST(IF_NOC_AXI_ARBURST),
        .IF_NOC_AXI_ARCACHE(IF_NOC_AXI_ARCACHE),
        .IF_NOC_AXI_ARCID(IF_NOC_AXI_ARCID),
        .IF_NOC_AXI_ARID_INFO(NLW_NOC_NSU512_INST_IF_NOC_AXI_ARID_INFO_UNCONNECTED[15:0]),
        .IF_NOC_AXI_ARLEN(IF_NOC_AXI_ARLEN),
        .IF_NOC_AXI_ARLOCK(IF_NOC_AXI_ARLOCK),
        .IF_NOC_AXI_ARPROT(IF_NOC_AXI_ARPROT),
        .IF_NOC_AXI_ARQOS(IF_NOC_AXI_ARQOS),
        .IF_NOC_AXI_ARREADY(IF_NOC_AXI_ARREADY),
        .IF_NOC_AXI_ARREGION(IF_NOC_AXI_ARREGION),
        .IF_NOC_AXI_ARSIZE(IF_NOC_AXI_ARSIZE),
        .IF_NOC_AXI_ARSRC_INFO(NLW_NOC_NSU512_INST_IF_NOC_AXI_ARSRC_INFO_UNCONNECTED[11:0]),
        .IF_NOC_AXI_ARUSER({NLW_NOC_NSU512_INST_IF_NOC_AXI_ARUSER_UNCONNECTED[15:10],IF_NOC_AXI_ARUSER[9:0]}),
        .IF_NOC_AXI_ARVALID(IF_NOC_AXI_ARVALID),
        .IF_NOC_AXI_AWADDR(IF_NOC_AXI_AWADDR),
        .IF_NOC_AXI_AWADDR_PAR(IF_NOC_AXI_AWUSER[17:10]),
        .IF_NOC_AXI_AWBURST(IF_NOC_AXI_AWBURST),
        .IF_NOC_AXI_AWCACHE(IF_NOC_AXI_AWCACHE),
        .IF_NOC_AXI_AWCID(IF_NOC_AXI_AWCID),
        .IF_NOC_AXI_AWID_INFO(NLW_NOC_NSU512_INST_IF_NOC_AXI_AWID_INFO_UNCONNECTED[15:0]),
        .IF_NOC_AXI_AWLEN(IF_NOC_AXI_AWLEN),
        .IF_NOC_AXI_AWLOCK(IF_NOC_AXI_AWLOCK),
        .IF_NOC_AXI_AWPROT(IF_NOC_AXI_AWPROT),
        .IF_NOC_AXI_AWQOS(IF_NOC_AXI_AWQOS),
        .IF_NOC_AXI_AWREADY(IF_NOC_AXI_AWREADY),
        .IF_NOC_AXI_AWREGION(IF_NOC_AXI_AWREGION),
        .IF_NOC_AXI_AWSIZE(IF_NOC_AXI_AWSIZE),
        .IF_NOC_AXI_AWSRC_INFO(NLW_NOC_NSU512_INST_IF_NOC_AXI_AWSRC_INFO_UNCONNECTED[11:0]),
        .IF_NOC_AXI_AWUSER({NLW_NOC_NSU512_INST_IF_NOC_AXI_AWUSER_UNCONNECTED[15:10],IF_NOC_AXI_AWUSER[9:0]}),
        .IF_NOC_AXI_AWVALID(IF_NOC_AXI_AWVALID),
        .IF_NOC_AXI_BCID(IF_NOC_AXI_BCID),
        .IF_NOC_AXI_BREADY(IF_NOC_AXI_BREADY),
        .IF_NOC_AXI_BRESP(IF_NOC_AXI_BRESP),
        .IF_NOC_AXI_BUSER({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .IF_NOC_AXI_BVALID(IF_NOC_AXI_BVALID),
        .IF_NOC_AXI_RCID(IF_NOC_AXI_RCID),
        .IF_NOC_AXI_RDATA(IF_NOC_AXI_RDATA),
        .IF_NOC_AXI_RDATA_PAR({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .IF_NOC_AXI_RLAST(IF_NOC_AXI_RLAST),
        .IF_NOC_AXI_RPOISON(1'b0),
        .IF_NOC_AXI_RREADY(IF_NOC_AXI_RREADY),
        .IF_NOC_AXI_RRESP(IF_NOC_AXI_RRESP),
        .IF_NOC_AXI_RUSER({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .IF_NOC_AXI_RVALID(IF_NOC_AXI_RVALID),
        .IF_NOC_AXI_TDEST({NOC_NSU512_INST_n_1193,NOC_NSU512_INST_n_1194,NOC_NSU512_INST_n_1195,NOC_NSU512_INST_n_1196,NOC_NSU512_INST_n_1197,NOC_NSU512_INST_n_1198,NOC_NSU512_INST_n_1199,NOC_NSU512_INST_n_1200,NOC_NSU512_INST_n_1201,NOC_NSU512_INST_n_1202}),
        .IF_NOC_AXI_WCID(NLW_NOC_NSU512_INST_IF_NOC_AXI_WCID_UNCONNECTED[5:0]),
        .IF_NOC_AXI_WDATA(IF_NOC_AXI_WDATA),
        .IF_NOC_AXI_WDATA_PAR(NLW_NOC_NSU512_INST_IF_NOC_AXI_WDATA_PAR_UNCONNECTED[63:0]),
        .IF_NOC_AXI_WID_INFO(NLW_NOC_NSU512_INST_IF_NOC_AXI_WID_INFO_UNCONNECTED[15:0]),
        .IF_NOC_AXI_WLAST(IF_NOC_AXI_WLAST),
        .IF_NOC_AXI_WPOISON(NLW_NOC_NSU512_INST_IF_NOC_AXI_WPOISON_UNCONNECTED),
        .IF_NOC_AXI_WREADY(IF_NOC_AXI_WREADY),
        .IF_NOC_AXI_WSRC_INFO(NLW_NOC_NSU512_INST_IF_NOC_AXI_WSRC_INFO_UNCONNECTED[11:0]),
        .IF_NOC_AXI_WSTRB(IF_NOC_AXI_WSTRB),
        .IF_NOC_AXI_WUSER(NLW_NOC_NSU512_INST_IF_NOC_AXI_WUSER_UNCONNECTED[15:0]),
        .IF_NOC_AXI_WVALID(IF_NOC_AXI_WVALID),
        .IF_NOC_NPP_IN_NOC_CREDIT_RDY(IF_NOC_NPP_IN_NOC_CREDIT_RDY),
        .IF_NOC_NPP_IN_NOC_CREDIT_RETURN(IF_NOC_NPP_IN_NOC_CREDIT_RETURN),
        .IF_NOC_NPP_IN_NOC_CREDIT_RETURN_EN(NLW_NOC_NSU512_INST_IF_NOC_NPP_IN_NOC_CREDIT_RETURN_EN_UNCONNECTED),
        .IF_NOC_NPP_IN_NOC_FLIT(IF_NOC_NPP_IN_NOC_FLIT),
        .IF_NOC_NPP_IN_NOC_FLIT_EN(1'b1),
        .IF_NOC_NPP_IN_NOC_VALID(IF_NOC_NPP_IN_NOC_VALID),
        .IF_NOC_NPP_IN_NOC_VALID_EN(1'b1),
        .IF_NOC_NPP_OUT_NOC_CREDIT_RDY(IF_NOC_NPP_OUT_NOC_CREDIT_RDY),
        .IF_NOC_NPP_OUT_NOC_CREDIT_RETURN(IF_NOC_NPP_OUT_NOC_CREDIT_RETURN),
        .IF_NOC_NPP_OUT_NOC_CREDIT_RETURN_EN(1'b1),
        .IF_NOC_NPP_OUT_NOC_FLIT(IF_NOC_NPP_OUT_NOC_FLIT),
        .IF_NOC_NPP_OUT_NOC_FLIT_EN(NLW_NOC_NSU512_INST_IF_NOC_NPP_OUT_NOC_FLIT_EN_UNCONNECTED),
        .IF_NOC_NPP_OUT_NOC_VALID(IF_NOC_NPP_OUT_NOC_VALID),
        .IF_NOC_NPP_OUT_NOC_VALID_EN(NLW_NOC_NSU512_INST_IF_NOC_NPP_OUT_NOC_VALID_EN_UNCONNECTED),
        .NSU(NSU),
        .NSU_USR_INTERRUPT_IN({1'b0,1'b0,1'b0,1'b0}));
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
