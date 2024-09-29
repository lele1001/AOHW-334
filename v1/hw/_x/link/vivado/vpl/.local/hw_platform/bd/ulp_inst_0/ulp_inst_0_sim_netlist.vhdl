-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2022.2 (lin64) Build 3671981 Fri Oct 14 04:59:54 MDT 2022
-- Date        : Mon Dec  5 00:32:06 2022
-- Host        : xsjdcslab02.xilinx.com running 64-bit CentOS Linux release 8.1.1911 (Core)
-- Command     : write_vhdl -force -mode funcsim
--               /proj/ipeng-nobkup/ccase/platforms/p4/Platforms_ccase_vck5000_dev0/Platforms/sources/vck5000/chassis/gen4x8_qdma/2/build_1205a_dbg_hub_fw_flop/hardware/xilinx_vck5000_gen4x8_qdma_base_2/xilinx_vck5000_gen4x8_qdma_base_2.gen/sources_1/bd/top/bd/ulp_inst_0/ulp_inst_0_sim_netlist.vhdl
-- Design      : ulp_inst_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xcvc1902-vsvd1760-2MP-e-S
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity ulp_inst_0_ai_noc_v1_0_0_ai_noc is
  port (
    s_axi_aclk : out STD_LOGIC;
    s_axi_aresetn : in STD_LOGIC;
    s_axi_awid : in STD_LOGIC_VECTOR ( 15 downto 0 );
    s_axi_awaddr : in STD_LOGIC_VECTOR ( 33 downto 0 );
    s_axi_awlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    s_axi_awsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_awburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_awlock : in STD_LOGIC;
    s_axi_awcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_awqos : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_awregion : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_awuser : in STD_LOGIC_VECTOR ( 0 to 1 );
    s_axi_awvalid : in STD_LOGIC;
    s_axi_awready : out STD_LOGIC;
    s_axi_wdata : in STD_LOGIC_VECTOR ( 127 downto 0 );
    s_axi_wstrb : in STD_LOGIC_VECTOR ( 15 downto 0 );
    s_axi_wlast : in STD_LOGIC;
    s_axi_wuser : in STD_LOGIC_VECTOR ( 16 downto 0 );
    s_axi_wvalid : in STD_LOGIC;
    s_axi_wready : out STD_LOGIC;
    s_axi_bid : out STD_LOGIC_VECTOR ( 15 downto 0 );
    s_axi_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_buser : out STD_LOGIC_VECTOR ( 0 to 1 );
    s_axi_bvalid : out STD_LOGIC;
    s_axi_bready : in STD_LOGIC;
    s_axi_arid : in STD_LOGIC_VECTOR ( 15 downto 0 );
    s_axi_araddr : in STD_LOGIC_VECTOR ( 33 downto 0 );
    s_axi_arlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    s_axi_arsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_arburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_arlock : in STD_LOGIC;
    s_axi_arcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_arqos : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_arregion : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_aruser : in STD_LOGIC_VECTOR ( 0 to 1 );
    s_axi_arvalid : in STD_LOGIC;
    s_axi_arready : out STD_LOGIC;
    s_axi_rid : out STD_LOGIC_VECTOR ( 15 downto 0 );
    s_axi_rdata : out STD_LOGIC_VECTOR ( 127 downto 0 );
    s_axi_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_rlast : out STD_LOGIC;
    s_axi_ruser : out STD_LOGIC_VECTOR ( 16 downto 0 );
    s_axi_rvalid : out STD_LOGIC;
    s_axi_rready : in STD_LOGIC;
    s_axis_aclk : out STD_LOGIC;
    s_axis_aresetn : in STD_LOGIC;
    s_axis_tready : out STD_LOGIC;
    s_axis_tid : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axis_tdest : in STD_LOGIC_VECTOR ( 9 downto 0 );
    s_axis_tdata : in STD_LOGIC_VECTOR ( 127 downto 0 );
    s_axis_tkeep : in STD_LOGIC_VECTOR ( 15 downto 0 );
    s_axis_tlast : in STD_LOGIC;
    s_axis_tvalid : in STD_LOGIC;
    to_aie_2 : out STD_LOGIC;
    to_aie_3 : out STD_LOGIC;
    to_aie_6 : out STD_LOGIC;
    to_aie_7 : out STD_LOGIC;
    m_axi_aclk : out STD_LOGIC;
    m_axi_aresetn : in STD_LOGIC;
    m_axi_awid : out STD_LOGIC_VECTOR ( 15 downto 0 );
    m_axi_awaddr : out STD_LOGIC_VECTOR ( 63 downto 0 );
    m_axi_awlen : out STD_LOGIC_VECTOR ( 7 downto 0 );
    m_axi_awsize : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_awburst : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_awlock : out STD_LOGIC;
    m_axi_awcache : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_awprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_awqos : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_arregion : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_awregion : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_awuser : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_awvalid : out STD_LOGIC;
    m_axi_awready : in STD_LOGIC;
    m_axi_wdata : out STD_LOGIC_VECTOR ( 127 downto 0 );
    m_axi_wstrb : out STD_LOGIC_VECTOR ( 15 downto 0 );
    m_axi_wlast : out STD_LOGIC;
    m_axi_wuser : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_wvalid : out STD_LOGIC;
    m_axi_wready : in STD_LOGIC;
    m_axi_bid : in STD_LOGIC_VECTOR ( 15 downto 0 );
    m_axi_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_buser : in STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_bvalid : in STD_LOGIC;
    m_axi_bready : out STD_LOGIC;
    m_axi_arid : out STD_LOGIC_VECTOR ( 15 downto 0 );
    m_axi_araddr : out STD_LOGIC_VECTOR ( 63 downto 0 );
    m_axi_arlen : out STD_LOGIC_VECTOR ( 7 downto 0 );
    m_axi_arsize : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_arburst : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_arlock : out STD_LOGIC;
    m_axi_arcache : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_arprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_arqos : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_aruser : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_arvalid : out STD_LOGIC;
    m_axi_arready : in STD_LOGIC;
    m_axi_rid : in STD_LOGIC_VECTOR ( 15 downto 0 );
    m_axi_rdata : in STD_LOGIC_VECTOR ( 127 downto 0 );
    m_axi_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_rlast : in STD_LOGIC;
    m_axi_ruser : in STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_rvalid : in STD_LOGIC;
    m_axi_rready : out STD_LOGIC;
    m_axi_destid_wr : out STD_LOGIC_VECTOR ( 11 downto 0 );
    m_axi_destmode_wr : out STD_LOGIC;
    m_axi_destid_rd : out STD_LOGIC_VECTOR ( 11 downto 0 );
    m_axi_destmode_rd : out STD_LOGIC;
    m_axis_aclk : out STD_LOGIC;
    m_axis_aresetn : in STD_LOGIC;
    m_axis_tvalid : out STD_LOGIC;
    m_axis_tid : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axis_tdest : out STD_LOGIC_VECTOR ( 9 downto 0 );
    m_axis_tdata : out STD_LOGIC_VECTOR ( 127 downto 0 );
    m_axis_tkeep : out STD_LOGIC_VECTOR ( 15 downto 0 );
    m_axis_tlast : out STD_LOGIC;
    m_axis_tready : in STD_LOGIC;
    from_aie_2 : in STD_LOGIC;
    from_aie_3 : in STD_LOGIC;
    from_aie_4 : in STD_LOGIC;
    from_aie_5 : in STD_LOGIC
  );
  attribute C_AIE_MODE : integer;
  attribute C_AIE_MODE of ulp_inst_0_ai_noc_v1_0_0_ai_noc : entity is 0;
  attribute C_M_AXIS_TDATA_WIDTH : integer;
  attribute C_M_AXIS_TDATA_WIDTH of ulp_inst_0_ai_noc_v1_0_0_ai_noc : entity is 128;
  attribute C_M_AXIS_TDEST_WIDTH : integer;
  attribute C_M_AXIS_TDEST_WIDTH of ulp_inst_0_ai_noc_v1_0_0_ai_noc : entity is 10;
  attribute C_M_AXIS_TID_WIDTH : integer;
  attribute C_M_AXIS_TID_WIDTH of ulp_inst_0_ai_noc_v1_0_0_ai_noc : entity is 2;
  attribute C_M_AXI_ADDR_WIDTH : integer;
  attribute C_M_AXI_ADDR_WIDTH of ulp_inst_0_ai_noc_v1_0_0_ai_noc : entity is 64;
  attribute C_M_AXI_ARUSER_WIDTH : integer;
  attribute C_M_AXI_ARUSER_WIDTH of ulp_inst_0_ai_noc_v1_0_0_ai_noc : entity is 1;
  attribute C_M_AXI_AWUSER_WIDTH : integer;
  attribute C_M_AXI_AWUSER_WIDTH of ulp_inst_0_ai_noc_v1_0_0_ai_noc : entity is 1;
  attribute C_M_AXI_BUSER_WIDTH : integer;
  attribute C_M_AXI_BUSER_WIDTH of ulp_inst_0_ai_noc_v1_0_0_ai_noc : entity is 1;
  attribute C_M_AXI_DATA_WIDTH : integer;
  attribute C_M_AXI_DATA_WIDTH of ulp_inst_0_ai_noc_v1_0_0_ai_noc : entity is 128;
  attribute C_M_AXI_ID_WIDTH : integer;
  attribute C_M_AXI_ID_WIDTH of ulp_inst_0_ai_noc_v1_0_0_ai_noc : entity is 16;
  attribute C_M_AXI_RUSER_WIDTH : integer;
  attribute C_M_AXI_RUSER_WIDTH of ulp_inst_0_ai_noc_v1_0_0_ai_noc : entity is 1;
  attribute C_M_AXI_WUSER_WIDTH : integer;
  attribute C_M_AXI_WUSER_WIDTH of ulp_inst_0_ai_noc_v1_0_0_ai_noc : entity is 1;
  attribute C_NOC_INTF_MODE : integer;
  attribute C_NOC_INTF_MODE of ulp_inst_0_ai_noc_v1_0_0_ai_noc : entity is 0;
  attribute C_NOC_INTF_TYPE : integer;
  attribute C_NOC_INTF_TYPE of ulp_inst_0_ai_noc_v1_0_0_ai_noc : entity is 0;
  attribute C_S_AXIS_TDATA_WIDTH : integer;
  attribute C_S_AXIS_TDATA_WIDTH of ulp_inst_0_ai_noc_v1_0_0_ai_noc : entity is 128;
  attribute C_S_AXIS_TDEST_WIDTH : integer;
  attribute C_S_AXIS_TDEST_WIDTH of ulp_inst_0_ai_noc_v1_0_0_ai_noc : entity is 10;
  attribute C_S_AXIS_TID_WIDTH : integer;
  attribute C_S_AXIS_TID_WIDTH of ulp_inst_0_ai_noc_v1_0_0_ai_noc : entity is 2;
  attribute C_S_AXI_ADDR_WIDTH : integer;
  attribute C_S_AXI_ADDR_WIDTH of ulp_inst_0_ai_noc_v1_0_0_ai_noc : entity is 34;
  attribute C_S_AXI_ARUSER_WIDTH : integer;
  attribute C_S_AXI_ARUSER_WIDTH of ulp_inst_0_ai_noc_v1_0_0_ai_noc : entity is 0;
  attribute C_S_AXI_AWUSER_WIDTH : integer;
  attribute C_S_AXI_AWUSER_WIDTH of ulp_inst_0_ai_noc_v1_0_0_ai_noc : entity is 0;
  attribute C_S_AXI_BUSER_WIDTH : integer;
  attribute C_S_AXI_BUSER_WIDTH of ulp_inst_0_ai_noc_v1_0_0_ai_noc : entity is 0;
  attribute C_S_AXI_DATA_WIDTH : integer;
  attribute C_S_AXI_DATA_WIDTH of ulp_inst_0_ai_noc_v1_0_0_ai_noc : entity is 128;
  attribute C_S_AXI_ID_WIDTH : integer;
  attribute C_S_AXI_ID_WIDTH of ulp_inst_0_ai_noc_v1_0_0_ai_noc : entity is 16;
  attribute C_S_AXI_RUSER_WIDTH : integer;
  attribute C_S_AXI_RUSER_WIDTH of ulp_inst_0_ai_noc_v1_0_0_ai_noc : entity is 17;
  attribute C_S_AXI_WUSER_WIDTH : integer;
  attribute C_S_AXI_WUSER_WIDTH of ulp_inst_0_ai_noc_v1_0_0_ai_noc : entity is 17;
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of ulp_inst_0_ai_noc_v1_0_0_ai_noc : entity is "ai_noc_v1_0_0_ai_noc";
  attribute dont_touch : string;
  attribute dont_touch of ulp_inst_0_ai_noc_v1_0_0_ai_noc : entity is "true";
end ulp_inst_0_ai_noc_v1_0_0_ai_noc;

architecture STRUCTURE of ulp_inst_0_ai_noc_v1_0_0_ai_noc is
  signal \<const0>\ : STD_LOGIC;
  signal \^s_axi_bid\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \^s_axi_rid\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal NLW_noc_ai_mm_FROM_NOC_UNCONNECTED : STD_LOGIC;
  signal NLW_noc_ai_mm_S_AXI_ARADDR_UNCONNECTED : STD_LOGIC_VECTOR ( 63 downto 34 );
  signal NLW_noc_ai_mm_S_AXI_ARUSER_UNCONNECTED : STD_LOGIC_VECTOR ( 17 downto 2 );
  signal NLW_noc_ai_mm_S_AXI_AWADDR_UNCONNECTED : STD_LOGIC_VECTOR ( 63 downto 34 );
  signal NLW_noc_ai_mm_S_AXI_AWUSER_UNCONNECTED : STD_LOGIC_VECTOR ( 17 downto 2 );
  signal NLW_noc_ai_mm_S_AXI_BUSER_UNCONNECTED : STD_LOGIC_VECTOR ( 15 downto 2 );
  signal NLW_noc_ai_mm_S_AXI_TDEST_UNCONNECTED : STD_LOGIC_VECTOR ( 9 downto 0 );
  signal NLW_noc_ai_mm_S_AXI_WID_UNCONNECTED : STD_LOGIC_VECTOR ( 5 downto 0 );
  attribute BOX_TYPE : string;
  attribute BOX_TYPE of noc_ai_mm : label is "PRIMITIVE";
  attribute DONT_TOUCH_boolean : boolean;
  attribute DONT_TOUCH_boolean of noc_ai_mm : label is std.standard.true;
begin
  m_axi_aclk <= \<const0>\;
  m_axi_araddr(63) <= \<const0>\;
  m_axi_araddr(62) <= \<const0>\;
  m_axi_araddr(61) <= \<const0>\;
  m_axi_araddr(60) <= \<const0>\;
  m_axi_araddr(59) <= \<const0>\;
  m_axi_araddr(58) <= \<const0>\;
  m_axi_araddr(57) <= \<const0>\;
  m_axi_araddr(56) <= \<const0>\;
  m_axi_araddr(55) <= \<const0>\;
  m_axi_araddr(54) <= \<const0>\;
  m_axi_araddr(53) <= \<const0>\;
  m_axi_araddr(52) <= \<const0>\;
  m_axi_araddr(51) <= \<const0>\;
  m_axi_araddr(50) <= \<const0>\;
  m_axi_araddr(49) <= \<const0>\;
  m_axi_araddr(48) <= \<const0>\;
  m_axi_araddr(47) <= \<const0>\;
  m_axi_araddr(46) <= \<const0>\;
  m_axi_araddr(45) <= \<const0>\;
  m_axi_araddr(44) <= \<const0>\;
  m_axi_araddr(43) <= \<const0>\;
  m_axi_araddr(42) <= \<const0>\;
  m_axi_araddr(41) <= \<const0>\;
  m_axi_araddr(40) <= \<const0>\;
  m_axi_araddr(39) <= \<const0>\;
  m_axi_araddr(38) <= \<const0>\;
  m_axi_araddr(37) <= \<const0>\;
  m_axi_araddr(36) <= \<const0>\;
  m_axi_araddr(35) <= \<const0>\;
  m_axi_araddr(34) <= \<const0>\;
  m_axi_araddr(33) <= \<const0>\;
  m_axi_araddr(32) <= \<const0>\;
  m_axi_araddr(31) <= \<const0>\;
  m_axi_araddr(30) <= \<const0>\;
  m_axi_araddr(29) <= \<const0>\;
  m_axi_araddr(28) <= \<const0>\;
  m_axi_araddr(27) <= \<const0>\;
  m_axi_araddr(26) <= \<const0>\;
  m_axi_araddr(25) <= \<const0>\;
  m_axi_araddr(24) <= \<const0>\;
  m_axi_araddr(23) <= \<const0>\;
  m_axi_araddr(22) <= \<const0>\;
  m_axi_araddr(21) <= \<const0>\;
  m_axi_araddr(20) <= \<const0>\;
  m_axi_araddr(19) <= \<const0>\;
  m_axi_araddr(18) <= \<const0>\;
  m_axi_araddr(17) <= \<const0>\;
  m_axi_araddr(16) <= \<const0>\;
  m_axi_araddr(15) <= \<const0>\;
  m_axi_araddr(14) <= \<const0>\;
  m_axi_araddr(13) <= \<const0>\;
  m_axi_araddr(12) <= \<const0>\;
  m_axi_araddr(11) <= \<const0>\;
  m_axi_araddr(10) <= \<const0>\;
  m_axi_araddr(9) <= \<const0>\;
  m_axi_araddr(8) <= \<const0>\;
  m_axi_araddr(7) <= \<const0>\;
  m_axi_araddr(6) <= \<const0>\;
  m_axi_araddr(5) <= \<const0>\;
  m_axi_araddr(4) <= \<const0>\;
  m_axi_araddr(3) <= \<const0>\;
  m_axi_araddr(2) <= \<const0>\;
  m_axi_araddr(1) <= \<const0>\;
  m_axi_araddr(0) <= \<const0>\;
  m_axi_arburst(1) <= \<const0>\;
  m_axi_arburst(0) <= \<const0>\;
  m_axi_arcache(3) <= \<const0>\;
  m_axi_arcache(2) <= \<const0>\;
  m_axi_arcache(1) <= \<const0>\;
  m_axi_arcache(0) <= \<const0>\;
  m_axi_arid(15) <= \<const0>\;
  m_axi_arid(14) <= \<const0>\;
  m_axi_arid(13) <= \<const0>\;
  m_axi_arid(12) <= \<const0>\;
  m_axi_arid(11) <= \<const0>\;
  m_axi_arid(10) <= \<const0>\;
  m_axi_arid(9) <= \<const0>\;
  m_axi_arid(8) <= \<const0>\;
  m_axi_arid(7) <= \<const0>\;
  m_axi_arid(6) <= \<const0>\;
  m_axi_arid(5) <= \<const0>\;
  m_axi_arid(4) <= \<const0>\;
  m_axi_arid(3) <= \<const0>\;
  m_axi_arid(2) <= \<const0>\;
  m_axi_arid(1) <= \<const0>\;
  m_axi_arid(0) <= \<const0>\;
  m_axi_arlen(7) <= \<const0>\;
  m_axi_arlen(6) <= \<const0>\;
  m_axi_arlen(5) <= \<const0>\;
  m_axi_arlen(4) <= \<const0>\;
  m_axi_arlen(3) <= \<const0>\;
  m_axi_arlen(2) <= \<const0>\;
  m_axi_arlen(1) <= \<const0>\;
  m_axi_arlen(0) <= \<const0>\;
  m_axi_arlock <= \<const0>\;
  m_axi_arprot(2) <= \<const0>\;
  m_axi_arprot(1) <= \<const0>\;
  m_axi_arprot(0) <= \<const0>\;
  m_axi_arqos(3) <= \<const0>\;
  m_axi_arqos(2) <= \<const0>\;
  m_axi_arqos(1) <= \<const0>\;
  m_axi_arqos(0) <= \<const0>\;
  m_axi_arregion(3) <= \<const0>\;
  m_axi_arregion(2) <= \<const0>\;
  m_axi_arregion(1) <= \<const0>\;
  m_axi_arregion(0) <= \<const0>\;
  m_axi_arsize(2) <= \<const0>\;
  m_axi_arsize(1) <= \<const0>\;
  m_axi_arsize(0) <= \<const0>\;
  m_axi_aruser(0) <= \<const0>\;
  m_axi_arvalid <= \<const0>\;
  m_axi_awaddr(63) <= \<const0>\;
  m_axi_awaddr(62) <= \<const0>\;
  m_axi_awaddr(61) <= \<const0>\;
  m_axi_awaddr(60) <= \<const0>\;
  m_axi_awaddr(59) <= \<const0>\;
  m_axi_awaddr(58) <= \<const0>\;
  m_axi_awaddr(57) <= \<const0>\;
  m_axi_awaddr(56) <= \<const0>\;
  m_axi_awaddr(55) <= \<const0>\;
  m_axi_awaddr(54) <= \<const0>\;
  m_axi_awaddr(53) <= \<const0>\;
  m_axi_awaddr(52) <= \<const0>\;
  m_axi_awaddr(51) <= \<const0>\;
  m_axi_awaddr(50) <= \<const0>\;
  m_axi_awaddr(49) <= \<const0>\;
  m_axi_awaddr(48) <= \<const0>\;
  m_axi_awaddr(47) <= \<const0>\;
  m_axi_awaddr(46) <= \<const0>\;
  m_axi_awaddr(45) <= \<const0>\;
  m_axi_awaddr(44) <= \<const0>\;
  m_axi_awaddr(43) <= \<const0>\;
  m_axi_awaddr(42) <= \<const0>\;
  m_axi_awaddr(41) <= \<const0>\;
  m_axi_awaddr(40) <= \<const0>\;
  m_axi_awaddr(39) <= \<const0>\;
  m_axi_awaddr(38) <= \<const0>\;
  m_axi_awaddr(37) <= \<const0>\;
  m_axi_awaddr(36) <= \<const0>\;
  m_axi_awaddr(35) <= \<const0>\;
  m_axi_awaddr(34) <= \<const0>\;
  m_axi_awaddr(33) <= \<const0>\;
  m_axi_awaddr(32) <= \<const0>\;
  m_axi_awaddr(31) <= \<const0>\;
  m_axi_awaddr(30) <= \<const0>\;
  m_axi_awaddr(29) <= \<const0>\;
  m_axi_awaddr(28) <= \<const0>\;
  m_axi_awaddr(27) <= \<const0>\;
  m_axi_awaddr(26) <= \<const0>\;
  m_axi_awaddr(25) <= \<const0>\;
  m_axi_awaddr(24) <= \<const0>\;
  m_axi_awaddr(23) <= \<const0>\;
  m_axi_awaddr(22) <= \<const0>\;
  m_axi_awaddr(21) <= \<const0>\;
  m_axi_awaddr(20) <= \<const0>\;
  m_axi_awaddr(19) <= \<const0>\;
  m_axi_awaddr(18) <= \<const0>\;
  m_axi_awaddr(17) <= \<const0>\;
  m_axi_awaddr(16) <= \<const0>\;
  m_axi_awaddr(15) <= \<const0>\;
  m_axi_awaddr(14) <= \<const0>\;
  m_axi_awaddr(13) <= \<const0>\;
  m_axi_awaddr(12) <= \<const0>\;
  m_axi_awaddr(11) <= \<const0>\;
  m_axi_awaddr(10) <= \<const0>\;
  m_axi_awaddr(9) <= \<const0>\;
  m_axi_awaddr(8) <= \<const0>\;
  m_axi_awaddr(7) <= \<const0>\;
  m_axi_awaddr(6) <= \<const0>\;
  m_axi_awaddr(5) <= \<const0>\;
  m_axi_awaddr(4) <= \<const0>\;
  m_axi_awaddr(3) <= \<const0>\;
  m_axi_awaddr(2) <= \<const0>\;
  m_axi_awaddr(1) <= \<const0>\;
  m_axi_awaddr(0) <= \<const0>\;
  m_axi_awburst(1) <= \<const0>\;
  m_axi_awburst(0) <= \<const0>\;
  m_axi_awcache(3) <= \<const0>\;
  m_axi_awcache(2) <= \<const0>\;
  m_axi_awcache(1) <= \<const0>\;
  m_axi_awcache(0) <= \<const0>\;
  m_axi_awid(15) <= \<const0>\;
  m_axi_awid(14) <= \<const0>\;
  m_axi_awid(13) <= \<const0>\;
  m_axi_awid(12) <= \<const0>\;
  m_axi_awid(11) <= \<const0>\;
  m_axi_awid(10) <= \<const0>\;
  m_axi_awid(9) <= \<const0>\;
  m_axi_awid(8) <= \<const0>\;
  m_axi_awid(7) <= \<const0>\;
  m_axi_awid(6) <= \<const0>\;
  m_axi_awid(5) <= \<const0>\;
  m_axi_awid(4) <= \<const0>\;
  m_axi_awid(3) <= \<const0>\;
  m_axi_awid(2) <= \<const0>\;
  m_axi_awid(1) <= \<const0>\;
  m_axi_awid(0) <= \<const0>\;
  m_axi_awlen(7) <= \<const0>\;
  m_axi_awlen(6) <= \<const0>\;
  m_axi_awlen(5) <= \<const0>\;
  m_axi_awlen(4) <= \<const0>\;
  m_axi_awlen(3) <= \<const0>\;
  m_axi_awlen(2) <= \<const0>\;
  m_axi_awlen(1) <= \<const0>\;
  m_axi_awlen(0) <= \<const0>\;
  m_axi_awlock <= \<const0>\;
  m_axi_awprot(2) <= \<const0>\;
  m_axi_awprot(1) <= \<const0>\;
  m_axi_awprot(0) <= \<const0>\;
  m_axi_awqos(3) <= \<const0>\;
  m_axi_awqos(2) <= \<const0>\;
  m_axi_awqos(1) <= \<const0>\;
  m_axi_awqos(0) <= \<const0>\;
  m_axi_awregion(3) <= \<const0>\;
  m_axi_awregion(2) <= \<const0>\;
  m_axi_awregion(1) <= \<const0>\;
  m_axi_awregion(0) <= \<const0>\;
  m_axi_awsize(2) <= \<const0>\;
  m_axi_awsize(1) <= \<const0>\;
  m_axi_awsize(0) <= \<const0>\;
  m_axi_awuser(0) <= \<const0>\;
  m_axi_awvalid <= \<const0>\;
  m_axi_bready <= \<const0>\;
  m_axi_destid_rd(11) <= \<const0>\;
  m_axi_destid_rd(10) <= \<const0>\;
  m_axi_destid_rd(9) <= \<const0>\;
  m_axi_destid_rd(8) <= \<const0>\;
  m_axi_destid_rd(7) <= \<const0>\;
  m_axi_destid_rd(6) <= \<const0>\;
  m_axi_destid_rd(5) <= \<const0>\;
  m_axi_destid_rd(4) <= \<const0>\;
  m_axi_destid_rd(3) <= \<const0>\;
  m_axi_destid_rd(2) <= \<const0>\;
  m_axi_destid_rd(1) <= \<const0>\;
  m_axi_destid_rd(0) <= \<const0>\;
  m_axi_destid_wr(11) <= \<const0>\;
  m_axi_destid_wr(10) <= \<const0>\;
  m_axi_destid_wr(9) <= \<const0>\;
  m_axi_destid_wr(8) <= \<const0>\;
  m_axi_destid_wr(7) <= \<const0>\;
  m_axi_destid_wr(6) <= \<const0>\;
  m_axi_destid_wr(5) <= \<const0>\;
  m_axi_destid_wr(4) <= \<const0>\;
  m_axi_destid_wr(3) <= \<const0>\;
  m_axi_destid_wr(2) <= \<const0>\;
  m_axi_destid_wr(1) <= \<const0>\;
  m_axi_destid_wr(0) <= \<const0>\;
  m_axi_destmode_rd <= \<const0>\;
  m_axi_destmode_wr <= \<const0>\;
  m_axi_rready <= \<const0>\;
  m_axi_wdata(127) <= \<const0>\;
  m_axi_wdata(126) <= \<const0>\;
  m_axi_wdata(125) <= \<const0>\;
  m_axi_wdata(124) <= \<const0>\;
  m_axi_wdata(123) <= \<const0>\;
  m_axi_wdata(122) <= \<const0>\;
  m_axi_wdata(121) <= \<const0>\;
  m_axi_wdata(120) <= \<const0>\;
  m_axi_wdata(119) <= \<const0>\;
  m_axi_wdata(118) <= \<const0>\;
  m_axi_wdata(117) <= \<const0>\;
  m_axi_wdata(116) <= \<const0>\;
  m_axi_wdata(115) <= \<const0>\;
  m_axi_wdata(114) <= \<const0>\;
  m_axi_wdata(113) <= \<const0>\;
  m_axi_wdata(112) <= \<const0>\;
  m_axi_wdata(111) <= \<const0>\;
  m_axi_wdata(110) <= \<const0>\;
  m_axi_wdata(109) <= \<const0>\;
  m_axi_wdata(108) <= \<const0>\;
  m_axi_wdata(107) <= \<const0>\;
  m_axi_wdata(106) <= \<const0>\;
  m_axi_wdata(105) <= \<const0>\;
  m_axi_wdata(104) <= \<const0>\;
  m_axi_wdata(103) <= \<const0>\;
  m_axi_wdata(102) <= \<const0>\;
  m_axi_wdata(101) <= \<const0>\;
  m_axi_wdata(100) <= \<const0>\;
  m_axi_wdata(99) <= \<const0>\;
  m_axi_wdata(98) <= \<const0>\;
  m_axi_wdata(97) <= \<const0>\;
  m_axi_wdata(96) <= \<const0>\;
  m_axi_wdata(95) <= \<const0>\;
  m_axi_wdata(94) <= \<const0>\;
  m_axi_wdata(93) <= \<const0>\;
  m_axi_wdata(92) <= \<const0>\;
  m_axi_wdata(91) <= \<const0>\;
  m_axi_wdata(90) <= \<const0>\;
  m_axi_wdata(89) <= \<const0>\;
  m_axi_wdata(88) <= \<const0>\;
  m_axi_wdata(87) <= \<const0>\;
  m_axi_wdata(86) <= \<const0>\;
  m_axi_wdata(85) <= \<const0>\;
  m_axi_wdata(84) <= \<const0>\;
  m_axi_wdata(83) <= \<const0>\;
  m_axi_wdata(82) <= \<const0>\;
  m_axi_wdata(81) <= \<const0>\;
  m_axi_wdata(80) <= \<const0>\;
  m_axi_wdata(79) <= \<const0>\;
  m_axi_wdata(78) <= \<const0>\;
  m_axi_wdata(77) <= \<const0>\;
  m_axi_wdata(76) <= \<const0>\;
  m_axi_wdata(75) <= \<const0>\;
  m_axi_wdata(74) <= \<const0>\;
  m_axi_wdata(73) <= \<const0>\;
  m_axi_wdata(72) <= \<const0>\;
  m_axi_wdata(71) <= \<const0>\;
  m_axi_wdata(70) <= \<const0>\;
  m_axi_wdata(69) <= \<const0>\;
  m_axi_wdata(68) <= \<const0>\;
  m_axi_wdata(67) <= \<const0>\;
  m_axi_wdata(66) <= \<const0>\;
  m_axi_wdata(65) <= \<const0>\;
  m_axi_wdata(64) <= \<const0>\;
  m_axi_wdata(63) <= \<const0>\;
  m_axi_wdata(62) <= \<const0>\;
  m_axi_wdata(61) <= \<const0>\;
  m_axi_wdata(60) <= \<const0>\;
  m_axi_wdata(59) <= \<const0>\;
  m_axi_wdata(58) <= \<const0>\;
  m_axi_wdata(57) <= \<const0>\;
  m_axi_wdata(56) <= \<const0>\;
  m_axi_wdata(55) <= \<const0>\;
  m_axi_wdata(54) <= \<const0>\;
  m_axi_wdata(53) <= \<const0>\;
  m_axi_wdata(52) <= \<const0>\;
  m_axi_wdata(51) <= \<const0>\;
  m_axi_wdata(50) <= \<const0>\;
  m_axi_wdata(49) <= \<const0>\;
  m_axi_wdata(48) <= \<const0>\;
  m_axi_wdata(47) <= \<const0>\;
  m_axi_wdata(46) <= \<const0>\;
  m_axi_wdata(45) <= \<const0>\;
  m_axi_wdata(44) <= \<const0>\;
  m_axi_wdata(43) <= \<const0>\;
  m_axi_wdata(42) <= \<const0>\;
  m_axi_wdata(41) <= \<const0>\;
  m_axi_wdata(40) <= \<const0>\;
  m_axi_wdata(39) <= \<const0>\;
  m_axi_wdata(38) <= \<const0>\;
  m_axi_wdata(37) <= \<const0>\;
  m_axi_wdata(36) <= \<const0>\;
  m_axi_wdata(35) <= \<const0>\;
  m_axi_wdata(34) <= \<const0>\;
  m_axi_wdata(33) <= \<const0>\;
  m_axi_wdata(32) <= \<const0>\;
  m_axi_wdata(31) <= \<const0>\;
  m_axi_wdata(30) <= \<const0>\;
  m_axi_wdata(29) <= \<const0>\;
  m_axi_wdata(28) <= \<const0>\;
  m_axi_wdata(27) <= \<const0>\;
  m_axi_wdata(26) <= \<const0>\;
  m_axi_wdata(25) <= \<const0>\;
  m_axi_wdata(24) <= \<const0>\;
  m_axi_wdata(23) <= \<const0>\;
  m_axi_wdata(22) <= \<const0>\;
  m_axi_wdata(21) <= \<const0>\;
  m_axi_wdata(20) <= \<const0>\;
  m_axi_wdata(19) <= \<const0>\;
  m_axi_wdata(18) <= \<const0>\;
  m_axi_wdata(17) <= \<const0>\;
  m_axi_wdata(16) <= \<const0>\;
  m_axi_wdata(15) <= \<const0>\;
  m_axi_wdata(14) <= \<const0>\;
  m_axi_wdata(13) <= \<const0>\;
  m_axi_wdata(12) <= \<const0>\;
  m_axi_wdata(11) <= \<const0>\;
  m_axi_wdata(10) <= \<const0>\;
  m_axi_wdata(9) <= \<const0>\;
  m_axi_wdata(8) <= \<const0>\;
  m_axi_wdata(7) <= \<const0>\;
  m_axi_wdata(6) <= \<const0>\;
  m_axi_wdata(5) <= \<const0>\;
  m_axi_wdata(4) <= \<const0>\;
  m_axi_wdata(3) <= \<const0>\;
  m_axi_wdata(2) <= \<const0>\;
  m_axi_wdata(1) <= \<const0>\;
  m_axi_wdata(0) <= \<const0>\;
  m_axi_wlast <= \<const0>\;
  m_axi_wstrb(15) <= \<const0>\;
  m_axi_wstrb(14) <= \<const0>\;
  m_axi_wstrb(13) <= \<const0>\;
  m_axi_wstrb(12) <= \<const0>\;
  m_axi_wstrb(11) <= \<const0>\;
  m_axi_wstrb(10) <= \<const0>\;
  m_axi_wstrb(9) <= \<const0>\;
  m_axi_wstrb(8) <= \<const0>\;
  m_axi_wstrb(7) <= \<const0>\;
  m_axi_wstrb(6) <= \<const0>\;
  m_axi_wstrb(5) <= \<const0>\;
  m_axi_wstrb(4) <= \<const0>\;
  m_axi_wstrb(3) <= \<const0>\;
  m_axi_wstrb(2) <= \<const0>\;
  m_axi_wstrb(1) <= \<const0>\;
  m_axi_wstrb(0) <= \<const0>\;
  m_axi_wuser(0) <= \<const0>\;
  m_axi_wvalid <= \<const0>\;
  m_axis_aclk <= \<const0>\;
  m_axis_tdata(127) <= \<const0>\;
  m_axis_tdata(126) <= \<const0>\;
  m_axis_tdata(125) <= \<const0>\;
  m_axis_tdata(124) <= \<const0>\;
  m_axis_tdata(123) <= \<const0>\;
  m_axis_tdata(122) <= \<const0>\;
  m_axis_tdata(121) <= \<const0>\;
  m_axis_tdata(120) <= \<const0>\;
  m_axis_tdata(119) <= \<const0>\;
  m_axis_tdata(118) <= \<const0>\;
  m_axis_tdata(117) <= \<const0>\;
  m_axis_tdata(116) <= \<const0>\;
  m_axis_tdata(115) <= \<const0>\;
  m_axis_tdata(114) <= \<const0>\;
  m_axis_tdata(113) <= \<const0>\;
  m_axis_tdata(112) <= \<const0>\;
  m_axis_tdata(111) <= \<const0>\;
  m_axis_tdata(110) <= \<const0>\;
  m_axis_tdata(109) <= \<const0>\;
  m_axis_tdata(108) <= \<const0>\;
  m_axis_tdata(107) <= \<const0>\;
  m_axis_tdata(106) <= \<const0>\;
  m_axis_tdata(105) <= \<const0>\;
  m_axis_tdata(104) <= \<const0>\;
  m_axis_tdata(103) <= \<const0>\;
  m_axis_tdata(102) <= \<const0>\;
  m_axis_tdata(101) <= \<const0>\;
  m_axis_tdata(100) <= \<const0>\;
  m_axis_tdata(99) <= \<const0>\;
  m_axis_tdata(98) <= \<const0>\;
  m_axis_tdata(97) <= \<const0>\;
  m_axis_tdata(96) <= \<const0>\;
  m_axis_tdata(95) <= \<const0>\;
  m_axis_tdata(94) <= \<const0>\;
  m_axis_tdata(93) <= \<const0>\;
  m_axis_tdata(92) <= \<const0>\;
  m_axis_tdata(91) <= \<const0>\;
  m_axis_tdata(90) <= \<const0>\;
  m_axis_tdata(89) <= \<const0>\;
  m_axis_tdata(88) <= \<const0>\;
  m_axis_tdata(87) <= \<const0>\;
  m_axis_tdata(86) <= \<const0>\;
  m_axis_tdata(85) <= \<const0>\;
  m_axis_tdata(84) <= \<const0>\;
  m_axis_tdata(83) <= \<const0>\;
  m_axis_tdata(82) <= \<const0>\;
  m_axis_tdata(81) <= \<const0>\;
  m_axis_tdata(80) <= \<const0>\;
  m_axis_tdata(79) <= \<const0>\;
  m_axis_tdata(78) <= \<const0>\;
  m_axis_tdata(77) <= \<const0>\;
  m_axis_tdata(76) <= \<const0>\;
  m_axis_tdata(75) <= \<const0>\;
  m_axis_tdata(74) <= \<const0>\;
  m_axis_tdata(73) <= \<const0>\;
  m_axis_tdata(72) <= \<const0>\;
  m_axis_tdata(71) <= \<const0>\;
  m_axis_tdata(70) <= \<const0>\;
  m_axis_tdata(69) <= \<const0>\;
  m_axis_tdata(68) <= \<const0>\;
  m_axis_tdata(67) <= \<const0>\;
  m_axis_tdata(66) <= \<const0>\;
  m_axis_tdata(65) <= \<const0>\;
  m_axis_tdata(64) <= \<const0>\;
  m_axis_tdata(63) <= \<const0>\;
  m_axis_tdata(62) <= \<const0>\;
  m_axis_tdata(61) <= \<const0>\;
  m_axis_tdata(60) <= \<const0>\;
  m_axis_tdata(59) <= \<const0>\;
  m_axis_tdata(58) <= \<const0>\;
  m_axis_tdata(57) <= \<const0>\;
  m_axis_tdata(56) <= \<const0>\;
  m_axis_tdata(55) <= \<const0>\;
  m_axis_tdata(54) <= \<const0>\;
  m_axis_tdata(53) <= \<const0>\;
  m_axis_tdata(52) <= \<const0>\;
  m_axis_tdata(51) <= \<const0>\;
  m_axis_tdata(50) <= \<const0>\;
  m_axis_tdata(49) <= \<const0>\;
  m_axis_tdata(48) <= \<const0>\;
  m_axis_tdata(47) <= \<const0>\;
  m_axis_tdata(46) <= \<const0>\;
  m_axis_tdata(45) <= \<const0>\;
  m_axis_tdata(44) <= \<const0>\;
  m_axis_tdata(43) <= \<const0>\;
  m_axis_tdata(42) <= \<const0>\;
  m_axis_tdata(41) <= \<const0>\;
  m_axis_tdata(40) <= \<const0>\;
  m_axis_tdata(39) <= \<const0>\;
  m_axis_tdata(38) <= \<const0>\;
  m_axis_tdata(37) <= \<const0>\;
  m_axis_tdata(36) <= \<const0>\;
  m_axis_tdata(35) <= \<const0>\;
  m_axis_tdata(34) <= \<const0>\;
  m_axis_tdata(33) <= \<const0>\;
  m_axis_tdata(32) <= \<const0>\;
  m_axis_tdata(31) <= \<const0>\;
  m_axis_tdata(30) <= \<const0>\;
  m_axis_tdata(29) <= \<const0>\;
  m_axis_tdata(28) <= \<const0>\;
  m_axis_tdata(27) <= \<const0>\;
  m_axis_tdata(26) <= \<const0>\;
  m_axis_tdata(25) <= \<const0>\;
  m_axis_tdata(24) <= \<const0>\;
  m_axis_tdata(23) <= \<const0>\;
  m_axis_tdata(22) <= \<const0>\;
  m_axis_tdata(21) <= \<const0>\;
  m_axis_tdata(20) <= \<const0>\;
  m_axis_tdata(19) <= \<const0>\;
  m_axis_tdata(18) <= \<const0>\;
  m_axis_tdata(17) <= \<const0>\;
  m_axis_tdata(16) <= \<const0>\;
  m_axis_tdata(15) <= \<const0>\;
  m_axis_tdata(14) <= \<const0>\;
  m_axis_tdata(13) <= \<const0>\;
  m_axis_tdata(12) <= \<const0>\;
  m_axis_tdata(11) <= \<const0>\;
  m_axis_tdata(10) <= \<const0>\;
  m_axis_tdata(9) <= \<const0>\;
  m_axis_tdata(8) <= \<const0>\;
  m_axis_tdata(7) <= \<const0>\;
  m_axis_tdata(6) <= \<const0>\;
  m_axis_tdata(5) <= \<const0>\;
  m_axis_tdata(4) <= \<const0>\;
  m_axis_tdata(3) <= \<const0>\;
  m_axis_tdata(2) <= \<const0>\;
  m_axis_tdata(1) <= \<const0>\;
  m_axis_tdata(0) <= \<const0>\;
  m_axis_tdest(9) <= \<const0>\;
  m_axis_tdest(8) <= \<const0>\;
  m_axis_tdest(7) <= \<const0>\;
  m_axis_tdest(6) <= \<const0>\;
  m_axis_tdest(5) <= \<const0>\;
  m_axis_tdest(4) <= \<const0>\;
  m_axis_tdest(3) <= \<const0>\;
  m_axis_tdest(2) <= \<const0>\;
  m_axis_tdest(1) <= \<const0>\;
  m_axis_tdest(0) <= \<const0>\;
  m_axis_tid(1) <= \<const0>\;
  m_axis_tid(0) <= \<const0>\;
  m_axis_tkeep(15) <= \<const0>\;
  m_axis_tkeep(14) <= \<const0>\;
  m_axis_tkeep(13) <= \<const0>\;
  m_axis_tkeep(12) <= \<const0>\;
  m_axis_tkeep(11) <= \<const0>\;
  m_axis_tkeep(10) <= \<const0>\;
  m_axis_tkeep(9) <= \<const0>\;
  m_axis_tkeep(8) <= \<const0>\;
  m_axis_tkeep(7) <= \<const0>\;
  m_axis_tkeep(6) <= \<const0>\;
  m_axis_tkeep(5) <= \<const0>\;
  m_axis_tkeep(4) <= \<const0>\;
  m_axis_tkeep(3) <= \<const0>\;
  m_axis_tkeep(2) <= \<const0>\;
  m_axis_tkeep(1) <= \<const0>\;
  m_axis_tkeep(0) <= \<const0>\;
  m_axis_tlast <= \<const0>\;
  m_axis_tvalid <= \<const0>\;
  s_axi_bid(15) <= \<const0>\;
  s_axi_bid(14) <= \<const0>\;
  s_axi_bid(13) <= \<const0>\;
  s_axi_bid(12) <= \<const0>\;
  s_axi_bid(11) <= \<const0>\;
  s_axi_bid(10) <= \<const0>\;
  s_axi_bid(9) <= \<const0>\;
  s_axi_bid(8) <= \<const0>\;
  s_axi_bid(7) <= \<const0>\;
  s_axi_bid(6) <= \<const0>\;
  s_axi_bid(5) <= \<const0>\;
  s_axi_bid(4) <= \<const0>\;
  s_axi_bid(3) <= \<const0>\;
  s_axi_bid(2) <= \<const0>\;
  s_axi_bid(1 downto 0) <= \^s_axi_bid\(1 downto 0);
  s_axi_rid(15) <= \<const0>\;
  s_axi_rid(14) <= \<const0>\;
  s_axi_rid(13) <= \<const0>\;
  s_axi_rid(12) <= \<const0>\;
  s_axi_rid(11) <= \<const0>\;
  s_axi_rid(10) <= \<const0>\;
  s_axi_rid(9) <= \<const0>\;
  s_axi_rid(8) <= \<const0>\;
  s_axi_rid(7) <= \<const0>\;
  s_axi_rid(6) <= \<const0>\;
  s_axi_rid(5) <= \<const0>\;
  s_axi_rid(4) <= \<const0>\;
  s_axi_rid(3) <= \<const0>\;
  s_axi_rid(2) <= \<const0>\;
  s_axi_rid(1 downto 0) <= \^s_axi_rid\(1 downto 0);
  s_axis_aclk <= \<const0>\;
  s_axis_tready <= \<const0>\;
