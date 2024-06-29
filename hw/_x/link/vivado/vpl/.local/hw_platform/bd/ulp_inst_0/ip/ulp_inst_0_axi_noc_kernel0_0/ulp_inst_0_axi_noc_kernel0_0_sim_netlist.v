// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2022.2 (lin64) Build 3671981 Fri Oct 14 04:59:54 MDT 2022
// Date        : Mon Dec  5 00:25:04 2022
// Host        : xsjdcslab02.xilinx.com running 64-bit CentOS Linux release 8.1.1911 (Core)
// Command     : write_verilog -force -mode funcsim
//               /proj/ipeng-nobkup/ccase/platforms/p4/Platforms_ccase_vck5000_dev0/Platforms/sources/vck5000/chassis/gen4x8_qdma/2/build_1205a_dbg_hub_fw_flop/hardware/xilinx_vck5000_gen4x8_qdma_base_2/xilinx_vck5000_gen4x8_qdma_base_2.gen/sources_1/bd/top/bd/ulp_inst_0/ip/ulp_inst_0_axi_noc_kernel0_0/ulp_inst_0_axi_noc_kernel0_0_sim_netlist.v
// Design      : ulp_inst_0_axi_noc_kernel0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xcvc1902-vsvd1760-2MP-e-S
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "ulp_inst_0_axi_noc_kernel0_0,bd_0ad1,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* X_CORE_INFO = "bd_0ad1,Vivado 2022.2" *) 
(* NotValidForBitStream *)
module ulp_inst_0_axi_noc_kernel0_0
   (M00_INI_internoc,
    M01_INI_internoc,
    M02_INI_internoc);
  (* X_INTERFACE_INFO = "xilinx.com:interface:inimm:1.0 M00_INI INTERNOC" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME M00_INI, ADDR_WIDTH 64, INI_STRATEGY load, COMPUTED_STRATEGY load, WRITE_BUFFER_SIZE 80, NOC_ID -1, MY_CATEGORY pl" *) output [0:0]M00_INI_internoc;
  (* X_INTERFACE_INFO = "xilinx.com:interface:inimm:1.0 M01_INI INTERNOC" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME M01_INI, ADDR_WIDTH 64, INI_STRATEGY load, COMPUTED_STRATEGY load, WRITE_BUFFER_SIZE 80, NOC_ID -1, MY_CATEGORY pl" *) output [0:0]M01_INI_internoc;
  (* X_INTERFACE_INFO = "xilinx.com:interface:inimm:1.0 M02_INI INTERNOC" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME M02_INI, ADDR_WIDTH 64, INI_STRATEGY load, COMPUTED_STRATEGY load, WRITE_BUFFER_SIZE 80, NOC_ID -1, MY_CATEGORY pl" *) output [0:0]M02_INI_internoc;

  wire \<const0> ;

  assign M00_INI_internoc[0] = \<const0> ;
  assign M01_INI_internoc[0] = \<const0> ;
  assign M02_INI_internoc[0] = \<const0> ;
  GND GND
       (.G(\<const0> ));
endmodule

(* HW_HANDOFF = "ulp_inst_0_axi_noc_kernel0_0.hwdef" *) (* ORIG_REF_NAME = "bd_0ad1" *) 
module ulp_inst_0_axi_noc_kernel0_0_bd_0ad1
   (M00_INI_internoc,
    M01_INI_internoc,
    M02_INI_internoc);
  (* X_INTERFACE_INFO = "xilinx.com:interface:inimm:1.0 M00_INI INTERNOC" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME M00_INI, ADDR_WIDTH 64, COMPUTED_STRATEGY load, INI_STRATEGY load, MY_CATEGORY pl, NOC_ID -1, WRITE_BUFFER_SIZE 80" *) output [0:0]M00_INI_internoc;
  (* X_INTERFACE_INFO = "xilinx.com:interface:inimm:1.0 M01_INI INTERNOC" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME M01_INI, ADDR_WIDTH 64, COMPUTED_STRATEGY load, INI_STRATEGY load, MY_CATEGORY pl, NOC_ID -1, WRITE_BUFFER_SIZE 80" *) output [0:0]M01_INI_internoc;
  (* X_INTERFACE_INFO = "xilinx.com:interface:inimm:1.0 M02_INI INTERNOC" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME M02_INI, ADDR_WIDTH 64, COMPUTED_STRATEGY load, INI_STRATEGY load, MY_CATEGORY pl, NOC_ID -1, WRITE_BUFFER_SIZE 80" *) output [0:0]M02_INI_internoc;

  wire \<const0> ;
  wire stub_clock_dout;
  wire NLW_M00_INI_stub_nmu_IF_NOC_AXI_ARREADY_UNCONNECTED;
  wire NLW_M00_INI_stub_nmu_IF_NOC_AXI_AWREADY_UNCONNECTED;
  wire NLW_M00_INI_stub_nmu_IF_NOC_AXI_BVALID_UNCONNECTED;
  wire NLW_M00_INI_stub_nmu_IF_NOC_AXI_RVALID_UNCONNECTED;
  wire NLW_M00_INI_stub_nmu_IF_NOC_AXI_WREADY_UNCONNECTED;
  wire NLW_M00_INI_stub_nmu_IF_NOC_NPP_OUT_NOC_CREDIT_RDY_UNCONNECTED;
  wire NLW_M00_INI_stub_nmu_NMU_UNCONNECTED;
  wire [1:0]NLW_M00_INI_stub_nmu_IF_NOC_AXI_BRESP_UNCONNECTED;
  wire [511:0]NLW_M00_INI_stub_nmu_IF_NOC_AXI_RDATA_UNCONNECTED;
  wire [0:0]NLW_M00_INI_stub_nmu_IF_NOC_AXI_RLAST_UNCONNECTED;
  wire [1:0]NLW_M00_INI_stub_nmu_IF_NOC_AXI_RRESP_UNCONNECTED;
  wire [7:0]NLW_M00_INI_stub_nmu_IF_NOC_NPP_IN_NOC_CREDIT_RETURN_UNCONNECTED;
  wire [181:0]NLW_M00_INI_stub_nmu_IF_NOC_NPP_OUT_NOC_FLIT_UNCONNECTED;
  wire [7:0]NLW_M00_INI_stub_nmu_IF_NOC_NPP_OUT_NOC_VALID_UNCONNECTED;
  wire NLW_M01_INI_stub_nmu_IF_NOC_AXI_ARREADY_UNCONNECTED;
  wire NLW_M01_INI_stub_nmu_IF_NOC_AXI_AWREADY_UNCONNECTED;
  wire NLW_M01_INI_stub_nmu_IF_NOC_AXI_BVALID_UNCONNECTED;
  wire NLW_M01_INI_stub_nmu_IF_NOC_AXI_RVALID_UNCONNECTED;
  wire NLW_M01_INI_stub_nmu_IF_NOC_AXI_WREADY_UNCONNECTED;
  wire NLW_M01_INI_stub_nmu_IF_NOC_NPP_OUT_NOC_CREDIT_RDY_UNCONNECTED;
  wire NLW_M01_INI_stub_nmu_NMU_UNCONNECTED;
  wire [1:0]NLW_M01_INI_stub_nmu_IF_NOC_AXI_BRESP_UNCONNECTED;
  wire [511:0]NLW_M01_INI_stub_nmu_IF_NOC_AXI_RDATA_UNCONNECTED;
  wire [0:0]NLW_M01_INI_stub_nmu_IF_NOC_AXI_RLAST_UNCONNECTED;
  wire [1:0]NLW_M01_INI_stub_nmu_IF_NOC_AXI_RRESP_UNCONNECTED;
  wire [7:0]NLW_M01_INI_stub_nmu_IF_NOC_NPP_IN_NOC_CREDIT_RETURN_UNCONNECTED;
  wire [181:0]NLW_M01_INI_stub_nmu_IF_NOC_NPP_OUT_NOC_FLIT_UNCONNECTED;
  wire [7:0]NLW_M01_INI_stub_nmu_IF_NOC_NPP_OUT_NOC_VALID_UNCONNECTED;
  wire NLW_M02_INI_stub_nmu_IF_NOC_AXI_ARREADY_UNCONNECTED;
  wire NLW_M02_INI_stub_nmu_IF_NOC_AXI_AWREADY_UNCONNECTED;
  wire NLW_M02_INI_stub_nmu_IF_NOC_AXI_BVALID_UNCONNECTED;
  wire NLW_M02_INI_stub_nmu_IF_NOC_AXI_RVALID_UNCONNECTED;
  wire NLW_M02_INI_stub_nmu_IF_NOC_AXI_WREADY_UNCONNECTED;
  wire NLW_M02_INI_stub_nmu_IF_NOC_NPP_OUT_NOC_CREDIT_RDY_UNCONNECTED;
  wire NLW_M02_INI_stub_nmu_NMU_UNCONNECTED;
  wire [1:0]NLW_M02_INI_stub_nmu_IF_NOC_AXI_BRESP_UNCONNECTED;
  wire [511:0]NLW_M02_INI_stub_nmu_IF_NOC_AXI_RDATA_UNCONNECTED;
  wire [0:0]NLW_M02_INI_stub_nmu_IF_NOC_AXI_RLAST_UNCONNECTED;
  wire [1:0]NLW_M02_INI_stub_nmu_IF_NOC_AXI_RRESP_UNCONNECTED;
  wire [7:0]NLW_M02_INI_stub_nmu_IF_NOC_NPP_IN_NOC_CREDIT_RETURN_UNCONNECTED;
  wire [181:0]NLW_M02_INI_stub_nmu_IF_NOC_NPP_OUT_NOC_FLIT_UNCONNECTED;
  wire [7:0]NLW_M02_INI_stub_nmu_IF_NOC_NPP_OUT_NOC_VALID_UNCONNECTED;

  assign M00_INI_internoc[0] = \<const0> ;
  assign M01_INI_internoc[0] = \<const0> ;
  assign M02_INI_internoc[0] = \<const0> ;
  GND GND
       (.G(\<const0> ));
  (* CHECK_LICENSE_TYPE = "noc_nmu_0,noc_nmu_v1_0_0_0,{}" *) 
  (* DowngradeIPIdentifiedWarnings = "yes" *) 
  (* X_CORE_INFO = "noc_nmu_v1_0_0_0,Vivado 2018.1.0" *) 
  ulp_inst_0_axi_noc_kernel0_0_bd_0ad1_M00_INI_stub_nmu_0 M00_INI_stub_nmu
       (.IF_NOC_AXI_ARADDR(1'b0),
        .IF_NOC_AXI_ARBURST({1'b0,1'b0}),
        .IF_NOC_AXI_ARCACHE({1'b0,1'b0,1'b0,1'b0}),
        .IF_NOC_AXI_ARLEN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .IF_NOC_AXI_ARLOCK(1'b0),
        .IF_NOC_AXI_ARPROT({1'b0,1'b0,1'b0}),
        .IF_NOC_AXI_ARQOS({1'b0,1'b0,1'b0,1'b0}),
        .IF_NOC_AXI_ARREADY(NLW_M00_INI_stub_nmu_IF_NOC_AXI_ARREADY_UNCONNECTED),
        .IF_NOC_AXI_ARREGION({1'b0,1'b0,1'b0,1'b0}),
        .IF_NOC_AXI_ARSIZE({1'b0,1'b0,1'b0}),
        .IF_NOC_AXI_ARVALID(1'b0),
        .IF_NOC_AXI_AWADDR(1'b0),
        .IF_NOC_AXI_AWBURST({1'b0,1'b0}),
        .IF_NOC_AXI_AWCACHE({1'b0,1'b0,1'b0,1'b0}),
        .IF_NOC_AXI_AWLEN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .IF_NOC_AXI_AWLOCK(1'b0),
        .IF_NOC_AXI_AWPROT({1'b0,1'b0,1'b0}),
        .IF_NOC_AXI_AWQOS({1'b0,1'b0,1'b0,1'b0}),
        .IF_NOC_AXI_AWREADY(NLW_M00_INI_stub_nmu_IF_NOC_AXI_AWREADY_UNCONNECTED),
        .IF_NOC_AXI_AWREGION({1'b0,1'b0,1'b0,1'b0}),
        .IF_NOC_AXI_AWSIZE({1'b0,1'b0,1'b0}),
        .IF_NOC_AXI_AWVALID(1'b0),
        .IF_NOC_AXI_BREADY(1'b0),
        .IF_NOC_AXI_BRESP(NLW_M00_INI_stub_nmu_IF_NOC_AXI_BRESP_UNCONNECTED[1:0]),
        .IF_NOC_AXI_BVALID(NLW_M00_INI_stub_nmu_IF_NOC_AXI_BVALID_UNCONNECTED),
        .IF_NOC_AXI_RDATA(NLW_M00_INI_stub_nmu_IF_NOC_AXI_RDATA_UNCONNECTED[511:0]),
        .IF_NOC_AXI_RLAST(NLW_M00_INI_stub_nmu_IF_NOC_AXI_RLAST_UNCONNECTED[0]),
        .IF_NOC_AXI_RREADY(1'b0),
        .IF_NOC_AXI_RRESP(NLW_M00_INI_stub_nmu_IF_NOC_AXI_RRESP_UNCONNECTED[1:0]),
        .IF_NOC_AXI_RVALID(NLW_M00_INI_stub_nmu_IF_NOC_AXI_RVALID_UNCONNECTED),
        .IF_NOC_AXI_WDATA({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .IF_NOC_AXI_WLAST(1'b0),
        .IF_NOC_AXI_WREADY(NLW_M00_INI_stub_nmu_IF_NOC_AXI_WREADY_UNCONNECTED),
        .IF_NOC_AXI_WSTRB({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .IF_NOC_AXI_WVALID(1'b0),
        .IF_NOC_NPP_IN_NOC_CREDIT_RDY(1'b0),
        .IF_NOC_NPP_IN_NOC_CREDIT_RETURN(NLW_M00_INI_stub_nmu_IF_NOC_NPP_IN_NOC_CREDIT_RETURN_UNCONNECTED[7:0]),
        .IF_NOC_NPP_IN_NOC_FLIT({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .IF_NOC_NPP_IN_NOC_VALID({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .IF_NOC_NPP_OUT_NOC_CREDIT_RDY(NLW_M00_INI_stub_nmu_IF_NOC_NPP_OUT_NOC_CREDIT_RDY_UNCONNECTED),
        .IF_NOC_NPP_OUT_NOC_CREDIT_RETURN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .IF_NOC_NPP_OUT_NOC_FLIT(NLW_M00_INI_stub_nmu_IF_NOC_NPP_OUT_NOC_FLIT_UNCONNECTED[181:0]),
        .IF_NOC_NPP_OUT_NOC_VALID(NLW_M00_INI_stub_nmu_IF_NOC_NPP_OUT_NOC_VALID_UNCONNECTED[7:0]),
        .NMU(NLW_M00_INI_stub_nmu_NMU_UNCONNECTED),
        .NMU_RD_DEST_MODE(1'b0),
        .NMU_RD_USR_DST({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .NMU_WR_DEST_MODE(1'b0),
        .NMU_WR_USR_DST({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .aclk(stub_clock_dout));
  (* CHECK_LICENSE_TYPE = "noc_nmu_0,noc_nmu_v1_0_0_0,{}" *) 
  (* DowngradeIPIdentifiedWarnings = "yes" *) 
  (* X_CORE_INFO = "noc_nmu_v1_0_0_0,Vivado 2018.1.0" *) 
  ulp_inst_0_axi_noc_kernel0_0_bd_0ad1_M01_INI_stub_nmu_0 M01_INI_stub_nmu
       (.IF_NOC_AXI_ARADDR(1'b0),
        .IF_NOC_AXI_ARBURST({1'b0,1'b0}),
        .IF_NOC_AXI_ARCACHE({1'b0,1'b0,1'b0,1'b0}),
        .IF_NOC_AXI_ARLEN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .IF_NOC_AXI_ARLOCK(1'b0),
        .IF_NOC_AXI_ARPROT({1'b0,1'b0,1'b0}),
        .IF_NOC_AXI_ARQOS({1'b0,1'b0,1'b0,1'b0}),
        .IF_NOC_AXI_ARREADY(NLW_M01_INI_stub_nmu_IF_NOC_AXI_ARREADY_UNCONNECTED),
        .IF_NOC_AXI_ARREGION({1'b0,1'b0,1'b0,1'b0}),
        .IF_NOC_AXI_ARSIZE({1'b0,1'b0,1'b0}),
        .IF_NOC_AXI_ARVALID(1'b0),
        .IF_NOC_AXI_AWADDR(1'b0),
        .IF_NOC_AXI_AWBURST({1'b0,1'b0}),
        .IF_NOC_AXI_AWCACHE({1'b0,1'b0,1'b0,1'b0}),
        .IF_NOC_AXI_AWLEN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .IF_NOC_AXI_AWLOCK(1'b0),
        .IF_NOC_AXI_AWPROT({1'b0,1'b0,1'b0}),
        .IF_NOC_AXI_AWQOS({1'b0,1'b0,1'b0,1'b0}),
        .IF_NOC_AXI_AWREADY(NLW_M01_INI_stub_nmu_IF_NOC_AXI_AWREADY_UNCONNECTED),
        .IF_NOC_AXI_AWREGION({1'b0,1'b0,1'b0,1'b0}),
        .IF_NOC_AXI_AWSIZE({1'b0,1'b0,1'b0}),
        .IF_NOC_AXI_AWVALID(1'b0),
        .IF_NOC_AXI_BREADY(1'b0),
        .IF_NOC_AXI_BRESP(NLW_M01_INI_stub_nmu_IF_NOC_AXI_BRESP_UNCONNECTED[1:0]),
        .IF_NOC_AXI_BVALID(NLW_M01_INI_stub_nmu_IF_NOC_AXI_BVALID_UNCONNECTED),
        .IF_NOC_AXI_RDATA(NLW_M01_INI_stub_nmu_IF_NOC_AXI_RDATA_UNCONNECTED[511:0]),
        .IF_NOC_AXI_RLAST(NLW_M01_INI_stub_nmu_IF_NOC_AXI_RLAST_UNCONNECTED[0]),
        .IF_NOC_AXI_RREADY(1'b0),
        .IF_NOC_AXI_RRESP(NLW_M01_INI_stub_nmu_IF_NOC_AXI_RRESP_UNCONNECTED[1:0]),
        .IF_NOC_AXI_RVALID(NLW_M01_INI_stub_nmu_IF_NOC_AXI_RVALID_UNCONNECTED),
        .IF_NOC_AXI_WDATA({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .IF_NOC_AXI_WLAST(1'b0),
        .IF_NOC_AXI_WREADY(NLW_M01_INI_stub_nmu_IF_NOC_AXI_WREADY_UNCONNECTED),
        .IF_NOC_AXI_WSTRB({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .IF_NOC_AXI_WVALID(1'b0),
        .IF_NOC_NPP_IN_NOC_CREDIT_RDY(1'b0),
        .IF_NOC_NPP_IN_NOC_CREDIT_RETURN(NLW_M01_INI_stub_nmu_IF_NOC_NPP_IN_NOC_CREDIT_RETURN_UNCONNECTED[7:0]),
        .IF_NOC_NPP_IN_NOC_FLIT({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .IF_NOC_NPP_IN_NOC_VALID({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .IF_NOC_NPP_OUT_NOC_CREDIT_RDY(NLW_M01_INI_stub_nmu_IF_NOC_NPP_OUT_NOC_CREDIT_RDY_UNCONNECTED),
        .IF_NOC_NPP_OUT_NOC_CREDIT_RETURN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .IF_NOC_NPP_OUT_NOC_FLIT(NLW_M01_INI_stub_nmu_IF_NOC_NPP_OUT_NOC_FLIT_UNCONNECTED[181:0]),
        .IF_NOC_NPP_OUT_NOC_VALID(NLW_M01_INI_stub_nmu_IF_NOC_NPP_OUT_NOC_VALID_UNCONNECTED[7:0]),
        .NMU(NLW_M01_INI_stub_nmu_NMU_UNCONNECTED),
        .NMU_RD_DEST_MODE(1'b0),
        .NMU_RD_USR_DST({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .NMU_WR_DEST_MODE(1'b0),
        .NMU_WR_USR_DST({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .aclk(stub_clock_dout));
  (* CHECK_LICENSE_TYPE = "noc_nmu_0,noc_nmu_v1_0_0_0,{}" *) 
  (* DowngradeIPIdentifiedWarnings = "yes" *) 
  (* X_CORE_INFO = "noc_nmu_v1_0_0_0,Vivado 2018.1.0" *) 
  ulp_inst_0_axi_noc_kernel0_0_bd_0ad1_M02_INI_stub_nmu_0 M02_INI_stub_nmu
       (.IF_NOC_AXI_ARADDR(1'b0),
        .IF_NOC_AXI_ARBURST({1'b0,1'b0}),
        .IF_NOC_AXI_ARCACHE({1'b0,1'b0,1'b0,1'b0}),
        .IF_NOC_AXI_ARLEN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .IF_NOC_AXI_ARLOCK(1'b0),
        .IF_NOC_AXI_ARPROT({1'b0,1'b0,1'b0}),
        .IF_NOC_AXI_ARQOS({1'b0,1'b0,1'b0,1'b0}),
        .IF_NOC_AXI_ARREADY(NLW_M02_INI_stub_nmu_IF_NOC_AXI_ARREADY_UNCONNECTED),
        .IF_NOC_AXI_ARREGION({1'b0,1'b0,1'b0,1'b0}),
        .IF_NOC_AXI_ARSIZE({1'b0,1'b0,1'b0}),
        .IF_NOC_AXI_ARVALID(1'b0),
        .IF_NOC_AXI_AWADDR(1'b0),
        .IF_NOC_AXI_AWBURST({1'b0,1'b0}),
        .IF_NOC_AXI_AWCACHE({1'b0,1'b0,1'b0,1'b0}),
        .IF_NOC_AXI_AWLEN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .IF_NOC_AXI_AWLOCK(1'b0),
        .IF_NOC_AXI_AWPROT({1'b0,1'b0,1'b0}),
        .IF_NOC_AXI_AWQOS({1'b0,1'b0,1'b0,1'b0}),
        .IF_NOC_AXI_AWREADY(NLW_M02_INI_stub_nmu_IF_NOC_AXI_AWREADY_UNCONNECTED),
        .IF_NOC_AXI_AWREGION({1'b0,1'b0,1'b0,1'b0}),
        .IF_NOC_AXI_AWSIZE({1'b0,1'b0,1'b0}),
        .IF_NOC_AXI_AWVALID(1'b0),
        .IF_NOC_AXI_BREADY(1'b0),
        .IF_NOC_AXI_BRESP(NLW_M02_INI_stub_nmu_IF_NOC_AXI_BRESP_UNCONNECTED[1:0]),
        .IF_NOC_AXI_BVALID(NLW_M02_INI_stub_nmu_IF_NOC_AXI_BVALID_UNCONNECTED),
        .IF_NOC_AXI_RDATA(NLW_M02_INI_stub_nmu_IF_NOC_AXI_RDATA_UNCONNECTED[511:0]),
        .IF_NOC_AXI_RLAST(NLW_M02_INI_stub_nmu_IF_NOC_AXI_RLAST_UNCONNECTED[0]),
        .IF_NOC_AXI_RREADY(1'b0),
        .IF_NOC_AXI_RRESP(NLW_M02_INI_stub_nmu_IF_NOC_AXI_RRESP_UNCONNECTED[1:0]),
        .IF_NOC_AXI_RVALID(NLW_M02_INI_stub_nmu_IF_NOC_AXI_RVALID_UNCONNECTED),
        .IF_NOC_AXI_WDATA({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .IF_NOC_AXI_WLAST(1'b0),
        .IF_NOC_AXI_WREADY(NLW_M02_INI_stub_nmu_IF_NOC_AXI_WREADY_UNCONNECTED),
        .IF_NOC_AXI_WSTRB({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .IF_NOC_AXI_WVALID(1'b0),
        .IF_NOC_NPP_IN_NOC_CREDIT_RDY(1'b0),
        .IF_NOC_NPP_IN_NOC_CREDIT_RETURN(NLW_M02_INI_stub_nmu_IF_NOC_NPP_IN_NOC_CREDIT_RETURN_UNCONNECTED[7:0]),
        .IF_NOC_NPP_IN_NOC_FLIT({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .IF_NOC_NPP_IN_NOC_VALID({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .IF_NOC_NPP_OUT_NOC_CREDIT_RDY(NLW_M02_INI_stub_nmu_IF_NOC_NPP_OUT_NOC_CREDIT_RDY_UNCONNECTED),
        .IF_NOC_NPP_OUT_NOC_CREDIT_RETURN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .IF_NOC_NPP_OUT_NOC_FLIT(NLW_M02_INI_stub_nmu_IF_NOC_NPP_OUT_NOC_FLIT_UNCONNECTED[181:0]),
        .IF_NOC_NPP_OUT_NOC_VALID(NLW_M02_INI_stub_nmu_IF_NOC_NPP_OUT_NOC_VALID_UNCONNECTED[7:0]),
        .NMU(NLW_M02_INI_stub_nmu_NMU_UNCONNECTED),
        .NMU_RD_DEST_MODE(1'b0),
        .NMU_RD_USR_DST({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .NMU_WR_DEST_MODE(1'b0),
        .NMU_WR_USR_DST({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .aclk(stub_clock_dout));
  (* CHECK_LICENSE_TYPE = "bd_0ad1_stub_clock_0,xlconstant_v1_1_7_xlconstant,{}" *) 
  (* DowngradeIPIdentifiedWarnings = "yes" *) 
  (* X_CORE_INFO = "xlconstant_v1_1_7_xlconstant,Vivado 2022.2" *) 
  ulp_inst_0_axi_noc_kernel0_0_bd_0ad1_stub_clock_0 stub_clock
       (.dout(stub_clock_dout));
endmodule

(* CHECK_LICENSE_TYPE = "noc_nmu_0,noc_nmu_v1_0_0_0,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* ORIG_REF_NAME = "bd_0ad1_M00_INI_stub_nmu_0" *) 
(* X_CORE_INFO = "noc_nmu_v1_0_0_0,Vivado 2018.1.0" *) 
module ulp_inst_0_axi_noc_kernel0_0_bd_0ad1_M00_INI_stub_nmu_0
   (IF_NOC_AXI_WVALID,
    IF_NOC_AXI_WREADY,
    IF_NOC_AXI_WLAST,
    IF_NOC_AXI_WDATA,
    IF_NOC_AXI_WSTRB,
    IF_NOC_AXI_ARREADY,
    IF_NOC_AXI_AWREADY,
    IF_NOC_AXI_BRESP,
    IF_NOC_AXI_BVALID,
    IF_NOC_AXI_RDATA,
    IF_NOC_AXI_RLAST,
    IF_NOC_AXI_RRESP,
    IF_NOC_AXI_RVALID,
    IF_NOC_AXI_ARADDR,
    IF_NOC_AXI_ARBURST,
    IF_NOC_AXI_ARCACHE,
    IF_NOC_AXI_ARLEN,
    IF_NOC_AXI_ARLOCK,
    IF_NOC_AXI_ARPROT,
    IF_NOC_AXI_ARQOS,
    IF_NOC_AXI_ARREGION,
    IF_NOC_AXI_ARSIZE,
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
    IF_NOC_AXI_AWVALID,
    IF_NOC_AXI_BREADY,
    IF_NOC_AXI_RREADY,
    NMU_RD_DEST_MODE,
    NMU_WR_DEST_MODE,
    IF_NOC_NPP_IN_NOC_CREDIT_RETURN,
    IF_NOC_NPP_OUT_NOC_CREDIT_RDY,
    IF_NOC_NPP_OUT_NOC_FLIT,
    IF_NOC_NPP_OUT_NOC_VALID,
    aclk,
    IF_NOC_NPP_IN_NOC_CREDIT_RDY,
    IF_NOC_NPP_IN_NOC_FLIT,
    IF_NOC_NPP_IN_NOC_VALID,
    IF_NOC_NPP_OUT_NOC_CREDIT_RETURN,
    NMU,
    NMU_WR_USR_DST,
    NMU_RD_USR_DST);
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SAXI4 WVALID" *) input IF_NOC_AXI_WVALID;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SAXI4 WREADY" *) output IF_NOC_AXI_WREADY;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SAXI4 WLAST" *) input [0:0]IF_NOC_AXI_WLAST;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SAXI4 WDATA" *) input [511:0]IF_NOC_AXI_WDATA;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SAXI4 WSTRB" *) input [63:0]IF_NOC_AXI_WSTRB;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SAXI4 ARREADY" *) output IF_NOC_AXI_ARREADY;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SAXI4 AWREADY" *) output IF_NOC_AXI_AWREADY;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SAXI4 BRESP" *) output [1:0]IF_NOC_AXI_BRESP;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SAXI4 BVALID" *) output IF_NOC_AXI_BVALID;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SAXI4 RDATA" *) output [511:0]IF_NOC_AXI_RDATA;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SAXI4 RLAST" *) output [0:0]IF_NOC_AXI_RLAST;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SAXI4 RRESP" *) output [1:0]IF_NOC_AXI_RRESP;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SAXI4 RVALID" *) output IF_NOC_AXI_RVALID;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SAXI4 ARADDR" *) input [0:0]IF_NOC_AXI_ARADDR;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SAXI4 ARBURST" *) input [1:0]IF_NOC_AXI_ARBURST;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SAXI4 ARCACHE" *) input [3:0]IF_NOC_AXI_ARCACHE;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SAXI4 ARLEN" *) input [7:0]IF_NOC_AXI_ARLEN;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SAXI4 ARLOCK" *) input [0:0]IF_NOC_AXI_ARLOCK;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SAXI4 ARPROT" *) input [2:0]IF_NOC_AXI_ARPROT;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SAXI4 ARQOS" *) input [3:0]IF_NOC_AXI_ARQOS;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SAXI4 ARREGION" *) input [3:0]IF_NOC_AXI_ARREGION;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SAXI4 ARSIZE" *) input [2:0]IF_NOC_AXI_ARSIZE;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SAXI4 ARVALID" *) input IF_NOC_AXI_ARVALID;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SAXI4 AWADDR" *) input [0:0]IF_NOC_AXI_AWADDR;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SAXI4 AWBURST" *) input [1:0]IF_NOC_AXI_AWBURST;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SAXI4 AWCACHE" *) input [3:0]IF_NOC_AXI_AWCACHE;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SAXI4 AWLEN" *) input [7:0]IF_NOC_AXI_AWLEN;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SAXI4 AWLOCK" *) input [0:0]IF_NOC_AXI_AWLOCK;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SAXI4 AWPROT" *) input [2:0]IF_NOC_AXI_AWPROT;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SAXI4 AWQOS" *) input [3:0]IF_NOC_AXI_AWQOS;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SAXI4 AWREGION" *) input [3:0]IF_NOC_AXI_AWREGION;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SAXI4 AWSIZE" *) input [2:0]IF_NOC_AXI_AWSIZE;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SAXI4 AWVALID" *) input IF_NOC_AXI_AWVALID;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SAXI4 BREADY" *) input IF_NOC_AXI_BREADY;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SAXI4 RREADY" *) input IF_NOC_AXI_RREADY;
  input NMU_RD_DEST_MODE;
  input NMU_WR_DEST_MODE;
  (* X_INTERFACE_INFO = "xilinx.com:interface:npp:1.0 SNPP CREDIT_RETURN" *) output [7:0]IF_NOC_NPP_IN_NOC_CREDIT_RETURN;
  (* X_INTERFACE_INFO = "xilinx.com:interface:npp:1.0 MNPP CREDIT_RDY" *) output IF_NOC_NPP_OUT_NOC_CREDIT_RDY;
  (* X_INTERFACE_INFO = "xilinx.com:interface:npp:1.0 MNPP FLIT" *) output [181:0]IF_NOC_NPP_OUT_NOC_FLIT;
  (* X_INTERFACE_INFO = "xilinx.com:interface:npp:1.0 MNPP VALID" *) output [7:0]IF_NOC_NPP_OUT_NOC_VALID;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 aclk aclk" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME aclk, ASSOCIATED_BUSIF SAXI4:SAXI_STREAM, FREQ_HZ 100000000, PHASE 0.000" *) input aclk;
  (* X_INTERFACE_INFO = "xilinx.com:interface:npp:1.0 SNPP CREDIT_RDY" *) input IF_NOC_NPP_IN_NOC_CREDIT_RDY;
  (* X_INTERFACE_INFO = "xilinx.com:interface:npp:1.0 SNPP FLIT" *) input [181:0]IF_NOC_NPP_IN_NOC_FLIT;
  (* X_INTERFACE_INFO = "xilinx.com:interface:npp:1.0 SNPP VALID" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME SNPP, IN_SYNTHESIS_HDL NO, CAN_DEBUG false" *) input [7:0]IF_NOC_NPP_IN_NOC_VALID;
  (* X_INTERFACE_INFO = "xilinx.com:interface:npp:1.0 MNPP CREDIT_RETURN" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME MNPP, IN_SYNTHESIS_HDL NO, CAN_DEBUG false" *) input [7:0]IF_NOC_NPP_OUT_NOC_CREDIT_RETURN;
  (* dont_touch = "true" *) output NMU;
  input [11:0]NMU_WR_USR_DST;
  input [11:0]NMU_RD_USR_DST;

  wire [0:0]IF_NOC_AXI_ARADDR;
  wire [1:0]IF_NOC_AXI_ARBURST;
  wire [3:0]IF_NOC_AXI_ARCACHE;
  wire [7:0]IF_NOC_AXI_ARLEN;
  wire [0:0]IF_NOC_AXI_ARLOCK;
  wire [2:0]IF_NOC_AXI_ARPROT;
  wire [3:0]IF_NOC_AXI_ARQOS;
  wire IF_NOC_AXI_ARREADY;
  wire [3:0]IF_NOC_AXI_ARREGION;
  wire [2:0]IF_NOC_AXI_ARSIZE;
  wire IF_NOC_AXI_ARVALID;
  wire [0:0]IF_NOC_AXI_AWADDR;
  wire [1:0]IF_NOC_AXI_AWBURST;
  wire [3:0]IF_NOC_AXI_AWCACHE;
  wire [7:0]IF_NOC_AXI_AWLEN;
  wire [0:0]IF_NOC_AXI_AWLOCK;
  wire [2:0]IF_NOC_AXI_AWPROT;
  wire [3:0]IF_NOC_AXI_AWQOS;
  wire IF_NOC_AXI_AWREADY;
  wire [3:0]IF_NOC_AXI_AWREGION;
  wire [2:0]IF_NOC_AXI_AWSIZE;
  wire IF_NOC_AXI_AWVALID;
  wire IF_NOC_AXI_BREADY;
  wire [1:0]IF_NOC_AXI_BRESP;
  wire IF_NOC_AXI_BVALID;
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
  (* DONT_TOUCH *) wire NMU;
  wire NMU_RD_DEST_MODE;
  wire [11:0]NMU_RD_USR_DST;
  wire NMU_WR_DEST_MODE;
  wire [11:0]NMU_WR_USR_DST;
  wire aclk;

  (* REG_ADDR_DST0 = "16'b0000000000000000" *) 
  (* REG_ADDR_DST1 = "16'b0000000000000000" *) 
  (* REG_ADDR_DST10 = "16'b0000000000000000" *) 
  (* REG_ADDR_DST11 = "16'b0000000000000000" *) 
  (* REG_ADDR_DST12 = "16'b0000000000000000" *) 
  (* REG_ADDR_DST13 = "16'b0000000000000000" *) 
  (* REG_ADDR_DST14 = "16'b0000000000000000" *) 
  (* REG_ADDR_DST15 = "16'b0000000000000000" *) 
  (* REG_ADDR_DST2 = "16'b0000000000000000" *) 
  (* REG_ADDR_DST3 = "16'b0000000000000000" *) 
  (* REG_ADDR_DST4 = "16'b0000000000000000" *) 
  (* REG_ADDR_DST5 = "16'b0000000000000000" *) 
  (* REG_ADDR_DST6 = "16'b0000000000000000" *) 
  (* REG_ADDR_DST7 = "16'b0000000000000000" *) 
  (* REG_ADDR_DST8 = "16'b0000000000000000" *) 
  (* REG_ADDR_DST9 = "16'b0000000000000000" *) 
  (* REG_ADDR_ENABLE = "16'b0000000000000000" *) 
  (* REG_ADDR_MADDR0 = "32'b00000000000000000000000000000000" *) 
  (* REG_ADDR_MADDR1 = "32'b00000000000000000000000000000000" *) 
  (* REG_ADDR_MADDR10 = "32'b00000000000000000000000000000000" *) 
  (* REG_ADDR_MADDR11 = "32'b00000000000000000000000000000000" *) 
  (* REG_ADDR_MADDR12 = "32'b00000000000000000000000000000000" *) 
  (* REG_ADDR_MADDR13 = "32'b00000000000000000000000000000000" *) 
  (* REG_ADDR_MADDR14 = "32'b00000000000000000000000000000000" *) 
  (* REG_ADDR_MADDR15 = "32'b00000000000000000000000000000000" *) 
  (* REG_ADDR_MADDR2 = "32'b00000000000000000000000000000000" *) 
  (* REG_ADDR_MADDR3 = "32'b00000000000000000000000000000000" *) 
  (* REG_ADDR_MADDR4 = "32'b00000000000000000000000000000000" *) 
  (* REG_ADDR_MADDR5 = "32'b00000000000000000000000000000000" *) 
  (* REG_ADDR_MADDR6 = "32'b00000000000000000000000000000000" *) 
  (* REG_ADDR_MADDR7 = "32'b00000000000000000000000000000000" *) 
  (* REG_ADDR_MADDR8 = "32'b00000000000000000000000000000000" *) 
  (* REG_ADDR_MADDR9 = "32'b00000000000000000000000000000000" *) 
  (* REG_ADDR_MASK0 = "32'b00000000000000000000000000000000" *) 
  (* REG_ADDR_MASK1 = "32'b00000000000000000000000000000000" *) 
  (* REG_ADDR_MASK10 = "32'b00000000000000000000000000000000" *) 
  (* REG_ADDR_MASK11 = "32'b00000000000000000000000000000000" *) 
  (* REG_ADDR_MASK12 = "32'b00000000000000000000000000000000" *) 
  (* REG_ADDR_MASK13 = "32'b00000000000000000000000000000000" *) 
  (* REG_ADDR_MASK14 = "32'b00000000000000000000000000000000" *) 
  (* REG_ADDR_MASK15 = "32'b00000000000000000000000000000000" *) 
  (* REG_ADDR_MASK2 = "32'b00000000000000000000000000000000" *) 
  (* REG_ADDR_MASK3 = "32'b00000000000000000000000000000000" *) 
  (* REG_ADDR_MASK4 = "32'b00000000000000000000000000000000" *) 
  (* REG_ADDR_MASK5 = "32'b00000000000000000000000000000000" *) 
  (* REG_ADDR_MASK6 = "32'b00000000000000000000000000000000" *) 
  (* REG_ADDR_MASK7 = "32'b00000000000000000000000000000000" *) 
  (* REG_ADDR_MASK8 = "32'b00000000000000000000000000000000" *) 
  (* REG_ADDR_MASK9 = "32'b00000000000000000000000000000000" *) 
  (* REG_ADDR_REMAP = "16'b0000000000000000" *) 
  (* REG_ADDR_RPADDR0 = "32'b00000000000000000000000000000000" *) 
  (* REG_ADDR_RPADDR1 = "32'b00000000000000000000000000000000" *) 
  (* REG_ADDR_RPADDR10 = "32'b00000000000000000000000000000000" *) 
  (* REG_ADDR_RPADDR11 = "32'b00000000000000000000000000000000" *) 
  (* REG_ADDR_RPADDR12 = "32'b00000000000000000000000000000000" *) 
  (* REG_ADDR_RPADDR13 = "32'b00000000000000000000000000000000" *) 
  (* REG_ADDR_RPADDR14 = "32'b00000000000000000000000000000000" *) 
  (* REG_ADDR_RPADDR15 = "32'b00000000000000000000000000000000" *) 
  (* REG_ADDR_RPADDR2 = "32'b00000000000000000000000000000000" *) 
  (* REG_ADDR_RPADDR3 = "32'b00000000000000000000000000000000" *) 
  (* REG_ADDR_RPADDR4 = "32'b00000000000000000000000000000000" *) 
  (* REG_ADDR_RPADDR5 = "32'b00000000000000000000000000000000" *) 
  (* REG_ADDR_RPADDR6 = "32'b00000000000000000000000000000000" *) 
  (* REG_ADDR_RPADDR7 = "32'b00000000000000000000000000000000" *) 
  (* REG_ADDR_RPADDR8 = "32'b00000000000000000000000000000000" *) 
  (* REG_ADDR_RPADDR9 = "32'b00000000000000000000000000000000" *) 
  (* REG_ADR_MAP_CPM = "12'b111111000000" *) 
  (* REG_ADR_MAP_FPD_AFI_0 = "12'b111111000000" *) 
  (* REG_ADR_MAP_FPD_AFI_1 = "12'b111111000000" *) 
  (* REG_ADR_MAP_LPD_AFI_FS = "12'b111111000000" *) 
  (* REG_ADR_MAP_ME_ARRAY_0 = "12'b111111000000" *) 
  (* REG_ADR_MAP_ME_ARRAY_1 = "12'b111111000000" *) 
  (* REG_ADR_MAP_ME_ARRAY_2 = "12'b111111000000" *) 
  (* REG_ADR_MAP_ME_ARRAY_3 = "12'b111111000000" *) 
  (* REG_ADR_MAP_PCIE = "12'b111111000000" *) 
  (* REG_ADR_MAP_PMC = "12'b111111000000" *) 
  (* REG_ADR_MAP_PMC_ALIAS_0 = "12'b111111000000" *) 
  (* REG_ADR_MAP_PMC_ALIAS_1 = "12'b111111000000" *) 
  (* REG_ADR_MAP_PMC_ALIAS_2 = "12'b111111000000" *) 
  (* REG_ADR_MAP_PMC_ALIAS_3 = "12'b111111000000" *) 
  (* REG_ADR_MAP_QSPI = "12'b111111000000" *) 
  (* REG_ADR_MAP_STM_GIC = "12'b111111000000" *) 
  (* REG_ADR_MAP_XPDS = "12'b111111000000" *) 
  (* REG_AXI_NON_MOD_DISABLE = "1'b0" *) 
  (* REG_AXI_PAR_CHK = "2'b00" *) 
  (* REG_CHOPSIZE = "4'b1010" *) 
  (* REG_DDR_ADR_MAP0 = "15'b110011010001000" *) 
  (* REG_DDR_ADR_MAP1 = "15'b001111111111111" *) 
  (* REG_DDR_ADR_MAP2 = "15'b001111111111111" *) 
  (* REG_DDR_ADR_MAP3 = "15'b001111111111111" *) 
  (* REG_DDR_ADR_MAP4 = "15'b001111111111111" *) 
  (* REG_DDR_ADR_MAP5 = "15'b001111111111111" *) 
  (* REG_DDR_ADR_MAP6 = "15'b001111111111111" *) 
  (* REG_DDR_DST_MAP0 = "12'b100010000000" *) 
  (* REG_DDR_DST_MAP1 = "12'b010110000000" *) 
  (* REG_DDR_DST_MAP2 = "12'b011110000000" *) 
  (* REG_DDR_DST_MAP3 = "12'b011010000000" *) 
  (* REG_DDR_DST_MAP4 = "12'b111111000000" *) 
  (* REG_DDR_DST_MAP5 = "12'b111111000000" *) 
  (* REG_DDR_DST_MAP6 = "12'b111111000000" *) 
  (* REG_DDR_DST_MAP7 = "12'b111111000000" *) 
  (* REG_DWIDTH = "3'b110" *) 
  (* REG_ECC_CHK_EN = "1'b1" *) 
  (* REG_HBM_MAP_T0_CH0 = "12'b111111000000" *) 
  (* REG_HBM_MAP_T0_CH1 = "12'b111111000000" *) 
  (* REG_HBM_MAP_T0_CH10 = "12'b111111000000" *) 
  (* REG_HBM_MAP_T0_CH11 = "12'b111111000000" *) 
  (* REG_HBM_MAP_T0_CH12 = "12'b111111000000" *) 
  (* REG_HBM_MAP_T0_CH13 = "12'b111111000000" *) 
  (* REG_HBM_MAP_T0_CH14 = "12'b111111000000" *) 
  (* REG_HBM_MAP_T0_CH15 = "12'b111111000000" *) 
  (* REG_HBM_MAP_T0_CH2 = "12'b111111000000" *) 
  (* REG_HBM_MAP_T0_CH3 = "12'b111111000000" *) 
  (* REG_HBM_MAP_T0_CH4 = "12'b111111000000" *) 
  (* REG_HBM_MAP_T0_CH5 = "12'b111111000000" *) 
  (* REG_HBM_MAP_T0_CH6 = "12'b111111000000" *) 
  (* REG_HBM_MAP_T0_CH7 = "12'b111111000000" *) 
  (* REG_HBM_MAP_T0_CH8 = "12'b111111000000" *) 
  (* REG_HBM_MAP_T0_CH9 = "12'b111111000000" *) 
  (* REG_HBM_MAP_T1_CH0 = "12'b111111000000" *) 
  (* REG_HBM_MAP_T1_CH1 = "12'b111111000000" *) 
  (* REG_HBM_MAP_T1_CH10 = "12'b111111000000" *) 
  (* REG_HBM_MAP_T1_CH11 = "12'b111111000000" *) 
  (* REG_HBM_MAP_T1_CH12 = "12'b111111000000" *) 
  (* REG_HBM_MAP_T1_CH13 = "12'b111111000000" *) 
  (* REG_HBM_MAP_T1_CH14 = "12'b111111000000" *) 
  (* REG_HBM_MAP_T1_CH15 = "12'b111111000000" *) 
  (* REG_HBM_MAP_T1_CH2 = "12'b111111000000" *) 
  (* REG_HBM_MAP_T1_CH3 = "12'b111111000000" *) 
  (* REG_HBM_MAP_T1_CH4 = "12'b111111000000" *) 
  (* REG_HBM_MAP_T1_CH5 = "12'b111111000000" *) 
  (* REG_HBM_MAP_T1_CH6 = "12'b111111000000" *) 
  (* REG_HBM_MAP_T1_CH7 = "12'b111111000000" *) 
  (* REG_HBM_MAP_T1_CH8 = "12'b111111000000" *) 
  (* REG_HBM_MAP_T1_CH9 = "12'b111111000000" *) 
  (* REG_HBM_MAP_T2_CH0 = "12'b111111000000" *) 
  (* REG_HBM_MAP_T2_CH1 = "12'b111111000000" *) 
  (* REG_HBM_MAP_T2_CH10 = "12'b111111000000" *) 
  (* REG_HBM_MAP_T2_CH11 = "12'b111111000000" *) 
  (* REG_HBM_MAP_T2_CH12 = "12'b111111000000" *) 
  (* REG_HBM_MAP_T2_CH13 = "12'b111111000000" *) 
  (* REG_HBM_MAP_T2_CH14 = "12'b111111000000" *) 
  (* REG_HBM_MAP_T2_CH15 = "12'b111111000000" *) 
  (* REG_HBM_MAP_T2_CH2 = "12'b111111000000" *) 
  (* REG_HBM_MAP_T2_CH3 = "12'b111111000000" *) 
  (* REG_HBM_MAP_T2_CH4 = "12'b111111000000" *) 
  (* REG_HBM_MAP_T2_CH5 = "12'b111111000000" *) 
  (* REG_HBM_MAP_T2_CH6 = "12'b111111000000" *) 
  (* REG_HBM_MAP_T2_CH7 = "12'b111111000000" *) 
  (* REG_HBM_MAP_T2_CH8 = "12'b111111000000" *) 
  (* REG_HBM_MAP_T2_CH9 = "12'b111111000000" *) 
  (* REG_HBM_MAP_T3_CH0 = "12'b111111000000" *) 
  (* REG_HBM_MAP_T3_CH1 = "12'b111111000000" *) 
  (* REG_HBM_MAP_T3_CH10 = "12'b111111000000" *) 
  (* REG_HBM_MAP_T3_CH11 = "12'b111111000000" *) 
  (* REG_HBM_MAP_T3_CH12 = "12'b111111000000" *) 
  (* REG_HBM_MAP_T3_CH13 = "12'b111111000000" *) 
  (* REG_HBM_MAP_T3_CH14 = "12'b111111000000" *) 
  (* REG_HBM_MAP_T3_CH15 = "12'b111111000000" *) 
  (* REG_HBM_MAP_T3_CH2 = "12'b111111000000" *) 
  (* REG_HBM_MAP_T3_CH3 = "12'b111111000000" *) 
  (* REG_HBM_MAP_T3_CH4 = "12'b111111000000" *) 
  (* REG_HBM_MAP_T3_CH5 = "12'b111111000000" *) 
  (* REG_HBM_MAP_T3_CH6 = "12'b111111000000" *) 
  (* REG_HBM_MAP_T3_CH7 = "12'b111111000000" *) 
  (* REG_HBM_MAP_T3_CH8 = "12'b111111000000" *) 
  (* REG_HBM_MAP_T3_CH9 = "12'b111111000000" *) 
  (* REG_MODE_SELECT = "16'b0000000000000000" *) 
  (* REG_OUTSTANDING_RD_TXN = "7'b1000000" *) 
  (* REG_OUTSTANDING_WR_TXN = "7'b1000000" *) 
  (* REG_PRIORITY = "2'b00" *) 
  (* REG_RD_AXPROT_SEL = "6'b000000" *) 
  (* REG_RD_RATE_CREDIT_DROP = "10'b0000000100" *) 
  (* REG_RD_RATE_CREDIT_LIMIT = "13'b0000100000000" *) 
  (* REG_RD_VCA_TOKEN0 = "8'b00010100" *) 
  (* REG_RPOISON_TO_SLVERR = "1'b0" *) 
  (* REG_RROB_RAM_SETTING = "9'b000010010" *) 
  (* REG_SMID_SEL = "20'b00000000000000000000" *) 
  (* REG_SRC = "12'b000101000000" *) 
  (* REG_TBASE_AXI_TIMEOUT = "3'b001" *) 
  (* REG_TBASE_MODE_RLIMIT_RD = "3'b010" *) 
  (* REG_TBASE_MODE_RLIMIT_WR = "3'b010" *) 
  (* REG_TBASE_TRK_TIMEOUT = "3'b001" *) 
  (* REG_VC_MAP = "12'b111010101000" *) 
  (* REG_WBUF_LAUNCH_SIZE = "6'b010000" *) 
  (* REG_WBUF_RAM_SETTING = "9'b000010010" *) 
  (* REG_WR_AXPROT_SEL = "6'b000000" *) 
  (* REG_WR_RATE_CREDIT_DROP = "10'b0000000100" *) 
  (* REG_WR_RATE_CREDIT_LIMIT = "13'b0000100000000" *) 
  (* REG_WR_VCA_TOKEN0 = "8'b00010000" *) 
  ulp_inst_0_axi_noc_kernel0_0_bd_0ad1_M00_INI_stub_nmu_0_top bd_0ad1_M00_INI_stub_nmu_0_top_INST
       (.IF_NOC_AXI_ARADDR(IF_NOC_AXI_ARADDR),
        .IF_NOC_AXI_ARBURST(IF_NOC_AXI_ARBURST),
        .IF_NOC_AXI_ARCACHE(IF_NOC_AXI_ARCACHE),
        .IF_NOC_AXI_ARLEN(IF_NOC_AXI_ARLEN),
        .IF_NOC_AXI_ARLOCK(IF_NOC_AXI_ARLOCK),
        .IF_NOC_AXI_ARPROT(IF_NOC_AXI_ARPROT),
        .IF_NOC_AXI_ARQOS(IF_NOC_AXI_ARQOS),
        .IF_NOC_AXI_ARREADY(IF_NOC_AXI_ARREADY),
        .IF_NOC_AXI_ARREGION(IF_NOC_AXI_ARREGION),
        .IF_NOC_AXI_ARSIZE(IF_NOC_AXI_ARSIZE),
        .IF_NOC_AXI_ARVALID(IF_NOC_AXI_ARVALID),
        .IF_NOC_AXI_AWADDR(IF_NOC_AXI_AWADDR),
        .IF_NOC_AXI_AWBURST(IF_NOC_AXI_AWBURST),
        .IF_NOC_AXI_AWCACHE(IF_NOC_AXI_AWCACHE),
        .IF_NOC_AXI_AWLEN(IF_NOC_AXI_AWLEN),
        .IF_NOC_AXI_AWLOCK(IF_NOC_AXI_AWLOCK),
        .IF_NOC_AXI_AWPROT(IF_NOC_AXI_AWPROT),
        .IF_NOC_AXI_AWQOS(IF_NOC_AXI_AWQOS),
        .IF_NOC_AXI_AWREADY(IF_NOC_AXI_AWREADY),
        .IF_NOC_AXI_AWREGION(IF_NOC_AXI_AWREGION),
        .IF_NOC_AXI_AWSIZE(IF_NOC_AXI_AWSIZE),
        .IF_NOC_AXI_AWVALID(IF_NOC_AXI_AWVALID),
        .IF_NOC_AXI_BREADY(IF_NOC_AXI_BREADY),
        .IF_NOC_AXI_BRESP(IF_NOC_AXI_BRESP),
        .IF_NOC_AXI_BVALID(IF_NOC_AXI_BVALID),
        .IF_NOC_AXI_RDATA(IF_NOC_AXI_RDATA),
        .IF_NOC_AXI_RLAST(IF_NOC_AXI_RLAST),
        .IF_NOC_AXI_RREADY(IF_NOC_AXI_RREADY),
        .IF_NOC_AXI_RRESP(IF_NOC_AXI_RRESP),
        .IF_NOC_AXI_RVALID(IF_NOC_AXI_RVALID),
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
        .NMU(NMU),
        .NMU_RD_DEST_MODE(NMU_RD_DEST_MODE),
        .NMU_RD_USR_DST(NMU_RD_USR_DST),
        .NMU_WR_DEST_MODE(NMU_WR_DEST_MODE),
        .NMU_WR_USR_DST(NMU_WR_USR_DST),
        .aclk(aclk));
endmodule

(* ORIG_REF_NAME = "bd_0ad1_M00_INI_stub_nmu_0_top" *) (* REG_ADDR_DST0 = "16'b0000000000000000" *) (* REG_ADDR_DST1 = "16'b0000000000000000" *) 
(* REG_ADDR_DST10 = "16'b0000000000000000" *) (* REG_ADDR_DST11 = "16'b0000000000000000" *) (* REG_ADDR_DST12 = "16'b0000000000000000" *) 
(* REG_ADDR_DST13 = "16'b0000000000000000" *) (* REG_ADDR_DST14 = "16'b0000000000000000" *) (* REG_ADDR_DST15 = "16'b0000000000000000" *) 
(* REG_ADDR_DST2 = "16'b0000000000000000" *) (* REG_ADDR_DST3 = "16'b0000000000000000" *) (* REG_ADDR_DST4 = "16'b0000000000000000" *) 
(* REG_ADDR_DST5 = "16'b0000000000000000" *) (* REG_ADDR_DST6 = "16'b0000000000000000" *) (* REG_ADDR_DST7 = "16'b0000000000000000" *) 
(* REG_ADDR_DST8 = "16'b0000000000000000" *) (* REG_ADDR_DST9 = "16'b0000000000000000" *) (* REG_ADDR_ENABLE = "16'b0000000000000000" *) 
(* REG_ADDR_MADDR0 = "32'b00000000000000000000000000000000" *) (* REG_ADDR_MADDR1 = "32'b00000000000000000000000000000000" *) (* REG_ADDR_MADDR10 = "32'b00000000000000000000000000000000" *) 
(* REG_ADDR_MADDR11 = "32'b00000000000000000000000000000000" *) (* REG_ADDR_MADDR12 = "32'b00000000000000000000000000000000" *) (* REG_ADDR_MADDR13 = "32'b00000000000000000000000000000000" *) 
(* REG_ADDR_MADDR14 = "32'b00000000000000000000000000000000" *) (* REG_ADDR_MADDR15 = "32'b00000000000000000000000000000000" *) (* REG_ADDR_MADDR2 = "32'b00000000000000000000000000000000" *) 
(* REG_ADDR_MADDR3 = "32'b00000000000000000000000000000000" *) (* REG_ADDR_MADDR4 = "32'b00000000000000000000000000000000" *) (* REG_ADDR_MADDR5 = "32'b00000000000000000000000000000000" *) 
(* REG_ADDR_MADDR6 = "32'b00000000000000000000000000000000" *) (* REG_ADDR_MADDR7 = "32'b00000000000000000000000000000000" *) (* REG_ADDR_MADDR8 = "32'b00000000000000000000000000000000" *) 
(* REG_ADDR_MADDR9 = "32'b00000000000000000000000000000000" *) (* REG_ADDR_MASK0 = "32'b00000000000000000000000000000000" *) (* REG_ADDR_MASK1 = "32'b00000000000000000000000000000000" *) 
(* REG_ADDR_MASK10 = "32'b00000000000000000000000000000000" *) (* REG_ADDR_MASK11 = "32'b00000000000000000000000000000000" *) (* REG_ADDR_MASK12 = "32'b00000000000000000000000000000000" *) 
(* REG_ADDR_MASK13 = "32'b00000000000000000000000000000000" *) (* REG_ADDR_MASK14 = "32'b00000000000000000000000000000000" *) (* REG_ADDR_MASK15 = "32'b00000000000000000000000000000000" *) 
(* REG_ADDR_MASK2 = "32'b00000000000000000000000000000000" *) (* REG_ADDR_MASK3 = "32'b00000000000000000000000000000000" *) (* REG_ADDR_MASK4 = "32'b00000000000000000000000000000000" *) 
(* REG_ADDR_MASK5 = "32'b00000000000000000000000000000000" *) (* REG_ADDR_MASK6 = "32'b00000000000000000000000000000000" *) (* REG_ADDR_MASK7 = "32'b00000000000000000000000000000000" *) 
(* REG_ADDR_MASK8 = "32'b00000000000000000000000000000000" *) (* REG_ADDR_MASK9 = "32'b00000000000000000000000000000000" *) (* REG_ADDR_REMAP = "16'b0000000000000000" *) 
(* REG_ADDR_RPADDR0 = "32'b00000000000000000000000000000000" *) (* REG_ADDR_RPADDR1 = "32'b00000000000000000000000000000000" *) (* REG_ADDR_RPADDR10 = "32'b00000000000000000000000000000000" *) 
(* REG_ADDR_RPADDR11 = "32'b00000000000000000000000000000000" *) (* REG_ADDR_RPADDR12 = "32'b00000000000000000000000000000000" *) (* REG_ADDR_RPADDR13 = "32'b00000000000000000000000000000000" *) 
(* REG_ADDR_RPADDR14 = "32'b00000000000000000000000000000000" *) (* REG_ADDR_RPADDR15 = "32'b00000000000000000000000000000000" *) (* REG_ADDR_RPADDR2 = "32'b00000000000000000000000000000000" *) 
(* REG_ADDR_RPADDR3 = "32'b00000000000000000000000000000000" *) (* REG_ADDR_RPADDR4 = "32'b00000000000000000000000000000000" *) (* REG_ADDR_RPADDR5 = "32'b00000000000000000000000000000000" *) 
(* REG_ADDR_RPADDR6 = "32'b00000000000000000000000000000000" *) (* REG_ADDR_RPADDR7 = "32'b00000000000000000000000000000000" *) (* REG_ADDR_RPADDR8 = "32'b00000000000000000000000000000000" *) 
(* REG_ADDR_RPADDR9 = "32'b00000000000000000000000000000000" *) (* REG_ADR_MAP_CPM = "12'b111111000000" *) (* REG_ADR_MAP_FPD_AFI_0 = "12'b111111000000" *) 
(* REG_ADR_MAP_FPD_AFI_1 = "12'b111111000000" *) (* REG_ADR_MAP_LPD_AFI_FS = "12'b111111000000" *) (* REG_ADR_MAP_ME_ARRAY_0 = "12'b111111000000" *) 
(* REG_ADR_MAP_ME_ARRAY_1 = "12'b111111000000" *) (* REG_ADR_MAP_ME_ARRAY_2 = "12'b111111000000" *) (* REG_ADR_MAP_ME_ARRAY_3 = "12'b111111000000" *) 
(* REG_ADR_MAP_PCIE = "12'b111111000000" *) (* REG_ADR_MAP_PMC = "12'b111111000000" *) (* REG_ADR_MAP_PMC_ALIAS_0 = "12'b111111000000" *) 
(* REG_ADR_MAP_PMC_ALIAS_1 = "12'b111111000000" *) (* REG_ADR_MAP_PMC_ALIAS_2 = "12'b111111000000" *) (* REG_ADR_MAP_PMC_ALIAS_3 = "12'b111111000000" *) 
(* REG_ADR_MAP_QSPI = "12'b111111000000" *) (* REG_ADR_MAP_STM_GIC = "12'b111111000000" *) (* REG_ADR_MAP_XPDS = "12'b111111000000" *) 
(* REG_AXI_NON_MOD_DISABLE = "1'b0" *) (* REG_AXI_PAR_CHK = "2'b00" *) (* REG_CHOPSIZE = "4'b1010" *) 
(* REG_DDR_ADR_MAP0 = "15'b110011010001000" *) (* REG_DDR_ADR_MAP1 = "15'b001111111111111" *) (* REG_DDR_ADR_MAP2 = "15'b001111111111111" *) 
(* REG_DDR_ADR_MAP3 = "15'b001111111111111" *) (* REG_DDR_ADR_MAP4 = "15'b001111111111111" *) (* REG_DDR_ADR_MAP5 = "15'b001111111111111" *) 
(* REG_DDR_ADR_MAP6 = "15'b001111111111111" *) (* REG_DDR_DST_MAP0 = "12'b100010000000" *) (* REG_DDR_DST_MAP1 = "12'b010110000000" *) 
(* REG_DDR_DST_MAP2 = "12'b011110000000" *) (* REG_DDR_DST_MAP3 = "12'b011010000000" *) (* REG_DDR_DST_MAP4 = "12'b111111000000" *) 
(* REG_DDR_DST_MAP5 = "12'b111111000000" *) (* REG_DDR_DST_MAP6 = "12'b111111000000" *) (* REG_DDR_DST_MAP7 = "12'b111111000000" *) 
(* REG_DWIDTH = "3'b110" *) (* REG_ECC_CHK_EN = "1'b1" *) (* REG_HBM_MAP_T0_CH0 = "12'b111111000000" *) 
(* REG_HBM_MAP_T0_CH1 = "12'b111111000000" *) (* REG_HBM_MAP_T0_CH10 = "12'b111111000000" *) (* REG_HBM_MAP_T0_CH11 = "12'b111111000000" *) 
(* REG_HBM_MAP_T0_CH12 = "12'b111111000000" *) (* REG_HBM_MAP_T0_CH13 = "12'b111111000000" *) (* REG_HBM_MAP_T0_CH14 = "12'b111111000000" *) 
(* REG_HBM_MAP_T0_CH15 = "12'b111111000000" *) (* REG_HBM_MAP_T0_CH2 = "12'b111111000000" *) (* REG_HBM_MAP_T0_CH3 = "12'b111111000000" *) 
(* REG_HBM_MAP_T0_CH4 = "12'b111111000000" *) (* REG_HBM_MAP_T0_CH5 = "12'b111111000000" *) (* REG_HBM_MAP_T0_CH6 = "12'b111111000000" *) 
(* REG_HBM_MAP_T0_CH7 = "12'b111111000000" *) (* REG_HBM_MAP_T0_CH8 = "12'b111111000000" *) (* REG_HBM_MAP_T0_CH9 = "12'b111111000000" *) 
(* REG_HBM_MAP_T1_CH0 = "12'b111111000000" *) (* REG_HBM_MAP_T1_CH1 = "12'b111111000000" *) (* REG_HBM_MAP_T1_CH10 = "12'b111111000000" *) 
(* REG_HBM_MAP_T1_CH11 = "12'b111111000000" *) (* REG_HBM_MAP_T1_CH12 = "12'b111111000000" *) (* REG_HBM_MAP_T1_CH13 = "12'b111111000000" *) 
(* REG_HBM_MAP_T1_CH14 = "12'b111111000000" *) (* REG_HBM_MAP_T1_CH15 = "12'b111111000000" *) (* REG_HBM_MAP_T1_CH2 = "12'b111111000000" *) 
(* REG_HBM_MAP_T1_CH3 = "12'b111111000000" *) (* REG_HBM_MAP_T1_CH4 = "12'b111111000000" *) (* REG_HBM_MAP_T1_CH5 = "12'b111111000000" *) 
(* REG_HBM_MAP_T1_CH6 = "12'b111111000000" *) (* REG_HBM_MAP_T1_CH7 = "12'b111111000000" *) (* REG_HBM_MAP_T1_CH8 = "12'b111111000000" *) 
(* REG_HBM_MAP_T1_CH9 = "12'b111111000000" *) (* REG_HBM_MAP_T2_CH0 = "12'b111111000000" *) (* REG_HBM_MAP_T2_CH1 = "12'b111111000000" *) 
(* REG_HBM_MAP_T2_CH10 = "12'b111111000000" *) (* REG_HBM_MAP_T2_CH11 = "12'b111111000000" *) (* REG_HBM_MAP_T2_CH12 = "12'b111111000000" *) 
(* REG_HBM_MAP_T2_CH13 = "12'b111111000000" *) (* REG_HBM_MAP_T2_CH14 = "12'b111111000000" *) (* REG_HBM_MAP_T2_CH15 = "12'b111111000000" *) 
(* REG_HBM_MAP_T2_CH2 = "12'b111111000000" *) (* REG_HBM_MAP_T2_CH3 = "12'b111111000000" *) (* REG_HBM_MAP_T2_CH4 = "12'b111111000000" *) 
(* REG_HBM_MAP_T2_CH5 = "12'b111111000000" *) (* REG_HBM_MAP_T2_CH6 = "12'b111111000000" *) (* REG_HBM_MAP_T2_CH7 = "12'b111111000000" *) 
(* REG_HBM_MAP_T2_CH8 = "12'b111111000000" *) (* REG_HBM_MAP_T2_CH9 = "12'b111111000000" *) (* REG_HBM_MAP_T3_CH0 = "12'b111111000000" *) 
(* REG_HBM_MAP_T3_CH1 = "12'b111111000000" *) (* REG_HBM_MAP_T3_CH10 = "12'b111111000000" *) (* REG_HBM_MAP_T3_CH11 = "12'b111111000000" *) 
(* REG_HBM_MAP_T3_CH12 = "12'b111111000000" *) (* REG_HBM_MAP_T3_CH13 = "12'b111111000000" *) (* REG_HBM_MAP_T3_CH14 = "12'b111111000000" *) 
(* REG_HBM_MAP_T3_CH15 = "12'b111111000000" *) (* REG_HBM_MAP_T3_CH2 = "12'b111111000000" *) (* REG_HBM_MAP_T3_CH3 = "12'b111111000000" *) 
(* REG_HBM_MAP_T3_CH4 = "12'b111111000000" *) (* REG_HBM_MAP_T3_CH5 = "12'b111111000000" *) (* REG_HBM_MAP_T3_CH6 = "12'b111111000000" *) 
(* REG_HBM_MAP_T3_CH7 = "12'b111111000000" *) (* REG_HBM_MAP_T3_CH8 = "12'b111111000000" *) (* REG_HBM_MAP_T3_CH9 = "12'b111111000000" *) 
(* REG_MODE_SELECT = "16'b0000000000000000" *) (* REG_OUTSTANDING_RD_TXN = "7'b1000000" *) (* REG_OUTSTANDING_WR_TXN = "7'b1000000" *) 
(* REG_PRIORITY = "2'b00" *) (* REG_RD_AXPROT_SEL = "6'b000000" *) (* REG_RD_RATE_CREDIT_DROP = "10'b0000000100" *) 
(* REG_RD_RATE_CREDIT_LIMIT = "13'b0000100000000" *) (* REG_RD_VCA_TOKEN0 = "8'b00010100" *) (* REG_RPOISON_TO_SLVERR = "1'b0" *) 
(* REG_RROB_RAM_SETTING = "9'b000010010" *) (* REG_SMID_SEL = "20'b00000000000000000000" *) (* REG_SRC = "12'b000101000000" *) 
(* REG_TBASE_AXI_TIMEOUT = "3'b001" *) (* REG_TBASE_MODE_RLIMIT_RD = "3'b010" *) (* REG_TBASE_MODE_RLIMIT_WR = "3'b010" *) 
(* REG_TBASE_TRK_TIMEOUT = "3'b001" *) (* REG_VC_MAP = "12'b111010101000" *) (* REG_WBUF_LAUNCH_SIZE = "6'b010000" *) 
(* REG_WBUF_RAM_SETTING = "9'b000010010" *) (* REG_WR_AXPROT_SEL = "6'b000000" *) (* REG_WR_RATE_CREDIT_DROP = "10'b0000000100" *) 
(* REG_WR_RATE_CREDIT_LIMIT = "13'b0000100000000" *) (* REG_WR_VCA_TOKEN0 = "8'b00010000" *) 
module ulp_inst_0_axi_noc_kernel0_0_bd_0ad1_M00_INI_stub_nmu_0_top
   (IF_NOC_AXI_WVALID,
    IF_NOC_AXI_WREADY,
    IF_NOC_AXI_WLAST,
    IF_NOC_AXI_WDATA,
    IF_NOC_AXI_WSTRB,
    IF_NOC_AXI_ARREADY,
    IF_NOC_AXI_AWREADY,
    IF_NOC_AXI_BRESP,
    IF_NOC_AXI_BVALID,
    IF_NOC_AXI_RDATA,
    IF_NOC_AXI_RLAST,
    IF_NOC_AXI_RRESP,
    IF_NOC_AXI_RVALID,
    IF_NOC_NPP_IN_NOC_CREDIT_RETURN,
    IF_NOC_NPP_OUT_NOC_CREDIT_RDY,
    IF_NOC_NPP_OUT_NOC_FLIT,
    IF_NOC_NPP_OUT_NOC_VALID,
    aclk,
    IF_NOC_AXI_ARADDR,
    IF_NOC_AXI_ARBURST,
    IF_NOC_AXI_ARCACHE,
    IF_NOC_AXI_ARLEN,
    IF_NOC_AXI_ARLOCK,
    IF_NOC_AXI_ARPROT,
    IF_NOC_AXI_ARQOS,
    IF_NOC_AXI_ARREGION,
    IF_NOC_AXI_ARSIZE,
    NMU_RD_DEST_MODE,
    NMU_WR_DEST_MODE,
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
    IF_NOC_AXI_AWVALID,
    IF_NOC_AXI_BREADY,
    IF_NOC_AXI_RREADY,
    IF_NOC_NPP_IN_NOC_CREDIT_RDY,
    IF_NOC_NPP_IN_NOC_FLIT,
    IF_NOC_NPP_IN_NOC_VALID,
    IF_NOC_NPP_OUT_NOC_CREDIT_RETURN,
    NMU,
    NMU_WR_USR_DST,
    NMU_RD_USR_DST);
  input IF_NOC_AXI_WVALID;
  output IF_NOC_AXI_WREADY;
  input [0:0]IF_NOC_AXI_WLAST;
  input [511:0]IF_NOC_AXI_WDATA;
  input [63:0]IF_NOC_AXI_WSTRB;
  output IF_NOC_AXI_ARREADY;
  output IF_NOC_AXI_AWREADY;
  output [1:0]IF_NOC_AXI_BRESP;
  output IF_NOC_AXI_BVALID;
  output [511:0]IF_NOC_AXI_RDATA;
  output [0:0]IF_NOC_AXI_RLAST;
  output [1:0]IF_NOC_AXI_RRESP;
  output IF_NOC_AXI_RVALID;
  output [7:0]IF_NOC_NPP_IN_NOC_CREDIT_RETURN;
  output IF_NOC_NPP_OUT_NOC_CREDIT_RDY;
  output [181:0]IF_NOC_NPP_OUT_NOC_FLIT;
  output [7:0]IF_NOC_NPP_OUT_NOC_VALID;
  input aclk;
  input [0:0]IF_NOC_AXI_ARADDR;
  input [1:0]IF_NOC_AXI_ARBURST;
  input [3:0]IF_NOC_AXI_ARCACHE;
  input [7:0]IF_NOC_AXI_ARLEN;
  input [0:0]IF_NOC_AXI_ARLOCK;
  input [2:0]IF_NOC_AXI_ARPROT;
  input [3:0]IF_NOC_AXI_ARQOS;
  input [3:0]IF_NOC_AXI_ARREGION;
  input [2:0]IF_NOC_AXI_ARSIZE;
  input NMU_RD_DEST_MODE;
  input NMU_WR_DEST_MODE;
  input IF_NOC_AXI_ARVALID;
  input [0:0]IF_NOC_AXI_AWADDR;
  input [1:0]IF_NOC_AXI_AWBURST;
  input [3:0]IF_NOC_AXI_AWCACHE;
  input [7:0]IF_NOC_AXI_AWLEN;
  input [0:0]IF_NOC_AXI_AWLOCK;
  input [2:0]IF_NOC_AXI_AWPROT;
  input [3:0]IF_NOC_AXI_AWQOS;
  input [3:0]IF_NOC_AXI_AWREGION;
  input [2:0]IF_NOC_AXI_AWSIZE;
  input IF_NOC_AXI_AWVALID;
  input IF_NOC_AXI_BREADY;
  input IF_NOC_AXI_RREADY;
  input IF_NOC_NPP_IN_NOC_CREDIT_RDY;
  input [181:0]IF_NOC_NPP_IN_NOC_FLIT;
  input [7:0]IF_NOC_NPP_IN_NOC_VALID;
  input [7:0]IF_NOC_NPP_OUT_NOC_CREDIT_RETURN;
  output NMU;
  input [11:0]NMU_WR_USR_DST;
  input [11:0]NMU_RD_USR_DST;

  wire [0:0]IF_NOC_AXI_ARADDR;
  wire [1:0]IF_NOC_AXI_ARBURST;
  wire [3:0]IF_NOC_AXI_ARCACHE;
  wire [7:0]IF_NOC_AXI_ARLEN;
  wire [0:0]IF_NOC_AXI_ARLOCK;
  wire [2:0]IF_NOC_AXI_ARPROT;
  wire [3:0]IF_NOC_AXI_ARQOS;
  wire IF_NOC_AXI_ARREADY;
  wire [3:0]IF_NOC_AXI_ARREGION;
  wire [2:0]IF_NOC_AXI_ARSIZE;
  wire IF_NOC_AXI_ARVALID;
  wire [0:0]IF_NOC_AXI_AWADDR;
  wire [1:0]IF_NOC_AXI_AWBURST;
  wire [3:0]IF_NOC_AXI_AWCACHE;
  wire [7:0]IF_NOC_AXI_AWLEN;
  wire [0:0]IF_NOC_AXI_AWLOCK;
  wire [2:0]IF_NOC_AXI_AWPROT;
  wire [3:0]IF_NOC_AXI_AWQOS;
  wire IF_NOC_AXI_AWREADY;
  wire [3:0]IF_NOC_AXI_AWREGION;
  wire [2:0]IF_NOC_AXI_AWSIZE;
  wire IF_NOC_AXI_AWVALID;
  wire IF_NOC_AXI_BREADY;
  wire [1:0]IF_NOC_AXI_BRESP;
  wire IF_NOC_AXI_BVALID;
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
  wire NMU;
  wire NMU_RD_DEST_MODE;
  wire [11:0]NMU_RD_USR_DST;
  wire NMU_WR_DEST_MODE;
  wire [11:0]NMU_WR_USR_DST;
  wire aclk;
  wire NLW_NOC_NMU512_INST_IF_NOC_AXI_RPOISON_UNCONNECTED;
  wire NLW_NOC_NMU512_INST_IF_NOC_NPP_IN_NOC_CREDIT_RETURN_EN_UNCONNECTED;
  wire NLW_NOC_NMU512_INST_IF_NOC_NPP_OUT_NOC_FLIT_EN_UNCONNECTED;
  wire NLW_NOC_NMU512_INST_IF_NOC_NPP_OUT_NOC_VALID_EN_UNCONNECTED;
  wire [15:0]NLW_NOC_NMU512_INST_IF_NOC_AXI_BID_UNCONNECTED;
  wire [15:0]NLW_NOC_NMU512_INST_IF_NOC_AXI_BUSER_UNCONNECTED;
  wire [63:0]NLW_NOC_NMU512_INST_IF_NOC_AXI_RDATA_PAR_UNCONNECTED;
  wire [15:0]NLW_NOC_NMU512_INST_IF_NOC_AXI_RID_UNCONNECTED;
  wire [15:0]NLW_NOC_NMU512_INST_IF_NOC_AXI_RUSER_UNCONNECTED;
  wire [9:0]NLW_NOC_NMU512_INST_IF_NOC_AXI_TDEST_UNCONNECTED;

  (* BOX_TYPE = "PRIMITIVE" *) 
  (* DONT_TOUCH *) 
  NOC_NMU512 #(
    .REG_ADDR_DST0(16'h0000),
    .REG_ADDR_DST1(16'h0000),
    .REG_ADDR_DST10(16'h0000),
    .REG_ADDR_DST11(16'h0000),
    .REG_ADDR_DST12(16'h0000),
    .REG_ADDR_DST13(16'h0000),
    .REG_ADDR_DST14(16'h0000),
    .REG_ADDR_DST15(16'h0000),
    .REG_ADDR_DST2(16'h0000),
    .REG_ADDR_DST3(16'h0000),
    .REG_ADDR_DST4(16'h0000),
    .REG_ADDR_DST5(16'h0000),
    .REG_ADDR_DST6(16'h0000),
    .REG_ADDR_DST7(16'h0000),
    .REG_ADDR_DST8(16'h0000),
    .REG_ADDR_DST9(16'h0000),
    .REG_ADDR_ENABLE(16'h0000),
    .REG_ADDR_MADDR0(32'h00000000),
    .REG_ADDR_MADDR1(32'h00000000),
    .REG_ADDR_MADDR10(32'h00000000),
    .REG_ADDR_MADDR11(32'h00000000),
    .REG_ADDR_MADDR12(32'h00000000),
    .REG_ADDR_MADDR13(32'h00000000),
    .REG_ADDR_MADDR14(32'h00000000),
    .REG_ADDR_MADDR15(32'h00000000),
    .REG_ADDR_MADDR2(32'h00000000),
    .REG_ADDR_MADDR3(32'h00000000),
    .REG_ADDR_MADDR4(32'h00000000),
    .REG_ADDR_MADDR5(32'h00000000),
    .REG_ADDR_MADDR6(32'h00000000),
    .REG_ADDR_MADDR7(32'h00000000),
    .REG_ADDR_MADDR8(32'h00000000),
    .REG_ADDR_MADDR9(32'h00000000),
    .REG_ADDR_MASK0(32'h00000000),
    .REG_ADDR_MASK1(32'h00000000),
    .REG_ADDR_MASK10(32'h00000000),
    .REG_ADDR_MASK11(32'h00000000),
    .REG_ADDR_MASK12(32'h00000000),
    .REG_ADDR_MASK13(32'h00000000),
    .REG_ADDR_MASK14(32'h00000000),
    .REG_ADDR_MASK15(32'h00000000),
    .REG_ADDR_MASK2(32'h00000000),
    .REG_ADDR_MASK3(32'h00000000),
    .REG_ADDR_MASK4(32'h00000000),
    .REG_ADDR_MASK5(32'h00000000),
    .REG_ADDR_MASK6(32'h00000000),
    .REG_ADDR_MASK7(32'h00000000),
    .REG_ADDR_MASK8(32'h00000000),
    .REG_ADDR_MASK9(32'h00000000),
    .REG_ADDR_REMAP(16'h0000),
    .REG_ADDR_RPADDR0(32'h00000000),
    .REG_ADDR_RPADDR1(32'h00000000),
    .REG_ADDR_RPADDR10(32'h00000000),
    .REG_ADDR_RPADDR11(32'h00000000),
    .REG_ADDR_RPADDR12(32'h00000000),
    .REG_ADDR_RPADDR13(32'h00000000),
    .REG_ADDR_RPADDR14(32'h00000000),
    .REG_ADDR_RPADDR15(32'h00000000),
    .REG_ADDR_RPADDR2(32'h00000000),
    .REG_ADDR_RPADDR3(32'h00000000),
    .REG_ADDR_RPADDR4(32'h00000000),
    .REG_ADDR_RPADDR5(32'h00000000),
    .REG_ADDR_RPADDR6(32'h00000000),
    .REG_ADDR_RPADDR7(32'h00000000),
    .REG_ADDR_RPADDR8(32'h00000000),
    .REG_ADDR_RPADDR9(32'h00000000),
    .REG_ADR_MAP_CPM(12'hFC0),
    .REG_ADR_MAP_FPD_AFI_0(12'hFC0),
    .REG_ADR_MAP_FPD_AFI_1(12'hFC0),
    .REG_ADR_MAP_LPD_AFI_FS(12'hFC0),
    .REG_ADR_MAP_ME_ARRAY_0(12'hFC0),
    .REG_ADR_MAP_ME_ARRAY_1(12'hFC0),
    .REG_ADR_MAP_ME_ARRAY_2(12'hFC0),
    .REG_ADR_MAP_ME_ARRAY_3(12'hFC0),
    .REG_ADR_MAP_PCIE(12'hFC0),
    .REG_ADR_MAP_PMC(12'hFC0),
    .REG_ADR_MAP_PMC_ALIAS_0(12'hFC0),
    .REG_ADR_MAP_PMC_ALIAS_1(12'hFC0),
    .REG_ADR_MAP_PMC_ALIAS_2(12'hFC0),
    .REG_ADR_MAP_PMC_ALIAS_3(12'hFC0),
    .REG_ADR_MAP_QSPI(12'hFC0),
    .REG_ADR_MAP_STM_GIC(12'hFC0),
    .REG_ADR_MAP_XPDS(12'hFC0),
    .REG_AXI_NON_MOD_DISABLE(1'h0),
    .REG_AXI_PAR_CHK(2'h0),
    .REG_CHOPSIZE(4'hA),
    .REG_DDR_ADR_MAP0(15'h6688),
    .REG_DDR_ADR_MAP1(15'h1FFF),
    .REG_DDR_ADR_MAP2(15'h1FFF),
    .REG_DDR_ADR_MAP3(15'h1FFF),
    .REG_DDR_ADR_MAP4(15'h1FFF),
    .REG_DDR_ADR_MAP5(15'h1FFF),
    .REG_DDR_ADR_MAP6(15'h1FFF),
    .REG_DDR_DST_MAP0(12'h880),
    .REG_DDR_DST_MAP1(12'h580),
    .REG_DDR_DST_MAP2(12'h780),
    .REG_DDR_DST_MAP3(12'h680),
    .REG_DDR_DST_MAP4(12'hFC0),
    .REG_DDR_DST_MAP5(12'hFC0),
    .REG_DDR_DST_MAP6(12'hFC0),
    .REG_DDR_DST_MAP7(12'hFC0),
    .REG_DWIDTH(3'h6),
    .REG_ECC_CHK_EN(1'h1),
    .REG_HBM_MAP_T0_CH0(12'hFC0),
    .REG_HBM_MAP_T0_CH1(12'hFC0),
    .REG_HBM_MAP_T0_CH10(12'hFC0),
    .REG_HBM_MAP_T0_CH11(12'hFC0),
    .REG_HBM_MAP_T0_CH12(12'hFC0),
    .REG_HBM_MAP_T0_CH13(12'hFC0),
    .REG_HBM_MAP_T0_CH14(12'hFC0),
    .REG_HBM_MAP_T0_CH15(12'hFC0),
    .REG_HBM_MAP_T0_CH2(12'hFC0),
    .REG_HBM_MAP_T0_CH3(12'hFC0),
    .REG_HBM_MAP_T0_CH4(12'hFC0),
    .REG_HBM_MAP_T0_CH5(12'hFC0),
    .REG_HBM_MAP_T0_CH6(12'hFC0),
    .REG_HBM_MAP_T0_CH7(12'hFC0),
    .REG_HBM_MAP_T0_CH8(12'hFC0),
    .REG_HBM_MAP_T0_CH9(12'hFC0),
    .REG_HBM_MAP_T1_CH0(12'hFC0),
    .REG_HBM_MAP_T1_CH1(12'hFC0),
    .REG_HBM_MAP_T1_CH10(12'hFC0),
    .REG_HBM_MAP_T1_CH11(12'hFC0),
    .REG_HBM_MAP_T1_CH12(12'hFC0),
    .REG_HBM_MAP_T1_CH13(12'hFC0),
    .REG_HBM_MAP_T1_CH14(12'hFC0),
    .REG_HBM_MAP_T1_CH15(12'hFC0),
    .REG_HBM_MAP_T1_CH2(12'hFC0),
    .REG_HBM_MAP_T1_CH3(12'hFC0),
    .REG_HBM_MAP_T1_CH4(12'hFC0),
    .REG_HBM_MAP_T1_CH5(12'hFC0),
    .REG_HBM_MAP_T1_CH6(12'hFC0),
    .REG_HBM_MAP_T1_CH7(12'hFC0),
    .REG_HBM_MAP_T1_CH8(12'hFC0),
    .REG_HBM_MAP_T1_CH9(12'hFC0),
    .REG_HBM_MAP_T2_CH0(12'hFC0),
    .REG_HBM_MAP_T2_CH1(12'hFC0),
    .REG_HBM_MAP_T2_CH10(12'hFC0),
    .REG_HBM_MAP_T2_CH11(12'hFC0),
    .REG_HBM_MAP_T2_CH12(12'hFC0),
    .REG_HBM_MAP_T2_CH13(12'hFC0),
    .REG_HBM_MAP_T2_CH14(12'hFC0),
    .REG_HBM_MAP_T2_CH15(12'hFC0),
    .REG_HBM_MAP_T2_CH2(12'hFC0),
    .REG_HBM_MAP_T2_CH3(12'hFC0),
    .REG_HBM_MAP_T2_CH4(12'hFC0),
    .REG_HBM_MAP_T2_CH5(12'hFC0),
    .REG_HBM_MAP_T2_CH6(12'hFC0),
    .REG_HBM_MAP_T2_CH7(12'hFC0),
    .REG_HBM_MAP_T2_CH8(12'hFC0),
    .REG_HBM_MAP_T2_CH9(12'hFC0),
    .REG_HBM_MAP_T3_CH0(12'hFC0),
    .REG_HBM_MAP_T3_CH1(12'hFC0),
    .REG_HBM_MAP_T3_CH10(12'hFC0),
    .REG_HBM_MAP_T3_CH11(12'hFC0),
    .REG_HBM_MAP_T3_CH12(12'hFC0),
    .REG_HBM_MAP_T3_CH13(12'hFC0),
    .REG_HBM_MAP_T3_CH14(12'hFC0),
    .REG_HBM_MAP_T3_CH15(12'hFC0),
    .REG_HBM_MAP_T3_CH2(12'hFC0),
    .REG_HBM_MAP_T3_CH3(12'hFC0),
    .REG_HBM_MAP_T3_CH4(12'hFC0),
    .REG_HBM_MAP_T3_CH5(12'hFC0),
    .REG_HBM_MAP_T3_CH6(12'hFC0),
    .REG_HBM_MAP_T3_CH7(12'hFC0),
    .REG_HBM_MAP_T3_CH8(12'hFC0),
    .REG_HBM_MAP_T3_CH9(12'hFC0),
    .REG_MODE_SELECT(16'h0000),
    .REG_OUTSTANDING_RD_TXN(7'h40),
    .REG_OUTSTANDING_WR_TXN(7'h40),
    .REG_PRIORITY(2'h0),
    .REG_RD_AXPROT_SEL(6'h00),
    .REG_RD_RATE_CREDIT_DROP(10'h004),
    .REG_RD_RATE_CREDIT_LIMIT(13'h0100),
    .REG_RD_VCA_TOKEN0(8'h14),
    .REG_RPOISON_TO_SLVERR(1'h0),
    .REG_RROB_RAM_SETTING(9'h012),
    .REG_SMID_SEL(20'h00000),
    .REG_SRC(12'h140),
    .REG_TBASE_AXI_TIMEOUT(4'h1),
    .REG_TBASE_MODE_RLIMIT_RD(3'h2),
    .REG_TBASE_MODE_RLIMIT_WR(3'h2),
    .REG_TBASE_TRK_TIMEOUT(4'h1),
    .REG_VC_MAP(12'hEA8),
    .REG_WBUF_LAUNCH_SIZE(6'h10),
    .REG_WBUF_RAM_SETTING(9'h012),
    .REG_WR_AXPROT_SEL(6'h00),
    .REG_WR_RATE_CREDIT_DROP(10'h004),
    .REG_WR_RATE_CREDIT_LIMIT(13'h0100),
    .REG_WR_VCA_TOKEN0(8'h10)) 
    NOC_NMU512_INST
       (.CLK(aclk),
        .IF_NOC_AXI_ARADDR({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,IF_NOC_AXI_ARADDR}),
        .IF_NOC_AXI_ARADDR_PAR({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .IF_NOC_AXI_ARBURST(IF_NOC_AXI_ARBURST),
        .IF_NOC_AXI_ARCACHE(IF_NOC_AXI_ARCACHE),
        .IF_NOC_AXI_ARID({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .IF_NOC_AXI_ARLEN(IF_NOC_AXI_ARLEN),
        .IF_NOC_AXI_ARLOCK(IF_NOC_AXI_ARLOCK),
        .IF_NOC_AXI_ARPROT(IF_NOC_AXI_ARPROT),
        .IF_NOC_AXI_ARQOS(IF_NOC_AXI_ARQOS),
        .IF_NOC_AXI_ARREADY(IF_NOC_AXI_ARREADY),
        .IF_NOC_AXI_ARREGION(IF_NOC_AXI_ARREGION),
        .IF_NOC_AXI_ARSIZE(IF_NOC_AXI_ARSIZE),
        .IF_NOC_AXI_ARUSER({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .IF_NOC_AXI_ARVALID(IF_NOC_AXI_ARVALID),
        .IF_NOC_AXI_AWADDR({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,IF_NOC_AXI_AWADDR}),
        .IF_NOC_AXI_AWADDR_PAR({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .IF_NOC_AXI_AWBURST(IF_NOC_AXI_AWBURST),
        .IF_NOC_AXI_AWCACHE(IF_NOC_AXI_AWCACHE),
        .IF_NOC_AXI_AWID({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .IF_NOC_AXI_AWLEN(IF_NOC_AXI_AWLEN),
        .IF_NOC_AXI_AWLOCK(IF_NOC_AXI_AWLOCK),
        .IF_NOC_AXI_AWPROT(IF_NOC_AXI_AWPROT),
        .IF_NOC_AXI_AWQOS(IF_NOC_AXI_AWQOS),
        .IF_NOC_AXI_AWREADY(IF_NOC_AXI_AWREADY),
        .IF_NOC_AXI_AWREGION(IF_NOC_AXI_AWREGION),
        .IF_NOC_AXI_AWSIZE(IF_NOC_AXI_AWSIZE),
        .IF_NOC_AXI_AWUSER({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .IF_NOC_AXI_AWVALID(IF_NOC_AXI_AWVALID),
        .IF_NOC_AXI_BID(NLW_NOC_NMU512_INST_IF_NOC_AXI_BID_UNCONNECTED[15:0]),
        .IF_NOC_AXI_BREADY(IF_NOC_AXI_BREADY),
        .IF_NOC_AXI_BRESP(IF_NOC_AXI_BRESP),
        .IF_NOC_AXI_BUSER(NLW_NOC_NMU512_INST_IF_NOC_AXI_BUSER_UNCONNECTED[15:0]),
        .IF_NOC_AXI_BVALID(IF_NOC_AXI_BVALID),
        .IF_NOC_AXI_RDATA(IF_NOC_AXI_RDATA),
        .IF_NOC_AXI_RDATA_PAR(NLW_NOC_NMU512_INST_IF_NOC_AXI_RDATA_PAR_UNCONNECTED[63:0]),
        .IF_NOC_AXI_RID(NLW_NOC_NMU512_INST_IF_NOC_AXI_RID_UNCONNECTED[15:0]),
        .IF_NOC_AXI_RLAST(IF_NOC_AXI_RLAST),
        .IF_NOC_AXI_RPOISON(NLW_NOC_NMU512_INST_IF_NOC_AXI_RPOISON_UNCONNECTED),
        .IF_NOC_AXI_RREADY(IF_NOC_AXI_RREADY),
        .IF_NOC_AXI_RRESP(IF_NOC_AXI_RRESP),
        .IF_NOC_AXI_RUSER(NLW_NOC_NMU512_INST_IF_NOC_AXI_RUSER_UNCONNECTED[15:0]),
        .IF_NOC_AXI_RVALID(IF_NOC_AXI_RVALID),
        .IF_NOC_AXI_TDEST(NLW_NOC_NMU512_INST_IF_NOC_AXI_TDEST_UNCONNECTED[9:0]),
        .IF_NOC_AXI_WDATA(IF_NOC_AXI_WDATA),
        .IF_NOC_AXI_WDATA_PAR({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .IF_NOC_AXI_WID({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .IF_NOC_AXI_WLAST(IF_NOC_AXI_WLAST),
        .IF_NOC_AXI_WPOISON(1'b0),
        .IF_NOC_AXI_WREADY(IF_NOC_AXI_WREADY),
        .IF_NOC_AXI_WSTRB(IF_NOC_AXI_WSTRB),
        .IF_NOC_AXI_WUSER({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .IF_NOC_AXI_WVALID(IF_NOC_AXI_WVALID),
        .IF_NOC_NPP_IN_NOC_CREDIT_RDY(IF_NOC_NPP_IN_NOC_CREDIT_RDY),
        .IF_NOC_NPP_IN_NOC_CREDIT_RETURN(IF_NOC_NPP_IN_NOC_CREDIT_RETURN),
        .IF_NOC_NPP_IN_NOC_CREDIT_RETURN_EN(NLW_NOC_NMU512_INST_IF_NOC_NPP_IN_NOC_CREDIT_RETURN_EN_UNCONNECTED),
        .IF_NOC_NPP_IN_NOC_FLIT(IF_NOC_NPP_IN_NOC_FLIT),
        .IF_NOC_NPP_IN_NOC_FLIT_EN(1'b1),
        .IF_NOC_NPP_IN_NOC_VALID(IF_NOC_NPP_IN_NOC_VALID),
        .IF_NOC_NPP_IN_NOC_VALID_EN(1'b1),
        .IF_NOC_NPP_OUT_NOC_CREDIT_RDY(IF_NOC_NPP_OUT_NOC_CREDIT_RDY),
        .IF_NOC_NPP_OUT_NOC_CREDIT_RETURN(IF_NOC_NPP_OUT_NOC_CREDIT_RETURN),
        .IF_NOC_NPP_OUT_NOC_CREDIT_RETURN_EN(1'b1),
        .IF_NOC_NPP_OUT_NOC_FLIT(IF_NOC_NPP_OUT_NOC_FLIT),
        .IF_NOC_NPP_OUT_NOC_FLIT_EN(NLW_NOC_NMU512_INST_IF_NOC_NPP_OUT_NOC_FLIT_EN_UNCONNECTED),
        .IF_NOC_NPP_OUT_NOC_VALID(IF_NOC_NPP_OUT_NOC_VALID),
        .IF_NOC_NPP_OUT_NOC_VALID_EN(NLW_NOC_NMU512_INST_IF_NOC_NPP_OUT_NOC_VALID_EN_UNCONNECTED),
        .NMU(NMU),
        .NMU_RD_DEST_MODE(NMU_RD_DEST_MODE),
        .NMU_RD_USR_DST(NMU_RD_USR_DST),
        .NMU_USR_INTERRUPT_IN({1'b0,1'b0,1'b0,1'b0}),
        .NMU_WR_DEST_MODE(NMU_WR_DEST_MODE),
        .NMU_WR_USR_DST(NMU_WR_USR_DST));
endmodule

(* CHECK_LICENSE_TYPE = "noc_nmu_0,noc_nmu_v1_0_0_0,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* ORIG_REF_NAME = "bd_0ad1_M01_INI_stub_nmu_0" *) 
(* X_CORE_INFO = "noc_nmu_v1_0_0_0,Vivado 2018.1.0" *) 
module ulp_inst_0_axi_noc_kernel0_0_bd_0ad1_M01_INI_stub_nmu_0
   (IF_NOC_AXI_WVALID,
    IF_NOC_AXI_WREADY,
    IF_NOC_AXI_WLAST,
    IF_NOC_AXI_WDATA,
    IF_NOC_AXI_WSTRB,
    IF_NOC_AXI_ARREADY,
    IF_NOC_AXI_AWREADY,
    IF_NOC_AXI_BRESP,
    IF_NOC_AXI_BVALID,
    IF_NOC_AXI_RDATA,
    IF_NOC_AXI_RLAST,
    IF_NOC_AXI_RRESP,
    IF_NOC_AXI_RVALID,
    IF_NOC_AXI_ARADDR,
    IF_NOC_AXI_ARBURST,
    IF_NOC_AXI_ARCACHE,
    IF_NOC_AXI_ARLEN,
    IF_NOC_AXI_ARLOCK,
    IF_NOC_AXI_ARPROT,
    IF_NOC_AXI_ARQOS,
    IF_NOC_AXI_ARREGION,
    IF_NOC_AXI_ARSIZE,
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
    IF_NOC_AXI_AWVALID,
    IF_NOC_AXI_BREADY,
    IF_NOC_AXI_RREADY,
    NMU_RD_DEST_MODE,
    NMU_WR_DEST_MODE,
    IF_NOC_NPP_IN_NOC_CREDIT_RETURN,
    IF_NOC_NPP_OUT_NOC_CREDIT_RDY,
    IF_NOC_NPP_OUT_NOC_FLIT,
    IF_NOC_NPP_OUT_NOC_VALID,
    aclk,
    IF_NOC_NPP_IN_NOC_CREDIT_RDY,
    IF_NOC_NPP_IN_NOC_FLIT,
    IF_NOC_NPP_IN_NOC_VALID,
    IF_NOC_NPP_OUT_NOC_CREDIT_RETURN,
    NMU,
    NMU_WR_USR_DST,
    NMU_RD_USR_DST);
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SAXI4 WVALID" *) input IF_NOC_AXI_WVALID;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SAXI4 WREADY" *) output IF_NOC_AXI_WREADY;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SAXI4 WLAST" *) input [0:0]IF_NOC_AXI_WLAST;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SAXI4 WDATA" *) input [511:0]IF_NOC_AXI_WDATA;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SAXI4 WSTRB" *) input [63:0]IF_NOC_AXI_WSTRB;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SAXI4 ARREADY" *) output IF_NOC_AXI_ARREADY;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SAXI4 AWREADY" *) output IF_NOC_AXI_AWREADY;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SAXI4 BRESP" *) output [1:0]IF_NOC_AXI_BRESP;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SAXI4 BVALID" *) output IF_NOC_AXI_BVALID;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SAXI4 RDATA" *) output [511:0]IF_NOC_AXI_RDATA;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SAXI4 RLAST" *) output [0:0]IF_NOC_AXI_RLAST;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SAXI4 RRESP" *) output [1:0]IF_NOC_AXI_RRESP;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SAXI4 RVALID" *) output IF_NOC_AXI_RVALID;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SAXI4 ARADDR" *) input [0:0]IF_NOC_AXI_ARADDR;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SAXI4 ARBURST" *) input [1:0]IF_NOC_AXI_ARBURST;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SAXI4 ARCACHE" *) input [3:0]IF_NOC_AXI_ARCACHE;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SAXI4 ARLEN" *) input [7:0]IF_NOC_AXI_ARLEN;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SAXI4 ARLOCK" *) input [0:0]IF_NOC_AXI_ARLOCK;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SAXI4 ARPROT" *) input [2:0]IF_NOC_AXI_ARPROT;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SAXI4 ARQOS" *) input [3:0]IF_NOC_AXI_ARQOS;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SAXI4 ARREGION" *) input [3:0]IF_NOC_AXI_ARREGION;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SAXI4 ARSIZE" *) input [2:0]IF_NOC_AXI_ARSIZE;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SAXI4 ARVALID" *) input IF_NOC_AXI_ARVALID;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SAXI4 AWADDR" *) input [0:0]IF_NOC_AXI_AWADDR;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SAXI4 AWBURST" *) input [1:0]IF_NOC_AXI_AWBURST;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SAXI4 AWCACHE" *) input [3:0]IF_NOC_AXI_AWCACHE;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SAXI4 AWLEN" *) input [7:0]IF_NOC_AXI_AWLEN;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SAXI4 AWLOCK" *) input [0:0]IF_NOC_AXI_AWLOCK;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SAXI4 AWPROT" *) input [2:0]IF_NOC_AXI_AWPROT;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SAXI4 AWQOS" *) input [3:0]IF_NOC_AXI_AWQOS;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SAXI4 AWREGION" *) input [3:0]IF_NOC_AXI_AWREGION;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SAXI4 AWSIZE" *) input [2:0]IF_NOC_AXI_AWSIZE;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SAXI4 AWVALID" *) input IF_NOC_AXI_AWVALID;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SAXI4 BREADY" *) input IF_NOC_AXI_BREADY;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SAXI4 RREADY" *) input IF_NOC_AXI_RREADY;
  input NMU_RD_DEST_MODE;
  input NMU_WR_DEST_MODE;
  (* X_INTERFACE_INFO = "xilinx.com:interface:npp:1.0 SNPP CREDIT_RETURN" *) output [7:0]IF_NOC_NPP_IN_NOC_CREDIT_RETURN;
  (* X_INTERFACE_INFO = "xilinx.com:interface:npp:1.0 MNPP CREDIT_RDY" *) output IF_NOC_NPP_OUT_NOC_CREDIT_RDY;
  (* X_INTERFACE_INFO = "xilinx.com:interface:npp:1.0 MNPP FLIT" *) output [181:0]IF_NOC_NPP_OUT_NOC_FLIT;
  (* X_INTERFACE_INFO = "xilinx.com:interface:npp:1.0 MNPP VALID" *) output [7:0]IF_NOC_NPP_OUT_NOC_VALID;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 aclk aclk" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME aclk, ASSOCIATED_BUSIF SAXI4:SAXI_STREAM, FREQ_HZ 100000000, PHASE 0.000" *) input aclk;
  (* X_INTERFACE_INFO = "xilinx.com:interface:npp:1.0 SNPP CREDIT_RDY" *) input IF_NOC_NPP_IN_NOC_CREDIT_RDY;
  (* X_INTERFACE_INFO = "xilinx.com:interface:npp:1.0 SNPP FLIT" *) input [181:0]IF_NOC_NPP_IN_NOC_FLIT;
  (* X_INTERFACE_INFO = "xilinx.com:interface:npp:1.0 SNPP VALID" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME SNPP, IN_SYNTHESIS_HDL NO, CAN_DEBUG false" *) input [7:0]IF_NOC_NPP_IN_NOC_VALID;
  (* X_INTERFACE_INFO = "xilinx.com:interface:npp:1.0 MNPP CREDIT_RETURN" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME MNPP, IN_SYNTHESIS_HDL NO, CAN_DEBUG false" *) input [7:0]IF_NOC_NPP_OUT_NOC_CREDIT_RETURN;
  (* dont_touch = "true" *) output NMU;
  input [11:0]NMU_WR_USR_DST;
  input [11:0]NMU_RD_USR_DST;

  wire [0:0]IF_NOC_AXI_ARADDR;
  wire [1:0]IF_NOC_AXI_ARBURST;
  wire [3:0]IF_NOC_AXI_ARCACHE;
  wire [7:0]IF_NOC_AXI_ARLEN;
  wire [0:0]IF_NOC_AXI_ARLOCK;
  wire [2:0]IF_NOC_AXI_ARPROT;
  wire [3:0]IF_NOC_AXI_ARQOS;
  wire IF_NOC_AXI_ARREADY;
  wire [3:0]IF_NOC_AXI_ARREGION;
  wire [2:0]IF_NOC_AXI_ARSIZE;
  wire IF_NOC_AXI_ARVALID;
  wire [0:0]IF_NOC_AXI_AWADDR;
  wire [1:0]IF_NOC_AXI_AWBURST;
  wire [3:0]IF_NOC_AXI_AWCACHE;
  wire [7:0]IF_NOC_AXI_AWLEN;
  wire [0:0]IF_NOC_AXI_AWLOCK;
  wire [2:0]IF_NOC_AXI_AWPROT;
  wire [3:0]IF_NOC_AXI_AWQOS;
  wire IF_NOC_AXI_AWREADY;
  wire [3:0]IF_NOC_AXI_AWREGION;
  wire [2:0]IF_NOC_AXI_AWSIZE;
  wire IF_NOC_AXI_AWVALID;
  wire IF_NOC_AXI_BREADY;
  wire [1:0]IF_NOC_AXI_BRESP;
  wire IF_NOC_AXI_BVALID;
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
  (* DONT_TOUCH *) wire NMU;
  wire NMU_RD_DEST_MODE;
  wire [11:0]NMU_RD_USR_DST;
  wire NMU_WR_DEST_MODE;
  wire [11:0]NMU_WR_USR_DST;
  wire aclk;

  (* REG_ADDR_DST0 = "16'b0000000000000000" *) 
  (* REG_ADDR_DST1 = "16'b0000000000000000" *) 
  (* REG_ADDR_DST10 = "16'b0000000000000000" *) 
  (* REG_ADDR_DST11 = "16'b0000000000000000" *) 
  (* REG_ADDR_DST12 = "16'b0000000000000000" *) 
  (* REG_ADDR_DST13 = "16'b0000000000000000" *) 
  (* REG_ADDR_DST14 = "16'b0000000000000000" *) 
  (* REG_ADDR_DST15 = "16'b0000000000000000" *) 
  (* REG_ADDR_DST2 = "16'b0000000000000000" *) 
  (* REG_ADDR_DST3 = "16'b0000000000000000" *) 
  (* REG_ADDR_DST4 = "16'b0000000000000000" *) 
  (* REG_ADDR_DST5 = "16'b0000000000000000" *) 
  (* REG_ADDR_DST6 = "16'b0000000000000000" *) 
  (* REG_ADDR_DST7 = "16'b0000000000000000" *) 
  (* REG_ADDR_DST8 = "16'b0000000000000000" *) 
  (* REG_ADDR_DST9 = "16'b0000000000000000" *) 
  (* REG_ADDR_ENABLE = "16'b0000000000000000" *) 
  (* REG_ADDR_MADDR0 = "32'b00000000000000000000000000000000" *) 
  (* REG_ADDR_MADDR1 = "32'b00000000000000000000000000000000" *) 
  (* REG_ADDR_MADDR10 = "32'b00000000000000000000000000000000" *) 
  (* REG_ADDR_MADDR11 = "32'b00000000000000000000000000000000" *) 
  (* REG_ADDR_MADDR12 = "32'b00000000000000000000000000000000" *) 
  (* REG_ADDR_MADDR13 = "32'b00000000000000000000000000000000" *) 
  (* REG_ADDR_MADDR14 = "32'b00000000000000000000000000000000" *) 
  (* REG_ADDR_MADDR15 = "32'b00000000000000000000000000000000" *) 
  (* REG_ADDR_MADDR2 = "32'b00000000000000000000000000000000" *) 
  (* REG_ADDR_MADDR3 = "32'b00000000000000000000000000000000" *) 
  (* REG_ADDR_MADDR4 = "32'b00000000000000000000000000000000" *) 
  (* REG_ADDR_MADDR5 = "32'b00000000000000000000000000000000" *) 
  (* REG_ADDR_MADDR6 = "32'b00000000000000000000000000000000" *) 
  (* REG_ADDR_MADDR7 = "32'b00000000000000000000000000000000" *) 
  (* REG_ADDR_MADDR8 = "32'b00000000000000000000000000000000" *) 
  (* REG_ADDR_MADDR9 = "32'b00000000000000000000000000000000" *) 
  (* REG_ADDR_MASK0 = "32'b00000000000000000000000000000000" *) 
  (* REG_ADDR_MASK1 = "32'b00000000000000000000000000000000" *) 
  (* REG_ADDR_MASK10 = "32'b00000000000000000000000000000000" *) 
  (* REG_ADDR_MASK11 = "32'b00000000000000000000000000000000" *) 
  (* REG_ADDR_MASK12 = "32'b00000000000000000000000000000000" *) 
  (* REG_ADDR_MASK13 = "32'b00000000000000000000000000000000" *) 
  (* REG_ADDR_MASK14 = "32'b00000000000000000000000000000000" *) 
  (* REG_ADDR_MASK15 = "32'b00000000000000000000000000000000" *) 
  (* REG_ADDR_MASK2 = "32'b00000000000000000000000000000000" *) 
  (* REG_ADDR_MASK3 = "32'b00000000000000000000000000000000" *) 
  (* REG_ADDR_MASK4 = "32'b00000000000000000000000000000000" *) 
  (* REG_ADDR_MASK5 = "32'b00000000000000000000000000000000" *) 
  (* REG_ADDR_MASK6 = "32'b00000000000000000000000000000000" *) 
  (* REG_ADDR_MASK7 = "32'b00000000000000000000000000000000" *) 
  (* REG_ADDR_MASK8 = "32'b00000000000000000000000000000000" *) 
  (* REG_ADDR_MASK9 = "32'b00000000000000000000000000000000" *) 
  (* REG_ADDR_REMAP = "16'b0000000000000000" *) 
  (* REG_ADDR_RPADDR0 = "32'b00000000000000000000000000000000" *) 
  (* REG_ADDR_RPADDR1 = "32'b00000000000000000000000000000000" *) 
  (* REG_ADDR_RPADDR10 = "32'b00000000000000000000000000000000" *) 
  (* REG_ADDR_RPADDR11 = "32'b00000000000000000000000000000000" *) 
  (* REG_ADDR_RPADDR12 = "32'b00000000000000000000000000000000" *) 
  (* REG_ADDR_RPADDR13 = "32'b00000000000000000000000000000000" *) 
  (* REG_ADDR_RPADDR14 = "32'b00000000000000000000000000000000" *) 
  (* REG_ADDR_RPADDR15 = "32'b00000000000000000000000000000000" *) 
  (* REG_ADDR_RPADDR2 = "32'b00000000000000000000000000000000" *) 
  (* REG_ADDR_RPADDR3 = "32'b00000000000000000000000000000000" *) 
  (* REG_ADDR_RPADDR4 = "32'b00000000000000000000000000000000" *) 
  (* REG_ADDR_RPADDR5 = "32'b00000000000000000000000000000000" *) 
  (* REG_ADDR_RPADDR6 = "32'b00000000000000000000000000000000" *) 
  (* REG_ADDR_RPADDR7 = "32'b00000000000000000000000000000000" *) 
  (* REG_ADDR_RPADDR8 = "32'b00000000000000000000000000000000" *) 
  (* REG_ADDR_RPADDR9 = "32'b00000000000000000000000000000000" *) 
  (* REG_ADR_MAP_CPM = "12'b111111000000" *) 
  (* REG_ADR_MAP_FPD_AFI_0 = "12'b111111000000" *) 
  (* REG_ADR_MAP_FPD_AFI_1 = "12'b111111000000" *) 
  (* REG_ADR_MAP_LPD_AFI_FS = "12'b111111000000" *) 
  (* REG_ADR_MAP_ME_ARRAY_0 = "12'b111111000000" *) 
  (* REG_ADR_MAP_ME_ARRAY_1 = "12'b111111000000" *) 
  (* REG_ADR_MAP_ME_ARRAY_2 = "12'b111111000000" *) 
  (* REG_ADR_MAP_ME_ARRAY_3 = "12'b111111000000" *) 
  (* REG_ADR_MAP_PCIE = "12'b111111000000" *) 
  (* REG_ADR_MAP_PMC = "12'b111111000000" *) 
  (* REG_ADR_MAP_PMC_ALIAS_0 = "12'b111111000000" *) 
  (* REG_ADR_MAP_PMC_ALIAS_1 = "12'b111111000000" *) 
  (* REG_ADR_MAP_PMC_ALIAS_2 = "12'b111111000000" *) 
  (* REG_ADR_MAP_PMC_ALIAS_3 = "12'b111111000000" *) 
  (* REG_ADR_MAP_QSPI = "12'b111111000000" *) 
  (* REG_ADR_MAP_STM_GIC = "12'b111111000000" *) 
  (* REG_ADR_MAP_XPDS = "12'b111111000000" *) 
  (* REG_AXI_NON_MOD_DISABLE = "1'b0" *) 
  (* REG_AXI_PAR_CHK = "2'b00" *) 
  (* REG_CHOPSIZE = "4'b1010" *) 
  (* REG_DDR_ADR_MAP0 = "15'b110011010001000" *) 
  (* REG_DDR_ADR_MAP1 = "15'b001111111111111" *) 
  (* REG_DDR_ADR_MAP2 = "15'b001111111111111" *) 
  (* REG_DDR_ADR_MAP3 = "15'b001111111111111" *) 
  (* REG_DDR_ADR_MAP4 = "15'b001111111111111" *) 
  (* REG_DDR_ADR_MAP5 = "15'b001111111111111" *) 
  (* REG_DDR_ADR_MAP6 = "15'b001111111111111" *) 
  (* REG_DDR_DST_MAP0 = "12'b100011000000" *) 
  (* REG_DDR_DST_MAP1 = "12'b010111000000" *) 
  (* REG_DDR_DST_MAP2 = "12'b011111000000" *) 
  (* REG_DDR_DST_MAP3 = "12'b011011000000" *) 
  (* REG_DDR_DST_MAP4 = "12'b111111000000" *) 
  (* REG_DDR_DST_MAP5 = "12'b111111000000" *) 
  (* REG_DDR_DST_MAP6 = "12'b111111000000" *) 
  (* REG_DDR_DST_MAP7 = "12'b111111000000" *) 
  (* REG_DWIDTH = "3'b110" *) 
  (* REG_ECC_CHK_EN = "1'b1" *) 
  (* REG_HBM_MAP_T0_CH0 = "12'b111111000000" *) 
  (* REG_HBM_MAP_T0_CH1 = "12'b111111000000" *) 
  (* REG_HBM_MAP_T0_CH10 = "12'b111111000000" *) 
  (* REG_HBM_MAP_T0_CH11 = "12'b111111000000" *) 
  (* REG_HBM_MAP_T0_CH12 = "12'b111111000000" *) 
  (* REG_HBM_MAP_T0_CH13 = "12'b111111000000" *) 
  (* REG_HBM_MAP_T0_CH14 = "12'b111111000000" *) 
  (* REG_HBM_MAP_T0_CH15 = "12'b111111000000" *) 
  (* REG_HBM_MAP_T0_CH2 = "12'b111111000000" *) 
  (* REG_HBM_MAP_T0_CH3 = "12'b111111000000" *) 
  (* REG_HBM_MAP_T0_CH4 = "12'b111111000000" *) 
  (* REG_HBM_MAP_T0_CH5 = "12'b111111000000" *) 
  (* REG_HBM_MAP_T0_CH6 = "12'b111111000000" *) 
  (* REG_HBM_MAP_T0_CH7 = "12'b111111000000" *) 
  (* REG_HBM_MAP_T0_CH8 = "12'b111111000000" *) 
  (* REG_HBM_MAP_T0_CH9 = "12'b111111000000" *) 
  (* REG_HBM_MAP_T1_CH0 = "12'b111111000000" *) 
  (* REG_HBM_MAP_T1_CH1 = "12'b111111000000" *) 
  (* REG_HBM_MAP_T1_CH10 = "12'b111111000000" *) 
  (* REG_HBM_MAP_T1_CH11 = "12'b111111000000" *) 
  (* REG_HBM_MAP_T1_CH12 = "12'b111111000000" *) 
  (* REG_HBM_MAP_T1_CH13 = "12'b111111000000" *) 
  (* REG_HBM_MAP_T1_CH14 = "12'b111111000000" *) 
  (* REG_HBM_MAP_T1_CH15 = "12'b111111000000" *) 
  (* REG_HBM_MAP_T1_CH2 = "12'b111111000000" *) 
  (* REG_HBM_MAP_T1_CH3 = "12'b111111000000" *) 
  (* REG_HBM_MAP_T1_CH4 = "12'b111111000000" *) 
  (* REG_HBM_MAP_T1_CH5 = "12'b111111000000" *) 
  (* REG_HBM_MAP_T1_CH6 = "12'b111111000000" *) 
  (* REG_HBM_MAP_T1_CH7 = "12'b111111000000" *) 
  (* REG_HBM_MAP_T1_CH8 = "12'b111111000000" *) 
  (* REG_HBM_MAP_T1_CH9 = "12'b111111000000" *) 
  (* REG_HBM_MAP_T2_CH0 = "12'b111111000000" *) 
  (* REG_HBM_MAP_T2_CH1 = "12'b111111000000" *) 
  (* REG_HBM_MAP_T2_CH10 = "12'b111111000000" *) 
  (* REG_HBM_MAP_T2_CH11 = "12'b111111000000" *) 
  (* REG_HBM_MAP_T2_CH12 = "12'b111111000000" *) 
  (* REG_HBM_MAP_T2_CH13 = "12'b111111000000" *) 
  (* REG_HBM_MAP_T2_CH14 = "12'b111111000000" *) 
  (* REG_HBM_MAP_T2_CH15 = "12'b111111000000" *) 
  (* REG_HBM_MAP_T2_CH2 = "12'b111111000000" *) 
  (* REG_HBM_MAP_T2_CH3 = "12'b111111000000" *) 
  (* REG_HBM_MAP_T2_CH4 = "12'b111111000000" *) 
  (* REG_HBM_MAP_T2_CH5 = "12'b111111000000" *) 
  (* REG_HBM_MAP_T2_CH6 = "12'b111111000000" *) 
  (* REG_HBM_MAP_T2_CH7 = "12'b111111000000" *) 
  (* REG_HBM_MAP_T2_CH8 = "12'b111111000000" *) 
  (* REG_HBM_MAP_T2_CH9 = "12'b111111000000" *) 
  (* REG_HBM_MAP_T3_CH0 = "12'b111111000000" *) 
  (* REG_HBM_MAP_T3_CH1 = "12'b111111000000" *) 
  (* REG_HBM_MAP_T3_CH10 = "12'b111111000000" *) 
  (* REG_HBM_MAP_T3_CH11 = "12'b111111000000" *) 
  (* REG_HBM_MAP_T3_CH12 = "12'b111111000000" *) 
  (* REG_HBM_MAP_T3_CH13 = "12'b111111000000" *) 
  (* REG_HBM_MAP_T3_CH14 = "12'b111111000000" *) 
  (* REG_HBM_MAP_T3_CH15 = "12'b111111000000" *) 
  (* REG_HBM_MAP_T3_CH2 = "12'b111111000000" *) 
  (* REG_HBM_MAP_T3_CH3 = "12'b111111000000" *) 
  (* REG_HBM_MAP_T3_CH4 = "12'b111111000000" *) 
  (* REG_HBM_MAP_T3_CH5 = "12'b111111000000" *) 
  (* REG_HBM_MAP_T3_CH6 = "12'b111111000000" *) 
  (* REG_HBM_MAP_T3_CH7 = "12'b111111000000" *) 
  (* REG_HBM_MAP_T3_CH8 = "12'b111111000000" *) 
  (* REG_HBM_MAP_T3_CH9 = "12'b111111000000" *) 
  (* REG_MODE_SELECT = "16'b0000000000000000" *) 
  (* REG_OUTSTANDING_RD_TXN = "7'b1000000" *) 
  (* REG_OUTSTANDING_WR_TXN = "7'b1000000" *) 
  (* REG_PRIORITY = "2'b00" *) 
  (* REG_RD_AXPROT_SEL = "6'b000000" *) 
  (* REG_RD_RATE_CREDIT_DROP = "10'b0000000100" *) 
  (* REG_RD_RATE_CREDIT_LIMIT = "13'b0000100000000" *) 
  (* REG_RD_VCA_TOKEN0 = "8'b00010100" *) 
  (* REG_RPOISON_TO_SLVERR = "1'b0" *) 
  (* REG_RROB_RAM_SETTING = "9'b000010010" *) 
  (* REG_SMID_SEL = "20'b00000000000000000000" *) 
  (* REG_SRC = "12'b000010000000" *) 
  (* REG_TBASE_AXI_TIMEOUT = "3'b001" *) 
  (* REG_TBASE_MODE_RLIMIT_RD = "3'b010" *) 
  (* REG_TBASE_MODE_RLIMIT_WR = "3'b010" *) 
  (* REG_TBASE_TRK_TIMEOUT = "3'b001" *) 
  (* REG_VC_MAP = "12'b111110101100" *) 
  (* REG_WBUF_LAUNCH_SIZE = "6'b010000" *) 
  (* REG_WBUF_RAM_SETTING = "9'b000010010" *) 
  (* REG_WR_AXPROT_SEL = "6'b000000" *) 
  (* REG_WR_RATE_CREDIT_DROP = "10'b0000000100" *) 
  (* REG_WR_RATE_CREDIT_LIMIT = "13'b0000100000000" *) 
  (* REG_WR_VCA_TOKEN0 = "8'b00010000" *) 
  ulp_inst_0_axi_noc_kernel0_0_bd_0ad1_M01_INI_stub_nmu_0_top bd_0ad1_M01_INI_stub_nmu_0_top_INST
       (.IF_NOC_AXI_ARADDR(IF_NOC_AXI_ARADDR),
        .IF_NOC_AXI_ARBURST(IF_NOC_AXI_ARBURST),
        .IF_NOC_AXI_ARCACHE(IF_NOC_AXI_ARCACHE),
        .IF_NOC_AXI_ARLEN(IF_NOC_AXI_ARLEN),
        .IF_NOC_AXI_ARLOCK(IF_NOC_AXI_ARLOCK),
        .IF_NOC_AXI_ARPROT(IF_NOC_AXI_ARPROT),
        .IF_NOC_AXI_ARQOS(IF_NOC_AXI_ARQOS),
        .IF_NOC_AXI_ARREADY(IF_NOC_AXI_ARREADY),
        .IF_NOC_AXI_ARREGION(IF_NOC_AXI_ARREGION),
        .IF_NOC_AXI_ARSIZE(IF_NOC_AXI_ARSIZE),
        .IF_NOC_AXI_ARVALID(IF_NOC_AXI_ARVALID),
        .IF_NOC_AXI_AWADDR(IF_NOC_AXI_AWADDR),
        .IF_NOC_AXI_AWBURST(IF_NOC_AXI_AWBURST),
        .IF_NOC_AXI_AWCACHE(IF_NOC_AXI_AWCACHE),
        .IF_NOC_AXI_AWLEN(IF_NOC_AXI_AWLEN),
        .IF_NOC_AXI_AWLOCK(IF_NOC_AXI_AWLOCK),
        .IF_NOC_AXI_AWPROT(IF_NOC_AXI_AWPROT),
        .IF_NOC_AXI_AWQOS(IF_NOC_AXI_AWQOS),
        .IF_NOC_AXI_AWREADY(IF_NOC_AXI_AWREADY),
        .IF_NOC_AXI_AWREGION(IF_NOC_AXI_AWREGION),
        .IF_NOC_AXI_AWSIZE(IF_NOC_AXI_AWSIZE),
        .IF_NOC_AXI_AWVALID(IF_NOC_AXI_AWVALID),
        .IF_NOC_AXI_BREADY(IF_NOC_AXI_BREADY),
        .IF_NOC_AXI_BRESP(IF_NOC_AXI_BRESP),
        .IF_NOC_AXI_BVALID(IF_NOC_AXI_BVALID),
        .IF_NOC_AXI_RDATA(IF_NOC_AXI_RDATA),
        .IF_NOC_AXI_RLAST(IF_NOC_AXI_RLAST),
        .IF_NOC_AXI_RREADY(IF_NOC_AXI_RREADY),
        .IF_NOC_AXI_RRESP(IF_NOC_AXI_RRESP),
        .IF_NOC_AXI_RVALID(IF_NOC_AXI_RVALID),
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
        .NMU(NMU),
        .NMU_RD_DEST_MODE(NMU_RD_DEST_MODE),
        .NMU_RD_USR_DST(NMU_RD_USR_DST),
        .NMU_WR_DEST_MODE(NMU_WR_DEST_MODE),
        .NMU_WR_USR_DST(NMU_WR_USR_DST),
        .aclk(aclk));
endmodule

(* ORIG_REF_NAME = "bd_0ad1_M01_INI_stub_nmu_0_top" *) (* REG_ADDR_DST0 = "16'b0000000000000000" *) (* REG_ADDR_DST1 = "16'b0000000000000000" *) 
(* REG_ADDR_DST10 = "16'b0000000000000000" *) (* REG_ADDR_DST11 = "16'b0000000000000000" *) (* REG_ADDR_DST12 = "16'b0000000000000000" *) 
(* REG_ADDR_DST13 = "16'b0000000000000000" *) (* REG_ADDR_DST14 = "16'b0000000000000000" *) (* REG_ADDR_DST15 = "16'b0000000000000000" *) 
(* REG_ADDR_DST2 = "16'b0000000000000000" *) (* REG_ADDR_DST3 = "16'b0000000000000000" *) (* REG_ADDR_DST4 = "16'b0000000000000000" *) 
(* REG_ADDR_DST5 = "16'b0000000000000000" *) (* REG_ADDR_DST6 = "16'b0000000000000000" *) (* REG_ADDR_DST7 = "16'b0000000000000000" *) 
(* REG_ADDR_DST8 = "16'b0000000000000000" *) (* REG_ADDR_DST9 = "16'b0000000000000000" *) (* REG_ADDR_ENABLE = "16'b0000000000000000" *) 
(* REG_ADDR_MADDR0 = "32'b00000000000000000000000000000000" *) (* REG_ADDR_MADDR1 = "32'b00000000000000000000000000000000" *) (* REG_ADDR_MADDR10 = "32'b00000000000000000000000000000000" *) 
(* REG_ADDR_MADDR11 = "32'b00000000000000000000000000000000" *) (* REG_ADDR_MADDR12 = "32'b00000000000000000000000000000000" *) (* REG_ADDR_MADDR13 = "32'b00000000000000000000000000000000" *) 
(* REG_ADDR_MADDR14 = "32'b00000000000000000000000000000000" *) (* REG_ADDR_MADDR15 = "32'b00000000000000000000000000000000" *) (* REG_ADDR_MADDR2 = "32'b00000000000000000000000000000000" *) 
(* REG_ADDR_MADDR3 = "32'b00000000000000000000000000000000" *) (* REG_ADDR_MADDR4 = "32'b00000000000000000000000000000000" *) (* REG_ADDR_MADDR5 = "32'b00000000000000000000000000000000" *) 
(* REG_ADDR_MADDR6 = "32'b00000000000000000000000000000000" *) (* REG_ADDR_MADDR7 = "32'b00000000000000000000000000000000" *) (* REG_ADDR_MADDR8 = "32'b00000000000000000000000000000000" *) 
(* REG_ADDR_MADDR9 = "32'b00000000000000000000000000000000" *) (* REG_ADDR_MASK0 = "32'b00000000000000000000000000000000" *) (* REG_ADDR_MASK1 = "32'b00000000000000000000000000000000" *) 
(* REG_ADDR_MASK10 = "32'b00000000000000000000000000000000" *) (* REG_ADDR_MASK11 = "32'b00000000000000000000000000000000" *) (* REG_ADDR_MASK12 = "32'b00000000000000000000000000000000" *) 
(* REG_ADDR_MASK13 = "32'b00000000000000000000000000000000" *) (* REG_ADDR_MASK14 = "32'b00000000000000000000000000000000" *) (* REG_ADDR_MASK15 = "32'b00000000000000000000000000000000" *) 
(* REG_ADDR_MASK2 = "32'b00000000000000000000000000000000" *) (* REG_ADDR_MASK3 = "32'b00000000000000000000000000000000" *) (* REG_ADDR_MASK4 = "32'b00000000000000000000000000000000" *) 
(* REG_ADDR_MASK5 = "32'b00000000000000000000000000000000" *) (* REG_ADDR_MASK6 = "32'b00000000000000000000000000000000" *) (* REG_ADDR_MASK7 = "32'b00000000000000000000000000000000" *) 
(* REG_ADDR_MASK8 = "32'b00000000000000000000000000000000" *) (* REG_ADDR_MASK9 = "32'b00000000000000000000000000000000" *) (* REG_ADDR_REMAP = "16'b0000000000000000" *) 
(* REG_ADDR_RPADDR0 = "32'b00000000000000000000000000000000" *) (* REG_ADDR_RPADDR1 = "32'b00000000000000000000000000000000" *) (* REG_ADDR_RPADDR10 = "32'b00000000000000000000000000000000" *) 
(* REG_ADDR_RPADDR11 = "32'b00000000000000000000000000000000" *) (* REG_ADDR_RPADDR12 = "32'b00000000000000000000000000000000" *) (* REG_ADDR_RPADDR13 = "32'b00000000000000000000000000000000" *) 
(* REG_ADDR_RPADDR14 = "32'b00000000000000000000000000000000" *) (* REG_ADDR_RPADDR15 = "32'b00000000000000000000000000000000" *) (* REG_ADDR_RPADDR2 = "32'b00000000000000000000000000000000" *) 
(* REG_ADDR_RPADDR3 = "32'b00000000000000000000000000000000" *) (* REG_ADDR_RPADDR4 = "32'b00000000000000000000000000000000" *) (* REG_ADDR_RPADDR5 = "32'b00000000000000000000000000000000" *) 
(* REG_ADDR_RPADDR6 = "32'b00000000000000000000000000000000" *) (* REG_ADDR_RPADDR7 = "32'b00000000000000000000000000000000" *) (* REG_ADDR_RPADDR8 = "32'b00000000000000000000000000000000" *) 
(* REG_ADDR_RPADDR9 = "32'b00000000000000000000000000000000" *) (* REG_ADR_MAP_CPM = "12'b111111000000" *) (* REG_ADR_MAP_FPD_AFI_0 = "12'b111111000000" *) 
(* REG_ADR_MAP_FPD_AFI_1 = "12'b111111000000" *) (* REG_ADR_MAP_LPD_AFI_FS = "12'b111111000000" *) (* REG_ADR_MAP_ME_ARRAY_0 = "12'b111111000000" *) 
(* REG_ADR_MAP_ME_ARRAY_1 = "12'b111111000000" *) (* REG_ADR_MAP_ME_ARRAY_2 = "12'b111111000000" *) (* REG_ADR_MAP_ME_ARRAY_3 = "12'b111111000000" *) 
(* REG_ADR_MAP_PCIE = "12'b111111000000" *) (* REG_ADR_MAP_PMC = "12'b111111000000" *) (* REG_ADR_MAP_PMC_ALIAS_0 = "12'b111111000000" *) 
(* REG_ADR_MAP_PMC_ALIAS_1 = "12'b111111000000" *) (* REG_ADR_MAP_PMC_ALIAS_2 = "12'b111111000000" *) (* REG_ADR_MAP_PMC_ALIAS_3 = "12'b111111000000" *) 
(* REG_ADR_MAP_QSPI = "12'b111111000000" *) (* REG_ADR_MAP_STM_GIC = "12'b111111000000" *) (* REG_ADR_MAP_XPDS = "12'b111111000000" *) 
(* REG_AXI_NON_MOD_DISABLE = "1'b0" *) (* REG_AXI_PAR_CHK = "2'b00" *) (* REG_CHOPSIZE = "4'b1010" *) 
(* REG_DDR_ADR_MAP0 = "15'b110011010001000" *) (* REG_DDR_ADR_MAP1 = "15'b001111111111111" *) (* REG_DDR_ADR_MAP2 = "15'b001111111111111" *) 
(* REG_DDR_ADR_MAP3 = "15'b001111111111111" *) (* REG_DDR_ADR_MAP4 = "15'b001111111111111" *) (* REG_DDR_ADR_MAP5 = "15'b001111111111111" *) 
(* REG_DDR_ADR_MAP6 = "15'b001111111111111" *) (* REG_DDR_DST_MAP0 = "12'b100011000000" *) (* REG_DDR_DST_MAP1 = "12'b010111000000" *) 
(* REG_DDR_DST_MAP2 = "12'b011111000000" *) (* REG_DDR_DST_MAP3 = "12'b011011000000" *) (* REG_DDR_DST_MAP4 = "12'b111111000000" *) 
(* REG_DDR_DST_MAP5 = "12'b111111000000" *) (* REG_DDR_DST_MAP6 = "12'b111111000000" *) (* REG_DDR_DST_MAP7 = "12'b111111000000" *) 
(* REG_DWIDTH = "3'b110" *) (* REG_ECC_CHK_EN = "1'b1" *) (* REG_HBM_MAP_T0_CH0 = "12'b111111000000" *) 
(* REG_HBM_MAP_T0_CH1 = "12'b111111000000" *) (* REG_HBM_MAP_T0_CH10 = "12'b111111000000" *) (* REG_HBM_MAP_T0_CH11 = "12'b111111000000" *) 
(* REG_HBM_MAP_T0_CH12 = "12'b111111000000" *) (* REG_HBM_MAP_T0_CH13 = "12'b111111000000" *) (* REG_HBM_MAP_T0_CH14 = "12'b111111000000" *) 
(* REG_HBM_MAP_T0_CH15 = "12'b111111000000" *) (* REG_HBM_MAP_T0_CH2 = "12'b111111000000" *) (* REG_HBM_MAP_T0_CH3 = "12'b111111000000" *) 
(* REG_HBM_MAP_T0_CH4 = "12'b111111000000" *) (* REG_HBM_MAP_T0_CH5 = "12'b111111000000" *) (* REG_HBM_MAP_T0_CH6 = "12'b111111000000" *) 
(* REG_HBM_MAP_T0_CH7 = "12'b111111000000" *) (* REG_HBM_MAP_T0_CH8 = "12'b111111000000" *) (* REG_HBM_MAP_T0_CH9 = "12'b111111000000" *) 
(* REG_HBM_MAP_T1_CH0 = "12'b111111000000" *) (* REG_HBM_MAP_T1_CH1 = "12'b111111000000" *) (* REG_HBM_MAP_T1_CH10 = "12'b111111000000" *) 
(* REG_HBM_MAP_T1_CH11 = "12'b111111000000" *) (* REG_HBM_MAP_T1_CH12 = "12'b111111000000" *) (* REG_HBM_MAP_T1_CH13 = "12'b111111000000" *) 
(* REG_HBM_MAP_T1_CH14 = "12'b111111000000" *) (* REG_HBM_MAP_T1_CH15 = "12'b111111000000" *) (* REG_HBM_MAP_T1_CH2 = "12'b111111000000" *) 
(* REG_HBM_MAP_T1_CH3 = "12'b111111000000" *) (* REG_HBM_MAP_T1_CH4 = "12'b111111000000" *) (* REG_HBM_MAP_T1_CH5 = "12'b111111000000" *) 
(* REG_HBM_MAP_T1_CH6 = "12'b111111000000" *) (* REG_HBM_MAP_T1_CH7 = "12'b111111000000" *) (* REG_HBM_MAP_T1_CH8 = "12'b111111000000" *) 
(* REG_HBM_MAP_T1_CH9 = "12'b111111000000" *) (* REG_HBM_MAP_T2_CH0 = "12'b111111000000" *) (* REG_HBM_MAP_T2_CH1 = "12'b111111000000" *) 
(* REG_HBM_MAP_T2_CH10 = "12'b111111000000" *) (* REG_HBM_MAP_T2_CH11 = "12'b111111000000" *) (* REG_HBM_MAP_T2_CH12 = "12'b111111000000" *) 
(* REG_HBM_MAP_T2_CH13 = "12'b111111000000" *) (* REG_HBM_MAP_T2_CH14 = "12'b111111000000" *) (* REG_HBM_MAP_T2_CH15 = "12'b111111000000" *) 
(* REG_HBM_MAP_T2_CH2 = "12'b111111000000" *) (* REG_HBM_MAP_T2_CH3 = "12'b111111000000" *) (* REG_HBM_MAP_T2_CH4 = "12'b111111000000" *) 
(* REG_HBM_MAP_T2_CH5 = "12'b111111000000" *) (* REG_HBM_MAP_T2_CH6 = "12'b111111000000" *) (* REG_HBM_MAP_T2_CH7 = "12'b111111000000" *) 
(* REG_HBM_MAP_T2_CH8 = "12'b111111000000" *) (* REG_HBM_MAP_T2_CH9 = "12'b111111000000" *) (* REG_HBM_MAP_T3_CH0 = "12'b111111000000" *) 
(* REG_HBM_MAP_T3_CH1 = "12'b111111000000" *) (* REG_HBM_MAP_T3_CH10 = "12'b111111000000" *) (* REG_HBM_MAP_T3_CH11 = "12'b111111000000" *) 
(* REG_HBM_MAP_T3_CH12 = "12'b111111000000" *) (* REG_HBM_MAP_T3_CH13 = "12'b111111000000" *) (* REG_HBM_MAP_T3_CH14 = "12'b111111000000" *) 
(* REG_HBM_MAP_T3_CH15 = "12'b111111000000" *) (* REG_HBM_MAP_T3_CH2 = "12'b111111000000" *) (* REG_HBM_MAP_T3_CH3 = "12'b111111000000" *) 
(* REG_HBM_MAP_T3_CH4 = "12'b111111000000" *) (* REG_HBM_MAP_T3_CH5 = "12'b111111000000" *) (* REG_HBM_MAP_T3_CH6 = "12'b111111000000" *) 
(* REG_HBM_MAP_T3_CH7 = "12'b111111000000" *) (* REG_HBM_MAP_T3_CH8 = "12'b111111000000" *) (* REG_HBM_MAP_T3_CH9 = "12'b111111000000" *) 
(* REG_MODE_SELECT = "16'b0000000000000000" *) (* REG_OUTSTANDING_RD_TXN = "7'b1000000" *) (* REG_OUTSTANDING_WR_TXN = "7'b1000000" *) 
(* REG_PRIORITY = "2'b00" *) (* REG_RD_AXPROT_SEL = "6'b000000" *) (* REG_RD_RATE_CREDIT_DROP = "10'b0000000100" *) 
(* REG_RD_RATE_CREDIT_LIMIT = "13'b0000100000000" *) (* REG_RD_VCA_TOKEN0 = "8'b00010100" *) (* REG_RPOISON_TO_SLVERR = "1'b0" *) 
(* REG_RROB_RAM_SETTING = "9'b000010010" *) (* REG_SMID_SEL = "20'b00000000000000000000" *) (* REG_SRC = "12'b000010000000" *) 
(* REG_TBASE_AXI_TIMEOUT = "3'b001" *) (* REG_TBASE_MODE_RLIMIT_RD = "3'b010" *) (* REG_TBASE_MODE_RLIMIT_WR = "3'b010" *) 
(* REG_TBASE_TRK_TIMEOUT = "3'b001" *) (* REG_VC_MAP = "12'b111110101100" *) (* REG_WBUF_LAUNCH_SIZE = "6'b010000" *) 
(* REG_WBUF_RAM_SETTING = "9'b000010010" *) (* REG_WR_AXPROT_SEL = "6'b000000" *) (* REG_WR_RATE_CREDIT_DROP = "10'b0000000100" *) 
(* REG_WR_RATE_CREDIT_LIMIT = "13'b0000100000000" *) (* REG_WR_VCA_TOKEN0 = "8'b00010000" *) 
module ulp_inst_0_axi_noc_kernel0_0_bd_0ad1_M01_INI_stub_nmu_0_top
   (IF_NOC_AXI_WVALID,
    IF_NOC_AXI_WREADY,
    IF_NOC_AXI_WLAST,
    IF_NOC_AXI_WDATA,
    IF_NOC_AXI_WSTRB,
    IF_NOC_AXI_ARREADY,
    IF_NOC_AXI_AWREADY,
    IF_NOC_AXI_BRESP,
    IF_NOC_AXI_BVALID,
    IF_NOC_AXI_RDATA,
    IF_NOC_AXI_RLAST,
    IF_NOC_AXI_RRESP,
    IF_NOC_AXI_RVALID,
    IF_NOC_NPP_IN_NOC_CREDIT_RETURN,
    IF_NOC_NPP_OUT_NOC_CREDIT_RDY,
    IF_NOC_NPP_OUT_NOC_FLIT,
    IF_NOC_NPP_OUT_NOC_VALID,
    aclk,
    IF_NOC_AXI_ARADDR,
    IF_NOC_AXI_ARBURST,
    IF_NOC_AXI_ARCACHE,
    IF_NOC_AXI_ARLEN,
    IF_NOC_AXI_ARLOCK,
    IF_NOC_AXI_ARPROT,
    IF_NOC_AXI_ARQOS,
    IF_NOC_AXI_ARREGION,
    IF_NOC_AXI_ARSIZE,
    NMU_RD_DEST_MODE,
    NMU_WR_DEST_MODE,
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
    IF_NOC_AXI_AWVALID,
    IF_NOC_AXI_BREADY,
    IF_NOC_AXI_RREADY,
    IF_NOC_NPP_IN_NOC_CREDIT_RDY,
    IF_NOC_NPP_IN_NOC_FLIT,
    IF_NOC_NPP_IN_NOC_VALID,
    IF_NOC_NPP_OUT_NOC_CREDIT_RETURN,
    NMU,
    NMU_WR_USR_DST,
    NMU_RD_USR_DST);
  input IF_NOC_AXI_WVALID;
  output IF_NOC_AXI_WREADY;
  input [0:0]IF_NOC_AXI_WLAST;
  input [511:0]IF_NOC_AXI_WDATA;
  input [63:0]IF_NOC_AXI_WSTRB;
  output IF_NOC_AXI_ARREADY;
  output IF_NOC_AXI_AWREADY;
  output [1:0]IF_NOC_AXI_BRESP;
  output IF_NOC_AXI_BVALID;
  output [511:0]IF_NOC_AXI_RDATA;
  output [0:0]IF_NOC_AXI_RLAST;
  output [1:0]IF_NOC_AXI_RRESP;
  output IF_NOC_AXI_RVALID;
  output [7:0]IF_NOC_NPP_IN_NOC_CREDIT_RETURN;
  output IF_NOC_NPP_OUT_NOC_CREDIT_RDY;
  output [181:0]IF_NOC_NPP_OUT_NOC_FLIT;
  output [7:0]IF_NOC_NPP_OUT_NOC_VALID;
  input aclk;
  input [0:0]IF_NOC_AXI_ARADDR;
  input [1:0]IF_NOC_AXI_ARBURST;
  input [3:0]IF_NOC_AXI_ARCACHE;
  input [7:0]IF_NOC_AXI_ARLEN;
  input [0:0]IF_NOC_AXI_ARLOCK;
  input [2:0]IF_NOC_AXI_ARPROT;
  input [3:0]IF_NOC_AXI_ARQOS;
  input [3:0]IF_NOC_AXI_ARREGION;
  input [2:0]IF_NOC_AXI_ARSIZE;
  input NMU_RD_DEST_MODE;
  input NMU_WR_DEST_MODE;
  input IF_NOC_AXI_ARVALID;
  input [0:0]IF_NOC_AXI_AWADDR;
  input [1:0]IF_NOC_AXI_AWBURST;
  input [3:0]IF_NOC_AXI_AWCACHE;
  input [7:0]IF_NOC_AXI_AWLEN;
  input [0:0]IF_NOC_AXI_AWLOCK;
  input [2:0]IF_NOC_AXI_AWPROT;
  input [3:0]IF_NOC_AXI_AWQOS;
  input [3:0]IF_NOC_AXI_AWREGION;
  input [2:0]IF_NOC_AXI_AWSIZE;
  input IF_NOC_AXI_AWVALID;
  input IF_NOC_AXI_BREADY;
  input IF_NOC_AXI_RREADY;
  input IF_NOC_NPP_IN_NOC_CREDIT_RDY;
  input [181:0]IF_NOC_NPP_IN_NOC_FLIT;
  input [7:0]IF_NOC_NPP_IN_NOC_VALID;
  input [7:0]IF_NOC_NPP_OUT_NOC_CREDIT_RETURN;
  output NMU;
  input [11:0]NMU_WR_USR_DST;
  input [11:0]NMU_RD_USR_DST;

  wire [0:0]IF_NOC_AXI_ARADDR;
  wire [1:0]IF_NOC_AXI_ARBURST;
  wire [3:0]IF_NOC_AXI_ARCACHE;
  wire [7:0]IF_NOC_AXI_ARLEN;
  wire [0:0]IF_NOC_AXI_ARLOCK;
  wire [2:0]IF_NOC_AXI_ARPROT;
  wire [3:0]IF_NOC_AXI_ARQOS;
  wire IF_NOC_AXI_ARREADY;
  wire [3:0]IF_NOC_AXI_ARREGION;
  wire [2:0]IF_NOC_AXI_ARSIZE;
  wire IF_NOC_AXI_ARVALID;
  wire [0:0]IF_NOC_AXI_AWADDR;
  wire [1:0]IF_NOC_AXI_AWBURST;
  wire [3:0]IF_NOC_AXI_AWCACHE;
  wire [7:0]IF_NOC_AXI_AWLEN;
  wire [0:0]IF_NOC_AXI_AWLOCK;
  wire [2:0]IF_NOC_AXI_AWPROT;
  wire [3:0]IF_NOC_AXI_AWQOS;
  wire IF_NOC_AXI_AWREADY;
  wire [3:0]IF_NOC_AXI_AWREGION;
  wire [2:0]IF_NOC_AXI_AWSIZE;
  wire IF_NOC_AXI_AWVALID;
  wire IF_NOC_AXI_BREADY;
  wire [1:0]IF_NOC_AXI_BRESP;
  wire IF_NOC_AXI_BVALID;
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
  wire NMU;
  wire NMU_RD_DEST_MODE;
  wire [11:0]NMU_RD_USR_DST;
  wire NMU_WR_DEST_MODE;
  wire [11:0]NMU_WR_USR_DST;
  wire aclk;
  wire NLW_NOC_NMU512_INST_IF_NOC_AXI_RPOISON_UNCONNECTED;
  wire NLW_NOC_NMU512_INST_IF_NOC_NPP_IN_NOC_CREDIT_RETURN_EN_UNCONNECTED;
  wire NLW_NOC_NMU512_INST_IF_NOC_NPP_OUT_NOC_FLIT_EN_UNCONNECTED;
  wire NLW_NOC_NMU512_INST_IF_NOC_NPP_OUT_NOC_VALID_EN_UNCONNECTED;
  wire [15:0]NLW_NOC_NMU512_INST_IF_NOC_AXI_BID_UNCONNECTED;
  wire [15:0]NLW_NOC_NMU512_INST_IF_NOC_AXI_BUSER_UNCONNECTED;
  wire [63:0]NLW_NOC_NMU512_INST_IF_NOC_AXI_RDATA_PAR_UNCONNECTED;
  wire [15:0]NLW_NOC_NMU512_INST_IF_NOC_AXI_RID_UNCONNECTED;
  wire [15:0]NLW_NOC_NMU512_INST_IF_NOC_AXI_RUSER_UNCONNECTED;
  wire [9:0]NLW_NOC_NMU512_INST_IF_NOC_AXI_TDEST_UNCONNECTED;

  (* BOX_TYPE = "PRIMITIVE" *) 
  (* DONT_TOUCH *) 
  NOC_NMU512 #(
    .REG_ADDR_DST0(16'h0000),
    .REG_ADDR_DST1(16'h0000),
    .REG_ADDR_DST10(16'h0000),
    .REG_ADDR_DST11(16'h0000),
    .REG_ADDR_DST12(16'h0000),
    .REG_ADDR_DST13(16'h0000),
    .REG_ADDR_DST14(16'h0000),
    .REG_ADDR_DST15(16'h0000),
    .REG_ADDR_DST2(16'h0000),
    .REG_ADDR_DST3(16'h0000),
    .REG_ADDR_DST4(16'h0000),
    .REG_ADDR_DST5(16'h0000),
    .REG_ADDR_DST6(16'h0000),
    .REG_ADDR_DST7(16'h0000),
    .REG_ADDR_DST8(16'h0000),
    .REG_ADDR_DST9(16'h0000),
    .REG_ADDR_ENABLE(16'h0000),
    .REG_ADDR_MADDR0(32'h00000000),
    .REG_ADDR_MADDR1(32'h00000000),
    .REG_ADDR_MADDR10(32'h00000000),
    .REG_ADDR_MADDR11(32'h00000000),
    .REG_ADDR_MADDR12(32'h00000000),
    .REG_ADDR_MADDR13(32'h00000000),
    .REG_ADDR_MADDR14(32'h00000000),
    .REG_ADDR_MADDR15(32'h00000000),
    .REG_ADDR_MADDR2(32'h00000000),
    .REG_ADDR_MADDR3(32'h00000000),
    .REG_ADDR_MADDR4(32'h00000000),
    .REG_ADDR_MADDR5(32'h00000000),
    .REG_ADDR_MADDR6(32'h00000000),
    .REG_ADDR_MADDR7(32'h00000000),
    .REG_ADDR_MADDR8(32'h00000000),
    .REG_ADDR_MADDR9(32'h00000000),
    .REG_ADDR_MASK0(32'h00000000),
    .REG_ADDR_MASK1(32'h00000000),
    .REG_ADDR_MASK10(32'h00000000),
    .REG_ADDR_MASK11(32'h00000000),
    .REG_ADDR_MASK12(32'h00000000),
    .REG_ADDR_MASK13(32'h00000000),
    .REG_ADDR_MASK14(32'h00000000),
    .REG_ADDR_MASK15(32'h00000000),
    .REG_ADDR_MASK2(32'h00000000),
    .REG_ADDR_MASK3(32'h00000000),
    .REG_ADDR_MASK4(32'h00000000),
    .REG_ADDR_MASK5(32'h00000000),
    .REG_ADDR_MASK6(32'h00000000),
    .REG_ADDR_MASK7(32'h00000000),
    .REG_ADDR_MASK8(32'h00000000),
    .REG_ADDR_MASK9(32'h00000000),
    .REG_ADDR_REMAP(16'h0000),
    .REG_ADDR_RPADDR0(32'h00000000),
    .REG_ADDR_RPADDR1(32'h00000000),
    .REG_ADDR_RPADDR10(32'h00000000),
    .REG_ADDR_RPADDR11(32'h00000000),
    .REG_ADDR_RPADDR12(32'h00000000),
    .REG_ADDR_RPADDR13(32'h00000000),
    .REG_ADDR_RPADDR14(32'h00000000),
    .REG_ADDR_RPADDR15(32'h00000000),
    .REG_ADDR_RPADDR2(32'h00000000),
    .REG_ADDR_RPADDR3(32'h00000000),
    .REG_ADDR_RPADDR4(32'h00000000),
    .REG_ADDR_RPADDR5(32'h00000000),
    .REG_ADDR_RPADDR6(32'h00000000),
    .REG_ADDR_RPADDR7(32'h00000000),
    .REG_ADDR_RPADDR8(32'h00000000),
    .REG_ADDR_RPADDR9(32'h00000000),
    .REG_ADR_MAP_CPM(12'hFC0),
    .REG_ADR_MAP_FPD_AFI_0(12'hFC0),
    .REG_ADR_MAP_FPD_AFI_1(12'hFC0),
    .REG_ADR_MAP_LPD_AFI_FS(12'hFC0),
    .REG_ADR_MAP_ME_ARRAY_0(12'hFC0),
    .REG_ADR_MAP_ME_ARRAY_1(12'hFC0),
    .REG_ADR_MAP_ME_ARRAY_2(12'hFC0),
    .REG_ADR_MAP_ME_ARRAY_3(12'hFC0),
    .REG_ADR_MAP_PCIE(12'hFC0),
    .REG_ADR_MAP_PMC(12'hFC0),
    .REG_ADR_MAP_PMC_ALIAS_0(12'hFC0),
    .REG_ADR_MAP_PMC_ALIAS_1(12'hFC0),
    .REG_ADR_MAP_PMC_ALIAS_2(12'hFC0),
    .REG_ADR_MAP_PMC_ALIAS_3(12'hFC0),
    .REG_ADR_MAP_QSPI(12'hFC0),
    .REG_ADR_MAP_STM_GIC(12'hFC0),
    .REG_ADR_MAP_XPDS(12'hFC0),
    .REG_AXI_NON_MOD_DISABLE(1'h0),
    .REG_AXI_PAR_CHK(2'h0),
    .REG_CHOPSIZE(4'hA),
    .REG_DDR_ADR_MAP0(15'h6688),
    .REG_DDR_ADR_MAP1(15'h1FFF),
    .REG_DDR_ADR_MAP2(15'h1FFF),
    .REG_DDR_ADR_MAP3(15'h1FFF),
    .REG_DDR_ADR_MAP4(15'h1FFF),
    .REG_DDR_ADR_MAP5(15'h1FFF),
    .REG_DDR_ADR_MAP6(15'h1FFF),
    .REG_DDR_DST_MAP0(12'h8C0),
    .REG_DDR_DST_MAP1(12'h5C0),
    .REG_DDR_DST_MAP2(12'h7C0),
    .REG_DDR_DST_MAP3(12'h6C0),
    .REG_DDR_DST_MAP4(12'hFC0),
    .REG_DDR_DST_MAP5(12'hFC0),
    .REG_DDR_DST_MAP6(12'hFC0),
    .REG_DDR_DST_MAP7(12'hFC0),
    .REG_DWIDTH(3'h6),
    .REG_ECC_CHK_EN(1'h1),
    .REG_HBM_MAP_T0_CH0(12'hFC0),
    .REG_HBM_MAP_T0_CH1(12'hFC0),
    .REG_HBM_MAP_T0_CH10(12'hFC0),
    .REG_HBM_MAP_T0_CH11(12'hFC0),
    .REG_HBM_MAP_T0_CH12(12'hFC0),
    .REG_HBM_MAP_T0_CH13(12'hFC0),
    .REG_HBM_MAP_T0_CH14(12'hFC0),
    .REG_HBM_MAP_T0_CH15(12'hFC0),
    .REG_HBM_MAP_T0_CH2(12'hFC0),
    .REG_HBM_MAP_T0_CH3(12'hFC0),
    .REG_HBM_MAP_T0_CH4(12'hFC0),
    .REG_HBM_MAP_T0_CH5(12'hFC0),
    .REG_HBM_MAP_T0_CH6(12'hFC0),
    .REG_HBM_MAP_T0_CH7(12'hFC0),
    .REG_HBM_MAP_T0_CH8(12'hFC0),
    .REG_HBM_MAP_T0_CH9(12'hFC0),
    .REG_HBM_MAP_T1_CH0(12'hFC0),
    .REG_HBM_MAP_T1_CH1(12'hFC0),
    .REG_HBM_MAP_T1_CH10(12'hFC0),
    .REG_HBM_MAP_T1_CH11(12'hFC0),
    .REG_HBM_MAP_T1_CH12(12'hFC0),
    .REG_HBM_MAP_T1_CH13(12'hFC0),
    .REG_HBM_MAP_T1_CH14(12'hFC0),
    .REG_HBM_MAP_T1_CH15(12'hFC0),
    .REG_HBM_MAP_T1_CH2(12'hFC0),
    .REG_HBM_MAP_T1_CH3(12'hFC0),
    .REG_HBM_MAP_T1_CH4(12'hFC0),
    .REG_HBM_MAP_T1_CH5(12'hFC0),
    .REG_HBM_MAP_T1_CH6(12'hFC0),
    .REG_HBM_MAP_T1_CH7(12'hFC0),
    .REG_HBM_MAP_T1_CH8(12'hFC0),
    .REG_HBM_MAP_T1_CH9(12'hFC0),
    .REG_HBM_MAP_T2_CH0(12'hFC0),
    .REG_HBM_MAP_T2_CH1(12'hFC0),
    .REG_HBM_MAP_T2_CH10(12'hFC0),
    .REG_HBM_MAP_T2_CH11(12'hFC0),
    .REG_HBM_MAP_T2_CH12(12'hFC0),
    .REG_HBM_MAP_T2_CH13(12'hFC0),
    .REG_HBM_MAP_T2_CH14(12'hFC0),
    .REG_HBM_MAP_T2_CH15(12'hFC0),
    .REG_HBM_MAP_T2_CH2(12'hFC0),
    .REG_HBM_MAP_T2_CH3(12'hFC0),
    .REG_HBM_MAP_T2_CH4(12'hFC0),
    .REG_HBM_MAP_T2_CH5(12'hFC0),
    .REG_HBM_MAP_T2_CH6(12'hFC0),
    .REG_HBM_MAP_T2_CH7(12'hFC0),
    .REG_HBM_MAP_T2_CH8(12'hFC0),
    .REG_HBM_MAP_T2_CH9(12'hFC0),
    .REG_HBM_MAP_T3_CH0(12'hFC0),
    .REG_HBM_MAP_T3_CH1(12'hFC0),
    .REG_HBM_MAP_T3_CH10(12'hFC0),
    .REG_HBM_MAP_T3_CH11(12'hFC0),
    .REG_HBM_MAP_T3_CH12(12'hFC0),
    .REG_HBM_MAP_T3_CH13(12'hFC0),
    .REG_HBM_MAP_T3_CH14(12'hFC0),
    .REG_HBM_MAP_T3_CH15(12'hFC0),
    .REG_HBM_MAP_T3_CH2(12'hFC0),
    .REG_HBM_MAP_T3_CH3(12'hFC0),
    .REG_HBM_MAP_T3_CH4(12'hFC0),
    .REG_HBM_MAP_T3_CH5(12'hFC0),
    .REG_HBM_MAP_T3_CH6(12'hFC0),
    .REG_HBM_MAP_T3_CH7(12'hFC0),
    .REG_HBM_MAP_T3_CH8(12'hFC0),
    .REG_HBM_MAP_T3_CH9(12'hFC0),
    .REG_MODE_SELECT(16'h0000),
    .REG_OUTSTANDING_RD_TXN(7'h40),
    .REG_OUTSTANDING_WR_TXN(7'h40),
    .REG_PRIORITY(2'h0),
    .REG_RD_AXPROT_SEL(6'h00),
    .REG_RD_RATE_CREDIT_DROP(10'h004),
    .REG_RD_RATE_CREDIT_LIMIT(13'h0100),
    .REG_RD_VCA_TOKEN0(8'h14),
    .REG_RPOISON_TO_SLVERR(1'h0),
    .REG_RROB_RAM_SETTING(9'h012),
    .REG_SMID_SEL(20'h00000),
    .REG_SRC(12'h080),
    .REG_TBASE_AXI_TIMEOUT(4'h1),
    .REG_TBASE_MODE_RLIMIT_RD(3'h2),
    .REG_TBASE_MODE_RLIMIT_WR(3'h2),
    .REG_TBASE_TRK_TIMEOUT(4'h1),
    .REG_VC_MAP(12'hFAC),
    .REG_WBUF_LAUNCH_SIZE(6'h10),
    .REG_WBUF_RAM_SETTING(9'h012),
    .REG_WR_AXPROT_SEL(6'h00),
    .REG_WR_RATE_CREDIT_DROP(10'h004),
    .REG_WR_RATE_CREDIT_LIMIT(13'h0100),
    .REG_WR_VCA_TOKEN0(8'h10)) 
    NOC_NMU512_INST
       (.CLK(aclk),
        .IF_NOC_AXI_ARADDR({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,IF_NOC_AXI_ARADDR}),
        .IF_NOC_AXI_ARADDR_PAR({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .IF_NOC_AXI_ARBURST(IF_NOC_AXI_ARBURST),
        .IF_NOC_AXI_ARCACHE(IF_NOC_AXI_ARCACHE),
        .IF_NOC_AXI_ARID({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .IF_NOC_AXI_ARLEN(IF_NOC_AXI_ARLEN),
        .IF_NOC_AXI_ARLOCK(IF_NOC_AXI_ARLOCK),
        .IF_NOC_AXI_ARPROT(IF_NOC_AXI_ARPROT),
        .IF_NOC_AXI_ARQOS(IF_NOC_AXI_ARQOS),
        .IF_NOC_AXI_ARREADY(IF_NOC_AXI_ARREADY),
        .IF_NOC_AXI_ARREGION(IF_NOC_AXI_ARREGION),
        .IF_NOC_AXI_ARSIZE(IF_NOC_AXI_ARSIZE),
        .IF_NOC_AXI_ARUSER({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .IF_NOC_AXI_ARVALID(IF_NOC_AXI_ARVALID),
        .IF_NOC_AXI_AWADDR({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,IF_NOC_AXI_AWADDR}),
        .IF_NOC_AXI_AWADDR_PAR({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .IF_NOC_AXI_AWBURST(IF_NOC_AXI_AWBURST),
        .IF_NOC_AXI_AWCACHE(IF_NOC_AXI_AWCACHE),
        .IF_NOC_AXI_AWID({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .IF_NOC_AXI_AWLEN(IF_NOC_AXI_AWLEN),
        .IF_NOC_AXI_AWLOCK(IF_NOC_AXI_AWLOCK),
        .IF_NOC_AXI_AWPROT(IF_NOC_AXI_AWPROT),
        .IF_NOC_AXI_AWQOS(IF_NOC_AXI_AWQOS),
        .IF_NOC_AXI_AWREADY(IF_NOC_AXI_AWREADY),
        .IF_NOC_AXI_AWREGION(IF_NOC_AXI_AWREGION),
        .IF_NOC_AXI_AWSIZE(IF_NOC_AXI_AWSIZE),
        .IF_NOC_AXI_AWUSER({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .IF_NOC_AXI_AWVALID(IF_NOC_AXI_AWVALID),
        .IF_NOC_AXI_BID(NLW_NOC_NMU512_INST_IF_NOC_AXI_BID_UNCONNECTED[15:0]),
        .IF_NOC_AXI_BREADY(IF_NOC_AXI_BREADY),
        .IF_NOC_AXI_BRESP(IF_NOC_AXI_BRESP),
        .IF_NOC_AXI_BUSER(NLW_NOC_NMU512_INST_IF_NOC_AXI_BUSER_UNCONNECTED[15:0]),
        .IF_NOC_AXI_BVALID(IF_NOC_AXI_BVALID),
        .IF_NOC_AXI_RDATA(IF_NOC_AXI_RDATA),
        .IF_NOC_AXI_RDATA_PAR(NLW_NOC_NMU512_INST_IF_NOC_AXI_RDATA_PAR_UNCONNECTED[63:0]),
        .IF_NOC_AXI_RID(NLW_NOC_NMU512_INST_IF_NOC_AXI_RID_UNCONNECTED[15:0]),
        .IF_NOC_AXI_RLAST(IF_NOC_AXI_RLAST),
        .IF_NOC_AXI_RPOISON(NLW_NOC_NMU512_INST_IF_NOC_AXI_RPOISON_UNCONNECTED),
        .IF_NOC_AXI_RREADY(IF_NOC_AXI_RREADY),
        .IF_NOC_AXI_RRESP(IF_NOC_AXI_RRESP),
        .IF_NOC_AXI_RUSER(NLW_NOC_NMU512_INST_IF_NOC_AXI_RUSER_UNCONNECTED[15:0]),
        .IF_NOC_AXI_RVALID(IF_NOC_AXI_RVALID),
        .IF_NOC_AXI_TDEST(NLW_NOC_NMU512_INST_IF_NOC_AXI_TDEST_UNCONNECTED[9:0]),
        .IF_NOC_AXI_WDATA(IF_NOC_AXI_WDATA),
        .IF_NOC_AXI_WDATA_PAR({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .IF_NOC_AXI_WID({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .IF_NOC_AXI_WLAST(IF_NOC_AXI_WLAST),
        .IF_NOC_AXI_WPOISON(1'b0),
        .IF_NOC_AXI_WREADY(IF_NOC_AXI_WREADY),
        .IF_NOC_AXI_WSTRB(IF_NOC_AXI_WSTRB),
        .IF_NOC_AXI_WUSER({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .IF_NOC_AXI_WVALID(IF_NOC_AXI_WVALID),
        .IF_NOC_NPP_IN_NOC_CREDIT_RDY(IF_NOC_NPP_IN_NOC_CREDIT_RDY),
        .IF_NOC_NPP_IN_NOC_CREDIT_RETURN(IF_NOC_NPP_IN_NOC_CREDIT_RETURN),
        .IF_NOC_NPP_IN_NOC_CREDIT_RETURN_EN(NLW_NOC_NMU512_INST_IF_NOC_NPP_IN_NOC_CREDIT_RETURN_EN_UNCONNECTED),
        .IF_NOC_NPP_IN_NOC_FLIT(IF_NOC_NPP_IN_NOC_FLIT),
        .IF_NOC_NPP_IN_NOC_FLIT_EN(1'b1),
        .IF_NOC_NPP_IN_NOC_VALID(IF_NOC_NPP_IN_NOC_VALID),
        .IF_NOC_NPP_IN_NOC_VALID_EN(1'b1),
        .IF_NOC_NPP_OUT_NOC_CREDIT_RDY(IF_NOC_NPP_OUT_NOC_CREDIT_RDY),
        .IF_NOC_NPP_OUT_NOC_CREDIT_RETURN(IF_NOC_NPP_OUT_NOC_CREDIT_RETURN),
        .IF_NOC_NPP_OUT_NOC_CREDIT_RETURN_EN(1'b1),
        .IF_NOC_NPP_OUT_NOC_FLIT(IF_NOC_NPP_OUT_NOC_FLIT),
        .IF_NOC_NPP_OUT_NOC_FLIT_EN(NLW_NOC_NMU512_INST_IF_NOC_NPP_OUT_NOC_FLIT_EN_UNCONNECTED),
        .IF_NOC_NPP_OUT_NOC_VALID(IF_NOC_NPP_OUT_NOC_VALID),
        .IF_NOC_NPP_OUT_NOC_VALID_EN(NLW_NOC_NMU512_INST_IF_NOC_NPP_OUT_NOC_VALID_EN_UNCONNECTED),
        .NMU(NMU),
        .NMU_RD_DEST_MODE(NMU_RD_DEST_MODE),
        .NMU_RD_USR_DST(NMU_RD_USR_DST),
        .NMU_USR_INTERRUPT_IN({1'b0,1'b0,1'b0,1'b0}),
        .NMU_WR_DEST_MODE(NMU_WR_DEST_MODE),
        .NMU_WR_USR_DST(NMU_WR_USR_DST));
endmodule

(* CHECK_LICENSE_TYPE = "noc_nmu_0,noc_nmu_v1_0_0_0,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* ORIG_REF_NAME = "bd_0ad1_M02_INI_stub_nmu_0" *) 
(* X_CORE_INFO = "noc_nmu_v1_0_0_0,Vivado 2018.1.0" *) 
module ulp_inst_0_axi_noc_kernel0_0_bd_0ad1_M02_INI_stub_nmu_0
   (IF_NOC_AXI_WVALID,
    IF_NOC_AXI_WREADY,
    IF_NOC_AXI_WLAST,
    IF_NOC_AXI_WDATA,
    IF_NOC_AXI_WSTRB,
    IF_NOC_AXI_ARREADY,
    IF_NOC_AXI_AWREADY,
    IF_NOC_AXI_BRESP,
    IF_NOC_AXI_BVALID,
    IF_NOC_AXI_RDATA,
    IF_NOC_AXI_RLAST,
    IF_NOC_AXI_RRESP,
    IF_NOC_AXI_RVALID,
    IF_NOC_AXI_ARADDR,
    IF_NOC_AXI_ARBURST,
    IF_NOC_AXI_ARCACHE,
    IF_NOC_AXI_ARLEN,
    IF_NOC_AXI_ARLOCK,
    IF_NOC_AXI_ARPROT,
    IF_NOC_AXI_ARQOS,
    IF_NOC_AXI_ARREGION,
    IF_NOC_AXI_ARSIZE,
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
    IF_NOC_AXI_AWVALID,
    IF_NOC_AXI_BREADY,
    IF_NOC_AXI_RREADY,
    NMU_RD_DEST_MODE,
    NMU_WR_DEST_MODE,
    IF_NOC_NPP_IN_NOC_CREDIT_RETURN,
    IF_NOC_NPP_OUT_NOC_CREDIT_RDY,
    IF_NOC_NPP_OUT_NOC_FLIT,
    IF_NOC_NPP_OUT_NOC_VALID,
    aclk,
    IF_NOC_NPP_IN_NOC_CREDIT_RDY,
    IF_NOC_NPP_IN_NOC_FLIT,
    IF_NOC_NPP_IN_NOC_VALID,
    IF_NOC_NPP_OUT_NOC_CREDIT_RETURN,
    NMU,
    NMU_WR_USR_DST,
    NMU_RD_USR_DST);
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SAXI4 WVALID" *) input IF_NOC_AXI_WVALID;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SAXI4 WREADY" *) output IF_NOC_AXI_WREADY;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SAXI4 WLAST" *) input [0:0]IF_NOC_AXI_WLAST;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SAXI4 WDATA" *) input [511:0]IF_NOC_AXI_WDATA;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SAXI4 WSTRB" *) input [63:0]IF_NOC_AXI_WSTRB;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SAXI4 ARREADY" *) output IF_NOC_AXI_ARREADY;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SAXI4 AWREADY" *) output IF_NOC_AXI_AWREADY;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SAXI4 BRESP" *) output [1:0]IF_NOC_AXI_BRESP;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SAXI4 BVALID" *) output IF_NOC_AXI_BVALID;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SAXI4 RDATA" *) output [511:0]IF_NOC_AXI_RDATA;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SAXI4 RLAST" *) output [0:0]IF_NOC_AXI_RLAST;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SAXI4 RRESP" *) output [1:0]IF_NOC_AXI_RRESP;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SAXI4 RVALID" *) output IF_NOC_AXI_RVALID;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SAXI4 ARADDR" *) input [0:0]IF_NOC_AXI_ARADDR;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SAXI4 ARBURST" *) input [1:0]IF_NOC_AXI_ARBURST;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SAXI4 ARCACHE" *) input [3:0]IF_NOC_AXI_ARCACHE;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SAXI4 ARLEN" *) input [7:0]IF_NOC_AXI_ARLEN;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SAXI4 ARLOCK" *) input [0:0]IF_NOC_AXI_ARLOCK;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SAXI4 ARPROT" *) input [2:0]IF_NOC_AXI_ARPROT;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SAXI4 ARQOS" *) input [3:0]IF_NOC_AXI_ARQOS;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SAXI4 ARREGION" *) input [3:0]IF_NOC_AXI_ARREGION;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SAXI4 ARSIZE" *) input [2:0]IF_NOC_AXI_ARSIZE;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SAXI4 ARVALID" *) input IF_NOC_AXI_ARVALID;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SAXI4 AWADDR" *) input [0:0]IF_NOC_AXI_AWADDR;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SAXI4 AWBURST" *) input [1:0]IF_NOC_AXI_AWBURST;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SAXI4 AWCACHE" *) input [3:0]IF_NOC_AXI_AWCACHE;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SAXI4 AWLEN" *) input [7:0]IF_NOC_AXI_AWLEN;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SAXI4 AWLOCK" *) input [0:0]IF_NOC_AXI_AWLOCK;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SAXI4 AWPROT" *) input [2:0]IF_NOC_AXI_AWPROT;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SAXI4 AWQOS" *) input [3:0]IF_NOC_AXI_AWQOS;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SAXI4 AWREGION" *) input [3:0]IF_NOC_AXI_AWREGION;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SAXI4 AWSIZE" *) input [2:0]IF_NOC_AXI_AWSIZE;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SAXI4 AWVALID" *) input IF_NOC_AXI_AWVALID;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SAXI4 BREADY" *) input IF_NOC_AXI_BREADY;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SAXI4 RREADY" *) input IF_NOC_AXI_RREADY;
  input NMU_RD_DEST_MODE;
  input NMU_WR_DEST_MODE;
  (* X_INTERFACE_INFO = "xilinx.com:interface:npp:1.0 SNPP CREDIT_RETURN" *) output [7:0]IF_NOC_NPP_IN_NOC_CREDIT_RETURN;
  (* X_INTERFACE_INFO = "xilinx.com:interface:npp:1.0 MNPP CREDIT_RDY" *) output IF_NOC_NPP_OUT_NOC_CREDIT_RDY;
  (* X_INTERFACE_INFO = "xilinx.com:interface:npp:1.0 MNPP FLIT" *) output [181:0]IF_NOC_NPP_OUT_NOC_FLIT;
  (* X_INTERFACE_INFO = "xilinx.com:interface:npp:1.0 MNPP VALID" *) output [7:0]IF_NOC_NPP_OUT_NOC_VALID;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 aclk aclk" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME aclk, ASSOCIATED_BUSIF SAXI4:SAXI_STREAM, FREQ_HZ 100000000, PHASE 0.000" *) input aclk;
  (* X_INTERFACE_INFO = "xilinx.com:interface:npp:1.0 SNPP CREDIT_RDY" *) input IF_NOC_NPP_IN_NOC_CREDIT_RDY;
  (* X_INTERFACE_INFO = "xilinx.com:interface:npp:1.0 SNPP FLIT" *) input [181:0]IF_NOC_NPP_IN_NOC_FLIT;
  (* X_INTERFACE_INFO = "xilinx.com:interface:npp:1.0 SNPP VALID" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME SNPP, IN_SYNTHESIS_HDL NO, CAN_DEBUG false" *) input [7:0]IF_NOC_NPP_IN_NOC_VALID;
  (* X_INTERFACE_INFO = "xilinx.com:interface:npp:1.0 MNPP CREDIT_RETURN" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME MNPP, IN_SYNTHESIS_HDL NO, CAN_DEBUG false" *) input [7:0]IF_NOC_NPP_OUT_NOC_CREDIT_RETURN;
  (* dont_touch = "true" *) output NMU;
  input [11:0]NMU_WR_USR_DST;
  input [11:0]NMU_RD_USR_DST;

  wire [0:0]IF_NOC_AXI_ARADDR;
  wire [1:0]IF_NOC_AXI_ARBURST;
  wire [3:0]IF_NOC_AXI_ARCACHE;
  wire [7:0]IF_NOC_AXI_ARLEN;
  wire [0:0]IF_NOC_AXI_ARLOCK;
  wire [2:0]IF_NOC_AXI_ARPROT;
  wire [3:0]IF_NOC_AXI_ARQOS;
  wire IF_NOC_AXI_ARREADY;
  wire [3:0]IF_NOC_AXI_ARREGION;
  wire [2:0]IF_NOC_AXI_ARSIZE;
  wire IF_NOC_AXI_ARVALID;
  wire [0:0]IF_NOC_AXI_AWADDR;
  wire [1:0]IF_NOC_AXI_AWBURST;
  wire [3:0]IF_NOC_AXI_AWCACHE;
  wire [7:0]IF_NOC_AXI_AWLEN;
  wire [0:0]IF_NOC_AXI_AWLOCK;
  wire [2:0]IF_NOC_AXI_AWPROT;
  wire [3:0]IF_NOC_AXI_AWQOS;
  wire IF_NOC_AXI_AWREADY;
  wire [3:0]IF_NOC_AXI_AWREGION;
  wire [2:0]IF_NOC_AXI_AWSIZE;
  wire IF_NOC_AXI_AWVALID;
  wire IF_NOC_AXI_BREADY;
  wire [1:0]IF_NOC_AXI_BRESP;
  wire IF_NOC_AXI_BVALID;
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
  (* DONT_TOUCH *) wire NMU;
  wire NMU_RD_DEST_MODE;
  wire [11:0]NMU_RD_USR_DST;
  wire NMU_WR_DEST_MODE;
  wire [11:0]NMU_WR_USR_DST;
  wire aclk;

  (* REG_ADDR_DST0 = "16'b0000000000000000" *) 
  (* REG_ADDR_DST1 = "16'b0000000000000000" *) 
  (* REG_ADDR_DST10 = "16'b0000000000000000" *) 
  (* REG_ADDR_DST11 = "16'b0000000000000000" *) 
  (* REG_ADDR_DST12 = "16'b0000000000000000" *) 
  (* REG_ADDR_DST13 = "16'b0000000000000000" *) 
  (* REG_ADDR_DST14 = "16'b0000000000000000" *) 
  (* REG_ADDR_DST15 = "16'b0000000000000000" *) 
  (* REG_ADDR_DST2 = "16'b0000000000000000" *) 
  (* REG_ADDR_DST3 = "16'b0000000000000000" *) 
  (* REG_ADDR_DST4 = "16'b0000000000000000" *) 
  (* REG_ADDR_DST5 = "16'b0000000000000000" *) 
  (* REG_ADDR_DST6 = "16'b0000000000000000" *) 
  (* REG_ADDR_DST7 = "16'b0000000000000000" *) 
  (* REG_ADDR_DST8 = "16'b0000000000000000" *) 
  (* REG_ADDR_DST9 = "16'b0000000000000000" *) 
  (* REG_ADDR_ENABLE = "16'b0000000000000000" *) 
  (* REG_ADDR_MADDR0 = "32'b00000000000000000000000000000000" *) 
  (* REG_ADDR_MADDR1 = "32'b00000000000000000000000000000000" *) 
  (* REG_ADDR_MADDR10 = "32'b00000000000000000000000000000000" *) 
  (* REG_ADDR_MADDR11 = "32'b00000000000000000000000000000000" *) 
  (* REG_ADDR_MADDR12 = "32'b00000000000000000000000000000000" *) 
  (* REG_ADDR_MADDR13 = "32'b00000000000000000000000000000000" *) 
  (* REG_ADDR_MADDR14 = "32'b00000000000000000000000000000000" *) 
  (* REG_ADDR_MADDR15 = "32'b00000000000000000000000000000000" *) 
  (* REG_ADDR_MADDR2 = "32'b00000000000000000000000000000000" *) 
  (* REG_ADDR_MADDR3 = "32'b00000000000000000000000000000000" *) 
  (* REG_ADDR_MADDR4 = "32'b00000000000000000000000000000000" *) 
  (* REG_ADDR_MADDR5 = "32'b00000000000000000000000000000000" *) 
  (* REG_ADDR_MADDR6 = "32'b00000000000000000000000000000000" *) 
  (* REG_ADDR_MADDR7 = "32'b00000000000000000000000000000000" *) 
  (* REG_ADDR_MADDR8 = "32'b00000000000000000000000000000000" *) 
  (* REG_ADDR_MADDR9 = "32'b00000000000000000000000000000000" *) 
  (* REG_ADDR_MASK0 = "32'b00000000000000000000000000000000" *) 
  (* REG_ADDR_MASK1 = "32'b00000000000000000000000000000000" *) 
  (* REG_ADDR_MASK10 = "32'b00000000000000000000000000000000" *) 
  (* REG_ADDR_MASK11 = "32'b00000000000000000000000000000000" *) 
  (* REG_ADDR_MASK12 = "32'b00000000000000000000000000000000" *) 
  (* REG_ADDR_MASK13 = "32'b00000000000000000000000000000000" *) 
  (* REG_ADDR_MASK14 = "32'b00000000000000000000000000000000" *) 
  (* REG_ADDR_MASK15 = "32'b00000000000000000000000000000000" *) 
  (* REG_ADDR_MASK2 = "32'b00000000000000000000000000000000" *) 
  (* REG_ADDR_MASK3 = "32'b00000000000000000000000000000000" *) 
  (* REG_ADDR_MASK4 = "32'b00000000000000000000000000000000" *) 
  (* REG_ADDR_MASK5 = "32'b00000000000000000000000000000000" *) 
  (* REG_ADDR_MASK6 = "32'b00000000000000000000000000000000" *) 
  (* REG_ADDR_MASK7 = "32'b00000000000000000000000000000000" *) 
  (* REG_ADDR_MASK8 = "32'b00000000000000000000000000000000" *) 
  (* REG_ADDR_MASK9 = "32'b00000000000000000000000000000000" *) 
  (* REG_ADDR_REMAP = "16'b0000000000000000" *) 
  (* REG_ADDR_RPADDR0 = "32'b00000000000000000000000000000000" *) 
  (* REG_ADDR_RPADDR1 = "32'b00000000000000000000000000000000" *) 
  (* REG_ADDR_RPADDR10 = "32'b00000000000000000000000000000000" *) 
  (* REG_ADDR_RPADDR11 = "32'b00000000000000000000000000000000" *) 
  (* REG_ADDR_RPADDR12 = "32'b00000000000000000000000000000000" *) 
  (* REG_ADDR_RPADDR13 = "32'b00000000000000000000000000000000" *) 
  (* REG_ADDR_RPADDR14 = "32'b00000000000000000000000000000000" *) 
  (* REG_ADDR_RPADDR15 = "32'b00000000000000000000000000000000" *) 
  (* REG_ADDR_RPADDR2 = "32'b00000000000000000000000000000000" *) 
  (* REG_ADDR_RPADDR3 = "32'b00000000000000000000000000000000" *) 
  (* REG_ADDR_RPADDR4 = "32'b00000000000000000000000000000000" *) 
  (* REG_ADDR_RPADDR5 = "32'b00000000000000000000000000000000" *) 
  (* REG_ADDR_RPADDR6 = "32'b00000000000000000000000000000000" *) 
  (* REG_ADDR_RPADDR7 = "32'b00000000000000000000000000000000" *) 
  (* REG_ADDR_RPADDR8 = "32'b00000000000000000000000000000000" *) 
  (* REG_ADDR_RPADDR9 = "32'b00000000000000000000000000000000" *) 
  (* REG_ADR_MAP_CPM = "12'b111111000000" *) 
  (* REG_ADR_MAP_FPD_AFI_0 = "12'b111111000000" *) 
  (* REG_ADR_MAP_FPD_AFI_1 = "12'b111111000000" *) 
  (* REG_ADR_MAP_LPD_AFI_FS = "12'b111111000000" *) 
  (* REG_ADR_MAP_ME_ARRAY_0 = "12'b111111000000" *) 
  (* REG_ADR_MAP_ME_ARRAY_1 = "12'b111111000000" *) 
  (* REG_ADR_MAP_ME_ARRAY_2 = "12'b111111000000" *) 
  (* REG_ADR_MAP_ME_ARRAY_3 = "12'b111111000000" *) 
  (* REG_ADR_MAP_PCIE = "12'b111111000000" *) 
  (* REG_ADR_MAP_PMC = "12'b111111000000" *) 
  (* REG_ADR_MAP_PMC_ALIAS_0 = "12'b111111000000" *) 
  (* REG_ADR_MAP_PMC_ALIAS_1 = "12'b111111000000" *) 
  (* REG_ADR_MAP_PMC_ALIAS_2 = "12'b111111000000" *) 
  (* REG_ADR_MAP_PMC_ALIAS_3 = "12'b111111000000" *) 
  (* REG_ADR_MAP_QSPI = "12'b111111000000" *) 
  (* REG_ADR_MAP_STM_GIC = "12'b111111000000" *) 
  (* REG_ADR_MAP_XPDS = "12'b111111000000" *) 
  (* REG_AXI_NON_MOD_DISABLE = "1'b0" *) 
  (* REG_AXI_PAR_CHK = "2'b00" *) 
  (* REG_CHOPSIZE = "4'b1010" *) 
  (* REG_DDR_ADR_MAP0 = "15'b110011010001000" *) 
  (* REG_DDR_ADR_MAP1 = "15'b001111111111111" *) 
  (* REG_DDR_ADR_MAP2 = "15'b001111111111111" *) 
  (* REG_DDR_ADR_MAP3 = "15'b001111111111111" *) 
  (* REG_DDR_ADR_MAP4 = "15'b001111111111111" *) 
  (* REG_DDR_ADR_MAP5 = "15'b001111111111111" *) 
  (* REG_DDR_ADR_MAP6 = "15'b001111111111111" *) 
  (* REG_DDR_DST_MAP0 = "12'b100100000000" *) 
  (* REG_DDR_DST_MAP1 = "12'b011000000000" *) 
  (* REG_DDR_DST_MAP2 = "12'b100000000000" *) 
  (* REG_DDR_DST_MAP3 = "12'b011100000000" *) 
  (* REG_DDR_DST_MAP4 = "12'b111111000000" *) 
  (* REG_DDR_DST_MAP5 = "12'b111111000000" *) 
  (* REG_DDR_DST_MAP6 = "12'b111111000000" *) 
  (* REG_DDR_DST_MAP7 = "12'b111111000000" *) 
  (* REG_DWIDTH = "3'b110" *) 
  (* REG_ECC_CHK_EN = "1'b1" *) 
  (* REG_HBM_MAP_T0_CH0 = "12'b111111000000" *) 
  (* REG_HBM_MAP_T0_CH1 = "12'b111111000000" *) 
  (* REG_HBM_MAP_T0_CH10 = "12'b111111000000" *) 
  (* REG_HBM_MAP_T0_CH11 = "12'b111111000000" *) 
  (* REG_HBM_MAP_T0_CH12 = "12'b111111000000" *) 
  (* REG_HBM_MAP_T0_CH13 = "12'b111111000000" *) 
  (* REG_HBM_MAP_T0_CH14 = "12'b111111000000" *) 
  (* REG_HBM_MAP_T0_CH15 = "12'b111111000000" *) 
  (* REG_HBM_MAP_T0_CH2 = "12'b111111000000" *) 
  (* REG_HBM_MAP_T0_CH3 = "12'b111111000000" *) 
  (* REG_HBM_MAP_T0_CH4 = "12'b111111000000" *) 
  (* REG_HBM_MAP_T0_CH5 = "12'b111111000000" *) 
  (* REG_HBM_MAP_T0_CH6 = "12'b111111000000" *) 
  (* REG_HBM_MAP_T0_CH7 = "12'b111111000000" *) 
  (* REG_HBM_MAP_T0_CH8 = "12'b111111000000" *) 
  (* REG_HBM_MAP_T0_CH9 = "12'b111111000000" *) 
  (* REG_HBM_MAP_T1_CH0 = "12'b111111000000" *) 
  (* REG_HBM_MAP_T1_CH1 = "12'b111111000000" *) 
  (* REG_HBM_MAP_T1_CH10 = "12'b111111000000" *) 
  (* REG_HBM_MAP_T1_CH11 = "12'b111111000000" *) 
  (* REG_HBM_MAP_T1_CH12 = "12'b111111000000" *) 
  (* REG_HBM_MAP_T1_CH13 = "12'b111111000000" *) 
  (* REG_HBM_MAP_T1_CH14 = "12'b111111000000" *) 
  (* REG_HBM_MAP_T1_CH15 = "12'b111111000000" *) 
  (* REG_HBM_MAP_T1_CH2 = "12'b111111000000" *) 
  (* REG_HBM_MAP_T1_CH3 = "12'b111111000000" *) 
  (* REG_HBM_MAP_T1_CH4 = "12'b111111000000" *) 
  (* REG_HBM_MAP_T1_CH5 = "12'b111111000000" *) 
  (* REG_HBM_MAP_T1_CH6 = "12'b111111000000" *) 
  (* REG_HBM_MAP_T1_CH7 = "12'b111111000000" *) 
  (* REG_HBM_MAP_T1_CH8 = "12'b111111000000" *) 
  (* REG_HBM_MAP_T1_CH9 = "12'b111111000000" *) 
  (* REG_HBM_MAP_T2_CH0 = "12'b111111000000" *) 
  (* REG_HBM_MAP_T2_CH1 = "12'b111111000000" *) 
  (* REG_HBM_MAP_T2_CH10 = "12'b111111000000" *) 
  (* REG_HBM_MAP_T2_CH11 = "12'b111111000000" *) 
  (* REG_HBM_MAP_T2_CH12 = "12'b111111000000" *) 
  (* REG_HBM_MAP_T2_CH13 = "12'b111111000000" *) 
  (* REG_HBM_MAP_T2_CH14 = "12'b111111000000" *) 
  (* REG_HBM_MAP_T2_CH15 = "12'b111111000000" *) 
  (* REG_HBM_MAP_T2_CH2 = "12'b111111000000" *) 
  (* REG_HBM_MAP_T2_CH3 = "12'b111111000000" *) 
  (* REG_HBM_MAP_T2_CH4 = "12'b111111000000" *) 
  (* REG_HBM_MAP_T2_CH5 = "12'b111111000000" *) 
  (* REG_HBM_MAP_T2_CH6 = "12'b111111000000" *) 
  (* REG_HBM_MAP_T2_CH7 = "12'b111111000000" *) 
  (* REG_HBM_MAP_T2_CH8 = "12'b111111000000" *) 
  (* REG_HBM_MAP_T2_CH9 = "12'b111111000000" *) 
  (* REG_HBM_MAP_T3_CH0 = "12'b111111000000" *) 
  (* REG_HBM_MAP_T3_CH1 = "12'b111111000000" *) 
  (* REG_HBM_MAP_T3_CH10 = "12'b111111000000" *) 
  (* REG_HBM_MAP_T3_CH11 = "12'b111111000000" *) 
  (* REG_HBM_MAP_T3_CH12 = "12'b111111000000" *) 
  (* REG_HBM_MAP_T3_CH13 = "12'b111111000000" *) 
  (* REG_HBM_MAP_T3_CH14 = "12'b111111000000" *) 
  (* REG_HBM_MAP_T3_CH15 = "12'b111111000000" *) 
  (* REG_HBM_MAP_T3_CH2 = "12'b111111000000" *) 
  (* REG_HBM_MAP_T3_CH3 = "12'b111111000000" *) 
  (* REG_HBM_MAP_T3_CH4 = "12'b111111000000" *) 
  (* REG_HBM_MAP_T3_CH5 = "12'b111111000000" *) 
  (* REG_HBM_MAP_T3_CH6 = "12'b111111000000" *) 
  (* REG_HBM_MAP_T3_CH7 = "12'b111111000000" *) 
  (* REG_HBM_MAP_T3_CH8 = "12'b111111000000" *) 
  (* REG_HBM_MAP_T3_CH9 = "12'b111111000000" *) 
  (* REG_MODE_SELECT = "16'b0000000000000000" *) 
  (* REG_OUTSTANDING_RD_TXN = "7'b1000000" *) 
  (* REG_OUTSTANDING_WR_TXN = "7'b1000000" *) 
  (* REG_PRIORITY = "2'b00" *) 
  (* REG_RD_AXPROT_SEL = "6'b000000" *) 
  (* REG_RD_RATE_CREDIT_DROP = "10'b0000000100" *) 
  (* REG_RD_RATE_CREDIT_LIMIT = "13'b0000100000000" *) 
  (* REG_RD_VCA_TOKEN0 = "8'b00010100" *) 
  (* REG_RPOISON_TO_SLVERR = "1'b0" *) 
  (* REG_RROB_RAM_SETTING = "9'b000010010" *) 
  (* REG_SMID_SEL = "20'b00000000000000000000" *) 
  (* REG_SRC = "12'b001000000000" *) 
  (* REG_TBASE_AXI_TIMEOUT = "3'b001" *) 
  (* REG_TBASE_MODE_RLIMIT_RD = "3'b010" *) 
  (* REG_TBASE_MODE_RLIMIT_WR = "3'b010" *) 
  (* REG_TBASE_TRK_TIMEOUT = "3'b001" *) 
  (* REG_VC_MAP = "12'b011010001000" *) 
  (* REG_WBUF_LAUNCH_SIZE = "6'b010000" *) 
  (* REG_WBUF_RAM_SETTING = "9'b000010010" *) 
  (* REG_WR_AXPROT_SEL = "6'b000000" *) 
  (* REG_WR_RATE_CREDIT_DROP = "10'b0000000100" *) 
  (* REG_WR_RATE_CREDIT_LIMIT = "13'b0000100000000" *) 
  (* REG_WR_VCA_TOKEN0 = "8'b00010000" *) 
  ulp_inst_0_axi_noc_kernel0_0_bd_0ad1_M02_INI_stub_nmu_0_top bd_0ad1_M02_INI_stub_nmu_0_top_INST
       (.IF_NOC_AXI_ARADDR(IF_NOC_AXI_ARADDR),
        .IF_NOC_AXI_ARBURST(IF_NOC_AXI_ARBURST),
        .IF_NOC_AXI_ARCACHE(IF_NOC_AXI_ARCACHE),
        .IF_NOC_AXI_ARLEN(IF_NOC_AXI_ARLEN),
        .IF_NOC_AXI_ARLOCK(IF_NOC_AXI_ARLOCK),
        .IF_NOC_AXI_ARPROT(IF_NOC_AXI_ARPROT),
        .IF_NOC_AXI_ARQOS(IF_NOC_AXI_ARQOS),
        .IF_NOC_AXI_ARREADY(IF_NOC_AXI_ARREADY),
        .IF_NOC_AXI_ARREGION(IF_NOC_AXI_ARREGION),
        .IF_NOC_AXI_ARSIZE(IF_NOC_AXI_ARSIZE),
        .IF_NOC_AXI_ARVALID(IF_NOC_AXI_ARVALID),
        .IF_NOC_AXI_AWADDR(IF_NOC_AXI_AWADDR),
        .IF_NOC_AXI_AWBURST(IF_NOC_AXI_AWBURST),
        .IF_NOC_AXI_AWCACHE(IF_NOC_AXI_AWCACHE),
        .IF_NOC_AXI_AWLEN(IF_NOC_AXI_AWLEN),
        .IF_NOC_AXI_AWLOCK(IF_NOC_AXI_AWLOCK),
        .IF_NOC_AXI_AWPROT(IF_NOC_AXI_AWPROT),
        .IF_NOC_AXI_AWQOS(IF_NOC_AXI_AWQOS),
        .IF_NOC_AXI_AWREADY(IF_NOC_AXI_AWREADY),
        .IF_NOC_AXI_AWREGION(IF_NOC_AXI_AWREGION),
        .IF_NOC_AXI_AWSIZE(IF_NOC_AXI_AWSIZE),
        .IF_NOC_AXI_AWVALID(IF_NOC_AXI_AWVALID),
        .IF_NOC_AXI_BREADY(IF_NOC_AXI_BREADY),
        .IF_NOC_AXI_BRESP(IF_NOC_AXI_BRESP),
        .IF_NOC_AXI_BVALID(IF_NOC_AXI_BVALID),
        .IF_NOC_AXI_RDATA(IF_NOC_AXI_RDATA),
        .IF_NOC_AXI_RLAST(IF_NOC_AXI_RLAST),
        .IF_NOC_AXI_RREADY(IF_NOC_AXI_RREADY),
        .IF_NOC_AXI_RRESP(IF_NOC_AXI_RRESP),
        .IF_NOC_AXI_RVALID(IF_NOC_AXI_RVALID),
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
        .NMU(NMU),
        .NMU_RD_DEST_MODE(NMU_RD_DEST_MODE),
        .NMU_RD_USR_DST(NMU_RD_USR_DST),
        .NMU_WR_DEST_MODE(NMU_WR_DEST_MODE),
        .NMU_WR_USR_DST(NMU_WR_USR_DST),
        .aclk(aclk));
endmodule

(* ORIG_REF_NAME = "bd_0ad1_M02_INI_stub_nmu_0_top" *) (* REG_ADDR_DST0 = "16'b0000000000000000" *) (* REG_ADDR_DST1 = "16'b0000000000000000" *) 
(* REG_ADDR_DST10 = "16'b0000000000000000" *) (* REG_ADDR_DST11 = "16'b0000000000000000" *) (* REG_ADDR_DST12 = "16'b0000000000000000" *) 
(* REG_ADDR_DST13 = "16'b0000000000000000" *) (* REG_ADDR_DST14 = "16'b0000000000000000" *) (* REG_ADDR_DST15 = "16'b0000000000000000" *) 
(* REG_ADDR_DST2 = "16'b0000000000000000" *) (* REG_ADDR_DST3 = "16'b0000000000000000" *) (* REG_ADDR_DST4 = "16'b0000000000000000" *) 
(* REG_ADDR_DST5 = "16'b0000000000000000" *) (* REG_ADDR_DST6 = "16'b0000000000000000" *) (* REG_ADDR_DST7 = "16'b0000000000000000" *) 
(* REG_ADDR_DST8 = "16'b0000000000000000" *) (* REG_ADDR_DST9 = "16'b0000000000000000" *) (* REG_ADDR_ENABLE = "16'b0000000000000000" *) 
(* REG_ADDR_MADDR0 = "32'b00000000000000000000000000000000" *) (* REG_ADDR_MADDR1 = "32'b00000000000000000000000000000000" *) (* REG_ADDR_MADDR10 = "32'b00000000000000000000000000000000" *) 
(* REG_ADDR_MADDR11 = "32'b00000000000000000000000000000000" *) (* REG_ADDR_MADDR12 = "32'b00000000000000000000000000000000" *) (* REG_ADDR_MADDR13 = "32'b00000000000000000000000000000000" *) 
(* REG_ADDR_MADDR14 = "32'b00000000000000000000000000000000" *) (* REG_ADDR_MADDR15 = "32'b00000000000000000000000000000000" *) (* REG_ADDR_MADDR2 = "32'b00000000000000000000000000000000" *) 
(* REG_ADDR_MADDR3 = "32'b00000000000000000000000000000000" *) (* REG_ADDR_MADDR4 = "32'b00000000000000000000000000000000" *) (* REG_ADDR_MADDR5 = "32'b00000000000000000000000000000000" *) 
(* REG_ADDR_MADDR6 = "32'b00000000000000000000000000000000" *) (* REG_ADDR_MADDR7 = "32'b00000000000000000000000000000000" *) (* REG_ADDR_MADDR8 = "32'b00000000000000000000000000000000" *) 
(* REG_ADDR_MADDR9 = "32'b00000000000000000000000000000000" *) (* REG_ADDR_MASK0 = "32'b00000000000000000000000000000000" *) (* REG_ADDR_MASK1 = "32'b00000000000000000000000000000000" *) 
(* REG_ADDR_MASK10 = "32'b00000000000000000000000000000000" *) (* REG_ADDR_MASK11 = "32'b00000000000000000000000000000000" *) (* REG_ADDR_MASK12 = "32'b00000000000000000000000000000000" *) 
(* REG_ADDR_MASK13 = "32'b00000000000000000000000000000000" *) (* REG_ADDR_MASK14 = "32'b00000000000000000000000000000000" *) (* REG_ADDR_MASK15 = "32'b00000000000000000000000000000000" *) 
(* REG_ADDR_MASK2 = "32'b00000000000000000000000000000000" *) (* REG_ADDR_MASK3 = "32'b00000000000000000000000000000000" *) (* REG_ADDR_MASK4 = "32'b00000000000000000000000000000000" *) 
(* REG_ADDR_MASK5 = "32'b00000000000000000000000000000000" *) (* REG_ADDR_MASK6 = "32'b00000000000000000000000000000000" *) (* REG_ADDR_MASK7 = "32'b00000000000000000000000000000000" *) 
(* REG_ADDR_MASK8 = "32'b00000000000000000000000000000000" *) (* REG_ADDR_MASK9 = "32'b00000000000000000000000000000000" *) (* REG_ADDR_REMAP = "16'b0000000000000000" *) 
(* REG_ADDR_RPADDR0 = "32'b00000000000000000000000000000000" *) (* REG_ADDR_RPADDR1 = "32'b00000000000000000000000000000000" *) (* REG_ADDR_RPADDR10 = "32'b00000000000000000000000000000000" *) 
(* REG_ADDR_RPADDR11 = "32'b00000000000000000000000000000000" *) (* REG_ADDR_RPADDR12 = "32'b00000000000000000000000000000000" *) (* REG_ADDR_RPADDR13 = "32'b00000000000000000000000000000000" *) 
(* REG_ADDR_RPADDR14 = "32'b00000000000000000000000000000000" *) (* REG_ADDR_RPADDR15 = "32'b00000000000000000000000000000000" *) (* REG_ADDR_RPADDR2 = "32'b00000000000000000000000000000000" *) 
(* REG_ADDR_RPADDR3 = "32'b00000000000000000000000000000000" *) (* REG_ADDR_RPADDR4 = "32'b00000000000000000000000000000000" *) (* REG_ADDR_RPADDR5 = "32'b00000000000000000000000000000000" *) 
(* REG_ADDR_RPADDR6 = "32'b00000000000000000000000000000000" *) (* REG_ADDR_RPADDR7 = "32'b00000000000000000000000000000000" *) (* REG_ADDR_RPADDR8 = "32'b00000000000000000000000000000000" *) 
(* REG_ADDR_RPADDR9 = "32'b00000000000000000000000000000000" *) (* REG_ADR_MAP_CPM = "12'b111111000000" *) (* REG_ADR_MAP_FPD_AFI_0 = "12'b111111000000" *) 
(* REG_ADR_MAP_FPD_AFI_1 = "12'b111111000000" *) (* REG_ADR_MAP_LPD_AFI_FS = "12'b111111000000" *) (* REG_ADR_MAP_ME_ARRAY_0 = "12'b111111000000" *) 
(* REG_ADR_MAP_ME_ARRAY_1 = "12'b111111000000" *) (* REG_ADR_MAP_ME_ARRAY_2 = "12'b111111000000" *) (* REG_ADR_MAP_ME_ARRAY_3 = "12'b111111000000" *) 
(* REG_ADR_MAP_PCIE = "12'b111111000000" *) (* REG_ADR_MAP_PMC = "12'b111111000000" *) (* REG_ADR_MAP_PMC_ALIAS_0 = "12'b111111000000" *) 
(* REG_ADR_MAP_PMC_ALIAS_1 = "12'b111111000000" *) (* REG_ADR_MAP_PMC_ALIAS_2 = "12'b111111000000" *) (* REG_ADR_MAP_PMC_ALIAS_3 = "12'b111111000000" *) 
(* REG_ADR_MAP_QSPI = "12'b111111000000" *) (* REG_ADR_MAP_STM_GIC = "12'b111111000000" *) (* REG_ADR_MAP_XPDS = "12'b111111000000" *) 
(* REG_AXI_NON_MOD_DISABLE = "1'b0" *) (* REG_AXI_PAR_CHK = "2'b00" *) (* REG_CHOPSIZE = "4'b1010" *) 
(* REG_DDR_ADR_MAP0 = "15'b110011010001000" *) (* REG_DDR_ADR_MAP1 = "15'b001111111111111" *) (* REG_DDR_ADR_MAP2 = "15'b001111111111111" *) 
(* REG_DDR_ADR_MAP3 = "15'b001111111111111" *) (* REG_DDR_ADR_MAP4 = "15'b001111111111111" *) (* REG_DDR_ADR_MAP5 = "15'b001111111111111" *) 
(* REG_DDR_ADR_MAP6 = "15'b001111111111111" *) (* REG_DDR_DST_MAP0 = "12'b100100000000" *) (* REG_DDR_DST_MAP1 = "12'b011000000000" *) 
(* REG_DDR_DST_MAP2 = "12'b100000000000" *) (* REG_DDR_DST_MAP3 = "12'b011100000000" *) (* REG_DDR_DST_MAP4 = "12'b111111000000" *) 
(* REG_DDR_DST_MAP5 = "12'b111111000000" *) (* REG_DDR_DST_MAP6 = "12'b111111000000" *) (* REG_DDR_DST_MAP7 = "12'b111111000000" *) 
(* REG_DWIDTH = "3'b110" *) (* REG_ECC_CHK_EN = "1'b1" *) (* REG_HBM_MAP_T0_CH0 = "12'b111111000000" *) 
(* REG_HBM_MAP_T0_CH1 = "12'b111111000000" *) (* REG_HBM_MAP_T0_CH10 = "12'b111111000000" *) (* REG_HBM_MAP_T0_CH11 = "12'b111111000000" *) 
(* REG_HBM_MAP_T0_CH12 = "12'b111111000000" *) (* REG_HBM_MAP_T0_CH13 = "12'b111111000000" *) (* REG_HBM_MAP_T0_CH14 = "12'b111111000000" *) 
(* REG_HBM_MAP_T0_CH15 = "12'b111111000000" *) (* REG_HBM_MAP_T0_CH2 = "12'b111111000000" *) (* REG_HBM_MAP_T0_CH3 = "12'b111111000000" *) 
(* REG_HBM_MAP_T0_CH4 = "12'b111111000000" *) (* REG_HBM_MAP_T0_CH5 = "12'b111111000000" *) (* REG_HBM_MAP_T0_CH6 = "12'b111111000000" *) 
(* REG_HBM_MAP_T0_CH7 = "12'b111111000000" *) (* REG_HBM_MAP_T0_CH8 = "12'b111111000000" *) (* REG_HBM_MAP_T0_CH9 = "12'b111111000000" *) 
(* REG_HBM_MAP_T1_CH0 = "12'b111111000000" *) (* REG_HBM_MAP_T1_CH1 = "12'b111111000000" *) (* REG_HBM_MAP_T1_CH10 = "12'b111111000000" *) 
(* REG_HBM_MAP_T1_CH11 = "12'b111111000000" *) (* REG_HBM_MAP_T1_CH12 = "12'b111111000000" *) (* REG_HBM_MAP_T1_CH13 = "12'b111111000000" *) 
(* REG_HBM_MAP_T1_CH14 = "12'b111111000000" *) (* REG_HBM_MAP_T1_CH15 = "12'b111111000000" *) (* REG_HBM_MAP_T1_CH2 = "12'b111111000000" *) 
(* REG_HBM_MAP_T1_CH3 = "12'b111111000000" *) (* REG_HBM_MAP_T1_CH4 = "12'b111111000000" *) (* REG_HBM_MAP_T1_CH5 = "12'b111111000000" *) 
(* REG_HBM_MAP_T1_CH6 = "12'b111111000000" *) (* REG_HBM_MAP_T1_CH7 = "12'b111111000000" *) (* REG_HBM_MAP_T1_CH8 = "12'b111111000000" *) 
(* REG_HBM_MAP_T1_CH9 = "12'b111111000000" *) (* REG_HBM_MAP_T2_CH0 = "12'b111111000000" *) (* REG_HBM_MAP_T2_CH1 = "12'b111111000000" *) 
(* REG_HBM_MAP_T2_CH10 = "12'b111111000000" *) (* REG_HBM_MAP_T2_CH11 = "12'b111111000000" *) (* REG_HBM_MAP_T2_CH12 = "12'b111111000000" *) 
(* REG_HBM_MAP_T2_CH13 = "12'b111111000000" *) (* REG_HBM_MAP_T2_CH14 = "12'b111111000000" *) (* REG_HBM_MAP_T2_CH15 = "12'b111111000000" *) 
(* REG_HBM_MAP_T2_CH2 = "12'b111111000000" *) (* REG_HBM_MAP_T2_CH3 = "12'b111111000000" *) (* REG_HBM_MAP_T2_CH4 = "12'b111111000000" *) 
(* REG_HBM_MAP_T2_CH5 = "12'b111111000000" *) (* REG_HBM_MAP_T2_CH6 = "12'b111111000000" *) (* REG_HBM_MAP_T2_CH7 = "12'b111111000000" *) 
(* REG_HBM_MAP_T2_CH8 = "12'b111111000000" *) (* REG_HBM_MAP_T2_CH9 = "12'b111111000000" *) (* REG_HBM_MAP_T3_CH0 = "12'b111111000000" *) 
(* REG_HBM_MAP_T3_CH1 = "12'b111111000000" *) (* REG_HBM_MAP_T3_CH10 = "12'b111111000000" *) (* REG_HBM_MAP_T3_CH11 = "12'b111111000000" *) 
(* REG_HBM_MAP_T3_CH12 = "12'b111111000000" *) (* REG_HBM_MAP_T3_CH13 = "12'b111111000000" *) (* REG_HBM_MAP_T3_CH14 = "12'b111111000000" *) 
(* REG_HBM_MAP_T3_CH15 = "12'b111111000000" *) (* REG_HBM_MAP_T3_CH2 = "12'b111111000000" *) (* REG_HBM_MAP_T3_CH3 = "12'b111111000000" *) 
(* REG_HBM_MAP_T3_CH4 = "12'b111111000000" *) (* REG_HBM_MAP_T3_CH5 = "12'b111111000000" *) (* REG_HBM_MAP_T3_CH6 = "12'b111111000000" *) 
(* REG_HBM_MAP_T3_CH7 = "12'b111111000000" *) (* REG_HBM_MAP_T3_CH8 = "12'b111111000000" *) (* REG_HBM_MAP_T3_CH9 = "12'b111111000000" *) 
(* REG_MODE_SELECT = "16'b0000000000000000" *) (* REG_OUTSTANDING_RD_TXN = "7'b1000000" *) (* REG_OUTSTANDING_WR_TXN = "7'b1000000" *) 
(* REG_PRIORITY = "2'b00" *) (* REG_RD_AXPROT_SEL = "6'b000000" *) (* REG_RD_RATE_CREDIT_DROP = "10'b0000000100" *) 
(* REG_RD_RATE_CREDIT_LIMIT = "13'b0000100000000" *) (* REG_RD_VCA_TOKEN0 = "8'b00010100" *) (* REG_RPOISON_TO_SLVERR = "1'b0" *) 
(* REG_RROB_RAM_SETTING = "9'b000010010" *) (* REG_SMID_SEL = "20'b00000000000000000000" *) (* REG_SRC = "12'b001000000000" *) 
(* REG_TBASE_AXI_TIMEOUT = "3'b001" *) (* REG_TBASE_MODE_RLIMIT_RD = "3'b010" *) (* REG_TBASE_MODE_RLIMIT_WR = "3'b010" *) 
(* REG_TBASE_TRK_TIMEOUT = "3'b001" *) (* REG_VC_MAP = "12'b011010001000" *) (* REG_WBUF_LAUNCH_SIZE = "6'b010000" *) 
(* REG_WBUF_RAM_SETTING = "9'b000010010" *) (* REG_WR_AXPROT_SEL = "6'b000000" *) (* REG_WR_RATE_CREDIT_DROP = "10'b0000000100" *) 
(* REG_WR_RATE_CREDIT_LIMIT = "13'b0000100000000" *) (* REG_WR_VCA_TOKEN0 = "8'b00010000" *) 
module ulp_inst_0_axi_noc_kernel0_0_bd_0ad1_M02_INI_stub_nmu_0_top
   (IF_NOC_AXI_WVALID,
    IF_NOC_AXI_WREADY,
    IF_NOC_AXI_WLAST,
    IF_NOC_AXI_WDATA,
    IF_NOC_AXI_WSTRB,
    IF_NOC_AXI_ARREADY,
    IF_NOC_AXI_AWREADY,
    IF_NOC_AXI_BRESP,
    IF_NOC_AXI_BVALID,
    IF_NOC_AXI_RDATA,
    IF_NOC_AXI_RLAST,
    IF_NOC_AXI_RRESP,
    IF_NOC_AXI_RVALID,
    IF_NOC_NPP_IN_NOC_CREDIT_RETURN,
    IF_NOC_NPP_OUT_NOC_CREDIT_RDY,
    IF_NOC_NPP_OUT_NOC_FLIT,
    IF_NOC_NPP_OUT_NOC_VALID,
    aclk,
    IF_NOC_AXI_ARADDR,
    IF_NOC_AXI_ARBURST,
    IF_NOC_AXI_ARCACHE,
    IF_NOC_AXI_ARLEN,
    IF_NOC_AXI_ARLOCK,
    IF_NOC_AXI_ARPROT,
    IF_NOC_AXI_ARQOS,
    IF_NOC_AXI_ARREGION,
    IF_NOC_AXI_ARSIZE,
    NMU_RD_DEST_MODE,
    NMU_WR_DEST_MODE,
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
    IF_NOC_AXI_AWVALID,
    IF_NOC_AXI_BREADY,
    IF_NOC_AXI_RREADY,
    IF_NOC_NPP_IN_NOC_CREDIT_RDY,
    IF_NOC_NPP_IN_NOC_FLIT,
    IF_NOC_NPP_IN_NOC_VALID,
    IF_NOC_NPP_OUT_NOC_CREDIT_RETURN,
    NMU,
    NMU_WR_USR_DST,
    NMU_RD_USR_DST);
  input IF_NOC_AXI_WVALID;
  output IF_NOC_AXI_WREADY;
  input [0:0]IF_NOC_AXI_WLAST;
  input [511:0]IF_NOC_AXI_WDATA;
  input [63:0]IF_NOC_AXI_WSTRB;
  output IF_NOC_AXI_ARREADY;
  output IF_NOC_AXI_AWREADY;
  output [1:0]IF_NOC_AXI_BRESP;
  output IF_NOC_AXI_BVALID;
  output [511:0]IF_NOC_AXI_RDATA;
  output [0:0]IF_NOC_AXI_RLAST;
  output [1:0]IF_NOC_AXI_RRESP;
  output IF_NOC_AXI_RVALID;
  output [7:0]IF_NOC_NPP_IN_NOC_CREDIT_RETURN;
  output IF_NOC_NPP_OUT_NOC_CREDIT_RDY;
  output [181:0]IF_NOC_NPP_OUT_NOC_FLIT;
  output [7:0]IF_NOC_NPP_OUT_NOC_VALID;
  input aclk;
  input [0:0]IF_NOC_AXI_ARADDR;
  input [1:0]IF_NOC_AXI_ARBURST;
  input [3:0]IF_NOC_AXI_ARCACHE;
  input [7:0]IF_NOC_AXI_ARLEN;
  input [0:0]IF_NOC_AXI_ARLOCK;
  input [2:0]IF_NOC_AXI_ARPROT;
  input [3:0]IF_NOC_AXI_ARQOS;
  input [3:0]IF_NOC_AXI_ARREGION;
  input [2:0]IF_NOC_AXI_ARSIZE;
  input NMU_RD_DEST_MODE;
  input NMU_WR_DEST_MODE;
  input IF_NOC_AXI_ARVALID;
  input [0:0]IF_NOC_AXI_AWADDR;
  input [1:0]IF_NOC_AXI_AWBURST;
  input [3:0]IF_NOC_AXI_AWCACHE;
  input [7:0]IF_NOC_AXI_AWLEN;
  input [0:0]IF_NOC_AXI_AWLOCK;
  input [2:0]IF_NOC_AXI_AWPROT;
  input [3:0]IF_NOC_AXI_AWQOS;
  input [3:0]IF_NOC_AXI_AWREGION;
  input [2:0]IF_NOC_AXI_AWSIZE;
  input IF_NOC_AXI_AWVALID;
  input IF_NOC_AXI_BREADY;
  input IF_NOC_AXI_RREADY;
  input IF_NOC_NPP_IN_NOC_CREDIT_RDY;
  input [181:0]IF_NOC_NPP_IN_NOC_FLIT;
  input [7:0]IF_NOC_NPP_IN_NOC_VALID;
  input [7:0]IF_NOC_NPP_OUT_NOC_CREDIT_RETURN;
  output NMU;
  input [11:0]NMU_WR_USR_DST;
  input [11:0]NMU_RD_USR_DST;

  wire [0:0]IF_NOC_AXI_ARADDR;
  wire [1:0]IF_NOC_AXI_ARBURST;
  wire [3:0]IF_NOC_AXI_ARCACHE;
  wire [7:0]IF_NOC_AXI_ARLEN;
  wire [0:0]IF_NOC_AXI_ARLOCK;
  wire [2:0]IF_NOC_AXI_ARPROT;
  wire [3:0]IF_NOC_AXI_ARQOS;
  wire IF_NOC_AXI_ARREADY;
  wire [3:0]IF_NOC_AXI_ARREGION;
  wire [2:0]IF_NOC_AXI_ARSIZE;
  wire IF_NOC_AXI_ARVALID;
  wire [0:0]IF_NOC_AXI_AWADDR;
  wire [1:0]IF_NOC_AXI_AWBURST;
  wire [3:0]IF_NOC_AXI_AWCACHE;
  wire [7:0]IF_NOC_AXI_AWLEN;
  wire [0:0]IF_NOC_AXI_AWLOCK;
  wire [2:0]IF_NOC_AXI_AWPROT;
  wire [3:0]IF_NOC_AXI_AWQOS;
  wire IF_NOC_AXI_AWREADY;
  wire [3:0]IF_NOC_AXI_AWREGION;
  wire [2:0]IF_NOC_AXI_AWSIZE;
  wire IF_NOC_AXI_AWVALID;
  wire IF_NOC_AXI_BREADY;
  wire [1:0]IF_NOC_AXI_BRESP;
  wire IF_NOC_AXI_BVALID;
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
  wire NMU;
  wire NMU_RD_DEST_MODE;
  wire [11:0]NMU_RD_USR_DST;
  wire NMU_WR_DEST_MODE;
  wire [11:0]NMU_WR_USR_DST;
  wire aclk;
  wire NLW_NOC_NMU512_INST_IF_NOC_AXI_RPOISON_UNCONNECTED;
  wire NLW_NOC_NMU512_INST_IF_NOC_NPP_IN_NOC_CREDIT_RETURN_EN_UNCONNECTED;
  wire NLW_NOC_NMU512_INST_IF_NOC_NPP_OUT_NOC_FLIT_EN_UNCONNECTED;
  wire NLW_NOC_NMU512_INST_IF_NOC_NPP_OUT_NOC_VALID_EN_UNCONNECTED;
  wire [15:0]NLW_NOC_NMU512_INST_IF_NOC_AXI_BID_UNCONNECTED;
  wire [15:0]NLW_NOC_NMU512_INST_IF_NOC_AXI_BUSER_UNCONNECTED;
  wire [63:0]NLW_NOC_NMU512_INST_IF_NOC_AXI_RDATA_PAR_UNCONNECTED;
  wire [15:0]NLW_NOC_NMU512_INST_IF_NOC_AXI_RID_UNCONNECTED;
  wire [15:0]NLW_NOC_NMU512_INST_IF_NOC_AXI_RUSER_UNCONNECTED;
  wire [9:0]NLW_NOC_NMU512_INST_IF_NOC_AXI_TDEST_UNCONNECTED;

  (* BOX_TYPE = "PRIMITIVE" *) 
  (* DONT_TOUCH *) 
  NOC_NMU512 #(
    .REG_ADDR_DST0(16'h0000),
    .REG_ADDR_DST1(16'h0000),
    .REG_ADDR_DST10(16'h0000),
    .REG_ADDR_DST11(16'h0000),
    .REG_ADDR_DST12(16'h0000),
    .REG_ADDR_DST13(16'h0000),
    .REG_ADDR_DST14(16'h0000),
    .REG_ADDR_DST15(16'h0000),
    .REG_ADDR_DST2(16'h0000),
    .REG_ADDR_DST3(16'h0000),
    .REG_ADDR_DST4(16'h0000),
    .REG_ADDR_DST5(16'h0000),
    .REG_ADDR_DST6(16'h0000),
    .REG_ADDR_DST7(16'h0000),
    .REG_ADDR_DST8(16'h0000),
    .REG_ADDR_DST9(16'h0000),
    .REG_ADDR_ENABLE(16'h0000),
    .REG_ADDR_MADDR0(32'h00000000),
    .REG_ADDR_MADDR1(32'h00000000),
    .REG_ADDR_MADDR10(32'h00000000),
    .REG_ADDR_MADDR11(32'h00000000),
    .REG_ADDR_MADDR12(32'h00000000),
    .REG_ADDR_MADDR13(32'h00000000),
    .REG_ADDR_MADDR14(32'h00000000),
    .REG_ADDR_MADDR15(32'h00000000),
    .REG_ADDR_MADDR2(32'h00000000),
    .REG_ADDR_MADDR3(32'h00000000),
    .REG_ADDR_MADDR4(32'h00000000),
    .REG_ADDR_MADDR5(32'h00000000),
    .REG_ADDR_MADDR6(32'h00000000),
    .REG_ADDR_MADDR7(32'h00000000),
    .REG_ADDR_MADDR8(32'h00000000),
    .REG_ADDR_MADDR9(32'h00000000),
    .REG_ADDR_MASK0(32'h00000000),
    .REG_ADDR_MASK1(32'h00000000),
    .REG_ADDR_MASK10(32'h00000000),
    .REG_ADDR_MASK11(32'h00000000),
    .REG_ADDR_MASK12(32'h00000000),
    .REG_ADDR_MASK13(32'h00000000),
    .REG_ADDR_MASK14(32'h00000000),
    .REG_ADDR_MASK15(32'h00000000),
    .REG_ADDR_MASK2(32'h00000000),
    .REG_ADDR_MASK3(32'h00000000),
    .REG_ADDR_MASK4(32'h00000000),
    .REG_ADDR_MASK5(32'h00000000),
    .REG_ADDR_MASK6(32'h00000000),
    .REG_ADDR_MASK7(32'h00000000),
    .REG_ADDR_MASK8(32'h00000000),
    .REG_ADDR_MASK9(32'h00000000),
    .REG_ADDR_REMAP(16'h0000),
    .REG_ADDR_RPADDR0(32'h00000000),
    .REG_ADDR_RPADDR1(32'h00000000),
    .REG_ADDR_RPADDR10(32'h00000000),
    .REG_ADDR_RPADDR11(32'h00000000),
    .REG_ADDR_RPADDR12(32'h00000000),
    .REG_ADDR_RPADDR13(32'h00000000),
    .REG_ADDR_RPADDR14(32'h00000000),
    .REG_ADDR_RPADDR15(32'h00000000),
    .REG_ADDR_RPADDR2(32'h00000000),
    .REG_ADDR_RPADDR3(32'h00000000),
    .REG_ADDR_RPADDR4(32'h00000000),
    .REG_ADDR_RPADDR5(32'h00000000),
    .REG_ADDR_RPADDR6(32'h00000000),
    .REG_ADDR_RPADDR7(32'h00000000),
    .REG_ADDR_RPADDR8(32'h00000000),
    .REG_ADDR_RPADDR9(32'h00000000),
    .REG_ADR_MAP_CPM(12'hFC0),
    .REG_ADR_MAP_FPD_AFI_0(12'hFC0),
    .REG_ADR_MAP_FPD_AFI_1(12'hFC0),
    .REG_ADR_MAP_LPD_AFI_FS(12'hFC0),
    .REG_ADR_MAP_ME_ARRAY_0(12'hFC0),
    .REG_ADR_MAP_ME_ARRAY_1(12'hFC0),
    .REG_ADR_MAP_ME_ARRAY_2(12'hFC0),
    .REG_ADR_MAP_ME_ARRAY_3(12'hFC0),
    .REG_ADR_MAP_PCIE(12'hFC0),
    .REG_ADR_MAP_PMC(12'hFC0),
    .REG_ADR_MAP_PMC_ALIAS_0(12'hFC0),
    .REG_ADR_MAP_PMC_ALIAS_1(12'hFC0),
    .REG_ADR_MAP_PMC_ALIAS_2(12'hFC0),
    .REG_ADR_MAP_PMC_ALIAS_3(12'hFC0),
    .REG_ADR_MAP_QSPI(12'hFC0),
    .REG_ADR_MAP_STM_GIC(12'hFC0),
    .REG_ADR_MAP_XPDS(12'hFC0),
    .REG_AXI_NON_MOD_DISABLE(1'h0),
    .REG_AXI_PAR_CHK(2'h0),
    .REG_CHOPSIZE(4'hA),
    .REG_DDR_ADR_MAP0(15'h6688),
    .REG_DDR_ADR_MAP1(15'h1FFF),
    .REG_DDR_ADR_MAP2(15'h1FFF),
    .REG_DDR_ADR_MAP3(15'h1FFF),
    .REG_DDR_ADR_MAP4(15'h1FFF),
    .REG_DDR_ADR_MAP5(15'h1FFF),
    .REG_DDR_ADR_MAP6(15'h1FFF),
    .REG_DDR_DST_MAP0(12'h900),
    .REG_DDR_DST_MAP1(12'h600),
    .REG_DDR_DST_MAP2(12'h800),
    .REG_DDR_DST_MAP3(12'h700),
    .REG_DDR_DST_MAP4(12'hFC0),
    .REG_DDR_DST_MAP5(12'hFC0),
    .REG_DDR_DST_MAP6(12'hFC0),
    .REG_DDR_DST_MAP7(12'hFC0),
    .REG_DWIDTH(3'h6),
    .REG_ECC_CHK_EN(1'h1),
    .REG_HBM_MAP_T0_CH0(12'hFC0),
    .REG_HBM_MAP_T0_CH1(12'hFC0),
    .REG_HBM_MAP_T0_CH10(12'hFC0),
    .REG_HBM_MAP_T0_CH11(12'hFC0),
    .REG_HBM_MAP_T0_CH12(12'hFC0),
    .REG_HBM_MAP_T0_CH13(12'hFC0),
    .REG_HBM_MAP_T0_CH14(12'hFC0),
    .REG_HBM_MAP_T0_CH15(12'hFC0),
    .REG_HBM_MAP_T0_CH2(12'hFC0),
    .REG_HBM_MAP_T0_CH3(12'hFC0),
    .REG_HBM_MAP_T0_CH4(12'hFC0),
    .REG_HBM_MAP_T0_CH5(12'hFC0),
    .REG_HBM_MAP_T0_CH6(12'hFC0),
    .REG_HBM_MAP_T0_CH7(12'hFC0),
    .REG_HBM_MAP_T0_CH8(12'hFC0),
    .REG_HBM_MAP_T0_CH9(12'hFC0),
    .REG_HBM_MAP_T1_CH0(12'hFC0),
    .REG_HBM_MAP_T1_CH1(12'hFC0),
    .REG_HBM_MAP_T1_CH10(12'hFC0),
    .REG_HBM_MAP_T1_CH11(12'hFC0),
    .REG_HBM_MAP_T1_CH12(12'hFC0),
    .REG_HBM_MAP_T1_CH13(12'hFC0),
    .REG_HBM_MAP_T1_CH14(12'hFC0),
    .REG_HBM_MAP_T1_CH15(12'hFC0),
    .REG_HBM_MAP_T1_CH2(12'hFC0),
    .REG_HBM_MAP_T1_CH3(12'hFC0),
    .REG_HBM_MAP_T1_CH4(12'hFC0),
    .REG_HBM_MAP_T1_CH5(12'hFC0),
    .REG_HBM_MAP_T1_CH6(12'hFC0),
    .REG_HBM_MAP_T1_CH7(12'hFC0),
    .REG_HBM_MAP_T1_CH8(12'hFC0),
    .REG_HBM_MAP_T1_CH9(12'hFC0),
    .REG_HBM_MAP_T2_CH0(12'hFC0),
    .REG_HBM_MAP_T2_CH1(12'hFC0),
    .REG_HBM_MAP_T2_CH10(12'hFC0),
    .REG_HBM_MAP_T2_CH11(12'hFC0),
    .REG_HBM_MAP_T2_CH12(12'hFC0),
    .REG_HBM_MAP_T2_CH13(12'hFC0),
    .REG_HBM_MAP_T2_CH14(12'hFC0),
    .REG_HBM_MAP_T2_CH15(12'hFC0),
    .REG_HBM_MAP_T2_CH2(12'hFC0),
    .REG_HBM_MAP_T2_CH3(12'hFC0),
    .REG_HBM_MAP_T2_CH4(12'hFC0),
    .REG_HBM_MAP_T2_CH5(12'hFC0),
    .REG_HBM_MAP_T2_CH6(12'hFC0),
    .REG_HBM_MAP_T2_CH7(12'hFC0),
    .REG_HBM_MAP_T2_CH8(12'hFC0),
    .REG_HBM_MAP_T2_CH9(12'hFC0),
    .REG_HBM_MAP_T3_CH0(12'hFC0),
    .REG_HBM_MAP_T3_CH1(12'hFC0),
    .REG_HBM_MAP_T3_CH10(12'hFC0),
    .REG_HBM_MAP_T3_CH11(12'hFC0),
    .REG_HBM_MAP_T3_CH12(12'hFC0),
    .REG_HBM_MAP_T3_CH13(12'hFC0),
    .REG_HBM_MAP_T3_CH14(12'hFC0),
    .REG_HBM_MAP_T3_CH15(12'hFC0),
    .REG_HBM_MAP_T3_CH2(12'hFC0),
    .REG_HBM_MAP_T3_CH3(12'hFC0),
    .REG_HBM_MAP_T3_CH4(12'hFC0),
    .REG_HBM_MAP_T3_CH5(12'hFC0),
    .REG_HBM_MAP_T3_CH6(12'hFC0),
    .REG_HBM_MAP_T3_CH7(12'hFC0),
    .REG_HBM_MAP_T3_CH8(12'hFC0),
    .REG_HBM_MAP_T3_CH9(12'hFC0),
    .REG_MODE_SELECT(16'h0000),
    .REG_OUTSTANDING_RD_TXN(7'h40),
    .REG_OUTSTANDING_WR_TXN(7'h40),
    .REG_PRIORITY(2'h0),
    .REG_RD_AXPROT_SEL(6'h00),
    .REG_RD_RATE_CREDIT_DROP(10'h004),
    .REG_RD_RATE_CREDIT_LIMIT(13'h0100),
    .REG_RD_VCA_TOKEN0(8'h14),
    .REG_RPOISON_TO_SLVERR(1'h0),
    .REG_RROB_RAM_SETTING(9'h012),
    .REG_SMID_SEL(20'h00000),
    .REG_SRC(12'h200),
    .REG_TBASE_AXI_TIMEOUT(4'h1),
    .REG_TBASE_MODE_RLIMIT_RD(3'h2),
    .REG_TBASE_MODE_RLIMIT_WR(3'h2),
    .REG_TBASE_TRK_TIMEOUT(4'h1),
    .REG_VC_MAP(12'h688),
    .REG_WBUF_LAUNCH_SIZE(6'h10),
    .REG_WBUF_RAM_SETTING(9'h012),
    .REG_WR_AXPROT_SEL(6'h00),
    .REG_WR_RATE_CREDIT_DROP(10'h004),
    .REG_WR_RATE_CREDIT_LIMIT(13'h0100),
    .REG_WR_VCA_TOKEN0(8'h10)) 
    NOC_NMU512_INST
       (.CLK(aclk),
        .IF_NOC_AXI_ARADDR({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,IF_NOC_AXI_ARADDR}),
        .IF_NOC_AXI_ARADDR_PAR({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .IF_NOC_AXI_ARBURST(IF_NOC_AXI_ARBURST),
        .IF_NOC_AXI_ARCACHE(IF_NOC_AXI_ARCACHE),
        .IF_NOC_AXI_ARID({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .IF_NOC_AXI_ARLEN(IF_NOC_AXI_ARLEN),
        .IF_NOC_AXI_ARLOCK(IF_NOC_AXI_ARLOCK),
        .IF_NOC_AXI_ARPROT(IF_NOC_AXI_ARPROT),
        .IF_NOC_AXI_ARQOS(IF_NOC_AXI_ARQOS),
        .IF_NOC_AXI_ARREADY(IF_NOC_AXI_ARREADY),
        .IF_NOC_AXI_ARREGION(IF_NOC_AXI_ARREGION),
        .IF_NOC_AXI_ARSIZE(IF_NOC_AXI_ARSIZE),
        .IF_NOC_AXI_ARUSER({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .IF_NOC_AXI_ARVALID(IF_NOC_AXI_ARVALID),
        .IF_NOC_AXI_AWADDR({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,IF_NOC_AXI_AWADDR}),
        .IF_NOC_AXI_AWADDR_PAR({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .IF_NOC_AXI_AWBURST(IF_NOC_AXI_AWBURST),
        .IF_NOC_AXI_AWCACHE(IF_NOC_AXI_AWCACHE),
        .IF_NOC_AXI_AWID({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .IF_NOC_AXI_AWLEN(IF_NOC_AXI_AWLEN),
        .IF_NOC_AXI_AWLOCK(IF_NOC_AXI_AWLOCK),
        .IF_NOC_AXI_AWPROT(IF_NOC_AXI_AWPROT),
        .IF_NOC_AXI_AWQOS(IF_NOC_AXI_AWQOS),
        .IF_NOC_AXI_AWREADY(IF_NOC_AXI_AWREADY),
        .IF_NOC_AXI_AWREGION(IF_NOC_AXI_AWREGION),
        .IF_NOC_AXI_AWSIZE(IF_NOC_AXI_AWSIZE),
        .IF_NOC_AXI_AWUSER({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .IF_NOC_AXI_AWVALID(IF_NOC_AXI_AWVALID),
        .IF_NOC_AXI_BID(NLW_NOC_NMU512_INST_IF_NOC_AXI_BID_UNCONNECTED[15:0]),
        .IF_NOC_AXI_BREADY(IF_NOC_AXI_BREADY),
        .IF_NOC_AXI_BRESP(IF_NOC_AXI_BRESP),
        .IF_NOC_AXI_BUSER(NLW_NOC_NMU512_INST_IF_NOC_AXI_BUSER_UNCONNECTED[15:0]),
        .IF_NOC_AXI_BVALID(IF_NOC_AXI_BVALID),
        .IF_NOC_AXI_RDATA(IF_NOC_AXI_RDATA),
        .IF_NOC_AXI_RDATA_PAR(NLW_NOC_NMU512_INST_IF_NOC_AXI_RDATA_PAR_UNCONNECTED[63:0]),
        .IF_NOC_AXI_RID(NLW_NOC_NMU512_INST_IF_NOC_AXI_RID_UNCONNECTED[15:0]),
        .IF_NOC_AXI_RLAST(IF_NOC_AXI_RLAST),
        .IF_NOC_AXI_RPOISON(NLW_NOC_NMU512_INST_IF_NOC_AXI_RPOISON_UNCONNECTED),
        .IF_NOC_AXI_RREADY(IF_NOC_AXI_RREADY),
        .IF_NOC_AXI_RRESP(IF_NOC_AXI_RRESP),
        .IF_NOC_AXI_RUSER(NLW_NOC_NMU512_INST_IF_NOC_AXI_RUSER_UNCONNECTED[15:0]),
        .IF_NOC_AXI_RVALID(IF_NOC_AXI_RVALID),
        .IF_NOC_AXI_TDEST(NLW_NOC_NMU512_INST_IF_NOC_AXI_TDEST_UNCONNECTED[9:0]),
        .IF_NOC_AXI_WDATA(IF_NOC_AXI_WDATA),
        .IF_NOC_AXI_WDATA_PAR({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .IF_NOC_AXI_WID({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .IF_NOC_AXI_WLAST(IF_NOC_AXI_WLAST),
        .IF_NOC_AXI_WPOISON(1'b0),
        .IF_NOC_AXI_WREADY(IF_NOC_AXI_WREADY),
        .IF_NOC_AXI_WSTRB(IF_NOC_AXI_WSTRB),
        .IF_NOC_AXI_WUSER({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .IF_NOC_AXI_WVALID(IF_NOC_AXI_WVALID),
        .IF_NOC_NPP_IN_NOC_CREDIT_RDY(IF_NOC_NPP_IN_NOC_CREDIT_RDY),
        .IF_NOC_NPP_IN_NOC_CREDIT_RETURN(IF_NOC_NPP_IN_NOC_CREDIT_RETURN),
        .IF_NOC_NPP_IN_NOC_CREDIT_RETURN_EN(NLW_NOC_NMU512_INST_IF_NOC_NPP_IN_NOC_CREDIT_RETURN_EN_UNCONNECTED),
        .IF_NOC_NPP_IN_NOC_FLIT(IF_NOC_NPP_IN_NOC_FLIT),
        .IF_NOC_NPP_IN_NOC_FLIT_EN(1'b1),
        .IF_NOC_NPP_IN_NOC_VALID(IF_NOC_NPP_IN_NOC_VALID),
        .IF_NOC_NPP_IN_NOC_VALID_EN(1'b1),
        .IF_NOC_NPP_OUT_NOC_CREDIT_RDY(IF_NOC_NPP_OUT_NOC_CREDIT_RDY),
        .IF_NOC_NPP_OUT_NOC_CREDIT_RETURN(IF_NOC_NPP_OUT_NOC_CREDIT_RETURN),
        .IF_NOC_NPP_OUT_NOC_CREDIT_RETURN_EN(1'b1),
        .IF_NOC_NPP_OUT_NOC_FLIT(IF_NOC_NPP_OUT_NOC_FLIT),
        .IF_NOC_NPP_OUT_NOC_FLIT_EN(NLW_NOC_NMU512_INST_IF_NOC_NPP_OUT_NOC_FLIT_EN_UNCONNECTED),
        .IF_NOC_NPP_OUT_NOC_VALID(IF_NOC_NPP_OUT_NOC_VALID),
        .IF_NOC_NPP_OUT_NOC_VALID_EN(NLW_NOC_NMU512_INST_IF_NOC_NPP_OUT_NOC_VALID_EN_UNCONNECTED),
        .NMU(NMU),
        .NMU_RD_DEST_MODE(NMU_RD_DEST_MODE),
        .NMU_RD_USR_DST(NMU_RD_USR_DST),
        .NMU_USR_INTERRUPT_IN({1'b0,1'b0,1'b0,1'b0}),
        .NMU_WR_DEST_MODE(NMU_WR_DEST_MODE),
        .NMU_WR_USR_DST(NMU_WR_USR_DST));
endmodule

(* CHECK_LICENSE_TYPE = "bd_0ad1_no_black_box_0,xlconstant_v1_1_7_xlconstant,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* ORIG_REF_NAME = "bd_0ad1_no_black_box_0" *) 
(* X_CORE_INFO = "xlconstant_v1_1_7_xlconstant,Vivado 2022.2" *) 
module ulp_inst_0_axi_noc_kernel0_0_bd_0ad1_no_black_box_0
   (dout);
  output [0:0]dout;

  wire \<const1> ;

  assign dout[0] = \<const1> ;
  VCC VCC
       (.P(\<const1> ));
endmodule

(* CHECK_LICENSE_TYPE = "bd_0ad1_stub_clock_0,xlconstant_v1_1_7_xlconstant,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* ORIG_REF_NAME = "bd_0ad1_stub_clock_0" *) 
(* X_CORE_INFO = "xlconstant_v1_1_7_xlconstant,Vivado 2022.2" *) 
module ulp_inst_0_axi_noc_kernel0_0_bd_0ad1_stub_clock_0
   (dout);
  output [0:0]dout;

  wire \<const1> ;

  assign dout[0] = \<const1> ;
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
