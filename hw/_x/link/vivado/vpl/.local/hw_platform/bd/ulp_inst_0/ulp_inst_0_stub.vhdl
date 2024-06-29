-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2022.2 (lin64) Build 3671981 Fri Oct 14 04:59:54 MDT 2022
-- Date        : Mon Dec  5 00:32:05 2022
-- Host        : xsjdcslab02.xilinx.com running 64-bit CentOS Linux release 8.1.1911 (Core)
-- Command     : write_vhdl -force -mode synth_stub
--               /proj/ipeng-nobkup/ccase/platforms/p4/Platforms_ccase_vck5000_dev0/Platforms/sources/vck5000/chassis/gen4x8_qdma/2/build_1205a_dbg_hub_fw_flop/hardware/xilinx_vck5000_gen4x8_qdma_base_2/xilinx_vck5000_gen4x8_qdma_base_2.gen/sources_1/bd/top/bd/ulp_inst_0/ulp_inst_0_stub.vhdl
-- Design      : ulp_inst_0
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xcvc1902-vsvd1760-2MP-e-S
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity ulp_inst_0 is
  Port ( 
    BLP_M_M00_INI_0_internoc : out STD_LOGIC_VECTOR ( 0 to 0 );
    BLP_M_M01_INI_0_internoc : out STD_LOGIC_VECTOR ( 0 to 0 );
    BLP_M_M02_INI_0_internoc : out STD_LOGIC_VECTOR ( 0 to 0 );
    BLP_S_AXI_CTRL_USER_00_araddr : in STD_LOGIC_VECTOR ( 63 downto 0 );
    BLP_S_AXI_CTRL_USER_00_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    BLP_S_AXI_CTRL_USER_00_arready : out STD_LOGIC;
    BLP_S_AXI_CTRL_USER_00_arvalid : in STD_LOGIC;
    BLP_S_AXI_CTRL_USER_00_awaddr : in STD_LOGIC_VECTOR ( 63 downto 0 );
    BLP_S_AXI_CTRL_USER_00_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    BLP_S_AXI_CTRL_USER_00_awready : out STD_LOGIC;
    BLP_S_AXI_CTRL_USER_00_awvalid : in STD_LOGIC;
    BLP_S_AXI_CTRL_USER_00_bready : in STD_LOGIC;
    BLP_S_AXI_CTRL_USER_00_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    BLP_S_AXI_CTRL_USER_00_bvalid : out STD_LOGIC;
    BLP_S_AXI_CTRL_USER_00_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    BLP_S_AXI_CTRL_USER_00_rready : in STD_LOGIC;
    BLP_S_AXI_CTRL_USER_00_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    BLP_S_AXI_CTRL_USER_00_rvalid : out STD_LOGIC;
    BLP_S_AXI_CTRL_USER_00_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    BLP_S_AXI_CTRL_USER_00_wready : out STD_LOGIC;
    BLP_S_AXI_CTRL_USER_00_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    BLP_S_AXI_CTRL_USER_00_wvalid : in STD_LOGIC;
    BLP_S_INI_AIE_00_internoc : in STD_LOGIC_VECTOR ( 0 to 0 );
    BLP_S_INI_DBG_00_internoc : in STD_LOGIC_VECTOR ( 0 to 0 );
    BLP_S_INI_PLRAM_00_internoc : in STD_LOGIC_VECTOR ( 0 to 0 );
    blp_m_dbg_hub_fw_00 : out STD_LOGIC_VECTOR ( 0 to 0 );
    blp_m_ext_tog_ctrl_kernel_00_enable : out STD_LOGIC_VECTOR ( 0 to 0 );
    blp_m_ext_tog_ctrl_kernel_00_in : out STD_LOGIC_VECTOR ( 0 to 0 );
    blp_m_ext_tog_ctrl_kernel_01_enable : out STD_LOGIC_VECTOR ( 0 to 0 );
    blp_m_ext_tog_ctrl_kernel_01_in : out STD_LOGIC_VECTOR ( 0 to 0 );
    blp_m_irq_kernel_00 : out STD_LOGIC_VECTOR ( 127 downto 0 );
    blp_s_aclk_ctrl_00 : in STD_LOGIC;
    blp_s_aclk_ext_tog_kernel_00 : in STD_LOGIC;
    blp_s_aclk_ext_tog_kernel_01 : in STD_LOGIC;
    blp_s_aclk_kernel_00 : in STD_LOGIC;
    blp_s_aclk_kernel_01 : in STD_LOGIC;
    blp_s_aclk_pcie_00 : in STD_LOGIC;
    blp_s_aresetn_pcie_reset_00 : in STD_LOGIC_VECTOR ( 0 to 0 );
    blp_s_aresetn_pr_reset_00 : in STD_LOGIC_VECTOR ( 0 to 0 );
    blp_s_ext_tog_ctrl_kernel_00_out : in STD_LOGIC;
    blp_s_ext_tog_ctrl_kernel_01_out : in STD_LOGIC;
    qsfp0_161mhz_clk_n : in STD_LOGIC;
    qsfp0_161mhz_clk_p : in STD_LOGIC;
    qsfp0_4x_grx_n : in STD_LOGIC_VECTOR ( 3 downto 0 );
    qsfp0_4x_grx_p : in STD_LOGIC_VECTOR ( 3 downto 0 );
    qsfp0_4x_gtx_n : out STD_LOGIC_VECTOR ( 3 downto 0 );
    qsfp0_4x_gtx_p : out STD_LOGIC_VECTOR ( 3 downto 0 );
    qsfp1_161mhz_clk_n : in STD_LOGIC;
    qsfp1_161mhz_clk_p : in STD_LOGIC;
    qsfp1_4x_grx_n : in STD_LOGIC_VECTOR ( 3 downto 0 );
    qsfp1_4x_grx_p : in STD_LOGIC_VECTOR ( 3 downto 0 );
    qsfp1_4x_gtx_n : out STD_LOGIC_VECTOR ( 3 downto 0 );
    qsfp1_4x_gtx_p : out STD_LOGIC_VECTOR ( 3 downto 0 )
  );