GND: unisim.vcomponents.GND
     port map (
      G => \<const0>\
    );
noc_ai_mm: unisim.vcomponents.AIE_NOC_S_AXI
     port map (
      FROM_NOC => NLW_noc_ai_mm_FROM_NOC_UNCONNECTED,
      S_AXI_ACLK => s_axi_aclk,
      S_AXI_ARADDR(63 downto 34) => NLW_noc_ai_mm_S_AXI_ARADDR_UNCONNECTED(63 downto 34),
      S_AXI_ARADDR(33 downto 0) => s_axi_araddr(33 downto 0),
      S_AXI_ARBURST(1 downto 0) => s_axi_arburst(1 downto 0),
      S_AXI_ARCACHE(3 downto 0) => s_axi_arcache(3 downto 0),
      S_AXI_ARID(1 downto 0) => s_axi_arid(1 downto 0),
      S_AXI_ARLEN(7 downto 0) => s_axi_arlen(7 downto 0),
      S_AXI_ARLOCK(0) => s_axi_arlock,
      S_AXI_ARPROT(2 downto 0) => s_axi_arprot(2 downto 0),
      S_AXI_ARQOS(3 downto 0) => s_axi_arqos(3 downto 0),
      S_AXI_ARREADY => s_axi_arready,
      S_AXI_ARREGION(3 downto 0) => s_axi_arregion(3 downto 0),
      S_AXI_ARSIZE(2 downto 0) => s_axi_arsize(2 downto 0),
      S_AXI_ARUSER(17 downto 2) => NLW_noc_ai_mm_S_AXI_ARUSER_UNCONNECTED(17 downto 2),
      S_AXI_ARUSER(1) => s_axi_aruser(0),
      S_AXI_ARUSER(0) => s_axi_aruser(1),
      S_AXI_ARVALID => s_axi_arvalid,
      S_AXI_AWADDR(63 downto 34) => NLW_noc_ai_mm_S_AXI_AWADDR_UNCONNECTED(63 downto 34),
      S_AXI_AWADDR(33 downto 0) => s_axi_awaddr(33 downto 0),
      S_AXI_AWBURST(1 downto 0) => s_axi_awburst(1 downto 0),
      S_AXI_AWCACHE(3 downto 0) => s_axi_awcache(3 downto 0),
      S_AXI_AWID(1 downto 0) => s_axi_awid(1 downto 0),
      S_AXI_AWLEN(7 downto 0) => s_axi_awlen(7 downto 0),
      S_AXI_AWLOCK(0) => s_axi_awlock,
      S_AXI_AWPROT(2 downto 0) => s_axi_awprot(2 downto 0),
      S_AXI_AWQOS(3 downto 0) => s_axi_awqos(3 downto 0),
      S_AXI_AWREADY => s_axi_awready,
      S_AXI_AWREGION(3 downto 0) => s_axi_awregion(3 downto 0),
      S_AXI_AWSIZE(2 downto 0) => s_axi_awsize(2 downto 0),
      S_AXI_AWUSER(17 downto 2) => NLW_noc_ai_mm_S_AXI_AWUSER_UNCONNECTED(17 downto 2),
      S_AXI_AWUSER(1) => s_axi_awuser(0),
      S_AXI_AWUSER(0) => s_axi_awuser(1),
      S_AXI_AWVALID => s_axi_awvalid,
      S_AXI_BID(1 downto 0) => \^s_axi_bid\(1 downto 0),
      S_AXI_BREADY => s_axi_bready,
      S_AXI_BRESP(1 downto 0) => s_axi_bresp(1 downto 0),
      S_AXI_BUSER(15 downto 2) => NLW_noc_ai_mm_S_AXI_BUSER_UNCONNECTED(15 downto 2),
      S_AXI_BUSER(1) => s_axi_buser(0),
      S_AXI_BUSER(0) => s_axi_buser(1),
      S_AXI_BVALID => s_axi_bvalid,
      S_AXI_RDATA(127 downto 0) => s_axi_rdata(127 downto 0),
      S_AXI_RID(1 downto 0) => \^s_axi_rid\(1 downto 0),
      S_AXI_RLAST(0) => s_axi_rlast,
      S_AXI_RREADY => s_axi_rready,
      S_AXI_RRESP(1 downto 0) => s_axi_rresp(1 downto 0),
      S_AXI_RUSER(16 downto 0) => s_axi_ruser(16 downto 0),
      S_AXI_RVALID => s_axi_rvalid,
      S_AXI_TDEST(9 downto 0) => NLW_noc_ai_mm_S_AXI_TDEST_UNCONNECTED(9 downto 0),
      S_AXI_WDATA(127 downto 0) => s_axi_wdata(127 downto 0),
      S_AXI_WID(5 downto 0) => NLW_noc_ai_mm_S_AXI_WID_UNCONNECTED(5 downto 0),
      S_AXI_WLAST(0) => s_axi_wlast,
      S_AXI_WREADY => s_axi_wready,
      S_AXI_WSTRB(15 downto 0) => s_axi_wstrb(15 downto 0),
      S_AXI_WUSER(16 downto 0) => s_axi_wuser(16 downto 0),
      S_AXI_WVALID => s_axi_wvalid,
      TO_AIE_2 => to_aie_2,
      TO_AIE_3 => to_aie_3,
      TO_AIE_6 => to_aie_6,
      TO_AIE_7 => to_aie_7
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity ulp_inst_0_bd_9d54_noc_ai_mm_0_0 is
  port (
    s_axi_aclk : out STD_LOGIC;
    to_aie_2 : out STD_LOGIC;
    to_aie_3 : out STD_LOGIC;
    to_aie_6 : out STD_LOGIC;
    to_aie_7 : out STD_LOGIC;
    s_axi_awid : in STD_LOGIC_VECTOR ( 15 downto 0 );
    s_axi_awaddr : in STD_LOGIC_VECTOR ( 33 downto 0 );
    s_axi_awlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    s_axi_awsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_awburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_awlock : in STD_LOGIC;
    s_axi_awcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_awregion : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_awqos : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_awvalid : in STD_LOGIC;
    s_axi_awready : out STD_LOGIC;
    s_axi_wdata : in STD_LOGIC_VECTOR ( 127 downto 0 );
    s_axi_wstrb : in STD_LOGIC_VECTOR ( 15 downto 0 );
    s_axi_wlast : in STD_LOGIC;
    s_axi_wuser : in STD_LOGIC_VECTOR ( 16 downto 0 );
    s_axi_wvalid : in STD_LOGIC;
    s_axi_wready : out STD_LOGIC;
    s_axi_bid : out STD_LOGIC_VECTOR ( 15 downto 0 );
    s_axi_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_bvalid : out STD_LOGIC;
    s_axi_bready : in STD_LOGIC;
    s_axi_arid : in STD_LOGIC_VECTOR ( 15 downto 0 );
    s_axi_araddr : in STD_LOGIC_VECTOR ( 33 downto 0 );
    s_axi_arlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    s_axi_arsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_arburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_arlock : in STD_LOGIC;
    s_axi_arcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_arregion : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_arqos : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_arvalid : in STD_LOGIC;
    s_axi_arready : out STD_LOGIC;
    s_axi_rid : out STD_LOGIC_VECTOR ( 15 downto 0 );
    s_axi_rdata : out STD_LOGIC_VECTOR ( 127 downto 0 );
    s_axi_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_rlast : out STD_LOGIC;
    s_axi_ruser : out STD_LOGIC_VECTOR ( 16 downto 0 );
    s_axi_rvalid : out STD_LOGIC;
    s_axi_rready : in STD_LOGIC
  );
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of ulp_inst_0_bd_9d54_noc_ai_mm_0_0 : entity is "bd_9d54_noc_ai_mm_0_0,ai_noc_v1_0_0_ai_noc,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of ulp_inst_0_bd_9d54_noc_ai_mm_0_0 : entity is "yes";
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of ulp_inst_0_bd_9d54_noc_ai_mm_0_0 : entity is "bd_9d54_noc_ai_mm_0_0";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of ulp_inst_0_bd_9d54_noc_ai_mm_0_0 : entity is "ai_noc_v1_0_0_ai_noc,Vivado 2022.2";
end ulp_inst_0_bd_9d54_noc_ai_mm_0_0;

architecture STRUCTURE of ulp_inst_0_bd_9d54_noc_ai_mm_0_0 is
  signal \<const0>\ : STD_LOGIC;
  signal inst_n_10 : STD_LOGIC;
  signal inst_n_11 : STD_LOGIC;
  signal inst_n_12 : STD_LOGIC;
  signal inst_n_13 : STD_LOGIC;
  signal inst_n_14 : STD_LOGIC;
  signal inst_n_15 : STD_LOGIC;
  signal inst_n_16 : STD_LOGIC;
  signal inst_n_192 : STD_LOGIC;
  signal inst_n_193 : STD_LOGIC;
  signal inst_n_194 : STD_LOGIC;
  signal inst_n_195 : STD_LOGIC;
  signal inst_n_25 : STD_LOGIC;
  signal inst_n_26 : STD_LOGIC;
  signal inst_n_27 : STD_LOGIC;
  signal inst_n_28 : STD_LOGIC;
  signal inst_n_29 : STD_LOGIC;
  signal inst_n_3 : STD_LOGIC;
  signal inst_n_30 : STD_LOGIC;
  signal inst_n_31 : STD_LOGIC;
  signal inst_n_32 : STD_LOGIC;
  signal inst_n_33 : STD_LOGIC;
  signal inst_n_34 : STD_LOGIC;
  signal inst_n_35 : STD_LOGIC;
  signal inst_n_36 : STD_LOGIC;
  signal inst_n_37 : STD_LOGIC;
  signal inst_n_38 : STD_LOGIC;
  signal inst_n_4 : STD_LOGIC;
  signal inst_n_5 : STD_LOGIC;
  signal inst_n_6 : STD_LOGIC;
  signal inst_n_7 : STD_LOGIC;
  signal inst_n_8 : STD_LOGIC;
  signal inst_n_9 : STD_LOGIC;
  signal \^s_axi_bid\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \^s_axi_rid\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal NLW_inst_m_axi_aclk_UNCONNECTED : STD_LOGIC;
  signal NLW_inst_m_axi_arlock_UNCONNECTED : STD_LOGIC;
  signal NLW_inst_m_axi_arvalid_UNCONNECTED : STD_LOGIC;
  signal NLW_inst_m_axi_awlock_UNCONNECTED : STD_LOGIC;
  signal NLW_inst_m_axi_awvalid_UNCONNECTED : STD_LOGIC;
  signal NLW_inst_m_axi_bready_UNCONNECTED : STD_LOGIC;
  signal NLW_inst_m_axi_destmode_rd_UNCONNECTED : STD_LOGIC;
  signal NLW_inst_m_axi_destmode_wr_UNCONNECTED : STD_LOGIC;
  signal NLW_inst_m_axi_rready_UNCONNECTED : STD_LOGIC;
  signal NLW_inst_m_axi_wlast_UNCONNECTED : STD_LOGIC;
  signal NLW_inst_m_axi_wvalid_UNCONNECTED : STD_LOGIC;
  signal NLW_inst_m_axis_aclk_UNCONNECTED : STD_LOGIC;
  signal NLW_inst_m_axis_tlast_UNCONNECTED : STD_LOGIC;
  signal NLW_inst_m_axis_tvalid_UNCONNECTED : STD_LOGIC;
  signal NLW_inst_s_axis_aclk_UNCONNECTED : STD_LOGIC;
  signal NLW_inst_s_axis_tready_UNCONNECTED : STD_LOGIC;
  signal NLW_inst_m_axi_araddr_UNCONNECTED : STD_LOGIC_VECTOR ( 63 downto 0 );
  signal NLW_inst_m_axi_arburst_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal NLW_inst_m_axi_arcache_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_inst_m_axi_arid_UNCONNECTED : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal NLW_inst_m_axi_arlen_UNCONNECTED : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal NLW_inst_m_axi_arprot_UNCONNECTED : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal NLW_inst_m_axi_arqos_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_inst_m_axi_arregion_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_inst_m_axi_arsize_UNCONNECTED : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal NLW_inst_m_axi_aruser_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_inst_m_axi_awaddr_UNCONNECTED : STD_LOGIC_VECTOR ( 63 downto 0 );
  signal NLW_inst_m_axi_awburst_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal NLW_inst_m_axi_awcache_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_inst_m_axi_awid_UNCONNECTED : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal NLW_inst_m_axi_awlen_UNCONNECTED : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal NLW_inst_m_axi_awprot_UNCONNECTED : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal NLW_inst_m_axi_awqos_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_inst_m_axi_awregion_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_inst_m_axi_awsize_UNCONNECTED : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal NLW_inst_m_axi_awuser_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_inst_m_axi_destid_rd_UNCONNECTED : STD_LOGIC_VECTOR ( 11 downto 0 );
  signal NLW_inst_m_axi_destid_wr_UNCONNECTED : STD_LOGIC_VECTOR ( 11 downto 0 );
  signal NLW_inst_m_axi_wdata_UNCONNECTED : STD_LOGIC_VECTOR ( 127 downto 0 );
  signal NLW_inst_m_axi_wstrb_UNCONNECTED : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal NLW_inst_m_axi_wuser_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_inst_m_axis_tdata_UNCONNECTED : STD_LOGIC_VECTOR ( 127 downto 0 );
  signal NLW_inst_m_axis_tdest_UNCONNECTED : STD_LOGIC_VECTOR ( 9 downto 0 );
  signal NLW_inst_m_axis_tid_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal NLW_inst_m_axis_tkeep_UNCONNECTED : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal NLW_inst_s_axi_buser_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 1 );
  attribute C_AIE_MODE : integer;
  attribute C_AIE_MODE of inst : label is 0;
  attribute C_M_AXIS_TDATA_WIDTH : integer;
  attribute C_M_AXIS_TDATA_WIDTH of inst : label is 128;
  attribute C_M_AXIS_TDEST_WIDTH : integer;
  attribute C_M_AXIS_TDEST_WIDTH of inst : label is 10;
  attribute C_M_AXIS_TID_WIDTH : integer;
  attribute C_M_AXIS_TID_WIDTH of inst : label is 2;
  attribute C_M_AXI_ADDR_WIDTH : integer;
  attribute C_M_AXI_ADDR_WIDTH of inst : label is 64;
  attribute C_M_AXI_ARUSER_WIDTH : integer;
  attribute C_M_AXI_ARUSER_WIDTH of inst : label is 1;
  attribute C_M_AXI_AWUSER_WIDTH : integer;
  attribute C_M_AXI_AWUSER_WIDTH of inst : label is 1;
  attribute C_M_AXI_BUSER_WIDTH : integer;
  attribute C_M_AXI_BUSER_WIDTH of inst : label is 1;
  attribute C_M_AXI_DATA_WIDTH : integer;
  attribute C_M_AXI_DATA_WIDTH of inst : label is 128;
  attribute C_M_AXI_ID_WIDTH : integer;
  attribute C_M_AXI_ID_WIDTH of inst : label is 16;
  attribute C_M_AXI_RUSER_WIDTH : integer;
  attribute C_M_AXI_RUSER_WIDTH of inst : label is 1;
  attribute C_M_AXI_WUSER_WIDTH : integer;
  attribute C_M_AXI_WUSER_WIDTH of inst : label is 1;
  attribute C_NOC_INTF_MODE : integer;
  attribute C_NOC_INTF_MODE of inst : label is 0;
  attribute C_NOC_INTF_TYPE : integer;
  attribute C_NOC_INTF_TYPE of inst : label is 0;
  attribute C_S_AXIS_TDATA_WIDTH : integer;
  attribute C_S_AXIS_TDATA_WIDTH of inst : label is 128;
  attribute C_S_AXIS_TDEST_WIDTH : integer;
  attribute C_S_AXIS_TDEST_WIDTH of inst : label is 10;
  attribute C_S_AXIS_TID_WIDTH : integer;
  attribute C_S_AXIS_TID_WIDTH of inst : label is 2;
  attribute C_S_AXI_ADDR_WIDTH : integer;
  attribute C_S_AXI_ADDR_WIDTH of inst : label is 34;
  attribute C_S_AXI_ARUSER_WIDTH : integer;
  attribute C_S_AXI_ARUSER_WIDTH of inst : label is 0;
  attribute C_S_AXI_AWUSER_WIDTH : integer;
  attribute C_S_AXI_AWUSER_WIDTH of inst : label is 0;
  attribute C_S_AXI_BUSER_WIDTH : integer;
  attribute C_S_AXI_BUSER_WIDTH of inst : label is 0;
  attribute C_S_AXI_DATA_WIDTH : integer;
  attribute C_S_AXI_DATA_WIDTH of inst : label is 128;
  attribute C_S_AXI_ID_WIDTH : integer;
  attribute C_S_AXI_ID_WIDTH of inst : label is 16;
  attribute C_S_AXI_RUSER_WIDTH : integer;
  attribute C_S_AXI_RUSER_WIDTH of inst : label is 17;
  attribute C_S_AXI_WUSER_WIDTH : integer;
  attribute C_S_AXI_WUSER_WIDTH of inst : label is 17;
  attribute DONT_TOUCH : boolean;
  attribute DONT_TOUCH of inst : label is std.standard.true;
  attribute X_INTERFACE_INFO : string;
  attribute X_INTERFACE_INFO of s_axi_aclk : signal is "xilinx.com:signal:clock:1.0 SAXIACLK CLK";
  attribute X_INTERFACE_PARAMETER : string;
  attribute X_INTERFACE_PARAMETER of s_axi_aclk : signal is "XIL_INTERFACENAME SAXIACLK, ASSOCIATED_BUSIF S_AXI, FREQ_HZ 1250000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN bd_9d54_noc_ai_mm_0_0_s_axi_aclk, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of s_axi_arlock : signal is "xilinx.com:interface:aximm:1.0 S_AXI ARLOCK";
  attribute X_INTERFACE_INFO of s_axi_arready : signal is "xilinx.com:interface:aximm:1.0 S_AXI ARREADY";
  attribute X_INTERFACE_INFO of s_axi_arvalid : signal is "xilinx.com:interface:aximm:1.0 S_AXI ARVALID";
  attribute X_INTERFACE_INFO of s_axi_awlock : signal is "xilinx.com:interface:aximm:1.0 S_AXI AWLOCK";
  attribute X_INTERFACE_INFO of s_axi_awready : signal is "xilinx.com:interface:aximm:1.0 S_AXI AWREADY";
  attribute X_INTERFACE_INFO of s_axi_awvalid : signal is "xilinx.com:interface:aximm:1.0 S_AXI AWVALID";
  attribute X_INTERFACE_INFO of s_axi_bready : signal is "xilinx.com:interface:aximm:1.0 S_AXI BREADY";
  attribute X_INTERFACE_INFO of s_axi_bvalid : signal is "xilinx.com:interface:aximm:1.0 S_AXI BVALID";
  attribute X_INTERFACE_INFO of s_axi_rlast : signal is "xilinx.com:interface:aximm:1.0 S_AXI RLAST";
  attribute X_INTERFACE_INFO of s_axi_rready : signal is "xilinx.com:interface:aximm:1.0 S_AXI RREADY";
  attribute X_INTERFACE_PARAMETER of s_axi_rready : signal is "XIL_INTERFACENAME S_AXI, SUPPORTS_NARROW_BURST 1, DATA_WIDTH 128, PROTOCOL AXI4, FREQ_HZ 1250000000, ID_WIDTH 16, ADDR_WIDTH 34, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 17, RUSER_WIDTH 17, BUSER_WIDTH 0, READ_WRITE_MODE READ_WRITE, HAS_BURST 1, HAS_LOCK 1, HAS_PROT 1, HAS_CACHE 1, HAS_QOS 1, HAS_REGION 1, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, NUM_READ_OUTSTANDING 32, NUM_WRITE_OUTSTANDING 32, MAX_BURST_LENGTH 256, PHASE 0.0, CLK_DOMAIN bd_9d54_noc_ai_mm_0_0_s_axi_aclk, NUM_READ_THREADS 4, NUM_WRITE_THREADS 4, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of s_axi_rvalid : signal is "xilinx.com:interface:aximm:1.0 S_AXI RVALID";
  attribute X_INTERFACE_INFO of s_axi_wlast : signal is "xilinx.com:interface:aximm:1.0 S_AXI WLAST";
  attribute X_INTERFACE_INFO of s_axi_wready : signal is "xilinx.com:interface:aximm:1.0 S_AXI WREADY";
  attribute X_INTERFACE_INFO of s_axi_wvalid : signal is "xilinx.com:interface:aximm:1.0 S_AXI WVALID";
  attribute X_INTERFACE_INFO of s_axi_araddr : signal is "xilinx.com:interface:aximm:1.0 S_AXI ARADDR";
  attribute X_INTERFACE_INFO of s_axi_arburst : signal is "xilinx.com:interface:aximm:1.0 S_AXI ARBURST";
  attribute X_INTERFACE_INFO of s_axi_arcache : signal is "xilinx.com:interface:aximm:1.0 S_AXI ARCACHE";
  attribute X_INTERFACE_INFO of s_axi_arid : signal is "xilinx.com:interface:aximm:1.0 S_AXI ARID";
  attribute X_INTERFACE_INFO of s_axi_arlen : signal is "xilinx.com:interface:aximm:1.0 S_AXI ARLEN";
  attribute X_INTERFACE_INFO of s_axi_arprot : signal is "xilinx.com:interface:aximm:1.0 S_AXI ARPROT";
  attribute X_INTERFACE_INFO of s_axi_arqos : signal is "xilinx.com:interface:aximm:1.0 S_AXI ARQOS";
  attribute X_INTERFACE_INFO of s_axi_arregion : signal is "xilinx.com:interface:aximm:1.0 S_AXI ARREGION";
  attribute X_INTERFACE_INFO of s_axi_arsize : signal is "xilinx.com:interface:aximm:1.0 S_AXI ARSIZE";
  attribute X_INTERFACE_INFO of s_axi_awaddr : signal is "xilinx.com:interface:aximm:1.0 S_AXI AWADDR";
  attribute X_INTERFACE_INFO of s_axi_awburst : signal is "xilinx.com:interface:aximm:1.0 S_AXI AWBURST";
  attribute X_INTERFACE_INFO of s_axi_awcache : signal is "xilinx.com:interface:aximm:1.0 S_AXI AWCACHE";
  attribute X_INTERFACE_INFO of s_axi_awid : signal is "xilinx.com:interface:aximm:1.0 S_AXI AWID";
  attribute X_INTERFACE_INFO of s_axi_awlen : signal is "xilinx.com:interface:aximm:1.0 S_AXI AWLEN";
  attribute X_INTERFACE_INFO of s_axi_awprot : signal is "xilinx.com:interface:aximm:1.0 S_AXI AWPROT";
  attribute X_INTERFACE_INFO of s_axi_awqos : signal is "xilinx.com:interface:aximm:1.0 S_AXI AWQOS";
  attribute X_INTERFACE_INFO of s_axi_awregion : signal is "xilinx.com:interface:aximm:1.0 S_AXI AWREGION";
  attribute X_INTERFACE_INFO of s_axi_awsize : signal is "xilinx.com:interface:aximm:1.0 S_AXI AWSIZE";
  attribute X_INTERFACE_INFO of s_axi_bid : signal is "xilinx.com:interface:aximm:1.0 S_AXI BID";
  attribute X_INTERFACE_INFO of s_axi_bresp : signal is "xilinx.com:interface:aximm:1.0 S_AXI BRESP";
  attribute X_INTERFACE_INFO of s_axi_rdata : signal is "xilinx.com:interface:aximm:1.0 S_AXI RDATA";
  attribute X_INTERFACE_INFO of s_axi_rid : signal is "xilinx.com:interface:aximm:1.0 S_AXI RID";
  attribute X_INTERFACE_INFO of s_axi_rresp : signal is "xilinx.com:interface:aximm:1.0 S_AXI RRESP";
  attribute X_INTERFACE_INFO of s_axi_ruser : signal is "xilinx.com:interface:aximm:1.0 S_AXI RUSER";
  attribute X_INTERFACE_INFO of s_axi_wdata : signal is "xilinx.com:interface:aximm:1.0 S_AXI WDATA";
  attribute X_INTERFACE_INFO of s_axi_wstrb : signal is "xilinx.com:interface:aximm:1.0 S_AXI WSTRB";
  attribute X_INTERFACE_INFO of s_axi_wuser : signal is "xilinx.com:interface:aximm:1.0 S_AXI WUSER";
