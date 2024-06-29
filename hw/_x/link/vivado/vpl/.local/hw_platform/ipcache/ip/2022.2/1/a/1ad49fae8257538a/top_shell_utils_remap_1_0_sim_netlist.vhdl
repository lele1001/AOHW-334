-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2022.2 (lin64) Build 3671981 Fri Oct 14 04:59:54 MDT 2022
-- Date        : Mon Dec  5 00:21:10 2022
-- Host        : xsjdcslab02.xilinx.com running 64-bit CentOS Linux release 8.1.1911 (Core)
-- Command     : write_vhdl -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
--               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ top_shell_utils_remap_1_0_sim_netlist.vhdl
-- Design      : top_shell_utils_remap_1_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xcvc1902-vsvd1760-2MP-e-S
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_shell_utils_versal_remap_v1_0_0 is
  port (
    AXI_ACLK : in STD_LOGIC;
    AXI_ARESETN : in STD_LOGIC;
    S_AXI_ARADDR : in STD_LOGIC_VECTOR ( 63 downto 0 );
    S_AXI_ARBURST : in STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_ARCACHE : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_ARID : in STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_ARLEN : in STD_LOGIC_VECTOR ( 7 downto 0 );
    S_AXI_ARLOCK : in STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_ARPROT : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXI_ARREADY : out STD_LOGIC;
    S_AXI_ARSIZE : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXI_ARVALID : in STD_LOGIC;
    S_AXI_AWADDR : in STD_LOGIC_VECTOR ( 63 downto 0 );
    S_AXI_AWBURST : in STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_AWCACHE : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_AWID : in STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_AWLEN : in STD_LOGIC_VECTOR ( 7 downto 0 );
    S_AXI_AWLOCK : in STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_AWPROT : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXI_AWREADY : out STD_LOGIC;
    S_AXI_AWSIZE : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXI_AWVALID : in STD_LOGIC;
    S_AXI_BID : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_BREADY : in STD_LOGIC;
    S_AXI_BRESP : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_BVALID : out STD_LOGIC;
    S_AXI_RDATA : out STD_LOGIC_VECTOR ( 127 downto 0 );
    S_AXI_RID : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_RLAST : out STD_LOGIC;
    S_AXI_RREADY : in STD_LOGIC;
    S_AXI_RRESP : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_RVALID : out STD_LOGIC;
    S_AXI_WDATA : in STD_LOGIC_VECTOR ( 127 downto 0 );
    S_AXI_WLAST : in STD_LOGIC;
    S_AXI_WREADY : out STD_LOGIC;
    S_AXI_WSTRB : in STD_LOGIC_VECTOR ( 15 downto 0 );
    S_AXI_WVALID : in STD_LOGIC;
    M_AXI_ARADDR : out STD_LOGIC_VECTOR ( 63 downto 0 );
    M_AXI_ARBURST : out STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_ARCACHE : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXI_ARID : out STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_ARLEN : out STD_LOGIC_VECTOR ( 7 downto 0 );
    M_AXI_ARLOCK : out STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_ARPROT : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M_AXI_ARREADY : in STD_LOGIC;
    M_AXI_ARSIZE : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M_AXI_ARVALID : out STD_LOGIC;
    M_AXI_AWADDR : out STD_LOGIC_VECTOR ( 63 downto 0 );
    M_AXI_AWBURST : out STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_AWCACHE : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXI_AWID : out STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_AWLEN : out STD_LOGIC_VECTOR ( 7 downto 0 );
    M_AXI_AWLOCK : out STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_AWPROT : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M_AXI_AWREADY : in STD_LOGIC;
    M_AXI_AWSIZE : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M_AXI_AWVALID : out STD_LOGIC;
    M_AXI_BID : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_BREADY : out STD_LOGIC;
    M_AXI_BRESP : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_BVALID : in STD_LOGIC;
    M_AXI_RDATA : in STD_LOGIC_VECTOR ( 127 downto 0 );
    M_AXI_RID : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_RLAST : in STD_LOGIC;
    M_AXI_RREADY : out STD_LOGIC;
    M_AXI_RRESP : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_RVALID : in STD_LOGIC;
    M_AXI_WDATA : out STD_LOGIC_VECTOR ( 127 downto 0 );
    M_AXI_WLAST : out STD_LOGIC;
    M_AXI_WREADY : in STD_LOGIC;
    M_AXI_WSTRB : out STD_LOGIC_VECTOR ( 15 downto 0 );
    M_AXI_WVALID : out STD_LOGIC
  );
  attribute C_MASTER_ADDR : string;
  attribute C_MASTER_ADDR of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_shell_utils_versal_remap_v1_0_0 : entity is "32'b00000000000000000011011000000000";
  attribute C_S_AXI_ADDR_WIDTH : integer;
  attribute C_S_AXI_ADDR_WIDTH of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_shell_utils_versal_remap_v1_0_0 : entity is 64;
  attribute C_S_AXI_DATA_WIDTH : integer;
  attribute C_S_AXI_DATA_WIDTH of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_shell_utils_versal_remap_v1_0_0 : entity is 128;
  attribute C_TRANSPARENT_BITS : integer;
  attribute C_TRANSPARENT_BITS of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_shell_utils_versal_remap_v1_0_0 : entity is 24;
  attribute C_XDEVICEFAMILY : string;
  attribute C_XDEVICEFAMILY of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_shell_utils_versal_remap_v1_0_0 : entity is "versal";
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_shell_utils_versal_remap_v1_0_0;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_shell_utils_versal_remap_v1_0_0 is
  signal \<const0>\ : STD_LOGIC;
  signal \^m_axi_arready\ : STD_LOGIC;
  signal \^m_axi_awready\ : STD_LOGIC;
  signal \^m_axi_bid\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \^m_axi_bresp\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \^m_axi_bvalid\ : STD_LOGIC;
  signal \^m_axi_rdata\ : STD_LOGIC_VECTOR ( 127 downto 0 );
  signal \^m_axi_rid\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \^m_axi_rlast\ : STD_LOGIC;
  signal \^m_axi_rresp\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \^m_axi_rvalid\ : STD_LOGIC;
  signal \^m_axi_wready\ : STD_LOGIC;
  signal \^s_axi_araddr\ : STD_LOGIC_VECTOR ( 63 downto 0 );
  signal \^s_axi_arburst\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \^s_axi_arcache\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \^s_axi_arid\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \^s_axi_arlen\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \^s_axi_arlock\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \^s_axi_arprot\ : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \^s_axi_arsize\ : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \^s_axi_arvalid\ : STD_LOGIC;
  signal \^s_axi_awaddr\ : STD_LOGIC_VECTOR ( 63 downto 0 );
  signal \^s_axi_awburst\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \^s_axi_awcache\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \^s_axi_awid\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \^s_axi_awlen\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \^s_axi_awlock\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \^s_axi_awprot\ : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \^s_axi_awsize\ : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \^s_axi_awvalid\ : STD_LOGIC;
  signal \^s_axi_bready\ : STD_LOGIC;
  signal \^s_axi_rready\ : STD_LOGIC;
  signal \^s_axi_wdata\ : STD_LOGIC_VECTOR ( 127 downto 0 );
  signal \^s_axi_wlast\ : STD_LOGIC;
  signal \^s_axi_wstrb\ : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal \^s_axi_wvalid\ : STD_LOGIC;
