-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2022.2 (lin64) Build 3671981 Fri Oct 14 04:59:54 MDT 2022
-- Date        : Mon Dec  5 00:25:47 2022
-- Host        : xsjdcslab02.xilinx.com running 64-bit CentOS Linux release 8.1.1911 (Core)
-- Command     : write_vhdl -force -mode synth_stub -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
--               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ top_hw_discovery_0_stub.vhdl
-- Design      : top_hw_discovery_0
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xcvc1902-vsvd1760-2MP-e-S
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
  Port ( 
    aclk_pcie : in STD_LOGIC;
    aresetn_pcie : in STD_LOGIC;
    aclk_ctrl : in STD_LOGIC;
    aresetn_ctrl : in STD_LOGIC;
    s_pcie4_cfg_ext_function_number : in STD_LOGIC_VECTOR ( 7 downto 0 );
    s_pcie4_cfg_ext_read_data : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s_pcie4_cfg_ext_read_data_valid : out STD_LOGIC;
    s_pcie4_cfg_ext_read_received : in STD_LOGIC;
    s_pcie4_cfg_ext_register_number : in STD_LOGIC_VECTOR ( 9 downto 0 );
    s_pcie4_cfg_ext_write_byte_enable : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_pcie4_cfg_ext_write_data : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_pcie4_cfg_ext_write_received : in STD_LOGIC;
    s_axi_ctrl_pf0_AWADDR : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_ctrl_pf0_AWVALID : in STD_LOGIC;
    s_axi_ctrl_pf0_AWREADY : out STD_LOGIC;
    s_axi_ctrl_pf0_WDATA : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_ctrl_pf0_WSTRB : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_ctrl_pf0_WVALID : in STD_LOGIC;
    s_axi_ctrl_pf0_WREADY : out STD_LOGIC;
    s_axi_ctrl_pf0_BRESP : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_ctrl_pf0_BVALID : out STD_LOGIC;
    s_axi_ctrl_pf0_BREADY : in STD_LOGIC;
    s_axi_ctrl_pf0_ARADDR : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_ctrl_pf0_ARVALID : in STD_LOGIC;
    s_axi_ctrl_pf0_ARREADY : out STD_LOGIC;
    s_axi_ctrl_pf0_RDATA : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_ctrl_pf0_RRESP : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_ctrl_pf0_RVALID : out STD_LOGIC;
    s_axi_ctrl_pf0_RREADY : in STD_LOGIC;
    s_axi_ctrl_pf1_AWADDR : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_ctrl_pf1_AWVALID : in STD_LOGIC;
    s_axi_ctrl_pf1_AWREADY : out STD_LOGIC;
    s_axi_ctrl_pf1_WDATA : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_ctrl_pf1_WSTRB : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_ctrl_pf1_WVALID : in STD_LOGIC;
    s_axi_ctrl_pf1_WREADY : out STD_LOGIC;
    s_axi_ctrl_pf1_BRESP : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_ctrl_pf1_BVALID : out STD_LOGIC;
    s_axi_ctrl_pf1_BREADY : in STD_LOGIC;
    s_axi_ctrl_pf1_ARADDR : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_ctrl_pf1_ARVALID : in STD_LOGIC;
    s_axi_ctrl_pf1_ARREADY : out STD_LOGIC;
    s_axi_ctrl_pf1_RDATA : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_ctrl_pf1_RRESP : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_ctrl_pf1_RVALID : out STD_LOGIC;
    s_axi_ctrl_pf1_RREADY : in STD_LOGIC
  );

end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix;

architecture stub of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "aclk_pcie,aresetn_pcie,aclk_ctrl,aresetn_ctrl,s_pcie4_cfg_ext_function_number[7:0],s_pcie4_cfg_ext_read_data[31:0],s_pcie4_cfg_ext_read_data_valid,s_pcie4_cfg_ext_read_received,s_pcie4_cfg_ext_register_number[9:0],s_pcie4_cfg_ext_write_byte_enable[3:0],s_pcie4_cfg_ext_write_data[31:0],s_pcie4_cfg_ext_write_received,s_axi_ctrl_pf0_AWADDR[31:0],s_axi_ctrl_pf0_AWVALID,s_axi_ctrl_pf0_AWREADY,s_axi_ctrl_pf0_WDATA[31:0],s_axi_ctrl_pf0_WSTRB[3:0],s_axi_ctrl_pf0_WVALID,s_axi_ctrl_pf0_WREADY,s_axi_ctrl_pf0_BRESP[1:0],s_axi_ctrl_pf0_BVALID,s_axi_ctrl_pf0_BREADY,s_axi_ctrl_pf0_ARADDR[31:0],s_axi_ctrl_pf0_ARVALID,s_axi_ctrl_pf0_ARREADY,s_axi_ctrl_pf0_RDATA[31:0],s_axi_ctrl_pf0_RRESP[1:0],s_axi_ctrl_pf0_RVALID,s_axi_ctrl_pf0_RREADY,s_axi_ctrl_pf1_AWADDR[31:0],s_axi_ctrl_pf1_AWVALID,s_axi_ctrl_pf1_AWREADY,s_axi_ctrl_pf1_WDATA[31:0],s_axi_ctrl_pf1_WSTRB[3:0],s_axi_ctrl_pf1_WVALID,s_axi_ctrl_pf1_WREADY,s_axi_ctrl_pf1_BRESP[1:0],s_axi_ctrl_pf1_BVALID,s_axi_ctrl_pf1_BREADY,s_axi_ctrl_pf1_ARADDR[31:0],s_axi_ctrl_pf1_ARVALID,s_axi_ctrl_pf1_ARREADY,s_axi_ctrl_pf1_RDATA[31:0],s_axi_ctrl_pf1_RRESP[1:0],s_axi_ctrl_pf1_RVALID,s_axi_ctrl_pf1_RREADY";
attribute X_CORE_INFO : string;
attribute X_CORE_INFO of stub : architecture is "hw_discovery,Vivado 2022.2";
begin
end;