begin
  s_axi_bid(15) <= \<const0>\;
  s_axi_bid(14) <= \<const0>\;
  s_axi_bid(13) <= \<const0>\;
  s_axi_bid(12) <= \<const0>\;
  s_axi_bid(11) <= \<const0>\;
  s_axi_bid(10) <= \<const0>\;
  s_axi_bid(9) <= \<const0>\;
  s_axi_bid(8) <= \<const0>\;
  s_axi_bid(7) <= \<const0>\;
  s_axi_bid(6) <= \<const0>\;
  s_axi_bid(5) <= \<const0>\;
  s_axi_bid(4) <= \<const0>\;
  s_axi_bid(3) <= \<const0>\;
  s_axi_bid(2) <= \<const0>\;
  s_axi_bid(1 downto 0) <= \^s_axi_bid\(1 downto 0);
  s_axi_rid(15) <= \<const0>\;
  s_axi_rid(14) <= \<const0>\;
  s_axi_rid(13) <= \<const0>\;
  s_axi_rid(12) <= \<const0>\;
  s_axi_rid(11) <= \<const0>\;
  s_axi_rid(10) <= \<const0>\;
  s_axi_rid(9) <= \<const0>\;
  s_axi_rid(8) <= \<const0>\;
  s_axi_rid(7) <= \<const0>\;
  s_axi_rid(6) <= \<const0>\;
  s_axi_rid(5) <= \<const0>\;
  s_axi_rid(4) <= \<const0>\;
  s_axi_rid(3) <= \<const0>\;
  s_axi_rid(2) <= \<const0>\;
  s_axi_rid(1 downto 0) <= \^s_axi_rid\(1 downto 0);
  to_aie_2 <= \<const0>\;
  to_aie_3 <= \<const0>\;
  to_aie_6 <= \<const0>\;
  to_aie_7 <= \<const0>\;
GND: unisim.vcomponents.GND
     port map (
      G => \<const0>\
    );
