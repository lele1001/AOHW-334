//Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Command: generate_target bd_0ad1.bd
//Design : bd_0ad1
//Purpose: IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CORE_GENERATION_INFO = "bd_0ad1,IP_Integrator,{x_ipVendor=xilinx.com,x_ipLibrary=BlockDiagram,x_ipName=bd_0ad1,x_ipVersion=1.00.a,x_ipLanguage=VERILOG,numBlks=5,numReposBlks=5,numNonXlnxBlks=0,numHierBlks=0,maxHierDepth=0,numSysgenBlks=0,numHlsBlks=0,numHdlrefBlks=0,numPkgbdBlks=0,bdsource=SBD,synth_mode=Global}" *) (* HW_HANDOFF = "ulp_inst_0_axi_noc_kernel0_0.hwdef" *) 
module bd_0ad1
   (M00_INI_internoc,
    M01_INI_internoc,
    M02_INI_internoc);
  (* X_INTERFACE_INFO = "xilinx.com:interface:inimm:1.0 M00_INI INTERNOC" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME M00_INI, ADDR_WIDTH 64, COMPUTED_STRATEGY load, INI_STRATEGY load, MY_CATEGORY pl, NOC_ID -1, WRITE_BUFFER_SIZE 80" *) output [0:0]M00_INI_internoc;
  (* X_INTERFACE_INFO = "xilinx.com:interface:inimm:1.0 M01_INI INTERNOC" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME M01_INI, ADDR_WIDTH 64, COMPUTED_STRATEGY load, INI_STRATEGY load, MY_CATEGORY pl, NOC_ID -1, WRITE_BUFFER_SIZE 80" *) output [0:0]M01_INI_internoc;
  (* X_INTERFACE_INFO = "xilinx.com:interface:inimm:1.0 M02_INI INTERNOC" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME M02_INI, ADDR_WIDTH 64, COMPUTED_STRATEGY load, INI_STRATEGY load, MY_CATEGORY pl, NOC_ID -1, WRITE_BUFFER_SIZE 80" *) output [0:0]M02_INI_internoc;

  (* EXT_CONN = "TRUE" *) (* HIDDEN = "TRUE" *) (* SIM_ONLY = "TRUE" *) wire [0:0]m00_ini_stub_nmu_if_noc_axi_araddr;
  (* EXT_CONN = "TRUE" *) (* HIDDEN = "TRUE" *) (* SIM_ONLY = "TRUE" *) wire [1:0]m00_ini_stub_nmu_if_noc_axi_arburst;
  (* EXT_CONN = "TRUE" *) (* HIDDEN = "TRUE" *) (* SIM_ONLY = "TRUE" *) wire [3:0]m00_ini_stub_nmu_if_noc_axi_arcache;
  (* EXT_CONN = "TRUE" *) (* HIDDEN = "TRUE" *) (* SIM_ONLY = "TRUE" *) wire [7:0]m00_ini_stub_nmu_if_noc_axi_arlen;
  (* EXT_CONN = "TRUE" *) (* HIDDEN = "TRUE" *) (* SIM_ONLY = "TRUE" *) wire [0:0]m00_ini_stub_nmu_if_noc_axi_arlock;
  (* EXT_CONN = "TRUE" *) (* HIDDEN = "TRUE" *) (* SIM_ONLY = "TRUE" *) wire [2:0]m00_ini_stub_nmu_if_noc_axi_arprot;
  (* EXT_CONN = "TRUE" *) (* HIDDEN = "TRUE" *) (* SIM_ONLY = "TRUE" *) wire [3:0]m00_ini_stub_nmu_if_noc_axi_arqos;
  (* EXT_CONN = "TRUE" *) (* HIDDEN = "TRUE" *) (* SIM_ONLY = "TRUE" *) wire m00_ini_stub_nmu_if_noc_axi_arready;
  (* EXT_CONN = "TRUE" *) (* HIDDEN = "TRUE" *) (* SIM_ONLY = "TRUE" *) wire [3:0]m00_ini_stub_nmu_if_noc_axi_arregion;
  (* EXT_CONN = "TRUE" *) (* HIDDEN = "TRUE" *) (* SIM_ONLY = "TRUE" *) wire [2:0]m00_ini_stub_nmu_if_noc_axi_arsize;
  (* EXT_CONN = "TRUE" *) (* HIDDEN = "TRUE" *) (* SIM_ONLY = "TRUE" *) wire m00_ini_stub_nmu_if_noc_axi_arvalid;
  (* EXT_CONN = "TRUE" *) (* HIDDEN = "TRUE" *) (* SIM_ONLY = "TRUE" *) wire [0:0]m00_ini_stub_nmu_if_noc_axi_awaddr;
  (* EXT_CONN = "TRUE" *) (* HIDDEN = "TRUE" *) (* SIM_ONLY = "TRUE" *) wire [1:0]m00_ini_stub_nmu_if_noc_axi_awburst;
  (* EXT_CONN = "TRUE" *) (* HIDDEN = "TRUE" *) (* SIM_ONLY = "TRUE" *) wire [3:0]m00_ini_stub_nmu_if_noc_axi_awcache;
  (* EXT_CONN = "TRUE" *) (* HIDDEN = "TRUE" *) (* SIM_ONLY = "TRUE" *) wire [7:0]m00_ini_stub_nmu_if_noc_axi_awlen;
  (* EXT_CONN = "TRUE" *) (* HIDDEN = "TRUE" *) (* SIM_ONLY = "TRUE" *) wire [0:0]m00_ini_stub_nmu_if_noc_axi_awlock;
  (* EXT_CONN = "TRUE" *) (* HIDDEN = "TRUE" *) (* SIM_ONLY = "TRUE" *) wire [2:0]m00_ini_stub_nmu_if_noc_axi_awprot;
  (* EXT_CONN = "TRUE" *) (* HIDDEN = "TRUE" *) (* SIM_ONLY = "TRUE" *) wire [3:0]m00_ini_stub_nmu_if_noc_axi_awqos;
  (* EXT_CONN = "TRUE" *) (* HIDDEN = "TRUE" *) (* SIM_ONLY = "TRUE" *) wire m00_ini_stub_nmu_if_noc_axi_awready;
  (* EXT_CONN = "TRUE" *) (* HIDDEN = "TRUE" *) (* SIM_ONLY = "TRUE" *) wire [3:0]m00_ini_stub_nmu_if_noc_axi_awregion;
  (* EXT_CONN = "TRUE" *) (* HIDDEN = "TRUE" *) (* SIM_ONLY = "TRUE" *) wire [2:0]m00_ini_stub_nmu_if_noc_axi_awsize;
  (* EXT_CONN = "TRUE" *) (* HIDDEN = "TRUE" *) (* SIM_ONLY = "TRUE" *) wire m00_ini_stub_nmu_if_noc_axi_awvalid;
  (* EXT_CONN = "TRUE" *) (* HIDDEN = "TRUE" *) (* SIM_ONLY = "TRUE" *) wire m00_ini_stub_nmu_if_noc_axi_bready;
  (* EXT_CONN = "TRUE" *) (* HIDDEN = "TRUE" *) (* SIM_ONLY = "TRUE" *) wire [1:0]m00_ini_stub_nmu_if_noc_axi_bresp;
  (* EXT_CONN = "TRUE" *) (* HIDDEN = "TRUE" *) (* SIM_ONLY = "TRUE" *) wire m00_ini_stub_nmu_if_noc_axi_bvalid;
  (* EXT_CONN = "TRUE" *) (* HIDDEN = "TRUE" *) (* SIM_ONLY = "TRUE" *) wire [511:0]m00_ini_stub_nmu_if_noc_axi_rdata;
  (* EXT_CONN = "TRUE" *) (* HIDDEN = "TRUE" *) (* SIM_ONLY = "TRUE" *) wire [0:0]m00_ini_stub_nmu_if_noc_axi_rlast;
  (* EXT_CONN = "TRUE" *) (* HIDDEN = "TRUE" *) (* SIM_ONLY = "TRUE" *) wire m00_ini_stub_nmu_if_noc_axi_rready;
  (* EXT_CONN = "TRUE" *) (* HIDDEN = "TRUE" *) (* SIM_ONLY = "TRUE" *) wire [1:0]m00_ini_stub_nmu_if_noc_axi_rresp;
  (* EXT_CONN = "TRUE" *) (* HIDDEN = "TRUE" *) (* SIM_ONLY = "TRUE" *) wire m00_ini_stub_nmu_if_noc_axi_rvalid;
  (* EXT_CONN = "TRUE" *) (* HIDDEN = "TRUE" *) (* SIM_ONLY = "TRUE" *) wire [511:0]m00_ini_stub_nmu_if_noc_axi_wdata;
  (* EXT_CONN = "TRUE" *) (* HIDDEN = "TRUE" *) (* SIM_ONLY = "TRUE" *) wire [0:0]m00_ini_stub_nmu_if_noc_axi_wlast;
  (* EXT_CONN = "TRUE" *) (* HIDDEN = "TRUE" *) (* SIM_ONLY = "TRUE" *) wire m00_ini_stub_nmu_if_noc_axi_wready;
  (* EXT_CONN = "TRUE" *) (* HIDDEN = "TRUE" *) (* SIM_ONLY = "TRUE" *) wire [63:0]m00_ini_stub_nmu_if_noc_axi_wstrb;
  (* EXT_CONN = "TRUE" *) (* HIDDEN = "TRUE" *) (* SIM_ONLY = "TRUE" *) wire m00_ini_stub_nmu_if_noc_axi_wvalid;
  (* EXT_CONN = "TRUE" *) (* HIDDEN = "TRUE" *) (* SIM_ONLY = "TRUE" *) wire m00_ini_stub_nmu_if_noc_npp_in_noc_credit_rdy;
  (* EXT_CONN = "TRUE" *) (* HIDDEN = "TRUE" *) (* SIM_ONLY = "TRUE" *) wire [7:0]m00_ini_stub_nmu_if_noc_npp_in_noc_credit_return;
  (* EXT_CONN = "TRUE" *) (* HIDDEN = "TRUE" *) (* SIM_ONLY = "TRUE" *) wire [181:0]m00_ini_stub_nmu_if_noc_npp_in_noc_flit;
  (* EXT_CONN = "TRUE" *) (* HIDDEN = "TRUE" *) (* SIM_ONLY = "TRUE" *) wire [7:0]m00_ini_stub_nmu_if_noc_npp_in_noc_valid;
  (* EXT_CONN = "TRUE" *) (* HIDDEN = "TRUE" *) (* SIM_ONLY = "TRUE" *) wire m00_ini_stub_nmu_if_noc_npp_out_noc_credit_rdy;
  (* EXT_CONN = "TRUE" *) (* HIDDEN = "TRUE" *) (* SIM_ONLY = "TRUE" *) wire [7:0]m00_ini_stub_nmu_if_noc_npp_out_noc_credit_return;
  (* EXT_CONN = "TRUE" *) (* HIDDEN = "TRUE" *) (* SIM_ONLY = "TRUE" *) wire [181:0]m00_ini_stub_nmu_if_noc_npp_out_noc_flit;
  (* EXT_CONN = "TRUE" *) (* HIDDEN = "TRUE" *) (* SIM_ONLY = "TRUE" *) wire [7:0]m00_ini_stub_nmu_if_noc_npp_out_noc_valid;
  (* EXT_CONN = "TRUE" *) (* HIDDEN = "TRUE" *) (* SIM_ONLY = "TRUE" *) wire [0:0]m01_ini_stub_nmu_if_noc_axi_araddr;
  (* EXT_CONN = "TRUE" *) (* HIDDEN = "TRUE" *) (* SIM_ONLY = "TRUE" *) wire [1:0]m01_ini_stub_nmu_if_noc_axi_arburst;
  (* EXT_CONN = "TRUE" *) (* HIDDEN = "TRUE" *) (* SIM_ONLY = "TRUE" *) wire [3:0]m01_ini_stub_nmu_if_noc_axi_arcache;
  (* EXT_CONN = "TRUE" *) (* HIDDEN = "TRUE" *) (* SIM_ONLY = "TRUE" *) wire [7:0]m01_ini_stub_nmu_if_noc_axi_arlen;
  (* EXT_CONN = "TRUE" *) (* HIDDEN = "TRUE" *) (* SIM_ONLY = "TRUE" *) wire [0:0]m01_ini_stub_nmu_if_noc_axi_arlock;
  (* EXT_CONN = "TRUE" *) (* HIDDEN = "TRUE" *) (* SIM_ONLY = "TRUE" *) wire [2:0]m01_ini_stub_nmu_if_noc_axi_arprot;
  (* EXT_CONN = "TRUE" *) (* HIDDEN = "TRUE" *) (* SIM_ONLY = "TRUE" *) wire [3:0]m01_ini_stub_nmu_if_noc_axi_arqos;
  (* EXT_CONN = "TRUE" *) (* HIDDEN = "TRUE" *) (* SIM_ONLY = "TRUE" *) wire m01_ini_stub_nmu_if_noc_axi_arready;
  (* EXT_CONN = "TRUE" *) (* HIDDEN = "TRUE" *) (* SIM_ONLY = "TRUE" *) wire [3:0]m01_ini_stub_nmu_if_noc_axi_arregion;
  (* EXT_CONN = "TRUE" *) (* HIDDEN = "TRUE" *) (* SIM_ONLY = "TRUE" *) wire [2:0]m01_ini_stub_nmu_if_noc_axi_arsize;
  (* EXT_CONN = "TRUE" *) (* HIDDEN = "TRUE" *) (* SIM_ONLY = "TRUE" *) wire m01_ini_stub_nmu_if_noc_axi_arvalid;
  (* EXT_CONN = "TRUE" *) (* HIDDEN = "TRUE" *) (* SIM_ONLY = "TRUE" *) wire [0:0]m01_ini_stub_nmu_if_noc_axi_awaddr;
  (* EXT_CONN = "TRUE" *) (* HIDDEN = "TRUE" *) (* SIM_ONLY = "TRUE" *) wire [1:0]m01_ini_stub_nmu_if_noc_axi_awburst;
  (* EXT_CONN = "TRUE" *) (* HIDDEN = "TRUE" *) (* SIM_ONLY = "TRUE" *) wire [3:0]m01_ini_stub_nmu_if_noc_axi_awcache;
  (* EXT_CONN = "TRUE" *) (* HIDDEN = "TRUE" *) (* SIM_ONLY = "TRUE" *) wire [7:0]m01_ini_stub_nmu_if_noc_axi_awlen;
  (* EXT_CONN = "TRUE" *) (* HIDDEN = "TRUE" *) (* SIM_ONLY = "TRUE" *) wire [0:0]m01_ini_stub_nmu_if_noc_axi_awlock;
  (* EXT_CONN = "TRUE" *) (* HIDDEN = "TRUE" *) (* SIM_ONLY = "TRUE" *) wire [2:0]m01_ini_stub_nmu_if_noc_axi_awprot;
  (* EXT_CONN = "TRUE" *) (* HIDDEN = "TRUE" *) (* SIM_ONLY = "TRUE" *) wire [3:0]m01_ini_stub_nmu_if_noc_axi_awqos;
  (* EXT_CONN = "TRUE" *) (* HIDDEN = "TRUE" *) (* SIM_ONLY = "TRUE" *) wire m01_ini_stub_nmu_if_noc_axi_awready;
  (* EXT_CONN = "TRUE" *) (* HIDDEN = "TRUE" *) (* SIM_ONLY = "TRUE" *) wire [3:0]m01_ini_stub_nmu_if_noc_axi_awregion;
  (* EXT_CONN = "TRUE" *) (* HIDDEN = "TRUE" *) (* SIM_ONLY = "TRUE" *) wire [2:0]m01_ini_stub_nmu_if_noc_axi_awsize;
  (* EXT_CONN = "TRUE" *) (* HIDDEN = "TRUE" *) (* SIM_ONLY = "TRUE" *) wire m01_ini_stub_nmu_if_noc_axi_awvalid;
  (* EXT_CONN = "TRUE" *) (* HIDDEN = "TRUE" *) (* SIM_ONLY = "TRUE" *) wire m01_ini_stub_nmu_if_noc_axi_bready;
  (* EXT_CONN = "TRUE" *) (* HIDDEN = "TRUE" *) (* SIM_ONLY = "TRUE" *) wire [1:0]m01_ini_stub_nmu_if_noc_axi_bresp;
  (* EXT_CONN = "TRUE" *) (* HIDDEN = "TRUE" *) (* SIM_ONLY = "TRUE" *) wire m01_ini_stub_nmu_if_noc_axi_bvalid;
  (* EXT_CONN = "TRUE" *) (* HIDDEN = "TRUE" *) (* SIM_ONLY = "TRUE" *) wire [511:0]m01_ini_stub_nmu_if_noc_axi_rdata;
  (* EXT_CONN = "TRUE" *) (* HIDDEN = "TRUE" *) (* SIM_ONLY = "TRUE" *) wire [0:0]m01_ini_stub_nmu_if_noc_axi_rlast;
  (* EXT_CONN = "TRUE" *) (* HIDDEN = "TRUE" *) (* SIM_ONLY = "TRUE" *) wire m01_ini_stub_nmu_if_noc_axi_rready;
  (* EXT_CONN = "TRUE" *) (* HIDDEN = "TRUE" *) (* SIM_ONLY = "TRUE" *) wire [1:0]m01_ini_stub_nmu_if_noc_axi_rresp;
  (* EXT_CONN = "TRUE" *) (* HIDDEN = "TRUE" *) (* SIM_ONLY = "TRUE" *) wire m01_ini_stub_nmu_if_noc_axi_rvalid;
  (* EXT_CONN = "TRUE" *) (* HIDDEN = "TRUE" *) (* SIM_ONLY = "TRUE" *) wire [511:0]m01_ini_stub_nmu_if_noc_axi_wdata;
  (* EXT_CONN = "TRUE" *) (* HIDDEN = "TRUE" *) (* SIM_ONLY = "TRUE" *) wire [0:0]m01_ini_stub_nmu_if_noc_axi_wlast;
  (* EXT_CONN = "TRUE" *) (* HIDDEN = "TRUE" *) (* SIM_ONLY = "TRUE" *) wire m01_ini_stub_nmu_if_noc_axi_wready;
  (* EXT_CONN = "TRUE" *) (* HIDDEN = "TRUE" *) (* SIM_ONLY = "TRUE" *) wire [63:0]m01_ini_stub_nmu_if_noc_axi_wstrb;
  (* EXT_CONN = "TRUE" *) (* HIDDEN = "TRUE" *) (* SIM_ONLY = "TRUE" *) wire m01_ini_stub_nmu_if_noc_axi_wvalid;
  (* EXT_CONN = "TRUE" *) (* HIDDEN = "TRUE" *) (* SIM_ONLY = "TRUE" *) wire m01_ini_stub_nmu_if_noc_npp_in_noc_credit_rdy;
  (* EXT_CONN = "TRUE" *) (* HIDDEN = "TRUE" *) (* SIM_ONLY = "TRUE" *) wire [7:0]m01_ini_stub_nmu_if_noc_npp_in_noc_credit_return;
  (* EXT_CONN = "TRUE" *) (* HIDDEN = "TRUE" *) (* SIM_ONLY = "TRUE" *) wire [181:0]m01_ini_stub_nmu_if_noc_npp_in_noc_flit;
  (* EXT_CONN = "TRUE" *) (* HIDDEN = "TRUE" *) (* SIM_ONLY = "TRUE" *) wire [7:0]m01_ini_stub_nmu_if_noc_npp_in_noc_valid;
  (* EXT_CONN = "TRUE" *) (* HIDDEN = "TRUE" *) (* SIM_ONLY = "TRUE" *) wire m01_ini_stub_nmu_if_noc_npp_out_noc_credit_rdy;
  (* EXT_CONN = "TRUE" *) (* HIDDEN = "TRUE" *) (* SIM_ONLY = "TRUE" *) wire [7:0]m01_ini_stub_nmu_if_noc_npp_out_noc_credit_return;
  (* EXT_CONN = "TRUE" *) (* HIDDEN = "TRUE" *) (* SIM_ONLY = "TRUE" *) wire [181:0]m01_ini_stub_nmu_if_noc_npp_out_noc_flit;
  (* EXT_CONN = "TRUE" *) (* HIDDEN = "TRUE" *) (* SIM_ONLY = "TRUE" *) wire [7:0]m01_ini_stub_nmu_if_noc_npp_out_noc_valid;
  (* EXT_CONN = "TRUE" *) (* HIDDEN = "TRUE" *) (* SIM_ONLY = "TRUE" *) wire [0:0]m02_ini_stub_nmu_if_noc_axi_araddr;
  (* EXT_CONN = "TRUE" *) (* HIDDEN = "TRUE" *) (* SIM_ONLY = "TRUE" *) wire [1:0]m02_ini_stub_nmu_if_noc_axi_arburst;
  (* EXT_CONN = "TRUE" *) (* HIDDEN = "TRUE" *) (* SIM_ONLY = "TRUE" *) wire [3:0]m02_ini_stub_nmu_if_noc_axi_arcache;
  (* EXT_CONN = "TRUE" *) (* HIDDEN = "TRUE" *) (* SIM_ONLY = "TRUE" *) wire [7:0]m02_ini_stub_nmu_if_noc_axi_arlen;
  (* EXT_CONN = "TRUE" *) (* HIDDEN = "TRUE" *) (* SIM_ONLY = "TRUE" *) wire [0:0]m02_ini_stub_nmu_if_noc_axi_arlock;
  (* EXT_CONN = "TRUE" *) (* HIDDEN = "TRUE" *) (* SIM_ONLY = "TRUE" *) wire [2:0]m02_ini_stub_nmu_if_noc_axi_arprot;
  (* EXT_CONN = "TRUE" *) (* HIDDEN = "TRUE" *) (* SIM_ONLY = "TRUE" *) wire [3:0]m02_ini_stub_nmu_if_noc_axi_arqos;
  (* EXT_CONN = "TRUE" *) (* HIDDEN = "TRUE" *) (* SIM_ONLY = "TRUE" *) wire m02_ini_stub_nmu_if_noc_axi_arready;
  (* EXT_CONN = "TRUE" *) (* HIDDEN = "TRUE" *) (* SIM_ONLY = "TRUE" *) wire [3:0]m02_ini_stub_nmu_if_noc_axi_arregion;
  (* EXT_CONN = "TRUE" *) (* HIDDEN = "TRUE" *) (* SIM_ONLY = "TRUE" *) wire [2:0]m02_ini_stub_nmu_if_noc_axi_arsize;
  (* EXT_CONN = "TRUE" *) (* HIDDEN = "TRUE" *) (* SIM_ONLY = "TRUE" *) wire m02_ini_stub_nmu_if_noc_axi_arvalid;
  (* EXT_CONN = "TRUE" *) (* HIDDEN = "TRUE" *) (* SIM_ONLY = "TRUE" *) wire [0:0]m02_ini_stub_nmu_if_noc_axi_awaddr;
  (* EXT_CONN = "TRUE" *) (* HIDDEN = "TRUE" *) (* SIM_ONLY = "TRUE" *) wire [1:0]m02_ini_stub_nmu_if_noc_axi_awburst;
  (* EXT_CONN = "TRUE" *) (* HIDDEN = "TRUE" *) (* SIM_ONLY = "TRUE" *) wire [3:0]m02_ini_stub_nmu_if_noc_axi_awcache;
  (* EXT_CONN = "TRUE" *) (* HIDDEN = "TRUE" *) (* SIM_ONLY = "TRUE" *) wire [7:0]m02_ini_stub_nmu_if_noc_axi_awlen;
  (* EXT_CONN = "TRUE" *) (* HIDDEN = "TRUE" *) (* SIM_ONLY = "TRUE" *) wire [0:0]m02_ini_stub_nmu_if_noc_axi_awlock;
  (* EXT_CONN = "TRUE" *) (* HIDDEN = "TRUE" *) (* SIM_ONLY = "TRUE" *) wire [2:0]m02_ini_stub_nmu_if_noc_axi_awprot;
  (* EXT_CONN = "TRUE" *) (* HIDDEN = "TRUE" *) (* SIM_ONLY = "TRUE" *) wire [3:0]m02_ini_stub_nmu_if_noc_axi_awqos;
  (* EXT_CONN = "TRUE" *) (* HIDDEN = "TRUE" *) (* SIM_ONLY = "TRUE" *) wire m02_ini_stub_nmu_if_noc_axi_awready;
  (* EXT_CONN = "TRUE" *) (* HIDDEN = "TRUE" *) (* SIM_ONLY = "TRUE" *) wire [3:0]m02_ini_stub_nmu_if_noc_axi_awregion;
  (* EXT_CONN = "TRUE" *) (* HIDDEN = "TRUE" *) (* SIM_ONLY = "TRUE" *) wire [2:0]m02_ini_stub_nmu_if_noc_axi_awsize;
  (* EXT_CONN = "TRUE" *) (* HIDDEN = "TRUE" *) (* SIM_ONLY = "TRUE" *) wire m02_ini_stub_nmu_if_noc_axi_awvalid;
  (* EXT_CONN = "TRUE" *) (* HIDDEN = "TRUE" *) (* SIM_ONLY = "TRUE" *) wire m02_ini_stub_nmu_if_noc_axi_bready;
  (* EXT_CONN = "TRUE" *) (* HIDDEN = "TRUE" *) (* SIM_ONLY = "TRUE" *) wire [1:0]m02_ini_stub_nmu_if_noc_axi_bresp;
  (* EXT_CONN = "TRUE" *) (* HIDDEN = "TRUE" *) (* SIM_ONLY = "TRUE" *) wire m02_ini_stub_nmu_if_noc_axi_bvalid;
  (* EXT_CONN = "TRUE" *) (* HIDDEN = "TRUE" *) (* SIM_ONLY = "TRUE" *) wire [511:0]m02_ini_stub_nmu_if_noc_axi_rdata;
  (* EXT_CONN = "TRUE" *) (* HIDDEN = "TRUE" *) (* SIM_ONLY = "TRUE" *) wire [0:0]m02_ini_stub_nmu_if_noc_axi_rlast;
  (* EXT_CONN = "TRUE" *) (* HIDDEN = "TRUE" *) (* SIM_ONLY = "TRUE" *) wire m02_ini_stub_nmu_if_noc_axi_rready;
  (* EXT_CONN = "TRUE" *) (* HIDDEN = "TRUE" *) (* SIM_ONLY = "TRUE" *) wire [1:0]m02_ini_stub_nmu_if_noc_axi_rresp;
  (* EXT_CONN = "TRUE" *) (* HIDDEN = "TRUE" *) (* SIM_ONLY = "TRUE" *) wire m02_ini_stub_nmu_if_noc_axi_rvalid;
  (* EXT_CONN = "TRUE" *) (* HIDDEN = "TRUE" *) (* SIM_ONLY = "TRUE" *) wire [511:0]m02_ini_stub_nmu_if_noc_axi_wdata;
  (* EXT_CONN = "TRUE" *) (* HIDDEN = "TRUE" *) (* SIM_ONLY = "TRUE" *) wire [0:0]m02_ini_stub_nmu_if_noc_axi_wlast;
  (* EXT_CONN = "TRUE" *) (* HIDDEN = "TRUE" *) (* SIM_ONLY = "TRUE" *) wire m02_ini_stub_nmu_if_noc_axi_wready;
  (* EXT_CONN = "TRUE" *) (* HIDDEN = "TRUE" *) (* SIM_ONLY = "TRUE" *) wire [63:0]m02_ini_stub_nmu_if_noc_axi_wstrb;
  (* EXT_CONN = "TRUE" *) (* HIDDEN = "TRUE" *) (* SIM_ONLY = "TRUE" *) wire m02_ini_stub_nmu_if_noc_axi_wvalid;
  (* EXT_CONN = "TRUE" *) (* HIDDEN = "TRUE" *) (* SIM_ONLY = "TRUE" *) wire m02_ini_stub_nmu_if_noc_npp_in_noc_credit_rdy;
  (* EXT_CONN = "TRUE" *) (* HIDDEN = "TRUE" *) (* SIM_ONLY = "TRUE" *) wire [7:0]m02_ini_stub_nmu_if_noc_npp_in_noc_credit_return;
  (* EXT_CONN = "TRUE" *) (* HIDDEN = "TRUE" *) (* SIM_ONLY = "TRUE" *) wire [181:0]m02_ini_stub_nmu_if_noc_npp_in_noc_flit;
  (* EXT_CONN = "TRUE" *) (* HIDDEN = "TRUE" *) (* SIM_ONLY = "TRUE" *) wire [7:0]m02_ini_stub_nmu_if_noc_npp_in_noc_valid;
  (* EXT_CONN = "TRUE" *) (* HIDDEN = "TRUE" *) (* SIM_ONLY = "TRUE" *) wire m02_ini_stub_nmu_if_noc_npp_out_noc_credit_rdy;
  (* EXT_CONN = "TRUE" *) (* HIDDEN = "TRUE" *) (* SIM_ONLY = "TRUE" *) wire [7:0]m02_ini_stub_nmu_if_noc_npp_out_noc_credit_return;
  (* EXT_CONN = "TRUE" *) (* HIDDEN = "TRUE" *) (* SIM_ONLY = "TRUE" *) wire [181:0]m02_ini_stub_nmu_if_noc_npp_out_noc_flit;
  (* EXT_CONN = "TRUE" *) (* HIDDEN = "TRUE" *) (* SIM_ONLY = "TRUE" *) wire [7:0]m02_ini_stub_nmu_if_noc_npp_out_noc_valid;
  wire [0:0]stub_clock_dout;

  (* DONT_TOUCH *) 
  bd_0ad1_M00_INI_stub_nmu_0 M00_INI_stub_nmu
       (.IF_NOC_AXI_ARADDR(m00_ini_stub_nmu_if_noc_axi_araddr),
        .IF_NOC_AXI_ARBURST(m00_ini_stub_nmu_if_noc_axi_arburst),
        .IF_NOC_AXI_ARCACHE(m00_ini_stub_nmu_if_noc_axi_arcache),
        .IF_NOC_AXI_ARLEN(m00_ini_stub_nmu_if_noc_axi_arlen),
        .IF_NOC_AXI_ARLOCK(m00_ini_stub_nmu_if_noc_axi_arlock),
        .IF_NOC_AXI_ARPROT(m00_ini_stub_nmu_if_noc_axi_arprot),
        .IF_NOC_AXI_ARQOS(m00_ini_stub_nmu_if_noc_axi_arqos),
        .IF_NOC_AXI_ARREADY(m00_ini_stub_nmu_if_noc_axi_arready),
        .IF_NOC_AXI_ARREGION(m00_ini_stub_nmu_if_noc_axi_arregion),
        .IF_NOC_AXI_ARSIZE(m00_ini_stub_nmu_if_noc_axi_arsize),
        .IF_NOC_AXI_ARVALID(m00_ini_stub_nmu_if_noc_axi_arvalid),
        .IF_NOC_AXI_AWADDR(m00_ini_stub_nmu_if_noc_axi_awaddr),
        .IF_NOC_AXI_AWBURST(m00_ini_stub_nmu_if_noc_axi_awburst),
        .IF_NOC_AXI_AWCACHE(m00_ini_stub_nmu_if_noc_axi_awcache),
        .IF_NOC_AXI_AWLEN(m00_ini_stub_nmu_if_noc_axi_awlen),
        .IF_NOC_AXI_AWLOCK(m00_ini_stub_nmu_if_noc_axi_awlock),
        .IF_NOC_AXI_AWPROT(m00_ini_stub_nmu_if_noc_axi_awprot),
        .IF_NOC_AXI_AWQOS(m00_ini_stub_nmu_if_noc_axi_awqos),
        .IF_NOC_AXI_AWREADY(m00_ini_stub_nmu_if_noc_axi_awready),
        .IF_NOC_AXI_AWREGION(m00_ini_stub_nmu_if_noc_axi_awregion),
        .IF_NOC_AXI_AWSIZE(m00_ini_stub_nmu_if_noc_axi_awsize),
        .IF_NOC_AXI_AWVALID(m00_ini_stub_nmu_if_noc_axi_awvalid),
        .IF_NOC_AXI_BREADY(m00_ini_stub_nmu_if_noc_axi_bready),
        .IF_NOC_AXI_BRESP(m00_ini_stub_nmu_if_noc_axi_bresp),
        .IF_NOC_AXI_BVALID(m00_ini_stub_nmu_if_noc_axi_bvalid),
        .IF_NOC_AXI_RDATA(m00_ini_stub_nmu_if_noc_axi_rdata),
        .IF_NOC_AXI_RLAST(m00_ini_stub_nmu_if_noc_axi_rlast),
        .IF_NOC_AXI_RREADY(m00_ini_stub_nmu_if_noc_axi_rready),
        .IF_NOC_AXI_RRESP(m00_ini_stub_nmu_if_noc_axi_rresp),
        .IF_NOC_AXI_RVALID(m00_ini_stub_nmu_if_noc_axi_rvalid),
        .IF_NOC_AXI_WDATA(m00_ini_stub_nmu_if_noc_axi_wdata),
        .IF_NOC_AXI_WLAST(m00_ini_stub_nmu_if_noc_axi_wlast),
        .IF_NOC_AXI_WREADY(m00_ini_stub_nmu_if_noc_axi_wready),
        .IF_NOC_AXI_WSTRB(m00_ini_stub_nmu_if_noc_axi_wstrb),
        .IF_NOC_AXI_WVALID(m00_ini_stub_nmu_if_noc_axi_wvalid),
        .IF_NOC_NPP_IN_NOC_CREDIT_RDY(m00_ini_stub_nmu_if_noc_npp_in_noc_credit_rdy),
        .IF_NOC_NPP_IN_NOC_CREDIT_RETURN(m00_ini_stub_nmu_if_noc_npp_in_noc_credit_return),
        .IF_NOC_NPP_IN_NOC_FLIT(m00_ini_stub_nmu_if_noc_npp_in_noc_flit),
        .IF_NOC_NPP_IN_NOC_VALID(m00_ini_stub_nmu_if_noc_npp_in_noc_valid),
        .IF_NOC_NPP_OUT_NOC_CREDIT_RDY(m00_ini_stub_nmu_if_noc_npp_out_noc_credit_rdy),
        .IF_NOC_NPP_OUT_NOC_CREDIT_RETURN(m00_ini_stub_nmu_if_noc_npp_out_noc_credit_return),
        .IF_NOC_NPP_OUT_NOC_FLIT(m00_ini_stub_nmu_if_noc_npp_out_noc_flit),
        .IF_NOC_NPP_OUT_NOC_VALID(m00_ini_stub_nmu_if_noc_npp_out_noc_valid),
        .NMU_RD_DEST_MODE(1'b0),
        .NMU_RD_USR_DST({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .NMU_WR_DEST_MODE(1'b0),
        .NMU_WR_USR_DST({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .aclk(stub_clock_dout));
  (* DONT_TOUCH *) 
  bd_0ad1_M01_INI_stub_nmu_0 M01_INI_stub_nmu
       (.IF_NOC_AXI_ARADDR(m01_ini_stub_nmu_if_noc_axi_araddr),
        .IF_NOC_AXI_ARBURST(m01_ini_stub_nmu_if_noc_axi_arburst),
        .IF_NOC_AXI_ARCACHE(m01_ini_stub_nmu_if_noc_axi_arcache),
        .IF_NOC_AXI_ARLEN(m01_ini_stub_nmu_if_noc_axi_arlen),
        .IF_NOC_AXI_ARLOCK(m01_ini_stub_nmu_if_noc_axi_arlock),
        .IF_NOC_AXI_ARPROT(m01_ini_stub_nmu_if_noc_axi_arprot),
        .IF_NOC_AXI_ARQOS(m01_ini_stub_nmu_if_noc_axi_arqos),
        .IF_NOC_AXI_ARREADY(m01_ini_stub_nmu_if_noc_axi_arready),
        .IF_NOC_AXI_ARREGION(m01_ini_stub_nmu_if_noc_axi_arregion),
        .IF_NOC_AXI_ARSIZE(m01_ini_stub_nmu_if_noc_axi_arsize),
        .IF_NOC_AXI_ARVALID(m01_ini_stub_nmu_if_noc_axi_arvalid),
        .IF_NOC_AXI_AWADDR(m01_ini_stub_nmu_if_noc_axi_awaddr),
        .IF_NOC_AXI_AWBURST(m01_ini_stub_nmu_if_noc_axi_awburst),
        .IF_NOC_AXI_AWCACHE(m01_ini_stub_nmu_if_noc_axi_awcache),
        .IF_NOC_AXI_AWLEN(m01_ini_stub_nmu_if_noc_axi_awlen),
        .IF_NOC_AXI_AWLOCK(m01_ini_stub_nmu_if_noc_axi_awlock),
        .IF_NOC_AXI_AWPROT(m01_ini_stub_nmu_if_noc_axi_awprot),
        .IF_NOC_AXI_AWQOS(m01_ini_stub_nmu_if_noc_axi_awqos),
        .IF_NOC_AXI_AWREADY(m01_ini_stub_nmu_if_noc_axi_awready),
        .IF_NOC_AXI_AWREGION(m01_ini_stub_nmu_if_noc_axi_awregion),
        .IF_NOC_AXI_AWSIZE(m01_ini_stub_nmu_if_noc_axi_awsize),
        .IF_NOC_AXI_AWVALID(m01_ini_stub_nmu_if_noc_axi_awvalid),
        .IF_NOC_AXI_BREADY(m01_ini_stub_nmu_if_noc_axi_bready),
        .IF_NOC_AXI_BRESP(m01_ini_stub_nmu_if_noc_axi_bresp),
        .IF_NOC_AXI_BVALID(m01_ini_stub_nmu_if_noc_axi_bvalid),
        .IF_NOC_AXI_RDATA(m01_ini_stub_nmu_if_noc_axi_rdata),
        .IF_NOC_AXI_RLAST(m01_ini_stub_nmu_if_noc_axi_rlast),
        .IF_NOC_AXI_RREADY(m01_ini_stub_nmu_if_noc_axi_rready),
        .IF_NOC_AXI_RRESP(m01_ini_stub_nmu_if_noc_axi_rresp),
        .IF_NOC_AXI_RVALID(m01_ini_stub_nmu_if_noc_axi_rvalid),
        .IF_NOC_AXI_WDATA(m01_ini_stub_nmu_if_noc_axi_wdata),
        .IF_NOC_AXI_WLAST(m01_ini_stub_nmu_if_noc_axi_wlast),
        .IF_NOC_AXI_WREADY(m01_ini_stub_nmu_if_noc_axi_wready),
        .IF_NOC_AXI_WSTRB(m01_ini_stub_nmu_if_noc_axi_wstrb),
        .IF_NOC_AXI_WVALID(m01_ini_stub_nmu_if_noc_axi_wvalid),
        .IF_NOC_NPP_IN_NOC_CREDIT_RDY(m01_ini_stub_nmu_if_noc_npp_in_noc_credit_rdy),
        .IF_NOC_NPP_IN_NOC_CREDIT_RETURN(m01_ini_stub_nmu_if_noc_npp_in_noc_credit_return),
        .IF_NOC_NPP_IN_NOC_FLIT(m01_ini_stub_nmu_if_noc_npp_in_noc_flit),
        .IF_NOC_NPP_IN_NOC_VALID(m01_ini_stub_nmu_if_noc_npp_in_noc_valid),
        .IF_NOC_NPP_OUT_NOC_CREDIT_RDY(m01_ini_stub_nmu_if_noc_npp_out_noc_credit_rdy),
        .IF_NOC_NPP_OUT_NOC_CREDIT_RETURN(m01_ini_stub_nmu_if_noc_npp_out_noc_credit_return),
        .IF_NOC_NPP_OUT_NOC_FLIT(m01_ini_stub_nmu_if_noc_npp_out_noc_flit),
        .IF_NOC_NPP_OUT_NOC_VALID(m01_ini_stub_nmu_if_noc_npp_out_noc_valid),
        .NMU_RD_DEST_MODE(1'b0),
        .NMU_RD_USR_DST({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .NMU_WR_DEST_MODE(1'b0),
        .NMU_WR_USR_DST({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .aclk(stub_clock_dout));
  (* DONT_TOUCH *) 
  bd_0ad1_M02_INI_stub_nmu_0 M02_INI_stub_nmu
       (.IF_NOC_AXI_ARADDR(m02_ini_stub_nmu_if_noc_axi_araddr),
        .IF_NOC_AXI_ARBURST(m02_ini_stub_nmu_if_noc_axi_arburst),
        .IF_NOC_AXI_ARCACHE(m02_ini_stub_nmu_if_noc_axi_arcache),
        .IF_NOC_AXI_ARLEN(m02_ini_stub_nmu_if_noc_axi_arlen),
        .IF_NOC_AXI_ARLOCK(m02_ini_stub_nmu_if_noc_axi_arlock),
        .IF_NOC_AXI_ARPROT(m02_ini_stub_nmu_if_noc_axi_arprot),
        .IF_NOC_AXI_ARQOS(m02_ini_stub_nmu_if_noc_axi_arqos),
        .IF_NOC_AXI_ARREADY(m02_ini_stub_nmu_if_noc_axi_arready),
        .IF_NOC_AXI_ARREGION(m02_ini_stub_nmu_if_noc_axi_arregion),
        .IF_NOC_AXI_ARSIZE(m02_ini_stub_nmu_if_noc_axi_arsize),
        .IF_NOC_AXI_ARVALID(m02_ini_stub_nmu_if_noc_axi_arvalid),
        .IF_NOC_AXI_AWADDR(m02_ini_stub_nmu_if_noc_axi_awaddr),
        .IF_NOC_AXI_AWBURST(m02_ini_stub_nmu_if_noc_axi_awburst),
        .IF_NOC_AXI_AWCACHE(m02_ini_stub_nmu_if_noc_axi_awcache),
        .IF_NOC_AXI_AWLEN(m02_ini_stub_nmu_if_noc_axi_awlen),
        .IF_NOC_AXI_AWLOCK(m02_ini_stub_nmu_if_noc_axi_awlock),
        .IF_NOC_AXI_AWPROT(m02_ini_stub_nmu_if_noc_axi_awprot),
        .IF_NOC_AXI_AWQOS(m02_ini_stub_nmu_if_noc_axi_awqos),
        .IF_NOC_AXI_AWREADY(m02_ini_stub_nmu_if_noc_axi_awready),
        .IF_NOC_AXI_AWREGION(m02_ini_stub_nmu_if_noc_axi_awregion),
        .IF_NOC_AXI_AWSIZE(m02_ini_stub_nmu_if_noc_axi_awsize),
        .IF_NOC_AXI_AWVALID(m02_ini_stub_nmu_if_noc_axi_awvalid),
        .IF_NOC_AXI_BREADY(m02_ini_stub_nmu_if_noc_axi_bready),
        .IF_NOC_AXI_BRESP(m02_ini_stub_nmu_if_noc_axi_bresp),
        .IF_NOC_AXI_BVALID(m02_ini_stub_nmu_if_noc_axi_bvalid),
        .IF_NOC_AXI_RDATA(m02_ini_stub_nmu_if_noc_axi_rdata),
        .IF_NOC_AXI_RLAST(m02_ini_stub_nmu_if_noc_axi_rlast),
        .IF_NOC_AXI_RREADY(m02_ini_stub_nmu_if_noc_axi_rready),
        .IF_NOC_AXI_RRESP(m02_ini_stub_nmu_if_noc_axi_rresp),
        .IF_NOC_AXI_RVALID(m02_ini_stub_nmu_if_noc_axi_rvalid),
        .IF_NOC_AXI_WDATA(m02_ini_stub_nmu_if_noc_axi_wdata),
        .IF_NOC_AXI_WLAST(m02_ini_stub_nmu_if_noc_axi_wlast),
        .IF_NOC_AXI_WREADY(m02_ini_stub_nmu_if_noc_axi_wready),
        .IF_NOC_AXI_WSTRB(m02_ini_stub_nmu_if_noc_axi_wstrb),
        .IF_NOC_AXI_WVALID(m02_ini_stub_nmu_if_noc_axi_wvalid),
        .IF_NOC_NPP_IN_NOC_CREDIT_RDY(m02_ini_stub_nmu_if_noc_npp_in_noc_credit_rdy),
        .IF_NOC_NPP_IN_NOC_CREDIT_RETURN(m02_ini_stub_nmu_if_noc_npp_in_noc_credit_return),
        .IF_NOC_NPP_IN_NOC_FLIT(m02_ini_stub_nmu_if_noc_npp_in_noc_flit),
        .IF_NOC_NPP_IN_NOC_VALID(m02_ini_stub_nmu_if_noc_npp_in_noc_valid),
        .IF_NOC_NPP_OUT_NOC_CREDIT_RDY(m02_ini_stub_nmu_if_noc_npp_out_noc_credit_rdy),
        .IF_NOC_NPP_OUT_NOC_CREDIT_RETURN(m02_ini_stub_nmu_if_noc_npp_out_noc_credit_return),
        .IF_NOC_NPP_OUT_NOC_FLIT(m02_ini_stub_nmu_if_noc_npp_out_noc_flit),
        .IF_NOC_NPP_OUT_NOC_VALID(m02_ini_stub_nmu_if_noc_npp_out_noc_valid),
        .NMU_RD_DEST_MODE(1'b0),
        .NMU_RD_USR_DST({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .NMU_WR_DEST_MODE(1'b0),
        .NMU_WR_USR_DST({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .aclk(stub_clock_dout));
  (* DONT_TOUCH *) 
  bd_0ad1_no_black_box_0 no_black_box
       ();
  (* DONT_TOUCH *) 
  bd_0ad1_stub_clock_0 stub_clock
       (.dout(stub_clock_dout));
endmodule
