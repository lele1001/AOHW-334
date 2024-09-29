// Copyright 1986-2023 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2022.2.2 (lin64) Build 3788238 Tue Feb 21 19:59:23 MST 2023
// Date        : Fri Jun 28 10:41:07 2024
// Host        : nags27 running 64-bit Ubuntu 20.04.6 LTS
// Command     : write_verilog -force -mode funcsim
//               /home/users/eleonora.cabai/Documents/K-Means-AIE/hw/_x/link/vivado/vpl/prj/prj.gen/my_rm/bd/ulp_inst_0/ulp_inst_0_sim_netlist.v
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
  wire [31:0]ai_engine_0_M00_AXIS_TDATA;
  wire ai_engine_0_M00_AXIS_TREADY;
  wire ai_engine_0_M00_AXIS_TVALID;
  wire ai_engine_0_s00_axi_aclk;
  wire axi_dbg_fw_mi_r_error;
  wire axi_dbg_fw_mi_w_error;
  wire [63:0]axi_ic_user_M00_AXI_ARADDR;
  wire [1:0]axi_ic_user_M00_AXI_ARBURST;
  wire [3:0]axi_ic_user_M00_AXI_ARCACHE;
  wire [1:0]axi_ic_user_M00_AXI_ARID;
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
  wire [1:0]axi_ic_user_M00_AXI_AWID;
  wire [7:0]axi_ic_user_M00_AXI_AWLEN;
  wire axi_ic_user_M00_AXI_AWLOCK;
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
  wire [1:0]\^blp_m_irq_kernel_00 ;
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
  wire [31:0]dwc_setup_aie_0_s_M_AXIS_TDATA;
  wire dwc_setup_aie_0_s_M_AXIS_TREADY;
  wire dwc_setup_aie_0_s_M_AXIS_TVALID;
  wire gate_dbgfw_or_Res;
  wire [1:0]kernel_interrupt_xlconcat_0_In0_1_interrupt_concat_dout;
  wire [16:0]plram_ctrl_BRAM_PORTA_ADDR;
  wire plram_ctrl_BRAM_PORTA_CLK;
  wire [511:0]plram_ctrl_BRAM_PORTA_DIN;
  wire [511:0]plram_ctrl_BRAM_PORTA_DOUT;
  wire plram_ctrl_BRAM_PORTA_EN;
  wire plram_ctrl_BRAM_PORTA_RST;
  wire [63:0]plram_ctrl_BRAM_PORTA_WE;
  wire reset_controllers_interconnect_aresetn;
  wire reset_controllers_peripheral_aresetn;
  wire reset_controllers_resetn_kernel0_ic;
  wire resetn_pcie_axi_net;
  wire resetn_pl_axi_net;
  wire setup_aie_0_interrupt;
  wire [63:0]setup_aie_0_m_axi_gmem0_ARADDR;
  wire [1:0]setup_aie_0_m_axi_gmem0_ARBURST;
  wire [3:0]setup_aie_0_m_axi_gmem0_ARCACHE;
  wire setup_aie_0_m_axi_gmem0_ARID;
  wire [7:0]setup_aie_0_m_axi_gmem0_ARLEN;
  wire setup_aie_0_m_axi_gmem0_ARLOCK;
  wire [2:0]setup_aie_0_m_axi_gmem0_ARPROT;
  wire [3:0]setup_aie_0_m_axi_gmem0_ARQOS;
  wire setup_aie_0_m_axi_gmem0_ARREADY;
  wire [3:0]setup_aie_0_m_axi_gmem0_ARREGION;
  wire [2:0]setup_aie_0_m_axi_gmem0_ARSIZE;
  wire setup_aie_0_m_axi_gmem0_ARVALID;
  wire [63:0]setup_aie_0_m_axi_gmem0_AWADDR;
  wire [1:0]setup_aie_0_m_axi_gmem0_AWBURST;
  wire [3:0]setup_aie_0_m_axi_gmem0_AWCACHE;
  wire setup_aie_0_m_axi_gmem0_AWID;
  wire [7:0]setup_aie_0_m_axi_gmem0_AWLEN;
  wire setup_aie_0_m_axi_gmem0_AWLOCK;
  wire [2:0]setup_aie_0_m_axi_gmem0_AWPROT;
  wire [3:0]setup_aie_0_m_axi_gmem0_AWQOS;
  wire setup_aie_0_m_axi_gmem0_AWREADY;
  wire [3:0]setup_aie_0_m_axi_gmem0_AWREGION;
  wire [2:0]setup_aie_0_m_axi_gmem0_AWSIZE;
  wire setup_aie_0_m_axi_gmem0_AWVALID;
  wire setup_aie_0_m_axi_gmem0_BID;
  wire setup_aie_0_m_axi_gmem0_BREADY;
  wire [1:0]setup_aie_0_m_axi_gmem0_BRESP;
  wire setup_aie_0_m_axi_gmem0_BVALID;
  wire [127:0]setup_aie_0_m_axi_gmem0_RDATA;
  wire setup_aie_0_m_axi_gmem0_RID;
  wire setup_aie_0_m_axi_gmem0_RLAST;
  wire setup_aie_0_m_axi_gmem0_RREADY;
  wire [1:0]setup_aie_0_m_axi_gmem0_RRESP;
  wire setup_aie_0_m_axi_gmem0_RVALID;
  wire [127:0]setup_aie_0_m_axi_gmem0_WDATA;
  wire setup_aie_0_m_axi_gmem0_WLAST;
  wire setup_aie_0_m_axi_gmem0_WREADY;
  wire [15:0]setup_aie_0_m_axi_gmem0_WSTRB;
  wire setup_aie_0_m_axi_gmem0_WVALID;
  wire [127:0]setup_aie_0_s_TDATA;
  wire setup_aie_0_s_TREADY;
  wire setup_aie_0_s_TVALID;
  wire sink_from_aie_0_interrupt;
  wire [63:0]sink_from_aie_0_m_axi_gmem1_ARADDR;
  wire [1:0]sink_from_aie_0_m_axi_gmem1_ARBURST;
  wire [3:0]sink_from_aie_0_m_axi_gmem1_ARCACHE;
  wire sink_from_aie_0_m_axi_gmem1_ARID;
  wire [7:0]sink_from_aie_0_m_axi_gmem1_ARLEN;
  wire sink_from_aie_0_m_axi_gmem1_ARLOCK;
  wire [2:0]sink_from_aie_0_m_axi_gmem1_ARPROT;
  wire [3:0]sink_from_aie_0_m_axi_gmem1_ARQOS;
  wire sink_from_aie_0_m_axi_gmem1_ARREADY;
  wire [3:0]sink_from_aie_0_m_axi_gmem1_ARREGION;
  wire [2:0]sink_from_aie_0_m_axi_gmem1_ARSIZE;
  wire sink_from_aie_0_m_axi_gmem1_ARVALID;
  wire [63:0]sink_from_aie_0_m_axi_gmem1_AWADDR;
  wire [1:0]sink_from_aie_0_m_axi_gmem1_AWBURST;
  wire [3:0]sink_from_aie_0_m_axi_gmem1_AWCACHE;
  wire sink_from_aie_0_m_axi_gmem1_AWID;
  wire [7:0]sink_from_aie_0_m_axi_gmem1_AWLEN;
  wire sink_from_aie_0_m_axi_gmem1_AWLOCK;
  wire [2:0]sink_from_aie_0_m_axi_gmem1_AWPROT;
  wire [3:0]sink_from_aie_0_m_axi_gmem1_AWQOS;
  wire sink_from_aie_0_m_axi_gmem1_AWREADY;
  wire [3:0]sink_from_aie_0_m_axi_gmem1_AWREGION;
  wire [2:0]sink_from_aie_0_m_axi_gmem1_AWSIZE;
  wire sink_from_aie_0_m_axi_gmem1_AWVALID;
  wire sink_from_aie_0_m_axi_gmem1_BID;
  wire sink_from_aie_0_m_axi_gmem1_BREADY;
  wire [1:0]sink_from_aie_0_m_axi_gmem1_BRESP;
  wire sink_from_aie_0_m_axi_gmem1_BVALID;
  wire [31:0]sink_from_aie_0_m_axi_gmem1_RDATA;
  wire sink_from_aie_0_m_axi_gmem1_RID;
  wire sink_from_aie_0_m_axi_gmem1_RLAST;
  wire sink_from_aie_0_m_axi_gmem1_RREADY;
  wire [1:0]sink_from_aie_0_m_axi_gmem1_RRESP;
  wire sink_from_aie_0_m_axi_gmem1_RVALID;
  wire [31:0]sink_from_aie_0_m_axi_gmem1_WDATA;
  wire sink_from_aie_0_m_axi_gmem1_WLAST;
  wire sink_from_aie_0_m_axi_gmem1_WREADY;
  wire [3:0]sink_from_aie_0_m_axi_gmem1_WSTRB;
  wire sink_from_aie_0_m_axi_gmem1_WVALID;
  wire [3:0]NLW_ai_engine_0_M00_AXIS_tkeep_UNCONNECTED;
  wire [0:0]NLW_ai_engine_0_M00_AXIS_tlast_UNCONNECTED;
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
  wire [2:0]NLW_axi_ic_user_M01_AXI_arprot_UNCONNECTED;
  wire [2:0]NLW_axi_ic_user_M01_AXI_awprot_UNCONNECTED;
  wire [2:0]NLW_axi_ic_user_M02_AXI_arprot_UNCONNECTED;
  wire [2:0]NLW_axi_ic_user_M02_AXI_awprot_UNCONNECTED;
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
  wire [31:2]NLW_kernel_interrupt_xlconcat_0_In0_1_interrupt_concat_dout_UNCONNECTED;
  wire NLW_setup_aie_0_event_done_UNCONNECTED;
  wire NLW_setup_aie_0_event_start_UNCONNECTED;
  wire NLW_setup_aie_0_stall_done_ext_UNCONNECTED;
  wire NLW_setup_aie_0_stall_done_int_UNCONNECTED;
  wire NLW_setup_aie_0_stall_done_str_UNCONNECTED;
  wire NLW_setup_aie_0_stall_start_ext_UNCONNECTED;
  wire NLW_setup_aie_0_stall_start_int_UNCONNECTED;
  wire NLW_setup_aie_0_stall_start_str_UNCONNECTED;
  wire [1:1]NLW_setup_aie_0_m_axi_gmem0_ARLOCK_UNCONNECTED;
  wire [1:1]NLW_setup_aie_0_m_axi_gmem0_AWLOCK_UNCONNECTED;
  wire [0:0]NLW_setup_aie_0_m_axi_gmem0_WID_UNCONNECTED;
  wire NLW_sink_from_aie_0_event_done_UNCONNECTED;
  wire NLW_sink_from_aie_0_event_start_UNCONNECTED;
  wire NLW_sink_from_aie_0_stall_done_ext_UNCONNECTED;
  wire NLW_sink_from_aie_0_stall_done_int_UNCONNECTED;
  wire NLW_sink_from_aie_0_stall_done_str_UNCONNECTED;
  wire NLW_sink_from_aie_0_stall_start_ext_UNCONNECTED;
  wire NLW_sink_from_aie_0_stall_start_int_UNCONNECTED;
  wire NLW_sink_from_aie_0_stall_start_str_UNCONNECTED;
  wire [1:1]NLW_sink_from_aie_0_m_axi_gmem1_ARLOCK_UNCONNECTED;
  wire [1:1]NLW_sink_from_aie_0_m_axi_gmem1_AWLOCK_UNCONNECTED;
  wire [0:0]NLW_sink_from_aie_0_m_axi_gmem1_WID_UNCONNECTED;

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
  assign blp_m_irq_kernel_00[1:0] = \^blp_m_irq_kernel_00 [1:0];
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
  (* X_CORE_INFO = "bd_9d54,Vivado 2022.2.2" *) 
  ulp_inst_0_ai_engine_0_0 ai_engine_0
       (.M00_AXIS_tdata(ai_engine_0_M00_AXIS_TDATA),
        .M00_AXIS_tkeep(NLW_ai_engine_0_M00_AXIS_tkeep_UNCONNECTED[3:0]),
        .M00_AXIS_tlast(NLW_ai_engine_0_M00_AXIS_tlast_UNCONNECTED[0]),
        .M00_AXIS_tready(ai_engine_0_M00_AXIS_TREADY),
        .M00_AXIS_tvalid(ai_engine_0_M00_AXIS_TVALID),
        .S00_AXIS_tdata(dwc_setup_aie_0_s_M_AXIS_TDATA),
        .S00_AXIS_tlast(1'b0),
        .S00_AXIS_tready(dwc_setup_aie_0_s_M_AXIS_TREADY),
        .S00_AXIS_tvalid(dwc_setup_aie_0_s_M_AXIS_TVALID),
        .S00_AXI_araddr(axi_noc_aie_prog_M00_AXI_ARADDR),
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
        .aclk0(blp_s_aclk_kernel_00),
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
  (* X_CORE_INFO = "bd_d23e,Vivado 2022.2.2" *) 
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
        .M01_AXI_arprot(NLW_axi_ic_user_M01_AXI_arprot_UNCONNECTED[2:0]),
        .M01_AXI_arready(axi_ic_user_M01_AXI_ARREADY),
        .M01_AXI_arvalid(axi_ic_user_M01_AXI_ARVALID),
        .M01_AXI_awaddr(axi_ic_user_M01_AXI_AWADDR),
        .M01_AXI_awprot(NLW_axi_ic_user_M01_AXI_awprot_UNCONNECTED[2:0]),
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
        .M02_AXI_arprot(NLW_axi_ic_user_M02_AXI_arprot_UNCONNECTED[2:0]),
        .M02_AXI_arready(axi_ic_user_M02_AXI_ARREADY),
        .M02_AXI_arvalid(axi_ic_user_M02_AXI_ARVALID),
        .M02_AXI_awaddr(axi_ic_user_M02_AXI_AWADDR),
        .M02_AXI_awprot(NLW_axi_ic_user_M02_AXI_awprot_UNCONNECTED[2:0]),
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
        .aclk1(blp_s_aclk_kernel_00),
        .aresetn(resetn_pl_axi_net));
  (* X_CORE_INFO = "bd_dad2,Vivado 2022.2.2" *) 
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
  (* X_CORE_INFO = "bd_afcb,Vivado 2022.2.2" *) 
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
  (* X_CORE_INFO = "bd_0dc7,Vivado 2022.2.2" *) 
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
  (* X_CORE_INFO = "bd_0ad1,Vivado 2022.2.2" *) 
  ulp_inst_0_axi_noc_kernel0_0 axi_noc_kernel0
       (.M00_INI_internoc(BLP_M_M00_INI_0_internoc),
        .M01_INI_internoc(BLP_M_M01_INI_0_internoc),
        .M02_INI_internoc(BLP_M_M02_INI_0_internoc),
        .S00_AXI_araddr(setup_aie_0_m_axi_gmem0_ARADDR),
        .S00_AXI_arburst(setup_aie_0_m_axi_gmem0_ARBURST),
        .S00_AXI_arcache(setup_aie_0_m_axi_gmem0_ARCACHE),
        .S00_AXI_arid(setup_aie_0_m_axi_gmem0_ARID),
        .S00_AXI_arlen(setup_aie_0_m_axi_gmem0_ARLEN),
        .S00_AXI_arlock(setup_aie_0_m_axi_gmem0_ARLOCK),
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
        .S00_AXI_awlock(setup_aie_0_m_axi_gmem0_AWLOCK),
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
        .S01_AXI_arlock(sink_from_aie_0_m_axi_gmem1_ARLOCK),
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
        .S01_AXI_awlock(sink_from_aie_0_m_axi_gmem1_AWLOCK),
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
        .aclk0(blp_s_aclk_kernel_00));
  (* X_CORE_INFO = "bd_a6d9,Vivado 2022.2.2" *) 
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
  (* X_CORE_INFO = "axis_dwidth_converter_v1_1_26_axis_dwidth_converter,Vivado 2022.2.2" *) 
  ulp_inst_0_dwc_setup_aie_0_s_0 dwc_setup_aie_0_s
       (.aclk(blp_s_aclk_kernel_00),
        .aresetn(reset_controllers_interconnect_aresetn),
        .m_axis_tdata(dwc_setup_aie_0_s_M_AXIS_TDATA),
        .m_axis_tready(dwc_setup_aie_0_s_M_AXIS_TREADY),
        .m_axis_tvalid(dwc_setup_aie_0_s_M_AXIS_TVALID),
        .s_axis_tdata(setup_aie_0_s_TDATA),
        .s_axis_tready(setup_aie_0_s_TREADY),
        .s_axis_tvalid(setup_aie_0_s_TVALID));
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
  ulp_inst_0_kernel_interrupt_imp_1VOEG4V kernel_interrupt
       (.blp_m_irq_kernel_00(\^blp_m_irq_kernel_00 ),
        .dout(kernel_interrupt_xlconcat_0_In0_1_interrupt_concat_dout));
  (* CHECK_LICENSE_TYPE = "ulp_inst_0_kernel_interrupt_xlconcat_0_In0_1_interrupt_concat_0,xlconcat_v2_1_4_xlconcat,{}" *) 
  (* DowngradeIPIdentifiedWarnings = "yes" *) 
  (* X_CORE_INFO = "xlconcat_v2_1_4_xlconcat,Vivado 2022.2.2" *) 
  ulp_inst_0_kernel_interrupt_xlconcat_0_In0_1_interrupt_concat_0 kernel_interrupt_xlconcat_0_In0_1_interrupt_concat
       (.In0(sink_from_aie_0_interrupt),
        .In1(setup_aie_0_interrupt),
        .In10(1'b0),
        .In11(1'b0),
        .In12(1'b0),
        .In13(1'b0),
        .In14(1'b0),
        .In15(1'b0),
        .In16(1'b0),
        .In17(1'b0),
        .In18(1'b0),
        .In19(1'b0),
        .In2(1'b0),
        .In20(1'b0),
        .In21(1'b0),
        .In22(1'b0),
        .In23(1'b0),
        .In24(1'b0),
        .In25(1'b0),
        .In26(1'b0),
        .In27(1'b0),
        .In28(1'b0),
        .In29(1'b0),
        .In3(1'b0),
        .In30(1'b0),
        .In31(1'b0),
        .In4(1'b0),
        .In5(1'b0),
        .In6(1'b0),
        .In7(1'b0),
        .In8(1'b0),
        .In9(1'b0),
        .dout({NLW_kernel_interrupt_xlconcat_0_In0_1_interrupt_concat_dout_UNCONNECTED[31:2],kernel_interrupt_xlconcat_0_In0_1_interrupt_concat_dout}));
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
        .interconnect_aresetn(reset_controllers_interconnect_aresetn),
        .peripheral_aresetn(reset_controllers_peripheral_aresetn),
        .resetn_kernel0_ic(reset_controllers_resetn_kernel0_ic),
        .resetn_pcie_axi(resetn_pcie_axi_net),
        .resetn_pl_axi(resetn_pl_axi_net));
  (* X_CORE_INFO = "setup_aie,Vivado 2022.2.2" *) 
  ulp_inst_0_setup_aie_0_0 setup_aie_0
       (.ap_clk(blp_s_aclk_kernel_00),
        .ap_rst_n(reset_controllers_peripheral_aresetn),
        .event_done(NLW_setup_aie_0_event_done_UNCONNECTED),
        .event_start(NLW_setup_aie_0_event_start_UNCONNECTED),
        .interrupt(setup_aie_0_interrupt),
        .m_axi_gmem0_ARADDR(setup_aie_0_m_axi_gmem0_ARADDR),
        .m_axi_gmem0_ARBURST(setup_aie_0_m_axi_gmem0_ARBURST),
        .m_axi_gmem0_ARCACHE(setup_aie_0_m_axi_gmem0_ARCACHE),
        .m_axi_gmem0_ARID(setup_aie_0_m_axi_gmem0_ARID),
        .m_axi_gmem0_ARLEN(setup_aie_0_m_axi_gmem0_ARLEN),
        .m_axi_gmem0_ARLOCK({NLW_setup_aie_0_m_axi_gmem0_ARLOCK_UNCONNECTED[1],setup_aie_0_m_axi_gmem0_ARLOCK}),
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
        .m_axi_gmem0_AWLOCK({NLW_setup_aie_0_m_axi_gmem0_AWLOCK_UNCONNECTED[1],setup_aie_0_m_axi_gmem0_AWLOCK}),
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
        .m_axi_gmem0_WID(NLW_setup_aie_0_m_axi_gmem0_WID_UNCONNECTED[0]),
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
        .s_axi_control_WVALID(axi_ic_user_M01_AXI_WVALID),
        .stall_done_ext(NLW_setup_aie_0_stall_done_ext_UNCONNECTED),
        .stall_done_int(NLW_setup_aie_0_stall_done_int_UNCONNECTED),
        .stall_done_str(NLW_setup_aie_0_stall_done_str_UNCONNECTED),
        .stall_start_ext(NLW_setup_aie_0_stall_start_ext_UNCONNECTED),
        .stall_start_int(NLW_setup_aie_0_stall_start_int_UNCONNECTED),
        .stall_start_str(NLW_setup_aie_0_stall_start_str_UNCONNECTED));
  (* X_CORE_INFO = "sink_from_aie,Vivado 2022.2.2" *) 
  ulp_inst_0_sink_from_aie_0_0 sink_from_aie_0
       (.ap_clk(blp_s_aclk_kernel_00),
        .ap_rst_n(reset_controllers_peripheral_aresetn),
        .event_done(NLW_sink_from_aie_0_event_done_UNCONNECTED),
        .event_start(NLW_sink_from_aie_0_event_start_UNCONNECTED),
        .input_stream_TDATA(ai_engine_0_M00_AXIS_TDATA),
        .input_stream_TREADY(ai_engine_0_M00_AXIS_TREADY),
        .input_stream_TVALID(ai_engine_0_M00_AXIS_TVALID),
        .interrupt(sink_from_aie_0_interrupt),
        .m_axi_gmem1_ARADDR(sink_from_aie_0_m_axi_gmem1_ARADDR),
        .m_axi_gmem1_ARBURST(sink_from_aie_0_m_axi_gmem1_ARBURST),
        .m_axi_gmem1_ARCACHE(sink_from_aie_0_m_axi_gmem1_ARCACHE),
        .m_axi_gmem1_ARID(sink_from_aie_0_m_axi_gmem1_ARID),
        .m_axi_gmem1_ARLEN(sink_from_aie_0_m_axi_gmem1_ARLEN),
        .m_axi_gmem1_ARLOCK({NLW_sink_from_aie_0_m_axi_gmem1_ARLOCK_UNCONNECTED[1],sink_from_aie_0_m_axi_gmem1_ARLOCK}),
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
        .m_axi_gmem1_AWLOCK({NLW_sink_from_aie_0_m_axi_gmem1_AWLOCK_UNCONNECTED[1],sink_from_aie_0_m_axi_gmem1_AWLOCK}),
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
        .m_axi_gmem1_WID(NLW_sink_from_aie_0_m_axi_gmem1_WID_UNCONNECTED[0]),
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
        .s_axi_control_WVALID(axi_ic_user_M02_AXI_WVALID),
        .stall_done_ext(NLW_sink_from_aie_0_stall_done_ext_UNCONNECTED),
        .stall_done_int(NLW_sink_from_aie_0_stall_done_int_UNCONNECTED),
        .stall_done_str(NLW_sink_from_aie_0_stall_done_str_UNCONNECTED),
        .stall_start_ext(NLW_sink_from_aie_0_stall_start_ext_UNCONNECTED),
        .stall_start_int(NLW_sink_from_aie_0_stall_start_int_UNCONNECTED),
        .stall_start_str(NLW_sink_from_aie_0_stall_start_str_UNCONNECTED));
endmodule

(* CHECK_LICENSE_TYPE = "ulp_inst_0_ai_engine_0_0,bd_9d54,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* X_CORE_INFO = "bd_9d54,Vivado 2022.2.2" *) 
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
    s00_axi_aclk,
    M00_AXIS_tdata,
    M00_AXIS_tkeep,
    M00_AXIS_tlast,
    M00_AXIS_tvalid,
    M00_AXIS_tready,
    S00_AXIS_tdata,
    S00_AXIS_tlast,
    S00_AXIS_tvalid,
    S00_AXIS_tready,
    aclk0);
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
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M00_AXIS TDATA" *) output [31:0]M00_AXIS_tdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M00_AXIS TKEEP" *) output [3:0]M00_AXIS_tkeep;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M00_AXIS TLAST" *) output [0:0]M00_AXIS_tlast;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M00_AXIS TVALID" *) output [0:0]M00_AXIS_tvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M00_AXIS TREADY" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME M00_AXIS, TDATA_NUM_BYTES 4, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 1, HAS_TLAST 1, FREQ_HZ 299996999, PHASE 0.0, CLK_DOMAIN cd_aclk_kernel_00, LAYERED_METADATA undef, INSERT_VIP 0, MY_CATEGORY AIE, CATEGORY PL, IS_REGISTERED true" *) input [0:0]M00_AXIS_tready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 S00_AXIS TDATA" *) input [31:0]S00_AXIS_tdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 S00_AXIS TLAST" *) input [0:0]S00_AXIS_tlast;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 S00_AXIS TVALID" *) input [0:0]S00_AXIS_tvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 S00_AXIS TREADY" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME S00_AXIS, TDATA_NUM_BYTES 4, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 1, FREQ_HZ 299996999, PHASE 0.0, CLK_DOMAIN cd_aclk_kernel_00, LAYERED_METADATA undef, INSERT_VIP 0, MY_CATEGORY AIE, CATEGORY PL, IS_REGISTERED true" *) output [0:0]S00_AXIS_tready;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 CLK.aclk0 CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME CLK.aclk0, FREQ_HZ 299996999, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN cd_aclk_kernel_00, ASSOCIATED_BUSIF M00_AXIS:S00_AXIS, INSERT_VIP 0" *) input aclk0;

  wire \<const0> ;
  wire [31:0]M00_AXIS_tdata;
  wire [0:0]M00_AXIS_tready;
  wire [0:0]M00_AXIS_tvalid;
  wire [31:0]S00_AXIS_tdata;
  wire [0:0]S00_AXIS_tready;
  wire [0:0]S00_AXIS_tvalid;
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
  wire aclk0;
  wire s00_axi_aclk;
  wire [3:0]NLW_inst_M00_AXIS_tkeep_UNCONNECTED;
  wire [0:0]NLW_inst_M00_AXIS_tlast_UNCONNECTED;
  wire [15:2]NLW_inst_S00_AXI_bid_UNCONNECTED;
  wire [15:2]NLW_inst_S00_AXI_rid_UNCONNECTED;

  assign M00_AXIS_tkeep[3] = \<const0> ;
  assign M00_AXIS_tkeep[2] = \<const0> ;
  assign M00_AXIS_tkeep[1] = \<const0> ;
  assign M00_AXIS_tkeep[0] = \<const0> ;
  assign M00_AXIS_tlast[0] = \<const0> ;
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
       (.M00_AXIS_tdata(M00_AXIS_tdata),
        .M00_AXIS_tkeep(NLW_inst_M00_AXIS_tkeep_UNCONNECTED[3:0]),
        .M00_AXIS_tlast(NLW_inst_M00_AXIS_tlast_UNCONNECTED[0]),
        .M00_AXIS_tready(M00_AXIS_tready),
        .M00_AXIS_tvalid(M00_AXIS_tvalid),
        .S00_AXIS_tdata(S00_AXIS_tdata),
        .S00_AXIS_tlast(1'b0),
        .S00_AXIS_tready(S00_AXIS_tready),
        .S00_AXIS_tvalid(S00_AXIS_tvalid),
        .S00_AXI_araddr(S00_AXI_araddr),
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
        .aclk0(aclk0),
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

(* ORIG_REF_NAME = "ai_pl_channel_v1_0_ai2pl" *) 
module ulp_inst_0_ai_pl_channel_v1_0_ai2pl
   (m_axis_tvalid,
    m_axis_tdata,
    out,
    m_axis_aclk,
    m_axis_tready,
    s_axis_tvalid,
    D,
    s_axis_tlast,
    s_axis_tkeep);
  output m_axis_tvalid;
  output [32:0]m_axis_tdata;
  output out;
  input m_axis_aclk;
  input m_axis_tready;
  input [0:0]s_axis_tvalid;
  input [31:0]D;
  input [0:0]s_axis_tlast;
  input [0:0]s_axis_tkeep;

  wire [31:0]D;
  (* BLI = "TRUE" *) (* RTL_KEEP = "true" *) wire [63:0]bli_s0i_tdata_1;
  (* BLI = "TRUE" *) (* RTL_KEEP = "true" *) wire bli_s0i_tkeep_1;
  (* BLI = "TRUE" *) (* RTL_KEEP = "true" *) wire bli_s0i_tlast_1;
  (* BLI = "TRUE" *) (* RTL_KEEP = "true" *) wire bli_s0i_tready_1;
  (* BLI = "TRUE" *) (* RTL_KEEP = "true" *) wire bli_s0i_tvalid_1;
  (* BLI = "TRUE" *) (* RTL_KEEP = "true" *) wire [63:0]bli_s1i_tdata_1;
  (* BLI = "TRUE" *) (* RTL_KEEP = "true" *) wire bli_s1i_tkeep_1;
  (* BLI = "TRUE" *) (* RTL_KEEP = "true" *) wire bli_s1i_tlast_1;
  (* BLI = "TRUE" *) (* RTL_KEEP = "true" *) wire bli_s1i_tready_1;
  (* BLI = "TRUE" *) (* RTL_KEEP = "true" *) wire bli_s1i_tvalid_1;
  wire m_axis_aclk;
  wire [32:0]m_axis_tdata;
  wire m_axis_tready;
  wire m_axis_tvalid;
  wire s0i_tready;
  wire [0:0]s_axis_tkeep;
  wire [0:0]s_axis_tlast;
  wire [0:0]s_axis_tvalid;
  wire [33:33]NLW_mrs_s0_m_axis_tdata_UNCONNECTED;

  assign out = bli_s0i_tready_1;
  (* BLI = "TRUE" *) 
  (* KEEP = "yes" *) 
  FDRE \bli0.bli_s0i_tdata_1_reg[0] 
       (.C(m_axis_aclk),
        .CE(1'b1),
        .D(D[0]),
        .Q(bli_s0i_tdata_1[0]),
        .R(1'b0));
  (* BLI = "TRUE" *) 
  (* KEEP = "yes" *) 
  FDRE \bli0.bli_s0i_tdata_1_reg[10] 
       (.C(m_axis_aclk),
        .CE(1'b1),
        .D(D[10]),
        .Q(bli_s0i_tdata_1[10]),
        .R(1'b0));
  (* BLI = "TRUE" *) 
  (* KEEP = "yes" *) 
  FDRE \bli0.bli_s0i_tdata_1_reg[11] 
       (.C(m_axis_aclk),
        .CE(1'b1),
        .D(D[11]),
        .Q(bli_s0i_tdata_1[11]),
        .R(1'b0));
  (* BLI = "TRUE" *) 
  (* KEEP = "yes" *) 
  FDRE \bli0.bli_s0i_tdata_1_reg[12] 
       (.C(m_axis_aclk),
        .CE(1'b1),
        .D(D[12]),
        .Q(bli_s0i_tdata_1[12]),
        .R(1'b0));
  (* BLI = "TRUE" *) 
  (* KEEP = "yes" *) 
  FDRE \bli0.bli_s0i_tdata_1_reg[13] 
       (.C(m_axis_aclk),
        .CE(1'b1),
        .D(D[13]),
        .Q(bli_s0i_tdata_1[13]),
        .R(1'b0));
  (* BLI = "TRUE" *) 
  (* KEEP = "yes" *) 
  FDRE \bli0.bli_s0i_tdata_1_reg[14] 
       (.C(m_axis_aclk),
        .CE(1'b1),
        .D(D[14]),
        .Q(bli_s0i_tdata_1[14]),
        .R(1'b0));
  (* BLI = "TRUE" *) 
  (* KEEP = "yes" *) 
  FDRE \bli0.bli_s0i_tdata_1_reg[15] 
       (.C(m_axis_aclk),
        .CE(1'b1),
        .D(D[15]),
        .Q(bli_s0i_tdata_1[15]),
        .R(1'b0));
  (* BLI = "TRUE" *) 
  (* KEEP = "yes" *) 
  FDRE \bli0.bli_s0i_tdata_1_reg[16] 
       (.C(m_axis_aclk),
        .CE(1'b1),
        .D(D[16]),
        .Q(bli_s0i_tdata_1[16]),
        .R(1'b0));
  (* BLI = "TRUE" *) 
  (* KEEP = "yes" *) 
  FDRE \bli0.bli_s0i_tdata_1_reg[17] 
       (.C(m_axis_aclk),
        .CE(1'b1),
        .D(D[17]),
        .Q(bli_s0i_tdata_1[17]),
        .R(1'b0));
  (* BLI = "TRUE" *) 
  (* KEEP = "yes" *) 
  FDRE \bli0.bli_s0i_tdata_1_reg[18] 
       (.C(m_axis_aclk),
        .CE(1'b1),
        .D(D[18]),
        .Q(bli_s0i_tdata_1[18]),
        .R(1'b0));
  (* BLI = "TRUE" *) 
  (* KEEP = "yes" *) 
  FDRE \bli0.bli_s0i_tdata_1_reg[19] 
       (.C(m_axis_aclk),
        .CE(1'b1),
        .D(D[19]),
        .Q(bli_s0i_tdata_1[19]),
        .R(1'b0));
  (* BLI = "TRUE" *) 
  (* KEEP = "yes" *) 
  FDRE \bli0.bli_s0i_tdata_1_reg[1] 
       (.C(m_axis_aclk),
        .CE(1'b1),
        .D(D[1]),
        .Q(bli_s0i_tdata_1[1]),
        .R(1'b0));
  (* BLI = "TRUE" *) 
  (* KEEP = "yes" *) 
  FDRE \bli0.bli_s0i_tdata_1_reg[20] 
       (.C(m_axis_aclk),
        .CE(1'b1),
        .D(D[20]),
        .Q(bli_s0i_tdata_1[20]),
        .R(1'b0));
  (* BLI = "TRUE" *) 
  (* KEEP = "yes" *) 
  FDRE \bli0.bli_s0i_tdata_1_reg[21] 
       (.C(m_axis_aclk),
        .CE(1'b1),
        .D(D[21]),
        .Q(bli_s0i_tdata_1[21]),
        .R(1'b0));
  (* BLI = "TRUE" *) 
  (* KEEP = "yes" *) 
  FDRE \bli0.bli_s0i_tdata_1_reg[22] 
       (.C(m_axis_aclk),
        .CE(1'b1),
        .D(D[22]),
        .Q(bli_s0i_tdata_1[22]),
        .R(1'b0));
  (* BLI = "TRUE" *) 
  (* KEEP = "yes" *) 
  FDRE \bli0.bli_s0i_tdata_1_reg[23] 
       (.C(m_axis_aclk),
        .CE(1'b1),
        .D(D[23]),
        .Q(bli_s0i_tdata_1[23]),
        .R(1'b0));
  (* BLI = "TRUE" *) 
  (* KEEP = "yes" *) 
  FDRE \bli0.bli_s0i_tdata_1_reg[24] 
       (.C(m_axis_aclk),
        .CE(1'b1),
        .D(D[24]),
        .Q(bli_s0i_tdata_1[24]),
        .R(1'b0));
  (* BLI = "TRUE" *) 
  (* KEEP = "yes" *) 
  FDRE \bli0.bli_s0i_tdata_1_reg[25] 
       (.C(m_axis_aclk),
        .CE(1'b1),
        .D(D[25]),
        .Q(bli_s0i_tdata_1[25]),
        .R(1'b0));
  (* BLI = "TRUE" *) 
  (* KEEP = "yes" *) 
  FDRE \bli0.bli_s0i_tdata_1_reg[26] 
       (.C(m_axis_aclk),
        .CE(1'b1),
        .D(D[26]),
        .Q(bli_s0i_tdata_1[26]),
        .R(1'b0));
  (* BLI = "TRUE" *) 
  (* KEEP = "yes" *) 
  FDRE \bli0.bli_s0i_tdata_1_reg[27] 
       (.C(m_axis_aclk),
        .CE(1'b1),
        .D(D[27]),
        .Q(bli_s0i_tdata_1[27]),
        .R(1'b0));
  (* BLI = "TRUE" *) 
  (* KEEP = "yes" *) 
  FDRE \bli0.bli_s0i_tdata_1_reg[28] 
       (.C(m_axis_aclk),
        .CE(1'b1),
        .D(D[28]),
        .Q(bli_s0i_tdata_1[28]),
        .R(1'b0));
  (* BLI = "TRUE" *) 
  (* KEEP = "yes" *) 
  FDRE \bli0.bli_s0i_tdata_1_reg[29] 
       (.C(m_axis_aclk),
        .CE(1'b1),
        .D(D[29]),
        .Q(bli_s0i_tdata_1[29]),
        .R(1'b0));
  (* BLI = "TRUE" *) 
  (* KEEP = "yes" *) 
  FDRE \bli0.bli_s0i_tdata_1_reg[2] 
       (.C(m_axis_aclk),
        .CE(1'b1),
        .D(D[2]),
        .Q(bli_s0i_tdata_1[2]),
        .R(1'b0));
  (* BLI = "TRUE" *) 
  (* KEEP = "yes" *) 
  FDRE \bli0.bli_s0i_tdata_1_reg[30] 
       (.C(m_axis_aclk),
        .CE(1'b1),
        .D(D[30]),
        .Q(bli_s0i_tdata_1[30]),
        .R(1'b0));
  (* BLI = "TRUE" *) 
  (* KEEP = "yes" *) 
  FDRE \bli0.bli_s0i_tdata_1_reg[31] 
       (.C(m_axis_aclk),
        .CE(1'b1),
        .D(D[31]),
        .Q(bli_s0i_tdata_1[31]),
        .R(1'b0));
  (* BLI = "TRUE" *) 
  (* KEEP = "yes" *) 
  FDRE \bli0.bli_s0i_tdata_1_reg[3] 
       (.C(m_axis_aclk),
        .CE(1'b1),
        .D(D[3]),
        .Q(bli_s0i_tdata_1[3]),
        .R(1'b0));
  (* BLI = "TRUE" *) 
  (* KEEP = "yes" *) 
  FDRE \bli0.bli_s0i_tdata_1_reg[4] 
       (.C(m_axis_aclk),
        .CE(1'b1),
        .D(D[4]),
        .Q(bli_s0i_tdata_1[4]),
        .R(1'b0));
  (* BLI = "TRUE" *) 
  (* KEEP = "yes" *) 
  FDRE \bli0.bli_s0i_tdata_1_reg[5] 
       (.C(m_axis_aclk),
        .CE(1'b1),
        .D(D[5]),
        .Q(bli_s0i_tdata_1[5]),
        .R(1'b0));
  (* BLI = "TRUE" *) 
  (* KEEP = "yes" *) 
  FDRE \bli0.bli_s0i_tdata_1_reg[6] 
       (.C(m_axis_aclk),
        .CE(1'b1),
        .D(D[6]),
        .Q(bli_s0i_tdata_1[6]),
        .R(1'b0));
  (* BLI = "TRUE" *) 
  (* KEEP = "yes" *) 
  FDRE \bli0.bli_s0i_tdata_1_reg[7] 
       (.C(m_axis_aclk),
        .CE(1'b1),
        .D(D[7]),
        .Q(bli_s0i_tdata_1[7]),
        .R(1'b0));
  (* BLI = "TRUE" *) 
  (* KEEP = "yes" *) 
  FDRE \bli0.bli_s0i_tdata_1_reg[8] 
       (.C(m_axis_aclk),
        .CE(1'b1),
        .D(D[8]),
        .Q(bli_s0i_tdata_1[8]),
        .R(1'b0));
  (* BLI = "TRUE" *) 
  (* KEEP = "yes" *) 
  FDRE \bli0.bli_s0i_tdata_1_reg[9] 
       (.C(m_axis_aclk),
        .CE(1'b1),
        .D(D[9]),
        .Q(bli_s0i_tdata_1[9]),
        .R(1'b0));
  (* BLI = "TRUE" *) 
  (* KEEP = "yes" *) 
  FDRE \bli0.bli_s0i_tkeep_1_reg 
       (.C(m_axis_aclk),
        .CE(1'b1),
        .D(s_axis_tkeep),
        .Q(bli_s0i_tkeep_1),
        .R(1'b0));
  (* BLI = "TRUE" *) 
  (* KEEP = "yes" *) 
  FDRE \bli0.bli_s0i_tlast_1_reg 
       (.C(m_axis_aclk),
        .CE(1'b1),
        .D(s_axis_tlast),
        .Q(bli_s0i_tlast_1),
        .R(1'b0));
  (* BLI = "TRUE" *) 
  (* KEEP = "yes" *) 
  FDRE \bli0.bli_s0i_tready_1_reg 
       (.C(m_axis_aclk),
        .CE(1'b1),
        .D(s0i_tready),
        .Q(bli_s0i_tready_1),
        .R(1'b0));
  (* BLI = "TRUE" *) 
  (* KEEP = "yes" *) 
  FDRE \bli0.bli_s0i_tvalid_1_reg 
       (.C(m_axis_aclk),
        .CE(1'b1),
        .D(s_axis_tvalid),
        .Q(bli_s0i_tvalid_1),
        .R(1'b0));
  LUT1 #(
    .INIT(2'h2)) 
    i_0
       (.I0(1'b0),
        .O(bli_s0i_tdata_1[63]));
  LUT1 #(
    .INIT(2'h2)) 
    i_1
       (.I0(1'b0),
        .O(bli_s0i_tdata_1[62]));
  LUT1 #(
    .INIT(2'h2)) 
    i_10
       (.I0(1'b0),
        .O(bli_s0i_tdata_1[53]));
  LUT1 #(
    .INIT(2'h2)) 
    i_11
       (.I0(1'b0),
        .O(bli_s0i_tdata_1[52]));
  LUT1 #(
    .INIT(2'h2)) 
    i_12
       (.I0(1'b0),
        .O(bli_s0i_tdata_1[51]));
  LUT1 #(
    .INIT(2'h2)) 
    i_13
       (.I0(1'b0),
        .O(bli_s0i_tdata_1[50]));
  LUT1 #(
    .INIT(2'h2)) 
    i_14
       (.I0(1'b0),
        .O(bli_s0i_tdata_1[49]));
  LUT1 #(
    .INIT(2'h2)) 
    i_15
       (.I0(1'b0),
        .O(bli_s0i_tdata_1[48]));
  LUT1 #(
    .INIT(2'h2)) 
    i_16
       (.I0(1'b0),
        .O(bli_s0i_tdata_1[47]));
  LUT1 #(
    .INIT(2'h2)) 
    i_17
       (.I0(1'b0),
        .O(bli_s0i_tdata_1[46]));
  LUT1 #(
    .INIT(2'h2)) 
    i_18
       (.I0(1'b0),
        .O(bli_s0i_tdata_1[45]));
  LUT1 #(
    .INIT(2'h2)) 
    i_19
       (.I0(1'b0),
        .O(bli_s0i_tdata_1[44]));
  LUT1 #(
    .INIT(2'h2)) 
    i_2
       (.I0(1'b0),
        .O(bli_s0i_tdata_1[61]));
  LUT1 #(
    .INIT(2'h2)) 
    i_20
       (.I0(1'b0),
        .O(bli_s0i_tdata_1[43]));
  LUT1 #(
    .INIT(2'h2)) 
    i_21
       (.I0(1'b0),
        .O(bli_s0i_tdata_1[42]));
  LUT1 #(
    .INIT(2'h2)) 
    i_22
       (.I0(1'b0),
        .O(bli_s0i_tdata_1[41]));
  LUT1 #(
    .INIT(2'h2)) 
    i_23
       (.I0(1'b0),
        .O(bli_s0i_tdata_1[40]));
  LUT1 #(
    .INIT(2'h2)) 
    i_24
       (.I0(1'b0),
        .O(bli_s0i_tdata_1[39]));
  LUT1 #(
    .INIT(2'h2)) 
    i_25
       (.I0(1'b0),
        .O(bli_s0i_tdata_1[38]));
  LUT1 #(
    .INIT(2'h2)) 
    i_26
       (.I0(1'b0),
        .O(bli_s0i_tdata_1[37]));
  LUT1 #(
    .INIT(2'h2)) 
    i_27
       (.I0(1'b0),
        .O(bli_s0i_tdata_1[36]));
  LUT1 #(
    .INIT(2'h2)) 
    i_28
       (.I0(1'b0),
        .O(bli_s0i_tdata_1[35]));
  LUT1 #(
    .INIT(2'h2)) 
    i_29
       (.I0(1'b0),
        .O(bli_s0i_tdata_1[34]));
  LUT1 #(
    .INIT(2'h2)) 
    i_3
       (.I0(1'b0),
        .O(bli_s0i_tdata_1[60]));
  LUT1 #(
    .INIT(2'h2)) 
    i_30
       (.I0(1'b0),
        .O(bli_s0i_tdata_1[33]));
  LUT1 #(
    .INIT(2'h2)) 
    i_31
       (.I0(1'b0),
        .O(bli_s0i_tdata_1[32]));
  LUT1 #(
    .INIT(2'h2)) 
    i_32
       (.I0(1'b0),
        .O(bli_s1i_tvalid_1));
  LUT1 #(
    .INIT(2'h2)) 
    i_33
       (.I0(1'b0),
        .O(bli_s1i_tdata_1[63]));
  LUT1 #(
    .INIT(2'h2)) 
    i_34
       (.I0(1'b0),
        .O(bli_s1i_tdata_1[62]));
  LUT1 #(
    .INIT(2'h2)) 
    i_35
       (.I0(1'b0),
        .O(bli_s1i_tdata_1[61]));
  LUT1 #(
    .INIT(2'h2)) 
    i_36
       (.I0(1'b0),
        .O(bli_s1i_tdata_1[60]));
  LUT1 #(
    .INIT(2'h2)) 
    i_37
       (.I0(1'b0),
        .O(bli_s1i_tdata_1[59]));
  LUT1 #(
    .INIT(2'h2)) 
    i_38
       (.I0(1'b0),
        .O(bli_s1i_tdata_1[58]));
  LUT1 #(
    .INIT(2'h2)) 
    i_39
       (.I0(1'b0),
        .O(bli_s1i_tdata_1[57]));
  LUT1 #(
    .INIT(2'h2)) 
    i_4
       (.I0(1'b0),
        .O(bli_s0i_tdata_1[59]));
  LUT1 #(
    .INIT(2'h2)) 
    i_40
       (.I0(1'b0),
        .O(bli_s1i_tdata_1[56]));
  LUT1 #(
    .INIT(2'h2)) 
    i_41
       (.I0(1'b0),
        .O(bli_s1i_tdata_1[55]));
  LUT1 #(
    .INIT(2'h2)) 
    i_42
       (.I0(1'b0),
        .O(bli_s1i_tdata_1[54]));
  LUT1 #(
    .INIT(2'h2)) 
    i_43
       (.I0(1'b0),
        .O(bli_s1i_tdata_1[53]));
  LUT1 #(
    .INIT(2'h2)) 
    i_44
       (.I0(1'b0),
        .O(bli_s1i_tdata_1[52]));
  LUT1 #(
    .INIT(2'h2)) 
    i_45
       (.I0(1'b0),
        .O(bli_s1i_tdata_1[51]));
  LUT1 #(
    .INIT(2'h2)) 
    i_46
       (.I0(1'b0),
        .O(bli_s1i_tdata_1[50]));
  LUT1 #(
    .INIT(2'h2)) 
    i_47
       (.I0(1'b0),
        .O(bli_s1i_tdata_1[49]));
  LUT1 #(
    .INIT(2'h2)) 
    i_48
       (.I0(1'b0),
        .O(bli_s1i_tdata_1[48]));
  LUT1 #(
    .INIT(2'h2)) 
    i_49
       (.I0(1'b0),
        .O(bli_s1i_tdata_1[47]));
  LUT1 #(
    .INIT(2'h2)) 
    i_5
       (.I0(1'b0),
        .O(bli_s0i_tdata_1[58]));
  LUT1 #(
    .INIT(2'h2)) 
    i_50
       (.I0(1'b0),
        .O(bli_s1i_tdata_1[46]));
  LUT1 #(
    .INIT(2'h2)) 
    i_51
       (.I0(1'b0),
        .O(bli_s1i_tdata_1[45]));
  LUT1 #(
    .INIT(2'h2)) 
    i_52
       (.I0(1'b0),
        .O(bli_s1i_tdata_1[44]));
  LUT1 #(
    .INIT(2'h2)) 
    i_53
       (.I0(1'b0),
        .O(bli_s1i_tdata_1[43]));
  LUT1 #(
    .INIT(2'h2)) 
    i_54
       (.I0(1'b0),
        .O(bli_s1i_tdata_1[42]));
  LUT1 #(
    .INIT(2'h2)) 
    i_55
       (.I0(1'b0),
        .O(bli_s1i_tdata_1[41]));
  LUT1 #(
    .INIT(2'h2)) 
    i_56
       (.I0(1'b0),
        .O(bli_s1i_tdata_1[40]));
  LUT1 #(
    .INIT(2'h2)) 
    i_57
       (.I0(1'b0),
        .O(bli_s1i_tdata_1[39]));
  LUT1 #(
    .INIT(2'h2)) 
    i_58
       (.I0(1'b0),
        .O(bli_s1i_tdata_1[38]));
  LUT1 #(
    .INIT(2'h2)) 
    i_59
       (.I0(1'b0),
        .O(bli_s1i_tdata_1[37]));
  LUT1 #(
    .INIT(2'h2)) 
    i_6
       (.I0(1'b0),
        .O(bli_s0i_tdata_1[57]));
  LUT1 #(
    .INIT(2'h2)) 
    i_60
       (.I0(1'b0),
        .O(bli_s1i_tdata_1[36]));
  LUT1 #(
    .INIT(2'h2)) 
    i_61
       (.I0(1'b0),
        .O(bli_s1i_tdata_1[35]));
  LUT1 #(
    .INIT(2'h2)) 
    i_62
       (.I0(1'b0),
        .O(bli_s1i_tdata_1[34]));
  LUT1 #(
    .INIT(2'h2)) 
    i_63
       (.I0(1'b0),
        .O(bli_s1i_tdata_1[33]));
  LUT1 #(
    .INIT(2'h2)) 
    i_64
       (.I0(1'b0),
        .O(bli_s1i_tdata_1[32]));
  LUT1 #(
    .INIT(2'h2)) 
    i_65
       (.I0(1'b0),
        .O(bli_s1i_tdata_1[31]));
  LUT1 #(
    .INIT(2'h2)) 
    i_66
       (.I0(1'b0),
        .O(bli_s1i_tdata_1[30]));
  LUT1 #(
    .INIT(2'h2)) 
    i_67
       (.I0(1'b0),
        .O(bli_s1i_tdata_1[29]));
  LUT1 #(
    .INIT(2'h2)) 
    i_68
       (.I0(1'b0),
        .O(bli_s1i_tdata_1[28]));
  LUT1 #(
    .INIT(2'h2)) 
    i_69
       (.I0(1'b0),
        .O(bli_s1i_tdata_1[27]));
  LUT1 #(
    .INIT(2'h2)) 
    i_7
       (.I0(1'b0),
        .O(bli_s0i_tdata_1[56]));
  LUT1 #(
    .INIT(2'h2)) 
    i_70
       (.I0(1'b0),
        .O(bli_s1i_tdata_1[26]));
  LUT1 #(
    .INIT(2'h2)) 
    i_71
       (.I0(1'b0),
        .O(bli_s1i_tdata_1[25]));
  LUT1 #(
    .INIT(2'h2)) 
    i_72
       (.I0(1'b0),
        .O(bli_s1i_tdata_1[24]));
  LUT1 #(
    .INIT(2'h2)) 
    i_73
       (.I0(1'b0),
        .O(bli_s1i_tdata_1[23]));
  LUT1 #(
    .INIT(2'h2)) 
    i_74
       (.I0(1'b0),
        .O(bli_s1i_tdata_1[22]));
  LUT1 #(
    .INIT(2'h2)) 
    i_75
       (.I0(1'b0),
        .O(bli_s1i_tdata_1[21]));
  LUT1 #(
    .INIT(2'h2)) 
    i_76
       (.I0(1'b0),
        .O(bli_s1i_tdata_1[20]));
  LUT1 #(
    .INIT(2'h2)) 
    i_77
       (.I0(1'b0),
        .O(bli_s1i_tdata_1[19]));
  LUT1 #(
    .INIT(2'h2)) 
    i_78
       (.I0(1'b0),
        .O(bli_s1i_tdata_1[18]));
  LUT1 #(
    .INIT(2'h2)) 
    i_79
       (.I0(1'b0),
        .O(bli_s1i_tdata_1[17]));
  LUT1 #(
    .INIT(2'h2)) 
    i_8
       (.I0(1'b0),
        .O(bli_s0i_tdata_1[55]));
  LUT1 #(
    .INIT(2'h2)) 
    i_80
       (.I0(1'b0),
        .O(bli_s1i_tdata_1[16]));
  LUT1 #(
    .INIT(2'h2)) 
    i_81
       (.I0(1'b0),
        .O(bli_s1i_tdata_1[15]));
  LUT1 #(
    .INIT(2'h2)) 
    i_82
       (.I0(1'b0),
        .O(bli_s1i_tdata_1[14]));
  LUT1 #(
    .INIT(2'h2)) 
    i_83
       (.I0(1'b0),
        .O(bli_s1i_tdata_1[13]));
  LUT1 #(
    .INIT(2'h2)) 
    i_84
       (.I0(1'b0),
        .O(bli_s1i_tdata_1[12]));
  LUT1 #(
    .INIT(2'h2)) 
    i_85
       (.I0(1'b0),
        .O(bli_s1i_tdata_1[11]));
  LUT1 #(
    .INIT(2'h2)) 
    i_86
       (.I0(1'b0),
        .O(bli_s1i_tdata_1[10]));
  LUT1 #(
    .INIT(2'h2)) 
    i_87
       (.I0(1'b0),
        .O(bli_s1i_tdata_1[9]));
  LUT1 #(
    .INIT(2'h2)) 
    i_88
       (.I0(1'b0),
        .O(bli_s1i_tdata_1[8]));
  LUT1 #(
    .INIT(2'h2)) 
    i_89
       (.I0(1'b0),
        .O(bli_s1i_tdata_1[7]));
  LUT1 #(
    .INIT(2'h2)) 
    i_9
       (.I0(1'b0),
        .O(bli_s0i_tdata_1[54]));
  LUT1 #(
    .INIT(2'h2)) 
    i_90
       (.I0(1'b0),
        .O(bli_s1i_tdata_1[6]));
  LUT1 #(
    .INIT(2'h2)) 
    i_91
       (.I0(1'b0),
        .O(bli_s1i_tdata_1[5]));
  LUT1 #(
    .INIT(2'h2)) 
    i_92
       (.I0(1'b0),
        .O(bli_s1i_tdata_1[4]));
  LUT1 #(
    .INIT(2'h2)) 
    i_93
       (.I0(1'b0),
        .O(bli_s1i_tdata_1[3]));
  LUT1 #(
    .INIT(2'h2)) 
    i_94
       (.I0(1'b0),
        .O(bli_s1i_tdata_1[2]));
  LUT1 #(
    .INIT(2'h2)) 
    i_95
       (.I0(1'b0),
        .O(bli_s1i_tdata_1[1]));
  LUT1 #(
    .INIT(2'h2)) 
    i_96
       (.I0(1'b0),
        .O(bli_s1i_tdata_1[0]));
  LUT1 #(
    .INIT(2'h2)) 
    i_97
       (.I0(1'b0),
        .O(bli_s1i_tready_1));
  LUT1 #(
    .INIT(2'h2)) 
    i_98
       (.I0(1'b0),
        .O(bli_s1i_tlast_1));
  LUT1 #(
    .INIT(2'h2)) 
    i_99
       (.I0(1'b0),
        .O(bli_s1i_tkeep_1));
  (* AI2PL_FIFO_TYPE = "0" *) 
  (* BLI_BYPASS = "0" *) 
  (* KEEP_HIERARCHY = "soft" *) 
  (* SIZE = "34" *) 
  (* is_du_within_envelope = "true" *) 
  ulp_inst_0_ai_pl_channel_v1_0_shim_reg_slice mrs_s0
       (.clk(m_axis_aclk),
        .m_axis_tdata({NLW_mrs_s0_m_axis_tdata_UNCONNECTED[33],m_axis_tdata}),
        .m_axis_tready(m_axis_tready),
        .m_axis_tvalid(m_axis_tvalid),
        .reset_n(1'b1),
        .s_axis_tdata({bli_s0i_tkeep_1,bli_s0i_tlast_1,bli_s0i_tdata_1[31:0]}),
        .s_axis_tready(s0i_tready),
        .s_axis_tvalid(bli_s0i_tvalid_1));
endmodule

(* ORIG_REF_NAME = "ai_pl_channel_v1_0_pl2ai" *) 
module ulp_inst_0_ai_pl_channel_v1_0_pl2ai
   (s_axis_tready,
    out,
    \bli0.bli_s0o_tdata_1_reg[33]_0 ,
    s_axis_aclk,
    s_axis_tvalid,
    s_axis_tdata,
    s_axis_tkeep,
    m_axis_tready);
  output s_axis_tready;
  output out;
  output [33:0]\bli0.bli_s0o_tdata_1_reg[33]_0 ;
  input s_axis_aclk;
  input s_axis_tvalid;
  input [32:0]s_axis_tdata;
  input [3:0]s_axis_tkeep;
  input [0:0]m_axis_tready;

  (* BLI = "TRUE" *) (* RTL_KEEP = "true" *) wire [65:0]bli_s0o_tdata_1;
  (* BLI = "TRUE" *) (* RTL_KEEP = "true" *) wire bli_s0o_tready_1;
  (* BLI = "TRUE" *) (* RTL_KEEP = "true" *) wire bli_s0o_tvalid_1;
  (* BLI = "TRUE" *) (* RTL_KEEP = "true" *) wire [65:0]bli_s1o_tdata_1;
  (* BLI = "TRUE" *) (* RTL_KEEP = "true" *) wire bli_s1o_tready_1;
  (* BLI = "TRUE" *) (* RTL_KEEP = "true" *) wire bli_s1o_tvalid_1;
  wire [0:0]m_axis_tready;
  wire [33:33]s0i_tdata;
  wire [33:0]s0o_tdata;
  wire s0o_tvalid;
  wire s_axis_aclk;
  wire [32:0]s_axis_tdata;
  wire [3:0]s_axis_tkeep;
  wire s_axis_tready;
  wire s_axis_tvalid;

  assign \bli0.bli_s0o_tdata_1_reg[33]_0 [33:0] = bli_s0o_tdata_1[33:0];
  assign out = bli_s0o_tvalid_1;
  (* BLI = "TRUE" *) 
  (* KEEP = "yes" *) 
  FDRE \bli0.bli_s0o_tdata_1_reg[0] 
       (.C(s_axis_aclk),
        .CE(1'b1),
        .D(s0o_tdata[0]),
        .Q(bli_s0o_tdata_1[0]),
        .R(1'b0));
  (* BLI = "TRUE" *) 
  (* KEEP = "yes" *) 
  FDRE \bli0.bli_s0o_tdata_1_reg[10] 
       (.C(s_axis_aclk),
        .CE(1'b1),
        .D(s0o_tdata[10]),
        .Q(bli_s0o_tdata_1[10]),
        .R(1'b0));
  (* BLI = "TRUE" *) 
  (* KEEP = "yes" *) 
  FDRE \bli0.bli_s0o_tdata_1_reg[11] 
       (.C(s_axis_aclk),
        .CE(1'b1),
        .D(s0o_tdata[11]),
        .Q(bli_s0o_tdata_1[11]),
        .R(1'b0));
  (* BLI = "TRUE" *) 
  (* KEEP = "yes" *) 
  FDRE \bli0.bli_s0o_tdata_1_reg[12] 
       (.C(s_axis_aclk),
        .CE(1'b1),
        .D(s0o_tdata[12]),
        .Q(bli_s0o_tdata_1[12]),
        .R(1'b0));
  (* BLI = "TRUE" *) 
  (* KEEP = "yes" *) 
  FDRE \bli0.bli_s0o_tdata_1_reg[13] 
       (.C(s_axis_aclk),
        .CE(1'b1),
        .D(s0o_tdata[13]),
        .Q(bli_s0o_tdata_1[13]),
        .R(1'b0));
  (* BLI = "TRUE" *) 
  (* KEEP = "yes" *) 
  FDRE \bli0.bli_s0o_tdata_1_reg[14] 
       (.C(s_axis_aclk),
        .CE(1'b1),
        .D(s0o_tdata[14]),
        .Q(bli_s0o_tdata_1[14]),
        .R(1'b0));
  (* BLI = "TRUE" *) 
  (* KEEP = "yes" *) 
  FDRE \bli0.bli_s0o_tdata_1_reg[15] 
       (.C(s_axis_aclk),
        .CE(1'b1),
        .D(s0o_tdata[15]),
        .Q(bli_s0o_tdata_1[15]),
        .R(1'b0));
  (* BLI = "TRUE" *) 
  (* KEEP = "yes" *) 
  FDRE \bli0.bli_s0o_tdata_1_reg[16] 
       (.C(s_axis_aclk),
        .CE(1'b1),
        .D(s0o_tdata[16]),
        .Q(bli_s0o_tdata_1[16]),
        .R(1'b0));
  (* BLI = "TRUE" *) 
  (* KEEP = "yes" *) 
  FDRE \bli0.bli_s0o_tdata_1_reg[17] 
       (.C(s_axis_aclk),
        .CE(1'b1),
        .D(s0o_tdata[17]),
        .Q(bli_s0o_tdata_1[17]),
        .R(1'b0));
  (* BLI = "TRUE" *) 
  (* KEEP = "yes" *) 
  FDRE \bli0.bli_s0o_tdata_1_reg[18] 
       (.C(s_axis_aclk),
        .CE(1'b1),
        .D(s0o_tdata[18]),
        .Q(bli_s0o_tdata_1[18]),
        .R(1'b0));
  (* BLI = "TRUE" *) 
  (* KEEP = "yes" *) 
  FDRE \bli0.bli_s0o_tdata_1_reg[19] 
       (.C(s_axis_aclk),
        .CE(1'b1),
        .D(s0o_tdata[19]),
        .Q(bli_s0o_tdata_1[19]),
        .R(1'b0));
  (* BLI = "TRUE" *) 
  (* KEEP = "yes" *) 
  FDRE \bli0.bli_s0o_tdata_1_reg[1] 
       (.C(s_axis_aclk),
        .CE(1'b1),
        .D(s0o_tdata[1]),
        .Q(bli_s0o_tdata_1[1]),
        .R(1'b0));
  (* BLI = "TRUE" *) 
  (* KEEP = "yes" *) 
  FDRE \bli0.bli_s0o_tdata_1_reg[20] 
       (.C(s_axis_aclk),
        .CE(1'b1),
        .D(s0o_tdata[20]),
        .Q(bli_s0o_tdata_1[20]),
        .R(1'b0));
  (* BLI = "TRUE" *) 
  (* KEEP = "yes" *) 
  FDRE \bli0.bli_s0o_tdata_1_reg[21] 
       (.C(s_axis_aclk),
        .CE(1'b1),
        .D(s0o_tdata[21]),
        .Q(bli_s0o_tdata_1[21]),
        .R(1'b0));
  (* BLI = "TRUE" *) 
  (* KEEP = "yes" *) 
  FDRE \bli0.bli_s0o_tdata_1_reg[22] 
       (.C(s_axis_aclk),
        .CE(1'b1),
        .D(s0o_tdata[22]),
        .Q(bli_s0o_tdata_1[22]),
        .R(1'b0));
  (* BLI = "TRUE" *) 
  (* KEEP = "yes" *) 
  FDRE \bli0.bli_s0o_tdata_1_reg[23] 
       (.C(s_axis_aclk),
        .CE(1'b1),
        .D(s0o_tdata[23]),
        .Q(bli_s0o_tdata_1[23]),
        .R(1'b0));
  (* BLI = "TRUE" *) 
  (* KEEP = "yes" *) 
  FDRE \bli0.bli_s0o_tdata_1_reg[24] 
       (.C(s_axis_aclk),
        .CE(1'b1),
        .D(s0o_tdata[24]),
        .Q(bli_s0o_tdata_1[24]),
        .R(1'b0));
  (* BLI = "TRUE" *) 
  (* KEEP = "yes" *) 
  FDRE \bli0.bli_s0o_tdata_1_reg[25] 
       (.C(s_axis_aclk),
        .CE(1'b1),
        .D(s0o_tdata[25]),
        .Q(bli_s0o_tdata_1[25]),
        .R(1'b0));
  (* BLI = "TRUE" *) 
  (* KEEP = "yes" *) 
  FDRE \bli0.bli_s0o_tdata_1_reg[26] 
       (.C(s_axis_aclk),
        .CE(1'b1),
        .D(s0o_tdata[26]),
        .Q(bli_s0o_tdata_1[26]),
        .R(1'b0));
  (* BLI = "TRUE" *) 
  (* KEEP = "yes" *) 
  FDRE \bli0.bli_s0o_tdata_1_reg[27] 
       (.C(s_axis_aclk),
        .CE(1'b1),
        .D(s0o_tdata[27]),
        .Q(bli_s0o_tdata_1[27]),
        .R(1'b0));
  (* BLI = "TRUE" *) 
  (* KEEP = "yes" *) 
  FDRE \bli0.bli_s0o_tdata_1_reg[28] 
       (.C(s_axis_aclk),
        .CE(1'b1),
        .D(s0o_tdata[28]),
        .Q(bli_s0o_tdata_1[28]),
        .R(1'b0));
  (* BLI = "TRUE" *) 
  (* KEEP = "yes" *) 
  FDRE \bli0.bli_s0o_tdata_1_reg[29] 
       (.C(s_axis_aclk),
        .CE(1'b1),
        .D(s0o_tdata[29]),
        .Q(bli_s0o_tdata_1[29]),
        .R(1'b0));
  (* BLI = "TRUE" *) 
  (* KEEP = "yes" *) 
  FDRE \bli0.bli_s0o_tdata_1_reg[2] 
       (.C(s_axis_aclk),
        .CE(1'b1),
        .D(s0o_tdata[2]),
        .Q(bli_s0o_tdata_1[2]),
        .R(1'b0));
  (* BLI = "TRUE" *) 
  (* KEEP = "yes" *) 
  FDRE \bli0.bli_s0o_tdata_1_reg[30] 
       (.C(s_axis_aclk),
        .CE(1'b1),
        .D(s0o_tdata[30]),
        .Q(bli_s0o_tdata_1[30]),
        .R(1'b0));
  (* BLI = "TRUE" *) 
  (* KEEP = "yes" *) 
  FDRE \bli0.bli_s0o_tdata_1_reg[31] 
       (.C(s_axis_aclk),
        .CE(1'b1),
        .D(s0o_tdata[31]),
        .Q(bli_s0o_tdata_1[31]),
        .R(1'b0));
  (* BLI = "TRUE" *) 
  (* KEEP = "yes" *) 
  FDRE \bli0.bli_s0o_tdata_1_reg[32] 
       (.C(s_axis_aclk),
        .CE(1'b1),
        .D(s0o_tdata[32]),
        .Q(bli_s0o_tdata_1[32]),
        .R(1'b0));
  (* BLI = "TRUE" *) 
  (* KEEP = "yes" *) 
  FDRE \bli0.bli_s0o_tdata_1_reg[33] 
       (.C(s_axis_aclk),
        .CE(1'b1),
        .D(s0o_tdata[33]),
        .Q(bli_s0o_tdata_1[33]),
        .R(1'b0));
  (* BLI = "TRUE" *) 
  (* KEEP = "yes" *) 
  FDRE \bli0.bli_s0o_tdata_1_reg[3] 
       (.C(s_axis_aclk),
        .CE(1'b1),
        .D(s0o_tdata[3]),
        .Q(bli_s0o_tdata_1[3]),
        .R(1'b0));
  (* BLI = "TRUE" *) 
  (* KEEP = "yes" *) 
  FDRE \bli0.bli_s0o_tdata_1_reg[4] 
       (.C(s_axis_aclk),
        .CE(1'b1),
        .D(s0o_tdata[4]),
        .Q(bli_s0o_tdata_1[4]),
        .R(1'b0));
  (* BLI = "TRUE" *) 
  (* KEEP = "yes" *) 
  FDRE \bli0.bli_s0o_tdata_1_reg[5] 
       (.C(s_axis_aclk),
        .CE(1'b1),
        .D(s0o_tdata[5]),
        .Q(bli_s0o_tdata_1[5]),
        .R(1'b0));
  (* BLI = "TRUE" *) 
  (* KEEP = "yes" *) 
  FDRE \bli0.bli_s0o_tdata_1_reg[6] 
       (.C(s_axis_aclk),
        .CE(1'b1),
        .D(s0o_tdata[6]),
        .Q(bli_s0o_tdata_1[6]),
        .R(1'b0));
  (* BLI = "TRUE" *) 
  (* KEEP = "yes" *) 
  FDRE \bli0.bli_s0o_tdata_1_reg[7] 
       (.C(s_axis_aclk),
        .CE(1'b1),
        .D(s0o_tdata[7]),
        .Q(bli_s0o_tdata_1[7]),
        .R(1'b0));
  (* BLI = "TRUE" *) 
  (* KEEP = "yes" *) 
  FDRE \bli0.bli_s0o_tdata_1_reg[8] 
       (.C(s_axis_aclk),
        .CE(1'b1),
        .D(s0o_tdata[8]),
        .Q(bli_s0o_tdata_1[8]),
        .R(1'b0));
  (* BLI = "TRUE" *) 
  (* KEEP = "yes" *) 
  FDRE \bli0.bli_s0o_tdata_1_reg[9] 
       (.C(s_axis_aclk),
        .CE(1'b1),
        .D(s0o_tdata[9]),
        .Q(bli_s0o_tdata_1[9]),
        .R(1'b0));
  (* BLI = "TRUE" *) 
  (* KEEP = "yes" *) 
  FDRE \bli0.bli_s0o_tready_1_reg 
       (.C(s_axis_aclk),
        .CE(1'b1),
        .D(m_axis_tready),
        .Q(bli_s0o_tready_1),
        .R(1'b0));
  (* BLI = "TRUE" *) 
  (* KEEP = "yes" *) 
  FDRE \bli0.bli_s0o_tvalid_1_reg 
       (.C(s_axis_aclk),
        .CE(1'b1),
        .D(s0o_tvalid),
        .Q(bli_s0o_tvalid_1),
        .R(1'b0));
  LUT1 #(
    .INIT(2'h2)) 
    i_0
       (.I0(1'b0),
        .O(bli_s0o_tdata_1[65]));
  LUT1 #(
    .INIT(2'h2)) 
    i_1
       (.I0(1'b0),
        .O(bli_s0o_tdata_1[64]));
  LUT1 #(
    .INIT(2'h2)) 
    i_10
       (.I0(1'b0),
        .O(bli_s0o_tdata_1[55]));
  LUT1 #(
    .INIT(2'h2)) 
    i_11
       (.I0(1'b0),
        .O(bli_s0o_tdata_1[54]));
  LUT1 #(
    .INIT(2'h2)) 
    i_12
       (.I0(1'b0),
        .O(bli_s0o_tdata_1[53]));
  LUT1 #(
    .INIT(2'h2)) 
    i_13
       (.I0(1'b0),
        .O(bli_s0o_tdata_1[52]));
  LUT1 #(
    .INIT(2'h2)) 
    i_14
       (.I0(1'b0),
        .O(bli_s0o_tdata_1[51]));
  LUT1 #(
    .INIT(2'h2)) 
    i_15
       (.I0(1'b0),
        .O(bli_s0o_tdata_1[50]));
  LUT1 #(
    .INIT(2'h2)) 
    i_16
       (.I0(1'b0),
        .O(bli_s0o_tdata_1[49]));
  LUT1 #(
    .INIT(2'h2)) 
    i_17
       (.I0(1'b0),
        .O(bli_s0o_tdata_1[48]));
  LUT1 #(
    .INIT(2'h2)) 
    i_18
       (.I0(1'b0),
        .O(bli_s0o_tdata_1[47]));
  LUT1 #(
    .INIT(2'h2)) 
    i_19
       (.I0(1'b0),
        .O(bli_s0o_tdata_1[46]));
  LUT1 #(
    .INIT(2'h2)) 
    i_2
       (.I0(1'b0),
        .O(bli_s0o_tdata_1[63]));
  LUT1 #(
    .INIT(2'h2)) 
    i_20
       (.I0(1'b0),
        .O(bli_s0o_tdata_1[45]));
  LUT1 #(
    .INIT(2'h2)) 
    i_21
       (.I0(1'b0),
        .O(bli_s0o_tdata_1[44]));
  LUT1 #(
    .INIT(2'h2)) 
    i_22
       (.I0(1'b0),
        .O(bli_s0o_tdata_1[43]));
  LUT1 #(
    .INIT(2'h2)) 
    i_23
       (.I0(1'b0),
        .O(bli_s0o_tdata_1[42]));
  LUT1 #(
    .INIT(2'h2)) 
    i_24
       (.I0(1'b0),
        .O(bli_s0o_tdata_1[41]));
  LUT1 #(
    .INIT(2'h2)) 
    i_25
       (.I0(1'b0),
        .O(bli_s0o_tdata_1[40]));
  LUT1 #(
    .INIT(2'h2)) 
    i_26
       (.I0(1'b0),
        .O(bli_s0o_tdata_1[39]));
  LUT1 #(
    .INIT(2'h2)) 
    i_27
       (.I0(1'b0),
        .O(bli_s0o_tdata_1[38]));
  LUT1 #(
    .INIT(2'h2)) 
    i_28
       (.I0(1'b0),
        .O(bli_s0o_tdata_1[37]));
  LUT1 #(
    .INIT(2'h2)) 
    i_29
       (.I0(1'b0),
        .O(bli_s0o_tdata_1[36]));
  LUT1 #(
    .INIT(2'h2)) 
    i_3
       (.I0(1'b0),
        .O(bli_s0o_tdata_1[62]));
  LUT1 #(
    .INIT(2'h2)) 
    i_30
       (.I0(1'b0),
        .O(bli_s0o_tdata_1[35]));
  LUT1 #(
    .INIT(2'h2)) 
    i_31
       (.I0(1'b0),
        .O(bli_s0o_tdata_1[34]));
  LUT1 #(
    .INIT(2'h2)) 
    i_32
       (.I0(1'b0),
        .O(bli_s1o_tvalid_1));
  LUT1 #(
    .INIT(2'h2)) 
    i_33
       (.I0(1'b0),
        .O(bli_s1o_tready_1));
  LUT1 #(
    .INIT(2'h2)) 
    i_34
       (.I0(1'b0),
        .O(bli_s1o_tdata_1[65]));
  LUT1 #(
    .INIT(2'h2)) 
    i_35
       (.I0(1'b0),
        .O(bli_s1o_tdata_1[64]));
  LUT1 #(
    .INIT(2'h2)) 
    i_36
       (.I0(1'b0),
        .O(bli_s1o_tdata_1[63]));
  LUT1 #(
    .INIT(2'h2)) 
    i_37
       (.I0(1'b0),
        .O(bli_s1o_tdata_1[62]));
  LUT1 #(
    .INIT(2'h2)) 
    i_38
       (.I0(1'b0),
        .O(bli_s1o_tdata_1[61]));
  LUT1 #(
    .INIT(2'h2)) 
    i_39
       (.I0(1'b0),
        .O(bli_s1o_tdata_1[60]));
  LUT1 #(
    .INIT(2'h2)) 
    i_4
       (.I0(1'b0),
        .O(bli_s0o_tdata_1[61]));
  LUT1 #(
    .INIT(2'h2)) 
    i_40
       (.I0(1'b0),
        .O(bli_s1o_tdata_1[59]));
  LUT1 #(
    .INIT(2'h2)) 
    i_41
       (.I0(1'b0),
        .O(bli_s1o_tdata_1[58]));
  LUT1 #(
    .INIT(2'h2)) 
    i_42
       (.I0(1'b0),
        .O(bli_s1o_tdata_1[57]));
  LUT1 #(
    .INIT(2'h2)) 
    i_43
       (.I0(1'b0),
        .O(bli_s1o_tdata_1[56]));
  LUT1 #(
    .INIT(2'h2)) 
    i_44
       (.I0(1'b0),
        .O(bli_s1o_tdata_1[55]));
  LUT1 #(
    .INIT(2'h2)) 
    i_45
       (.I0(1'b0),
        .O(bli_s1o_tdata_1[54]));
  LUT1 #(
    .INIT(2'h2)) 
    i_46
       (.I0(1'b0),
        .O(bli_s1o_tdata_1[53]));
  LUT1 #(
    .INIT(2'h2)) 
    i_47
       (.I0(1'b0),
        .O(bli_s1o_tdata_1[52]));
  LUT1 #(
    .INIT(2'h2)) 
    i_48
       (.I0(1'b0),
        .O(bli_s1o_tdata_1[51]));
  LUT1 #(
    .INIT(2'h2)) 
    i_49
       (.I0(1'b0),
        .O(bli_s1o_tdata_1[50]));
  LUT1 #(
    .INIT(2'h2)) 
    i_5
       (.I0(1'b0),
        .O(bli_s0o_tdata_1[60]));
  LUT1 #(
    .INIT(2'h2)) 
    i_50
       (.I0(1'b0),
        .O(bli_s1o_tdata_1[49]));
  LUT1 #(
    .INIT(2'h2)) 
    i_51
       (.I0(1'b0),
        .O(bli_s1o_tdata_1[48]));
  LUT1 #(
    .INIT(2'h2)) 
    i_52
       (.I0(1'b0),
        .O(bli_s1o_tdata_1[47]));
  LUT1 #(
    .INIT(2'h2)) 
    i_53
       (.I0(1'b0),
        .O(bli_s1o_tdata_1[46]));
  LUT1 #(
    .INIT(2'h2)) 
    i_54
       (.I0(1'b0),
        .O(bli_s1o_tdata_1[45]));
  LUT1 #(
    .INIT(2'h2)) 
    i_55
       (.I0(1'b0),
        .O(bli_s1o_tdata_1[44]));
  LUT1 #(
    .INIT(2'h2)) 
    i_56
       (.I0(1'b0),
        .O(bli_s1o_tdata_1[43]));
  LUT1 #(
    .INIT(2'h2)) 
    i_57
       (.I0(1'b0),
        .O(bli_s1o_tdata_1[42]));
  LUT1 #(
    .INIT(2'h2)) 
    i_58
       (.I0(1'b0),
        .O(bli_s1o_tdata_1[41]));
  LUT1 #(
    .INIT(2'h2)) 
    i_59
       (.I0(1'b0),
        .O(bli_s1o_tdata_1[40]));
  LUT1 #(
    .INIT(2'h2)) 
    i_6
       (.I0(1'b0),
        .O(bli_s0o_tdata_1[59]));
  LUT1 #(
    .INIT(2'h2)) 
    i_60
       (.I0(1'b0),
        .O(bli_s1o_tdata_1[39]));
  LUT1 #(
    .INIT(2'h2)) 
    i_61
       (.I0(1'b0),
        .O(bli_s1o_tdata_1[38]));
  LUT1 #(
    .INIT(2'h2)) 
    i_62
       (.I0(1'b0),
        .O(bli_s1o_tdata_1[37]));
  LUT1 #(
    .INIT(2'h2)) 
    i_63
       (.I0(1'b0),
        .O(bli_s1o_tdata_1[36]));
  LUT1 #(
    .INIT(2'h2)) 
    i_64
       (.I0(1'b0),
        .O(bli_s1o_tdata_1[35]));
  LUT1 #(
    .INIT(2'h2)) 
    i_65
       (.I0(1'b0),
        .O(bli_s1o_tdata_1[34]));
  LUT1 #(
    .INIT(2'h2)) 
    i_66
       (.I0(1'b0),
        .O(bli_s1o_tdata_1[33]));
  LUT1 #(
    .INIT(2'h2)) 
    i_67
       (.I0(1'b0),
        .O(bli_s1o_tdata_1[32]));
  LUT1 #(
    .INIT(2'h2)) 
    i_68
       (.I0(1'b0),
        .O(bli_s1o_tdata_1[31]));
  LUT1 #(
    .INIT(2'h2)) 
    i_69
       (.I0(1'b0),
        .O(bli_s1o_tdata_1[30]));
  LUT1 #(
    .INIT(2'h2)) 
    i_7
       (.I0(1'b0),
        .O(bli_s0o_tdata_1[58]));
  LUT1 #(
    .INIT(2'h2)) 
    i_70
       (.I0(1'b0),
        .O(bli_s1o_tdata_1[29]));
  LUT1 #(
    .INIT(2'h2)) 
    i_71
       (.I0(1'b0),
        .O(bli_s1o_tdata_1[28]));
  LUT1 #(
    .INIT(2'h2)) 
    i_72
       (.I0(1'b0),
        .O(bli_s1o_tdata_1[27]));
  LUT1 #(
    .INIT(2'h2)) 
    i_73
       (.I0(1'b0),
        .O(bli_s1o_tdata_1[26]));
  LUT1 #(
    .INIT(2'h2)) 
    i_74
       (.I0(1'b0),
        .O(bli_s1o_tdata_1[25]));
  LUT1 #(
    .INIT(2'h2)) 
    i_75
       (.I0(1'b0),
        .O(bli_s1o_tdata_1[24]));
  LUT1 #(
    .INIT(2'h2)) 
    i_76
       (.I0(1'b0),
        .O(bli_s1o_tdata_1[23]));
  LUT1 #(
    .INIT(2'h2)) 
    i_77
       (.I0(1'b0),
        .O(bli_s1o_tdata_1[22]));
  LUT1 #(
    .INIT(2'h2)) 
    i_78
       (.I0(1'b0),
        .O(bli_s1o_tdata_1[21]));
  LUT1 #(
    .INIT(2'h2)) 
    i_79
       (.I0(1'b0),
        .O(bli_s1o_tdata_1[20]));
  LUT1 #(
    .INIT(2'h2)) 
    i_8
       (.I0(1'b0),
        .O(bli_s0o_tdata_1[57]));
  LUT1 #(
    .INIT(2'h2)) 
    i_80
       (.I0(1'b0),
        .O(bli_s1o_tdata_1[19]));
  LUT1 #(
    .INIT(2'h2)) 
    i_81
       (.I0(1'b0),
        .O(bli_s1o_tdata_1[18]));
  LUT1 #(
    .INIT(2'h2)) 
    i_82
       (.I0(1'b0),
        .O(bli_s1o_tdata_1[17]));
  LUT1 #(
    .INIT(2'h2)) 
    i_83
       (.I0(1'b0),
        .O(bli_s1o_tdata_1[16]));
  LUT1 #(
    .INIT(2'h2)) 
    i_84
       (.I0(1'b0),
        .O(bli_s1o_tdata_1[15]));
  LUT1 #(
    .INIT(2'h2)) 
    i_85
       (.I0(1'b0),
        .O(bli_s1o_tdata_1[14]));
  LUT1 #(
    .INIT(2'h2)) 
    i_86
       (.I0(1'b0),
        .O(bli_s1o_tdata_1[13]));
  LUT1 #(
    .INIT(2'h2)) 
    i_87
       (.I0(1'b0),
        .O(bli_s1o_tdata_1[12]));
  LUT1 #(
    .INIT(2'h2)) 
    i_88
       (.I0(1'b0),
        .O(bli_s1o_tdata_1[11]));
  LUT1 #(
    .INIT(2'h2)) 
    i_89
       (.I0(1'b0),
        .O(bli_s1o_tdata_1[10]));
  LUT1 #(
    .INIT(2'h2)) 
    i_9
       (.I0(1'b0),
        .O(bli_s0o_tdata_1[56]));
  LUT1 #(
    .INIT(2'h2)) 
    i_90
       (.I0(1'b0),
        .O(bli_s1o_tdata_1[9]));
  LUT1 #(
    .INIT(2'h2)) 
    i_91
       (.I0(1'b0),
        .O(bli_s1o_tdata_1[8]));
  LUT1 #(
    .INIT(2'h2)) 
    i_92
       (.I0(1'b0),
        .O(bli_s1o_tdata_1[7]));
  LUT1 #(
    .INIT(2'h2)) 
    i_93
       (.I0(1'b0),
        .O(bli_s1o_tdata_1[6]));
  LUT1 #(
    .INIT(2'h2)) 
    i_94
       (.I0(1'b0),
        .O(bli_s1o_tdata_1[5]));
  LUT1 #(
    .INIT(2'h2)) 
    i_95
       (.I0(1'b0),
        .O(bli_s1o_tdata_1[4]));
  LUT1 #(
    .INIT(2'h2)) 
    i_96
       (.I0(1'b0),
        .O(bli_s1o_tdata_1[3]));
  LUT1 #(
    .INIT(2'h2)) 
    i_97
       (.I0(1'b0),
        .O(bli_s1o_tdata_1[2]));
  LUT1 #(
    .INIT(2'h2)) 
    i_98
       (.I0(1'b0),
        .O(bli_s1o_tdata_1[1]));
  LUT1 #(
    .INIT(2'h2)) 
    i_99
       (.I0(1'b0),
        .O(bli_s1o_tdata_1[0]));
  (* KEEP_HIERARCHY = "soft" *) 
  (* PL2AI_FIFO_BYPASS = "0" *) 
  (* SIZE = "34" *) 
  (* is_du_within_envelope = "true" *) 
  ulp_inst_0_ai_pl_channel_v1_0_reg_slice mrs_s0
       (.clk(s_axis_aclk),
        .m_axis_tdata(s0o_tdata),
        .m_axis_tready(bli_s0o_tready_1),
        .m_axis_tvalid(s0o_tvalid),
        .reset_n(1'b1),
        .s_axis_tdata({s0i_tdata,s_axis_tdata}),
        .s_axis_tready(s_axis_tready),
        .s_axis_tvalid(s_axis_tvalid));
  LUT4 #(
    .INIT(16'h8000)) 
    s0i_tdata0
       (.I0(s_axis_tkeep[1]),
        .I1(s_axis_tkeep[0]),
        .I2(s_axis_tkeep[2]),
        .I3(s_axis_tkeep[3]),
        .O(s0i_tdata));
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

(* X_CORE_INFO = "bd_d23e,Vivado 2022.2.2" *) 
module ulp_inst_0_axi_ic_user_0
   (aclk,
    aclk1,
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
    M00_AXI_rready,
    M01_AXI_awaddr,
    M01_AXI_awprot,
    M01_AXI_awvalid,
    M01_AXI_awready,
    M01_AXI_wdata,
    M01_AXI_wstrb,
    M01_AXI_wvalid,
    M01_AXI_wready,
    M01_AXI_bresp,
    M01_AXI_bvalid,
    M01_AXI_bready,
    M01_AXI_araddr,
    M01_AXI_arprot,
    M01_AXI_arvalid,
    M01_AXI_arready,
    M01_AXI_rdata,
    M01_AXI_rresp,
    M01_AXI_rvalid,
    M01_AXI_rready,
    M02_AXI_awaddr,
    M02_AXI_awprot,
    M02_AXI_awvalid,
    M02_AXI_awready,
    M02_AXI_wdata,
    M02_AXI_wstrb,
    M02_AXI_wvalid,
    M02_AXI_wready,
    M02_AXI_bresp,
    M02_AXI_bvalid,
    M02_AXI_bready,
    M02_AXI_araddr,
    M02_AXI_arprot,
    M02_AXI_arvalid,
    M02_AXI_arready,
    M02_AXI_rdata,
    M02_AXI_rresp,
    M02_AXI_rvalid,
    M02_AXI_rready);
  input aclk;
  input aclk1;
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
  output [1:0]M00_AXI_awid;
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
  input [1:0]M00_AXI_bid;
  input [1:0]M00_AXI_bresp;
  input M00_AXI_bvalid;
  output M00_AXI_bready;
  output [1:0]M00_AXI_arid;
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
  input [1:0]M00_AXI_rid;
  input [31:0]M00_AXI_rdata;
  input [1:0]M00_AXI_rresp;
  input M00_AXI_rlast;
  input [13:0]M00_AXI_ruser;
  input M00_AXI_rvalid;
  output M00_AXI_rready;
  output [5:0]M01_AXI_awaddr;
  output [2:0]M01_AXI_awprot;
  output M01_AXI_awvalid;
  input M01_AXI_awready;
  output [31:0]M01_AXI_wdata;
  output [3:0]M01_AXI_wstrb;
  output M01_AXI_wvalid;
  input M01_AXI_wready;
  input [1:0]M01_AXI_bresp;
  input M01_AXI_bvalid;
  output M01_AXI_bready;
  output [5:0]M01_AXI_araddr;
  output [2:0]M01_AXI_arprot;
  output M01_AXI_arvalid;
  input M01_AXI_arready;
  input [31:0]M01_AXI_rdata;
  input [1:0]M01_AXI_rresp;
  input M01_AXI_rvalid;
  output M01_AXI_rready;
  output [5:0]M02_AXI_awaddr;
  output [2:0]M02_AXI_awprot;
  output M02_AXI_awvalid;
  input M02_AXI_awready;
  output [31:0]M02_AXI_wdata;
  output [3:0]M02_AXI_wstrb;
  output M02_AXI_wvalid;
  input M02_AXI_wready;
  input [1:0]M02_AXI_bresp;
  input M02_AXI_bvalid;
  output M02_AXI_bready;
  output [5:0]M02_AXI_araddr;
  output [2:0]M02_AXI_arprot;
  output M02_AXI_arvalid;
  input M02_AXI_arready;
  input [31:0]M02_AXI_rdata;
  input [1:0]M02_AXI_rresp;
  input M02_AXI_rvalid;
  output M02_AXI_rready;


endmodule

(* X_CORE_INFO = "bd_dad2,Vivado 2022.2.2" *) 
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
  input [1:0]S00_AXI_awid;
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
  input [113:0]S00_AXI_aruser;
  input S00_AXI_arvalid;
  output S00_AXI_arready;
  output [1:0]S00_AXI_rid;
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

(* X_CORE_INFO = "bd_afcb,Vivado 2022.2.2" *) 
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

(* X_CORE_INFO = "bd_0dc7,Vivado 2022.2.2" *) 
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
    M00_AXI_arid,
    M00_AXI_aruser,
    M00_AXI_awid,
    M00_AXI_awuser,
    M00_AXI_bid,
    M00_AXI_rid,
    M01_AXI_arid,
    M01_AXI_aruser,
    M01_AXI_awid,
    M01_AXI_awuser,
    M01_AXI_bid,
    M01_AXI_rid);
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
  output [1:0]M00_AXI_arid;
  output [17:0]M00_AXI_aruser;
  output [1:0]M00_AXI_awid;
  output [17:0]M00_AXI_awuser;
  input [1:0]M00_AXI_bid;
  input [1:0]M00_AXI_rid;
  output [1:0]M01_AXI_arid;
  output [17:0]M01_AXI_aruser;
  output [1:0]M01_AXI_awid;
  output [17:0]M01_AXI_awuser;
  input [1:0]M01_AXI_bid;
  input [1:0]M01_AXI_rid;


endmodule

(* X_CORE_INFO = "bd_0ad1,Vivado 2022.2.2" *) 
module ulp_inst_0_axi_noc_kernel0_0
   (S00_AXI_awaddr,
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
    S00_AXI_wvalid,
    S00_AXI_wready,
    S00_AXI_bresp,
    S00_AXI_bvalid,
    S00_AXI_bready,
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
    S00_AXI_rdata,
    S00_AXI_rresp,
    S00_AXI_rlast,
    S00_AXI_rvalid,
    S00_AXI_rready,
    S01_AXI_awaddr,
    S01_AXI_awlen,
    S01_AXI_awsize,
    S01_AXI_awburst,
    S01_AXI_awlock,
    S01_AXI_awcache,
    S01_AXI_awprot,
    S01_AXI_awregion,
    S01_AXI_awqos,
    S01_AXI_awvalid,
    S01_AXI_awready,
    S01_AXI_wdata,
    S01_AXI_wstrb,
    S01_AXI_wlast,
    S01_AXI_wvalid,
    S01_AXI_wready,
    S01_AXI_bresp,
    S01_AXI_bvalid,
    S01_AXI_bready,
    S01_AXI_araddr,
    S01_AXI_arlen,
    S01_AXI_arsize,
    S01_AXI_arburst,
    S01_AXI_arlock,
    S01_AXI_arcache,
    S01_AXI_arprot,
    S01_AXI_arregion,
    S01_AXI_arqos,
    S01_AXI_arvalid,
    S01_AXI_arready,
    S01_AXI_rdata,
    S01_AXI_rresp,
    S01_AXI_rlast,
    S01_AXI_rvalid,
    S01_AXI_rready,
    M00_INI_internoc,
    M01_INI_internoc,
    M02_INI_internoc,
    aclk0,
    S00_AXI_arid,
    S00_AXI_awid,
    S00_AXI_bid,
    S00_AXI_rid,
    S01_AXI_arid,
    S01_AXI_awid,
    S01_AXI_bid,
    S01_AXI_rid);
  input [63:0]S00_AXI_awaddr;
  input [7:0]S00_AXI_awlen;
  input [2:0]S00_AXI_awsize;
  input [1:0]S00_AXI_awburst;
  input [0:0]S00_AXI_awlock;
  input [3:0]S00_AXI_awcache;
  input [2:0]S00_AXI_awprot;
  input [3:0]S00_AXI_awregion;
  input [3:0]S00_AXI_awqos;
  input [0:0]S00_AXI_awvalid;
  output [0:0]S00_AXI_awready;
  input [127:0]S00_AXI_wdata;
  input [15:0]S00_AXI_wstrb;
  input [0:0]S00_AXI_wlast;
  input [0:0]S00_AXI_wvalid;
  output [0:0]S00_AXI_wready;
  output [1:0]S00_AXI_bresp;
  output [0:0]S00_AXI_bvalid;
  input [0:0]S00_AXI_bready;
  input [63:0]S00_AXI_araddr;
  input [7:0]S00_AXI_arlen;
  input [2:0]S00_AXI_arsize;
  input [1:0]S00_AXI_arburst;
  input [0:0]S00_AXI_arlock;
  input [3:0]S00_AXI_arcache;
  input [2:0]S00_AXI_arprot;
  input [3:0]S00_AXI_arregion;
  input [3:0]S00_AXI_arqos;
  input [0:0]S00_AXI_arvalid;
  output [0:0]S00_AXI_arready;
  output [127:0]S00_AXI_rdata;
  output [1:0]S00_AXI_rresp;
  output [0:0]S00_AXI_rlast;
  output [0:0]S00_AXI_rvalid;
  input [0:0]S00_AXI_rready;
  input [63:0]S01_AXI_awaddr;
  input [7:0]S01_AXI_awlen;
  input [2:0]S01_AXI_awsize;
  input [1:0]S01_AXI_awburst;
  input [0:0]S01_AXI_awlock;
  input [3:0]S01_AXI_awcache;
  input [2:0]S01_AXI_awprot;
  input [3:0]S01_AXI_awregion;
  input [3:0]S01_AXI_awqos;
  input [0:0]S01_AXI_awvalid;
  output [0:0]S01_AXI_awready;
  input [31:0]S01_AXI_wdata;
  input [3:0]S01_AXI_wstrb;
  input [0:0]S01_AXI_wlast;
  input [0:0]S01_AXI_wvalid;
  output [0:0]S01_AXI_wready;
  output [1:0]S01_AXI_bresp;
  output [0:0]S01_AXI_bvalid;
  input [0:0]S01_AXI_bready;
  input [63:0]S01_AXI_araddr;
  input [7:0]S01_AXI_arlen;
  input [2:0]S01_AXI_arsize;
  input [1:0]S01_AXI_arburst;
  input [0:0]S01_AXI_arlock;
  input [3:0]S01_AXI_arcache;
  input [2:0]S01_AXI_arprot;
  input [3:0]S01_AXI_arregion;
  input [3:0]S01_AXI_arqos;
  input [0:0]S01_AXI_arvalid;
  output [0:0]S01_AXI_arready;
  output [31:0]S01_AXI_rdata;
  output [1:0]S01_AXI_rresp;
  output [0:0]S01_AXI_rlast;
  output [0:0]S01_AXI_rvalid;
  input [0:0]S01_AXI_rready;
  output [0:0]M00_INI_internoc;
  output [0:0]M01_INI_internoc;
  output [0:0]M02_INI_internoc;
  input aclk0;
  input [0:0]S00_AXI_arid;
  input [0:0]S00_AXI_awid;
  output [0:0]S00_AXI_bid;
  output [0:0]S00_AXI_rid;
  input [0:0]S01_AXI_arid;
  input [0:0]S01_AXI_awid;
  output [0:0]S01_AXI_bid;
  output [0:0]S01_AXI_rid;


endmodule

(* X_CORE_INFO = "bd_a6d9,Vivado 2022.2.2" *) 
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
   (M00_AXIS_tdata,
    M00_AXIS_tkeep,
    M00_AXIS_tlast,
    M00_AXIS_tready,
    M00_AXIS_tvalid,
    S00_AXIS_tdata,
    S00_AXIS_tlast,
    S00_AXIS_tready,
    S00_AXIS_tvalid,
    S00_AXI_araddr,
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
    aclk0,
    s00_axi_aclk);
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M00_AXIS TDATA" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME M00_AXIS, CATEGORY PL, CLK_DOMAIN cd_aclk_kernel_00, FREQ_HZ 299996999, HAS_TKEEP 1, HAS_TLAST 1, HAS_TREADY 1, HAS_TSTRB 0, INSERT_VIP 0, IS_REGISTERED true, LAYERED_METADATA undef, MY_CATEGORY AIE, PHASE 0.0, TDATA_NUM_BYTES 4, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0" *) output [31:0]M00_AXIS_tdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M00_AXIS TKEEP" *) output [3:0]M00_AXIS_tkeep;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M00_AXIS TLAST" *) output [0:0]M00_AXIS_tlast;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M00_AXIS TREADY" *) input [0:0]M00_AXIS_tready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M00_AXIS TVALID" *) output [0:0]M00_AXIS_tvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 S00_AXIS TDATA" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME S00_AXIS, CATEGORY PL, CLK_DOMAIN cd_aclk_kernel_00, FREQ_HZ 299996999, HAS_TKEEP 0, HAS_TLAST 1, HAS_TREADY 1, HAS_TSTRB 0, INSERT_VIP 0, IS_REGISTERED true, LAYERED_METADATA undef, MY_CATEGORY AIE, PHASE 0.0, TDATA_NUM_BYTES 4, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0" *) input [31:0]S00_AXIS_tdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 S00_AXIS TLAST" *) input [0:0]S00_AXIS_tlast;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 S00_AXIS TREADY" *) output [0:0]S00_AXIS_tready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 S00_AXIS TVALID" *) input [0:0]S00_AXIS_tvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI ARADDR" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME S00_AXI, ADDR_WIDTH 42, ARUSER_WIDTH 0, AWUSER_WIDTH 0, BUSER_WIDTH 0, CATEGORY NOC, CLK_DOMAIN bd_9d54_noc_ai_mm_0_0_s_axi_aclk, DATA_WIDTH 128, FREQ_HZ 1250000000, HAS_BRESP 1, HAS_BURST 1, HAS_CACHE 1, HAS_LOCK 1, HAS_PROT 1, HAS_QOS 1, HAS_REGION 1, HAS_RRESP 1, HAS_WSTRB 1, ID_WIDTH 16, INSERT_VIP 0, MAX_BURST_LENGTH 256, MY_CATEGORY AIE, NUM_READ_OUTSTANDING 1, NUM_READ_THREADS 1, NUM_WRITE_OUTSTANDING 1, NUM_WRITE_THREADS 1, PHASE 0.0, PHYSICAL_CHANNEL NOC_NSU_TO_AIE, PROTOCOL AXI4, READ_WRITE_MODE READ_WRITE, RUSER_BITS_PER_BYTE 0, RUSER_WIDTH 17, SUPPORTS_NARROW_BURST 1, WUSER_BITS_PER_BYTE 0, WUSER_WIDTH 17" *) input [33:0]S00_AXI_araddr;
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
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 CLK.ACLK0 CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME CLK.ACLK0, ASSOCIATED_BUSIF M00_AXIS:S00_AXIS, CLK_DOMAIN cd_aclk_kernel_00, FREQ_HZ 299996999, FREQ_TOLERANCE_HZ 0, INSERT_VIP 0, PHASE 0.0" *) input aclk0;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 CLK.S00_AXI_ACLK CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME CLK.S00_AXI_ACLK, ASSOCIATED_BUSIF S00_AXI, CLK_DOMAIN bd_9d54_noc_ai_mm_0_0_s_axi_aclk, FREQ_HZ 1250000000, FREQ_TOLERANCE_HZ 0, INSERT_VIP 0, PHASE 0.0, PHYSICAL_CHANNEL AIE_TO_NOC_NSU" *) output s00_axi_aclk;

  wire \<const0> ;
  wire [31:0]M00_AXIS_tdata;
  wire [0:0]M00_AXIS_tready;
  wire [0:0]M00_AXIS_tvalid;
  wire [31:0]S00_AXIS_tdata;
  wire [0:0]S00_AXIS_tready;
  wire [0:0]S00_AXIS_tvalid;
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
  wire aclk0;
  wire s00_axi_aclk;
  wire NLW_ai_pl_ch_0_m_axis_tlast_UNCONNECTED;
  wire [3:0]NLW_ai_pl_ch_0_m_axis_tkeep_UNCONNECTED;
  wire NLW_noc_ai_mm_0_to_aie_2_UNCONNECTED;
  wire NLW_noc_ai_mm_0_to_aie_3_UNCONNECTED;
  wire NLW_noc_ai_mm_0_to_aie_6_UNCONNECTED;
  wire NLW_noc_ai_mm_0_to_aie_7_UNCONNECTED;
  wire [15:2]NLW_noc_ai_mm_0_s_axi_bid_UNCONNECTED;
  wire [15:2]NLW_noc_ai_mm_0_s_axi_rid_UNCONNECTED;
  wire [0:0]NLW_pl_ai_ch_0_to_aie_UNCONNECTED;

  assign M00_AXIS_tkeep[3] = \<const0> ;
  assign M00_AXIS_tkeep[2] = \<const0> ;
  assign M00_AXIS_tkeep[1] = \<const0> ;
  assign M00_AXIS_tkeep[0] = \<const0> ;
  assign M00_AXIS_tlast[0] = \<const0> ;
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
  (* CHECK_LICENSE_TYPE = "bd_9d54_ai_pl_ch_0_0,ai_pl_v1_0_6_ai_pl,{}" *) 
  (* DowngradeIPIdentifiedWarnings = "yes" *) 
  (* X_CORE_INFO = "ai_pl_v1_0_6_ai_pl,Vivado 2022.2.2" *) 
  ulp_inst_0_bd_9d54_ai_pl_ch_0_0 ai_pl_ch_0
       (.from_aie(1'b0),
        .m_axis_aclk(aclk0),
        .m_axis_tdata(M00_AXIS_tdata),
        .m_axis_tkeep(NLW_ai_pl_ch_0_m_axis_tkeep_UNCONNECTED[3:0]),
        .m_axis_tlast(NLW_ai_pl_ch_0_m_axis_tlast_UNCONNECTED),
        .m_axis_tready(M00_AXIS_tready),
        .m_axis_tvalid(M00_AXIS_tvalid));
  (* CHECK_LICENSE_TYPE = "bd_9d54_noc_ai_mm_0_0,ai_noc_v1_0_0_ai_noc,{}" *) 
  (* DowngradeIPIdentifiedWarnings = "yes" *) 
  (* X_CORE_INFO = "ai_noc_v1_0_0_ai_noc,Vivado 2022.2.2" *) 
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
  (* CHECK_LICENSE_TYPE = "bd_9d54_pl_ai_ch_0_0,ai_pl_v1_0_6_ai_pl,{}" *) 
  (* DowngradeIPIdentifiedWarnings = "yes" *) 
  (* X_CORE_INFO = "ai_pl_v1_0_6_ai_pl,Vivado 2022.2.2" *) 
  ulp_inst_0_bd_9d54_pl_ai_ch_0_0 pl_ai_ch_0
       (.s_axis_aclk(aclk0),
        .s_axis_tdata(S00_AXIS_tdata),
        .s_axis_tlast(1'b0),
        .s_axis_tready(S00_AXIS_tready),
        .s_axis_tvalid(S00_AXIS_tvalid),
        .to_aie(NLW_pl_ai_ch_0_to_aie_UNCONNECTED[0]));
endmodule

(* CHECK_LICENSE_TYPE = "bd_9d54_ai_pl_ch_0_0,ai_pl_v1_0_6_ai_pl,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* ORIG_REF_NAME = "bd_9d54_ai_pl_ch_0_0" *) 
(* X_CORE_INFO = "ai_pl_v1_0_6_ai_pl,Vivado 2022.2.2" *) 
module ulp_inst_0_bd_9d54_ai_pl_ch_0_0
   (m_axis_tdata,
    m_axis_tkeep,
    m_axis_tlast,
    m_axis_tvalid,
    m_axis_tready,
    m_axis_aclk,
    from_aie);
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M_AXIS TDATA" *) output [31:0]m_axis_tdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M_AXIS TKEEP" *) output [3:0]m_axis_tkeep;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M_AXIS TLAST" *) output m_axis_tlast;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M_AXIS TVALID" *) output m_axis_tvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M_AXIS TREADY" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME M_AXIS, TDATA_NUM_BYTES 4, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 1, HAS_TLAST 1, FREQ_HZ 299996999, PHASE 0.0, CLK_DOMAIN cd_aclk_kernel_00, LAYERED_METADATA undef, INSERT_VIP 0" *) input m_axis_tready;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 m_axis_CLK CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME m_axis_CLK, ASSOCIATED_BUSIF M_AXIS, FREQ_HZ 299996999, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN cd_aclk_kernel_00, INSERT_VIP 0" *) input m_axis_aclk;
  input [0:0]from_aie;

  wire \<const0> ;
  wire inst_n_34;
  wire inst_n_35;
  wire inst_n_36;
  wire inst_n_37;
  wire inst_n_38;
  wire m_axis_aclk;
  wire [31:0]m_axis_tdata;
  wire m_axis_tready;
  wire m_axis_tvalid;
  wire NLW_inst_s_axis_tready_UNCONNECTED;
  wire [1:0]NLW_inst_m_metocore_0_UNCONNECTED;
  wire [1:0]NLW_inst_m_metocore_1_UNCONNECTED;
  wire [67:0]NLW_inst_s_metocore_0_UNCONNECTED;
  wire [67:0]NLW_inst_s_metocore_1_UNCONNECTED;
  wire [0:0]NLW_inst_to_aie_UNCONNECTED;

  assign m_axis_tkeep[3] = \<const0> ;
  assign m_axis_tkeep[2] = \<const0> ;
  assign m_axis_tkeep[1] = \<const0> ;
  assign m_axis_tkeep[0] = \<const0> ;
  assign m_axis_tlast = \<const0> ;
  GND GND
       (.G(\<const0> ));
  (* C_AIE_MODE = "0" *) 
  (* C_BLI_BYPASS = "0" *) 
  (* C_CORE_NAME = "ai_pl_ch_0" *) 
  (* C_M_AUTO_PIPELINE = "0" *) 
  (* C_M_AXIS_FIFO_TYPE = "0" *) 
  (* C_M_AXIS_TDATA_WIDTH = "32" *) 
  (* C_M_MODE128 = "0" *) 
  (* C_PL_INTF_MODE = "1" *) 
  (* C_S_AUTO_PIPELINE = "0" *) 
  (* C_S_AXIS_FIFO_TYPE = "0" *) 
  (* C_S_AXIS_TDATA_WIDTH = "64" *) 
  (* C_S_MODE128 = "0" *) 
  (* C_TEST_MODE = "0" *) 
  (* DONT_TOUCH *) 
  (* KEEP_HIERARCHY = "soft" *) 
  (* is_du_within_envelope = "true" *) 
  ulp_inst_0_ai_pl_v1_0_6_ai_pl inst
       (.from_aie(1'b0),
        .m_axis_aclk(m_axis_aclk),
        .m_axis_aresetn(1'b0),
        .m_axis_tdata(m_axis_tdata),
        .m_axis_tkeep({inst_n_34,inst_n_35,inst_n_36,inst_n_37}),
        .m_axis_tlast(inst_n_38),
        .m_axis_tready(m_axis_tready),
        .m_axis_tvalid(m_axis_tvalid),
        .m_mefromcore_0({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .m_mefromcore_1({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .m_metocore_0(NLW_inst_m_metocore_0_UNCONNECTED[1:0]),
        .m_metocore_1(NLW_inst_m_metocore_1_UNCONNECTED[1:0]),
        .s_axis_aclk(1'b0),
        .s_axis_aresetn(1'b0),
        .s_axis_tdata({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axis_tkeep({1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .s_axis_tlast(1'b0),
        .s_axis_tready(NLW_inst_s_axis_tready_UNCONNECTED),
        .s_axis_tvalid(1'b0),
        .s_mefromcore_0(1'b0),
        .s_mefromcore_1(1'b0),
        .s_metocore_0(NLW_inst_s_metocore_0_UNCONNECTED[67:0]),
        .s_metocore_1(NLW_inst_s_metocore_1_UNCONNECTED[67:0]),
        .to_aie(NLW_inst_to_aie_UNCONNECTED[0]));
endmodule

(* CHECK_LICENSE_TYPE = "bd_9d54_noc_ai_mm_0_0,ai_noc_v1_0_0_ai_noc,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* ORIG_REF_NAME = "bd_9d54_noc_ai_mm_0_0" *) 
(* X_CORE_INFO = "ai_noc_v1_0_0_ai_noc,Vivado 2022.2.2" *) 
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
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI RREADY" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME S_AXI, SUPPORTS_NARROW_BURST 1, DATA_WIDTH 128, PROTOCOL AXI4, FREQ_HZ 1250000000, ID_WIDTH 16, ADDR_WIDTH 34, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 17, RUSER_WIDTH 17, BUSER_WIDTH 0, READ_WRITE_MODE READ_WRITE, HAS_BURST 1, HAS_LOCK 1, HAS_PROT 1, HAS_CACHE 1, HAS_QOS 1, HAS_REGION 1, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, NUM_READ_OUTSTANDING 1, NUM_WRITE_OUTSTANDING 1, MAX_BURST_LENGTH 256, PHASE 0.0, CLK_DOMAIN bd_9d54_noc_ai_mm_0_0_s_axi_aclk, NUM_READ_THREADS 1, NUM_WRITE_THREADS 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, INSERT_VIP 0" *) input s_axi_rready;

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

(* CHECK_LICENSE_TYPE = "bd_9d54_pl_ai_ch_0_0,ai_pl_v1_0_6_ai_pl,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* ORIG_REF_NAME = "bd_9d54_pl_ai_ch_0_0" *) 
(* X_CORE_INFO = "ai_pl_v1_0_6_ai_pl,Vivado 2022.2.2" *) 
module ulp_inst_0_bd_9d54_pl_ai_ch_0_0
   (to_aie,
    s_axis_tdata,
    s_axis_tlast,
    s_axis_tvalid,
    s_axis_tready,
    s_axis_aclk);
  output [0:0]to_aie;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 S_AXIS TDATA" *) input [31:0]s_axis_tdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 S_AXIS TLAST" *) input s_axis_tlast;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 S_AXIS TVALID" *) input s_axis_tvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 S_AXIS TREADY" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME S_AXIS, TDATA_NUM_BYTES 4, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 1, FREQ_HZ 299996999, PHASE 0.0, CLK_DOMAIN cd_aclk_kernel_00, LAYERED_METADATA undef, INSERT_VIP 0" *) output s_axis_tready;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 s_axis_CLK CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME s_axis_CLK, ASSOCIATED_BUSIF S_AXIS, FREQ_HZ 299996999, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN cd_aclk_kernel_00, INSERT_VIP 0" *) input s_axis_aclk;

  wire \<const0> ;
  wire inst_n_75;
  wire s_axis_aclk;
  wire [31:0]s_axis_tdata;
  wire s_axis_tready;
  wire s_axis_tvalid;
  wire NLW_inst_m_axis_tlast_UNCONNECTED;
  wire NLW_inst_m_axis_tvalid_UNCONNECTED;
  wire [63:0]NLW_inst_m_axis_tdata_UNCONNECTED;
  wire [7:0]NLW_inst_m_axis_tkeep_UNCONNECTED;
  wire [1:0]NLW_inst_m_metocore_0_UNCONNECTED;
  wire [1:0]NLW_inst_m_metocore_1_UNCONNECTED;
  wire [67:0]NLW_inst_s_metocore_0_UNCONNECTED;
  wire [67:0]NLW_inst_s_metocore_1_UNCONNECTED;

  assign to_aie[0] = \<const0> ;
  GND GND
       (.G(\<const0> ));
  (* C_AIE_MODE = "0" *) 
  (* C_BLI_BYPASS = "0" *) 
  (* C_CORE_NAME = "ai_pl_ch_0" *) 
  (* C_M_AUTO_PIPELINE = "0" *) 
  (* C_M_AXIS_FIFO_TYPE = "0" *) 
  (* C_M_AXIS_TDATA_WIDTH = "64" *) 
  (* C_M_MODE128 = "0" *) 
  (* C_PL_INTF_MODE = "0" *) 
  (* C_S_AUTO_PIPELINE = "0" *) 
  (* C_S_AXIS_FIFO_TYPE = "0" *) 
  (* C_S_AXIS_TDATA_WIDTH = "32" *) 
  (* C_S_MODE128 = "0" *) 
  (* C_TEST_MODE = "0" *) 
  (* DONT_TOUCH *) 
  (* KEEP_HIERARCHY = "soft" *) 
  (* is_du_within_envelope = "true" *) 
  ulp_inst_0_ai_pl_v1_0_6_ai_pl__parameterized0 inst
       (.from_aie(1'b0),
        .m_axis_aclk(1'b0),
        .m_axis_aresetn(1'b0),
        .m_axis_tdata(NLW_inst_m_axis_tdata_UNCONNECTED[63:0]),
        .m_axis_tkeep(NLW_inst_m_axis_tkeep_UNCONNECTED[7:0]),
        .m_axis_tlast(NLW_inst_m_axis_tlast_UNCONNECTED),
        .m_axis_tready(1'b0),
        .m_axis_tvalid(NLW_inst_m_axis_tvalid_UNCONNECTED),
        .m_mefromcore_0({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .m_mefromcore_1({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .m_metocore_0(NLW_inst_m_metocore_0_UNCONNECTED[1:0]),
        .m_metocore_1(NLW_inst_m_metocore_1_UNCONNECTED[1:0]),
        .s_axis_aclk(s_axis_aclk),
        .s_axis_aresetn(1'b0),
        .s_axis_tdata(s_axis_tdata),
        .s_axis_tkeep({1'b1,1'b1,1'b1,1'b1}),
        .s_axis_tlast(1'b0),
        .s_axis_tready(s_axis_tready),
        .s_axis_tvalid(s_axis_tvalid),
        .s_mefromcore_0(1'b0),
        .s_mefromcore_1(1'b0),
        .s_metocore_0(NLW_inst_s_metocore_0_UNCONNECTED[67:0]),
        .s_metocore_1(NLW_inst_s_metocore_1_UNCONNECTED[67:0]),
        .to_aie(inst_n_75));
endmodule

(* X_CORE_INFO = "axis_dwidth_converter_v1_1_26_axis_dwidth_converter,Vivado 2022.2.2" *) 
module ulp_inst_0_dwc_setup_aie_0_s_0
   (aclk,
    aresetn,
    s_axis_tvalid,
    s_axis_tready,
    s_axis_tdata,
    m_axis_tvalid,
    m_axis_tready,
    m_axis_tdata);
  input aclk;
  input aresetn;
  input s_axis_tvalid;
  output s_axis_tready;
  input [127:0]s_axis_tdata;
  output m_axis_tvalid;
  input m_axis_tready;
  output [31:0]m_axis_tdata;


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

(* ORIG_REF_NAME = "kernel_interrupt_imp_1VOEG4V" *) 
module ulp_inst_0_kernel_interrupt_imp_1VOEG4V
   (blp_m_irq_kernel_00,
    dout);
  output [1:0]blp_m_irq_kernel_00;
  input [1:0]dout;

  wire [1:0]blp_m_irq_kernel_00;
  wire [1:0]dout;
  wire [127:2]NLW_xlconcat_0_dout_UNCONNECTED;

  (* CHECK_LICENSE_TYPE = "ulp_inst_0_xlconcat_0_0,xlconcat_v2_1_4_xlconcat,{}" *) 
  (* DowngradeIPIdentifiedWarnings = "yes" *) 
  (* X_CORE_INFO = "xlconcat_v2_1_4_xlconcat,Vivado 2022.2" *) 
  ulp_inst_0_xlconcat_0_0 xlconcat_0
       (.In0({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,dout}),
        .In1({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .dout({NLW_xlconcat_0_dout_UNCONNECTED[127:2],blp_m_irq_kernel_00}));
endmodule

(* CHECK_LICENSE_TYPE = "ulp_inst_0_kernel_interrupt_xlconcat_0_In0_1_interrupt_concat_0,xlconcat_v2_1_4_xlconcat,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* X_CORE_INFO = "xlconcat_v2_1_4_xlconcat,Vivado 2022.2.2" *) 
module ulp_inst_0_kernel_interrupt_xlconcat_0_In0_1_interrupt_concat_0
   (In0,
    In1,
    In2,
    In3,
    In4,
    In5,
    In6,
    In7,
    In8,
    In9,
    In10,
    In11,
    In12,
    In13,
    In14,
    In15,
    In16,
    In17,
    In18,
    In19,
    In20,
    In21,
    In22,
    In23,
    In24,
    In25,
    In26,
    In27,
    In28,
    In29,
    In30,
    In31,
    dout);
  input [0:0]In0;
  input [0:0]In1;
  input [0:0]In2;
  input [0:0]In3;
  input [0:0]In4;
  input [0:0]In5;
  input [0:0]In6;
  input [0:0]In7;
  input [0:0]In8;
  input [0:0]In9;
  input [0:0]In10;
  input [0:0]In11;
  input [0:0]In12;
  input [0:0]In13;
  input [0:0]In14;
  input [0:0]In15;
  input [0:0]In16;
  input [0:0]In17;
  input [0:0]In18;
  input [0:0]In19;
  input [0:0]In20;
  input [0:0]In21;
  input [0:0]In22;
  input [0:0]In23;
  input [0:0]In24;
  input [0:0]In25;
  input [0:0]In26;
  input [0:0]In27;
  input [0:0]In28;
  input [0:0]In29;
  input [0:0]In30;
  input [0:0]In31;
  output [31:0]dout;

  wire \<const0> ;
  wire [0:0]In0;
  wire [0:0]In1;

  assign dout[31] = \<const0> ;
  assign dout[30] = \<const0> ;
  assign dout[29] = \<const0> ;
  assign dout[28] = \<const0> ;
  assign dout[27] = \<const0> ;
  assign dout[26] = \<const0> ;
  assign dout[25] = \<const0> ;
  assign dout[24] = \<const0> ;
  assign dout[23] = \<const0> ;
  assign dout[22] = \<const0> ;
  assign dout[21] = \<const0> ;
  assign dout[20] = \<const0> ;
  assign dout[19] = \<const0> ;
  assign dout[18] = \<const0> ;
  assign dout[17] = \<const0> ;
  assign dout[16] = \<const0> ;
  assign dout[15] = \<const0> ;
  assign dout[14] = \<const0> ;
  assign dout[13] = \<const0> ;
  assign dout[12] = \<const0> ;
  assign dout[11] = \<const0> ;
  assign dout[10] = \<const0> ;
  assign dout[9] = \<const0> ;
  assign dout[8] = \<const0> ;
  assign dout[7] = \<const0> ;
  assign dout[6] = \<const0> ;
  assign dout[5] = \<const0> ;
  assign dout[4] = \<const0> ;
  assign dout[3] = \<const0> ;
  assign dout[2] = \<const0> ;
  assign dout[1] = In1;
  assign dout[0] = In0;
  GND GND
       (.G(\<const0> ));
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
    interconnect_aresetn,
    resetn_pcie_axi,
    resetn_pl_axi,
    peripheral_aresetn,
    blp_s_aclk_kernel_00,
    blp_s_aclk_kernel_01,
    blp_s_aclk_pcie_00,
    blp_s_aresetn_pcie_reset_00,
    blp_s_aclk_ctrl_00,
    blp_s_aresetn_pr_reset_00);
  output [0:0]resetn_kernel0_ic;
  output [0:0]interconnect_aresetn;
  output [0:0]resetn_pcie_axi;
  output [0:0]resetn_pl_axi;
  output [0:0]peripheral_aresetn;
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
  wire [0:0]interconnect_aresetn;
  wire [0:0]peripheral_aresetn;
  wire pipereg_kernel1_n_0;
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
  wire [0:0]NLW_reset_sync_kernel0_peripheral_reset_UNCONNECTED;
  wire NLW_reset_sync_kernel1_mb_reset_UNCONNECTED;
  wire [0:0]NLW_reset_sync_kernel1_bus_struct_reset_UNCONNECTED;
  wire [0:0]NLW_reset_sync_kernel1_peripheral_aresetn_UNCONNECTED;
  wire [0:0]NLW_reset_sync_kernel1_peripheral_reset_UNCONNECTED;

  (* X_CORE_INFO = "util_ff_v1_0_1_util_ff,Vivado 2022.2" *) 
  ulp_inst_0_pipereg_kernel0_0 pipereg_kernel0
       (.D(interconnect_aresetn),
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
        .interconnect_aresetn(interconnect_aresetn),
        .mb_debug_sys_rst(1'b0),
        .mb_reset(NLW_reset_sync_kernel0_mb_reset_UNCONNECTED),
        .peripheral_aresetn(peripheral_aresetn),
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

(* X_CORE_INFO = "setup_aie,Vivado 2022.2.2" *) 
module ulp_inst_0_setup_aie_0_0
   (stall_start_ext,
    stall_done_ext,
    stall_start_str,
    stall_done_str,
    stall_start_int,
    stall_done_int,
    s_axi_control_AWADDR,
    s_axi_control_AWVALID,
    s_axi_control_AWREADY,
    s_axi_control_WDATA,
    s_axi_control_WSTRB,
    s_axi_control_WVALID,
    s_axi_control_WREADY,
    s_axi_control_BRESP,
    s_axi_control_BVALID,
    s_axi_control_BREADY,
    s_axi_control_ARADDR,
    s_axi_control_ARVALID,
    s_axi_control_ARREADY,
    s_axi_control_RDATA,
    s_axi_control_RRESP,
    s_axi_control_RVALID,
    s_axi_control_RREADY,
    ap_clk,
    ap_rst_n,
    event_done,
    interrupt,
    event_start,
    m_axi_gmem0_AWID,
    m_axi_gmem0_AWADDR,
    m_axi_gmem0_AWLEN,
    m_axi_gmem0_AWSIZE,
    m_axi_gmem0_AWBURST,
    m_axi_gmem0_AWLOCK,
    m_axi_gmem0_AWREGION,
    m_axi_gmem0_AWCACHE,
    m_axi_gmem0_AWPROT,
    m_axi_gmem0_AWQOS,
    m_axi_gmem0_AWVALID,
    m_axi_gmem0_AWREADY,
    m_axi_gmem0_WID,
    m_axi_gmem0_WDATA,
    m_axi_gmem0_WSTRB,
    m_axi_gmem0_WLAST,
    m_axi_gmem0_WVALID,
    m_axi_gmem0_WREADY,
    m_axi_gmem0_BID,
    m_axi_gmem0_BRESP,
    m_axi_gmem0_BVALID,
    m_axi_gmem0_BREADY,
    m_axi_gmem0_ARID,
    m_axi_gmem0_ARADDR,
    m_axi_gmem0_ARLEN,
    m_axi_gmem0_ARSIZE,
    m_axi_gmem0_ARBURST,
    m_axi_gmem0_ARLOCK,
    m_axi_gmem0_ARREGION,
    m_axi_gmem0_ARCACHE,
    m_axi_gmem0_ARPROT,
    m_axi_gmem0_ARQOS,
    m_axi_gmem0_ARVALID,
    m_axi_gmem0_ARREADY,
    m_axi_gmem0_RID,
    m_axi_gmem0_RDATA,
    m_axi_gmem0_RRESP,
    m_axi_gmem0_RLAST,
    m_axi_gmem0_RVALID,
    m_axi_gmem0_RREADY,
    s_TVALID,
    s_TREADY,
    s_TDATA);
  output stall_start_ext;
  output stall_done_ext;
  output stall_start_str;
  output stall_done_str;
  output stall_start_int;
  output stall_done_int;
  input [5:0]s_axi_control_AWADDR;
  input s_axi_control_AWVALID;
  output s_axi_control_AWREADY;
  input [31:0]s_axi_control_WDATA;
  input [3:0]s_axi_control_WSTRB;
  input s_axi_control_WVALID;
  output s_axi_control_WREADY;
  output [1:0]s_axi_control_BRESP;
  output s_axi_control_BVALID;
  input s_axi_control_BREADY;
  input [5:0]s_axi_control_ARADDR;
  input s_axi_control_ARVALID;
  output s_axi_control_ARREADY;
  output [31:0]s_axi_control_RDATA;
  output [1:0]s_axi_control_RRESP;
  output s_axi_control_RVALID;
  input s_axi_control_RREADY;
  input ap_clk;
  input ap_rst_n;
  output event_done;
  output interrupt;
  output event_start;
  output [0:0]m_axi_gmem0_AWID;
  output [63:0]m_axi_gmem0_AWADDR;
  output [7:0]m_axi_gmem0_AWLEN;
  output [2:0]m_axi_gmem0_AWSIZE;
  output [1:0]m_axi_gmem0_AWBURST;
  output [1:0]m_axi_gmem0_AWLOCK;
  output [3:0]m_axi_gmem0_AWREGION;
  output [3:0]m_axi_gmem0_AWCACHE;
  output [2:0]m_axi_gmem0_AWPROT;
  output [3:0]m_axi_gmem0_AWQOS;
  output m_axi_gmem0_AWVALID;
  input m_axi_gmem0_AWREADY;
  output [0:0]m_axi_gmem0_WID;
  output [127:0]m_axi_gmem0_WDATA;
  output [15:0]m_axi_gmem0_WSTRB;
  output m_axi_gmem0_WLAST;
  output m_axi_gmem0_WVALID;
  input m_axi_gmem0_WREADY;
  input [0:0]m_axi_gmem0_BID;
  input [1:0]m_axi_gmem0_BRESP;
  input m_axi_gmem0_BVALID;
  output m_axi_gmem0_BREADY;
  output [0:0]m_axi_gmem0_ARID;
  output [63:0]m_axi_gmem0_ARADDR;
  output [7:0]m_axi_gmem0_ARLEN;
  output [2:0]m_axi_gmem0_ARSIZE;
  output [1:0]m_axi_gmem0_ARBURST;
  output [1:0]m_axi_gmem0_ARLOCK;
  output [3:0]m_axi_gmem0_ARREGION;
  output [3:0]m_axi_gmem0_ARCACHE;
  output [2:0]m_axi_gmem0_ARPROT;
  output [3:0]m_axi_gmem0_ARQOS;
  output m_axi_gmem0_ARVALID;
  input m_axi_gmem0_ARREADY;
  input [0:0]m_axi_gmem0_RID;
  input [127:0]m_axi_gmem0_RDATA;
  input [1:0]m_axi_gmem0_RRESP;
  input m_axi_gmem0_RLAST;
  input m_axi_gmem0_RVALID;
  output m_axi_gmem0_RREADY;
  output s_TVALID;
  input s_TREADY;
  output [127:0]s_TDATA;


endmodule

(* X_CORE_INFO = "sink_from_aie,Vivado 2022.2.2" *) 
module ulp_inst_0_sink_from_aie_0_0
   (stall_start_ext,
    stall_done_ext,
    stall_start_str,
    stall_done_str,
    stall_start_int,
    stall_done_int,
    s_axi_control_AWADDR,
    s_axi_control_AWVALID,
    s_axi_control_AWREADY,
    s_axi_control_WDATA,
    s_axi_control_WSTRB,
    s_axi_control_WVALID,
    s_axi_control_WREADY,
    s_axi_control_BRESP,
    s_axi_control_BVALID,
    s_axi_control_BREADY,
    s_axi_control_ARADDR,
    s_axi_control_ARVALID,
    s_axi_control_ARREADY,
    s_axi_control_RDATA,
    s_axi_control_RRESP,
    s_axi_control_RVALID,
    s_axi_control_RREADY,
    ap_clk,
    ap_rst_n,
    event_done,
    interrupt,
    event_start,
    m_axi_gmem1_AWID,
    m_axi_gmem1_AWADDR,
    m_axi_gmem1_AWLEN,
    m_axi_gmem1_AWSIZE,
    m_axi_gmem1_AWBURST,
    m_axi_gmem1_AWLOCK,
    m_axi_gmem1_AWREGION,
    m_axi_gmem1_AWCACHE,
    m_axi_gmem1_AWPROT,
    m_axi_gmem1_AWQOS,
    m_axi_gmem1_AWVALID,
    m_axi_gmem1_AWREADY,
    m_axi_gmem1_WID,
    m_axi_gmem1_WDATA,
    m_axi_gmem1_WSTRB,
    m_axi_gmem1_WLAST,
    m_axi_gmem1_WVALID,
    m_axi_gmem1_WREADY,
    m_axi_gmem1_BID,
    m_axi_gmem1_BRESP,
    m_axi_gmem1_BVALID,
    m_axi_gmem1_BREADY,
    m_axi_gmem1_ARID,
    m_axi_gmem1_ARADDR,
    m_axi_gmem1_ARLEN,
    m_axi_gmem1_ARSIZE,
    m_axi_gmem1_ARBURST,
    m_axi_gmem1_ARLOCK,
    m_axi_gmem1_ARREGION,
    m_axi_gmem1_ARCACHE,
    m_axi_gmem1_ARPROT,
    m_axi_gmem1_ARQOS,
    m_axi_gmem1_ARVALID,
    m_axi_gmem1_ARREADY,
    m_axi_gmem1_RID,
    m_axi_gmem1_RDATA,
    m_axi_gmem1_RRESP,
    m_axi_gmem1_RLAST,
    m_axi_gmem1_RVALID,
    m_axi_gmem1_RREADY,
    input_stream_TVALID,
    input_stream_TREADY,
    input_stream_TDATA);
  output stall_start_ext;
  output stall_done_ext;
  output stall_start_str;
  output stall_done_str;
  output stall_start_int;
  output stall_done_int;
  input [5:0]s_axi_control_AWADDR;
  input s_axi_control_AWVALID;
  output s_axi_control_AWREADY;
  input [31:0]s_axi_control_WDATA;
  input [3:0]s_axi_control_WSTRB;
  input s_axi_control_WVALID;
  output s_axi_control_WREADY;
  output [1:0]s_axi_control_BRESP;
  output s_axi_control_BVALID;
  input s_axi_control_BREADY;
  input [5:0]s_axi_control_ARADDR;
  input s_axi_control_ARVALID;
  output s_axi_control_ARREADY;
  output [31:0]s_axi_control_RDATA;
  output [1:0]s_axi_control_RRESP;
  output s_axi_control_RVALID;
  input s_axi_control_RREADY;
  input ap_clk;
  input ap_rst_n;
  output event_done;
  output interrupt;
  output event_start;
  output [0:0]m_axi_gmem1_AWID;
  output [63:0]m_axi_gmem1_AWADDR;
  output [7:0]m_axi_gmem1_AWLEN;
  output [2:0]m_axi_gmem1_AWSIZE;
  output [1:0]m_axi_gmem1_AWBURST;
  output [1:0]m_axi_gmem1_AWLOCK;
  output [3:0]m_axi_gmem1_AWREGION;
  output [3:0]m_axi_gmem1_AWCACHE;
  output [2:0]m_axi_gmem1_AWPROT;
  output [3:0]m_axi_gmem1_AWQOS;
  output m_axi_gmem1_AWVALID;
  input m_axi_gmem1_AWREADY;
  output [0:0]m_axi_gmem1_WID;
  output [31:0]m_axi_gmem1_WDATA;
  output [3:0]m_axi_gmem1_WSTRB;
  output m_axi_gmem1_WLAST;
  output m_axi_gmem1_WVALID;
  input m_axi_gmem1_WREADY;
  input [0:0]m_axi_gmem1_BID;
  input [1:0]m_axi_gmem1_BRESP;
  input m_axi_gmem1_BVALID;
  output m_axi_gmem1_BREADY;
  output [0:0]m_axi_gmem1_ARID;
  output [63:0]m_axi_gmem1_ARADDR;
  output [7:0]m_axi_gmem1_ARLEN;
  output [2:0]m_axi_gmem1_ARSIZE;
  output [1:0]m_axi_gmem1_ARBURST;
  output [1:0]m_axi_gmem1_ARLOCK;
  output [3:0]m_axi_gmem1_ARREGION;
  output [3:0]m_axi_gmem1_ARCACHE;
  output [2:0]m_axi_gmem1_ARPROT;
  output [3:0]m_axi_gmem1_ARQOS;
  output m_axi_gmem1_ARVALID;
  input m_axi_gmem1_ARREADY;
  input [0:0]m_axi_gmem1_RID;
  input [31:0]m_axi_gmem1_RDATA;
  input [1:0]m_axi_gmem1_RRESP;
  input m_axi_gmem1_RLAST;
  input m_axi_gmem1_RVALID;
  output m_axi_gmem1_RREADY;
  input input_stream_TVALID;
  output input_stream_TREADY;
  input [31:0]input_stream_TDATA;


endmodule

(* CHECK_LICENSE_TYPE = "ulp_inst_0_xlconcat_0_0,xlconcat_v2_1_4_xlconcat,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* X_CORE_INFO = "xlconcat_v2_1_4_xlconcat,Vivado 2022.2" *) 
module ulp_inst_0_xlconcat_0_0
   (In0,
    In1,
    dout);
  input [31:0]In0;
  input [95:0]In1;
  output [127:0]dout;

  wire \<const0> ;
  wire [31:0]In0;

  assign dout[127] = \<const0> ;
  assign dout[126] = \<const0> ;
  assign dout[125] = \<const0> ;
  assign dout[124] = \<const0> ;
  assign dout[123] = \<const0> ;
  assign dout[122] = \<const0> ;
  assign dout[121] = \<const0> ;
  assign dout[120] = \<const0> ;
  assign dout[119] = \<const0> ;
  assign dout[118] = \<const0> ;
  assign dout[117] = \<const0> ;
  assign dout[116] = \<const0> ;
  assign dout[115] = \<const0> ;
  assign dout[114] = \<const0> ;
  assign dout[113] = \<const0> ;
  assign dout[112] = \<const0> ;
  assign dout[111] = \<const0> ;
  assign dout[110] = \<const0> ;
  assign dout[109] = \<const0> ;
  assign dout[108] = \<const0> ;
  assign dout[107] = \<const0> ;
  assign dout[106] = \<const0> ;
  assign dout[105] = \<const0> ;
  assign dout[104] = \<const0> ;
  assign dout[103] = \<const0> ;
  assign dout[102] = \<const0> ;
  assign dout[101] = \<const0> ;
  assign dout[100] = \<const0> ;
  assign dout[99] = \<const0> ;
  assign dout[98] = \<const0> ;
  assign dout[97] = \<const0> ;
  assign dout[96] = \<const0> ;
  assign dout[95] = \<const0> ;
  assign dout[94] = \<const0> ;
  assign dout[93] = \<const0> ;
  assign dout[92] = \<const0> ;
  assign dout[91] = \<const0> ;
  assign dout[90] = \<const0> ;
  assign dout[89] = \<const0> ;
  assign dout[88] = \<const0> ;
  assign dout[87] = \<const0> ;
  assign dout[86] = \<const0> ;
  assign dout[85] = \<const0> ;
  assign dout[84] = \<const0> ;
  assign dout[83] = \<const0> ;
  assign dout[82] = \<const0> ;
  assign dout[81] = \<const0> ;
  assign dout[80] = \<const0> ;
  assign dout[79] = \<const0> ;
  assign dout[78] = \<const0> ;
  assign dout[77] = \<const0> ;
  assign dout[76] = \<const0> ;
  assign dout[75] = \<const0> ;
  assign dout[74] = \<const0> ;
  assign dout[73] = \<const0> ;
  assign dout[72] = \<const0> ;
  assign dout[71] = \<const0> ;
  assign dout[70] = \<const0> ;
  assign dout[69] = \<const0> ;
  assign dout[68] = \<const0> ;
  assign dout[67] = \<const0> ;
  assign dout[66] = \<const0> ;
  assign dout[65] = \<const0> ;
  assign dout[64] = \<const0> ;
  assign dout[63] = \<const0> ;
  assign dout[62] = \<const0> ;
  assign dout[61] = \<const0> ;
  assign dout[60] = \<const0> ;
  assign dout[59] = \<const0> ;
  assign dout[58] = \<const0> ;
  assign dout[57] = \<const0> ;
  assign dout[56] = \<const0> ;
  assign dout[55] = \<const0> ;
  assign dout[54] = \<const0> ;
  assign dout[53] = \<const0> ;
  assign dout[52] = \<const0> ;
  assign dout[51] = \<const0> ;
  assign dout[50] = \<const0> ;
  assign dout[49] = \<const0> ;
  assign dout[48] = \<const0> ;
  assign dout[47] = \<const0> ;
  assign dout[46] = \<const0> ;
  assign dout[45] = \<const0> ;
  assign dout[44] = \<const0> ;
  assign dout[43] = \<const0> ;
  assign dout[42] = \<const0> ;
  assign dout[41] = \<const0> ;
  assign dout[40] = \<const0> ;
  assign dout[39] = \<const0> ;
  assign dout[38] = \<const0> ;
  assign dout[37] = \<const0> ;
  assign dout[36] = \<const0> ;
  assign dout[35] = \<const0> ;
  assign dout[34] = \<const0> ;
  assign dout[33] = \<const0> ;
  assign dout[32] = \<const0> ;
  assign dout[31] = \<const0> ;
  assign dout[30] = \<const0> ;
  assign dout[29] = \<const0> ;
  assign dout[28] = \<const0> ;
  assign dout[27] = \<const0> ;
  assign dout[26] = \<const0> ;
  assign dout[25] = \<const0> ;
  assign dout[24] = \<const0> ;
  assign dout[23] = \<const0> ;
  assign dout[22] = \<const0> ;
  assign dout[21] = \<const0> ;
  assign dout[20] = \<const0> ;
  assign dout[19] = \<const0> ;
  assign dout[18] = \<const0> ;
  assign dout[17] = \<const0> ;
  assign dout[16] = \<const0> ;
  assign dout[15] = \<const0> ;
  assign dout[14] = \<const0> ;
  assign dout[13] = \<const0> ;
  assign dout[12] = \<const0> ;
  assign dout[11] = \<const0> ;
  assign dout[10] = \<const0> ;
  assign dout[9] = \<const0> ;
  assign dout[8] = \<const0> ;
  assign dout[7] = \<const0> ;
  assign dout[6] = \<const0> ;
  assign dout[5] = \<const0> ;
  assign dout[4] = \<const0> ;
  assign dout[3] = \<const0> ;
  assign dout[2] = \<const0> ;
  assign dout[1:0] = In0[1:0];
  GND GND
       (.G(\<const0> ));
endmodule
`pragma protect begin_protected
`pragma protect version = 1
`pragma protect encrypt_agent = "XILINX"
`pragma protect encrypt_agent_info = "Xilinx Encryption Tool 2022.2.2"
`pragma protect key_keyowner="Synopsys", key_keyname="SNPS-VCS-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
XqFXVmH1dkH9T+WciY7/8f41uI7gEk6qzSpx0+MRuOmRrUwktY2+7RUz1OxQMAuwv+HflNk6ZAKU
kjvh3fC8PsiJNqG7hOVEGTMHMX64RbBpOmypD54ayjdIlEjHUugXd8khtA6N/ufC0+JwfivTtR5E
SpYPPn1C4iFkopUVNig=

`pragma protect key_keyowner="Aldec", key_keyname="ALDEC15_001", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
Q5KTwwdeHF1ALfcZDy4o495PY7HKGrhQlxi84NFMoGw4m/bf+h9xNmqPtyuCOiUFBn8B9kTaGv91
VIThpzPoOpmhCeSUeOStzb5QhXQSjvMx2rH75e9nVjbqQQ2TkTCJ6DgpG2rO0VCitGtsc9n4LWyC
MISJMjZfuquR6iDHtKkKB5+tQOlUPWSR27NT09OhDAIIAFg2W9zX/OHZTXDI9ieYzjKcG3Mi0jk2
7QrzvZz4hsD4sSCKfVsBEx3DiLgEdVqLX7b4KQZl4MuqUf4P56nvdbIAFpBsDxDlRkYbXlY+0ARw
m+5Jca1QYe24WQNoUmuD/sEL/WW8PiPch7qCNA==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VELOCE-RSA", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
uyV3BCRtI8MgQFU+bGHu7Q4xLdA4yEwgOxEj/8mFsfXzUOnYgoJCT+v2fhV0QaxVk+lPoXQy3wm8
jpXsicmtsxrTmkun/O9tXRDqBQ5RDm0H+X1xPs2GRavhBtUgnZ32KhRVbbgta06tqKiaapz/nT1C
diYAaRT+CV09yDlwgHw=

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VERIF-SIM-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
IDVehOpXkkWYf2un9eWI8JJHXcQaLU71BQpPSr3ADvc6Dxpf404IOdxZvZ3Bt1p250YdWL4thXzT
iIggT73zu1UmgFnb9iClEmXaZIx7Z3EhAxukQyVjj6Z49NRASAo6bqeaAMigawDbL4BWH4mrAKSD
nrnIXqtmuTOa+XqA64Wqk27J3++QXxzpa6t135DjESORAhcymZP693+W/qg8SacXmxB8d1pPCz4v
5GHB5GC73z5A5NS2q/0IoJnU4iN/Vb3HOHLqhiu7TYqeisd9ilke/i9dkYuKhE5luUa98QlsQhwZ
M+5n1uJd+bFtKxD4PE99RwRFXqRudg+rUPWudA==

`pragma protect key_keyowner="Real Intent", key_keyname="RI-RSA-KEY-1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
q8SKnkNy8+lFlHEGFWfcD0uOX7fjRc7Zcav57hokCTobV9zWIqAuIqDRt5+4AQUgbeYzdLj78jGm
1+dNdcDm6N50romeL2rGvsYUP6KOMCOWOd3aNLyvNZtmucsORTej9awlMUhmwW8o1vlAruykTFFh
cO2rXj4W2Nxu8XjenCrqoicOjUCT7ARdm3KG5V541xyPZPhr4mSHsQoa5TSYfSsrlopm3ViLX0WK
M3WAezdanfvOExkAOJFXKWs1s7blRoL7D1C9A54jsKe7NOryOoAqh3dZZLNIy1gxlUwuvnVys9pA
zcGxMbM1JdPTSuR4jBTorTLXYYuaSc0MQmWRXg==

`pragma protect key_keyowner="Metrics Technologies Inc.", key_keyname="DSim", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
jGLyz7DJ9uaR8bobo3VtA8i0fpLjQq2GCm/Ka1xFF+Eo4/8krPNx+Cj1Pw9+DsHA1tdw5SaNkEnq
ARS0yZON2YQ9rE9YZIh2B++faOWqWm1iVee3umvcFr/OSvD13CRUZimUPcCJbYuUu+ueFnIxnRkN
DyIWKNlPtHtVJI4iw73/85yLzpz2VZplK366Z3dn6AGCmV+HHq8GCnl5HaY6SZaNRNinSyrhkIJJ
EhYFE+hRyAIOlBDz4Evzi59wjvRLgPSIM1toGAJ9g1fc3OAxlVphURO0ZnCFdmPKkQORy+HRZ8A4
Y5i0fLcfr4cA1A6PQakZNl3OmCQ3zgQEShfGHg==

`pragma protect key_keyowner="Xilinx", key_keyname="xilinxt_2021_07", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
k1c90mwg18D8JC56E5zuM2VIWySu/5Ll2DyzCxvPLs0vz3LyoB6WsLnUXpXWRHZstJVWDqTCwEk3
LybMncwsvJTSmLjseKnCxqNT8lk3wQ4GH/iyNLXZ/RVFawBEluwhY0Py/jfcQdJpgHA0odpkULw0
lsAmmIuIvsx8ICdzhkrBSGq6aptoclpYcHeTxkyADyaJW7TPM6RTdxDsMhBM4Jq4/da+VawZhfkp
olEYS4hLEofQ1NPhZtuJ0NIgnsBpcyjwo/CpCEFbf0iSzV7hPinUdEK48mpmebPVDYD2ITTNwj8i
tkRd0+6Isivzks6/0Mv7+2dPXfOfNVrg0KlFig==

`pragma protect key_keyowner="Atrenta", key_keyname="ATR-SG-RSA-1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=384)
`pragma protect key_block
og1F37jAcAimUq18gPKGxuz79Vkxbdx+jvRYvFsLivrRb+81697PE8rjRBakGo84OmI2c5fL8eEf
aKk3j9137sVxdKnAHYOM6gjjdMcUxeBFDR4M9nItDur8fb+WtBIb48vxF0HbX+LLgGJNwr6gjiuv
hFbhR1b7BLGmeOGVuSzboRiucW+HNu4pr6qbEeiUPWpZVRMEFTUDCqewU3hIqDIzkqshL0xGPwGH
cEnT2/qbIKfe01z/yRPOK/Yh8pRPxvTDYfK0x6YCEHOu/dVbb6/xARuVNwn+UUb7ixz0+wO0pWwS
uHmbiK+DG2oh9iOWy8+l+ooM1Nxx44RKAtBtWIgcQAhEviS2QkKrLbYww+XmEwATJiptojLlC6hu
drpBCwvxRxi8t0UCZ4GDXLxQ+grL3ZL09BGEKEn46fDTNgLfk1ShuISywtKqaoCYj8bpDM8d2O8A
+OC8vZrBTaTXpoSRzplIv6Pkzth1TiWJd8/gpjeO+Zu/ziyCU/RK5zIh

`pragma protect key_keyowner="Cadence Design Systems.", key_keyname="CDS_RSA_KEY_VER_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
krWfEdB/YgxYO4gYo/LT6LGavD8+LRRfJHodRlT0WOgObOBT/IvddjplqTT/meHFrK0dRVxk9OvS
Me6+PDnjHTHgEa969A45PMaCJ8GGf3EozReEZ0z6QJX2WNUGL6kMSeyVcr2Kl0+HWLHW/w55ej9v
+PyKBBH02Nz6HSSYUsRIo66kOQuqhV0kZUIqIPhyHoLfhlfmvEKztVMr96GyViNw2CSjT0mH5mju
eue4oqhOVjPB+OcqeZaLi30UbVM6PSSg4mPCNSjmBDmiJx0ca4cNcCexwULJus1Oe+O3xt9gkykc
srzX6a7W6qnRPoH6EudeWHk63shmVqjq35HQ0A==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 47728)
`pragma protect data_block
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
vXqGUgs0tJ35f9W1gZPD6/po9A==
`pragma protect end_protected
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