begin
  M_AXI_ARADDR(63) <= \<const0>\;
  M_AXI_ARADDR(62) <= \<const0>\;
  M_AXI_ARADDR(61) <= \<const0>\;
  M_AXI_ARADDR(60) <= \<const0>\;
  M_AXI_ARADDR(59) <= \<const0>\;
  M_AXI_ARADDR(58) <= \<const0>\;
  M_AXI_ARADDR(57) <= \<const0>\;
  M_AXI_ARADDR(56) <= \<const0>\;
  M_AXI_ARADDR(55) <= \<const0>\;
  M_AXI_ARADDR(54) <= \<const0>\;
  M_AXI_ARADDR(53) <= \<const0>\;
  M_AXI_ARADDR(52) <= \<const0>\;
  M_AXI_ARADDR(51) <= \<const0>\;
  M_AXI_ARADDR(50) <= \<const0>\;
  M_AXI_ARADDR(49) <= \<const0>\;
  M_AXI_ARADDR(48) <= \<const0>\;
  M_AXI_ARADDR(47) <= \<const0>\;
  M_AXI_ARADDR(46) <= \<const0>\;
  M_AXI_ARADDR(45) <= \<const0>\;
  M_AXI_ARADDR(44) <= \<const0>\;
  M_AXI_ARADDR(43) <= \<const0>\;
  M_AXI_ARADDR(42) <= \<const0>\;
  M_AXI_ARADDR(41) <= \<const0>\;
  M_AXI_ARADDR(40) <= \<const0>\;
  M_AXI_ARADDR(39) <= \<const0>\;
  M_AXI_ARADDR(38) <= \<const0>\;
  M_AXI_ARADDR(37) <= \<const0>\;
  M_AXI_ARADDR(36) <= \<const0>\;
  M_AXI_ARADDR(35) <= \<const0>\;
  M_AXI_ARADDR(34) <= \<const0>\;
  M_AXI_ARADDR(33) <= \<const0>\;
  M_AXI_ARADDR(32) <= \<const0>\;
  M_AXI_ARADDR(31) <= \<const0>\;
  M_AXI_ARADDR(30) <= \<const0>\;
  M_AXI_ARADDR(29) <= \<const0>\;
  M_AXI_ARADDR(28) <= \<const0>\;
  M_AXI_ARADDR(27) <= \<const0>\;
  M_AXI_ARADDR(26) <= \<const0>\;
  M_AXI_ARADDR(25) <= \<const0>\;
  M_AXI_ARADDR(24) <= \<const0>\;
  M_AXI_ARADDR(23 downto 0) <= \^s_axi_araddr\(23 downto 0);
  M_AXI_ARBURST(1 downto 0) <= \^s_axi_arburst\(1 downto 0);
  M_AXI_ARCACHE(3 downto 0) <= \^s_axi_arcache\(3 downto 0);
  M_AXI_ARID(1 downto 0) <= \^s_axi_arid\(1 downto 0);
  M_AXI_ARLEN(7 downto 0) <= \^s_axi_arlen\(7 downto 0);
  M_AXI_ARLOCK(0) <= \^s_axi_arlock\(0);
  M_AXI_ARPROT(2 downto 0) <= \^s_axi_arprot\(2 downto 0);
  M_AXI_ARSIZE(2 downto 0) <= \^s_axi_arsize\(2 downto 0);
  M_AXI_ARVALID <= \^s_axi_arvalid\;
  M_AXI_AWADDR(63) <= \<const0>\;
  M_AXI_AWADDR(62) <= \<const0>\;
  M_AXI_AWADDR(61) <= \<const0>\;
  M_AXI_AWADDR(60) <= \<const0>\;
  M_AXI_AWADDR(59) <= \<const0>\;
  M_AXI_AWADDR(58) <= \<const0>\;
  M_AXI_AWADDR(57) <= \<const0>\;
  M_AXI_AWADDR(56) <= \<const0>\;
  M_AXI_AWADDR(55) <= \<const0>\;
  M_AXI_AWADDR(54) <= \<const0>\;
  M_AXI_AWADDR(53) <= \<const0>\;
  M_AXI_AWADDR(52) <= \<const0>\;
  M_AXI_AWADDR(51) <= \<const0>\;
  M_AXI_AWADDR(50) <= \<const0>\;
  M_AXI_AWADDR(49) <= \<const0>\;
  M_AXI_AWADDR(48) <= \<const0>\;
  M_AXI_AWADDR(47) <= \<const0>\;
  M_AXI_AWADDR(46) <= \<const0>\;
  M_AXI_AWADDR(45) <= \<const0>\;
  M_AXI_AWADDR(44) <= \<const0>\;
  M_AXI_AWADDR(43) <= \<const0>\;
  M_AXI_AWADDR(42) <= \<const0>\;
  M_AXI_AWADDR(41) <= \<const0>\;
  M_AXI_AWADDR(40) <= \<const0>\;
  M_AXI_AWADDR(39) <= \<const0>\;
  M_AXI_AWADDR(38) <= \<const0>\;
  M_AXI_AWADDR(37) <= \<const0>\;
  M_AXI_AWADDR(36) <= \<const0>\;
  M_AXI_AWADDR(35) <= \<const0>\;
  M_AXI_AWADDR(34) <= \<const0>\;
  M_AXI_AWADDR(33) <= \<const0>\;
  M_AXI_AWADDR(32) <= \<const0>\;
  M_AXI_AWADDR(31) <= \<const0>\;
  M_AXI_AWADDR(30) <= \<const0>\;
  M_AXI_AWADDR(29) <= \<const0>\;
  M_AXI_AWADDR(28) <= \<const0>\;
  M_AXI_AWADDR(27) <= \<const0>\;
  M_AXI_AWADDR(26) <= \<const0>\;
  M_AXI_AWADDR(25) <= \<const0>\;
  M_AXI_AWADDR(24) <= \<const0>\;
  M_AXI_AWADDR(23 downto 0) <= \^s_axi_awaddr\(23 downto 0);
  M_AXI_AWBURST(1 downto 0) <= \^s_axi_awburst\(1 downto 0);
  M_AXI_AWCACHE(3 downto 0) <= \^s_axi_awcache\(3 downto 0);
  M_AXI_AWID(1 downto 0) <= \^s_axi_awid\(1 downto 0);
  M_AXI_AWLEN(7 downto 0) <= \^s_axi_awlen\(7 downto 0);
  M_AXI_AWLOCK(0) <= \^s_axi_awlock\(0);
  M_AXI_AWPROT(2 downto 0) <= \^s_axi_awprot\(2 downto 0);
  M_AXI_AWSIZE(2 downto 0) <= \^s_axi_awsize\(2 downto 0);
  M_AXI_AWVALID <= \^s_axi_awvalid\;
  M_AXI_BREADY <= \^s_axi_bready\;
  M_AXI_RREADY <= \^s_axi_rready\;
  M_AXI_WDATA(127 downto 0) <= \^s_axi_wdata\(127 downto 0);
  M_AXI_WLAST <= \^s_axi_wlast\;
  M_AXI_WSTRB(15 downto 0) <= \^s_axi_wstrb\(15 downto 0);
  M_AXI_WVALID <= \^s_axi_wvalid\;
  S_AXI_ARREADY <= \^m_axi_arready\;
  S_AXI_AWREADY <= \^m_axi_awready\;
  S_AXI_BID(1 downto 0) <= \^m_axi_bid\(1 downto 0);
  S_AXI_BRESP(1 downto 0) <= \^m_axi_bresp\(1 downto 0);
  S_AXI_BVALID <= \^m_axi_bvalid\;
  S_AXI_RDATA(127 downto 0) <= \^m_axi_rdata\(127 downto 0);
  S_AXI_RID(1 downto 0) <= \^m_axi_rid\(1 downto 0);
  S_AXI_RLAST <= \^m_axi_rlast\;
  S_AXI_RRESP(1 downto 0) <= \^m_axi_rresp\(1 downto 0);
  S_AXI_RVALID <= \^m_axi_rvalid\;
  S_AXI_WREADY <= \^m_axi_wready\;
  \^m_axi_arready\ <= M_AXI_ARREADY;
  \^m_axi_awready\ <= M_AXI_AWREADY;
  \^m_axi_bid\(1 downto 0) <= M_AXI_BID(1 downto 0);
  \^m_axi_bresp\(1 downto 0) <= M_AXI_BRESP(1 downto 0);
  \^m_axi_bvalid\ <= M_AXI_BVALID;
  \^m_axi_rdata\(127 downto 0) <= M_AXI_RDATA(127 downto 0);
  \^m_axi_rid\(1 downto 0) <= M_AXI_RID(1 downto 0);
  \^m_axi_rlast\ <= M_AXI_RLAST;
  \^m_axi_rresp\(1 downto 0) <= M_AXI_RRESP(1 downto 0);
  \^m_axi_rvalid\ <= M_AXI_RVALID;
  \^m_axi_wready\ <= M_AXI_WREADY;
  \^s_axi_araddr\(23 downto 0) <= S_AXI_ARADDR(23 downto 0);
  \^s_axi_arburst\(1 downto 0) <= S_AXI_ARBURST(1 downto 0);
  \^s_axi_arcache\(3 downto 0) <= S_AXI_ARCACHE(3 downto 0);
  \^s_axi_arid\(1 downto 0) <= S_AXI_ARID(1 downto 0);
  \^s_axi_arlen\(7 downto 0) <= S_AXI_ARLEN(7 downto 0);
  \^s_axi_arlock\(0) <= S_AXI_ARLOCK(0);
  \^s_axi_arprot\(2 downto 0) <= S_AXI_ARPROT(2 downto 0);
  \^s_axi_arsize\(2 downto 0) <= S_AXI_ARSIZE(2 downto 0);
  \^s_axi_arvalid\ <= S_AXI_ARVALID;
  \^s_axi_awaddr\(23 downto 0) <= S_AXI_AWADDR(23 downto 0);
  \^s_axi_awburst\(1 downto 0) <= S_AXI_AWBURST(1 downto 0);
  \^s_axi_awcache\(3 downto 0) <= S_AXI_AWCACHE(3 downto 0);
  \^s_axi_awid\(1 downto 0) <= S_AXI_AWID(1 downto 0);
  \^s_axi_awlen\(7 downto 0) <= S_AXI_AWLEN(7 downto 0);
  \^s_axi_awlock\(0) <= S_AXI_AWLOCK(0);
  \^s_axi_awprot\(2 downto 0) <= S_AXI_AWPROT(2 downto 0);
  \^s_axi_awsize\(2 downto 0) <= S_AXI_AWSIZE(2 downto 0);
  \^s_axi_awvalid\ <= S_AXI_AWVALID;
  \^s_axi_bready\ <= S_AXI_BREADY;
  \^s_axi_rready\ <= S_AXI_RREADY;
  \^s_axi_wdata\(127 downto 0) <= S_AXI_WDATA(127 downto 0);
  \^s_axi_wlast\ <= S_AXI_WLAST;
  \^s_axi_wstrb\(15 downto 0) <= S_AXI_WSTRB(15 downto 0);
  \^s_axi_wvalid\ <= S_AXI_WVALID;
