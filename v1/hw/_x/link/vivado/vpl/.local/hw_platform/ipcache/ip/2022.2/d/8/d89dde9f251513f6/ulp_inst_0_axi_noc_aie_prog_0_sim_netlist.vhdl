-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2022.2 (lin64) Build 3671981 Fri Oct 14 04:59:54 MDT 2022
-- Date        : Mon Dec  5 00:18:03 2022
-- Host        : xsjdcslab02.xilinx.com running 64-bit CentOS Linux release 8.1.1911 (Core)
-- Command     : write_vhdl -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
--               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ ulp_inst_0_axi_noc_aie_prog_0_sim_netlist.vhdl
-- Design      : ulp_inst_0_axi_noc_aie_prog_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xcvc1902-vsvd1760-2MP-e-S
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_bd_afcb_M00_AXI_nsu_0_top is
  port (
    IF_NOC_AXI_TDEST : out STD_LOGIC_VECTOR ( 9 downto 0 );
    IF_NOC_AXI_WVALID : out STD_LOGIC;
    IF_NOC_AXI_WREADY : in STD_LOGIC;
    IF_NOC_AXI_WLAST : out STD_LOGIC_VECTOR ( 0 to 0 );
    IF_NOC_AXI_AWCID : out STD_LOGIC_VECTOR ( 1 downto 0 );
    IF_NOC_AXI_WDATA : out STD_LOGIC_VECTOR ( 127 downto 0 );
    IF_NOC_AXI_WSTRB : out STD_LOGIC_VECTOR ( 15 downto 0 );
    IF_NOC_AXI_ARADDR : out STD_LOGIC_VECTOR ( 63 downto 0 );
    IF_NOC_AXI_ARBURST : out STD_LOGIC_VECTOR ( 1 downto 0 );
    IF_NOC_AXI_ARCACHE : out STD_LOGIC_VECTOR ( 3 downto 0 );
    IF_NOC_AXI_ARCID : out STD_LOGIC_VECTOR ( 1 downto 0 );
    IF_NOC_AXI_ARLEN : out STD_LOGIC_VECTOR ( 7 downto 0 );
    IF_NOC_AXI_ARLOCK : out STD_LOGIC_VECTOR ( 0 to 0 );
    IF_NOC_AXI_ARPROT : out STD_LOGIC_VECTOR ( 2 downto 0 );
    IF_NOC_AXI_ARQOS : out STD_LOGIC_VECTOR ( 3 downto 0 );
    IF_NOC_AXI_ARREGION : out STD_LOGIC_VECTOR ( 3 downto 0 );
    IF_NOC_AXI_ARSIZE : out STD_LOGIC_VECTOR ( 2 downto 0 );
    IF_NOC_AXI_ARVALID : out STD_LOGIC;
    IF_NOC_AXI_AWADDR : out STD_LOGIC_VECTOR ( 63 downto 0 );
    IF_NOC_AXI_AWBURST : out STD_LOGIC_VECTOR ( 1 downto 0 );
    IF_NOC_AXI_AWCACHE : out STD_LOGIC_VECTOR ( 3 downto 0 );
    IF_NOC_AXI_AWLEN : out STD_LOGIC_VECTOR ( 7 downto 0 );
    IF_NOC_AXI_AWLOCK : out STD_LOGIC_VECTOR ( 0 to 0 );
    IF_NOC_AXI_AWPROT : out STD_LOGIC_VECTOR ( 2 downto 0 );
    IF_NOC_AXI_AWQOS : out STD_LOGIC_VECTOR ( 3 downto 0 );
    IF_NOC_AXI_AWREGION : out STD_LOGIC_VECTOR ( 3 downto 0 );
    IF_NOC_AXI_AWSIZE : out STD_LOGIC_VECTOR ( 2 downto 0 );
    IF_NOC_AXI_AWVALID : out STD_LOGIC;
    IF_NOC_AXI_BREADY : out STD_LOGIC;
    IF_NOC_AXI_RREADY : out STD_LOGIC;
    IF_NOC_AXI_WUSER : out STD_LOGIC_VECTOR ( 16 downto 0 );
    IF_NOC_AXI_ARREADY : in STD_LOGIC;
    IF_NOC_AXI_AWREADY : in STD_LOGIC;
    IF_NOC_AXI_BCID : in STD_LOGIC_VECTOR ( 1 downto 0 );
    IF_NOC_AXI_BRESP : in STD_LOGIC_VECTOR ( 1 downto 0 );
    IF_NOC_AXI_BVALID : in STD_LOGIC;
    IF_NOC_AXI_RCID : in STD_LOGIC_VECTOR ( 1 downto 0 );
    IF_NOC_AXI_RDATA : in STD_LOGIC_VECTOR ( 127 downto 0 );
    IF_NOC_AXI_RLAST : in STD_LOGIC_VECTOR ( 0 to 0 );
    IF_NOC_AXI_RRESP : in STD_LOGIC_VECTOR ( 1 downto 0 );
    IF_NOC_AXI_RUSER : in STD_LOGIC_VECTOR ( 16 downto 0 );
    IF_NOC_AXI_RVALID : in STD_LOGIC;
    IF_NOC_NPP_IN_NOC_CREDIT_RETURN : out STD_LOGIC_VECTOR ( 7 downto 0 );
    IF_NOC_NPP_OUT_NOC_CREDIT_RDY : out STD_LOGIC;
    IF_NOC_NPP_OUT_NOC_FLIT : out STD_LOGIC_VECTOR ( 181 downto 0 );
    IF_NOC_NPP_OUT_NOC_VALID : out STD_LOGIC_VECTOR ( 7 downto 0 );
    aclk : in STD_LOGIC;
    IF_NOC_NPP_IN_NOC_CREDIT_RDY : in STD_LOGIC;
    IF_NOC_NPP_IN_NOC_FLIT : in STD_LOGIC_VECTOR ( 181 downto 0 );
    IF_NOC_NPP_IN_NOC_VALID : in STD_LOGIC_VECTOR ( 7 downto 0 );
    IF_NOC_NPP_OUT_NOC_CREDIT_RETURN : in STD_LOGIC_VECTOR ( 7 downto 0 );
    AXI_OUT : out STD_LOGIC;
    NSU : in STD_LOGIC
  );
  attribute REG_AXI_LOOPBACK : string;
  attribute REG_AXI_LOOPBACK of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_bd_afcb_M00_AXI_nsu_0_top : entity is "2'b00";
  attribute REG_COMP_ID_INDEX0 : string;
  attribute REG_COMP_ID_INDEX0 of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_bd_afcb_M00_AXI_nsu_0_top : entity is "5'b00000";
  attribute REG_COMP_ID_INDEX1 : string;
  attribute REG_COMP_ID_INDEX1 of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_bd_afcb_M00_AXI_nsu_0_top : entity is "5'b00001";
  attribute REG_COMP_ID_MODE : string;
  attribute REG_COMP_ID_MODE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_bd_afcb_M00_AXI_nsu_0_top : entity is "1'b0";
  attribute REG_DISABLE_EX_MON : string;
  attribute REG_DISABLE_EX_MON of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_bd_afcb_M00_AXI_nsu_0_top : entity is "1'b1";
  attribute REG_DWIDTH : string;
  attribute REG_DWIDTH of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_bd_afcb_M00_AXI_nsu_0_top : entity is "3'b100";
  attribute REG_ECC_CHK_EN : string;
  attribute REG_ECC_CHK_EN of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_bd_afcb_M00_AXI_nsu_0_top : entity is "1'b1";
  attribute REG_FIXED_COMP_ID : string;
  attribute REG_FIXED_COMP_ID of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_bd_afcb_M00_AXI_nsu_0_top : entity is "2'b00";
  attribute REG_MODE_SELECT : string;
  attribute REG_MODE_SELECT of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_bd_afcb_M00_AXI_nsu_0_top : entity is "2'b00";
  attribute REG_ODISABLE_AXI_RESP : string;
  attribute REG_ODISABLE_AXI_RESP of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_bd_afcb_M00_AXI_nsu_0_top : entity is "1'b0";
  attribute REG_OUTSTANDING_RD_TXN : string;
  attribute REG_OUTSTANDING_RD_TXN of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_bd_afcb_M00_AXI_nsu_0_top : entity is "6'b100000";
  attribute REG_OUTSTANDING_WR_TXN : string;
  attribute REG_OUTSTANDING_WR_TXN of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_bd_afcb_M00_AXI_nsu_0_top : entity is "6'b100000";
  attribute REG_PAR_CHK : string;
  attribute REG_PAR_CHK of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_bd_afcb_M00_AXI_nsu_0_top : entity is "1'b0";
  attribute REG_RDTRK_VCA_TOKEN0 : string;
  attribute REG_RDTRK_VCA_TOKEN0 of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_bd_afcb_M00_AXI_nsu_0_top : entity is "8'b00000010";
  attribute REG_RDTRK_VCA_TOKEN1 : string;
  attribute REG_RDTRK_VCA_TOKEN1 of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_bd_afcb_M00_AXI_nsu_0_top : entity is "8'b00000011";
  attribute REG_RD_REQ_VC_MAP0 : string;
  attribute REG_RD_REQ_VC_MAP0 of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_bd_afcb_M00_AXI_nsu_0_top : entity is "3'b000";
  attribute REG_RD_REQ_VC_MAP1 : string;
  attribute REG_RD_REQ_VC_MAP1 of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_bd_afcb_M00_AXI_nsu_0_top : entity is "3'b100";
  attribute REG_RD_RESP_VC_MAP0 : string;
  attribute REG_RD_RESP_VC_MAP0 of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_bd_afcb_M00_AXI_nsu_0_top : entity is "3'b010";
  attribute REG_RD_RESP_VC_MAP1 : string;
  attribute REG_RD_RESP_VC_MAP1 of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_bd_afcb_M00_AXI_nsu_0_top : entity is "3'b110";
  attribute REG_RD_VCA_TOKEN0 : string;
  attribute REG_RD_VCA_TOKEN0 of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_bd_afcb_M00_AXI_nsu_0_top : entity is "8'b00000100";
  attribute REG_RD_VCA_TOKEN1 : string;
  attribute REG_RD_VCA_TOKEN1 of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_bd_afcb_M00_AXI_nsu_0_top : entity is "8'b00000110";
  attribute REG_SRC : string;
  attribute REG_SRC of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_bd_afcb_M00_AXI_nsu_0_top : entity is "12'b001100000000";
  attribute REG_TBASE_AXI_TIMEOUT : string;
  attribute REG_TBASE_AXI_TIMEOUT of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_bd_afcb_M00_AXI_nsu_0_top : entity is "4'b0010";
  attribute REG_TBASE_TRK_TIMEOUT : string;
  attribute REG_TBASE_TRK_TIMEOUT of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_bd_afcb_M00_AXI_nsu_0_top : entity is "4'b0010";
  attribute REG_VMAP_OUT_RD_TOKEN0 : string;
  attribute REG_VMAP_OUT_RD_TOKEN0 of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_bd_afcb_M00_AXI_nsu_0_top : entity is "8'b00000010";
  attribute REG_VMAP_OUT_RD_TOKEN1 : string;
  attribute REG_VMAP_OUT_RD_TOKEN1 of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_bd_afcb_M00_AXI_nsu_0_top : entity is "8'b00000011";
  attribute REG_VMAP_OUT_WR_TOKEN0 : string;
  attribute REG_VMAP_OUT_WR_TOKEN0 of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_bd_afcb_M00_AXI_nsu_0_top : entity is "8'b00000110";
  attribute REG_VMAP_OUT_WR_TOKEN1 : string;
  attribute REG_VMAP_OUT_WR_TOKEN1 of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_bd_afcb_M00_AXI_nsu_0_top : entity is "8'b00000100";
  attribute REG_WRTRK_VCA_TOKEN0 : string;
  attribute REG_WRTRK_VCA_TOKEN0 of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_bd_afcb_M00_AXI_nsu_0_top : entity is "8'b00000110";
  attribute REG_WRTRK_VCA_TOKEN1 : string;
  attribute REG_WRTRK_VCA_TOKEN1 of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_bd_afcb_M00_AXI_nsu_0_top : entity is "8'b00000100";
  attribute REG_WR_REQ_VC_MAP0 : string;
  attribute REG_WR_REQ_VC_MAP0 of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_bd_afcb_M00_AXI_nsu_0_top : entity is "3'b001";
  attribute REG_WR_REQ_VC_MAP1 : string;
  attribute REG_WR_REQ_VC_MAP1 of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_bd_afcb_M00_AXI_nsu_0_top : entity is "3'b101";
  attribute REG_WR_RESP_VC_MAP0 : string;
  attribute REG_WR_RESP_VC_MAP0 of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_bd_afcb_M00_AXI_nsu_0_top : entity is "3'b011";
  attribute REG_WR_RESP_VC_MAP1 : string;
  attribute REG_WR_RESP_VC_MAP1 of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_bd_afcb_M00_AXI_nsu_0_top : entity is "3'b111";
  attribute REG_WR_VCA_TOKEN0 : string;
  attribute REG_WR_VCA_TOKEN0 of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_bd_afcb_M00_AXI_nsu_0_top : entity is "8'b00001111";
  attribute REG_WR_VCA_TOKEN1 : string;
  attribute REG_WR_VCA_TOKEN1 of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_bd_afcb_M00_AXI_nsu_0_top : entity is "8'b00001010";
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_bd_afcb_M00_AXI_nsu_0_top;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_bd_afcb_M00_AXI_nsu_0_top is
  signal \<const0>\ : STD_LOGIC;
  signal \^if_noc_axi_wuser\ : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal NOC_NSU128_INST_n_714 : STD_LOGIC;
  signal NOC_NSU128_INST_n_715 : STD_LOGIC;
  signal NOC_NSU128_INST_n_716 : STD_LOGIC;
  signal NOC_NSU128_INST_n_717 : STD_LOGIC;
  signal NOC_NSU128_INST_n_718 : STD_LOGIC;
  signal NOC_NSU128_INST_n_719 : STD_LOGIC;
  signal NOC_NSU128_INST_n_720 : STD_LOGIC;
  signal NOC_NSU128_INST_n_721 : STD_LOGIC;
  signal NOC_NSU128_INST_n_722 : STD_LOGIC;
  signal NOC_NSU128_INST_n_723 : STD_LOGIC;
  signal NLW_NOC_NSU128_INST_IF_NOC_AXI_WPOISON_UNCONNECTED : STD_LOGIC;
  signal NLW_NOC_NSU128_INST_IF_NOC_NPP_IN_NOC_CREDIT_RETURN_EN_UNCONNECTED : STD_LOGIC;
  signal NLW_NOC_NSU128_INST_IF_NOC_NPP_OUT_NOC_FLIT_EN_UNCONNECTED : STD_LOGIC;
  signal NLW_NOC_NSU128_INST_IF_NOC_NPP_OUT_NOC_VALID_EN_UNCONNECTED : STD_LOGIC;
  signal NLW_NOC_NSU128_INST_IF_NOC_AXI_ARADDR_PAR_UNCONNECTED : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal NLW_NOC_NSU128_INST_IF_NOC_AXI_ARID_INFO_UNCONNECTED : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal NLW_NOC_NSU128_INST_IF_NOC_AXI_ARSRC_INFO_UNCONNECTED : STD_LOGIC_VECTOR ( 11 downto 0 );
  signal NLW_NOC_NSU128_INST_IF_NOC_AXI_ARUSER_UNCONNECTED : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal NLW_NOC_NSU128_INST_IF_NOC_AXI_AWADDR_PAR_UNCONNECTED : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal NLW_NOC_NSU128_INST_IF_NOC_AXI_AWID_INFO_UNCONNECTED : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal NLW_NOC_NSU128_INST_IF_NOC_AXI_AWSRC_INFO_UNCONNECTED : STD_LOGIC_VECTOR ( 11 downto 0 );
  signal NLW_NOC_NSU128_INST_IF_NOC_AXI_AWUSER_UNCONNECTED : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal NLW_NOC_NSU128_INST_IF_NOC_AXI_WCID_UNCONNECTED : STD_LOGIC_VECTOR ( 5 downto 0 );
  signal NLW_NOC_NSU128_INST_IF_NOC_AXI_WDATA_PAR_UNCONNECTED : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal NLW_NOC_NSU128_INST_IF_NOC_AXI_WID_INFO_UNCONNECTED : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal NLW_NOC_NSU128_INST_IF_NOC_AXI_WSRC_INFO_UNCONNECTED : STD_LOGIC_VECTOR ( 11 downto 0 );
  attribute BOX_TYPE : string;
  attribute BOX_TYPE of NOC_NSU128_INST : label is "PRIMITIVE";
  attribute DONT_TOUCH : boolean;
  attribute DONT_TOUCH of NOC_NSU128_INST : label is std.standard.true;
