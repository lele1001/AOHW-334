//Copyright 1986-2023 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2022.2.2 (lin64) Build 3788238 Tue Feb 21 19:59:23 MST 2023
//Date        : Fri Jun 28 08:42:49 2024
//Host        : nags27 running 64-bit Ubuntu 20.04.6 LTS
//Command     : generate_target ulp_inst_0.bd
//Design      : ulp_inst_0
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module kernel_interrupt_imp_1VOEG4V
   (In0,
    xlconcat_interrupt_dout);
  input [31:0]In0;
  output [127:0]xlconcat_interrupt_dout;

  wire [31:0]In0_1;
  wire [127:0]xlconcat_0_dout;
  wire [95:0]xlconstant_0_dout;

  assign In0_1 = In0[31:0];
  assign xlconcat_interrupt_dout[127:0] = xlconcat_0_dout;
  ulp_inst_0_xlconcat_0_0 xlconcat_0
       (.In0(In0_1),
        .In1(xlconstant_0_dout),
        .dout(xlconcat_0_dout));
  ulp_inst_0_xlconstant_0_0 xlconstant_0
       (.dout(xlconstant_0_dout));
endmodule

module reset_controllers_imp_1KQP16U
   (clk_kernel0,
    clk_kernel1,
    clk_pcie,
    clk_pl_axi,
    interconnect_aresetn,
    peripheral_aresetn,
    resetn_kernel0_ic,
    resetn_kernel1_ic,
    resetn_pcie,
    resetn_pcie_axi,
    resetn_pl_axi,
    resetn_ulp);
  input clk_kernel0;
  input clk_kernel1;
  input clk_pcie;
  input clk_pl_axi;
  output [0:0]interconnect_aresetn;
  output [0:0]peripheral_aresetn;
  output [0:0]resetn_kernel0_ic;
  output [0:0]resetn_kernel1_ic;
  input resetn_pcie;
  output [0:0]resetn_pcie_axi;
  output [0:0]resetn_pl_axi;
  input resetn_ulp;

  wire clk_kernel0_1;
  wire clk_kernel1_1;
  wire clk_pcie_1;
  wire clk_pl_axi_1;
  wire [0:0]pipereg_kernel0_q;
  wire [0:0]pipereg_kernel1_q;
  wire [0:0]pipereg_pcie0_q;
  wire [0:0]pipereg_pl_axi0_q;
  wire [0:0]reset_sync_kernel0_interconnect_aresetn;
  wire [0:0]reset_sync_kernel0_peripheral_aresetn;
  wire [0:0]reset_sync_kernel1_interconnect_aresetn;
  wire resetn_pcie_1;
  wire resetn_ulp_1;
  wire [0:0]rstn_const_dout;

  assign clk_kernel0_1 = clk_kernel0;
  assign clk_kernel1_1 = clk_kernel1;
  assign clk_pcie_1 = clk_pcie;
  assign clk_pl_axi_1 = clk_pl_axi;
  assign interconnect_aresetn[0] = reset_sync_kernel0_interconnect_aresetn;
  assign peripheral_aresetn[0] = reset_sync_kernel0_peripheral_aresetn;
  assign resetn_kernel0_ic[0] = pipereg_kernel0_q;
  assign resetn_kernel1_ic[0] = pipereg_kernel1_q;
  assign resetn_pcie_1 = resetn_pcie;
  assign resetn_pcie_axi[0] = pipereg_pcie0_q;
  assign resetn_pl_axi[0] = pipereg_pl_axi0_q;
  assign resetn_ulp_1 = resetn_ulp;
  ulp_inst_0_pipereg_kernel0_0 pipereg_kernel0
       (.D(reset_sync_kernel0_interconnect_aresetn),
        .Q(pipereg_kernel0_q),
        .clk(clk_kernel0_1),
        .clk_enable(1'b1),
        .reset(rstn_const_dout));
  ulp_inst_0_pipereg_kernel1_0 pipereg_kernel1
       (.D(reset_sync_kernel1_interconnect_aresetn),
        .Q(pipereg_kernel1_q),
        .clk(clk_kernel1_1),
        .clk_enable(1'b1),
        .reset(rstn_const_dout));
  ulp_inst_0_pipereg_pcie0_0 pipereg_pcie0
       (.D(resetn_pcie_1),
        .Q(pipereg_pcie0_q),
        .clk(clk_pcie_1),
        .clk_enable(1'b1),
        .reset(rstn_const_dout));
  ulp_inst_0_pipereg_pl_axi0_0 pipereg_pl_axi0
       (.D(resetn_ulp_1),
        .Q(pipereg_pl_axi0_q),
        .clk(clk_pl_axi_1),
        .clk_enable(1'b1),
        .reset(rstn_const_dout));
  ulp_inst_0_reset_sync_fixed_0 reset_sync_fixed
       (.aux_reset_in(1'b1),
        .dcm_locked(1'b1),
        .ext_reset_in(resetn_ulp_1),
        .mb_debug_sys_rst(1'b0),
        .slowest_sync_clk(clk_pl_axi_1));
  ulp_inst_0_reset_sync_kernel0_0 reset_sync_kernel0
       (.aux_reset_in(1'b1),
        .dcm_locked(1'b1),
        .ext_reset_in(resetn_ulp_1),
        .interconnect_aresetn(reset_sync_kernel0_interconnect_aresetn),
        .mb_debug_sys_rst(1'b0),
        .peripheral_aresetn(reset_sync_kernel0_peripheral_aresetn),
        .slowest_sync_clk(clk_kernel0_1));
  ulp_inst_0_reset_sync_kernel1_0 reset_sync_kernel1
       (.aux_reset_in(1'b1),
        .dcm_locked(1'b1),
        .ext_reset_in(resetn_ulp_1),
        .interconnect_aresetn(reset_sync_kernel1_interconnect_aresetn),
        .mb_debug_sys_rst(1'b0),
        .slowest_sync_clk(clk_kernel1_1));
  ulp_inst_0_rstn_const_0 rstn_const
       (.dout(rstn_const_dout));
endmodule

(* CORE_GENERATION_INFO = "ulp_inst_0,IP_Integrator,{x_ipVendor=xilinx.com,x_ipLibrary=BlockDiagram,x_ipName=ulp_inst_0,x_ipVersion=1.00.a,x_ipLanguage=VERILOG,numBlks=36,numReposBlks=34,numNonXlnxBlks=0,numHierBlks=2,maxHierDepth=1,numSysgenBlks=0,numHlsBlks=2,numHdlrefBlks=0,numPkgbdBlks=0,bdsource=Vitis,synth_mode=OOC_per_IP}" *) (* HW_HANDOFF = "ulp_inst_0.hwdef" *) 
module ulp_inst_0
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
  (* X_INTERFACE_INFO = "xilinx.com:interface:inimm:1.0 BLP_M_M00_INI_0 INTERNOC" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME BLP_M_M00_INI_0, ADDR_WIDTH 64, COMPUTED_STRATEGY load, INI_STRATEGY load" *) output [0:0]BLP_M_M00_INI_0_internoc;
  (* X_INTERFACE_INFO = "xilinx.com:interface:inimm:1.0 BLP_M_M01_INI_0 INTERNOC" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME BLP_M_M01_INI_0, ADDR_WIDTH 64, COMPUTED_STRATEGY load, INI_STRATEGY load" *) output [0:0]BLP_M_M01_INI_0_internoc;
  (* X_INTERFACE_INFO = "xilinx.com:interface:inimm:1.0 BLP_M_M02_INI_0 INTERNOC" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME BLP_M_M02_INI_0, ADDR_WIDTH 64, COMPUTED_STRATEGY load, INI_STRATEGY load" *) output [0:0]BLP_M_M02_INI_0_internoc;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 BLP_S_AXI_CTRL_USER_00 ARADDR" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME BLP_S_AXI_CTRL_USER_00, ADDR_WIDTH 64, ARUSER_WIDTH 0, AWUSER_WIDTH 0, BUSER_WIDTH 0, CLK_DOMAIN bd_4885_pspmc_0_0_pl0_ref_clk, DATA_WIDTH 32, FREQ_HZ 99999992, HAS_BRESP 1, HAS_BURST 0, HAS_CACHE 0, HAS_LOCK 0, HAS_PROT 1, HAS_QOS 0, HAS_REGION 0, HAS_RRESP 1, HAS_WSTRB 1, ID_WIDTH 0, INSERT_VIP 0, MAX_BURST_LENGTH 1, NUM_READ_OUTSTANDING 2, NUM_READ_THREADS 1, NUM_WRITE_OUTSTANDING 2, NUM_WRITE_THREADS 1, PHASE 0.0, PROTOCOL AXI4LITE, READ_WRITE_MODE READ_WRITE, RUSER_BITS_PER_BYTE 0, RUSER_WIDTH 0, SUPPORTS_NARROW_BURST 0, WUSER_BITS_PER_BYTE 0, WUSER_WIDTH 0" *) input [63:0]BLP_S_AXI_CTRL_USER_00_araddr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 BLP_S_AXI_CTRL_USER_00 ARPROT" *) input [2:0]BLP_S_AXI_CTRL_USER_00_arprot;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 BLP_S_AXI_CTRL_USER_00 ARREADY" *) output BLP_S_AXI_CTRL_USER_00_arready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 BLP_S_AXI_CTRL_USER_00 ARVALID" *) input BLP_S_AXI_CTRL_USER_00_arvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 BLP_S_AXI_CTRL_USER_00 AWADDR" *) input [63:0]BLP_S_AXI_CTRL_USER_00_awaddr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 BLP_S_AXI_CTRL_USER_00 AWPROT" *) input [2:0]BLP_S_AXI_CTRL_USER_00_awprot;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 BLP_S_AXI_CTRL_USER_00 AWREADY" *) output BLP_S_AXI_CTRL_USER_00_awready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 BLP_S_AXI_CTRL_USER_00 AWVALID" *) input BLP_S_AXI_CTRL_USER_00_awvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 BLP_S_AXI_CTRL_USER_00 BREADY" *) input BLP_S_AXI_CTRL_USER_00_bready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 BLP_S_AXI_CTRL_USER_00 BRESP" *) output [1:0]BLP_S_AXI_CTRL_USER_00_bresp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 BLP_S_AXI_CTRL_USER_00 BVALID" *) output BLP_S_AXI_CTRL_USER_00_bvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 BLP_S_AXI_CTRL_USER_00 RDATA" *) output [31:0]BLP_S_AXI_CTRL_USER_00_rdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 BLP_S_AXI_CTRL_USER_00 RREADY" *) input BLP_S_AXI_CTRL_USER_00_rready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 BLP_S_AXI_CTRL_USER_00 RRESP" *) output [1:0]BLP_S_AXI_CTRL_USER_00_rresp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 BLP_S_AXI_CTRL_USER_00 RVALID" *) output BLP_S_AXI_CTRL_USER_00_rvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 BLP_S_AXI_CTRL_USER_00 WDATA" *) input [31:0]BLP_S_AXI_CTRL_USER_00_wdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 BLP_S_AXI_CTRL_USER_00 WREADY" *) output BLP_S_AXI_CTRL_USER_00_wready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 BLP_S_AXI_CTRL_USER_00 WSTRB" *) input [3:0]BLP_S_AXI_CTRL_USER_00_wstrb;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 BLP_S_AXI_CTRL_USER_00 WVALID" *) input BLP_S_AXI_CTRL_USER_00_wvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:inimm:1.0 BLP_S_INI_AIE_00 INTERNOC" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME BLP_S_INI_AIE_00, ADDR_WIDTH 64, COMPUTED_STRATEGY load, INI_STRATEGY load" *) input [0:0]BLP_S_INI_AIE_00_internoc;
  (* X_INTERFACE_INFO = "xilinx.com:interface:inimm:1.0 BLP_S_INI_DBG_00 INTERNOC" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME BLP_S_INI_DBG_00, ADDR_WIDTH 64, COMPUTED_STRATEGY load, INI_STRATEGY load" *) input [0:0]BLP_S_INI_DBG_00_internoc;
  (* X_INTERFACE_INFO = "xilinx.com:interface:inimm:1.0 BLP_S_INI_PLRAM_00 INTERNOC" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME BLP_S_INI_PLRAM_00, ADDR_WIDTH 64, COMPUTED_STRATEGY load, INI_STRATEGY load" *) input [0:0]BLP_S_INI_PLRAM_00_internoc;
  (* X_INTERFACE_INFO = "xilinx.com:signal:interrupt:1.0 INTR.BLP_M_DBG_HUB_FW_00 INTERRUPT" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME INTR.BLP_M_DBG_HUB_FW_00, PortWidth 1, SENSITIVITY LEVEL_HIGH" *) output [0:0]blp_m_dbg_hub_fw_00;
  output [0:0]blp_m_ext_tog_ctrl_kernel_00_enable;
  output [0:0]blp_m_ext_tog_ctrl_kernel_00_in;
  output [0:0]blp_m_ext_tog_ctrl_kernel_01_enable;
  output [0:0]blp_m_ext_tog_ctrl_kernel_01_in;
  (* X_INTERFACE_INFO = "xilinx.com:signal:interrupt:1.0 INTR.BLP_M_IRQ_KERNEL_00 INTERRUPT" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME INTR.BLP_M_IRQ_KERNEL_00, PortWidth 128, SENSITIVITY NULL:NULL:NULL:NULL:NULL:NULL:NULL:NULL:NULL:NULL:NULL:NULL:NULL:NULL:NULL:NULL:NULL:NULL:NULL:NULL:NULL:NULL:NULL:NULL:NULL:NULL:NULL:NULL:NULL:NULL:NULL:LEVEL_HIGH:LEVEL_HIGH" *) output [127:0]blp_m_irq_kernel_00;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 CLK.BLP_S_ACLK_CTRL_00 CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME CLK.BLP_S_ACLK_CTRL_00, ASSOCIATED_BUSIF BLP_S_AXI_CTRL_USER_00, CLK_DOMAIN bd_4885_pspmc_0_0_pl0_ref_clk, FREQ_HZ 99999992, FREQ_TOLERANCE_HZ 0, INSERT_VIP 0, PHASE 0.0" *) input blp_s_aclk_ctrl_00;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 CLK.BLP_S_ACLK_EXT_TOG_KERNEL_00 CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME CLK.BLP_S_ACLK_EXT_TOG_KERNEL_00, CLK_DOMAIN cd_aclk_ext_tog_kernel_00, FREQ_HZ 299996999, FREQ_TOLERANCE_HZ 0, INSERT_VIP 0, PHASE 0.0" *) input blp_s_aclk_ext_tog_kernel_00;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 CLK.BLP_S_ACLK_EXT_TOG_KERNEL_01 CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME CLK.BLP_S_ACLK_EXT_TOG_KERNEL_01, CLK_DOMAIN cd_aclk_ext_tog_kernel_01, FREQ_HZ 499994999, FREQ_TOLERANCE_HZ 0, INSERT_VIP 0, PHASE 0.0" *) input blp_s_aclk_ext_tog_kernel_01;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 CLK.BLP_S_ACLK_KERNEL_00 CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME CLK.BLP_S_ACLK_KERNEL_00, CLK_DOMAIN cd_aclk_kernel_00, FREQ_HZ 299996999, FREQ_TOLERANCE_HZ 0, INSERT_VIP 0, PHASE 0.0" *) input blp_s_aclk_kernel_00;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 CLK.BLP_S_ACLK_KERNEL_01 CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME CLK.BLP_S_ACLK_KERNEL_01, CLK_DOMAIN cd_aclk_kernel_01, FREQ_HZ 499994999, FREQ_TOLERANCE_HZ 0, INSERT_VIP 0, PHASE 0.0" *) input blp_s_aclk_kernel_01;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 CLK.BLP_S_ACLK_PCIE_00 CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME CLK.BLP_S_ACLK_PCIE_00, CLK_DOMAIN bd_4885_pspmc_0_0_pl2_ref_clk, FREQ_HZ 249999985, FREQ_TOLERANCE_HZ 0, INSERT_VIP 0, PHASE 0.0" *) input blp_s_aclk_pcie_00;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 RST.BLP_S_ARESETN_PCIE_RESET_00 RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME RST.BLP_S_ARESETN_PCIE_RESET_00, INSERT_VIP 0, POLARITY ACTIVE_LOW" *) input [0:0]blp_s_aresetn_pcie_reset_00;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 RST.BLP_S_ARESETN_PR_RESET_00 RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME RST.BLP_S_ARESETN_PR_RESET_00, INSERT_VIP 0, POLARITY ACTIVE_LOW" *) input [0:0]blp_s_aresetn_pr_reset_00;
  input blp_s_ext_tog_ctrl_kernel_00_out;
  input blp_s_ext_tog_ctrl_kernel_01_out;
  (* X_INTERFACE_INFO = "xilinx.com:interface:diff_clock:1.0 qsfp0_161mhz clk_n" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME qsfp0_161mhz, CAN_DEBUG false, FREQ_HZ 161132812" *) input qsfp0_161mhz_clk_n;
  (* X_INTERFACE_INFO = "xilinx.com:interface:diff_clock:1.0 qsfp0_161mhz clk_p" *) input qsfp0_161mhz_clk_p;
  (* X_INTERFACE_INFO = "xilinx.com:interface:gt:1.0 qsfp0_4x grx_n" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME qsfp0_4x, CAN_DEBUG false" *) input [3:0]qsfp0_4x_grx_n;
  (* X_INTERFACE_INFO = "xilinx.com:interface:gt:1.0 qsfp0_4x grx_p" *) input [3:0]qsfp0_4x_grx_p;
  (* X_INTERFACE_INFO = "xilinx.com:interface:gt:1.0 qsfp0_4x gtx_n" *) output [3:0]qsfp0_4x_gtx_n;
  (* X_INTERFACE_INFO = "xilinx.com:interface:gt:1.0 qsfp0_4x gtx_p" *) output [3:0]qsfp0_4x_gtx_p;
  (* X_INTERFACE_INFO = "xilinx.com:interface:diff_clock:1.0 qsfp1_161mhz clk_n" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME qsfp1_161mhz, CAN_DEBUG false, FREQ_HZ 161132812" *) input qsfp1_161mhz_clk_n;
  (* X_INTERFACE_INFO = "xilinx.com:interface:diff_clock:1.0 qsfp1_161mhz clk_p" *) input qsfp1_161mhz_clk_p;
  (* X_INTERFACE_INFO = "xilinx.com:interface:gt:1.0 qsfp1_4x grx_n" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME qsfp1_4x, CAN_DEBUG false" *) input [3:0]qsfp1_4x_grx_n;
  (* X_INTERFACE_INFO = "xilinx.com:interface:gt:1.0 qsfp1_4x grx_p" *) input [3:0]qsfp1_4x_grx_p;
  (* X_INTERFACE_INFO = "xilinx.com:interface:gt:1.0 qsfp1_4x gtx_n" *) output [3:0]qsfp1_4x_gtx_n;
  (* X_INTERFACE_INFO = "xilinx.com:interface:gt:1.0 qsfp1_4x gtx_p" *) output [3:0]qsfp1_4x_gtx_p;

  wire [63:0]BLP_S_AXI_CTRL_USER_00_1_ARADDR;
  wire [2:0]BLP_S_AXI_CTRL_USER_00_1_ARPROT;
  wire BLP_S_AXI_CTRL_USER_00_1_ARREADY;
  wire BLP_S_AXI_CTRL_USER_00_1_ARVALID;
  wire [63:0]BLP_S_AXI_CTRL_USER_00_1_AWADDR;
  wire [2:0]BLP_S_AXI_CTRL_USER_00_1_AWPROT;
  wire BLP_S_AXI_CTRL_USER_00_1_AWREADY;
  wire BLP_S_AXI_CTRL_USER_00_1_AWVALID;
  wire BLP_S_AXI_CTRL_USER_00_1_BREADY;
  wire [1:0]BLP_S_AXI_CTRL_USER_00_1_BRESP;
  wire BLP_S_AXI_CTRL_USER_00_1_BVALID;
  wire [31:0]BLP_S_AXI_CTRL_USER_00_1_RDATA;
  wire BLP_S_AXI_CTRL_USER_00_1_RREADY;
  wire [1:0]BLP_S_AXI_CTRL_USER_00_1_RRESP;
  wire BLP_S_AXI_CTRL_USER_00_1_RVALID;
  wire [31:0]BLP_S_AXI_CTRL_USER_00_1_WDATA;
  wire BLP_S_AXI_CTRL_USER_00_1_WREADY;
  wire [3:0]BLP_S_AXI_CTRL_USER_00_1_WSTRB;
  wire BLP_S_AXI_CTRL_USER_00_1_WVALID;
  wire [0:0]BLP_S_INI_AIE_00_1_INTERNOC;
  wire [0:0]M00_INI_0_INTERNOC;
  wire [0:0]M01_INI_0_INTERNOC;
  wire [0:0]M02_INI_0_INTERNOC;
  wire [31:0]ai_engine_0_M00_AXIS_TDATA;
  wire ai_engine_0_M00_AXIS_TREADY;
  wire [0:0]ai_engine_0_M00_AXIS_TVALID;
  (* HARD_CONN = "true" *) wire ai_engine_0_s00_axi_aclk;
  wire axi_dbg_fw_mi_r_error;
  wire axi_dbg_fw_mi_w_error;
  wire [63:0]axi_ic_user_M00_AXI_ARADDR;
  wire [1:0]axi_ic_user_M00_AXI_ARBURST;
  wire [3:0]axi_ic_user_M00_AXI_ARCACHE;
  wire [1:0]axi_ic_user_M00_AXI_ARID;
  wire [7:0]axi_ic_user_M00_AXI_ARLEN;
  wire [0:0]axi_ic_user_M00_AXI_ARLOCK;
  wire [2:0]axi_ic_user_M00_AXI_ARPROT;
  wire [3:0]axi_ic_user_M00_AXI_ARQOS;
  wire axi_ic_user_M00_AXI_ARREADY;
  wire [2:0]axi_ic_user_M00_AXI_ARSIZE;
  wire [113:0]axi_ic_user_M00_AXI_ARUSER;
  wire axi_ic_user_M00_AXI_ARVALID;
  wire [63:0]axi_ic_user_M00_AXI_AWADDR;
  wire [1:0]axi_ic_user_M00_AXI_AWBURST;
  wire [3:0]axi_ic_user_M00_AXI_AWCACHE;
  wire [1:0]axi_ic_user_M00_AXI_AWID;
  wire [7:0]axi_ic_user_M00_AXI_AWLEN;
  wire [0:0]axi_ic_user_M00_AXI_AWLOCK;
  wire [2:0]axi_ic_user_M00_AXI_AWPROT;
  wire [3:0]axi_ic_user_M00_AXI_AWQOS;
  wire axi_ic_user_M00_AXI_AWREADY;
  wire [2:0]axi_ic_user_M00_AXI_AWSIZE;
  wire [113:0]axi_ic_user_M00_AXI_AWUSER;
  wire axi_ic_user_M00_AXI_AWVALID;
  wire [1:0]axi_ic_user_M00_AXI_BID;
  wire axi_ic_user_M00_AXI_BREADY;
  wire [1:0]axi_ic_user_M00_AXI_BRESP;
  wire axi_ic_user_M00_AXI_BVALID;
  wire [31:0]axi_ic_user_M00_AXI_RDATA;
  wire [1:0]axi_ic_user_M00_AXI_RID;
  wire axi_ic_user_M00_AXI_RLAST;
  wire axi_ic_user_M00_AXI_RREADY;
  wire [1:0]axi_ic_user_M00_AXI_RRESP;
  wire [13:0]axi_ic_user_M00_AXI_RUSER;
  wire axi_ic_user_M00_AXI_RVALID;
  wire [31:0]axi_ic_user_M00_AXI_WDATA;
  wire axi_ic_user_M00_AXI_WLAST;
  wire axi_ic_user_M00_AXI_WREADY;
  wire [3:0]axi_ic_user_M00_AXI_WSTRB;
  wire [13:0]axi_ic_user_M00_AXI_WUSER;
  wire axi_ic_user_M00_AXI_WVALID;
  wire [5:0]axi_ic_user_M01_AXI_ARADDR;
  wire axi_ic_user_M01_AXI_ARREADY;
  wire axi_ic_user_M01_AXI_ARVALID;
  wire [5:0]axi_ic_user_M01_AXI_AWADDR;
  wire axi_ic_user_M01_AXI_AWREADY;
  wire axi_ic_user_M01_AXI_AWVALID;
  wire axi_ic_user_M01_AXI_BREADY;
  wire [1:0]axi_ic_user_M01_AXI_BRESP;
  wire axi_ic_user_M01_AXI_BVALID;
  wire [31:0]axi_ic_user_M01_AXI_RDATA;
  wire axi_ic_user_M01_AXI_RREADY;
  wire [1:0]axi_ic_user_M01_AXI_RRESP;
  wire axi_ic_user_M01_AXI_RVALID;
  wire [31:0]axi_ic_user_M01_AXI_WDATA;
  wire axi_ic_user_M01_AXI_WREADY;
  wire [3:0]axi_ic_user_M01_AXI_WSTRB;
  wire axi_ic_user_M01_AXI_WVALID;
  wire [5:0]axi_ic_user_M02_AXI_ARADDR;
  wire axi_ic_user_M02_AXI_ARREADY;
  wire axi_ic_user_M02_AXI_ARVALID;
  wire [5:0]axi_ic_user_M02_AXI_AWADDR;
  wire axi_ic_user_M02_AXI_AWREADY;
  wire axi_ic_user_M02_AXI_AWVALID;
  wire axi_ic_user_M02_AXI_BREADY;
  wire [1:0]axi_ic_user_M02_AXI_BRESP;
  wire axi_ic_user_M02_AXI_BVALID;
  wire [31:0]axi_ic_user_M02_AXI_RDATA;
  wire axi_ic_user_M02_AXI_RREADY;
  wire [1:0]axi_ic_user_M02_AXI_RRESP;
  wire axi_ic_user_M02_AXI_RVALID;
  wire [31:0]axi_ic_user_M02_AXI_WDATA;
  wire axi_ic_user_M02_AXI_WREADY;
  wire [3:0]axi_ic_user_M02_AXI_WSTRB;
  wire axi_ic_user_M02_AXI_WVALID;
  wire [8:0]axi_ic_user_extend_M00_AXI_ARADDR;
  wire axi_ic_user_extend_M00_AXI_ARREADY;
  wire axi_ic_user_extend_M00_AXI_ARVALID;
  wire [8:0]axi_ic_user_extend_M00_AXI_AWADDR;
  wire axi_ic_user_extend_M00_AXI_AWREADY;
  wire axi_ic_user_extend_M00_AXI_AWVALID;
  wire axi_ic_user_extend_M00_AXI_BREADY;
  wire [1:0]axi_ic_user_extend_M00_AXI_BRESP;
  wire axi_ic_user_extend_M00_AXI_BVALID;
  wire [31:0]axi_ic_user_extend_M00_AXI_RDATA;
  wire axi_ic_user_extend_M00_AXI_RREADY;
  wire [1:0]axi_ic_user_extend_M00_AXI_RRESP;
  wire axi_ic_user_extend_M00_AXI_RVALID;
  wire [31:0]axi_ic_user_extend_M00_AXI_WDATA;
  wire axi_ic_user_extend_M00_AXI_WREADY;
  wire [3:0]axi_ic_user_extend_M00_AXI_WSTRB;
  wire axi_ic_user_extend_M00_AXI_WVALID;
  (* HARD_CONN = "true" *) wire [63:0]axi_noc_aie_prog_M00_AXI_ARADDR;
  (* HARD_CONN = "true" *) wire [1:0]axi_noc_aie_prog_M00_AXI_ARBURST;
  (* HARD_CONN = "true" *) wire [3:0]axi_noc_aie_prog_M00_AXI_ARCACHE;
  (* HARD_CONN = "true" *) wire [1:0]axi_noc_aie_prog_M00_AXI_ARID;
  (* HARD_CONN = "true" *) wire [7:0]axi_noc_aie_prog_M00_AXI_ARLEN;
  (* HARD_CONN = "true" *) wire [0:0]axi_noc_aie_prog_M00_AXI_ARLOCK;
  (* HARD_CONN = "true" *) wire [2:0]axi_noc_aie_prog_M00_AXI_ARPROT;
  (* HARD_CONN = "true" *) wire [3:0]axi_noc_aie_prog_M00_AXI_ARQOS;
  (* HARD_CONN = "true" *) wire [0:0]axi_noc_aie_prog_M00_AXI_ARREADY;
  (* HARD_CONN = "true" *) wire [3:0]axi_noc_aie_prog_M00_AXI_ARREGION;
  (* HARD_CONN = "true" *) wire [2:0]axi_noc_aie_prog_M00_AXI_ARSIZE;
  (* HARD_CONN = "true" *) wire [0:0]axi_noc_aie_prog_M00_AXI_ARVALID;
  (* HARD_CONN = "true" *) wire [63:0]axi_noc_aie_prog_M00_AXI_AWADDR;
  (* HARD_CONN = "true" *) wire [1:0]axi_noc_aie_prog_M00_AXI_AWBURST;
  (* HARD_CONN = "true" *) wire [3:0]axi_noc_aie_prog_M00_AXI_AWCACHE;
  (* HARD_CONN = "true" *) wire [1:0]axi_noc_aie_prog_M00_AXI_AWID;
  (* HARD_CONN = "true" *) wire [7:0]axi_noc_aie_prog_M00_AXI_AWLEN;
  (* HARD_CONN = "true" *) wire [0:0]axi_noc_aie_prog_M00_AXI_AWLOCK;
  (* HARD_CONN = "true" *) wire [2:0]axi_noc_aie_prog_M00_AXI_AWPROT;
  (* HARD_CONN = "true" *) wire [3:0]axi_noc_aie_prog_M00_AXI_AWQOS;
  (* HARD_CONN = "true" *) wire [0:0]axi_noc_aie_prog_M00_AXI_AWREADY;
  (* HARD_CONN = "true" *) wire [3:0]axi_noc_aie_prog_M00_AXI_AWREGION;
  (* HARD_CONN = "true" *) wire [2:0]axi_noc_aie_prog_M00_AXI_AWSIZE;
  (* HARD_CONN = "true" *) wire [0:0]axi_noc_aie_prog_M00_AXI_AWVALID;
  (* HARD_CONN = "true" *) wire [15:0]axi_noc_aie_prog_M00_AXI_BID;
  (* HARD_CONN = "true" *) wire [0:0]axi_noc_aie_prog_M00_AXI_BREADY;
  (* HARD_CONN = "true" *) wire [1:0]axi_noc_aie_prog_M00_AXI_BRESP;
  (* HARD_CONN = "true" *) wire [0:0]axi_noc_aie_prog_M00_AXI_BVALID;
  (* HARD_CONN = "true" *) wire [127:0]axi_noc_aie_prog_M00_AXI_RDATA;
  (* HARD_CONN = "true" *) wire [15:0]axi_noc_aie_prog_M00_AXI_RID;
  (* HARD_CONN = "true" *) wire [0:0]axi_noc_aie_prog_M00_AXI_RLAST;
  (* HARD_CONN = "true" *) wire [0:0]axi_noc_aie_prog_M00_AXI_RREADY;
  (* HARD_CONN = "true" *) wire [1:0]axi_noc_aie_prog_M00_AXI_RRESP;
  (* HARD_CONN = "true" *) wire [16:0]axi_noc_aie_prog_M00_AXI_RUSER;
  (* HARD_CONN = "true" *) wire [0:0]axi_noc_aie_prog_M00_AXI_RVALID;
  (* HARD_CONN = "true" *) wire [127:0]axi_noc_aie_prog_M00_AXI_WDATA;
  (* HARD_CONN = "true" *) wire [0:0]axi_noc_aie_prog_M00_AXI_WLAST;
  (* HARD_CONN = "true" *) wire [0:0]axi_noc_aie_prog_M00_AXI_WREADY;
  (* HARD_CONN = "true" *) wire [15:0]axi_noc_aie_prog_M00_AXI_WSTRB;
  (* HARD_CONN = "true" *) wire [16:0]axi_noc_aie_prog_M00_AXI_WUSER;
  (* HARD_CONN = "true" *) wire [0:0]axi_noc_aie_prog_M00_AXI_WVALID;
  wire [63:0]axi_noc_h2c_M00_AXI_ARADDR;
  wire [1:0]axi_noc_h2c_M00_AXI_ARBURST;
  wire [3:0]axi_noc_h2c_M00_AXI_ARCACHE;
  wire [1:0]axi_noc_h2c_M00_AXI_ARID;
  wire [7:0]axi_noc_h2c_M00_AXI_ARLEN;
  wire [0:0]axi_noc_h2c_M00_AXI_ARLOCK;
  wire [2:0]axi_noc_h2c_M00_AXI_ARPROT;
  wire [3:0]axi_noc_h2c_M00_AXI_ARQOS;
  wire axi_noc_h2c_M00_AXI_ARREADY;
  wire [3:0]axi_noc_h2c_M00_AXI_ARREGION;
  wire [2:0]axi_noc_h2c_M00_AXI_ARSIZE;
  wire [17:0]axi_noc_h2c_M00_AXI_ARUSER;
  wire [0:0]axi_noc_h2c_M00_AXI_ARVALID;
  wire [63:0]axi_noc_h2c_M00_AXI_AWADDR;
  wire [1:0]axi_noc_h2c_M00_AXI_AWBURST;
  wire [3:0]axi_noc_h2c_M00_AXI_AWCACHE;
  wire [1:0]axi_noc_h2c_M00_AXI_AWID;
  wire [7:0]axi_noc_h2c_M00_AXI_AWLEN;
  wire [0:0]axi_noc_h2c_M00_AXI_AWLOCK;
  wire [2:0]axi_noc_h2c_M00_AXI_AWPROT;
  wire [3:0]axi_noc_h2c_M00_AXI_AWQOS;
  wire axi_noc_h2c_M00_AXI_AWREADY;
  wire [3:0]axi_noc_h2c_M00_AXI_AWREGION;
  wire [2:0]axi_noc_h2c_M00_AXI_AWSIZE;
  wire [17:0]axi_noc_h2c_M00_AXI_AWUSER;
  wire [0:0]axi_noc_h2c_M00_AXI_AWVALID;
  wire [1:0]axi_noc_h2c_M00_AXI_BID;
  wire [0:0]axi_noc_h2c_M00_AXI_BREADY;
  wire [1:0]axi_noc_h2c_M00_AXI_BRESP;
  wire axi_noc_h2c_M00_AXI_BVALID;
  wire [127:0]axi_noc_h2c_M00_AXI_RDATA;
  wire [1:0]axi_noc_h2c_M00_AXI_RID;
  wire axi_noc_h2c_M00_AXI_RLAST;
  wire [0:0]axi_noc_h2c_M00_AXI_RREADY;
  wire [1:0]axi_noc_h2c_M00_AXI_RRESP;
  wire axi_noc_h2c_M00_AXI_RVALID;
  wire [127:0]axi_noc_h2c_M00_AXI_WDATA;
  wire [0:0]axi_noc_h2c_M00_AXI_WLAST;
  wire axi_noc_h2c_M00_AXI_WREADY;
  wire [15:0]axi_noc_h2c_M00_AXI_WSTRB;
  wire [0:0]axi_noc_h2c_M00_AXI_WVALID;
  wire [63:0]axi_noc_h2c_M00_AXI_fw_ARADDR;
  wire [1:0]axi_noc_h2c_M00_AXI_fw_ARBURST;
  wire [3:0]axi_noc_h2c_M00_AXI_fw_ARCACHE;
  wire [1:0]axi_noc_h2c_M00_AXI_fw_ARID;
  wire [7:0]axi_noc_h2c_M00_AXI_fw_ARLEN;
  wire [0:0]axi_noc_h2c_M00_AXI_fw_ARLOCK;
  wire [2:0]axi_noc_h2c_M00_AXI_fw_ARPROT;
  wire [3:0]axi_noc_h2c_M00_AXI_fw_ARQOS;
  wire axi_noc_h2c_M00_AXI_fw_ARREADY;
  wire [3:0]axi_noc_h2c_M00_AXI_fw_ARREGION;
  wire [2:0]axi_noc_h2c_M00_AXI_fw_ARSIZE;
  wire axi_noc_h2c_M00_AXI_fw_ARVALID;
  wire [63:0]axi_noc_h2c_M00_AXI_fw_AWADDR;
  wire [1:0]axi_noc_h2c_M00_AXI_fw_AWBURST;
  wire [3:0]axi_noc_h2c_M00_AXI_fw_AWCACHE;
  wire [1:0]axi_noc_h2c_M00_AXI_fw_AWID;
  wire [7:0]axi_noc_h2c_M00_AXI_fw_AWLEN;
  wire [0:0]axi_noc_h2c_M00_AXI_fw_AWLOCK;
  wire [2:0]axi_noc_h2c_M00_AXI_fw_AWPROT;
  wire [3:0]axi_noc_h2c_M00_AXI_fw_AWQOS;
  wire axi_noc_h2c_M00_AXI_fw_AWREADY;
  wire [3:0]axi_noc_h2c_M00_AXI_fw_AWREGION;
  wire [2:0]axi_noc_h2c_M00_AXI_fw_AWSIZE;
  wire axi_noc_h2c_M00_AXI_fw_AWVALID;
  wire [1:0]axi_noc_h2c_M00_AXI_fw_BID;
  wire axi_noc_h2c_M00_AXI_fw_BREADY;
  wire [1:0]axi_noc_h2c_M00_AXI_fw_BRESP;
  wire axi_noc_h2c_M00_AXI_fw_BVALID;
  wire [127:0]axi_noc_h2c_M00_AXI_fw_RDATA;
  wire [1:0]axi_noc_h2c_M00_AXI_fw_RID;
  wire axi_noc_h2c_M00_AXI_fw_RLAST;
  wire axi_noc_h2c_M00_AXI_fw_RREADY;
  wire [1:0]axi_noc_h2c_M00_AXI_fw_RRESP;
  wire axi_noc_h2c_M00_AXI_fw_RVALID;
  wire [127:0]axi_noc_h2c_M00_AXI_fw_WDATA;
  wire axi_noc_h2c_M00_AXI_fw_WLAST;
  wire axi_noc_h2c_M00_AXI_fw_WREADY;
  wire [15:0]axi_noc_h2c_M00_AXI_fw_WSTRB;
  wire axi_noc_h2c_M00_AXI_fw_WVALID;
  wire [63:0]axi_noc_h2c_M01_AXI_ARADDR;
  wire [1:0]axi_noc_h2c_M01_AXI_ARBURST;
  wire [3:0]axi_noc_h2c_M01_AXI_ARCACHE;
  wire [1:0]axi_noc_h2c_M01_AXI_ARID;
  wire [7:0]axi_noc_h2c_M01_AXI_ARLEN;
  wire [0:0]axi_noc_h2c_M01_AXI_ARLOCK;
  wire [2:0]axi_noc_h2c_M01_AXI_ARPROT;
  wire [3:0]axi_noc_h2c_M01_AXI_ARQOS;
  wire axi_noc_h2c_M01_AXI_ARREADY;
  wire [2:0]axi_noc_h2c_M01_AXI_ARSIZE;
  wire [17:0]axi_noc_h2c_M01_AXI_ARUSER;
  wire [0:0]axi_noc_h2c_M01_AXI_ARVALID;
  wire [63:0]axi_noc_h2c_M01_AXI_AWADDR;
  wire [1:0]axi_noc_h2c_M01_AXI_AWBURST;
  wire [3:0]axi_noc_h2c_M01_AXI_AWCACHE;
  wire [1:0]axi_noc_h2c_M01_AXI_AWID;
  wire [7:0]axi_noc_h2c_M01_AXI_AWLEN;
  wire [0:0]axi_noc_h2c_M01_AXI_AWLOCK;
  wire [2:0]axi_noc_h2c_M01_AXI_AWPROT;
  wire [3:0]axi_noc_h2c_M01_AXI_AWQOS;
  wire axi_noc_h2c_M01_AXI_AWREADY;
  wire [2:0]axi_noc_h2c_M01_AXI_AWSIZE;
  wire [17:0]axi_noc_h2c_M01_AXI_AWUSER;
  wire [0:0]axi_noc_h2c_M01_AXI_AWVALID;
  wire [1:0]axi_noc_h2c_M01_AXI_BID;
  wire [0:0]axi_noc_h2c_M01_AXI_BREADY;
  wire [1:0]axi_noc_h2c_M01_AXI_BRESP;
  wire axi_noc_h2c_M01_AXI_BVALID;
  wire [511:0]axi_noc_h2c_M01_AXI_RDATA;
  wire [1:0]axi_noc_h2c_M01_AXI_RID;
  wire axi_noc_h2c_M01_AXI_RLAST;
  wire [0:0]axi_noc_h2c_M01_AXI_RREADY;
  wire [1:0]axi_noc_h2c_M01_AXI_RRESP;
  wire axi_noc_h2c_M01_AXI_RVALID;
  wire [511:0]axi_noc_h2c_M01_AXI_WDATA;
  wire [0:0]axi_noc_h2c_M01_AXI_WLAST;
  wire axi_noc_h2c_M01_AXI_WREADY;
  wire [63:0]axi_noc_h2c_M01_AXI_WSTRB;
  wire [0:0]axi_noc_h2c_M01_AXI_WVALID;
  wire [0:0]axi_noc_h2c_S00_INI_INTERNOC;
  wire [0:0]axi_noc_h2c_S01_INI_INTERNOC;
  wire [16:0]axi_sc_plram_M00_AXI_ARADDR;
  wire [1:0]axi_sc_plram_M00_AXI_ARBURST;
  wire [3:0]axi_sc_plram_M00_AXI_ARCACHE;
  wire [7:0]axi_sc_plram_M00_AXI_ARLEN;
  wire [0:0]axi_sc_plram_M00_AXI_ARLOCK;
  wire [2:0]axi_sc_plram_M00_AXI_ARPROT;
  wire axi_sc_plram_M00_AXI_ARREADY;
  wire [2:0]axi_sc_plram_M00_AXI_ARSIZE;
  wire axi_sc_plram_M00_AXI_ARVALID;
  wire [16:0]axi_sc_plram_M00_AXI_AWADDR;
  wire [1:0]axi_sc_plram_M00_AXI_AWBURST;
  wire [3:0]axi_sc_plram_M00_AXI_AWCACHE;
  wire [7:0]axi_sc_plram_M00_AXI_AWLEN;
  wire [0:0]axi_sc_plram_M00_AXI_AWLOCK;
  wire [2:0]axi_sc_plram_M00_AXI_AWPROT;
  wire axi_sc_plram_M00_AXI_AWREADY;
  wire [2:0]axi_sc_plram_M00_AXI_AWSIZE;
  wire axi_sc_plram_M00_AXI_AWVALID;
  wire axi_sc_plram_M00_AXI_BREADY;
  wire [1:0]axi_sc_plram_M00_AXI_BRESP;
  wire axi_sc_plram_M00_AXI_BVALID;
  wire [511:0]axi_sc_plram_M00_AXI_RDATA;
  wire axi_sc_plram_M00_AXI_RLAST;
  wire axi_sc_plram_M00_AXI_RREADY;
  wire [1:0]axi_sc_plram_M00_AXI_RRESP;
  wire axi_sc_plram_M00_AXI_RVALID;
  wire [511:0]axi_sc_plram_M00_AXI_WDATA;
  wire axi_sc_plram_M00_AXI_WLAST;
  wire axi_sc_plram_M00_AXI_WREADY;
  wire [63:0]axi_sc_plram_M00_AXI_WSTRB;
  wire axi_sc_plram_M00_AXI_WVALID;
  wire [0:0]blp_m_ext_tog_ctrl_kernel_00_enable_net;
  wire [0:0]blp_m_ext_tog_ctrl_kernel_01_enable_net;
  wire blp_s_aclk_ctrl_00_1;
  wire blp_s_aclk_ext_tog_kernel_00_net;
  wire blp_s_aclk_ext_tog_kernel_01_net;
  wire blp_s_aclk_kernel_00_1;
  wire blp_s_aclk_kernel_01_1;
  wire blp_s_aclk_pcie_00_1;
  wire [0:0]blp_s_aresetn_pcie_reset_00_1;
  wire [0:0]blp_s_aresetn_pr_reset_00_1;
  wire blp_s_ext_tog_ctrl_kernel_00_out_net;
  wire blp_s_ext_tog_ctrl_kernel_01_out_net;
  wire [0:0]const_1_dout;
  wire [31:0]dwc_setup_aie_0_s_M_AXIS_TDATA;
  wire [0:0]dwc_setup_aie_0_s_M_AXIS_TREADY;
  wire dwc_setup_aie_0_s_M_AXIS_TVALID;
  wire [0:0]gate_dbgfw_or_Res;
  wire [0:0]\^ip_pipe_dbg_hub_fw_00 ;
  wire [0:0]ip_pipe_ext_tog_kernel_00_null_q;
  wire [0:0]ip_pipe_ext_tog_kernel_01_null_q;
  wire [0:0]irq_const_tieoff_dout;
  wire [31:0]kernel_interrupt_xlconcat_0_In0_1_interrupt_concat_dout;
  wire [127:0]kernel_interrupt_xlconcat_interrupt_dout;
  wire [16:0]plram_ctrl_BRAM_PORTA_ADDR;
  wire plram_ctrl_BRAM_PORTA_CLK;
  wire [511:0]plram_ctrl_BRAM_PORTA_DIN;
  wire [511:0]plram_ctrl_BRAM_PORTA_DOUT;
  wire plram_ctrl_BRAM_PORTA_EN;
  wire plram_ctrl_BRAM_PORTA_RST;
  wire [63:0]plram_ctrl_BRAM_PORTA_WE;
  wire [0:0]reset_controllers_interconnect_aresetn;
  wire [0:0]reset_controllers_peripheral_aresetn;
  wire [0:0]reset_controllers_resetn_kernel0_ic;
  wire [0:0]resetn_pcie_axi_net;
  wire [0:0]resetn_pl_axi_net;
  wire setup_aie_0_interrupt;
  wire [63:0]setup_aie_0_m_axi_gmem0_ARADDR;
  wire [1:0]setup_aie_0_m_axi_gmem0_ARBURST;
  wire [3:0]setup_aie_0_m_axi_gmem0_ARCACHE;
  wire [0:0]setup_aie_0_m_axi_gmem0_ARID;
  wire [7:0]setup_aie_0_m_axi_gmem0_ARLEN;
  wire [1:0]setup_aie_0_m_axi_gmem0_ARLOCK;
  wire [2:0]setup_aie_0_m_axi_gmem0_ARPROT;
  wire [3:0]setup_aie_0_m_axi_gmem0_ARQOS;
  wire [0:0]setup_aie_0_m_axi_gmem0_ARREADY;
  wire [3:0]setup_aie_0_m_axi_gmem0_ARREGION;
  wire [2:0]setup_aie_0_m_axi_gmem0_ARSIZE;
  wire setup_aie_0_m_axi_gmem0_ARVALID;
  wire [63:0]setup_aie_0_m_axi_gmem0_AWADDR;
  wire [1:0]setup_aie_0_m_axi_gmem0_AWBURST;
  wire [3:0]setup_aie_0_m_axi_gmem0_AWCACHE;
  wire [0:0]setup_aie_0_m_axi_gmem0_AWID;
  wire [7:0]setup_aie_0_m_axi_gmem0_AWLEN;
  wire [1:0]setup_aie_0_m_axi_gmem0_AWLOCK;
  wire [2:0]setup_aie_0_m_axi_gmem0_AWPROT;
  wire [3:0]setup_aie_0_m_axi_gmem0_AWQOS;
  wire [0:0]setup_aie_0_m_axi_gmem0_AWREADY;
  wire [3:0]setup_aie_0_m_axi_gmem0_AWREGION;
  wire [2:0]setup_aie_0_m_axi_gmem0_AWSIZE;
  wire setup_aie_0_m_axi_gmem0_AWVALID;
  wire [0:0]setup_aie_0_m_axi_gmem0_BID;
  wire setup_aie_0_m_axi_gmem0_BREADY;
  wire [1:0]setup_aie_0_m_axi_gmem0_BRESP;
  wire [0:0]setup_aie_0_m_axi_gmem0_BVALID;
  wire [127:0]setup_aie_0_m_axi_gmem0_RDATA;
  wire [0:0]setup_aie_0_m_axi_gmem0_RID;
  wire [0:0]setup_aie_0_m_axi_gmem0_RLAST;
  wire setup_aie_0_m_axi_gmem0_RREADY;
  wire [1:0]setup_aie_0_m_axi_gmem0_RRESP;
  wire [0:0]setup_aie_0_m_axi_gmem0_RVALID;
  wire [127:0]setup_aie_0_m_axi_gmem0_WDATA;
  wire setup_aie_0_m_axi_gmem0_WLAST;
  wire [0:0]setup_aie_0_m_axi_gmem0_WREADY;
  wire [15:0]setup_aie_0_m_axi_gmem0_WSTRB;
  wire setup_aie_0_m_axi_gmem0_WVALID;
  wire [127:0]setup_aie_0_s_TDATA;
  wire setup_aie_0_s_TREADY;
  wire setup_aie_0_s_TVALID;
  wire sink_from_aie_0_interrupt;
  wire [63:0]sink_from_aie_0_m_axi_gmem1_ARADDR;
  wire [1:0]sink_from_aie_0_m_axi_gmem1_ARBURST;
  wire [3:0]sink_from_aie_0_m_axi_gmem1_ARCACHE;
  wire [0:0]sink_from_aie_0_m_axi_gmem1_ARID;
  wire [7:0]sink_from_aie_0_m_axi_gmem1_ARLEN;
  wire [1:0]sink_from_aie_0_m_axi_gmem1_ARLOCK;
  wire [2:0]sink_from_aie_0_m_axi_gmem1_ARPROT;
  wire [3:0]sink_from_aie_0_m_axi_gmem1_ARQOS;
  wire [0:0]sink_from_aie_0_m_axi_gmem1_ARREADY;
  wire [3:0]sink_from_aie_0_m_axi_gmem1_ARREGION;
  wire [2:0]sink_from_aie_0_m_axi_gmem1_ARSIZE;
  wire sink_from_aie_0_m_axi_gmem1_ARVALID;
  wire [63:0]sink_from_aie_0_m_axi_gmem1_AWADDR;
  wire [1:0]sink_from_aie_0_m_axi_gmem1_AWBURST;
  wire [3:0]sink_from_aie_0_m_axi_gmem1_AWCACHE;
  wire [0:0]sink_from_aie_0_m_axi_gmem1_AWID;
  wire [7:0]sink_from_aie_0_m_axi_gmem1_AWLEN;
  wire [1:0]sink_from_aie_0_m_axi_gmem1_AWLOCK;
  wire [2:0]sink_from_aie_0_m_axi_gmem1_AWPROT;
  wire [3:0]sink_from_aie_0_m_axi_gmem1_AWQOS;
  wire [0:0]sink_from_aie_0_m_axi_gmem1_AWREADY;
  wire [3:0]sink_from_aie_0_m_axi_gmem1_AWREGION;
  wire [2:0]sink_from_aie_0_m_axi_gmem1_AWSIZE;
  wire sink_from_aie_0_m_axi_gmem1_AWVALID;
  wire [0:0]sink_from_aie_0_m_axi_gmem1_BID;
  wire sink_from_aie_0_m_axi_gmem1_BREADY;
  wire [1:0]sink_from_aie_0_m_axi_gmem1_BRESP;
  wire [0:0]sink_from_aie_0_m_axi_gmem1_BVALID;
  wire [31:0]sink_from_aie_0_m_axi_gmem1_RDATA;
  wire [0:0]sink_from_aie_0_m_axi_gmem1_RID;
  wire [0:0]sink_from_aie_0_m_axi_gmem1_RLAST;
  wire sink_from_aie_0_m_axi_gmem1_RREADY;
  wire [1:0]sink_from_aie_0_m_axi_gmem1_RRESP;
  wire [0:0]sink_from_aie_0_m_axi_gmem1_RVALID;
  wire [31:0]sink_from_aie_0_m_axi_gmem1_WDATA;
  wire sink_from_aie_0_m_axi_gmem1_WLAST;
  wire [0:0]sink_from_aie_0_m_axi_gmem1_WREADY;
  wire [3:0]sink_from_aie_0_m_axi_gmem1_WSTRB;
  wire sink_from_aie_0_m_axi_gmem1_WVALID;

  assign BLP_M_M00_INI_0_internoc[0] = M00_INI_0_INTERNOC;
  assign BLP_M_M01_INI_0_internoc[0] = M01_INI_0_INTERNOC;
  assign BLP_M_M02_INI_0_internoc[0] = M02_INI_0_INTERNOC;
  assign BLP_S_AXI_CTRL_USER_00_1_ARADDR = BLP_S_AXI_CTRL_USER_00_araddr[63:0];
  assign BLP_S_AXI_CTRL_USER_00_1_ARPROT = BLP_S_AXI_CTRL_USER_00_arprot[2:0];
  assign BLP_S_AXI_CTRL_USER_00_1_ARVALID = BLP_S_AXI_CTRL_USER_00_arvalid;
  assign BLP_S_AXI_CTRL_USER_00_1_AWADDR = BLP_S_AXI_CTRL_USER_00_awaddr[63:0];
  assign BLP_S_AXI_CTRL_USER_00_1_AWPROT = BLP_S_AXI_CTRL_USER_00_awprot[2:0];
  assign BLP_S_AXI_CTRL_USER_00_1_AWVALID = BLP_S_AXI_CTRL_USER_00_awvalid;
  assign BLP_S_AXI_CTRL_USER_00_1_BREADY = BLP_S_AXI_CTRL_USER_00_bready;
  assign BLP_S_AXI_CTRL_USER_00_1_RREADY = BLP_S_AXI_CTRL_USER_00_rready;
  assign BLP_S_AXI_CTRL_USER_00_1_WDATA = BLP_S_AXI_CTRL_USER_00_wdata[31:0];
  assign BLP_S_AXI_CTRL_USER_00_1_WSTRB = BLP_S_AXI_CTRL_USER_00_wstrb[3:0];
  assign BLP_S_AXI_CTRL_USER_00_1_WVALID = BLP_S_AXI_CTRL_USER_00_wvalid;
  assign BLP_S_AXI_CTRL_USER_00_arready = BLP_S_AXI_CTRL_USER_00_1_ARREADY;
  assign BLP_S_AXI_CTRL_USER_00_awready = BLP_S_AXI_CTRL_USER_00_1_AWREADY;
  assign BLP_S_AXI_CTRL_USER_00_bresp[1:0] = BLP_S_AXI_CTRL_USER_00_1_BRESP;
  assign BLP_S_AXI_CTRL_USER_00_bvalid = BLP_S_AXI_CTRL_USER_00_1_BVALID;
  assign BLP_S_AXI_CTRL_USER_00_rdata[31:0] = BLP_S_AXI_CTRL_USER_00_1_RDATA;
  assign BLP_S_AXI_CTRL_USER_00_rresp[1:0] = BLP_S_AXI_CTRL_USER_00_1_RRESP;
  assign BLP_S_AXI_CTRL_USER_00_rvalid = BLP_S_AXI_CTRL_USER_00_1_RVALID;
  assign BLP_S_AXI_CTRL_USER_00_wready = BLP_S_AXI_CTRL_USER_00_1_WREADY;
  assign BLP_S_INI_AIE_00_1_INTERNOC = BLP_S_INI_AIE_00_internoc[0];
  assign axi_noc_h2c_S00_INI_INTERNOC = BLP_S_INI_DBG_00_internoc[0];
  assign axi_noc_h2c_S01_INI_INTERNOC = BLP_S_INI_PLRAM_00_internoc[0];
  assign blp_m_dbg_hub_fw_00[0] = \^ip_pipe_dbg_hub_fw_00 [0];
  assign blp_m_ext_tog_ctrl_kernel_00_enable[0] = blp_m_ext_tog_ctrl_kernel_00_enable_net;
  assign blp_m_ext_tog_ctrl_kernel_00_in[0] = ip_pipe_ext_tog_kernel_00_null_q;
  assign blp_m_ext_tog_ctrl_kernel_01_enable[0] = blp_m_ext_tog_ctrl_kernel_01_enable_net;
  assign blp_m_ext_tog_ctrl_kernel_01_in[0] = ip_pipe_ext_tog_kernel_01_null_q;
  assign blp_m_irq_kernel_00[127:0] = kernel_interrupt_xlconcat_interrupt_dout;
  assign blp_s_aclk_ctrl_00_1 = blp_s_aclk_ctrl_00;
  assign blp_s_aclk_ext_tog_kernel_00_net = blp_s_aclk_ext_tog_kernel_00;
  assign blp_s_aclk_ext_tog_kernel_01_net = blp_s_aclk_ext_tog_kernel_01;
  assign blp_s_aclk_kernel_00_1 = blp_s_aclk_kernel_00;
  assign blp_s_aclk_kernel_01_1 = blp_s_aclk_kernel_01;
  assign blp_s_aclk_pcie_00_1 = blp_s_aclk_pcie_00;
  assign blp_s_aresetn_pcie_reset_00_1 = blp_s_aresetn_pcie_reset_00[0];
  assign blp_s_aresetn_pr_reset_00_1 = blp_s_aresetn_pr_reset_00[0];
  assign blp_s_ext_tog_ctrl_kernel_00_out_net = blp_s_ext_tog_ctrl_kernel_00_out;
  assign blp_s_ext_tog_ctrl_kernel_01_out_net = blp_s_ext_tog_ctrl_kernel_01_out;
  ulp_inst_0_ai_engine_0_0 ai_engine_0
       (.M00_AXIS_tdata(ai_engine_0_M00_AXIS_TDATA),
        .M00_AXIS_tready(ai_engine_0_M00_AXIS_TREADY),
        .M00_AXIS_tvalid(ai_engine_0_M00_AXIS_TVALID),
        .S00_AXIS_tdata(dwc_setup_aie_0_s_M_AXIS_TDATA),
        .S00_AXIS_tlast(1'b0),
        .S00_AXIS_tready(dwc_setup_aie_0_s_M_AXIS_TREADY),
        .S00_AXIS_tvalid(dwc_setup_aie_0_s_M_AXIS_TVALID),
        .S00_AXI_araddr(axi_noc_aie_prog_M00_AXI_ARADDR[33:0]),
        .S00_AXI_arburst(axi_noc_aie_prog_M00_AXI_ARBURST),
        .S00_AXI_arcache(axi_noc_aie_prog_M00_AXI_ARCACHE),
        .S00_AXI_arid({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,axi_noc_aie_prog_M00_AXI_ARID}),
        .S00_AXI_arlen(axi_noc_aie_prog_M00_AXI_ARLEN),
        .S00_AXI_arlock(axi_noc_aie_prog_M00_AXI_ARLOCK),
        .S00_AXI_arprot(axi_noc_aie_prog_M00_AXI_ARPROT),
        .S00_AXI_arqos(axi_noc_aie_prog_M00_AXI_ARQOS),
        .S00_AXI_arready(axi_noc_aie_prog_M00_AXI_ARREADY),
        .S00_AXI_arregion(axi_noc_aie_prog_M00_AXI_ARREGION),
        .S00_AXI_arsize(axi_noc_aie_prog_M00_AXI_ARSIZE),
        .S00_AXI_arvalid(axi_noc_aie_prog_M00_AXI_ARVALID),
        .S00_AXI_awaddr(axi_noc_aie_prog_M00_AXI_AWADDR[33:0]),
        .S00_AXI_awburst(axi_noc_aie_prog_M00_AXI_AWBURST),
        .S00_AXI_awcache(axi_noc_aie_prog_M00_AXI_AWCACHE),
        .S00_AXI_awid({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,axi_noc_aie_prog_M00_AXI_AWID}),
        .S00_AXI_awlen(axi_noc_aie_prog_M00_AXI_AWLEN),
        .S00_AXI_awlock(axi_noc_aie_prog_M00_AXI_AWLOCK),
        .S00_AXI_awprot(axi_noc_aie_prog_M00_AXI_AWPROT),
        .S00_AXI_awqos(axi_noc_aie_prog_M00_AXI_AWQOS),
        .S00_AXI_awready(axi_noc_aie_prog_M00_AXI_AWREADY),
        .S00_AXI_awregion(axi_noc_aie_prog_M00_AXI_AWREGION),
        .S00_AXI_awsize(axi_noc_aie_prog_M00_AXI_AWSIZE),
        .S00_AXI_awvalid(axi_noc_aie_prog_M00_AXI_AWVALID),
        .S00_AXI_bid(axi_noc_aie_prog_M00_AXI_BID),
        .S00_AXI_bready(axi_noc_aie_prog_M00_AXI_BREADY),
        .S00_AXI_bresp(axi_noc_aie_prog_M00_AXI_BRESP),
        .S00_AXI_bvalid(axi_noc_aie_prog_M00_AXI_BVALID),
        .S00_AXI_rdata(axi_noc_aie_prog_M00_AXI_RDATA),
        .S00_AXI_rid(axi_noc_aie_prog_M00_AXI_RID),
        .S00_AXI_rlast(axi_noc_aie_prog_M00_AXI_RLAST),
        .S00_AXI_rready(axi_noc_aie_prog_M00_AXI_RREADY),
        .S00_AXI_rresp(axi_noc_aie_prog_M00_AXI_RRESP),
        .S00_AXI_ruser(axi_noc_aie_prog_M00_AXI_RUSER),
        .S00_AXI_rvalid(axi_noc_aie_prog_M00_AXI_RVALID),
        .S00_AXI_wdata(axi_noc_aie_prog_M00_AXI_WDATA),
        .S00_AXI_wlast(axi_noc_aie_prog_M00_AXI_WLAST),
        .S00_AXI_wready(axi_noc_aie_prog_M00_AXI_WREADY),
        .S00_AXI_wstrb(axi_noc_aie_prog_M00_AXI_WSTRB),
        .S00_AXI_wuser(axi_noc_aie_prog_M00_AXI_WUSER),
        .S00_AXI_wvalid(axi_noc_aie_prog_M00_AXI_WVALID),
        .aclk0(blp_s_aclk_kernel_00_1),
        .s00_axi_aclk(ai_engine_0_s00_axi_aclk));
  ulp_inst_0_axi_dbg_fw_0 axi_dbg_fw
       (.aclk(blp_s_aclk_pcie_00_1),
        .aresetn(const_1_dout),
        .m_axi_araddr(axi_noc_h2c_M00_AXI_fw_ARADDR),
        .m_axi_arburst(axi_noc_h2c_M00_AXI_fw_ARBURST),
        .m_axi_arcache(axi_noc_h2c_M00_AXI_fw_ARCACHE),
        .m_axi_arid(axi_noc_h2c_M00_AXI_fw_ARID),
        .m_axi_arlen(axi_noc_h2c_M00_AXI_fw_ARLEN),
        .m_axi_arlock(axi_noc_h2c_M00_AXI_fw_ARLOCK),
        .m_axi_arprot(axi_noc_h2c_M00_AXI_fw_ARPROT),
        .m_axi_arqos(axi_noc_h2c_M00_AXI_fw_ARQOS),
        .m_axi_arready(axi_noc_h2c_M00_AXI_fw_ARREADY),
        .m_axi_arregion(axi_noc_h2c_M00_AXI_fw_ARREGION),
        .m_axi_arsize(axi_noc_h2c_M00_AXI_fw_ARSIZE),
        .m_axi_arvalid(axi_noc_h2c_M00_AXI_fw_ARVALID),
        .m_axi_awaddr(axi_noc_h2c_M00_AXI_fw_AWADDR),
        .m_axi_awburst(axi_noc_h2c_M00_AXI_fw_AWBURST),
        .m_axi_awcache(axi_noc_h2c_M00_AXI_fw_AWCACHE),
        .m_axi_awid(axi_noc_h2c_M00_AXI_fw_AWID),
        .m_axi_awlen(axi_noc_h2c_M00_AXI_fw_AWLEN),
        .m_axi_awlock(axi_noc_h2c_M00_AXI_fw_AWLOCK),
        .m_axi_awprot(axi_noc_h2c_M00_AXI_fw_AWPROT),
        .m_axi_awqos(axi_noc_h2c_M00_AXI_fw_AWQOS),
        .m_axi_awready(axi_noc_h2c_M00_AXI_fw_AWREADY),
        .m_axi_awregion(axi_noc_h2c_M00_AXI_fw_AWREGION),
        .m_axi_awsize(axi_noc_h2c_M00_AXI_fw_AWSIZE),
        .m_axi_awvalid(axi_noc_h2c_M00_AXI_fw_AWVALID),
        .m_axi_bid(axi_noc_h2c_M00_AXI_fw_BID),
        .m_axi_bready(axi_noc_h2c_M00_AXI_fw_BREADY),
        .m_axi_bresp(axi_noc_h2c_M00_AXI_fw_BRESP),
        .m_axi_bvalid(axi_noc_h2c_M00_AXI_fw_BVALID),
        .m_axi_rdata(axi_noc_h2c_M00_AXI_fw_RDATA),
        .m_axi_rid(axi_noc_h2c_M00_AXI_fw_RID),
        .m_axi_rlast(axi_noc_h2c_M00_AXI_fw_RLAST),
        .m_axi_rready(axi_noc_h2c_M00_AXI_fw_RREADY),
        .m_axi_rresp(axi_noc_h2c_M00_AXI_fw_RRESP),
        .m_axi_rvalid(axi_noc_h2c_M00_AXI_fw_RVALID),
        .m_axi_wdata(axi_noc_h2c_M00_AXI_fw_WDATA),
        .m_axi_wlast(axi_noc_h2c_M00_AXI_fw_WLAST),
        .m_axi_wready(axi_noc_h2c_M00_AXI_fw_WREADY),
        .m_axi_wstrb(axi_noc_h2c_M00_AXI_fw_WSTRB),
        .m_axi_wvalid(axi_noc_h2c_M00_AXI_fw_WVALID),
        .mi_r_error(axi_dbg_fw_mi_r_error),
        .mi_w_error(axi_dbg_fw_mi_w_error),
        .s_axi_araddr(axi_noc_h2c_M00_AXI_ARADDR),
        .s_axi_arburst(axi_noc_h2c_M00_AXI_ARBURST),
        .s_axi_arcache(axi_noc_h2c_M00_AXI_ARCACHE),
        .s_axi_arid(axi_noc_h2c_M00_AXI_ARID),
        .s_axi_arlen(axi_noc_h2c_M00_AXI_ARLEN),
        .s_axi_arlock(axi_noc_h2c_M00_AXI_ARLOCK),
        .s_axi_arprot(axi_noc_h2c_M00_AXI_ARPROT),
        .s_axi_arqos(axi_noc_h2c_M00_AXI_ARQOS),
        .s_axi_arready(axi_noc_h2c_M00_AXI_ARREADY),
        .s_axi_arregion(axi_noc_h2c_M00_AXI_ARREGION),
        .s_axi_arsize(axi_noc_h2c_M00_AXI_ARSIZE),
        .s_axi_aruser(axi_noc_h2c_M00_AXI_ARUSER),
        .s_axi_arvalid(axi_noc_h2c_M00_AXI_ARVALID),
        .s_axi_awaddr(axi_noc_h2c_M00_AXI_AWADDR),
        .s_axi_awburst(axi_noc_h2c_M00_AXI_AWBURST),
        .s_axi_awcache(axi_noc_h2c_M00_AXI_AWCACHE),
        .s_axi_awid(axi_noc_h2c_M00_AXI_AWID),
        .s_axi_awlen(axi_noc_h2c_M00_AXI_AWLEN),
        .s_axi_awlock(axi_noc_h2c_M00_AXI_AWLOCK),
        .s_axi_awprot(axi_noc_h2c_M00_AXI_AWPROT),
        .s_axi_awqos(axi_noc_h2c_M00_AXI_AWQOS),
        .s_axi_awready(axi_noc_h2c_M00_AXI_AWREADY),
        .s_axi_awregion(axi_noc_h2c_M00_AXI_AWREGION),
        .s_axi_awsize(axi_noc_h2c_M00_AXI_AWSIZE),
        .s_axi_awuser(axi_noc_h2c_M00_AXI_AWUSER),
        .s_axi_awvalid(axi_noc_h2c_M00_AXI_AWVALID),
        .s_axi_bid(axi_noc_h2c_M00_AXI_BID),
        .s_axi_bready(axi_noc_h2c_M00_AXI_BREADY),
        .s_axi_bresp(axi_noc_h2c_M00_AXI_BRESP),
        .s_axi_bvalid(axi_noc_h2c_M00_AXI_BVALID),
        .s_axi_ctl_araddr({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_ctl_arvalid(1'b0),
        .s_axi_ctl_awaddr({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_ctl_awvalid(1'b0),
        .s_axi_ctl_bready(1'b0),
        .s_axi_ctl_rready(1'b0),
        .s_axi_ctl_wdata({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_ctl_wstrb({1'b1,1'b1,1'b1,1'b1}),
        .s_axi_ctl_wvalid(1'b0),
        .s_axi_rdata(axi_noc_h2c_M00_AXI_RDATA),
        .s_axi_rid(axi_noc_h2c_M00_AXI_RID),
        .s_axi_rlast(axi_noc_h2c_M00_AXI_RLAST),
        .s_axi_rready(axi_noc_h2c_M00_AXI_RREADY),
        .s_axi_rresp(axi_noc_h2c_M00_AXI_RRESP),
        .s_axi_rvalid(axi_noc_h2c_M00_AXI_RVALID),
        .s_axi_wdata(axi_noc_h2c_M00_AXI_WDATA),
        .s_axi_wlast(axi_noc_h2c_M00_AXI_WLAST),
        .s_axi_wready(axi_noc_h2c_M00_AXI_WREADY),
        .s_axi_wstrb(axi_noc_h2c_M00_AXI_WSTRB),
        .s_axi_wvalid(axi_noc_h2c_M00_AXI_WVALID));
  ulp_inst_0_axi_dbg_hub_0 axi_dbg_hub
       (.aclk(blp_s_aclk_pcie_00_1),
        .aresetn(resetn_pcie_axi_net),
        .s_axi_araddr(axi_noc_h2c_M00_AXI_fw_ARADDR),
        .s_axi_arburst(axi_noc_h2c_M00_AXI_fw_ARBURST),
        .s_axi_arcache(axi_noc_h2c_M00_AXI_fw_ARCACHE),
        .s_axi_arid(axi_noc_h2c_M00_AXI_fw_ARID),
        .s_axi_arlen(axi_noc_h2c_M00_AXI_fw_ARLEN),
        .s_axi_arlock(axi_noc_h2c_M00_AXI_fw_ARLOCK),
        .s_axi_arprot(axi_noc_h2c_M00_AXI_fw_ARPROT),
        .s_axi_arqos(axi_noc_h2c_M00_AXI_fw_ARQOS),
        .s_axi_arready(axi_noc_h2c_M00_AXI_fw_ARREADY),
        .s_axi_arregion(axi_noc_h2c_M00_AXI_fw_ARREGION),
        .s_axi_arsize(axi_noc_h2c_M00_AXI_fw_ARSIZE),
        .s_axi_arvalid(axi_noc_h2c_M00_AXI_fw_ARVALID),
        .s_axi_awaddr(axi_noc_h2c_M00_AXI_fw_AWADDR),
        .s_axi_awburst(axi_noc_h2c_M00_AXI_fw_AWBURST),
        .s_axi_awcache(axi_noc_h2c_M00_AXI_fw_AWCACHE),
        .s_axi_awid(axi_noc_h2c_M00_AXI_fw_AWID),
        .s_axi_awlen(axi_noc_h2c_M00_AXI_fw_AWLEN),
        .s_axi_awlock(axi_noc_h2c_M00_AXI_fw_AWLOCK),
        .s_axi_awprot(axi_noc_h2c_M00_AXI_fw_AWPROT),
        .s_axi_awqos(axi_noc_h2c_M00_AXI_fw_AWQOS),
        .s_axi_awready(axi_noc_h2c_M00_AXI_fw_AWREADY),
        .s_axi_awregion(axi_noc_h2c_M00_AXI_fw_AWREGION),
        .s_axi_awsize(axi_noc_h2c_M00_AXI_fw_AWSIZE),
        .s_axi_awvalid(axi_noc_h2c_M00_AXI_fw_AWVALID),
        .s_axi_bid(axi_noc_h2c_M00_AXI_fw_BID),
        .s_axi_bready(axi_noc_h2c_M00_AXI_fw_BREADY),
        .s_axi_bresp(axi_noc_h2c_M00_AXI_fw_BRESP),
        .s_axi_bvalid(axi_noc_h2c_M00_AXI_fw_BVALID),
        .s_axi_rdata(axi_noc_h2c_M00_AXI_fw_RDATA),
        .s_axi_rid(axi_noc_h2c_M00_AXI_fw_RID),
        .s_axi_rlast(axi_noc_h2c_M00_AXI_fw_RLAST),
        .s_axi_rready(axi_noc_h2c_M00_AXI_fw_RREADY),
        .s_axi_rresp(axi_noc_h2c_M00_AXI_fw_RRESP),
        .s_axi_rvalid(axi_noc_h2c_M00_AXI_fw_RVALID),
        .s_axi_wdata(axi_noc_h2c_M00_AXI_fw_WDATA),
        .s_axi_wlast(axi_noc_h2c_M00_AXI_fw_WLAST),
        .s_axi_wready(axi_noc_h2c_M00_AXI_fw_WREADY),
        .s_axi_wstrb(axi_noc_h2c_M00_AXI_fw_WSTRB),
        .s_axi_wvalid(axi_noc_h2c_M00_AXI_fw_WVALID));
  ulp_inst_0_axi_gpio_null_user_0 axi_gpio_null_user
       (.gpio_io_i(1'b0),
        .s_axi_aclk(blp_s_aclk_ctrl_00_1),
        .s_axi_araddr(axi_ic_user_extend_M00_AXI_ARADDR),
        .s_axi_aresetn(resetn_pl_axi_net),
        .s_axi_arready(axi_ic_user_extend_M00_AXI_ARREADY),
        .s_axi_arvalid(axi_ic_user_extend_M00_AXI_ARVALID),
        .s_axi_awaddr(axi_ic_user_extend_M00_AXI_AWADDR),
        .s_axi_awready(axi_ic_user_extend_M00_AXI_AWREADY),
        .s_axi_awvalid(axi_ic_user_extend_M00_AXI_AWVALID),
        .s_axi_bready(axi_ic_user_extend_M00_AXI_BREADY),
        .s_axi_bresp(axi_ic_user_extend_M00_AXI_BRESP),
        .s_axi_bvalid(axi_ic_user_extend_M00_AXI_BVALID),
        .s_axi_rdata(axi_ic_user_extend_M00_AXI_RDATA),
        .s_axi_rready(axi_ic_user_extend_M00_AXI_RREADY),
        .s_axi_rresp(axi_ic_user_extend_M00_AXI_RRESP),
        .s_axi_rvalid(axi_ic_user_extend_M00_AXI_RVALID),
        .s_axi_wdata(axi_ic_user_extend_M00_AXI_WDATA),
        .s_axi_wready(axi_ic_user_extend_M00_AXI_WREADY),
        .s_axi_wstrb(axi_ic_user_extend_M00_AXI_WSTRB),
        .s_axi_wvalid(axi_ic_user_extend_M00_AXI_WVALID));
  (* DPA_AXILITE_MASTER = "primary" *) 
  ulp_inst_0_axi_ic_user_0 axi_ic_user
       (.M00_AXI_araddr(axi_ic_user_M00_AXI_ARADDR),
        .M00_AXI_arburst(axi_ic_user_M00_AXI_ARBURST),
        .M00_AXI_arcache(axi_ic_user_M00_AXI_ARCACHE),
        .M00_AXI_arid(axi_ic_user_M00_AXI_ARID),
        .M00_AXI_arlen(axi_ic_user_M00_AXI_ARLEN),
        .M00_AXI_arlock(axi_ic_user_M00_AXI_ARLOCK),
        .M00_AXI_arprot(axi_ic_user_M00_AXI_ARPROT),
        .M00_AXI_arqos(axi_ic_user_M00_AXI_ARQOS),
        .M00_AXI_arready(axi_ic_user_M00_AXI_ARREADY),
        .M00_AXI_arsize(axi_ic_user_M00_AXI_ARSIZE),
        .M00_AXI_aruser(axi_ic_user_M00_AXI_ARUSER),
        .M00_AXI_arvalid(axi_ic_user_M00_AXI_ARVALID),
        .M00_AXI_awaddr(axi_ic_user_M00_AXI_AWADDR),
        .M00_AXI_awburst(axi_ic_user_M00_AXI_AWBURST),
        .M00_AXI_awcache(axi_ic_user_M00_AXI_AWCACHE),
        .M00_AXI_awid(axi_ic_user_M00_AXI_AWID),
        .M00_AXI_awlen(axi_ic_user_M00_AXI_AWLEN),
        .M00_AXI_awlock(axi_ic_user_M00_AXI_AWLOCK),
        .M00_AXI_awprot(axi_ic_user_M00_AXI_AWPROT),
        .M00_AXI_awqos(axi_ic_user_M00_AXI_AWQOS),
        .M00_AXI_awready(axi_ic_user_M00_AXI_AWREADY),
        .M00_AXI_awsize(axi_ic_user_M00_AXI_AWSIZE),
        .M00_AXI_awuser(axi_ic_user_M00_AXI_AWUSER),
        .M00_AXI_awvalid(axi_ic_user_M00_AXI_AWVALID),
        .M00_AXI_bid(axi_ic_user_M00_AXI_BID),
        .M00_AXI_bready(axi_ic_user_M00_AXI_BREADY),
        .M00_AXI_bresp(axi_ic_user_M00_AXI_BRESP),
        .M00_AXI_bvalid(axi_ic_user_M00_AXI_BVALID),
        .M00_AXI_rdata(axi_ic_user_M00_AXI_RDATA),
        .M00_AXI_rid(axi_ic_user_M00_AXI_RID),
        .M00_AXI_rlast(axi_ic_user_M00_AXI_RLAST),
        .M00_AXI_rready(axi_ic_user_M00_AXI_RREADY),
        .M00_AXI_rresp(axi_ic_user_M00_AXI_RRESP),
        .M00_AXI_ruser(axi_ic_user_M00_AXI_RUSER),
        .M00_AXI_rvalid(axi_ic_user_M00_AXI_RVALID),
        .M00_AXI_wdata(axi_ic_user_M00_AXI_WDATA),
        .M00_AXI_wlast(axi_ic_user_M00_AXI_WLAST),
        .M00_AXI_wready(axi_ic_user_M00_AXI_WREADY),
        .M00_AXI_wstrb(axi_ic_user_M00_AXI_WSTRB),
        .M00_AXI_wuser(axi_ic_user_M00_AXI_WUSER),
        .M00_AXI_wvalid(axi_ic_user_M00_AXI_WVALID),
        .M01_AXI_araddr(axi_ic_user_M01_AXI_ARADDR),
        .M01_AXI_arready(axi_ic_user_M01_AXI_ARREADY),
        .M01_AXI_arvalid(axi_ic_user_M01_AXI_ARVALID),
        .M01_AXI_awaddr(axi_ic_user_M01_AXI_AWADDR),
        .M01_AXI_awready(axi_ic_user_M01_AXI_AWREADY),
        .M01_AXI_awvalid(axi_ic_user_M01_AXI_AWVALID),
        .M01_AXI_bready(axi_ic_user_M01_AXI_BREADY),
        .M01_AXI_bresp(axi_ic_user_M01_AXI_BRESP),
        .M01_AXI_bvalid(axi_ic_user_M01_AXI_BVALID),
        .M01_AXI_rdata(axi_ic_user_M01_AXI_RDATA),
        .M01_AXI_rready(axi_ic_user_M01_AXI_RREADY),
        .M01_AXI_rresp(axi_ic_user_M01_AXI_RRESP),
        .M01_AXI_rvalid(axi_ic_user_M01_AXI_RVALID),
        .M01_AXI_wdata(axi_ic_user_M01_AXI_WDATA),
        .M01_AXI_wready(axi_ic_user_M01_AXI_WREADY),
        .M01_AXI_wstrb(axi_ic_user_M01_AXI_WSTRB),
        .M01_AXI_wvalid(axi_ic_user_M01_AXI_WVALID),
        .M02_AXI_araddr(axi_ic_user_M02_AXI_ARADDR),
        .M02_AXI_arready(axi_ic_user_M02_AXI_ARREADY),
        .M02_AXI_arvalid(axi_ic_user_M02_AXI_ARVALID),
        .M02_AXI_awaddr(axi_ic_user_M02_AXI_AWADDR),
        .M02_AXI_awready(axi_ic_user_M02_AXI_AWREADY),
        .M02_AXI_awvalid(axi_ic_user_M02_AXI_AWVALID),
        .M02_AXI_bready(axi_ic_user_M02_AXI_BREADY),
        .M02_AXI_bresp(axi_ic_user_M02_AXI_BRESP),
        .M02_AXI_bvalid(axi_ic_user_M02_AXI_BVALID),
        .M02_AXI_rdata(axi_ic_user_M02_AXI_RDATA),
        .M02_AXI_rready(axi_ic_user_M02_AXI_RREADY),
        .M02_AXI_rresp(axi_ic_user_M02_AXI_RRESP),
        .M02_AXI_rvalid(axi_ic_user_M02_AXI_RVALID),
        .M02_AXI_wdata(axi_ic_user_M02_AXI_WDATA),
        .M02_AXI_wready(axi_ic_user_M02_AXI_WREADY),
        .M02_AXI_wstrb(axi_ic_user_M02_AXI_WSTRB),
        .M02_AXI_wvalid(axi_ic_user_M02_AXI_WVALID),
        .S00_AXI_araddr(BLP_S_AXI_CTRL_USER_00_1_ARADDR),
        .S00_AXI_arprot(BLP_S_AXI_CTRL_USER_00_1_ARPROT),
        .S00_AXI_arready(BLP_S_AXI_CTRL_USER_00_1_ARREADY),
        .S00_AXI_arvalid(BLP_S_AXI_CTRL_USER_00_1_ARVALID),
        .S00_AXI_awaddr(BLP_S_AXI_CTRL_USER_00_1_AWADDR),
        .S00_AXI_awprot(BLP_S_AXI_CTRL_USER_00_1_AWPROT),
        .S00_AXI_awready(BLP_S_AXI_CTRL_USER_00_1_AWREADY),
        .S00_AXI_awvalid(BLP_S_AXI_CTRL_USER_00_1_AWVALID),
        .S00_AXI_bready(BLP_S_AXI_CTRL_USER_00_1_BREADY),
        .S00_AXI_bresp(BLP_S_AXI_CTRL_USER_00_1_BRESP),
        .S00_AXI_bvalid(BLP_S_AXI_CTRL_USER_00_1_BVALID),
        .S00_AXI_rdata(BLP_S_AXI_CTRL_USER_00_1_RDATA),
        .S00_AXI_rready(BLP_S_AXI_CTRL_USER_00_1_RREADY),
        .S00_AXI_rresp(BLP_S_AXI_CTRL_USER_00_1_RRESP),
        .S00_AXI_rvalid(BLP_S_AXI_CTRL_USER_00_1_RVALID),
        .S00_AXI_wdata(BLP_S_AXI_CTRL_USER_00_1_WDATA),
        .S00_AXI_wready(BLP_S_AXI_CTRL_USER_00_1_WREADY),
        .S00_AXI_wstrb(BLP_S_AXI_CTRL_USER_00_1_WSTRB),
        .S00_AXI_wvalid(BLP_S_AXI_CTRL_USER_00_1_WVALID),
        .aclk(blp_s_aclk_ctrl_00_1),
        .aclk1(blp_s_aclk_kernel_00_1),
        .aresetn(resetn_pl_axi_net));
  ulp_inst_0_axi_ic_user_extend_0 axi_ic_user_extend
       (.M00_AXI_araddr(axi_ic_user_extend_M00_AXI_ARADDR),
        .M00_AXI_arready(axi_ic_user_extend_M00_AXI_ARREADY),
        .M00_AXI_arvalid(axi_ic_user_extend_M00_AXI_ARVALID),
        .M00_AXI_awaddr(axi_ic_user_extend_M00_AXI_AWADDR),
        .M00_AXI_awready(axi_ic_user_extend_M00_AXI_AWREADY),
        .M00_AXI_awvalid(axi_ic_user_extend_M00_AXI_AWVALID),
        .M00_AXI_bready(axi_ic_user_extend_M00_AXI_BREADY),
        .M00_AXI_bresp(axi_ic_user_extend_M00_AXI_BRESP),
        .M00_AXI_bvalid(axi_ic_user_extend_M00_AXI_BVALID),
        .M00_AXI_rdata(axi_ic_user_extend_M00_AXI_RDATA),
        .M00_AXI_rready(axi_ic_user_extend_M00_AXI_RREADY),
        .M00_AXI_rresp(axi_ic_user_extend_M00_AXI_RRESP),
        .M00_AXI_rvalid(axi_ic_user_extend_M00_AXI_RVALID),
        .M00_AXI_wdata(axi_ic_user_extend_M00_AXI_WDATA),
        .M00_AXI_wready(axi_ic_user_extend_M00_AXI_WREADY),
        .M00_AXI_wstrb(axi_ic_user_extend_M00_AXI_WSTRB),
        .M00_AXI_wvalid(axi_ic_user_extend_M00_AXI_WVALID),
        .S00_AXI_araddr(axi_ic_user_M00_AXI_ARADDR),
        .S00_AXI_arburst(axi_ic_user_M00_AXI_ARBURST),
        .S00_AXI_arcache(axi_ic_user_M00_AXI_ARCACHE),
        .S00_AXI_arid(axi_ic_user_M00_AXI_ARID),
        .S00_AXI_arlen(axi_ic_user_M00_AXI_ARLEN),
        .S00_AXI_arlock(axi_ic_user_M00_AXI_ARLOCK),
        .S00_AXI_arprot(axi_ic_user_M00_AXI_ARPROT),
        .S00_AXI_arqos(axi_ic_user_M00_AXI_ARQOS),
        .S00_AXI_arready(axi_ic_user_M00_AXI_ARREADY),
        .S00_AXI_arsize(axi_ic_user_M00_AXI_ARSIZE),
        .S00_AXI_aruser(axi_ic_user_M00_AXI_ARUSER),
        .S00_AXI_arvalid(axi_ic_user_M00_AXI_ARVALID),
        .S00_AXI_awaddr(axi_ic_user_M00_AXI_AWADDR),
        .S00_AXI_awburst(axi_ic_user_M00_AXI_AWBURST),
        .S00_AXI_awcache(axi_ic_user_M00_AXI_AWCACHE),
        .S00_AXI_awid(axi_ic_user_M00_AXI_AWID),
        .S00_AXI_awlen(axi_ic_user_M00_AXI_AWLEN),
        .S00_AXI_awlock(axi_ic_user_M00_AXI_AWLOCK),
        .S00_AXI_awprot(axi_ic_user_M00_AXI_AWPROT),
        .S00_AXI_awqos(axi_ic_user_M00_AXI_AWQOS),
        .S00_AXI_awready(axi_ic_user_M00_AXI_AWREADY),
        .S00_AXI_awsize(axi_ic_user_M00_AXI_AWSIZE),
        .S00_AXI_awuser(axi_ic_user_M00_AXI_AWUSER),
        .S00_AXI_awvalid(axi_ic_user_M00_AXI_AWVALID),
        .S00_AXI_bid(axi_ic_user_M00_AXI_BID),
        .S00_AXI_bready(axi_ic_user_M00_AXI_BREADY),
        .S00_AXI_bresp(axi_ic_user_M00_AXI_BRESP),
        .S00_AXI_bvalid(axi_ic_user_M00_AXI_BVALID),
        .S00_AXI_rdata(axi_ic_user_M00_AXI_RDATA),
        .S00_AXI_rid(axi_ic_user_M00_AXI_RID),
        .S00_AXI_rlast(axi_ic_user_M00_AXI_RLAST),
        .S00_AXI_rready(axi_ic_user_M00_AXI_RREADY),
        .S00_AXI_rresp(axi_ic_user_M00_AXI_RRESP),
        .S00_AXI_ruser(axi_ic_user_M00_AXI_RUSER),
        .S00_AXI_rvalid(axi_ic_user_M00_AXI_RVALID),
        .S00_AXI_wdata(axi_ic_user_M00_AXI_WDATA),
        .S00_AXI_wlast(axi_ic_user_M00_AXI_WLAST),
        .S00_AXI_wready(axi_ic_user_M00_AXI_WREADY),
        .S00_AXI_wstrb(axi_ic_user_M00_AXI_WSTRB),
        .S00_AXI_wuser(axi_ic_user_M00_AXI_WUSER),
        .S00_AXI_wvalid(axi_ic_user_M00_AXI_WVALID),
        .aclk(blp_s_aclk_ctrl_00_1),
        .aresetn(resetn_pl_axi_net));
  ulp_inst_0_axi_noc_aie_prog_0 axi_noc_aie_prog
       (.M00_AXI_araddr(axi_noc_aie_prog_M00_AXI_ARADDR),
        .M00_AXI_arburst(axi_noc_aie_prog_M00_AXI_ARBURST),
        .M00_AXI_arcache(axi_noc_aie_prog_M00_AXI_ARCACHE),
        .M00_AXI_arid(axi_noc_aie_prog_M00_AXI_ARID),
        .M00_AXI_arlen(axi_noc_aie_prog_M00_AXI_ARLEN),
        .M00_AXI_arlock(axi_noc_aie_prog_M00_AXI_ARLOCK),
        .M00_AXI_arprot(axi_noc_aie_prog_M00_AXI_ARPROT),
        .M00_AXI_arqos(axi_noc_aie_prog_M00_AXI_ARQOS),
        .M00_AXI_arready(axi_noc_aie_prog_M00_AXI_ARREADY),
        .M00_AXI_arregion(axi_noc_aie_prog_M00_AXI_ARREGION),
        .M00_AXI_arsize(axi_noc_aie_prog_M00_AXI_ARSIZE),
        .M00_AXI_arvalid(axi_noc_aie_prog_M00_AXI_ARVALID),
        .M00_AXI_awaddr(axi_noc_aie_prog_M00_AXI_AWADDR),
        .M00_AXI_awburst(axi_noc_aie_prog_M00_AXI_AWBURST),
        .M00_AXI_awcache(axi_noc_aie_prog_M00_AXI_AWCACHE),
        .M00_AXI_awid(axi_noc_aie_prog_M00_AXI_AWID),
        .M00_AXI_awlen(axi_noc_aie_prog_M00_AXI_AWLEN),
        .M00_AXI_awlock(axi_noc_aie_prog_M00_AXI_AWLOCK),
        .M00_AXI_awprot(axi_noc_aie_prog_M00_AXI_AWPROT),
        .M00_AXI_awqos(axi_noc_aie_prog_M00_AXI_AWQOS),
        .M00_AXI_awready(axi_noc_aie_prog_M00_AXI_AWREADY),
        .M00_AXI_awregion(axi_noc_aie_prog_M00_AXI_AWREGION),
        .M00_AXI_awsize(axi_noc_aie_prog_M00_AXI_AWSIZE),
        .M00_AXI_awvalid(axi_noc_aie_prog_M00_AXI_AWVALID),
        .M00_AXI_bid(axi_noc_aie_prog_M00_AXI_BID[1:0]),
        .M00_AXI_bready(axi_noc_aie_prog_M00_AXI_BREADY),
        .M00_AXI_bresp(axi_noc_aie_prog_M00_AXI_BRESP),
        .M00_AXI_bvalid(axi_noc_aie_prog_M00_AXI_BVALID),
        .M00_AXI_rdata(axi_noc_aie_prog_M00_AXI_RDATA),
        .M00_AXI_rid(axi_noc_aie_prog_M00_AXI_RID[1:0]),
        .M00_AXI_rlast(axi_noc_aie_prog_M00_AXI_RLAST),
        .M00_AXI_rready(axi_noc_aie_prog_M00_AXI_RREADY),
        .M00_AXI_rresp(axi_noc_aie_prog_M00_AXI_RRESP),
        .M00_AXI_ruser(axi_noc_aie_prog_M00_AXI_RUSER),
        .M00_AXI_rvalid(axi_noc_aie_prog_M00_AXI_RVALID),
        .M00_AXI_wdata(axi_noc_aie_prog_M00_AXI_WDATA),
        .M00_AXI_wlast(axi_noc_aie_prog_M00_AXI_WLAST),
        .M00_AXI_wready(axi_noc_aie_prog_M00_AXI_WREADY),
        .M00_AXI_wstrb(axi_noc_aie_prog_M00_AXI_WSTRB),
        .M00_AXI_wuser(axi_noc_aie_prog_M00_AXI_WUSER),
        .M00_AXI_wvalid(axi_noc_aie_prog_M00_AXI_WVALID),
        .S00_INI_internoc(BLP_S_INI_AIE_00_1_INTERNOC),
        .aclk0(ai_engine_0_s00_axi_aclk));
  ulp_inst_0_axi_noc_h2c_0 axi_noc_h2c
       (.M00_AXI_araddr(axi_noc_h2c_M00_AXI_ARADDR),
        .M00_AXI_arburst(axi_noc_h2c_M00_AXI_ARBURST),
        .M00_AXI_arcache(axi_noc_h2c_M00_AXI_ARCACHE),
        .M00_AXI_arid(axi_noc_h2c_M00_AXI_ARID),
        .M00_AXI_arlen(axi_noc_h2c_M00_AXI_ARLEN),
        .M00_AXI_arlock(axi_noc_h2c_M00_AXI_ARLOCK),
        .M00_AXI_arprot(axi_noc_h2c_M00_AXI_ARPROT),
        .M00_AXI_arqos(axi_noc_h2c_M00_AXI_ARQOS),
        .M00_AXI_arready(axi_noc_h2c_M00_AXI_ARREADY),
        .M00_AXI_arregion(axi_noc_h2c_M00_AXI_ARREGION),
        .M00_AXI_arsize(axi_noc_h2c_M00_AXI_ARSIZE),
        .M00_AXI_aruser(axi_noc_h2c_M00_AXI_ARUSER),
        .M00_AXI_arvalid(axi_noc_h2c_M00_AXI_ARVALID),
        .M00_AXI_awaddr(axi_noc_h2c_M00_AXI_AWADDR),
        .M00_AXI_awburst(axi_noc_h2c_M00_AXI_AWBURST),
        .M00_AXI_awcache(axi_noc_h2c_M00_AXI_AWCACHE),
        .M00_AXI_awid(axi_noc_h2c_M00_AXI_AWID),
        .M00_AXI_awlen(axi_noc_h2c_M00_AXI_AWLEN),
        .M00_AXI_awlock(axi_noc_h2c_M00_AXI_AWLOCK),
        .M00_AXI_awprot(axi_noc_h2c_M00_AXI_AWPROT),
        .M00_AXI_awqos(axi_noc_h2c_M00_AXI_AWQOS),
        .M00_AXI_awready(axi_noc_h2c_M00_AXI_AWREADY),
        .M00_AXI_awregion(axi_noc_h2c_M00_AXI_AWREGION),
        .M00_AXI_awsize(axi_noc_h2c_M00_AXI_AWSIZE),
        .M00_AXI_awuser(axi_noc_h2c_M00_AXI_AWUSER),
        .M00_AXI_awvalid(axi_noc_h2c_M00_AXI_AWVALID),
        .M00_AXI_bid(axi_noc_h2c_M00_AXI_BID),
        .M00_AXI_bready(axi_noc_h2c_M00_AXI_BREADY),
        .M00_AXI_bresp(axi_noc_h2c_M00_AXI_BRESP),
        .M00_AXI_bvalid(axi_noc_h2c_M00_AXI_BVALID),
        .M00_AXI_rdata(axi_noc_h2c_M00_AXI_RDATA),
        .M00_AXI_rid(axi_noc_h2c_M00_AXI_RID),
        .M00_AXI_rlast(axi_noc_h2c_M00_AXI_RLAST),
        .M00_AXI_rready(axi_noc_h2c_M00_AXI_RREADY),
        .M00_AXI_rresp(axi_noc_h2c_M00_AXI_RRESP),
        .M00_AXI_rvalid(axi_noc_h2c_M00_AXI_RVALID),
        .M00_AXI_wdata(axi_noc_h2c_M00_AXI_WDATA),
        .M00_AXI_wlast(axi_noc_h2c_M00_AXI_WLAST),
        .M00_AXI_wready(axi_noc_h2c_M00_AXI_WREADY),
        .M00_AXI_wstrb(axi_noc_h2c_M00_AXI_WSTRB),
        .M00_AXI_wvalid(axi_noc_h2c_M00_AXI_WVALID),
        .M01_AXI_araddr(axi_noc_h2c_M01_AXI_ARADDR),
        .M01_AXI_arburst(axi_noc_h2c_M01_AXI_ARBURST),
        .M01_AXI_arcache(axi_noc_h2c_M01_AXI_ARCACHE),
        .M01_AXI_arid(axi_noc_h2c_M01_AXI_ARID),
        .M01_AXI_arlen(axi_noc_h2c_M01_AXI_ARLEN),
        .M01_AXI_arlock(axi_noc_h2c_M01_AXI_ARLOCK),
        .M01_AXI_arprot(axi_noc_h2c_M01_AXI_ARPROT),
        .M01_AXI_arqos(axi_noc_h2c_M01_AXI_ARQOS),
        .M01_AXI_arready(axi_noc_h2c_M01_AXI_ARREADY),
        .M01_AXI_arsize(axi_noc_h2c_M01_AXI_ARSIZE),
        .M01_AXI_aruser(axi_noc_h2c_M01_AXI_ARUSER),
        .M01_AXI_arvalid(axi_noc_h2c_M01_AXI_ARVALID),
        .M01_AXI_awaddr(axi_noc_h2c_M01_AXI_AWADDR),
        .M01_AXI_awburst(axi_noc_h2c_M01_AXI_AWBURST),
        .M01_AXI_awcache(axi_noc_h2c_M01_AXI_AWCACHE),
        .M01_AXI_awid(axi_noc_h2c_M01_AXI_AWID),
        .M01_AXI_awlen(axi_noc_h2c_M01_AXI_AWLEN),
        .M01_AXI_awlock(axi_noc_h2c_M01_AXI_AWLOCK),
        .M01_AXI_awprot(axi_noc_h2c_M01_AXI_AWPROT),
        .M01_AXI_awqos(axi_noc_h2c_M01_AXI_AWQOS),
        .M01_AXI_awready(axi_noc_h2c_M01_AXI_AWREADY),
        .M01_AXI_awsize(axi_noc_h2c_M01_AXI_AWSIZE),
        .M01_AXI_awuser(axi_noc_h2c_M01_AXI_AWUSER),
        .M01_AXI_awvalid(axi_noc_h2c_M01_AXI_AWVALID),
        .M01_AXI_bid(axi_noc_h2c_M01_AXI_BID),
        .M01_AXI_bready(axi_noc_h2c_M01_AXI_BREADY),
        .M01_AXI_bresp(axi_noc_h2c_M01_AXI_BRESP),
        .M01_AXI_bvalid(axi_noc_h2c_M01_AXI_BVALID),
        .M01_AXI_rdata(axi_noc_h2c_M01_AXI_RDATA),
        .M01_AXI_rid(axi_noc_h2c_M01_AXI_RID),
        .M01_AXI_rlast(axi_noc_h2c_M01_AXI_RLAST),
        .M01_AXI_rready(axi_noc_h2c_M01_AXI_RREADY),
        .M01_AXI_rresp(axi_noc_h2c_M01_AXI_RRESP),
        .M01_AXI_rvalid(axi_noc_h2c_M01_AXI_RVALID),
        .M01_AXI_wdata(axi_noc_h2c_M01_AXI_WDATA),
        .M01_AXI_wlast(axi_noc_h2c_M01_AXI_WLAST),
        .M01_AXI_wready(axi_noc_h2c_M01_AXI_WREADY),
        .M01_AXI_wstrb(axi_noc_h2c_M01_AXI_WSTRB),
        .M01_AXI_wvalid(axi_noc_h2c_M01_AXI_WVALID),
        .S00_INI_internoc(axi_noc_h2c_S00_INI_INTERNOC),
        .S01_INI_internoc(axi_noc_h2c_S01_INI_INTERNOC),
        .aclk0(blp_s_aclk_pcie_00_1));
  (* DPA_TRACE_SLAVE = "true" *) 
  ulp_inst_0_axi_noc_kernel0_0 axi_noc_kernel0
       (.M00_INI_internoc(M00_INI_0_INTERNOC),
        .M01_INI_internoc(M01_INI_0_INTERNOC),
        .M02_INI_internoc(M02_INI_0_INTERNOC),
        .S00_AXI_araddr(setup_aie_0_m_axi_gmem0_ARADDR),
        .S00_AXI_arburst(setup_aie_0_m_axi_gmem0_ARBURST),
        .S00_AXI_arcache(setup_aie_0_m_axi_gmem0_ARCACHE),
        .S00_AXI_arid(setup_aie_0_m_axi_gmem0_ARID),
        .S00_AXI_arlen(setup_aie_0_m_axi_gmem0_ARLEN),
        .S00_AXI_arlock(setup_aie_0_m_axi_gmem0_ARLOCK[0]),
        .S00_AXI_arprot(setup_aie_0_m_axi_gmem0_ARPROT),
        .S00_AXI_arqos(setup_aie_0_m_axi_gmem0_ARQOS),
        .S00_AXI_arready(setup_aie_0_m_axi_gmem0_ARREADY),
        .S00_AXI_arregion(setup_aie_0_m_axi_gmem0_ARREGION),
        .S00_AXI_arsize(setup_aie_0_m_axi_gmem0_ARSIZE),
        .S00_AXI_arvalid(setup_aie_0_m_axi_gmem0_ARVALID),
        .S00_AXI_awaddr(setup_aie_0_m_axi_gmem0_AWADDR),
        .S00_AXI_awburst(setup_aie_0_m_axi_gmem0_AWBURST),
        .S00_AXI_awcache(setup_aie_0_m_axi_gmem0_AWCACHE),
        .S00_AXI_awid(setup_aie_0_m_axi_gmem0_AWID),
        .S00_AXI_awlen(setup_aie_0_m_axi_gmem0_AWLEN),
        .S00_AXI_awlock(setup_aie_0_m_axi_gmem0_AWLOCK[0]),
        .S00_AXI_awprot(setup_aie_0_m_axi_gmem0_AWPROT),
        .S00_AXI_awqos(setup_aie_0_m_axi_gmem0_AWQOS),
        .S00_AXI_awready(setup_aie_0_m_axi_gmem0_AWREADY),
        .S00_AXI_awregion(setup_aie_0_m_axi_gmem0_AWREGION),
        .S00_AXI_awsize(setup_aie_0_m_axi_gmem0_AWSIZE),
        .S00_AXI_awvalid(setup_aie_0_m_axi_gmem0_AWVALID),
        .S00_AXI_bid(setup_aie_0_m_axi_gmem0_BID),
        .S00_AXI_bready(setup_aie_0_m_axi_gmem0_BREADY),
        .S00_AXI_bresp(setup_aie_0_m_axi_gmem0_BRESP),
        .S00_AXI_bvalid(setup_aie_0_m_axi_gmem0_BVALID),
        .S00_AXI_rdata(setup_aie_0_m_axi_gmem0_RDATA),
        .S00_AXI_rid(setup_aie_0_m_axi_gmem0_RID),
        .S00_AXI_rlast(setup_aie_0_m_axi_gmem0_RLAST),
        .S00_AXI_rready(setup_aie_0_m_axi_gmem0_RREADY),
        .S00_AXI_rresp(setup_aie_0_m_axi_gmem0_RRESP),
        .S00_AXI_rvalid(setup_aie_0_m_axi_gmem0_RVALID),
        .S00_AXI_wdata(setup_aie_0_m_axi_gmem0_WDATA),
        .S00_AXI_wlast(setup_aie_0_m_axi_gmem0_WLAST),
        .S00_AXI_wready(setup_aie_0_m_axi_gmem0_WREADY),
        .S00_AXI_wstrb(setup_aie_0_m_axi_gmem0_WSTRB),
        .S00_AXI_wvalid(setup_aie_0_m_axi_gmem0_WVALID),
        .S01_AXI_araddr(sink_from_aie_0_m_axi_gmem1_ARADDR),
        .S01_AXI_arburst(sink_from_aie_0_m_axi_gmem1_ARBURST),
        .S01_AXI_arcache(sink_from_aie_0_m_axi_gmem1_ARCACHE),
        .S01_AXI_arid(sink_from_aie_0_m_axi_gmem1_ARID),
        .S01_AXI_arlen(sink_from_aie_0_m_axi_gmem1_ARLEN),
        .S01_AXI_arlock(sink_from_aie_0_m_axi_gmem1_ARLOCK[0]),
        .S01_AXI_arprot(sink_from_aie_0_m_axi_gmem1_ARPROT),
        .S01_AXI_arqos(sink_from_aie_0_m_axi_gmem1_ARQOS),
        .S01_AXI_arready(sink_from_aie_0_m_axi_gmem1_ARREADY),
        .S01_AXI_arregion(sink_from_aie_0_m_axi_gmem1_ARREGION),
        .S01_AXI_arsize(sink_from_aie_0_m_axi_gmem1_ARSIZE),
        .S01_AXI_arvalid(sink_from_aie_0_m_axi_gmem1_ARVALID),
        .S01_AXI_awaddr(sink_from_aie_0_m_axi_gmem1_AWADDR),
        .S01_AXI_awburst(sink_from_aie_0_m_axi_gmem1_AWBURST),
        .S01_AXI_awcache(sink_from_aie_0_m_axi_gmem1_AWCACHE),
        .S01_AXI_awid(sink_from_aie_0_m_axi_gmem1_AWID),
        .S01_AXI_awlen(sink_from_aie_0_m_axi_gmem1_AWLEN),
        .S01_AXI_awlock(sink_from_aie_0_m_axi_gmem1_AWLOCK[0]),
        .S01_AXI_awprot(sink_from_aie_0_m_axi_gmem1_AWPROT),
        .S01_AXI_awqos(sink_from_aie_0_m_axi_gmem1_AWQOS),
        .S01_AXI_awready(sink_from_aie_0_m_axi_gmem1_AWREADY),
        .S01_AXI_awregion(sink_from_aie_0_m_axi_gmem1_AWREGION),
        .S01_AXI_awsize(sink_from_aie_0_m_axi_gmem1_AWSIZE),
        .S01_AXI_awvalid(sink_from_aie_0_m_axi_gmem1_AWVALID),
        .S01_AXI_bid(sink_from_aie_0_m_axi_gmem1_BID),
        .S01_AXI_bready(sink_from_aie_0_m_axi_gmem1_BREADY),
        .S01_AXI_bresp(sink_from_aie_0_m_axi_gmem1_BRESP),
        .S01_AXI_bvalid(sink_from_aie_0_m_axi_gmem1_BVALID),
        .S01_AXI_rdata(sink_from_aie_0_m_axi_gmem1_RDATA),
        .S01_AXI_rid(sink_from_aie_0_m_axi_gmem1_RID),
        .S01_AXI_rlast(sink_from_aie_0_m_axi_gmem1_RLAST),
        .S01_AXI_rready(sink_from_aie_0_m_axi_gmem1_RREADY),
        .S01_AXI_rresp(sink_from_aie_0_m_axi_gmem1_RRESP),
        .S01_AXI_rvalid(sink_from_aie_0_m_axi_gmem1_RVALID),
        .S01_AXI_wdata(sink_from_aie_0_m_axi_gmem1_WDATA),
        .S01_AXI_wlast(sink_from_aie_0_m_axi_gmem1_WLAST),
        .S01_AXI_wready(sink_from_aie_0_m_axi_gmem1_WREADY),
        .S01_AXI_wstrb(sink_from_aie_0_m_axi_gmem1_WSTRB),
        .S01_AXI_wvalid(sink_from_aie_0_m_axi_gmem1_WVALID),
        .aclk0(blp_s_aclk_kernel_00_1));
  ulp_inst_0_axi_sc_plram_0 axi_sc_plram
       (.M00_AXI_araddr(axi_sc_plram_M00_AXI_ARADDR),
        .M00_AXI_arburst(axi_sc_plram_M00_AXI_ARBURST),
        .M00_AXI_arcache(axi_sc_plram_M00_AXI_ARCACHE),
        .M00_AXI_arlen(axi_sc_plram_M00_AXI_ARLEN),
        .M00_AXI_arlock(axi_sc_plram_M00_AXI_ARLOCK),
        .M00_AXI_arprot(axi_sc_plram_M00_AXI_ARPROT),
        .M00_AXI_arready(axi_sc_plram_M00_AXI_ARREADY),
        .M00_AXI_arsize(axi_sc_plram_M00_AXI_ARSIZE),
        .M00_AXI_arvalid(axi_sc_plram_M00_AXI_ARVALID),
        .M00_AXI_awaddr(axi_sc_plram_M00_AXI_AWADDR),
        .M00_AXI_awburst(axi_sc_plram_M00_AXI_AWBURST),
        .M00_AXI_awcache(axi_sc_plram_M00_AXI_AWCACHE),
        .M00_AXI_awlen(axi_sc_plram_M00_AXI_AWLEN),
        .M00_AXI_awlock(axi_sc_plram_M00_AXI_AWLOCK),
        .M00_AXI_awprot(axi_sc_plram_M00_AXI_AWPROT),
        .M00_AXI_awready(axi_sc_plram_M00_AXI_AWREADY),
        .M00_AXI_awsize(axi_sc_plram_M00_AXI_AWSIZE),
        .M00_AXI_awvalid(axi_sc_plram_M00_AXI_AWVALID),
        .M00_AXI_bready(axi_sc_plram_M00_AXI_BREADY),
        .M00_AXI_bresp(axi_sc_plram_M00_AXI_BRESP),
        .M00_AXI_bvalid(axi_sc_plram_M00_AXI_BVALID),
        .M00_AXI_rdata(axi_sc_plram_M00_AXI_RDATA),
        .M00_AXI_rlast(axi_sc_plram_M00_AXI_RLAST),
        .M00_AXI_rready(axi_sc_plram_M00_AXI_RREADY),
        .M00_AXI_rresp(axi_sc_plram_M00_AXI_RRESP),
        .M00_AXI_rvalid(axi_sc_plram_M00_AXI_RVALID),
        .M00_AXI_wdata(axi_sc_plram_M00_AXI_WDATA),
        .M00_AXI_wlast(axi_sc_plram_M00_AXI_WLAST),
        .M00_AXI_wready(axi_sc_plram_M00_AXI_WREADY),
        .M00_AXI_wstrb(axi_sc_plram_M00_AXI_WSTRB),
        .M00_AXI_wvalid(axi_sc_plram_M00_AXI_WVALID),
        .S00_AXI_araddr(axi_noc_h2c_M01_AXI_ARADDR),
        .S00_AXI_arburst(axi_noc_h2c_M01_AXI_ARBURST),
        .S00_AXI_arcache(axi_noc_h2c_M01_AXI_ARCACHE),
        .S00_AXI_arid(axi_noc_h2c_M01_AXI_ARID),
        .S00_AXI_arlen(axi_noc_h2c_M01_AXI_ARLEN),
        .S00_AXI_arlock(axi_noc_h2c_M01_AXI_ARLOCK),
        .S00_AXI_arprot(axi_noc_h2c_M01_AXI_ARPROT),
        .S00_AXI_arqos(axi_noc_h2c_M01_AXI_ARQOS),
        .S00_AXI_arready(axi_noc_h2c_M01_AXI_ARREADY),
        .S00_AXI_arsize(axi_noc_h2c_M01_AXI_ARSIZE),
        .S00_AXI_aruser(axi_noc_h2c_M01_AXI_ARUSER),
        .S00_AXI_arvalid(axi_noc_h2c_M01_AXI_ARVALID),
        .S00_AXI_awaddr(axi_noc_h2c_M01_AXI_AWADDR),
        .S00_AXI_awburst(axi_noc_h2c_M01_AXI_AWBURST),
        .S00_AXI_awcache(axi_noc_h2c_M01_AXI_AWCACHE),
        .S00_AXI_awid(axi_noc_h2c_M01_AXI_AWID),
        .S00_AXI_awlen(axi_noc_h2c_M01_AXI_AWLEN),
        .S00_AXI_awlock(axi_noc_h2c_M01_AXI_AWLOCK),
        .S00_AXI_awprot(axi_noc_h2c_M01_AXI_AWPROT),
        .S00_AXI_awqos(axi_noc_h2c_M01_AXI_AWQOS),
        .S00_AXI_awready(axi_noc_h2c_M01_AXI_AWREADY),
        .S00_AXI_awsize(axi_noc_h2c_M01_AXI_AWSIZE),
        .S00_AXI_awuser(axi_noc_h2c_M01_AXI_AWUSER),
        .S00_AXI_awvalid(axi_noc_h2c_M01_AXI_AWVALID),
        .S00_AXI_bid(axi_noc_h2c_M01_AXI_BID),
        .S00_AXI_bready(axi_noc_h2c_M01_AXI_BREADY),
        .S00_AXI_bresp(axi_noc_h2c_M01_AXI_BRESP),
        .S00_AXI_bvalid(axi_noc_h2c_M01_AXI_BVALID),
        .S00_AXI_rdata(axi_noc_h2c_M01_AXI_RDATA),
        .S00_AXI_rid(axi_noc_h2c_M01_AXI_RID),
        .S00_AXI_rlast(axi_noc_h2c_M01_AXI_RLAST),
        .S00_AXI_rready(axi_noc_h2c_M01_AXI_RREADY),
        .S00_AXI_rresp(axi_noc_h2c_M01_AXI_RRESP),
        .S00_AXI_rvalid(axi_noc_h2c_M01_AXI_RVALID),
        .S00_AXI_wdata(axi_noc_h2c_M01_AXI_WDATA),
        .S00_AXI_wlast(axi_noc_h2c_M01_AXI_WLAST),
        .S00_AXI_wready(axi_noc_h2c_M01_AXI_WREADY),
        .S00_AXI_wstrb(axi_noc_h2c_M01_AXI_WSTRB),
        .S00_AXI_wvalid(axi_noc_h2c_M01_AXI_WVALID),
        .aclk(blp_s_aclk_pcie_00_1),
        .aclk1(blp_s_aclk_kernel_00_1),
        .aresetn(reset_controllers_resetn_kernel0_ic));
  ulp_inst_0_const_1_0 const_1
       (.dout(const_1_dout));
  ulp_inst_0_dwc_setup_aie_0_s_0 dwc_setup_aie_0_s
       (.aclk(blp_s_aclk_kernel_00_1),
        .aresetn(reset_controllers_interconnect_aresetn),
        .m_axis_tdata(dwc_setup_aie_0_s_M_AXIS_TDATA),
        .m_axis_tready(dwc_setup_aie_0_s_M_AXIS_TREADY),
        .m_axis_tvalid(dwc_setup_aie_0_s_M_AXIS_TVALID),
        .s_axis_tdata(setup_aie_0_s_TDATA),
        .s_axis_tready(setup_aie_0_s_TREADY),
        .s_axis_tvalid(setup_aie_0_s_TVALID));
  ulp_inst_0_gate_dbgfw_or_0 gate_dbgfw_or
       (.Op1(axi_dbg_fw_mi_w_error),
        .Op2(axi_dbg_fw_mi_r_error),
        .Res(gate_dbgfw_or_Res));
  ulp_inst_0_ip_gnd_ext_tog_kernel_00_null_0 ip_gnd_ext_tog_kernel_00_null
       (.dout(blp_m_ext_tog_ctrl_kernel_00_enable_net));
  ulp_inst_0_ip_gnd_ext_tog_kernel_01_null_0 ip_gnd_ext_tog_kernel_01_null
       (.dout(blp_m_ext_tog_ctrl_kernel_01_enable_net));
  ulp_inst_0_ip_pipe_dbg_hub_fw_00_0 ip_pipe_dbg_hub_fw_00
       (.D(gate_dbgfw_or_Res),
        .Q(\^ip_pipe_dbg_hub_fw_00 ),
        .clk(blp_s_aclk_pcie_00_1),
        .clk_enable(1'b1),
        .reset(1'b0));
  ulp_inst_0_ip_pipe_ext_tog_kernel_00_null_0 ip_pipe_ext_tog_kernel_00_null
       (.D(blp_s_ext_tog_ctrl_kernel_00_out_net),
        .Q(ip_pipe_ext_tog_kernel_00_null_q),
        .clk(blp_s_aclk_ext_tog_kernel_00_net),
        .clk_enable(1'b1),
        .reset(1'b0));
  ulp_inst_0_ip_pipe_ext_tog_kernel_01_null_0 ip_pipe_ext_tog_kernel_01_null
       (.D(blp_s_ext_tog_ctrl_kernel_01_out_net),
        .Q(ip_pipe_ext_tog_kernel_01_null_q),
        .clk(blp_s_aclk_ext_tog_kernel_01_net),
        .clk_enable(1'b1),
        .reset(1'b0));
  ulp_inst_0_irq_const_tieoff_0 irq_const_tieoff
       (.dout(irq_const_tieoff_dout));
  kernel_interrupt_imp_1VOEG4V kernel_interrupt
       (.In0(kernel_interrupt_xlconcat_0_In0_1_interrupt_concat_dout),
        .xlconcat_interrupt_dout(kernel_interrupt_xlconcat_interrupt_dout));
  ulp_inst_0_kernel_interrupt_xlconcat_0_In0_1_interrupt_concat_0 kernel_interrupt_xlconcat_0_In0_1_interrupt_concat
       (.In0(sink_from_aie_0_interrupt),
        .In1(setup_aie_0_interrupt),
        .In10(irq_const_tieoff_dout),
        .In11(irq_const_tieoff_dout),
        .In12(irq_const_tieoff_dout),
        .In13(irq_const_tieoff_dout),
        .In14(irq_const_tieoff_dout),
        .In15(irq_const_tieoff_dout),
        .In16(irq_const_tieoff_dout),
        .In17(irq_const_tieoff_dout),
        .In18(irq_const_tieoff_dout),
        .In19(irq_const_tieoff_dout),
        .In2(irq_const_tieoff_dout),
        .In20(irq_const_tieoff_dout),
        .In21(irq_const_tieoff_dout),
        .In22(irq_const_tieoff_dout),
        .In23(irq_const_tieoff_dout),
        .In24(irq_const_tieoff_dout),
        .In25(irq_const_tieoff_dout),
        .In26(irq_const_tieoff_dout),
        .In27(irq_const_tieoff_dout),
        .In28(irq_const_tieoff_dout),
        .In29(irq_const_tieoff_dout),
        .In3(irq_const_tieoff_dout),
        .In30(irq_const_tieoff_dout),
        .In31(irq_const_tieoff_dout),
        .In4(irq_const_tieoff_dout),
        .In5(irq_const_tieoff_dout),
        .In6(irq_const_tieoff_dout),
        .In7(irq_const_tieoff_dout),
        .In8(irq_const_tieoff_dout),
        .In9(irq_const_tieoff_dout),
        .dout(kernel_interrupt_xlconcat_0_In0_1_interrupt_concat_dout));
  ulp_inst_0_plram_ctrl_0 plram_ctrl
       (.bram_addr_a(plram_ctrl_BRAM_PORTA_ADDR),
        .bram_clk_a(plram_ctrl_BRAM_PORTA_CLK),
        .bram_en_a(plram_ctrl_BRAM_PORTA_EN),
        .bram_rddata_a(plram_ctrl_BRAM_PORTA_DOUT),
        .bram_rst_a(plram_ctrl_BRAM_PORTA_RST),
        .bram_we_a(plram_ctrl_BRAM_PORTA_WE),
        .bram_wrdata_a(plram_ctrl_BRAM_PORTA_DIN),
        .s_axi_aclk(blp_s_aclk_kernel_00_1),
        .s_axi_araddr(axi_sc_plram_M00_AXI_ARADDR),
        .s_axi_arburst(axi_sc_plram_M00_AXI_ARBURST),
        .s_axi_arcache(axi_sc_plram_M00_AXI_ARCACHE),
        .s_axi_aresetn(reset_controllers_resetn_kernel0_ic),
        .s_axi_arlen(axi_sc_plram_M00_AXI_ARLEN),
        .s_axi_arlock(axi_sc_plram_M00_AXI_ARLOCK),
        .s_axi_arprot(axi_sc_plram_M00_AXI_ARPROT),
        .s_axi_arready(axi_sc_plram_M00_AXI_ARREADY),
        .s_axi_arsize(axi_sc_plram_M00_AXI_ARSIZE),
        .s_axi_arvalid(axi_sc_plram_M00_AXI_ARVALID),
        .s_axi_awaddr(axi_sc_plram_M00_AXI_AWADDR),
        .s_axi_awburst(axi_sc_plram_M00_AXI_AWBURST),
        .s_axi_awcache(axi_sc_plram_M00_AXI_AWCACHE),
        .s_axi_awlen(axi_sc_plram_M00_AXI_AWLEN),
        .s_axi_awlock(axi_sc_plram_M00_AXI_AWLOCK),
        .s_axi_awprot(axi_sc_plram_M00_AXI_AWPROT),
        .s_axi_awready(axi_sc_plram_M00_AXI_AWREADY),
        .s_axi_awsize(axi_sc_plram_M00_AXI_AWSIZE),
        .s_axi_awvalid(axi_sc_plram_M00_AXI_AWVALID),
        .s_axi_bready(axi_sc_plram_M00_AXI_BREADY),
        .s_axi_bresp(axi_sc_plram_M00_AXI_BRESP),
        .s_axi_bvalid(axi_sc_plram_M00_AXI_BVALID),
        .s_axi_rdata(axi_sc_plram_M00_AXI_RDATA),
        .s_axi_rlast(axi_sc_plram_M00_AXI_RLAST),
        .s_axi_rready(axi_sc_plram_M00_AXI_RREADY),
        .s_axi_rresp(axi_sc_plram_M00_AXI_RRESP),
        .s_axi_rvalid(axi_sc_plram_M00_AXI_RVALID),
        .s_axi_wdata(axi_sc_plram_M00_AXI_WDATA),
        .s_axi_wlast(axi_sc_plram_M00_AXI_WLAST),
        .s_axi_wready(axi_sc_plram_M00_AXI_WREADY),
        .s_axi_wstrb(axi_sc_plram_M00_AXI_WSTRB),
        .s_axi_wvalid(axi_sc_plram_M00_AXI_WVALID));
  ulp_inst_0_plram_ctrl_bram_0 plram_ctrl_bram
       (.addra(plram_ctrl_BRAM_PORTA_ADDR),
        .clka(plram_ctrl_BRAM_PORTA_CLK),
        .dina(plram_ctrl_BRAM_PORTA_DIN),
        .douta(plram_ctrl_BRAM_PORTA_DOUT),
        .ena(plram_ctrl_BRAM_PORTA_EN),
        .regcea(1'b0),
        .rsta(plram_ctrl_BRAM_PORTA_RST),
        .wea(plram_ctrl_BRAM_PORTA_WE));
  reset_controllers_imp_1KQP16U reset_controllers
       (.clk_kernel0(blp_s_aclk_kernel_00_1),
        .clk_kernel1(blp_s_aclk_kernel_01_1),
        .clk_pcie(blp_s_aclk_pcie_00_1),
        .clk_pl_axi(blp_s_aclk_ctrl_00_1),
        .interconnect_aresetn(reset_controllers_interconnect_aresetn),
        .peripheral_aresetn(reset_controllers_peripheral_aresetn),
        .resetn_kernel0_ic(reset_controllers_resetn_kernel0_ic),
        .resetn_pcie(blp_s_aresetn_pcie_reset_00_1),
        .resetn_pcie_axi(resetn_pcie_axi_net),
        .resetn_pl_axi(resetn_pl_axi_net),
        .resetn_ulp(blp_s_aresetn_pr_reset_00_1));
  ulp_inst_0_setup_aie_0_0 setup_aie_0
       (.ap_clk(blp_s_aclk_kernel_00_1),
        .ap_rst_n(reset_controllers_peripheral_aresetn),
        .interrupt(setup_aie_0_interrupt),
        .m_axi_gmem0_ARADDR(setup_aie_0_m_axi_gmem0_ARADDR),
        .m_axi_gmem0_ARBURST(setup_aie_0_m_axi_gmem0_ARBURST),
        .m_axi_gmem0_ARCACHE(setup_aie_0_m_axi_gmem0_ARCACHE),
        .m_axi_gmem0_ARID(setup_aie_0_m_axi_gmem0_ARID),
        .m_axi_gmem0_ARLEN(setup_aie_0_m_axi_gmem0_ARLEN),
        .m_axi_gmem0_ARLOCK(setup_aie_0_m_axi_gmem0_ARLOCK),
        .m_axi_gmem0_ARPROT(setup_aie_0_m_axi_gmem0_ARPROT),
        .m_axi_gmem0_ARQOS(setup_aie_0_m_axi_gmem0_ARQOS),
        .m_axi_gmem0_ARREADY(setup_aie_0_m_axi_gmem0_ARREADY),
        .m_axi_gmem0_ARREGION(setup_aie_0_m_axi_gmem0_ARREGION),
        .m_axi_gmem0_ARSIZE(setup_aie_0_m_axi_gmem0_ARSIZE),
        .m_axi_gmem0_ARVALID(setup_aie_0_m_axi_gmem0_ARVALID),
        .m_axi_gmem0_AWADDR(setup_aie_0_m_axi_gmem0_AWADDR),
        .m_axi_gmem0_AWBURST(setup_aie_0_m_axi_gmem0_AWBURST),
        .m_axi_gmem0_AWCACHE(setup_aie_0_m_axi_gmem0_AWCACHE),
        .m_axi_gmem0_AWID(setup_aie_0_m_axi_gmem0_AWID),
        .m_axi_gmem0_AWLEN(setup_aie_0_m_axi_gmem0_AWLEN),
        .m_axi_gmem0_AWLOCK(setup_aie_0_m_axi_gmem0_AWLOCK),
        .m_axi_gmem0_AWPROT(setup_aie_0_m_axi_gmem0_AWPROT),
        .m_axi_gmem0_AWQOS(setup_aie_0_m_axi_gmem0_AWQOS),
        .m_axi_gmem0_AWREADY(setup_aie_0_m_axi_gmem0_AWREADY),
        .m_axi_gmem0_AWREGION(setup_aie_0_m_axi_gmem0_AWREGION),
        .m_axi_gmem0_AWSIZE(setup_aie_0_m_axi_gmem0_AWSIZE),
        .m_axi_gmem0_AWVALID(setup_aie_0_m_axi_gmem0_AWVALID),
        .m_axi_gmem0_BID(setup_aie_0_m_axi_gmem0_BID),
        .m_axi_gmem0_BREADY(setup_aie_0_m_axi_gmem0_BREADY),
        .m_axi_gmem0_BRESP(setup_aie_0_m_axi_gmem0_BRESP),
        .m_axi_gmem0_BVALID(setup_aie_0_m_axi_gmem0_BVALID),
        .m_axi_gmem0_RDATA(setup_aie_0_m_axi_gmem0_RDATA),
        .m_axi_gmem0_RID(setup_aie_0_m_axi_gmem0_RID),
        .m_axi_gmem0_RLAST(setup_aie_0_m_axi_gmem0_RLAST),
        .m_axi_gmem0_RREADY(setup_aie_0_m_axi_gmem0_RREADY),
        .m_axi_gmem0_RRESP(setup_aie_0_m_axi_gmem0_RRESP),
        .m_axi_gmem0_RVALID(setup_aie_0_m_axi_gmem0_RVALID),
        .m_axi_gmem0_WDATA(setup_aie_0_m_axi_gmem0_WDATA),
        .m_axi_gmem0_WLAST(setup_aie_0_m_axi_gmem0_WLAST),
        .m_axi_gmem0_WREADY(setup_aie_0_m_axi_gmem0_WREADY),
        .m_axi_gmem0_WSTRB(setup_aie_0_m_axi_gmem0_WSTRB),
        .m_axi_gmem0_WVALID(setup_aie_0_m_axi_gmem0_WVALID),
        .s_TDATA(setup_aie_0_s_TDATA),
        .s_TREADY(setup_aie_0_s_TREADY),
        .s_TVALID(setup_aie_0_s_TVALID),
        .s_axi_control_ARADDR(axi_ic_user_M01_AXI_ARADDR),
        .s_axi_control_ARREADY(axi_ic_user_M01_AXI_ARREADY),
        .s_axi_control_ARVALID(axi_ic_user_M01_AXI_ARVALID),
        .s_axi_control_AWADDR(axi_ic_user_M01_AXI_AWADDR),
        .s_axi_control_AWREADY(axi_ic_user_M01_AXI_AWREADY),
        .s_axi_control_AWVALID(axi_ic_user_M01_AXI_AWVALID),
        .s_axi_control_BREADY(axi_ic_user_M01_AXI_BREADY),
        .s_axi_control_BRESP(axi_ic_user_M01_AXI_BRESP),
        .s_axi_control_BVALID(axi_ic_user_M01_AXI_BVALID),
        .s_axi_control_RDATA(axi_ic_user_M01_AXI_RDATA),
        .s_axi_control_RREADY(axi_ic_user_M01_AXI_RREADY),
        .s_axi_control_RRESP(axi_ic_user_M01_AXI_RRESP),
        .s_axi_control_RVALID(axi_ic_user_M01_AXI_RVALID),
        .s_axi_control_WDATA(axi_ic_user_M01_AXI_WDATA),
        .s_axi_control_WREADY(axi_ic_user_M01_AXI_WREADY),
        .s_axi_control_WSTRB(axi_ic_user_M01_AXI_WSTRB),
        .s_axi_control_WVALID(axi_ic_user_M01_AXI_WVALID));
  ulp_inst_0_sink_from_aie_0_0 sink_from_aie_0
       (.ap_clk(blp_s_aclk_kernel_00_1),
        .ap_rst_n(reset_controllers_peripheral_aresetn),
        .input_stream_TDATA(ai_engine_0_M00_AXIS_TDATA),
        .input_stream_TREADY(ai_engine_0_M00_AXIS_TREADY),
        .input_stream_TVALID(ai_engine_0_M00_AXIS_TVALID),
        .interrupt(sink_from_aie_0_interrupt),
        .m_axi_gmem1_ARADDR(sink_from_aie_0_m_axi_gmem1_ARADDR),
        .m_axi_gmem1_ARBURST(sink_from_aie_0_m_axi_gmem1_ARBURST),
        .m_axi_gmem1_ARCACHE(sink_from_aie_0_m_axi_gmem1_ARCACHE),
        .m_axi_gmem1_ARID(sink_from_aie_0_m_axi_gmem1_ARID),
        .m_axi_gmem1_ARLEN(sink_from_aie_0_m_axi_gmem1_ARLEN),
        .m_axi_gmem1_ARLOCK(sink_from_aie_0_m_axi_gmem1_ARLOCK),
        .m_axi_gmem1_ARPROT(sink_from_aie_0_m_axi_gmem1_ARPROT),
        .m_axi_gmem1_ARQOS(sink_from_aie_0_m_axi_gmem1_ARQOS),
        .m_axi_gmem1_ARREADY(sink_from_aie_0_m_axi_gmem1_ARREADY),
        .m_axi_gmem1_ARREGION(sink_from_aie_0_m_axi_gmem1_ARREGION),
        .m_axi_gmem1_ARSIZE(sink_from_aie_0_m_axi_gmem1_ARSIZE),
        .m_axi_gmem1_ARVALID(sink_from_aie_0_m_axi_gmem1_ARVALID),
        .m_axi_gmem1_AWADDR(sink_from_aie_0_m_axi_gmem1_AWADDR),
        .m_axi_gmem1_AWBURST(sink_from_aie_0_m_axi_gmem1_AWBURST),
        .m_axi_gmem1_AWCACHE(sink_from_aie_0_m_axi_gmem1_AWCACHE),
        .m_axi_gmem1_AWID(sink_from_aie_0_m_axi_gmem1_AWID),
        .m_axi_gmem1_AWLEN(sink_from_aie_0_m_axi_gmem1_AWLEN),
        .m_axi_gmem1_AWLOCK(sink_from_aie_0_m_axi_gmem1_AWLOCK),
        .m_axi_gmem1_AWPROT(sink_from_aie_0_m_axi_gmem1_AWPROT),
        .m_axi_gmem1_AWQOS(sink_from_aie_0_m_axi_gmem1_AWQOS),
        .m_axi_gmem1_AWREADY(sink_from_aie_0_m_axi_gmem1_AWREADY),
        .m_axi_gmem1_AWREGION(sink_from_aie_0_m_axi_gmem1_AWREGION),
        .m_axi_gmem1_AWSIZE(sink_from_aie_0_m_axi_gmem1_AWSIZE),
        .m_axi_gmem1_AWVALID(sink_from_aie_0_m_axi_gmem1_AWVALID),
        .m_axi_gmem1_BID(sink_from_aie_0_m_axi_gmem1_BID),
        .m_axi_gmem1_BREADY(sink_from_aie_0_m_axi_gmem1_BREADY),
        .m_axi_gmem1_BRESP(sink_from_aie_0_m_axi_gmem1_BRESP),
        .m_axi_gmem1_BVALID(sink_from_aie_0_m_axi_gmem1_BVALID),
        .m_axi_gmem1_RDATA(sink_from_aie_0_m_axi_gmem1_RDATA),
        .m_axi_gmem1_RID(sink_from_aie_0_m_axi_gmem1_RID),
        .m_axi_gmem1_RLAST(sink_from_aie_0_m_axi_gmem1_RLAST),
        .m_axi_gmem1_RREADY(sink_from_aie_0_m_axi_gmem1_RREADY),
        .m_axi_gmem1_RRESP(sink_from_aie_0_m_axi_gmem1_RRESP),
        .m_axi_gmem1_RVALID(sink_from_aie_0_m_axi_gmem1_RVALID),
        .m_axi_gmem1_WDATA(sink_from_aie_0_m_axi_gmem1_WDATA),
        .m_axi_gmem1_WLAST(sink_from_aie_0_m_axi_gmem1_WLAST),
        .m_axi_gmem1_WREADY(sink_from_aie_0_m_axi_gmem1_WREADY),
        .m_axi_gmem1_WSTRB(sink_from_aie_0_m_axi_gmem1_WSTRB),
        .m_axi_gmem1_WVALID(sink_from_aie_0_m_axi_gmem1_WVALID),
        .s_axi_control_ARADDR(axi_ic_user_M02_AXI_ARADDR),
        .s_axi_control_ARREADY(axi_ic_user_M02_AXI_ARREADY),
        .s_axi_control_ARVALID(axi_ic_user_M02_AXI_ARVALID),
        .s_axi_control_AWADDR(axi_ic_user_M02_AXI_AWADDR),
        .s_axi_control_AWREADY(axi_ic_user_M02_AXI_AWREADY),
        .s_axi_control_AWVALID(axi_ic_user_M02_AXI_AWVALID),
        .s_axi_control_BREADY(axi_ic_user_M02_AXI_BREADY),
        .s_axi_control_BRESP(axi_ic_user_M02_AXI_BRESP),
        .s_axi_control_BVALID(axi_ic_user_M02_AXI_BVALID),
        .s_axi_control_RDATA(axi_ic_user_M02_AXI_RDATA),
        .s_axi_control_RREADY(axi_ic_user_M02_AXI_RREADY),
        .s_axi_control_RRESP(axi_ic_user_M02_AXI_RRESP),
        .s_axi_control_RVALID(axi_ic_user_M02_AXI_RVALID),
        .s_axi_control_WDATA(axi_ic_user_M02_AXI_WDATA),
        .s_axi_control_WREADY(axi_ic_user_M02_AXI_WREADY),
        .s_axi_control_WSTRB(axi_ic_user_M02_AXI_WSTRB),
        .s_axi_control_WVALID(axi_ic_user_M02_AXI_WVALID));
endmodule
