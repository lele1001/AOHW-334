//Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Command: generate_target bd_0dc7.bd
//Design : bd_0dc7
//Purpose: IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CORE_GENERATION_INFO = "bd_0dc7,IP_Integrator,{x_ipVendor=xilinx.com,x_ipLibrary=BlockDiagram,x_ipName=bd_0dc7,x_ipVersion=1.00.a,x_ipLanguage=VERILOG,numBlks=2,numReposBlks=2,numNonXlnxBlks=0,numHierBlks=0,maxHierDepth=0,numSysgenBlks=0,numHlsBlks=0,numHdlrefBlks=0,numPkgbdBlks=0,bdsource=SBD,synth_mode=Global}" *) (* HW_HANDOFF = "ulp_inst_0_axi_noc_h2c_0.hwdef" *) 
module bd_0dc7
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

  wire [63:0]M00_AXI_nsu_MAXI4_ARADDR;
  wire [1:0]M00_AXI_nsu_MAXI4_ARBURST;
  wire [3:0]M00_AXI_nsu_MAXI4_ARCACHE;
  wire [1:0]M00_AXI_nsu_MAXI4_ARID;
  wire [7:0]M00_AXI_nsu_MAXI4_ARLEN;
  wire [0:0]M00_AXI_nsu_MAXI4_ARLOCK;
  wire [2:0]M00_AXI_nsu_MAXI4_ARPROT;
  wire [3:0]M00_AXI_nsu_MAXI4_ARQOS;
  wire [0:0]M00_AXI_nsu_MAXI4_ARREADY;
  wire [3:0]M00_AXI_nsu_MAXI4_ARREGION;
  wire [2:0]M00_AXI_nsu_MAXI4_ARSIZE;
  wire [17:0]M00_AXI_nsu_MAXI4_ARUSER;
  wire M00_AXI_nsu_MAXI4_ARVALID;
  wire [63:0]M00_AXI_nsu_MAXI4_AWADDR;
  wire [1:0]M00_AXI_nsu_MAXI4_AWBURST;
  wire [3:0]M00_AXI_nsu_MAXI4_AWCACHE;
  wire [1:0]M00_AXI_nsu_MAXI4_AWID;
  wire [7:0]M00_AXI_nsu_MAXI4_AWLEN;
  wire [0:0]M00_AXI_nsu_MAXI4_AWLOCK;
  wire [2:0]M00_AXI_nsu_MAXI4_AWPROT;
  wire [3:0]M00_AXI_nsu_MAXI4_AWQOS;
  wire [0:0]M00_AXI_nsu_MAXI4_AWREADY;
  wire [3:0]M00_AXI_nsu_MAXI4_AWREGION;
  wire [2:0]M00_AXI_nsu_MAXI4_AWSIZE;
  wire [17:0]M00_AXI_nsu_MAXI4_AWUSER;
  wire M00_AXI_nsu_MAXI4_AWVALID;
  wire [1:0]M00_AXI_nsu_MAXI4_BID;
  wire M00_AXI_nsu_MAXI4_BREADY;
  wire [1:0]M00_AXI_nsu_MAXI4_BRESP;
  wire [0:0]M00_AXI_nsu_MAXI4_BVALID;
  wire [127:0]M00_AXI_nsu_MAXI4_RDATA;
  wire [1:0]M00_AXI_nsu_MAXI4_RID;
  wire [0:0]M00_AXI_nsu_MAXI4_RLAST;
  wire M00_AXI_nsu_MAXI4_RREADY;
  wire [1:0]M00_AXI_nsu_MAXI4_RRESP;
  wire [0:0]M00_AXI_nsu_MAXI4_RVALID;
  wire [127:0]M00_AXI_nsu_MAXI4_WDATA;
  wire [0:0]M00_AXI_nsu_MAXI4_WLAST;
  wire [0:0]M00_AXI_nsu_MAXI4_WREADY;
  wire [15:0]M00_AXI_nsu_MAXI4_WSTRB;
  wire M00_AXI_nsu_MAXI4_WVALID;
  wire [63:0]M01_AXI_nsu_MAXI4_ARADDR;
  wire [1:0]M01_AXI_nsu_MAXI4_ARBURST;
  wire [3:0]M01_AXI_nsu_MAXI4_ARCACHE;
  wire [1:0]M01_AXI_nsu_MAXI4_ARID;
  wire [7:0]M01_AXI_nsu_MAXI4_ARLEN;
  wire [0:0]M01_AXI_nsu_MAXI4_ARLOCK;
  wire [2:0]M01_AXI_nsu_MAXI4_ARPROT;
  wire [3:0]M01_AXI_nsu_MAXI4_ARQOS;
  wire [0:0]M01_AXI_nsu_MAXI4_ARREADY;
  wire [3:0]M01_AXI_nsu_MAXI4_ARREGION;
  wire [2:0]M01_AXI_nsu_MAXI4_ARSIZE;
  wire [17:0]M01_AXI_nsu_MAXI4_ARUSER;
  wire M01_AXI_nsu_MAXI4_ARVALID;
  wire [63:0]M01_AXI_nsu_MAXI4_AWADDR;
  wire [1:0]M01_AXI_nsu_MAXI4_AWBURST;
  wire [3:0]M01_AXI_nsu_MAXI4_AWCACHE;
  wire [1:0]M01_AXI_nsu_MAXI4_AWID;
  wire [7:0]M01_AXI_nsu_MAXI4_AWLEN;
  wire [0:0]M01_AXI_nsu_MAXI4_AWLOCK;
  wire [2:0]M01_AXI_nsu_MAXI4_AWPROT;
  wire [3:0]M01_AXI_nsu_MAXI4_AWQOS;
  wire [0:0]M01_AXI_nsu_MAXI4_AWREADY;
  wire [3:0]M01_AXI_nsu_MAXI4_AWREGION;
  wire [2:0]M01_AXI_nsu_MAXI4_AWSIZE;
  wire [17:0]M01_AXI_nsu_MAXI4_AWUSER;
  wire M01_AXI_nsu_MAXI4_AWVALID;
  wire [1:0]M01_AXI_nsu_MAXI4_BID;
  wire M01_AXI_nsu_MAXI4_BREADY;
  wire [1:0]M01_AXI_nsu_MAXI4_BRESP;
  wire [0:0]M01_AXI_nsu_MAXI4_BVALID;
  wire [511:0]M01_AXI_nsu_MAXI4_RDATA;
  wire [1:0]M01_AXI_nsu_MAXI4_RID;
  wire [0:0]M01_AXI_nsu_MAXI4_RLAST;
  wire M01_AXI_nsu_MAXI4_RREADY;
  wire [1:0]M01_AXI_nsu_MAXI4_RRESP;
  wire [0:0]M01_AXI_nsu_MAXI4_RVALID;
  wire [511:0]M01_AXI_nsu_MAXI4_WDATA;
  wire [0:0]M01_AXI_nsu_MAXI4_WLAST;
  wire [0:0]M01_AXI_nsu_MAXI4_WREADY;
  wire [63:0]M01_AXI_nsu_MAXI4_WSTRB;
  wire M01_AXI_nsu_MAXI4_WVALID;
  wire aclk0_1;
  (* EXT_CONN = "TRUE" *) (* HIDDEN = "TRUE" *) (* SIM_ONLY = "TRUE" *) wire m00_axi_nsu_if_noc_npp_in_noc_credit_rdy;
  (* EXT_CONN = "TRUE" *) (* HIDDEN = "TRUE" *) (* SIM_ONLY = "TRUE" *) wire [7:0]m00_axi_nsu_if_noc_npp_in_noc_credit_return;
  (* EXT_CONN = "TRUE" *) (* HIDDEN = "TRUE" *) (* SIM_ONLY = "TRUE" *) wire [181:0]m00_axi_nsu_if_noc_npp_in_noc_flit;
  (* EXT_CONN = "TRUE" *) (* HIDDEN = "TRUE" *) (* SIM_ONLY = "TRUE" *) wire [7:0]m00_axi_nsu_if_noc_npp_in_noc_valid;
  (* EXT_CONN = "TRUE" *) (* HIDDEN = "TRUE" *) (* SIM_ONLY = "TRUE" *) wire m00_axi_nsu_if_noc_npp_out_noc_credit_rdy;
  (* EXT_CONN = "TRUE" *) (* HIDDEN = "TRUE" *) (* SIM_ONLY = "TRUE" *) wire [7:0]m00_axi_nsu_if_noc_npp_out_noc_credit_return;
  (* EXT_CONN = "TRUE" *) (* HIDDEN = "TRUE" *) (* SIM_ONLY = "TRUE" *) wire [181:0]m00_axi_nsu_if_noc_npp_out_noc_flit;
  (* EXT_CONN = "TRUE" *) (* HIDDEN = "TRUE" *) (* SIM_ONLY = "TRUE" *) wire [7:0]m00_axi_nsu_if_noc_npp_out_noc_valid;
  (* EXT_CONN = "TRUE" *) (* HIDDEN = "TRUE" *) (* SIM_ONLY = "TRUE" *) wire m01_axi_nsu_if_noc_npp_in_noc_credit_rdy;
  (* EXT_CONN = "TRUE" *) (* HIDDEN = "TRUE" *) (* SIM_ONLY = "TRUE" *) wire [7:0]m01_axi_nsu_if_noc_npp_in_noc_credit_return;
  (* EXT_CONN = "TRUE" *) (* HIDDEN = "TRUE" *) (* SIM_ONLY = "TRUE" *) wire [181:0]m01_axi_nsu_if_noc_npp_in_noc_flit;
  (* EXT_CONN = "TRUE" *) (* HIDDEN = "TRUE" *) (* SIM_ONLY = "TRUE" *) wire [7:0]m01_axi_nsu_if_noc_npp_in_noc_valid;
  (* EXT_CONN = "TRUE" *) (* HIDDEN = "TRUE" *) (* SIM_ONLY = "TRUE" *) wire m01_axi_nsu_if_noc_npp_out_noc_credit_rdy;
  (* EXT_CONN = "TRUE" *) (* HIDDEN = "TRUE" *) (* SIM_ONLY = "TRUE" *) wire [7:0]m01_axi_nsu_if_noc_npp_out_noc_credit_return;
  (* EXT_CONN = "TRUE" *) (* HIDDEN = "TRUE" *) (* SIM_ONLY = "TRUE" *) wire [181:0]m01_axi_nsu_if_noc_npp_out_noc_flit;
  (* EXT_CONN = "TRUE" *) (* HIDDEN = "TRUE" *) (* SIM_ONLY = "TRUE" *) wire [7:0]m01_axi_nsu_if_noc_npp_out_noc_valid;

  assign M00_AXI_araddr[63:0] = M00_AXI_nsu_MAXI4_ARADDR;
  assign M00_AXI_arburst[1:0] = M00_AXI_nsu_MAXI4_ARBURST;
  assign M00_AXI_arcache[3:0] = M00_AXI_nsu_MAXI4_ARCACHE;
  assign M00_AXI_arid[1:0] = M00_AXI_nsu_MAXI4_ARID;
  assign M00_AXI_arlen[7:0] = M00_AXI_nsu_MAXI4_ARLEN;
  assign M00_AXI_arlock[0] = M00_AXI_nsu_MAXI4_ARLOCK;
  assign M00_AXI_arprot[2:0] = M00_AXI_nsu_MAXI4_ARPROT;
  assign M00_AXI_arqos[3:0] = M00_AXI_nsu_MAXI4_ARQOS;
  assign M00_AXI_arregion[3:0] = M00_AXI_nsu_MAXI4_ARREGION;
  assign M00_AXI_arsize[2:0] = M00_AXI_nsu_MAXI4_ARSIZE;
  assign M00_AXI_aruser[17:0] = M00_AXI_nsu_MAXI4_ARUSER;
  assign M00_AXI_arvalid[0] = M00_AXI_nsu_MAXI4_ARVALID;
  assign M00_AXI_awaddr[63:0] = M00_AXI_nsu_MAXI4_AWADDR;
  assign M00_AXI_awburst[1:0] = M00_AXI_nsu_MAXI4_AWBURST;
  assign M00_AXI_awcache[3:0] = M00_AXI_nsu_MAXI4_AWCACHE;
  assign M00_AXI_awid[1:0] = M00_AXI_nsu_MAXI4_AWID;
  assign M00_AXI_awlen[7:0] = M00_AXI_nsu_MAXI4_AWLEN;
  assign M00_AXI_awlock[0] = M00_AXI_nsu_MAXI4_AWLOCK;
  assign M00_AXI_awprot[2:0] = M00_AXI_nsu_MAXI4_AWPROT;
  assign M00_AXI_awqos[3:0] = M00_AXI_nsu_MAXI4_AWQOS;
  assign M00_AXI_awregion[3:0] = M00_AXI_nsu_MAXI4_AWREGION;
  assign M00_AXI_awsize[2:0] = M00_AXI_nsu_MAXI4_AWSIZE;
  assign M00_AXI_awuser[17:0] = M00_AXI_nsu_MAXI4_AWUSER;
  assign M00_AXI_awvalid[0] = M00_AXI_nsu_MAXI4_AWVALID;
  assign M00_AXI_bready[0] = M00_AXI_nsu_MAXI4_BREADY;
  assign M00_AXI_nsu_MAXI4_ARREADY = M00_AXI_arready[0];
  assign M00_AXI_nsu_MAXI4_AWREADY = M00_AXI_awready[0];
  assign M00_AXI_nsu_MAXI4_BID = M00_AXI_bid[1:0];
  assign M00_AXI_nsu_MAXI4_BRESP = M00_AXI_bresp[1:0];
  assign M00_AXI_nsu_MAXI4_BVALID = M00_AXI_bvalid[0];
  assign M00_AXI_nsu_MAXI4_RDATA = M00_AXI_rdata[127:0];
  assign M00_AXI_nsu_MAXI4_RID = M00_AXI_rid[1:0];
  assign M00_AXI_nsu_MAXI4_RLAST = M00_AXI_rlast[0];
  assign M00_AXI_nsu_MAXI4_RRESP = M00_AXI_rresp[1:0];
  assign M00_AXI_nsu_MAXI4_RVALID = M00_AXI_rvalid[0];
  assign M00_AXI_nsu_MAXI4_WREADY = M00_AXI_wready[0];
  assign M00_AXI_rready[0] = M00_AXI_nsu_MAXI4_RREADY;
  assign M00_AXI_wdata[127:0] = M00_AXI_nsu_MAXI4_WDATA;
  assign M00_AXI_wlast[0] = M00_AXI_nsu_MAXI4_WLAST;
  assign M00_AXI_wstrb[15:0] = M00_AXI_nsu_MAXI4_WSTRB;
  assign M00_AXI_wvalid[0] = M00_AXI_nsu_MAXI4_WVALID;
  assign M01_AXI_araddr[63:0] = M01_AXI_nsu_MAXI4_ARADDR;
  assign M01_AXI_arburst[1:0] = M01_AXI_nsu_MAXI4_ARBURST;
  assign M01_AXI_arcache[3:0] = M01_AXI_nsu_MAXI4_ARCACHE;
  assign M01_AXI_arid[1:0] = M01_AXI_nsu_MAXI4_ARID;
  assign M01_AXI_arlen[7:0] = M01_AXI_nsu_MAXI4_ARLEN;
  assign M01_AXI_arlock[0] = M01_AXI_nsu_MAXI4_ARLOCK;
  assign M01_AXI_arprot[2:0] = M01_AXI_nsu_MAXI4_ARPROT;
  assign M01_AXI_arqos[3:0] = M01_AXI_nsu_MAXI4_ARQOS;
  assign M01_AXI_arregion[3:0] = M01_AXI_nsu_MAXI4_ARREGION;
  assign M01_AXI_arsize[2:0] = M01_AXI_nsu_MAXI4_ARSIZE;
  assign M01_AXI_aruser[17:0] = M01_AXI_nsu_MAXI4_ARUSER;
  assign M01_AXI_arvalid[0] = M01_AXI_nsu_MAXI4_ARVALID;
  assign M01_AXI_awaddr[63:0] = M01_AXI_nsu_MAXI4_AWADDR;
  assign M01_AXI_awburst[1:0] = M01_AXI_nsu_MAXI4_AWBURST;
  assign M01_AXI_awcache[3:0] = M01_AXI_nsu_MAXI4_AWCACHE;
  assign M01_AXI_awid[1:0] = M01_AXI_nsu_MAXI4_AWID;
  assign M01_AXI_awlen[7:0] = M01_AXI_nsu_MAXI4_AWLEN;
  assign M01_AXI_awlock[0] = M01_AXI_nsu_MAXI4_AWLOCK;
  assign M01_AXI_awprot[2:0] = M01_AXI_nsu_MAXI4_AWPROT;
  assign M01_AXI_awqos[3:0] = M01_AXI_nsu_MAXI4_AWQOS;
  assign M01_AXI_awregion[3:0] = M01_AXI_nsu_MAXI4_AWREGION;
  assign M01_AXI_awsize[2:0] = M01_AXI_nsu_MAXI4_AWSIZE;
  assign M01_AXI_awuser[17:0] = M01_AXI_nsu_MAXI4_AWUSER;
  assign M01_AXI_awvalid[0] = M01_AXI_nsu_MAXI4_AWVALID;
  assign M01_AXI_bready[0] = M01_AXI_nsu_MAXI4_BREADY;
  assign M01_AXI_nsu_MAXI4_ARREADY = M01_AXI_arready[0];
  assign M01_AXI_nsu_MAXI4_AWREADY = M01_AXI_awready[0];
  assign M01_AXI_nsu_MAXI4_BID = M01_AXI_bid[1:0];
  assign M01_AXI_nsu_MAXI4_BRESP = M01_AXI_bresp[1:0];
  assign M01_AXI_nsu_MAXI4_BVALID = M01_AXI_bvalid[0];
  assign M01_AXI_nsu_MAXI4_RDATA = M01_AXI_rdata[511:0];
  assign M01_AXI_nsu_MAXI4_RID = M01_AXI_rid[1:0];
  assign M01_AXI_nsu_MAXI4_RLAST = M01_AXI_rlast[0];
  assign M01_AXI_nsu_MAXI4_RRESP = M01_AXI_rresp[1:0];
  assign M01_AXI_nsu_MAXI4_RVALID = M01_AXI_rvalid[0];
  assign M01_AXI_nsu_MAXI4_WREADY = M01_AXI_wready[0];
  assign M01_AXI_rready[0] = M01_AXI_nsu_MAXI4_RREADY;
  assign M01_AXI_wdata[511:0] = M01_AXI_nsu_MAXI4_WDATA;
  assign M01_AXI_wlast[0] = M01_AXI_nsu_MAXI4_WLAST;
  assign M01_AXI_wstrb[63:0] = M01_AXI_nsu_MAXI4_WSTRB;
  assign M01_AXI_wvalid[0] = M01_AXI_nsu_MAXI4_WVALID;
  assign aclk0_1 = aclk0;
  (* DONT_TOUCH *) 
  bd_0dc7_M00_AXI_nsu_0 M00_AXI_nsu
       (.IF_NOC_AXI_ARADDR(M00_AXI_nsu_MAXI4_ARADDR),
        .IF_NOC_AXI_ARBURST(M00_AXI_nsu_MAXI4_ARBURST),
        .IF_NOC_AXI_ARCACHE(M00_AXI_nsu_MAXI4_ARCACHE),
        .IF_NOC_AXI_ARCID(M00_AXI_nsu_MAXI4_ARID),
        .IF_NOC_AXI_ARLEN(M00_AXI_nsu_MAXI4_ARLEN),
        .IF_NOC_AXI_ARLOCK(M00_AXI_nsu_MAXI4_ARLOCK),
        .IF_NOC_AXI_ARPROT(M00_AXI_nsu_MAXI4_ARPROT),
        .IF_NOC_AXI_ARQOS(M00_AXI_nsu_MAXI4_ARQOS),
        .IF_NOC_AXI_ARREADY(M00_AXI_nsu_MAXI4_ARREADY),
        .IF_NOC_AXI_ARREGION(M00_AXI_nsu_MAXI4_ARREGION),
        .IF_NOC_AXI_ARSIZE(M00_AXI_nsu_MAXI4_ARSIZE),
        .IF_NOC_AXI_ARUSER(M00_AXI_nsu_MAXI4_ARUSER),
        .IF_NOC_AXI_ARVALID(M00_AXI_nsu_MAXI4_ARVALID),
        .IF_NOC_AXI_AWADDR(M00_AXI_nsu_MAXI4_AWADDR),
        .IF_NOC_AXI_AWBURST(M00_AXI_nsu_MAXI4_AWBURST),
        .IF_NOC_AXI_AWCACHE(M00_AXI_nsu_MAXI4_AWCACHE),
        .IF_NOC_AXI_AWCID(M00_AXI_nsu_MAXI4_AWID),
        .IF_NOC_AXI_AWLEN(M00_AXI_nsu_MAXI4_AWLEN),
        .IF_NOC_AXI_AWLOCK(M00_AXI_nsu_MAXI4_AWLOCK),
        .IF_NOC_AXI_AWPROT(M00_AXI_nsu_MAXI4_AWPROT),
        .IF_NOC_AXI_AWQOS(M00_AXI_nsu_MAXI4_AWQOS),
        .IF_NOC_AXI_AWREADY(M00_AXI_nsu_MAXI4_AWREADY),
        .IF_NOC_AXI_AWREGION(M00_AXI_nsu_MAXI4_AWREGION),
        .IF_NOC_AXI_AWSIZE(M00_AXI_nsu_MAXI4_AWSIZE),
        .IF_NOC_AXI_AWUSER(M00_AXI_nsu_MAXI4_AWUSER),
        .IF_NOC_AXI_AWVALID(M00_AXI_nsu_MAXI4_AWVALID),
        .IF_NOC_AXI_BCID(M00_AXI_nsu_MAXI4_BID),
        .IF_NOC_AXI_BREADY(M00_AXI_nsu_MAXI4_BREADY),
        .IF_NOC_AXI_BRESP(M00_AXI_nsu_MAXI4_BRESP),
        .IF_NOC_AXI_BVALID(M00_AXI_nsu_MAXI4_BVALID),
        .IF_NOC_AXI_RCID(M00_AXI_nsu_MAXI4_RID),
        .IF_NOC_AXI_RDATA(M00_AXI_nsu_MAXI4_RDATA),
        .IF_NOC_AXI_RLAST(M00_AXI_nsu_MAXI4_RLAST),
        .IF_NOC_AXI_RREADY(M00_AXI_nsu_MAXI4_RREADY),
        .IF_NOC_AXI_RRESP(M00_AXI_nsu_MAXI4_RRESP),
        .IF_NOC_AXI_RVALID(M00_AXI_nsu_MAXI4_RVALID),
        .IF_NOC_AXI_WDATA(M00_AXI_nsu_MAXI4_WDATA),
        .IF_NOC_AXI_WLAST(M00_AXI_nsu_MAXI4_WLAST),
        .IF_NOC_AXI_WREADY(M00_AXI_nsu_MAXI4_WREADY),
        .IF_NOC_AXI_WSTRB(M00_AXI_nsu_MAXI4_WSTRB),
        .IF_NOC_AXI_WVALID(M00_AXI_nsu_MAXI4_WVALID),
        .IF_NOC_NPP_IN_NOC_CREDIT_RDY(m00_axi_nsu_if_noc_npp_in_noc_credit_rdy),
        .IF_NOC_NPP_IN_NOC_CREDIT_RETURN(m00_axi_nsu_if_noc_npp_in_noc_credit_return),
        .IF_NOC_NPP_IN_NOC_FLIT(m00_axi_nsu_if_noc_npp_in_noc_flit),
        .IF_NOC_NPP_IN_NOC_VALID(m00_axi_nsu_if_noc_npp_in_noc_valid),
        .IF_NOC_NPP_OUT_NOC_CREDIT_RDY(m00_axi_nsu_if_noc_npp_out_noc_credit_rdy),
        .IF_NOC_NPP_OUT_NOC_CREDIT_RETURN(m00_axi_nsu_if_noc_npp_out_noc_credit_return),
        .IF_NOC_NPP_OUT_NOC_FLIT(m00_axi_nsu_if_noc_npp_out_noc_flit),
        .IF_NOC_NPP_OUT_NOC_VALID(m00_axi_nsu_if_noc_npp_out_noc_valid),
        .NSU(1'b0),
        .aclk(aclk0_1));
  (* DONT_TOUCH *) 
  bd_0dc7_M01_AXI_nsu_0 M01_AXI_nsu
       (.IF_NOC_AXI_ARADDR(M01_AXI_nsu_MAXI4_ARADDR),
        .IF_NOC_AXI_ARBURST(M01_AXI_nsu_MAXI4_ARBURST),
        .IF_NOC_AXI_ARCACHE(M01_AXI_nsu_MAXI4_ARCACHE),
        .IF_NOC_AXI_ARCID(M01_AXI_nsu_MAXI4_ARID),
        .IF_NOC_AXI_ARLEN(M01_AXI_nsu_MAXI4_ARLEN),
        .IF_NOC_AXI_ARLOCK(M01_AXI_nsu_MAXI4_ARLOCK),
        .IF_NOC_AXI_ARPROT(M01_AXI_nsu_MAXI4_ARPROT),
        .IF_NOC_AXI_ARQOS(M01_AXI_nsu_MAXI4_ARQOS),
        .IF_NOC_AXI_ARREADY(M01_AXI_nsu_MAXI4_ARREADY),
        .IF_NOC_AXI_ARREGION(M01_AXI_nsu_MAXI4_ARREGION),
        .IF_NOC_AXI_ARSIZE(M01_AXI_nsu_MAXI4_ARSIZE),
        .IF_NOC_AXI_ARUSER(M01_AXI_nsu_MAXI4_ARUSER),
        .IF_NOC_AXI_ARVALID(M01_AXI_nsu_MAXI4_ARVALID),
        .IF_NOC_AXI_AWADDR(M01_AXI_nsu_MAXI4_AWADDR),
        .IF_NOC_AXI_AWBURST(M01_AXI_nsu_MAXI4_AWBURST),
        .IF_NOC_AXI_AWCACHE(M01_AXI_nsu_MAXI4_AWCACHE),
        .IF_NOC_AXI_AWCID(M01_AXI_nsu_MAXI4_AWID),
        .IF_NOC_AXI_AWLEN(M01_AXI_nsu_MAXI4_AWLEN),
        .IF_NOC_AXI_AWLOCK(M01_AXI_nsu_MAXI4_AWLOCK),
        .IF_NOC_AXI_AWPROT(M01_AXI_nsu_MAXI4_AWPROT),
        .IF_NOC_AXI_AWQOS(M01_AXI_nsu_MAXI4_AWQOS),
        .IF_NOC_AXI_AWREADY(M01_AXI_nsu_MAXI4_AWREADY),
        .IF_NOC_AXI_AWREGION(M01_AXI_nsu_MAXI4_AWREGION),
        .IF_NOC_AXI_AWSIZE(M01_AXI_nsu_MAXI4_AWSIZE),
        .IF_NOC_AXI_AWUSER(M01_AXI_nsu_MAXI4_AWUSER),
        .IF_NOC_AXI_AWVALID(M01_AXI_nsu_MAXI4_AWVALID),
        .IF_NOC_AXI_BCID(M01_AXI_nsu_MAXI4_BID),
        .IF_NOC_AXI_BREADY(M01_AXI_nsu_MAXI4_BREADY),
        .IF_NOC_AXI_BRESP(M01_AXI_nsu_MAXI4_BRESP),
        .IF_NOC_AXI_BVALID(M01_AXI_nsu_MAXI4_BVALID),
        .IF_NOC_AXI_RCID(M01_AXI_nsu_MAXI4_RID),
        .IF_NOC_AXI_RDATA(M01_AXI_nsu_MAXI4_RDATA),
        .IF_NOC_AXI_RLAST(M01_AXI_nsu_MAXI4_RLAST),
        .IF_NOC_AXI_RREADY(M01_AXI_nsu_MAXI4_RREADY),
        .IF_NOC_AXI_RRESP(M01_AXI_nsu_MAXI4_RRESP),
        .IF_NOC_AXI_RVALID(M01_AXI_nsu_MAXI4_RVALID),
        .IF_NOC_AXI_WDATA(M01_AXI_nsu_MAXI4_WDATA),
        .IF_NOC_AXI_WLAST(M01_AXI_nsu_MAXI4_WLAST),
        .IF_NOC_AXI_WREADY(M01_AXI_nsu_MAXI4_WREADY),
        .IF_NOC_AXI_WSTRB(M01_AXI_nsu_MAXI4_WSTRB),
        .IF_NOC_AXI_WVALID(M01_AXI_nsu_MAXI4_WVALID),
        .IF_NOC_NPP_IN_NOC_CREDIT_RDY(m01_axi_nsu_if_noc_npp_in_noc_credit_rdy),
        .IF_NOC_NPP_IN_NOC_CREDIT_RETURN(m01_axi_nsu_if_noc_npp_in_noc_credit_return),
        .IF_NOC_NPP_IN_NOC_FLIT(m01_axi_nsu_if_noc_npp_in_noc_flit),
        .IF_NOC_NPP_IN_NOC_VALID(m01_axi_nsu_if_noc_npp_in_noc_valid),
        .IF_NOC_NPP_OUT_NOC_CREDIT_RDY(m01_axi_nsu_if_noc_npp_out_noc_credit_rdy),
        .IF_NOC_NPP_OUT_NOC_CREDIT_RETURN(m01_axi_nsu_if_noc_npp_out_noc_credit_return),
        .IF_NOC_NPP_OUT_NOC_FLIT(m01_axi_nsu_if_noc_npp_out_noc_flit),
        .IF_NOC_NPP_OUT_NOC_VALID(m01_axi_nsu_if_noc_npp_out_noc_valid),
        .NSU(1'b0),
        .aclk(aclk0_1));
endmodule