inst: entity work.ulp_inst_0_ai_noc_v1_0_0_ai_noc
     port map (
      from_aie_2 => '0',
      from_aie_3 => '0',
      from_aie_4 => '0',
      from_aie_5 => '0',
      m_axi_aclk => NLW_inst_m_axi_aclk_UNCONNECTED,
      m_axi_araddr(63 downto 0) => NLW_inst_m_axi_araddr_UNCONNECTED(63 downto 0),
      m_axi_arburst(1 downto 0) => NLW_inst_m_axi_arburst_UNCONNECTED(1 downto 0),
      m_axi_arcache(3 downto 0) => NLW_inst_m_axi_arcache_UNCONNECTED(3 downto 0),
      m_axi_aresetn => '0',
      m_axi_arid(15 downto 0) => NLW_inst_m_axi_arid_UNCONNECTED(15 downto 0),
      m_axi_arlen(7 downto 0) => NLW_inst_m_axi_arlen_UNCONNECTED(7 downto 0),
      m_axi_arlock => NLW_inst_m_axi_arlock_UNCONNECTED,
      m_axi_arprot(2 downto 0) => NLW_inst_m_axi_arprot_UNCONNECTED(2 downto 0),
      m_axi_arqos(3 downto 0) => NLW_inst_m_axi_arqos_UNCONNECTED(3 downto 0),
      m_axi_arready => '0',
      m_axi_arregion(3 downto 0) => NLW_inst_m_axi_arregion_UNCONNECTED(3 downto 0),
      m_axi_arsize(2 downto 0) => NLW_inst_m_axi_arsize_UNCONNECTED(2 downto 0),
      m_axi_aruser(0) => NLW_inst_m_axi_aruser_UNCONNECTED(0),
      m_axi_arvalid => NLW_inst_m_axi_arvalid_UNCONNECTED,
      m_axi_awaddr(63 downto 0) => NLW_inst_m_axi_awaddr_UNCONNECTED(63 downto 0),
      m_axi_awburst(1 downto 0) => NLW_inst_m_axi_awburst_UNCONNECTED(1 downto 0),
      m_axi_awcache(3 downto 0) => NLW_inst_m_axi_awcache_UNCONNECTED(3 downto 0),
      m_axi_awid(15 downto 0) => NLW_inst_m_axi_awid_UNCONNECTED(15 downto 0),
      m_axi_awlen(7 downto 0) => NLW_inst_m_axi_awlen_UNCONNECTED(7 downto 0),
      m_axi_awlock => NLW_inst_m_axi_awlock_UNCONNECTED,
      m_axi_awprot(2 downto 0) => NLW_inst_m_axi_awprot_UNCONNECTED(2 downto 0),
      m_axi_awqos(3 downto 0) => NLW_inst_m_axi_awqos_UNCONNECTED(3 downto 0),
      m_axi_awready => '0',
      m_axi_awregion(3 downto 0) => NLW_inst_m_axi_awregion_UNCONNECTED(3 downto 0),
      m_axi_awsize(2 downto 0) => NLW_inst_m_axi_awsize_UNCONNECTED(2 downto 0),
      m_axi_awuser(0) => NLW_inst_m_axi_awuser_UNCONNECTED(0),
      m_axi_awvalid => NLW_inst_m_axi_awvalid_UNCONNECTED,
      m_axi_bid(15 downto 0) => B"0000000000000000",
      m_axi_bready => NLW_inst_m_axi_bready_UNCONNECTED,
      m_axi_bresp(1 downto 0) => B"00",
      m_axi_buser(0) => '0',
      m_axi_bvalid => '0',
      m_axi_destid_rd(11 downto 0) => NLW_inst_m_axi_destid_rd_UNCONNECTED(11 downto 0),
      m_axi_destid_wr(11 downto 0) => NLW_inst_m_axi_destid_wr_UNCONNECTED(11 downto 0),
      m_axi_destmode_rd => NLW_inst_m_axi_destmode_rd_UNCONNECTED,
      m_axi_destmode_wr => NLW_inst_m_axi_destmode_wr_UNCONNECTED,
      m_axi_rdata(127 downto 0) => B"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
      m_axi_rid(15 downto 0) => B"0000000000000000",
      m_axi_rlast => '0',
      m_axi_rready => NLW_inst_m_axi_rready_UNCONNECTED,
      m_axi_rresp(1 downto 0) => B"00",
      m_axi_ruser(0) => '0',
      m_axi_rvalid => '0',
      m_axi_wdata(127 downto 0) => NLW_inst_m_axi_wdata_UNCONNECTED(127 downto 0),
      m_axi_wlast => NLW_inst_m_axi_wlast_UNCONNECTED,
      m_axi_wready => '0',
      m_axi_wstrb(15 downto 0) => NLW_inst_m_axi_wstrb_UNCONNECTED(15 downto 0),
      m_axi_wuser(0) => NLW_inst_m_axi_wuser_UNCONNECTED(0),
      m_axi_wvalid => NLW_inst_m_axi_wvalid_UNCONNECTED,
      m_axis_aclk => NLW_inst_m_axis_aclk_UNCONNECTED,
      m_axis_aresetn => '0',
      m_axis_tdata(127 downto 0) => NLW_inst_m_axis_tdata_UNCONNECTED(127 downto 0),
      m_axis_tdest(9 downto 0) => NLW_inst_m_axis_tdest_UNCONNECTED(9 downto 0),
      m_axis_tid(1 downto 0) => NLW_inst_m_axis_tid_UNCONNECTED(1 downto 0),
      m_axis_tkeep(15 downto 0) => NLW_inst_m_axis_tkeep_UNCONNECTED(15 downto 0),
      m_axis_tlast => NLW_inst_m_axis_tlast_UNCONNECTED,
      m_axis_tready => '0',
      m_axis_tvalid => NLW_inst_m_axis_tvalid_UNCONNECTED,
      s_axi_aclk => s_axi_aclk,
      s_axi_araddr(33 downto 0) => s_axi_araddr(33 downto 0),
      s_axi_arburst(1 downto 0) => s_axi_arburst(1 downto 0),
      s_axi_arcache(3 downto 0) => s_axi_arcache(3 downto 0),
      s_axi_aresetn => '0',
      s_axi_arid(15 downto 0) => s_axi_arid(15 downto 0),
      s_axi_arlen(7 downto 0) => s_axi_arlen(7 downto 0),
      s_axi_arlock => s_axi_arlock,
      s_axi_arprot(2 downto 0) => s_axi_arprot(2 downto 0),
      s_axi_arqos(3 downto 0) => s_axi_arqos(3 downto 0),
      s_axi_arready => s_axi_arready,
      s_axi_arregion(3 downto 0) => s_axi_arregion(3 downto 0),
      s_axi_arsize(2 downto 0) => s_axi_arsize(2 downto 0),
      s_axi_aruser(0 to 1) => B"00",
      s_axi_arvalid => s_axi_arvalid,
      s_axi_awaddr(33 downto 0) => s_axi_awaddr(33 downto 0),
      s_axi_awburst(1 downto 0) => s_axi_awburst(1 downto 0),
      s_axi_awcache(3 downto 0) => s_axi_awcache(3 downto 0),
      s_axi_awid(15 downto 0) => s_axi_awid(15 downto 0),
      s_axi_awlen(7 downto 0) => s_axi_awlen(7 downto 0),
      s_axi_awlock => s_axi_awlock,
      s_axi_awprot(2 downto 0) => s_axi_awprot(2 downto 0),
      s_axi_awqos(3 downto 0) => s_axi_awqos(3 downto 0),
      s_axi_awready => s_axi_awready,
      s_axi_awregion(3 downto 0) => s_axi_awregion(3 downto 0),
      s_axi_awsize(2 downto 0) => s_axi_awsize(2 downto 0),
      s_axi_awuser(0 to 1) => B"00",
      s_axi_awvalid => s_axi_awvalid,
      s_axi_bid(15) => inst_n_3,
      s_axi_bid(14) => inst_n_4,
      s_axi_bid(13) => inst_n_5,
      s_axi_bid(12) => inst_n_6,
      s_axi_bid(11) => inst_n_7,
      s_axi_bid(10) => inst_n_8,
      s_axi_bid(9) => inst_n_9,
      s_axi_bid(8) => inst_n_10,
      s_axi_bid(7) => inst_n_11,
      s_axi_bid(6) => inst_n_12,
      s_axi_bid(5) => inst_n_13,
      s_axi_bid(4) => inst_n_14,
      s_axi_bid(3) => inst_n_15,
      s_axi_bid(2) => inst_n_16,
      s_axi_bid(1 downto 0) => \^s_axi_bid\(1 downto 0),
      s_axi_bready => s_axi_bready,
      s_axi_bresp(1 downto 0) => s_axi_bresp(1 downto 0),
      s_axi_buser(0 to 1) => NLW_inst_s_axi_buser_UNCONNECTED(0 to 1),
      s_axi_bvalid => s_axi_bvalid,
      s_axi_rdata(127 downto 0) => s_axi_rdata(127 downto 0),
      s_axi_rid(15) => inst_n_25,
      s_axi_rid(14) => inst_n_26,
      s_axi_rid(13) => inst_n_27,
      s_axi_rid(12) => inst_n_28,
      s_axi_rid(11) => inst_n_29,
      s_axi_rid(10) => inst_n_30,
      s_axi_rid(9) => inst_n_31,
      s_axi_rid(8) => inst_n_32,
      s_axi_rid(7) => inst_n_33,
      s_axi_rid(6) => inst_n_34,
      s_axi_rid(5) => inst_n_35,
      s_axi_rid(4) => inst_n_36,
      s_axi_rid(3) => inst_n_37,
      s_axi_rid(2) => inst_n_38,
      s_axi_rid(1 downto 0) => \^s_axi_rid\(1 downto 0),
      s_axi_rlast => s_axi_rlast,
      s_axi_rready => s_axi_rready,
      s_axi_rresp(1 downto 0) => s_axi_rresp(1 downto 0),
      s_axi_ruser(16 downto 0) => s_axi_ruser(16 downto 0),
      s_axi_rvalid => s_axi_rvalid,
      s_axi_wdata(127 downto 0) => s_axi_wdata(127 downto 0),
      s_axi_wlast => s_axi_wlast,
      s_axi_wready => s_axi_wready,
      s_axi_wstrb(15 downto 0) => s_axi_wstrb(15 downto 0),
      s_axi_wuser(16 downto 0) => s_axi_wuser(16 downto 0),
      s_axi_wvalid => s_axi_wvalid,
      s_axis_aclk => NLW_inst_s_axis_aclk_UNCONNECTED,
      s_axis_aresetn => '0',
      s_axis_tdata(127 downto 0) => B"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
      s_axis_tdest(9 downto 0) => B"0000000000",
      s_axis_tid(1 downto 0) => B"00",
      s_axis_tkeep(15 downto 0) => B"0000000000000000",
      s_axis_tlast => '0',
      s_axis_tready => NLW_inst_s_axis_tready_UNCONNECTED,
      s_axis_tvalid => '0',
      to_aie_2 => inst_n_192,
      to_aie_3 => inst_n_193,
      to_aie_6 => inst_n_194,
      to_aie_7 => inst_n_195
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity ulp_inst_0_reset_controllers_imp_1KQP16U is
  port (
    resetn_kernel0_ic : out STD_LOGIC_VECTOR ( 0 to 0 );
    resetn_pcie_axi : out STD_LOGIC_VECTOR ( 0 to 0 );
    resetn_pl_axi : out STD_LOGIC_VECTOR ( 0 to 0 );
    blp_s_aclk_kernel_00 : in STD_LOGIC;
    blp_s_aclk_kernel_01 : in STD_LOGIC;
    blp_s_aclk_pcie_00 : in STD_LOGIC;
    blp_s_aresetn_pcie_reset_00 : in STD_LOGIC_VECTOR ( 0 to 0 );
    blp_s_aclk_ctrl_00 : in STD_LOGIC;
    blp_s_aresetn_pr_reset_00 : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of ulp_inst_0_reset_controllers_imp_1KQP16U : entity is "reset_controllers_imp_1KQP16U";
end ulp_inst_0_reset_controllers_imp_1KQP16U;

architecture STRUCTURE of ulp_inst_0_reset_controllers_imp_1KQP16U is
  component ulp_inst_0_pipereg_kernel0_0 is
  port (
    clk : in STD_LOGIC;
    D : in STD_LOGIC_VECTOR ( 0 to 0 );
    Q : out STD_LOGIC_VECTOR ( 0 to 0 );
    reset : in STD_LOGIC;
    clk_enable : in STD_LOGIC
  );
  end component ulp_inst_0_pipereg_kernel0_0;
  component ulp_inst_0_pipereg_kernel1_0 is
  port (
    clk : in STD_LOGIC;
    D : in STD_LOGIC_VECTOR ( 0 to 0 );
    Q : out STD_LOGIC_VECTOR ( 0 to 0 );
    reset : in STD_LOGIC;
    clk_enable : in STD_LOGIC
  );
  end component ulp_inst_0_pipereg_kernel1_0;
  component ulp_inst_0_pipereg_pcie0_0 is
  port (
    clk : in STD_LOGIC;
    D : in STD_LOGIC_VECTOR ( 0 to 0 );
    Q : out STD_LOGIC_VECTOR ( 0 to 0 );
    reset : in STD_LOGIC;
    clk_enable : in STD_LOGIC
  );
  end component ulp_inst_0_pipereg_pcie0_0;
  component ulp_inst_0_pipereg_pl_axi0_0 is
  port (
    clk : in STD_LOGIC;
    D : in STD_LOGIC_VECTOR ( 0 to 0 );
    Q : out STD_LOGIC_VECTOR ( 0 to 0 );
    reset : in STD_LOGIC;
    clk_enable : in STD_LOGIC
  );
  end component ulp_inst_0_pipereg_pl_axi0_0;
  component ulp_inst_0_reset_sync_fixed_0 is
  port (
    slowest_sync_clk : in STD_LOGIC;
    ext_reset_in : in STD_LOGIC;
    aux_reset_in : in STD_LOGIC;
    mb_debug_sys_rst : in STD_LOGIC;
    dcm_locked : in STD_LOGIC;
    mb_reset : out STD_LOGIC;
    bus_struct_reset : out STD_LOGIC_VECTOR ( 0 to 0 );
    peripheral_reset : out STD_LOGIC_VECTOR ( 0 to 0 );
    interconnect_aresetn : out STD_LOGIC_VECTOR ( 0 to 0 );
    peripheral_aresetn : out STD_LOGIC_VECTOR ( 0 to 0 )
  );
  end component ulp_inst_0_reset_sync_fixed_0;
  component ulp_inst_0_reset_sync_kernel0_0 is
  port (
    slowest_sync_clk : in STD_LOGIC;
    ext_reset_in : in STD_LOGIC;
    aux_reset_in : in STD_LOGIC;
    mb_debug_sys_rst : in STD_LOGIC;
    dcm_locked : in STD_LOGIC;
    mb_reset : out STD_LOGIC;
    bus_struct_reset : out STD_LOGIC_VECTOR ( 0 to 0 );
    peripheral_reset : out STD_LOGIC_VECTOR ( 0 to 0 );
    interconnect_aresetn : out STD_LOGIC_VECTOR ( 0 to 0 );
    peripheral_aresetn : out STD_LOGIC_VECTOR ( 0 to 0 )
  );
  end component ulp_inst_0_reset_sync_kernel0_0;
  component ulp_inst_0_reset_sync_kernel1_0 is
  port (
    slowest_sync_clk : in STD_LOGIC;
    ext_reset_in : in STD_LOGIC;
    aux_reset_in : in STD_LOGIC;
    mb_debug_sys_rst : in STD_LOGIC;
    dcm_locked : in STD_LOGIC;
    mb_reset : out STD_LOGIC;
    bus_struct_reset : out STD_LOGIC_VECTOR ( 0 to 0 );
    peripheral_reset : out STD_LOGIC_VECTOR ( 0 to 0 );
    interconnect_aresetn : out STD_LOGIC_VECTOR ( 0 to 0 );
    peripheral_aresetn : out STD_LOGIC_VECTOR ( 0 to 0 )
  );
  end component ulp_inst_0_reset_sync_kernel1_0;
  signal pipereg_kernel1_n_0 : STD_LOGIC;
  signal reset_sync_kernel0_interconnect_aresetn : STD_LOGIC;
  signal reset_sync_kernel1_interconnect_aresetn : STD_LOGIC;
  signal NLW_reset_sync_fixed_mb_reset_UNCONNECTED : STD_LOGIC;
  signal NLW_reset_sync_fixed_bus_struct_reset_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_reset_sync_fixed_interconnect_aresetn_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_reset_sync_fixed_peripheral_aresetn_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_reset_sync_fixed_peripheral_reset_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_reset_sync_kernel0_mb_reset_UNCONNECTED : STD_LOGIC;
  signal NLW_reset_sync_kernel0_bus_struct_reset_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_reset_sync_kernel0_peripheral_aresetn_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_reset_sync_kernel0_peripheral_reset_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_reset_sync_kernel1_mb_reset_UNCONNECTED : STD_LOGIC;
  signal NLW_reset_sync_kernel1_bus_struct_reset_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_reset_sync_kernel1_peripheral_aresetn_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_reset_sync_kernel1_peripheral_reset_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of pipereg_kernel0 : label is "util_ff_v1_0_1_util_ff,Vivado 2022.2";
  attribute X_CORE_INFO of pipereg_kernel1 : label is "util_ff_v1_0_1_util_ff,Vivado 2022.2";
  attribute X_CORE_INFO of pipereg_pcie0 : label is "util_ff_v1_0_1_util_ff,Vivado 2022.2";
  attribute X_CORE_INFO of pipereg_pl_axi0 : label is "util_ff_v1_0_1_util_ff,Vivado 2022.2";
  attribute X_CORE_INFO of reset_sync_fixed : label is "proc_sys_reset,Vivado 2022.2";
  attribute X_CORE_INFO of reset_sync_kernel0 : label is "proc_sys_reset,Vivado 2022.2";
  attribute X_CORE_INFO of reset_sync_kernel1 : label is "proc_sys_reset,Vivado 2022.2";
begin
pipereg_kernel0: component ulp_inst_0_pipereg_kernel0_0
     port map (
      D(0) => reset_sync_kernel0_interconnect_aresetn,
      Q(0) => resetn_kernel0_ic(0),
      clk => blp_s_aclk_kernel_00,
      clk_enable => '1',
      reset => '1'
    );
pipereg_kernel1: component ulp_inst_0_pipereg_kernel1_0
     port map (
      D(0) => reset_sync_kernel1_interconnect_aresetn,
      Q(0) => pipereg_kernel1_n_0,
      clk => blp_s_aclk_kernel_01,
      clk_enable => '1',
      reset => '1'
    );
pipereg_pcie0: component ulp_inst_0_pipereg_pcie0_0
     port map (
      D(0) => blp_s_aresetn_pcie_reset_00(0),
      Q(0) => resetn_pcie_axi(0),
      clk => blp_s_aclk_pcie_00,
      clk_enable => '1',
      reset => '1'
    );
pipereg_pl_axi0: component ulp_inst_0_pipereg_pl_axi0_0
     port map (
      D(0) => blp_s_aresetn_pr_reset_00(0),
      Q(0) => resetn_pl_axi(0),
      clk => blp_s_aclk_ctrl_00,
      clk_enable => '1',
      reset => '1'
    );
reset_sync_fixed: component ulp_inst_0_reset_sync_fixed_0
     port map (
      aux_reset_in => '1',
      bus_struct_reset(0) => NLW_reset_sync_fixed_bus_struct_reset_UNCONNECTED(0),
      dcm_locked => '1',
      ext_reset_in => blp_s_aresetn_pr_reset_00(0),
      interconnect_aresetn(0) => NLW_reset_sync_fixed_interconnect_aresetn_UNCONNECTED(0),
      mb_debug_sys_rst => '0',
      mb_reset => NLW_reset_sync_fixed_mb_reset_UNCONNECTED,
      peripheral_aresetn(0) => NLW_reset_sync_fixed_peripheral_aresetn_UNCONNECTED(0),
      peripheral_reset(0) => NLW_reset_sync_fixed_peripheral_reset_UNCONNECTED(0),
      slowest_sync_clk => blp_s_aclk_ctrl_00
    );
reset_sync_kernel0: component ulp_inst_0_reset_sync_kernel0_0
     port map (
      aux_reset_in => '1',
      bus_struct_reset(0) => NLW_reset_sync_kernel0_bus_struct_reset_UNCONNECTED(0),
      dcm_locked => '1',
      ext_reset_in => blp_s_aresetn_pr_reset_00(0),
      interconnect_aresetn(0) => reset_sync_kernel0_interconnect_aresetn,
      mb_debug_sys_rst => '0',
      mb_reset => NLW_reset_sync_kernel0_mb_reset_UNCONNECTED,
      peripheral_aresetn(0) => NLW_reset_sync_kernel0_peripheral_aresetn_UNCONNECTED(0),
      peripheral_reset(0) => NLW_reset_sync_kernel0_peripheral_reset_UNCONNECTED(0),
      slowest_sync_clk => blp_s_aclk_kernel_00
    );
reset_sync_kernel1: component ulp_inst_0_reset_sync_kernel1_0
     port map (
      aux_reset_in => '1',
      bus_struct_reset(0) => NLW_reset_sync_kernel1_bus_struct_reset_UNCONNECTED(0),
      dcm_locked => '1',
      ext_reset_in => blp_s_aresetn_pr_reset_00(0),
      interconnect_aresetn(0) => reset_sync_kernel1_interconnect_aresetn,
      mb_debug_sys_rst => '0',
      mb_reset => NLW_reset_sync_kernel1_mb_reset_UNCONNECTED,
      peripheral_aresetn(0) => NLW_reset_sync_kernel1_peripheral_aresetn_UNCONNECTED(0),
      peripheral_reset(0) => NLW_reset_sync_kernel1_peripheral_reset_UNCONNECTED(0),
      slowest_sync_clk => blp_s_aclk_kernel_01
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity ulp_inst_0_bd_9d54 is
  port (
    S00_AXI_araddr : in STD_LOGIC_VECTOR ( 33 downto 0 );
    S00_AXI_arburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    S00_AXI_arcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S00_AXI_arid : in STD_LOGIC_VECTOR ( 15 downto 0 );
    S00_AXI_arlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    S00_AXI_arlock : in STD_LOGIC;
    S00_AXI_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S00_AXI_arqos : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S00_AXI_arready : out STD_LOGIC_VECTOR ( 0 to 0 );
    S00_AXI_arregion : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S00_AXI_arsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S00_AXI_arvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    S00_AXI_awaddr : in STD_LOGIC_VECTOR ( 33 downto 0 );
    S00_AXI_awburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    S00_AXI_awcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S00_AXI_awid : in STD_LOGIC_VECTOR ( 15 downto 0 );
    S00_AXI_awlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    S00_AXI_awlock : in STD_LOGIC;
    S00_AXI_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S00_AXI_awqos : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S00_AXI_awready : out STD_LOGIC_VECTOR ( 0 to 0 );
    S00_AXI_awregion : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S00_AXI_awsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S00_AXI_awvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    S00_AXI_bid : out STD_LOGIC_VECTOR ( 15 downto 0 );
    S00_AXI_bready : in STD_LOGIC_VECTOR ( 0 to 0 );
    S00_AXI_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S00_AXI_bvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    S00_AXI_rdata : out STD_LOGIC_VECTOR ( 127 downto 0 );
    S00_AXI_rid : out STD_LOGIC_VECTOR ( 15 downto 0 );
    S00_AXI_rlast : out STD_LOGIC_VECTOR ( 0 to 0 );
    S00_AXI_rready : in STD_LOGIC_VECTOR ( 0 to 0 );
    S00_AXI_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S00_AXI_ruser : out STD_LOGIC_VECTOR ( 16 downto 0 );
    S00_AXI_rvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    S00_AXI_wdata : in STD_LOGIC_VECTOR ( 127 downto 0 );
    S00_AXI_wlast : in STD_LOGIC_VECTOR ( 0 to 0 );
    S00_AXI_wready : out STD_LOGIC_VECTOR ( 0 to 0 );
    S00_AXI_wstrb : in STD_LOGIC_VECTOR ( 15 downto 0 );
    S00_AXI_wuser : in STD_LOGIC_VECTOR ( 16 downto 0 );
    S00_AXI_wvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    s00_axi_aclk : out STD_LOGIC
  );
  attribute HW_HANDOFF : string;
  attribute HW_HANDOFF of ulp_inst_0_bd_9d54 : entity is "ulp_inst_0_ai_engine_0_0.hwdef";
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of ulp_inst_0_bd_9d54 : entity is "bd_9d54";
end ulp_inst_0_bd_9d54;

architecture STRUCTURE of ulp_inst_0_bd_9d54 is
  signal \<const0>\ : STD_LOGIC;
  signal \^s00_axi_bid\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \^s00_axi_rid\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal NLW_noc_ai_mm_0_to_aie_2_UNCONNECTED : STD_LOGIC;
  signal NLW_noc_ai_mm_0_to_aie_3_UNCONNECTED : STD_LOGIC;
  signal NLW_noc_ai_mm_0_to_aie_6_UNCONNECTED : STD_LOGIC;
  signal NLW_noc_ai_mm_0_to_aie_7_UNCONNECTED : STD_LOGIC;
  signal NLW_noc_ai_mm_0_s_axi_bid_UNCONNECTED : STD_LOGIC_VECTOR ( 15 downto 2 );
  signal NLW_noc_ai_mm_0_s_axi_rid_UNCONNECTED : STD_LOGIC_VECTOR ( 15 downto 2 );
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of noc_ai_mm_0 : label is "bd_9d54_noc_ai_mm_0_0,ai_noc_v1_0_0_ai_noc,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of noc_ai_mm_0 : label is "yes";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of noc_ai_mm_0 : label is "ai_noc_v1_0_0_ai_noc,Vivado 2022.2";
  attribute X_INTERFACE_INFO : string;
  attribute X_INTERFACE_INFO of S00_AXI_arlock : signal is "xilinx.com:interface:aximm:1.0 S00_AXI ARLOCK";
  attribute X_INTERFACE_INFO of S00_AXI_awlock : signal is "xilinx.com:interface:aximm:1.0 S00_AXI AWLOCK";
  attribute X_INTERFACE_INFO of s00_axi_aclk : signal is "xilinx.com:signal:clock:1.0 CLK.S00_AXI_ACLK CLK";
  attribute X_INTERFACE_PARAMETER : string;
  attribute X_INTERFACE_PARAMETER of s00_axi_aclk : signal is "XIL_INTERFACENAME CLK.S00_AXI_ACLK, ASSOCIATED_BUSIF S00_AXI, CLK_DOMAIN bd_9d54_noc_ai_mm_0_0_s_axi_aclk, FREQ_HZ 1250000000, FREQ_TOLERANCE_HZ 0, INSERT_VIP 0, PHASE 0.0, PHYSICAL_CHANNEL AIE_TO_NOC_NSU";
  attribute X_INTERFACE_INFO of S00_AXI_araddr : signal is "xilinx.com:interface:aximm:1.0 S00_AXI ARADDR";
  attribute X_INTERFACE_PARAMETER of S00_AXI_araddr : signal is "XIL_INTERFACENAME S00_AXI, ADDR_WIDTH 42, ARUSER_WIDTH 0, AWUSER_WIDTH 0, BUSER_WIDTH 0, CATEGORY NOC, CLK_DOMAIN bd_9d54_noc_ai_mm_0_0_s_axi_aclk, DATA_WIDTH 128, FREQ_HZ 1250000000, HAS_BRESP 1, HAS_BURST 1, HAS_CACHE 1, HAS_LOCK 1, HAS_PROT 1, HAS_QOS 1, HAS_REGION 1, HAS_RRESP 1, HAS_WSTRB 1, ID_WIDTH 16, INSERT_VIP 0, MAX_BURST_LENGTH 256, MY_CATEGORY AIE, NUM_READ_OUTSTANDING 32, NUM_READ_THREADS 4, NUM_WRITE_OUTSTANDING 32, NUM_WRITE_THREADS 4, PHASE 0.0, PHYSICAL_CHANNEL NOC_NSU_TO_AIE, PROTOCOL AXI4, READ_WRITE_MODE READ_WRITE, RUSER_BITS_PER_BYTE 0, RUSER_WIDTH 17, SUPPORTS_NARROW_BURST 1, WUSER_BITS_PER_BYTE 0, WUSER_WIDTH 17";
  attribute X_INTERFACE_INFO of S00_AXI_arburst : signal is "xilinx.com:interface:aximm:1.0 S00_AXI ARBURST";
  attribute X_INTERFACE_INFO of S00_AXI_arcache : signal is "xilinx.com:interface:aximm:1.0 S00_AXI ARCACHE";
  attribute X_INTERFACE_INFO of S00_AXI_arid : signal is "xilinx.com:interface:aximm:1.0 S00_AXI ARID";
  attribute X_INTERFACE_INFO of S00_AXI_arlen : signal is "xilinx.com:interface:aximm:1.0 S00_AXI ARLEN";
  attribute X_INTERFACE_INFO of S00_AXI_arprot : signal is "xilinx.com:interface:aximm:1.0 S00_AXI ARPROT";
  attribute X_INTERFACE_INFO of S00_AXI_arqos : signal is "xilinx.com:interface:aximm:1.0 S00_AXI ARQOS";
  attribute X_INTERFACE_INFO of S00_AXI_arready : signal is "xilinx.com:interface:aximm:1.0 S00_AXI ARREADY";
  attribute X_INTERFACE_INFO of S00_AXI_arregion : signal is "xilinx.com:interface:aximm:1.0 S00_AXI ARREGION";
  attribute X_INTERFACE_INFO of S00_AXI_arsize : signal is "xilinx.com:interface:aximm:1.0 S00_AXI ARSIZE";
  attribute X_INTERFACE_INFO of S00_AXI_arvalid : signal is "xilinx.com:interface:aximm:1.0 S00_AXI ARVALID";
  attribute X_INTERFACE_INFO of S00_AXI_awaddr : signal is "xilinx.com:interface:aximm:1.0 S00_AXI AWADDR";
  attribute X_INTERFACE_INFO of S00_AXI_awburst : signal is "xilinx.com:interface:aximm:1.0 S00_AXI AWBURST";
  attribute X_INTERFACE_INFO of S00_AXI_awcache : signal is "xilinx.com:interface:aximm:1.0 S00_AXI AWCACHE";
  attribute X_INTERFACE_INFO of S00_AXI_awid : signal is "xilinx.com:interface:aximm:1.0 S00_AXI AWID";
  attribute X_INTERFACE_INFO of S00_AXI_awlen : signal is "xilinx.com:interface:aximm:1.0 S00_AXI AWLEN";
  attribute X_INTERFACE_INFO of S00_AXI_awprot : signal is "xilinx.com:interface:aximm:1.0 S00_AXI AWPROT";
  attribute X_INTERFACE_INFO of S00_AXI_awqos : signal is "xilinx.com:interface:aximm:1.0 S00_AXI AWQOS";
  attribute X_INTERFACE_INFO of S00_AXI_awready : signal is "xilinx.com:interface:aximm:1.0 S00_AXI AWREADY";
  attribute X_INTERFACE_INFO of S00_AXI_awregion : signal is "xilinx.com:interface:aximm:1.0 S00_AXI AWREGION";
  attribute X_INTERFACE_INFO of S00_AXI_awsize : signal is "xilinx.com:interface:aximm:1.0 S00_AXI AWSIZE";
  attribute X_INTERFACE_INFO of S00_AXI_awvalid : signal is "xilinx.com:interface:aximm:1.0 S00_AXI AWVALID";
  attribute X_INTERFACE_INFO of S00_AXI_bid : signal is "xilinx.com:interface:aximm:1.0 S00_AXI BID";
  attribute X_INTERFACE_INFO of S00_AXI_bready : signal is "xilinx.com:interface:aximm:1.0 S00_AXI BREADY";
  attribute X_INTERFACE_INFO of S00_AXI_bresp : signal is "xilinx.com:interface:aximm:1.0 S00_AXI BRESP";
  attribute X_INTERFACE_INFO of S00_AXI_bvalid : signal is "xilinx.com:interface:aximm:1.0 S00_AXI BVALID";
  attribute X_INTERFACE_INFO of S00_AXI_rdata : signal is "xilinx.com:interface:aximm:1.0 S00_AXI RDATA";
  attribute X_INTERFACE_INFO of S00_AXI_rid : signal is "xilinx.com:interface:aximm:1.0 S00_AXI RID";
  attribute X_INTERFACE_INFO of S00_AXI_rlast : signal is "xilinx.com:interface:aximm:1.0 S00_AXI RLAST";
  attribute X_INTERFACE_INFO of S00_AXI_rready : signal is "xilinx.com:interface:aximm:1.0 S00_AXI RREADY";
  attribute X_INTERFACE_INFO of S00_AXI_rresp : signal is "xilinx.com:interface:aximm:1.0 S00_AXI RRESP";
  attribute X_INTERFACE_INFO of S00_AXI_ruser : signal is "xilinx.com:interface:aximm:1.0 S00_AXI RUSER";
  attribute X_INTERFACE_INFO of S00_AXI_rvalid : signal is "xilinx.com:interface:aximm:1.0 S00_AXI RVALID";
  attribute X_INTERFACE_INFO of S00_AXI_wdata : signal is "xilinx.com:interface:aximm:1.0 S00_AXI WDATA";
  attribute X_INTERFACE_INFO of S00_AXI_wlast : signal is "xilinx.com:interface:aximm:1.0 S00_AXI WLAST";
  attribute X_INTERFACE_INFO of S00_AXI_wready : signal is "xilinx.com:interface:aximm:1.0 S00_AXI WREADY";
  attribute X_INTERFACE_INFO of S00_AXI_wstrb : signal is "xilinx.com:interface:aximm:1.0 S00_AXI WSTRB";
  attribute X_INTERFACE_INFO of S00_AXI_wuser : signal is "xilinx.com:interface:aximm:1.0 S00_AXI WUSER";
  attribute X_INTERFACE_INFO of S00_AXI_wvalid : signal is "xilinx.com:interface:aximm:1.0 S00_AXI WVALID";
begin
  S00_AXI_bid(15) <= \<const0>\;
  S00_AXI_bid(14) <= \<const0>\;
  S00_AXI_bid(13) <= \<const0>\;
  S00_AXI_bid(12) <= \<const0>\;
  S00_AXI_bid(11) <= \<const0>\;
  S00_AXI_bid(10) <= \<const0>\;
  S00_AXI_bid(9) <= \<const0>\;
  S00_AXI_bid(8) <= \<const0>\;
  S00_AXI_bid(7) <= \<const0>\;
  S00_AXI_bid(6) <= \<const0>\;
  S00_AXI_bid(5) <= \<const0>\;
  S00_AXI_bid(4) <= \<const0>\;
  S00_AXI_bid(3) <= \<const0>\;
  S00_AXI_bid(2) <= \<const0>\;
  S00_AXI_bid(1 downto 0) <= \^s00_axi_bid\(1 downto 0);
  S00_AXI_rid(15) <= \<const0>\;
  S00_AXI_rid(14) <= \<const0>\;
  S00_AXI_rid(13) <= \<const0>\;
  S00_AXI_rid(12) <= \<const0>\;
  S00_AXI_rid(11) <= \<const0>\;
  S00_AXI_rid(10) <= \<const0>\;
  S00_AXI_rid(9) <= \<const0>\;
  S00_AXI_rid(8) <= \<const0>\;
  S00_AXI_rid(7) <= \<const0>\;
  S00_AXI_rid(6) <= \<const0>\;
  S00_AXI_rid(5) <= \<const0>\;
  S00_AXI_rid(4) <= \<const0>\;
  S00_AXI_rid(3) <= \<const0>\;
  S00_AXI_rid(2) <= \<const0>\;
  S00_AXI_rid(1 downto 0) <= \^s00_axi_rid\(1 downto 0);
GND: unisim.vcomponents.GND
     port map (
      G => \<const0>\
    );
noc_ai_mm_0: entity work.ulp_inst_0_bd_9d54_noc_ai_mm_0_0
     port map (
      s_axi_aclk => s00_axi_aclk,
      s_axi_araddr(33 downto 0) => S00_AXI_araddr(33 downto 0),
      s_axi_arburst(1 downto 0) => S00_AXI_arburst(1 downto 0),
      s_axi_arcache(3 downto 0) => S00_AXI_arcache(3 downto 0),
      s_axi_arid(15 downto 0) => S00_AXI_arid(15 downto 0),
      s_axi_arlen(7 downto 0) => S00_AXI_arlen(7 downto 0),
      s_axi_arlock => S00_AXI_arlock,
      s_axi_arprot(2 downto 0) => S00_AXI_arprot(2 downto 0),
      s_axi_arqos(3 downto 0) => S00_AXI_arqos(3 downto 0),
      s_axi_arready => S00_AXI_arready(0),
      s_axi_arregion(3 downto 0) => S00_AXI_arregion(3 downto 0),
      s_axi_arsize(2 downto 0) => S00_AXI_arsize(2 downto 0),
      s_axi_arvalid => S00_AXI_arvalid(0),
      s_axi_awaddr(33 downto 0) => S00_AXI_awaddr(33 downto 0),
      s_axi_awburst(1 downto 0) => S00_AXI_awburst(1 downto 0),
      s_axi_awcache(3 downto 0) => S00_AXI_awcache(3 downto 0),
      s_axi_awid(15 downto 0) => S00_AXI_awid(15 downto 0),
      s_axi_awlen(7 downto 0) => S00_AXI_awlen(7 downto 0),
      s_axi_awlock => S00_AXI_awlock,
      s_axi_awprot(2 downto 0) => S00_AXI_awprot(2 downto 0),
      s_axi_awqos(3 downto 0) => S00_AXI_awqos(3 downto 0),
      s_axi_awready => S00_AXI_awready(0),
      s_axi_awregion(3 downto 0) => S00_AXI_awregion(3 downto 0),
      s_axi_awsize(2 downto 0) => S00_AXI_awsize(2 downto 0),
      s_axi_awvalid => S00_AXI_awvalid(0),
      s_axi_bid(15 downto 2) => NLW_noc_ai_mm_0_s_axi_bid_UNCONNECTED(15 downto 2),
      s_axi_bid(1 downto 0) => \^s00_axi_bid\(1 downto 0),
      s_axi_bready => S00_AXI_bready(0),
      s_axi_bresp(1 downto 0) => S00_AXI_bresp(1 downto 0),
      s_axi_bvalid => S00_AXI_bvalid(0),
      s_axi_rdata(127 downto 0) => S00_AXI_rdata(127 downto 0),
      s_axi_rid(15 downto 2) => NLW_noc_ai_mm_0_s_axi_rid_UNCONNECTED(15 downto 2),
      s_axi_rid(1 downto 0) => \^s00_axi_rid\(1 downto 0),
      s_axi_rlast => S00_AXI_rlast(0),
      s_axi_rready => S00_AXI_rready(0),
      s_axi_rresp(1 downto 0) => S00_AXI_rresp(1 downto 0),
      s_axi_ruser(16 downto 0) => S00_AXI_ruser(16 downto 0),
      s_axi_rvalid => S00_AXI_rvalid(0),
      s_axi_wdata(127 downto 0) => S00_AXI_wdata(127 downto 0),
      s_axi_wlast => S00_AXI_wlast(0),
      s_axi_wready => S00_AXI_wready(0),
      s_axi_wstrb(15 downto 0) => S00_AXI_wstrb(15 downto 0),
      s_axi_wuser(16 downto 0) => S00_AXI_wuser(16 downto 0),
      s_axi_wvalid => S00_AXI_wvalid(0),
      to_aie_2 => NLW_noc_ai_mm_0_to_aie_2_UNCONNECTED,
      to_aie_3 => NLW_noc_ai_mm_0_to_aie_3_UNCONNECTED,
      to_aie_6 => NLW_noc_ai_mm_0_to_aie_6_UNCONNECTED,
      to_aie_7 => NLW_noc_ai_mm_0_to_aie_7_UNCONNECTED
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity ulp_inst_0_ai_engine_0_0 is
  port (
    S00_AXI_awid : in STD_LOGIC_VECTOR ( 15 downto 0 );
    S00_AXI_awaddr : in STD_LOGIC_VECTOR ( 33 downto 0 );
    S00_AXI_awlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    S00_AXI_awsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S00_AXI_awburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    S00_AXI_awlock : in STD_LOGIC;
    S00_AXI_awcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S00_AXI_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S00_AXI_awregion : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S00_AXI_awqos : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S00_AXI_awvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    S00_AXI_awready : out STD_LOGIC_VECTOR ( 0 to 0 );
    S00_AXI_wdata : in STD_LOGIC_VECTOR ( 127 downto 0 );
    S00_AXI_wstrb : in STD_LOGIC_VECTOR ( 15 downto 0 );
    S00_AXI_wlast : in STD_LOGIC_VECTOR ( 0 to 0 );
    S00_AXI_wuser : in STD_LOGIC_VECTOR ( 16 downto 0 );
    S00_AXI_wvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    S00_AXI_wready : out STD_LOGIC_VECTOR ( 0 to 0 );
    S00_AXI_bid : out STD_LOGIC_VECTOR ( 15 downto 0 );
    S00_AXI_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S00_AXI_bvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    S00_AXI_bready : in STD_LOGIC_VECTOR ( 0 to 0 );
    S00_AXI_arid : in STD_LOGIC_VECTOR ( 15 downto 0 );
    S00_AXI_araddr : in STD_LOGIC_VECTOR ( 33 downto 0 );
    S00_AXI_arlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    S00_AXI_arsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S00_AXI_arburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    S00_AXI_arlock : in STD_LOGIC;
    S00_AXI_arcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S00_AXI_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S00_AXI_arregion : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S00_AXI_arqos : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S00_AXI_arvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    S00_AXI_arready : out STD_LOGIC_VECTOR ( 0 to 0 );
    S00_AXI_rid : out STD_LOGIC_VECTOR ( 15 downto 0 );
    S00_AXI_rdata : out STD_LOGIC_VECTOR ( 127 downto 0 );
    S00_AXI_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S00_AXI_rlast : out STD_LOGIC_VECTOR ( 0 to 0 );
    S00_AXI_ruser : out STD_LOGIC_VECTOR ( 16 downto 0 );
    S00_AXI_rvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    S00_AXI_rready : in STD_LOGIC_VECTOR ( 0 to 0 );
    s00_axi_aclk : out STD_LOGIC
  );
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of ulp_inst_0_ai_engine_0_0 : entity is "ulp_inst_0_ai_engine_0_0,bd_9d54,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of ulp_inst_0_ai_engine_0_0 : entity is "yes";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of ulp_inst_0_ai_engine_0_0 : entity is "bd_9d54,Vivado 2022.2";
end ulp_inst_0_ai_engine_0_0;

architecture STRUCTURE of ulp_inst_0_ai_engine_0_0 is
  signal \<const0>\ : STD_LOGIC;
  signal \^s00_axi_bid\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \^s00_axi_rid\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal NLW_inst_S00_AXI_bid_UNCONNECTED : STD_LOGIC_VECTOR ( 15 downto 2 );
  signal NLW_inst_S00_AXI_rid_UNCONNECTED : STD_LOGIC_VECTOR ( 15 downto 2 );
  attribute HW_HANDOFF : string;
  attribute HW_HANDOFF of inst : label is "ulp_inst_0_ai_engine_0_0.hwdef";
  attribute X_INTERFACE_INFO : string;
  attribute X_INTERFACE_INFO of S00_AXI_arlock : signal is "xilinx.com:interface:aximm:1.0 S00_AXI ARLOCK";
  attribute X_INTERFACE_INFO of S00_AXI_awlock : signal is "xilinx.com:interface:aximm:1.0 S00_AXI AWLOCK";
  attribute X_INTERFACE_INFO of s00_axi_aclk : signal is "xilinx.com:signal:clock:1.0 CLK.s00_axi_aclk CLK";
  attribute X_INTERFACE_PARAMETER : string;
  attribute X_INTERFACE_PARAMETER of s00_axi_aclk : signal is "XIL_INTERFACENAME CLK.s00_axi_aclk, FREQ_HZ 1250000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN bd_9d54_noc_ai_mm_0_0_s_axi_aclk, ASSOCIATED_BUSIF S00_AXI, INSERT_VIP 0, PHYSICAL_CHANNEL AIE_TO_NOC_NSU";
  attribute X_INTERFACE_INFO of S00_AXI_araddr : signal is "xilinx.com:interface:aximm:1.0 S00_AXI ARADDR";
  attribute X_INTERFACE_INFO of S00_AXI_arburst : signal is "xilinx.com:interface:aximm:1.0 S00_AXI ARBURST";
  attribute X_INTERFACE_INFO of S00_AXI_arcache : signal is "xilinx.com:interface:aximm:1.0 S00_AXI ARCACHE";
  attribute X_INTERFACE_INFO of S00_AXI_arid : signal is "xilinx.com:interface:aximm:1.0 S00_AXI ARID";
  attribute X_INTERFACE_INFO of S00_AXI_arlen : signal is "xilinx.com:interface:aximm:1.0 S00_AXI ARLEN";
  attribute X_INTERFACE_INFO of S00_AXI_arprot : signal is "xilinx.com:interface:aximm:1.0 S00_AXI ARPROT";
  attribute X_INTERFACE_INFO of S00_AXI_arqos : signal is "xilinx.com:interface:aximm:1.0 S00_AXI ARQOS";
  attribute X_INTERFACE_INFO of S00_AXI_arready : signal is "xilinx.com:interface:aximm:1.0 S00_AXI ARREADY";
  attribute X_INTERFACE_INFO of S00_AXI_arregion : signal is "xilinx.com:interface:aximm:1.0 S00_AXI ARREGION";
  attribute X_INTERFACE_INFO of S00_AXI_arsize : signal is "xilinx.com:interface:aximm:1.0 S00_AXI ARSIZE";
  attribute X_INTERFACE_INFO of S00_AXI_arvalid : signal is "xilinx.com:interface:aximm:1.0 S00_AXI ARVALID";
  attribute X_INTERFACE_INFO of S00_AXI_awaddr : signal is "xilinx.com:interface:aximm:1.0 S00_AXI AWADDR";
  attribute X_INTERFACE_INFO of S00_AXI_awburst : signal is "xilinx.com:interface:aximm:1.0 S00_AXI AWBURST";
  attribute X_INTERFACE_INFO of S00_AXI_awcache : signal is "xilinx.com:interface:aximm:1.0 S00_AXI AWCACHE";
  attribute X_INTERFACE_INFO of S00_AXI_awid : signal is "xilinx.com:interface:aximm:1.0 S00_AXI AWID";
  attribute X_INTERFACE_INFO of S00_AXI_awlen : signal is "xilinx.com:interface:aximm:1.0 S00_AXI AWLEN";
  attribute X_INTERFACE_INFO of S00_AXI_awprot : signal is "xilinx.com:interface:aximm:1.0 S00_AXI AWPROT";
  attribute X_INTERFACE_INFO of S00_AXI_awqos : signal is "xilinx.com:interface:aximm:1.0 S00_AXI AWQOS";
  attribute X_INTERFACE_INFO of S00_AXI_awready : signal is "xilinx.com:interface:aximm:1.0 S00_AXI AWREADY";
  attribute X_INTERFACE_INFO of S00_AXI_awregion : signal is "xilinx.com:interface:aximm:1.0 S00_AXI AWREGION";
  attribute X_INTERFACE_INFO of S00_AXI_awsize : signal is "xilinx.com:interface:aximm:1.0 S00_AXI AWSIZE";
  attribute X_INTERFACE_INFO of S00_AXI_awvalid : signal is "xilinx.com:interface:aximm:1.0 S00_AXI AWVALID";
  attribute X_INTERFACE_INFO of S00_AXI_bid : signal is "xilinx.com:interface:aximm:1.0 S00_AXI BID";
  attribute X_INTERFACE_INFO of S00_AXI_bready : signal is "xilinx.com:interface:aximm:1.0 S00_AXI BREADY";
  attribute X_INTERFACE_INFO of S00_AXI_bresp : signal is "xilinx.com:interface:aximm:1.0 S00_AXI BRESP";
  attribute X_INTERFACE_INFO of S00_AXI_bvalid : signal is "xilinx.com:interface:aximm:1.0 S00_AXI BVALID";
  attribute X_INTERFACE_INFO of S00_AXI_rdata : signal is "xilinx.com:interface:aximm:1.0 S00_AXI RDATA";
  attribute X_INTERFACE_INFO of S00_AXI_rid : signal is "xilinx.com:interface:aximm:1.0 S00_AXI RID";
  attribute X_INTERFACE_INFO of S00_AXI_rlast : signal is "xilinx.com:interface:aximm:1.0 S00_AXI RLAST";
  attribute X_INTERFACE_INFO of S00_AXI_rready : signal is "xilinx.com:interface:aximm:1.0 S00_AXI RREADY";
  attribute X_INTERFACE_PARAMETER of S00_AXI_rready : signal is "XIL_INTERFACENAME S00_AXI, DATA_WIDTH 128, PROTOCOL AXI4, FREQ_HZ 1250000000, ID_WIDTH 2, ADDR_WIDTH 42, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 17, RUSER_WIDTH 17, BUSER_WIDTH 0, READ_WRITE_MODE READ_WRITE, HAS_BURST 1, HAS_LOCK 1, HAS_PROT 1, HAS_CACHE 1, HAS_QOS 1, HAS_REGION 1, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, SUPPORTS_NARROW_BURST 1, NUM_READ_OUTSTANDING 32, NUM_WRITE_OUTSTANDING 32, MAX_BURST_LENGTH 256, PHASE 0.0, CLK_DOMAIN bd_9d54_noc_ai_mm_0_0_s_axi_aclk, NUM_READ_THREADS 4, NUM_WRITE_THREADS 4, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, INSERT_VIP 0, MY_CATEGORY AIE, CATEGORY NOC, PHYSICAL_CHANNEL NOC_NSU_TO_AIE";
  attribute X_INTERFACE_INFO of S00_AXI_rresp : signal is "xilinx.com:interface:aximm:1.0 S00_AXI RRESP";
  attribute X_INTERFACE_INFO of S00_AXI_ruser : signal is "xilinx.com:interface:aximm:1.0 S00_AXI RUSER";
  attribute X_INTERFACE_INFO of S00_AXI_rvalid : signal is "xilinx.com:interface:aximm:1.0 S00_AXI RVALID";
  attribute X_INTERFACE_INFO of S00_AXI_wdata : signal is "xilinx.com:interface:aximm:1.0 S00_AXI WDATA";
  attribute X_INTERFACE_INFO of S00_AXI_wlast : signal is "xilinx.com:interface:aximm:1.0 S00_AXI WLAST";
  attribute X_INTERFACE_INFO of S00_AXI_wready : signal is "xilinx.com:interface:aximm:1.0 S00_AXI WREADY";
  attribute X_INTERFACE_INFO of S00_AXI_wstrb : signal is "xilinx.com:interface:aximm:1.0 S00_AXI WSTRB";
  attribute X_INTERFACE_INFO of S00_AXI_wuser : signal is "xilinx.com:interface:aximm:1.0 S00_AXI WUSER";
  attribute X_INTERFACE_INFO of S00_AXI_wvalid : signal is "xilinx.com:interface:aximm:1.0 S00_AXI WVALID";
begin
  S00_AXI_bid(15) <= \<const0>\;
  S00_AXI_bid(14) <= \<const0>\;
  S00_AXI_bid(13) <= \<const0>\;
  S00_AXI_bid(12) <= \<const0>\;
  S00_AXI_bid(11) <= \<const0>\;
  S00_AXI_bid(10) <= \<const0>\;
  S00_AXI_bid(9) <= \<const0>\;
  S00_AXI_bid(8) <= \<const0>\;
  S00_AXI_bid(7) <= \<const0>\;
  S00_AXI_bid(6) <= \<const0>\;
  S00_AXI_bid(5) <= \<const0>\;
  S00_AXI_bid(4) <= \<const0>\;
  S00_AXI_bid(3) <= \<const0>\;
  S00_AXI_bid(2) <= \<const0>\;
  S00_AXI_bid(1 downto 0) <= \^s00_axi_bid\(1 downto 0);
  S00_AXI_rid(15) <= \<const0>\;
  S00_AXI_rid(14) <= \<const0>\;
  S00_AXI_rid(13) <= \<const0>\;
  S00_AXI_rid(12) <= \<const0>\;
  S00_AXI_rid(11) <= \<const0>\;
  S00_AXI_rid(10) <= \<const0>\;
  S00_AXI_rid(9) <= \<const0>\;
  S00_AXI_rid(8) <= \<const0>\;
  S00_AXI_rid(7) <= \<const0>\;
  S00_AXI_rid(6) <= \<const0>\;
  S00_AXI_rid(5) <= \<const0>\;
  S00_AXI_rid(4) <= \<const0>\;
  S00_AXI_rid(3) <= \<const0>\;
  S00_AXI_rid(2) <= \<const0>\;
  S00_AXI_rid(1 downto 0) <= \^s00_axi_rid\(1 downto 0);
GND: unisim.vcomponents.GND
     port map (
      G => \<const0>\
    );
inst: entity work.ulp_inst_0_bd_9d54
     port map (
      S00_AXI_araddr(33 downto 0) => S00_AXI_araddr(33 downto 0),
      S00_AXI_arburst(1 downto 0) => S00_AXI_arburst(1 downto 0),
      S00_AXI_arcache(3 downto 0) => S00_AXI_arcache(3 downto 0),
      S00_AXI_arid(15 downto 0) => S00_AXI_arid(15 downto 0),
      S00_AXI_arlen(7 downto 0) => S00_AXI_arlen(7 downto 0),
      S00_AXI_arlock => S00_AXI_arlock,
      S00_AXI_arprot(2 downto 0) => S00_AXI_arprot(2 downto 0),
      S00_AXI_arqos(3 downto 0) => S00_AXI_arqos(3 downto 0),
      S00_AXI_arready(0) => S00_AXI_arready(0),
      S00_AXI_arregion(3 downto 0) => S00_AXI_arregion(3 downto 0),
      S00_AXI_arsize(2 downto 0) => S00_AXI_arsize(2 downto 0),
      S00_AXI_arvalid(0) => S00_AXI_arvalid(0),
      S00_AXI_awaddr(33 downto 0) => S00_AXI_awaddr(33 downto 0),
      S00_AXI_awburst(1 downto 0) => S00_AXI_awburst(1 downto 0),
      S00_AXI_awcache(3 downto 0) => S00_AXI_awcache(3 downto 0),
      S00_AXI_awid(15 downto 0) => S00_AXI_awid(15 downto 0),
      S00_AXI_awlen(7 downto 0) => S00_AXI_awlen(7 downto 0),
      S00_AXI_awlock => S00_AXI_awlock,
      S00_AXI_awprot(2 downto 0) => S00_AXI_awprot(2 downto 0),
      S00_AXI_awqos(3 downto 0) => S00_AXI_awqos(3 downto 0),
      S00_AXI_awready(0) => S00_AXI_awready(0),
      S00_AXI_awregion(3 downto 0) => S00_AXI_awregion(3 downto 0),
      S00_AXI_awsize(2 downto 0) => S00_AXI_awsize(2 downto 0),
      S00_AXI_awvalid(0) => S00_AXI_awvalid(0),
      S00_AXI_bid(15 downto 2) => NLW_inst_S00_AXI_bid_UNCONNECTED(15 downto 2),
      S00_AXI_bid(1 downto 0) => \^s00_axi_bid\(1 downto 0),
      S00_AXI_bready(0) => S00_AXI_bready(0),
      S00_AXI_bresp(1 downto 0) => S00_AXI_bresp(1 downto 0),
      S00_AXI_bvalid(0) => S00_AXI_bvalid(0),
      S00_AXI_rdata(127 downto 0) => S00_AXI_rdata(127 downto 0),
      S00_AXI_rid(15 downto 2) => NLW_inst_S00_AXI_rid_UNCONNECTED(15 downto 2),
      S00_AXI_rid(1 downto 0) => \^s00_axi_rid\(1 downto 0),
      S00_AXI_rlast(0) => S00_AXI_rlast(0),
      S00_AXI_rready(0) => S00_AXI_rready(0),
      S00_AXI_rresp(1 downto 0) => S00_AXI_rresp(1 downto 0),
      S00_AXI_ruser(16 downto 0) => S00_AXI_ruser(16 downto 0),
      S00_AXI_rvalid(0) => S00_AXI_rvalid(0),
      S00_AXI_wdata(127 downto 0) => S00_AXI_wdata(127 downto 0),
      S00_AXI_wlast(0) => S00_AXI_wlast(0),
      S00_AXI_wready(0) => S00_AXI_wready(0),
      S00_AXI_wstrb(15 downto 0) => S00_AXI_wstrb(15 downto 0),
      S00_AXI_wuser(16 downto 0) => S00_AXI_wuser(16 downto 0),
      S00_AXI_wvalid(0) => S00_AXI_wvalid(0),
      s00_axi_aclk => s00_axi_aclk
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity ulp_inst_0 is
  port (
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
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of ulp_inst_0 : entity is true;
  attribute HW_HANDOFF : string;
  attribute HW_HANDOFF of ulp_inst_0 : entity is "ulp_inst_0.hwdef";
end ulp_inst_0;

architecture STRUCTURE of ulp_inst_0 is
  component ulp_inst_0_axi_dbg_fw_0 is
  port (
    aclk : in STD_LOGIC;
    aresetn : in STD_LOGIC;
    s_axi_awid : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_awaddr : in STD_LOGIC_VECTOR ( 63 downto 0 );
    s_axi_awlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    s_axi_awsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_awburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_awlock : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_awcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_awqos : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_awregion : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_awuser : in STD_LOGIC_VECTOR ( 17 downto 0 );
    s_axi_awvalid : in STD_LOGIC;
    s_axi_awready : out STD_LOGIC;
    s_axi_wdata : in STD_LOGIC_VECTOR ( 127 downto 0 );
    s_axi_wstrb : in STD_LOGIC_VECTOR ( 15 downto 0 );
    s_axi_wlast : in STD_LOGIC;
    s_axi_wvalid : in STD_LOGIC;
    s_axi_wready : out STD_LOGIC;
    s_axi_bid : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_bvalid : out STD_LOGIC;
    s_axi_bready : in STD_LOGIC;
    s_axi_arid : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_araddr : in STD_LOGIC_VECTOR ( 63 downto 0 );
    s_axi_arlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    s_axi_arsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_arburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_arlock : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_arcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_arqos : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_arregion : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_aruser : in STD_LOGIC_VECTOR ( 17 downto 0 );
    s_axi_arvalid : in STD_LOGIC;
    s_axi_arready : out STD_LOGIC;
    s_axi_rid : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_rdata : out STD_LOGIC_VECTOR ( 127 downto 0 );
    s_axi_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_rlast : out STD_LOGIC;
    s_axi_rvalid : out STD_LOGIC;
    s_axi_rready : in STD_LOGIC;
    m_axi_awid : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_awaddr : out STD_LOGIC_VECTOR ( 63 downto 0 );
    m_axi_awlen : out STD_LOGIC_VECTOR ( 7 downto 0 );
    m_axi_awsize : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_awburst : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_awlock : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_awcache : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_awprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_awqos : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_awregion : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_awuser : out STD_LOGIC_VECTOR ( 17 downto 0 );
    m_axi_awvalid : out STD_LOGIC;
    m_axi_awready : in STD_LOGIC;
    m_axi_wdata : out STD_LOGIC_VECTOR ( 127 downto 0 );
    m_axi_wstrb : out STD_LOGIC_VECTOR ( 15 downto 0 );
    m_axi_wlast : out STD_LOGIC;
    m_axi_wvalid : out STD_LOGIC;
    m_axi_wready : in STD_LOGIC;
    m_axi_bid : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_bvalid : in STD_LOGIC;
    m_axi_bready : out STD_LOGIC;
    m_axi_arid : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_araddr : out STD_LOGIC_VECTOR ( 63 downto 0 );
    m_axi_arlen : out STD_LOGIC_VECTOR ( 7 downto 0 );
    m_axi_arsize : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_arburst : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_arlock : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_arcache : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_arprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_arqos : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_arregion : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_aruser : out STD_LOGIC_VECTOR ( 17 downto 0 );
    m_axi_arvalid : out STD_LOGIC;
    m_axi_arready : in STD_LOGIC;
    m_axi_rid : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_rdata : in STD_LOGIC_VECTOR ( 127 downto 0 );
    m_axi_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_rlast : in STD_LOGIC;
    m_axi_rvalid : in STD_LOGIC;
    m_axi_rready : out STD_LOGIC;
    s_axi_ctl_awaddr : in STD_LOGIC_VECTOR ( 11 downto 0 );
    s_axi_ctl_awvalid : in STD_LOGIC;
    s_axi_ctl_awready : out STD_LOGIC;
    s_axi_ctl_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_ctl_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_ctl_wvalid : in STD_LOGIC;
    s_axi_ctl_wready : out STD_LOGIC;
    s_axi_ctl_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_ctl_bvalid : out STD_LOGIC;
    s_axi_ctl_bready : in STD_LOGIC;
    s_axi_ctl_araddr : in STD_LOGIC_VECTOR ( 11 downto 0 );
    s_axi_ctl_arvalid : in STD_LOGIC;
    s_axi_ctl_arready : out STD_LOGIC;
    s_axi_ctl_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_ctl_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_ctl_rvalid : out STD_LOGIC;
    s_axi_ctl_rready : in STD_LOGIC;
    mi_w_error : out STD_LOGIC;
    mi_r_error : out STD_LOGIC;
    ip2intc_irpt : out STD_LOGIC
  );
  end component ulp_inst_0_axi_dbg_fw_0;
  component ulp_inst_0_axi_dbg_hub_0 is
  port (
    aclk : in STD_LOGIC;
    aresetn : in STD_LOGIC;
    s_axi_awid : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_awaddr : in STD_LOGIC_VECTOR ( 63 downto 0 );
    s_axi_awlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    s_axi_awsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_awburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_awlock : in STD_LOGIC;
    s_axi_awcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_awqos : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_awregion : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_awvalid : in STD_LOGIC;
    s_axi_awready : out STD_LOGIC;
    s_axi_wdata : in STD_LOGIC_VECTOR ( 127 downto 0 );
    s_axi_wstrb : in STD_LOGIC_VECTOR ( 15 downto 0 );
    s_axi_wlast : in STD_LOGIC;
    s_axi_wvalid : in STD_LOGIC;
    s_axi_wready : out STD_LOGIC;
    s_axi_bid : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_bvalid : out STD_LOGIC;
    s_axi_bready : in STD_LOGIC;
    s_axi_arid : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_araddr : in STD_LOGIC_VECTOR ( 63 downto 0 );
    s_axi_arlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    s_axi_arsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_arburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_arlock : in STD_LOGIC;
    s_axi_arcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_arqos : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_arregion : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_arvalid : in STD_LOGIC;
    s_axi_arready : out STD_LOGIC;
    s_axi_rid : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_rdata : out STD_LOGIC_VECTOR ( 127 downto 0 );
    s_axi_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_rlast : out STD_LOGIC;
    s_axi_rvalid : out STD_LOGIC;
    s_axi_rready : in STD_LOGIC
  );
  end component ulp_inst_0_axi_dbg_hub_0;
  component ulp_inst_0_axi_gpio_null_user_0 is
  port (
    s_axi_aclk : in STD_LOGIC;
    s_axi_aresetn : in STD_LOGIC;
    s_axi_awaddr : in STD_LOGIC_VECTOR ( 8 downto 0 );
    s_axi_awvalid : in STD_LOGIC;
    s_axi_awready : out STD_LOGIC;
    s_axi_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_wvalid : in STD_LOGIC;
    s_axi_wready : out STD_LOGIC;
    s_axi_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_bvalid : out STD_LOGIC;
    s_axi_bready : in STD_LOGIC;
    s_axi_araddr : in STD_LOGIC_VECTOR ( 8 downto 0 );
    s_axi_arvalid : in STD_LOGIC;
    s_axi_arready : out STD_LOGIC;
    s_axi_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_rvalid : out STD_LOGIC;
    s_axi_rready : in STD_LOGIC;
    gpio_io_i : in STD_LOGIC_VECTOR ( 0 to 0 );
    gpio_io_o : out STD_LOGIC_VECTOR ( 0 to 0 );
    gpio_io_t : out STD_LOGIC_VECTOR ( 0 to 0 )
  );
  end component ulp_inst_0_axi_gpio_null_user_0;
  component ulp_inst_0_axi_ic_user_0 is
  port (
    aclk : in STD_LOGIC;
    aresetn : in STD_LOGIC;
    S00_AXI_awaddr : in STD_LOGIC_VECTOR ( 63 downto 0 );
    S00_AXI_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S00_AXI_awvalid : in STD_LOGIC;
    S00_AXI_awready : out STD_LOGIC;
    S00_AXI_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S00_AXI_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S00_AXI_wvalid : in STD_LOGIC;
    S00_AXI_wready : out STD_LOGIC;
    S00_AXI_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S00_AXI_bvalid : out STD_LOGIC;
    S00_AXI_bready : in STD_LOGIC;
    S00_AXI_araddr : in STD_LOGIC_VECTOR ( 63 downto 0 );
    S00_AXI_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S00_AXI_arvalid : in STD_LOGIC;
    S00_AXI_arready : out STD_LOGIC;
    S00_AXI_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    S00_AXI_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S00_AXI_rvalid : out STD_LOGIC;
    S00_AXI_rready : in STD_LOGIC;
    M00_AXI_awid : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M00_AXI_awaddr : out STD_LOGIC_VECTOR ( 63 downto 0 );
    M00_AXI_awlen : out STD_LOGIC_VECTOR ( 7 downto 0 );
    M00_AXI_awsize : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M00_AXI_awburst : out STD_LOGIC_VECTOR ( 1 downto 0 );
    M00_AXI_awlock : out STD_LOGIC_VECTOR ( 0 to 0 );
    M00_AXI_awcache : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M00_AXI_awprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M00_AXI_awqos : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M00_AXI_awuser : out STD_LOGIC_VECTOR ( 113 downto 0 );
    M00_AXI_awvalid : out STD_LOGIC;
    M00_AXI_awready : in STD_LOGIC;
    M00_AXI_wdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M00_AXI_wstrb : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M00_AXI_wlast : out STD_LOGIC;
    M00_AXI_wuser : out STD_LOGIC_VECTOR ( 13 downto 0 );
    M00_AXI_wvalid : out STD_LOGIC;
    M00_AXI_wready : in STD_LOGIC;
    M00_AXI_bid : in STD_LOGIC_VECTOR ( 2 downto 0 );
    M00_AXI_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M00_AXI_bvalid : in STD_LOGIC;
    M00_AXI_bready : out STD_LOGIC;
    M00_AXI_arid : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M00_AXI_araddr : out STD_LOGIC_VECTOR ( 63 downto 0 );
    M00_AXI_arlen : out STD_LOGIC_VECTOR ( 7 downto 0 );
    M00_AXI_arsize : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M00_AXI_arburst : out STD_LOGIC_VECTOR ( 1 downto 0 );
    M00_AXI_arlock : out STD_LOGIC_VECTOR ( 0 to 0 );
    M00_AXI_arcache : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M00_AXI_arprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M00_AXI_arqos : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M00_AXI_aruser : out STD_LOGIC_VECTOR ( 113 downto 0 );
    M00_AXI_arvalid : out STD_LOGIC;
    M00_AXI_arready : in STD_LOGIC;
    M00_AXI_rid : in STD_LOGIC_VECTOR ( 2 downto 0 );
    M00_AXI_rdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    M00_AXI_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M00_AXI_rlast : in STD_LOGIC;
    M00_AXI_ruser : in STD_LOGIC_VECTOR ( 13 downto 0 );
    M00_AXI_rvalid : in STD_LOGIC;
    M00_AXI_rready : out STD_LOGIC
  );
  end component ulp_inst_0_axi_ic_user_0;
  component ulp_inst_0_axi_ic_user_extend_0 is
  port (
    aclk : in STD_LOGIC;
    aresetn : in STD_LOGIC;
    S00_AXI_awid : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S00_AXI_awaddr : in STD_LOGIC_VECTOR ( 63 downto 0 );
    S00_AXI_awlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    S00_AXI_awsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S00_AXI_awburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    S00_AXI_awlock : in STD_LOGIC_VECTOR ( 0 to 0 );
    S00_AXI_awcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S00_AXI_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S00_AXI_awqos : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S00_AXI_awuser : in STD_LOGIC_VECTOR ( 113 downto 0 );
    S00_AXI_awvalid : in STD_LOGIC;
    S00_AXI_awready : out STD_LOGIC;
    S00_AXI_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S00_AXI_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S00_AXI_wlast : in STD_LOGIC;
    S00_AXI_wuser : in STD_LOGIC_VECTOR ( 13 downto 0 );
    S00_AXI_wvalid : in STD_LOGIC;
    S00_AXI_wready : out STD_LOGIC;
    S00_AXI_bid : out STD_LOGIC_VECTOR ( 2 downto 0 );
    S00_AXI_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S00_AXI_bvalid : out STD_LOGIC;
    S00_AXI_bready : in STD_LOGIC;
    S00_AXI_arid : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S00_AXI_araddr : in STD_LOGIC_VECTOR ( 63 downto 0 );
    S00_AXI_arlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    S00_AXI_arsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S00_AXI_arburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    S00_AXI_arlock : in STD_LOGIC_VECTOR ( 0 to 0 );
    S00_AXI_arcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S00_AXI_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S00_AXI_arqos : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S00_AXI_aruser : in STD_LOGIC_VECTOR ( 113 downto 0 );
    S00_AXI_arvalid : in STD_LOGIC;
    S00_AXI_arready : out STD_LOGIC;
    S00_AXI_rid : out STD_LOGIC_VECTOR ( 2 downto 0 );
    S00_AXI_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    S00_AXI_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S00_AXI_rlast : out STD_LOGIC;
    S00_AXI_ruser : out STD_LOGIC_VECTOR ( 13 downto 0 );
    S00_AXI_rvalid : out STD_LOGIC;
    S00_AXI_rready : in STD_LOGIC;
    M00_AXI_awaddr : out STD_LOGIC_VECTOR ( 8 downto 0 );
    M00_AXI_awprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M00_AXI_awvalid : out STD_LOGIC;
    M00_AXI_awready : in STD_LOGIC;
    M00_AXI_wdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M00_AXI_wstrb : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M00_AXI_wvalid : out STD_LOGIC;
    M00_AXI_wready : in STD_LOGIC;
    M00_AXI_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M00_AXI_bvalid : in STD_LOGIC;
    M00_AXI_bready : out STD_LOGIC;
    M00_AXI_araddr : out STD_LOGIC_VECTOR ( 8 downto 0 );
    M00_AXI_arprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M00_AXI_arvalid : out STD_LOGIC;
    M00_AXI_arready : in STD_LOGIC;
    M00_AXI_rdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    M00_AXI_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M00_AXI_rvalid : in STD_LOGIC;
    M00_AXI_rready : out STD_LOGIC
  );
  end component ulp_inst_0_axi_ic_user_extend_0;
  component ulp_inst_0_axi_noc_aie_prog_0 is
  port (
    S00_INI_internoc : in STD_LOGIC_VECTOR ( 0 to 0 );
    M00_AXI_awaddr : out STD_LOGIC_VECTOR ( 63 downto 0 );
    M00_AXI_awlen : out STD_LOGIC_VECTOR ( 7 downto 0 );
    M00_AXI_awsize : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M00_AXI_awburst : out STD_LOGIC_VECTOR ( 1 downto 0 );
    M00_AXI_awlock : out STD_LOGIC_VECTOR ( 0 to 0 );
    M00_AXI_awcache : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M00_AXI_awprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M00_AXI_awregion : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M00_AXI_awqos : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M00_AXI_awvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    M00_AXI_awready : in STD_LOGIC_VECTOR ( 0 to 0 );
    M00_AXI_wdata : out STD_LOGIC_VECTOR ( 127 downto 0 );
    M00_AXI_wstrb : out STD_LOGIC_VECTOR ( 15 downto 0 );
    M00_AXI_wlast : out STD_LOGIC_VECTOR ( 0 to 0 );
    M00_AXI_wvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    M00_AXI_wready : in STD_LOGIC_VECTOR ( 0 to 0 );
    M00_AXI_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M00_AXI_bvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    M00_AXI_bready : out STD_LOGIC_VECTOR ( 0 to 0 );
    M00_AXI_araddr : out STD_LOGIC_VECTOR ( 63 downto 0 );
    M00_AXI_arlen : out STD_LOGIC_VECTOR ( 7 downto 0 );
    M00_AXI_arsize : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M00_AXI_arburst : out STD_LOGIC_VECTOR ( 1 downto 0 );
    M00_AXI_arlock : out STD_LOGIC_VECTOR ( 0 to 0 );
    M00_AXI_arcache : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M00_AXI_arprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M00_AXI_arregion : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M00_AXI_arqos : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M00_AXI_arvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    M00_AXI_arready : in STD_LOGIC_VECTOR ( 0 to 0 );
    M00_AXI_rdata : in STD_LOGIC_VECTOR ( 127 downto 0 );
    M00_AXI_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M00_AXI_rlast : in STD_LOGIC_VECTOR ( 0 to 0 );
    M00_AXI_rvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    M00_AXI_rready : out STD_LOGIC_VECTOR ( 0 to 0 );
    aclk0 : in STD_LOGIC;
    M00_AXI_arid : out STD_LOGIC_VECTOR ( 1 downto 0 );
    M00_AXI_awid : out STD_LOGIC_VECTOR ( 1 downto 0 );
    M00_AXI_bid : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M00_AXI_rid : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M00_AXI_ruser : in STD_LOGIC_VECTOR ( 16 downto 0 );
    M00_AXI_wuser : out STD_LOGIC_VECTOR ( 16 downto 0 )
  );
  end component ulp_inst_0_axi_noc_aie_prog_0;
  component ulp_inst_0_axi_noc_h2c_0 is
  port (
    S00_INI_internoc : in STD_LOGIC_VECTOR ( 0 to 0 );
    S01_INI_internoc : in STD_LOGIC_VECTOR ( 0 to 0 );
    M00_AXI_awaddr : out STD_LOGIC_VECTOR ( 63 downto 0 );
    M00_AXI_awlen : out STD_LOGIC_VECTOR ( 7 downto 0 );
    M00_AXI_awsize : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M00_AXI_awburst : out STD_LOGIC_VECTOR ( 1 downto 0 );
    M00_AXI_awlock : out STD_LOGIC_VECTOR ( 0 to 0 );
    M00_AXI_awcache : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M00_AXI_awprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M00_AXI_awregion : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M00_AXI_awqos : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M00_AXI_awvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    M00_AXI_awready : in STD_LOGIC_VECTOR ( 0 to 0 );
    M00_AXI_wdata : out STD_LOGIC_VECTOR ( 127 downto 0 );
    M00_AXI_wstrb : out STD_LOGIC_VECTOR ( 15 downto 0 );
    M00_AXI_wlast : out STD_LOGIC_VECTOR ( 0 to 0 );
    M00_AXI_wvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    M00_AXI_wready : in STD_LOGIC_VECTOR ( 0 to 0 );
    M00_AXI_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M00_AXI_bvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    M00_AXI_bready : out STD_LOGIC_VECTOR ( 0 to 0 );
    M00_AXI_araddr : out STD_LOGIC_VECTOR ( 63 downto 0 );
    M00_AXI_arlen : out STD_LOGIC_VECTOR ( 7 downto 0 );
    M00_AXI_arsize : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M00_AXI_arburst : out STD_LOGIC_VECTOR ( 1 downto 0 );
    M00_AXI_arlock : out STD_LOGIC_VECTOR ( 0 to 0 );
    M00_AXI_arcache : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M00_AXI_arprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M00_AXI_arregion : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M00_AXI_arqos : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M00_AXI_arvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    M00_AXI_arready : in STD_LOGIC_VECTOR ( 0 to 0 );
    M00_AXI_rdata : in STD_LOGIC_VECTOR ( 127 downto 0 );
    M00_AXI_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M00_AXI_rlast : in STD_LOGIC_VECTOR ( 0 to 0 );
    M00_AXI_rvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    M00_AXI_rready : out STD_LOGIC_VECTOR ( 0 to 0 );
    M01_AXI_awaddr : out STD_LOGIC_VECTOR ( 63 downto 0 );
    M01_AXI_awlen : out STD_LOGIC_VECTOR ( 7 downto 0 );
    M01_AXI_awsize : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M01_AXI_awburst : out STD_LOGIC_VECTOR ( 1 downto 0 );
    M01_AXI_awlock : out STD_LOGIC_VECTOR ( 0 to 0 );
    M01_AXI_awcache : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M01_AXI_awprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M01_AXI_awregion : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M01_AXI_awqos : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M01_AXI_awvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    M01_AXI_awready : in STD_LOGIC_VECTOR ( 0 to 0 );
    M01_AXI_wdata : out STD_LOGIC_VECTOR ( 511 downto 0 );
    M01_AXI_wstrb : out STD_LOGIC_VECTOR ( 63 downto 0 );
    M01_AXI_wlast : out STD_LOGIC_VECTOR ( 0 to 0 );
    M01_AXI_wvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    M01_AXI_wready : in STD_LOGIC_VECTOR ( 0 to 0 );
    M01_AXI_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M01_AXI_bvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    M01_AXI_bready : out STD_LOGIC_VECTOR ( 0 to 0 );
    M01_AXI_araddr : out STD_LOGIC_VECTOR ( 63 downto 0 );
    M01_AXI_arlen : out STD_LOGIC_VECTOR ( 7 downto 0 );
    M01_AXI_arsize : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M01_AXI_arburst : out STD_LOGIC_VECTOR ( 1 downto 0 );
    M01_AXI_arlock : out STD_LOGIC_VECTOR ( 0 to 0 );
    M01_AXI_arcache : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M01_AXI_arprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M01_AXI_arregion : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M01_AXI_arqos : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M01_AXI_arvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    M01_AXI_arready : in STD_LOGIC_VECTOR ( 0 to 0 );
    M01_AXI_rdata : in STD_LOGIC_VECTOR ( 511 downto 0 );
    M01_AXI_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M01_AXI_rlast : in STD_LOGIC_VECTOR ( 0 to 0 );
    M01_AXI_rvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    M01_AXI_rready : out STD_LOGIC_VECTOR ( 0 to 0 );
    aclk0 : in STD_LOGIC;
    M01_AXI_arid : out STD_LOGIC_VECTOR ( 1 downto 0 );
    M01_AXI_aruser : out STD_LOGIC_VECTOR ( 17 downto 0 );
    M01_AXI_awid : out STD_LOGIC_VECTOR ( 1 downto 0 );
    M01_AXI_awuser : out STD_LOGIC_VECTOR ( 17 downto 0 );
    M01_AXI_bid : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M01_AXI_rid : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M00_AXI_arid : out STD_LOGIC_VECTOR ( 1 downto 0 );
    M00_AXI_aruser : out STD_LOGIC_VECTOR ( 17 downto 0 );
    M00_AXI_awid : out STD_LOGIC_VECTOR ( 1 downto 0 );
    M00_AXI_awuser : out STD_LOGIC_VECTOR ( 17 downto 0 );
    M00_AXI_bid : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M00_AXI_rid : in STD_LOGIC_VECTOR ( 1 downto 0 )
  );
  end component ulp_inst_0_axi_noc_h2c_0;
  component ulp_inst_0_axi_noc_kernel0_0 is
  port (
    M00_INI_internoc : out STD_LOGIC_VECTOR ( 0 to 0 );
    M01_INI_internoc : out STD_LOGIC_VECTOR ( 0 to 0 );
    M02_INI_internoc : out STD_LOGIC_VECTOR ( 0 to 0 )
  );
  end component ulp_inst_0_axi_noc_kernel0_0;
  component ulp_inst_0_axi_sc_plram_0 is
  port (
    aclk : in STD_LOGIC;
    aclk1 : in STD_LOGIC;
    aresetn : in STD_LOGIC;
    S00_AXI_awid : in STD_LOGIC_VECTOR ( 1 downto 0 );
    S00_AXI_awaddr : in STD_LOGIC_VECTOR ( 63 downto 0 );
    S00_AXI_awlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    S00_AXI_awsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S00_AXI_awburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    S00_AXI_awlock : in STD_LOGIC_VECTOR ( 0 to 0 );
    S00_AXI_awcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S00_AXI_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S00_AXI_awqos : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S00_AXI_awuser : in STD_LOGIC_VECTOR ( 17 downto 0 );
    S00_AXI_awvalid : in STD_LOGIC;
    S00_AXI_awready : out STD_LOGIC;
    S00_AXI_wdata : in STD_LOGIC_VECTOR ( 511 downto 0 );
    S00_AXI_wstrb : in STD_LOGIC_VECTOR ( 63 downto 0 );
    S00_AXI_wlast : in STD_LOGIC;
    S00_AXI_wvalid : in STD_LOGIC;
    S00_AXI_wready : out STD_LOGIC;
    S00_AXI_bid : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S00_AXI_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S00_AXI_bvalid : out STD_LOGIC;
    S00_AXI_bready : in STD_LOGIC;
    S00_AXI_arid : in STD_LOGIC_VECTOR ( 1 downto 0 );
    S00_AXI_araddr : in STD_LOGIC_VECTOR ( 63 downto 0 );
    S00_AXI_arlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    S00_AXI_arsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S00_AXI_arburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    S00_AXI_arlock : in STD_LOGIC_VECTOR ( 0 to 0 );
    S00_AXI_arcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S00_AXI_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S00_AXI_arqos : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S00_AXI_aruser : in STD_LOGIC_VECTOR ( 17 downto 0 );
    S00_AXI_arvalid : in STD_LOGIC;
    S00_AXI_arready : out STD_LOGIC;
    S00_AXI_rid : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S00_AXI_rdata : out STD_LOGIC_VECTOR ( 511 downto 0 );
    S00_AXI_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S00_AXI_rlast : out STD_LOGIC;
    S00_AXI_rvalid : out STD_LOGIC;
    S00_AXI_rready : in STD_LOGIC;
    M00_AXI_awaddr : out STD_LOGIC_VECTOR ( 16 downto 0 );
    M00_AXI_awlen : out STD_LOGIC_VECTOR ( 7 downto 0 );
    M00_AXI_awsize : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M00_AXI_awburst : out STD_LOGIC_VECTOR ( 1 downto 0 );
    M00_AXI_awlock : out STD_LOGIC_VECTOR ( 0 to 0 );
    M00_AXI_awcache : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M00_AXI_awprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M00_AXI_awqos : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M00_AXI_awuser : out STD_LOGIC_VECTOR ( 17 downto 0 );
    M00_AXI_awvalid : out STD_LOGIC;
    M00_AXI_awready : in STD_LOGIC;
    M00_AXI_wdata : out STD_LOGIC_VECTOR ( 511 downto 0 );
    M00_AXI_wstrb : out STD_LOGIC_VECTOR ( 63 downto 0 );
    M00_AXI_wlast : out STD_LOGIC;
    M00_AXI_wvalid : out STD_LOGIC;
    M00_AXI_wready : in STD_LOGIC;
    M00_AXI_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M00_AXI_bvalid : in STD_LOGIC;
    M00_AXI_bready : out STD_LOGIC;
    M00_AXI_araddr : out STD_LOGIC_VECTOR ( 16 downto 0 );
    M00_AXI_arlen : out STD_LOGIC_VECTOR ( 7 downto 0 );
    M00_AXI_arsize : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M00_AXI_arburst : out STD_LOGIC_VECTOR ( 1 downto 0 );
    M00_AXI_arlock : out STD_LOGIC_VECTOR ( 0 to 0 );
    M00_AXI_arcache : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M00_AXI_arprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M00_AXI_arqos : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M00_AXI_aruser : out STD_LOGIC_VECTOR ( 17 downto 0 );
    M00_AXI_arvalid : out STD_LOGIC;
    M00_AXI_arready : in STD_LOGIC;
    M00_AXI_rdata : in STD_LOGIC_VECTOR ( 511 downto 0 );
    M00_AXI_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M00_AXI_rlast : in STD_LOGIC;
    M00_AXI_rvalid : in STD_LOGIC;
    M00_AXI_rready : out STD_LOGIC
  );
  end component ulp_inst_0_axi_sc_plram_0;
  component ulp_inst_0_gate_dbgfw_or_0 is
  port (
    Op1 : in STD_LOGIC_VECTOR ( 0 to 0 );
    Op2 : in STD_LOGIC_VECTOR ( 0 to 0 );
    Res : out STD_LOGIC_VECTOR ( 0 to 0 )
  );
  end component ulp_inst_0_gate_dbgfw_or_0;
  component ulp_inst_0_ip_pipe_dbg_hub_fw_00_0 is
  port (
    clk : in STD_LOGIC;
    D : in STD_LOGIC_VECTOR ( 0 to 0 );
    Q : out STD_LOGIC_VECTOR ( 0 to 0 );
    reset : in STD_LOGIC;
    clk_enable : in STD_LOGIC
  );
  end component ulp_inst_0_ip_pipe_dbg_hub_fw_00_0;
  component ulp_inst_0_ip_pipe_ext_tog_kernel_00_null_0 is
  port (
    clk : in STD_LOGIC;
    D : in STD_LOGIC_VECTOR ( 0 to 0 );
    Q : out STD_LOGIC_VECTOR ( 0 to 0 );
    reset : in STD_LOGIC;
    clk_enable : in STD_LOGIC
  );
  end component ulp_inst_0_ip_pipe_ext_tog_kernel_00_null_0;
  component ulp_inst_0_ip_pipe_ext_tog_kernel_01_null_0 is
  port (
    clk : in STD_LOGIC;
    D : in STD_LOGIC_VECTOR ( 0 to 0 );
    Q : out STD_LOGIC_VECTOR ( 0 to 0 );
    reset : in STD_LOGIC;
    clk_enable : in STD_LOGIC
  );
  end component ulp_inst_0_ip_pipe_ext_tog_kernel_01_null_0;
  component ulp_inst_0_plram_ctrl_0 is
  port (
    s_axi_aclk : in STD_LOGIC;
    s_axi_aresetn : in STD_LOGIC;
    s_axi_awaddr : in STD_LOGIC_VECTOR ( 16 downto 0 );
    s_axi_awlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    s_axi_awsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_awburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_awlock : in STD_LOGIC;
    s_axi_awcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_awvalid : in STD_LOGIC;
    s_axi_awready : out STD_LOGIC;
    s_axi_wdata : in STD_LOGIC_VECTOR ( 511 downto 0 );
    s_axi_wstrb : in STD_LOGIC_VECTOR ( 63 downto 0 );
    s_axi_wlast : in STD_LOGIC;
    s_axi_wvalid : in STD_LOGIC;
    s_axi_wready : out STD_LOGIC;
    s_axi_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_bvalid : out STD_LOGIC;
    s_axi_bready : in STD_LOGIC;
    s_axi_araddr : in STD_LOGIC_VECTOR ( 16 downto 0 );
    s_axi_arlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    s_axi_arsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_arburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_arlock : in STD_LOGIC;
    s_axi_arcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_arvalid : in STD_LOGIC;
    s_axi_arready : out STD_LOGIC;
    s_axi_rdata : out STD_LOGIC_VECTOR ( 511 downto 0 );
    s_axi_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_rlast : out STD_LOGIC;
    s_axi_rvalid : out STD_LOGIC;
    s_axi_rready : in STD_LOGIC;
    bram_rst_a : out STD_LOGIC;
    bram_clk_a : out STD_LOGIC;
    bram_en_a : out STD_LOGIC;
    bram_we_a : out STD_LOGIC_VECTOR ( 63 downto 0 );
    bram_addr_a : out STD_LOGIC_VECTOR ( 16 downto 0 );
    bram_wrdata_a : out STD_LOGIC_VECTOR ( 511 downto 0 );
    bram_rddata_a : in STD_LOGIC_VECTOR ( 511 downto 0 )
  );
  end component ulp_inst_0_plram_ctrl_0;
  component ulp_inst_0_plram_ctrl_bram_0 is
  port (
    clka : in STD_LOGIC;
    rsta : in STD_LOGIC;
    ena : in STD_LOGIC;
    regcea : in STD_LOGIC;
    wea : in STD_LOGIC_VECTOR ( 63 downto 0 );
    addra : in STD_LOGIC_VECTOR ( 16 downto 0 );
    dina : in STD_LOGIC_VECTOR ( 511 downto 0 );
    douta : out STD_LOGIC_VECTOR ( 511 downto 0 )
  );
  end component ulp_inst_0_plram_ctrl_bram_0;
  signal \<const0>\ : STD_LOGIC;
  signal ai_engine_0_s00_axi_aclk : STD_LOGIC;
  signal axi_dbg_fw_mi_r_error : STD_LOGIC;
  signal axi_dbg_fw_mi_w_error : STD_LOGIC;
  signal axi_ic_user_M00_AXI_ARADDR : STD_LOGIC_VECTOR ( 63 downto 0 );
  signal axi_ic_user_M00_AXI_ARBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal axi_ic_user_M00_AXI_ARCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal axi_ic_user_M00_AXI_ARID : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal axi_ic_user_M00_AXI_ARLEN : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal axi_ic_user_M00_AXI_ARLOCK : STD_LOGIC;
  signal axi_ic_user_M00_AXI_ARPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal axi_ic_user_M00_AXI_ARQOS : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal axi_ic_user_M00_AXI_ARREADY : STD_LOGIC;
  signal axi_ic_user_M00_AXI_ARSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal axi_ic_user_M00_AXI_ARUSER : STD_LOGIC_VECTOR ( 113 downto 0 );
  signal axi_ic_user_M00_AXI_ARVALID : STD_LOGIC;
  signal axi_ic_user_M00_AXI_AWADDR : STD_LOGIC_VECTOR ( 63 downto 0 );
  signal axi_ic_user_M00_AXI_AWBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal axi_ic_user_M00_AXI_AWCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal axi_ic_user_M00_AXI_AWID : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal axi_ic_user_M00_AXI_AWLEN : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal axi_ic_user_M00_AXI_AWLOCK : STD_LOGIC;
  signal axi_ic_user_M00_AXI_AWPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal axi_ic_user_M00_AXI_AWQOS : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal axi_ic_user_M00_AXI_AWREADY : STD_LOGIC;
  signal axi_ic_user_M00_AXI_AWSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal axi_ic_user_M00_AXI_AWUSER : STD_LOGIC_VECTOR ( 113 downto 0 );
  signal axi_ic_user_M00_AXI_AWVALID : STD_LOGIC;
  signal axi_ic_user_M00_AXI_BID : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal axi_ic_user_M00_AXI_BREADY : STD_LOGIC;
  signal axi_ic_user_M00_AXI_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal axi_ic_user_M00_AXI_BVALID : STD_LOGIC;
  signal axi_ic_user_M00_AXI_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal axi_ic_user_M00_AXI_RID : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal axi_ic_user_M00_AXI_RLAST : STD_LOGIC;
  signal axi_ic_user_M00_AXI_RREADY : STD_LOGIC;
  signal axi_ic_user_M00_AXI_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal axi_ic_user_M00_AXI_RUSER : STD_LOGIC_VECTOR ( 13 downto 0 );
  signal axi_ic_user_M00_AXI_RVALID : STD_LOGIC;
  signal axi_ic_user_M00_AXI_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal axi_ic_user_M00_AXI_WLAST : STD_LOGIC;
  signal axi_ic_user_M00_AXI_WREADY : STD_LOGIC;
  signal axi_ic_user_M00_AXI_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal axi_ic_user_M00_AXI_WUSER : STD_LOGIC_VECTOR ( 13 downto 0 );
  signal axi_ic_user_M00_AXI_WVALID : STD_LOGIC;
  signal axi_ic_user_extend_M00_AXI_ARADDR : STD_LOGIC_VECTOR ( 8 downto 0 );
  signal axi_ic_user_extend_M00_AXI_ARREADY : STD_LOGIC;
  signal axi_ic_user_extend_M00_AXI_ARVALID : STD_LOGIC;
  signal axi_ic_user_extend_M00_AXI_AWADDR : STD_LOGIC_VECTOR ( 8 downto 0 );
  signal axi_ic_user_extend_M00_AXI_AWREADY : STD_LOGIC;
  signal axi_ic_user_extend_M00_AXI_AWVALID : STD_LOGIC;
  signal axi_ic_user_extend_M00_AXI_BREADY : STD_LOGIC;
  signal axi_ic_user_extend_M00_AXI_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal axi_ic_user_extend_M00_AXI_BVALID : STD_LOGIC;
  signal axi_ic_user_extend_M00_AXI_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal axi_ic_user_extend_M00_AXI_RREADY : STD_LOGIC;
  signal axi_ic_user_extend_M00_AXI_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal axi_ic_user_extend_M00_AXI_RVALID : STD_LOGIC;
  signal axi_ic_user_extend_M00_AXI_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal axi_ic_user_extend_M00_AXI_WREADY : STD_LOGIC;
  signal axi_ic_user_extend_M00_AXI_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal axi_ic_user_extend_M00_AXI_WVALID : STD_LOGIC;
  signal axi_noc_aie_prog_M00_AXI_ARADDR : STD_LOGIC_VECTOR ( 33 downto 0 );
  signal axi_noc_aie_prog_M00_AXI_ARBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal axi_noc_aie_prog_M00_AXI_ARCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal axi_noc_aie_prog_M00_AXI_ARID : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal axi_noc_aie_prog_M00_AXI_ARLEN : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal axi_noc_aie_prog_M00_AXI_ARLOCK : STD_LOGIC;
  signal axi_noc_aie_prog_M00_AXI_ARPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal axi_noc_aie_prog_M00_AXI_ARQOS : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal axi_noc_aie_prog_M00_AXI_ARREADY : STD_LOGIC;
  signal axi_noc_aie_prog_M00_AXI_ARREGION : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal axi_noc_aie_prog_M00_AXI_ARSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal axi_noc_aie_prog_M00_AXI_ARVALID : STD_LOGIC;
  signal axi_noc_aie_prog_M00_AXI_AWADDR : STD_LOGIC_VECTOR ( 33 downto 0 );
  signal axi_noc_aie_prog_M00_AXI_AWBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal axi_noc_aie_prog_M00_AXI_AWCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal axi_noc_aie_prog_M00_AXI_AWID : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal axi_noc_aie_prog_M00_AXI_AWLEN : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal axi_noc_aie_prog_M00_AXI_AWLOCK : STD_LOGIC;
  signal axi_noc_aie_prog_M00_AXI_AWPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal axi_noc_aie_prog_M00_AXI_AWQOS : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal axi_noc_aie_prog_M00_AXI_AWREADY : STD_LOGIC;
  signal axi_noc_aie_prog_M00_AXI_AWREGION : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal axi_noc_aie_prog_M00_AXI_AWSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal axi_noc_aie_prog_M00_AXI_AWVALID : STD_LOGIC;
  signal axi_noc_aie_prog_M00_AXI_BID : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal axi_noc_aie_prog_M00_AXI_BREADY : STD_LOGIC;
  signal axi_noc_aie_prog_M00_AXI_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal axi_noc_aie_prog_M00_AXI_BVALID : STD_LOGIC;
  signal axi_noc_aie_prog_M00_AXI_RDATA : STD_LOGIC_VECTOR ( 127 downto 0 );
  signal axi_noc_aie_prog_M00_AXI_RID : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal axi_noc_aie_prog_M00_AXI_RLAST : STD_LOGIC;
  signal axi_noc_aie_prog_M00_AXI_RREADY : STD_LOGIC;
  signal axi_noc_aie_prog_M00_AXI_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal axi_noc_aie_prog_M00_AXI_RUSER : STD_LOGIC_VECTOR ( 16 downto 0 );
  signal axi_noc_aie_prog_M00_AXI_RVALID : STD_LOGIC;
  signal axi_noc_aie_prog_M00_AXI_WDATA : STD_LOGIC_VECTOR ( 127 downto 0 );
  signal axi_noc_aie_prog_M00_AXI_WLAST : STD_LOGIC;
  signal axi_noc_aie_prog_M00_AXI_WREADY : STD_LOGIC;
  signal axi_noc_aie_prog_M00_AXI_WSTRB : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal axi_noc_aie_prog_M00_AXI_WUSER : STD_LOGIC_VECTOR ( 16 downto 0 );
  signal axi_noc_aie_prog_M00_AXI_WVALID : STD_LOGIC;
  signal axi_noc_h2c_M00_AXI_ARADDR : STD_LOGIC_VECTOR ( 63 downto 0 );
  signal axi_noc_h2c_M00_AXI_ARBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal axi_noc_h2c_M00_AXI_ARCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal axi_noc_h2c_M00_AXI_ARID : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal axi_noc_h2c_M00_AXI_ARLEN : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal axi_noc_h2c_M00_AXI_ARLOCK : STD_LOGIC;
  signal axi_noc_h2c_M00_AXI_ARPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal axi_noc_h2c_M00_AXI_ARQOS : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal axi_noc_h2c_M00_AXI_ARREADY : STD_LOGIC;
  signal axi_noc_h2c_M00_AXI_ARREGION : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal axi_noc_h2c_M00_AXI_ARSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal axi_noc_h2c_M00_AXI_ARUSER : STD_LOGIC_VECTOR ( 17 downto 0 );
  signal axi_noc_h2c_M00_AXI_ARVALID : STD_LOGIC;
  signal axi_noc_h2c_M00_AXI_AWADDR : STD_LOGIC_VECTOR ( 63 downto 0 );
  signal axi_noc_h2c_M00_AXI_AWBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal axi_noc_h2c_M00_AXI_AWCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal axi_noc_h2c_M00_AXI_AWID : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal axi_noc_h2c_M00_AXI_AWLEN : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal axi_noc_h2c_M00_AXI_AWLOCK : STD_LOGIC;
  signal axi_noc_h2c_M00_AXI_AWPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal axi_noc_h2c_M00_AXI_AWQOS : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal axi_noc_h2c_M00_AXI_AWREADY : STD_LOGIC;
  signal axi_noc_h2c_M00_AXI_AWREGION : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal axi_noc_h2c_M00_AXI_AWSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal axi_noc_h2c_M00_AXI_AWUSER : STD_LOGIC_VECTOR ( 17 downto 0 );
  signal axi_noc_h2c_M00_AXI_AWVALID : STD_LOGIC;
  signal axi_noc_h2c_M00_AXI_BID : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal axi_noc_h2c_M00_AXI_BREADY : STD_LOGIC;
  signal axi_noc_h2c_M00_AXI_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal axi_noc_h2c_M00_AXI_BVALID : STD_LOGIC;
  signal axi_noc_h2c_M00_AXI_RDATA : STD_LOGIC_VECTOR ( 127 downto 0 );
  signal axi_noc_h2c_M00_AXI_RID : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal axi_noc_h2c_M00_AXI_RLAST : STD_LOGIC;
  signal axi_noc_h2c_M00_AXI_RREADY : STD_LOGIC;
  signal axi_noc_h2c_M00_AXI_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal axi_noc_h2c_M00_AXI_RVALID : STD_LOGIC;
  signal axi_noc_h2c_M00_AXI_WDATA : STD_LOGIC_VECTOR ( 127 downto 0 );
  signal axi_noc_h2c_M00_AXI_WLAST : STD_LOGIC;
  signal axi_noc_h2c_M00_AXI_WREADY : STD_LOGIC;
  signal axi_noc_h2c_M00_AXI_WSTRB : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal axi_noc_h2c_M00_AXI_WVALID : STD_LOGIC;
  signal axi_noc_h2c_M00_AXI_fw_ARADDR : STD_LOGIC_VECTOR ( 63 downto 0 );
  signal axi_noc_h2c_M00_AXI_fw_ARBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal axi_noc_h2c_M00_AXI_fw_ARCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal axi_noc_h2c_M00_AXI_fw_ARID : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal axi_noc_h2c_M00_AXI_fw_ARLEN : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal axi_noc_h2c_M00_AXI_fw_ARLOCK : STD_LOGIC;
  signal axi_noc_h2c_M00_AXI_fw_ARPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal axi_noc_h2c_M00_AXI_fw_ARQOS : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal axi_noc_h2c_M00_AXI_fw_ARREADY : STD_LOGIC;
  signal axi_noc_h2c_M00_AXI_fw_ARREGION : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal axi_noc_h2c_M00_AXI_fw_ARSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal axi_noc_h2c_M00_AXI_fw_ARVALID : STD_LOGIC;
  signal axi_noc_h2c_M00_AXI_fw_AWADDR : STD_LOGIC_VECTOR ( 63 downto 0 );
  signal axi_noc_h2c_M00_AXI_fw_AWBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal axi_noc_h2c_M00_AXI_fw_AWCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal axi_noc_h2c_M00_AXI_fw_AWID : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal axi_noc_h2c_M00_AXI_fw_AWLEN : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal axi_noc_h2c_M00_AXI_fw_AWLOCK : STD_LOGIC;
  signal axi_noc_h2c_M00_AXI_fw_AWPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal axi_noc_h2c_M00_AXI_fw_AWQOS : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal axi_noc_h2c_M00_AXI_fw_AWREADY : STD_LOGIC;
  signal axi_noc_h2c_M00_AXI_fw_AWREGION : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal axi_noc_h2c_M00_AXI_fw_AWSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal axi_noc_h2c_M00_AXI_fw_AWVALID : STD_LOGIC;
  signal axi_noc_h2c_M00_AXI_fw_BID : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal axi_noc_h2c_M00_AXI_fw_BREADY : STD_LOGIC;
  signal axi_noc_h2c_M00_AXI_fw_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal axi_noc_h2c_M00_AXI_fw_BVALID : STD_LOGIC;
  signal axi_noc_h2c_M00_AXI_fw_RDATA : STD_LOGIC_VECTOR ( 127 downto 0 );
  signal axi_noc_h2c_M00_AXI_fw_RID : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal axi_noc_h2c_M00_AXI_fw_RLAST : STD_LOGIC;
  signal axi_noc_h2c_M00_AXI_fw_RREADY : STD_LOGIC;
  signal axi_noc_h2c_M00_AXI_fw_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal axi_noc_h2c_M00_AXI_fw_RVALID : STD_LOGIC;
  signal axi_noc_h2c_M00_AXI_fw_WDATA : STD_LOGIC_VECTOR ( 127 downto 0 );
  signal axi_noc_h2c_M00_AXI_fw_WLAST : STD_LOGIC;
  signal axi_noc_h2c_M00_AXI_fw_WREADY : STD_LOGIC;
  signal axi_noc_h2c_M00_AXI_fw_WSTRB : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal axi_noc_h2c_M00_AXI_fw_WVALID : STD_LOGIC;
  signal axi_noc_h2c_M01_AXI_ARADDR : STD_LOGIC_VECTOR ( 63 downto 0 );
  signal axi_noc_h2c_M01_AXI_ARBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal axi_noc_h2c_M01_AXI_ARCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal axi_noc_h2c_M01_AXI_ARID : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal axi_noc_h2c_M01_AXI_ARLEN : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal axi_noc_h2c_M01_AXI_ARLOCK : STD_LOGIC;
  signal axi_noc_h2c_M01_AXI_ARPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal axi_noc_h2c_M01_AXI_ARQOS : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal axi_noc_h2c_M01_AXI_ARREADY : STD_LOGIC;
  signal axi_noc_h2c_M01_AXI_ARSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal axi_noc_h2c_M01_AXI_ARUSER : STD_LOGIC_VECTOR ( 17 downto 0 );
  signal axi_noc_h2c_M01_AXI_ARVALID : STD_LOGIC;
  signal axi_noc_h2c_M01_AXI_AWADDR : STD_LOGIC_VECTOR ( 63 downto 0 );
  signal axi_noc_h2c_M01_AXI_AWBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal axi_noc_h2c_M01_AXI_AWCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal axi_noc_h2c_M01_AXI_AWID : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal axi_noc_h2c_M01_AXI_AWLEN : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal axi_noc_h2c_M01_AXI_AWLOCK : STD_LOGIC;
  signal axi_noc_h2c_M01_AXI_AWPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal axi_noc_h2c_M01_AXI_AWQOS : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal axi_noc_h2c_M01_AXI_AWREADY : STD_LOGIC;
  signal axi_noc_h2c_M01_AXI_AWSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal axi_noc_h2c_M01_AXI_AWUSER : STD_LOGIC_VECTOR ( 17 downto 0 );
  signal axi_noc_h2c_M01_AXI_AWVALID : STD_LOGIC;
  signal axi_noc_h2c_M01_AXI_BID : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal axi_noc_h2c_M01_AXI_BREADY : STD_LOGIC;
  signal axi_noc_h2c_M01_AXI_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal axi_noc_h2c_M01_AXI_BVALID : STD_LOGIC;
  signal axi_noc_h2c_M01_AXI_RDATA : STD_LOGIC_VECTOR ( 511 downto 0 );
  signal axi_noc_h2c_M01_AXI_RID : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal axi_noc_h2c_M01_AXI_RLAST : STD_LOGIC;
  signal axi_noc_h2c_M01_AXI_RREADY : STD_LOGIC;
  signal axi_noc_h2c_M01_AXI_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal axi_noc_h2c_M01_AXI_RVALID : STD_LOGIC;
  signal axi_noc_h2c_M01_AXI_WDATA : STD_LOGIC_VECTOR ( 511 downto 0 );
  signal axi_noc_h2c_M01_AXI_WLAST : STD_LOGIC;
  signal axi_noc_h2c_M01_AXI_WREADY : STD_LOGIC;
  signal axi_noc_h2c_M01_AXI_WSTRB : STD_LOGIC_VECTOR ( 63 downto 0 );
  signal axi_noc_h2c_M01_AXI_WVALID : STD_LOGIC;
  signal axi_sc_plram_M00_AXI_ARADDR : STD_LOGIC_VECTOR ( 16 downto 0 );
  signal axi_sc_plram_M00_AXI_ARBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal axi_sc_plram_M00_AXI_ARCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal axi_sc_plram_M00_AXI_ARLEN : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal axi_sc_plram_M00_AXI_ARLOCK : STD_LOGIC;
  signal axi_sc_plram_M00_AXI_ARPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal axi_sc_plram_M00_AXI_ARREADY : STD_LOGIC;
  signal axi_sc_plram_M00_AXI_ARSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal axi_sc_plram_M00_AXI_ARVALID : STD_LOGIC;
  signal axi_sc_plram_M00_AXI_AWADDR : STD_LOGIC_VECTOR ( 16 downto 0 );
  signal axi_sc_plram_M00_AXI_AWBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal axi_sc_plram_M00_AXI_AWCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal axi_sc_plram_M00_AXI_AWLEN : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal axi_sc_plram_M00_AXI_AWLOCK : STD_LOGIC;
  signal axi_sc_plram_M00_AXI_AWPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal axi_sc_plram_M00_AXI_AWREADY : STD_LOGIC;
  signal axi_sc_plram_M00_AXI_AWSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal axi_sc_plram_M00_AXI_AWVALID : STD_LOGIC;
  signal axi_sc_plram_M00_AXI_BREADY : STD_LOGIC;
  signal axi_sc_plram_M00_AXI_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal axi_sc_plram_M00_AXI_BVALID : STD_LOGIC;
  signal axi_sc_plram_M00_AXI_RDATA : STD_LOGIC_VECTOR ( 511 downto 0 );
  signal axi_sc_plram_M00_AXI_RLAST : STD_LOGIC;
  signal axi_sc_plram_M00_AXI_RREADY : STD_LOGIC;
  signal axi_sc_plram_M00_AXI_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal axi_sc_plram_M00_AXI_RVALID : STD_LOGIC;
  signal axi_sc_plram_M00_AXI_WDATA : STD_LOGIC_VECTOR ( 511 downto 0 );
  signal axi_sc_plram_M00_AXI_WLAST : STD_LOGIC;
  signal axi_sc_plram_M00_AXI_WREADY : STD_LOGIC;
  signal axi_sc_plram_M00_AXI_WSTRB : STD_LOGIC_VECTOR ( 63 downto 0 );
  signal axi_sc_plram_M00_AXI_WVALID : STD_LOGIC;
  signal gate_dbgfw_or_Res : STD_LOGIC;
  signal plram_ctrl_BRAM_PORTA_ADDR : STD_LOGIC_VECTOR ( 16 downto 0 );
  signal plram_ctrl_BRAM_PORTA_CLK : STD_LOGIC;
  signal plram_ctrl_BRAM_PORTA_DIN : STD_LOGIC_VECTOR ( 511 downto 0 );
  signal plram_ctrl_BRAM_PORTA_DOUT : STD_LOGIC_VECTOR ( 511 downto 0 );
  signal plram_ctrl_BRAM_PORTA_EN : STD_LOGIC;
  signal plram_ctrl_BRAM_PORTA_RST : STD_LOGIC;
  signal plram_ctrl_BRAM_PORTA_WE : STD_LOGIC_VECTOR ( 63 downto 0 );
  signal reset_controllers_resetn_kernel0_ic : STD_LOGIC;
  signal resetn_pcie_axi_net : STD_LOGIC;
  signal resetn_pl_axi_net : STD_LOGIC;
  signal NLW_ai_engine_0_S00_AXI_bid_UNCONNECTED : STD_LOGIC_VECTOR ( 15 downto 2 );
  signal NLW_ai_engine_0_S00_AXI_rid_UNCONNECTED : STD_LOGIC_VECTOR ( 15 downto 2 );
  signal NLW_axi_dbg_fw_ip2intc_irpt_UNCONNECTED : STD_LOGIC;
  signal NLW_axi_dbg_fw_s_axi_ctl_arready_UNCONNECTED : STD_LOGIC;
  signal NLW_axi_dbg_fw_s_axi_ctl_awready_UNCONNECTED : STD_LOGIC;
  signal NLW_axi_dbg_fw_s_axi_ctl_bvalid_UNCONNECTED : STD_LOGIC;
  signal NLW_axi_dbg_fw_s_axi_ctl_rvalid_UNCONNECTED : STD_LOGIC;
  signal NLW_axi_dbg_fw_s_axi_ctl_wready_UNCONNECTED : STD_LOGIC;
  signal NLW_axi_dbg_fw_m_axi_aruser_UNCONNECTED : STD_LOGIC_VECTOR ( 17 downto 0 );
  signal NLW_axi_dbg_fw_m_axi_awuser_UNCONNECTED : STD_LOGIC_VECTOR ( 17 downto 0 );
  signal NLW_axi_dbg_fw_s_axi_ctl_bresp_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal NLW_axi_dbg_fw_s_axi_ctl_rdata_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal NLW_axi_dbg_fw_s_axi_ctl_rresp_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal NLW_axi_gpio_null_user_gpio_io_o_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_axi_gpio_null_user_gpio_io_t_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_axi_ic_user_extend_M00_AXI_arprot_UNCONNECTED : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal NLW_axi_ic_user_extend_M00_AXI_awprot_UNCONNECTED : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal NLW_axi_noc_aie_prog_M00_AXI_araddr_UNCONNECTED : STD_LOGIC_VECTOR ( 63 downto 34 );
  signal NLW_axi_noc_aie_prog_M00_AXI_awaddr_UNCONNECTED : STD_LOGIC_VECTOR ( 63 downto 34 );
  signal NLW_axi_noc_h2c_M01_AXI_arregion_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_axi_noc_h2c_M01_AXI_awregion_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_axi_sc_plram_M00_AXI_arqos_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_axi_sc_plram_M00_AXI_aruser_UNCONNECTED : STD_LOGIC_VECTOR ( 17 downto 0 );
  signal NLW_axi_sc_plram_M00_AXI_awqos_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_axi_sc_plram_M00_AXI_awuser_UNCONNECTED : STD_LOGIC_VECTOR ( 17 downto 0 );
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of ai_engine_0 : label is "ulp_inst_0_ai_engine_0_0,bd_9d54,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of ai_engine_0 : label is "yes";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of ai_engine_0 : label is "bd_9d54,Vivado 2022.2";
  attribute X_CORE_INFO of axi_dbg_fw : label is "axi_firewall_v1_2_2_top,Vivado 2022.2";
  attribute DEBUG_CORE_INFO : string;
  attribute DEBUG_CORE_INFO of axi_dbg_hub : label is "axi_dbg_hub,axi_dbg_hub_v2_0,{C_ADDR_OFFSET=0x20205800000,C_ADDR_RANGE=0x00200000,C_AXIS_TDATA_WIDTH=32,C_AXI_ADDR_WIDTH=64,C_AXI_DATA_WIDTH=128,C_AXI_ID_WIDTH=2,C_EN_FALLBACK=0,C_NUM_DEBUG_CORES=0,C_NUM_RD_OUTSTANDING_TXN=1,C_NUM_WR_OUTSTANDING_TXN=1,component_name=ulp_inst_0_axi_dbg_hub_0,x_ipCoreRevision=4,x_ipIsDebugCore=true,x_ipLanguage=VERILOG,x_ipLibrary=ip,x_ipName=axi_dbg_hub,x_ipProduct=Vivado 2022.2,x_ipSimLanguage=MIXED,x_ipVendor=xilinx.com,x_ipVersion=2.0}";
  attribute IS_DEBUG_CORE : boolean;
  attribute IS_DEBUG_CORE of axi_dbg_hub : label is std.standard.true;
  attribute X_CORE_INFO of axi_dbg_hub : label is "ulp_inst_0_axi_dbg_hub_0_axi_dbg_hub,Vivado 2022.2";
  attribute X_CORE_INFO of axi_gpio_null_user : label is "axi_gpio,Vivado 2022.2";
  attribute DPA_AXILITE_MASTER : string;
  attribute DPA_AXILITE_MASTER of axi_ic_user : label is "primary";
  attribute X_CORE_INFO of axi_ic_user : label is "bd_d23e,Vivado 2022.2";
  attribute X_CORE_INFO of axi_ic_user_extend : label is "bd_dad2,Vivado 2022.2";
  attribute X_CORE_INFO of axi_noc_aie_prog : label is "bd_afcb,Vivado 2022.2";
  attribute X_CORE_INFO of axi_noc_h2c : label is "bd_0dc7,Vivado 2022.2";
  attribute DPA_TRACE_SLAVE : string;
  attribute DPA_TRACE_SLAVE of axi_noc_kernel0 : label is "true";
  attribute X_CORE_INFO of axi_noc_kernel0 : label is "bd_0ad1,Vivado 2022.2";
  attribute X_CORE_INFO of axi_sc_plram : label is "bd_a6d9,Vivado 2022.2";
  attribute X_CORE_INFO of gate_dbgfw_or : label is "util_vector_logic_v2_0_2_util_vector_logic,Vivado 2022.2";
  attribute X_CORE_INFO of ip_pipe_dbg_hub_fw_00 : label is "util_ff_v1_0_1_util_ff,Vivado 2022.2";
  attribute X_CORE_INFO of ip_pipe_ext_tog_kernel_00_null : label is "util_ff_v1_0_1_util_ff,Vivado 2022.2";
  attribute X_CORE_INFO of ip_pipe_ext_tog_kernel_01_null : label is "util_ff_v1_0_1_util_ff,Vivado 2022.2";
  attribute X_CORE_INFO of plram_ctrl : label is "axi_bram_ctrl,Vivado 2022.2";
  attribute X_CORE_INFO of plram_ctrl_bram : label is "emb_mem_gen_v1_0_6,Vivado 2022.2";
  attribute X_INTERFACE_INFO : string;
  attribute X_INTERFACE_INFO of BLP_S_AXI_CTRL_USER_00_arready : signal is "xilinx.com:interface:aximm:1.0 BLP_S_AXI_CTRL_USER_00 ARREADY";
  attribute X_INTERFACE_INFO of BLP_S_AXI_CTRL_USER_00_arvalid : signal is "xilinx.com:interface:aximm:1.0 BLP_S_AXI_CTRL_USER_00 ARVALID";
  attribute X_INTERFACE_INFO of BLP_S_AXI_CTRL_USER_00_awready : signal is "xilinx.com:interface:aximm:1.0 BLP_S_AXI_CTRL_USER_00 AWREADY";
  attribute X_INTERFACE_INFO of BLP_S_AXI_CTRL_USER_00_awvalid : signal is "xilinx.com:interface:aximm:1.0 BLP_S_AXI_CTRL_USER_00 AWVALID";
  attribute X_INTERFACE_INFO of BLP_S_AXI_CTRL_USER_00_bready : signal is "xilinx.com:interface:aximm:1.0 BLP_S_AXI_CTRL_USER_00 BREADY";
  attribute X_INTERFACE_INFO of BLP_S_AXI_CTRL_USER_00_bvalid : signal is "xilinx.com:interface:aximm:1.0 BLP_S_AXI_CTRL_USER_00 BVALID";
  attribute X_INTERFACE_INFO of BLP_S_AXI_CTRL_USER_00_rready : signal is "xilinx.com:interface:aximm:1.0 BLP_S_AXI_CTRL_USER_00 RREADY";
  attribute X_INTERFACE_INFO of BLP_S_AXI_CTRL_USER_00_rvalid : signal is "xilinx.com:interface:aximm:1.0 BLP_S_AXI_CTRL_USER_00 RVALID";
  attribute X_INTERFACE_INFO of BLP_S_AXI_CTRL_USER_00_wready : signal is "xilinx.com:interface:aximm:1.0 BLP_S_AXI_CTRL_USER_00 WREADY";
  attribute X_INTERFACE_INFO of BLP_S_AXI_CTRL_USER_00_wvalid : signal is "xilinx.com:interface:aximm:1.0 BLP_S_AXI_CTRL_USER_00 WVALID";
  attribute X_INTERFACE_INFO of blp_s_aclk_ctrl_00 : signal is "xilinx.com:signal:clock:1.0 CLK.BLP_S_ACLK_CTRL_00 CLK";
  attribute X_INTERFACE_PARAMETER : string;
  attribute X_INTERFACE_PARAMETER of blp_s_aclk_ctrl_00 : signal is "XIL_INTERFACENAME CLK.BLP_S_ACLK_CTRL_00, ASSOCIATED_BUSIF BLP_S_AXI_CTRL_USER_00, CLK_DOMAIN bd_4885_pspmc_0_0_pl0_ref_clk, FREQ_HZ 99999992, FREQ_TOLERANCE_HZ 0, INSERT_VIP 0, PHASE 0.0";
  attribute X_INTERFACE_INFO of blp_s_aclk_ext_tog_kernel_00 : signal is "xilinx.com:signal:clock:1.0 CLK.BLP_S_ACLK_EXT_TOG_KERNEL_00 CLK";
  attribute X_INTERFACE_PARAMETER of blp_s_aclk_ext_tog_kernel_00 : signal is "XIL_INTERFACENAME CLK.BLP_S_ACLK_EXT_TOG_KERNEL_00, CLK_DOMAIN cd_aclk_ext_tog_kernel_00, FREQ_HZ 299996999, FREQ_TOLERANCE_HZ 0, INSERT_VIP 0, PHASE 0.0";
  attribute X_INTERFACE_INFO of blp_s_aclk_ext_tog_kernel_01 : signal is "xilinx.com:signal:clock:1.0 CLK.BLP_S_ACLK_EXT_TOG_KERNEL_01 CLK";
  attribute X_INTERFACE_PARAMETER of blp_s_aclk_ext_tog_kernel_01 : signal is "XIL_INTERFACENAME CLK.BLP_S_ACLK_EXT_TOG_KERNEL_01, CLK_DOMAIN cd_aclk_ext_tog_kernel_01, FREQ_HZ 499994999, FREQ_TOLERANCE_HZ 0, INSERT_VIP 0, PHASE 0.0";
  attribute X_INTERFACE_INFO of blp_s_aclk_kernel_00 : signal is "xilinx.com:signal:clock:1.0 CLK.BLP_S_ACLK_KERNEL_00 CLK";
  attribute X_INTERFACE_PARAMETER of blp_s_aclk_kernel_00 : signal is "XIL_INTERFACENAME CLK.BLP_S_ACLK_KERNEL_00, CLK_DOMAIN cd_aclk_kernel_00, FREQ_HZ 299996999, FREQ_TOLERANCE_HZ 0, INSERT_VIP 0, PHASE 0.0";
  attribute X_INTERFACE_INFO of blp_s_aclk_kernel_01 : signal is "xilinx.com:signal:clock:1.0 CLK.BLP_S_ACLK_KERNEL_01 CLK";
  attribute X_INTERFACE_PARAMETER of blp_s_aclk_kernel_01 : signal is "XIL_INTERFACENAME CLK.BLP_S_ACLK_KERNEL_01, CLK_DOMAIN cd_aclk_kernel_01, FREQ_HZ 499994999, FREQ_TOLERANCE_HZ 0, INSERT_VIP 0, PHASE 0.0";
  attribute X_INTERFACE_INFO of blp_s_aclk_pcie_00 : signal is "xilinx.com:signal:clock:1.0 CLK.BLP_S_ACLK_PCIE_00 CLK";
  attribute X_INTERFACE_PARAMETER of blp_s_aclk_pcie_00 : signal is "XIL_INTERFACENAME CLK.BLP_S_ACLK_PCIE_00, CLK_DOMAIN bd_4885_pspmc_0_0_pl2_ref_clk, FREQ_HZ 249999985, FREQ_TOLERANCE_HZ 0, INSERT_VIP 0, PHASE 0.0";
  attribute X_INTERFACE_INFO of qsfp0_161mhz_clk_n : signal is "xilinx.com:interface:diff_clock:1.0 qsfp0_161mhz clk_n";
  attribute X_INTERFACE_PARAMETER of qsfp0_161mhz_clk_n : signal is "XIL_INTERFACENAME qsfp0_161mhz, CAN_DEBUG false, FREQ_HZ 161132812";
  attribute X_INTERFACE_INFO of qsfp0_161mhz_clk_p : signal is "xilinx.com:interface:diff_clock:1.0 qsfp0_161mhz clk_p";
  attribute X_INTERFACE_INFO of qsfp1_161mhz_clk_n : signal is "xilinx.com:interface:diff_clock:1.0 qsfp1_161mhz clk_n";
  attribute X_INTERFACE_PARAMETER of qsfp1_161mhz_clk_n : signal is "XIL_INTERFACENAME qsfp1_161mhz, CAN_DEBUG false, FREQ_HZ 161132812";
  attribute X_INTERFACE_INFO of qsfp1_161mhz_clk_p : signal is "xilinx.com:interface:diff_clock:1.0 qsfp1_161mhz clk_p";
  attribute X_INTERFACE_INFO of BLP_M_M00_INI_0_internoc : signal is "xilinx.com:interface:inimm:1.0 BLP_M_M00_INI_0 INTERNOC";
  attribute X_INTERFACE_PARAMETER of BLP_M_M00_INI_0_internoc : signal is "XIL_INTERFACENAME BLP_M_M00_INI_0, ADDR_WIDTH 64, COMPUTED_STRATEGY load, INI_STRATEGY load";
  attribute X_INTERFACE_INFO of BLP_M_M01_INI_0_internoc : signal is "xilinx.com:interface:inimm:1.0 BLP_M_M01_INI_0 INTERNOC";
  attribute X_INTERFACE_PARAMETER of BLP_M_M01_INI_0_internoc : signal is "XIL_INTERFACENAME BLP_M_M01_INI_0, ADDR_WIDTH 64, COMPUTED_STRATEGY load, INI_STRATEGY load";
  attribute X_INTERFACE_INFO of BLP_M_M02_INI_0_internoc : signal is "xilinx.com:interface:inimm:1.0 BLP_M_M02_INI_0 INTERNOC";
  attribute X_INTERFACE_PARAMETER of BLP_M_M02_INI_0_internoc : signal is "XIL_INTERFACENAME BLP_M_M02_INI_0, ADDR_WIDTH 64, COMPUTED_STRATEGY load, INI_STRATEGY load";
  attribute X_INTERFACE_INFO of BLP_S_AXI_CTRL_USER_00_araddr : signal is "xilinx.com:interface:aximm:1.0 BLP_S_AXI_CTRL_USER_00 ARADDR";
  attribute X_INTERFACE_PARAMETER of BLP_S_AXI_CTRL_USER_00_araddr : signal is "XIL_INTERFACENAME BLP_S_AXI_CTRL_USER_00, ADDR_WIDTH 64, ARUSER_WIDTH 0, AWUSER_WIDTH 0, BUSER_WIDTH 0, CLK_DOMAIN bd_4885_pspmc_0_0_pl0_ref_clk, DATA_WIDTH 32, FREQ_HZ 99999992, HAS_BRESP 1, HAS_BURST 0, HAS_CACHE 0, HAS_LOCK 0, HAS_PROT 1, HAS_QOS 0, HAS_REGION 0, HAS_RRESP 1, HAS_WSTRB 1, ID_WIDTH 0, INSERT_VIP 0, MAX_BURST_LENGTH 1, NUM_READ_OUTSTANDING 2, NUM_READ_THREADS 1, NUM_WRITE_OUTSTANDING 2, NUM_WRITE_THREADS 1, PHASE 0.0, PROTOCOL AXI4LITE, READ_WRITE_MODE READ_WRITE, RUSER_BITS_PER_BYTE 0, RUSER_WIDTH 0, SUPPORTS_NARROW_BURST 0, WUSER_BITS_PER_BYTE 0, WUSER_WIDTH 0";
  attribute X_INTERFACE_INFO of BLP_S_AXI_CTRL_USER_00_arprot : signal is "xilinx.com:interface:aximm:1.0 BLP_S_AXI_CTRL_USER_00 ARPROT";
  attribute X_INTERFACE_INFO of BLP_S_AXI_CTRL_USER_00_awaddr : signal is "xilinx.com:interface:aximm:1.0 BLP_S_AXI_CTRL_USER_00 AWADDR";
  attribute X_INTERFACE_INFO of BLP_S_AXI_CTRL_USER_00_awprot : signal is "xilinx.com:interface:aximm:1.0 BLP_S_AXI_CTRL_USER_00 AWPROT";
  attribute X_INTERFACE_INFO of BLP_S_AXI_CTRL_USER_00_bresp : signal is "xilinx.com:interface:aximm:1.0 BLP_S_AXI_CTRL_USER_00 BRESP";
  attribute X_INTERFACE_INFO of BLP_S_AXI_CTRL_USER_00_rdata : signal is "xilinx.com:interface:aximm:1.0 BLP_S_AXI_CTRL_USER_00 RDATA";
  attribute X_INTERFACE_INFO of BLP_S_AXI_CTRL_USER_00_rresp : signal is "xilinx.com:interface:aximm:1.0 BLP_S_AXI_CTRL_USER_00 RRESP";
  attribute X_INTERFACE_INFO of BLP_S_AXI_CTRL_USER_00_wdata : signal is "xilinx.com:interface:aximm:1.0 BLP_S_AXI_CTRL_USER_00 WDATA";
  attribute X_INTERFACE_INFO of BLP_S_AXI_CTRL_USER_00_wstrb : signal is "xilinx.com:interface:aximm:1.0 BLP_S_AXI_CTRL_USER_00 WSTRB";
  attribute X_INTERFACE_INFO of BLP_S_INI_AIE_00_internoc : signal is "xilinx.com:interface:inimm:1.0 BLP_S_INI_AIE_00 INTERNOC";
  attribute X_INTERFACE_PARAMETER of BLP_S_INI_AIE_00_internoc : signal is "XIL_INTERFACENAME BLP_S_INI_AIE_00, ADDR_WIDTH 64, COMPUTED_STRATEGY load, INI_STRATEGY load";
  attribute X_INTERFACE_INFO of BLP_S_INI_DBG_00_internoc : signal is "xilinx.com:interface:inimm:1.0 BLP_S_INI_DBG_00 INTERNOC";
  attribute X_INTERFACE_PARAMETER of BLP_S_INI_DBG_00_internoc : signal is "XIL_INTERFACENAME BLP_S_INI_DBG_00, ADDR_WIDTH 64, COMPUTED_STRATEGY load, INI_STRATEGY load";
  attribute X_INTERFACE_INFO of BLP_S_INI_PLRAM_00_internoc : signal is "xilinx.com:interface:inimm:1.0 BLP_S_INI_PLRAM_00 INTERNOC";
  attribute X_INTERFACE_PARAMETER of BLP_S_INI_PLRAM_00_internoc : signal is "XIL_INTERFACENAME BLP_S_INI_PLRAM_00, ADDR_WIDTH 64, COMPUTED_STRATEGY load, INI_STRATEGY load";
  attribute X_INTERFACE_INFO of blp_m_dbg_hub_fw_00 : signal is "xilinx.com:signal:interrupt:1.0 INTR.BLP_M_DBG_HUB_FW_00 INTERRUPT";
  attribute X_INTERFACE_PARAMETER of blp_m_dbg_hub_fw_00 : signal is "XIL_INTERFACENAME INTR.BLP_M_DBG_HUB_FW_00, PortWidth 1, SENSITIVITY LEVEL_HIGH";
  attribute X_INTERFACE_INFO of blp_m_irq_kernel_00 : signal is "xilinx.com:signal:interrupt:1.0 INTR.BLP_M_IRQ_KERNEL_00 INTERRUPT";
  attribute X_INTERFACE_PARAMETER of blp_m_irq_kernel_00 : signal is "XIL_INTERFACENAME INTR.BLP_M_IRQ_KERNEL_00, PortWidth 128, SENSITIVITY LEVEL_HIGH";
  attribute X_INTERFACE_INFO of blp_s_aresetn_pcie_reset_00 : signal is "xilinx.com:signal:reset:1.0 RST.BLP_S_ARESETN_PCIE_RESET_00 RST";
  attribute X_INTERFACE_PARAMETER of blp_s_aresetn_pcie_reset_00 : signal is "XIL_INTERFACENAME RST.BLP_S_ARESETN_PCIE_RESET_00, INSERT_VIP 0, POLARITY ACTIVE_LOW";
  attribute X_INTERFACE_INFO of blp_s_aresetn_pr_reset_00 : signal is "xilinx.com:signal:reset:1.0 RST.BLP_S_ARESETN_PR_RESET_00 RST";
  attribute X_INTERFACE_PARAMETER of blp_s_aresetn_pr_reset_00 : signal is "XIL_INTERFACENAME RST.BLP_S_ARESETN_PR_RESET_00, INSERT_VIP 0, POLARITY ACTIVE_LOW";
  attribute X_INTERFACE_INFO of qsfp0_4x_grx_n : signal is "xilinx.com:interface:gt:1.0 qsfp0_4x grx_n";
  attribute X_INTERFACE_PARAMETER of qsfp0_4x_grx_n : signal is "XIL_INTERFACENAME qsfp0_4x, CAN_DEBUG false";
  attribute X_INTERFACE_INFO of qsfp0_4x_grx_p : signal is "xilinx.com:interface:gt:1.0 qsfp0_4x grx_p";
  attribute X_INTERFACE_INFO of qsfp0_4x_gtx_n : signal is "xilinx.com:interface:gt:1.0 qsfp0_4x gtx_n";
  attribute X_INTERFACE_INFO of qsfp0_4x_gtx_p : signal is "xilinx.com:interface:gt:1.0 qsfp0_4x gtx_p";
  attribute X_INTERFACE_INFO of qsfp1_4x_grx_n : signal is "xilinx.com:interface:gt:1.0 qsfp1_4x grx_n";
  attribute X_INTERFACE_PARAMETER of qsfp1_4x_grx_n : signal is "XIL_INTERFACENAME qsfp1_4x, CAN_DEBUG false";
  attribute X_INTERFACE_INFO of qsfp1_4x_grx_p : signal is "xilinx.com:interface:gt:1.0 qsfp1_4x grx_p";
  attribute X_INTERFACE_INFO of qsfp1_4x_gtx_n : signal is "xilinx.com:interface:gt:1.0 qsfp1_4x gtx_n";
  attribute X_INTERFACE_INFO of qsfp1_4x_gtx_p : signal is "xilinx.com:interface:gt:1.0 qsfp1_4x gtx_p";
begin
  blp_m_ext_tog_ctrl_kernel_00_enable(0) <= \<const0>\;
  blp_m_ext_tog_ctrl_kernel_01_enable(0) <= \<const0>\;
  blp_m_irq_kernel_00(127) <= \<const0>\;
  blp_m_irq_kernel_00(126) <= \<const0>\;
  blp_m_irq_kernel_00(125) <= \<const0>\;
  blp_m_irq_kernel_00(124) <= \<const0>\;
  blp_m_irq_kernel_00(123) <= \<const0>\;
  blp_m_irq_kernel_00(122) <= \<const0>\;
  blp_m_irq_kernel_00(121) <= \<const0>\;
  blp_m_irq_kernel_00(120) <= \<const0>\;
  blp_m_irq_kernel_00(119) <= \<const0>\;
  blp_m_irq_kernel_00(118) <= \<const0>\;
  blp_m_irq_kernel_00(117) <= \<const0>\;
  blp_m_irq_kernel_00(116) <= \<const0>\;
  blp_m_irq_kernel_00(115) <= \<const0>\;
  blp_m_irq_kernel_00(114) <= \<const0>\;
  blp_m_irq_kernel_00(113) <= \<const0>\;
  blp_m_irq_kernel_00(112) <= \<const0>\;
  blp_m_irq_kernel_00(111) <= \<const0>\;
  blp_m_irq_kernel_00(110) <= \<const0>\;
  blp_m_irq_kernel_00(109) <= \<const0>\;
  blp_m_irq_kernel_00(108) <= \<const0>\;
  blp_m_irq_kernel_00(107) <= \<const0>\;
  blp_m_irq_kernel_00(106) <= \<const0>\;
  blp_m_irq_kernel_00(105) <= \<const0>\;
  blp_m_irq_kernel_00(104) <= \<const0>\;
  blp_m_irq_kernel_00(103) <= \<const0>\;
  blp_m_irq_kernel_00(102) <= \<const0>\;
  blp_m_irq_kernel_00(101) <= \<const0>\;
  blp_m_irq_kernel_00(100) <= \<const0>\;
  blp_m_irq_kernel_00(99) <= \<const0>\;
  blp_m_irq_kernel_00(98) <= \<const0>\;
  blp_m_irq_kernel_00(97) <= \<const0>\;
  blp_m_irq_kernel_00(96) <= \<const0>\;
  blp_m_irq_kernel_00(95) <= \<const0>\;
  blp_m_irq_kernel_00(94) <= \<const0>\;
  blp_m_irq_kernel_00(93) <= \<const0>\;
  blp_m_irq_kernel_00(92) <= \<const0>\;
  blp_m_irq_kernel_00(91) <= \<const0>\;
  blp_m_irq_kernel_00(90) <= \<const0>\;
  blp_m_irq_kernel_00(89) <= \<const0>\;
  blp_m_irq_kernel_00(88) <= \<const0>\;
  blp_m_irq_kernel_00(87) <= \<const0>\;
  blp_m_irq_kernel_00(86) <= \<const0>\;
  blp_m_irq_kernel_00(85) <= \<const0>\;
  blp_m_irq_kernel_00(84) <= \<const0>\;
  blp_m_irq_kernel_00(83) <= \<const0>\;
  blp_m_irq_kernel_00(82) <= \<const0>\;
  blp_m_irq_kernel_00(81) <= \<const0>\;
  blp_m_irq_kernel_00(80) <= \<const0>\;
  blp_m_irq_kernel_00(79) <= \<const0>\;
  blp_m_irq_kernel_00(78) <= \<const0>\;
  blp_m_irq_kernel_00(77) <= \<const0>\;
  blp_m_irq_kernel_00(76) <= \<const0>\;
  blp_m_irq_kernel_00(75) <= \<const0>\;
  blp_m_irq_kernel_00(74) <= \<const0>\;
  blp_m_irq_kernel_00(73) <= \<const0>\;
  blp_m_irq_kernel_00(72) <= \<const0>\;
  blp_m_irq_kernel_00(71) <= \<const0>\;
  blp_m_irq_kernel_00(70) <= \<const0>\;
  blp_m_irq_kernel_00(69) <= \<const0>\;
  blp_m_irq_kernel_00(68) <= \<const0>\;
  blp_m_irq_kernel_00(67) <= \<const0>\;
  blp_m_irq_kernel_00(66) <= \<const0>\;
  blp_m_irq_kernel_00(65) <= \<const0>\;
  blp_m_irq_kernel_00(64) <= \<const0>\;
  blp_m_irq_kernel_00(63) <= \<const0>\;
  blp_m_irq_kernel_00(62) <= \<const0>\;
  blp_m_irq_kernel_00(61) <= \<const0>\;
  blp_m_irq_kernel_00(60) <= \<const0>\;
  blp_m_irq_kernel_00(59) <= \<const0>\;
  blp_m_irq_kernel_00(58) <= \<const0>\;
  blp_m_irq_kernel_00(57) <= \<const0>\;
  blp_m_irq_kernel_00(56) <= \<const0>\;
  blp_m_irq_kernel_00(55) <= \<const0>\;
  blp_m_irq_kernel_00(54) <= \<const0>\;
  blp_m_irq_kernel_00(53) <= \<const0>\;
  blp_m_irq_kernel_00(52) <= \<const0>\;
  blp_m_irq_kernel_00(51) <= \<const0>\;
  blp_m_irq_kernel_00(50) <= \<const0>\;
  blp_m_irq_kernel_00(49) <= \<const0>\;
  blp_m_irq_kernel_00(48) <= \<const0>\;
  blp_m_irq_kernel_00(47) <= \<const0>\;
  blp_m_irq_kernel_00(46) <= \<const0>\;
  blp_m_irq_kernel_00(45) <= \<const0>\;
  blp_m_irq_kernel_00(44) <= \<const0>\;
  blp_m_irq_kernel_00(43) <= \<const0>\;
  blp_m_irq_kernel_00(42) <= \<const0>\;
  blp_m_irq_kernel_00(41) <= \<const0>\;
  blp_m_irq_kernel_00(40) <= \<const0>\;
  blp_m_irq_kernel_00(39) <= \<const0>\;
  blp_m_irq_kernel_00(38) <= \<const0>\;
  blp_m_irq_kernel_00(37) <= \<const0>\;
  blp_m_irq_kernel_00(36) <= \<const0>\;
  blp_m_irq_kernel_00(35) <= \<const0>\;
  blp_m_irq_kernel_00(34) <= \<const0>\;
  blp_m_irq_kernel_00(33) <= \<const0>\;
  blp_m_irq_kernel_00(32) <= \<const0>\;
  blp_m_irq_kernel_00(31) <= \<const0>\;
  blp_m_irq_kernel_00(30) <= \<const0>\;
  blp_m_irq_kernel_00(29) <= \<const0>\;
  blp_m_irq_kernel_00(28) <= \<const0>\;
  blp_m_irq_kernel_00(27) <= \<const0>\;
  blp_m_irq_kernel_00(26) <= \<const0>\;
  blp_m_irq_kernel_00(25) <= \<const0>\;
  blp_m_irq_kernel_00(24) <= \<const0>\;
  blp_m_irq_kernel_00(23) <= \<const0>\;
  blp_m_irq_kernel_00(22) <= \<const0>\;
  blp_m_irq_kernel_00(21) <= \<const0>\;
  blp_m_irq_kernel_00(20) <= \<const0>\;
  blp_m_irq_kernel_00(19) <= \<const0>\;
  blp_m_irq_kernel_00(18) <= \<const0>\;
  blp_m_irq_kernel_00(17) <= \<const0>\;
  blp_m_irq_kernel_00(16) <= \<const0>\;
  blp_m_irq_kernel_00(15) <= \<const0>\;
  blp_m_irq_kernel_00(14) <= \<const0>\;
  blp_m_irq_kernel_00(13) <= \<const0>\;
  blp_m_irq_kernel_00(12) <= \<const0>\;
  blp_m_irq_kernel_00(11) <= \<const0>\;
  blp_m_irq_kernel_00(10) <= \<const0>\;
  blp_m_irq_kernel_00(9) <= \<const0>\;
  blp_m_irq_kernel_00(8) <= \<const0>\;
  blp_m_irq_kernel_00(7) <= \<const0>\;
  blp_m_irq_kernel_00(6) <= \<const0>\;
  blp_m_irq_kernel_00(5) <= \<const0>\;
  blp_m_irq_kernel_00(4) <= \<const0>\;
  blp_m_irq_kernel_00(3) <= \<const0>\;
  blp_m_irq_kernel_00(2) <= \<const0>\;
  blp_m_irq_kernel_00(1) <= \<const0>\;
  blp_m_irq_kernel_00(0) <= \<const0>\;
  qsfp0_4x_gtx_n(3) <= \<const0>\;
  qsfp0_4x_gtx_n(2) <= \<const0>\;
  qsfp0_4x_gtx_n(1) <= \<const0>\;
  qsfp0_4x_gtx_n(0) <= \<const0>\;
  qsfp0_4x_gtx_p(3) <= \<const0>\;
  qsfp0_4x_gtx_p(2) <= \<const0>\;
  qsfp0_4x_gtx_p(1) <= \<const0>\;
  qsfp0_4x_gtx_p(0) <= \<const0>\;
  qsfp1_4x_gtx_n(3) <= \<const0>\;
  qsfp1_4x_gtx_n(2) <= \<const0>\;
  qsfp1_4x_gtx_n(1) <= \<const0>\;
  qsfp1_4x_gtx_n(0) <= \<const0>\;
  qsfp1_4x_gtx_p(3) <= \<const0>\;
  qsfp1_4x_gtx_p(2) <= \<const0>\;
  qsfp1_4x_gtx_p(1) <= \<const0>\;
  qsfp1_4x_gtx_p(0) <= \<const0>\;
GND: unisim.vcomponents.GND
     port map (
      G => \<const0>\
    );
ai_engine_0: entity work.ulp_inst_0_ai_engine_0_0
     port map (
      S00_AXI_araddr(33 downto 0) => axi_noc_aie_prog_M00_AXI_ARADDR(33 downto 0),
      S00_AXI_arburst(1 downto 0) => axi_noc_aie_prog_M00_AXI_ARBURST(1 downto 0),
      S00_AXI_arcache(3 downto 0) => axi_noc_aie_prog_M00_AXI_ARCACHE(3 downto 0),
      S00_AXI_arid(15 downto 2) => B"00000000000000",
      S00_AXI_arid(1 downto 0) => axi_noc_aie_prog_M00_AXI_ARID(1 downto 0),
      S00_AXI_arlen(7 downto 0) => axi_noc_aie_prog_M00_AXI_ARLEN(7 downto 0),
      S00_AXI_arlock => axi_noc_aie_prog_M00_AXI_ARLOCK,
      S00_AXI_arprot(2 downto 0) => axi_noc_aie_prog_M00_AXI_ARPROT(2 downto 0),
      S00_AXI_arqos(3 downto 0) => axi_noc_aie_prog_M00_AXI_ARQOS(3 downto 0),
      S00_AXI_arready(0) => axi_noc_aie_prog_M00_AXI_ARREADY,
      S00_AXI_arregion(3 downto 0) => axi_noc_aie_prog_M00_AXI_ARREGION(3 downto 0),
      S00_AXI_arsize(2 downto 0) => axi_noc_aie_prog_M00_AXI_ARSIZE(2 downto 0),
      S00_AXI_arvalid(0) => axi_noc_aie_prog_M00_AXI_ARVALID,
      S00_AXI_awaddr(33 downto 0) => axi_noc_aie_prog_M00_AXI_AWADDR(33 downto 0),
      S00_AXI_awburst(1 downto 0) => axi_noc_aie_prog_M00_AXI_AWBURST(1 downto 0),
      S00_AXI_awcache(3 downto 0) => axi_noc_aie_prog_M00_AXI_AWCACHE(3 downto 0),
      S00_AXI_awid(15 downto 2) => B"00000000000000",
      S00_AXI_awid(1 downto 0) => axi_noc_aie_prog_M00_AXI_AWID(1 downto 0),
      S00_AXI_awlen(7 downto 0) => axi_noc_aie_prog_M00_AXI_AWLEN(7 downto 0),
      S00_AXI_awlock => axi_noc_aie_prog_M00_AXI_AWLOCK,
      S00_AXI_awprot(2 downto 0) => axi_noc_aie_prog_M00_AXI_AWPROT(2 downto 0),
      S00_AXI_awqos(3 downto 0) => axi_noc_aie_prog_M00_AXI_AWQOS(3 downto 0),
      S00_AXI_awready(0) => axi_noc_aie_prog_M00_AXI_AWREADY,
      S00_AXI_awregion(3 downto 0) => axi_noc_aie_prog_M00_AXI_AWREGION(3 downto 0),
      S00_AXI_awsize(2 downto 0) => axi_noc_aie_prog_M00_AXI_AWSIZE(2 downto 0),
      S00_AXI_awvalid(0) => axi_noc_aie_prog_M00_AXI_AWVALID,
      S00_AXI_bid(15 downto 2) => NLW_ai_engine_0_S00_AXI_bid_UNCONNECTED(15 downto 2),
      S00_AXI_bid(1 downto 0) => axi_noc_aie_prog_M00_AXI_BID(1 downto 0),
      S00_AXI_bready(0) => axi_noc_aie_prog_M00_AXI_BREADY,
      S00_AXI_bresp(1 downto 0) => axi_noc_aie_prog_M00_AXI_BRESP(1 downto 0),
      S00_AXI_bvalid(0) => axi_noc_aie_prog_M00_AXI_BVALID,
      S00_AXI_rdata(127 downto 0) => axi_noc_aie_prog_M00_AXI_RDATA(127 downto 0),
      S00_AXI_rid(15 downto 2) => NLW_ai_engine_0_S00_AXI_rid_UNCONNECTED(15 downto 2),
      S00_AXI_rid(1 downto 0) => axi_noc_aie_prog_M00_AXI_RID(1 downto 0),
      S00_AXI_rlast(0) => axi_noc_aie_prog_M00_AXI_RLAST,
      S00_AXI_rready(0) => axi_noc_aie_prog_M00_AXI_RREADY,
      S00_AXI_rresp(1 downto 0) => axi_noc_aie_prog_M00_AXI_RRESP(1 downto 0),
      S00_AXI_ruser(16 downto 0) => axi_noc_aie_prog_M00_AXI_RUSER(16 downto 0),
      S00_AXI_rvalid(0) => axi_noc_aie_prog_M00_AXI_RVALID,
      S00_AXI_wdata(127 downto 0) => axi_noc_aie_prog_M00_AXI_WDATA(127 downto 0),
      S00_AXI_wlast(0) => axi_noc_aie_prog_M00_AXI_WLAST,
      S00_AXI_wready(0) => axi_noc_aie_prog_M00_AXI_WREADY,
      S00_AXI_wstrb(15 downto 0) => axi_noc_aie_prog_M00_AXI_WSTRB(15 downto 0),
      S00_AXI_wuser(16 downto 0) => axi_noc_aie_prog_M00_AXI_WUSER(16 downto 0),
      S00_AXI_wvalid(0) => axi_noc_aie_prog_M00_AXI_WVALID,
      s00_axi_aclk => ai_engine_0_s00_axi_aclk
    );
axi_dbg_fw: component ulp_inst_0_axi_dbg_fw_0
     port map (
      aclk => blp_s_aclk_pcie_00,
      aresetn => '1',
      ip2intc_irpt => NLW_axi_dbg_fw_ip2intc_irpt_UNCONNECTED,
      m_axi_araddr(63 downto 0) => axi_noc_h2c_M00_AXI_fw_ARADDR(63 downto 0),
      m_axi_arburst(1 downto 0) => axi_noc_h2c_M00_AXI_fw_ARBURST(1 downto 0),
      m_axi_arcache(3 downto 0) => axi_noc_h2c_M00_AXI_fw_ARCACHE(3 downto 0),
      m_axi_arid(1 downto 0) => axi_noc_h2c_M00_AXI_fw_ARID(1 downto 0),
      m_axi_arlen(7 downto 0) => axi_noc_h2c_M00_AXI_fw_ARLEN(7 downto 0),
      m_axi_arlock(0) => axi_noc_h2c_M00_AXI_fw_ARLOCK,
      m_axi_arprot(2 downto 0) => axi_noc_h2c_M00_AXI_fw_ARPROT(2 downto 0),
      m_axi_arqos(3 downto 0) => axi_noc_h2c_M00_AXI_fw_ARQOS(3 downto 0),
      m_axi_arready => axi_noc_h2c_M00_AXI_fw_ARREADY,
      m_axi_arregion(3 downto 0) => axi_noc_h2c_M00_AXI_fw_ARREGION(3 downto 0),
      m_axi_arsize(2 downto 0) => axi_noc_h2c_M00_AXI_fw_ARSIZE(2 downto 0),
      m_axi_aruser(17 downto 0) => NLW_axi_dbg_fw_m_axi_aruser_UNCONNECTED(17 downto 0),
      m_axi_arvalid => axi_noc_h2c_M00_AXI_fw_ARVALID,
      m_axi_awaddr(63 downto 0) => axi_noc_h2c_M00_AXI_fw_AWADDR(63 downto 0),
      m_axi_awburst(1 downto 0) => axi_noc_h2c_M00_AXI_fw_AWBURST(1 downto 0),
      m_axi_awcache(3 downto 0) => axi_noc_h2c_M00_AXI_fw_AWCACHE(3 downto 0),
      m_axi_awid(1 downto 0) => axi_noc_h2c_M00_AXI_fw_AWID(1 downto 0),
      m_axi_awlen(7 downto 0) => axi_noc_h2c_M00_AXI_fw_AWLEN(7 downto 0),
      m_axi_awlock(0) => axi_noc_h2c_M00_AXI_fw_AWLOCK,
      m_axi_awprot(2 downto 0) => axi_noc_h2c_M00_AXI_fw_AWPROT(2 downto 0),
      m_axi_awqos(3 downto 0) => axi_noc_h2c_M00_AXI_fw_AWQOS(3 downto 0),
      m_axi_awready => axi_noc_h2c_M00_AXI_fw_AWREADY,
      m_axi_awregion(3 downto 0) => axi_noc_h2c_M00_AXI_fw_AWREGION(3 downto 0),
      m_axi_awsize(2 downto 0) => axi_noc_h2c_M00_AXI_fw_AWSIZE(2 downto 0),
      m_axi_awuser(17 downto 0) => NLW_axi_dbg_fw_m_axi_awuser_UNCONNECTED(17 downto 0),
      m_axi_awvalid => axi_noc_h2c_M00_AXI_fw_AWVALID,
      m_axi_bid(1 downto 0) => axi_noc_h2c_M00_AXI_fw_BID(1 downto 0),
      m_axi_bready => axi_noc_h2c_M00_AXI_fw_BREADY,
      m_axi_bresp(1 downto 0) => axi_noc_h2c_M00_AXI_fw_BRESP(1 downto 0),
      m_axi_bvalid => axi_noc_h2c_M00_AXI_fw_BVALID,
      m_axi_rdata(127 downto 0) => axi_noc_h2c_M00_AXI_fw_RDATA(127 downto 0),
      m_axi_rid(1 downto 0) => axi_noc_h2c_M00_AXI_fw_RID(1 downto 0),
      m_axi_rlast => axi_noc_h2c_M00_AXI_fw_RLAST,
      m_axi_rready => axi_noc_h2c_M00_AXI_fw_RREADY,
      m_axi_rresp(1 downto 0) => axi_noc_h2c_M00_AXI_fw_RRESP(1 downto 0),
      m_axi_rvalid => axi_noc_h2c_M00_AXI_fw_RVALID,
      m_axi_wdata(127 downto 0) => axi_noc_h2c_M00_AXI_fw_WDATA(127 downto 0),
      m_axi_wlast => axi_noc_h2c_M00_AXI_fw_WLAST,
      m_axi_wready => axi_noc_h2c_M00_AXI_fw_WREADY,
      m_axi_wstrb(15 downto 0) => axi_noc_h2c_M00_AXI_fw_WSTRB(15 downto 0),
      m_axi_wvalid => axi_noc_h2c_M00_AXI_fw_WVALID,
      mi_r_error => axi_dbg_fw_mi_r_error,
      mi_w_error => axi_dbg_fw_mi_w_error,
      s_axi_araddr(63 downto 0) => axi_noc_h2c_M00_AXI_ARADDR(63 downto 0),
      s_axi_arburst(1 downto 0) => axi_noc_h2c_M00_AXI_ARBURST(1 downto 0),
      s_axi_arcache(3 downto 0) => axi_noc_h2c_M00_AXI_ARCACHE(3 downto 0),
      s_axi_arid(1 downto 0) => axi_noc_h2c_M00_AXI_ARID(1 downto 0),
      s_axi_arlen(7 downto 0) => axi_noc_h2c_M00_AXI_ARLEN(7 downto 0),
      s_axi_arlock(0) => axi_noc_h2c_M00_AXI_ARLOCK,
      s_axi_arprot(2 downto 0) => axi_noc_h2c_M00_AXI_ARPROT(2 downto 0),
      s_axi_arqos(3 downto 0) => axi_noc_h2c_M00_AXI_ARQOS(3 downto 0),
      s_axi_arready => axi_noc_h2c_M00_AXI_ARREADY,
      s_axi_arregion(3 downto 0) => axi_noc_h2c_M00_AXI_ARREGION(3 downto 0),
      s_axi_arsize(2 downto 0) => axi_noc_h2c_M00_AXI_ARSIZE(2 downto 0),
      s_axi_aruser(17 downto 0) => axi_noc_h2c_M00_AXI_ARUSER(17 downto 0),
      s_axi_arvalid => axi_noc_h2c_M00_AXI_ARVALID,
      s_axi_awaddr(63 downto 0) => axi_noc_h2c_M00_AXI_AWADDR(63 downto 0),
      s_axi_awburst(1 downto 0) => axi_noc_h2c_M00_AXI_AWBURST(1 downto 0),
      s_axi_awcache(3 downto 0) => axi_noc_h2c_M00_AXI_AWCACHE(3 downto 0),
      s_axi_awid(1 downto 0) => axi_noc_h2c_M00_AXI_AWID(1 downto 0),
      s_axi_awlen(7 downto 0) => axi_noc_h2c_M00_AXI_AWLEN(7 downto 0),
      s_axi_awlock(0) => axi_noc_h2c_M00_AXI_AWLOCK,
      s_axi_awprot(2 downto 0) => axi_noc_h2c_M00_AXI_AWPROT(2 downto 0),
      s_axi_awqos(3 downto 0) => axi_noc_h2c_M00_AXI_AWQOS(3 downto 0),
      s_axi_awready => axi_noc_h2c_M00_AXI_AWREADY,
      s_axi_awregion(3 downto 0) => axi_noc_h2c_M00_AXI_AWREGION(3 downto 0),
      s_axi_awsize(2 downto 0) => axi_noc_h2c_M00_AXI_AWSIZE(2 downto 0),
      s_axi_awuser(17 downto 0) => axi_noc_h2c_M00_AXI_AWUSER(17 downto 0),
      s_axi_awvalid => axi_noc_h2c_M00_AXI_AWVALID,
      s_axi_bid(1 downto 0) => axi_noc_h2c_M00_AXI_BID(1 downto 0),
      s_axi_bready => axi_noc_h2c_M00_AXI_BREADY,
      s_axi_bresp(1 downto 0) => axi_noc_h2c_M00_AXI_BRESP(1 downto 0),
      s_axi_bvalid => axi_noc_h2c_M00_AXI_BVALID,
      s_axi_ctl_araddr(11 downto 0) => B"000000000000",
      s_axi_ctl_arready => NLW_axi_dbg_fw_s_axi_ctl_arready_UNCONNECTED,
      s_axi_ctl_arvalid => '0',
      s_axi_ctl_awaddr(11 downto 0) => B"000000000000",
      s_axi_ctl_awready => NLW_axi_dbg_fw_s_axi_ctl_awready_UNCONNECTED,
      s_axi_ctl_awvalid => '0',
      s_axi_ctl_bready => '0',
      s_axi_ctl_bresp(1 downto 0) => NLW_axi_dbg_fw_s_axi_ctl_bresp_UNCONNECTED(1 downto 0),
      s_axi_ctl_bvalid => NLW_axi_dbg_fw_s_axi_ctl_bvalid_UNCONNECTED,
      s_axi_ctl_rdata(31 downto 0) => NLW_axi_dbg_fw_s_axi_ctl_rdata_UNCONNECTED(31 downto 0),
      s_axi_ctl_rready => '0',
      s_axi_ctl_rresp(1 downto 0) => NLW_axi_dbg_fw_s_axi_ctl_rresp_UNCONNECTED(1 downto 0),
      s_axi_ctl_rvalid => NLW_axi_dbg_fw_s_axi_ctl_rvalid_UNCONNECTED,
      s_axi_ctl_wdata(31 downto 0) => B"00000000000000000000000000000000",
      s_axi_ctl_wready => NLW_axi_dbg_fw_s_axi_ctl_wready_UNCONNECTED,
      s_axi_ctl_wstrb(3 downto 0) => B"1111",
      s_axi_ctl_wvalid => '0',
      s_axi_rdata(127 downto 0) => axi_noc_h2c_M00_AXI_RDATA(127 downto 0),
      s_axi_rid(1 downto 0) => axi_noc_h2c_M00_AXI_RID(1 downto 0),
      s_axi_rlast => axi_noc_h2c_M00_AXI_RLAST,
      s_axi_rready => axi_noc_h2c_M00_AXI_RREADY,
      s_axi_rresp(1 downto 0) => axi_noc_h2c_M00_AXI_RRESP(1 downto 0),
      s_axi_rvalid => axi_noc_h2c_M00_AXI_RVALID,
      s_axi_wdata(127 downto 0) => axi_noc_h2c_M00_AXI_WDATA(127 downto 0),
      s_axi_wlast => axi_noc_h2c_M00_AXI_WLAST,
      s_axi_wready => axi_noc_h2c_M00_AXI_WREADY,
      s_axi_wstrb(15 downto 0) => axi_noc_h2c_M00_AXI_WSTRB(15 downto 0),
      s_axi_wvalid => axi_noc_h2c_M00_AXI_WVALID
    );
axi_dbg_hub: component ulp_inst_0_axi_dbg_hub_0
     port map (
      aclk => blp_s_aclk_pcie_00,
      aresetn => resetn_pcie_axi_net,
      s_axi_araddr(63 downto 0) => axi_noc_h2c_M00_AXI_fw_ARADDR(63 downto 0),
      s_axi_arburst(1 downto 0) => axi_noc_h2c_M00_AXI_fw_ARBURST(1 downto 0),
      s_axi_arcache(3 downto 0) => axi_noc_h2c_M00_AXI_fw_ARCACHE(3 downto 0),
      s_axi_arid(1 downto 0) => axi_noc_h2c_M00_AXI_fw_ARID(1 downto 0),
      s_axi_arlen(7 downto 0) => axi_noc_h2c_M00_AXI_fw_ARLEN(7 downto 0),
      s_axi_arlock => axi_noc_h2c_M00_AXI_fw_ARLOCK,
      s_axi_arprot(2 downto 0) => axi_noc_h2c_M00_AXI_fw_ARPROT(2 downto 0),
      s_axi_arqos(3 downto 0) => axi_noc_h2c_M00_AXI_fw_ARQOS(3 downto 0),
      s_axi_arready => axi_noc_h2c_M00_AXI_fw_ARREADY,
      s_axi_arregion(3 downto 0) => axi_noc_h2c_M00_AXI_fw_ARREGION(3 downto 0),
      s_axi_arsize(2 downto 0) => axi_noc_h2c_M00_AXI_fw_ARSIZE(2 downto 0),
      s_axi_arvalid => axi_noc_h2c_M00_AXI_fw_ARVALID,
      s_axi_awaddr(63 downto 0) => axi_noc_h2c_M00_AXI_fw_AWADDR(63 downto 0),
      s_axi_awburst(1 downto 0) => axi_noc_h2c_M00_AXI_fw_AWBURST(1 downto 0),
      s_axi_awcache(3 downto 0) => axi_noc_h2c_M00_AXI_fw_AWCACHE(3 downto 0),
      s_axi_awid(1 downto 0) => axi_noc_h2c_M00_AXI_fw_AWID(1 downto 0),
      s_axi_awlen(7 downto 0) => axi_noc_h2c_M00_AXI_fw_AWLEN(7 downto 0),
      s_axi_awlock => axi_noc_h2c_M00_AXI_fw_AWLOCK,
      s_axi_awprot(2 downto 0) => axi_noc_h2c_M00_AXI_fw_AWPROT(2 downto 0),
      s_axi_awqos(3 downto 0) => axi_noc_h2c_M00_AXI_fw_AWQOS(3 downto 0),
      s_axi_awready => axi_noc_h2c_M00_AXI_fw_AWREADY,
      s_axi_awregion(3 downto 0) => axi_noc_h2c_M00_AXI_fw_AWREGION(3 downto 0),
      s_axi_awsize(2 downto 0) => axi_noc_h2c_M00_AXI_fw_AWSIZE(2 downto 0),
      s_axi_awvalid => axi_noc_h2c_M00_AXI_fw_AWVALID,
      s_axi_bid(1 downto 0) => axi_noc_h2c_M00_AXI_fw_BID(1 downto 0),
      s_axi_bready => axi_noc_h2c_M00_AXI_fw_BREADY,
      s_axi_bresp(1 downto 0) => axi_noc_h2c_M00_AXI_fw_BRESP(1 downto 0),
      s_axi_bvalid => axi_noc_h2c_M00_AXI_fw_BVALID,
      s_axi_rdata(127 downto 0) => axi_noc_h2c_M00_AXI_fw_RDATA(127 downto 0),
      s_axi_rid(1 downto 0) => axi_noc_h2c_M00_AXI_fw_RID(1 downto 0),
      s_axi_rlast => axi_noc_h2c_M00_AXI_fw_RLAST,
      s_axi_rready => axi_noc_h2c_M00_AXI_fw_RREADY,
      s_axi_rresp(1 downto 0) => axi_noc_h2c_M00_AXI_fw_RRESP(1 downto 0),
      s_axi_rvalid => axi_noc_h2c_M00_AXI_fw_RVALID,
      s_axi_wdata(127 downto 0) => axi_noc_h2c_M00_AXI_fw_WDATA(127 downto 0),
      s_axi_wlast => axi_noc_h2c_M00_AXI_fw_WLAST,
      s_axi_wready => axi_noc_h2c_M00_AXI_fw_WREADY,
      s_axi_wstrb(15 downto 0) => axi_noc_h2c_M00_AXI_fw_WSTRB(15 downto 0),
      s_axi_wvalid => axi_noc_h2c_M00_AXI_fw_WVALID
    );
axi_gpio_null_user: component ulp_inst_0_axi_gpio_null_user_0
     port map (
      gpio_io_i(0) => '0',
      gpio_io_o(0) => NLW_axi_gpio_null_user_gpio_io_o_UNCONNECTED(0),
      gpio_io_t(0) => NLW_axi_gpio_null_user_gpio_io_t_UNCONNECTED(0),
      s_axi_aclk => blp_s_aclk_ctrl_00,
      s_axi_araddr(8 downto 0) => axi_ic_user_extend_M00_AXI_ARADDR(8 downto 0),
      s_axi_aresetn => resetn_pl_axi_net,
      s_axi_arready => axi_ic_user_extend_M00_AXI_ARREADY,
      s_axi_arvalid => axi_ic_user_extend_M00_AXI_ARVALID,
      s_axi_awaddr(8 downto 0) => axi_ic_user_extend_M00_AXI_AWADDR(8 downto 0),
      s_axi_awready => axi_ic_user_extend_M00_AXI_AWREADY,
      s_axi_awvalid => axi_ic_user_extend_M00_AXI_AWVALID,
      s_axi_bready => axi_ic_user_extend_M00_AXI_BREADY,
      s_axi_bresp(1 downto 0) => axi_ic_user_extend_M00_AXI_BRESP(1 downto 0),
      s_axi_bvalid => axi_ic_user_extend_M00_AXI_BVALID,
      s_axi_rdata(31 downto 0) => axi_ic_user_extend_M00_AXI_RDATA(31 downto 0),
      s_axi_rready => axi_ic_user_extend_M00_AXI_RREADY,
      s_axi_rresp(1 downto 0) => axi_ic_user_extend_M00_AXI_RRESP(1 downto 0),
      s_axi_rvalid => axi_ic_user_extend_M00_AXI_RVALID,
      s_axi_wdata(31 downto 0) => axi_ic_user_extend_M00_AXI_WDATA(31 downto 0),
      s_axi_wready => axi_ic_user_extend_M00_AXI_WREADY,
      s_axi_wstrb(3 downto 0) => axi_ic_user_extend_M00_AXI_WSTRB(3 downto 0),
      s_axi_wvalid => axi_ic_user_extend_M00_AXI_WVALID
    );
axi_ic_user: component ulp_inst_0_axi_ic_user_0
     port map (
      M00_AXI_araddr(63 downto 0) => axi_ic_user_M00_AXI_ARADDR(63 downto 0),
      M00_AXI_arburst(1 downto 0) => axi_ic_user_M00_AXI_ARBURST(1 downto 0),
      M00_AXI_arcache(3 downto 0) => axi_ic_user_M00_AXI_ARCACHE(3 downto 0),
      M00_AXI_arid(2 downto 0) => axi_ic_user_M00_AXI_ARID(2 downto 0),
      M00_AXI_arlen(7 downto 0) => axi_ic_user_M00_AXI_ARLEN(7 downto 0),
      M00_AXI_arlock(0) => axi_ic_user_M00_AXI_ARLOCK,
      M00_AXI_arprot(2 downto 0) => axi_ic_user_M00_AXI_ARPROT(2 downto 0),
      M00_AXI_arqos(3 downto 0) => axi_ic_user_M00_AXI_ARQOS(3 downto 0),
      M00_AXI_arready => axi_ic_user_M00_AXI_ARREADY,
      M00_AXI_arsize(2 downto 0) => axi_ic_user_M00_AXI_ARSIZE(2 downto 0),
      M00_AXI_aruser(113 downto 0) => axi_ic_user_M00_AXI_ARUSER(113 downto 0),
      M00_AXI_arvalid => axi_ic_user_M00_AXI_ARVALID,
      M00_AXI_awaddr(63 downto 0) => axi_ic_user_M00_AXI_AWADDR(63 downto 0),
      M00_AXI_awburst(1 downto 0) => axi_ic_user_M00_AXI_AWBURST(1 downto 0),
      M00_AXI_awcache(3 downto 0) => axi_ic_user_M00_AXI_AWCACHE(3 downto 0),
      M00_AXI_awid(2 downto 0) => axi_ic_user_M00_AXI_AWID(2 downto 0),
      M00_AXI_awlen(7 downto 0) => axi_ic_user_M00_AXI_AWLEN(7 downto 0),
      M00_AXI_awlock(0) => axi_ic_user_M00_AXI_AWLOCK,
      M00_AXI_awprot(2 downto 0) => axi_ic_user_M00_AXI_AWPROT(2 downto 0),
      M00_AXI_awqos(3 downto 0) => axi_ic_user_M00_AXI_AWQOS(3 downto 0),
      M00_AXI_awready => axi_ic_user_M00_AXI_AWREADY,
      M00_AXI_awsize(2 downto 0) => axi_ic_user_M00_AXI_AWSIZE(2 downto 0),
      M00_AXI_awuser(113 downto 0) => axi_ic_user_M00_AXI_AWUSER(113 downto 0),
      M00_AXI_awvalid => axi_ic_user_M00_AXI_AWVALID,
      M00_AXI_bid(2 downto 0) => axi_ic_user_M00_AXI_BID(2 downto 0),
      M00_AXI_bready => axi_ic_user_M00_AXI_BREADY,
      M00_AXI_bresp(1 downto 0) => axi_ic_user_M00_AXI_BRESP(1 downto 0),
      M00_AXI_bvalid => axi_ic_user_M00_AXI_BVALID,
      M00_AXI_rdata(31 downto 0) => axi_ic_user_M00_AXI_RDATA(31 downto 0),
      M00_AXI_rid(2 downto 0) => axi_ic_user_M00_AXI_RID(2 downto 0),
      M00_AXI_rlast => axi_ic_user_M00_AXI_RLAST,
      M00_AXI_rready => axi_ic_user_M00_AXI_RREADY,
      M00_AXI_rresp(1 downto 0) => axi_ic_user_M00_AXI_RRESP(1 downto 0),
      M00_AXI_ruser(13 downto 0) => axi_ic_user_M00_AXI_RUSER(13 downto 0),
      M00_AXI_rvalid => axi_ic_user_M00_AXI_RVALID,
      M00_AXI_wdata(31 downto 0) => axi_ic_user_M00_AXI_WDATA(31 downto 0),
      M00_AXI_wlast => axi_ic_user_M00_AXI_WLAST,
      M00_AXI_wready => axi_ic_user_M00_AXI_WREADY,
      M00_AXI_wstrb(3 downto 0) => axi_ic_user_M00_AXI_WSTRB(3 downto 0),
      M00_AXI_wuser(13 downto 0) => axi_ic_user_M00_AXI_WUSER(13 downto 0),
      M00_AXI_wvalid => axi_ic_user_M00_AXI_WVALID,
      S00_AXI_araddr(63 downto 0) => BLP_S_AXI_CTRL_USER_00_araddr(63 downto 0),
      S00_AXI_arprot(2 downto 0) => BLP_S_AXI_CTRL_USER_00_arprot(2 downto 0),
      S00_AXI_arready => BLP_S_AXI_CTRL_USER_00_arready,
      S00_AXI_arvalid => BLP_S_AXI_CTRL_USER_00_arvalid,
      S00_AXI_awaddr(63 downto 0) => BLP_S_AXI_CTRL_USER_00_awaddr(63 downto 0),
      S00_AXI_awprot(2 downto 0) => BLP_S_AXI_CTRL_USER_00_awprot(2 downto 0),
      S00_AXI_awready => BLP_S_AXI_CTRL_USER_00_awready,
      S00_AXI_awvalid => BLP_S_AXI_CTRL_USER_00_awvalid,
      S00_AXI_bready => BLP_S_AXI_CTRL_USER_00_bready,
      S00_AXI_bresp(1 downto 0) => BLP_S_AXI_CTRL_USER_00_bresp(1 downto 0),
      S00_AXI_bvalid => BLP_S_AXI_CTRL_USER_00_bvalid,
      S00_AXI_rdata(31 downto 0) => BLP_S_AXI_CTRL_USER_00_rdata(31 downto 0),
      S00_AXI_rready => BLP_S_AXI_CTRL_USER_00_rready,
      S00_AXI_rresp(1 downto 0) => BLP_S_AXI_CTRL_USER_00_rresp(1 downto 0),
      S00_AXI_rvalid => BLP_S_AXI_CTRL_USER_00_rvalid,
      S00_AXI_wdata(31 downto 0) => BLP_S_AXI_CTRL_USER_00_wdata(31 downto 0),
      S00_AXI_wready => BLP_S_AXI_CTRL_USER_00_wready,
      S00_AXI_wstrb(3 downto 0) => BLP_S_AXI_CTRL_USER_00_wstrb(3 downto 0),
      S00_AXI_wvalid => BLP_S_AXI_CTRL_USER_00_wvalid,
      aclk => blp_s_aclk_ctrl_00,
      aresetn => resetn_pl_axi_net
    );
axi_ic_user_extend: component ulp_inst_0_axi_ic_user_extend_0
     port map (
      M00_AXI_araddr(8 downto 0) => axi_ic_user_extend_M00_AXI_ARADDR(8 downto 0),
      M00_AXI_arprot(2 downto 0) => NLW_axi_ic_user_extend_M00_AXI_arprot_UNCONNECTED(2 downto 0),
      M00_AXI_arready => axi_ic_user_extend_M00_AXI_ARREADY,
      M00_AXI_arvalid => axi_ic_user_extend_M00_AXI_ARVALID,
      M00_AXI_awaddr(8 downto 0) => axi_ic_user_extend_M00_AXI_AWADDR(8 downto 0),
      M00_AXI_awprot(2 downto 0) => NLW_axi_ic_user_extend_M00_AXI_awprot_UNCONNECTED(2 downto 0),
      M00_AXI_awready => axi_ic_user_extend_M00_AXI_AWREADY,
      M00_AXI_awvalid => axi_ic_user_extend_M00_AXI_AWVALID,
      M00_AXI_bready => axi_ic_user_extend_M00_AXI_BREADY,
      M00_AXI_bresp(1 downto 0) => axi_ic_user_extend_M00_AXI_BRESP(1 downto 0),
      M00_AXI_bvalid => axi_ic_user_extend_M00_AXI_BVALID,
      M00_AXI_rdata(31 downto 0) => axi_ic_user_extend_M00_AXI_RDATA(31 downto 0),
      M00_AXI_rready => axi_ic_user_extend_M00_AXI_RREADY,
      M00_AXI_rresp(1 downto 0) => axi_ic_user_extend_M00_AXI_RRESP(1 downto 0),
      M00_AXI_rvalid => axi_ic_user_extend_M00_AXI_RVALID,
      M00_AXI_wdata(31 downto 0) => axi_ic_user_extend_M00_AXI_WDATA(31 downto 0),
      M00_AXI_wready => axi_ic_user_extend_M00_AXI_WREADY,
      M00_AXI_wstrb(3 downto 0) => axi_ic_user_extend_M00_AXI_WSTRB(3 downto 0),
      M00_AXI_wvalid => axi_ic_user_extend_M00_AXI_WVALID,
      S00_AXI_araddr(63 downto 0) => axi_ic_user_M00_AXI_ARADDR(63 downto 0),
      S00_AXI_arburst(1 downto 0) => axi_ic_user_M00_AXI_ARBURST(1 downto 0),
      S00_AXI_arcache(3 downto 0) => axi_ic_user_M00_AXI_ARCACHE(3 downto 0),
      S00_AXI_arid(2 downto 0) => axi_ic_user_M00_AXI_ARID(2 downto 0),
      S00_AXI_arlen(7 downto 0) => axi_ic_user_M00_AXI_ARLEN(7 downto 0),
      S00_AXI_arlock(0) => axi_ic_user_M00_AXI_ARLOCK,
      S00_AXI_arprot(2 downto 0) => axi_ic_user_M00_AXI_ARPROT(2 downto 0),
      S00_AXI_arqos(3 downto 0) => axi_ic_user_M00_AXI_ARQOS(3 downto 0),
      S00_AXI_arready => axi_ic_user_M00_AXI_ARREADY,
      S00_AXI_arsize(2 downto 0) => axi_ic_user_M00_AXI_ARSIZE(2 downto 0),
      S00_AXI_aruser(113 downto 0) => axi_ic_user_M00_AXI_ARUSER(113 downto 0),
      S00_AXI_arvalid => axi_ic_user_M00_AXI_ARVALID,
      S00_AXI_awaddr(63 downto 0) => axi_ic_user_M00_AXI_AWADDR(63 downto 0),
      S00_AXI_awburst(1 downto 0) => axi_ic_user_M00_AXI_AWBURST(1 downto 0),
      S00_AXI_awcache(3 downto 0) => axi_ic_user_M00_AXI_AWCACHE(3 downto 0),
      S00_AXI_awid(2 downto 0) => axi_ic_user_M00_AXI_AWID(2 downto 0),
      S00_AXI_awlen(7 downto 0) => axi_ic_user_M00_AXI_AWLEN(7 downto 0),
      S00_AXI_awlock(0) => axi_ic_user_M00_AXI_AWLOCK,
      S00_AXI_awprot(2 downto 0) => axi_ic_user_M00_AXI_AWPROT(2 downto 0),
      S00_AXI_awqos(3 downto 0) => axi_ic_user_M00_AXI_AWQOS(3 downto 0),
      S00_AXI_awready => axi_ic_user_M00_AXI_AWREADY,
      S00_AXI_awsize(2 downto 0) => axi_ic_user_M00_AXI_AWSIZE(2 downto 0),
      S00_AXI_awuser(113 downto 0) => axi_ic_user_M00_AXI_AWUSER(113 downto 0),
      S00_AXI_awvalid => axi_ic_user_M00_AXI_AWVALID,
      S00_AXI_bid(2 downto 0) => axi_ic_user_M00_AXI_BID(2 downto 0),
      S00_AXI_bready => axi_ic_user_M00_AXI_BREADY,
      S00_AXI_bresp(1 downto 0) => axi_ic_user_M00_AXI_BRESP(1 downto 0),
      S00_AXI_bvalid => axi_ic_user_M00_AXI_BVALID,
      S00_AXI_rdata(31 downto 0) => axi_ic_user_M00_AXI_RDATA(31 downto 0),
      S00_AXI_rid(2 downto 0) => axi_ic_user_M00_AXI_RID(2 downto 0),
      S00_AXI_rlast => axi_ic_user_M00_AXI_RLAST,
      S00_AXI_rready => axi_ic_user_M00_AXI_RREADY,
      S00_AXI_rresp(1 downto 0) => axi_ic_user_M00_AXI_RRESP(1 downto 0),
      S00_AXI_ruser(13 downto 0) => axi_ic_user_M00_AXI_RUSER(13 downto 0),
      S00_AXI_rvalid => axi_ic_user_M00_AXI_RVALID,
      S00_AXI_wdata(31 downto 0) => axi_ic_user_M00_AXI_WDATA(31 downto 0),
      S00_AXI_wlast => axi_ic_user_M00_AXI_WLAST,
      S00_AXI_wready => axi_ic_user_M00_AXI_WREADY,
      S00_AXI_wstrb(3 downto 0) => axi_ic_user_M00_AXI_WSTRB(3 downto 0),
      S00_AXI_wuser(13 downto 0) => axi_ic_user_M00_AXI_WUSER(13 downto 0),
      S00_AXI_wvalid => axi_ic_user_M00_AXI_WVALID,
      aclk => blp_s_aclk_ctrl_00,
      aresetn => resetn_pl_axi_net
    );
axi_noc_aie_prog: component ulp_inst_0_axi_noc_aie_prog_0
     port map (
      M00_AXI_araddr(63 downto 34) => NLW_axi_noc_aie_prog_M00_AXI_araddr_UNCONNECTED(63 downto 34),
      M00_AXI_araddr(33 downto 0) => axi_noc_aie_prog_M00_AXI_ARADDR(33 downto 0),
      M00_AXI_arburst(1 downto 0) => axi_noc_aie_prog_M00_AXI_ARBURST(1 downto 0),
      M00_AXI_arcache(3 downto 0) => axi_noc_aie_prog_M00_AXI_ARCACHE(3 downto 0),
      M00_AXI_arid(1 downto 0) => axi_noc_aie_prog_M00_AXI_ARID(1 downto 0),
      M00_AXI_arlen(7 downto 0) => axi_noc_aie_prog_M00_AXI_ARLEN(7 downto 0),
      M00_AXI_arlock(0) => axi_noc_aie_prog_M00_AXI_ARLOCK,
      M00_AXI_arprot(2 downto 0) => axi_noc_aie_prog_M00_AXI_ARPROT(2 downto 0),
      M00_AXI_arqos(3 downto 0) => axi_noc_aie_prog_M00_AXI_ARQOS(3 downto 0),
      M00_AXI_arready(0) => axi_noc_aie_prog_M00_AXI_ARREADY,
      M00_AXI_arregion(3 downto 0) => axi_noc_aie_prog_M00_AXI_ARREGION(3 downto 0),
      M00_AXI_arsize(2 downto 0) => axi_noc_aie_prog_M00_AXI_ARSIZE(2 downto 0),
      M00_AXI_arvalid(0) => axi_noc_aie_prog_M00_AXI_ARVALID,
      M00_AXI_awaddr(63 downto 34) => NLW_axi_noc_aie_prog_M00_AXI_awaddr_UNCONNECTED(63 downto 34),
      M00_AXI_awaddr(33 downto 0) => axi_noc_aie_prog_M00_AXI_AWADDR(33 downto 0),
      M00_AXI_awburst(1 downto 0) => axi_noc_aie_prog_M00_AXI_AWBURST(1 downto 0),
      M00_AXI_awcache(3 downto 0) => axi_noc_aie_prog_M00_AXI_AWCACHE(3 downto 0),
      M00_AXI_awid(1 downto 0) => axi_noc_aie_prog_M00_AXI_AWID(1 downto 0),
      M00_AXI_awlen(7 downto 0) => axi_noc_aie_prog_M00_AXI_AWLEN(7 downto 0),
      M00_AXI_awlock(0) => axi_noc_aie_prog_M00_AXI_AWLOCK,
      M00_AXI_awprot(2 downto 0) => axi_noc_aie_prog_M00_AXI_AWPROT(2 downto 0),
      M00_AXI_awqos(3 downto 0) => axi_noc_aie_prog_M00_AXI_AWQOS(3 downto 0),
      M00_AXI_awready(0) => axi_noc_aie_prog_M00_AXI_AWREADY,
      M00_AXI_awregion(3 downto 0) => axi_noc_aie_prog_M00_AXI_AWREGION(3 downto 0),
      M00_AXI_awsize(2 downto 0) => axi_noc_aie_prog_M00_AXI_AWSIZE(2 downto 0),
      M00_AXI_awvalid(0) => axi_noc_aie_prog_M00_AXI_AWVALID,
      M00_AXI_bid(1 downto 0) => axi_noc_aie_prog_M00_AXI_BID(1 downto 0),
      M00_AXI_bready(0) => axi_noc_aie_prog_M00_AXI_BREADY,
      M00_AXI_bresp(1 downto 0) => axi_noc_aie_prog_M00_AXI_BRESP(1 downto 0),
      M00_AXI_bvalid(0) => axi_noc_aie_prog_M00_AXI_BVALID,
      M00_AXI_rdata(127 downto 0) => axi_noc_aie_prog_M00_AXI_RDATA(127 downto 0),
      M00_AXI_rid(1 downto 0) => axi_noc_aie_prog_M00_AXI_RID(1 downto 0),
      M00_AXI_rlast(0) => axi_noc_aie_prog_M00_AXI_RLAST,
      M00_AXI_rready(0) => axi_noc_aie_prog_M00_AXI_RREADY,
      M00_AXI_rresp(1 downto 0) => axi_noc_aie_prog_M00_AXI_RRESP(1 downto 0),
      M00_AXI_ruser(16 downto 0) => axi_noc_aie_prog_M00_AXI_RUSER(16 downto 0),
      M00_AXI_rvalid(0) => axi_noc_aie_prog_M00_AXI_RVALID,
      M00_AXI_wdata(127 downto 0) => axi_noc_aie_prog_M00_AXI_WDATA(127 downto 0),
      M00_AXI_wlast(0) => axi_noc_aie_prog_M00_AXI_WLAST,
      M00_AXI_wready(0) => axi_noc_aie_prog_M00_AXI_WREADY,
      M00_AXI_wstrb(15 downto 0) => axi_noc_aie_prog_M00_AXI_WSTRB(15 downto 0),
      M00_AXI_wuser(16 downto 0) => axi_noc_aie_prog_M00_AXI_WUSER(16 downto 0),
      M00_AXI_wvalid(0) => axi_noc_aie_prog_M00_AXI_WVALID,
      S00_INI_internoc(0) => BLP_S_INI_AIE_00_internoc(0),
      aclk0 => ai_engine_0_s00_axi_aclk
    );
axi_noc_h2c: component ulp_inst_0_axi_noc_h2c_0
     port map (
      M00_AXI_araddr(63 downto 0) => axi_noc_h2c_M00_AXI_ARADDR(63 downto 0),
      M00_AXI_arburst(1 downto 0) => axi_noc_h2c_M00_AXI_ARBURST(1 downto 0),
      M00_AXI_arcache(3 downto 0) => axi_noc_h2c_M00_AXI_ARCACHE(3 downto 0),
      M00_AXI_arid(1 downto 0) => axi_noc_h2c_M00_AXI_ARID(1 downto 0),
      M00_AXI_arlen(7 downto 0) => axi_noc_h2c_M00_AXI_ARLEN(7 downto 0),
      M00_AXI_arlock(0) => axi_noc_h2c_M00_AXI_ARLOCK,
      M00_AXI_arprot(2 downto 0) => axi_noc_h2c_M00_AXI_ARPROT(2 downto 0),
      M00_AXI_arqos(3 downto 0) => axi_noc_h2c_M00_AXI_ARQOS(3 downto 0),
      M00_AXI_arready(0) => axi_noc_h2c_M00_AXI_ARREADY,
      M00_AXI_arregion(3 downto 0) => axi_noc_h2c_M00_AXI_ARREGION(3 downto 0),
      M00_AXI_arsize(2 downto 0) => axi_noc_h2c_M00_AXI_ARSIZE(2 downto 0),
      M00_AXI_aruser(17 downto 0) => axi_noc_h2c_M00_AXI_ARUSER(17 downto 0),
      M00_AXI_arvalid(0) => axi_noc_h2c_M00_AXI_ARVALID,
      M00_AXI_awaddr(63 downto 0) => axi_noc_h2c_M00_AXI_AWADDR(63 downto 0),
      M00_AXI_awburst(1 downto 0) => axi_noc_h2c_M00_AXI_AWBURST(1 downto 0),
      M00_AXI_awcache(3 downto 0) => axi_noc_h2c_M00_AXI_AWCACHE(3 downto 0),
      M00_AXI_awid(1 downto 0) => axi_noc_h2c_M00_AXI_AWID(1 downto 0),
      M00_AXI_awlen(7 downto 0) => axi_noc_h2c_M00_AXI_AWLEN(7 downto 0),
      M00_AXI_awlock(0) => axi_noc_h2c_M00_AXI_AWLOCK,
      M00_AXI_awprot(2 downto 0) => axi_noc_h2c_M00_AXI_AWPROT(2 downto 0),
      M00_AXI_awqos(3 downto 0) => axi_noc_h2c_M00_AXI_AWQOS(3 downto 0),
      M00_AXI_awready(0) => axi_noc_h2c_M00_AXI_AWREADY,
      M00_AXI_awregion(3 downto 0) => axi_noc_h2c_M00_AXI_AWREGION(3 downto 0),
      M00_AXI_awsize(2 downto 0) => axi_noc_h2c_M00_AXI_AWSIZE(2 downto 0),
      M00_AXI_awuser(17 downto 0) => axi_noc_h2c_M00_AXI_AWUSER(17 downto 0),
      M00_AXI_awvalid(0) => axi_noc_h2c_M00_AXI_AWVALID,
      M00_AXI_bid(1 downto 0) => axi_noc_h2c_M00_AXI_BID(1 downto 0),
      M00_AXI_bready(0) => axi_noc_h2c_M00_AXI_BREADY,
      M00_AXI_bresp(1 downto 0) => axi_noc_h2c_M00_AXI_BRESP(1 downto 0),
      M00_AXI_bvalid(0) => axi_noc_h2c_M00_AXI_BVALID,
      M00_AXI_rdata(127 downto 0) => axi_noc_h2c_M00_AXI_RDATA(127 downto 0),
      M00_AXI_rid(1 downto 0) => axi_noc_h2c_M00_AXI_RID(1 downto 0),
      M00_AXI_rlast(0) => axi_noc_h2c_M00_AXI_RLAST,
      M00_AXI_rready(0) => axi_noc_h2c_M00_AXI_RREADY,
      M00_AXI_rresp(1 downto 0) => axi_noc_h2c_M00_AXI_RRESP(1 downto 0),
      M00_AXI_rvalid(0) => axi_noc_h2c_M00_AXI_RVALID,
      M00_AXI_wdata(127 downto 0) => axi_noc_h2c_M00_AXI_WDATA(127 downto 0),
      M00_AXI_wlast(0) => axi_noc_h2c_M00_AXI_WLAST,
      M00_AXI_wready(0) => axi_noc_h2c_M00_AXI_WREADY,
      M00_AXI_wstrb(15 downto 0) => axi_noc_h2c_M00_AXI_WSTRB(15 downto 0),
      M00_AXI_wvalid(0) => axi_noc_h2c_M00_AXI_WVALID,
      M01_AXI_araddr(63 downto 0) => axi_noc_h2c_M01_AXI_ARADDR(63 downto 0),
      M01_AXI_arburst(1 downto 0) => axi_noc_h2c_M01_AXI_ARBURST(1 downto 0),
      M01_AXI_arcache(3 downto 0) => axi_noc_h2c_M01_AXI_ARCACHE(3 downto 0),
      M01_AXI_arid(1 downto 0) => axi_noc_h2c_M01_AXI_ARID(1 downto 0),
      M01_AXI_arlen(7 downto 0) => axi_noc_h2c_M01_AXI_ARLEN(7 downto 0),
      M01_AXI_arlock(0) => axi_noc_h2c_M01_AXI_ARLOCK,
      M01_AXI_arprot(2 downto 0) => axi_noc_h2c_M01_AXI_ARPROT(2 downto 0),
      M01_AXI_arqos(3 downto 0) => axi_noc_h2c_M01_AXI_ARQOS(3 downto 0),
      M01_AXI_arready(0) => axi_noc_h2c_M01_AXI_ARREADY,
      M01_AXI_arregion(3 downto 0) => NLW_axi_noc_h2c_M01_AXI_arregion_UNCONNECTED(3 downto 0),
      M01_AXI_arsize(2 downto 0) => axi_noc_h2c_M01_AXI_ARSIZE(2 downto 0),
      M01_AXI_aruser(17 downto 0) => axi_noc_h2c_M01_AXI_ARUSER(17 downto 0),
      M01_AXI_arvalid(0) => axi_noc_h2c_M01_AXI_ARVALID,
      M01_AXI_awaddr(63 downto 0) => axi_noc_h2c_M01_AXI_AWADDR(63 downto 0),
      M01_AXI_awburst(1 downto 0) => axi_noc_h2c_M01_AXI_AWBURST(1 downto 0),
      M01_AXI_awcache(3 downto 0) => axi_noc_h2c_M01_AXI_AWCACHE(3 downto 0),
      M01_AXI_awid(1 downto 0) => axi_noc_h2c_M01_AXI_AWID(1 downto 0),
      M01_AXI_awlen(7 downto 0) => axi_noc_h2c_M01_AXI_AWLEN(7 downto 0),
      M01_AXI_awlock(0) => axi_noc_h2c_M01_AXI_AWLOCK,
      M01_AXI_awprot(2 downto 0) => axi_noc_h2c_M01_AXI_AWPROT(2 downto 0),
      M01_AXI_awqos(3 downto 0) => axi_noc_h2c_M01_AXI_AWQOS(3 downto 0),
      M01_AXI_awready(0) => axi_noc_h2c_M01_AXI_AWREADY,
      M01_AXI_awregion(3 downto 0) => NLW_axi_noc_h2c_M01_AXI_awregion_UNCONNECTED(3 downto 0),
      M01_AXI_awsize(2 downto 0) => axi_noc_h2c_M01_AXI_AWSIZE(2 downto 0),
      M01_AXI_awuser(17 downto 0) => axi_noc_h2c_M01_AXI_AWUSER(17 downto 0),
      M01_AXI_awvalid(0) => axi_noc_h2c_M01_AXI_AWVALID,
      M01_AXI_bid(1 downto 0) => axi_noc_h2c_M01_AXI_BID(1 downto 0),
      M01_AXI_bready(0) => axi_noc_h2c_M01_AXI_BREADY,
      M01_AXI_bresp(1 downto 0) => axi_noc_h2c_M01_AXI_BRESP(1 downto 0),
      M01_AXI_bvalid(0) => axi_noc_h2c_M01_AXI_BVALID,
      M01_AXI_rdata(511 downto 0) => axi_noc_h2c_M01_AXI_RDATA(511 downto 0),
      M01_AXI_rid(1 downto 0) => axi_noc_h2c_M01_AXI_RID(1 downto 0),
      M01_AXI_rlast(0) => axi_noc_h2c_M01_AXI_RLAST,
      M01_AXI_rready(0) => axi_noc_h2c_M01_AXI_RREADY,
      M01_AXI_rresp(1 downto 0) => axi_noc_h2c_M01_AXI_RRESP(1 downto 0),
      M01_AXI_rvalid(0) => axi_noc_h2c_M01_AXI_RVALID,
      M01_AXI_wdata(511 downto 0) => axi_noc_h2c_M01_AXI_WDATA(511 downto 0),
      M01_AXI_wlast(0) => axi_noc_h2c_M01_AXI_WLAST,
      M01_AXI_wready(0) => axi_noc_h2c_M01_AXI_WREADY,
      M01_AXI_wstrb(63 downto 0) => axi_noc_h2c_M01_AXI_WSTRB(63 downto 0),
      M01_AXI_wvalid(0) => axi_noc_h2c_M01_AXI_WVALID,
      S00_INI_internoc(0) => BLP_S_INI_DBG_00_internoc(0),
      S01_INI_internoc(0) => BLP_S_INI_PLRAM_00_internoc(0),
      aclk0 => blp_s_aclk_pcie_00
    );
axi_noc_kernel0: component ulp_inst_0_axi_noc_kernel0_0
     port map (
      M00_INI_internoc(0) => BLP_M_M00_INI_0_internoc(0),
      M01_INI_internoc(0) => BLP_M_M01_INI_0_internoc(0),
      M02_INI_internoc(0) => BLP_M_M02_INI_0_internoc(0)
    );
axi_sc_plram: component ulp_inst_0_axi_sc_plram_0
     port map (
      M00_AXI_araddr(16 downto 0) => axi_sc_plram_M00_AXI_ARADDR(16 downto 0),
      M00_AXI_arburst(1 downto 0) => axi_sc_plram_M00_AXI_ARBURST(1 downto 0),
      M00_AXI_arcache(3 downto 0) => axi_sc_plram_M00_AXI_ARCACHE(3 downto 0),
      M00_AXI_arlen(7 downto 0) => axi_sc_plram_M00_AXI_ARLEN(7 downto 0),
      M00_AXI_arlock(0) => axi_sc_plram_M00_AXI_ARLOCK,
      M00_AXI_arprot(2 downto 0) => axi_sc_plram_M00_AXI_ARPROT(2 downto 0),
      M00_AXI_arqos(3 downto 0) => NLW_axi_sc_plram_M00_AXI_arqos_UNCONNECTED(3 downto 0),
      M00_AXI_arready => axi_sc_plram_M00_AXI_ARREADY,
      M00_AXI_arsize(2 downto 0) => axi_sc_plram_M00_AXI_ARSIZE(2 downto 0),
      M00_AXI_aruser(17 downto 0) => NLW_axi_sc_plram_M00_AXI_aruser_UNCONNECTED(17 downto 0),
      M00_AXI_arvalid => axi_sc_plram_M00_AXI_ARVALID,
      M00_AXI_awaddr(16 downto 0) => axi_sc_plram_M00_AXI_AWADDR(16 downto 0),
      M00_AXI_awburst(1 downto 0) => axi_sc_plram_M00_AXI_AWBURST(1 downto 0),
      M00_AXI_awcache(3 downto 0) => axi_sc_plram_M00_AXI_AWCACHE(3 downto 0),
      M00_AXI_awlen(7 downto 0) => axi_sc_plram_M00_AXI_AWLEN(7 downto 0),
      M00_AXI_awlock(0) => axi_sc_plram_M00_AXI_AWLOCK,
      M00_AXI_awprot(2 downto 0) => axi_sc_plram_M00_AXI_AWPROT(2 downto 0),
      M00_AXI_awqos(3 downto 0) => NLW_axi_sc_plram_M00_AXI_awqos_UNCONNECTED(3 downto 0),
      M00_AXI_awready => axi_sc_plram_M00_AXI_AWREADY,
      M00_AXI_awsize(2 downto 0) => axi_sc_plram_M00_AXI_AWSIZE(2 downto 0),
      M00_AXI_awuser(17 downto 0) => NLW_axi_sc_plram_M00_AXI_awuser_UNCONNECTED(17 downto 0),
      M00_AXI_awvalid => axi_sc_plram_M00_AXI_AWVALID,
      M00_AXI_bready => axi_sc_plram_M00_AXI_BREADY,
      M00_AXI_bresp(1 downto 0) => axi_sc_plram_M00_AXI_BRESP(1 downto 0),
      M00_AXI_bvalid => axi_sc_plram_M00_AXI_BVALID,
      M00_AXI_rdata(511 downto 0) => axi_sc_plram_M00_AXI_RDATA(511 downto 0),
      M00_AXI_rlast => axi_sc_plram_M00_AXI_RLAST,
      M00_AXI_rready => axi_sc_plram_M00_AXI_RREADY,
      M00_AXI_rresp(1 downto 0) => axi_sc_plram_M00_AXI_RRESP(1 downto 0),
      M00_AXI_rvalid => axi_sc_plram_M00_AXI_RVALID,
      M00_AXI_wdata(511 downto 0) => axi_sc_plram_M00_AXI_WDATA(511 downto 0),
      M00_AXI_wlast => axi_sc_plram_M00_AXI_WLAST,
      M00_AXI_wready => axi_sc_plram_M00_AXI_WREADY,
      M00_AXI_wstrb(63 downto 0) => axi_sc_plram_M00_AXI_WSTRB(63 downto 0),
      M00_AXI_wvalid => axi_sc_plram_M00_AXI_WVALID,
      S00_AXI_araddr(63 downto 0) => axi_noc_h2c_M01_AXI_ARADDR(63 downto 0),
      S00_AXI_arburst(1 downto 0) => axi_noc_h2c_M01_AXI_ARBURST(1 downto 0),
      S00_AXI_arcache(3 downto 0) => axi_noc_h2c_M01_AXI_ARCACHE(3 downto 0),
      S00_AXI_arid(1 downto 0) => axi_noc_h2c_M01_AXI_ARID(1 downto 0),
      S00_AXI_arlen(7 downto 0) => axi_noc_h2c_M01_AXI_ARLEN(7 downto 0),
      S00_AXI_arlock(0) => axi_noc_h2c_M01_AXI_ARLOCK,
      S00_AXI_arprot(2 downto 0) => axi_noc_h2c_M01_AXI_ARPROT(2 downto 0),
      S00_AXI_arqos(3 downto 0) => axi_noc_h2c_M01_AXI_ARQOS(3 downto 0),
      S00_AXI_arready => axi_noc_h2c_M01_AXI_ARREADY,
      S00_AXI_arsize(2 downto 0) => axi_noc_h2c_M01_AXI_ARSIZE(2 downto 0),
      S00_AXI_aruser(17 downto 0) => axi_noc_h2c_M01_AXI_ARUSER(17 downto 0),
      S00_AXI_arvalid => axi_noc_h2c_M01_AXI_ARVALID,
      S00_AXI_awaddr(63 downto 0) => axi_noc_h2c_M01_AXI_AWADDR(63 downto 0),
      S00_AXI_awburst(1 downto 0) => axi_noc_h2c_M01_AXI_AWBURST(1 downto 0),
      S00_AXI_awcache(3 downto 0) => axi_noc_h2c_M01_AXI_AWCACHE(3 downto 0),
      S00_AXI_awid(1 downto 0) => axi_noc_h2c_M01_AXI_AWID(1 downto 0),
      S00_AXI_awlen(7 downto 0) => axi_noc_h2c_M01_AXI_AWLEN(7 downto 0),
      S00_AXI_awlock(0) => axi_noc_h2c_M01_AXI_AWLOCK,
      S00_AXI_awprot(2 downto 0) => axi_noc_h2c_M01_AXI_AWPROT(2 downto 0),
      S00_AXI_awqos(3 downto 0) => axi_noc_h2c_M01_AXI_AWQOS(3 downto 0),
      S00_AXI_awready => axi_noc_h2c_M01_AXI_AWREADY,
      S00_AXI_awsize(2 downto 0) => axi_noc_h2c_M01_AXI_AWSIZE(2 downto 0),
      S00_AXI_awuser(17 downto 0) => axi_noc_h2c_M01_AXI_AWUSER(17 downto 0),
      S00_AXI_awvalid => axi_noc_h2c_M01_AXI_AWVALID,
      S00_AXI_bid(1 downto 0) => axi_noc_h2c_M01_AXI_BID(1 downto 0),
      S00_AXI_bready => axi_noc_h2c_M01_AXI_BREADY,
      S00_AXI_bresp(1 downto 0) => axi_noc_h2c_M01_AXI_BRESP(1 downto 0),
      S00_AXI_bvalid => axi_noc_h2c_M01_AXI_BVALID,
      S00_AXI_rdata(511 downto 0) => axi_noc_h2c_M01_AXI_RDATA(511 downto 0),
      S00_AXI_rid(1 downto 0) => axi_noc_h2c_M01_AXI_RID(1 downto 0),
      S00_AXI_rlast => axi_noc_h2c_M01_AXI_RLAST,
      S00_AXI_rready => axi_noc_h2c_M01_AXI_RREADY,
      S00_AXI_rresp(1 downto 0) => axi_noc_h2c_M01_AXI_RRESP(1 downto 0),
      S00_AXI_rvalid => axi_noc_h2c_M01_AXI_RVALID,
      S00_AXI_wdata(511 downto 0) => axi_noc_h2c_M01_AXI_WDATA(511 downto 0),
      S00_AXI_wlast => axi_noc_h2c_M01_AXI_WLAST,
      S00_AXI_wready => axi_noc_h2c_M01_AXI_WREADY,
      S00_AXI_wstrb(63 downto 0) => axi_noc_h2c_M01_AXI_WSTRB(63 downto 0),
      S00_AXI_wvalid => axi_noc_h2c_M01_AXI_WVALID,
      aclk => blp_s_aclk_pcie_00,
      aclk1 => blp_s_aclk_kernel_00,
      aresetn => reset_controllers_resetn_kernel0_ic
    );
gate_dbgfw_or: component ulp_inst_0_gate_dbgfw_or_0
     port map (
      Op1(0) => axi_dbg_fw_mi_w_error,
      Op2(0) => axi_dbg_fw_mi_r_error,
      Res(0) => gate_dbgfw_or_Res
    );
ip_pipe_dbg_hub_fw_00: component ulp_inst_0_ip_pipe_dbg_hub_fw_00_0
     port map (
      D(0) => gate_dbgfw_or_Res,
      Q(0) => blp_m_dbg_hub_fw_00(0),
      clk => blp_s_aclk_pcie_00,
      clk_enable => '1',
      reset => '0'
    );
ip_pipe_ext_tog_kernel_00_null: component ulp_inst_0_ip_pipe_ext_tog_kernel_00_null_0
     port map (
      D(0) => blp_s_ext_tog_ctrl_kernel_00_out,
      Q(0) => blp_m_ext_tog_ctrl_kernel_00_in(0),
      clk => blp_s_aclk_ext_tog_kernel_00,
      clk_enable => '1',
      reset => '0'
    );
ip_pipe_ext_tog_kernel_01_null: component ulp_inst_0_ip_pipe_ext_tog_kernel_01_null_0
     port map (
      D(0) => blp_s_ext_tog_ctrl_kernel_01_out,
      Q(0) => blp_m_ext_tog_ctrl_kernel_01_in(0),
      clk => blp_s_aclk_ext_tog_kernel_01,
      clk_enable => '1',
      reset => '0'
    );
plram_ctrl: component ulp_inst_0_plram_ctrl_0
     port map (
      bram_addr_a(16 downto 0) => plram_ctrl_BRAM_PORTA_ADDR(16 downto 0),
      bram_clk_a => plram_ctrl_BRAM_PORTA_CLK,
      bram_en_a => plram_ctrl_BRAM_PORTA_EN,
      bram_rddata_a(511 downto 0) => plram_ctrl_BRAM_PORTA_DOUT(511 downto 0),
      bram_rst_a => plram_ctrl_BRAM_PORTA_RST,
      bram_we_a(63 downto 0) => plram_ctrl_BRAM_PORTA_WE(63 downto 0),
      bram_wrdata_a(511 downto 0) => plram_ctrl_BRAM_PORTA_DIN(511 downto 0),
      s_axi_aclk => blp_s_aclk_kernel_00,
      s_axi_araddr(16 downto 0) => axi_sc_plram_M00_AXI_ARADDR(16 downto 0),
      s_axi_arburst(1 downto 0) => axi_sc_plram_M00_AXI_ARBURST(1 downto 0),
      s_axi_arcache(3 downto 0) => axi_sc_plram_M00_AXI_ARCACHE(3 downto 0),
      s_axi_aresetn => reset_controllers_resetn_kernel0_ic,
      s_axi_arlen(7 downto 0) => axi_sc_plram_M00_AXI_ARLEN(7 downto 0),
      s_axi_arlock => axi_sc_plram_M00_AXI_ARLOCK,
      s_axi_arprot(2 downto 0) => axi_sc_plram_M00_AXI_ARPROT(2 downto 0),
      s_axi_arready => axi_sc_plram_M00_AXI_ARREADY,
      s_axi_arsize(2 downto 0) => axi_sc_plram_M00_AXI_ARSIZE(2 downto 0),
      s_axi_arvalid => axi_sc_plram_M00_AXI_ARVALID,
      s_axi_awaddr(16 downto 0) => axi_sc_plram_M00_AXI_AWADDR(16 downto 0),
      s_axi_awburst(1 downto 0) => axi_sc_plram_M00_AXI_AWBURST(1 downto 0),
      s_axi_awcache(3 downto 0) => axi_sc_plram_M00_AXI_AWCACHE(3 downto 0),
      s_axi_awlen(7 downto 0) => axi_sc_plram_M00_AXI_AWLEN(7 downto 0),
      s_axi_awlock => axi_sc_plram_M00_AXI_AWLOCK,
      s_axi_awprot(2 downto 0) => axi_sc_plram_M00_AXI_AWPROT(2 downto 0),
      s_axi_awready => axi_sc_plram_M00_AXI_AWREADY,
      s_axi_awsize(2 downto 0) => axi_sc_plram_M00_AXI_AWSIZE(2 downto 0),
      s_axi_awvalid => axi_sc_plram_M00_AXI_AWVALID,
      s_axi_bready => axi_sc_plram_M00_AXI_BREADY,
      s_axi_bresp(1 downto 0) => axi_sc_plram_M00_AXI_BRESP(1 downto 0),
      s_axi_bvalid => axi_sc_plram_M00_AXI_BVALID,
      s_axi_rdata(511 downto 0) => axi_sc_plram_M00_AXI_RDATA(511 downto 0),
      s_axi_rlast => axi_sc_plram_M00_AXI_RLAST,
      s_axi_rready => axi_sc_plram_M00_AXI_RREADY,
      s_axi_rresp(1 downto 0) => axi_sc_plram_M00_AXI_RRESP(1 downto 0),
      s_axi_rvalid => axi_sc_plram_M00_AXI_RVALID,
      s_axi_wdata(511 downto 0) => axi_sc_plram_M00_AXI_WDATA(511 downto 0),
      s_axi_wlast => axi_sc_plram_M00_AXI_WLAST,
      s_axi_wready => axi_sc_plram_M00_AXI_WREADY,
      s_axi_wstrb(63 downto 0) => axi_sc_plram_M00_AXI_WSTRB(63 downto 0),
      s_axi_wvalid => axi_sc_plram_M00_AXI_WVALID
    );
plram_ctrl_bram: component ulp_inst_0_plram_ctrl_bram_0
     port map (
      addra(16 downto 0) => plram_ctrl_BRAM_PORTA_ADDR(16 downto 0),
      clka => plram_ctrl_BRAM_PORTA_CLK,
      dina(511 downto 0) => plram_ctrl_BRAM_PORTA_DIN(511 downto 0),
      douta(511 downto 0) => plram_ctrl_BRAM_PORTA_DOUT(511 downto 0),
      ena => plram_ctrl_BRAM_PORTA_EN,
      regcea => '0',
      rsta => plram_ctrl_BRAM_PORTA_RST,
      wea(63 downto 0) => plram_ctrl_BRAM_PORTA_WE(63 downto 0)
    );
reset_controllers: entity work.ulp_inst_0_reset_controllers_imp_1KQP16U
     port map (
      blp_s_aclk_ctrl_00 => blp_s_aclk_ctrl_00,
      blp_s_aclk_kernel_00 => blp_s_aclk_kernel_00,
      blp_s_aclk_kernel_01 => blp_s_aclk_kernel_01,
      blp_s_aclk_pcie_00 => blp_s_aclk_pcie_00,
      blp_s_aresetn_pcie_reset_00(0) => blp_s_aresetn_pcie_reset_00(0),
      blp_s_aresetn_pr_reset_00(0) => blp_s_aresetn_pr_reset_00(0),
      resetn_kernel0_ic(0) => reset_controllers_resetn_kernel0_ic,
      resetn_pcie_axi(0) => resetn_pcie_axi_net,
      resetn_pl_axi(0) => resetn_pl_axi_net
    );
end STRUCTURE;
