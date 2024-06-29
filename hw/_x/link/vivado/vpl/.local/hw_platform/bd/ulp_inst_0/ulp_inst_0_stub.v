// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2022.2 (lin64) Build 3671981 Fri Oct 14 04:59:54 MDT 2022
// Date        : Mon Dec  5 00:32:05 2022
// Host        : xsjdcslab02.xilinx.com running 64-bit CentOS Linux release 8.1.1911 (Core)
// Command     : write_verilog -force -mode synth_stub
//               /proj/ipeng-nobkup/ccase/platforms/p4/Platforms_ccase_vck5000_dev0/Platforms/sources/vck5000/chassis/gen4x8_qdma/2/build_1205a_dbg_hub_fw_flop/hardware/xilinx_vck5000_gen4x8_qdma_base_2/xilinx_vck5000_gen4x8_qdma_base_2.gen/sources_1/bd/top/bd/ulp_inst_0/ulp_inst_0_stub.v
// Design      : ulp_inst_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xcvc1902-vsvd1760-2MP-e-S
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
module ulp_inst_0(BLP_M_M00_INI_0_internoc, 
  BLP_M_M01_INI_0_internoc, BLP_M_M02_INI_0_internoc, BLP_S_AXI_CTRL_USER_00_araddr, 
  BLP_S_AXI_CTRL_USER_00_arprot, BLP_S_AXI_CTRL_USER_00_arready, 
  BLP_S_AXI_CTRL_USER_00_arvalid, BLP_S_AXI_CTRL_USER_00_awaddr, 
  BLP_S_AXI_CTRL_USER_00_awprot, BLP_S_AXI_CTRL_USER_00_awready, 
  BLP_S_AXI_CTRL_USER_00_awvalid, BLP_S_AXI_CTRL_USER_00_bready, 
  BLP_S_AXI_CTRL_USER_00_bresp, BLP_S_AXI_CTRL_USER_00_bvalid, 
  BLP_S_AXI_CTRL_USER_00_rdata, BLP_S_AXI_CTRL_USER_00_rready, 
  BLP_S_AXI_CTRL_USER_00_rresp, BLP_S_AXI_CTRL_USER_00_rvalid, 
  BLP_S_AXI_CTRL_USER_00_wdata, BLP_S_AXI_CTRL_USER_00_wready, 
  BLP_S_AXI_CTRL_USER_00_wstrb, BLP_S_AXI_CTRL_USER_00_wvalid, 
  BLP_S_INI_AIE_00_internoc, BLP_S_INI_DBG_00_internoc, BLP_S_INI_PLRAM_00_internoc, 
  blp_m_dbg_hub_fw_00, blp_m_ext_tog_ctrl_kernel_00_enable, 
  blp_m_ext_tog_ctrl_kernel_00_in, blp_m_ext_tog_ctrl_kernel_01_enable, 
  blp_m_ext_tog_ctrl_kernel_01_in, blp_m_irq_kernel_00, blp_s_aclk_ctrl_00, 
  blp_s_aclk_ext_tog_kernel_00, blp_s_aclk_ext_tog_kernel_01, blp_s_aclk_kernel_00, 
  blp_s_aclk_kernel_01, blp_s_aclk_pcie_00, blp_s_aresetn_pcie_reset_00, 
  blp_s_aresetn_pr_reset_00, blp_s_ext_tog_ctrl_kernel_00_out, 
  blp_s_ext_tog_ctrl_kernel_01_out, qsfp0_161mhz_clk_n, qsfp0_161mhz_clk_p, 
  qsfp0_4x_grx_n, qsfp0_4x_grx_p, qsfp0_4x_gtx_n, qsfp0_4x_gtx_p, qsfp1_161mhz_clk_n, 
  qsfp1_161mhz_clk_p, qsfp1_4x_grx_n, qsfp1_4x_grx_p, qsfp1_4x_gtx_n, qsfp1_4x_gtx_p)