begin
  IF_NOC_AXI_TDEST(9) <= \<const0>\;
  IF_NOC_AXI_TDEST(8) <= \<const0>\;
  IF_NOC_AXI_TDEST(7) <= \<const0>\;
  IF_NOC_AXI_TDEST(6) <= \<const0>\;
  IF_NOC_AXI_TDEST(5) <= \<const0>\;
  IF_NOC_AXI_TDEST(4) <= \<const0>\;
  IF_NOC_AXI_TDEST(3) <= \<const0>\;
  IF_NOC_AXI_TDEST(2) <= \<const0>\;
  IF_NOC_AXI_TDEST(1) <= \<const0>\;
  IF_NOC_AXI_TDEST(0) <= \<const0>\;
  IF_NOC_AXI_WUSER(16) <= \<const0>\;
  IF_NOC_AXI_WUSER(15 downto 0) <= \^if_noc_axi_wuser\(15 downto 0);
GND: unisim.vcomponents.GND
     port map (
      G => \<const0>\
    );
NOC_NSU128_INST: unisim.vcomponents.NOC_NSU128
    generic map(
      REG_AXI_LOOPBACK => B"00",
      REG_COMP_ID_INDEX0 => B"0" & X"0",
      REG_COMP_ID_INDEX1 => B"0" & X"1",
      REG_COMP_ID_MODE => '0',
      REG_DISABLE_EX_MON => '1',
      REG_DWIDTH => B"100",
      REG_ECC_CHK_EN => '1',
      REG_FIXED_COMP_ID => B"00",
      REG_MODE_SELECT => B"00",
      REG_ODISABLE_AXI_RESP => '0',
      REG_OUTSTANDING_RD_TXN => B"10" & X"0",
      REG_OUTSTANDING_WR_TXN => B"10" & X"0",
      REG_PAR_CHK => B"00",
      REG_RDTRK_VCA_TOKEN0 => X"02",
      REG_RDTRK_VCA_TOKEN1 => X"03",
      REG_RD_REQ_VC_MAP0 => B"000",
      REG_RD_REQ_VC_MAP1 => B"100",
      REG_RD_RESP_VC_MAP0 => B"010",
      REG_RD_RESP_VC_MAP1 => B"110",
      REG_RD_VCA_TOKEN0 => X"04",
      REG_RD_VCA_TOKEN1 => X"06",
      REG_SRC => X"300",
      REG_TBASE_AXI_TIMEOUT => X"2",
      REG_TBASE_TRK_TIMEOUT => X"2",
      REG_VMAP_OUT_RD_TOKEN0 => X"02",
      REG_VMAP_OUT_RD_TOKEN1 => X"03",
      REG_VMAP_OUT_WR_TOKEN0 => X"06",
      REG_VMAP_OUT_WR_TOKEN1 => X"04",
      REG_WRTRK_VCA_TOKEN0 => X"06",
      REG_WRTRK_VCA_TOKEN1 => X"04",
      REG_WR_REQ_VC_MAP0 => B"001",
      REG_WR_REQ_VC_MAP1 => B"101",
      REG_WR_RESP_VC_MAP0 => B"011",
      REG_WR_RESP_VC_MAP1 => B"111",
      REG_WR_VCA_TOKEN0 => X"0F",
      REG_WR_VCA_TOKEN1 => X"0A"
    )
        port map (
      AXI_OUT => AXI_OUT,
      CLK => aclk,
      IF_NOC_AXI_ARADDR(63 downto 0) => IF_NOC_AXI_ARADDR(63 downto 0),
      IF_NOC_AXI_ARADDR_PAR(7 downto 0) => NLW_NOC_NSU128_INST_IF_NOC_AXI_ARADDR_PAR_UNCONNECTED(7 downto 0),
      IF_NOC_AXI_ARBURST(1 downto 0) => IF_NOC_AXI_ARBURST(1 downto 0),
      IF_NOC_AXI_ARCACHE(3 downto 0) => IF_NOC_AXI_ARCACHE(3 downto 0),
      IF_NOC_AXI_ARCID(1 downto 0) => IF_NOC_AXI_ARCID(1 downto 0),
      IF_NOC_AXI_ARID_INFO(15 downto 0) => NLW_NOC_NSU128_INST_IF_NOC_AXI_ARID_INFO_UNCONNECTED(15 downto 0),
      IF_NOC_AXI_ARLEN(7 downto 0) => IF_NOC_AXI_ARLEN(7 downto 0),
      IF_NOC_AXI_ARLOCK(0) => IF_NOC_AXI_ARLOCK(0),
      IF_NOC_AXI_ARPROT(2 downto 0) => IF_NOC_AXI_ARPROT(2 downto 0),
      IF_NOC_AXI_ARQOS(3 downto 0) => IF_NOC_AXI_ARQOS(3 downto 0),
      IF_NOC_AXI_ARREADY => IF_NOC_AXI_ARREADY,
      IF_NOC_AXI_ARREGION(3 downto 0) => IF_NOC_AXI_ARREGION(3 downto 0),
      IF_NOC_AXI_ARSIZE(2 downto 0) => IF_NOC_AXI_ARSIZE(2 downto 0),
      IF_NOC_AXI_ARSRC_INFO(11 downto 0) => NLW_NOC_NSU128_INST_IF_NOC_AXI_ARSRC_INFO_UNCONNECTED(11 downto 0),
      IF_NOC_AXI_ARUSER(15 downto 0) => NLW_NOC_NSU128_INST_IF_NOC_AXI_ARUSER_UNCONNECTED(15 downto 0),
      IF_NOC_AXI_ARVALID => IF_NOC_AXI_ARVALID,
      IF_NOC_AXI_AWADDR(63 downto 0) => IF_NOC_AXI_AWADDR(63 downto 0),
      IF_NOC_AXI_AWADDR_PAR(7 downto 0) => NLW_NOC_NSU128_INST_IF_NOC_AXI_AWADDR_PAR_UNCONNECTED(7 downto 0),
      IF_NOC_AXI_AWBURST(1 downto 0) => IF_NOC_AXI_AWBURST(1 downto 0),
      IF_NOC_AXI_AWCACHE(3 downto 0) => IF_NOC_AXI_AWCACHE(3 downto 0),
      IF_NOC_AXI_AWCID(1 downto 0) => IF_NOC_AXI_AWCID(1 downto 0),
      IF_NOC_AXI_AWID_INFO(15 downto 0) => NLW_NOC_NSU128_INST_IF_NOC_AXI_AWID_INFO_UNCONNECTED(15 downto 0),
      IF_NOC_AXI_AWLEN(7 downto 0) => IF_NOC_AXI_AWLEN(7 downto 0),
      IF_NOC_AXI_AWLOCK(0) => IF_NOC_AXI_AWLOCK(0),
      IF_NOC_AXI_AWPROT(2 downto 0) => IF_NOC_AXI_AWPROT(2 downto 0),
      IF_NOC_AXI_AWQOS(3 downto 0) => IF_NOC_AXI_AWQOS(3 downto 0),
      IF_NOC_AXI_AWREADY => IF_NOC_AXI_AWREADY,
      IF_NOC_AXI_AWREGION(3 downto 0) => IF_NOC_AXI_AWREGION(3 downto 0),
      IF_NOC_AXI_AWSIZE(2 downto 0) => IF_NOC_AXI_AWSIZE(2 downto 0),
      IF_NOC_AXI_AWSRC_INFO(11 downto 0) => NLW_NOC_NSU128_INST_IF_NOC_AXI_AWSRC_INFO_UNCONNECTED(11 downto 0),
      IF_NOC_AXI_AWUSER(15 downto 0) => NLW_NOC_NSU128_INST_IF_NOC_AXI_AWUSER_UNCONNECTED(15 downto 0),
      IF_NOC_AXI_AWVALID => IF_NOC_AXI_AWVALID,
      IF_NOC_AXI_BCID(1 downto 0) => IF_NOC_AXI_BCID(1 downto 0),
      IF_NOC_AXI_BREADY => IF_NOC_AXI_BREADY,
      IF_NOC_AXI_BRESP(1 downto 0) => IF_NOC_AXI_BRESP(1 downto 0),
      IF_NOC_AXI_BUSER(15 downto 0) => B"0000000000000000",
      IF_NOC_AXI_BVALID => IF_NOC_AXI_BVALID,
      IF_NOC_AXI_RCID(1 downto 0) => IF_NOC_AXI_RCID(1 downto 0),
      IF_NOC_AXI_RDATA(127 downto 0) => IF_NOC_AXI_RDATA(127 downto 0),
      IF_NOC_AXI_RDATA_PAR(15 downto 0) => B"0000000000000000",
      IF_NOC_AXI_RLAST(0) => IF_NOC_AXI_RLAST(0),
      IF_NOC_AXI_RPOISON => '0',
      IF_NOC_AXI_RREADY => IF_NOC_AXI_RREADY,
      IF_NOC_AXI_RRESP(1 downto 0) => IF_NOC_AXI_RRESP(1 downto 0),
      IF_NOC_AXI_RUSER(15 downto 0) => IF_NOC_AXI_RUSER(15 downto 0),
      IF_NOC_AXI_RVALID => IF_NOC_AXI_RVALID,
      IF_NOC_AXI_TDEST(9) => NOC_NSU128_INST_n_714,
      IF_NOC_AXI_TDEST(8) => NOC_NSU128_INST_n_715,
      IF_NOC_AXI_TDEST(7) => NOC_NSU128_INST_n_716,
      IF_NOC_AXI_TDEST(6) => NOC_NSU128_INST_n_717,
      IF_NOC_AXI_TDEST(5) => NOC_NSU128_INST_n_718,
      IF_NOC_AXI_TDEST(4) => NOC_NSU128_INST_n_719,
      IF_NOC_AXI_TDEST(3) => NOC_NSU128_INST_n_720,
      IF_NOC_AXI_TDEST(2) => NOC_NSU128_INST_n_721,
      IF_NOC_AXI_TDEST(1) => NOC_NSU128_INST_n_722,
      IF_NOC_AXI_TDEST(0) => NOC_NSU128_INST_n_723,
      IF_NOC_AXI_WCID(5 downto 0) => NLW_NOC_NSU128_INST_IF_NOC_AXI_WCID_UNCONNECTED(5 downto 0),
      IF_NOC_AXI_WDATA(127 downto 0) => IF_NOC_AXI_WDATA(127 downto 0),
      IF_NOC_AXI_WDATA_PAR(15 downto 0) => NLW_NOC_NSU128_INST_IF_NOC_AXI_WDATA_PAR_UNCONNECTED(15 downto 0),
      IF_NOC_AXI_WID_INFO(15 downto 0) => NLW_NOC_NSU128_INST_IF_NOC_AXI_WID_INFO_UNCONNECTED(15 downto 0),
      IF_NOC_AXI_WLAST(0) => IF_NOC_AXI_WLAST(0),
      IF_NOC_AXI_WPOISON => NLW_NOC_NSU128_INST_IF_NOC_AXI_WPOISON_UNCONNECTED,
      IF_NOC_AXI_WREADY => IF_NOC_AXI_WREADY,
      IF_NOC_AXI_WSRC_INFO(11 downto 0) => NLW_NOC_NSU128_INST_IF_NOC_AXI_WSRC_INFO_UNCONNECTED(11 downto 0),
      IF_NOC_AXI_WSTRB(15 downto 0) => IF_NOC_AXI_WSTRB(15 downto 0),
      IF_NOC_AXI_WUSER(15 downto 0) => \^if_noc_axi_wuser\(15 downto 0),
      IF_NOC_AXI_WVALID => IF_NOC_AXI_WVALID,
      IF_NOC_NPP_IN_NOC_CREDIT_RDY => IF_NOC_NPP_IN_NOC_CREDIT_RDY,
      IF_NOC_NPP_IN_NOC_CREDIT_RETURN(7 downto 0) => IF_NOC_NPP_IN_NOC_CREDIT_RETURN(7 downto 0),
      IF_NOC_NPP_IN_NOC_CREDIT_RETURN_EN => NLW_NOC_NSU128_INST_IF_NOC_NPP_IN_NOC_CREDIT_RETURN_EN_UNCONNECTED,
      IF_NOC_NPP_IN_NOC_FLIT(181 downto 0) => IF_NOC_NPP_IN_NOC_FLIT(181 downto 0),
      IF_NOC_NPP_IN_NOC_FLIT_EN => '1',
      IF_NOC_NPP_IN_NOC_VALID(7 downto 0) => IF_NOC_NPP_IN_NOC_VALID(7 downto 0),
      IF_NOC_NPP_IN_NOC_VALID_EN => '1',
      IF_NOC_NPP_OUT_NOC_CREDIT_RDY => IF_NOC_NPP_OUT_NOC_CREDIT_RDY,
      IF_NOC_NPP_OUT_NOC_CREDIT_RETURN(7 downto 0) => IF_NOC_NPP_OUT_NOC_CREDIT_RETURN(7 downto 0),
      IF_NOC_NPP_OUT_NOC_CREDIT_RETURN_EN => '1',
      IF_NOC_NPP_OUT_NOC_FLIT(181 downto 0) => IF_NOC_NPP_OUT_NOC_FLIT(181 downto 0),
      IF_NOC_NPP_OUT_NOC_FLIT_EN => NLW_NOC_NSU128_INST_IF_NOC_NPP_OUT_NOC_FLIT_EN_UNCONNECTED,
      IF_NOC_NPP_OUT_NOC_VALID(7 downto 0) => IF_NOC_NPP_OUT_NOC_VALID(7 downto 0),
      IF_NOC_NPP_OUT_NOC_VALID_EN => NLW_NOC_NSU128_INST_IF_NOC_NPP_OUT_NOC_VALID_EN_UNCONNECTED,
      NSU => NSU,
      NSU_USR_INTERRUPT_IN(3 downto 0) => B"0000"
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_bd_afcb_M00_AXI_nsu_0 is
  port (
    IF_NOC_AXI_ARADDR : out STD_LOGIC_VECTOR ( 63 downto 0 );
    IF_NOC_AXI_ARBURST : out STD_LOGIC_VECTOR ( 1 downto 0 );
    IF_NOC_AXI_ARCACHE : out STD_LOGIC_VECTOR ( 3 downto 0 );
    IF_NOC_AXI_ARCID : out STD_LOGIC_VECTOR ( 1 downto 0 );
    IF_NOC_AXI_ARLEN : out STD_LOGIC_VECTOR ( 7 downto 0 );
    IF_NOC_AXI_ARLOCK : out STD_LOGIC_VECTOR ( 0 to 0 );
    IF_NOC_AXI_ARPROT : out STD_LOGIC_VECTOR ( 2 downto 0 );
    IF_NOC_AXI_ARQOS : out STD_LOGIC_VECTOR ( 3 downto 0 );
    IF_NOC_AXI_ARREGION : out STD_LOGIC_VECTOR ( 3 downto 0 );
    IF_NOC_AXI_ARSIZE : out STD_LOGIC_VECTOR ( 2 downto 0 );
    IF_NOC_AXI_ARVALID : out STD_LOGIC;
    IF_NOC_AXI_AWADDR : out STD_LOGIC_VECTOR ( 63 downto 0 );
    IF_NOC_AXI_AWBURST : out STD_LOGIC_VECTOR ( 1 downto 0 );
    IF_NOC_AXI_AWCACHE : out STD_LOGIC_VECTOR ( 3 downto 0 );
    IF_NOC_AXI_AWCID : out STD_LOGIC_VECTOR ( 1 downto 0 );
    IF_NOC_AXI_AWLEN : out STD_LOGIC_VECTOR ( 7 downto 0 );
    IF_NOC_AXI_AWLOCK : out STD_LOGIC_VECTOR ( 0 to 0 );
    IF_NOC_AXI_AWPROT : out STD_LOGIC_VECTOR ( 2 downto 0 );
    IF_NOC_AXI_AWQOS : out STD_LOGIC_VECTOR ( 3 downto 0 );
    IF_NOC_AXI_AWREGION : out STD_LOGIC_VECTOR ( 3 downto 0 );
    IF_NOC_AXI_AWSIZE : out STD_LOGIC_VECTOR ( 2 downto 0 );
    IF_NOC_AXI_AWVALID : out STD_LOGIC;
    IF_NOC_AXI_BREADY : out STD_LOGIC;
    IF_NOC_AXI_RREADY : out STD_LOGIC;
    IF_NOC_AXI_WDATA : out STD_LOGIC_VECTOR ( 127 downto 0 );
    IF_NOC_AXI_WLAST : out STD_LOGIC_VECTOR ( 0 to 0 );
    IF_NOC_AXI_WSTRB : out STD_LOGIC_VECTOR ( 15 downto 0 );
    IF_NOC_AXI_WUSER : out STD_LOGIC_VECTOR ( 16 downto 0 );
    IF_NOC_AXI_WVALID : out STD_LOGIC;
    IF_NOC_AXI_ARREADY : in STD_LOGIC;
    IF_NOC_AXI_AWREADY : in STD_LOGIC;
    IF_NOC_AXI_BCID : in STD_LOGIC_VECTOR ( 1 downto 0 );
    IF_NOC_AXI_BRESP : in STD_LOGIC_VECTOR ( 1 downto 0 );
    IF_NOC_AXI_BVALID : in STD_LOGIC;
    IF_NOC_AXI_RCID : in STD_LOGIC_VECTOR ( 1 downto 0 );
    IF_NOC_AXI_RDATA : in STD_LOGIC_VECTOR ( 127 downto 0 );
    IF_NOC_AXI_RLAST : in STD_LOGIC_VECTOR ( 0 to 0 );
    IF_NOC_AXI_RRESP : in STD_LOGIC_VECTOR ( 1 downto 0 );
    IF_NOC_AXI_RUSER : in STD_LOGIC_VECTOR ( 16 downto 0 );
    IF_NOC_AXI_RVALID : in STD_LOGIC;
    IF_NOC_AXI_WREADY : in STD_LOGIC;
    IF_NOC_NPP_IN_NOC_CREDIT_RETURN : out STD_LOGIC_VECTOR ( 7 downto 0 );
    IF_NOC_NPP_OUT_NOC_CREDIT_RDY : out STD_LOGIC;
    IF_NOC_NPP_OUT_NOC_FLIT : out STD_LOGIC_VECTOR ( 181 downto 0 );
    IF_NOC_NPP_OUT_NOC_VALID : out STD_LOGIC_VECTOR ( 7 downto 0 );
    aclk : in STD_LOGIC;
    IF_NOC_NPP_IN_NOC_CREDIT_RDY : in STD_LOGIC;
    IF_NOC_NPP_IN_NOC_FLIT : in STD_LOGIC_VECTOR ( 181 downto 0 );
    IF_NOC_NPP_IN_NOC_VALID : in STD_LOGIC_VECTOR ( 7 downto 0 );
    IF_NOC_NPP_OUT_NOC_CREDIT_RETURN : in STD_LOGIC_VECTOR ( 7 downto 0 );
    AXI_OUT : out STD_LOGIC;
    NSU : in STD_LOGIC
  );
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_bd_afcb_M00_AXI_nsu_0 : entity is "noc_nsu_0,noc_nsu_v1_0_0_0,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_bd_afcb_M00_AXI_nsu_0 : entity is "yes";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_bd_afcb_M00_AXI_nsu_0 : entity is "noc_nsu_v1_0_0_0,Vivado 2018.1.0";
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_bd_afcb_M00_AXI_nsu_0;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_bd_afcb_M00_AXI_nsu_0 is
  signal \<const0>\ : STD_LOGIC;
  signal \^if_noc_axi_wuser\ : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal NLW_bd_afcb_M00_AXI_nsu_0_top_INST_IF_NOC_AXI_TDEST_UNCONNECTED : STD_LOGIC_VECTOR ( 9 downto 0 );
  signal NLW_bd_afcb_M00_AXI_nsu_0_top_INST_IF_NOC_AXI_WUSER_UNCONNECTED : STD_LOGIC_VECTOR ( 16 to 16 );
  attribute REG_AXI_LOOPBACK : string;
  attribute REG_AXI_LOOPBACK of bd_afcb_M00_AXI_nsu_0_top_INST : label is "2'b00";
  attribute REG_COMP_ID_INDEX0 : string;
  attribute REG_COMP_ID_INDEX0 of bd_afcb_M00_AXI_nsu_0_top_INST : label is "5'b00000";
  attribute REG_COMP_ID_INDEX1 : string;
  attribute REG_COMP_ID_INDEX1 of bd_afcb_M00_AXI_nsu_0_top_INST : label is "5'b00001";
  attribute REG_COMP_ID_MODE : string;
  attribute REG_COMP_ID_MODE of bd_afcb_M00_AXI_nsu_0_top_INST : label is "1'b0";
  attribute REG_DISABLE_EX_MON : string;
  attribute REG_DISABLE_EX_MON of bd_afcb_M00_AXI_nsu_0_top_INST : label is "1'b1";
  attribute REG_DWIDTH : string;
  attribute REG_DWIDTH of bd_afcb_M00_AXI_nsu_0_top_INST : label is "3'b100";
  attribute REG_ECC_CHK_EN : string;
  attribute REG_ECC_CHK_EN of bd_afcb_M00_AXI_nsu_0_top_INST : label is "1'b1";
  attribute REG_FIXED_COMP_ID : string;
  attribute REG_FIXED_COMP_ID of bd_afcb_M00_AXI_nsu_0_top_INST : label is "2'b00";
  attribute REG_MODE_SELECT : string;
  attribute REG_MODE_SELECT of bd_afcb_M00_AXI_nsu_0_top_INST : label is "2'b00";
  attribute REG_ODISABLE_AXI_RESP : string;
  attribute REG_ODISABLE_AXI_RESP of bd_afcb_M00_AXI_nsu_0_top_INST : label is "1'b0";
  attribute REG_OUTSTANDING_RD_TXN : string;
  attribute REG_OUTSTANDING_RD_TXN of bd_afcb_M00_AXI_nsu_0_top_INST : label is "6'b100000";
  attribute REG_OUTSTANDING_WR_TXN : string;
  attribute REG_OUTSTANDING_WR_TXN of bd_afcb_M00_AXI_nsu_0_top_INST : label is "6'b100000";
  attribute REG_PAR_CHK : string;
  attribute REG_PAR_CHK of bd_afcb_M00_AXI_nsu_0_top_INST : label is "1'b0";
  attribute REG_RDTRK_VCA_TOKEN0 : string;
  attribute REG_RDTRK_VCA_TOKEN0 of bd_afcb_M00_AXI_nsu_0_top_INST : label is "8'b00000010";
  attribute REG_RDTRK_VCA_TOKEN1 : string;
  attribute REG_RDTRK_VCA_TOKEN1 of bd_afcb_M00_AXI_nsu_0_top_INST : label is "8'b00000011";
  attribute REG_RD_REQ_VC_MAP0 : string;
  attribute REG_RD_REQ_VC_MAP0 of bd_afcb_M00_AXI_nsu_0_top_INST : label is "3'b000";
  attribute REG_RD_REQ_VC_MAP1 : string;
  attribute REG_RD_REQ_VC_MAP1 of bd_afcb_M00_AXI_nsu_0_top_INST : label is "3'b100";
  attribute REG_RD_RESP_VC_MAP0 : string;
  attribute REG_RD_RESP_VC_MAP0 of bd_afcb_M00_AXI_nsu_0_top_INST : label is "3'b010";
  attribute REG_RD_RESP_VC_MAP1 : string;
  attribute REG_RD_RESP_VC_MAP1 of bd_afcb_M00_AXI_nsu_0_top_INST : label is "3'b110";
  attribute REG_RD_VCA_TOKEN0 : string;
  attribute REG_RD_VCA_TOKEN0 of bd_afcb_M00_AXI_nsu_0_top_INST : label is "8'b00000100";
  attribute REG_RD_VCA_TOKEN1 : string;
  attribute REG_RD_VCA_TOKEN1 of bd_afcb_M00_AXI_nsu_0_top_INST : label is "8'b00000110";
  attribute REG_SRC : string;
  attribute REG_SRC of bd_afcb_M00_AXI_nsu_0_top_INST : label is "12'b001100000000";
  attribute REG_TBASE_AXI_TIMEOUT : string;
  attribute REG_TBASE_AXI_TIMEOUT of bd_afcb_M00_AXI_nsu_0_top_INST : label is "4'b0010";
  attribute REG_TBASE_TRK_TIMEOUT : string;
  attribute REG_TBASE_TRK_TIMEOUT of bd_afcb_M00_AXI_nsu_0_top_INST : label is "4'b0010";
  attribute REG_VMAP_OUT_RD_TOKEN0 : string;
  attribute REG_VMAP_OUT_RD_TOKEN0 of bd_afcb_M00_AXI_nsu_0_top_INST : label is "8'b00000010";
  attribute REG_VMAP_OUT_RD_TOKEN1 : string;
  attribute REG_VMAP_OUT_RD_TOKEN1 of bd_afcb_M00_AXI_nsu_0_top_INST : label is "8'b00000011";
  attribute REG_VMAP_OUT_WR_TOKEN0 : string;
  attribute REG_VMAP_OUT_WR_TOKEN0 of bd_afcb_M00_AXI_nsu_0_top_INST : label is "8'b00000110";
  attribute REG_VMAP_OUT_WR_TOKEN1 : string;
  attribute REG_VMAP_OUT_WR_TOKEN1 of bd_afcb_M00_AXI_nsu_0_top_INST : label is "8'b00000100";
  attribute REG_WRTRK_VCA_TOKEN0 : string;
  attribute REG_WRTRK_VCA_TOKEN0 of bd_afcb_M00_AXI_nsu_0_top_INST : label is "8'b00000110";
  attribute REG_WRTRK_VCA_TOKEN1 : string;
  attribute REG_WRTRK_VCA_TOKEN1 of bd_afcb_M00_AXI_nsu_0_top_INST : label is "8'b00000100";
  attribute REG_WR_REQ_VC_MAP0 : string;
  attribute REG_WR_REQ_VC_MAP0 of bd_afcb_M00_AXI_nsu_0_top_INST : label is "3'b001";
  attribute REG_WR_REQ_VC_MAP1 : string;
  attribute REG_WR_REQ_VC_MAP1 of bd_afcb_M00_AXI_nsu_0_top_INST : label is "3'b101";
  attribute REG_WR_RESP_VC_MAP0 : string;
  attribute REG_WR_RESP_VC_MAP0 of bd_afcb_M00_AXI_nsu_0_top_INST : label is "3'b011";
  attribute REG_WR_RESP_VC_MAP1 : string;
  attribute REG_WR_RESP_VC_MAP1 of bd_afcb_M00_AXI_nsu_0_top_INST : label is "3'b111";
  attribute REG_WR_VCA_TOKEN0 : string;
  attribute REG_WR_VCA_TOKEN0 of bd_afcb_M00_AXI_nsu_0_top_INST : label is "8'b00001111";
  attribute REG_WR_VCA_TOKEN1 : string;
  attribute REG_WR_VCA_TOKEN1 of bd_afcb_M00_AXI_nsu_0_top_INST : label is "8'b00001010";
  attribute X_INTERFACE_INFO : string;
  attribute X_INTERFACE_INFO of IF_NOC_AXI_ARREADY : signal is "xilinx.com:interface:aximm:1.0 MAXI4 ARREADY";
  attribute X_INTERFACE_INFO of IF_NOC_AXI_ARVALID : signal is "xilinx.com:interface:aximm:1.0 MAXI4 ARVALID";
  attribute X_INTERFACE_INFO of IF_NOC_AXI_AWREADY : signal is "xilinx.com:interface:aximm:1.0 MAXI4 AWREADY";
  attribute X_INTERFACE_INFO of IF_NOC_AXI_AWVALID : signal is "xilinx.com:interface:aximm:1.0 MAXI4 AWVALID";
  attribute X_INTERFACE_INFO of IF_NOC_AXI_BREADY : signal is "xilinx.com:interface:aximm:1.0 MAXI4 BREADY";
  attribute X_INTERFACE_INFO of IF_NOC_AXI_BVALID : signal is "xilinx.com:interface:aximm:1.0 MAXI4 BVALID";
  attribute X_INTERFACE_INFO of IF_NOC_AXI_RREADY : signal is "xilinx.com:interface:aximm:1.0 MAXI4 RREADY";
  attribute X_INTERFACE_INFO of IF_NOC_AXI_RVALID : signal is "xilinx.com:interface:aximm:1.0 MAXI4 RVALID";
  attribute X_INTERFACE_INFO of IF_NOC_AXI_WREADY : signal is "xilinx.com:interface:aximm:1.0 MAXI4 WREADY";
  attribute X_INTERFACE_INFO of IF_NOC_AXI_WVALID : signal is "xilinx.com:interface:aximm:1.0 MAXI4 WVALID";
  attribute X_INTERFACE_INFO of IF_NOC_NPP_IN_NOC_CREDIT_RDY : signal is "xilinx.com:interface:npp:1.0 SNPP CREDIT_RDY";
  attribute X_INTERFACE_INFO of IF_NOC_NPP_OUT_NOC_CREDIT_RDY : signal is "xilinx.com:interface:npp:1.0 MNPP CREDIT_RDY";
  attribute dont_touch : string;
  attribute dont_touch of NSU : signal is "true";
  attribute X_INTERFACE_INFO of aclk : signal is "xilinx.com:signal:clock:1.0 aclk CLK";
  attribute X_INTERFACE_PARAMETER : string;
  attribute X_INTERFACE_PARAMETER of aclk : signal is "XIL_INTERFACENAME aclk, ASSOCIATED_BUSIF MAXI4:MAXI_STREAM, FREQ_HZ 100000000, PHASE 0.000";
  attribute X_INTERFACE_INFO of IF_NOC_AXI_ARADDR : signal is "xilinx.com:interface:aximm:1.0 MAXI4 ARADDR";
  attribute X_INTERFACE_INFO of IF_NOC_AXI_ARBURST : signal is "xilinx.com:interface:aximm:1.0 MAXI4 ARBURST";
  attribute X_INTERFACE_INFO of IF_NOC_AXI_ARCACHE : signal is "xilinx.com:interface:aximm:1.0 MAXI4 ARCACHE";
  attribute X_INTERFACE_INFO of IF_NOC_AXI_ARCID : signal is "xilinx.com:interface:aximm:1.0 MAXI4 ARID";
  attribute X_INTERFACE_INFO of IF_NOC_AXI_ARLEN : signal is "xilinx.com:interface:aximm:1.0 MAXI4 ARLEN";
  attribute X_INTERFACE_INFO of IF_NOC_AXI_ARLOCK : signal is "xilinx.com:interface:aximm:1.0 MAXI4 ARLOCK";
  attribute X_INTERFACE_INFO of IF_NOC_AXI_ARPROT : signal is "xilinx.com:interface:aximm:1.0 MAXI4 ARPROT";
  attribute X_INTERFACE_INFO of IF_NOC_AXI_ARQOS : signal is "xilinx.com:interface:aximm:1.0 MAXI4 ARQOS";
  attribute X_INTERFACE_INFO of IF_NOC_AXI_ARREGION : signal is "xilinx.com:interface:aximm:1.0 MAXI4 ARREGION";
  attribute X_INTERFACE_INFO of IF_NOC_AXI_ARSIZE : signal is "xilinx.com:interface:aximm:1.0 MAXI4 ARSIZE";
  attribute X_INTERFACE_INFO of IF_NOC_AXI_AWADDR : signal is "xilinx.com:interface:aximm:1.0 MAXI4 AWADDR";
  attribute X_INTERFACE_INFO of IF_NOC_AXI_AWBURST : signal is "xilinx.com:interface:aximm:1.0 MAXI4 AWBURST";
  attribute X_INTERFACE_INFO of IF_NOC_AXI_AWCACHE : signal is "xilinx.com:interface:aximm:1.0 MAXI4 AWCACHE";
  attribute X_INTERFACE_INFO of IF_NOC_AXI_AWCID : signal is "xilinx.com:interface:aximm:1.0 MAXI4 AWID";
  attribute X_INTERFACE_INFO of IF_NOC_AXI_AWLEN : signal is "xilinx.com:interface:aximm:1.0 MAXI4 AWLEN";
  attribute X_INTERFACE_INFO of IF_NOC_AXI_AWLOCK : signal is "xilinx.com:interface:aximm:1.0 MAXI4 AWLOCK";
  attribute X_INTERFACE_INFO of IF_NOC_AXI_AWPROT : signal is "xilinx.com:interface:aximm:1.0 MAXI4 AWPROT";
  attribute X_INTERFACE_INFO of IF_NOC_AXI_AWQOS : signal is "xilinx.com:interface:aximm:1.0 MAXI4 AWQOS";
  attribute X_INTERFACE_INFO of IF_NOC_AXI_AWREGION : signal is "xilinx.com:interface:aximm:1.0 MAXI4 AWREGION";
  attribute X_INTERFACE_INFO of IF_NOC_AXI_AWSIZE : signal is "xilinx.com:interface:aximm:1.0 MAXI4 AWSIZE";
  attribute X_INTERFACE_INFO of IF_NOC_AXI_BCID : signal is "xilinx.com:interface:aximm:1.0 MAXI4 BID";
  attribute X_INTERFACE_INFO of IF_NOC_AXI_BRESP : signal is "xilinx.com:interface:aximm:1.0 MAXI4 BRESP";
  attribute X_INTERFACE_INFO of IF_NOC_AXI_RCID : signal is "xilinx.com:interface:aximm:1.0 MAXI4 RID";
  attribute X_INTERFACE_INFO of IF_NOC_AXI_RDATA : signal is "xilinx.com:interface:aximm:1.0 MAXI4 RDATA";
  attribute X_INTERFACE_INFO of IF_NOC_AXI_RLAST : signal is "xilinx.com:interface:aximm:1.0 MAXI4 RLAST";
  attribute X_INTERFACE_INFO of IF_NOC_AXI_RRESP : signal is "xilinx.com:interface:aximm:1.0 MAXI4 RRESP";
  attribute X_INTERFACE_INFO of IF_NOC_AXI_RUSER : signal is "xilinx.com:interface:aximm:1.0 MAXI4 RUSER";
  attribute X_INTERFACE_INFO of IF_NOC_AXI_WDATA : signal is "xilinx.com:interface:aximm:1.0 MAXI4 WDATA";
  attribute X_INTERFACE_INFO of IF_NOC_AXI_WLAST : signal is "xilinx.com:interface:aximm:1.0 MAXI4 WLAST";
  attribute X_INTERFACE_INFO of IF_NOC_AXI_WSTRB : signal is "xilinx.com:interface:aximm:1.0 MAXI4 WSTRB";
  attribute X_INTERFACE_INFO of IF_NOC_AXI_WUSER : signal is "xilinx.com:interface:aximm:1.0 MAXI4 WUSER";
  attribute X_INTERFACE_INFO of IF_NOC_NPP_IN_NOC_CREDIT_RETURN : signal is "xilinx.com:interface:npp:1.0 SNPP CREDIT_RETURN";
  attribute X_INTERFACE_INFO of IF_NOC_NPP_IN_NOC_FLIT : signal is "xilinx.com:interface:npp:1.0 SNPP FLIT";
  attribute X_INTERFACE_INFO of IF_NOC_NPP_IN_NOC_VALID : signal is "xilinx.com:interface:npp:1.0 SNPP VALID";
  attribute X_INTERFACE_PARAMETER of IF_NOC_NPP_IN_NOC_VALID : signal is "XIL_INTERFACENAME SNPP, IN_SYNTHESIS_HDL NO, CAN_DEBUG false";
  attribute X_INTERFACE_INFO of IF_NOC_NPP_OUT_NOC_CREDIT_RETURN : signal is "xilinx.com:interface:npp:1.0 MNPP CREDIT_RETURN";
  attribute X_INTERFACE_PARAMETER of IF_NOC_NPP_OUT_NOC_CREDIT_RETURN : signal is "XIL_INTERFACENAME MNPP, IN_SYNTHESIS_HDL NO, CAN_DEBUG false";
  attribute X_INTERFACE_INFO of IF_NOC_NPP_OUT_NOC_FLIT : signal is "xilinx.com:interface:npp:1.0 MNPP FLIT";
  attribute X_INTERFACE_INFO of IF_NOC_NPP_OUT_NOC_VALID : signal is "xilinx.com:interface:npp:1.0 MNPP VALID";
begin
  IF_NOC_AXI_WUSER(16) <= \<const0>\;
  IF_NOC_AXI_WUSER(15 downto 0) <= \^if_noc_axi_wuser\(15 downto 0);
GND: unisim.vcomponents.GND
     port map (
      G => \<const0>\
    );
bd_afcb_M00_AXI_nsu_0_top_INST: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_bd_afcb_M00_AXI_nsu_0_top
     port map (
      AXI_OUT => AXI_OUT,
      IF_NOC_AXI_ARADDR(63 downto 0) => IF_NOC_AXI_ARADDR(63 downto 0),
      IF_NOC_AXI_ARBURST(1 downto 0) => IF_NOC_AXI_ARBURST(1 downto 0),
      IF_NOC_AXI_ARCACHE(3 downto 0) => IF_NOC_AXI_ARCACHE(3 downto 0),
      IF_NOC_AXI_ARCID(1 downto 0) => IF_NOC_AXI_ARCID(1 downto 0),
      IF_NOC_AXI_ARLEN(7 downto 0) => IF_NOC_AXI_ARLEN(7 downto 0),
      IF_NOC_AXI_ARLOCK(0) => IF_NOC_AXI_ARLOCK(0),
      IF_NOC_AXI_ARPROT(2 downto 0) => IF_NOC_AXI_ARPROT(2 downto 0),
      IF_NOC_AXI_ARQOS(3 downto 0) => IF_NOC_AXI_ARQOS(3 downto 0),
      IF_NOC_AXI_ARREADY => IF_NOC_AXI_ARREADY,
      IF_NOC_AXI_ARREGION(3 downto 0) => IF_NOC_AXI_ARREGION(3 downto 0),
      IF_NOC_AXI_ARSIZE(2 downto 0) => IF_NOC_AXI_ARSIZE(2 downto 0),
      IF_NOC_AXI_ARVALID => IF_NOC_AXI_ARVALID,
      IF_NOC_AXI_AWADDR(63 downto 0) => IF_NOC_AXI_AWADDR(63 downto 0),
      IF_NOC_AXI_AWBURST(1 downto 0) => IF_NOC_AXI_AWBURST(1 downto 0),
      IF_NOC_AXI_AWCACHE(3 downto 0) => IF_NOC_AXI_AWCACHE(3 downto 0),
      IF_NOC_AXI_AWCID(1 downto 0) => IF_NOC_AXI_AWCID(1 downto 0),
      IF_NOC_AXI_AWLEN(7 downto 0) => IF_NOC_AXI_AWLEN(7 downto 0),
      IF_NOC_AXI_AWLOCK(0) => IF_NOC_AXI_AWLOCK(0),
      IF_NOC_AXI_AWPROT(2 downto 0) => IF_NOC_AXI_AWPROT(2 downto 0),
      IF_NOC_AXI_AWQOS(3 downto 0) => IF_NOC_AXI_AWQOS(3 downto 0),
      IF_NOC_AXI_AWREADY => IF_NOC_AXI_AWREADY,
      IF_NOC_AXI_AWREGION(3 downto 0) => IF_NOC_AXI_AWREGION(3 downto 0),
      IF_NOC_AXI_AWSIZE(2 downto 0) => IF_NOC_AXI_AWSIZE(2 downto 0),
      IF_NOC_AXI_AWVALID => IF_NOC_AXI_AWVALID,
      IF_NOC_AXI_BCID(1 downto 0) => IF_NOC_AXI_BCID(1 downto 0),
      IF_NOC_AXI_BREADY => IF_NOC_AXI_BREADY,
      IF_NOC_AXI_BRESP(1 downto 0) => IF_NOC_AXI_BRESP(1 downto 0),
      IF_NOC_AXI_BVALID => IF_NOC_AXI_BVALID,
      IF_NOC_AXI_RCID(1 downto 0) => IF_NOC_AXI_RCID(1 downto 0),
      IF_NOC_AXI_RDATA(127 downto 0) => IF_NOC_AXI_RDATA(127 downto 0),
      IF_NOC_AXI_RLAST(0) => IF_NOC_AXI_RLAST(0),
      IF_NOC_AXI_RREADY => IF_NOC_AXI_RREADY,
      IF_NOC_AXI_RRESP(1 downto 0) => IF_NOC_AXI_RRESP(1 downto 0),
      IF_NOC_AXI_RUSER(16) => '0',
      IF_NOC_AXI_RUSER(15 downto 0) => IF_NOC_AXI_RUSER(15 downto 0),
      IF_NOC_AXI_RVALID => IF_NOC_AXI_RVALID,
      IF_NOC_AXI_TDEST(9 downto 0) => NLW_bd_afcb_M00_AXI_nsu_0_top_INST_IF_NOC_AXI_TDEST_UNCONNECTED(9 downto 0),
      IF_NOC_AXI_WDATA(127 downto 0) => IF_NOC_AXI_WDATA(127 downto 0),
      IF_NOC_AXI_WLAST(0) => IF_NOC_AXI_WLAST(0),
      IF_NOC_AXI_WREADY => IF_NOC_AXI_WREADY,
      IF_NOC_AXI_WSTRB(15 downto 0) => IF_NOC_AXI_WSTRB(15 downto 0),
      IF_NOC_AXI_WUSER(16) => NLW_bd_afcb_M00_AXI_nsu_0_top_INST_IF_NOC_AXI_WUSER_UNCONNECTED(16),
      IF_NOC_AXI_WUSER(15 downto 0) => \^if_noc_axi_wuser\(15 downto 0),
      IF_NOC_AXI_WVALID => IF_NOC_AXI_WVALID,
      IF_NOC_NPP_IN_NOC_CREDIT_RDY => IF_NOC_NPP_IN_NOC_CREDIT_RDY,
      IF_NOC_NPP_IN_NOC_CREDIT_RETURN(7 downto 0) => IF_NOC_NPP_IN_NOC_CREDIT_RETURN(7 downto 0),
      IF_NOC_NPP_IN_NOC_FLIT(181 downto 0) => IF_NOC_NPP_IN_NOC_FLIT(181 downto 0),
      IF_NOC_NPP_IN_NOC_VALID(7 downto 0) => IF_NOC_NPP_IN_NOC_VALID(7 downto 0),
      IF_NOC_NPP_OUT_NOC_CREDIT_RDY => IF_NOC_NPP_OUT_NOC_CREDIT_RDY,
      IF_NOC_NPP_OUT_NOC_CREDIT_RETURN(7 downto 0) => IF_NOC_NPP_OUT_NOC_CREDIT_RETURN(7 downto 0),
      IF_NOC_NPP_OUT_NOC_FLIT(181 downto 0) => IF_NOC_NPP_OUT_NOC_FLIT(181 downto 0),
      IF_NOC_NPP_OUT_NOC_VALID(7 downto 0) => IF_NOC_NPP_OUT_NOC_VALID(7 downto 0),
      NSU => NSU,
      aclk => aclk
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_bd_afcb is
  port (
    M00_AXI_araddr : out STD_LOGIC_VECTOR ( 63 downto 0 );
    M00_AXI_arburst : out STD_LOGIC_VECTOR ( 1 downto 0 );
    M00_AXI_arcache : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M00_AXI_arid : out STD_LOGIC_VECTOR ( 1 downto 0 );
    M00_AXI_arlen : out STD_LOGIC_VECTOR ( 7 downto 0 );
    M00_AXI_arlock : out STD_LOGIC_VECTOR ( 0 to 0 );
    M00_AXI_arprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M00_AXI_arqos : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M00_AXI_arready : in STD_LOGIC_VECTOR ( 0 to 0 );
    M00_AXI_arregion : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M00_AXI_arsize : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M00_AXI_arvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    M00_AXI_awaddr : out STD_LOGIC_VECTOR ( 63 downto 0 );
    M00_AXI_awburst : out STD_LOGIC_VECTOR ( 1 downto 0 );
    M00_AXI_awcache : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M00_AXI_awid : out STD_LOGIC_VECTOR ( 1 downto 0 );
    M00_AXI_awlen : out STD_LOGIC_VECTOR ( 7 downto 0 );
    M00_AXI_awlock : out STD_LOGIC_VECTOR ( 0 to 0 );
    M00_AXI_awprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M00_AXI_awqos : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M00_AXI_awready : in STD_LOGIC_VECTOR ( 0 to 0 );
    M00_AXI_awregion : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M00_AXI_awsize : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M00_AXI_awvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    M00_AXI_bid : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M00_AXI_bready : out STD_LOGIC_VECTOR ( 0 to 0 );
    M00_AXI_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M00_AXI_bvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    M00_AXI_rdata : in STD_LOGIC_VECTOR ( 127 downto 0 );
    M00_AXI_rid : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M00_AXI_rlast : in STD_LOGIC_VECTOR ( 0 to 0 );
    M00_AXI_rready : out STD_LOGIC_VECTOR ( 0 to 0 );
    M00_AXI_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M00_AXI_ruser : in STD_LOGIC_VECTOR ( 16 downto 0 );
    M00_AXI_rvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    M00_AXI_wdata : out STD_LOGIC_VECTOR ( 127 downto 0 );
    M00_AXI_wlast : out STD_LOGIC_VECTOR ( 0 to 0 );
    M00_AXI_wready : in STD_LOGIC_VECTOR ( 0 to 0 );
    M00_AXI_wstrb : out STD_LOGIC_VECTOR ( 15 downto 0 );
    M00_AXI_wuser : out STD_LOGIC_VECTOR ( 16 downto 0 );
    M00_AXI_wvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    S00_INI_internoc : in STD_LOGIC_VECTOR ( 0 to 0 );
    aclk0 : in STD_LOGIC
  );
  attribute HW_HANDOFF : string;
  attribute HW_HANDOFF of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_bd_afcb : entity is "ulp_inst_0_axi_noc_aie_prog_0.hwdef";
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_bd_afcb;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_bd_afcb is
  signal NLW_M00_AXI_nsu_AXI_OUT_UNCONNECTED : STD_LOGIC;
  signal NLW_M00_AXI_nsu_IF_NOC_NPP_OUT_NOC_CREDIT_RDY_UNCONNECTED : STD_LOGIC;
  signal NLW_M00_AXI_nsu_IF_NOC_NPP_IN_NOC_CREDIT_RETURN_UNCONNECTED : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal NLW_M00_AXI_nsu_IF_NOC_NPP_OUT_NOC_FLIT_UNCONNECTED : STD_LOGIC_VECTOR ( 181 downto 0 );
  signal NLW_M00_AXI_nsu_IF_NOC_NPP_OUT_NOC_VALID_UNCONNECTED : STD_LOGIC_VECTOR ( 7 downto 0 );
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of M00_AXI_nsu : label is "noc_nsu_0,noc_nsu_v1_0_0_0,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of M00_AXI_nsu : label is "yes";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of M00_AXI_nsu : label is "noc_nsu_v1_0_0_0,Vivado 2018.1.0";
  attribute X_INTERFACE_INFO : string;
  attribute X_INTERFACE_INFO of aclk0 : signal is "xilinx.com:signal:clock:1.0 CLK.ACLK0 CLK";
  attribute X_INTERFACE_PARAMETER : string;
  attribute X_INTERFACE_PARAMETER of aclk0 : signal is "XIL_INTERFACENAME CLK.ACLK0, ASSOCIATED_BUSIF M00_AXI, CLK_DOMAIN bd_9d54_noc_ai_mm_0_0_s_axi_aclk, FREQ_HZ 1250000000, FREQ_TOLERANCE_HZ 0, INSERT_VIP 0, PHASE 0.0";
  attribute X_INTERFACE_INFO of M00_AXI_araddr : signal is "xilinx.com:interface:aximm:1.0 M00_AXI ARADDR";
  attribute X_INTERFACE_PARAMETER of M00_AXI_araddr : signal is "XIL_INTERFACENAME M00_AXI, ADDR_WIDTH 64, ARUSER_WIDTH 0, AWUSER_WIDTH 0, BUSER_WIDTH 0, CATEGORY aie, CLK_DOMAIN bd_9d54_noc_ai_mm_0_0_s_axi_aclk, DATA_WIDTH 128, FREQ_HZ 1250000000, HAS_BRESP 1, HAS_BURST 1, HAS_CACHE 1, HAS_LOCK 1, HAS_PROT 1, HAS_QOS 1, HAS_REGION 1, HAS_RRESP 1, HAS_WSTRB 1, ID_WIDTH 2, INSERT_VIP 0, MAX_BURST_LENGTH 256, MY_CATEGORY noc, NOC_ID -1, NUM_READ_OUTSTANDING 32, NUM_READ_THREADS 4, NUM_WRITE_OUTSTANDING 32, NUM_WRITE_THREADS 4, PHASE 0.0, PROTOCOL AXI4, READ_WRITE_MODE READ_WRITE, RUSER_BITS_PER_BYTE 0, RUSER_WIDTH 17, SUPPORTS_NARROW_BURST 1, WRITE_BUFFER_SIZE 80, WUSER_BITS_PER_BYTE 0, WUSER_WIDTH 17";
  attribute X_INTERFACE_INFO of M00_AXI_arburst : signal is "xilinx.com:interface:aximm:1.0 M00_AXI ARBURST";
  attribute X_INTERFACE_INFO of M00_AXI_arcache : signal is "xilinx.com:interface:aximm:1.0 M00_AXI ARCACHE";
  attribute X_INTERFACE_INFO of M00_AXI_arid : signal is "xilinx.com:interface:aximm:1.0 M00_AXI ARID";
  attribute X_INTERFACE_INFO of M00_AXI_arlen : signal is "xilinx.com:interface:aximm:1.0 M00_AXI ARLEN";
  attribute X_INTERFACE_INFO of M00_AXI_arlock : signal is "xilinx.com:interface:aximm:1.0 M00_AXI ARLOCK";
  attribute X_INTERFACE_INFO of M00_AXI_arprot : signal is "xilinx.com:interface:aximm:1.0 M00_AXI ARPROT";
  attribute X_INTERFACE_INFO of M00_AXI_arqos : signal is "xilinx.com:interface:aximm:1.0 M00_AXI ARQOS";
  attribute X_INTERFACE_INFO of M00_AXI_arready : signal is "xilinx.com:interface:aximm:1.0 M00_AXI ARREADY";
  attribute X_INTERFACE_INFO of M00_AXI_arregion : signal is "xilinx.com:interface:aximm:1.0 M00_AXI ARREGION";
  attribute X_INTERFACE_INFO of M00_AXI_arsize : signal is "xilinx.com:interface:aximm:1.0 M00_AXI ARSIZE";
  attribute X_INTERFACE_INFO of M00_AXI_arvalid : signal is "xilinx.com:interface:aximm:1.0 M00_AXI ARVALID";
  attribute X_INTERFACE_INFO of M00_AXI_awaddr : signal is "xilinx.com:interface:aximm:1.0 M00_AXI AWADDR";
  attribute X_INTERFACE_INFO of M00_AXI_awburst : signal is "xilinx.com:interface:aximm:1.0 M00_AXI AWBURST";
  attribute X_INTERFACE_INFO of M00_AXI_awcache : signal is "xilinx.com:interface:aximm:1.0 M00_AXI AWCACHE";
  attribute X_INTERFACE_INFO of M00_AXI_awid : signal is "xilinx.com:interface:aximm:1.0 M00_AXI AWID";
  attribute X_INTERFACE_INFO of M00_AXI_awlen : signal is "xilinx.com:interface:aximm:1.0 M00_AXI AWLEN";
  attribute X_INTERFACE_INFO of M00_AXI_awlock : signal is "xilinx.com:interface:aximm:1.0 M00_AXI AWLOCK";
  attribute X_INTERFACE_INFO of M00_AXI_awprot : signal is "xilinx.com:interface:aximm:1.0 M00_AXI AWPROT";
  attribute X_INTERFACE_INFO of M00_AXI_awqos : signal is "xilinx.com:interface:aximm:1.0 M00_AXI AWQOS";
  attribute X_INTERFACE_INFO of M00_AXI_awready : signal is "xilinx.com:interface:aximm:1.0 M00_AXI AWREADY";
  attribute X_INTERFACE_INFO of M00_AXI_awregion : signal is "xilinx.com:interface:aximm:1.0 M00_AXI AWREGION";
  attribute X_INTERFACE_INFO of M00_AXI_awsize : signal is "xilinx.com:interface:aximm:1.0 M00_AXI AWSIZE";
  attribute X_INTERFACE_INFO of M00_AXI_awvalid : signal is "xilinx.com:interface:aximm:1.0 M00_AXI AWVALID";
  attribute X_INTERFACE_INFO of M00_AXI_bid : signal is "xilinx.com:interface:aximm:1.0 M00_AXI BID";
  attribute X_INTERFACE_INFO of M00_AXI_bready : signal is "xilinx.com:interface:aximm:1.0 M00_AXI BREADY";
  attribute X_INTERFACE_INFO of M00_AXI_bresp : signal is "xilinx.com:interface:aximm:1.0 M00_AXI BRESP";
  attribute X_INTERFACE_INFO of M00_AXI_bvalid : signal is "xilinx.com:interface:aximm:1.0 M00_AXI BVALID";
  attribute X_INTERFACE_INFO of M00_AXI_rdata : signal is "xilinx.com:interface:aximm:1.0 M00_AXI RDATA";
  attribute X_INTERFACE_INFO of M00_AXI_rid : signal is "xilinx.com:interface:aximm:1.0 M00_AXI RID";
  attribute X_INTERFACE_INFO of M00_AXI_rlast : signal is "xilinx.com:interface:aximm:1.0 M00_AXI RLAST";
  attribute X_INTERFACE_INFO of M00_AXI_rready : signal is "xilinx.com:interface:aximm:1.0 M00_AXI RREADY";
  attribute X_INTERFACE_INFO of M00_AXI_rresp : signal is "xilinx.com:interface:aximm:1.0 M00_AXI RRESP";
  attribute X_INTERFACE_INFO of M00_AXI_ruser : signal is "xilinx.com:interface:aximm:1.0 M00_AXI RUSER";
  attribute X_INTERFACE_INFO of M00_AXI_rvalid : signal is "xilinx.com:interface:aximm:1.0 M00_AXI RVALID";
  attribute X_INTERFACE_INFO of M00_AXI_wdata : signal is "xilinx.com:interface:aximm:1.0 M00_AXI WDATA";
  attribute X_INTERFACE_INFO of M00_AXI_wlast : signal is "xilinx.com:interface:aximm:1.0 M00_AXI WLAST";
  attribute X_INTERFACE_INFO of M00_AXI_wready : signal is "xilinx.com:interface:aximm:1.0 M00_AXI WREADY";
  attribute X_INTERFACE_INFO of M00_AXI_wstrb : signal is "xilinx.com:interface:aximm:1.0 M00_AXI WSTRB";
  attribute X_INTERFACE_INFO of M00_AXI_wuser : signal is "xilinx.com:interface:aximm:1.0 M00_AXI WUSER";
  attribute X_INTERFACE_INFO of M00_AXI_wvalid : signal is "xilinx.com:interface:aximm:1.0 M00_AXI WVALID";
  attribute X_INTERFACE_INFO of S00_INI_internoc : signal is "xilinx.com:interface:inimm:1.0 S00_INI INTERNOC";
  attribute X_INTERFACE_PARAMETER of S00_INI_internoc : signal is "XIL_INTERFACENAME S00_INI, ADDR_WIDTH 64, COMPUTED_STRATEGY load, CONNECTIONS M00_AXI { read_bw {5} write_bw {5} read_avg_burst {64} write_avg_burst {64}} , INI_STRATEGY load, MY_CATEGORY pl, R_LATENCY 300, R_MAX_BURST_LENGTH 256, R_RATE_LIMITER 10, R_TRAFFIC_CLASS BEST_EFFORT, WRITE_BUFFER_SIZE 80, W_MAX_BURST_LENGTH 256, W_RATE_LIMITER 10, W_TRAFFIC_CLASS BEST_EFFORT";
begin
M00_AXI_nsu: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_bd_afcb_M00_AXI_nsu_0
     port map (
      AXI_OUT => NLW_M00_AXI_nsu_AXI_OUT_UNCONNECTED,
      IF_NOC_AXI_ARADDR(63 downto 0) => M00_AXI_araddr(63 downto 0),
      IF_NOC_AXI_ARBURST(1 downto 0) => M00_AXI_arburst(1 downto 0),
      IF_NOC_AXI_ARCACHE(3 downto 0) => M00_AXI_arcache(3 downto 0),
      IF_NOC_AXI_ARCID(1 downto 0) => M00_AXI_arid(1 downto 0),
      IF_NOC_AXI_ARLEN(7 downto 0) => M00_AXI_arlen(7 downto 0),
      IF_NOC_AXI_ARLOCK(0) => M00_AXI_arlock(0),
      IF_NOC_AXI_ARPROT(2 downto 0) => M00_AXI_arprot(2 downto 0),
      IF_NOC_AXI_ARQOS(3 downto 0) => M00_AXI_arqos(3 downto 0),
      IF_NOC_AXI_ARREADY => M00_AXI_arready(0),
      IF_NOC_AXI_ARREGION(3 downto 0) => M00_AXI_arregion(3 downto 0),
      IF_NOC_AXI_ARSIZE(2 downto 0) => M00_AXI_arsize(2 downto 0),
      IF_NOC_AXI_ARVALID => M00_AXI_arvalid(0),
      IF_NOC_AXI_AWADDR(63 downto 0) => M00_AXI_awaddr(63 downto 0),
      IF_NOC_AXI_AWBURST(1 downto 0) => M00_AXI_awburst(1 downto 0),
      IF_NOC_AXI_AWCACHE(3 downto 0) => M00_AXI_awcache(3 downto 0),
      IF_NOC_AXI_AWCID(1 downto 0) => M00_AXI_awid(1 downto 0),
      IF_NOC_AXI_AWLEN(7 downto 0) => M00_AXI_awlen(7 downto 0),
      IF_NOC_AXI_AWLOCK(0) => M00_AXI_awlock(0),
      IF_NOC_AXI_AWPROT(2 downto 0) => M00_AXI_awprot(2 downto 0),
      IF_NOC_AXI_AWQOS(3 downto 0) => M00_AXI_awqos(3 downto 0),
      IF_NOC_AXI_AWREADY => M00_AXI_awready(0),
      IF_NOC_AXI_AWREGION(3 downto 0) => M00_AXI_awregion(3 downto 0),
      IF_NOC_AXI_AWSIZE(2 downto 0) => M00_AXI_awsize(2 downto 0),
      IF_NOC_AXI_AWVALID => M00_AXI_awvalid(0),
      IF_NOC_AXI_BCID(1 downto 0) => M00_AXI_bid(1 downto 0),
      IF_NOC_AXI_BREADY => M00_AXI_bready(0),
      IF_NOC_AXI_BRESP(1 downto 0) => M00_AXI_bresp(1 downto 0),
      IF_NOC_AXI_BVALID => M00_AXI_bvalid(0),
      IF_NOC_AXI_RCID(1 downto 0) => M00_AXI_rid(1 downto 0),
      IF_NOC_AXI_RDATA(127 downto 0) => M00_AXI_rdata(127 downto 0),
      IF_NOC_AXI_RLAST(0) => M00_AXI_rlast(0),
      IF_NOC_AXI_RREADY => M00_AXI_rready(0),
      IF_NOC_AXI_RRESP(1 downto 0) => M00_AXI_rresp(1 downto 0),
      IF_NOC_AXI_RUSER(16 downto 0) => M00_AXI_ruser(16 downto 0),
      IF_NOC_AXI_RVALID => M00_AXI_rvalid(0),
      IF_NOC_AXI_WDATA(127 downto 0) => M00_AXI_wdata(127 downto 0),
      IF_NOC_AXI_WLAST(0) => M00_AXI_wlast(0),
      IF_NOC_AXI_WREADY => M00_AXI_wready(0),
      IF_NOC_AXI_WSTRB(15 downto 0) => M00_AXI_wstrb(15 downto 0),
      IF_NOC_AXI_WUSER(16 downto 0) => M00_AXI_wuser(16 downto 0),
      IF_NOC_AXI_WVALID => M00_AXI_wvalid(0),
      IF_NOC_NPP_IN_NOC_CREDIT_RDY => '0',
      IF_NOC_NPP_IN_NOC_CREDIT_RETURN(7 downto 0) => NLW_M00_AXI_nsu_IF_NOC_NPP_IN_NOC_CREDIT_RETURN_UNCONNECTED(7 downto 0),
      IF_NOC_NPP_IN_NOC_FLIT(181 downto 0) => B"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
      IF_NOC_NPP_IN_NOC_VALID(7 downto 0) => B"00000000",
      IF_NOC_NPP_OUT_NOC_CREDIT_RDY => NLW_M00_AXI_nsu_IF_NOC_NPP_OUT_NOC_CREDIT_RDY_UNCONNECTED,
      IF_NOC_NPP_OUT_NOC_CREDIT_RETURN(7 downto 0) => B"00000000",
      IF_NOC_NPP_OUT_NOC_FLIT(181 downto 0) => NLW_M00_AXI_nsu_IF_NOC_NPP_OUT_NOC_FLIT_UNCONNECTED(181 downto 0),
      IF_NOC_NPP_OUT_NOC_VALID(7 downto 0) => NLW_M00_AXI_nsu_IF_NOC_NPP_OUT_NOC_VALID_UNCONNECTED(7 downto 0),
      NSU => '0',
      aclk => aclk0
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
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
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "ulp_inst_0_axi_noc_aie_prog_0,bd_afcb,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "yes";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "bd_afcb,Vivado 2022.2";
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
  attribute HW_HANDOFF : string;
  attribute HW_HANDOFF of inst : label is "ulp_inst_0_axi_noc_aie_prog_0.hwdef";
  attribute X_INTERFACE_INFO : string;
  attribute X_INTERFACE_INFO of aclk0 : signal is "xilinx.com:signal:clock:1.0 CLK.aclk0 CLK";
  attribute X_INTERFACE_PARAMETER : string;
  attribute X_INTERFACE_PARAMETER of aclk0 : signal is "XIL_INTERFACENAME CLK.aclk0, FREQ_HZ 1250000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN bd_9d54_noc_ai_mm_0_0_s_axi_aclk, ASSOCIATED_BUSIF M00_AXI, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of M00_AXI_araddr : signal is "xilinx.com:interface:aximm:1.0 M00_AXI ARADDR";
  attribute X_INTERFACE_INFO of M00_AXI_arburst : signal is "xilinx.com:interface:aximm:1.0 M00_AXI ARBURST";
  attribute X_INTERFACE_INFO of M00_AXI_arcache : signal is "xilinx.com:interface:aximm:1.0 M00_AXI ARCACHE";
  attribute X_INTERFACE_INFO of M00_AXI_arid : signal is "xilinx.com:interface:aximm:1.0 M00_AXI ARID";
  attribute X_INTERFACE_INFO of M00_AXI_arlen : signal is "xilinx.com:interface:aximm:1.0 M00_AXI ARLEN";
  attribute X_INTERFACE_INFO of M00_AXI_arlock : signal is "xilinx.com:interface:aximm:1.0 M00_AXI ARLOCK";
  attribute X_INTERFACE_INFO of M00_AXI_arprot : signal is "xilinx.com:interface:aximm:1.0 M00_AXI ARPROT";
  attribute X_INTERFACE_INFO of M00_AXI_arqos : signal is "xilinx.com:interface:aximm:1.0 M00_AXI ARQOS";
  attribute X_INTERFACE_INFO of M00_AXI_arready : signal is "xilinx.com:interface:aximm:1.0 M00_AXI ARREADY";
  attribute X_INTERFACE_INFO of M00_AXI_arregion : signal is "xilinx.com:interface:aximm:1.0 M00_AXI ARREGION";
  attribute X_INTERFACE_INFO of M00_AXI_arsize : signal is "xilinx.com:interface:aximm:1.0 M00_AXI ARSIZE";
  attribute X_INTERFACE_INFO of M00_AXI_arvalid : signal is "xilinx.com:interface:aximm:1.0 M00_AXI ARVALID";
  attribute X_INTERFACE_INFO of M00_AXI_awaddr : signal is "xilinx.com:interface:aximm:1.0 M00_AXI AWADDR";
  attribute X_INTERFACE_INFO of M00_AXI_awburst : signal is "xilinx.com:interface:aximm:1.0 M00_AXI AWBURST";
  attribute X_INTERFACE_INFO of M00_AXI_awcache : signal is "xilinx.com:interface:aximm:1.0 M00_AXI AWCACHE";
  attribute X_INTERFACE_INFO of M00_AXI_awid : signal is "xilinx.com:interface:aximm:1.0 M00_AXI AWID";
  attribute X_INTERFACE_INFO of M00_AXI_awlen : signal is "xilinx.com:interface:aximm:1.0 M00_AXI AWLEN";
  attribute X_INTERFACE_INFO of M00_AXI_awlock : signal is "xilinx.com:interface:aximm:1.0 M00_AXI AWLOCK";
  attribute X_INTERFACE_INFO of M00_AXI_awprot : signal is "xilinx.com:interface:aximm:1.0 M00_AXI AWPROT";
  attribute X_INTERFACE_INFO of M00_AXI_awqos : signal is "xilinx.com:interface:aximm:1.0 M00_AXI AWQOS";
  attribute X_INTERFACE_INFO of M00_AXI_awready : signal is "xilinx.com:interface:aximm:1.0 M00_AXI AWREADY";
  attribute X_INTERFACE_INFO of M00_AXI_awregion : signal is "xilinx.com:interface:aximm:1.0 M00_AXI AWREGION";
  attribute X_INTERFACE_INFO of M00_AXI_awsize : signal is "xilinx.com:interface:aximm:1.0 M00_AXI AWSIZE";
  attribute X_INTERFACE_INFO of M00_AXI_awvalid : signal is "xilinx.com:interface:aximm:1.0 M00_AXI AWVALID";
  attribute X_INTERFACE_INFO of M00_AXI_bid : signal is "xilinx.com:interface:aximm:1.0 M00_AXI BID";
  attribute X_INTERFACE_INFO of M00_AXI_bready : signal is "xilinx.com:interface:aximm:1.0 M00_AXI BREADY";
  attribute X_INTERFACE_INFO of M00_AXI_bresp : signal is "xilinx.com:interface:aximm:1.0 M00_AXI BRESP";
  attribute X_INTERFACE_INFO of M00_AXI_bvalid : signal is "xilinx.com:interface:aximm:1.0 M00_AXI BVALID";
  attribute X_INTERFACE_INFO of M00_AXI_rdata : signal is "xilinx.com:interface:aximm:1.0 M00_AXI RDATA";
  attribute X_INTERFACE_INFO of M00_AXI_rid : signal is "xilinx.com:interface:aximm:1.0 M00_AXI RID";
  attribute X_INTERFACE_INFO of M00_AXI_rlast : signal is "xilinx.com:interface:aximm:1.0 M00_AXI RLAST";
  attribute X_INTERFACE_INFO of M00_AXI_rready : signal is "xilinx.com:interface:aximm:1.0 M00_AXI RREADY";
  attribute X_INTERFACE_INFO of M00_AXI_rresp : signal is "xilinx.com:interface:aximm:1.0 M00_AXI RRESP";
  attribute X_INTERFACE_INFO of M00_AXI_ruser : signal is "xilinx.com:interface:aximm:1.0 M00_AXI RUSER";
  attribute X_INTERFACE_INFO of M00_AXI_rvalid : signal is "xilinx.com:interface:aximm:1.0 M00_AXI RVALID";
  attribute X_INTERFACE_INFO of M00_AXI_wdata : signal is "xilinx.com:interface:aximm:1.0 M00_AXI WDATA";
  attribute X_INTERFACE_INFO of M00_AXI_wlast : signal is "xilinx.com:interface:aximm:1.0 M00_AXI WLAST";
  attribute X_INTERFACE_INFO of M00_AXI_wready : signal is "xilinx.com:interface:aximm:1.0 M00_AXI WREADY";
  attribute X_INTERFACE_INFO of M00_AXI_wstrb : signal is "xilinx.com:interface:aximm:1.0 M00_AXI WSTRB";
  attribute X_INTERFACE_INFO of M00_AXI_wuser : signal is "xilinx.com:interface:aximm:1.0 M00_AXI WUSER";
  attribute X_INTERFACE_PARAMETER of M00_AXI_wuser : signal is "XIL_INTERFACENAME M00_AXI, DATA_WIDTH 128, PROTOCOL AXI4, FREQ_HZ 1250000000, ID_WIDTH 2, ADDR_WIDTH 64, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 17, RUSER_WIDTH 17, BUSER_WIDTH 0, READ_WRITE_MODE READ_WRITE, HAS_BURST 1, HAS_LOCK 1, HAS_PROT 1, HAS_CACHE 1, HAS_QOS 1, HAS_REGION 1, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, SUPPORTS_NARROW_BURST 1, NUM_READ_OUTSTANDING 32, NUM_WRITE_OUTSTANDING 32, MAX_BURST_LENGTH 256, PHASE 0.0, CLK_DOMAIN bd_9d54_noc_ai_mm_0_0_s_axi_aclk, NUM_READ_THREADS 4, NUM_WRITE_THREADS 4, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, INSERT_VIP 0, WRITE_BUFFER_SIZE 80, NOC_ID -1, MY_CATEGORY noc, CATEGORY aie";
  attribute X_INTERFACE_INFO of M00_AXI_wvalid : signal is "xilinx.com:interface:aximm:1.0 M00_AXI WVALID";
  attribute X_INTERFACE_INFO of S00_INI_internoc : signal is "xilinx.com:interface:inimm:1.0 S00_INI INTERNOC";
  attribute X_INTERFACE_PARAMETER of S00_INI_internoc : signal is "XIL_INTERFACENAME S00_INI, ADDR_WIDTH 64, INI_STRATEGY load, COMPUTED_STRATEGY load, R_TRAFFIC_CLASS BEST_EFFORT, W_TRAFFIC_CLASS BEST_EFFORT, R_LATENCY 300, R_RATE_LIMITER 10, W_RATE_LIMITER 10, R_MAX_BURST_LENGTH 256, W_MAX_BURST_LENGTH 256, CONNECTIONS M00_AXI { read_bw {5} write_bw {5} read_avg_burst {64} write_avg_burst {64}} , WRITE_BUFFER_SIZE 80, MY_CATEGORY pl";
begin
inst: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_bd_afcb
     port map (
      M00_AXI_araddr(63 downto 0) => M00_AXI_araddr(63 downto 0),
      M00_AXI_arburst(1 downto 0) => M00_AXI_arburst(1 downto 0),
      M00_AXI_arcache(3 downto 0) => M00_AXI_arcache(3 downto 0),
      M00_AXI_arid(1 downto 0) => M00_AXI_arid(1 downto 0),
      M00_AXI_arlen(7 downto 0) => M00_AXI_arlen(7 downto 0),
      M00_AXI_arlock(0) => M00_AXI_arlock(0),
      M00_AXI_arprot(2 downto 0) => M00_AXI_arprot(2 downto 0),
      M00_AXI_arqos(3 downto 0) => M00_AXI_arqos(3 downto 0),
      M00_AXI_arready(0) => M00_AXI_arready(0),
      M00_AXI_arregion(3 downto 0) => M00_AXI_arregion(3 downto 0),
      M00_AXI_arsize(2 downto 0) => M00_AXI_arsize(2 downto 0),
      M00_AXI_arvalid(0) => M00_AXI_arvalid(0),
      M00_AXI_awaddr(63 downto 0) => M00_AXI_awaddr(63 downto 0),
      M00_AXI_awburst(1 downto 0) => M00_AXI_awburst(1 downto 0),
      M00_AXI_awcache(3 downto 0) => M00_AXI_awcache(3 downto 0),
      M00_AXI_awid(1 downto 0) => M00_AXI_awid(1 downto 0),
      M00_AXI_awlen(7 downto 0) => M00_AXI_awlen(7 downto 0),
      M00_AXI_awlock(0) => M00_AXI_awlock(0),
      M00_AXI_awprot(2 downto 0) => M00_AXI_awprot(2 downto 0),
      M00_AXI_awqos(3 downto 0) => M00_AXI_awqos(3 downto 0),
      M00_AXI_awready(0) => M00_AXI_awready(0),
      M00_AXI_awregion(3 downto 0) => M00_AXI_awregion(3 downto 0),
      M00_AXI_awsize(2 downto 0) => M00_AXI_awsize(2 downto 0),
      M00_AXI_awvalid(0) => M00_AXI_awvalid(0),
      M00_AXI_bid(1 downto 0) => M00_AXI_bid(1 downto 0),
      M00_AXI_bready(0) => M00_AXI_bready(0),
      M00_AXI_bresp(1 downto 0) => M00_AXI_bresp(1 downto 0),
      M00_AXI_bvalid(0) => M00_AXI_bvalid(0),
      M00_AXI_rdata(127 downto 0) => M00_AXI_rdata(127 downto 0),
      M00_AXI_rid(1 downto 0) => M00_AXI_rid(1 downto 0),
      M00_AXI_rlast(0) => M00_AXI_rlast(0),
      M00_AXI_rready(0) => M00_AXI_rready(0),
      M00_AXI_rresp(1 downto 0) => M00_AXI_rresp(1 downto 0),
      M00_AXI_ruser(16 downto 0) => M00_AXI_ruser(16 downto 0),
      M00_AXI_rvalid(0) => M00_AXI_rvalid(0),
      M00_AXI_wdata(127 downto 0) => M00_AXI_wdata(127 downto 0),
      M00_AXI_wlast(0) => M00_AXI_wlast(0),
      M00_AXI_wready(0) => M00_AXI_wready(0),
      M00_AXI_wstrb(15 downto 0) => M00_AXI_wstrb(15 downto 0),
      M00_AXI_wuser(16 downto 0) => M00_AXI_wuser(16 downto 0),
      M00_AXI_wvalid(0) => M00_AXI_wvalid(0),
      S00_INI_internoc(0) => '0',
      aclk0 => aclk0
    );
end STRUCTURE;
