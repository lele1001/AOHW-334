// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2022.2 (lin64) Build 3671981 Fri Oct 14 04:59:54 MDT 2022
// Date        : Mon Dec  5 00:32:06 2022
// Host        : xsjdcslab02.xilinx.com running 64-bit CentOS Linux release 8.1.1911 (Core)
// Command     : write_verilog -force -mode funcsim
//               /proj/ipeng-nobkup/ccase/platforms/p4/Platforms_ccase_vck5000_dev0/Platforms/sources/vck5000/chassis/gen4x8_qdma/2/build_1205a_dbg_hub_fw_flop/hardware/xilinx_vck5000_gen4x8_qdma_base_2/xilinx_vck5000_gen4x8_qdma_base_2.gen/sources_1/bd/top/bd/ulp_inst_0/ulp_inst_0_sim_netlist.v
// Design      : ulp_inst_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xcvc1902-vsvd1760-2MP-e-S
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* HW_HANDOFF = "ulp_inst_0.hwdef" *) 
(* NotValidForBitStream *)
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

  wire \<const0> ;
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
  wire ai_engine_0_s00_axi_aclk;
  wire axi_dbg_fw_mi_r_error;
  wire axi_dbg_fw_mi_w_error;
  wire [63:0]axi_ic_user_M00_AXI_ARADDR;
  wire [1:0]axi_ic_user_M00_AXI_ARBURST;
  wire [3:0]axi_ic_user_M00_AXI_ARCACHE;
  wire [2:0]axi_ic_user_M00_AXI_ARID;
  wire [7:0]axi_ic_user_M00_AXI_ARLEN;
  wire axi_ic_user_M00_AXI_ARLOCK;
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
  wire axi_ic_user_M00_AXI_AWLOCK;
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
  wire [33:0]axi_noc_aie_prog_M00_AXI_ARADDR;
  wire [1:0]axi_noc_aie_prog_M00_AXI_ARBURST;
  wire [3:0]axi_noc_aie_prog_M00_AXI_ARCACHE;
  wire [1:0]axi_noc_aie_prog_M00_AXI_ARID;
  wire [7:0]axi_noc_aie_prog_M00_AXI_ARLEN;
  wire axi_noc_aie_prog_M00_AXI_ARLOCK;
  wire [2:0]axi_noc_aie_prog_M00_AXI_ARPROT;
  wire [3:0]axi_noc_aie_prog_M00_AXI_ARQOS;
  wire axi_noc_aie_prog_M00_AXI_ARREADY;
  wire [3:0]axi_noc_aie_prog_M00_AXI_ARREGION;
  wire [2:0]axi_noc_aie_prog_M00_AXI_ARSIZE;
  wire axi_noc_aie_prog_M00_AXI_ARVALID;
  wire [33:0]axi_noc_aie_prog_M00_AXI_AWADDR;
  wire [1:0]axi_noc_aie_prog_M00_AXI_AWBURST;
  wire [3:0]axi_noc_aie_prog_M00_AXI_AWCACHE;
  wire [1:0]axi_noc_aie_prog_M00_AXI_AWID;
  wire [7:0]axi_noc_aie_prog_M00_AXI_AWLEN;
  wire axi_noc_aie_prog_M00_AXI_AWLOCK;
  wire [2:0]axi_noc_aie_prog_M00_AXI_AWPROT;
  wire [3:0]axi_noc_aie_prog_M00_AXI_AWQOS;
  wire axi_noc_aie_prog_M00_AXI_AWREADY;
  wire [3:0]axi_noc_aie_prog_M00_AXI_AWREGION;
  wire [2:0]axi_noc_aie_prog_M00_AXI_AWSIZE;
  wire axi_noc_aie_prog_M00_AXI_AWVALID;
  wire [1:0]axi_noc_aie_prog_M00_AXI_BID;
  wire axi_noc_aie_prog_M00_AXI_BREADY;
  wire [1:0]axi_noc_aie_prog_M00_AXI_BRESP;
  wire axi_noc_aie_prog_M00_AXI_BVALID;
  wire [127:0]axi_noc_aie_prog_M00_AXI_RDATA;
  wire [1:0]axi_noc_aie_prog_M00_AXI_RID;
  wire axi_noc_aie_prog_M00_AXI_RLAST;
  wire axi_noc_aie_prog_M00_AXI_RREADY;
  wire [1:0]axi_noc_aie_prog_M00_AXI_RRESP;
  wire [16:0]axi_noc_aie_prog_M00_AXI_RUSER;
  wire axi_noc_aie_prog_M00_AXI_RVALID;
  wire [127:0]axi_noc_aie_prog_M00_AXI_WDATA;
  wire axi_noc_aie_prog_M00_AXI_WLAST;
  wire axi_noc_aie_prog_M00_AXI_WREADY;
  wire [15:0]axi_noc_aie_prog_M00_AXI_WSTRB;
  wire [16:0]axi_noc_aie_prog_M00_AXI_WUSER;
  wire axi_noc_aie_prog_M00_AXI_WVALID;
  wire [63:0]axi_noc_h2c_M00_AXI_ARADDR;
  wire [1:0]axi_noc_h2c_M00_AXI_ARBURST;
  wire [3:0]axi_noc_h2c_M00_AXI_ARCACHE;
  wire [1:0]axi_noc_h2c_M00_AXI_ARID;
  wire [7:0]axi_noc_h2c_M00_AXI_ARLEN;
  wire axi_noc_h2c_M00_AXI_ARLOCK;
  wire [2:0]axi_noc_h2c_M00_AXI_ARPROT;
  wire [3:0]axi_noc_h2c_M00_AXI_ARQOS;
  wire axi_noc_h2c_M00_AXI_ARREADY;
  wire [3:0]axi_noc_h2c_M00_AXI_ARREGION;
  wire [2:0]axi_noc_h2c_M00_AXI_ARSIZE;
  wire [17:0]axi_noc_h2c_M00_AXI_ARUSER;
  wire axi_noc_h2c_M00_AXI_ARVALID;
  wire [63:0]axi_noc_h2c_M00_AXI_AWADDR;
  wire [1:0]axi_noc_h2c_M00_AXI_AWBURST;
  wire [3:0]axi_noc_h2c_M00_AXI_AWCACHE;
  wire [1:0]axi_noc_h2c_M00_AXI_AWID;
  wire [7:0]axi_noc_h2c_M00_AXI_AWLEN;
  wire axi_noc_h2c_M00_AXI_AWLOCK;
  wire [2:0]axi_noc_h2c_M00_AXI_AWPROT;
  wire [3:0]axi_noc_h2c_M00_AXI_AWQOS;
  wire axi_noc_h2c_M00_AXI_AWREADY;
  wire [3:0]axi_noc_h2c_M00_AXI_AWREGION;
  wire [2:0]axi_noc_h2c_M00_AXI_AWSIZE;
  wire [17:0]axi_noc_h2c_M00_AXI_AWUSER;
  wire axi_noc_h2c_M00_AXI_AWVALID;
  wire [1:0]axi_noc_h2c_M00_AXI_BID;
  wire axi_noc_h2c_M00_AXI_BREADY;
  wire [1:0]axi_noc_h2c_M00_AXI_BRESP;
  wire axi_noc_h2c_M00_AXI_BVALID;
  wire [127:0]axi_noc_h2c_M00_AXI_RDATA;
  wire [1:0]axi_noc_h2c_M00_AXI_RID;
  wire axi_noc_h2c_M00_AXI_RLAST;
  wire axi_noc_h2c_M00_AXI_RREADY;
  wire [1:0]axi_noc_h2c_M00_AXI_RRESP;
  wire axi_noc_h2c_M00_AXI_RVALID;
  wire [127:0]axi_noc_h2c_M00_AXI_WDATA;
  wire axi_noc_h2c_M00_AXI_WLAST;
  wire axi_noc_h2c_M00_AXI_WREADY;
  wire [15:0]axi_noc_h2c_M00_AXI_WSTRB;
  wire axi_noc_h2c_M00_AXI_WVALID;
  wire [63:0]axi_noc_h2c_M00_AXI_fw_ARADDR;
  wire [1:0]axi_noc_h2c_M00_AXI_fw_ARBURST;
  wire [3:0]axi_noc_h2c_M00_AXI_fw_ARCACHE;
  wire [1:0]axi_noc_h2c_M00_AXI_fw_ARID;
  wire [7:0]axi_noc_h2c_M00_AXI_fw_ARLEN;
  wire axi_noc_h2c_M00_AXI_fw_ARLOCK;
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
  wire axi_noc_h2c_M00_AXI_fw_AWLOCK;
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
  wire axi_noc_h2c_M01_AXI_ARLOCK;
  wire [2:0]axi_noc_h2c_M01_AXI_ARPROT;
  wire [3:0]axi_noc_h2c_M01_AXI_ARQOS;
  wire axi_noc_h2c_M01_AXI_ARREADY;
  wire [2:0]axi_noc_h2c_M01_AXI_ARSIZE;
  wire [17:0]axi_noc_h2c_M01_AXI_ARUSER;
  wire axi_noc_h2c_M01_AXI_ARVALID;
  wire [63:0]axi_noc_h2c_M01_AXI_AWADDR;
  wire [1:0]axi_noc_h2c_M01_AXI_AWBURST;
  wire [3:0]axi_noc_h2c_M01_AXI_AWCACHE;
  wire [1:0]axi_noc_h2c_M01_AXI_AWID;
  wire [7:0]axi_noc_h2c_M01_AXI_AWLEN;
  wire axi_noc_h2c_M01_AXI_AWLOCK;
  wire [2:0]axi_noc_h2c_M01_AXI_AWPROT;
  wire [3:0]axi_noc_h2c_M01_AXI_AWQOS;
  wire axi_noc_h2c_M01_AXI_AWREADY;
  wire [2:0]axi_noc_h2c_M01_AXI_AWSIZE;
  wire [17:0]axi_noc_h2c_M01_AXI_AWUSER;
  wire axi_noc_h2c_M01_AXI_AWVALID;
  wire [1:0]axi_noc_h2c_M01_AXI_BID;
  wire axi_noc_h2c_M01_AXI_BREADY;
  wire [1:0]axi_noc_h2c_M01_AXI_BRESP;
  wire axi_noc_h2c_M01_AXI_BVALID;
  wire [511:0]axi_noc_h2c_M01_AXI_RDATA;
  wire [1:0]axi_noc_h2c_M01_AXI_RID;
  wire axi_noc_h2c_M01_AXI_RLAST;
  wire axi_noc_h2c_M01_AXI_RREADY;
  wire [1:0]axi_noc_h2c_M01_AXI_RRESP;
  wire axi_noc_h2c_M01_AXI_RVALID;
  wire [511:0]axi_noc_h2c_M01_AXI_WDATA;
  wire axi_noc_h2c_M01_AXI_WLAST;
  wire axi_noc_h2c_M01_AXI_WREADY;
  wire [63:0]axi_noc_h2c_M01_AXI_WSTRB;
  wire axi_noc_h2c_M01_AXI_WVALID;
  wire [16:0]axi_sc_plram_M00_AXI_ARADDR;
  wire [1:0]axi_sc_plram_M00_AXI_ARBURST;
  wire [3:0]axi_sc_plram_M00_AXI_ARCACHE;
  wire [7:0]axi_sc_plram_M00_AXI_ARLEN;
  wire axi_sc_plram_M00_AXI_ARLOCK;
  wire [2:0]axi_sc_plram_M00_AXI_ARPROT;
  wire axi_sc_plram_M00_AXI_ARREADY;
  wire [2:0]axi_sc_plram_M00_AXI_ARSIZE;
  wire axi_sc_plram_M00_AXI_ARVALID;
  wire [16:0]axi_sc_plram_M00_AXI_AWADDR;
  wire [1:0]axi_sc_plram_M00_AXI_AWBURST;
  wire [3:0]axi_sc_plram_M00_AXI_AWCACHE;
  wire [7:0]axi_sc_plram_M00_AXI_AWLEN;
  wire axi_sc_plram_M00_AXI_AWLOCK;
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
  wire [0:0]blp_m_dbg_hub_fw_00;
  wire [0:0]blp_m_ext_tog_ctrl_kernel_00_in;
  wire [0:0]blp_m_ext_tog_ctrl_kernel_01_in;
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
  wire gate_dbgfw_or_Res;
  wire [16:0]plram_ctrl_BRAM_PORTA_ADDR;
  wire plram_ctrl_BRAM_PORTA_CLK;
  wire [511:0]plram_ctrl_BRAM_PORTA_DIN;
  wire [511:0]plram_ctrl_BRAM_PORTA_DOUT;
  wire plram_ctrl_BRAM_PORTA_EN;
  wire plram_ctrl_BRAM_PORTA_RST;
  wire [63:0]plram_ctrl_BRAM_PORTA_WE;
  wire reset_controllers_resetn_kernel0_ic;
  wire resetn_pcie_axi_net;
  wire resetn_pl_axi_net;
  wire [15:2]NLW_ai_engine_0_S00_AXI_bid_UNCONNECTED;
  wire [15:2]NLW_ai_engine_0_S00_AXI_rid_UNCONNECTED;
  wire NLW_axi_dbg_fw_ip2intc_irpt_UNCONNECTED;
  wire NLW_axi_dbg_fw_s_axi_ctl_arready_UNCONNECTED;
  wire NLW_axi_dbg_fw_s_axi_ctl_awready_UNCONNECTED;
  wire NLW_axi_dbg_fw_s_axi_ctl_bvalid_UNCONNECTED;
  wire NLW_axi_dbg_fw_s_axi_ctl_rvalid_UNCONNECTED;
  wire NLW_axi_dbg_fw_s_axi_ctl_wready_UNCONNECTED;
  wire [17:0]NLW_axi_dbg_fw_m_axi_aruser_UNCONNECTED;
  wire [17:0]NLW_axi_dbg_fw_m_axi_awuser_UNCONNECTED;
  wire [1:0]NLW_axi_dbg_fw_s_axi_ctl_bresp_UNCONNECTED;
  wire [31:0]NLW_axi_dbg_fw_s_axi_ctl_rdata_UNCONNECTED;
  wire [1:0]NLW_axi_dbg_fw_s_axi_ctl_rresp_UNCONNECTED;
  wire [0:0]NLW_axi_gpio_null_user_gpio_io_o_UNCONNECTED;
  wire [0:0]NLW_axi_gpio_null_user_gpio_io_t_UNCONNECTED;
  wire [2:0]NLW_axi_ic_user_extend_M00_AXI_arprot_UNCONNECTED;
  wire [2:0]NLW_axi_ic_user_extend_M00_AXI_awprot_UNCONNECTED;
  wire [63:34]NLW_axi_noc_aie_prog_M00_AXI_araddr_UNCONNECTED;
  wire [63:34]NLW_axi_noc_aie_prog_M00_AXI_awaddr_UNCONNECTED;
  wire [3:0]NLW_axi_noc_h2c_M01_AXI_arregion_UNCONNECTED;
  wire [3:0]NLW_axi_noc_h2c_M01_AXI_awregion_UNCONNECTED;
  wire [3:0]NLW_axi_sc_plram_M00_AXI_arqos_UNCONNECTED;
  wire [17:0]NLW_axi_sc_plram_M00_AXI_aruser_UNCONNECTED;
  wire [3:0]NLW_axi_sc_plram_M00_AXI_awqos_UNCONNECTED;
  wire [17:0]NLW_axi_sc_plram_M00_AXI_awuser_UNCONNECTED;

  assign blp_m_ext_tog_ctrl_kernel_00_enable[0] = \<const0> ;
  assign blp_m_ext_tog_ctrl_kernel_01_enable[0] = \<const0> ;
  assign blp_m_irq_kernel_00[127] = \<const0> ;
  assign blp_m_irq_kernel_00[126] = \<const0> ;
  assign blp_m_irq_kernel_00[125] = \<const0> ;
  assign blp_m_irq_kernel_00[124] = \<const0> ;
  assign blp_m_irq_kernel_00[123] = \<const0> ;
  assign blp_m_irq_kernel_00[122] = \<const0> ;
  assign blp_m_irq_kernel_00[121] = \<const0> ;
  assign blp_m_irq_kernel_00[120] = \<const0> ;
  assign blp_m_irq_kernel_00[119] = \<const0> ;
  assign blp_m_irq_kernel_00[118] = \<const0> ;
  assign blp_m_irq_kernel_00[117] = \<const0> ;
  assign blp_m_irq_kernel_00[116] = \<const0> ;
  assign blp_m_irq_kernel_00[115] = \<const0> ;
  assign blp_m_irq_kernel_00[114] = \<const0> ;
  assign blp_m_irq_kernel_00[113] = \<const0> ;
  assign blp_m_irq_kernel_00[112] = \<const0> ;
  assign blp_m_irq_kernel_00[111] = \<const0> ;
  assign blp_m_irq_kernel_00[110] = \<const0> ;
  assign blp_m_irq_kernel_00[109] = \<const0> ;
  assign blp_m_irq_kernel_00[108] = \<const0> ;
  assign blp_m_irq_kernel_00[107] = \<const0> ;
  assign blp_m_irq_kernel_00[106] = \<const0> ;
  assign blp_m_irq_kernel_00[105] = \<const0> ;
  assign blp_m_irq_kernel_00[104] = \<const0> ;
  assign blp_m_irq_kernel_00[103] = \<const0> ;
  assign blp_m_irq_kernel_00[102] = \<const0> ;
  assign blp_m_irq_kernel_00[101] = \<const0> ;
  assign blp_m_irq_kernel_00[100] = \<const0> ;
  assign blp_m_irq_kernel_00[99] = \<const0> ;
  assign blp_m_irq_kernel_00[98] = \<const0> ;
  assign blp_m_irq_kernel_00[97] = \<const0> ;
  assign blp_m_irq_kernel_00[96] = \<const0> ;
  assign blp_m_irq_kernel_00[95] = \<const0> ;
  assign blp_m_irq_kernel_00[94] = \<const0> ;
  assign blp_m_irq_kernel_00[93] = \<const0> ;
  assign blp_m_irq_kernel_00[92] = \<const0> ;
  assign blp_m_irq_kernel_00[91] = \<const0> ;
  assign blp_m_irq_kernel_00[90] = \<const0> ;
  assign blp_m_irq_kernel_00[89] = \<const0> ;
  assign blp_m_irq_kernel_00[88] = \<const0> ;
  assign blp_m_irq_kernel_00[87] = \<const0> ;
  assign blp_m_irq_kernel_00[86] = \<const0> ;
  assign blp_m_irq_kernel_00[85] = \<const0> ;
  assign blp_m_irq_kernel_00[84] = \<const0> ;
  assign blp_m_irq_kernel_00[83] = \<const0> ;
  assign blp_m_irq_kernel_00[82] = \<const0> ;
  assign blp_m_irq_kernel_00[81] = \<const0> ;
  assign blp_m_irq_kernel_00[80] = \<const0> ;
  assign blp_m_irq_kernel_00[79] = \<const0> ;
  assign blp_m_irq_kernel_00[78] = \<const0> ;
  assign blp_m_irq_kernel_00[77] = \<const0> ;
  assign blp_m_irq_kernel_00[76] = \<const0> ;
  assign blp_m_irq_kernel_00[75] = \<const0> ;
  assign blp_m_irq_kernel_00[74] = \<const0> ;
  assign blp_m_irq_kernel_00[73] = \<const0> ;
  assign blp_m_irq_kernel_00[72] = \<const0> ;
  assign blp_m_irq_kernel_00[71] = \<const0> ;
  assign blp_m_irq_kernel_00[70] = \<const0> ;
  assign blp_m_irq_kernel_00[69] = \<const0> ;
  assign blp_m_irq_kernel_00[68] = \<const0> ;
  assign blp_m_irq_kernel_00[67] = \<const0> ;
  assign blp_m_irq_kernel_00[66] = \<const0> ;
  assign blp_m_irq_kernel_00[65] = \<const0> ;
  assign blp_m_irq_kernel_00[64] = \<const0> ;
  assign blp_m_irq_kernel_00[63] = \<const0> ;
  assign blp_m_irq_kernel_00[62] = \<const0> ;
  assign blp_m_irq_kernel_00[61] = \<const0> ;
  assign blp_m_irq_kernel_00[60] = \<const0> ;
  assign blp_m_irq_kernel_00[59] = \<const0> ;
  assign blp_m_irq_kernel_00[58] = \<const0> ;
  assign blp_m_irq_kernel_00[57] = \<const0> ;
  assign blp_m_irq_kernel_00[56] = \<const0> ;
  assign blp_m_irq_kernel_00[55] = \<const0> ;
  assign blp_m_irq_kernel_00[54] = \<const0> ;
  assign blp_m_irq_kernel_00[53] = \<const0> ;
  assign blp_m_irq_kernel_00[52] = \<const0> ;
  assign blp_m_irq_kernel_00[51] = \<const0> ;
  assign blp_m_irq_kernel_00[50] = \<const0> ;
  assign blp_m_irq_kernel_00[49] = \<const0> ;
  assign blp_m_irq_kernel_00[48] = \<const0> ;
  assign blp_m_irq_kernel_00[47] = \<const0> ;
  assign blp_m_irq_kernel_00[46] = \<const0> ;
  assign blp_m_irq_kernel_00[45] = \<const0> ;
  assign blp_m_irq_kernel_00[44] = \<const0> ;
  assign blp_m_irq_kernel_00[43] = \<const0> ;
  assign blp_m_irq_kernel_00[42] = \<const0> ;
  assign blp_m_irq_kernel_00[41] = \<const0> ;
  assign blp_m_irq_kernel_00[40] = \<const0> ;
  assign blp_m_irq_kernel_00[39] = \<const0> ;
  assign blp_m_irq_kernel_00[38] = \<const0> ;
  assign blp_m_irq_kernel_00[37] = \<const0> ;
  assign blp_m_irq_kernel_00[36] = \<const0> ;
  assign blp_m_irq_kernel_00[35] = \<const0> ;
  assign blp_m_irq_kernel_00[34] = \<const0> ;
  assign blp_m_irq_kernel_00[33] = \<const0> ;
  assign blp_m_irq_kernel_00[32] = \<const0> ;
  assign blp_m_irq_kernel_00[31] = \<const0> ;
  assign blp_m_irq_kernel_00[30] = \<const0> ;
  assign blp_m_irq_kernel_00[29] = \<const0> ;
  assign blp_m_irq_kernel_00[28] = \<const0> ;
  assign blp_m_irq_kernel_00[27] = \<const0> ;
  assign blp_m_irq_kernel_00[26] = \<const0> ;
  assign blp_m_irq_kernel_00[25] = \<const0> ;
  assign blp_m_irq_kernel_00[24] = \<const0> ;
  assign blp_m_irq_kernel_00[23] = \<const0> ;
  assign blp_m_irq_kernel_00[22] = \<const0> ;
  assign blp_m_irq_kernel_00[21] = \<const0> ;
  assign blp_m_irq_kernel_00[20] = \<const0> ;
  assign blp_m_irq_kernel_00[19] = \<const0> ;
  assign blp_m_irq_kernel_00[18] = \<const0> ;
  assign blp_m_irq_kernel_00[17] = \<const0> ;
  assign blp_m_irq_kernel_00[16] = \<const0> ;
  assign blp_m_irq_kernel_00[15] = \<const0> ;
  assign blp_m_irq_kernel_00[14] = \<const0> ;
  assign blp_m_irq_kernel_00[13] = \<const0> ;
  assign blp_m_irq_kernel_00[12] = \<const0> ;
  assign blp_m_irq_kernel_00[11] = \<const0> ;
  assign blp_m_irq_kernel_00[10] = \<const0> ;
  assign blp_m_irq_kernel_00[9] = \<const0> ;
  assign blp_m_irq_kernel_00[8] = \<const0> ;
  assign blp_m_irq_kernel_00[7] = \<const0> ;
  assign blp_m_irq_kernel_00[6] = \<const0> ;
  assign blp_m_irq_kernel_00[5] = \<const0> ;
  assign blp_m_irq_kernel_00[4] = \<const0> ;
  assign blp_m_irq_kernel_00[3] = \<const0> ;
  assign blp_m_irq_kernel_00[2] = \<const0> ;
  assign blp_m_irq_kernel_00[1] = \<const0> ;
  assign blp_m_irq_kernel_00[0] = \<const0> ;
  assign qsfp0_4x_gtx_n[3] = \<const0> ;
  assign qsfp0_4x_gtx_n[2] = \<const0> ;
  assign qsfp0_4x_gtx_n[1] = \<const0> ;
  assign qsfp0_4x_gtx_n[0] = \<const0> ;
  assign qsfp0_4x_gtx_p[3] = \<const0> ;
  assign qsfp0_4x_gtx_p[2] = \<const0> ;
  assign qsfp0_4x_gtx_p[1] = \<const0> ;
  assign qsfp0_4x_gtx_p[0] = \<const0> ;
  assign qsfp1_4x_gtx_n[3] = \<const0> ;
  assign qsfp1_4x_gtx_n[2] = \<const0> ;
  assign qsfp1_4x_gtx_n[1] = \<const0> ;
  assign qsfp1_4x_gtx_n[0] = \<const0> ;
  assign qsfp1_4x_gtx_p[3] = \<const0> ;
  assign qsfp1_4x_gtx_p[2] = \<const0> ;
  assign qsfp1_4x_gtx_p[1] = \<const0> ;
  assign qsfp1_4x_gtx_p[0] = \<const0> ;
  GND GND
       (.G(\<const0> ));
  (* CHECK_LICENSE_TYPE = "ulp_inst_0_ai_engine_0_0,bd_9d54,{}" *) 
  (* DowngradeIPIdentifiedWarnings = "yes" *) 
  (* X_CORE_INFO = "bd_9d54,Vivado 2022.2" *) 
  ulp_inst_0_ai_engine_0_0 ai_engine_0
       (.S00_AXI_araddr(axi_noc_aie_prog_M00_AXI_ARADDR),
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
        .S00_AXI_awaddr(axi_noc_aie_prog_M00_AXI_AWADDR),
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
        .S00_AXI_bid({NLW_ai_engine_0_S00_AXI_bid_UNCONNECTED[15:2],axi_noc_aie_prog_M00_AXI_BID}),
        .S00_AXI_bready(axi_noc_aie_prog_M00_AXI_BREADY),
        .S00_AXI_bresp(axi_noc_aie_prog_M00_AXI_BRESP),
        .S00_AXI_bvalid(axi_noc_aie_prog_M00_AXI_BVALID),
        .S00_AXI_rdata(axi_noc_aie_prog_M00_AXI_RDATA),
        .S00_AXI_rid({NLW_ai_engine_0_S00_AXI_rid_UNCONNECTED[15:2],axi_noc_aie_prog_M00_AXI_RID}),
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
  (* X_CORE_INFO = "axi_firewall_v1_2_2_top,Vivado 2022.2" *) 
  ulp_inst_0_axi_dbg_fw_0 axi_dbg_fw
       (.aclk(blp_s_aclk_pcie_00),
        .aresetn(1'b1),
        .ip2intc_irpt(NLW_axi_dbg_fw_ip2intc_irpt_UNCONNECTED),
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
        .m_axi_aruser(NLW_axi_dbg_fw_m_axi_aruser_UNCONNECTED[17:0]),
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
        .m_axi_awuser(NLW_axi_dbg_fw_m_axi_awuser_UNCONNECTED[17:0]),
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
        .s_axi_ctl_arready(NLW_axi_dbg_fw_s_axi_ctl_arready_UNCONNECTED),
        .s_axi_ctl_arvalid(1'b0),
        .s_axi_ctl_awaddr({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_ctl_awready(NLW_axi_dbg_fw_s_axi_ctl_awready_UNCONNECTED),
        .s_axi_ctl_awvalid(1'b0),
        .s_axi_ctl_bready(1'b0),
        .s_axi_ctl_bresp(NLW_axi_dbg_fw_s_axi_ctl_bresp_UNCONNECTED[1:0]),
        .s_axi_ctl_bvalid(NLW_axi_dbg_fw_s_axi_ctl_bvalid_UNCONNECTED),
        .s_axi_ctl_rdata(NLW_axi_dbg_fw_s_axi_ctl_rdata_UNCONNECTED[31:0]),
        .s_axi_ctl_rready(1'b0),
        .s_axi_ctl_rresp(NLW_axi_dbg_fw_s_axi_ctl_rresp_UNCONNECTED[1:0]),
        .s_axi_ctl_rvalid(NLW_axi_dbg_fw_s_axi_ctl_rvalid_UNCONNECTED),
        .s_axi_ctl_wdata({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_ctl_wready(NLW_axi_dbg_fw_s_axi_ctl_wready_UNCONNECTED),
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
  (* DEBUG_CORE_INFO = "axi_dbg_hub,axi_dbg_hub_v2_0,{C_ADDR_OFFSET=0x20205800000,C_ADDR_RANGE=0x00200000,C_AXIS_TDATA_WIDTH=32,C_AXI_ADDR_WIDTH=64,C_AXI_DATA_WIDTH=128,C_AXI_ID_WIDTH=2,C_EN_FALLBACK=0,C_NUM_DEBUG_CORES=0,C_NUM_RD_OUTSTANDING_TXN=1,C_NUM_WR_OUTSTANDING_TXN=1,component_name=ulp_inst_0_axi_dbg_hub_0,x_ipCoreRevision=4,x_ipIsDebugCore=true,x_ipLanguage=VERILOG,x_ipLibrary=ip,x_ipName=axi_dbg_hub,x_ipProduct=Vivado 2022.2,x_ipSimLanguage=MIXED,x_ipVendor=xilinx.com,x_ipVersion=2.0}" *) 
  (* IS_DEBUG_CORE *) 
  (* X_CORE_INFO = "ulp_inst_0_axi_dbg_hub_0_axi_dbg_hub,Vivado 2022.2" *) 
  ulp_inst_0_axi_dbg_hub_0 axi_dbg_hub
       (.aclk(blp_s_aclk_pcie_00),
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
  (* X_CORE_INFO = "axi_gpio,Vivado 2022.2" *) 
  ulp_inst_0_axi_gpio_null_user_0 axi_gpio_null_user
       (.gpio_io_i(1'b0),
        .gpio_io_o(NLW_axi_gpio_null_user_gpio_io_o_UNCONNECTED[0]),
        .gpio_io_t(NLW_axi_gpio_null_user_gpio_io_t_UNCONNECTED[0]),
        .s_axi_aclk(blp_s_aclk_ctrl_00),
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
  (* X_CORE_INFO = "bd_d23e,Vivado 2022.2" *) 
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
        .S00_AXI_araddr(BLP_S_AXI_CTRL_USER_00_araddr),
        .S00_AXI_arprot(BLP_S_AXI_CTRL_USER_00_arprot),
        .S00_AXI_arready(BLP_S_AXI_CTRL_USER_00_arready),
        .S00_AXI_arvalid(BLP_S_AXI_CTRL_USER_00_arvalid),
        .S00_AXI_awaddr(BLP_S_AXI_CTRL_USER_00_awaddr),
        .S00_AXI_awprot(BLP_S_AXI_CTRL_USER_00_awprot),
        .S00_AXI_awready(BLP_S_AXI_CTRL_USER_00_awready),
        .S00_AXI_awvalid(BLP_S_AXI_CTRL_USER_00_awvalid),
        .S00_AXI_bready(BLP_S_AXI_CTRL_USER_00_bready),
        .S00_AXI_bresp(BLP_S_AXI_CTRL_USER_00_bresp),
        .S00_AXI_bvalid(BLP_S_AXI_CTRL_USER_00_bvalid),
        .S00_AXI_rdata(BLP_S_AXI_CTRL_USER_00_rdata),
        .S00_AXI_rready(BLP_S_AXI_CTRL_USER_00_rready),
        .S00_AXI_rresp(BLP_S_AXI_CTRL_USER_00_rresp),
        .S00_AXI_rvalid(BLP_S_AXI_CTRL_USER_00_rvalid),
        .S00_AXI_wdata(BLP_S_AXI_CTRL_USER_00_wdata),
        .S00_AXI_wready(BLP_S_AXI_CTRL_USER_00_wready),
        .S00_AXI_wstrb(BLP_S_AXI_CTRL_USER_00_wstrb),
        .S00_AXI_wvalid(BLP_S_AXI_CTRL_USER_00_wvalid),
        .aclk(blp_s_aclk_ctrl_00),
        .aresetn(resetn_pl_axi_net));
  (* X_CORE_INFO = "bd_dad2,Vivado 2022.2" *) 
  ulp_inst_0_axi_ic_user_extend_0 axi_ic_user_extend
       (.M00_AXI_araddr(axi_ic_user_extend_M00_AXI_ARADDR),
        .M00_AXI_arprot(NLW_axi_ic_user_extend_M00_AXI_arprot_UNCONNECTED[2:0]),
        .M00_AXI_arready(axi_ic_user_extend_M00_AXI_ARREADY),
        .M00_AXI_arvalid(axi_ic_user_extend_M00_AXI_ARVALID),
        .M00_AXI_awaddr(axi_ic_user_extend_M00_AXI_AWADDR),
        .M00_AXI_awprot(NLW_axi_ic_user_extend_M00_AXI_awprot_UNCONNECTED[2:0]),
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
        .aclk(blp_s_aclk_ctrl_00),
        .aresetn(resetn_pl_axi_net));
  (* X_CORE_INFO = "bd_afcb,Vivado 2022.2" *) 
  ulp_inst_0_axi_noc_aie_prog_0 axi_noc_aie_prog
       (.M00_AXI_araddr({NLW_axi_noc_aie_prog_M00_AXI_araddr_UNCONNECTED[63:34],axi_noc_aie_prog_M00_AXI_ARADDR}),
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
        .M00_AXI_awaddr({NLW_axi_noc_aie_prog_M00_AXI_awaddr_UNCONNECTED[63:34],axi_noc_aie_prog_M00_AXI_AWADDR}),
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
        .M00_AXI_bid(axi_noc_aie_prog_M00_AXI_BID),
        .M00_AXI_bready(axi_noc_aie_prog_M00_AXI_BREADY),
        .M00_AXI_bresp(axi_noc_aie_prog_M00_AXI_BRESP),
        .M00_AXI_bvalid(axi_noc_aie_prog_M00_AXI_BVALID),
        .M00_AXI_rdata(axi_noc_aie_prog_M00_AXI_RDATA),
        .M00_AXI_rid(axi_noc_aie_prog_M00_AXI_RID),
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
        .S00_INI_internoc(BLP_S_INI_AIE_00_internoc),
        .aclk0(ai_engine_0_s00_axi_aclk));
  (* X_CORE_INFO = "bd_0dc7,Vivado 2022.2" *) 
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
        .M01_AXI_arregion(NLW_axi_noc_h2c_M01_AXI_arregion_UNCONNECTED[3:0]),
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
        .M01_AXI_awregion(NLW_axi_noc_h2c_M01_AXI_awregion_UNCONNECTED[3:0]),
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
        .S00_INI_internoc(BLP_S_INI_DBG_00_internoc),
        .S01_INI_internoc(BLP_S_INI_PLRAM_00_internoc),
        .aclk0(blp_s_aclk_pcie_00));
  (* DPA_TRACE_SLAVE = "true" *) 
  (* X_CORE_INFO = "bd_0ad1,Vivado 2022.2" *) 
  ulp_inst_0_axi_noc_kernel0_0 axi_noc_kernel0
       (.M00_INI_internoc(BLP_M_M00_INI_0_internoc),
        .M01_INI_internoc(BLP_M_M01_INI_0_internoc),
        .M02_INI_internoc(BLP_M_M02_INI_0_internoc));
  (* X_CORE_INFO = "bd_a6d9,Vivado 2022.2" *) 
  ulp_inst_0_axi_sc_plram_0 axi_sc_plram
       (.M00_AXI_araddr(axi_sc_plram_M00_AXI_ARADDR),
        .M00_AXI_arburst(axi_sc_plram_M00_AXI_ARBURST),
        .M00_AXI_arcache(axi_sc_plram_M00_AXI_ARCACHE),
        .M00_AXI_arlen(axi_sc_plram_M00_AXI_ARLEN),
        .M00_AXI_arlock(axi_sc_plram_M00_AXI_ARLOCK),
        .M00_AXI_arprot(axi_sc_plram_M00_AXI_ARPROT),
        .M00_AXI_arqos(NLW_axi_sc_plram_M00_AXI_arqos_UNCONNECTED[3:0]),
        .M00_AXI_arready(axi_sc_plram_M00_AXI_ARREADY),
        .M00_AXI_arsize(axi_sc_plram_M00_AXI_ARSIZE),
        .M00_AXI_aruser(NLW_axi_sc_plram_M00_AXI_aruser_UNCONNECTED[17:0]),
        .M00_AXI_arvalid(axi_sc_plram_M00_AXI_ARVALID),
        .M00_AXI_awaddr(axi_sc_plram_M00_AXI_AWADDR),
        .M00_AXI_awburst(axi_sc_plram_M00_AXI_AWBURST),
        .M00_AXI_awcache(axi_sc_plram_M00_AXI_AWCACHE),
        .M00_AXI_awlen(axi_sc_plram_M00_AXI_AWLEN),
        .M00_AXI_awlock(axi_sc_plram_M00_AXI_AWLOCK),
        .M00_AXI_awprot(axi_sc_plram_M00_AXI_AWPROT),
        .M00_AXI_awqos(NLW_axi_sc_plram_M00_AXI_awqos_UNCONNECTED[3:0]),
        .M00_AXI_awready(axi_sc_plram_M00_AXI_AWREADY),
        .M00_AXI_awsize(axi_sc_plram_M00_AXI_AWSIZE),
        .M00_AXI_awuser(NLW_axi_sc_plram_M00_AXI_awuser_UNCONNECTED[17:0]),
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
        .aclk(blp_s_aclk_pcie_00),
        .aclk1(blp_s_aclk_kernel_00),
        .aresetn(reset_controllers_resetn_kernel0_ic));
  (* X_CORE_INFO = "util_vector_logic_v2_0_2_util_vector_logic,Vivado 2022.2" *) 
  ulp_inst_0_gate_dbgfw_or_0 gate_dbgfw_or
       (.Op1(axi_dbg_fw_mi_w_error),
        .Op2(axi_dbg_fw_mi_r_error),
        .Res(gate_dbgfw_or_Res));
  (* X_CORE_INFO = "util_ff_v1_0_1_util_ff,Vivado 2022.2" *) 
  ulp_inst_0_ip_pipe_dbg_hub_fw_00_0 ip_pipe_dbg_hub_fw_00
       (.D(gate_dbgfw_or_Res),
        .Q(blp_m_dbg_hub_fw_00),
        .clk(blp_s_aclk_pcie_00),
        .clk_enable(1'b1),
        .reset(1'b0));
  (* X_CORE_INFO = "util_ff_v1_0_1_util_ff,Vivado 2022.2" *) 
  ulp_inst_0_ip_pipe_ext_tog_kernel_00_null_0 ip_pipe_ext_tog_kernel_00_null
       (.D(blp_s_ext_tog_ctrl_kernel_00_out),
        .Q(blp_m_ext_tog_ctrl_kernel_00_in),
        .clk(blp_s_aclk_ext_tog_kernel_00),
        .clk_enable(1'b1),
        .reset(1'b0));
  (* X_CORE_INFO = "util_ff_v1_0_1_util_ff,Vivado 2022.2" *) 
  ulp_inst_0_ip_pipe_ext_tog_kernel_01_null_0 ip_pipe_ext_tog_kernel_01_null
       (.D(blp_s_ext_tog_ctrl_kernel_01_out),
        .Q(blp_m_ext_tog_ctrl_kernel_01_in),
        .clk(blp_s_aclk_ext_tog_kernel_01),
        .clk_enable(1'b1),
        .reset(1'b0));
  (* X_CORE_INFO = "axi_bram_ctrl,Vivado 2022.2" *) 
  ulp_inst_0_plram_ctrl_0 plram_ctrl
       (.bram_addr_a(plram_ctrl_BRAM_PORTA_ADDR),
        .bram_clk_a(plram_ctrl_BRAM_PORTA_CLK),
        .bram_en_a(plram_ctrl_BRAM_PORTA_EN),
        .bram_rddata_a(plram_ctrl_BRAM_PORTA_DOUT),
        .bram_rst_a(plram_ctrl_BRAM_PORTA_RST),
        .bram_we_a(plram_ctrl_BRAM_PORTA_WE),
        .bram_wrdata_a(plram_ctrl_BRAM_PORTA_DIN),
        .s_axi_aclk(blp_s_aclk_kernel_00),
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
  (* X_CORE_INFO = "emb_mem_gen_v1_0_6,Vivado 2022.2" *) 
  ulp_inst_0_plram_ctrl_bram_0 plram_ctrl_bram
       (.addra(plram_ctrl_BRAM_PORTA_ADDR),
        .clka(plram_ctrl_BRAM_PORTA_CLK),
        .dina(plram_ctrl_BRAM_PORTA_DIN),
        .douta(plram_ctrl_BRAM_PORTA_DOUT),
        .ena(plram_ctrl_BRAM_PORTA_EN),
        .regcea(1'b0),
        .rsta(plram_ctrl_BRAM_PORTA_RST),
        .wea(plram_ctrl_BRAM_PORTA_WE));
  ulp_inst_0_reset_controllers_imp_1KQP16U reset_controllers
       (.blp_s_aclk_ctrl_00(blp_s_aclk_ctrl_00),
        .blp_s_aclk_kernel_00(blp_s_aclk_kernel_00),
        .blp_s_aclk_kernel_01(blp_s_aclk_kernel_01),
        .blp_s_aclk_pcie_00(blp_s_aclk_pcie_00),
        .blp_s_aresetn_pcie_reset_00(blp_s_aresetn_pcie_reset_00),
        .blp_s_aresetn_pr_reset_00(blp_s_aresetn_pr_reset_00),
        .resetn_kernel0_ic(reset_controllers_resetn_kernel0_ic),
        .resetn_pcie_axi(resetn_pcie_axi_net),
        .resetn_pl_axi(resetn_pl_axi_net));
endmodule

(* CHECK_LICENSE_TYPE = "ulp_inst_0_ai_engine_0_0,bd_9d54,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* X_CORE_INFO = "bd_9d54,Vivado 2022.2" *) 
module ulp_inst_0_ai_engine_0_0
   (S00_AXI_awid,
    S00_AXI_awaddr,
    S00_AXI_awlen,
    S00_AXI_awsize,
    S00_AXI_awburst,
    S00_AXI_awlock,
    S00_AXI_awcache,
    S00_AXI_awprot,
    S00_AXI_awregion,
    S00_AXI_awqos,
    S00_AXI_awvalid,
    S00_AXI_awready,
    S00_AXI_wdata,
    S00_AXI_wstrb,
    S00_AXI_wlast,
    S00_AXI_wuser,
    S00_AXI_wvalid,
    S00_AXI_wready,
    S00_AXI_bid,
    S00_AXI_bresp,
    S00_AXI_bvalid,
    S00_AXI_bready,
    S00_AXI_arid,
    S00_AXI_araddr,
    S00_AXI_arlen,
    S00_AXI_arsize,
    S00_AXI_arburst,
    S00_AXI_arlock,
    S00_AXI_arcache,
    S00_AXI_arprot,
    S00_AXI_arregion,
    S00_AXI_arqos,
    S00_AXI_arvalid,
    S00_AXI_arready,
    S00_AXI_rid,
    S00_AXI_rdata,
    S00_AXI_rresp,
    S00_AXI_rlast,
    S00_AXI_ruser,
    S00_AXI_rvalid,
    S00_AXI_rready,
    s00_axi_aclk);
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI AWID" *) input [15:0]S00_AXI_awid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI AWADDR" *) input [33:0]S00_AXI_awaddr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI AWLEN" *) input [7:0]S00_AXI_awlen;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI AWSIZE" *) input [2:0]S00_AXI_awsize;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI AWBURST" *) input [1:0]S00_AXI_awburst;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI AWLOCK" *) input S00_AXI_awlock;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI AWCACHE" *) input [3:0]S00_AXI_awcache;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI AWPROT" *) input [2:0]S00_AXI_awprot;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI AWREGION" *) input [3:0]S00_AXI_awregion;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI AWQOS" *) input [3:0]S00_AXI_awqos;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI AWVALID" *) input [0:0]S00_AXI_awvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI AWREADY" *) output [0:0]S00_AXI_awready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI WDATA" *) input [127:0]S00_AXI_wdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI WSTRB" *) input [15:0]S00_AXI_wstrb;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI WLAST" *) input [0:0]S00_AXI_wlast;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI WUSER" *) input [16:0]S00_AXI_wuser;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI WVALID" *) input [0:0]S00_AXI_wvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI WREADY" *) output [0:0]S00_AXI_wready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI BID" *) output [15:0]S00_AXI_bid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI BRESP" *) output [1:0]S00_AXI_bresp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI BVALID" *) output [0:0]S00_AXI_bvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI BREADY" *) input [0:0]S00_AXI_bready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI ARID" *) input [15:0]S00_AXI_arid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI ARADDR" *) input [33:0]S00_AXI_araddr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI ARLEN" *) input [7:0]S00_AXI_arlen;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI ARSIZE" *) input [2:0]S00_AXI_arsize;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI ARBURST" *) input [1:0]S00_AXI_arburst;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI ARLOCK" *) input S00_AXI_arlock;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI ARCACHE" *) input [3:0]S00_AXI_arcache;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI ARPROT" *) input [2:0]S00_AXI_arprot;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI ARREGION" *) input [3:0]S00_AXI_arregion;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI ARQOS" *) input [3:0]S00_AXI_arqos;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI ARVALID" *) input [0:0]S00_AXI_arvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI ARREADY" *) output [0:0]S00_AXI_arready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI RID" *) output [15:0]S00_AXI_rid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI RDATA" *) output [127:0]S00_AXI_rdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI RRESP" *) output [1:0]S00_AXI_rresp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI RLAST" *) output [0:0]S00_AXI_rlast;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI RUSER" *) output [16:0]S00_AXI_ruser;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI RVALID" *) output [0:0]S00_AXI_rvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI RREADY" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME S00_AXI, DATA_WIDTH 128, PROTOCOL AXI4, FREQ_HZ 1250000000, ID_WIDTH 2, ADDR_WIDTH 42, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 17, RUSER_WIDTH 17, BUSER_WIDTH 0, READ_WRITE_MODE READ_WRITE, HAS_BURST 1, HAS_LOCK 1, HAS_PROT 1, HAS_CACHE 1, HAS_QOS 1, HAS_REGION 1, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, SUPPORTS_NARROW_BURST 1, NUM_READ_OUTSTANDING 32, NUM_WRITE_OUTSTANDING 32, MAX_BURST_LENGTH 256, PHASE 0.0, CLK_DOMAIN bd_9d54_noc_ai_mm_0_0_s_axi_aclk, NUM_READ_THREADS 4, NUM_WRITE_THREADS 4, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, INSERT_VIP 0, MY_CATEGORY AIE, CATEGORY NOC, PHYSICAL_CHANNEL NOC_NSU_TO_AIE" *) input [0:0]S00_AXI_rready;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 CLK.s00_axi_aclk CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME CLK.s00_axi_aclk, FREQ_HZ 1250000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN bd_9d54_noc_ai_mm_0_0_s_axi_aclk, ASSOCIATED_BUSIF S00_AXI, INSERT_VIP 0, PHYSICAL_CHANNEL AIE_TO_NOC_NSU" *) output s00_axi_aclk;

  wire \<const0> ;
  wire [33:0]S00_AXI_araddr;
  wire [1:0]S00_AXI_arburst;
  wire [3:0]S00_AXI_arcache;
  wire [15:0]S00_AXI_arid;
  wire [7:0]S00_AXI_arlen;
  wire S00_AXI_arlock;
  wire [2:0]S00_AXI_arprot;
  wire [3:0]S00_AXI_arqos;
  wire [0:0]S00_AXI_arready;
  wire [3:0]S00_AXI_arregion;
  wire [2:0]S00_AXI_arsize;
  wire [0:0]S00_AXI_arvalid;
  wire [33:0]S00_AXI_awaddr;
  wire [1:0]S00_AXI_awburst;
  wire [3:0]S00_AXI_awcache;
  wire [15:0]S00_AXI_awid;
  wire [7:0]S00_AXI_awlen;
  wire S00_AXI_awlock;
  wire [2:0]S00_AXI_awprot;
  wire [3:0]S00_AXI_awqos;
  wire [0:0]S00_AXI_awready;
  wire [3:0]S00_AXI_awregion;
  wire [2:0]S00_AXI_awsize;
  wire [0:0]S00_AXI_awvalid;
  wire [1:0]\^S00_AXI_bid ;
  wire [0:0]S00_AXI_bready;
  wire [1:0]S00_AXI_bresp;
  wire [0:0]S00_AXI_bvalid;
  wire [127:0]S00_AXI_rdata;
  wire [1:0]\^S00_AXI_rid ;
  wire [0:0]S00_AXI_rlast;
  wire [0:0]S00_AXI_rready;
  wire [1:0]S00_AXI_rresp;
  wire [16:0]S00_AXI_ruser;
  wire [0:0]S00_AXI_rvalid;
  wire [127:0]S00_AXI_wdata;
  wire [0:0]S00_AXI_wlast;
  wire [0:0]S00_AXI_wready;
  wire [15:0]S00_AXI_wstrb;
  wire [16:0]S00_AXI_wuser;
  wire [0:0]S00_AXI_wvalid;
  wire s00_axi_aclk;
  wire [15:2]NLW_inst_S00_AXI_bid_UNCONNECTED;
  wire [15:2]NLW_inst_S00_AXI_rid_UNCONNECTED;

  assign S00_AXI_bid[15] = \<const0> ;
  assign S00_AXI_bid[14] = \<const0> ;
  assign S00_AXI_bid[13] = \<const0> ;
  assign S00_AXI_bid[12] = \<const0> ;
  assign S00_AXI_bid[11] = \<const0> ;
  assign S00_AXI_bid[10] = \<const0> ;
  assign S00_AXI_bid[9] = \<const0> ;
  assign S00_AXI_bid[8] = \<const0> ;
  assign S00_AXI_bid[7] = \<const0> ;
  assign S00_AXI_bid[6] = \<const0> ;
  assign S00_AXI_bid[5] = \<const0> ;
  assign S00_AXI_bid[4] = \<const0> ;
  assign S00_AXI_bid[3] = \<const0> ;
  assign S00_AXI_bid[2] = \<const0> ;
  assign S00_AXI_bid[1:0] = \^S00_AXI_bid [1:0];
  assign S00_AXI_rid[15] = \<const0> ;
  assign S00_AXI_rid[14] = \<const0> ;
  assign S00_AXI_rid[13] = \<const0> ;
  assign S00_AXI_rid[12] = \<const0> ;
  assign S00_AXI_rid[11] = \<const0> ;
  assign S00_AXI_rid[10] = \<const0> ;
  assign S00_AXI_rid[9] = \<const0> ;
  assign S00_AXI_rid[8] = \<const0> ;
  assign S00_AXI_rid[7] = \<const0> ;
  assign S00_AXI_rid[6] = \<const0> ;
  assign S00_AXI_rid[5] = \<const0> ;
  assign S00_AXI_rid[4] = \<const0> ;
  assign S00_AXI_rid[3] = \<const0> ;
  assign S00_AXI_rid[2] = \<const0> ;
  assign S00_AXI_rid[1:0] = \^S00_AXI_rid [1:0];
  GND GND
       (.G(\<const0> ));
  (* HW_HANDOFF = "ulp_inst_0_ai_engine_0_0.hwdef" *) 
  ulp_inst_0_bd_9d54 inst
       (.S00_AXI_araddr(S00_AXI_araddr),
        .S00_AXI_arburst(S00_AXI_arburst),
        .S00_AXI_arcache(S00_AXI_arcache),
        .S00_AXI_arid(S00_AXI_arid),
        .S00_AXI_arlen(S00_AXI_arlen),
        .S00_AXI_arlock(S00_AXI_arlock),
        .S00_AXI_arprot(S00_AXI_arprot),
        .S00_AXI_arqos(S00_AXI_arqos),
        .S00_AXI_arready(S00_AXI_arready),
        .S00_AXI_arregion(S00_AXI_arregion),
        .S00_AXI_arsize(S00_AXI_arsize),
        .S00_AXI_arvalid(S00_AXI_arvalid),
        .S00_AXI_awaddr(S00_AXI_awaddr),
        .S00_AXI_awburst(S00_AXI_awburst),
        .S00_AXI_awcache(S00_AXI_awcache),
        .S00_AXI_awid(S00_AXI_awid),
        .S00_AXI_awlen(S00_AXI_awlen),
        .S00_AXI_awlock(S00_AXI_awlock),
        .S00_AXI_awprot(S00_AXI_awprot),
        .S00_AXI_awqos(S00_AXI_awqos),
        .S00_AXI_awready(S00_AXI_awready),
        .S00_AXI_awregion(S00_AXI_awregion),
        .S00_AXI_awsize(S00_AXI_awsize),
        .S00_AXI_awvalid(S00_AXI_awvalid),
        .S00_AXI_bid({NLW_inst_S00_AXI_bid_UNCONNECTED[15:2],\^S00_AXI_bid }),
        .S00_AXI_bready(S00_AXI_bready),
        .S00_AXI_bresp(S00_AXI_bresp),
        .S00_AXI_bvalid(S00_AXI_bvalid),
        .S00_AXI_rdata(S00_AXI_rdata),
        .S00_AXI_rid({NLW_inst_S00_AXI_rid_UNCONNECTED[15:2],\^S00_AXI_rid }),
        .S00_AXI_rlast(S00_AXI_rlast),
        .S00_AXI_rready(S00_AXI_rready),
        .S00_AXI_rresp(S00_AXI_rresp),
        .S00_AXI_ruser(S00_AXI_ruser),
        .S00_AXI_rvalid(S00_AXI_rvalid),
        .S00_AXI_wdata(S00_AXI_wdata),
        .S00_AXI_wlast(S00_AXI_wlast),
        .S00_AXI_wready(S00_AXI_wready),
        .S00_AXI_wstrb(S00_AXI_wstrb),
        .S00_AXI_wuser(S00_AXI_wuser),
        .S00_AXI_wvalid(S00_AXI_wvalid),
        .s00_axi_aclk(s00_axi_aclk));
endmodule

(* C_AIE_MODE = "0" *) (* C_M_AXIS_TDATA_WIDTH = "128" *) (* C_M_AXIS_TDEST_WIDTH = "10" *) 
(* C_M_AXIS_TID_WIDTH = "2" *) (* C_M_AXI_ADDR_WIDTH = "64" *) (* C_M_AXI_ARUSER_WIDTH = "1" *) 
(* C_M_AXI_AWUSER_WIDTH = "1" *) (* C_M_AXI_BUSER_WIDTH = "1" *) (* C_M_AXI_DATA_WIDTH = "128" *) 
(* C_M_AXI_ID_WIDTH = "16" *) (* C_M_AXI_RUSER_WIDTH = "1" *) (* C_M_AXI_WUSER_WIDTH = "1" *) 
(* C_NOC_INTF_MODE = "0" *) (* C_NOC_INTF_TYPE = "0" *) (* C_S_AXIS_TDATA_WIDTH = "128" *) 
(* C_S_AXIS_TDEST_WIDTH = "10" *) (* C_S_AXIS_TID_WIDTH = "2" *) (* C_S_AXI_ADDR_WIDTH = "34" *) 
(* C_S_AXI_ARUSER_WIDTH = "0" *) (* C_S_AXI_AWUSER_WIDTH = "0" *) (* C_S_AXI_BUSER_WIDTH = "0" *) 
(* C_S_AXI_DATA_WIDTH = "128" *) (* C_S_AXI_ID_WIDTH = "16" *) (* C_S_AXI_RUSER_WIDTH = "17" *) 
(* C_S_AXI_WUSER_WIDTH = "17" *) (* ORIG_REF_NAME = "ai_noc_v1_0_0_ai_noc" *) (* dont_touch = "true" *) 
module ulp_inst_0_ai_noc_v1_0_0_ai_noc
   (s_axi_aclk,
    s_axi_aresetn,
    s_axi_awid,
    s_axi_awaddr,
    s_axi_awlen,
    s_axi_awsize,
    s_axi_awburst,
    s_axi_awlock,
    s_axi_awcache,
    s_axi_awprot,
    s_axi_awqos,
    s_axi_awregion,
    s_axi_awuser,
    s_axi_awvalid,
    s_axi_awready,
    s_axi_wdata,
    s_axi_wstrb,
    s_axi_wlast,
    s_axi_wuser,
    s_axi_wvalid,
    s_axi_wready,
    s_axi_bid,
    s_axi_bresp,
    s_axi_buser,
    s_axi_bvalid,
    s_axi_bready,
    s_axi_arid,
    s_axi_araddr,
    s_axi_arlen,
    s_axi_arsize,
    s_axi_arburst,
    s_axi_arlock,
    s_axi_arcache,
    s_axi_arprot,
    s_axi_arqos,
    s_axi_arregion,
    s_axi_aruser,
    s_axi_arvalid,
    s_axi_arready,
    s_axi_rid,
    s_axi_rdata,
    s_axi_rresp,
    s_axi_rlast,
    s_axi_ruser,
    s_axi_rvalid,
    s_axi_rready,
    s_axis_aclk,
    s_axis_aresetn,
    s_axis_tready,
    s_axis_tid,
    s_axis_tdest,
    s_axis_tdata,
    s_axis_tkeep,
    s_axis_tlast,
    s_axis_tvalid,
    to_aie_2,
    to_aie_3,
    to_aie_6,
    to_aie_7,
    m_axi_aclk,
    m_axi_aresetn,
    m_axi_awid,
    m_axi_awaddr,
    m_axi_awlen,
    m_axi_awsize,
    m_axi_awburst,
    m_axi_awlock,
    m_axi_awcache,
    m_axi_awprot,
    m_axi_awqos,
    m_axi_arregion,
    m_axi_awregion,
    m_axi_awuser,
    m_axi_awvalid,
    m_axi_awready,
    m_axi_wdata,
    m_axi_wstrb,
    m_axi_wlast,
    m_axi_wuser,
    m_axi_wvalid,
    m_axi_wready,
    m_axi_bid,
    m_axi_bresp,
    m_axi_buser,
    m_axi_bvalid,
    m_axi_bready,
    m_axi_arid,
    m_axi_araddr,
    m_axi_arlen,
    m_axi_arsize,
    m_axi_arburst,
    m_axi_arlock,
    m_axi_arcache,
    m_axi_arprot,
    m_axi_arqos,
    m_axi_aruser,
    m_axi_arvalid,
    m_axi_arready,
    m_axi_rid,
    m_axi_rdata,
    m_axi_rresp,
    m_axi_rlast,
    m_axi_ruser,
    m_axi_rvalid,
    m_axi_rready,
    m_axi_destid_wr,
    m_axi_destmode_wr,
    m_axi_destid_rd,
    m_axi_destmode_rd,
    m_axis_aclk,
    m_axis_aresetn,
    m_axis_tvalid,
    m_axis_tid,
    m_axis_tdest,
    m_axis_tdata,
    m_axis_tkeep,
    m_axis_tlast,
    m_axis_tready,
    from_aie_2,
    from_aie_3,
    from_aie_4,
    from_aie_5);
  output s_axi_aclk;
  input s_axi_aresetn;
  input [15:0]s_axi_awid;
  input [33:0]s_axi_awaddr;
  input [7:0]s_axi_awlen;
  input [2:0]s_axi_awsize;
  input [1:0]s_axi_awburst;
  input s_axi_awlock;
  input [3:0]s_axi_awcache;
  input [2:0]s_axi_awprot;
  input [3:0]s_axi_awqos;
  input [3:0]s_axi_awregion;
  input [-1:0]s_axi_awuser;
  input s_axi_awvalid;
  output s_axi_awready;
  input [127:0]s_axi_wdata;
  input [15:0]s_axi_wstrb;
  input s_axi_wlast;
  input [16:0]s_axi_wuser;
  input s_axi_wvalid;
  output s_axi_wready;
  output [15:0]s_axi_bid;
  output [1:0]s_axi_bresp;
  output [-1:0]s_axi_buser;
  output s_axi_bvalid;
  input s_axi_bready;
  input [15:0]s_axi_arid;
  input [33:0]s_axi_araddr;
  input [7:0]s_axi_arlen;
  input [2:0]s_axi_arsize;
  input [1:0]s_axi_arburst;
  input s_axi_arlock;
  input [3:0]s_axi_arcache;
  input [2:0]s_axi_arprot;
  input [3:0]s_axi_arqos;
  input [3:0]s_axi_arregion;
  input [-1:0]s_axi_aruser;
  input s_axi_arvalid;
  output s_axi_arready;
  output [15:0]s_axi_rid;
  output [127:0]s_axi_rdata;
  output [1:0]s_axi_rresp;
  output s_axi_rlast;
  output [16:0]s_axi_ruser;
  output s_axi_rvalid;
  input s_axi_rready;
  output s_axis_aclk;
  input s_axis_aresetn;
  output s_axis_tready;
  input [1:0]s_axis_tid;
  input [9:0]s_axis_tdest;
  input [127:0]s_axis_tdata;
  input [15:0]s_axis_tkeep;
  input s_axis_tlast;
  input s_axis_tvalid;
  output to_aie_2;
  output to_aie_3;
  output to_aie_6;
  output to_aie_7;
  output m_axi_aclk;
  input m_axi_aresetn;
  output [15:0]m_axi_awid;
  output [63:0]m_axi_awaddr;
  output [7:0]m_axi_awlen;
  output [2:0]m_axi_awsize;
  output [1:0]m_axi_awburst;
  output m_axi_awlock;
  output [3:0]m_axi_awcache;
  output [2:0]m_axi_awprot;
  output [3:0]m_axi_awqos;
  output [3:0]m_axi_arregion;
  output [3:0]m_axi_awregion;
  output [0:0]m_axi_awuser;
  output m_axi_awvalid;
  input m_axi_awready;
  output [127:0]m_axi_wdata;
  output [15:0]m_axi_wstrb;
  output m_axi_wlast;
  output [0:0]m_axi_wuser;
  output m_axi_wvalid;
  input m_axi_wready;
  input [15:0]m_axi_bid;
  input [1:0]m_axi_bresp;
  input [0:0]m_axi_buser;
  input m_axi_bvalid;
  output m_axi_bready;
  output [15:0]m_axi_arid;
  output [63:0]m_axi_araddr;
  output [7:0]m_axi_arlen;
  output [2:0]m_axi_arsize;
  output [1:0]m_axi_arburst;
  output m_axi_arlock;
  output [3:0]m_axi_arcache;
  output [2:0]m_axi_arprot;
  output [3:0]m_axi_arqos;
  output [0:0]m_axi_aruser;
  output m_axi_arvalid;
  input m_axi_arready;
  input [15:0]m_axi_rid;
  input [127:0]m_axi_rdata;
  input [1:0]m_axi_rresp;
  input m_axi_rlast;
  input [0:0]m_axi_ruser;
  input m_axi_rvalid;
  output m_axi_rready;
  output [11:0]m_axi_destid_wr;
  output m_axi_destmode_wr;
  output [11:0]m_axi_destid_rd;
  output m_axi_destmode_rd;
  output m_axis_aclk;
  input m_axis_aresetn;
  output m_axis_tvalid;
  output [1:0]m_axis_tid;
  output [9:0]m_axis_tdest;
  output [127:0]m_axis_tdata;
  output [15:0]m_axis_tkeep;
  output m_axis_tlast;
  input m_axis_tready;
  input from_aie_2;
  input from_aie_3;
  input from_aie_4;
  input from_aie_5;

  wire \<const0> ;
  wire s_axi_aclk;
  wire [33:0]s_axi_araddr;
  wire [1:0]s_axi_arburst;
  wire [3:0]s_axi_arcache;
  wire [15:0]s_axi_arid;
  wire [7:0]s_axi_arlen;
  wire s_axi_arlock;
  wire [2:0]s_axi_arprot;
  wire [3:0]s_axi_arqos;
  wire s_axi_arready;
  wire [3:0]s_axi_arregion;
  wire [2:0]s_axi_arsize;
  wire [-1:0]s_axi_aruser;
  wire s_axi_arvalid;
  wire [33:0]s_axi_awaddr;
  wire [1:0]s_axi_awburst;
  wire [3:0]s_axi_awcache;
  wire [15:0]s_axi_awid;
  wire [7:0]s_axi_awlen;
  wire s_axi_awlock;
  wire [2:0]s_axi_awprot;
  wire [3:0]s_axi_awqos;
  wire s_axi_awready;
  wire [3:0]s_axi_awregion;
  wire [2:0]s_axi_awsize;
  wire [-1:0]s_axi_awuser;
  wire s_axi_awvalid;
  wire [1:0]\^s_axi_bid ;
  wire s_axi_bready;
  wire [1:0]s_axi_bresp;
  wire [-1:0]s_axi_buser;
  wire s_axi_bvalid;
  wire [127:0]s_axi_rdata;
  wire [1:0]\^s_axi_rid ;
  wire s_axi_rlast;
  wire s_axi_rready;
  wire [1:0]s_axi_rresp;
  wire [16:0]s_axi_ruser;
  wire s_axi_rvalid;
  wire [127:0]s_axi_wdata;
  wire s_axi_wlast;
  wire s_axi_wready;
  wire [15:0]s_axi_wstrb;
  wire [16:0]s_axi_wuser;
  wire s_axi_wvalid;
  wire to_aie_2;
  wire to_aie_3;
  wire to_aie_6;
  wire to_aie_7;
  wire NLW_noc_ai_mm_FROM_NOC_UNCONNECTED;
  wire [63:34]NLW_noc_ai_mm_S_AXI_ARADDR_UNCONNECTED;
  wire [17:2]NLW_noc_ai_mm_S_AXI_ARUSER_UNCONNECTED;
  wire [63:34]NLW_noc_ai_mm_S_AXI_AWADDR_UNCONNECTED;
  wire [17:2]NLW_noc_ai_mm_S_AXI_AWUSER_UNCONNECTED;
  wire [15:2]NLW_noc_ai_mm_S_AXI_BUSER_UNCONNECTED;
  wire [9:0]NLW_noc_ai_mm_S_AXI_TDEST_UNCONNECTED;
  wire [5:0]NLW_noc_ai_mm_S_AXI_WID_UNCONNECTED;

  assign m_axi_aclk = \<const0> ;
  assign m_axi_araddr[63] = \<const0> ;
  assign m_axi_araddr[62] = \<const0> ;
  assign m_axi_araddr[61] = \<const0> ;
  assign m_axi_araddr[60] = \<const0> ;
  assign m_axi_araddr[59] = \<const0> ;
  assign m_axi_araddr[58] = \<const0> ;
  assign m_axi_araddr[57] = \<const0> ;
  assign m_axi_araddr[56] = \<const0> ;
  assign m_axi_araddr[55] = \<const0> ;
  assign m_axi_araddr[54] = \<const0> ;
  assign m_axi_araddr[53] = \<const0> ;
  assign m_axi_araddr[52] = \<const0> ;
  assign m_axi_araddr[51] = \<const0> ;
  assign m_axi_araddr[50] = \<const0> ;
  assign m_axi_araddr[49] = \<const0> ;
  assign m_axi_araddr[48] = \<const0> ;
  assign m_axi_araddr[47] = \<const0> ;
  assign m_axi_araddr[46] = \<const0> ;
  assign m_axi_araddr[45] = \<const0> ;
  assign m_axi_araddr[44] = \<const0> ;
  assign m_axi_araddr[43] = \<const0> ;
  assign m_axi_araddr[42] = \<const0> ;
  assign m_axi_araddr[41] = \<const0> ;
  assign m_axi_araddr[40] = \<const0> ;
  assign m_axi_araddr[39] = \<const0> ;
  assign m_axi_araddr[38] = \<const0> ;
  assign m_axi_araddr[37] = \<const0> ;
  assign m_axi_araddr[36] = \<const0> ;
  assign m_axi_araddr[35] = \<const0> ;
  assign m_axi_araddr[34] = \<const0> ;
  assign m_axi_araddr[33] = \<const0> ;
  assign m_axi_araddr[32] = \<const0> ;
  assign m_axi_araddr[31] = \<const0> ;
  assign m_axi_araddr[30] = \<const0> ;
  assign m_axi_araddr[29] = \<const0> ;
  assign m_axi_araddr[28] = \<const0> ;
  assign m_axi_araddr[27] = \<const0> ;
  assign m_axi_araddr[26] = \<const0> ;
  assign m_axi_araddr[25] = \<const0> ;
  assign m_axi_araddr[24] = \<const0> ;
  assign m_axi_araddr[23] = \<const0> ;
  assign m_axi_araddr[22] = \<const0> ;
  assign m_axi_araddr[21] = \<const0> ;
  assign m_axi_araddr[20] = \<const0> ;
  assign m_axi_araddr[19] = \<const0> ;
  assign m_axi_araddr[18] = \<const0> ;
  assign m_axi_araddr[17] = \<const0> ;
  assign m_axi_araddr[16] = \<const0> ;
  assign m_axi_araddr[15] = \<const0> ;
  assign m_axi_araddr[14] = \<const0> ;
  assign m_axi_araddr[13] = \<const0> ;
  assign m_axi_araddr[12] = \<const0> ;
  assign m_axi_araddr[11] = \<const0> ;
  assign m_axi_araddr[10] = \<const0> ;
  assign m_axi_araddr[9] = \<const0> ;
  assign m_axi_araddr[8] = \<const0> ;
  assign m_axi_araddr[7] = \<const0> ;
  assign m_axi_araddr[6] = \<const0> ;
  assign m_axi_araddr[5] = \<const0> ;
  assign m_axi_araddr[4] = \<const0> ;
  assign m_axi_araddr[3] = \<const0> ;
  assign m_axi_araddr[2] = \<const0> ;
  assign m_axi_araddr[1] = \<const0> ;
  assign m_axi_araddr[0] = \<const0> ;
  assign m_axi_arburst[1] = \<const0> ;
  assign m_axi_arburst[0] = \<const0> ;
  assign m_axi_arcache[3] = \<const0> ;
  assign m_axi_arcache[2] = \<const0> ;
  assign m_axi_arcache[1] = \<const0> ;
  assign m_axi_arcache[0] = \<const0> ;
  assign m_axi_arid[15] = \<const0> ;
  assign m_axi_arid[14] = \<const0> ;
  assign m_axi_arid[13] = \<const0> ;
  assign m_axi_arid[12] = \<const0> ;
  assign m_axi_arid[11] = \<const0> ;
  assign m_axi_arid[10] = \<const0> ;
  assign m_axi_arid[9] = \<const0> ;
  assign m_axi_arid[8] = \<const0> ;
  assign m_axi_arid[7] = \<const0> ;
  assign m_axi_arid[6] = \<const0> ;
  assign m_axi_arid[5] = \<const0> ;
  assign m_axi_arid[4] = \<const0> ;
  assign m_axi_arid[3] = \<const0> ;
  assign m_axi_arid[2] = \<const0> ;
  assign m_axi_arid[1] = \<const0> ;
  assign m_axi_arid[0] = \<const0> ;
  assign m_axi_arlen[7] = \<const0> ;
  assign m_axi_arlen[6] = \<const0> ;
  assign m_axi_arlen[5] = \<const0> ;
  assign m_axi_arlen[4] = \<const0> ;
  assign m_axi_arlen[3] = \<const0> ;
  assign m_axi_arlen[2] = \<const0> ;
  assign m_axi_arlen[1] = \<const0> ;
  assign m_axi_arlen[0] = \<const0> ;
  assign m_axi_arlock = \<const0> ;
  assign m_axi_arprot[2] = \<const0> ;
  assign m_axi_arprot[1] = \<const0> ;
  assign m_axi_arprot[0] = \<const0> ;
  assign m_axi_arqos[3] = \<const0> ;
  assign m_axi_arqos[2] = \<const0> ;
  assign m_axi_arqos[1] = \<const0> ;
  assign m_axi_arqos[0] = \<const0> ;
  assign m_axi_arregion[3] = \<const0> ;
  assign m_axi_arregion[2] = \<const0> ;
  assign m_axi_arregion[1] = \<const0> ;
  assign m_axi_arregion[0] = \<const0> ;
  assign m_axi_arsize[2] = \<const0> ;
  assign m_axi_arsize[1] = \<const0> ;
  assign m_axi_arsize[0] = \<const0> ;
  assign m_axi_aruser[0] = \<const0> ;
  assign m_axi_arvalid = \<const0> ;
  assign m_axi_awaddr[63] = \<const0> ;
  assign m_axi_awaddr[62] = \<const0> ;
  assign m_axi_awaddr[61] = \<const0> ;
  assign m_axi_awaddr[60] = \<const0> ;
  assign m_axi_awaddr[59] = \<const0> ;
  assign m_axi_awaddr[58] = \<const0> ;
  assign m_axi_awaddr[57] = \<const0> ;
  assign m_axi_awaddr[56] = \<const0> ;
  assign m_axi_awaddr[55] = \<const0> ;
  assign m_axi_awaddr[54] = \<const0> ;
  assign m_axi_awaddr[53] = \<const0> ;
  assign m_axi_awaddr[52] = \<const0> ;
  assign m_axi_awaddr[51] = \<const0> ;
  assign m_axi_awaddr[50] = \<const0> ;
  assign m_axi_awaddr[49] = \<const0> ;
  assign m_axi_awaddr[48] = \<const0> ;
  assign m_axi_awaddr[47] = \<const0> ;
  assign m_axi_awaddr[46] = \<const0> ;
  assign m_axi_awaddr[45] = \<const0> ;
  assign m_axi_awaddr[44] = \<const0> ;
  assign m_axi_awaddr[43] = \<const0> ;
  assign m_axi_awaddr[42] = \<const0> ;
  assign m_axi_awaddr[41] = \<const0> ;
  assign m_axi_awaddr[40] = \<const0> ;
  assign m_axi_awaddr[39] = \<const0> ;
  assign m_axi_awaddr[38] = \<const0> ;
  assign m_axi_awaddr[37] = \<const0> ;
  assign m_axi_awaddr[36] = \<const0> ;
  assign m_axi_awaddr[35] = \<const0> ;
  assign m_axi_awaddr[34] = \<const0> ;
  assign m_axi_awaddr[33] = \<const0> ;
  assign m_axi_awaddr[32] = \<const0> ;
  assign m_axi_awaddr[31] = \<const0> ;
  assign m_axi_awaddr[30] = \<const0> ;
  assign m_axi_awaddr[29] = \<const0> ;
  assign m_axi_awaddr[28] = \<const0> ;
  assign m_axi_awaddr[27] = \<const0> ;
  assign m_axi_awaddr[26] = \<const0> ;
  assign m_axi_awaddr[25] = \<const0> ;
  assign m_axi_awaddr[24] = \<const0> ;
  assign m_axi_awaddr[23] = \<const0> ;
  assign m_axi_awaddr[22] = \<const0> ;
  assign m_axi_awaddr[21] = \<const0> ;
  assign m_axi_awaddr[20] = \<const0> ;
  assign m_axi_awaddr[19] = \<const0> ;
  assign m_axi_awaddr[18] = \<const0> ;
  assign m_axi_awaddr[17] = \<const0> ;
  assign m_axi_awaddr[16] = \<const0> ;
  assign m_axi_awaddr[15] = \<const0> ;
  assign m_axi_awaddr[14] = \<const0> ;
  assign m_axi_awaddr[13] = \<const0> ;
  assign m_axi_awaddr[12] = \<const0> ;
  assign m_axi_awaddr[11] = \<const0> ;
  assign m_axi_awaddr[10] = \<const0> ;
  assign m_axi_awaddr[9] = \<const0> ;
  assign m_axi_awaddr[8] = \<const0> ;
  assign m_axi_awaddr[7] = \<const0> ;
  assign m_axi_awaddr[6] = \<const0> ;
  assign m_axi_awaddr[5] = \<const0> ;
  assign m_axi_awaddr[4] = \<const0> ;
  assign m_axi_awaddr[3] = \<const0> ;
  assign m_axi_awaddr[2] = \<const0> ;
  assign m_axi_awaddr[1] = \<const0> ;
  assign m_axi_awaddr[0] = \<const0> ;
  assign m_axi_awburst[1] = \<const0> ;
  assign m_axi_awburst[0] = \<const0> ;
  assign m_axi_awcache[3] = \<const0> ;
  assign m_axi_awcache[2] = \<const0> ;
  assign m_axi_awcache[1] = \<const0> ;
  assign m_axi_awcache[0] = \<const0> ;
  assign m_axi_awid[15] = \<const0> ;
  assign m_axi_awid[14] = \<const0> ;
  assign m_axi_awid[13] = \<const0> ;
  assign m_axi_awid[12] = \<const0> ;
  assign m_axi_awid[11] = \<const0> ;
  assign m_axi_awid[10] = \<const0> ;
  assign m_axi_awid[9] = \<const0> ;
  assign m_axi_awid[8] = \<const0> ;
  assign m_axi_awid[7] = \<const0> ;
  assign m_axi_awid[6] = \<const0> ;
  assign m_axi_awid[5] = \<const0> ;
  assign m_axi_awid[4] = \<const0> ;
  assign m_axi_awid[3] = \<const0> ;
  assign m_axi_awid[2] = \<const0> ;
  assign m_axi_awid[1] = \<const0> ;
  assign m_axi_awid[0] = \<const0> ;
  assign m_axi_awlen[7] = \<const0> ;
  assign m_axi_awlen[6] = \<const0> ;
  assign m_axi_awlen[5] = \<const0> ;
  assign m_axi_awlen[4] = \<const0> ;
  assign m_axi_awlen[3] = \<const0> ;
  assign m_axi_awlen[2] = \<const0> ;
  assign m_axi_awlen[1] = \<const0> ;
  assign m_axi_awlen[0] = \<const0> ;
  assign m_axi_awlock = \<const0> ;
  assign m_axi_awprot[2] = \<const0> ;
  assign m_axi_awprot[1] = \<const0> ;
  assign m_axi_awprot[0] = \<const0> ;
  assign m_axi_awqos[3] = \<const0> ;
  assign m_axi_awqos[2] = \<const0> ;
  assign m_axi_awqos[1] = \<const0> ;
  assign m_axi_awqos[0] = \<const0> ;
  assign m_axi_awregion[3] = \<const0> ;
  assign m_axi_awregion[2] = \<const0> ;
  assign m_axi_awregion[1] = \<const0> ;
  assign m_axi_awregion[0] = \<const0> ;
  assign m_axi_awsize[2] = \<const0> ;
  assign m_axi_awsize[1] = \<const0> ;
  assign m_axi_awsize[0] = \<const0> ;
  assign m_axi_awuser[0] = \<const0> ;
  assign m_axi_awvalid = \<const0> ;
  assign m_axi_bready = \<const0> ;
  assign m_axi_destid_rd[11] = \<const0> ;
  assign m_axi_destid_rd[10] = \<const0> ;
  assign m_axi_destid_rd[9] = \<const0> ;
  assign m_axi_destid_rd[8] = \<const0> ;
  assign m_axi_destid_rd[7] = \<const0> ;
  assign m_axi_destid_rd[6] = \<const0> ;
  assign m_axi_destid_rd[5] = \<const0> ;
  assign m_axi_destid_rd[4] = \<const0> ;
  assign m_axi_destid_rd[3] = \<const0> ;
  assign m_axi_destid_rd[2] = \<const0> ;
  assign m_axi_destid_rd[1] = \<const0> ;
  assign m_axi_destid_rd[0] = \<const0> ;
  assign m_axi_destid_wr[11] = \<const0> ;
  assign m_axi_destid_wr[10] = \<const0> ;
  assign m_axi_destid_wr[9] = \<const0> ;
  assign m_axi_destid_wr[8] = \<const0> ;
  assign m_axi_destid_wr[7] = \<const0> ;
  assign m_axi_destid_wr[6] = \<const0> ;
  assign m_axi_destid_wr[5] = \<const0> ;
  assign m_axi_destid_wr[4] = \<const0> ;
  assign m_axi_destid_wr[3] = \<const0> ;
  assign m_axi_destid_wr[2] = \<const0> ;
  assign m_axi_destid_wr[1] = \<const0> ;
  assign m_axi_destid_wr[0] = \<const0> ;
  assign m_axi_destmode_rd = \<const0> ;
  assign m_axi_destmode_wr = \<const0> ;
  assign m_axi_rready = \<const0> ;
  assign m_axi_wdata[127] = \<const0> ;
  assign m_axi_wdata[126] = \<const0> ;
  assign m_axi_wdata[125] = \<const0> ;
  assign m_axi_wdata[124] = \<const0> ;
  assign m_axi_wdata[123] = \<const0> ;
  assign m_axi_wdata[122] = \<const0> ;
  assign m_axi_wdata[121] = \<const0> ;
  assign m_axi_wdata[120] = \<const0> ;
  assign m_axi_wdata[119] = \<const0> ;
  assign m_axi_wdata[118] = \<const0> ;
  assign m_axi_wdata[117] = \<const0> ;
  assign m_axi_wdata[116] = \<const0> ;
  assign m_axi_wdata[115] = \<const0> ;
  assign m_axi_wdata[114] = \<const0> ;
  assign m_axi_wdata[113] = \<const0> ;
  assign m_axi_wdata[112] = \<const0> ;
  assign m_axi_wdata[111] = \<const0> ;
  assign m_axi_wdata[110] = \<const0> ;
  assign m_axi_wdata[109] = \<const0> ;
  assign m_axi_wdata[108] = \<const0> ;
  assign m_axi_wdata[107] = \<const0> ;
  assign m_axi_wdata[106] = \<const0> ;
  assign m_axi_wdata[105] = \<const0> ;
  assign m_axi_wdata[104] = \<const0> ;
  assign m_axi_wdata[103] = \<const0> ;
  assign m_axi_wdata[102] = \<const0> ;
  assign m_axi_wdata[101] = \<const0> ;
  assign m_axi_wdata[100] = \<const0> ;
  assign m_axi_wdata[99] = \<const0> ;
  assign m_axi_wdata[98] = \<const0> ;
  assign m_axi_wdata[97] = \<const0> ;
  assign m_axi_wdata[96] = \<const0> ;
  assign m_axi_wdata[95] = \<const0> ;
  assign m_axi_wdata[94] = \<const0> ;
  assign m_axi_wdata[93] = \<const0> ;
  assign m_axi_wdata[92] = \<const0> ;
  assign m_axi_wdata[91] = \<const0> ;
  assign m_axi_wdata[90] = \<const0> ;
  assign m_axi_wdata[89] = \<const0> ;
  assign m_axi_wdata[88] = \<const0> ;
  assign m_axi_wdata[87] = \<const0> ;
  assign m_axi_wdata[86] = \<const0> ;
  assign m_axi_wdata[85] = \<const0> ;
  assign m_axi_wdata[84] = \<const0> ;
  assign m_axi_wdata[83] = \<const0> ;
  assign m_axi_wdata[82] = \<const0> ;
  assign m_axi_wdata[81] = \<const0> ;
  assign m_axi_wdata[80] = \<const0> ;
  assign m_axi_wdata[79] = \<const0> ;
  assign m_axi_wdata[78] = \<const0> ;
  assign m_axi_wdata[77] = \<const0> ;
  assign m_axi_wdata[76] = \<const0> ;
  assign m_axi_wdata[75] = \<const0> ;
  assign m_axi_wdata[74] = \<const0> ;
  assign m_axi_wdata[73] = \<const0> ;
  assign m_axi_wdata[72] = \<const0> ;
  assign m_axi_wdata[71] = \<const0> ;
  assign m_axi_wdata[70] = \<const0> ;
  assign m_axi_wdata[69] = \<const0> ;
  assign m_axi_wdata[68] = \<const0> ;
  assign m_axi_wdata[67] = \<const0> ;
  assign m_axi_wdata[66] = \<const0> ;
  assign m_axi_wdata[65] = \<const0> ;
  assign m_axi_wdata[64] = \<const0> ;
  assign m_axi_wdata[63] = \<const0> ;
  assign m_axi_wdata[62] = \<const0> ;
  assign m_axi_wdata[61] = \<const0> ;
  assign m_axi_wdata[60] = \<const0> ;
  assign m_axi_wdata[59] = \<const0> ;
  assign m_axi_wdata[58] = \<const0> ;
  assign m_axi_wdata[57] = \<const0> ;
  assign m_axi_wdata[56] = \<const0> ;
  assign m_axi_wdata[55] = \<const0> ;
  assign m_axi_wdata[54] = \<const0> ;
  assign m_axi_wdata[53] = \<const0> ;
  assign m_axi_wdata[52] = \<const0> ;
  assign m_axi_wdata[51] = \<const0> ;
  assign m_axi_wdata[50] = \<const0> ;
  assign m_axi_wdata[49] = \<const0> ;
  assign m_axi_wdata[48] = \<const0> ;
  assign m_axi_wdata[47] = \<const0> ;
  assign m_axi_wdata[46] = \<const0> ;
  assign m_axi_wdata[45] = \<const0> ;
  assign m_axi_wdata[44] = \<const0> ;
  assign m_axi_wdata[43] = \<const0> ;
  assign m_axi_wdata[42] = \<const0> ;
  assign m_axi_wdata[41] = \<const0> ;
  assign m_axi_wdata[40] = \<const0> ;
  assign m_axi_wdata[39] = \<const0> ;
  assign m_axi_wdata[38] = \<const0> ;
  assign m_axi_wdata[37] = \<const0> ;
  assign m_axi_wdata[36] = \<const0> ;
  assign m_axi_wdata[35] = \<const0> ;
  assign m_axi_wdata[34] = \<const0> ;
  assign m_axi_wdata[33] = \<const0> ;
  assign m_axi_wdata[32] = \<const0> ;
  assign m_axi_wdata[31] = \<const0> ;
  assign m_axi_wdata[30] = \<const0> ;
  assign m_axi_wdata[29] = \<const0> ;
  assign m_axi_wdata[28] = \<const0> ;
  assign m_axi_wdata[27] = \<const0> ;
  assign m_axi_wdata[26] = \<const0> ;
  assign m_axi_wdata[25] = \<const0> ;
  assign m_axi_wdata[24] = \<const0> ;
  assign m_axi_wdata[23] = \<const0> ;
  assign m_axi_wdata[22] = \<const0> ;
  assign m_axi_wdata[21] = \<const0> ;
  assign m_axi_wdata[20] = \<const0> ;
  assign m_axi_wdata[19] = \<const0> ;
  assign m_axi_wdata[18] = \<const0> ;
  assign m_axi_wdata[17] = \<const0> ;
  assign m_axi_wdata[16] = \<const0> ;
  assign m_axi_wdata[15] = \<const0> ;
  assign m_axi_wdata[14] = \<const0> ;
  assign m_axi_wdata[13] = \<const0> ;
  assign m_axi_wdata[12] = \<const0> ;
  assign m_axi_wdata[11] = \<const0> ;
  assign m_axi_wdata[10] = \<const0> ;
  assign m_axi_wdata[9] = \<const0> ;
  assign m_axi_wdata[8] = \<const0> ;
  assign m_axi_wdata[7] = \<const0> ;
  assign m_axi_wdata[6] = \<const0> ;
  assign m_axi_wdata[5] = \<const0> ;
  assign m_axi_wdata[4] = \<const0> ;
  assign m_axi_wdata[3] = \<const0> ;
  assign m_axi_wdata[2] = \<const0> ;
  assign m_axi_wdata[1] = \<const0> ;
  assign m_axi_wdata[0] = \<const0> ;
  assign m_axi_wlast = \<const0> ;
  assign m_axi_wstrb[15] = \<const0> ;
  assign m_axi_wstrb[14] = \<const0> ;
  assign m_axi_wstrb[13] = \<const0> ;
  assign m_axi_wstrb[12] = \<const0> ;
  assign m_axi_wstrb[11] = \<const0> ;
  assign m_axi_wstrb[10] = \<const0> ;
  assign m_axi_wstrb[9] = \<const0> ;
  assign m_axi_wstrb[8] = \<const0> ;
  assign m_axi_wstrb[7] = \<const0> ;
  assign m_axi_wstrb[6] = \<const0> ;
  assign m_axi_wstrb[5] = \<const0> ;
  assign m_axi_wstrb[4] = \<const0> ;
  assign m_axi_wstrb[3] = \<const0> ;
  assign m_axi_wstrb[2] = \<const0> ;
  assign m_axi_wstrb[1] = \<const0> ;
  assign m_axi_wstrb[0] = \<const0> ;
  assign m_axi_wuser[0] = \<const0> ;
  assign m_axi_wvalid = \<const0> ;
  assign m_axis_aclk = \<const0> ;
  assign m_axis_tdata[127] = \<const0> ;
  assign m_axis_tdata[126] = \<const0> ;
  assign m_axis_tdata[125] = \<const0> ;
  assign m_axis_tdata[124] = \<const0> ;
  assign m_axis_tdata[123] = \<const0> ;
  assign m_axis_tdata[122] = \<const0> ;
  assign m_axis_tdata[121] = \<const0> ;
  assign m_axis_tdata[120] = \<const0> ;
  assign m_axis_tdata[119] = \<const0> ;
  assign m_axis_tdata[118] = \<const0> ;
  assign m_axis_tdata[117] = \<const0> ;
  assign m_axis_tdata[116] = \<const0> ;
  assign m_axis_tdata[115] = \<const0> ;
  assign m_axis_tdata[114] = \<const0> ;
  assign m_axis_tdata[113] = \<const0> ;
  assign m_axis_tdata[112] = \<const0> ;
  assign m_axis_tdata[111] = \<const0> ;
  assign m_axis_tdata[110] = \<const0> ;
  assign m_axis_tdata[109] = \<const0> ;
  assign m_axis_tdata[108] = \<const0> ;
  assign m_axis_tdata[107] = \<const0> ;
  assign m_axis_tdata[106] = \<const0> ;
  assign m_axis_tdata[105] = \<const0> ;
  assign m_axis_tdata[104] = \<const0> ;
  assign m_axis_tdata[103] = \<const0> ;
  assign m_axis_tdata[102] = \<const0> ;
  assign m_axis_tdata[101] = \<const0> ;
  assign m_axis_tdata[100] = \<const0> ;
  assign m_axis_tdata[99] = \<const0> ;
  assign m_axis_tdata[98] = \<const0> ;
  assign m_axis_tdata[97] = \<const0> ;
  assign m_axis_tdata[96] = \<const0> ;
  assign m_axis_tdata[95] = \<const0> ;
  assign m_axis_tdata[94] = \<const0> ;
  assign m_axis_tdata[93] = \<const0> ;
  assign m_axis_tdata[92] = \<const0> ;
  assign m_axis_tdata[91] = \<const0> ;
  assign m_axis_tdata[90] = \<const0> ;
  assign m_axis_tdata[89] = \<const0> ;
  assign m_axis_tdata[88] = \<const0> ;
  assign m_axis_tdata[87] = \<const0> ;
  assign m_axis_tdata[86] = \<const0> ;
  assign m_axis_tdata[85] = \<const0> ;
  assign m_axis_tdata[84] = \<const0> ;
  assign m_axis_tdata[83] = \<const0> ;
  assign m_axis_tdata[82] = \<const0> ;
  assign m_axis_tdata[81] = \<const0> ;
  assign m_axis_tdata[80] = \<const0> ;
  assign m_axis_tdata[79] = \<const0> ;
  assign m_axis_tdata[78] = \<const0> ;
  assign m_axis_tdata[77] = \<const0> ;
  assign m_axis_tdata[76] = \<const0> ;
  assign m_axis_tdata[75] = \<const0> ;
  assign m_axis_tdata[74] = \<const0> ;
  assign m_axis_tdata[73] = \<const0> ;
  assign m_axis_tdata[72] = \<const0> ;
  assign m_axis_tdata[71] = \<const0> ;
  assign m_axis_tdata[70] = \<const0> ;
  assign m_axis_tdata[69] = \<const0> ;
  assign m_axis_tdata[68] = \<const0> ;
  assign m_axis_tdata[67] = \<const0> ;
  assign m_axis_tdata[66] = \<const0> ;
  assign m_axis_tdata[65] = \<const0> ;
  assign m_axis_tdata[64] = \<const0> ;
  assign m_axis_tdata[63] = \<const0> ;
  assign m_axis_tdata[62] = \<const0> ;
  assign m_axis_tdata[61] = \<const0> ;
  assign m_axis_tdata[60] = \<const0> ;
  assign m_axis_tdata[59] = \<const0> ;
  assign m_axis_tdata[58] = \<const0> ;
  assign m_axis_tdata[57] = \<const0> ;
  assign m_axis_tdata[56] = \<const0> ;
  assign m_axis_tdata[55] = \<const0> ;
  assign m_axis_tdata[54] = \<const0> ;
  assign m_axis_tdata[53] = \<const0> ;
  assign m_axis_tdata[52] = \<const0> ;
  assign m_axis_tdata[51] = \<const0> ;
  assign m_axis_tdata[50] = \<const0> ;
  assign m_axis_tdata[49] = \<const0> ;
  assign m_axis_tdata[48] = \<const0> ;
  assign m_axis_tdata[47] = \<const0> ;
  assign m_axis_tdata[46] = \<const0> ;
  assign m_axis_tdata[45] = \<const0> ;
  assign m_axis_tdata[44] = \<const0> ;
  assign m_axis_tdata[43] = \<const0> ;
  assign m_axis_tdata[42] = \<const0> ;
  assign m_axis_tdata[41] = \<const0> ;
  assign m_axis_tdata[40] = \<const0> ;
  assign m_axis_tdata[39] = \<const0> ;
  assign m_axis_tdata[38] = \<const0> ;
  assign m_axis_tdata[37] = \<const0> ;
  assign m_axis_tdata[36] = \<const0> ;
  assign m_axis_tdata[35] = \<const0> ;
  assign m_axis_tdata[34] = \<const0> ;
  assign m_axis_tdata[33] = \<const0> ;
  assign m_axis_tdata[32] = \<const0> ;
  assign m_axis_tdata[31] = \<const0> ;
  assign m_axis_tdata[30] = \<const0> ;
  assign m_axis_tdata[29] = \<const0> ;
  assign m_axis_tdata[28] = \<const0> ;
  assign m_axis_tdata[27] = \<const0> ;
  assign m_axis_tdata[26] = \<const0> ;
  assign m_axis_tdata[25] = \<const0> ;
  assign m_axis_tdata[24] = \<const0> ;
  assign m_axis_tdata[23] = \<const0> ;
  assign m_axis_tdata[22] = \<const0> ;
  assign m_axis_tdata[21] = \<const0> ;
  assign m_axis_tdata[20] = \<const0> ;
  assign m_axis_tdata[19] = \<const0> ;
  assign m_axis_tdata[18] = \<const0> ;
  assign m_axis_tdata[17] = \<const0> ;
  assign m_axis_tdata[16] = \<const0> ;
  assign m_axis_tdata[15] = \<const0> ;
  assign m_axis_tdata[14] = \<const0> ;
  assign m_axis_tdata[13] = \<const0> ;
  assign m_axis_tdata[12] = \<const0> ;
  assign m_axis_tdata[11] = \<const0> ;
  assign m_axis_tdata[10] = \<const0> ;
  assign m_axis_tdata[9] = \<const0> ;
  assign m_axis_tdata[8] = \<const0> ;
  assign m_axis_tdata[7] = \<const0> ;
  assign m_axis_tdata[6] = \<const0> ;
  assign m_axis_tdata[5] = \<const0> ;
  assign m_axis_tdata[4] = \<const0> ;
  assign m_axis_tdata[3] = \<const0> ;
  assign m_axis_tdata[2] = \<const0> ;
  assign m_axis_tdata[1] = \<const0> ;
  assign m_axis_tdata[0] = \<const0> ;
  assign m_axis_tdest[9] = \<const0> ;
  assign m_axis_tdest[8] = \<const0> ;
  assign m_axis_tdest[7] = \<const0> ;
  assign m_axis_tdest[6] = \<const0> ;
  assign m_axis_tdest[5] = \<const0> ;
  assign m_axis_tdest[4] = \<const0> ;
  assign m_axis_tdest[3] = \<const0> ;
  assign m_axis_tdest[2] = \<const0> ;
  assign m_axis_tdest[1] = \<const0> ;
  assign m_axis_tdest[0] = \<const0> ;
  assign m_axis_tid[1] = \<const0> ;
  assign m_axis_tid[0] = \<const0> ;
  assign m_axis_tkeep[15] = \<const0> ;
  assign m_axis_tkeep[14] = \<const0> ;
  assign m_axis_tkeep[13] = \<const0> ;
  assign m_axis_tkeep[12] = \<const0> ;
  assign m_axis_tkeep[11] = \<const0> ;
  assign m_axis_tkeep[10] = \<const0> ;
  assign m_axis_tkeep[9] = \<const0> ;
  assign m_axis_tkeep[8] = \<const0> ;
  assign m_axis_tkeep[7] = \<const0> ;
  assign m_axis_tkeep[6] = \<const0> ;
  assign m_axis_tkeep[5] = \<const0> ;
  assign m_axis_tkeep[4] = \<const0> ;
  assign m_axis_tkeep[3] = \<const0> ;
  assign m_axis_tkeep[2] = \<const0> ;
  assign m_axis_tkeep[1] = \<const0> ;
  assign m_axis_tkeep[0] = \<const0> ;
  assign m_axis_tlast = \<const0> ;
  assign m_axis_tvalid = \<const0> ;
  assign s_axi_bid[15] = \<const0> ;
  assign s_axi_bid[14] = \<const0> ;
  assign s_axi_bid[13] = \<const0> ;
  assign s_axi_bid[12] = \<const0> ;
  assign s_axi_bid[11] = \<const0> ;
  assign s_axi_bid[10] = \<const0> ;
  assign s_axi_bid[9] = \<const0> ;
  assign s_axi_bid[8] = \<const0> ;
  assign s_axi_bid[7] = \<const0> ;
  assign s_axi_bid[6] = \<const0> ;
  assign s_axi_bid[5] = \<const0> ;
  assign s_axi_bid[4] = \<const0> ;
  assign s_axi_bid[3] = \<const0> ;
  assign s_axi_bid[2] = \<const0> ;
  assign s_axi_bid[1:0] = \^s_axi_bid [1:0];
  assign s_axi_rid[15] = \<const0> ;
  assign s_axi_rid[14] = \<const0> ;
  assign s_axi_rid[13] = \<const0> ;
  assign s_axi_rid[12] = \<const0> ;
  assign s_axi_rid[11] = \<const0> ;
  assign s_axi_rid[10] = \<const0> ;
  assign s_axi_rid[9] = \<const0> ;
  assign s_axi_rid[8] = \<const0> ;
  assign s_axi_rid[7] = \<const0> ;
  assign s_axi_rid[6] = \<const0> ;
  assign s_axi_rid[5] = \<const0> ;
  assign s_axi_rid[4] = \<const0> ;
  assign s_axi_rid[3] = \<const0> ;
  assign s_axi_rid[2] = \<const0> ;
  assign s_axi_rid[1:0] = \^s_axi_rid [1:0];
  assign s_axis_aclk = \<const0> ;
  assign s_axis_tready = \<const0> ;
  GND GND
       (.G(\<const0> ));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* DONT_TOUCH *) 
  AIE_NOC_S_AXI noc_ai_mm
       (.FROM_NOC(NLW_noc_ai_mm_FROM_NOC_UNCONNECTED),
        .S_AXI_ACLK(s_axi_aclk),
        .S_AXI_ARADDR({NLW_noc_ai_mm_S_AXI_ARADDR_UNCONNECTED[63:34],s_axi_araddr}),
        .S_AXI_ARBURST(s_axi_arburst),
        .S_AXI_ARCACHE(s_axi_arcache),
        .S_AXI_ARID(s_axi_arid[1:0]),
        .S_AXI_ARLEN(s_axi_arlen),
        .S_AXI_ARLOCK(s_axi_arlock),
        .S_AXI_ARPROT(s_axi_arprot),
        .S_AXI_ARQOS(s_axi_arqos),
        .S_AXI_ARREADY(s_axi_arready),
        .S_AXI_ARREGION(s_axi_arregion),
        .S_AXI_ARSIZE(s_axi_arsize),
        .S_AXI_ARUSER({NLW_noc_ai_mm_S_AXI_ARUSER_UNCONNECTED[17:2],s_axi_aruser[-1],s_axi_aruser[0]}),
        .S_AXI_ARVALID(s_axi_arvalid),
        .S_AXI_AWADDR({NLW_noc_ai_mm_S_AXI_AWADDR_UNCONNECTED[63:34],s_axi_awaddr}),
        .S_AXI_AWBURST(s_axi_awburst),
        .S_AXI_AWCACHE(s_axi_awcache),
        .S_AXI_AWID(s_axi_awid[1:0]),
        .S_AXI_AWLEN(s_axi_awlen),
        .S_AXI_AWLOCK(s_axi_awlock),
        .S_AXI_AWPROT(s_axi_awprot),
        .S_AXI_AWQOS(s_axi_awqos),
        .S_AXI_AWREADY(s_axi_awready),
        .S_AXI_AWREGION(s_axi_awregion),
        .S_AXI_AWSIZE(s_axi_awsize),
        .S_AXI_AWUSER({NLW_noc_ai_mm_S_AXI_AWUSER_UNCONNECTED[17:2],s_axi_awuser[-1],s_axi_awuser[0]}),
        .S_AXI_AWVALID(s_axi_awvalid),
        .S_AXI_BID(\^s_axi_bid ),
        .S_AXI_BREADY(s_axi_bready),
        .S_AXI_BRESP(s_axi_bresp),
        .S_AXI_BUSER({NLW_noc_ai_mm_S_AXI_BUSER_UNCONNECTED[15:2],s_axi_buser[-1],s_axi_buser[0]}),
        .S_AXI_BVALID(s_axi_bvalid),
        .S_AXI_RDATA(s_axi_rdata),
        .S_AXI_RID(\^s_axi_rid ),
        .S_AXI_RLAST(s_axi_rlast),
        .S_AXI_RREADY(s_axi_rready),
        .S_AXI_RRESP(s_axi_rresp),
        .S_AXI_RUSER(s_axi_ruser),
        .S_AXI_RVALID(s_axi_rvalid),
        .S_AXI_TDEST(NLW_noc_ai_mm_S_AXI_TDEST_UNCONNECTED[9:0]),
        .S_AXI_WDATA(s_axi_wdata),
        .S_AXI_WID(NLW_noc_ai_mm_S_AXI_WID_UNCONNECTED[5:0]),
        .S_AXI_WLAST(s_axi_wlast),
        .S_AXI_WREADY(s_axi_wready),
        .S_AXI_WSTRB(s_axi_wstrb),
        .S_AXI_WUSER(s_axi_wuser),
        .S_AXI_WVALID(s_axi_wvalid),
        .TO_AIE_2(to_aie_2),
        .TO_AIE_3(to_aie_3),
        .TO_AIE_6(to_aie_6),
        .TO_AIE_7(to_aie_7));
endmodule

(* X_CORE_INFO = "axi_firewall_v1_2_2_top,Vivado 2022.2" *) 
module ulp_inst_0_axi_dbg_fw_0
   (aclk,
    aresetn,
    s_axi_awid,
    s_axi_awaddr,
    s_axi_awlen,
    s_axi_awsize,
    s_axi_awburst,
    s_axi_awlock,
    s_axi_awcache,
    s_axi_awprot,
    s_axi_awqos,
    s_axi_awregion,
    s_axi_awuser,
    s_axi_awvalid,
    s_axi_awready,
    s_axi_wdata,
    s_axi_wstrb,
    s_axi_wlast,
    s_axi_wvalid,
    s_axi_wready,
    s_axi_bid,
    s_axi_bresp,
    s_axi_bvalid,
    s_axi_bready,
    s_axi_arid,
    s_axi_araddr,
    s_axi_arlen,
    s_axi_arsize,
    s_axi_arburst,
    s_axi_arlock,
    s_axi_arcache,
    s_axi_arprot,
    s_axi_arqos,
    s_axi_arregion,
    s_axi_aruser,
    s_axi_arvalid,
    s_axi_arready,
    s_axi_rid,
    s_axi_rdata,
    s_axi_rresp,
    s_axi_rlast,
    s_axi_rvalid,
    s_axi_rready,
    m_axi_awid,
    m_axi_awaddr,
    m_axi_awlen,
    m_axi_awsize,
    m_axi_awburst,
    m_axi_awlock,
    m_axi_awcache,
    m_axi_awprot,
    m_axi_awqos,
    m_axi_awregion,
    m_axi_awuser,
    m_axi_awvalid,
    m_axi_awready,
    m_axi_wdata,
    m_axi_wstrb,
    m_axi_wlast,
    m_axi_wvalid,
    m_axi_wready,
    m_axi_bid,
    m_axi_bresp,
    m_axi_bvalid,
    m_axi_bready,
    m_axi_arid,
    m_axi_araddr,
    m_axi_arlen,
    m_axi_arsize,
    m_axi_arburst,
    m_axi_arlock,
    m_axi_arcache,
    m_axi_arprot,
    m_axi_arqos,
    m_axi_arregion,
    m_axi_aruser,
    m_axi_arvalid,
    m_axi_arready,
    m_axi_rid,
    m_axi_rdata,
    m_axi_rresp,
    m_axi_rlast,
    m_axi_rvalid,
    m_axi_rready,
    s_axi_ctl_awaddr,
    s_axi_ctl_awvalid,
    s_axi_ctl_awready,
    s_axi_ctl_wdata,
    s_axi_ctl_wstrb,
    s_axi_ctl_wvalid,
    s_axi_ctl_wready,
    s_axi_ctl_bresp,
    s_axi_ctl_bvalid,
    s_axi_ctl_bready,
    s_axi_ctl_araddr,
    s_axi_ctl_arvalid,
    s_axi_ctl_arready,
    s_axi_ctl_rdata,
    s_axi_ctl_rresp,
    s_axi_ctl_rvalid,
    s_axi_ctl_rready,
    mi_w_error,
    mi_r_error,
    ip2intc_irpt);
  input aclk;
  input aresetn;
  input [1:0]s_axi_awid;
  input [63:0]s_axi_awaddr;
  input [7:0]s_axi_awlen;
  input [2:0]s_axi_awsize;
  input [1:0]s_axi_awburst;
  input [0:0]s_axi_awlock;
  input [3:0]s_axi_awcache;
  input [2:0]s_axi_awprot;
  input [3:0]s_axi_awqos;
  input [3:0]s_axi_awregion;
  input [17:0]s_axi_awuser;
  input s_axi_awvalid;
  output s_axi_awready;
  input [127:0]s_axi_wdata;
  input [15:0]s_axi_wstrb;
  input s_axi_wlast;
  input s_axi_wvalid;
  output s_axi_wready;
  output [1:0]s_axi_bid;
  output [1:0]s_axi_bresp;
  output s_axi_bvalid;
  input s_axi_bready;
  input [1:0]s_axi_arid;
  input [63:0]s_axi_araddr;
  input [7:0]s_axi_arlen;
  input [2:0]s_axi_arsize;
  input [1:0]s_axi_arburst;
  input [0:0]s_axi_arlock;
  input [3:0]s_axi_arcache;
  input [2:0]s_axi_arprot;
  input [3:0]s_axi_arqos;
  input [3:0]s_axi_arregion;
  input [17:0]s_axi_aruser;
  input s_axi_arvalid;
  output s_axi_arready;
  output [1:0]s_axi_rid;
  output [127:0]s_axi_rdata;
  output [1:0]s_axi_rresp;
  output s_axi_rlast;
  output s_axi_rvalid;
  input s_axi_rready;
  output [1:0]m_axi_awid;
  output [63:0]m_axi_awaddr;
  output [7:0]m_axi_awlen;
  output [2:0]m_axi_awsize;
  output [1:0]m_axi_awburst;
  output [0:0]m_axi_awlock;
  output [3:0]m_axi_awcache;
  output [2:0]m_axi_awprot;
  output [3:0]m_axi_awqos;
  output [3:0]m_axi_awregion;
  output [17:0]m_axi_awuser;
  output m_axi_awvalid;
  input m_axi_awready;
  output [127:0]m_axi_wdata;
  output [15:0]m_axi_wstrb;
  output m_axi_wlast;
  output m_axi_wvalid;
  input m_axi_wready;
  input [1:0]m_axi_bid;
  input [1:0]m_axi_bresp;
  input m_axi_bvalid;
  output m_axi_bready;
  output [1:0]m_axi_arid;
  output [63:0]m_axi_araddr;
  output [7:0]m_axi_arlen;
  output [2:0]m_axi_arsize;
  output [1:0]m_axi_arburst;
  output [0:0]m_axi_arlock;
  output [3:0]m_axi_arcache;
  output [2:0]m_axi_arprot;
  output [3:0]m_axi_arqos;
  output [3:0]m_axi_arregion;
  output [17:0]m_axi_aruser;
  output m_axi_arvalid;
  input m_axi_arready;
  input [1:0]m_axi_rid;
  input [127:0]m_axi_rdata;
  input [1:0]m_axi_rresp;
  input m_axi_rlast;
  input m_axi_rvalid;
  output m_axi_rready;
  input [11:0]s_axi_ctl_awaddr;
  input s_axi_ctl_awvalid;
  output s_axi_ctl_awready;
  input [31:0]s_axi_ctl_wdata;
  input [3:0]s_axi_ctl_wstrb;
  input s_axi_ctl_wvalid;
  output s_axi_ctl_wready;
  output [1:0]s_axi_ctl_bresp;
  output s_axi_ctl_bvalid;
  input s_axi_ctl_bready;
  input [11:0]s_axi_ctl_araddr;
  input s_axi_ctl_arvalid;
  output s_axi_ctl_arready;
  output [31:0]s_axi_ctl_rdata;
  output [1:0]s_axi_ctl_rresp;
  output s_axi_ctl_rvalid;
  input s_axi_ctl_rready;
  output mi_w_error;
  output mi_r_error;
  output ip2intc_irpt;


endmodule

(* DEBUG_CORE_INFO = "ulp_inst_0_axi_dbg_hub_0,ulp_inst_0_axi_dbg_hub_0_axi_dbg_hub,{x_ipProduct=Vivado 2022.2,x_ipVendor=xilinx.com,x_ipLibrary=ip,x_ipName=axi_dbg_hub,x_ipVersion=2.0,x_ipCoreRevision=4,x_ipLanguage=VERILOG,x_ipSimLanguage=MIXED,x_ipIsDebugCore=true,C_NUM_DEBUG_CORES=0,C_EN_FALLBACK=0,C_AXI_ID_WIDTH=2,C_AXI_DATA_WIDTH=128,C_AXI_ADDR_WIDTH=64,C_NUM_WR_OUTSTANDING_TXN=1,C_NUM_RD_OUTSTANDING_TXN=1,C_AXIS_TDATA_WIDTH=32,C_ADDR_OFFSET=0x20205800000,C_ADDR_RANGE=0x00200000}" *) (* X_CORE_INFO = "ulp_inst_0_axi_dbg_hub_0_axi_dbg_hub,Vivado 2022.2" *) 
module ulp_inst_0_axi_dbg_hub_0
   (aclk,
    aresetn,
    s_axi_awid,
    s_axi_awaddr,
    s_axi_awlen,
    s_axi_awsize,
    s_axi_awburst,
    s_axi_awlock,
    s_axi_awcache,
    s_axi_awprot,
    s_axi_awqos,
    s_axi_awregion,
    s_axi_awvalid,
    s_axi_awready,
    s_axi_wdata,
    s_axi_wstrb,
    s_axi_wlast,
    s_axi_wvalid,
    s_axi_wready,
    s_axi_bid,
    s_axi_bresp,
    s_axi_bvalid,
    s_axi_bready,
    s_axi_arid,
    s_axi_araddr,
    s_axi_arlen,
    s_axi_arsize,
    s_axi_arburst,
    s_axi_arlock,
    s_axi_arcache,
    s_axi_arprot,
    s_axi_arqos,
    s_axi_arregion,
    s_axi_arvalid,
    s_axi_arready,
    s_axi_rid,
    s_axi_rdata,
    s_axi_rresp,
    s_axi_rlast,
    s_axi_rvalid,
    s_axi_rready);
  input aclk;
  input aresetn;
  input [1:0]s_axi_awid;
  input [63:0]s_axi_awaddr;
  input [7:0]s_axi_awlen;
  input [2:0]s_axi_awsize;
  input [1:0]s_axi_awburst;
  input s_axi_awlock;
  input [3:0]s_axi_awcache;
  input [2:0]s_axi_awprot;
  input [3:0]s_axi_awqos;
  input [3:0]s_axi_awregion;
  input s_axi_awvalid;
  output s_axi_awready;
  input [127:0]s_axi_wdata;
  input [15:0]s_axi_wstrb;
  input s_axi_wlast;
  input s_axi_wvalid;
  output s_axi_wready;
  output [1:0]s_axi_bid;
  output [1:0]s_axi_bresp;
  output s_axi_bvalid;
  input s_axi_bready;
  input [1:0]s_axi_arid;
  input [63:0]s_axi_araddr;
  input [7:0]s_axi_arlen;
  input [2:0]s_axi_arsize;
  input [1:0]s_axi_arburst;
  input s_axi_arlock;
  input [3:0]s_axi_arcache;
  input [2:0]s_axi_arprot;
  input [3:0]s_axi_arqos;
  input [3:0]s_axi_arregion;
  input s_axi_arvalid;
  output s_axi_arready;
  output [1:0]s_axi_rid;
  output [127:0]s_axi_rdata;
  output [1:0]s_axi_rresp;
  output s_axi_rlast;
  output s_axi_rvalid;
  input s_axi_rready;


endmodule

(* X_CORE_INFO = "axi_gpio,Vivado 2022.2" *) 
module ulp_inst_0_axi_gpio_null_user_0
   (s_axi_aclk,
    s_axi_aresetn,
    s_axi_awaddr,
    s_axi_awvalid,
    s_axi_awready,
    s_axi_wdata,
    s_axi_wstrb,
    s_axi_wvalid,
    s_axi_wready,
    s_axi_bresp,
    s_axi_bvalid,
    s_axi_bready,
    s_axi_araddr,
    s_axi_arvalid,
    s_axi_arready,
    s_axi_rdata,
    s_axi_rresp,
    s_axi_rvalid,
    s_axi_rready,
    gpio_io_i,
    gpio_io_o,
    gpio_io_t);
  input s_axi_aclk;
  input s_axi_aresetn;
  input [8:0]s_axi_awaddr;
  input s_axi_awvalid;
  output s_axi_awready;
  input [31:0]s_axi_wdata;
  input [3:0]s_axi_wstrb;
  input s_axi_wvalid;
  output s_axi_wready;
  output [1:0]s_axi_bresp;
  output s_axi_bvalid;
  input s_axi_bready;
  input [8:0]s_axi_araddr;
  input s_axi_arvalid;
  output s_axi_arready;
  output [31:0]s_axi_rdata;
  output [1:0]s_axi_rresp;
  output s_axi_rvalid;
  input s_axi_rready;
  input [0:0]gpio_io_i;
  output [0:0]gpio_io_o;
  output [0:0]gpio_io_t;


endmodule

(* X_CORE_INFO = "bd_d23e,Vivado 2022.2" *) 
module ulp_inst_0_axi_ic_user_0
   (aclk,
    aresetn,
    S00_AXI_awaddr,
    S00_AXI_awprot,
    S00_AXI_awvalid,
    S00_AXI_awready,
    S00_AXI_wdata,
    S00_AXI_wstrb,
    S00_AXI_wvalid,
    S00_AXI_wready,
    S00_AXI_bresp,
    S00_AXI_bvalid,
    S00_AXI_bready,
    S00_AXI_araddr,
    S00_AXI_arprot,
    S00_AXI_arvalid,
    S00_AXI_arready,
    S00_AXI_rdata,
    S00_AXI_rresp,
    S00_AXI_rvalid,
    S00_AXI_rready,
    M00_AXI_awid,
    M00_AXI_awaddr,
    M00_AXI_awlen,
    M00_AXI_awsize,
    M00_AXI_awburst,
    M00_AXI_awlock,
    M00_AXI_awcache,
    M00_AXI_awprot,
    M00_AXI_awqos,
    M00_AXI_awuser,
    M00_AXI_awvalid,
    M00_AXI_awready,
    M00_AXI_wdata,
    M00_AXI_wstrb,
    M00_AXI_wlast,
    M00_AXI_wuser,
    M00_AXI_wvalid,
    M00_AXI_wready,
    M00_AXI_bid,
    M00_AXI_bresp,
    M00_AXI_bvalid,
    M00_AXI_bready,
    M00_AXI_arid,
    M00_AXI_araddr,
    M00_AXI_arlen,
    M00_AXI_arsize,
    M00_AXI_arburst,
    M00_AXI_arlock,
    M00_AXI_arcache,
    M00_AXI_arprot,
    M00_AXI_arqos,
    M00_AXI_aruser,
    M00_AXI_arvalid,
    M00_AXI_arready,
    M00_AXI_rid,
    M00_AXI_rdata,
    M00_AXI_rresp,
    M00_AXI_rlast,
    M00_AXI_ruser,
    M00_AXI_rvalid,
    M00_AXI_rready);
  input aclk;
  input aresetn;
  input [63:0]S00_AXI_awaddr;
  input [2:0]S00_AXI_awprot;
  input S00_AXI_awvalid;
  output S00_AXI_awready;
  input [31:0]S00_AXI_wdata;
  input [3:0]S00_AXI_wstrb;
  input S00_AXI_wvalid;
  output S00_AXI_wready;
  output [1:0]S00_AXI_bresp;
  output S00_AXI_bvalid;
  input S00_AXI_bready;
  input [63:0]S00_AXI_araddr;
  input [2:0]S00_AXI_arprot;
  input S00_AXI_arvalid;
  output S00_AXI_arready;
  output [31:0]S00_AXI_rdata;
  output [1:0]S00_AXI_rresp;
  output S00_AXI_rvalid;
  input S00_AXI_rready;
  output [2:0]M00_AXI_awid;
  output [63:0]M00_AXI_awaddr;
  output [7:0]M00_AXI_awlen;
  output [2:0]M00_AXI_awsize;
  output [1:0]M00_AXI_awburst;
  output [0:0]M00_AXI_awlock;
  output [3:0]M00_AXI_awcache;
  output [2:0]M00_AXI_awprot;
  output [3:0]M00_AXI_awqos;
  output [113:0]M00_AXI_awuser;
  output M00_AXI_awvalid;
  input M00_AXI_awready;
  output [31:0]M00_AXI_wdata;
  output [3:0]M00_AXI_wstrb;
  output M00_AXI_wlast;
  output [13:0]M00_AXI_wuser;
  output M00_AXI_wvalid;
  input M00_AXI_wready;
  input [2:0]M00_AXI_bid;
  input [1:0]M00_AXI_bresp;
  input M00_AXI_bvalid;
  output M00_AXI_bready;
  output [2:0]M00_AXI_arid;
  output [63:0]M00_AXI_araddr;
  output [7:0]M00_AXI_arlen;
  output [2:0]M00_AXI_arsize;
  output [1:0]M00_AXI_arburst;
  output [0:0]M00_AXI_arlock;
  output [3:0]M00_AXI_arcache;
  output [2:0]M00_AXI_arprot;
  output [3:0]M00_AXI_arqos;
  output [113:0]M00_AXI_aruser;
  output M00_AXI_arvalid;
  input M00_AXI_arready;
  input [2:0]M00_AXI_rid;
  input [31:0]M00_AXI_rdata;
  input [1:0]M00_AXI_rresp;
  input M00_AXI_rlast;
  input [13:0]M00_AXI_ruser;
  input M00_AXI_rvalid;
  output M00_AXI_rready;


endmodule

(* X_CORE_INFO = "bd_dad2,Vivado 2022.2" *) 
module ulp_inst_0_axi_ic_user_extend_0
   (aclk,
    aresetn,
    S00_AXI_awid,
    S00_AXI_awaddr,
    S00_AXI_awlen,
    S00_AXI_awsize,
    S00_AXI_awburst,
    S00_AXI_awlock,
    S00_AXI_awcache,
    S00_AXI_awprot,
    S00_AXI_awqos,
    S00_AXI_awuser,
    S00_AXI_awvalid,
    S00_AXI_awready,
    S00_AXI_wdata,
    S00_AXI_wstrb,
    S00_AXI_wlast,
    S00_AXI_wuser,
    S00_AXI_wvalid,
    S00_AXI_wready,
    S00_AXI_bid,
    S00_AXI_bresp,
    S00_AXI_bvalid,
    S00_AXI_bready,
    S00_AXI_arid,
    S00_AXI_araddr,
    S00_AXI_arlen,
    S00_AXI_arsize,
    S00_AXI_arburst,
    S00_AXI_arlock,
    S00_AXI_arcache,
    S00_AXI_arprot,
    S00_AXI_arqos,
    S00_AXI_aruser,
    S00_AXI_arvalid,
    S00_AXI_arready,
    S00_AXI_rid,
    S00_AXI_rdata,
    S00_AXI_rresp,
    S00_AXI_rlast,
    S00_AXI_ruser,
    S00_AXI_rvalid,
    S00_AXI_rready,
    M00_AXI_awaddr,
    M00_AXI_awprot,
    M00_AXI_awvalid,
    M00_AXI_awready,
    M00_AXI_wdata,
    M00_AXI_wstrb,
    M00_AXI_wvalid,
    M00_AXI_wready,
    M00_AXI_bresp,
    M00_AXI_bvalid,
    M00_AXI_bready,
    M00_AXI_araddr,
    M00_AXI_arprot,
    M00_AXI_arvalid,
    M00_AXI_arready,
    M00_AXI_rdata,
    M00_AXI_rresp,
    M00_AXI_rvalid,
    M00_AXI_rready);
  input aclk;
  input aresetn;
  input [2:0]S00_AXI_awid;
  input [63:0]S00_AXI_awaddr;
  input [7:0]S00_AXI_awlen;
  input [2:0]S00_AXI_awsize;
  input [1:0]S00_AXI_awburst;
  input [0:0]S00_AXI_awlock;
  input [3:0]S00_AXI_awcache;
  input [2:0]S00_AXI_awprot;
  input [3:0]S00_AXI_awqos;
  input [113:0]S00_AXI_awuser;
  input S00_AXI_awvalid;
  output S00_AXI_awready;
  input [31:0]S00_AXI_wdata;
  input [3:0]S00_AXI_wstrb;
  input S00_AXI_wlast;
  input [13:0]S00_AXI_wuser;
  input S00_AXI_wvalid;
  output S00_AXI_wready;
  output [2:0]S00_AXI_bid;
  output [1:0]S00_AXI_bresp;
  output S00_AXI_bvalid;
  input S00_AXI_bready;
  input [2:0]S00_AXI_arid;
  input [63:0]S00_AXI_araddr;
  input [7:0]S00_AXI_arlen;
  input [2:0]S00_AXI_arsize;
  input [1:0]S00_AXI_arburst;
  input [0:0]S00_AXI_arlock;
  input [3:0]S00_AXI_arcache;
  input [2:0]S00_AXI_arprot;
  input [3:0]S00_AXI_arqos;
  input [113:0]S00_AXI_aruser;
  input S00_AXI_arvalid;
  output S00_AXI_arready;
  output [2:0]S00_AXI_rid;
  output [31:0]S00_AXI_rdata;
  output [1:0]S00_AXI_rresp;
  output S00_AXI_rlast;
  output [13:0]S00_AXI_ruser;
  output S00_AXI_rvalid;
  input S00_AXI_rready;
  output [8:0]M00_AXI_awaddr;
  output [2:0]M00_AXI_awprot;
  output M00_AXI_awvalid;
  input M00_AXI_awready;
  output [31:0]M00_AXI_wdata;
  output [3:0]M00_AXI_wstrb;
  output M00_AXI_wvalid;
  input M00_AXI_wready;
  input [1:0]M00_AXI_bresp;
  input M00_AXI_bvalid;
  output M00_AXI_bready;
  output [8:0]M00_AXI_araddr;
  output [2:0]M00_AXI_arprot;
  output M00_AXI_arvalid;
  input M00_AXI_arready;
  input [31:0]M00_AXI_rdata;
  input [1:0]M00_AXI_rresp;
  input M00_AXI_rvalid;
  output M00_AXI_rready;


endmodule

(* X_CORE_INFO = "bd_afcb,Vivado 2022.2" *) 
module ulp_inst_0_axi_noc_aie_prog_0
   (S00_INI_internoc,
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
    aclk0,
    M00_AXI_arid,
    M00_AXI_awid,
    M00_AXI_bid,
    M00_AXI_rid,
    M00_AXI_ruser,
    M00_AXI_wuser);
  input [0:0]S00_INI_internoc;
  output [63:0]M00_AXI_awaddr;
  output [7:0]M00_AXI_awlen;
  output [2:0]M00_AXI_awsize;
  output [1:0]M00_AXI_awburst;
  output [0:0]M00_AXI_awlock;
  output [3:0]M00_AXI_awcache;
  output [2:0]M00_AXI_awprot;
  output [3:0]M00_AXI_awregion;
  output [3:0]M00_AXI_awqos;
  output [0:0]M00_AXI_awvalid;
  input [0:0]M00_AXI_awready;
  output [127:0]M00_AXI_wdata;
  output [15:0]M00_AXI_wstrb;
  output [0:0]M00_AXI_wlast;
  output [0:0]M00_AXI_wvalid;
  input [0:0]M00_AXI_wready;
  input [1:0]M00_AXI_bresp;
  input [0:0]M00_AXI_bvalid;
  output [0:0]M00_AXI_bready;
  output [63:0]M00_AXI_araddr;
  output [7:0]M00_AXI_arlen;
  output [2:0]M00_AXI_arsize;
  output [1:0]M00_AXI_arburst;
  output [0:0]M00_AXI_arlock;
  output [3:0]M00_AXI_arcache;
  output [2:0]M00_AXI_arprot;
  output [3:0]M00_AXI_arregion;
  output [3:0]M00_AXI_arqos;
  output [0:0]M00_AXI_arvalid;
  input [0:0]M00_AXI_arready;
  input [127:0]M00_AXI_rdata;
  input [1:0]M00_AXI_rresp;
  input [0:0]M00_AXI_rlast;
  input [0:0]M00_AXI_rvalid;
  output [0:0]M00_AXI_rready;
  input aclk0;
  output [1:0]M00_AXI_arid;
  output [1:0]M00_AXI_awid;
  input [1:0]M00_AXI_bid;
  input [1:0]M00_AXI_rid;
  input [16:0]M00_AXI_ruser;
  output [16:0]M00_AXI_wuser;


endmodule

(* X_CORE_INFO = "bd_0dc7,Vivado 2022.2" *) 
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
  input [0:0]S00_INI_internoc;
  input [0:0]S01_INI_internoc;
  output [63:0]M00_AXI_awaddr;
  output [7:0]M00_AXI_awlen;
  output [2:0]M00_AXI_awsize;
  output [1:0]M00_AXI_awburst;
  output [0:0]M00_AXI_awlock;
  output [3:0]M00_AXI_awcache;
  output [2:0]M00_AXI_awprot;
  output [3:0]M00_AXI_awregion;
  output [3:0]M00_AXI_awqos;
  output [0:0]M00_AXI_awvalid;
  input [0:0]M00_AXI_awready;
  output [127:0]M00_AXI_wdata;
  output [15:0]M00_AXI_wstrb;
  output [0:0]M00_AXI_wlast;
  output [0:0]M00_AXI_wvalid;
  input [0:0]M00_AXI_wready;
  input [1:0]M00_AXI_bresp;
  input [0:0]M00_AXI_bvalid;
  output [0:0]M00_AXI_bready;
  output [63:0]M00_AXI_araddr;
  output [7:0]M00_AXI_arlen;
  output [2:0]M00_AXI_arsize;
  output [1:0]M00_AXI_arburst;
  output [0:0]M00_AXI_arlock;
  output [3:0]M00_AXI_arcache;
  output [2:0]M00_AXI_arprot;
  output [3:0]M00_AXI_arregion;
  output [3:0]M00_AXI_arqos;
  output [0:0]M00_AXI_arvalid;
  input [0:0]M00_AXI_arready;
  input [127:0]M00_AXI_rdata;
  input [1:0]M00_AXI_rresp;
  input [0:0]M00_AXI_rlast;
  input [0:0]M00_AXI_rvalid;
  output [0:0]M00_AXI_rready;
  output [63:0]M01_AXI_awaddr;
  output [7:0]M01_AXI_awlen;
  output [2:0]M01_AXI_awsize;
  output [1:0]M01_AXI_awburst;
  output [0:0]M01_AXI_awlock;
  output [3:0]M01_AXI_awcache;
  output [2:0]M01_AXI_awprot;
  output [3:0]M01_AXI_awregion;
  output [3:0]M01_AXI_awqos;
  output [0:0]M01_AXI_awvalid;
  input [0:0]M01_AXI_awready;
  output [511:0]M01_AXI_wdata;
  output [63:0]M01_AXI_wstrb;
  output [0:0]M01_AXI_wlast;
  output [0:0]M01_AXI_wvalid;
  input [0:0]M01_AXI_wready;
  input [1:0]M01_AXI_bresp;
  input [0:0]M01_AXI_bvalid;
  output [0:0]M01_AXI_bready;
  output [63:0]M01_AXI_araddr;
  output [7:0]M01_AXI_arlen;
  output [2:0]M01_AXI_arsize;
  output [1:0]M01_AXI_arburst;
  output [0:0]M01_AXI_arlock;
  output [3:0]M01_AXI_arcache;
  output [2:0]M01_AXI_arprot;
  output [3:0]M01_AXI_arregion;
  output [3:0]M01_AXI_arqos;
  output [0:0]M01_AXI_arvalid;
  input [0:0]M01_AXI_arready;
  input [511:0]M01_AXI_rdata;
  input [1:0]M01_AXI_rresp;
  input [0:0]M01_AXI_rlast;
  input [0:0]M01_AXI_rvalid;
  output [0:0]M01_AXI_rready;
  input aclk0;
  output [1:0]M01_AXI_arid;
  output [17:0]M01_AXI_aruser;
  output [1:0]M01_AXI_awid;
  output [17:0]M01_AXI_awuser;
  input [1:0]M01_AXI_bid;
  input [1:0]M01_AXI_rid;
  output [1:0]M00_AXI_arid;
  output [17:0]M00_AXI_aruser;
  output [1:0]M00_AXI_awid;
  output [17:0]M00_AXI_awuser;
  input [1:0]M00_AXI_bid;
  input [1:0]M00_AXI_rid;


endmodule

(* X_CORE_INFO = "bd_0ad1,Vivado 2022.2" *) 
module ulp_inst_0_axi_noc_kernel0_0
   (M00_INI_internoc,
    M01_INI_internoc,
    M02_INI_internoc);
  output [0:0]M00_INI_internoc;
  output [0:0]M01_INI_internoc;
  output [0:0]M02_INI_internoc;


endmodule

(* X_CORE_INFO = "bd_a6d9,Vivado 2022.2" *) 
module ulp_inst_0_axi_sc_plram_0
   (aclk,
    aclk1,
    aresetn,
    S00_AXI_awid,
    S00_AXI_awaddr,
    S00_AXI_awlen,
    S00_AXI_awsize,
    S00_AXI_awburst,
    S00_AXI_awlock,
    S00_AXI_awcache,
    S00_AXI_awprot,
    S00_AXI_awqos,
    S00_AXI_awuser,
    S00_AXI_awvalid,
    S00_AXI_awready,
    S00_AXI_wdata,
    S00_AXI_wstrb,
    S00_AXI_wlast,
    S00_AXI_wvalid,
    S00_AXI_wready,
    S00_AXI_bid,
    S00_AXI_bresp,
    S00_AXI_bvalid,
    S00_AXI_bready,
    S00_AXI_arid,
    S00_AXI_araddr,
    S00_AXI_arlen,
    S00_AXI_arsize,
    S00_AXI_arburst,
    S00_AXI_arlock,
    S00_AXI_arcache,
    S00_AXI_arprot,
    S00_AXI_arqos,
    S00_AXI_aruser,
    S00_AXI_arvalid,
    S00_AXI_arready,
    S00_AXI_rid,
    S00_AXI_rdata,
    S00_AXI_rresp,
    S00_AXI_rlast,
    S00_AXI_rvalid,
    S00_AXI_rready,
    M00_AXI_awaddr,
    M00_AXI_awlen,
    M00_AXI_awsize,
    M00_AXI_awburst,
    M00_AXI_awlock,
    M00_AXI_awcache,
    M00_AXI_awprot,
    M00_AXI_awqos,
    M00_AXI_awuser,
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
    M00_AXI_arqos,
    M00_AXI_aruser,
    M00_AXI_arvalid,
    M00_AXI_arready,
    M00_AXI_rdata,
    M00_AXI_rresp,
    M00_AXI_rlast,
    M00_AXI_rvalid,
    M00_AXI_rready);
  input aclk;
  input aclk1;
  input aresetn;
  input [1:0]S00_AXI_awid;
  input [63:0]S00_AXI_awaddr;
  input [7:0]S00_AXI_awlen;
  input [2:0]S00_AXI_awsize;
  input [1:0]S00_AXI_awburst;
  input [0:0]S00_AXI_awlock;
  input [3:0]S00_AXI_awcache;
  input [2:0]S00_AXI_awprot;
  input [3:0]S00_AXI_awqos;
  input [17:0]S00_AXI_awuser;
  input S00_AXI_awvalid;
  output S00_AXI_awready;
  input [511:0]S00_AXI_wdata;
  input [63:0]S00_AXI_wstrb;
  input S00_AXI_wlast;
  input S00_AXI_wvalid;
  output S00_AXI_wready;
  output [1:0]S00_AXI_bid;
  output [1:0]S00_AXI_bresp;
  output S00_AXI_bvalid;
  input S00_AXI_bready;
  input [1:0]S00_AXI_arid;
  input [63:0]S00_AXI_araddr;
  input [7:0]S00_AXI_arlen;
  input [2:0]S00_AXI_arsize;
  input [1:0]S00_AXI_arburst;
  input [0:0]S00_AXI_arlock;
  input [3:0]S00_AXI_arcache;
  input [2:0]S00_AXI_arprot;
  input [3:0]S00_AXI_arqos;
  input [17:0]S00_AXI_aruser;
  input S00_AXI_arvalid;
  output S00_AXI_arready;
  output [1:0]S00_AXI_rid;
  output [511:0]S00_AXI_rdata;
  output [1:0]S00_AXI_rresp;
  output S00_AXI_rlast;
  output S00_AXI_rvalid;
  input S00_AXI_rready;
  output [16:0]M00_AXI_awaddr;
  output [7:0]M00_AXI_awlen;
  output [2:0]M00_AXI_awsize;
  output [1:0]M00_AXI_awburst;
  output [0:0]M00_AXI_awlock;
  output [3:0]M00_AXI_awcache;
  output [2:0]M00_AXI_awprot;
  output [3:0]M00_AXI_awqos;
  output [17:0]M00_AXI_awuser;
  output M00_AXI_awvalid;
  input M00_AXI_awready;
  output [511:0]M00_AXI_wdata;
  output [63:0]M00_AXI_wstrb;
  output M00_AXI_wlast;
  output M00_AXI_wvalid;
  input M00_AXI_wready;
  input [1:0]M00_AXI_bresp;
  input M00_AXI_bvalid;
  output M00_AXI_bready;
  output [16:0]M00_AXI_araddr;
  output [7:0]M00_AXI_arlen;
  output [2:0]M00_AXI_arsize;
  output [1:0]M00_AXI_arburst;
  output [0:0]M00_AXI_arlock;
  output [3:0]M00_AXI_arcache;
  output [2:0]M00_AXI_arprot;
  output [3:0]M00_AXI_arqos;
  output [17:0]M00_AXI_aruser;
  output M00_AXI_arvalid;
  input M00_AXI_arready;
  input [511:0]M00_AXI_rdata;
  input [1:0]M00_AXI_rresp;
  input M00_AXI_rlast;
  input M00_AXI_rvalid;
  output M00_AXI_rready;


endmodule

(* HW_HANDOFF = "ulp_inst_0_ai_engine_0_0.hwdef" *) (* ORIG_REF_NAME = "bd_9d54" *) 
module ulp_inst_0_bd_9d54
   (S00_AXI_araddr,
    S00_AXI_arburst,
    S00_AXI_arcache,
    S00_AXI_arid,
    S00_AXI_arlen,
    S00_AXI_arlock,
    S00_AXI_arprot,
    S00_AXI_arqos,
    S00_AXI_arready,
    S00_AXI_arregion,
    S00_AXI_arsize,
    S00_AXI_arvalid,
    S00_AXI_awaddr,
    S00_AXI_awburst,
    S00_AXI_awcache,
    S00_AXI_awid,
    S00_AXI_awlen,
    S00_AXI_awlock,
    S00_AXI_awprot,
    S00_AXI_awqos,
    S00_AXI_awready,
    S00_AXI_awregion,
    S00_AXI_awsize,
    S00_AXI_awvalid,
    S00_AXI_bid,
    S00_AXI_bready,
    S00_AXI_bresp,
    S00_AXI_bvalid,
    S00_AXI_rdata,
    S00_AXI_rid,
    S00_AXI_rlast,
    S00_AXI_rready,
    S00_AXI_rresp,
    S00_AXI_ruser,
    S00_AXI_rvalid,
    S00_AXI_wdata,
    S00_AXI_wlast,
    S00_AXI_wready,
    S00_AXI_wstrb,
    S00_AXI_wuser,
    S00_AXI_wvalid,
    s00_axi_aclk);
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI ARADDR" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME S00_AXI, ADDR_WIDTH 42, ARUSER_WIDTH 0, AWUSER_WIDTH 0, BUSER_WIDTH 0, CATEGORY NOC, CLK_DOMAIN bd_9d54_noc_ai_mm_0_0_s_axi_aclk, DATA_WIDTH 128, FREQ_HZ 1250000000, HAS_BRESP 1, HAS_BURST 1, HAS_CACHE 1, HAS_LOCK 1, HAS_PROT 1, HAS_QOS 1, HAS_REGION 1, HAS_RRESP 1, HAS_WSTRB 1, ID_WIDTH 16, INSERT_VIP 0, MAX_BURST_LENGTH 256, MY_CATEGORY AIE, NUM_READ_OUTSTANDING 32, NUM_READ_THREADS 4, NUM_WRITE_OUTSTANDING 32, NUM_WRITE_THREADS 4, PHASE 0.0, PHYSICAL_CHANNEL NOC_NSU_TO_AIE, PROTOCOL AXI4, READ_WRITE_MODE READ_WRITE, RUSER_BITS_PER_BYTE 0, RUSER_WIDTH 17, SUPPORTS_NARROW_BURST 1, WUSER_BITS_PER_BYTE 0, WUSER_WIDTH 17" *) input [33:0]S00_AXI_araddr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI ARBURST" *) input [1:0]S00_AXI_arburst;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI ARCACHE" *) input [3:0]S00_AXI_arcache;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI ARID" *) input [15:0]S00_AXI_arid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI ARLEN" *) input [7:0]S00_AXI_arlen;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI ARLOCK" *) input S00_AXI_arlock;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI ARPROT" *) input [2:0]S00_AXI_arprot;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI ARQOS" *) input [3:0]S00_AXI_arqos;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI ARREADY" *) output [0:0]S00_AXI_arready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI ARREGION" *) input [3:0]S00_AXI_arregion;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI ARSIZE" *) input [2:0]S00_AXI_arsize;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI ARVALID" *) input [0:0]S00_AXI_arvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI AWADDR" *) input [33:0]S00_AXI_awaddr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI AWBURST" *) input [1:0]S00_AXI_awburst;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI AWCACHE" *) input [3:0]S00_AXI_awcache;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI AWID" *) input [15:0]S00_AXI_awid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI AWLEN" *) input [7:0]S00_AXI_awlen;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI AWLOCK" *) input S00_AXI_awlock;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI AWPROT" *) input [2:0]S00_AXI_awprot;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI AWQOS" *) input [3:0]S00_AXI_awqos;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI AWREADY" *) output [0:0]S00_AXI_awready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI AWREGION" *) input [3:0]S00_AXI_awregion;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI AWSIZE" *) input [2:0]S00_AXI_awsize;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI AWVALID" *) input [0:0]S00_AXI_awvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI BID" *) output [15:0]S00_AXI_bid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI BREADY" *) input [0:0]S00_AXI_bready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI BRESP" *) output [1:0]S00_AXI_bresp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI BVALID" *) output [0:0]S00_AXI_bvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI RDATA" *) output [127:0]S00_AXI_rdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI RID" *) output [15:0]S00_AXI_rid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI RLAST" *) output [0:0]S00_AXI_rlast;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI RREADY" *) input [0:0]S00_AXI_rready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI RRESP" *) output [1:0]S00_AXI_rresp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI RUSER" *) output [16:0]S00_AXI_ruser;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI RVALID" *) output [0:0]S00_AXI_rvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI WDATA" *) input [127:0]S00_AXI_wdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI WLAST" *) input [0:0]S00_AXI_wlast;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI WREADY" *) output [0:0]S00_AXI_wready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI WSTRB" *) input [15:0]S00_AXI_wstrb;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI WUSER" *) input [16:0]S00_AXI_wuser;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI WVALID" *) input [0:0]S00_AXI_wvalid;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 CLK.S00_AXI_ACLK CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME CLK.S00_AXI_ACLK, ASSOCIATED_BUSIF S00_AXI, CLK_DOMAIN bd_9d54_noc_ai_mm_0_0_s_axi_aclk, FREQ_HZ 1250000000, FREQ_TOLERANCE_HZ 0, INSERT_VIP 0, PHASE 0.0, PHYSICAL_CHANNEL AIE_TO_NOC_NSU" *) output s00_axi_aclk;

  wire \<const0> ;
  wire [33:0]S00_AXI_araddr;
  wire [1:0]S00_AXI_arburst;
  wire [3:0]S00_AXI_arcache;
  wire [15:0]S00_AXI_arid;
  wire [7:0]S00_AXI_arlen;
  wire S00_AXI_arlock;
  wire [2:0]S00_AXI_arprot;
  wire [3:0]S00_AXI_arqos;
  wire [0:0]S00_AXI_arready;
  wire [3:0]S00_AXI_arregion;
  wire [2:0]S00_AXI_arsize;
  wire [0:0]S00_AXI_arvalid;
  wire [33:0]S00_AXI_awaddr;
  wire [1:0]S00_AXI_awburst;
  wire [3:0]S00_AXI_awcache;
  wire [15:0]S00_AXI_awid;
  wire [7:0]S00_AXI_awlen;
  wire S00_AXI_awlock;
  wire [2:0]S00_AXI_awprot;
  wire [3:0]S00_AXI_awqos;
  wire [0:0]S00_AXI_awready;
  wire [3:0]S00_AXI_awregion;
  wire [2:0]S00_AXI_awsize;
  wire [0:0]S00_AXI_awvalid;
  wire [1:0]\^S00_AXI_bid ;
  wire [0:0]S00_AXI_bready;
  wire [1:0]S00_AXI_bresp;
  wire [0:0]S00_AXI_bvalid;
  wire [127:0]S00_AXI_rdata;
  wire [1:0]\^S00_AXI_rid ;
  wire [0:0]S00_AXI_rlast;
  wire [0:0]S00_AXI_rready;
  wire [1:0]S00_AXI_rresp;
  wire [16:0]S00_AXI_ruser;
  wire [0:0]S00_AXI_rvalid;
  wire [127:0]S00_AXI_wdata;
  wire [0:0]S00_AXI_wlast;
  wire [0:0]S00_AXI_wready;
  wire [15:0]S00_AXI_wstrb;
  wire [16:0]S00_AXI_wuser;
  wire [0:0]S00_AXI_wvalid;
  wire s00_axi_aclk;
  wire NLW_noc_ai_mm_0_to_aie_2_UNCONNECTED;
  wire NLW_noc_ai_mm_0_to_aie_3_UNCONNECTED;
  wire NLW_noc_ai_mm_0_to_aie_6_UNCONNECTED;
  wire NLW_noc_ai_mm_0_to_aie_7_UNCONNECTED;
  wire [15:2]NLW_noc_ai_mm_0_s_axi_bid_UNCONNECTED;
  wire [15:2]NLW_noc_ai_mm_0_s_axi_rid_UNCONNECTED;

  assign S00_AXI_bid[15] = \<const0> ;
  assign S00_AXI_bid[14] = \<const0> ;
  assign S00_AXI_bid[13] = \<const0> ;
  assign S00_AXI_bid[12] = \<const0> ;
  assign S00_AXI_bid[11] = \<const0> ;
  assign S00_AXI_bid[10] = \<const0> ;
  assign S00_AXI_bid[9] = \<const0> ;
  assign S00_AXI_bid[8] = \<const0> ;
  assign S00_AXI_bid[7] = \<const0> ;
  assign S00_AXI_bid[6] = \<const0> ;
  assign S00_AXI_bid[5] = \<const0> ;
  assign S00_AXI_bid[4] = \<const0> ;
  assign S00_AXI_bid[3] = \<const0> ;
  assign S00_AXI_bid[2] = \<const0> ;
  assign S00_AXI_bid[1:0] = \^S00_AXI_bid [1:0];
  assign S00_AXI_rid[15] = \<const0> ;
  assign S00_AXI_rid[14] = \<const0> ;
  assign S00_AXI_rid[13] = \<const0> ;
  assign S00_AXI_rid[12] = \<const0> ;
  assign S00_AXI_rid[11] = \<const0> ;
  assign S00_AXI_rid[10] = \<const0> ;
  assign S00_AXI_rid[9] = \<const0> ;
  assign S00_AXI_rid[8] = \<const0> ;
  assign S00_AXI_rid[7] = \<const0> ;
  assign S00_AXI_rid[6] = \<const0> ;
  assign S00_AXI_rid[5] = \<const0> ;
  assign S00_AXI_rid[4] = \<const0> ;
  assign S00_AXI_rid[3] = \<const0> ;
  assign S00_AXI_rid[2] = \<const0> ;
  assign S00_AXI_rid[1:0] = \^S00_AXI_rid [1:0];
  GND GND
       (.G(\<const0> ));
  (* CHECK_LICENSE_TYPE = "bd_9d54_noc_ai_mm_0_0,ai_noc_v1_0_0_ai_noc,{}" *) 
  (* DowngradeIPIdentifiedWarnings = "yes" *) 
  (* X_CORE_INFO = "ai_noc_v1_0_0_ai_noc,Vivado 2022.2" *) 
  ulp_inst_0_bd_9d54_noc_ai_mm_0_0 noc_ai_mm_0
       (.s_axi_aclk(s00_axi_aclk),
        .s_axi_araddr(S00_AXI_araddr),
        .s_axi_arburst(S00_AXI_arburst),
        .s_axi_arcache(S00_AXI_arcache),
        .s_axi_arid(S00_AXI_arid),
        .s_axi_arlen(S00_AXI_arlen),
        .s_axi_arlock(S00_AXI_arlock),
        .s_axi_arprot(S00_AXI_arprot),
        .s_axi_arqos(S00_AXI_arqos),
        .s_axi_arready(S00_AXI_arready),
        .s_axi_arregion(S00_AXI_arregion),
        .s_axi_arsize(S00_AXI_arsize),
        .s_axi_arvalid(S00_AXI_arvalid),
        .s_axi_awaddr(S00_AXI_awaddr),
        .s_axi_awburst(S00_AXI_awburst),
        .s_axi_awcache(S00_AXI_awcache),
        .s_axi_awid(S00_AXI_awid),
        .s_axi_awlen(S00_AXI_awlen),
        .s_axi_awlock(S00_AXI_awlock),
        .s_axi_awprot(S00_AXI_awprot),
        .s_axi_awqos(S00_AXI_awqos),
        .s_axi_awready(S00_AXI_awready),
        .s_axi_awregion(S00_AXI_awregion),
        .s_axi_awsize(S00_AXI_awsize),
        .s_axi_awvalid(S00_AXI_awvalid),
        .s_axi_bid({NLW_noc_ai_mm_0_s_axi_bid_UNCONNECTED[15:2],\^S00_AXI_bid }),
        .s_axi_bready(S00_AXI_bready),
        .s_axi_bresp(S00_AXI_bresp),
        .s_axi_bvalid(S00_AXI_bvalid),
        .s_axi_rdata(S00_AXI_rdata),
        .s_axi_rid({NLW_noc_ai_mm_0_s_axi_rid_UNCONNECTED[15:2],\^S00_AXI_rid }),
        .s_axi_rlast(S00_AXI_rlast),
        .s_axi_rready(S00_AXI_rready),
        .s_axi_rresp(S00_AXI_rresp),
        .s_axi_ruser(S00_AXI_ruser),
        .s_axi_rvalid(S00_AXI_rvalid),
        .s_axi_wdata(S00_AXI_wdata),
        .s_axi_wlast(S00_AXI_wlast),
        .s_axi_wready(S00_AXI_wready),
        .s_axi_wstrb(S00_AXI_wstrb),
        .s_axi_wuser(S00_AXI_wuser),
        .s_axi_wvalid(S00_AXI_wvalid),
        .to_aie_2(NLW_noc_ai_mm_0_to_aie_2_UNCONNECTED),
        .to_aie_3(NLW_noc_ai_mm_0_to_aie_3_UNCONNECTED),
        .to_aie_6(NLW_noc_ai_mm_0_to_aie_6_UNCONNECTED),
        .to_aie_7(NLW_noc_ai_mm_0_to_aie_7_UNCONNECTED));