/* synthesis syn_black_box black_box_pad_pin="BLP_M_M00_INI_0_internoc[0:0],BLP_M_M01_INI_0_internoc[0:0],BLP_M_M02_INI_0_internoc[0:0],BLP_S_AXI_CTRL_USER_00_araddr[63:0],BLP_S_AXI_CTRL_USER_00_arprot[2:0],BLP_S_AXI_CTRL_USER_00_arready,BLP_S_AXI_CTRL_USER_00_arvalid,BLP_S_AXI_CTRL_USER_00_awaddr[63:0],BLP_S_AXI_CTRL_USER_00_awprot[2:0],BLP_S_AXI_CTRL_USER_00_awready,BLP_S_AXI_CTRL_USER_00_awvalid,BLP_S_AXI_CTRL_USER_00_bready,BLP_S_AXI_CTRL_USER_00_bresp[1:0],BLP_S_AXI_CTRL_USER_00_bvalid,BLP_S_AXI_CTRL_USER_00_rdata[31:0],BLP_S_AXI_CTRL_USER_00_rready,BLP_S_AXI_CTRL_USER_00_rresp[1:0],BLP_S_AXI_CTRL_USER_00_rvalid,BLP_S_AXI_CTRL_USER_00_wdata[31:0],BLP_S_AXI_CTRL_USER_00_wready,BLP_S_AXI_CTRL_USER_00_wstrb[3:0],BLP_S_AXI_CTRL_USER_00_wvalid,BLP_S_INI_AIE_00_internoc[0:0],BLP_S_INI_DBG_00_internoc[0:0],BLP_S_INI_PLRAM_00_internoc[0:0],blp_m_dbg_hub_fw_00[0:0],blp_m_ext_tog_ctrl_kernel_00_enable[0:0],blp_m_ext_tog_ctrl_kernel_00_in[0:0],blp_m_ext_tog_ctrl_kernel_01_enable[0:0],blp_m_ext_tog_ctrl_kernel_01_in[0:0],blp_m_irq_kernel_00[127:0],blp_s_aclk_ctrl_00,blp_s_aclk_ext_tog_kernel_00,blp_s_aclk_ext_tog_kernel_01,blp_s_aclk_kernel_00,blp_s_aclk_kernel_01,blp_s_aclk_pcie_00,blp_s_aresetn_pcie_reset_00[0:0],blp_s_aresetn_pr_reset_00[0:0],blp_s_ext_tog_ctrl_kernel_00_out,blp_s_ext_tog_ctrl_kernel_01_out,qsfp0_161mhz_clk_n,qsfp0_161mhz_clk_p,qsfp0_4x_grx_n[3:0],qsfp0_4x_grx_p[3:0],qsfp0_4x_gtx_n[3:0],qsfp0_4x_gtx_p[3:0],qsfp1_161mhz_clk_n,qsfp1_161mhz_clk_p,qsfp1_4x_grx_n[3:0],qsfp1_4x_grx_p[3:0],qsfp1_4x_gtx_n[3:0],qsfp1_4x_gtx_p[3:0]" */;
  output [0:0]BLP_M_M00_INI_0_internoc;
  output [0:0]BLP_M_M01_INI_0_internoc;
  output [0:0]BLP_M_M02_INI_0_internoc;
  input [63:0]BLP_S_AXI_CTRL_USER_00_araddr;
  input [2:0]BLP_S_AXI_CTRL_USER_00_arprot;
  output BLP_S_AXI_CTRL_USER_00_arready;
  input BLP_S_AXI_CTRL_USER_00_arvalid;
  input [63:0]BLP_S_AXI_CTRL_USER_00_awaddr;
  input [2:0]BLP_S_AXI_CTRL_USER_00_awprot;
  output BLP_S_AXI_CTRL_USER_00_awready;
  input BLP_S_AXI_CTRL_USER_00_awvalid;
  input BLP_S_AXI_CTRL_USER_00_bready;
  output [1:0]BLP_S_AXI_CTRL_USER_00_bresp;
  output BLP_S_AXI_CTRL_USER_00_bvalid;
  output [31:0]BLP_S_AXI_CTRL_USER_00_rdata;
  input BLP_S_AXI_CTRL_USER_00_rready;
  output [1:0]BLP_S_AXI_CTRL_USER_00_rresp;
  output BLP_S_AXI_CTRL_USER_00_rvalid;
  input [31:0]BLP_S_AXI_CTRL_USER_00_wdata;
  output BLP_S_AXI_CTRL_USER_00_wready;
  input [3:0]BLP_S_AXI_CTRL_USER_00_wstrb;
  input BLP_S_AXI_CTRL_USER_00_wvalid;
  input [0:0]BLP_S_INI_AIE_00_internoc;
  input [0:0]BLP_S_INI_DBG_00_internoc;
  input [0:0]BLP_S_INI_PLRAM_00_internoc;
  output [0:0]blp_m_dbg_hub_fw_00;
  output [0:0]blp_m_ext_tog_ctrl_kernel_00_enable;
  output [0:0]blp_m_ext_tog_ctrl_kernel_00_in;
  output [0:0]blp_m_ext_tog_ctrl_kernel_01_enable;
  output [0:0]blp_m_ext_tog_ctrl_kernel_01_in;
  output [127:0]blp_m_irq_kernel_00;
  input blp_s_aclk_ctrl_00;
  input blp_s_aclk_ext_tog_kernel_00;
  input blp_s_aclk_ext_tog_kernel_01;
  input blp_s_aclk_kernel_00;
  input blp_s_aclk_kernel_01;
  input blp_s_aclk_pcie_00;
  input [0:0]blp_s_aresetn_pcie_reset_00;
  input [0:0]blp_s_aresetn_pr_reset_00;
  input blp_s_ext_tog_ctrl_kernel_00_out;
  input blp_s_ext_tog_ctrl_kernel_01_out;
  input qsfp0_161mhz_clk_n;
  input qsfp0_161mhz_clk_p;
  input [3:0]qsfp0_4x_grx_n;
  input [3:0]qsfp0_4x_grx_p;
  output [3:0]qsfp0_4x_gtx_n;
  output [3:0]qsfp0_4x_gtx_p;
  input qsfp1_161mhz_clk_n;
  input qsfp1_161mhz_clk_p;
  input [3:0]qsfp1_4x_grx_n;
  input [3:0]qsfp1_4x_grx_p;
  output [3:0]qsfp1_4x_gtx_n;
  output [3:0]qsfp1_4x_gtx_p;
endmodule
