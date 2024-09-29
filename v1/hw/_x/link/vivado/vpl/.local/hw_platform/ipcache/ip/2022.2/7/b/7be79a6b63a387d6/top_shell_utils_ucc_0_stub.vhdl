-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2022.2 (lin64) Build 3671981 Fri Oct 14 04:59:54 MDT 2022
-- Date        : Mon Dec  5 00:21:24 2022
-- Host        : xsjdcslab02.xilinx.com running 64-bit CentOS Linux release 8.1.1911 (Core)
-- Command     : write_vhdl -force -mode synth_stub -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
--               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ top_shell_utils_ucc_0_stub.vhdl
-- Design      : top_shell_utils_ucc_0
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xcvc1902-vsvd1760-2MP-e-S
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
  Port ( 
    aclk_ctrl : in STD_LOGIC;
    aclk_freerun : in STD_LOGIC;
    aclk_pcie : in STD_LOGIC;
    aresetn_ctrl : in STD_LOGIC;
    aclk_kernel_00 : out STD_LOGIC;
    aclk_kernel_01 : out STD_LOGIC;
    aclk_kernel_cont_00 : out STD_LOGIC;
    aclk_kernel_cont_01 : out STD_LOGIC;
    aclk_ext_tog_kernel_00 : out STD_LOGIC;
    aclk_ext_tog_kernel_01 : out STD_LOGIC;
    clk_in_kernel_00 : in STD_LOGIC;
    clk_in_kernel_01 : in STD_LOGIC;
    clk_kernel_00_locked : in STD_LOGIC;
    clk_kernel_01_locked : in STD_LOGIC;
    ext_tog_ctrl_kernel_00_enable : in STD_LOGIC;
    ext_tog_ctrl_kernel_01_enable : in STD_LOGIC;
    ext_tog_ctrl_kernel_00_in : in STD_LOGIC;
    ext_tog_ctrl_kernel_01_in : in STD_LOGIC;
    ext_tog_ctrl_kernel_00_out : out STD_LOGIC;
    ext_tog_ctrl_kernel_01_out : out STD_LOGIC;
    rst_async_kernel_00 : out STD_LOGIC;
    rst_async_kernel_01 : out STD_LOGIC;
    power_down : out STD_LOGIC;
    shutdown_clocks : in STD_LOGIC;
    s_axi_ctrl_mgmt_araddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_ctrl_mgmt_arready : out STD_LOGIC;
    s_axi_ctrl_mgmt_arvalid : in STD_LOGIC;
    s_axi_ctrl_mgmt_awaddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_ctrl_mgmt_awready : out STD_LOGIC;
    s_axi_ctrl_mgmt_awvalid : in STD_LOGIC;
    s_axi_ctrl_mgmt_bready : in STD_LOGIC;
    s_axi_ctrl_mgmt_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_ctrl_mgmt_bvalid : out STD_LOGIC;
    s_axi_ctrl_mgmt_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_ctrl_mgmt_rready : in STD_LOGIC;
    s_axi_ctrl_mgmt_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_ctrl_mgmt_rvalid : out STD_LOGIC;
    s_axi_ctrl_mgmt_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_ctrl_mgmt_wready : out STD_LOGIC;
    s_axi_ctrl_mgmt_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_ctrl_mgmt_wvalid : in STD_LOGIC
  );

end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix;

architecture stub of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "aclk_ctrl,aclk_freerun,aclk_pcie,aresetn_ctrl,aclk_kernel_00,aclk_kernel_01,aclk_kernel_cont_00,aclk_kernel_cont_01,aclk_ext_tog_kernel_00,aclk_ext_tog_kernel_01,clk_in_kernel_00,clk_in_kernel_01,clk_kernel_00_locked,clk_kernel_01_locked,ext_tog_ctrl_kernel_00_enable,ext_tog_ctrl_kernel_01_enable,ext_tog_ctrl_kernel_00_in,ext_tog_ctrl_kernel_01_in,ext_tog_ctrl_kernel_00_out,ext_tog_ctrl_kernel_01_out,rst_async_kernel_00,rst_async_kernel_01,power_down,shutdown_clocks,s_axi_ctrl_mgmt_araddr[31:0],s_axi_ctrl_mgmt_arready,s_axi_ctrl_mgmt_arvalid,s_axi_ctrl_mgmt_awaddr[31:0],s_axi_ctrl_mgmt_awready,s_axi_ctrl_mgmt_awvalid,s_axi_ctrl_mgmt_bready,s_axi_ctrl_mgmt_bresp[1:0],s_axi_ctrl_mgmt_bvalid,s_axi_ctrl_mgmt_rdata[31:0],s_axi_ctrl_mgmt_rready,s_axi_ctrl_mgmt_rresp[1:0],s_axi_ctrl_mgmt_rvalid,s_axi_ctrl_mgmt_wdata[31:0],s_axi_ctrl_mgmt_wready,s_axi_ctrl_mgmt_wstrb[3:0],s_axi_ctrl_mgmt_wvalid";
attribute X_CORE_INFO : string;
attribute X_CORE_INFO of stub : architecture is "shell_utils_ucc_v1_0_0_top,Vivado 2022.2";
begin
end;