end ulp_inst_0;

architecture stub of ulp_inst_0 is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "BLP_M_M00_INI_0_internoc[0:0],BLP_M_M01_INI_0_internoc[0:0],BLP_M_M02_INI_0_internoc[0:0],BLP_S_AXI_CTRL_USER_00_araddr[63:0],BLP_S_AXI_CTRL_USER_00_arprot[2:0],BLP_S_AXI_CTRL_USER_00_arready,BLP_S_AXI_CTRL_USER_00_arvalid,BLP_S_AXI_CTRL_USER_00_awaddr[63:0],BLP_S_AXI_CTRL_USER_00_awprot[2:0],BLP_S_AXI_CTRL_USER_00_awready,BLP_S_AXI_CTRL_USER_00_awvalid,BLP_S_AXI_CTRL_USER_00_bready,BLP_S_AXI_CTRL_USER_00_bresp[1:0],BLP_S_AXI_CTRL_USER_00_bvalid,BLP_S_AXI_CTRL_USER_00_rdata[31:0],BLP_S_AXI_CTRL_USER_00_rready,BLP_S_AXI_CTRL_USER_00_rresp[1:0],BLP_S_AXI_CTRL_USER_00_rvalid,BLP_S_AXI_CTRL_USER_00_wdata[31:0],BLP_S_AXI_CTRL_USER_00_wready,BLP_S_AXI_CTRL_USER_00_wstrb[3:0],BLP_S_AXI_CTRL_USER_00_wvalid,BLP_S_INI_AIE_00_internoc[0:0],BLP_S_INI_DBG_00_internoc[0:0],BLP_S_INI_PLRAM_00_internoc[0:0],blp_m_dbg_hub_fw_00[0:0],blp_m_ext_tog_ctrl_kernel_00_enable[0:0],blp_m_ext_tog_ctrl_kernel_00_in[0:0],blp_m_ext_tog_ctrl_kernel_01_enable[0:0],blp_m_ext_tog_ctrl_kernel_01_in[0:0],blp_m_irq_kernel_00[127:0],blp_s_aclk_ctrl_00,blp_s_aclk_ext_tog_kernel_00,blp_s_aclk_ext_tog_kernel_01,blp_s_aclk_kernel_00,blp_s_aclk_kernel_01,blp_s_aclk_pcie_00,blp_s_aresetn_pcie_reset_00[0:0],blp_s_aresetn_pr_reset_00[0:0],blp_s_ext_tog_ctrl_kernel_00_out,blp_s_ext_tog_ctrl_kernel_01_out,qsfp0_161mhz_clk_n,qsfp0_161mhz_clk_p,qsfp0_4x_grx_n[3:0],qsfp0_4x_grx_p[3:0],qsfp0_4x_gtx_n[3:0],qsfp0_4x_gtx_p[3:0],qsfp1_161mhz_clk_n,qsfp1_161mhz_clk_p,qsfp1_4x_grx_n[3:0],qsfp1_4x_grx_p[3:0],qsfp1_4x_gtx_n[3:0],qsfp1_4x_gtx_p[3:0]";
begin
end;