endmodule

(* CHECK_LICENSE_TYPE = "bd_9d54_noc_ai_mm_0_0,ai_noc_v1_0_0_ai_noc,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* ORIG_REF_NAME = "bd_9d54_noc_ai_mm_0_0" *) 
(* X_CORE_INFO = "ai_noc_v1_0_0_ai_noc,Vivado 2022.2" *) 
module ulp_inst_0_bd_9d54_noc_ai_mm_0_0
   (s_axi_aclk,
    to_aie_2,
    to_aie_3,
    to_aie_6,
    to_aie_7,
    s_axi_awid,
    s_axi_awaddr,
    s_axi_awlen,
    s_axi_awsize,
    s_axi_awburst,
    s_axi_awlock,
    s_axi_awcache,
    s_axi_awprot,
    s_axi_awregion,
    s_axi_awqos,
    s_axi_awvalid,
    s_axi_awready,
    s_axi_wdata,
    s_axi_wstrb,
    s_axi_wlast,
    s_axi_wuser,
    s_axi_wvalid,
    s_axi_wready,
    s_axi_bid,
    s_axi_bresp,
    s_axi_bvalid,
    s_axi_bready,
    s_axi_arid,
    s_axi_araddr,
    s_axi_arlen,
    s_axi_arsize,
    s_axi_arburst,
    s_axi_arlock,
    s_axi_arcache,
    s_axi_arprot,
    s_axi_arregion,
    s_axi_arqos,
    s_axi_arvalid,
    s_axi_arready,
    s_axi_rid,
    s_axi_rdata,
    s_axi_rresp,
    s_axi_rlast,
    s_axi_ruser,
    s_axi_rvalid,
    s_axi_rready);
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 SAXIACLK CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME SAXIACLK, ASSOCIATED_BUSIF S_AXI, FREQ_HZ 1250000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN bd_9d54_noc_ai_mm_0_0_s_axi_aclk, INSERT_VIP 0" *) output s_axi_aclk;
  output to_aie_2;
  output to_aie_3;
  output to_aie_6;
  output to_aie_7;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI AWID" *) input [15:0]s_axi_awid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI AWADDR" *) input [33:0]s_axi_awaddr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI AWLEN" *) input [7:0]s_axi_awlen;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI AWSIZE" *) input [2:0]s_axi_awsize;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI AWBURST" *) input [1:0]s_axi_awburst;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI AWLOCK" *) input s_axi_awlock;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI AWCACHE" *) input [3:0]s_axi_awcache;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI AWPROT" *) input [2:0]s_axi_awprot;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI AWREGION" *) input [3:0]s_axi_awregion;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI AWQOS" *) input [3:0]s_axi_awqos;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI AWVALID" *) input s_axi_awvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI AWREADY" *) output s_axi_awready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI WDATA" *) input [127:0]s_axi_wdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI WSTRB" *) input [15:0]s_axi_wstrb;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI WLAST" *) input s_axi_wlast;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI WUSER" *) input [16:0]s_axi_wuser;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI WVALID" *) input s_axi_wvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI WREADY" *) output s_axi_wready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI BID" *) output [15:0]s_axi_bid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI BRESP" *) output [1:0]s_axi_bresp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI BVALID" *) output s_axi_bvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI BREADY" *) input s_axi_bready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI ARID" *) input [15:0]s_axi_arid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI ARADDR" *) input [33:0]s_axi_araddr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI ARLEN" *) input [7:0]s_axi_arlen;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI ARSIZE" *) input [2:0]s_axi_arsize;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI ARBURST" *) input [1:0]s_axi_arburst;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI ARLOCK" *) input s_axi_arlock;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI ARCACHE" *) input [3:0]s_axi_arcache;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI ARPROT" *) input [2:0]s_axi_arprot;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI ARREGION" *) input [3:0]s_axi_arregion;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI ARQOS" *) input [3:0]s_axi_arqos;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI ARVALID" *) input s_axi_arvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI ARREADY" *) output s_axi_arready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI RID" *) output [15:0]s_axi_rid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI RDATA" *) output [127:0]s_axi_rdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI RRESP" *) output [1:0]s_axi_rresp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI RLAST" *) output s_axi_rlast;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI RUSER" *) output [16:0]s_axi_ruser;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI RVALID" *) output s_axi_rvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI RREADY" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME S_AXI, SUPPORTS_NARROW_BURST 1, DATA_WIDTH 128, PROTOCOL AXI4, FREQ_HZ 1250000000, ID_WIDTH 16, ADDR_WIDTH 34, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 17, RUSER_WIDTH 17, BUSER_WIDTH 0, READ_WRITE_MODE READ_WRITE, HAS_BURST 1, HAS_LOCK 1, HAS_PROT 1, HAS_CACHE 1, HAS_QOS 1, HAS_REGION 1, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, NUM_READ_OUTSTANDING 32, NUM_WRITE_OUTSTANDING 32, MAX_BURST_LENGTH 256, PHASE 0.0, CLK_DOMAIN bd_9d54_noc_ai_mm_0_0_s_axi_aclk, NUM_READ_THREADS 4, NUM_WRITE_THREADS 4, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, INSERT_VIP 0" *) input s_axi_rready;

  wire \<const0> ;
  wire inst_n_10;
  wire inst_n_11;
  wire inst_n_12;
  wire inst_n_13;
  wire inst_n_14;
  wire inst_n_15;
  wire inst_n_16;
  wire inst_n_192;
  wire inst_n_193;
  wire inst_n_194;
  wire inst_n_195;
  wire inst_n_25;
  wire inst_n_26;
  wire inst_n_27;
  wire inst_n_28;
  wire inst_n_29;
  wire inst_n_3;
  wire inst_n_30;
  wire inst_n_31;
  wire inst_n_32;
  wire inst_n_33;
  wire inst_n_34;
  wire inst_n_35;
  wire inst_n_36;
  wire inst_n_37;
  wire inst_n_38;
  wire inst_n_4;
  wire inst_n_5;
  wire inst_n_6;
  wire inst_n_7;
  wire inst_n_8;
  wire inst_n_9;
  wire s_axi_aclk;
  wire [33:0]s_axi_araddr;
  wire [1:0]s_axi_arburst;
  wire [3:0]s_axi_arcache;
  wire [15:0]s_axi_arid;
  wire [7:0]s_axi_arlen;
  wire s_axi_arlock;
  wire [2:0]s_axi_arprot;
  wire [3:0]s_axi_arqos;
  wire s_axi_arready;
  wire [3:0]s_axi_arregion;
  wire [2:0]s_axi_arsize;
  wire s_axi_arvalid;
  wire [33:0]s_axi_awaddr;
  wire [1:0]s_axi_awburst;
  wire [3:0]s_axi_awcache;
  wire [15:0]s_axi_awid;
  wire [7:0]s_axi_awlen;
  wire s_axi_awlock;
  wire [2:0]s_axi_awprot;
  wire [3:0]s_axi_awqos;
  wire s_axi_awready;
  wire [3:0]s_axi_awregion;
  wire [2:0]s_axi_awsize;
  wire s_axi_awvalid;
  wire [1:0]\^s_axi_bid ;
  wire s_axi_bready;
  wire [1:0]s_axi_bresp;
  wire s_axi_bvalid;
  wire [127:0]s_axi_rdata;
  wire [1:0]\^s_axi_rid ;
  wire s_axi_rlast;
  wire s_axi_rready;
  wire [1:0]s_axi_rresp;
  wire [16:0]s_axi_ruser;
  wire s_axi_rvalid;
  wire [127:0]s_axi_wdata;
  wire s_axi_wlast;
  wire s_axi_wready;
  wire [15:0]s_axi_wstrb;
  wire [16:0]s_axi_wuser;
  wire s_axi_wvalid;
  wire NLW_inst_m_axi_aclk_UNCONNECTED;
  wire NLW_inst_m_axi_arlock_UNCONNECTED;
  wire NLW_inst_m_axi_arvalid_UNCONNECTED;
  wire NLW_inst_m_axi_awlock_UNCONNECTED;
  wire NLW_inst_m_axi_awvalid_UNCONNECTED;
  wire NLW_inst_m_axi_bready_UNCONNECTED;
  wire NLW_inst_m_axi_destmode_rd_UNCONNECTED;
  wire NLW_inst_m_axi_destmode_wr_UNCONNECTED;
  wire NLW_inst_m_axi_rready_UNCONNECTED;
  wire NLW_inst_m_axi_wlast_UNCONNECTED;
  wire NLW_inst_m_axi_wvalid_UNCONNECTED;
  wire NLW_inst_m_axis_aclk_UNCONNECTED;
  wire NLW_inst_m_axis_tlast_UNCONNECTED;
  wire NLW_inst_m_axis_tvalid_UNCONNECTED;
  wire NLW_inst_s_axis_aclk_UNCONNECTED;
  wire NLW_inst_s_axis_tready_UNCONNECTED;
  wire [63:0]NLW_inst_m_axi_araddr_UNCONNECTED;
  wire [1:0]NLW_inst_m_axi_arburst_UNCONNECTED;
  wire [3:0]NLW_inst_m_axi_arcache_UNCONNECTED;
  wire [15:0]NLW_inst_m_axi_arid_UNCONNECTED;
  wire [7:0]NLW_inst_m_axi_arlen_UNCONNECTED;
  wire [2:0]NLW_inst_m_axi_arprot_UNCONNECTED;
  wire [3:0]NLW_inst_m_axi_arqos_UNCONNECTED;
  wire [3:0]NLW_inst_m_axi_arregion_UNCONNECTED;
  wire [2:0]NLW_inst_m_axi_arsize_UNCONNECTED;
  wire [0:0]NLW_inst_m_axi_aruser_UNCONNECTED;
  wire [63:0]NLW_inst_m_axi_awaddr_UNCONNECTED;
  wire [1:0]NLW_inst_m_axi_awburst_UNCONNECTED;
  wire [3:0]NLW_inst_m_axi_awcache_UNCONNECTED;
  wire [15:0]NLW_inst_m_axi_awid_UNCONNECTED;
  wire [7:0]NLW_inst_m_axi_awlen_UNCONNECTED;
  wire [2:0]NLW_inst_m_axi_awprot_UNCONNECTED;
  wire [3:0]NLW_inst_m_axi_awqos_UNCONNECTED;
  wire [3:0]NLW_inst_m_axi_awregion_UNCONNECTED;
  wire [2:0]NLW_inst_m_axi_awsize_UNCONNECTED;
  wire [0:0]NLW_inst_m_axi_awuser_UNCONNECTED;
  wire [11:0]NLW_inst_m_axi_destid_rd_UNCONNECTED;
  wire [11:0]NLW_inst_m_axi_destid_wr_UNCONNECTED;
  wire [127:0]NLW_inst_m_axi_wdata_UNCONNECTED;
  wire [15:0]NLW_inst_m_axi_wstrb_UNCONNECTED;
  wire [0:0]NLW_inst_m_axi_wuser_UNCONNECTED;
  wire [127:0]NLW_inst_m_axis_tdata_UNCONNECTED;
  wire [9:0]NLW_inst_m_axis_tdest_UNCONNECTED;
  wire [1:0]NLW_inst_m_axis_tid_UNCONNECTED;
  wire [15:0]NLW_inst_m_axis_tkeep_UNCONNECTED;
  wire [-1:0]NLW_inst_s_axi_buser_UNCONNECTED;

  assign s_axi_bid[15] = \<const0> ;
  assign s_axi_bid[14] = \<const0> ;
  assign s_axi_bid[13] = \<const0> ;
  assign s_axi_bid[12] = \<const0> ;
  assign s_axi_bid[11] = \<const0> ;
  assign s_axi_bid[10] = \<const0> ;
  assign s_axi_bid[9] = \<const0> ;
  assign s_axi_bid[8] = \<const0> ;
  assign s_axi_bid[7] = \<const0> ;
  assign s_axi_bid[6] = \<const0> ;
  assign s_axi_bid[5] = \<const0> ;
  assign s_axi_bid[4] = \<const0> ;
  assign s_axi_bid[3] = \<const0> ;
  assign s_axi_bid[2] = \<const0> ;
  assign s_axi_bid[1:0] = \^s_axi_bid [1:0];
  assign s_axi_rid[15] = \<const0> ;
  assign s_axi_rid[14] = \<const0> ;
  assign s_axi_rid[13] = \<const0> ;
  assign s_axi_rid[12] = \<const0> ;
  assign s_axi_rid[11] = \<const0> ;
  assign s_axi_rid[10] = \<const0> ;
  assign s_axi_rid[9] = \<const0> ;
  assign s_axi_rid[8] = \<const0> ;
  assign s_axi_rid[7] = \<const0> ;
  assign s_axi_rid[6] = \<const0> ;
  assign s_axi_rid[5] = \<const0> ;
  assign s_axi_rid[4] = \<const0> ;
  assign s_axi_rid[3] = \<const0> ;
  assign s_axi_rid[2] = \<const0> ;
  assign s_axi_rid[1:0] = \^s_axi_rid [1:0];
  assign to_aie_2 = \<const0> ;
  assign to_aie_3 = \<const0> ;
  assign to_aie_6 = \<const0> ;
  assign to_aie_7 = \<const0> ;
  GND GND
       (.G(\<const0> ));
  (* C_AIE_MODE = "0" *) 
  (* C_M_AXIS_TDATA_WIDTH = "128" *) 
  (* C_M_AXIS_TDEST_WIDTH = "10" *) 
  (* C_M_AXIS_TID_WIDTH = "2" *) 
  (* C_M_AXI_ADDR_WIDTH = "64" *) 
  (* C_M_AXI_ARUSER_WIDTH = "1" *) 
  (* C_M_AXI_AWUSER_WIDTH = "1" *) 
  (* C_M_AXI_BUSER_WIDTH = "1" *) 
  (* C_M_AXI_DATA_WIDTH = "128" *) 
  (* C_M_AXI_ID_WIDTH = "16" *) 
  (* C_M_AXI_RUSER_WIDTH = "1" *) 
  (* C_M_AXI_WUSER_WIDTH = "1" *) 
  (* C_NOC_INTF_MODE = "0" *) 
  (* C_NOC_INTF_TYPE = "0" *) 
  (* C_S_AXIS_TDATA_WIDTH = "128" *) 
  (* C_S_AXIS_TDEST_WIDTH = "10" *) 
  (* C_S_AXIS_TID_WIDTH = "2" *) 
  (* C_S_AXI_ADDR_WIDTH = "34" *) 
  (* C_S_AXI_ARUSER_WIDTH = "0" *) 
  (* C_S_AXI_AWUSER_WIDTH = "0" *) 
  (* C_S_AXI_BUSER_WIDTH = "0" *) 
  (* C_S_AXI_DATA_WIDTH = "128" *) 
  (* C_S_AXI_ID_WIDTH = "16" *) 
  (* C_S_AXI_RUSER_WIDTH = "17" *) 
  (* C_S_AXI_WUSER_WIDTH = "17" *) 
  (* DONT_TOUCH *) 
  ulp_inst_0_ai_noc_v1_0_0_ai_noc inst
       (.from_aie_2(1'b0),
        .from_aie_3(1'b0),
        .from_aie_4(1'b0),
        .from_aie_5(1'b0),
        .m_axi_aclk(NLW_inst_m_axi_aclk_UNCONNECTED),
        .m_axi_araddr(NLW_inst_m_axi_araddr_UNCONNECTED[63:0]),
        .m_axi_arburst(NLW_inst_m_axi_arburst_UNCONNECTED[1:0]),
        .m_axi_arcache(NLW_inst_m_axi_arcache_UNCONNECTED[3:0]),
        .m_axi_aresetn(1'b0),
        .m_axi_arid(NLW_inst_m_axi_arid_UNCONNECTED[15:0]),
        .m_axi_arlen(NLW_inst_m_axi_arlen_UNCONNECTED[7:0]),
        .m_axi_arlock(NLW_inst_m_axi_arlock_UNCONNECTED),
        .m_axi_arprot(NLW_inst_m_axi_arprot_UNCONNECTED[2:0]),
        .m_axi_arqos(NLW_inst_m_axi_arqos_UNCONNECTED[3:0]),
        .m_axi_arready(1'b0),
        .m_axi_arregion(NLW_inst_m_axi_arregion_UNCONNECTED[3:0]),
        .m_axi_arsize(NLW_inst_m_axi_arsize_UNCONNECTED[2:0]),
        .m_axi_aruser(NLW_inst_m_axi_aruser_UNCONNECTED[0]),
        .m_axi_arvalid(NLW_inst_m_axi_arvalid_UNCONNECTED),
        .m_axi_awaddr(NLW_inst_m_axi_awaddr_UNCONNECTED[63:0]),
        .m_axi_awburst(NLW_inst_m_axi_awburst_UNCONNECTED[1:0]),
        .m_axi_awcache(NLW_inst_m_axi_awcache_UNCONNECTED[3:0]),
        .m_axi_awid(NLW_inst_m_axi_awid_UNCONNECTED[15:0]),
        .m_axi_awlen(NLW_inst_m_axi_awlen_UNCONNECTED[7:0]),
        .m_axi_awlock(NLW_inst_m_axi_awlock_UNCONNECTED),
        .m_axi_awprot(NLW_inst_m_axi_awprot_UNCONNECTED[2:0]),
        .m_axi_awqos(NLW_inst_m_axi_awqos_UNCONNECTED[3:0]),
        .m_axi_awready(1'b0),
        .m_axi_awregion(NLW_inst_m_axi_awregion_UNCONNECTED[3:0]),
        .m_axi_awsize(NLW_inst_m_axi_awsize_UNCONNECTED[2:0]),
        .m_axi_awuser(NLW_inst_m_axi_awuser_UNCONNECTED[0]),
        .m_axi_awvalid(NLW_inst_m_axi_awvalid_UNCONNECTED),
        .m_axi_bid({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .m_axi_bready(NLW_inst_m_axi_bready_UNCONNECTED),
        .m_axi_bresp({1'b0,1'b0}),
        .m_axi_buser(1'b0),
        .m_axi_bvalid(1'b0),
        .m_axi_destid_rd(NLW_inst_m_axi_destid_rd_UNCONNECTED[11:0]),
        .m_axi_destid_wr(NLW_inst_m_axi_destid_wr_UNCONNECTED[11:0]),
        .m_axi_destmode_rd(NLW_inst_m_axi_destmode_rd_UNCONNECTED),
        .m_axi_destmode_wr(NLW_inst_m_axi_destmode_wr_UNCONNECTED),
        .m_axi_rdata({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .m_axi_rid({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .m_axi_rlast(1'b0),
        .m_axi_rready(NLW_inst_m_axi_rready_UNCONNECTED),
        .m_axi_rresp({1'b0,1'b0}),
        .m_axi_ruser(1'b0),
        .m_axi_rvalid(1'b0),
        .m_axi_wdata(NLW_inst_m_axi_wdata_UNCONNECTED[127:0]),
        .m_axi_wlast(NLW_inst_m_axi_wlast_UNCONNECTED),
        .m_axi_wready(1'b0),
        .m_axi_wstrb(NLW_inst_m_axi_wstrb_UNCONNECTED[15:0]),
        .m_axi_wuser(NLW_inst_m_axi_wuser_UNCONNECTED[0]),
        .m_axi_wvalid(NLW_inst_m_axi_wvalid_UNCONNECTED),
        .m_axis_aclk(NLW_inst_m_axis_aclk_UNCONNECTED),
        .m_axis_aresetn(1'b0),
        .m_axis_tdata(NLW_inst_m_axis_tdata_UNCONNECTED[127:0]),
        .m_axis_tdest(NLW_inst_m_axis_tdest_UNCONNECTED[9:0]),
        .m_axis_tid(NLW_inst_m_axis_tid_UNCONNECTED[1:0]),
        .m_axis_tkeep(NLW_inst_m_axis_tkeep_UNCONNECTED[15:0]),
        .m_axis_tlast(NLW_inst_m_axis_tlast_UNCONNECTED),
        .m_axis_tready(1'b0),
        .m_axis_tvalid(NLW_inst_m_axis_tvalid_UNCONNECTED),
        .s_axi_aclk(s_axi_aclk),
        .s_axi_araddr(s_axi_araddr),
        .s_axi_arburst(s_axi_arburst),
        .s_axi_arcache(s_axi_arcache),
        .s_axi_aresetn(1'b0),
        .s_axi_arid(s_axi_arid),
        .s_axi_arlen(s_axi_arlen),
        .s_axi_arlock(s_axi_arlock),
        .s_axi_arprot(s_axi_arprot),
        .s_axi_arqos(s_axi_arqos),
        .s_axi_arready(s_axi_arready),
        .s_axi_arregion(s_axi_arregion),
        .s_axi_arsize(s_axi_arsize),
        .s_axi_aruser({1'b0,1'b0}),
        .s_axi_arvalid(s_axi_arvalid),
        .s_axi_awaddr(s_axi_awaddr),
        .s_axi_awburst(s_axi_awburst),
        .s_axi_awcache(s_axi_awcache),
        .s_axi_awid(s_axi_awid),
        .s_axi_awlen(s_axi_awlen),
        .s_axi_awlock(s_axi_awlock),
        .s_axi_awprot(s_axi_awprot),
        .s_axi_awqos(s_axi_awqos),
        .s_axi_awready(s_axi_awready),
        .s_axi_awregion(s_axi_awregion),
        .s_axi_awsize(s_axi_awsize),
        .s_axi_awuser({1'b0,1'b0}),
        .s_axi_awvalid(s_axi_awvalid),
        .s_axi_bid({inst_n_3,inst_n_4,inst_n_5,inst_n_6,inst_n_7,inst_n_8,inst_n_9,inst_n_10,inst_n_11,inst_n_12,inst_n_13,inst_n_14,inst_n_15,inst_n_16,\^s_axi_bid }),
        .s_axi_bready(s_axi_bready),
        .s_axi_bresp(s_axi_bresp),
        .s_axi_buser(NLW_inst_s_axi_buser_UNCONNECTED[-1:0]),
        .s_axi_bvalid(s_axi_bvalid),
        .s_axi_rdata(s_axi_rdata),
        .s_axi_rid({inst_n_25,inst_n_26,inst_n_27,inst_n_28,inst_n_29,inst_n_30,inst_n_31,inst_n_32,inst_n_33,inst_n_34,inst_n_35,inst_n_36,inst_n_37,inst_n_38,\^s_axi_rid }),
        .s_axi_rlast(s_axi_rlast),
        .s_axi_rready(s_axi_rready),
        .s_axi_rresp(s_axi_rresp),
        .s_axi_ruser(s_axi_ruser),
        .s_axi_rvalid(s_axi_rvalid),
        .s_axi_wdata(s_axi_wdata),
        .s_axi_wlast(s_axi_wlast),
        .s_axi_wready(s_axi_wready),
        .s_axi_wstrb(s_axi_wstrb),
        .s_axi_wuser(s_axi_wuser),
        .s_axi_wvalid(s_axi_wvalid),
        .s_axis_aclk(NLW_inst_s_axis_aclk_UNCONNECTED),
        .s_axis_aresetn(1'b0),
        .s_axis_tdata({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axis_tdest({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axis_tid({1'b0,1'b0}),
        .s_axis_tkeep({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axis_tlast(1'b0),
        .s_axis_tready(NLW_inst_s_axis_tready_UNCONNECTED),
        .s_axis_tvalid(1'b0),
        .to_aie_2(inst_n_192),
        .to_aie_3(inst_n_193),
        .to_aie_6(inst_n_194),
        .to_aie_7(inst_n_195));
endmodule

(* X_CORE_INFO = "util_vector_logic_v2_0_2_util_vector_logic,Vivado 2022.2" *) 
module ulp_inst_0_gate_dbgfw_or_0
   (Op1,
    Op2,
    Res);
  input [0:0]Op1;
  input [0:0]Op2;
  output [0:0]Res;


endmodule

(* X_CORE_INFO = "util_ff_v1_0_1_util_ff,Vivado 2022.2" *) 
module ulp_inst_0_ip_pipe_dbg_hub_fw_00_0
   (clk,
    D,
    Q,
    reset,
    clk_enable);
  input clk;
  input [0:0]D;
  output [0:0]Q;
  input reset;
  input clk_enable;


endmodule

(* X_CORE_INFO = "util_ff_v1_0_1_util_ff,Vivado 2022.2" *) 
module ulp_inst_0_ip_pipe_ext_tog_kernel_00_null_0
   (clk,
    D,
    Q,
    reset,
    clk_enable);
  input clk;
  input [0:0]D;
  output [0:0]Q;
  input reset;
  input clk_enable;


endmodule

(* X_CORE_INFO = "util_ff_v1_0_1_util_ff,Vivado 2022.2" *) 
module ulp_inst_0_ip_pipe_ext_tog_kernel_01_null_0
   (clk,
    D,
    Q,
    reset,
    clk_enable);
  input clk;
  input [0:0]D;
  output [0:0]Q;
  input reset;
  input clk_enable;


endmodule

(* X_CORE_INFO = "util_ff_v1_0_1_util_ff,Vivado 2022.2" *) 
module ulp_inst_0_pipereg_kernel0_0
   (clk,
    D,
    Q,
    reset,
    clk_enable);
  input clk;
  input [0:0]D;
  output [0:0]Q;
  input reset;
  input clk_enable;


endmodule

(* X_CORE_INFO = "util_ff_v1_0_1_util_ff,Vivado 2022.2" *) 
module ulp_inst_0_pipereg_kernel1_0
   (clk,
    D,
    Q,
    reset,
    clk_enable);
  input clk;
  input [0:0]D;
  output [0:0]Q;
  input reset;
  input clk_enable;


endmodule

(* X_CORE_INFO = "util_ff_v1_0_1_util_ff,Vivado 2022.2" *) 
module ulp_inst_0_pipereg_pcie0_0
   (clk,
    D,
    Q,
    reset,
    clk_enable);
  input clk;
  input [0:0]D;
  output [0:0]Q;
  input reset;
  input clk_enable;


endmodule

(* X_CORE_INFO = "util_ff_v1_0_1_util_ff,Vivado 2022.2" *) 
module ulp_inst_0_pipereg_pl_axi0_0
   (clk,
    D,
    Q,
    reset,
    clk_enable);
  input clk;
  input [0:0]D;
  output [0:0]Q;
  input reset;
  input clk_enable;


endmodule

(* X_CORE_INFO = "axi_bram_ctrl,Vivado 2022.2" *) 
module ulp_inst_0_plram_ctrl_0
   (s_axi_aclk,
    s_axi_aresetn,
    s_axi_awaddr,
    s_axi_awlen,
    s_axi_awsize,
    s_axi_awburst,
    s_axi_awlock,
    s_axi_awcache,
    s_axi_awprot,
    s_axi_awvalid,
    s_axi_awready,
    s_axi_wdata,
    s_axi_wstrb,
    s_axi_wlast,
    s_axi_wvalid,
    s_axi_wready,
    s_axi_bresp,
    s_axi_bvalid,
    s_axi_bready,
    s_axi_araddr,
    s_axi_arlen,
    s_axi_arsize,
    s_axi_arburst,
    s_axi_arlock,
    s_axi_arcache,
    s_axi_arprot,
    s_axi_arvalid,
    s_axi_arready,
    s_axi_rdata,
    s_axi_rresp,
    s_axi_rlast,
    s_axi_rvalid,
    s_axi_rready,
    bram_rst_a,
    bram_clk_a,
    bram_en_a,
    bram_we_a,
    bram_addr_a,
    bram_wrdata_a,
    bram_rddata_a);
  input s_axi_aclk;
  input s_axi_aresetn;
  input [16:0]s_axi_awaddr;
  input [7:0]s_axi_awlen;
  input [2:0]s_axi_awsize;
  input [1:0]s_axi_awburst;
  input s_axi_awlock;
  input [3:0]s_axi_awcache;
  input [2:0]s_axi_awprot;
  input s_axi_awvalid;
  output s_axi_awready;
  input [511:0]s_axi_wdata;
  input [63:0]s_axi_wstrb;
  input s_axi_wlast;
  input s_axi_wvalid;
  output s_axi_wready;
  output [1:0]s_axi_bresp;
  output s_axi_bvalid;
  input s_axi_bready;
  input [16:0]s_axi_araddr;
  input [7:0]s_axi_arlen;
  input [2:0]s_axi_arsize;
  input [1:0]s_axi_arburst;
  input s_axi_arlock;
  input [3:0]s_axi_arcache;
  input [2:0]s_axi_arprot;
  input s_axi_arvalid;
  output s_axi_arready;
  output [511:0]s_axi_rdata;
  output [1:0]s_axi_rresp;
  output s_axi_rlast;
  output s_axi_rvalid;
  input s_axi_rready;
  output bram_rst_a;
  output bram_clk_a;
  output bram_en_a;
  output [63:0]bram_we_a;
  output [16:0]bram_addr_a;
  output [511:0]bram_wrdata_a;
  input [511:0]bram_rddata_a;


endmodule

(* X_CORE_INFO = "emb_mem_gen_v1_0_6,Vivado 2022.2" *) 
module ulp_inst_0_plram_ctrl_bram_0
   (clka,
    rsta,
    ena,
    regcea,
    wea,
    addra,
    dina,
    douta);
  input clka;
  input rsta;
  input ena;
  input regcea;
  input [63:0]wea;
  input [16:0]addra;
  input [511:0]dina;
  output [511:0]douta;


endmodule

(* ORIG_REF_NAME = "reset_controllers_imp_1KQP16U" *) 
module ulp_inst_0_reset_controllers_imp_1KQP16U
   (resetn_kernel0_ic,
    resetn_pcie_axi,
    resetn_pl_axi,
    blp_s_aclk_kernel_00,
    blp_s_aclk_kernel_01,
    blp_s_aclk_pcie_00,
    blp_s_aresetn_pcie_reset_00,
    blp_s_aclk_ctrl_00,
    blp_s_aresetn_pr_reset_00);
  output [0:0]resetn_kernel0_ic;
  output [0:0]resetn_pcie_axi;
  output [0:0]resetn_pl_axi;
  input blp_s_aclk_kernel_00;
  input blp_s_aclk_kernel_01;
  input blp_s_aclk_pcie_00;
  input [0:0]blp_s_aresetn_pcie_reset_00;
  input blp_s_aclk_ctrl_00;
  input [0:0]blp_s_aresetn_pr_reset_00;

  wire blp_s_aclk_ctrl_00;
  wire blp_s_aclk_kernel_00;
  wire blp_s_aclk_kernel_01;
  wire blp_s_aclk_pcie_00;
  wire [0:0]blp_s_aresetn_pcie_reset_00;
  wire [0:0]blp_s_aresetn_pr_reset_00;
  wire pipereg_kernel1_n_0;
  wire reset_sync_kernel0_interconnect_aresetn;
  wire reset_sync_kernel1_interconnect_aresetn;
  wire [0:0]resetn_kernel0_ic;
  wire [0:0]resetn_pcie_axi;
  wire [0:0]resetn_pl_axi;
  wire NLW_reset_sync_fixed_mb_reset_UNCONNECTED;
  wire [0:0]NLW_reset_sync_fixed_bus_struct_reset_UNCONNECTED;
  wire [0:0]NLW_reset_sync_fixed_interconnect_aresetn_UNCONNECTED;
  wire [0:0]NLW_reset_sync_fixed_peripheral_aresetn_UNCONNECTED;
  wire [0:0]NLW_reset_sync_fixed_peripheral_reset_UNCONNECTED;
  wire NLW_reset_sync_kernel0_mb_reset_UNCONNECTED;
  wire [0:0]NLW_reset_sync_kernel0_bus_struct_reset_UNCONNECTED;
  wire [0:0]NLW_reset_sync_kernel0_peripheral_aresetn_UNCONNECTED;
  wire [0:0]NLW_reset_sync_kernel0_peripheral_reset_UNCONNECTED;
  wire NLW_reset_sync_kernel1_mb_reset_UNCONNECTED;
  wire [0:0]NLW_reset_sync_kernel1_bus_struct_reset_UNCONNECTED;
  wire [0:0]NLW_reset_sync_kernel1_peripheral_aresetn_UNCONNECTED;
  wire [0:0]NLW_reset_sync_kernel1_peripheral_reset_UNCONNECTED;

  (* X_CORE_INFO = "util_ff_v1_0_1_util_ff,Vivado 2022.2" *) 
  ulp_inst_0_pipereg_kernel0_0 pipereg_kernel0
       (.D(reset_sync_kernel0_interconnect_aresetn),
        .Q(resetn_kernel0_ic),
        .clk(blp_s_aclk_kernel_00),
        .clk_enable(1'b1),
        .reset(1'b1));
  (* X_CORE_INFO = "util_ff_v1_0_1_util_ff,Vivado 2022.2" *) 
  ulp_inst_0_pipereg_kernel1_0 pipereg_kernel1
       (.D(reset_sync_kernel1_interconnect_aresetn),
        .Q(pipereg_kernel1_n_0),
        .clk(blp_s_aclk_kernel_01),
        .clk_enable(1'b1),
        .reset(1'b1));
  (* X_CORE_INFO = "util_ff_v1_0_1_util_ff,Vivado 2022.2" *) 
  ulp_inst_0_pipereg_pcie0_0 pipereg_pcie0
       (.D(blp_s_aresetn_pcie_reset_00),
        .Q(resetn_pcie_axi),
        .clk(blp_s_aclk_pcie_00),
        .clk_enable(1'b1),
        .reset(1'b1));
  (* X_CORE_INFO = "util_ff_v1_0_1_util_ff,Vivado 2022.2" *) 
  ulp_inst_0_pipereg_pl_axi0_0 pipereg_pl_axi0
       (.D(blp_s_aresetn_pr_reset_00),
        .Q(resetn_pl_axi),
        .clk(blp_s_aclk_ctrl_00),
        .clk_enable(1'b1),
        .reset(1'b1));
  (* X_CORE_INFO = "proc_sys_reset,Vivado 2022.2" *) 
  ulp_inst_0_reset_sync_fixed_0 reset_sync_fixed
       (.aux_reset_in(1'b1),
        .bus_struct_reset(NLW_reset_sync_fixed_bus_struct_reset_UNCONNECTED[0]),
        .dcm_locked(1'b1),
        .ext_reset_in(blp_s_aresetn_pr_reset_00),
        .interconnect_aresetn(NLW_reset_sync_fixed_interconnect_aresetn_UNCONNECTED[0]),
        .mb_debug_sys_rst(1'b0),
        .mb_reset(NLW_reset_sync_fixed_mb_reset_UNCONNECTED),
        .peripheral_aresetn(NLW_reset_sync_fixed_peripheral_aresetn_UNCONNECTED[0]),
        .peripheral_reset(NLW_reset_sync_fixed_peripheral_reset_UNCONNECTED[0]),
        .slowest_sync_clk(blp_s_aclk_ctrl_00));
  (* X_CORE_INFO = "proc_sys_reset,Vivado 2022.2" *) 
  ulp_inst_0_reset_sync_kernel0_0 reset_sync_kernel0
       (.aux_reset_in(1'b1),
        .bus_struct_reset(NLW_reset_sync_kernel0_bus_struct_reset_UNCONNECTED[0]),
        .dcm_locked(1'b1),
        .ext_reset_in(blp_s_aresetn_pr_reset_00),
        .interconnect_aresetn(reset_sync_kernel0_interconnect_aresetn),
        .mb_debug_sys_rst(1'b0),
        .mb_reset(NLW_reset_sync_kernel0_mb_reset_UNCONNECTED),
        .peripheral_aresetn(NLW_reset_sync_kernel0_peripheral_aresetn_UNCONNECTED[0]),
        .peripheral_reset(NLW_reset_sync_kernel0_peripheral_reset_UNCONNECTED[0]),
        .slowest_sync_clk(blp_s_aclk_kernel_00));
  (* X_CORE_INFO = "proc_sys_reset,Vivado 2022.2" *) 
  ulp_inst_0_reset_sync_kernel1_0 reset_sync_kernel1
       (.aux_reset_in(1'b1),
        .bus_struct_reset(NLW_reset_sync_kernel1_bus_struct_reset_UNCONNECTED[0]),
        .dcm_locked(1'b1),
        .ext_reset_in(blp_s_aresetn_pr_reset_00),
        .interconnect_aresetn(reset_sync_kernel1_interconnect_aresetn),
        .mb_debug_sys_rst(1'b0),
        .mb_reset(NLW_reset_sync_kernel1_mb_reset_UNCONNECTED),
        .peripheral_aresetn(NLW_reset_sync_kernel1_peripheral_aresetn_UNCONNECTED[0]),
        .peripheral_reset(NLW_reset_sync_kernel1_peripheral_reset_UNCONNECTED[0]),
        .slowest_sync_clk(blp_s_aclk_kernel_01));
endmodule

(* X_CORE_INFO = "proc_sys_reset,Vivado 2022.2" *) 
module ulp_inst_0_reset_sync_fixed_0
   (slowest_sync_clk,
    ext_reset_in,
    aux_reset_in,
    mb_debug_sys_rst,
    dcm_locked,
    mb_reset,
    bus_struct_reset,
    peripheral_reset,
    interconnect_aresetn,
    peripheral_aresetn);
  input slowest_sync_clk;
  input ext_reset_in;
  input aux_reset_in;
  input mb_debug_sys_rst;
  input dcm_locked;
  output mb_reset;
  output [0:0]bus_struct_reset;
  output [0:0]peripheral_reset;
  output [0:0]interconnect_aresetn;
  output [0:0]peripheral_aresetn;


endmodule

(* X_CORE_INFO = "proc_sys_reset,Vivado 2022.2" *) 
module ulp_inst_0_reset_sync_kernel0_0
   (slowest_sync_clk,
    ext_reset_in,
    aux_reset_in,
    mb_debug_sys_rst,
    dcm_locked,
    mb_reset,
    bus_struct_reset,
    peripheral_reset,
    interconnect_aresetn,
    peripheral_aresetn);
  input slowest_sync_clk;
  input ext_reset_in;
  input aux_reset_in;
  input mb_debug_sys_rst;
  input dcm_locked;
  output mb_reset;
  output [0:0]bus_struct_reset;
  output [0:0]peripheral_reset;
  output [0:0]interconnect_aresetn;
  output [0:0]peripheral_aresetn;


endmodule

(* X_CORE_INFO = "proc_sys_reset,Vivado 2022.2" *) 
module ulp_inst_0_reset_sync_kernel1_0
   (slowest_sync_clk,
    ext_reset_in,
    aux_reset_in,
    mb_debug_sys_rst,
    dcm_locked,
    mb_reset,
    bus_struct_reset,
    peripheral_reset,
    interconnect_aresetn,
    peripheral_aresetn);
  input slowest_sync_clk;
  input ext_reset_in;
  input aux_reset_in;
  input mb_debug_sys_rst;
  input dcm_locked;
  output mb_reset;
  output [0:0]bus_struct_reset;
  output [0:0]peripheral_reset;
  output [0:0]interconnect_aresetn;
  output [0:0]peripheral_aresetn;


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
