//Copyright 1986-2023 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2022.2.2 (lin64) Build 3788238 Tue Feb 21 19:59:23 MST 2023
//Date        : Fri Jun 28 08:42:49 2024
//Host        : nags27 running 64-bit Ubuntu 20.04.6 LTS
//Command     : generate_target ulp_inst_0_wrapper.bd
//Design      : ulp_inst_0_wrapper
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module ulp_inst_0_wrapper
   (BLP_M_M00_INI_0_internoc,
    BLP_M_M01_INI_0_internoc,
    BLP_M_M02_INI_0_internoc,
    BLP_S_AXI_CTRL_USER_00_araddr,
    BLP_S_AXI_CTRL_USER_00_arprot,
    BLP_S_AXI_CTRL_USER_00_arready,
    BLP_S_AXI_CTRL_USER_00_arvalid,
    BLP_S_AXI_CTRL_USER_00_awaddr,
    BLP_S_AXI_CTRL_USER_00_awprot,
    BLP_S_AXI_CTRL_USER_00_awready,
    BLP_S_AXI_CTRL_USER_00_awvalid,
    BLP_S_AXI_CTRL_USER_00_bready,
    BLP_S_AXI_CTRL_USER_00_bresp,
    BLP_S_AXI_CTRL_USER_00_bvalid,
    BLP_S_AXI_CTRL_USER_00_rdata,
    BLP_S_AXI_CTRL_USER_00_rready,
    BLP_S_AXI_CTRL_USER_00_rresp,
    BLP_S_AXI_CTRL_USER_00_rvalid,
    BLP_S_AXI_CTRL_USER_00_wdata,
    BLP_S_AXI_CTRL_USER_00_wready,
    BLP_S_AXI_CTRL_USER_00_wstrb,
    BLP_S_AXI_CTRL_USER_00_wvalid,
    BLP_S_INI_AIE_00_internoc,
    BLP_S_INI_DBG_00_internoc,
    BLP_S_INI_PLRAM_00_internoc,
    blp_m_dbg_hub_fw_00,
    blp_m_ext_tog_ctrl_kernel_00_enable,
    blp_m_ext_tog_ctrl_kernel_00_in,
    blp_m_ext_tog_ctrl_kernel_01_enable,
    blp_m_ext_tog_ctrl_kernel_01_in,
    blp_m_irq_kernel_00,
    blp_s_aclk_ctrl_00,
    blp_s_aclk_ext_tog_kernel_00,
    blp_s_aclk_ext_tog_kernel_01,
    blp_s_aclk_kernel_00,
    blp_s_aclk_kernel_01,
    blp_s_aclk_pcie_00,
    blp_s_aresetn_pcie_reset_00,
    blp_s_aresetn_pr_reset_00,
    blp_s_ext_tog_ctrl_kernel_00_out,
    blp_s_ext_tog_ctrl_kernel_01_out,
    qsfp0_161mhz_clk_n,
    qsfp0_161mhz_clk_p,
    qsfp0_4x_grx_n,
    qsfp0_4x_grx_p,
    qsfp0_4x_gtx_n,
    qsfp0_4x_gtx_p,
    qsfp1_161mhz_clk_n,
    qsfp1_161mhz_clk_p,
    qsfp1_4x_grx_n,
    qsfp1_4x_grx_p,
    qsfp1_4x_gtx_n,
    qsfp1_4x_gtx_p);
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

  wire [0:0]BLP_M_M00_INI_0_internoc;
  wire [0:0]BLP_M_M01_INI_0_internoc;
  wire [0:0]BLP_M_M02_INI_0_internoc;
  wire [63:0]BLP_S_AXI_CTRL_USER_00_araddr;
  wire [2:0]BLP_S_AXI_CTRL_USER_00_arprot;
  wire BLP_S_AXI_CTRL_USER_00_arready;
  wire BLP_S_AXI_CTRL_USER_00_arvalid;
  wire [63:0]BLP_S_AXI_CTRL_USER_00_awaddr;
  wire [2:0]BLP_S_AXI_CTRL_USER_00_awprot;
  wire BLP_S_AXI_CTRL_USER_00_awready;
  wire BLP_S_AXI_CTRL_USER_00_awvalid;
  wire BLP_S_AXI_CTRL_USER_00_bready;
  wire [1:0]BLP_S_AXI_CTRL_USER_00_bresp;
  wire BLP_S_AXI_CTRL_USER_00_bvalid;
  wire [31:0]BLP_S_AXI_CTRL_USER_00_rdata;
  wire BLP_S_AXI_CTRL_USER_00_rready;
  wire [1:0]BLP_S_AXI_CTRL_USER_00_rresp;
  wire BLP_S_AXI_CTRL_USER_00_rvalid;
  wire [31:0]BLP_S_AXI_CTRL_USER_00_wdata;
  wire BLP_S_AXI_CTRL_USER_00_wready;
  wire [3:0]BLP_S_AXI_CTRL_USER_00_wstrb;
  wire BLP_S_AXI_CTRL_USER_00_wvalid;
  wire [0:0]BLP_S_INI_AIE_00_internoc;
  wire [0:0]BLP_S_INI_DBG_00_internoc;
  wire [0:0]BLP_S_INI_PLRAM_00_internoc;
  wire [0:0]blp_m_dbg_hub_fw_00;
  wire [0:0]blp_m_ext_tog_ctrl_kernel_00_enable;
  wire [0:0]blp_m_ext_tog_ctrl_kernel_00_in;
  wire [0:0]blp_m_ext_tog_ctrl_kernel_01_enable;
  wire [0:0]blp_m_ext_tog_ctrl_kernel_01_in;
  wire [127:0]blp_m_irq_kernel_00;
  wire blp_s_aclk_ctrl_00;
  wire blp_s_aclk_ext_tog_kernel_00;
  wire blp_s_aclk_ext_tog_kernel_01;
  wire blp_s_aclk_kernel_00;
  wire blp_s_aclk_kernel_01;
  wire blp_s_aclk_pcie_00;
  wire [0:0]blp_s_aresetn_pcie_reset_00;
  wire [0:0]blp_s_aresetn_pr_reset_00;
  wire blp_s_ext_tog_ctrl_kernel_00_out;
  wire blp_s_ext_tog_ctrl_kernel_01_out;
  wire qsfp0_161mhz_clk_n;
  wire qsfp0_161mhz_clk_p;
  wire [3:0]qsfp0_4x_grx_n;
  wire [3:0]qsfp0_4x_grx_p;
  wire [3:0]qsfp0_4x_gtx_n;
  wire [3:0]qsfp0_4x_gtx_p;
  wire qsfp1_161mhz_clk_n;
  wire qsfp1_161mhz_clk_p;
  wire [3:0]qsfp1_4x_grx_n;
  wire [3:0]qsfp1_4x_grx_p;
  wire [3:0]qsfp1_4x_gtx_n;
  wire [3:0]qsfp1_4x_gtx_p;

  ulp_inst_0 ulp_inst_0_i
       (.BLP_M_M00_INI_0_internoc(BLP_M_M00_INI_0_internoc),
        .BLP_M_M01_INI_0_internoc(BLP_M_M01_INI_0_internoc),
        .BLP_M_M02_INI_0_internoc(BLP_M_M02_INI_0_internoc),
        .BLP_S_AXI_CTRL_USER_00_araddr(BLP_S_AXI_CTRL_USER_00_araddr),
        .BLP_S_AXI_CTRL_USER_00_arprot(BLP_S_AXI_CTRL_USER_00_arprot),
        .BLP_S_AXI_CTRL_USER_00_arready(BLP_S_AXI_CTRL_USER_00_arready),
        .BLP_S_AXI_CTRL_USER_00_arvalid(BLP_S_AXI_CTRL_USER_00_arvalid),
        .BLP_S_AXI_CTRL_USER_00_awaddr(BLP_S_AXI_CTRL_USER_00_awaddr),
        .BLP_S_AXI_CTRL_USER_00_awprot(BLP_S_AXI_CTRL_USER_00_awprot),
        .BLP_S_AXI_CTRL_USER_00_awready(BLP_S_AXI_CTRL_USER_00_awready),
        .BLP_S_AXI_CTRL_USER_00_awvalid(BLP_S_AXI_CTRL_USER_00_awvalid),
        .BLP_S_AXI_CTRL_USER_00_bready(BLP_S_AXI_CTRL_USER_00_bready),
        .BLP_S_AXI_CTRL_USER_00_bresp(BLP_S_AXI_CTRL_USER_00_bresp),
        .BLP_S_AXI_CTRL_USER_00_bvalid(BLP_S_AXI_CTRL_USER_00_bvalid),
        .BLP_S_AXI_CTRL_USER_00_rdata(BLP_S_AXI_CTRL_USER_00_rdata),
        .BLP_S_AXI_CTRL_USER_00_rready(BLP_S_AXI_CTRL_USER_00_rready),
        .BLP_S_AXI_CTRL_USER_00_rresp(BLP_S_AXI_CTRL_USER_00_rresp),
        .BLP_S_AXI_CTRL_USER_00_rvalid(BLP_S_AXI_CTRL_USER_00_rvalid),
        .BLP_S_AXI_CTRL_USER_00_wdata(BLP_S_AXI_CTRL_USER_00_wdata),
        .BLP_S_AXI_CTRL_USER_00_wready(BLP_S_AXI_CTRL_USER_00_wready),
        .BLP_S_AXI_CTRL_USER_00_wstrb(BLP_S_AXI_CTRL_USER_00_wstrb),
        .BLP_S_AXI_CTRL_USER_00_wvalid(BLP_S_AXI_CTRL_USER_00_wvalid),
        .BLP_S_INI_AIE_00_internoc(BLP_S_INI_AIE_00_internoc),
        .BLP_S_INI_DBG_00_internoc(BLP_S_INI_DBG_00_internoc),
        .BLP_S_INI_PLRAM_00_internoc(BLP_S_INI_PLRAM_00_internoc),
        .blp_m_dbg_hub_fw_00(blp_m_dbg_hub_fw_00),
        .blp_m_ext_tog_ctrl_kernel_00_enable(blp_m_ext_tog_ctrl_kernel_00_enable),
        .blp_m_ext_tog_ctrl_kernel_00_in(blp_m_ext_tog_ctrl_kernel_00_in),
        .blp_m_ext_tog_ctrl_kernel_01_enable(blp_m_ext_tog_ctrl_kernel_01_enable),
        .blp_m_ext_tog_ctrl_kernel_01_in(blp_m_ext_tog_ctrl_kernel_01_in),
        .blp_m_irq_kernel_00(blp_m_irq_kernel_00),
        .blp_s_aclk_ctrl_00(blp_s_aclk_ctrl_00),
        .blp_s_aclk_ext_tog_kernel_00(blp_s_aclk_ext_tog_kernel_00),
        .blp_s_aclk_ext_tog_kernel_01(blp_s_aclk_ext_tog_kernel_01),
        .blp_s_aclk_kernel_00(blp_s_aclk_kernel_00),
        .blp_s_aclk_kernel_01(blp_s_aclk_kernel_01),
        .blp_s_aclk_pcie_00(blp_s_aclk_pcie_00),
        .blp_s_aresetn_pcie_reset_00(blp_s_aresetn_pcie_reset_00),
        .blp_s_aresetn_pr_reset_00(blp_s_aresetn_pr_reset_00),
        .blp_s_ext_tog_ctrl_kernel_00_out(blp_s_ext_tog_ctrl_kernel_00_out),
        .blp_s_ext_tog_ctrl_kernel_01_out(blp_s_ext_tog_ctrl_kernel_01_out),
        .qsfp0_161mhz_clk_n(qsfp0_161mhz_clk_n),
        .qsfp0_161mhz_clk_p(qsfp0_161mhz_clk_p),
        .qsfp0_4x_grx_n(qsfp0_4x_grx_n),
        .qsfp0_4x_grx_p(qsfp0_4x_grx_p),
        .qsfp0_4x_gtx_n(qsfp0_4x_gtx_n),
        .qsfp0_4x_gtx_p(qsfp0_4x_gtx_p),
        .qsfp1_161mhz_clk_n(qsfp1_161mhz_clk_n),
        .qsfp1_161mhz_clk_p(qsfp1_161mhz_clk_p),
        .qsfp1_4x_grx_n(qsfp1_4x_grx_n),
        .qsfp1_4x_grx_p(qsfp1_4x_grx_p),
        .qsfp1_4x_gtx_n(qsfp1_4x_gtx_n),
        .qsfp1_4x_gtx_p(qsfp1_4x_gtx_p));
endmodule
