//Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2022.2 (lin64) Build 3671981 Fri Oct 14 04:59:54 MDT 2022
//Date        : Mon Dec  5 00:14:27 2022
//Host        : xsjdcslab02.xilinx.com running 64-bit CentOS Linux release 8.1.1911 (Core)
//Command     : generate_target ulp_inst_0.bd
//Design      : ulp_inst_0
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module kernel_interrupt_imp_1VOEG4V
   (xlconcat_interrupt_dout);
  output [127:0]xlconcat_interrupt_dout;

  wire [127:0]xlconcat_0_dout;
  wire [95:0]xlconstant_0_dout;

  assign xlconcat_interrupt_dout[127:0] = xlconcat_0_dout;
  ulp_inst_0_xlconcat_0_0 xlconcat_0
       (.In0({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
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
  wire [0:0]reset_sync_kernel1_interconnect_aresetn;
  wire resetn_pcie_1;
  wire resetn_ulp_1;
  wire [0:0]rstn_const_dout;

  assign clk_kernel0_1 = clk_kernel0;
  assign clk_kernel1_1 = clk_kernel1;
  assign clk_pcie_1 = clk_pcie;
  assign clk_pl_axi_1 = clk_pl_axi;
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

(* CORE_GENERATION_INFO = "ulp_inst_0,IP_Integrator,{x_ipVendor=xilinx.com,x_ipLibrary=BlockDiagram,x_ipName=ulp_inst_0,x_ipVersion=1.00.a,x_ipLanguage=VERILOG,numBlks=31,numReposBlks=29,numNonXlnxBlks=0,numHierBlks=2,maxHierDepth=1,numSysgenBlks=0,numHlsBlks=0,numHdlrefBlks=0,numPkgbdBlks=0,bdsource=/proj/ipeng-nobkup/ccase/platforms/p4/Platforms_ccase_vck5000_dev0/Platforms/sources/vck5000/chassis/gen4x8_qdma/2/build_1205a_dbg_hub_fw_flop/hardware/xilinx_vck5000_gen4x8_qdma_base_2/xilinx_vck5000_gen4x8_qdma_base_2.srcs/sources_1/bd/ulp/ulp.bd,synth_mode=OOC_per_IP}" *) (* HW_HANDOFF = "ulp_inst_0.hwdef" *) 
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
  (* X_INTERFACE_INFO = "xilinx.com:signal:interrupt:1.0 INTR.BLP_M_IRQ_KERNEL_00 INTERRUPT" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME INTR.BLP_M_IRQ_KERNEL_00, PortWidth 128, SENSITIVITY LEVEL_HIGH" *) output [127:0]blp_m_irq_kernel_00;
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
  (* HARD_CONN = "true" *) wire ai_engine_0_s00_axi_aclk;
  wire axi_dbg_fw_mi_r_error;
  wire axi_dbg_fw_mi_w_error;
  wire [63:0]axi_ic_user_M00_AXI_ARADDR;
  wire [1:0]axi_ic_user_M00_AXI_ARBURST;
  wire [3:0]axi_ic_user_M00_AXI_ARCACHE;
  wire [2:0]axi_ic_user_M00_AXI_ARID;
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
  wire [2:0]axi_ic_user_M00_AXI_AWID;
  wire [7:0]axi_ic_user_M00_AXI_AWLEN;
  wire [0:0]axi_ic_user_M00_AXI_AWLOCK;
  wire [2:0]axi_ic_user_M00_AXI_AWPROT;
  wire [3:0]axi_ic_user_M00_AXI_AWQOS;
  wire axi_ic_user_M00_AXI_AWREADY;
  wire [2:0]axi_ic_user_M00_AXI_AWSIZE;
  wire [113:0]axi_ic_user_M00_AXI_AWUSER;
  wire axi_ic_user_M00_AXI_AWVALID;
  wire [2:0]axi_ic_user_M00_AXI_BID;
  wire axi_ic_user_M00_AXI_BREADY;
  wire [1:0]axi_ic_user_M00_AXI_BRESP;
  wire axi_ic_user_M00_AXI_BVALID;
  wire [31:0]axi_ic_user_M00_AXI_RDATA;
  wire [2:0]axi_ic_user_M00_AXI_RID;
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
  wire [0:0]gate_dbgfw_or_Res;
  wire [0:0]\^ip_pipe_dbg_hub_fw_00 ;
  wire [0:0]ip_pipe_ext_tog_kernel_00_null_q;
  wire [0:0]ip_pipe_ext_tog_kernel_01_null_q;
  wire [127:0]kernel_interrupt_xlconcat_interrupt_dout;
  wire [16:0]plram_ctrl_BRAM_PORTA_ADDR;
  wire plram_ctrl_BRAM_PORTA_CLK;
  wire [511:0]plram_ctrl_BRAM_PORTA_DIN;
  wire [511:0]plram_ctrl_BRAM_PORTA_DOUT;
  wire plram_ctrl_BRAM_PORTA_EN;
  wire plram_ctrl_BRAM_PORTA_RST;
  wire [63:0]plram_ctrl_BRAM_PORTA_WE;
  wire [0:0]reset_controllers_resetn_kernel0_ic;
  wire [0:0]resetn_pcie_axi_net;
  wire [0:0]resetn_pl_axi_net;

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
       (.S00_AXI_araddr(axi_noc_aie_prog_M00_AXI_ARADDR[33:0]),
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
        .M02_INI_internoc(M02_INI_0_INTERNOC));
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
  kernel_interrupt_imp_1VOEG4V kernel_interrupt
       (.xlconcat_interrupt_dout(kernel_interrupt_xlconcat_interrupt_dout));
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
        .resetn_kernel0_ic(reset_controllers_resetn_kernel0_ic),
        .resetn_pcie(blp_s_aresetn_pcie_reset_00_1),
        .resetn_pcie_axi(resetn_pcie_axi_net),
        .resetn_pl_axi(resetn_pl_axi_net),
        .resetn_ulp(blp_s_aresetn_pr_reset_00_1));
endmodule