GND: unisim.vcomponents.GND
     port map (
      G => \<const0>\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
  port (
    AXI_ACLK : in STD_LOGIC;
    AXI_ARESETN : in STD_LOGIC;
    S_AXI_ARADDR : in STD_LOGIC_VECTOR ( 63 downto 0 );
    S_AXI_ARBURST : in STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_ARCACHE : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_ARID : in STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_ARLEN : in STD_LOGIC_VECTOR ( 7 downto 0 );
    S_AXI_ARLOCK : in STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_ARPROT : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXI_ARREADY : out STD_LOGIC;
    S_AXI_ARSIZE : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXI_ARVALID : in STD_LOGIC;
    S_AXI_AWADDR : in STD_LOGIC_VECTOR ( 63 downto 0 );
    S_AXI_AWBURST : in STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_AWCACHE : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_AWID : in STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_AWLEN : in STD_LOGIC_VECTOR ( 7 downto 0 );
    S_AXI_AWLOCK : in STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_AWPROT : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXI_AWREADY : out STD_LOGIC;
    S_AXI_AWSIZE : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXI_AWVALID : in STD_LOGIC;
    S_AXI_BID : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_BREADY : in STD_LOGIC;
    S_AXI_BRESP : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_BVALID : out STD_LOGIC;
    S_AXI_RDATA : out STD_LOGIC_VECTOR ( 127 downto 0 );
    S_AXI_RID : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_RLAST : out STD_LOGIC;
    S_AXI_RREADY : in STD_LOGIC;
    S_AXI_RRESP : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_RVALID : out STD_LOGIC;
    S_AXI_WDATA : in STD_LOGIC_VECTOR ( 127 downto 0 );
    S_AXI_WLAST : in STD_LOGIC;
    S_AXI_WREADY : out STD_LOGIC;
    S_AXI_WSTRB : in STD_LOGIC_VECTOR ( 15 downto 0 );
    S_AXI_WVALID : in STD_LOGIC;
    M_AXI_ARADDR : out STD_LOGIC_VECTOR ( 63 downto 0 );
    M_AXI_ARBURST : out STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_ARCACHE : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXI_ARID : out STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_ARLEN : out STD_LOGIC_VECTOR ( 7 downto 0 );
    M_AXI_ARLOCK : out STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_ARPROT : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M_AXI_ARREADY : in STD_LOGIC;
    M_AXI_ARSIZE : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M_AXI_ARVALID : out STD_LOGIC;
    M_AXI_AWADDR : out STD_LOGIC_VECTOR ( 63 downto 0 );
    M_AXI_AWBURST : out STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_AWCACHE : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXI_AWID : out STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_AWLEN : out STD_LOGIC_VECTOR ( 7 downto 0 );
    M_AXI_AWLOCK : out STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_AWPROT : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M_AXI_AWREADY : in STD_LOGIC;
    M_AXI_AWSIZE : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M_AXI_AWVALID : out STD_LOGIC;
    M_AXI_BID : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_BREADY : out STD_LOGIC;
    M_AXI_BRESP : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_BVALID : in STD_LOGIC;
    M_AXI_RDATA : in STD_LOGIC_VECTOR ( 127 downto 0 );
    M_AXI_RID : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_RLAST : in STD_LOGIC;
    M_AXI_RREADY : out STD_LOGIC;
    M_AXI_RRESP : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_RVALID : in STD_LOGIC;
    M_AXI_WDATA : out STD_LOGIC_VECTOR ( 127 downto 0 );
    M_AXI_WLAST : out STD_LOGIC;
    M_AXI_WREADY : in STD_LOGIC;
    M_AXI_WSTRB : out STD_LOGIC_VECTOR ( 15 downto 0 );
    M_AXI_WVALID : out STD_LOGIC
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "top_shell_utils_remap_1_0,shell_utils_versal_remap_v1_0_0,{}";
  attribute downgradeipidentifiedwarnings : string;
  attribute downgradeipidentifiedwarnings of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "yes";
  attribute x_core_info : string;
  attribute x_core_info of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "shell_utils_versal_remap_v1_0_0,Vivado 2022.2";
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
  signal \<const0>\ : STD_LOGIC;
  signal \<const1>\ : STD_LOGIC;
  signal \^m_axi_araddr\ : STD_LOGIC_VECTOR ( 23 downto 0 );
  signal \^m_axi_awaddr\ : STD_LOGIC_VECTOR ( 23 downto 0 );
  signal NLW_U0_M_AXI_ARADDR_UNCONNECTED : STD_LOGIC_VECTOR ( 63 downto 24 );
  signal NLW_U0_M_AXI_AWADDR_UNCONNECTED : STD_LOGIC_VECTOR ( 63 downto 24 );
  attribute C_MASTER_ADDR : string;
  attribute C_MASTER_ADDR of U0 : label is "32'b00000000000000000011011000000000";
  attribute C_S_AXI_ADDR_WIDTH : integer;
  attribute C_S_AXI_ADDR_WIDTH of U0 : label is 64;
  attribute C_S_AXI_DATA_WIDTH : integer;
  attribute C_S_AXI_DATA_WIDTH of U0 : label is 128;
  attribute C_TRANSPARENT_BITS : integer;
  attribute C_TRANSPARENT_BITS of U0 : label is 24;
  attribute C_XDEVICEFAMILY : string;
  attribute C_XDEVICEFAMILY of U0 : label is "versal";
  attribute x_interface_info : string;
  attribute x_interface_info of AXI_ACLK : signal is "xilinx.com:signal:clock:1.0 AXI_ACLK CLK";
  attribute x_interface_parameter : string;
  attribute x_interface_parameter of AXI_ACLK : signal is "XIL_INTERFACENAME AXI_ACLK, ASSOCIATED_BUSIF S_AXI:M_AXI, ASSOCIATED_RESET AXI_ARESETN, FREQ_HZ 99999992, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN bd_4885_pspmc_0_0_pl0_ref_clk, INSERT_VIP 0";
  attribute x_interface_info of AXI_ARESETN : signal is "xilinx.com:signal:reset:1.0 AXI_ARESETN RST";
  attribute x_interface_parameter of AXI_ARESETN : signal is "XIL_INTERFACENAME AXI_ARESETN, POLARITY ACTIVE_LOW, INSERT_VIP 0";
  attribute x_interface_info of M_AXI_ARREADY : signal is "xilinx.com:interface:aximm:1.0 M_AXI ARREADY";
  attribute x_interface_info of M_AXI_ARVALID : signal is "xilinx.com:interface:aximm:1.0 M_AXI ARVALID";
  attribute x_interface_info of M_AXI_AWREADY : signal is "xilinx.com:interface:aximm:1.0 M_AXI AWREADY";
  attribute x_interface_info of M_AXI_AWVALID : signal is "xilinx.com:interface:aximm:1.0 M_AXI AWVALID";
  attribute x_interface_info of M_AXI_BREADY : signal is "xilinx.com:interface:aximm:1.0 M_AXI BREADY";
  attribute x_interface_info of M_AXI_BVALID : signal is "xilinx.com:interface:aximm:1.0 M_AXI BVALID";
  attribute x_interface_info of M_AXI_RLAST : signal is "xilinx.com:interface:aximm:1.0 M_AXI RLAST";
  attribute x_interface_info of M_AXI_RREADY : signal is "xilinx.com:interface:aximm:1.0 M_AXI RREADY";
  attribute x_interface_info of M_AXI_RVALID : signal is "xilinx.com:interface:aximm:1.0 M_AXI RVALID";
  attribute x_interface_info of M_AXI_WLAST : signal is "xilinx.com:interface:aximm:1.0 M_AXI WLAST";
  attribute x_interface_info of M_AXI_WREADY : signal is "xilinx.com:interface:aximm:1.0 M_AXI WREADY";
  attribute x_interface_info of M_AXI_WVALID : signal is "xilinx.com:interface:aximm:1.0 M_AXI WVALID";
  attribute x_interface_info of S_AXI_ARREADY : signal is "xilinx.com:interface:aximm:1.0 S_AXI ARREADY";
  attribute x_interface_info of S_AXI_ARVALID : signal is "xilinx.com:interface:aximm:1.0 S_AXI ARVALID";
  attribute x_interface_info of S_AXI_AWREADY : signal is "xilinx.com:interface:aximm:1.0 S_AXI AWREADY";
  attribute x_interface_info of S_AXI_AWVALID : signal is "xilinx.com:interface:aximm:1.0 S_AXI AWVALID";
  attribute x_interface_info of S_AXI_BREADY : signal is "xilinx.com:interface:aximm:1.0 S_AXI BREADY";
  attribute x_interface_info of S_AXI_BVALID : signal is "xilinx.com:interface:aximm:1.0 S_AXI BVALID";
  attribute x_interface_info of S_AXI_RLAST : signal is "xilinx.com:interface:aximm:1.0 S_AXI RLAST";
  attribute x_interface_info of S_AXI_RREADY : signal is "xilinx.com:interface:aximm:1.0 S_AXI RREADY";
  attribute x_interface_info of S_AXI_RVALID : signal is "xilinx.com:interface:aximm:1.0 S_AXI RVALID";
  attribute x_interface_info of S_AXI_WLAST : signal is "xilinx.com:interface:aximm:1.0 S_AXI WLAST";
  attribute x_interface_info of S_AXI_WREADY : signal is "xilinx.com:interface:aximm:1.0 S_AXI WREADY";
  attribute x_interface_info of S_AXI_WVALID : signal is "xilinx.com:interface:aximm:1.0 S_AXI WVALID";
  attribute x_interface_info of M_AXI_ARADDR : signal is "xilinx.com:interface:aximm:1.0 M_AXI ARADDR";
  attribute x_interface_parameter of M_AXI_ARADDR : signal is "XIL_INTERFACENAME M_AXI, DATA_WIDTH 128, PROTOCOL AXI4, FREQ_HZ 99999992, ID_WIDTH 2, ADDR_WIDTH 64, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, READ_WRITE_MODE READ_WRITE, HAS_BURST 1, HAS_LOCK 1, HAS_PROT 1, HAS_CACHE 1, HAS_QOS 0, HAS_REGION 0, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, SUPPORTS_NARROW_BURST 1, NUM_READ_OUTSTANDING 64, NUM_WRITE_OUTSTANDING 64, MAX_BURST_LENGTH 256, PHASE 0.0, CLK_DOMAIN bd_4885_pspmc_0_0_pl0_ref_clk, NUM_READ_THREADS 1, NUM_WRITE_THREADS 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, INSERT_VIP 0";
  attribute x_interface_info of M_AXI_ARBURST : signal is "xilinx.com:interface:aximm:1.0 M_AXI ARBURST";
  attribute x_interface_info of M_AXI_ARCACHE : signal is "xilinx.com:interface:aximm:1.0 M_AXI ARCACHE";
  attribute x_interface_info of M_AXI_ARID : signal is "xilinx.com:interface:aximm:1.0 M_AXI ARID";
  attribute x_interface_info of M_AXI_ARLEN : signal is "xilinx.com:interface:aximm:1.0 M_AXI ARLEN";
  attribute x_interface_info of M_AXI_ARLOCK : signal is "xilinx.com:interface:aximm:1.0 M_AXI ARLOCK";
  attribute x_interface_info of M_AXI_ARPROT : signal is "xilinx.com:interface:aximm:1.0 M_AXI ARPROT";
  attribute x_interface_info of M_AXI_ARSIZE : signal is "xilinx.com:interface:aximm:1.0 M_AXI ARSIZE";
  attribute x_interface_info of M_AXI_AWADDR : signal is "xilinx.com:interface:aximm:1.0 M_AXI AWADDR";
  attribute x_interface_info of M_AXI_AWBURST : signal is "xilinx.com:interface:aximm:1.0 M_AXI AWBURST";
  attribute x_interface_info of M_AXI_AWCACHE : signal is "xilinx.com:interface:aximm:1.0 M_AXI AWCACHE";
  attribute x_interface_info of M_AXI_AWID : signal is "xilinx.com:interface:aximm:1.0 M_AXI AWID";
  attribute x_interface_info of M_AXI_AWLEN : signal is "xilinx.com:interface:aximm:1.0 M_AXI AWLEN";
  attribute x_interface_info of M_AXI_AWLOCK : signal is "xilinx.com:interface:aximm:1.0 M_AXI AWLOCK";
  attribute x_interface_info of M_AXI_AWPROT : signal is "xilinx.com:interface:aximm:1.0 M_AXI AWPROT";
  attribute x_interface_info of M_AXI_AWSIZE : signal is "xilinx.com:interface:aximm:1.0 M_AXI AWSIZE";
  attribute x_interface_info of M_AXI_BID : signal is "xilinx.com:interface:aximm:1.0 M_AXI BID";
  attribute x_interface_info of M_AXI_BRESP : signal is "xilinx.com:interface:aximm:1.0 M_AXI BRESP";
  attribute x_interface_info of M_AXI_RDATA : signal is "xilinx.com:interface:aximm:1.0 M_AXI RDATA";
  attribute x_interface_info of M_AXI_RID : signal is "xilinx.com:interface:aximm:1.0 M_AXI RID";
  attribute x_interface_info of M_AXI_RRESP : signal is "xilinx.com:interface:aximm:1.0 M_AXI RRESP";
  attribute x_interface_info of M_AXI_WDATA : signal is "xilinx.com:interface:aximm:1.0 M_AXI WDATA";
  attribute x_interface_info of M_AXI_WSTRB : signal is "xilinx.com:interface:aximm:1.0 M_AXI WSTRB";
  attribute x_interface_info of S_AXI_ARADDR : signal is "xilinx.com:interface:aximm:1.0 S_AXI ARADDR";
  attribute x_interface_parameter of S_AXI_ARADDR : signal is "XIL_INTERFACENAME S_AXI, DATA_WIDTH 128, PROTOCOL AXI4, FREQ_HZ 99999992, ID_WIDTH 2, ADDR_WIDTH 64, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, READ_WRITE_MODE READ_WRITE, HAS_BURST 1, HAS_LOCK 1, HAS_PROT 1, HAS_CACHE 1, HAS_QOS 0, HAS_REGION 0, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, SUPPORTS_NARROW_BURST 1, NUM_READ_OUTSTANDING 32, NUM_WRITE_OUTSTANDING 32, MAX_BURST_LENGTH 256, PHASE 0.0, CLK_DOMAIN bd_4885_pspmc_0_0_pl0_ref_clk, NUM_READ_THREADS 4, NUM_WRITE_THREADS 4, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, INSERT_VIP 0";
  attribute x_interface_info of S_AXI_ARBURST : signal is "xilinx.com:interface:aximm:1.0 S_AXI ARBURST";
  attribute x_interface_info of S_AXI_ARCACHE : signal is "xilinx.com:interface:aximm:1.0 S_AXI ARCACHE";
  attribute x_interface_info of S_AXI_ARID : signal is "xilinx.com:interface:aximm:1.0 S_AXI ARID";
  attribute x_interface_info of S_AXI_ARLEN : signal is "xilinx.com:interface:aximm:1.0 S_AXI ARLEN";
  attribute x_interface_info of S_AXI_ARLOCK : signal is "xilinx.com:interface:aximm:1.0 S_AXI ARLOCK";
  attribute x_interface_info of S_AXI_ARPROT : signal is "xilinx.com:interface:aximm:1.0 S_AXI ARPROT";
  attribute x_interface_info of S_AXI_ARSIZE : signal is "xilinx.com:interface:aximm:1.0 S_AXI ARSIZE";
  attribute x_interface_info of S_AXI_AWADDR : signal is "xilinx.com:interface:aximm:1.0 S_AXI AWADDR";
  attribute x_interface_info of S_AXI_AWBURST : signal is "xilinx.com:interface:aximm:1.0 S_AXI AWBURST";
  attribute x_interface_info of S_AXI_AWCACHE : signal is "xilinx.com:interface:aximm:1.0 S_AXI AWCACHE";
  attribute x_interface_info of S_AXI_AWID : signal is "xilinx.com:interface:aximm:1.0 S_AXI AWID";
  attribute x_interface_info of S_AXI_AWLEN : signal is "xilinx.com:interface:aximm:1.0 S_AXI AWLEN";
  attribute x_interface_info of S_AXI_AWLOCK : signal is "xilinx.com:interface:aximm:1.0 S_AXI AWLOCK";
  attribute x_interface_info of S_AXI_AWPROT : signal is "xilinx.com:interface:aximm:1.0 S_AXI AWPROT";
  attribute x_interface_info of S_AXI_AWSIZE : signal is "xilinx.com:interface:aximm:1.0 S_AXI AWSIZE";
  attribute x_interface_info of S_AXI_BID : signal is "xilinx.com:interface:aximm:1.0 S_AXI BID";
  attribute x_interface_info of S_AXI_BRESP : signal is "xilinx.com:interface:aximm:1.0 S_AXI BRESP";
  attribute x_interface_info of S_AXI_RDATA : signal is "xilinx.com:interface:aximm:1.0 S_AXI RDATA";
  attribute x_interface_info of S_AXI_RID : signal is "xilinx.com:interface:aximm:1.0 S_AXI RID";
  attribute x_interface_info of S_AXI_RRESP : signal is "xilinx.com:interface:aximm:1.0 S_AXI RRESP";
  attribute x_interface_info of S_AXI_WDATA : signal is "xilinx.com:interface:aximm:1.0 S_AXI WDATA";
  attribute x_interface_info of S_AXI_WSTRB : signal is "xilinx.com:interface:aximm:1.0 S_AXI WSTRB";
begin
  M_AXI_ARADDR(63) <= \<const0>\;
  M_AXI_ARADDR(62) <= \<const0>\;
  M_AXI_ARADDR(61) <= \<const0>\;
  M_AXI_ARADDR(60) <= \<const0>\;
  M_AXI_ARADDR(59) <= \<const0>\;
  M_AXI_ARADDR(58) <= \<const0>\;
  M_AXI_ARADDR(57) <= \<const0>\;
  M_AXI_ARADDR(56) <= \<const0>\;
  M_AXI_ARADDR(55) <= \<const0>\;
  M_AXI_ARADDR(54) <= \<const0>\;
  M_AXI_ARADDR(53) <= \<const0>\;
  M_AXI_ARADDR(52) <= \<const0>\;
  M_AXI_ARADDR(51) <= \<const0>\;
  M_AXI_ARADDR(50) <= \<const0>\;
  M_AXI_ARADDR(49) <= \<const0>\;
  M_AXI_ARADDR(48) <= \<const0>\;
  M_AXI_ARADDR(47) <= \<const0>\;
  M_AXI_ARADDR(46) <= \<const0>\;
  M_AXI_ARADDR(45) <= \<const0>\;
  M_AXI_ARADDR(44) <= \<const0>\;
  M_AXI_ARADDR(43) <= \<const0>\;
  M_AXI_ARADDR(42) <= \<const0>\;
  M_AXI_ARADDR(41) <= \<const0>\;
  M_AXI_ARADDR(40) <= \<const0>\;
  M_AXI_ARADDR(39) <= \<const0>\;
  M_AXI_ARADDR(38) <= \<const0>\;
  M_AXI_ARADDR(37) <= \<const0>\;
  M_AXI_ARADDR(36) <= \<const0>\;
  M_AXI_ARADDR(35) <= \<const0>\;
  M_AXI_ARADDR(34) <= \<const0>\;
  M_AXI_ARADDR(33) <= \<const0>\;
  M_AXI_ARADDR(32) <= \<const0>\;
  M_AXI_ARADDR(31) <= \<const0>\;
  M_AXI_ARADDR(30) <= \<const0>\;
  M_AXI_ARADDR(29) <= \<const1>\;
  M_AXI_ARADDR(28) <= \<const1>\;
  M_AXI_ARADDR(27) <= \<const0>\;
  M_AXI_ARADDR(26) <= \<const1>\;
  M_AXI_ARADDR(25) <= \<const1>\;
  M_AXI_ARADDR(24) <= \<const0>\;
  M_AXI_ARADDR(23 downto 0) <= \^m_axi_araddr\(23 downto 0);
  M_AXI_AWADDR(63) <= \<const0>\;
  M_AXI_AWADDR(62) <= \<const0>\;
  M_AXI_AWADDR(61) <= \<const0>\;
  M_AXI_AWADDR(60) <= \<const0>\;
  M_AXI_AWADDR(59) <= \<const0>\;
  M_AXI_AWADDR(58) <= \<const0>\;
  M_AXI_AWADDR(57) <= \<const0>\;
  M_AXI_AWADDR(56) <= \<const0>\;
  M_AXI_AWADDR(55) <= \<const0>\;
  M_AXI_AWADDR(54) <= \<const0>\;
  M_AXI_AWADDR(53) <= \<const0>\;
  M_AXI_AWADDR(52) <= \<const0>\;
  M_AXI_AWADDR(51) <= \<const0>\;
  M_AXI_AWADDR(50) <= \<const0>\;
  M_AXI_AWADDR(49) <= \<const0>\;
  M_AXI_AWADDR(48) <= \<const0>\;
  M_AXI_AWADDR(47) <= \<const0>\;
  M_AXI_AWADDR(46) <= \<const0>\;
  M_AXI_AWADDR(45) <= \<const0>\;
  M_AXI_AWADDR(44) <= \<const0>\;
  M_AXI_AWADDR(43) <= \<const0>\;
  M_AXI_AWADDR(42) <= \<const0>\;
  M_AXI_AWADDR(41) <= \<const0>\;
  M_AXI_AWADDR(40) <= \<const0>\;
  M_AXI_AWADDR(39) <= \<const0>\;
  M_AXI_AWADDR(38) <= \<const0>\;
  M_AXI_AWADDR(37) <= \<const0>\;
  M_AXI_AWADDR(36) <= \<const0>\;
  M_AXI_AWADDR(35) <= \<const0>\;
  M_AXI_AWADDR(34) <= \<const0>\;
  M_AXI_AWADDR(33) <= \<const0>\;
  M_AXI_AWADDR(32) <= \<const0>\;
  M_AXI_AWADDR(31) <= \<const0>\;
  M_AXI_AWADDR(30) <= \<const0>\;
  M_AXI_AWADDR(29) <= \<const1>\;
  M_AXI_AWADDR(28) <= \<const1>\;
  M_AXI_AWADDR(27) <= \<const0>\;
  M_AXI_AWADDR(26) <= \<const1>\;
  M_AXI_AWADDR(25) <= \<const1>\;
  M_AXI_AWADDR(24) <= \<const0>\;
  M_AXI_AWADDR(23 downto 0) <= \^m_axi_awaddr\(23 downto 0);
GND: unisim.vcomponents.GND
     port map (
      G => \<const0>\
    );
U0: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_shell_utils_versal_remap_v1_0_0
     port map (
      AXI_ACLK => '0',
      AXI_ARESETN => '0',
      M_AXI_ARADDR(63 downto 24) => NLW_U0_M_AXI_ARADDR_UNCONNECTED(63 downto 24),
      M_AXI_ARADDR(23 downto 0) => \^m_axi_araddr\(23 downto 0),
      M_AXI_ARBURST(1 downto 0) => M_AXI_ARBURST(1 downto 0),
      M_AXI_ARCACHE(3 downto 0) => M_AXI_ARCACHE(3 downto 0),
      M_AXI_ARID(1 downto 0) => M_AXI_ARID(1 downto 0),
      M_AXI_ARLEN(7 downto 0) => M_AXI_ARLEN(7 downto 0),
      M_AXI_ARLOCK(0) => M_AXI_ARLOCK(0),
      M_AXI_ARPROT(2 downto 0) => M_AXI_ARPROT(2 downto 0),
      M_AXI_ARREADY => M_AXI_ARREADY,
      M_AXI_ARSIZE(2 downto 0) => M_AXI_ARSIZE(2 downto 0),
      M_AXI_ARVALID => M_AXI_ARVALID,
      M_AXI_AWADDR(63 downto 24) => NLW_U0_M_AXI_AWADDR_UNCONNECTED(63 downto 24),
      M_AXI_AWADDR(23 downto 0) => \^m_axi_awaddr\(23 downto 0),
      M_AXI_AWBURST(1 downto 0) => M_AXI_AWBURST(1 downto 0),
      M_AXI_AWCACHE(3 downto 0) => M_AXI_AWCACHE(3 downto 0),
      M_AXI_AWID(1 downto 0) => M_AXI_AWID(1 downto 0),
      M_AXI_AWLEN(7 downto 0) => M_AXI_AWLEN(7 downto 0),
      M_AXI_AWLOCK(0) => M_AXI_AWLOCK(0),
      M_AXI_AWPROT(2 downto 0) => M_AXI_AWPROT(2 downto 0),
      M_AXI_AWREADY => M_AXI_AWREADY,
      M_AXI_AWSIZE(2 downto 0) => M_AXI_AWSIZE(2 downto 0),
      M_AXI_AWVALID => M_AXI_AWVALID,
      M_AXI_BID(1 downto 0) => M_AXI_BID(1 downto 0),
      M_AXI_BREADY => M_AXI_BREADY,
      M_AXI_BRESP(1 downto 0) => M_AXI_BRESP(1 downto 0),
      M_AXI_BVALID => M_AXI_BVALID,
      M_AXI_RDATA(127 downto 0) => M_AXI_RDATA(127 downto 0),
      M_AXI_RID(1 downto 0) => M_AXI_RID(1 downto 0),
      M_AXI_RLAST => M_AXI_RLAST,
      M_AXI_RREADY => M_AXI_RREADY,
      M_AXI_RRESP(1 downto 0) => M_AXI_RRESP(1 downto 0),
      M_AXI_RVALID => M_AXI_RVALID,
      M_AXI_WDATA(127 downto 0) => M_AXI_WDATA(127 downto 0),
      M_AXI_WLAST => M_AXI_WLAST,
      M_AXI_WREADY => M_AXI_WREADY,
      M_AXI_WSTRB(15 downto 0) => M_AXI_WSTRB(15 downto 0),
      M_AXI_WVALID => M_AXI_WVALID,
      S_AXI_ARADDR(63 downto 24) => B"0000000000000000000000000000000000000000",
      S_AXI_ARADDR(23 downto 0) => S_AXI_ARADDR(23 downto 0),
      S_AXI_ARBURST(1 downto 0) => S_AXI_ARBURST(1 downto 0),
      S_AXI_ARCACHE(3 downto 0) => S_AXI_ARCACHE(3 downto 0),
      S_AXI_ARID(1 downto 0) => S_AXI_ARID(1 downto 0),
      S_AXI_ARLEN(7 downto 0) => S_AXI_ARLEN(7 downto 0),
      S_AXI_ARLOCK(0) => S_AXI_ARLOCK(0),
      S_AXI_ARPROT(2 downto 0) => S_AXI_ARPROT(2 downto 0),
      S_AXI_ARREADY => S_AXI_ARREADY,
      S_AXI_ARSIZE(2 downto 0) => S_AXI_ARSIZE(2 downto 0),
      S_AXI_ARVALID => S_AXI_ARVALID,
      S_AXI_AWADDR(63 downto 24) => B"0000000000000000000000000000000000000000",
      S_AXI_AWADDR(23 downto 0) => S_AXI_AWADDR(23 downto 0),
      S_AXI_AWBURST(1 downto 0) => S_AXI_AWBURST(1 downto 0),
      S_AXI_AWCACHE(3 downto 0) => S_AXI_AWCACHE(3 downto 0),
      S_AXI_AWID(1 downto 0) => S_AXI_AWID(1 downto 0),
      S_AXI_AWLEN(7 downto 0) => S_AXI_AWLEN(7 downto 0),
      S_AXI_AWLOCK(0) => S_AXI_AWLOCK(0),
      S_AXI_AWPROT(2 downto 0) => S_AXI_AWPROT(2 downto 0),
      S_AXI_AWREADY => S_AXI_AWREADY,
      S_AXI_AWSIZE(2 downto 0) => S_AXI_AWSIZE(2 downto 0),
      S_AXI_AWVALID => S_AXI_AWVALID,
      S_AXI_BID(1 downto 0) => S_AXI_BID(1 downto 0),
      S_AXI_BREADY => S_AXI_BREADY,
      S_AXI_BRESP(1 downto 0) => S_AXI_BRESP(1 downto 0),
      S_AXI_BVALID => S_AXI_BVALID,
      S_AXI_RDATA(127 downto 0) => S_AXI_RDATA(127 downto 0),
      S_AXI_RID(1 downto 0) => S_AXI_RID(1 downto 0),
      S_AXI_RLAST => S_AXI_RLAST,
      S_AXI_RREADY => S_AXI_RREADY,
      S_AXI_RRESP(1 downto 0) => S_AXI_RRESP(1 downto 0),
      S_AXI_RVALID => S_AXI_RVALID,
      S_AXI_WDATA(127 downto 0) => S_AXI_WDATA(127 downto 0),
      S_AXI_WLAST => S_AXI_WLAST,
      S_AXI_WREADY => S_AXI_WREADY,
      S_AXI_WSTRB(15 downto 0) => S_AXI_WSTRB(15 downto 0),
      S_AXI_WVALID => S_AXI_WVALID
    );
VCC: unisim.vcomponents.VCC
     port map (
      P => \<const1>\
    );
end STRUCTURE;
