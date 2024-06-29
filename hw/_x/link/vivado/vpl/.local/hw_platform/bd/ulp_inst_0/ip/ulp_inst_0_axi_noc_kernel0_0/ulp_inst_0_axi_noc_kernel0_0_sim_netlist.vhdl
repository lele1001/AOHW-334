-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2022.2 (lin64) Build 3671981 Fri Oct 14 04:59:54 MDT 2022
-- Date        : Mon Dec  5 00:25:04 2022
-- Host        : xsjdcslab02.xilinx.com running 64-bit CentOS Linux release 8.1.1911 (Core)
-- Command     : write_vhdl -force -mode funcsim
--               /proj/ipeng-nobkup/ccase/platforms/p4/Platforms_ccase_vck5000_dev0/Platforms/sources/vck5000/chassis/gen4x8_qdma/2/build_1205a_dbg_hub_fw_flop/hardware/xilinx_vck5000_gen4x8_qdma_base_2/xilinx_vck5000_gen4x8_qdma_base_2.gen/sources_1/bd/top/bd/ulp_inst_0/ip/ulp_inst_0_axi_noc_kernel0_0/ulp_inst_0_axi_noc_kernel0_0_sim_netlist.vhdl
-- Design      : ulp_inst_0_axi_noc_kernel0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xcvc1902-vsvd1760-2MP-e-S
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity ulp_inst_0_axi_noc_kernel0_0_bd_0ad1_M00_INI_stub_nmu_0_top is
  port (
    IF_NOC_AXI_WVALID : in STD_LOGIC;
    IF_NOC_AXI_WREADY : out STD_LOGIC;
    IF_NOC_AXI_WLAST : in STD_LOGIC_VECTOR ( 0 to 0 );
    IF_NOC_AXI_WDATA : in STD_LOGIC_VECTOR ( 511 downto 0 );
    IF_NOC_AXI_WSTRB : in STD_LOGIC_VECTOR ( 63 downto 0 );
    IF_NOC_AXI_ARREADY : out STD_LOGIC;
    IF_NOC_AXI_AWREADY : out STD_LOGIC;
    IF_NOC_AXI_BRESP : out STD_LOGIC_VECTOR ( 1 downto 0 );
    IF_NOC_AXI_BVALID : out STD_LOGIC;
    IF_NOC_AXI_RDATA : out STD_LOGIC_VECTOR ( 511 downto 0 );
    IF_NOC_AXI_RLAST : out STD_LOGIC_VECTOR ( 0 to 0 );
    IF_NOC_AXI_RRESP : out STD_LOGIC_VECTOR ( 1 downto 0 );
    IF_NOC_AXI_RVALID : out STD_LOGIC;
    IF_NOC_NPP_IN_NOC_CREDIT_RETURN : out STD_LOGIC_VECTOR ( 7 downto 0 );
    IF_NOC_NPP_OUT_NOC_CREDIT_RDY : out STD_LOGIC;
    IF_NOC_NPP_OUT_NOC_FLIT : out STD_LOGIC_VECTOR ( 181 downto 0 );
    IF_NOC_NPP_OUT_NOC_VALID : out STD_LOGIC_VECTOR ( 7 downto 0 );
    aclk : in STD_LOGIC;
    IF_NOC_AXI_ARADDR : in STD_LOGIC_VECTOR ( 0 to 0 );
    IF_NOC_AXI_ARBURST : in STD_LOGIC_VECTOR ( 1 downto 0 );
    IF_NOC_AXI_ARCACHE : in STD_LOGIC_VECTOR ( 3 downto 0 );
    IF_NOC_AXI_ARLEN : in STD_LOGIC_VECTOR ( 7 downto 0 );
    IF_NOC_AXI_ARLOCK : in STD_LOGIC_VECTOR ( 0 to 0 );
    IF_NOC_AXI_ARPROT : in STD_LOGIC_VECTOR ( 2 downto 0 );
    IF_NOC_AXI_ARQOS : in STD_LOGIC_VECTOR ( 3 downto 0 );
    IF_NOC_AXI_ARREGION : in STD_LOGIC_VECTOR ( 3 downto 0 );
    IF_NOC_AXI_ARSIZE : in STD_LOGIC_VECTOR ( 2 downto 0 );
    NMU_RD_DEST_MODE : in STD_LOGIC;
    NMU_WR_DEST_MODE : in STD_LOGIC;
    IF_NOC_AXI_ARVALID : in STD_LOGIC;
    IF_NOC_AXI_AWADDR : in STD_LOGIC_VECTOR ( 0 to 0 );
    IF_NOC_AXI_AWBURST : in STD_LOGIC_VECTOR ( 1 downto 0 );
    IF_NOC_AXI_AWCACHE : in STD_LOGIC_VECTOR ( 3 downto 0 );
    IF_NOC_AXI_AWLEN : in STD_LOGIC_VECTOR ( 7 downto 0 );
    IF_NOC_AXI_AWLOCK : in STD_LOGIC_VECTOR ( 0 to 0 );
    IF_NOC_AXI_AWPROT : in STD_LOGIC_VECTOR ( 2 downto 0 );
    IF_NOC_AXI_AWQOS : in STD_LOGIC_VECTOR ( 3 downto 0 );
    IF_NOC_AXI_AWREGION : in STD_LOGIC_VECTOR ( 3 downto 0 );
    IF_NOC_AXI_AWSIZE : in STD_LOGIC_VECTOR ( 2 downto 0 );
    IF_NOC_AXI_AWVALID : in STD_LOGIC;
    IF_NOC_AXI_BREADY : in STD_LOGIC;
    IF_NOC_AXI_RREADY : in STD_LOGIC;
    IF_NOC_NPP_IN_NOC_CREDIT_RDY : in STD_LOGIC;
    IF_NOC_NPP_IN_NOC_FLIT : in STD_LOGIC_VECTOR ( 181 downto 0 );
    IF_NOC_NPP_IN_NOC_VALID : in STD_LOGIC_VECTOR ( 7 downto 0 );
    IF_NOC_NPP_OUT_NOC_CREDIT_RETURN : in STD_LOGIC_VECTOR ( 7 downto 0 );
    NMU : out STD_LOGIC;
    NMU_WR_USR_DST : in STD_LOGIC_VECTOR ( 11 downto 0 );
    NMU_RD_USR_DST : in STD_LOGIC_VECTOR ( 11 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of ulp_inst_0_axi_noc_kernel0_0_bd_0ad1_M00_INI_stub_nmu_0_top : entity is "bd_0ad1_M00_INI_stub_nmu_0_top";
  attribute REG_ADDR_DST0 : string;
  attribute REG_ADDR_DST0 of ulp_inst_0_axi_noc_kernel0_0_bd_0ad1_M00_INI_stub_nmu_0_top : entity is "16'b0000000000000000";
  attribute REG_ADDR_DST1 : string;
  attribute REG_ADDR_DST1 of ulp_inst_0_axi_noc_kernel0_0_bd_0ad1_M00_INI_stub_nmu_0_top : entity is "16'b0000000000000000";
  attribute REG_ADDR_DST10 : string;
  attribute REG_ADDR_DST10 of ulp_inst_0_axi_noc_kernel0_0_bd_0ad1_M00_INI_stub_nmu_0_top : entity is "16'b0000000000000000";
  attribute REG_ADDR_DST11 : string;
  attribute REG_ADDR_DST11 of ulp_inst_0_axi_noc_kernel0_0_bd_0ad1_M00_INI_stub_nmu_0_top : entity is "16'b0000000000000000";
  attribute REG_ADDR_DST12 : string;
  attribute REG_ADDR_DST12 of ulp_inst_0_axi_noc_kernel0_0_bd_0ad1_M00_INI_stub_nmu_0_top : entity is "16'b0000000000000000";
  attribute REG_ADDR_DST13 : string;
  attribute REG_ADDR_DST13 of ulp_inst_0_axi_noc_kernel0_0_bd_0ad1_M00_INI_stub_nmu_0_top : entity is "16'b0000000000000000";
  attribute REG_ADDR_DST14 : string;
  attribute REG_ADDR_DST14 of ulp_inst_0_axi_noc_kernel0_0_bd_0ad1_M00_INI_stub_nmu_0_top : entity is "16'b0000000000000000";
  attribute REG_ADDR_DST15 : string;
  attribute REG_ADDR_DST15 of ulp_inst_0_axi_noc_kernel0_0_bd_0ad1_M00_INI_stub_nmu_0_top : entity is "16'b0000000000000000";
  attribute REG_ADDR_DST2 : string;
  attribute REG_ADDR_DST2 of ulp_inst_0_axi_noc_kernel0_0_bd_0ad1_M00_INI_stub_nmu_0_top : entity is "16'b0000000000000000";
  attribute REG_ADDR_DST3 : string;
  attribute REG_ADDR_DST3 of ulp_inst_0_axi_noc_kernel0_0_bd_0ad1_M00_INI_stub_nmu_0_top : entity is "16'b0000000000000000";
  attribute REG_ADDR_DST4 : string;
  attribute REG_ADDR_DST4 of ulp_inst_0_axi_noc_kernel0_0_bd_0ad1_M00_INI_stub_nmu_0_top : entity is "16'b0000000000000000";
  attribute REG_ADDR_DST5 : string;
  attribute REG_ADDR_DST5 of ulp_inst_0_axi_noc_kernel0_0_bd_0ad1_M00_INI_stub_nmu_0_top : entity is "16'b0000000000000000";
  attribute REG_ADDR_DST6 : string;
  attribute REG_ADDR_DST6 of ulp_inst_0_axi_noc_kernel0_0_bd_0ad1_M00_INI_stub_nmu_0_top : entity is "16'b0000000000000000";
  attribute REG_ADDR_DST7 : string;
  attribute REG_ADDR_DST7 of ulp_inst_0_axi_noc_kernel0_0_bd_0ad1_M00_INI_stub_nmu_0_top : entity is "16'b0000000000000000";
  attribute REG_ADDR_DST8 : string;
  attribute REG_ADDR_DST8 of ulp_inst_0_axi_noc_kernel0_0_bd_0ad1_M00_INI_stub_nmu_0_top : entity is "16'b0000000000000000";
  attribute REG_ADDR_DST9 : string;
  attribute REG_ADDR_DST9 of ulp_inst_0_axi_noc_kernel0_0_bd_0ad1_M00_INI_stub_nmu_0_top : entity is "16'b0000000000000000";
  attribute REG_ADDR_ENABLE : string;
  attribute REG_ADDR_ENABLE of ulp_inst_0_axi_noc_kernel0_0_bd_0ad1_M00_INI_stub_nmu_0_top : entity is "16'b0000000000000000";
  attribute REG_ADDR_MADDR0 : string;
  attribute REG_ADDR_MADDR0 of ulp_inst_0_axi_noc_kernel0_0_bd_0ad1_M00_INI_stub_nmu_0_top : entity is "32'b00000000000000000000000000000000";
  attribute REG_ADDR_MADDR1 : string;
  attribute REG_ADDR_MADDR1 of ulp_inst_0_axi_noc_kernel0_0_bd_0ad1_M00_INI_stub_nmu_0_top : entity is "32'b00000000000000000000000000000000";
  attribute REG_ADDR_MADDR10 : string;
  attribute REG_ADDR_MADDR10 of ulp_inst_0_axi_noc_kernel0_0_bd_0ad1_M00_INI_stub_nmu_0_top : entity is "32'b00000000000000000000000000000000";
  attribute REG_ADDR_MADDR11 : string;
  attribute REG_ADDR_MADDR11 of ulp_inst_0_axi_noc_kernel0_0_bd_0ad1_M00_INI_stub_nmu_0_top : entity is "32'b00000000000000000000000000000000";
  attribute REG_ADDR_MADDR12 : string;
  attribute REG_ADDR_MADDR12 of ulp_inst_0_axi_noc_kernel0_0_bd_0ad1_M00_INI_stub_nmu_0_top : entity is "32'b00000000000000000000000000000000";
  attribute REG_ADDR_MADDR13 : string;
  attribute REG_ADDR_MADDR13 of ulp_inst_0_axi_noc_kernel0_0_bd_0ad1_M00_INI_stub_nmu_0_top : entity is "32'b00000000000000000000000000000000";
  attribute REG_ADDR_MADDR14 : string;
  attribute REG_ADDR_MADDR14 of ulp_inst_0_axi_noc_kernel0_0_bd_0ad1_M00_INI_stub_nmu_0_top : entity is "32'b00000000000000000000000000000000";
  attribute REG_ADDR_MADDR15 : string;
  attribute REG_ADDR_MADDR15 of ulp_inst_0_axi_noc_kernel0_0_bd_0ad1_M00_INI_stub_nmu_0_top : entity is "32'b00000000000000000000000000000000";
  attribute REG_ADDR_MADDR2 : string;
  attribute REG_ADDR_MADDR2 of ulp_inst_0_axi_noc_kernel0_0_bd_0ad1_M00_INI_stub_nmu_0_top : entity is "32'b00000000000000000000000000000000";
  attribute REG_ADDR_MADDR3 : string;
  attribute REG_ADDR_MADDR3 of ulp_inst_0_axi_noc_kernel0_0_bd_0ad1_M00_INI_stub_nmu_0_top : entity is "32'b00000000000000000000000000000000";
  attribute REG_ADDR_MADDR4 : string;
  attribute REG_ADDR_MADDR4 of ulp_inst_0_axi_noc_kernel0_0_bd_0ad1_M00_INI_stub_nmu_0_top : entity is "32'b00000000000000000000000000000000";
  attribute REG_ADDR_MADDR5 : string;
  attribute REG_ADDR_MADDR5 of ulp_inst_0_axi_noc_kernel0_0_bd_0ad1_M00_INI_stub_nmu_0_top : entity is "32'b00000000000000000000000000000000";
  attribute REG_ADDR_MADDR6 : string;
  attribute REG_ADDR_MADDR6 of ulp_inst_0_axi_noc_kernel0_0_bd_0ad1_M00_INI_stub_nmu_0_top : entity is "32'b00000000000000000000000000000000";
  attribute REG_ADDR_MADDR7 : string;
  attribute REG_ADDR_MADDR7 of ulp_inst_0_axi_noc_kernel0_0_bd_0ad1_M00_INI_stub_nmu_0_top : entity is "32'b00000000000000000000000000000000";
  attribute REG_ADDR_MADDR8 : string;
  attribute REG_ADDR_MADDR8 of ulp_inst_0_axi_noc_kernel0_0_bd_0ad1_M00_INI_stub_nmu_0_top : entity is "32'b00000000000000000000000000000000";
  attribute REG_ADDR_MADDR9 : string;
  attribute REG_ADDR_MADDR9 of ulp_inst_0_axi_noc_kernel0_0_bd_0ad1_M00_INI_stub_nmu_0_top : entity is "32'b00000000000000000000000000000000";
  attribute REG_ADDR_MASK0 : string;
  attribute REG_ADDR_MASK0 of ulp_inst_0_axi_noc_kernel0_0_bd_0ad1_M00_INI_stub_nmu_0_top : entity is "32'b00000000000000000000000000000000";
  attribute REG_ADDR_MASK1 : string;
  attribute REG_ADDR_MASK1 of ulp_inst_0_axi_noc_kernel0_0_bd_0ad1_M00_INI_stub_nmu_0_top : entity is "32'b00000000000000000000000000000000";
  attribute REG_ADDR_MASK10 : string;
  attribute REG_ADDR_MASK10 of ulp_inst_0_axi_noc_kernel0_0_bd_0ad1_M00_INI_stub_nmu_0_top : entity is "32'b00000000000000000000000000000000";
  attribute REG_ADDR_MASK11 : string;
  attribute REG_ADDR_MASK11 of ulp_inst_0_axi_noc_kernel0_0_bd_0ad1_M00_INI_stub_nmu_0_top : entity is "32'b00000000000000000000000000000000";
  attribute REG_ADDR_MASK12 : string;
  attribute REG_ADDR_MASK12 of ulp_inst_0_axi_noc_kernel0_0_bd_0ad1_M00_INI_stub_nmu_0_top : entity is "32'b00000000000000000000000000000000";
  attribute REG_ADDR_MASK13 : string;
  attribute REG_ADDR_MASK13 of ulp_inst_0_axi_noc_kernel0_0_bd_0ad1_M00_INI_stub_nmu_0_top : entity is "32'b00000000000000000000000000000000";
  attribute REG_ADDR_MASK14 : string;
  attribute REG_ADDR_MASK14 of ulp_inst_0_axi_noc_kernel0_0_bd_0ad1_M00_INI_stub_nmu_0_top : entity is "32'b00000000000000000000000000000000";
  attribute REG_ADDR_MASK15 : string;
  attribute REG_ADDR_MASK15 of ulp_inst_0_axi_noc_kernel0_0_bd_0ad1_M00_INI_stub_nmu_0_top : entity is "32'b00000000000000000000000000000000";
  attribute REG_ADDR_MASK2 : string;
  attribute REG_ADDR_MASK2 of ulp_inst_0_axi_noc_kernel0_0_bd_0ad1_M00_INI_stub_nmu_0_top : entity is "32'b00000000000000000000000000000000";
  attribute REG_ADDR_MASK3 : string;
  attribute REG_ADDR_MASK3 of ulp_inst_0_axi_noc_kernel0_0_bd_0ad1_M00_INI_stub_nmu_0_top : entity is "32'b00000000000000000000000000000000";
  attribute REG_ADDR_MASK4 : string;
  attribute REG_ADDR_MASK4 of ulp_inst_0_axi_noc_kernel0_0_bd_0ad1_M00_INI_stub_nmu_0_top : entity is "32'b00000000000000000000000000000000";
  attribute REG_ADDR_MASK5 : string;
  attribute REG_ADDR_MASK5 of ulp_inst_0_axi_noc_kernel0_0_bd_0ad1_M00_INI_stub_nmu_0_top : entity is "32'b00000000000000000000000000000000";
  attribute REG_ADDR_MASK6 : string;
  attribute REG_ADDR_MASK6 of ulp_inst_0_axi_noc_kernel0_0_bd_0ad1_M00_INI_stub_nmu_0_top : entity is "32'b00000000000000000000000000000000";
  attribute REG_ADDR_MASK7 : string;
  attribute REG_ADDR_MASK7 of ulp_inst_0_axi_noc_kernel0_0_bd_0ad1_M00_INI_stub_nmu_0_top : entity is "32'b00000000000000000000000000000000";
  attribute REG_ADDR_MASK8 : string;
  attribute REG_ADDR_MASK8 of ulp_inst_0_axi_noc_kernel0_0_bd_0ad1_M00_INI_stub_nmu_0_top : entity is "32'b00000000000000000000000000000000";
  attribute REG_ADDR_MASK9 : string;
  attribute REG_ADDR_MASK9 of ulp_inst_0_axi_noc_kernel0_0_bd_0ad1_M00_INI_stub_nmu_0_top : entity is "32'b00000000000000000000000000000000";
  attribute REG_ADDR_REMAP : string;
  attribute REG_ADDR_REMAP of ulp_inst_0_axi_noc_kernel0_0_bd_0ad1_M00_INI_stub_nmu_0_top : entity is "16'b0000000000000000";
  attribute REG_ADDR_RPADDR0 : string;
  attribute REG_ADDR_RPADDR0 of ulp_inst_0_axi_noc_kernel0_0_bd_0ad1_M00_INI_stub_nmu_0_top : entity is "32'b00000000000000000000000000000000";
  attribute REG_ADDR_RPADDR1 : string;
  attribute REG_ADDR_RPADDR1 of ulp_inst_0_axi_noc_kernel0_0_bd_0ad1_M00_INI_stub_nmu_0_top : entity is "32'b00000000000000000000000000000000";
  attribute REG_ADDR_RPADDR10 : string;
  attribute REG_ADDR_RPADDR10 of ulp_inst_0_axi_noc_kernel0_0_bd_0ad1_M00_INI_stub_nmu_0_top : entity is "32'b00000000000000000000000000000000";
  attribute REG_ADDR_RPADDR11 : string;
  attribute REG_ADDR_RPADDR11 of ulp_inst_0_axi_noc_kernel0_0_bd_0ad1_M00_INI_stub_nmu_0_top : entity is "32'b00000000000000000000000000000000";
  attribute REG_ADDR_RPADDR12 : string;
  attribute REG_ADDR_RPADDR12 of ulp_inst_0_axi_noc_kernel0_0_bd_0ad1_M00_INI_stub_nmu_0_top : entity is "32'b00000000000000000000000000000000";
  attribute REG_ADDR_RPADDR13 : string;
  attribute REG_ADDR_RPADDR13 of ulp_inst_0_axi_noc_kernel0_0_bd_0ad1_M00_INI_stub_nmu_0_top : entity is "32'b00000000000000000000000000000000";
  attribute REG_ADDR_RPADDR14 : string;
  attribute REG_ADDR_RPADDR14 of ulp_inst_0_axi_noc_kernel0_0_bd_0ad1_M00_INI_stub_nmu_0_top : entity is "32'b00000000000000000000000000000000";
  attribute REG_ADDR_RPADDR15 : string;
  attribute REG_ADDR_RPADDR15 of ulp_inst_0_axi_noc_kernel0_0_bd_0ad1_M00_INI_stub_nmu_0_top : entity is "32'b00000000000000000000000000000000";
  attribute REG_ADDR_RPADDR2 : string;
  attribute REG_ADDR_RPADDR2 of ulp_inst_0_axi_noc_kernel0_0_bd_0ad1_M00_INI_stub_nmu_0_top : entity is "32'b00000000000000000000000000000000";
  attribute REG_ADDR_RPADDR3 : string;
  attribute REG_ADDR_RPADDR3 of ulp_inst_0_axi_noc_kernel0_0_bd_0ad1_M00_INI_stub_nmu_0_top : entity is "32'b00000000000000000000000000000000";
  attribute REG_ADDR_RPADDR4 : string;
  attribute REG_ADDR_RPADDR4 of ulp_inst_0_axi_noc_kernel0_0_bd_0ad1_M00_INI_stub_nmu_0_top : entity is "32'b00000000000000000000000000000000";
  attribute REG_ADDR_RPADDR5 : string;
  attribute REG_ADDR_RPADDR5 of ulp_inst_0_axi_noc_kernel0_0_bd_0ad1_M00_INI_stub_nmu_0_top : entity is "32'b00000000000000000000000000000000";
  attribute REG_ADDR_RPADDR6 : string;
  attribute REG_ADDR_RPADDR6 of ulp_inst_0_axi_noc_kernel0_0_bd_0ad1_M00_INI_stub_nmu_0_top : entity is "32'b00000000000000000000000000000000";
  attribute REG_ADDR_RPADDR7 : string;
  attribute REG_ADDR_RPADDR7 of ulp_inst_0_axi_noc_kernel0_0_bd_0ad1_M00_INI_stub_nmu_0_top : entity is "32'b00000000000000000000000000000000";
  attribute REG_ADDR_RPADDR8 : string;
  attribute REG_ADDR_RPADDR8 of ulp_inst_0_axi_noc_kernel0_0_bd_0ad1_M00_INI_stub_nmu_0_top : entity is "32'b00000000000000000000000000000000";
  attribute REG_ADDR_RPADDR9 : string;
  attribute REG_ADDR_RPADDR9 of ulp_inst_0_axi_noc_kernel0_0_bd_0ad1_M00_INI_stub_nmu_0_top : entity is "32'b00000000000000000000000000000000";
  attribute REG_ADR_MAP_CPM : string;
  attribute REG_ADR_MAP_CPM of ulp_inst_0_axi_noc_kernel0_0_bd_0ad1_M00_INI_stub_nmu_0_top : entity is "12'b111111000000";
  attribute REG_ADR_MAP_FPD_AFI_0 : string;
  attribute REG_ADR_MAP_FPD_AFI_0 of ulp_inst_0_axi_noc_kernel0_0_bd_0ad1_M00_INI_stub_nmu_0_top : entity is "12'b111111000000";
  attribute REG_ADR_MAP_FPD_AFI_1 : string;
  attribute REG_ADR_MAP_FPD_AFI_1 of ulp_inst_0_axi_noc_kernel0_0_bd_0ad1_M00_INI_stub_nmu_0_top : entity is "12'b111111000000";
  attribute REG_ADR_MAP_LPD_AFI_FS : string;
  attribute REG_ADR_MAP_LPD_AFI_FS of ulp_inst_0_axi_noc_kernel0_0_bd_0ad1_M00_INI_stub_nmu_0_top : entity is "12'b111111000000";
  attribute REG_ADR_MAP_ME_ARRAY_0 : string;
  attribute REG_ADR_MAP_ME_ARRAY_0 of ulp_inst_0_axi_noc_kernel0_0_bd_0ad1_M00_INI_stub_nmu_0_top : entity is "12'b111111000000";
  attribute REG_ADR_MAP_ME_ARRAY_1 : string;
  attribute REG_ADR_MAP_ME_ARRAY_1 of ulp_inst_0_axi_noc_kernel0_0_bd_0ad1_M00_INI_stub_nmu_0_top : entity is "12'b111111000000";
  attribute REG_ADR_MAP_ME_ARRAY_2 : string;
  attribute REG_ADR_MAP_ME_ARRAY_2 of ulp_inst_0_axi_noc_kernel0_0_bd_0ad1_M00_INI_stub_nmu_0_top : entity is "12'b111111000000";
  attribute REG_ADR_MAP_ME_ARRAY_3 : string;
  attribute REG_ADR_MAP_ME_ARRAY_3 of ulp_inst_0_axi_noc_kernel0_0_bd_0ad1_M00_INI_stub_nmu_0_top : entity is "12'b111111000000";
  attribute REG_ADR_MAP_PCIE : string;
  attribute REG_ADR_MAP_PCIE of ulp_inst_0_axi_noc_kernel0_0_bd_0ad1_M00_INI_stub_nmu_0_top : entity is "12'b111111000000";
  attribute REG_ADR_MAP_PMC : string;
  attribute REG_ADR_MAP_PMC of ulp_inst_0_axi_noc_kernel0_0_bd_0ad1_M00_INI_stub_nmu_0_top : entity is "12'b111111000000";
  attribute REG_ADR_MAP_PMC_ALIAS_0 : string;
  attribute REG_ADR_MAP_PMC_ALIAS_0 of ulp_inst_0_axi_noc_kernel0_0_bd_0ad1_M00_INI_stub_nmu_0_top : entity is "12'b111111000000";
  attribute REG_ADR_MAP_PMC_ALIAS_1 : string;
  attribute REG_ADR_MAP_PMC_ALIAS_1 of ulp_inst_0_axi_noc_kernel0_0_bd_0ad1_M00_INI_stub_nmu_0_top : entity is "12'b111111000000";
  attribute REG_ADR_MAP_PMC_ALIAS_2 : string;
  attribute REG_ADR_MAP_PMC_ALIAS_2 of ulp_inst_0_axi_noc_kernel0_0_bd_0ad1_M00_INI_stub_nmu_0_top : entity is "12'b111111000000";
  attribute REG_ADR_MAP_PMC_ALIAS_3 : string;
  attribute REG_ADR_MAP_PMC_ALIAS_3 of ulp_inst_0_axi_noc_kernel0_0_bd_0ad1_M00_INI_stub_nmu_0_top : entity is "12'b111111000000";
  attribute REG_ADR_MAP_QSPI : string;
  attribute REG_ADR_MAP_QSPI of ulp_inst_0_axi_noc_kernel0_0_bd_0ad1_M00_INI_stub_nmu_0_top : entity is "12'b111111000000";
  attribute REG_ADR_MAP_STM_GIC : string;
  attribute REG_ADR_MAP_STM_GIC of ulp_inst_0_axi_noc_kernel0_0_bd_0ad1_M00_INI_stub_nmu_0_top : entity is "12'b111111000000";
  attribute REG_ADR_MAP_XPDS : string;
  attribute REG_ADR_MAP_XPDS of ulp_inst_0_axi_noc_kernel0_0_bd_0ad1_M00_INI_stub_nmu_0_top : entity is "12'b111111000000";
  attribute REG_AXI_NON_MOD_DISABLE : string;
  attribute REG_AXI_NON_MOD_DISABLE of ulp_inst_0_axi_noc_kernel0_0_bd_0ad1_M00_INI_stub_nmu_0_top : entity is "1'b0";
  attribute REG_AXI_PAR_CHK : string;
  attribute REG_AXI_PAR_CHK of ulp_inst_0_axi_noc_kernel0_0_bd_0ad1_M00_INI_stub_nmu_0_top : entity is "2'b00";
  attribute REG_CHOPSIZE : string;
  attribute REG_CHOPSIZE of ulp_inst_0_axi_noc_kernel0_0_bd_0ad1_M00_INI_stub_nmu_0_top : entity is "4'b1010";
  attribute REG_DDR_ADR_MAP0 : string;
  attribute REG_DDR_ADR_MAP0 of ulp_inst_0_axi_noc_kernel0_0_bd_0ad1_M00_INI_stub_nmu_0_top : entity is "15'b110011010001000";
  attribute REG_DDR_ADR_MAP1 : string;
  attribute REG_DDR_ADR_MAP1 of ulp_inst_0_axi_noc_kernel0_0_bd_0ad1_M00_INI_stub_nmu_0_top : entity is "15'b001111111111111";
  attribute REG_DDR_ADR_MAP2 : string;
  attribute REG_DDR_ADR_MAP2 of ulp_inst_0_axi_noc_kernel0_0_bd_0ad1_M00_INI_stub_nmu_0_top : entity is "15'b001111111111111";
  attribute REG_DDR_ADR_MAP3 : string;
  attribute REG_DDR_ADR_MAP3 of ulp_inst_0_axi_noc_kernel0_0_bd_0ad1_M00_INI_stub_nmu_0_top : entity is "15'b001111111111111";
  attribute REG_DDR_ADR_MAP4 : string;
  attribute REG_DDR_ADR_MAP4 of ulp_inst_0_axi_noc_kernel0_0_bd_0ad1_M00_INI_stub_nmu_0_top : entity is "15'b001111111111111";
  attribute REG_DDR_ADR_MAP5 : string;
  attribute REG_DDR_ADR_MAP5 of ulp_inst_0_axi_noc_kernel0_0_bd_0ad1_M00_INI_stub_nmu_0_top : entity is "15'b001111111111111";
  attribute REG_DDR_ADR_MAP6 : string;
  attribute REG_DDR_ADR_MAP6 of ulp_inst_0_axi_noc_kernel0_0_bd_0ad1_M00_INI_stub_nmu_0_top : entity is "15'b001111111111111";
  attribute REG_DDR_DST_MAP0 : string;
  attribute REG_DDR_DST_MAP0 of ulp_inst_0_axi_noc_kernel0_0_bd_0ad1_M00_INI_stub_nmu_0_top : entity is "12'b100010000000";
  attribute REG_DDR_DST_MAP1 : string;
  attribute REG_DDR_DST_MAP1 of ulp_inst_0_axi_noc_kernel0_0_bd_0ad1_M00_INI_stub_nmu_0_top : entity is "12'b010110000000";
  attribute REG_DDR_DST_MAP2 : string;
  attribute REG_DDR_DST_MAP2 of ulp_inst_0_axi_noc_kernel0_0_bd_0ad1_M00_INI_stub_nmu_0_top : entity is "12'b011110000000";
  attribute REG_DDR_DST_MAP3 : string;
  attribute REG_DDR_DST_MAP3 of ulp_inst_0_axi_noc_kernel0_0_bd_0ad1_M00_INI_stub_nmu_0_top : entity is "12'b011010000000";
  attribute REG_DDR_DST_MAP4 : string;
  attribute REG_DDR_DST_MAP4 of ulp_inst_0_axi_noc_kernel0_0_bd_0ad1_M00_INI_stub_nmu_0_top : entity is "12'b111111000000";
  attribute REG_DDR_DST_MAP5 : string;
  attribute REG_DDR_DST_MAP5 of ulp_inst_0_axi_noc_kernel0_0_bd_0ad1_M00_INI_stub_nmu_0_top : entity is "12'b111111000000";
  attribute REG_DDR_DST_MAP6 : string;
  attribute REG_DDR_DST_MAP6 of ulp_inst_0_axi_noc_kernel0_0_bd_0ad1_M00_INI_stub_nmu_0_top : entity is "12'b111111000000";
  attribute REG_DDR_DST_MAP7 : string;
  attribute REG_DDR_DST_MAP7 of ulp_inst_0_axi_noc_kernel0_0_bd_0ad1_M00_INI_stub_nmu_0_top : entity is "12'b111111000000";
  attribute REG_DWIDTH : string;
  attribute REG_DWIDTH of ulp_inst_0_axi_noc_kernel0_0_bd_0ad1_M00_INI_stub_nmu_0_top : entity is "3'b110";
  attribute REG_ECC_CHK_EN : string;
  attribute REG_ECC_CHK_EN of ulp_inst_0_axi_noc_kernel0_0_bd_0ad1_M00_INI_stub_nmu_0_top : entity is "1'b1";
  attribute REG_HBM_MAP_T0_CH0 : string;
  attribute REG_HBM_MAP_T0_CH0 of ulp_inst_0_axi_noc_kernel0_0_bd_0ad1_M00_INI_stub_nmu_0_top : entity is "12'b111111000000";
  attribute REG_HBM_MAP_T0_CH1 : string;
  attribute REG_HBM_MAP_T0_CH1 of ulp_inst_0_axi_noc_kernel0_0_bd_0ad1_M00_INI_stub_nmu_0_top : entity is "12'b111111000000";
  attribute REG_HBM_MAP_T0_CH10 : string;
  attribute REG_HBM_MAP_T0_CH10 of ulp_inst_0_axi_noc_kernel0_0_bd_0ad1_M00_INI_stub_nmu_0_top : entity is "12'b111111000000";
  attribute REG_HBM_MAP_T0_CH11 : string;
  attribute REG_HBM_MAP_T0_CH11 of ulp_inst_0_axi_noc_kernel0_0_bd_0ad1_M00_INI_stub_nmu_0_top : entity is "12'b111111000000";
  attribute REG_HBM_MAP_T0_CH12 : string;
  attribute REG_HBM_MAP_T0_CH12 of ulp_inst_0_axi_noc_kernel0_0_bd_0ad1_M00_INI_stub_nmu_0_top : entity is "12'b111111000000";
  attribute REG_HBM_MAP_T0_CH13 : string;
  attribute REG_HBM_MAP_T0_CH13 of ulp_inst_0_axi_noc_kernel0_0_bd_0ad1_M00_INI_stub_nmu_0_top : entity is "12'b111111000000";
  attribute REG_HBM_MAP_T0_CH14 : string;
  attribute REG_HBM_MAP_T0_CH14 of ulp_inst_0_axi_noc_kernel0_0_bd_0ad1_M00_INI_stub_nmu_0_top : entity is "12'b111111000000";
  attribute REG_HBM_MAP_T0_CH15 : string;
  attribute REG_HBM_MAP_T0_CH15 of ulp_inst_0_axi_noc_kernel0_0_bd_0ad1_M00_INI_stub_nmu_0_top : entity is "12'b111111000000";
  attribute REG_HBM_MAP_T0_CH2 : string;
  attribute REG_HBM_MAP_T0_CH2 of ulp_inst_0_axi_noc_kernel0_0_bd_0ad1_M00_INI_stub_nmu_0_top : entity is "12'b111111000000";
  attribute REG_HBM_MAP_T0_CH3 : string;
  attribute REG_HBM_MAP_T0_CH3 of ulp_inst_0_axi_noc_kernel0_0_bd_0ad1_M00_INI_stub_nmu_0_top : entity is "12'b111111000000";
  attribute REG_HBM_MAP_T0_CH4 : string;
  attribute REG_HBM_MAP_T0_CH4 of ulp_inst_0_axi_noc_kernel0_0_bd_0ad1_M00_INI_stub_nmu_0_top : entity is "12'b111111000000";
  attribute REG_HBM_MAP_T0_CH5 : string;
  attribute REG_HBM_MAP_T0_CH5 of ulp_inst_0_axi_noc_kernel0_0_bd_0ad1_M00_INI_stub_nmu_0_top : entity is "12'b111111000000";
  attribute REG_HBM_MAP_T0_CH6 : string;
  attribute REG_HBM_MAP_T0_CH6 of ulp_inst_0_axi_noc_kernel0_0_bd_0ad1_M00_INI_stub_nmu_0_top : entity is "12'b111111000000";
  attribute REG_HBM_MAP_T0_CH7 : string;
  attribute REG_HBM_MAP_T0_CH7 of ulp_inst_0_axi_noc_kernel0_0_bd_0ad1_M00_INI_stub_nmu_0_top : entity is "12'b111111000000";
  attribute REG_HBM_MAP_T0_CH8 : string;
  attribute REG_HBM_MAP_T0_CH8 of ulp_inst_0_axi_noc_kernel0_0_bd_0ad1_M00_INI_stub_nmu_0_top : entity is "12'b111111000000";
  attribute REG_HBM_MAP_T0_CH9 : string;
  attribute REG_HBM_MAP_T0_CH9 of ulp_inst_0_axi_noc_kernel0_0_bd_0ad1_M00_INI_stub_nmu_0_top : entity is "12'b111111000000";
  attribute REG_HBM_MAP_T1_CH0 : string;
  attribute REG_HBM_MAP_T1_CH0 of ulp_inst_0_axi_noc_kernel0_0_bd_0ad1_M00_INI_stub_nmu_0_top : entity is "12'b111111000000";
  attribute REG_HBM_MAP_T1_CH1 : string;
  attribute REG_HBM_MAP_T1_CH1 of ulp_inst_0_axi_noc_kernel0_0_bd_0ad1_M00_INI_stub_nmu_0_top : entity is "12'b111111000000";
  attribute REG_HBM_MAP_T1_CH10 : string;
  attribute REG_HBM_MAP_T1_CH10 of ulp_inst_0_axi_noc_kernel0_0_bd_0ad1_M00_INI_stub_nmu_0_top : entity is "12'b111111000000";
  attribute REG_HBM_MAP_T1_CH11 : string;
  attribute REG_HBM_MAP_T1_CH11 of ulp_inst_0_axi_noc_kernel0_0_bd_0ad1_M00_INI_stub_nmu_0_top : entity is "12'b111111000000";
  attribute REG_HBM_MAP_T1_CH12 : string;
  attribute REG_HBM_MAP_T1_CH12 of ulp_inst_0_axi_noc_kernel0_0_bd_0ad1_M00_INI_stub_nmu_0_top : entity is "12'b111111000000";
  attribute REG_HBM_MAP_T1_CH13 : string;
  attribute REG_HBM_MAP_T1_CH13 of ulp_inst_0_axi_noc_kernel0_0_bd_0ad1_M00_INI_stub_nmu_0_top : entity is "12'b111111000000";
  attribute REG_HBM_MAP_T1_CH14 : string;
  attribute REG_HBM_MAP_T1_CH14 of ulp_inst_0_axi_noc_kernel0_0_bd_0ad1_M00_INI_stub_nmu_0_top : entity is "12'b111111000000";
  attribute REG_HBM_MAP_T1_CH15 : string;
  attribute REG_HBM_MAP_T1_CH15 of ulp_inst_0_axi_noc_kernel0_0_bd_0ad1_M00_INI_stub_nmu_0_top : entity is "12'b111111000000";
  attribute REG_HBM_MAP_T1_CH2 : string;
  attribute REG_HBM_MAP_T1_CH2 of ulp_inst_0_axi_noc_kernel0_0_bd_0ad1_M00_INI_stub_nmu_0_top : entity is "12'b111111000000";
  attribute REG_HBM_MAP_T1_CH3 : string;
  attribute REG_HBM_MAP_T1_CH3 of ulp_inst_0_axi_noc_kernel0_0_bd_0ad1_M00_INI_stub_nmu_0_top : entity is "12'b111111000000";
  attribute REG_HBM_MAP_T1_CH4 : string;
  attribute REG_HBM_MAP_T1_CH4 of ulp_inst_0_axi_noc_kernel0_0_bd_0ad1_M00_INI_stub_nmu_0_top : entity is "12'b111111000000";
  attribute REG_HBM_MAP_T1_CH5 : string;
  attribute REG_HBM_MAP_T1_CH5 of ulp_inst_0_axi_noc_kernel0_0_bd_0ad1_M00_INI_stub_nmu_0_top : entity is "12'b111111000000";
  attribute REG_HBM_MAP_T1_CH6 : string;
  attribute REG_HBM_MAP_T1_CH6 of ulp_inst_0_axi_noc_kernel0_0_bd_0ad1_M00_INI_stub_nmu_0_top : entity is "12'b111111000000";
  attribute REG_HBM_MAP_T1_CH7 : string;
  attribute REG_HBM_MAP_T1_CH7 of ulp_inst_0_axi_noc_kernel0_0_bd_0ad1_M00_INI_stub_nmu_0_top : entity is "12'b111111000000";
  attribute REG_HBM_MAP_T1_CH8 : string;
  attribute REG_HBM_MAP_T1_CH8 of ulp_inst_0_axi_noc_kernel0_0_bd_0ad1_M00_INI_stub_nmu_0_top : entity is "12'b111111000000";
  attribute REG_HBM_MAP_T1_CH9 : string;
  attribute REG_HBM_MAP_T1_CH9 of ulp_inst_0_axi_noc_kernel0_0_bd_0ad1_M00_INI_stub_nmu_0_top : entity is "12'b111111000000";
  attribute REG_HBM_MAP_T2_CH0 : string;
  attribute REG_HBM_MAP_T2_CH0 of ulp_inst_0_axi_noc_kernel0_0_bd_0ad1_M00_INI_stub_nmu_0_top : entity is "12'b111111000000";
  attribute REG_HBM_MAP_T2_CH1 : string;
  attribute REG_HBM_MAP_T2_CH1 of ulp_inst_0_axi_noc_kernel0_0_bd_0ad1_M00_INI_stub_nmu_0_top : entity is "12'b111111000000";
  attribute REG_HBM_MAP_T2_CH10 : string;
  attribute REG_HBM_MAP_T2_CH10 of ulp_inst_0_axi_noc_kernel0_0_bd_0ad1_M00_INI_stub_nmu_0_top : entity is "12'b111111000000";
  attribute REG_HBM_MAP_T2_CH11 : string;
  attribute REG_HBM_MAP_T2_CH11 of ulp_inst_0_axi_noc_kernel0_0_bd_0ad1_M00_INI_stub_nmu_0_top : entity is "12'b111111000000";
  attribute REG_HBM_MAP_T2_CH12 : string;
  attribute REG_HBM_MAP_T2_CH12 of ulp_inst_0_axi_noc_kernel0_0_bd_0ad1_M00_INI_stub_nmu_0_top : entity is "12'b111111000000";
  attribute REG_HBM_MAP_T2_CH13 : string;
  attribute REG_HBM_MAP_T2_CH13 of ulp_inst_0_axi_noc_kernel0_0_bd_0ad1_M00_INI_stub_nmu_0_top : entity is "12'b111111000000";
  attribute REG_HBM_MAP_T2_CH14 : string;
  attribute REG_HBM_MAP_T2_CH14 of ulp_inst_0_axi_noc_kernel0_0_bd_0ad1_M00_INI_stub_nmu_0_top : entity is "12'b111111000000";
  attribute REG_HBM_MAP_T2_CH15 : string;
  attribute REG_HBM_MAP_T2_CH15 of ulp_inst_0_axi_noc_kernel0_0_bd_0ad1_M00_INI_stub_nmu_0_top : entity is "12'b111111000000";
  attribute REG_HBM_MAP_T2_CH2 : string;
  attribute REG_HBM_MAP_T2_CH2 of ulp_inst_0_axi_noc_kernel0_0_bd_0ad1_M00_INI_stub_nmu_0_top : entity is "12'b111111000000";
  attribute REG_HBM_MAP_T2_CH3 : string;
  attribute REG_HBM_MAP_T2_CH3 of ulp_inst_0_axi_noc_kernel0_0_bd_0ad1_M00_INI_stub_nmu_0_top : entity is "12'b111111000000";
  attribute REG_HBM_MAP_T2_CH4 : string;
  attribute REG_HBM_MAP_T2_CH4 of ulp_inst_0_axi_noc_kernel0_0_bd_0ad1_M00_INI_stub_nmu_0_top : entity is "12'b111111000000";
  attribute REG_HBM_MAP_T2_CH5 : string;
  attribute REG_HBM_MAP_T2_CH5 of ulp_inst_0_axi_noc_kernel0_0_bd_0ad1_M00_INI_stub_nmu_0_top : entity is "12'b111111000000";
  attribute REG_HBM_MAP_T2_CH6 : string;
  attribute REG_HBM_MAP_T2_CH6 of ulp_inst_0_axi_noc_kernel0_0_bd_0ad1_M00_INI_stub_nmu_0_top : entity is "12'b111111000000";
  attribute REG_HBM_MAP_T2_CH7 : string;
  attribute REG_HBM_MAP_T2_CH7 of ulp_inst_0_axi_noc_kernel0_0_bd_0ad1_M00_INI_stub_nmu_0_top : entity is "12'b111111000000";
  attribute REG_HBM_MAP_T2_CH8 : string;
  attribute REG_HBM_MAP_T2_CH8 of ulp_inst_0_axi_noc_kernel0_0_bd_0ad1_M00_INI_stub_nmu_0_top : entity is "12'b111111000000";
  attribute REG_HBM_MAP_T2_CH9 : string;
  attribute REG_HBM_MAP_T2_CH9 of ulp_inst_0_axi_noc_kernel0_0_bd_0ad1_M00_INI_stub_nmu_0_top : entity is "12'b111111000000";
  attribute REG_HBM_MAP_T3_CH0 : string;
  attribute REG_HBM_MAP_T3_CH0 of ulp_inst_0_axi_noc_kernel0_0_bd_0ad1_M00_INI_stub_nmu_0_top : entity is "12'b111111000000";
  attribute REG_HBM_MAP_T3_CH1 : string;
  attribute REG_HBM_MAP_T3_CH1 of ulp_inst_0_axi_noc_kernel0_0_bd_0ad1_M00_INI_stub_nmu_0_top : entity is "12'b111111000000";
  attribute REG_HBM_MAP_T3_CH10 : string;
  attribute REG_HBM_MAP_T3_CH10 of ulp_inst_0_axi_noc_kernel0_0_bd_0ad1_M00_INI_stub_nmu_0_top : entity is "12'b111111000000";
  attribute REG_HBM_MAP_T3_CH11 : string;
  attribute REG_HBM_MAP_T3_CH11 of ulp_inst_0_axi_noc_kernel0_0_bd_0ad1_M00_INI_stub_nmu_0_top : entity is "12'b111111000000";
  attribute REG_HBM_MAP_T3_CH12 : string;
  attribute REG_HBM_MAP_T3_CH12 of ulp_inst_0_axi_noc_kernel0_0_bd_0ad1_M00_INI_stub_nmu_0_top : entity is "12'b111111000000";
  attribute REG_HBM_MAP_T3_CH13 : string;
  attribute REG_HBM_MAP_T3_CH13 of ulp_inst_0_axi_noc_kernel0_0_bd_0ad1_M00_INI_stub_nmu_0_top : entity is "12'b111111000000";
  attribute REG_HBM_MAP_T3_CH14 : string;
  attribute REG_HBM_MAP_T3_CH14 of ulp_inst_0_axi_noc_kernel0_0_bd_0ad1_M00_INI_stub_nmu_0_top : entity is "12'b111111000000";
  attribute REG_HBM_MAP_T3_CH15 : string;
  attribute REG_HBM_MAP_T3_CH15 of ulp_inst_0_axi_noc_kernel0_0_bd_0ad1_M00_INI_stub_nmu_0_top : entity is "12'b111111000000";
  attribute REG_HBM_MAP_T3_CH2 : string;
  attribute REG_HBM_MAP_T3_CH2 of ulp_inst_0_axi_noc_kernel0_0_bd_0ad1_M00_INI_stub_nmu_0_top : entity is "12'b111111000000";
  attribute REG_HBM_MAP_T3_CH3 : string;
  attribute REG_HBM_MAP_T3_CH3 of ulp_inst_0_axi_noc_kernel0_0_bd_0ad1_M00_INI_stub_nmu_0_top : entity is "12'b111111000000";
  attribute REG_HBM_MAP_T3_CH4 : string;
  attribute REG_HBM_MAP_T3_CH4 of ulp_inst_0_axi_noc_kernel0_0_bd_0ad1_M00_INI_stub_nmu_0_top : entity is "12'b111111000000";
  attribute REG_HBM_MAP_T3_CH5 : string;
  attribute REG_HBM_MAP_T3_CH5 of ulp_inst_0_axi_noc_kernel0_0_bd_0ad1_M00_INI_stub_nmu_0_top : entity is "12'b111111000000";
  attribute REG_HBM_MAP_T3_CH6 : string;
  attribute REG_HBM_MAP_T3_CH6 of ulp_inst_0_axi_noc_kernel0_0_bd_0ad1_M00_INI_stub_nmu_0_top : entity is "12'b111111000000";
  attribute REG_HBM_MAP_T3_CH7 : string;
  attribute REG_HBM_MAP_T3_CH7 of ulp_inst_0_axi_noc_kernel0_0_bd_0ad1_M00_INI_stub_nmu_0_top : entity is "12'b111111000000";
  attribute REG_HBM_MAP_T3_CH8 : string;
  attribute REG_HBM_MAP_T3_CH8 of ulp_inst_0_axi_noc_kernel0_0_bd_0ad1_M00_INI_stub_nmu_0_top : entity is "12'b111111000000";
  attribute REG_HBM_MAP_T3_CH9 : string;
  attribute REG_HBM_MAP_T3_CH9 of ulp_inst_0_axi_noc_kernel0_0_bd_0ad1_M00_INI_stub_nmu_0_top : entity is "12'b111111000000";
  attribute REG_MODE_SELECT : string;
  attribute REG_MODE_SELECT of ulp_inst_0_axi_noc_kernel0_0_bd_0ad1_M00_INI_stub_nmu_0_top : entity is "16'b0000000000000000";
  attribute REG_OUTSTANDING_RD_TXN : string;
  attribute REG_OUTSTANDING_RD_TXN of ulp_inst_0_axi_noc_kernel0_0_bd_0ad1_M00_INI_stub_nmu_0_top : entity is "7'b1000000";
  attribute REG_OUTSTANDING_WR_TXN : string;
  attribute REG_OUTSTANDING_WR_TXN of ulp_inst_0_axi_noc_kernel0_0_bd_0ad1_M00_INI_stub_nmu_0_top : entity is "7'b1000000";
  attribute REG_PRIORITY : string;
  attribute REG_PRIORITY of ulp_inst_0_axi_noc_kernel0_0_bd_0ad1_M00_INI_stub_nmu_0_top : entity is "2'b00";
  attribute REG_RD_AXPROT_SEL : string;
  attribute REG_RD_AXPROT_SEL of ulp_inst_0_axi_noc_kernel0_0_bd_0ad1_M00_INI_stub_nmu_0_top : entity is "6'b000000";
  attribute REG_RD_RATE_CREDIT_DROP : string;
  attribute REG_RD_RATE_CREDIT_DROP of ulp_inst_0_axi_noc_kernel0_0_bd_0ad1_M00_INI_stub_nmu_0_top : entity is "10'b0000000100";
  attribute REG_RD_RATE_CREDIT_LIMIT : string;
  attribute REG_RD_RATE_CREDIT_LIMIT of ulp_inst_0_axi_noc_kernel0_0_bd_0ad1_M00_INI_stub_nmu_0_top : entity is "13'b0000100000000";
  attribute REG_RD_VCA_TOKEN0 : string;
  attribute REG_RD_VCA_TOKEN0 of ulp_inst_0_axi_noc_kernel0_0_bd_0ad1_M00_INI_stub_nmu_0_top : entity is "8'b00010100";
  attribute REG_RPOISON_TO_SLVERR : string;
  attribute REG_RPOISON_TO_SLVERR of ulp_inst_0_axi_noc_kernel0_0_bd_0ad1_M00_INI_stub_nmu_0_top : entity is "1'b0";
  attribute REG_RROB_RAM_SETTING : string;
  attribute REG_RROB_RAM_SETTING of ulp_inst_0_axi_noc_kernel0_0_bd_0ad1_M00_INI_stub_nmu_0_top : entity is "9'b000010010";
  attribute REG_SMID_SEL : string;
  attribute REG_SMID_SEL of ulp_inst_0_axi_noc_kernel0_0_bd_0ad1_M00_INI_stub_nmu_0_top : entity is "20'b00000000000000000000";
  attribute REG_SRC : string;
  attribute REG_SRC of ulp_inst_0_axi_noc_kernel0_0_bd_0ad1_M00_INI_stub_nmu_0_top : entity is "12'b000101000000";
  attribute REG_TBASE_AXI_TIMEOUT : string;
  attribute REG_TBASE_AXI_TIMEOUT of ulp_inst_0_axi_noc_kernel0_0_bd_0ad1_M00_INI_stub_nmu_0_top : entity is "3'b001";
  attribute REG_TBASE_MODE_RLIMIT_RD : string;
  attribute REG_TBASE_MODE_RLIMIT_RD of ulp_inst_0_axi_noc_kernel0_0_bd_0ad1_M00_INI_stub_nmu_0_top : entity is "3'b010";
  attribute REG_TBASE_MODE_RLIMIT_WR : string;
  attribute REG_TBASE_MODE_RLIMIT_WR of ulp_inst_0_axi_noc_kernel0_0_bd_0ad1_M00_INI_stub_nmu_0_top : entity is "3'b010";
  attribute REG_TBASE_TRK_TIMEOUT : string;
  attribute REG_TBASE_TRK_TIMEOUT of ulp_inst_0_axi_noc_kernel0_0_bd_0ad1_M00_INI_stub_nmu_0_top : entity is "3'b001";
  attribute REG_VC_MAP : string;
  attribute REG_VC_MAP of ulp_inst_0_axi_noc_kernel0_0_bd_0ad1_M00_INI_stub_nmu_0_top : entity is "12'b111010101000";
  attribute REG_WBUF_LAUNCH_SIZE : string;
  attribute REG_WBUF_LAUNCH_SIZE of ulp_inst_0_axi_noc_kernel0_0_bd_0ad1_M00_INI_stub_nmu_0_top : entity is "6'b010000";
  attribute REG_WBUF_RAM_SETTING : string;
  attribute REG_WBUF_RAM_SETTING of ulp_inst_0_axi_noc_kernel0_0_bd_0ad1_M00_INI_stub_nmu_0_top : entity is "9'b000010010";
  attribute REG_WR_AXPROT_SEL : string;
  attribute REG_WR_AXPROT_SEL of ulp_inst_0_axi_noc_kernel0_0_bd_0ad1_M00_INI_stub_nmu_0_top : entity is "6'b000000";
  attribute REG_WR_RATE_CREDIT_DROP : string;
  attribute REG_WR_RATE_CREDIT_DROP of ulp_inst_0_axi_noc_kernel0_0_bd_0ad1_M00_INI_stub_nmu_0_top : entity is "10'b0000000100";
  attribute REG_WR_RATE_CREDIT_LIMIT : string;
  attribute REG_WR_RATE_CREDIT_LIMIT of ulp_inst_0_axi_noc_kernel0_0_bd_0ad1_M00_INI_stub_nmu_0_top : entity is "13'b0000100000000";
  attribute REG_WR_VCA_TOKEN0 : string;
  attribute REG_WR_VCA_TOKEN0 of ulp_inst_0_axi_noc_kernel0_0_bd_0ad1_M00_INI_stub_nmu_0_top : entity is "8'b00010000";
end ulp_inst_0_axi_noc_kernel0_0_bd_0ad1_M00_INI_stub_nmu_0_top;

architecture STRUCTURE of ulp_inst_0_axi_noc_kernel0_0_bd_0ad1_M00_INI_stub_nmu_0_top is
  signal NLW_NOC_NMU512_INST_IF_NOC_AXI_RPOISON_UNCONNECTED : STD_LOGIC;
  signal NLW_NOC_NMU512_INST_IF_NOC_NPP_IN_NOC_CREDIT_RETURN_EN_UNCONNECTED : STD_LOGIC;
  signal NLW_NOC_NMU512_INST_IF_NOC_NPP_OUT_NOC_FLIT_EN_UNCONNECTED : STD_LOGIC;
  signal NLW_NOC_NMU512_INST_IF_NOC_NPP_OUT_NOC_VALID_EN_UNCONNECTED : STD_LOGIC;
  signal NLW_NOC_NMU512_INST_IF_NOC_AXI_BID_UNCONNECTED : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal NLW_NOC_NMU512_INST_IF_NOC_AXI_BUSER_UNCONNECTED : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal NLW_NOC_NMU512_INST_IF_NOC_AXI_RDATA_PAR_UNCONNECTED : STD_LOGIC_VECTOR ( 63 downto 0 );
  signal NLW_NOC_NMU512_INST_IF_NOC_AXI_RID_UNCONNECTED : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal NLW_NOC_NMU512_INST_IF_NOC_AXI_RUSER_UNCONNECTED : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal NLW_NOC_NMU512_INST_IF_NOC_AXI_TDEST_UNCONNECTED : STD_LOGIC_VECTOR ( 9 downto 0 );
  attribute BOX_TYPE : string;
  attribute BOX_TYPE of NOC_NMU512_INST : label is "PRIMITIVE";
  attribute DONT_TOUCH : boolean;
  attribute DONT_TOUCH of NOC_NMU512_INST : label is std.standard.true;
begin
NOC_NMU512_INST: unisim.vcomponents.NOC_NMU512
    generic map(
      REG_ADDR_DST0 => X"0000",
      REG_ADDR_DST1 => X"0000",
      REG_ADDR_DST10 => X"0000",
      REG_ADDR_DST11 => X"0000",
      REG_ADDR_DST12 => X"0000",
      REG_ADDR_DST13 => X"0000",
      REG_ADDR_DST14 => X"0000",
      REG_ADDR_DST15 => X"0000",
      REG_ADDR_DST2 => X"0000",
      REG_ADDR_DST3 => X"0000",
      REG_ADDR_DST4 => X"0000",
      REG_ADDR_DST5 => X"0000",
      REG_ADDR_DST6 => X"0000",
      REG_ADDR_DST7 => X"0000",
      REG_ADDR_DST8 => X"0000",
      REG_ADDR_DST9 => X"0000",
      REG_ADDR_ENABLE => X"0000",
      REG_ADDR_MADDR0 => X"00000000",
      REG_ADDR_MADDR1 => X"00000000",
      REG_ADDR_MADDR10 => X"00000000",
      REG_ADDR_MADDR11 => X"00000000",
      REG_ADDR_MADDR12 => X"00000000",
      REG_ADDR_MADDR13 => X"00000000",
      REG_ADDR_MADDR14 => X"00000000",
      REG_ADDR_MADDR15 => X"00000000",
      REG_ADDR_MADDR2 => X"00000000",
      REG_ADDR_MADDR3 => X"00000000",
      REG_ADDR_MADDR4 => X"00000000",
      REG_ADDR_MADDR5 => X"00000000",
      REG_ADDR_MADDR6 => X"00000000",
      REG_ADDR_MADDR7 => X"00000000",
      REG_ADDR_MADDR8 => X"00000000",
      REG_ADDR_MADDR9 => X"00000000",
      REG_ADDR_MASK0 => X"00000000",
      REG_ADDR_MASK1 => X"00000000",
      REG_ADDR_MASK10 => X"00000000",
      REG_ADDR_MASK11 => X"00000000",
      REG_ADDR_MASK12 => X"00000000",
      REG_ADDR_MASK13 => X"00000000",
      REG_ADDR_MASK14 => X"00000000",
      REG_ADDR_MASK15 => X"00000000",
      REG_ADDR_MASK2 => X"00000000",
      REG_ADDR_MASK3 => X"00000000",
      REG_ADDR_MASK4 => X"00000000",
      REG_ADDR_MASK5 => X"00000000",
      REG_ADDR_MASK6 => X"00000000",
      REG_ADDR_MASK7 => X"00000000",
      REG_ADDR_MASK8 => X"00000000",
      REG_ADDR_MASK9 => X"00000000",
      REG_ADDR_REMAP => X"0000",
      REG_ADDR_RPADDR0 => X"00000000",
      REG_ADDR_RPADDR1 => X"00000000",
      REG_ADDR_RPADDR10 => X"00000000",
      REG_ADDR_RPADDR11 => X"00000000",
      REG_ADDR_RPADDR12 => X"00000000",
      REG_ADDR_RPADDR13 => X"00000000",
      REG_ADDR_RPADDR14 => X"00000000",
      REG_ADDR_RPADDR15 => X"00000000",
      REG_ADDR_RPADDR2 => X"00000000",
      REG_ADDR_RPADDR3 => X"00000000",
      REG_ADDR_RPADDR4 => X"00000000",
      REG_ADDR_RPADDR5 => X"00000000",
      REG_ADDR_RPADDR6 => X"00000000",
      REG_ADDR_RPADDR7 => X"00000000",
      REG_ADDR_RPADDR8 => X"00000000",
      REG_ADDR_RPADDR9 => X"00000000",
      REG_ADR_MAP_CPM => X"FC0",
      REG_ADR_MAP_FPD_AFI_0 => X"FC0",
      REG_ADR_MAP_FPD_AFI_1 => X"FC0",
      REG_ADR_MAP_LPD_AFI_FS => X"FC0",
      REG_ADR_MAP_ME_ARRAY_0 => X"FC0",
      REG_ADR_MAP_ME_ARRAY_1 => X"FC0",
      REG_ADR_MAP_ME_ARRAY_2 => X"FC0",
      REG_ADR_MAP_ME_ARRAY_3 => X"FC0",
      REG_ADR_MAP_PCIE => X"FC0",
      REG_ADR_MAP_PMC => X"FC0",
      REG_ADR_MAP_PMC_ALIAS_0 => X"FC0",
      REG_ADR_MAP_PMC_ALIAS_1 => X"FC0",
      REG_ADR_MAP_PMC_ALIAS_2 => X"FC0",
      REG_ADR_MAP_PMC_ALIAS_3 => X"FC0",
      REG_ADR_MAP_QSPI => X"FC0",
      REG_ADR_MAP_STM_GIC => X"FC0",
      REG_ADR_MAP_XPDS => X"FC0",
      REG_AXI_NON_MOD_DISABLE => '0',
      REG_AXI_PAR_CHK => B"00",
      REG_CHOPSIZE => X"A",
      REG_DDR_ADR_MAP0 => B"110" & X"688",
      REG_DDR_ADR_MAP1 => B"001" & X"FFF",
      REG_DDR_ADR_MAP2 => B"001" & X"FFF",
      REG_DDR_ADR_MAP3 => B"001" & X"FFF",
      REG_DDR_ADR_MAP4 => B"001" & X"FFF",
      REG_DDR_ADR_MAP5 => B"001" & X"FFF",
      REG_DDR_ADR_MAP6 => B"001" & X"FFF",
      REG_DDR_DST_MAP0 => X"880",
      REG_DDR_DST_MAP1 => X"580",
      REG_DDR_DST_MAP2 => X"780",
      REG_DDR_DST_MAP3 => X"680",
      REG_DDR_DST_MAP4 => X"FC0",
      REG_DDR_DST_MAP5 => X"FC0",
      REG_DDR_DST_MAP6 => X"FC0",
      REG_DDR_DST_MAP7 => X"FC0",
      REG_DWIDTH => B"110",
      REG_ECC_CHK_EN => '1',
      REG_HBM_MAP_T0_CH0 => X"FC0",
      REG_HBM_MAP_T0_CH1 => X"FC0",
      REG_HBM_MAP_T0_CH10 => X"FC0",
      REG_HBM_MAP_T0_CH11 => X"FC0",
      REG_HBM_MAP_T0_CH12 => X"FC0",
      REG_HBM_MAP_T0_CH13 => X"FC0",
      REG_HBM_MAP_T0_CH14 => X"FC0",
      REG_HBM_MAP_T0_CH15 => X"FC0",
      REG_HBM_MAP_T0_CH2 => X"FC0",
      REG_HBM_MAP_T0_CH3 => X"FC0",
      REG_HBM_MAP_T0_CH4 => X"FC0",
      REG_HBM_MAP_T0_CH5 => X"FC0",
      REG_HBM_MAP_T0_CH6 => X"FC0",
      REG_HBM_MAP_T0_CH7 => X"FC0",
      REG_HBM_MAP_T0_CH8 => X"FC0",
      REG_HBM_MAP_T0_CH9 => X"FC0",
      REG_HBM_MAP_T1_CH0 => X"FC0",
      REG_HBM_MAP_T1_CH1 => X"FC0",
      REG_HBM_MAP_T1_CH10 => X"FC0",
      REG_HBM_MAP_T1_CH11 => X"FC0",
      REG_HBM_MAP_T1_CH12 => X"FC0",
      REG_HBM_MAP_T1_CH13 => X"FC0",
      REG_HBM_MAP_T1_CH14 => X"FC0",
      REG_HBM_MAP_T1_CH15 => X"FC0",
      REG_HBM_MAP_T1_CH2 => X"FC0",
      REG_HBM_MAP_T1_CH3 => X"FC0",
      REG_HBM_MAP_T1_CH4 => X"FC0",
      REG_HBM_MAP_T1_CH5 => X"FC0",
      REG_HBM_MAP_T1_CH6 => X"FC0",
      REG_HBM_MAP_T1_CH7 => X"FC0",
      REG_HBM_MAP_T1_CH8 => X"FC0",
      REG_HBM_MAP_T1_CH9 => X"FC0",
      REG_HBM_MAP_T2_CH0 => X"FC0",
      REG_HBM_MAP_T2_CH1 => X"FC0",
      REG_HBM_MAP_T2_CH10 => X"FC0",
      REG_HBM_MAP_T2_CH11 => X"FC0",
      REG_HBM_MAP_T2_CH12 => X"FC0",
      REG_HBM_MAP_T2_CH13 => X"FC0",
      REG_HBM_MAP_T2_CH14 => X"FC0",
      REG_HBM_MAP_T2_CH15 => X"FC0",
      REG_HBM_MAP_T2_CH2 => X"FC0",
      REG_HBM_MAP_T2_CH3 => X"FC0",
      REG_HBM_MAP_T2_CH4 => X"FC0",
      REG_HBM_MAP_T2_CH5 => X"FC0",
      REG_HBM_MAP_T2_CH6 => X"FC0",
      REG_HBM_MAP_T2_CH7 => X"FC0",
      REG_HBM_MAP_T2_CH8 => X"FC0",
      REG_HBM_MAP_T2_CH9 => X"FC0",
      REG_HBM_MAP_T3_CH0 => X"FC0",
      REG_HBM_MAP_T3_CH1 => X"FC0",
      REG_HBM_MAP_T3_CH10 => X"FC0",
      REG_HBM_MAP_T3_CH11 => X"FC0",
      REG_HBM_MAP_T3_CH12 => X"FC0",
      REG_HBM_MAP_T3_CH13 => X"FC0",
      REG_HBM_MAP_T3_CH14 => X"FC0",
      REG_HBM_MAP_T3_CH15 => X"FC0",
      REG_HBM_MAP_T3_CH2 => X"FC0",
      REG_HBM_MAP_T3_CH3 => X"FC0",
      REG_HBM_MAP_T3_CH4 => X"FC0",
      REG_HBM_MAP_T3_CH5 => X"FC0",
      REG_HBM_MAP_T3_CH6 => X"FC0",
      REG_HBM_MAP_T3_CH7 => X"FC0",
      REG_HBM_MAP_T3_CH8 => X"FC0",
      REG_HBM_MAP_T3_CH9 => X"FC0",
      REG_MODE_SELECT => X"0000",
      REG_OUTSTANDING_RD_TXN => B"100" & X"0",
      REG_OUTSTANDING_WR_TXN => B"100" & X"0",
      REG_PRIORITY => B"00",
      REG_RD_AXPROT_SEL => B"00" & X"0",
      REG_RD_RATE_CREDIT_DROP => B"00" & X"04",
      REG_RD_RATE_CREDIT_LIMIT => B"0" & X"100",
      REG_RD_VCA_TOKEN0 => X"14",
      REG_RPOISON_TO_SLVERR => '0',
      REG_RROB_RAM_SETTING => B"0" & X"12",
      REG_SMID_SEL => X"00000",
      REG_SRC => X"140",
      REG_TBASE_AXI_TIMEOUT => X"1",
      REG_TBASE_MODE_RLIMIT_RD => B"010",
      REG_TBASE_MODE_RLIMIT_WR => B"010",
      REG_TBASE_TRK_TIMEOUT => X"1",
      REG_VC_MAP => X"EA8",
      REG_WBUF_LAUNCH_SIZE => B"01" & X"0",
      REG_WBUF_RAM_SETTING => B"0" & X"12",
      REG_WR_AXPROT_SEL => B"00" & X"0",
      REG_WR_RATE_CREDIT_DROP => B"00" & X"04",
      REG_WR_RATE_CREDIT_LIMIT => B"0" & X"100",
      REG_WR_VCA_TOKEN0 => X"10"
    )
        port map (
      CLK => aclk,
      IF_NOC_AXI_ARADDR(63 downto 1) => B"000000000000000000000000000000000000000000000000000000000000000",
      IF_NOC_AXI_ARADDR(0) => IF_NOC_AXI_ARADDR(0),
      IF_NOC_AXI_ARADDR_PAR(7 downto 0) => B"00000000",
      IF_NOC_AXI_ARBURST(1 downto 0) => IF_NOC_AXI_ARBURST(1 downto 0),
      IF_NOC_AXI_ARCACHE(3 downto 0) => IF_NOC_AXI_ARCACHE(3 downto 0),
      IF_NOC_AXI_ARID(15 downto 0) => B"0000000000000000",
      IF_NOC_AXI_ARLEN(7 downto 0) => IF_NOC_AXI_ARLEN(7 downto 0),
      IF_NOC_AXI_ARLOCK(0) => IF_NOC_AXI_ARLOCK(0),
      IF_NOC_AXI_ARPROT(2 downto 0) => IF_NOC_AXI_ARPROT(2 downto 0),
      IF_NOC_AXI_ARQOS(3 downto 0) => IF_NOC_AXI_ARQOS(3 downto 0),
      IF_NOC_AXI_ARREADY => IF_NOC_AXI_ARREADY,
      IF_NOC_AXI_ARREGION(3 downto 0) => IF_NOC_AXI_ARREGION(3 downto 0),
      IF_NOC_AXI_ARSIZE(2 downto 0) => IF_NOC_AXI_ARSIZE(2 downto 0),
      IF_NOC_AXI_ARUSER(15 downto 0) => B"0000000000000000",
      IF_NOC_AXI_ARVALID => IF_NOC_AXI_ARVALID,
      IF_NOC_AXI_AWADDR(63 downto 1) => B"000000000000000000000000000000000000000000000000000000000000000",
      IF_NOC_AXI_AWADDR(0) => IF_NOC_AXI_AWADDR(0),
      IF_NOC_AXI_AWADDR_PAR(7 downto 0) => B"00000000",
      IF_NOC_AXI_AWBURST(1 downto 0) => IF_NOC_AXI_AWBURST(1 downto 0),
      IF_NOC_AXI_AWCACHE(3 downto 0) => IF_NOC_AXI_AWCACHE(3 downto 0),
      IF_NOC_AXI_AWID(15 downto 0) => B"0000000000000000",
      IF_NOC_AXI_AWLEN(7 downto 0) => IF_NOC_AXI_AWLEN(7 downto 0),
      IF_NOC_AXI_AWLOCK(0) => IF_NOC_AXI_AWLOCK(0),
      IF_NOC_AXI_AWPROT(2 downto 0) => IF_NOC_AXI_AWPROT(2 downto 0),
      IF_NOC_AXI_AWQOS(3 downto 0) => IF_NOC_AXI_AWQOS(3 downto 0),
      IF_NOC_AXI_AWREADY => IF_NOC_AXI_AWREADY,
      IF_NOC_AXI_AWREGION(3 downto 0) => IF_NOC_AXI_AWREGION(3 downto 0),
      IF_NOC_AXI_AWSIZE(2 downto 0) => IF_NOC_AXI_AWSIZE(2 downto 0),
      IF_NOC_AXI_AWUSER(15 downto 0) => B"0000000000000000",
      IF_NOC_AXI_AWVALID => IF_NOC_AXI_AWVALID,
      IF_NOC_AXI_BID(15 downto 0) => NLW_NOC_NMU512_INST_IF_NOC_AXI_BID_UNCONNECTED(15 downto 0),
      IF_NOC_AXI_BREADY => IF_NOC_AXI_BREADY,
      IF_NOC_AXI_BRESP(1 downto 0) => IF_NOC_AXI_BRESP(1 downto 0),
      IF_NOC_AXI_BUSER(15 downto 0) => NLW_NOC_NMU512_INST_IF_NOC_AXI_BUSER_UNCONNECTED(15 downto 0),
      IF_NOC_AXI_BVALID => IF_NOC_AXI_BVALID,
      IF_NOC_AXI_RDATA(511 downto 0) => IF_NOC_AXI_RDATA(511 downto 0),
      IF_NOC_AXI_RDATA_PAR(63 downto 0) => NLW_NOC_NMU512_INST_IF_NOC_AXI_RDATA_PAR_UNCONNECTED(63 downto 0),
      IF_NOC_AXI_RID(15 downto 0) => NLW_NOC_NMU512_INST_IF_NOC_AXI_RID_UNCONNECTED(15 downto 0),
      IF_NOC_AXI_RLAST(0) => IF_NOC_AXI_RLAST(0),
      IF_NOC_AXI_RPOISON => NLW_NOC_NMU512_INST_IF_NOC_AXI_RPOISON_UNCONNECTED,
      IF_NOC_AXI_RREADY => IF_NOC_AXI_RREADY,
      IF_NOC_AXI_RRESP(1 downto 0) => IF_NOC_AXI_RRESP(1 downto 0),
      IF_NOC_AXI_RUSER(15 downto 0) => NLW_NOC_NMU512_INST_IF_NOC_AXI_RUSER_UNCONNECTED(15 downto 0),
      IF_NOC_AXI_RVALID => IF_NOC_AXI_RVALID,
      IF_NOC_AXI_TDEST(9 downto 0) => NLW_NOC_NMU512_INST_IF_NOC_AXI_TDEST_UNCONNECTED(9 downto 0),
      IF_NOC_AXI_WDATA(511 downto 0) => IF_NOC_AXI_WDATA(511 downto 0),
      IF_NOC_AXI_WDATA_PAR(63 downto 0) => B"0000000000000000000000000000000000000000000000000000000000000000",
      IF_NOC_AXI_WID(15 downto 0) => B"0000000000000000",
      IF_NOC_AXI_WLAST(0) => IF_NOC_AXI_WLAST(0),
      IF_NOC_AXI_WPOISON => '0',
      IF_NOC_AXI_WREADY => IF_NOC_AXI_WREADY,
      IF_NOC_AXI_WSTRB(63 downto 0) => IF_NOC_AXI_WSTRB(63 downto 0),
      IF_NOC_AXI_WUSER(15 downto 0) => B"0000000000000000",
      IF_NOC_AXI_WVALID => IF_NOC_AXI_WVALID,
      IF_NOC_NPP_IN_NOC_CREDIT_RDY => IF_NOC_NPP_IN_NOC_CREDIT_RDY,
      IF_NOC_NPP_IN_NOC_CREDIT_RETURN(7 downto 0) => IF_NOC_NPP_IN_NOC_CREDIT_RETURN(7 downto 0),
      IF_NOC_NPP_IN_NOC_CREDIT_RETURN_EN => NLW_NOC_NMU512_INST_IF_NOC_NPP_IN_NOC_CREDIT_RETURN_EN_UNCONNECTED,
      IF_NOC_NPP_IN_NOC_FLIT(181 downto 0) => IF_NOC_NPP_IN_NOC_FLIT(181 downto 0),
      IF_NOC_NPP_IN_NOC_FLIT_EN => '1',
      IF_NOC_NPP_IN_NOC_VALID(7 downto 0) => IF_NOC_NPP_IN_NOC_VALID(7 downto 0),
      IF_NOC_NPP_IN_NOC_VALID_EN => '1',
      IF_NOC_NPP_OUT_NOC_CREDIT_RDY => IF_NOC_NPP_OUT_NOC_CREDIT_RDY,
      IF_NOC_NPP_OUT_NOC_CREDIT_RETURN(7 downto 0) => IF_NOC_NPP_OUT_NOC_CREDIT_RETURN(7 downto 0),
      IF_NOC_NPP_OUT_NOC_CREDIT_RETURN_EN => '1',
      IF_NOC_NPP_OUT_NOC_FLIT(181 downto 0) => IF_NOC_NPP_OUT_NOC_FLIT(181 downto 0),
      IF_NOC_NPP_OUT_NOC_FLIT_EN => NLW_NOC_NMU512_INST_IF_NOC_NPP_OUT_NOC_FLIT_EN_UNCONNECTED,
      IF_NOC_NPP_OUT_NOC_VALID(7 downto 0) => IF_NOC_NPP_OUT_NOC_VALID(7 downto 0),
      IF_NOC_NPP_OUT_NOC_VALID_EN => NLW_NOC_NMU512_INST_IF_NOC_NPP_OUT_NOC_VALID_EN_UNCONNECTED,
      NMU => NMU,
      NMU_RD_DEST_MODE => NMU_RD_DEST_MODE,
      NMU_RD_USR_DST(11 downto 0) => NMU_RD_USR_DST(11 downto 0),
      NMU_USR_INTERRUPT_IN(3 downto 0) => B"0000",
      NMU_WR_DEST_MODE => NMU_WR_DEST_MODE,
      NMU_WR_USR_DST(11 downto 0) => NMU_WR_USR_DST(11 downto 0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity ulp_inst_0_axi_noc_kernel0_0_bd_0ad1_M01_INI_stub_nmu_0_top is
  port (
    IF_NOC_AXI_WVALID : in STD_LOGIC;
    IF_NOC_AXI_WREADY : out STD_LOGIC;
    IF_NOC_AXI_WLAST : in STD_LOGIC_VECTOR ( 0 to 0 );
    IF_NOC_AXI_WDATA : in STD_LOGIC_VECTOR ( 511 downto 0 );
    IF_NOC_AXI_WSTRB : in STD_LOGIC_VECTOR ( 63 downto 0 );
    IF_NOC_AXI_ARREADY : out STD_LOGIC;
    IF_NOC_AXI_AWREADY : out STD_LOGIC;
    IF_NOC_AXI_BRESP : out STD_LOGIC_VECTOR ( 1 downto 0 );
    IF_NOC_AXI_BVALID : out STD_LOGIC;
    IF_NOC_AXI_RDATA : out STD_LOGIC_VECTOR ( 511 downto 0 );
    IF_NOC_AXI_RLAST : out STD_LOGIC_VECTOR ( 0 to 0 );
    IF_NOC_AXI_RRESP : out STD_LOGIC_VECTOR ( 1 downto 0 );
    IF_NOC_AXI_RVALID : out STD_LOGIC;
    IF_NOC_NPP_IN_NOC_CREDIT_RETURN : out STD_LOGIC_VECTOR ( 7 downto 0 );
    IF_NOC_NPP_OUT_NOC_CREDIT_RDY : out STD_LOGIC;
    IF_NOC_NPP_OUT_NOC_FLIT : out STD_LOGIC_VECTOR ( 181 downto 0 );
    IF_NOC_NPP_OUT_NOC_VALID : out STD_LOGIC_VECTOR ( 7 downto 0 );
    aclk : in STD_LOGIC;
    IF_NOC_AXI_ARADDR : in STD_LOGIC_VECTOR ( 0 to 0 );
    IF_NOC_AXI_ARBURST : in STD_LOGIC_VECTOR ( 1 downto 0 );
    IF_NOC_AXI_ARCACHE : in STD_LOGIC_VECTOR ( 3 downto 0 );
    IF_NOC_AXI_ARLEN : in STD_LOGIC_VECTOR ( 7 downto 0 );
    IF_NOC_AXI_ARLOCK : in STD_LOGIC_VECTOR ( 0 to 0 );
    IF_NOC_AXI_ARPROT : in STD_LOGIC_VECTOR ( 2 downto 0 );
    IF_NOC_AXI_ARQOS : in STD_LOGIC_VECTOR ( 3 downto 0 );
    IF_NOC_AXI_ARREGION : in STD_LOGIC_VECTOR ( 3 downto 0 );
    IF_NOC_AXI_ARSIZE : in STD_LOGIC_VECTOR ( 2 downto 0 );
    NMU_RD_DEST_MODE : in STD_LOGIC;
    NMU_WR_DEST_MODE : in STD_LOGIC;
    IF_NOC_AXI_ARVALID : in STD_LOGIC;
    IF_NOC_AXI_AWADDR : in STD_LOGIC_VECTOR ( 0 to 0 );
    IF_NOC_AXI_AWBURST : in STD_LOGIC_VECTOR ( 1 downto 0 );
    IF_NOC_AXI_AWCACHE : in STD_LOGIC_VECTOR ( 3 downto 0 );
    IF_NOC_AXI_AWLEN : in STD_LOGIC_VECTOR ( 7 downto 0 );
    IF_NOC_AXI_AWLOCK : in STD_LOGIC_VECTOR ( 0 to 0 );
    IF_NOC_AXI_AWPROT : in STD_LOGIC_VECTOR ( 2 downto 0 );
    IF_NOC_AXI_AWQOS : in STD_LOGIC_VECTOR ( 3 downto 0 );
    IF_NOC_AXI_AWREGION : in STD_LOGIC_VECTOR ( 3 downto 0 );
    IF_NOC_AXI_AWSIZE : in STD_LOGIC_VECTOR ( 2 downto 0 );
    IF_NOC_AXI_AWVALID : in STD_LOGIC;
    IF_NOC_AXI_BREADY : in STD_LOGIC;
    IF_NOC_AXI_RREADY : in STD_LOGIC;
    IF_NOC_NPP_IN_NOC_CREDIT_RDY : in STD_LOGIC;
    IF_NOC_NPP_IN_NOC_FLIT : in STD_LOGIC_VECTOR ( 181 downto 0 );
    IF_NOC_NPP_IN_NOC_VALID : in STD_LOGIC_VECTOR ( 7 downto 0 );
    IF_NOC_NPP_OUT_NOC_CREDIT_RETURN : in STD_LOGIC_VECTOR ( 7 downto 0 );
    NMU : out STD_LOGIC;
    NMU_WR_USR_DST : in STD_LOGIC_VECTOR ( 11 downto 0 );
    NMU_RD_USR_DST : in STD_LOGIC_VECTOR ( 11 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of ulp_inst_0_axi_noc_kernel0_0_bd_0ad1_M01_INI_stub_nmu_0_top : entity is "bd_0ad1_M01_INI_stub_nmu_0_top";
  attribute REG_ADDR_DST0 : string;
  attribute REG_ADDR_DST0 of ulp_inst_0_axi_noc_kernel0_0_bd_0ad1_M01_INI_stub_nmu_0_top : entity is "16'b0000000000000000";
  attribute REG_ADDR_DST1 : string;
  attribute REG_ADDR_DST1 of ulp_inst_0_axi_noc_kernel0_0_bd_0ad1_M01_INI_stub_nmu_0_top : entity is "16'b0000000000000000";
  attribute REG_ADDR_DST10 : string;
  attribute REG_ADDR_DST10 of ulp_inst_0_axi_noc_kernel0_0_bd_0ad1_M01_INI_stub_nmu_0_top : entity is "16'b0000000000000000";
  attribute REG_ADDR_DST11 : string;
  attribute REG_ADDR_DST11 of ulp_inst_0_axi_noc_kernel0_0_bd_0ad1_M01_INI_stub_nmu_0_top : entity is "16'b0000000000000000";
  attribute REG_ADDR_DST12 : string;
  attribute REG_ADDR_DST12 of ulp_inst_0_axi_noc_kernel0_0_bd_0ad1_M01_INI_stub_nmu_0_top : entity is "16'b0000000000000000";
  attribute REG_ADDR_DST13 : string;
  attribute REG_ADDR_DST13 of ulp_inst_0_axi_noc_kernel0_0_bd_0ad1_M01_INI_stub_nmu_0_top : entity is "16'b0000000000000000";
  attribute REG_ADDR_DST14 : string;
  attribute REG_ADDR_DST14 of ulp_inst_0_axi_noc_kernel0_0_bd_0ad1_M01_INI_stub_nmu_0_top : entity is "16'b0000000000000000";
  attribute REG_ADDR_DST15 : string;
  attribute REG_ADDR_DST15 of ulp_inst_0_axi_noc_kernel0_0_bd_0ad1_M01_INI_stub_nmu_0_top : entity is "16'b0000000000000000";
  attribute REG_ADDR_DST2 : string;
  attribute REG_ADDR_DST2 of ulp_inst_0_axi_noc_kernel0_0_bd_0ad1_M01_INI_stub_nmu_0_top : entity is "16'b0000000000000000";
  attribute REG_ADDR_DST3 : string;
  attribute REG_ADDR_DST3 of ulp_inst_0_axi_noc_kernel0_0_bd_0ad1_M01_INI_stub_nmu_0_top : entity is "16'b0000000000000000";
  attribute REG_ADDR_DST4 : string;
  attribute REG_ADDR_DST4 of ulp_inst_0_axi_noc_kernel0_0_bd_0ad1_M01_INI_stub_nmu_0_top : entity is "16'b0000000000000000";
  attribute REG_ADDR_DST5 : string;
  attribute REG_ADDR_DST5 of ulp_inst_0_axi_noc_kernel0_0_bd_0ad1_M01_INI_stub_nmu_0_top : entity is "16'b0000000000000000";
  attribute REG_ADDR_DST6 : string;
  attribute REG_ADDR_DST6 of ulp_inst_0_axi_noc_kernel0_0_bd_0ad1_M01_INI_stub_nmu_0_top : entity is "16'b0000000000000000";
  attribute REG_ADDR_DST7 : string;
  attribute REG_ADDR_DST7 of ulp_inst_0_axi_noc_kernel0_0_bd_0ad1_M01_INI_stub_nmu_0_top : entity is "16'b0000000000000000";
  attribute REG_ADDR_DST8 : string;
  attribute REG_ADDR_DST8 of ulp_inst_0_axi_noc_kernel0_0_bd_0ad1_M01_INI_stub_nmu_0_top : entity is "16'b0000000000000000";
  attribute REG_ADDR_DST9 : string;
  attribute REG_ADDR_DST9 of ulp_inst_0_axi_noc_kernel0_0_bd_0ad1_M01_INI_stub_nmu_0_top : entity is "16'b0000000000000000";
  attribute REG_ADDR_ENABLE : string;
  attribute REG_ADDR_ENABLE of ulp_inst_0_axi_noc_kernel0_0_bd_0ad1_M01_INI_stub_nmu_0_top : entity is "16'b0000000000000000";
  attribute REG_ADDR_MADDR0 : string;
  attribute REG_ADDR_MADDR0 of ulp_inst_0_axi_noc_kernel0_0_bd_0ad1_M01_INI_stub_nmu_0_top : entity is "32'b00000000000000000000000000000000";
  attribute REG_ADDR_MADDR1 : string;
  attribute REG_ADDR_MADDR1 of ulp_inst_0_axi_noc_kernel0_0_bd_0ad1_M01_INI_stub_nmu_0_top : entity is "32'b00000000000000000000000000000000";
  attribute REG_ADDR_MADDR10 : string;
  attribute REG_ADDR_MADDR10 of ulp_inst_0_axi_noc_kernel0_0_bd_0ad1_M01_INI_stub_nmu_0_top : entity is "32'b00000000000000000000000000000000";
  attribute REG_ADDR_MADDR11 : string;
  attribute REG_ADDR_MADDR11 of ulp_inst_0_axi_noc_kernel0_0_bd_0ad1_M01_INI_stub_nmu_0_top : entity is "32'b00000000000000000000000000000000";
  attribute REG_ADDR_MADDR12 : string;
  attribute REG_ADDR_MADDR12 of ulp_inst_0_axi_noc_kernel0_0_bd_0ad1_M01_INI_stub_nmu_0_top : entity is "32'b00000000000000000000000000000000";
  attribute REG_ADDR_MADDR13 : string;
  attribute REG_ADDR_MADDR13 of ulp_inst_0_axi_noc_kernel0_0_bd_0ad1_M01_INI_stub_nmu_0_top : entity is "32'b00000000000000000000000000000000";
  attribute REG_ADDR_MADDR14 : string;
  attribute REG_ADDR_MADDR14 of ulp_inst_0_axi_noc_kernel0_0_bd_0ad1_M01_INI_stub_nmu_0_top : entity is "32'b00000000000000000000000000000000";
  attribute REG_ADDR_MADDR15 : string;
  attribute REG_ADDR_MADDR15 of ulp_inst_0_axi_noc_kernel0_0_bd_0ad1_M01_INI_stub_nmu_0_top : entity is "32'b00000000000000000000000000000000";
  attribute REG_ADDR_MADDR2 : string;
  attribute REG_ADDR_MADDR2 of ulp_inst_0_axi_noc_kernel0_0_bd_0ad1_M01_INI_stub_nmu_0_top : entity is "32'b00000000000000000000000000000000";
  attribute REG_ADDR_MADDR3 : string;
  attribute REG_ADDR_MADDR3 of ulp_inst_0_axi_noc_kernel0_0_bd_0ad1_M01_INI_stub_nmu_0_top : entity is "32'b00000000000000000000000000000000";
  attribute REG_ADDR_MADDR4 : string;
  attribute REG_ADDR_MADDR4 of ulp_inst_0_axi_noc_kernel0_0_bd_0ad1_M01_INI_stub_nmu_0_top : entity is "32'b00000000000000000000000000000000";
  attribute REG_ADDR_MADDR5 : string;
  attribute REG_ADDR_MADDR5 of ulp_inst_0_axi_noc_kernel0_0_bd_0ad1_M01_INI_stub_nmu_0_top : entity is "32'b00000000000000000000000000000000";
  attribute REG_ADDR_MADDR6 : string;
  attribute REG_ADDR_MADDR6 of ulp_inst_0_axi_noc_kernel0_0_bd_0ad1_M01_INI_stub_nmu_0_top : entity is "32'b00000000000000000000000000000000";
  attribute REG_ADDR_MADDR7 : string;
  attribute REG_ADDR_MADDR7 of ulp_inst_0_axi_noc_kernel0_0_bd_0ad1_M01_INI_stub_nmu_0_top : entity is "32'b00000000000000000000000000000000";
  attribute REG_ADDR_MADDR8 : string;
  attribute REG_ADDR_MADDR8 of ulp_inst_0_axi_noc_kernel0_0_bd_0ad1_M01_INI_stub_nmu_0_top : entity is "32'b00000000000000000000000000000000";
  attribute REG_ADDR_MADDR9 : string;
  attribute REG_ADDR_MADDR9 of ulp_inst_0_axi_noc_kernel0_0_bd_0ad1_M01_INI_stub_nmu_0_top : entity is "32'b00000000000000000000000000000000";
  attribute REG_ADDR_MASK0 : string;
  attribute REG_ADDR_MASK0 of ulp_inst_0_axi_noc_kernel0_0_bd_0ad1_M01_INI_stub_nmu_0_top : entity is "32'b00000000000000000000000000000000";
  attribute REG_ADDR_MASK1 : string;
  attribute REG_ADDR_MASK1 of ulp_inst_0_axi_noc_kernel0_0_bd_0ad1_M01_INI_stub_nmu_0_top : entity is "32'b00000000000000000000000000000000";
  attribute REG_ADDR_MASK10 : string;
  attribute REG_ADDR_MASK10 of ulp_inst_0_axi_noc_kernel0_0_bd_0ad1_M01_INI_stub_nmu_0_top : entity is "32'b00000000000000000000000000000000";
  attribute REG_ADDR_MASK11 : string;
  attribute REG_ADDR_MASK11 of ulp_inst_0_axi_noc_kernel0_0_bd_0ad1_M01_INI_stub_nmu_0_top : entity is "32'b00000000000000000000000000000000";
  attribute REG_ADDR_MASK12 : string;
  attribute REG_ADDR_MASK12 of ulp_inst_0_axi_noc_kernel0_0_bd_0ad1_M01_INI_stub_nmu_0_top : entity is "32'b00000000000000000000000000000000";
  attribute REG_ADDR_MASK13 : string;
  attribute REG_ADDR_MASK13 of ulp_inst_0_axi_noc_kernel0_0_bd_0ad1_M01_INI_stub_nmu_0_top : entity is "32'b00000000000000000000000000000000";
  attribute REG_ADDR_MASK14 : string;
  attribute REG_ADDR_MASK14 of ulp_inst_0_axi_noc_kernel0_0_bd_0ad1_M01_INI_stub_nmu_0_top : entity is "32'b00000000000000000000000000000000";
  attribute REG_ADDR_MASK15 : string;
  attribute REG_ADDR_MASK15 of ulp_inst_0_axi_noc_kernel0_0_bd_0ad1_M01_INI_stub_nmu_0_top : entity is "32'b00000000000000000000000000000000";
  attribute REG_ADDR_MASK2 : string;
  attribute REG_ADDR_MASK2 of ulp_inst_0_axi_noc_kernel0_0_bd_0ad1_M01_INI_stub_nmu_0_top : entity is "32'b00000000000000000000000000000000";
  attribute REG_ADDR_MASK3 : string;
  attribute REG_ADDR_MASK3 of ulp_inst_0_axi_noc_kernel0_0_bd_0ad1_M01_INI_stub_nmu_0_top : entity is "32'b00000000000000000000000000000000";
  attribute REG_ADDR_MASK4 : string;
  attribute REG_ADDR_MASK4 of ulp_inst_0_axi_noc_kernel0_0_bd_0ad1_M01_INI_stub_nmu_0_top : entity is "32'b00000000000000000000000000000000";
  attribute REG_ADDR_MASK5 : string;
  attribute REG_ADDR_MASK5 of ulp_inst_0_axi_noc_kernel0_0_bd_0ad1_M01_INI_stub_nmu_0_top : entity is "32'b00000000000000000000000000000000";
  attribute REG_ADDR_MASK6 : string;
  attribute REG_ADDR_MASK6 of ulp_inst_0_axi_noc_kernel0_0_bd_0ad1_M01_INI_stub_nmu_0_top : entity is "32'b00000000000000000000000000000000";
  attribute REG_ADDR_MASK7 : string;
  attribute REG_ADDR_MASK7 of ulp_inst_0_axi_noc_kernel0_0_bd_0ad1_M01_INI_stub_nmu_0_top : entity is "32'b00000000000000000000000000000000";
  attribute REG_ADDR_MASK8 : string;
  attribute REG_ADDR_MASK8 of ulp_inst_0_axi_noc_kernel0_0_bd_0ad1_M01_INI_stub_nmu_0_top : entity is "32'b00000000000000000000000000000000";
  attribute REG_ADDR_MASK9 : string;
  attribute REG_ADDR_MASK9 of ulp_inst_0_axi_noc_kernel0_0_bd_0ad1_M01_INI_stub_nmu_0_top : entity is "32'b00000000000000000000000000000000";
  attribute REG_ADDR_REMAP : string;
  attribute REG_ADDR_REMAP of ulp_inst_0_axi_noc_kernel0_0_bd_0ad1_M01_INI_stub_nmu_0_top : entity is "16'b0000000000000000";
  attribute REG_ADDR_RPADDR0 : string;
  attribute REG_ADDR_RPADDR0 of ulp_inst_0_axi_noc_kernel0_0_bd_0ad1_M01_INI_stub_nmu_0_top : entity is "32'b00000000000000000000000000000000";
  attribute REG_ADDR_RPADDR1 : string;
  attribute REG_ADDR_RPADDR1 of ulp_inst_0_axi_noc_kernel0_0_bd_0ad1_M01_INI_stub_nmu_0_top : entity is "32'b00000000000000000000000000000000";
  attribute REG_ADDR_RPADDR10 : string;
  attribute REG_ADDR_RPADDR10 of ulp_inst_0_axi_noc_kernel0_0_bd_0ad1_M01_INI_stub_nmu_0_top : entity is "32'b00000000000000000000000000000000";
  attribute REG_ADDR_RPADDR11 : string;
  attribute REG_ADDR_RPADDR11 of ulp_inst_0_axi_noc_kernel0_0_bd_0ad1_M01_INI_stub_nmu_0_top : entity is "32'b00000000000000000000000000000000";
  attribute REG_ADDR_RPADDR12 : string;
  attribute REG_ADDR_RPADDR12 of ulp_inst_0_axi_noc_kernel0_0_bd_0ad1_M01_INI_stub_nmu_0_top : entity is "32'b00000000000000000000000000000000";
  attribute REG_ADDR_RPADDR13 : string;
  attribute REG_ADDR_RPADDR13 of ulp_inst_0_axi_noc_kernel0_0_bd_0ad1_M01_INI_stub_nmu_0_top : entity is "32'b00000000000000000000000000000000";
  attribute REG_ADDR_RPADDR14 : string;
  attribute REG_ADDR_RPADDR14 of ulp_inst_0_axi_noc_kernel0_0_bd_0ad1_M01_INI_stub_nmu_0_top : entity is "32'b00000000000000000000000000000000";
  attribute REG_ADDR_RPADDR15 : string;
  attribute REG_ADDR_RPADDR15 of ulp_inst_0_axi_noc_kernel0_0_bd_0ad1_M01_INI_stub_nmu_0_top : entity is "32'b00000000000000000000000000000000";
  attribute REG_ADDR_RPADDR2 : string;
  attribute REG_ADDR_RPADDR2 of ulp_inst_0_axi_noc_kernel0_0_bd_0ad1_M01_INI_stub_nmu_0_top : entity is "32'b00000000000000000000000000000000";
  attribute REG_ADDR_RPADDR3 : string;
  attribute REG_ADDR_RPADDR3 of ulp_inst_0_axi_noc_kernel0_0_bd_0ad1_M01_INI_stub_nmu_0_top : entity is "32'b00000000000000000000000000000000";
  attribute REG_ADDR_RPADDR4 : string;
  attribute REG_ADDR_RPADDR4 of ulp_inst_0_axi_noc_kernel0_0_bd_0ad1_M01_INI_stub_nmu_0_top : entity is "32'b00000000000000000000000000000000";
  attribute REG_ADDR_RPADDR5 : string;
  attribute REG_ADDR_RPADDR5 of ulp_inst_0_axi_noc_kernel0_0_bd_0ad1_M01_INI_stub_nmu_0_top : entity is "32'b00000000000000000000000000000000";
  attribute REG_ADDR_RPADDR6 : string;
  attribute REG_ADDR_RPADDR6 of ulp_inst_0_axi_noc_kernel0_0_bd_0ad1_M01_INI_stub_nmu_0_top : entity is "32'b00000000000000000000000000000000";
  attribute REG_ADDR_RPADDR7 : string;
  attribute REG_ADDR_RPADDR7 of ulp_inst_0_axi_noc_kernel0_0_bd_0ad1_M01_INI_stub_nmu_0_top : entity is "32'b00000000000000000000000000000000";
  attribute REG_ADDR_RPADDR8 : string;
  attribute REG_ADDR_RPADDR8 of ulp_inst_0_axi_noc_kernel0_0_bd_0ad1_M01_INI_stub_nmu_0_top : entity is "32'b00000000000000000000000000000000";
  attribute REG_ADDR_RPADDR9 : string;
  attribute REG_ADDR_RPADDR9 of ulp_inst_0_axi_noc_kernel0_0_bd_0ad1_M01_INI_stub_nmu_0_top : entity is "32'b00000000000000000000000000000000";
  attribute REG_ADR_MAP_CPM : string;
  attribute REG_ADR_MAP_CPM of ulp_inst_0_axi_noc_kernel0_0_bd_0ad1_M01_INI_stub_nmu_0_top : entity is "12'b111111000000";
  attribute REG_ADR_MAP_FPD_AFI_0 : string;
  attribute REG_ADR_MAP_FPD_AFI_0 of ulp_inst_0_axi_noc_kernel0_0_bd_0ad1_M01_INI_stub_nmu_0_top : entity is "12'b111111000000";
  attribute REG_ADR_MAP_FPD_AFI_1 : string;
  attribute REG_ADR_MAP_FPD_AFI_1 of ulp_inst_0_axi_noc_kernel0_0_bd_0ad1_M01_INI_stub_nmu_0_top : entity is "12'b111111000000";
  attribute REG_ADR_MAP_LPD_AFI_FS : string;
  attribute REG_ADR_MAP_LPD_AFI_FS of ulp_inst_0_axi_noc_kernel0_0_bd_0ad1_M01_INI_stub_nmu_0_top : entity is "12'b111111000000";
  attribute REG_ADR_MAP_ME_ARRAY_0 : string;
  attribute REG_ADR_MAP_ME_ARRAY_0 of ulp_inst_0_axi_noc_kernel0_0_bd_0ad1_M01_INI_stub_nmu_0_top : entity is "12'b111111000000";
  attribute REG_ADR_MAP_ME_ARRAY_1 : string;
  attribute REG_ADR_MAP_ME_ARRAY_1 of ulp_inst_0_axi_noc_kernel0_0_bd_0ad1_M01_INI_stub_nmu_0_top : entity is "12'b111111000000";
  attribute REG_ADR_MAP_ME_ARRAY_2 : string;
  attribute REG_ADR_MAP_ME_ARRAY_2 of ulp_inst_0_axi_noc_kernel0_0_bd_0ad1_M01_INI_stub_nmu_0_top : entity is "12'b111111000000";
  attribute REG_ADR_MAP_ME_ARRAY_3 : string;
  attribute REG_ADR_MAP_ME_ARRAY_3 of ulp_inst_0_axi_noc_kernel0_0_bd_0ad1_M01_INI_stub_nmu_0_top : entity is "12'b111111000000";
  attribute REG_ADR_MAP_PCIE : string;
  attribute REG_ADR_MAP_PCIE of ulp_inst_0_axi_noc_kernel0_0_bd_0ad1_M01_INI_stub_nmu_0_top : entity is "12'b111111000000";
  attribute REG_ADR_MAP_PMC : string;
  attribute REG_ADR_MAP_PMC of ulp_inst_0_axi_noc_kernel0_0_bd_0ad1_M01_INI_stub_nmu_0_top : entity is "12'b111111000000";
  attribute REG_ADR_MAP_PMC_ALIAS_0 : string;
  attribute REG_ADR_MAP_PMC_ALIAS_0 of ulp_inst_0_axi_noc_kernel0_0_bd_0ad1_M01_INI_stub_nmu_0_top : entity is "12'b111111000000";
  attribute REG_ADR_MAP_PMC_ALIAS_1 : string;
  attribute REG_ADR_MAP_PMC_ALIAS_1 of ulp_inst_0_axi_noc_kernel0_0_bd_0ad1_M01_INI_stub_nmu_0_top : entity is "12'b111111000000";
  attribute REG_ADR_MAP_PMC_ALIAS_2 : string;
  attribute REG_ADR_MAP_PMC_ALIAS_2 of ulp_inst_0_axi_noc_kernel0_0_bd_0ad1_M01_INI_stub_nmu_0_top : entity is "12'b111111000000";
  attribute REG_ADR_MAP_PMC_ALIAS_3 : string;
  attribute REG_ADR_MAP_PMC_ALIAS_3 of ulp_inst_0_axi_noc_kernel0_0_bd_0ad1_M01_INI_stub_nmu_0_top : entity is "12'b111111000000";
  attribute REG_ADR_MAP_QSPI : string;
  attribute REG_ADR_MAP_QSPI of ulp_inst_0_axi_noc_kernel0_0_bd_0ad1_M01_INI_stub_nmu_0_top : entity is "12'b111111000000";
  attribute REG_ADR_MAP_STM_GIC : string;
  attribute REG_ADR_MAP_STM_GIC of ulp_inst_0_axi_noc_kernel0_0_bd_0ad1_M01_INI_stub_nmu_0_top : entity is "12'b111111000000";
  attribute REG_ADR_MAP_XPDS : string;
  attribute REG_ADR_MAP_XPDS of ulp_inst_0_axi_noc_kernel0_0_bd_0ad1_M01_INI_stub_nmu_0_top : entity is "12'b111111000000";
  attribute REG_AXI_NON_MOD_DISABLE : string;
  attribute REG_AXI_NON_MOD_DISABLE of ulp_inst_0_axi_noc_kernel0_0_bd_0ad1_M01_INI_stub_nmu_0_top : entity is "1'b0";
  attribute REG_AXI_PAR_CHK : string;
  attribute REG_AXI_PAR_CHK of ulp_inst_0_axi_noc_kernel0_0_bd_0ad1_M01_INI_stub_nmu_0_top : entity is "2'b00";
  attribute REG_CHOPSIZE : string;
  attribute REG_CHOPSIZE of ulp_inst_0_axi_noc_kernel0_0_bd_0ad1_M01_INI_stub_nmu_0_top : entity is "4'b1010";
  attribute REG_DDR_ADR_MAP0 : string;
  attribute REG_DDR_ADR_MAP0 of ulp_inst_0_axi_noc_kernel0_0_bd_0ad1_M01_INI_stub_nmu_0_top : entity is "15'b110011010001000";
  attribute REG_DDR_ADR_MAP1 : string;
  attribute REG_DDR_ADR_MAP1 of ulp_inst_0_axi_noc_kernel0_0_bd_0ad1_M01_INI_stub_nmu_0_top : entity is "15'b001111111111111";
  attribute REG_DDR_ADR_MAP2 : string;
  attribute REG_DDR_ADR_MAP2 of ulp_inst_0_axi_noc_kernel0_0_bd_0ad1_M01_INI_stub_nmu_0_top : entity is "15'b001111111111111";
  attribute REG_DDR_ADR_MAP3 : string;
  attribute REG_DDR_ADR_MAP3 of ulp_inst_0_axi_noc_kernel0_0_bd_0ad1_M01_INI_stub_nmu_0_top : entity is "15'b001111111111111";
  attribute REG_DDR_ADR_MAP4 : string;
  attribute REG_DDR_ADR_MAP4 of ulp_inst_0_axi_noc_kernel0_0_bd_0ad1_M01_INI_stub_nmu_0_top : entity is "15'b001111111111111";
  attribute REG_DDR_ADR_MAP5 : string;
  attribute REG_DDR_ADR_MAP5 of ulp_inst_0_axi_noc_kernel0_0_bd_0ad1_M01_INI_stub_nmu_0_top : entity is "15'b001111111111111";
  attribute REG_DDR_ADR_MAP6 : string;
  attribute REG_DDR_ADR_MAP6 of ulp_inst_0_axi_noc_kernel0_0_bd_0ad1_M01_INI_stub_nmu_0_top : entity is "15'b001111111111111";
  attribute REG_DDR_DST_MAP0 : string;
  attribute REG_DDR_DST_MAP0 of ulp_inst_0_axi_noc_kernel0_0_bd_0ad1_M01_INI_stub_nmu_0_top : entity is "12'b100011000000";
  attribute REG_DDR_DST_MAP1 : string;
  attribute REG_DDR_DST_MAP1 of ulp_inst_0_axi_noc_kernel0_0_bd_0ad1_M01_INI_stub_nmu_0_top : entity is "12'b010111000000";
  attribute REG_DDR_DST_MAP2 : string;
  attribute REG_DDR_DST_MAP2 of ulp_inst_0_axi_noc_kernel0_0_bd_0ad1_M01_INI_stub_nmu_0_top : entity is "12'b011111000000";
  attribute REG_DDR_DST_MAP3 : string;
  attribute REG_DDR_DST_MAP3 of ulp_inst_0_axi_noc_kernel0_0_bd_0ad1_M01_INI_stub_nmu_0_top : entity is "12'b011011000000";
  attribute REG_DDR_DST_MAP4 : string;
  attribute REG_DDR_DST_MAP4 of ulp_inst_0_axi_noc_kernel0_0_bd_0ad1_M01_INI_stub_nmu_0_top : entity is "12'b111111000000";
  attribute REG_DDR_DST_MAP5 : string;
  attribute REG_DDR_DST_MAP5 of ulp_inst_0_axi_noc_kernel0_0_bd_0ad1_M01_INI_stub_nmu_0_top : entity is "12'b111111000000";
  attribute REG_DDR_DST_MAP6 : string;
  attribute REG_DDR_DST_MAP6 of ulp_inst_0_axi_noc_kernel0_0_bd_0ad1_M01_INI_stub_nmu_0_top : entity is "12'b111111000000";
  attribute REG_DDR_DST_MAP7 : string;
  attribute REG_DDR_DST_MAP7 of ulp_inst_0_axi_noc_kernel0_0_bd_0ad1_M01_INI_stub_nmu_0_top : entity is "12'b111111000000";
  attribute REG_DWIDTH : string;
  attribute REG_DWIDTH of ulp_inst_0_axi_noc_kernel0_0_bd_0ad1_M01_INI_stub_nmu_0_top : entity is "3'b110";
  attribute REG_ECC_CHK_EN : string;
  attribute REG_ECC_CHK_EN of ulp_inst_0_axi_noc_kernel0_0_bd_0ad1_M01_INI_stub_nmu_0_top : entity is "1'b1";
  attribute REG_HBM_MAP_T0_CH0 : string;
  attribute REG_HBM_MAP_T0_CH0 of ulp_inst_0_axi_noc_kernel0_0_bd_0ad1_M01_INI_stub_nmu_0_top : entity is "12'b111111000000";
  attribute REG_HBM_MAP_T0_CH1 : string;
  attribute REG_HBM_MAP_T0_CH1 of ulp_inst_0_axi_noc_kernel0_0_bd_0ad1_M01_INI_stub_nmu_0_top : entity is "12'b111111000000";
  attribute REG_HBM_MAP_T0_CH10 : string;
  attribute REG_HBM_MAP_T0_CH10 of ulp_inst_0_axi_noc_kernel0_0_bd_0ad1_M01_INI_stub_nmu_0_top : entity is "12'b111111000000";
  attribute REG_HBM_MAP_T0_CH11 : string;
  attribute REG_HBM_MAP_T0_CH11 of ulp_inst_0_axi_noc_kernel0_0_bd_0ad1_M01_INI_stub_nmu_0_top : entity is "12'b111111000000";
  attribute REG_HBM_MAP_T0_CH12 : string;
  attribute REG_HBM_MAP_T0_CH12 of ulp_inst_0_axi_noc_kernel0_0_bd_0ad1_M01_INI_stub_nmu_0_top : entity is "12'b111111000000";
  attribute REG_HBM_MAP_T0_CH13 : string;
  attribute REG_HBM_MAP_T0_CH13 of ulp_inst_0_axi_noc_kernel0_0_bd_0ad1_M01_INI_stub_nmu_0_top : entity is "12'b111111000000";
  attribute REG_HBM_MAP_T0_CH14 : string;
  attribute REG_HBM_MAP_T0_CH14 of ulp_inst_0_axi_noc_kernel0_0_bd_0ad1_M01_INI_stub_nmu_0_top : entity is "12'b111111000000";
  attribute REG_HBM_MAP_T0_CH15 : string;
  attribute REG_HBM_MAP_T0_CH15 of ulp_inst_0_axi_noc_kernel0_0_bd_0ad1_M01_INI_stub_nmu_0_top : entity is "12'b111111000000";
  attribute REG_HBM_MAP_T0_CH2 : string;
  attribute REG_HBM_MAP_T0_CH2 of ulp_inst_0_axi_noc_kernel0_0_bd_0ad1_M01_INI_stub_nmu_0_top : entity is "12'b111111000000";
  attribute REG_HBM_MAP_T0_CH3 : string;
  attribute REG_HBM_MAP_T0_CH3 of ulp_inst_0_axi_noc_kernel0_0_bd_0ad1_M01_INI_stub_nmu_0_top : entity is "12'b111111000000";
  attribute REG_HBM_MAP_T0_CH4 : string;
  attribute REG_HBM_MAP_T0_CH4 of ulp_inst_0_axi_noc_kernel0_0_bd_0ad1_M01_INI_stub_nmu_0_top : entity is "12'b111111000000";
  attribute REG_HBM_MAP_T0_CH5 : string;
  attribute REG_HBM_MAP_T0_CH5 of ulp_inst_0_axi_noc_kernel0_0_bd_0ad1_M01_INI_stub_nmu_0_top : entity is "12'b111111000000";
  attribute REG_HBM_MAP_T0_CH6 : string;
  attribute REG_HBM_MAP_T0_CH6 of ulp_inst_0_axi_noc_kernel0_0_bd_0ad1_M01_INI_stub_nmu_0_top : entity is "12'b111111000000";
  attribute REG_HBM_MAP_T0_CH7 : string;
  attribute REG_HBM_MAP_T0_CH7 of ulp_inst_0_axi_noc_kernel0_0_bd_0ad1_M01_INI_stub_nmu_0_top : entity is "12'b111111000000";
  attribute REG_HBM_MAP_T0_CH8 : string;
  attribute REG_HBM_MAP_T0_CH8 of ulp_inst_0_axi_noc_kernel0_0_bd_0ad1_M01_INI_stub_nmu_0_top : entity is "12'b111111000000";
  attribute REG_HBM_MAP_T0_CH9 : string;
  attribute REG_HBM_MAP_T0_CH9 of ulp_inst_0_axi_noc_kernel0_0_bd_0ad1_M01_INI_stub_nmu_0_top : entity is "12'b111111000000";
  attribute REG_HBM_MAP_T1_CH0 : string;
  attribute REG_HBM_MAP_T1_CH0 of ulp_inst_0_axi_noc_kernel0_0_bd_0ad1_M01_INI_stub_nmu_0_top : entity is "12'b111111000000";
  attribute REG_HBM_MAP_T1_CH1 : string;
  attribute REG_HBM_MAP_T1_CH1 of ulp_inst_0_axi_noc_kernel0_0_bd_0ad1_M01_INI_stub_nmu_0_top : entity is "12'b111111000000";
  attribute REG_HBM_MAP_T1_CH10 : string;
  attribute REG_HBM_MAP_T1_CH10 of ulp_inst_0_axi_noc_kernel0_0_bd_0ad1_M01_INI_stub_nmu_0_top : entity is "12'b111111000000";
  attribute REG_HBM_MAP_T1_CH11 : string;
  attribute REG_HBM_MAP_T1_CH11 of ulp_inst_0_axi_noc_kernel0_0_bd_0ad1_M01_INI_stub_nmu_0_top : entity is "12'b111111000000";
  attribute REG_HBM_MAP_T1_CH12 : string;
  attribute REG_HBM_MAP_T1_CH12 of ulp_inst_0_axi_noc_kernel0_0_bd_0ad1_M01_INI_stub_nmu_0_top : entity is "12'b111111000000";
  attribute REG_HBM_MAP_T1_CH13 : string;
  attribute REG_HBM_MAP_T1_CH13 of ulp_inst_0_axi_noc_kernel0_0_bd_0ad1_M01_INI_stub_nmu_0_top : entity is "12'b111111000000";
  attribute REG_HBM_MAP_T1_CH14 : string;
  attribute REG_HBM_MAP_T1_CH14 of ulp_inst_0_axi_noc_kernel0_0_bd_0ad1_M01_INI_stub_nmu_0_top : entity is "12'b111111000000";
  attribute REG_HBM_MAP_T1_CH15 : string;
  attribute REG_HBM_MAP_T1_CH15 of ulp_inst_0_axi_noc_kernel0_0_bd_0ad1_M01_INI_stub_nmu_0_top : entity is "12'b111111000000";
  attribute REG_HBM_MAP_T1_CH2 : string;
  attribute REG_HBM_MAP_T1_CH2 of ulp_inst_0_axi_noc_kernel0_0_bd_0ad1_M01_INI_stub_nmu_0_top : entity is "12'b111111000000";
  attribute REG_HBM_MAP_T1_CH3 : string;
  attribute REG_HBM_MAP_T1_CH3 of ulp_inst_0_axi_noc_kernel0_0_bd_0ad1_M01_INI_stub_nmu_0_top : entity is "12'b111111000000";
  attribute REG_HBM_MAP_T1_CH4 : string;
  attribute REG_HBM_MAP_T1_CH4 of ulp_inst_0_axi_noc_kernel0_0_bd_0ad1_M01_INI_stub_nmu_0_top : entity is "12'b111111000000";
  attribute REG_HBM_MAP_T1_CH5 : string;
  attribute REG_HBM_MAP_T1_CH5 of ulp_inst_0_axi_noc_kernel0_0_bd_0ad1_M01_INI_stub_nmu_0_top : entity is "12'b111111000000";
  attribute REG_HBM_MAP_T1_CH6 : string;
  attribute REG_HBM_MAP_T1_CH6 of ulp_inst_0_axi_noc_kernel0_0_bd_0ad1_M01_INI_stub_nmu_0_top : entity is "12'b111111000000";
  attribute REG_HBM_MAP_T1_CH7 : string;
  attribute REG_HBM_MAP_T1_CH7 of ulp_inst_0_axi_noc_kernel0_0_bd_0ad1_M01_INI_stub_nmu_0_top : entity is "12'b111111000000";
  attribute REG_HBM_MAP_T1_CH8 : string;
  attribute REG_HBM_MAP_T1_CH8 of ulp_inst_0_axi_noc_kernel0_0_bd_0ad1_M01_INI_stub_nmu_0_top : entity is "12'b111111000000";
  attribute REG_HBM_MAP_T1_CH9 : string;
  attribute REG_HBM_MAP_T1_CH9 of ulp_inst_0_axi_noc_kernel0_0_bd_0ad1_M01_INI_stub_nmu_0_top : entity is "12'b111111000000";
  attribute REG_HBM_MAP_T2_CH0 : string;
  attribute REG_HBM_MAP_T2_CH0 of ulp_inst_0_axi_noc_kernel0_0_bd_0ad1_M01_INI_stub_nmu_0_top : entity is "12'b111111000000";
  attribute REG_HBM_MAP_T2_CH1 : string;
  attribute REG_HBM_MAP_T2_CH1 of ulp_inst_0_axi_noc_kernel0_0_bd_0ad1_M01_INI_stub_nmu_0_top : entity is "12'b111111000000";
  attribute REG_HBM_MAP_T2_CH10 : string;
  attribute REG_HBM_MAP_T2_CH10 of ulp_inst_0_axi_noc_kernel0_0_bd_0ad1_M01_INI_stub_nmu_0_top : entity is "12'b111111000000";
  attribute REG_HBM_MAP_T2_CH11 : string;
  attribute REG_HBM_MAP_T2_CH11 of ulp_inst_0_axi_noc_kernel0_0_bd_0ad1_M01_INI_stub_nmu_0_top : entity is "12'b111111000000";
  attribute REG_HBM_MAP_T2_CH12 : string;
  attribute REG_HBM_MAP_T2_CH12 of ulp_inst_0_axi_noc_kernel0_0_bd_0ad1_M01_INI_stub_nmu_0_top : entity is "12'b111111000000";
  attribute REG_HBM_MAP_T2_CH13 : string;
  attribute REG_HBM_MAP_T2_CH13 of ulp_inst_0_axi_noc_kernel0_0_bd_0ad1_M01_INI_stub_nmu_0_top : entity is "12'b111111000000";
  attribute REG_HBM_MAP_T2_CH14 : string;
  attribute REG_HBM_MAP_T2_CH14 of ulp_inst_0_axi_noc_kernel0_0_bd_0ad1_M01_INI_stub_nmu_0_top : entity is "12'b111111000000";
  attribute REG_HBM_MAP_T2_CH15 : string;
  attribute REG_HBM_MAP_T2_CH15 of ulp_inst_0_axi_noc_kernel0_0_bd_0ad1_M01_INI_stub_nmu_0_top : entity is "12'b111111000000";
  attribute REG_HBM_MAP_T2_CH2 : string;
  attribute REG_HBM_MAP_T2_CH2 of ulp_inst_0_axi_noc_kernel0_0_bd_0ad1_M01_INI_stub_nmu_0_top : entity is "12'b111111000000";
  attribute REG_HBM_MAP_T2_CH3 : string;
  attribute REG_HBM_MAP_T2_CH3 of ulp_inst_0_axi_noc_kernel0_0_bd_0ad1_M01_INI_stub_nmu_0_top : entity is "12'b111111000000";
  attribute REG_HBM_MAP_T2_CH4 : string;
  attribute REG_HBM_MAP_T2_CH4 of ulp_inst_0_axi_noc_kernel0_0_bd_0ad1_M01_INI_stub_nmu_0_top : entity is "12'b111111000000";
  attribute REG_HBM_MAP_T2_CH5 : string;
  attribute REG_HBM_MAP_T2_CH5 of ulp_inst_0_axi_noc_kernel0_0_bd_0ad1_M01_INI_stub_nmu_0_top : entity is "12'b111111000000";
  attribute REG_HBM_MAP_T2_CH6 : string;
  attribute REG_HBM_MAP_T2_CH6 of ulp_inst_0_axi_noc_kernel0_0_bd_0ad1_M01_INI_stub_nmu_0_top : entity is "12'b111111000000";
  attribute REG_HBM_MAP_T2_CH7 : string;
  attribute REG_HBM_MAP_T2_CH7 of ulp_inst_0_axi_noc_kernel0_0_bd_0ad1_M01_INI_stub_nmu_0_top : entity is "12'b111111000000";
  attribute REG_HBM_MAP_T2_CH8 : string;
  attribute REG_HBM_MAP_T2_CH8 of ulp_inst_0_axi_noc_kernel0_0_bd_0ad1_M01_INI_stub_nmu_0_top : entity is "12'b111111000000";
  attribute REG_HBM_MAP_T2_CH9 : string;
  attribute REG_HBM_MAP_T2_CH9 of ulp_inst_0_axi_noc_kernel0_0_bd_0ad1_M01_INI_stub_nmu_0_top : entity is "12'b111111000000";
  attribute REG_HBM_MAP_T3_CH0 : string;
  attribute REG_HBM_MAP_T3_CH0 of ulp_inst_0_axi_noc_kernel0_0_bd_0ad1_M01_INI_stub_nmu_0_top : entity is "12'b111111000000";
  attribute REG_HBM_MAP_T3_CH1 : string;
  attribute REG_HBM_MAP_T3_CH1 of ulp_inst_0_axi_noc_kernel0_0_bd_0ad1_M01_INI_stub_nmu_0_top : entity is "12'b111111000000";
  attribute REG_HBM_MAP_T3_CH10 : string;
  attribute REG_HBM_MAP_T3_CH10 of ulp_inst_0_axi_noc_kernel0_0_bd_0ad1_M01_INI_stub_nmu_0_top : entity is "12'b111111000000";
  attribute REG_HBM_MAP_T3_CH11 : string;
  attribute REG_HBM_MAP_T3_CH11 of ulp_inst_0_axi_noc_kernel0_0_bd_0ad1_M01_INI_stub_nmu_0_top : entity is "12'b111111000000";
  attribute REG_HBM_MAP_T3_CH12 : string;
  attribute REG_HBM_MAP_T3_CH12 of ulp_inst_0_axi_noc_kernel0_0_bd_0ad1_M01_INI_stub_nmu_0_top : entity is "12'b111111000000";
  attribute REG_HBM_MAP_T3_CH13 : string;
  attribute REG_HBM_MAP_T3_CH13 of ulp_inst_0_axi_noc_kernel0_0_bd_0ad1_M01_INI_stub_nmu_0_top : entity is "12'b111111000000";
  attribute REG_HBM_MAP_T3_CH14 : string;
  attribute REG_HBM_MAP_T3_CH14 of ulp_inst_0_axi_noc_kernel0_0_bd_0ad1_M01_INI_stub_nmu_0_top : entity is "12'b111111000000";
  attribute REG_HBM_MAP_T3_CH15 : string;
  attribute REG_HBM_MAP_T3_CH15 of ulp_inst_0_axi_noc_kernel0_0_bd_0ad1_M01_INI_stub_nmu_0_top : entity is "12'b111111000000";
  attribute REG_HBM_MAP_T3_CH2 : string;
  attribute REG_HBM_MAP_T3_CH2 of ulp_inst_0_axi_noc_kernel0_0_bd_0ad1_M01_INI_stub_nmu_0_top : entity is "12'b111111000000";
  attribute REG_HBM_MAP_T3_CH3 : string;
  attribute REG_HBM_MAP_T3_CH3 of ulp_inst_0_axi_noc_kernel0_0_bd_0ad1_M01_INI_stub_nmu_0_top : entity is "12'b111111000000";
  attribute REG_HBM_MAP_T3_CH4 : string;
  attribute REG_HBM_MAP_T3_CH4 of ulp_inst_0_axi_noc_kernel0_0_bd_0ad1_M01_INI_stub_nmu_0_top : entity is "12'b111111000000";
  attribute REG_HBM_MAP_T3_CH5 : string;
  attribute REG_HBM_MAP_T3_CH5 of ulp_inst_0_axi_noc_kernel0_0_bd_0ad1_M01_INI_stub_nmu_0_top : entity is "12'b111111000000";
  attribute REG_HBM_MAP_T3_CH6 : string;
  attribute REG_HBM_MAP_T3_CH6 of ulp_inst_0_axi_noc_kernel0_0_bd_0ad1_M01_INI_stub_nmu_0_top : entity is "12'b111111000000";
  attribute REG_HBM_MAP_T3_CH7 : string;
  attribute REG_HBM_MAP_T3_CH7 of ulp_inst_0_axi_noc_kernel0_0_bd_0ad1_M01_INI_stub_nmu_0_top : entity is "12'b111111000000";
  attribute REG_HBM_MAP_T3_CH8 : string;
  attribute REG_HBM_MAP_T3_CH8 of ulp_inst_0_axi_noc_kernel0_0_bd_0ad1_M01_INI_stub_nmu_0_top : entity is "12'b111111000000";
  attribute REG_HBM_MAP_T3_CH9 : string;
  attribute REG_HBM_MAP_T3_CH9 of ulp_inst_0_axi_noc_kernel0_0_bd_0ad1_M01_INI_stub_nmu_0_top : entity is "12'b111111000000";
  attribute REG_MODE_SELECT : string;
  attribute REG_MODE_SELECT of ulp_inst_0_axi_noc_kernel0_0_bd_0ad1_M01_INI_stub_nmu_0_top : entity is "16'b0000000000000000";
  attribute REG_OUTSTANDING_RD_TXN : string;
  attribute REG_OUTSTANDING_RD_TXN of ulp_inst_0_axi_noc_kernel0_0_bd_0ad1_M01_INI_stub_nmu_0_top : entity is "7'b1000000";
  attribute REG_OUTSTANDING_WR_TXN : string;
  attribute REG_OUTSTANDING_WR_TXN of ulp_inst_0_axi_noc_kernel0_0_bd_0ad1_M01_INI_stub_nmu_0_top : entity is "7'b1000000";
  attribute REG_PRIORITY : string;
  attribute REG_PRIORITY of ulp_inst_0_axi_noc_kernel0_0_bd_0ad1_M01_INI_stub_nmu_0_top : entity is "2'b00";
  attribute REG_RD_AXPROT_SEL : string;
  attribute REG_RD_AXPROT_SEL of ulp_inst_0_axi_noc_kernel0_0_bd_0ad1_M01_INI_stub_nmu_0_top : entity is "6'b000000";
  attribute REG_RD_RATE_CREDIT_DROP : string;
  attribute REG_RD_RATE_CREDIT_DROP of ulp_inst_0_axi_noc_kernel0_0_bd_0ad1_M01_INI_stub_nmu_0_top : entity is "10'b0000000100";
  attribute REG_RD_RATE_CREDIT_LIMIT : string;
  attribute REG_RD_RATE_CREDIT_LIMIT of ulp_inst_0_axi_noc_kernel0_0_bd_0ad1_M01_INI_stub_nmu_0_top : entity is "13'b0000100000000";
  attribute REG_RD_VCA_TOKEN0 : string;
  attribute REG_RD_VCA_TOKEN0 of ulp_inst_0_axi_noc_kernel0_0_bd_0ad1_M01_INI_stub_nmu_0_top : entity is "8'b00010100";
  attribute REG_RPOISON_TO_SLVERR : string;
  attribute REG_RPOISON_TO_SLVERR of ulp_inst_0_axi_noc_kernel0_0_bd_0ad1_M01_INI_stub_nmu_0_top : entity is "1'b0";
  attribute REG_RROB_RAM_SETTING : string;
  attribute REG_RROB_RAM_SETTING of ulp_inst_0_axi_noc_kernel0_0_bd_0ad1_M01_INI_stub_nmu_0_top : entity is "9'b000010010";
  attribute REG_SMID_SEL : string;
  attribute REG_SMID_SEL of ulp_inst_0_axi_noc_kernel0_0_bd_0ad1_M01_INI_stub_nmu_0_top : entity is "20'b00000000000000000000";
  attribute REG_SRC : string;
  attribute REG_SRC of ulp_inst_0_axi_noc_kernel0_0_bd_0ad1_M01_INI_stub_nmu_0_top : entity is "12'b000010000000";
  attribute REG_TBASE_AXI_TIMEOUT : string;
  attribute REG_TBASE_AXI_TIMEOUT of ulp_inst_0_axi_noc_kernel0_0_bd_0ad1_M01_INI_stub_nmu_0_top : entity is "3'b001";
  attribute REG_TBASE_MODE_RLIMIT_RD : string;
  attribute REG_TBASE_MODE_RLIMIT_RD of ulp_inst_0_axi_noc_kernel0_0_bd_0ad1_M01_INI_stub_nmu_0_top : entity is "3'b010";
  attribute REG_TBASE_MODE_RLIMIT_WR : string;
  attribute REG_TBASE_MODE_RLIMIT_WR of ulp_inst_0_axi_noc_kernel0_0_bd_0ad1_M01_INI_stub_nmu_0_top : entity is "3'b010";
  attribute REG_TBASE_TRK_TIMEOUT : string;
  attribute REG_TBASE_TRK_TIMEOUT of ulp_inst_0_axi_noc_kernel0_0_bd_0ad1_M01_INI_stub_nmu_0_top : entity is "3'b001";
  attribute REG_VC_MAP : string;
  attribute REG_VC_MAP of ulp_inst_0_axi_noc_kernel0_0_bd_0ad1_M01_INI_stub_nmu_0_top : entity is "12'b111110101100";
  attribute REG_WBUF_LAUNCH_SIZE : string;
  attribute REG_WBUF_LAUNCH_SIZE of ulp_inst_0_axi_noc_kernel0_0_bd_0ad1_M01_INI_stub_nmu_0_top : entity is "6'b010000";
  attribute REG_WBUF_RAM_SETTING : string;
  attribute REG_WBUF_RAM_SETTING of ulp_inst_0_axi_noc_kernel0_0_bd_0ad1_M01_INI_stub_nmu_0_top : entity is "9'b000010010";
  attribute REG_WR_AXPROT_SEL : string;
  attribute REG_WR_AXPROT_SEL of ulp_inst_0_axi_noc_kernel0_0_bd_0ad1_M01_INI_stub_nmu_0_top : entity is "6'b000000";
  attribute REG_WR_RATE_CREDIT_DROP : string;
  attribute REG_WR_RATE_CREDIT_DROP of ulp_inst_0_axi_noc_kernel0_0_bd_0ad1_M01_INI_stub_nmu_0_top : entity is "10'b0000000100";
  attribute REG_WR_RATE_CREDIT_LIMIT : string;
  attribute REG_WR_RATE_CREDIT_LIMIT of ulp_inst_0_axi_noc_kernel0_0_bd_0ad1_M01_INI_stub_nmu_0_top : entity is "13'b0000100000000";
  attribute REG_WR_VCA_TOKEN0 : string;
  attribute REG_WR_VCA_TOKEN0 of ulp_inst_0_axi_noc_kernel0_0_bd_0ad1_M01_INI_stub_nmu_0_top : entity is "8'b00010000";
end ulp_inst_0_axi_noc_kernel0_0_bd_0ad1_M01_INI_stub_nmu_0_top;

architecture STRUCTURE of ulp_inst_0_axi_noc_kernel0_0_bd_0ad1_M01_INI_stub_nmu_0_top is
  signal NLW_NOC_NMU512_INST_IF_NOC_AXI_RPOISON_UNCONNECTED : STD_LOGIC;
  signal NLW_NOC_NMU512_INST_IF_NOC_NPP_IN_NOC_CREDIT_RETURN_EN_UNCONNECTED : STD_LOGIC;
  signal NLW_NOC_NMU512_INST_IF_NOC_NPP_OUT_NOC_FLIT_EN_UNCONNECTED : STD_LOGIC;
  signal NLW_NOC_NMU512_INST_IF_NOC_NPP_OUT_NOC_VALID_EN_UNCONNECTED : STD_LOGIC;
  signal NLW_NOC_NMU512_INST_IF_NOC_AXI_BID_UNCONNECTED : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal NLW_NOC_NMU512_INST_IF_NOC_AXI_BUSER_UNCONNECTED : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal NLW_NOC_NMU512_INST_IF_NOC_AXI_RDATA_PAR_UNCONNECTED : STD_LOGIC_VECTOR ( 63 downto 0 );
  signal NLW_NOC_NMU512_INST_IF_NOC_AXI_RID_UNCONNECTED : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal NLW_NOC_NMU512_INST_IF_NOC_AXI_RUSER_UNCONNECTED : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal NLW_NOC_NMU512_INST_IF_NOC_AXI_TDEST_UNCONNECTED : STD_LOGIC_VECTOR ( 9 downto 0 );
  attribute BOX_TYPE : string;
  attribute BOX_TYPE of NOC_NMU512_INST : label is "PRIMITIVE";
  attribute DONT_TOUCH : boolean;
  attribute DONT_TOUCH of NOC_NMU512_INST : label is std.standard.true;
begin
NOC_NMU512_INST: unisim.vcomponents.NOC_NMU512
    generic map(
      REG_ADDR_DST0 => X"0000",
      REG_ADDR_DST1 => X"0000",
      REG_ADDR_DST10 => X"0000",
      REG_ADDR_DST11 => X"0000",
      REG_ADDR_DST12 => X"0000",
      REG_ADDR_DST13 => X"0000",
      REG_ADDR_DST14 => X"0000",
      REG_ADDR_DST15 => X"0000",
      REG_ADDR_DST2 => X"0000",
      REG_ADDR_DST3 => X"0000",
      REG_ADDR_DST4 => X"0000",
      REG_ADDR_DST5 => X"0000",
      REG_ADDR_DST6 => X"0000",
      REG_ADDR_DST7 => X"0000",
      REG_ADDR_DST8 => X"0000",
      REG_ADDR_DST9 => X"0000",
      REG_ADDR_ENABLE => X"0000",
      REG_ADDR_MADDR0 => X"00000000",
      REG_ADDR_MADDR1 => X"00000000",
      REG_ADDR_MADDR10 => X"00000000",
      REG_ADDR_MADDR11 => X"00000000",
      REG_ADDR_MADDR12 => X"00000000",
      REG_ADDR_MADDR13 => X"00000000",
      REG_ADDR_MADDR14 => X"00000000",
      REG_ADDR_MADDR15 => X"00000000",
      REG_ADDR_MADDR2 => X"00000000",
      REG_ADDR_MADDR3 => X"00000000",
      REG_ADDR_MADDR4 => X"00000000",
      REG_ADDR_MADDR5 => X"00000000",
      REG_ADDR_MADDR6 => X"00000000",
      REG_ADDR_MADDR7 => X"00000000",
      REG_ADDR_MADDR8 => X"00000000",
      REG_ADDR_MADDR9 => X"00000000",
      REG_ADDR_MASK0 => X"00000000",
      REG_ADDR_MASK1 => X"00000000",
      REG_ADDR_MASK10 => X"00000000",
      REG_ADDR_MASK11 => X"00000000",
      REG_ADDR_MASK12 => X"00000000",
      REG_ADDR_MASK13 => X"00000000",
      REG_ADDR_MASK14 => X"00000000",
      REG_ADDR_MASK15 => X"00000000",
      REG_ADDR_MASK2 => X"00000000",
      REG_ADDR_MASK3 => X"00000000",
      REG_ADDR_MASK4 => X"00000000",
      REG_ADDR_MASK5 => X"00000000",
      REG_ADDR_MASK6 => X"00000000",
      REG_ADDR_MASK7 => X"00000000",
      REG_ADDR_MASK8 => X"00000000",
      REG_ADDR_MASK9 => X"00000000",
      REG_ADDR_REMAP => X"0000",
      REG_ADDR_RPADDR0 => X"00000000",
      REG_ADDR_RPADDR1 => X"00000000",
      REG_ADDR_RPADDR10 => X"00000000",
      REG_ADDR_RPADDR11 => X"00000000",
      REG_ADDR_RPADDR12 => X"00000000",
      REG_ADDR_RPADDR13 => X"00000000",
      REG_ADDR_RPADDR14 => X"00000000",
      REG_ADDR_RPADDR15 => X"00000000",
      REG_ADDR_RPADDR2 => X"00000000",
      REG_ADDR_RPADDR3 => X"00000000",
      REG_ADDR_RPADDR4 => X"00000000",
      REG_ADDR_RPADDR5 => X"00000000",
      REG_ADDR_RPADDR6 => X"00000000",
      REG_ADDR_RPADDR7 => X"00000000",
      REG_ADDR_RPADDR8 => X"00000000",
      REG_ADDR_RPADDR9 => X"00000000",
      REG_ADR_MAP_CPM => X"FC0",
      REG_ADR_MAP_FPD_AFI_0 => X"FC0",
      REG_ADR_MAP_FPD_AFI_1 => X"FC0",
      REG_ADR_MAP_LPD_AFI_FS => X"FC0",
      REG_ADR_MAP_ME_ARRAY_0 => X"FC0",
      REG_ADR_MAP_ME_ARRAY_1 => X"FC0",
      REG_ADR_MAP_ME_ARRAY_2 => X"FC0",
      REG_ADR_MAP_ME_ARRAY_3 => X"FC0",
      REG_ADR_MAP_PCIE => X"FC0",
      REG_ADR_MAP_PMC => X"FC0",
      REG_ADR_MAP_PMC_ALIAS_0 => X"FC0",
      REG_ADR_MAP_PMC_ALIAS_1 => X"FC0",
      REG_ADR_MAP_PMC_ALIAS_2 => X"FC0",
      REG_ADR_MAP_PMC_ALIAS_3 => X"FC0",
      REG_ADR_MAP_QSPI => X"FC0",
      REG_ADR_MAP_STM_GIC => X"FC0",
      REG_ADR_MAP_XPDS => X"FC0",
      REG_AXI_NON_MOD_DISABLE => '0',
      REG_AXI_PAR_CHK => B"00",
      REG_CHOPSIZE => X"A",
      REG_DDR_ADR_MAP0 => B"110" & X"688",
      REG_DDR_ADR_MAP1 => B"001" & X"FFF",
      REG_DDR_ADR_MAP2 => B"001" & X"FFF",
      REG_DDR_ADR_MAP3 => B"001" & X"FFF",
      REG_DDR_ADR_MAP4 => B"001" & X"FFF",
      REG_DDR_ADR_MAP5 => B"001" & X"FFF",
      REG_DDR_ADR_MAP6 => B"001" & X"FFF",
      REG_DDR_DST_MAP0 => X"8C0",
      REG_DDR_DST_MAP1 => X"5C0",
      REG_DDR_DST_MAP2 => X"7C0",
      REG_DDR_DST_MAP3 => X"6C0",
      REG_DDR_DST_MAP4 => X"FC0",
      REG_DDR_DST_MAP5 => X"FC0",
      REG_DDR_DST_MAP6 => X"FC0",
      REG_DDR_DST_MAP7 => X"FC0",
      REG_DWIDTH => B"110",
      REG_ECC_CHK_EN => '1',
      REG_HBM_MAP_T0_CH0 => X"FC0",
      REG_HBM_MAP_T0_CH1 => X"FC0",
      REG_HBM_MAP_T0_CH10 => X"FC0",
      REG_HBM_MAP_T0_CH11 => X"FC0",
      REG_HBM_MAP_T0_CH12 => X"FC0",
      REG_HBM_MAP_T0_CH13 => X"FC0",
      REG_HBM_MAP_T0_CH14 => X"FC0",
      REG_HBM_MAP_T0_CH15 => X"FC0",
      REG_HBM_MAP_T0_CH2 => X"FC0",
      REG_HBM_MAP_T0_CH3 => X"FC0",
      REG_HBM_MAP_T0_CH4 => X"FC0",
      REG_HBM_MAP_T0_CH5 => X"FC0",
      REG_HBM_MAP_T0_CH6 => X"FC0",
      REG_HBM_MAP_T0_CH7 => X"FC0",
      REG_HBM_MAP_T0_CH8 => X"FC0",
      REG_HBM_MAP_T0_CH9 => X"FC0",
      REG_HBM_MAP_T1_CH0 => X"FC0",
      REG_HBM_MAP_T1_CH1 => X"FC0",
      REG_HBM_MAP_T1_CH10 => X"FC0",
      REG_HBM_MAP_T1_CH11 => X"FC0",
      REG_HBM_MAP_T1_CH12 => X"FC0",
      REG_HBM_MAP_T1_CH13 => X"FC0",
      REG_HBM_MAP_T1_CH14 => X"FC0",
      REG_HBM_MAP_T1_CH15 => X"FC0",
      REG_HBM_MAP_T1_CH2 => X"FC0",
      REG_HBM_MAP_T1_CH3 => X"FC0",
      REG_HBM_MAP_T1_CH4 => X"FC0",
      REG_HBM_MAP_T1_CH5 => X"FC0",
      REG_HBM_MAP_T1_CH6 => X"FC0",
      REG_HBM_MAP_T1_CH7 => X"FC0",
      REG_HBM_MAP_T1_CH8 => X"FC0",
      REG_HBM_MAP_T1_CH9 => X"FC0",
      REG_HBM_MAP_T2_CH0 => X"FC0",
      REG_HBM_MAP_T2_CH1 => X"FC0",
      REG_HBM_MAP_T2_CH10 => X"FC0",
      REG_HBM_MAP_T2_CH11 => X"FC0",
      REG_HBM_MAP_T2_CH12 => X"FC0",
      REG_HBM_MAP_T2_CH13 => X"FC0",
      REG_HBM_MAP_T2_CH14 => X"FC0",
      REG_HBM_MAP_T2_CH15 => X"FC0",
      REG_HBM_MAP_T2_CH2 => X"FC0",
      REG_HBM_MAP_T2_CH3 => X"FC0",
      REG_HBM_MAP_T2_CH4 => X"FC0",
      REG_HBM_MAP_T2_CH5 => X"FC0",
      REG_HBM_MAP_T2_CH6 => X"FC0",
      REG_HBM_MAP_T2_CH7 => X"FC0",
      REG_HBM_MAP_T2_CH8 => X"FC0",
      REG_HBM_MAP_T2_CH9 => X"FC0",
      REG_HBM_MAP_T3_CH0 => X"FC0",
      REG_HBM_MAP_T3_CH1 => X"FC0",
      REG_HBM_MAP_T3_CH10 => X"FC0",
      REG_HBM_MAP_T3_CH11 => X"FC0",
      REG_HBM_MAP_T3_CH12 => X"FC0",
      REG_HBM_MAP_T3_CH13 => X"FC0",
      REG_HBM_MAP_T3_CH14 => X"FC0",
      REG_HBM_MAP_T3_CH15 => X"FC0",
      REG_HBM_MAP_T3_CH2 => X"FC0",
      REG_HBM_MAP_T3_CH3 => X"FC0",
      REG_HBM_MAP_T3_CH4 => X"FC0",
      REG_HBM_MAP_T3_CH5 => X"FC0",
      REG_HBM_MAP_T3_CH6 => X"FC0",
      REG_HBM_MAP_T3_CH7 => X"FC0",
      REG_HBM_MAP_T3_CH8 => X"FC0",
      REG_HBM_MAP_T3_CH9 => X"FC0",
      REG_MODE_SELECT => X"0000",
      REG_OUTSTANDING_RD_TXN => B"100" & X"0",
      REG_OUTSTANDING_WR_TXN => B"100" & X"0",
      REG_PRIORITY => B"00",
      REG_RD_AXPROT_SEL => B"00" & X"0",
      REG_RD_RATE_CREDIT_DROP => B"00" & X"04",
      REG_RD_RATE_CREDIT_LIMIT => B"0" & X"100",
      REG_RD_VCA_TOKEN0 => X"14",
      REG_RPOISON_TO_SLVERR => '0',
      REG_RROB_RAM_SETTING => B"0" & X"12",
      REG_SMID_SEL => X"00000",
      REG_SRC => X"080",
      REG_TBASE_AXI_TIMEOUT => X"1",
      REG_TBASE_MODE_RLIMIT_RD => B"010",
      REG_TBASE_MODE_RLIMIT_WR => B"010",
      REG_TBASE_TRK_TIMEOUT => X"1",
      REG_VC_MAP => X"FAC",
      REG_WBUF_LAUNCH_SIZE => B"01" & X"0",
      REG_WBUF_RAM_SETTING => B"0" & X"12",
      REG_WR_AXPROT_SEL => B"00" & X"0",
      REG_WR_RATE_CREDIT_DROP => B"00" & X"04",
      REG_WR_RATE_CREDIT_LIMIT => B"0" & X"100",
      REG_WR_VCA_TOKEN0 => X"10"
    )
        port map (
      CLK => aclk,
      IF_NOC_AXI_ARADDR(63 downto 1) => B"000000000000000000000000000000000000000000000000000000000000000",
      IF_NOC_AXI_ARADDR(0) => IF_NOC_AXI_ARADDR(0),
      IF_NOC_AXI_ARADDR_PAR(7 downto 0) => B"00000000",
      IF_NOC_AXI_ARBURST(1 downto 0) => IF_NOC_AXI_ARBURST(1 downto 0),
      IF_NOC_AXI_ARCACHE(3 downto 0) => IF_NOC_AXI_ARCACHE(3 downto 0),
      IF_NOC_AXI_ARID(15 downto 0) => B"0000000000000000",
      IF_NOC_AXI_ARLEN(7 downto 0) => IF_NOC_AXI_ARLEN(7 downto 0),
      IF_NOC_AXI_ARLOCK(0) => IF_NOC_AXI_ARLOCK(0),
      IF_NOC_AXI_ARPROT(2 downto 0) => IF_NOC_AXI_ARPROT(2 downto 0),
      IF_NOC_AXI_ARQOS(3 downto 0) => IF_NOC_AXI_ARQOS(3 downto 0),
      IF_NOC_AXI_ARREADY => IF_NOC_AXI_ARREADY,
      IF_NOC_AXI_ARREGION(3 downto 0) => IF_NOC_AXI_ARREGION(3 downto 0),
      IF_NOC_AXI_ARSIZE(2 downto 0) => IF_NOC_AXI_ARSIZE(2 downto 0),
      IF_NOC_AXI_ARUSER(15 downto 0) => B"0000000000000000",
      IF_NOC_AXI_ARVALID => IF_NOC_AXI_ARVALID,
      IF_NOC_AXI_AWADDR(63 downto 1) => B"000000000000000000000000000000000000000000000000000000000000000",
      IF_NOC_AXI_AWADDR(0) => IF_NOC_AXI_AWADDR(0),
      IF_NOC_AXI_AWADDR_PAR(7 downto 0) => B"00000000",
      IF_NOC_AXI_AWBURST(1 downto 0) => IF_NOC_AXI_AWBURST(1 downto 0),
      IF_NOC_AXI_AWCACHE(3 downto 0) => IF_NOC_AXI_AWCACHE(3 downto 0),
      IF_NOC_AXI_AWID(15 downto 0) => B"0000000000000000",
      IF_NOC_AXI_AWLEN(7 downto 0) => IF_NOC_AXI_AWLEN(7 downto 0),
      IF_NOC_AXI_AWLOCK(0) => IF_NOC_AXI_AWLOCK(0),
      IF_NOC_AXI_AWPROT(2 downto 0) => IF_NOC_AXI_AWPROT(2 downto 0),
      IF_NOC_AXI_AWQOS(3 downto 0) => IF_NOC_AXI_AWQOS(3 downto 0),
      IF_NOC_AXI_AWREADY => IF_NOC_AXI_AWREADY,
      IF_NOC_AXI_AWREGION(3 downto 0) => IF_NOC_AXI_AWREGION(3 downto 0),
      IF_NOC_AXI_AWSIZE(2 downto 0) => IF_NOC_AXI_AWSIZE(2 downto 0),
      IF_NOC_AXI_AWUSER(15 downto 0) => B"0000000000000000",
      IF_NOC_AXI_AWVALID => IF_NOC_AXI_AWVALID,
      IF_NOC_AXI_BID(15 downto 0) => NLW_NOC_NMU512_INST_IF_NOC_AXI_BID_UNCONNECTED(15 downto 0),
      IF_NOC_AXI_BREADY => IF_NOC_AXI_BREADY,
      IF_NOC_AXI_BRESP(1 downto 0) => IF_NOC_AXI_BRESP(1 downto 0),
      IF_NOC_AXI_BUSER(15 downto 0) => NLW_NOC_NMU512_INST_IF_NOC_AXI_BUSER_UNCONNECTED(15 downto 0),
      IF_NOC_AXI_BVALID => IF_NOC_AXI_BVALID,
      IF_NOC_AXI_RDATA(511 downto 0) => IF_NOC_AXI_RDATA(511 downto 0),
      IF_NOC_AXI_RDATA_PAR(63 downto 0) => NLW_NOC_NMU512_INST_IF_NOC_AXI_RDATA_PAR_UNCONNECTED(63 downto 0),
      IF_NOC_AXI_RID(15 downto 0) => NLW_NOC_NMU512_INST_IF_NOC_AXI_RID_UNCONNECTED(15 downto 0),
      IF_NOC_AXI_RLAST(0) => IF_NOC_AXI_RLAST(0),
      IF_NOC_AXI_RPOISON => NLW_NOC_NMU512_INST_IF_NOC_AXI_RPOISON_UNCONNECTED,
      IF_NOC_AXI_RREADY => IF_NOC_AXI_RREADY,
      IF_NOC_AXI_RRESP(1 downto 0) => IF_NOC_AXI_RRESP(1 downto 0),
      IF_NOC_AXI_RUSER(15 downto 0) => NLW_NOC_NMU512_INST_IF_NOC_AXI_RUSER_UNCONNECTED(15 downto 0),
      IF_NOC_AXI_RVALID => IF_NOC_AXI_RVALID,
      IF_NOC_AXI_TDEST(9 downto 0) => NLW_NOC_NMU512_INST_IF_NOC_AXI_TDEST_UNCONNECTED(9 downto 0),
      IF_NOC_AXI_WDATA(511 downto 0) => IF_NOC_AXI_WDATA(511 downto 0),
      IF_NOC_AXI_WDATA_PAR(63 downto 0) => B"0000000000000000000000000000000000000000000000000000000000000000",
      IF_NOC_AXI_WID(15 downto 0) => B"0000000000000000",
      IF_NOC_AXI_WLAST(0) => IF_NOC_AXI_WLAST(0),
      IF_NOC_AXI_WPOISON => '0',
      IF_NOC_AXI_WREADY => IF_NOC_AXI_WREADY,
      IF_NOC_AXI_WSTRB(63 downto 0) => IF_NOC_AXI_WSTRB(63 downto 0),
      IF_NOC_AXI_WUSER(15 downto 0) => B"0000000000000000",
      IF_NOC_AXI_WVALID => IF_NOC_AXI_WVALID,
      IF_NOC_NPP_IN_NOC_CREDIT_RDY => IF_NOC_NPP_IN_NOC_CREDIT_RDY,
      IF_NOC_NPP_IN_NOC_CREDIT_RETURN(7 downto 0) => IF_NOC_NPP_IN_NOC_CREDIT_RETURN(7 downto 0),
      IF_NOC_NPP_IN_NOC_CREDIT_RETURN_EN => NLW_NOC_NMU512_INST_IF_NOC_NPP_IN_NOC_CREDIT_RETURN_EN_UNCONNECTED,
      IF_NOC_NPP_IN_NOC_FLIT(181 downto 0) => IF_NOC_NPP_IN_NOC_FLIT(181 downto 0),
      IF_NOC_NPP_IN_NOC_FLIT_EN => '1',
      IF_NOC_NPP_IN_NOC_VALID(7 downto 0) => IF_NOC_NPP_IN_NOC_VALID(7 downto 0),
      IF_NOC_NPP_IN_NOC_VALID_EN => '1',
      IF_NOC_NPP_OUT_NOC_CREDIT_RDY => IF_NOC_NPP_OUT_NOC_CREDIT_RDY,
      IF_NOC_NPP_OUT_NOC_CREDIT_RETURN(7 downto 0) => IF_NOC_NPP_OUT_NOC_CREDIT_RETURN(7 downto 0),
      IF_NOC_NPP_OUT_NOC_CREDIT_RETURN_EN => '1',
      IF_NOC_NPP_OUT_NOC_FLIT(181 downto 0) => IF_NOC_NPP_OUT_NOC_FLIT(181 downto 0),
      IF_NOC_NPP_OUT_NOC_FLIT_EN => NLW_NOC_NMU512_INST_IF_NOC_NPP_OUT_NOC_FLIT_EN_UNCONNECTED,
      IF_NOC_NPP_OUT_NOC_VALID(7 downto 0) => IF_NOC_NPP_OUT_NOC_VALID(7 downto 0),
      IF_NOC_NPP_OUT_NOC_VALID_EN => NLW_NOC_NMU512_INST_IF_NOC_NPP_OUT_NOC_VALID_EN_UNCONNECTED,
      NMU => NMU,
      NMU_RD_DEST_MODE => NMU_RD_DEST_MODE,
      NMU_RD_USR_DST(11 downto 0) => NMU_RD_USR_DST(11 downto 0),
      NMU_USR_INTERRUPT_IN(3 downto 0) => B"0000",
      NMU_WR_DEST_MODE => NMU_WR_DEST_MODE,
      NMU_WR_USR_DST(11 downto 0) => NMU_WR_USR_DST(11 downto 0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity ulp_inst_0_axi_noc_kernel0_0_bd_0ad1_M02_INI_stub_nmu_0_top is
  port (
    IF_NOC_AXI_WVALID : in STD_LOGIC;
    IF_NOC_AXI_WREADY : out STD_LOGIC;
    IF_NOC_AXI_WLAST : in STD_LOGIC_VECTOR ( 0 to 0 );
    IF_NOC_AXI_WDATA : in STD_LOGIC_VECTOR ( 511 downto 0 );
    IF_NOC_AXI_WSTRB : in STD_LOGIC_VECTOR ( 63 downto 0 );
    IF_NOC_AXI_ARREADY : out STD_LOGIC;
    IF_NOC_AXI_AWREADY : out STD_LOGIC;
    IF_NOC_AXI_BRESP : out STD_LOGIC_VECTOR ( 1 downto 0 );
    IF_NOC_AXI_BVALID : out STD_LOGIC;
    IF_NOC_AXI_RDATA : out STD_LOGIC_VECTOR ( 511 downto 0 );
    IF_NOC_AXI_RLAST : out STD_LOGIC_VECTOR ( 0 to 0 );
    IF_NOC_AXI_RRESP : out STD_LOGIC_VECTOR ( 1 downto 0 );
    IF_NOC_AXI_RVALID : out STD_LOGIC;
    IF_NOC_NPP_IN_NOC_CREDIT_RETURN : out STD_LOGIC_VECTOR ( 7 downto 0 );
    IF_NOC_NPP_OUT_NOC_CREDIT_RDY : out STD_LOGIC;
    IF_NOC_NPP_OUT_NOC_FLIT : out STD_LOGIC_VECTOR ( 181 downto 0 );
    IF_NOC_NPP_OUT_NOC_VALID : out STD_LOGIC_VECTOR ( 7 downto 0 );
    aclk : in STD_LOGIC;
    IF_NOC_AXI_ARADDR : in STD_LOGIC_VECTOR ( 0 to 0 );
    IF_NOC_AXI_ARBURST : in STD_LOGIC_VECTOR ( 1 downto 0 );
    IF_NOC_AXI_ARCACHE : in STD_LOGIC_VECTOR ( 3 downto 0 );
    IF_NOC_AXI_ARLEN : in STD_LOGIC_VECTOR ( 7 downto 0 );
    IF_NOC_AXI_ARLOCK : in STD_LOGIC_VECTOR ( 0 to 0 );
    IF_NOC_AXI_ARPROT : in STD_LOGIC_VECTOR ( 2 downto 0 );
    IF_NOC_AXI_ARQOS : in STD_LOGIC_VECTOR ( 3 downto 0 );
    IF_NOC_AXI_ARREGION : in STD_LOGIC_VECTOR ( 3 downto 0 );
    IF_NOC_AXI_ARSIZE : in STD_LOGIC_VECTOR ( 2 downto 0 );
    NMU_RD_DEST_MODE : in STD_LOGIC;
    NMU_WR_DEST_MODE : in STD_LOGIC;
    IF_NOC_AXI_ARVALID : in STD_LOGIC;
    IF_NOC_AXI_AWADDR : in STD_LOGIC_VECTOR ( 0 to 0 );
    IF_NOC_AXI_AWBURST : in STD_LOGIC_VECTOR ( 1 downto 0 );
    IF_NOC_AXI_AWCACHE : in STD_LOGIC_VECTOR ( 3 downto 0 );
    IF_NOC_AXI_AWLEN : in STD_LOGIC_VECTOR ( 7 downto 0 );
    IF_NOC_AXI_AWLOCK : in STD_LOGIC_VECTOR ( 0 to 0 );
    IF_NOC_AXI_AWPROT : in STD_LOGIC_VECTOR ( 2 downto 0 );
    IF_NOC_AXI_AWQOS : in STD_LOGIC_VECTOR ( 3 downto 0 );
    IF_NOC_AXI_AWREGION : in STD_LOGIC_VECTOR ( 3 downto 0 );
    IF_NOC_AXI_AWSIZE : in STD_LOGIC_VECTOR ( 2 downto 0 );
    IF_NOC_AXI_AWVALID : in STD_LOGIC;
    IF_NOC_AXI_BREADY : in STD_LOGIC;
    IF_NOC_AXI_RREADY : in STD_LOGIC;
    IF_NOC_NPP_IN_NOC_CREDIT_RDY : in STD_LOGIC;
    IF_NOC_NPP_IN_NOC_FLIT : in STD_LOGIC_VECTOR ( 181 downto 0 );
    IF_NOC_NPP_IN_NOC_VALID : in STD_LOGIC_VECTOR ( 7 downto 0 );
    IF_NOC_NPP_OUT_NOC_CREDIT_RETURN : in STD_LOGIC_VECTOR ( 7 downto 0 );
    NMU : out STD_LOGIC;
    NMU_WR_USR_DST : in STD_LOGIC_VECTOR ( 11 downto 0 );
    NMU_RD_USR_DST : in STD_LOGIC_VECTOR ( 11 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of ulp_inst_0_axi_noc_kernel0_0_bd_0ad1_M02_INI_stub_nmu_0_top : entity is "bd_0ad1_M02_INI_stub_nmu_0_top";
  attribute REG_ADDR_DST0 : string;
  attribute REG_ADDR_DST0 of ulp_inst_0_axi_noc_kernel0_0_bd_0ad1_M02_INI_stub_nmu_0_top : entity is "16'b0000000000000000";
  attribute REG_ADDR_DST1 : string;
  attribute REG_ADDR_DST1 of ulp_inst_0_axi_noc_kernel0_0_bd_0ad1_M02_INI_stub_nmu_0_top : entity is "16'b0000000000000000";
  attribute REG_ADDR_DST10 : string;
  attribute REG_ADDR_DST10 of ulp_inst_0_axi_noc_kernel0_0_bd_0ad1_M02_INI_stub_nmu_0_top : entity is "16'b0000000000000000";
  attribute REG_ADDR_DST11 : string;
  attribute REG_ADDR_DST11 of ulp_inst_0_axi_noc_kernel0_0_bd_0ad1_M02_INI_stub_nmu_0_top : entity is "16'b0000000000000000";
  attribute REG_ADDR_DST12 : string;
  attribute REG_ADDR_DST12 of ulp_inst_0_axi_noc_kernel0_0_bd_0ad1_M02_INI_stub_nmu_0_top : entity is "16'b0000000000000000";
  attribute REG_ADDR_DST13 : string;
  attribute REG_ADDR_DST13 of ulp_inst_0_axi_noc_kernel0_0_bd_0ad1_M02_INI_stub_nmu_0_top : entity is "16'b0000000000000000";
  attribute REG_ADDR_DST14 : string;
  attribute REG_ADDR_DST14 of ulp_inst_0_axi_noc_kernel0_0_bd_0ad1_M02_INI_stub_nmu_0_top : entity is "16'b0000000000000000";
  attribute REG_ADDR_DST15 : string;
  attribute REG_ADDR_DST15 of ulp_inst_0_axi_noc_kernel0_0_bd_0ad1_M02_INI_stub_nmu_0_top : entity is "16'b0000000000000000";
  attribute REG_ADDR_DST2 : string;
  attribute REG_ADDR_DST2 of ulp_inst_0_axi_noc_kernel0_0_bd_0ad1_M02_INI_stub_nmu_0_top : entity is "16'b0000000000000000";
  attribute REG_ADDR_DST3 : string;
  attribute REG_ADDR_DST3 of ulp_inst_0_axi_noc_kernel0_0_bd_0ad1_M02_INI_stub_nmu_0_top : entity is "16'b0000000000000000";
  attribute REG_ADDR_DST4 : string;
  attribute REG_ADDR_DST4 of ulp_inst_0_axi_noc_kernel0_0_bd_0ad1_M02_INI_stub_nmu_0_top : entity is "16'b0000000000000000";
  attribute REG_ADDR_DST5 : string;
  attribute REG_ADDR_DST5 of ulp_inst_0_axi_noc_kernel0_0_bd_0ad1_M02_INI_stub_nmu_0_top : entity is "16'b0000000000000000";
  attribute REG_ADDR_DST6 : string;
  attribute REG_ADDR_DST6 of ulp_inst_0_axi_noc_kernel0_0_bd_0ad1_M02_INI_stub_nmu_0_top : entity is "16'b0000000000000000";
  attribute REG_ADDR_DST7 : string;
  attribute REG_ADDR_DST7 of ulp_inst_0_axi_noc_kernel0_0_bd_0ad1_M02_INI_stub_nmu_0_top : entity is "16'b0000000000000000";
  attribute REG_ADDR_DST8 : string;
  attribute REG_ADDR_DST8 of ulp_inst_0_axi_noc_kernel0_0_bd_0ad1_M02_INI_stub_nmu_0_top : entity is "16'b0000000000000000";
  attribute REG_ADDR_DST9 : string;
  attribute REG_ADDR_DST9 of ulp_inst_0_axi_noc_kernel0_0_bd_0ad1_M02_INI_stub_nmu_0_top : entity is "16'b0000000000000000";
  attribute REG_ADDR_ENABLE : string;
  attribute REG_ADDR_ENABLE of ulp_inst_0_axi_noc_kernel0_0_bd_0ad1_M02_INI_stub_nmu_0_top : entity is "16'b0000000000000000";
  attribute REG_ADDR_MADDR0 : string;
  attribute REG_ADDR_MADDR0 of ulp_inst_0_axi_noc_kernel0_0_bd_0ad1_M02_INI_stub_nmu_0_top : entity is "32'b00000000000000000000000000000000";
  attribute REG_ADDR_MADDR1 : string;
  attribute REG_ADDR_MADDR1 of ulp_inst_0_axi_noc_kernel0_0_bd_0ad1_M02_INI_stub_nmu_0_top : entity is "32'b00000000000000000000000000000000";
  attribute REG_ADDR_MADDR10 : string;
  attribute REG_ADDR_MADDR10 of ulp_inst_0_axi_noc_kernel0_0_bd_0ad1_M02_INI_stub_nmu_0_top : entity is "32'b00000000000000000000000000000000";
  attribute REG_ADDR_MADDR11 : string;
  attribute REG_ADDR_MADDR11 of ulp_inst_0_axi_noc_kernel0_0_bd_0ad1_M02_INI_stub_nmu_0_top : entity is "32'b00000000000000000000000000000000";
  attribute REG_ADDR_MADDR12 : string;
  attribute REG_ADDR_MADDR12 of ulp_inst_0_axi_noc_kernel0_0_bd_0ad1_M02_INI_stub_nmu_0_top : entity is "32'b00000000000000000000000000000000";
  attribute REG_ADDR_MADDR13 : string;
  attribute REG_ADDR_MADDR13 of ulp_inst_0_axi_noc_kernel0_0_bd_0ad1_M02_INI_stub_nmu_0_top : entity is "32'b00000000000000000000000000000000";
  attribute REG_ADDR_MADDR14 : string;
  attribute REG_ADDR_MADDR14 of ulp_inst_0_axi_noc_kernel0_0_bd_0ad1_M02_INI_stub_nmu_0_top : entity is "32'b00000000000000000000000000000000";
  attribute REG_ADDR_MADDR15 : string;
  attribute REG_ADDR_MADDR15 of ulp_inst_0_axi_noc_kernel0_0_bd_0ad1_M02_INI_stub_nmu_0_top : entity is "32'b00000000000000000000000000000000";
  attribute REG_ADDR_MADDR2 : string;
  attribute REG_ADDR_MADDR2 of ulp_inst_0_axi_noc_kernel0_0_bd_0ad1_M02_INI_stub_nmu_0_top : entity is "32'b00000000000000000000000000000000";
  attribute REG_ADDR_MADDR3 : string;
  attribute REG_ADDR_MADDR3 of ulp_inst_0_axi_noc_kernel0_0_bd_0ad1_M02_INI_stub_nmu_0_top : entity is "32'b00000000000000000000000000000000";
  attribute REG_ADDR_MADDR4 : string;
  attribute REG_ADDR_MADDR4 of ulp_inst_0_axi_noc_kernel0_0_bd_0ad1_M02_INI_stub_nmu_0_top : entity is "32'b00000000000000000000000000000000";
  attribute REG_ADDR_MADDR5 : string;
  attribute REG_ADDR_MADDR5 of ulp_inst_0_axi_noc_kernel0_0_bd_0ad1_M02_INI_stub_nmu_0_top : entity is "32'b00000000000000000000000000000000";
  attribute REG_ADDR_MADDR6 : string;
  attribute REG_ADDR_MADDR6 of ulp_inst_0_axi_noc_kernel0_0_bd_0ad1_M02_INI_stub_nmu_0_top : entity is "32'b00000000000000000000000000000000";
  attribute REG_ADDR_MADDR7 : string;
  attribute REG_ADDR_MADDR7 of ulp_inst_0_axi_noc_kernel0_0_bd_0ad1_M02_INI_stub_nmu_0_top : entity is "32'b00000000000000000000000000000000";
  attribute REG_ADDR_MADDR8 : string;
  attribute REG_ADDR_MADDR8 of ulp_inst_0_axi_noc_kernel0_0_bd_0ad1_M02_INI_stub_nmu_0_top : entity is "32'b00000000000000000000000000000000";
  attribute REG_ADDR_MADDR9 : string;
  attribute REG_ADDR_MADDR9 of ulp_inst_0_axi_noc_kernel0_0_bd_0ad1_M02_INI_stub_nmu_0_top : entity is "32'b00000000000000000000000000000000";
  attribute REG_ADDR_MASK0 : string;
  attribute REG_ADDR_MASK0 of ulp_inst_0_axi_noc_kernel0_0_bd_0ad1_M02_INI_stub_nmu_0_top : entity is "32'b00000000000000000000000000000000";
  attribute REG_ADDR_MASK1 : string;
  attribute REG_ADDR_MASK1 of ulp_inst_0_axi_noc_kernel0_0_bd_0ad1_M02_INI_stub_nmu_0_top : entity is "32'b00000000000000000000000000000000";
  attribute REG_ADDR_MASK10 : string;
  attribute REG_ADDR_MASK10 of ulp_inst_0_axi_noc_kernel0_0_bd_0ad1_M02_INI_stub_nmu_0_top : entity is "32'b00000000000000000000000000000000";
  attribute REG_ADDR_MASK11 : string;
  attribute REG_ADDR_MASK11 of ulp_inst_0_axi_noc_kernel0_0_bd_0ad1_M02_INI_stub_nmu_0_top : entity is "32'b00000000000000000000000000000000";
  attribute REG_ADDR_MASK12 : string;
  attribute REG_ADDR_MASK12 of ulp_inst_0_axi_noc_kernel0_0_bd_0ad1_M02_INI_stub_nmu_0_top : entity is "32'b00000000000000000000000000000000";
  attribute REG_ADDR_MASK13 : string;
  attribute REG_ADDR_MASK13 of ulp_inst_0_axi_noc_kernel0_0_bd_0ad1_M02_INI_stub_nmu_0_top : entity is "32'b00000000000000000000000000000000";
  attribute REG_ADDR_MASK14 : string;
  attribute REG_ADDR_MASK14 of ulp_inst_0_axi_noc_kernel0_0_bd_0ad1_M02_INI_stub_nmu_0_top : entity is "32'b00000000000000000000000000000000";
  attribute REG_ADDR_MASK15 : string;
  attribute REG_ADDR_MASK15 of ulp_inst_0_axi_noc_kernel0_0_bd_0ad1_M02_INI_stub_nmu_0_top : entity is "32'b00000000000000000000000000000000";
  attribute REG_ADDR_MASK2 : string;
  attribute REG_ADDR_MASK2 of ulp_inst_0_axi_noc_kernel0_0_bd_0ad1_M02_INI_stub_nmu_0_top : entity is "32'b00000000000000000000000000000000";
  attribute REG_ADDR_MASK3 : string;
  attribute REG_ADDR_MASK3 of ulp_inst_0_axi_noc_kernel0_0_bd_0ad1_M02_INI_stub_nmu_0_top : entity is "32'b00000000000000000000000000000000";
  attribute REG_ADDR_MASK4 : string;
  attribute REG_ADDR_MASK4 of ulp_inst_0_axi_noc_kernel0_0_bd_0ad1_M02_INI_stub_nmu_0_top : entity is "32'b00000000000000000000000000000000";
  attribute REG_ADDR_MASK5 : string;
  attribute REG_ADDR_MASK5 of ulp_inst_0_axi_noc_kernel0_0_bd_0ad1_M02_INI_stub_nmu_0_top : entity is "32'b00000000000000000000000000000000";
  attribute REG_ADDR_MASK6 : string;
  attribute REG_ADDR_MASK6 of ulp_inst_0_axi_noc_kernel0_0_bd_0ad1_M02_INI_stub_nmu_0_top : entity is "32'b00000000000000000000000000000000";
  attribute REG_ADDR_MASK7 : string;
  attribute REG_ADDR_MASK7 of ulp_inst_0_axi_noc_kernel0_0_bd_0ad1_M02_INI_stub_nmu_0_top : entity is "32'b00000000000000000000000000000000";
  attribute REG_ADDR_MASK8 : string;
  attribute REG_ADDR_MASK8 of ulp_inst_0_axi_noc_kernel0_0_bd_0ad1_M02_INI_stub_nmu_0_top : entity is "32'b00000000000000000000000000000000";
  attribute REG_ADDR_MASK9 : string;
  attribute REG_ADDR_MASK9 of ulp_inst_0_axi_noc_kernel0_0_bd_0ad1_M02_INI_stub_nmu_0_top : entity is "32'b00000000000000000000000000000000";
  attribute REG_ADDR_REMAP : string;
  attribute REG_ADDR_REMAP of ulp_inst_0_axi_noc_kernel0_0_bd_0ad1_M02_INI_stub_nmu_0_top : entity is "16'b0000000000000000";
  attribute REG_ADDR_RPADDR0 : string;
  attribute REG_ADDR_RPADDR0 of ulp_inst_0_axi_noc_kernel0_0_bd_0ad1_M02_INI_stub_nmu_0_top : entity is "32'b00000000000000000000000000000000";
  attribute REG_ADDR_RPADDR1 : string;
  attribute REG_ADDR_RPADDR1 of ulp_inst_0_axi_noc_kernel0_0_bd_0ad1_M02_INI_stub_nmu_0_top : entity is "32'b00000000000000000000000000000000";
  attribute REG_ADDR_RPADDR10 : string;
  attribute REG_ADDR_RPADDR10 of ulp_inst_0_axi_noc_kernel0_0_bd_0ad1_M02_INI_stub_nmu_0_top : entity is "32'b00000000000000000000000000000000";
  attribute REG_ADDR_RPADDR11 : string;
  attribute REG_ADDR_RPADDR11 of ulp_inst_0_axi_noc_kernel0_0_bd_0ad1_M02_INI_stub_nmu_0_top : entity is "32'b00000000000000000000000000000000";
  attribute REG_ADDR_RPADDR12 : string;
  attribute REG_ADDR_RPADDR12 of ulp_inst_0_axi_noc_kernel0_0_bd_0ad1_M02_INI_stub_nmu_0_top : entity is "32'b00000000000000000000000000000000";
  attribute REG_ADDR_RPADDR13 : string;
  attribute REG_ADDR_RPADDR13 of ulp_inst_0_axi_noc_kernel0_0_bd_0ad1_M02_INI_stub_nmu_0_top : entity is "32'b00000000000000000000000000000000";
  attribute REG_ADDR_RPADDR14 : string;
  attribute REG_ADDR_RPADDR14 of ulp_inst_0_axi_noc_kernel0_0_bd_0ad1_M02_INI_stub_nmu_0_top : entity is "32'b00000000000000000000000000000000";
  attribute REG_ADDR_RPADDR15 : string;
  attribute REG_ADDR_RPADDR15 of ulp_inst_0_axi_noc_kernel0_0_bd_0ad1_M02_INI_stub_nmu_0_top : entity is "32'b00000000000000000000000000000000";
  attribute REG_ADDR_RPADDR2 : string;
  attribute REG_ADDR_RPADDR2 of ulp_inst_0_axi_noc_kernel0_0_bd_0ad1_M02_INI_stub_nmu_0_top : entity is "32'b00000000000000000000000000000000";
  attribute REG_ADDR_RPADDR3 : string;
  attribute REG_ADDR_RPADDR3 of ulp_inst_0_axi_noc_kernel0_0_bd_0ad1_M02_INI_stub_nmu_0_top : entity is "32'b00000000000000000000000000000000";
  attribute REG_ADDR_RPADDR4 : string;
  attribute REG_ADDR_RPADDR4 of ulp_inst_0_axi_noc_kernel0_0_bd_0ad1_M02_INI_stub_nmu_0_top : entity is "32'b00000000000000000000000000000000";
  attribute REG_ADDR_RPADDR5 : string;
  attribute REG_ADDR_RPADDR5 of ulp_inst_0_axi_noc_kernel0_0_bd_0ad1_M02_INI_stub_nmu_0_top : entity is "32'b00000000000000000000000000000000";
  attribute REG_ADDR_RPADDR6 : string;
  attribute REG_ADDR_RPADDR6 of ulp_inst_0_axi_noc_kernel0_0_bd_0ad1_M02_INI_stub_nmu_0_top : entity is "32'b00000000000000000000000000000000";
  attribute REG_ADDR_RPADDR7 : string;
  attribute REG_ADDR_RPADDR7 of ulp_inst_0_axi_noc_kernel0_0_bd_0ad1_M02_INI_stub_nmu_0_top : entity is "32'b00000000000000000000000000000000";
  attribute REG_ADDR_RPADDR8 : string;
  attribute REG_ADDR_RPADDR8 of ulp_inst_0_axi_noc_kernel0_0_bd_0ad1_M02_INI_stub_nmu_0_top : entity is "32'b00000000000000000000000000000000";
  attribute REG_ADDR_RPADDR9 : string;
  attribute REG_ADDR_RPADDR9 of ulp_inst_0_axi_noc_kernel0_0_bd_0ad1_M02_INI_stub_nmu_0_top : entity is "32'b00000000000000000000000000000000";
  attribute REG_ADR_MAP_CPM : string;
  attribute REG_ADR_MAP_CPM of ulp_inst_0_axi_noc_kernel0_0_bd_0ad1_M02_INI_stub_nmu_0_top : entity is "12'b111111000000";
  attribute REG_ADR_MAP_FPD_AFI_0 : string;
  attribute REG_ADR_MAP_FPD_AFI_0 of ulp_inst_0_axi_noc_kernel0_0_bd_0ad1_M02_INI_stub_nmu_0_top : entity is "12'b111111000000";
  attribute REG_ADR_MAP_FPD_AFI_1 : string;
  attribute REG_ADR_MAP_FPD_AFI_1 of ulp_inst_0_axi_noc_kernel0_0_bd_0ad1_M02_INI_stub_nmu_0_top : entity is "12'b111111000000";
  attribute REG_ADR_MAP_LPD_AFI_FS : string;
  attribute REG_ADR_MAP_LPD_AFI_FS of ulp_inst_0_axi_noc_kernel0_0_bd_0ad1_M02_INI_stub_nmu_0_top : entity is "12'b111111000000";
  attribute REG_ADR_MAP_ME_ARRAY_0 : string;
  attribute REG_ADR_MAP_ME_ARRAY_0 of ulp_inst_0_axi_noc_kernel0_0_bd_0ad1_M02_INI_stub_nmu_0_top : entity is "12'b111111000000";
  attribute REG_ADR_MAP_ME_ARRAY_1 : string;
  attribute REG_ADR_MAP_ME_ARRAY_1 of ulp_inst_0_axi_noc_kernel0_0_bd_0ad1_M02_INI_stub_nmu_0_top : entity is "12'b111111000000";
  attribute REG_ADR_MAP_ME_ARRAY_2 : string;
  attribute REG_ADR_MAP_ME_ARRAY_2 of ulp_inst_0_axi_noc_kernel0_0_bd_0ad1_M02_INI_stub_nmu_0_top : entity is "12'b111111000000";
  attribute REG_ADR_MAP_ME_ARRAY_3 : string;
  attribute REG_ADR_MAP_ME_ARRAY_3 of ulp_inst_0_axi_noc_kernel0_0_bd_0ad1_M02_INI_stub_nmu_0_top : entity is "12'b111111000000";
  attribute REG_ADR_MAP_PCIE : string;
  attribute REG_ADR_MAP_PCIE of ulp_inst_0_axi_noc_kernel0_0_bd_0ad1_M02_INI_stub_nmu_0_top : entity is "12'b111111000000";
  attribute REG_ADR_MAP_PMC : string;
  attribute REG_ADR_MAP_PMC of ulp_inst_0_axi_noc_kernel0_0_bd_0ad1_M02_INI_stub_nmu_0_top : entity is "12'b111111000000";
  attribute REG_ADR_MAP_PMC_ALIAS_0 : string;
  attribute REG_ADR_MAP_PMC_ALIAS_0 of ulp_inst_0_axi_noc_kernel0_0_bd_0ad1_M02_INI_stub_nmu_0_top : entity is "12'b111111000000";
  attribute REG_ADR_MAP_PMC_ALIAS_1 : string;
  attribute REG_ADR_MAP_PMC_ALIAS_1 of ulp_inst_0_axi_noc_kernel0_0_bd_0ad1_M02_INI_stub_nmu_0_top : entity is "12'b111111000000";
  attribute REG_ADR_MAP_PMC_ALIAS_2 : string;
  attribute REG_ADR_MAP_PMC_ALIAS_2 of ulp_inst_0_axi_noc_kernel0_0_bd_0ad1_M02_INI_stub_nmu_0_top : entity is "12'b111111000000";
  attribute REG_ADR_MAP_PMC_ALIAS_3 : string;
  attribute REG_ADR_MAP_PMC_ALIAS_3 of ulp_inst_0_axi_noc_kernel0_0_bd_0ad1_M02_INI_stub_nmu_0_top : entity is "12'b111111000000";
  attribute REG_ADR_MAP_QSPI : string;
  attribute REG_ADR_MAP_QSPI of ulp_inst_0_axi_noc_kernel0_0_bd_0ad1_M02_INI_stub_nmu_0_top : entity is "12'b111111000000";
  attribute REG_ADR_MAP_STM_GIC : string;
  attribute REG_ADR_MAP_STM_GIC of ulp_inst_0_axi_noc_kernel0_0_bd_0ad1_M02_INI_stub_nmu_0_top : entity is "12'b111111000000";
  attribute REG_ADR_MAP_XPDS : string;
  attribute REG_ADR_MAP_XPDS of ulp_inst_0_axi_noc_kernel0_0_bd_0ad1_M02_INI_stub_nmu_0_top : entity is "12'b111111000000";
  attribute REG_AXI_NON_MOD_DISABLE : string;
  attribute REG_AXI_NON_MOD_DISABLE of ulp_inst_0_axi_noc_kernel0_0_bd_0ad1_M02_INI_stub_nmu_0_top : entity is "1'b0";
  attribute REG_AXI_PAR_CHK : string;
  attribute REG_AXI_PAR_CHK of ulp_inst_0_axi_noc_kernel0_0_bd_0ad1_M02_INI_stub_nmu_0_top : entity is "2'b00";
  attribute REG_CHOPSIZE : string;
  attribute REG_CHOPSIZE of ulp_inst_0_axi_noc_kernel0_0_bd_0ad1_M02_INI_stub_nmu_0_top : entity is "4'b1010";
  attribute REG_DDR_ADR_MAP0 : string;
  attribute REG_DDR_ADR_MAP0 of ulp_inst_0_axi_noc_kernel0_0_bd_0ad1_M02_INI_stub_nmu_0_top : entity is "15'b110011010001000";
  attribute REG_DDR_ADR_MAP1 : string;
  attribute REG_DDR_ADR_MAP1 of ulp_inst_0_axi_noc_kernel0_0_bd_0ad1_M02_INI_stub_nmu_0_top : entity is "15'b001111111111111";
  attribute REG_DDR_ADR_MAP2 : string;
  attribute REG_DDR_ADR_MAP2 of ulp_inst_0_axi_noc_kernel0_0_bd_0ad1_M02_INI_stub_nmu_0_top : entity is "15'b001111111111111";
  attribute REG_DDR_ADR_MAP3 : string;
  attribute REG_DDR_ADR_MAP3 of ulp_inst_0_axi_noc_kernel0_0_bd_0ad1_M02_INI_stub_nmu_0_top : entity is "15'b001111111111111";
  attribute REG_DDR_ADR_MAP4 : string;
  attribute REG_DDR_ADR_MAP4 of ulp_inst_0_axi_noc_kernel0_0_bd_0ad1_M02_INI_stub_nmu_0_top : entity is "15'b001111111111111";
  attribute REG_DDR_ADR_MAP5 : string;
  attribute REG_DDR_ADR_MAP5 of ulp_inst_0_axi_noc_kernel0_0_bd_0ad1_M02_INI_stub_nmu_0_top : entity is "15'b001111111111111";
  attribute REG_DDR_ADR_MAP6 : string;
  attribute REG_DDR_ADR_MAP6 of ulp_inst_0_axi_noc_kernel0_0_bd_0ad1_M02_INI_stub_nmu_0_top : entity is "15'b001111111111111";
  attribute REG_DDR_DST_MAP0 : string;
  attribute REG_DDR_DST_MAP0 of ulp_inst_0_axi_noc_kernel0_0_bd_0ad1_M02_INI_stub_nmu_0_top : entity is "12'b100100000000";
  attribute REG_DDR_DST_MAP1 : string;
  attribute REG_DDR_DST_MAP1 of ulp_inst_0_axi_noc_kernel0_0_bd_0ad1_M02_INI_stub_nmu_0_top : entity is "12'b011000000000";
  attribute REG_DDR_DST_MAP2 : string;
  attribute REG_DDR_DST_MAP2 of ulp_inst_0_axi_noc_kernel0_0_bd_0ad1_M02_INI_stub_nmu_0_top : entity is "12'b100000000000";
  attribute REG_DDR_DST_MAP3 : string;
  attribute REG_DDR_DST_MAP3 of ulp_inst_0_axi_noc_kernel0_0_bd_0ad1_M02_INI_stub_nmu_0_top : entity is "12'b011100000000";
  attribute REG_DDR_DST_MAP4 : string;
  attribute REG_DDR_DST_MAP4 of ulp_inst_0_axi_noc_kernel0_0_bd_0ad1_M02_INI_stub_nmu_0_top : entity is "12'b111111000000";
  attribute REG_DDR_DST_MAP5 : string;
  attribute REG_DDR_DST_MAP5 of ulp_inst_0_axi_noc_kernel0_0_bd_0ad1_M02_INI_stub_nmu_0_top : entity is "12'b111111000000";
  attribute REG_DDR_DST_MAP6 : string;
  attribute REG_DDR_DST_MAP6 of ulp_inst_0_axi_noc_kernel0_0_bd_0ad1_M02_INI_stub_nmu_0_top : entity is "12'b111111000000";
  attribute REG_DDR_DST_MAP7 : string;
  attribute REG_DDR_DST_MAP7 of ulp_inst_0_axi_noc_kernel0_0_bd_0ad1_M02_INI_stub_nmu_0_top : entity is "12'b111111000000";
  attribute REG_DWIDTH : string;
  attribute REG_DWIDTH of ulp_inst_0_axi_noc_kernel0_0_bd_0ad1_M02_INI_stub_nmu_0_top : entity is "3'b110";
  attribute REG_ECC_CHK_EN : string;
  attribute REG_ECC_CHK_EN of ulp_inst_0_axi_noc_kernel0_0_bd_0ad1_M02_INI_stub_nmu_0_top : entity is "1'b1";
  attribute REG_HBM_MAP_T0_CH0 : string;
  attribute REG_HBM_MAP_T0_CH0 of ulp_inst_0_axi_noc_kernel0_0_bd_0ad1_M02_INI_stub_nmu_0_top : entity is "12'b111111000000";
  attribute REG_HBM_MAP_T0_CH1 : string;
  attribute REG_HBM_MAP_T0_CH1 of ulp_inst_0_axi_noc_kernel0_0_bd_0ad1_M02_INI_stub_nmu_0_top : entity is "12'b111111000000";
  attribute REG_HBM_MAP_T0_CH10 : string;
  attribute REG_HBM_MAP_T0_CH10 of ulp_inst_0_axi_noc_kernel0_0_bd_0ad1_M02_INI_stub_nmu_0_top : entity is "12'b111111000000";
  attribute REG_HBM_MAP_T0_CH11 : string;
  attribute REG_HBM_MAP_T0_CH11 of ulp_inst_0_axi_noc_kernel0_0_bd_0ad1_M02_INI_stub_nmu_0_top : entity is "12'b111111000000";
  attribute REG_HBM_MAP_T0_CH12 : string;
  attribute REG_HBM_MAP_T0_CH12 of ulp_inst_0_axi_noc_kernel0_0_bd_0ad1_M02_INI_stub_nmu_0_top : entity is "12'b111111000000";
  attribute REG_HBM_MAP_T0_CH13 : string;
  attribute REG_HBM_MAP_T0_CH13 of ulp_inst_0_axi_noc_kernel0_0_bd_0ad1_M02_INI_stub_nmu_0_top : entity is "12'b111111000000";
  attribute REG_HBM_MAP_T0_CH14 : string;
  attribute REG_HBM_MAP_T0_CH14 of ulp_inst_0_axi_noc_kernel0_0_bd_0ad1_M02_INI_stub_nmu_0_top : entity is "12'b111111000000";
  attribute REG_HBM_MAP_T0_CH15 : string;
  attribute REG_HBM_MAP_T0_CH15 of ulp_inst_0_axi_noc_kernel0_0_bd_0ad1_M02_INI_stub_nmu_0_top : entity is "12'b111111000000";
  attribute REG_HBM_MAP_T0_CH2 : string;
  attribute REG_HBM_MAP_T0_CH2 of ulp_inst_0_axi_noc_kernel0_0_bd_0ad1_M02_INI_stub_nmu_0_top : entity is "12'b111111000000";
  attribute REG_HBM_MAP_T0_CH3 : string;
  attribute REG_HBM_MAP_T0_CH3 of ulp_inst_0_axi_noc_kernel0_0_bd_0ad1_M02_INI_stub_nmu_0_top : entity is "12'b111111000000";
  attribute REG_HBM_MAP_T0_CH4 : string;
  attribute REG_HBM_MAP_T0_CH4 of ulp_inst_0_axi_noc_kernel0_0_bd_0ad1_M02_INI_stub_nmu_0_top : entity is "12'b111111000000";
  attribute REG_HBM_MAP_T0_CH5 : string;
  attribute REG_HBM_MAP_T0_CH5 of ulp_inst_0_axi_noc_kernel0_0_bd_0ad1_M02_INI_stub_nmu_0_top : entity is "12'b111111000000";
  attribute REG_HBM_MAP_T0_CH6 : string;
  attribute REG_HBM_MAP_T0_CH6 of ulp_inst_0_axi_noc_kernel0_0_bd_0ad1_M02_INI_stub_nmu_0_top : entity is "12'b111111000000";
  attribute REG_HBM_MAP_T0_CH7 : string;
  attribute REG_HBM_MAP_T0_CH7 of ulp_inst_0_axi_noc_kernel0_0_bd_0ad1_M02_INI_stub_nmu_0_top : entity is "12'b111111000000";
  attribute REG_HBM_MAP_T0_CH8 : string;
  attribute REG_HBM_MAP_T0_CH8 of ulp_inst_0_axi_noc_kernel0_0_bd_0ad1_M02_INI_stub_nmu_0_top : entity is "12'b111111000000";
  attribute REG_HBM_MAP_T0_CH9 : string;
  attribute REG_HBM_MAP_T0_CH9 of ulp_inst_0_axi_noc_kernel0_0_bd_0ad1_M02_INI_stub_nmu_0_top : entity is "12'b111111000000";
  attribute REG_HBM_MAP_T1_CH0 : string;
  attribute REG_HBM_MAP_T1_CH0 of ulp_inst_0_axi_noc_kernel0_0_bd_0ad1_M02_INI_stub_nmu_0_top : entity is "12'b111111000000";
  attribute REG_HBM_MAP_T1_CH1 : string;
  attribute REG_HBM_MAP_T1_CH1 of ulp_inst_0_axi_noc_kernel0_0_bd_0ad1_M02_INI_stub_nmu_0_top : entity is "12'b111111000000";
  attribute REG_HBM_MAP_T1_CH10 : string;
  attribute REG_HBM_MAP_T1_CH10 of ulp_inst_0_axi_noc_kernel0_0_bd_0ad1_M02_INI_stub_nmu_0_top : entity is "12'b111111000000";
  attribute REG_HBM_MAP_T1_CH11 : string;
  attribute REG_HBM_MAP_T1_CH11 of ulp_inst_0_axi_noc_kernel0_0_bd_0ad1_M02_INI_stub_nmu_0_top : entity is "12'b111111000000";
  attribute REG_HBM_MAP_T1_CH12 : string;
  attribute REG_HBM_MAP_T1_CH12 of ulp_inst_0_axi_noc_kernel0_0_bd_0ad1_M02_INI_stub_nmu_0_top : entity is "12'b111111000000";
  attribute REG_HBM_MAP_T1_CH13 : string;
  attribute REG_HBM_MAP_T1_CH13 of ulp_inst_0_axi_noc_kernel0_0_bd_0ad1_M02_INI_stub_nmu_0_top : entity is "12'b111111000000";
  attribute REG_HBM_MAP_T1_CH14 : string;
  attribute REG_HBM_MAP_T1_CH14 of ulp_inst_0_axi_noc_kernel0_0_bd_0ad1_M02_INI_stub_nmu_0_top : entity is "12'b111111000000";
  attribute REG_HBM_MAP_T1_CH15 : string;
  attribute REG_HBM_MAP_T1_CH15 of ulp_inst_0_axi_noc_kernel0_0_bd_0ad1_M02_INI_stub_nmu_0_top : entity is "12'b111111000000";
  attribute REG_HBM_MAP_T1_CH2 : string;
  attribute REG_HBM_MAP_T1_CH2 of ulp_inst_0_axi_noc_kernel0_0_bd_0ad1_M02_INI_stub_nmu_0_top : entity is "12'b111111000000";
  attribute REG_HBM_MAP_T1_CH3 : string;
  attribute REG_HBM_MAP_T1_CH3 of ulp_inst_0_axi_noc_kernel0_0_bd_0ad1_M02_INI_stub_nmu_0_top : entity is "12'b111111000000";
  attribute REG_HBM_MAP_T1_CH4 : string;
  attribute REG_HBM_MAP_T1_CH4 of ulp_inst_0_axi_noc_kernel0_0_bd_0ad1_M02_INI_stub_nmu_0_top : entity is "12'b111111000000";
  attribute REG_HBM_MAP_T1_CH5 : string;
  attribute REG_HBM_MAP_T1_CH5 of ulp_inst_0_axi_noc_kernel0_0_bd_0ad1_M02_INI_stub_nmu_0_top : entity is "12'b111111000000";
  attribute REG_HBM_MAP_T1_CH6 : string;
  attribute REG_HBM_MAP_T1_CH6 of ulp_inst_0_axi_noc_kernel0_0_bd_0ad1_M02_INI_stub_nmu_0_top : entity is "12'b111111000000";
  attribute REG_HBM_MAP_T1_CH7 : string;
  attribute REG_HBM_MAP_T1_CH7 of ulp_inst_0_axi_noc_kernel0_0_bd_0ad1_M02_INI_stub_nmu_0_top : entity is "12'b111111000000";
  attribute REG_HBM_MAP_T1_CH8 : string;
  attribute REG_HBM_MAP_T1_CH8 of ulp_inst_0_axi_noc_kernel0_0_bd_0ad1_M02_INI_stub_nmu_0_top : entity is "12'b111111000000";
  attribute REG_HBM_MAP_T1_CH9 : string;
  attribute REG_HBM_MAP_T1_CH9 of ulp_inst_0_axi_noc_kernel0_0_bd_0ad1_M02_INI_stub_nmu_0_top : entity is "12'b111111000000";
  attribute REG_HBM_MAP_T2_CH0 : string;
  attribute REG_HBM_MAP_T2_CH0 of ulp_inst_0_axi_noc_kernel0_0_bd_0ad1_M02_INI_stub_nmu_0_top : entity is "12'b111111000000";
  attribute REG_HBM_MAP_T2_CH1 : string;
  attribute REG_HBM_MAP_T2_CH1 of ulp_inst_0_axi_noc_kernel0_0_bd_0ad1_M02_INI_stub_nmu_0_top : entity is "12'b111111000000";
  attribute REG_HBM_MAP_T2_CH10 : string;
  attribute REG_HBM_MAP_T2_CH10 of ulp_inst_0_axi_noc_kernel0_0_bd_0ad1_M02_INI_stub_nmu_0_top : entity is "12'b111111000000";
  attribute REG_HBM_MAP_T2_CH11 : string;
  attribute REG_HBM_MAP_T2_CH11 of ulp_inst_0_axi_noc_kernel0_0_bd_0ad1_M02_INI_stub_nmu_0_top : entity is "12'b111111000000";
  attribute REG_HBM_MAP_T2_CH12 : string;
  attribute REG_HBM_MAP_T2_CH12 of ulp_inst_0_axi_noc_kernel0_0_bd_0ad1_M02_INI_stub_nmu_0_top : entity is "12'b111111000000";
  attribute REG_HBM_MAP_T2_CH13 : string;
  attribute REG_HBM_MAP_T2_CH13 of ulp_inst_0_axi_noc_kernel0_0_bd_0ad1_M02_INI_stub_nmu_0_top : entity is "12'b111111000000";
  attribute REG_HBM_MAP_T2_CH14 : string;
  attribute REG_HBM_MAP_T2_CH14 of ulp_inst_0_axi_noc_kernel0_0_bd_0ad1_M02_INI_stub_nmu_0_top : entity is "12'b111111000000";
  attribute REG_HBM_MAP_T2_CH15 : string;
  attribute REG_HBM_MAP_T2_CH15 of ulp_inst_0_axi_noc_kernel0_0_bd_0ad1_M02_INI_stub_nmu_0_top : entity is "12'b111111000000";
  attribute REG_HBM_MAP_T2_CH2 : string;
  attribute REG_HBM_MAP_T2_CH2 of ulp_inst_0_axi_noc_kernel0_0_bd_0ad1_M02_INI_stub_nmu_0_top : entity is "12'b111111000000";
  attribute REG_HBM_MAP_T2_CH3 : string;
  attribute REG_HBM_MAP_T2_CH3 of ulp_inst_0_axi_noc_kernel0_0_bd_0ad1_M02_INI_stub_nmu_0_top : entity is "12'b111111000000";
  attribute REG_HBM_MAP_T2_CH4 : string;
  attribute REG_HBM_MAP_T2_CH4 of ulp_inst_0_axi_noc_kernel0_0_bd_0ad1_M02_INI_stub_nmu_0_top : entity is "12'b111111000000";
  attribute REG_HBM_MAP_T2_CH5 : string;
  attribute REG_HBM_MAP_T2_CH5 of ulp_inst_0_axi_noc_kernel0_0_bd_0ad1_M02_INI_stub_nmu_0_top : entity is "12'b111111000000";
  attribute REG_HBM_MAP_T2_CH6 : string;
  attribute REG_HBM_MAP_T2_CH6 of ulp_inst_0_axi_noc_kernel0_0_bd_0ad1_M02_INI_stub_nmu_0_top : entity is "12'b111111000000";
  attribute REG_HBM_MAP_T2_CH7 : string;
  attribute REG_HBM_MAP_T2_CH7 of ulp_inst_0_axi_noc_kernel0_0_bd_0ad1_M02_INI_stub_nmu_0_top : entity is "12'b111111000000";
  attribute REG_HBM_MAP_T2_CH8 : string;
  attribute REG_HBM_MAP_T2_CH8 of ulp_inst_0_axi_noc_kernel0_0_bd_0ad1_M02_INI_stub_nmu_0_top : entity is "12'b111111000000";
  attribute REG_HBM_MAP_T2_CH9 : string;
  attribute REG_HBM_MAP_T2_CH9 of ulp_inst_0_axi_noc_kernel0_0_bd_0ad1_M02_INI_stub_nmu_0_top : entity is "12'b111111000000";
  attribute REG_HBM_MAP_T3_CH0 : string;
  attribute REG_HBM_MAP_T3_CH0 of ulp_inst_0_axi_noc_kernel0_0_bd_0ad1_M02_INI_stub_nmu_0_top : entity is "12'b111111000000";
  attribute REG_HBM_MAP_T3_CH1 : string;
  attribute REG_HBM_MAP_T3_CH1 of ulp_inst_0_axi_noc_kernel0_0_bd_0ad1_M02_INI_stub_nmu_0_top : entity is "12'b111111000000";
  attribute REG_HBM_MAP_T3_CH10 : string;
  attribute REG_HBM_MAP_T3_CH10 of ulp_inst_0_axi_noc_kernel0_0_bd_0ad1_M02_INI_stub_nmu_0_top : entity is "12'b111111000000";
  attribute REG_HBM_MAP_T3_CH11 : string;
  attribute REG_HBM_MAP_T3_CH11 of ulp_inst_0_axi_noc_kernel0_0_bd_0ad1_M02_INI_stub_nmu_0_top : entity is "12'b111111000000";
  attribute REG_HBM_MAP_T3_CH12 : string;
  attribute REG_HBM_MAP_T3_CH12 of ulp_inst_0_axi_noc_kernel0_0_bd_0ad1_M02_INI_stub_nmu_0_top : entity is "12'b111111000000";
  attribute REG_HBM_MAP_T3_CH13 : string;
  attribute REG_HBM_MAP_T3_CH13 of ulp_inst_0_axi_noc_kernel0_0_bd_0ad1_M02_INI_stub_nmu_0_top : entity is "12'b111111000000";
  attribute REG_HBM_MAP_T3_CH14 : string;
  attribute REG_HBM_MAP_T3_CH14 of ulp_inst_0_axi_noc_kernel0_0_bd_0ad1_M02_INI_stub_nmu_0_top : entity is "12'b111111000000";
  attribute REG_HBM_MAP_T3_CH15 : string;
  attribute REG_HBM_MAP_T3_CH15 of ulp_inst_0_axi_noc_kernel0_0_bd_0ad1_M02_INI_stub_nmu_0_top : entity is "12'b111111000000";
  attribute REG_HBM_MAP_T3_CH2 : string;
  attribute REG_HBM_MAP_T3_CH2 of ulp_inst_0_axi_noc_kernel0_0_bd_0ad1_M02_INI_stub_nmu_0_top : entity is "12'b111111000000";
  attribute REG_HBM_MAP_T3_CH3 : string;
  attribute REG_HBM_MAP_T3_CH3 of ulp_inst_0_axi_noc_kernel0_0_bd_0ad1_M02_INI_stub_nmu_0_top : entity is "12'b111111000000";
  attribute REG_HBM_MAP_T3_CH4 : string;
  attribute REG_HBM_MAP_T3_CH4 of ulp_inst_0_axi_noc_kernel0_0_bd_0ad1_M02_INI_stub_nmu_0_top : entity is "12'b111111000000";
  attribute REG_HBM_MAP_T3_CH5 : string;
  attribute REG_HBM_MAP_T3_CH5 of ulp_inst_0_axi_noc_kernel0_0_bd_0ad1_M02_INI_stub_nmu_0_top : entity is "12'b111111000000";
  attribute REG_HBM_MAP_T3_CH6 : string;
  attribute REG_HBM_MAP_T3_CH6 of ulp_inst_0_axi_noc_kernel0_0_bd_0ad1_M02_INI_stub_nmu_0_top : entity is "12'b111111000000";
  attribute REG_HBM_MAP_T3_CH7 : string;
  attribute REG_HBM_MAP_T3_CH7 of ulp_inst_0_axi_noc_kernel0_0_bd_0ad1_M02_INI_stub_nmu_0_top : entity is "12'b111111000000";
  attribute REG_HBM_MAP_T3_CH8 : string;
  attribute REG_HBM_MAP_T3_CH8 of ulp_inst_0_axi_noc_kernel0_0_bd_0ad1_M02_INI_stub_nmu_0_top : entity is "12'b111111000000";
  attribute REG_HBM_MAP_T3_CH9 : string;
  attribute REG_HBM_MAP_T3_CH9 of ulp_inst_0_axi_noc_kernel0_0_bd_0ad1_M02_INI_stub_nmu_0_top : entity is "12'b111111000000";
  attribute REG_MODE_SELECT : string;
  attribute REG_MODE_SELECT of ulp_inst_0_axi_noc_kernel0_0_bd_0ad1_M02_INI_stub_nmu_0_top : entity is "16'b0000000000000000";
  attribute REG_OUTSTANDING_RD_TXN : string;
  attribute REG_OUTSTANDING_RD_TXN of ulp_inst_0_axi_noc_kernel0_0_bd_0ad1_M02_INI_stub_nmu_0_top : entity is "7'b1000000";
  attribute REG_OUTSTANDING_WR_TXN : string;
  attribute REG_OUTSTANDING_WR_TXN of ulp_inst_0_axi_noc_kernel0_0_bd_0ad1_M02_INI_stub_nmu_0_top : entity is "7'b1000000";
  attribute REG_PRIORITY : string;
  attribute REG_PRIORITY of ulp_inst_0_axi_noc_kernel0_0_bd_0ad1_M02_INI_stub_nmu_0_top : entity is "2'b00";
  attribute REG_RD_AXPROT_SEL : string;
  attribute REG_RD_AXPROT_SEL of ulp_inst_0_axi_noc_kernel0_0_bd_0ad1_M02_INI_stub_nmu_0_top : entity is "6'b000000";
  attribute REG_RD_RATE_CREDIT_DROP : string;
  attribute REG_RD_RATE_CREDIT_DROP of ulp_inst_0_axi_noc_kernel0_0_bd_0ad1_M02_INI_stub_nmu_0_top : entity is "10'b0000000100";
  attribute REG_RD_RATE_CREDIT_LIMIT : string;
  attribute REG_RD_RATE_CREDIT_LIMIT of ulp_inst_0_axi_noc_kernel0_0_bd_0ad1_M02_INI_stub_nmu_0_top : entity is "13'b0000100000000";
  attribute REG_RD_VCA_TOKEN0 : string;
  attribute REG_RD_VCA_TOKEN0 of ulp_inst_0_axi_noc_kernel0_0_bd_0ad1_M02_INI_stub_nmu_0_top : entity is "8'b00010100";
  attribute REG_RPOISON_TO_SLVERR : string;
  attribute REG_RPOISON_TO_SLVERR of ulp_inst_0_axi_noc_kernel0_0_bd_0ad1_M02_INI_stub_nmu_0_top : entity is "1'b0";
  attribute REG_RROB_RAM_SETTING : string;
  attribute REG_RROB_RAM_SETTING of ulp_inst_0_axi_noc_kernel0_0_bd_0ad1_M02_INI_stub_nmu_0_top : entity is "9'b000010010";
  attribute REG_SMID_SEL : string;
  attribute REG_SMID_SEL of ulp_inst_0_axi_noc_kernel0_0_bd_0ad1_M02_INI_stub_nmu_0_top : entity is "20'b00000000000000000000";
  attribute REG_SRC : string;
  attribute REG_SRC of ulp_inst_0_axi_noc_kernel0_0_bd_0ad1_M02_INI_stub_nmu_0_top : entity is "12'b001000000000";
  attribute REG_TBASE_AXI_TIMEOUT : string;
  attribute REG_TBASE_AXI_TIMEOUT of ulp_inst_0_axi_noc_kernel0_0_bd_0ad1_M02_INI_stub_nmu_0_top : entity is "3'b001";
  attribute REG_TBASE_MODE_RLIMIT_RD : string;
  attribute REG_TBASE_MODE_RLIMIT_RD of ulp_inst_0_axi_noc_kernel0_0_bd_0ad1_M02_INI_stub_nmu_0_top : entity is "3'b010";
  attribute REG_TBASE_MODE_RLIMIT_WR : string;
  attribute REG_TBASE_MODE_RLIMIT_WR of ulp_inst_0_axi_noc_kernel0_0_bd_0ad1_M02_INI_stub_nmu_0_top : entity is "3'b010";
  attribute REG_TBASE_TRK_TIMEOUT : string;
  attribute REG_TBASE_TRK_TIMEOUT of ulp_inst_0_axi_noc_kernel0_0_bd_0ad1_M02_INI_stub_nmu_0_top : entity is "3'b001";
  attribute REG_VC_MAP : string;
  attribute REG_VC_MAP of ulp_inst_0_axi_noc_kernel0_0_bd_0ad1_M02_INI_stub_nmu_0_top : entity is "12'b011010001000";
  attribute REG_WBUF_LAUNCH_SIZE : string;
  attribute REG_WBUF_LAUNCH_SIZE of ulp_inst_0_axi_noc_kernel0_0_bd_0ad1_M02_INI_stub_nmu_0_top : entity is "6'b010000";
  attribute REG_WBUF_RAM_SETTING : string;
  attribute REG_WBUF_RAM_SETTING of ulp_inst_0_axi_noc_kernel0_0_bd_0ad1_M02_INI_stub_nmu_0_top : entity is "9'b000010010";
  attribute REG_WR_AXPROT_SEL : string;
  attribute REG_WR_AXPROT_SEL of ulp_inst_0_axi_noc_kernel0_0_bd_0ad1_M02_INI_stub_nmu_0_top : entity is "6'b000000";
  attribute REG_WR_RATE_CREDIT_DROP : string;
  attribute REG_WR_RATE_CREDIT_DROP of ulp_inst_0_axi_noc_kernel0_0_bd_0ad1_M02_INI_stub_nmu_0_top : entity is "10'b0000000100";
  attribute REG_WR_RATE_CREDIT_LIMIT : string;
  attribute REG_WR_RATE_CREDIT_LIMIT of ulp_inst_0_axi_noc_kernel0_0_bd_0ad1_M02_INI_stub_nmu_0_top : entity is "13'b0000100000000";
  attribute REG_WR_VCA_TOKEN0 : string;
  attribute REG_WR_VCA_TOKEN0 of ulp_inst_0_axi_noc_kernel0_0_bd_0ad1_M02_INI_stub_nmu_0_top : entity is "8'b00010000";
end ulp_inst_0_axi_noc_kernel0_0_bd_0ad1_M02_INI_stub_nmu_0_top;

architecture STRUCTURE of ulp_inst_0_axi_noc_kernel0_0_bd_0ad1_M02_INI_stub_nmu_0_top is
  signal NLW_NOC_NMU512_INST_IF_NOC_AXI_RPOISON_UNCONNECTED : STD_LOGIC;
  signal NLW_NOC_NMU512_INST_IF_NOC_NPP_IN_NOC_CREDIT_RETURN_EN_UNCONNECTED : STD_LOGIC;
  signal NLW_NOC_NMU512_INST_IF_NOC_NPP_OUT_NOC_FLIT_EN_UNCONNECTED : STD_LOGIC;
  signal NLW_NOC_NMU512_INST_IF_NOC_NPP_OUT_NOC_VALID_EN_UNCONNECTED : STD_LOGIC;
  signal NLW_NOC_NMU512_INST_IF_NOC_AXI_BID_UNCONNECTED : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal NLW_NOC_NMU512_INST_IF_NOC_AXI_BUSER_UNCONNECTED : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal NLW_NOC_NMU512_INST_IF_NOC_AXI_RDATA_PAR_UNCONNECTED : STD_LOGIC_VECTOR ( 63 downto 0 );
  signal NLW_NOC_NMU512_INST_IF_NOC_AXI_RID_UNCONNECTED : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal NLW_NOC_NMU512_INST_IF_NOC_AXI_RUSER_UNCONNECTED : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal NLW_NOC_NMU512_INST_IF_NOC_AXI_TDEST_UNCONNECTED : STD_LOGIC_VECTOR ( 9 downto 0 );
  attribute BOX_TYPE : string;
  attribute BOX_TYPE of NOC_NMU512_INST : label is "PRIMITIVE";
  attribute DONT_TOUCH : boolean;
  attribute DONT_TOUCH of NOC_NMU512_INST : label is std.standard.true;
begin
NOC_NMU512_INST: unisim.vcomponents.NOC_NMU512
    generic map(
      REG_ADDR_DST0 => X"0000",
      REG_ADDR_DST1 => X"0000",
      REG_ADDR_DST10 => X"0000",
      REG_ADDR_DST11 => X"0000",
      REG_ADDR_DST12 => X"0000",
      REG_ADDR_DST13 => X"0000",
      REG_ADDR_DST14 => X"0000",
      REG_ADDR_DST15 => X"0000",
      REG_ADDR_DST2 => X"0000",
      REG_ADDR_DST3 => X"0000",
      REG_ADDR_DST4 => X"0000",
      REG_ADDR_DST5 => X"0000",
      REG_ADDR_DST6 => X"0000",
      REG_ADDR_DST7 => X"0000",
      REG_ADDR_DST8 => X"0000",
      REG_ADDR_DST9 => X"0000",
      REG_ADDR_ENABLE => X"0000",
      REG_ADDR_MADDR0 => X"00000000",
      REG_ADDR_MADDR1 => X"00000000",
      REG_ADDR_MADDR10 => X"00000000",
      REG_ADDR_MADDR11 => X"00000000",
      REG_ADDR_MADDR12 => X"00000000",
      REG_ADDR_MADDR13 => X"00000000",
      REG_ADDR_MADDR14 => X"00000000",
      REG_ADDR_MADDR15 => X"00000000",
      REG_ADDR_MADDR2 => X"00000000",
      REG_ADDR_MADDR3 => X"00000000",
      REG_ADDR_MADDR4 => X"00000000",
      REG_ADDR_MADDR5 => X"00000000",
      REG_ADDR_MADDR6 => X"00000000",
      REG_ADDR_MADDR7 => X"00000000",
      REG_ADDR_MADDR8 => X"00000000",
      REG_ADDR_MADDR9 => X"00000000",
      REG_ADDR_MASK0 => X"00000000",
      REG_ADDR_MASK1 => X"00000000",
      REG_ADDR_MASK10 => X"00000000",
      REG_ADDR_MASK11 => X"00000000",
      REG_ADDR_MASK12 => X"00000000",
      REG_ADDR_MASK13 => X"00000000",
      REG_ADDR_MASK14 => X"00000000",
      REG_ADDR_MASK15 => X"00000000",
      REG_ADDR_MASK2 => X"00000000",
      REG_ADDR_MASK3 => X"00000000",
      REG_ADDR_MASK4 => X"00000000",
      REG_ADDR_MASK5 => X"00000000",
      REG_ADDR_MASK6 => X"00000000",
      REG_ADDR_MASK7 => X"00000000",
      REG_ADDR_MASK8 => X"00000000",
      REG_ADDR_MASK9 => X"00000000",
      REG_ADDR_REMAP => X"0000",
      REG_ADDR_RPADDR0 => X"00000000",
      REG_ADDR_RPADDR1 => X"00000000",
      REG_ADDR_RPADDR10 => X"00000000",
      REG_ADDR_RPADDR11 => X"00000000",
      REG_ADDR_RPADDR12 => X"00000000",
      REG_ADDR_RPADDR13 => X"00000000",
      REG_ADDR_RPADDR14 => X"00000000",
      REG_ADDR_RPADDR15 => X"00000000",
      REG_ADDR_RPADDR2 => X"00000000",
      REG_ADDR_RPADDR3 => X"00000000",
      REG_ADDR_RPADDR4 => X"00000000",
      REG_ADDR_RPADDR5 => X"00000000",
      REG_ADDR_RPADDR6 => X"00000000",
      REG_ADDR_RPADDR7 => X"00000000",
      REG_ADDR_RPADDR8 => X"00000000",
      REG_ADDR_RPADDR9 => X"00000000",
      REG_ADR_MAP_CPM => X"FC0",
      REG_ADR_MAP_FPD_AFI_0 => X"FC0",
      REG_ADR_MAP_FPD_AFI_1 => X"FC0",
      REG_ADR_MAP_LPD_AFI_FS => X"FC0",
      REG_ADR_MAP_ME_ARRAY_0 => X"FC0",
      REG_ADR_MAP_ME_ARRAY_1 => X"FC0",
      REG_ADR_MAP_ME_ARRAY_2 => X"FC0",
      REG_ADR_MAP_ME_ARRAY_3 => X"FC0",
      REG_ADR_MAP_PCIE => X"FC0",
      REG_ADR_MAP_PMC => X"FC0",
      REG_ADR_MAP_PMC_ALIAS_0 => X"FC0",
      REG_ADR_MAP_PMC_ALIAS_1 => X"FC0",
      REG_ADR_MAP_PMC_ALIAS_2 => X"FC0",
      REG_ADR_MAP_PMC_ALIAS_3 => X"FC0",
      REG_ADR_MAP_QSPI => X"FC0",
      REG_ADR_MAP_STM_GIC => X"FC0",
      REG_ADR_MAP_XPDS => X"FC0",
      REG_AXI_NON_MOD_DISABLE => '0',
      REG_AXI_PAR_CHK => B"00",
      REG_CHOPSIZE => X"A",
      REG_DDR_ADR_MAP0 => B"110" & X"688",
      REG_DDR_ADR_MAP1 => B"001" & X"FFF",
      REG_DDR_ADR_MAP2 => B"001" & X"FFF",
      REG_DDR_ADR_MAP3 => B"001" & X"FFF",
      REG_DDR_ADR_MAP4 => B"001" & X"FFF",
      REG_DDR_ADR_MAP5 => B"001" & X"FFF",
      REG_DDR_ADR_MAP6 => B"001" & X"FFF",
      REG_DDR_DST_MAP0 => X"900",
      REG_DDR_DST_MAP1 => X"600",
      REG_DDR_DST_MAP2 => X"800",
      REG_DDR_DST_MAP3 => X"700",
      REG_DDR_DST_MAP4 => X"FC0",
      REG_DDR_DST_MAP5 => X"FC0",
      REG_DDR_DST_MAP6 => X"FC0",
      REG_DDR_DST_MAP7 => X"FC0",
      REG_DWIDTH => B"110",
      REG_ECC_CHK_EN => '1',
      REG_HBM_MAP_T0_CH0 => X"FC0",
      REG_HBM_MAP_T0_CH1 => X"FC0",
      REG_HBM_MAP_T0_CH10 => X"FC0",
      REG_HBM_MAP_T0_CH11 => X"FC0",
      REG_HBM_MAP_T0_CH12 => X"FC0",
      REG_HBM_MAP_T0_CH13 => X"FC0",
      REG_HBM_MAP_T0_CH14 => X"FC0",
      REG_HBM_MAP_T0_CH15 => X"FC0",
      REG_HBM_MAP_T0_CH2 => X"FC0",
      REG_HBM_MAP_T0_CH3 => X"FC0",
      REG_HBM_MAP_T0_CH4 => X"FC0",
      REG_HBM_MAP_T0_CH5 => X"FC0",
      REG_HBM_MAP_T0_CH6 => X"FC0",
      REG_HBM_MAP_T0_CH7 => X"FC0",
      REG_HBM_MAP_T0_CH8 => X"FC0",
      REG_HBM_MAP_T0_CH9 => X"FC0",
      REG_HBM_MAP_T1_CH0 => X"FC0",
      REG_HBM_MAP_T1_CH1 => X"FC0",
      REG_HBM_MAP_T1_CH10 => X"FC0",
      REG_HBM_MAP_T1_CH11 => X"FC0",
      REG_HBM_MAP_T1_CH12 => X"FC0",
      REG_HBM_MAP_T1_CH13 => X"FC0",
      REG_HBM_MAP_T1_CH14 => X"FC0",
      REG_HBM_MAP_T1_CH15 => X"FC0",
      REG_HBM_MAP_T1_CH2 => X"FC0",
      REG_HBM_MAP_T1_CH3 => X"FC0",
      REG_HBM_MAP_T1_CH4 => X"FC0",
      REG_HBM_MAP_T1_CH5 => X"FC0",
      REG_HBM_MAP_T1_CH6 => X"FC0",
      REG_HBM_MAP_T1_CH7 => X"FC0",
      REG_HBM_MAP_T1_CH8 => X"FC0",
      REG_HBM_MAP_T1_CH9 => X"FC0",
      REG_HBM_MAP_T2_CH0 => X"FC0",
      REG_HBM_MAP_T2_CH1 => X"FC0",
      REG_HBM_MAP_T2_CH10 => X"FC0",
      REG_HBM_MAP_T2_CH11 => X"FC0",
      REG_HBM_MAP_T2_CH12 => X"FC0",
      REG_HBM_MAP_T2_CH13 => X"FC0",
      REG_HBM_MAP_T2_CH14 => X"FC0",
      REG_HBM_MAP_T2_CH15 => X"FC0",
      REG_HBM_MAP_T2_CH2 => X"FC0",
      REG_HBM_MAP_T2_CH3 => X"FC0",
      REG_HBM_MAP_T2_CH4 => X"FC0",
      REG_HBM_MAP_T2_CH5 => X"FC0",
      REG_HBM_MAP_T2_CH6 => X"FC0",
      REG_HBM_MAP_T2_CH7 => X"FC0",
      REG_HBM_MAP_T2_CH8 => X"FC0",
      REG_HBM_MAP_T2_CH9 => X"FC0",
      REG_HBM_MAP_T3_CH0 => X"FC0",
      REG_HBM_MAP_T3_CH1 => X"FC0",
      REG_HBM_MAP_T3_CH10 => X"FC0",
      REG_HBM_MAP_T3_CH11 => X"FC0",
      REG_HBM_MAP_T3_CH12 => X"FC0",
      REG_HBM_MAP_T3_CH13 => X"FC0",
      REG_HBM_MAP_T3_CH14 => X"FC0",
      REG_HBM_MAP_T3_CH15 => X"FC0",
      REG_HBM_MAP_T3_CH2 => X"FC0",
      REG_HBM_MAP_T3_CH3 => X"FC0",
      REG_HBM_MAP_T3_CH4 => X"FC0",
      REG_HBM_MAP_T3_CH5 => X"FC0",
      REG_HBM_MAP_T3_CH6 => X"FC0",
      REG_HBM_MAP_T3_CH7 => X"FC0",
      REG_HBM_MAP_T3_CH8 => X"FC0",
      REG_HBM_MAP_T3_CH9 => X"FC0",
      REG_MODE_SELECT => X"0000",
      REG_OUTSTANDING_RD_TXN => B"100" & X"0",
      REG_OUTSTANDING_WR_TXN => B"100" & X"0",
      REG_PRIORITY => B"00",
      REG_RD_AXPROT_SEL => B"00" & X"0",
      REG_RD_RATE_CREDIT_DROP => B"00" & X"04",
      REG_RD_RATE_CREDIT_LIMIT => B"0" & X"100",
      REG_RD_VCA_TOKEN0 => X"14",
      REG_RPOISON_TO_SLVERR => '0',
      REG_RROB_RAM_SETTING => B"0" & X"12",
      REG_SMID_SEL => X"00000",
      REG_SRC => X"200",
      REG_TBASE_AXI_TIMEOUT => X"1",
      REG_TBASE_MODE_RLIMIT_RD => B"010",
      REG_TBASE_MODE_RLIMIT_WR => B"010",
      REG_TBASE_TRK_TIMEOUT => X"1",
      REG_VC_MAP => X"688",
      REG_WBUF_LAUNCH_SIZE => B"01" & X"0",
      REG_WBUF_RAM_SETTING => B"0" & X"12",
      REG_WR_AXPROT_SEL => B"00" & X"0",
      REG_WR_RATE_CREDIT_DROP => B"00" & X"04",
      REG_WR_RATE_CREDIT_LIMIT => B"0" & X"100",
      REG_WR_VCA_TOKEN0 => X"10"
    )
        port map (
      CLK => aclk,
      IF_NOC_AXI_ARADDR(63 downto 1) => B"000000000000000000000000000000000000000000000000000000000000000",
      IF_NOC_AXI_ARADDR(0) => IF_NOC_AXI_ARADDR(0),
      IF_NOC_AXI_ARADDR_PAR(7 downto 0) => B"00000000",
      IF_NOC_AXI_ARBURST(1 downto 0) => IF_NOC_AXI_ARBURST(1 downto 0),
      IF_NOC_AXI_ARCACHE(3 downto 0) => IF_NOC_AXI_ARCACHE(3 downto 0),
      IF_NOC_AXI_ARID(15 downto 0) => B"0000000000000000",
      IF_NOC_AXI_ARLEN(7 downto 0) => IF_NOC_AXI_ARLEN(7 downto 0),
      IF_NOC_AXI_ARLOCK(0) => IF_NOC_AXI_ARLOCK(0),
      IF_NOC_AXI_ARPROT(2 downto 0) => IF_NOC_AXI_ARPROT(2 downto 0),
      IF_NOC_AXI_ARQOS(3 downto 0) => IF_NOC_AXI_ARQOS(3 downto 0),
      IF_NOC_AXI_ARREADY => IF_NOC_AXI_ARREADY,
      IF_NOC_AXI_ARREGION(3 downto 0) => IF_NOC_AXI_ARREGION(3 downto 0),
      IF_NOC_AXI_ARSIZE(2 downto 0) => IF_NOC_AXI_ARSIZE(2 downto 0),
      IF_NOC_AXI_ARUSER(15 downto 0) => B"0000000000000000",
      IF_NOC_AXI_ARVALID => IF_NOC_AXI_ARVALID,
      IF_NOC_AXI_AWADDR(63 downto 1) => B"000000000000000000000000000000000000000000000000000000000000000",
      IF_NOC_AXI_AWADDR(0) => IF_NOC_AXI_AWADDR(0),
      IF_NOC_AXI_AWADDR_PAR(7 downto 0) => B"00000000",
      IF_NOC_AXI_AWBURST(1 downto 0) => IF_NOC_AXI_AWBURST(1 downto 0),
      IF_NOC_AXI_AWCACHE(3 downto 0) => IF_NOC_AXI_AWCACHE(3 downto 0),
      IF_NOC_AXI_AWID(15 downto 0) => B"0000000000000000",
      IF_NOC_AXI_AWLEN(7 downto 0) => IF_NOC_AXI_AWLEN(7 downto 0),
      IF_NOC_AXI_AWLOCK(0) => IF_NOC_AXI_AWLOCK(0),
      IF_NOC_AXI_AWPROT(2 downto 0) => IF_NOC_AXI_AWPROT(2 downto 0),
      IF_NOC_AXI_AWQOS(3 downto 0) => IF_NOC_AXI_AWQOS(3 downto 0),
      IF_NOC_AXI_AWREADY => IF_NOC_AXI_AWREADY,
      IF_NOC_AXI_AWREGION(3 downto 0) => IF_NOC_AXI_AWREGION(3 downto 0),
      IF_NOC_AXI_AWSIZE(2 downto 0) => IF_NOC_AXI_AWSIZE(2 downto 0),
      IF_NOC_AXI_AWUSER(15 downto 0) => B"0000000000000000",
      IF_NOC_AXI_AWVALID => IF_NOC_AXI_AWVALID,
      IF_NOC_AXI_BID(15 downto 0) => NLW_NOC_NMU512_INST_IF_NOC_AXI_BID_UNCONNECTED(15 downto 0),
      IF_NOC_AXI_BREADY => IF_NOC_AXI_BREADY,
      IF_NOC_AXI_BRESP(1 downto 0) => IF_NOC_AXI_BRESP(1 downto 0),
      IF_NOC_AXI_BUSER(15 downto 0) => NLW_NOC_NMU512_INST_IF_NOC_AXI_BUSER_UNCONNECTED(15 downto 0),
      IF_NOC_AXI_BVALID => IF_NOC_AXI_BVALID,
      IF_NOC_AXI_RDATA(511 downto 0) => IF_NOC_AXI_RDATA(511 downto 0),
      IF_NOC_AXI_RDATA_PAR(63 downto 0) => NLW_NOC_NMU512_INST_IF_NOC_AXI_RDATA_PAR_UNCONNECTED(63 downto 0),
      IF_NOC_AXI_RID(15 downto 0) => NLW_NOC_NMU512_INST_IF_NOC_AXI_RID_UNCONNECTED(15 downto 0),
      IF_NOC_AXI_RLAST(0) => IF_NOC_AXI_RLAST(0),
      IF_NOC_AXI_RPOISON => NLW_NOC_NMU512_INST_IF_NOC_AXI_RPOISON_UNCONNECTED,
      IF_NOC_AXI_RREADY => IF_NOC_AXI_RREADY,
      IF_NOC_AXI_RRESP(1 downto 0) => IF_NOC_AXI_RRESP(1 downto 0),
      IF_NOC_AXI_RUSER(15 downto 0) => NLW_NOC_NMU512_INST_IF_NOC_AXI_RUSER_UNCONNECTED(15 downto 0),
      IF_NOC_AXI_RVALID => IF_NOC_AXI_RVALID,
      IF_NOC_AXI_TDEST(9 downto 0) => NLW_NOC_NMU512_INST_IF_NOC_AXI_TDEST_UNCONNECTED(9 downto 0),
      IF_NOC_AXI_WDATA(511 downto 0) => IF_NOC_AXI_WDATA(511 downto 0),
      IF_NOC_AXI_WDATA_PAR(63 downto 0) => B"0000000000000000000000000000000000000000000000000000000000000000",
      IF_NOC_AXI_WID(15 downto 0) => B"0000000000000000",
      IF_NOC_AXI_WLAST(0) => IF_NOC_AXI_WLAST(0),
      IF_NOC_AXI_WPOISON => '0',
      IF_NOC_AXI_WREADY => IF_NOC_AXI_WREADY,
      IF_NOC_AXI_WSTRB(63 downto 0) => IF_NOC_AXI_WSTRB(63 downto 0),
      IF_NOC_AXI_WUSER(15 downto 0) => B"0000000000000000",
      IF_NOC_AXI_WVALID => IF_NOC_AXI_WVALID,
      IF_NOC_NPP_IN_NOC_CREDIT_RDY => IF_NOC_NPP_IN_NOC_CREDIT_RDY,
      IF_NOC_NPP_IN_NOC_CREDIT_RETURN(7 downto 0) => IF_NOC_NPP_IN_NOC_CREDIT_RETURN(7 downto 0),
      IF_NOC_NPP_IN_NOC_CREDIT_RETURN_EN => NLW_NOC_NMU512_INST_IF_NOC_NPP_IN_NOC_CREDIT_RETURN_EN_UNCONNECTED,
      IF_NOC_NPP_IN_NOC_FLIT(181 downto 0) => IF_NOC_NPP_IN_NOC_FLIT(181 downto 0),
      IF_NOC_NPP_IN_NOC_FLIT_EN => '1',
      IF_NOC_NPP_IN_NOC_VALID(7 downto 0) => IF_NOC_NPP_IN_NOC_VALID(7 downto 0),
      IF_NOC_NPP_IN_NOC_VALID_EN => '1',
      IF_NOC_NPP_OUT_NOC_CREDIT_RDY => IF_NOC_NPP_OUT_NOC_CREDIT_RDY,
      IF_NOC_NPP_OUT_NOC_CREDIT_RETURN(7 downto 0) => IF_NOC_NPP_OUT_NOC_CREDIT_RETURN(7 downto 0),
      IF_NOC_NPP_OUT_NOC_CREDIT_RETURN_EN => '1',
      IF_NOC_NPP_OUT_NOC_FLIT(181 downto 0) => IF_NOC_NPP_OUT_NOC_FLIT(181 downto 0),
      IF_NOC_NPP_OUT_NOC_FLIT_EN => NLW_NOC_NMU512_INST_IF_NOC_NPP_OUT_NOC_FLIT_EN_UNCONNECTED,
      IF_NOC_NPP_OUT_NOC_VALID(7 downto 0) => IF_NOC_NPP_OUT_NOC_VALID(7 downto 0),
      IF_NOC_NPP_OUT_NOC_VALID_EN => NLW_NOC_NMU512_INST_IF_NOC_NPP_OUT_NOC_VALID_EN_UNCONNECTED,
      NMU => NMU,
      NMU_RD_DEST_MODE => NMU_RD_DEST_MODE,
      NMU_RD_USR_DST(11 downto 0) => NMU_RD_USR_DST(11 downto 0),
      NMU_USR_INTERRUPT_IN(3 downto 0) => B"0000",
      NMU_WR_DEST_MODE => NMU_WR_DEST_MODE,
      NMU_WR_USR_DST(11 downto 0) => NMU_WR_USR_DST(11 downto 0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity ulp_inst_0_axi_noc_kernel0_0_bd_0ad1_no_black_box_0 is
  port (
    dout : out STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of ulp_inst_0_axi_noc_kernel0_0_bd_0ad1_no_black_box_0 : entity is "bd_0ad1_no_black_box_0,xlconstant_v1_1_7_xlconstant,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of ulp_inst_0_axi_noc_kernel0_0_bd_0ad1_no_black_box_0 : entity is "yes";
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of ulp_inst_0_axi_noc_kernel0_0_bd_0ad1_no_black_box_0 : entity is "bd_0ad1_no_black_box_0";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of ulp_inst_0_axi_noc_kernel0_0_bd_0ad1_no_black_box_0 : entity is "xlconstant_v1_1_7_xlconstant,Vivado 2022.2";
end ulp_inst_0_axi_noc_kernel0_0_bd_0ad1_no_black_box_0;

architecture STRUCTURE of ulp_inst_0_axi_noc_kernel0_0_bd_0ad1_no_black_box_0 is
  signal \<const1>\ : STD_LOGIC;
begin
  dout(0) <= \<const1>\;
VCC: unisim.vcomponents.VCC
     port map (
      P => \<const1>\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity ulp_inst_0_axi_noc_kernel0_0_bd_0ad1_stub_clock_0 is
  port (
    dout : out STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of ulp_inst_0_axi_noc_kernel0_0_bd_0ad1_stub_clock_0 : entity is "bd_0ad1_stub_clock_0,xlconstant_v1_1_7_xlconstant,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of ulp_inst_0_axi_noc_kernel0_0_bd_0ad1_stub_clock_0 : entity is "yes";
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of ulp_inst_0_axi_noc_kernel0_0_bd_0ad1_stub_clock_0 : entity is "bd_0ad1_stub_clock_0";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of ulp_inst_0_axi_noc_kernel0_0_bd_0ad1_stub_clock_0 : entity is "xlconstant_v1_1_7_xlconstant,Vivado 2022.2";
end ulp_inst_0_axi_noc_kernel0_0_bd_0ad1_stub_clock_0;

architecture STRUCTURE of ulp_inst_0_axi_noc_kernel0_0_bd_0ad1_stub_clock_0 is
  signal \<const1>\ : STD_LOGIC;
begin
  dout(0) <= \<const1>\;
VCC: unisim.vcomponents.VCC
     port map (
      P => \<const1>\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity ulp_inst_0_axi_noc_kernel0_0_bd_0ad1_M00_INI_stub_nmu_0 is
  port (
    IF_NOC_AXI_WVALID : in STD_LOGIC;
    IF_NOC_AXI_WREADY : out STD_LOGIC;
    IF_NOC_AXI_WLAST : in STD_LOGIC_VECTOR ( 0 to 0 );
    IF_NOC_AXI_WDATA : in STD_LOGIC_VECTOR ( 511 downto 0 );
    IF_NOC_AXI_WSTRB : in STD_LOGIC_VECTOR ( 63 downto 0 );
    IF_NOC_AXI_ARREADY : out STD_LOGIC;
    IF_NOC_AXI_AWREADY : out STD_LOGIC;
    IF_NOC_AXI_BRESP : out STD_LOGIC_VECTOR ( 1 downto 0 );
    IF_NOC_AXI_BVALID : out STD_LOGIC;
    IF_NOC_AXI_RDATA : out STD_LOGIC_VECTOR ( 511 downto 0 );
    IF_NOC_AXI_RLAST : out STD_LOGIC_VECTOR ( 0 to 0 );
    IF_NOC_AXI_RRESP : out STD_LOGIC_VECTOR ( 1 downto 0 );
    IF_NOC_AXI_RVALID : out STD_LOGIC;
    IF_NOC_AXI_ARADDR : in STD_LOGIC_VECTOR ( 0 to 0 );
    IF_NOC_AXI_ARBURST : in STD_LOGIC_VECTOR ( 1 downto 0 );
    IF_NOC_AXI_ARCACHE : in STD_LOGIC_VECTOR ( 3 downto 0 );
    IF_NOC_AXI_ARLEN : in STD_LOGIC_VECTOR ( 7 downto 0 );
    IF_NOC_AXI_ARLOCK : in STD_LOGIC_VECTOR ( 0 to 0 );
    IF_NOC_AXI_ARPROT : in STD_LOGIC_VECTOR ( 2 downto 0 );
    IF_NOC_AXI_ARQOS : in STD_LOGIC_VECTOR ( 3 downto 0 );
    IF_NOC_AXI_ARREGION : in STD_LOGIC_VECTOR ( 3 downto 0 );
    IF_NOC_AXI_ARSIZE : in STD_LOGIC_VECTOR ( 2 downto 0 );
    IF_NOC_AXI_ARVALID : in STD_LOGIC;
    IF_NOC_AXI_AWADDR : in STD_LOGIC_VECTOR ( 0 to 0 );
    IF_NOC_AXI_AWBURST : in STD_LOGIC_VECTOR ( 1 downto 0 );
    IF_NOC_AXI_AWCACHE : in STD_LOGIC_VECTOR ( 3 downto 0 );
    IF_NOC_AXI_AWLEN : in STD_LOGIC_VECTOR ( 7 downto 0 );
    IF_NOC_AXI_AWLOCK : in STD_LOGIC_VECTOR ( 0 to 0 );
    IF_NOC_AXI_AWPROT : in STD_LOGIC_VECTOR ( 2 downto 0 );
    IF_NOC_AXI_AWQOS : in STD_LOGIC_VECTOR ( 3 downto 0 );
    IF_NOC_AXI_AWREGION : in STD_LOGIC_VECTOR ( 3 downto 0 );
    IF_NOC_AXI_AWSIZE : in STD_LOGIC_VECTOR ( 2 downto 0 );
    IF_NOC_AXI_AWVALID : in STD_LOGIC;
    IF_NOC_AXI_BREADY : in STD_LOGIC;
    IF_NOC_AXI_RREADY : in STD_LOGIC;
    NMU_RD_DEST_MODE : in STD_LOGIC;
    NMU_WR_DEST_MODE : in STD_LOGIC;
    IF_NOC_NPP_IN_NOC_CREDIT_RETURN : out STD_LOGIC_VECTOR ( 7 downto 0 );
    IF_NOC_NPP_OUT_NOC_CREDIT_RDY : out STD_LOGIC;
    IF_NOC_NPP_OUT_NOC_FLIT : out STD_LOGIC_VECTOR ( 181 downto 0 );
    IF_NOC_NPP_OUT_NOC_VALID : out STD_LOGIC_VECTOR ( 7 downto 0 );
    aclk : in STD_LOGIC;
    IF_NOC_NPP_IN_NOC_CREDIT_RDY : in STD_LOGIC;
    IF_NOC_NPP_IN_NOC_FLIT : in STD_LOGIC_VECTOR ( 181 downto 0 );
    IF_NOC_NPP_IN_NOC_VALID : in STD_LOGIC_VECTOR ( 7 downto 0 );
    IF_NOC_NPP_OUT_NOC_CREDIT_RETURN : in STD_LOGIC_VECTOR ( 7 downto 0 );
    NMU : out STD_LOGIC;
    NMU_WR_USR_DST : in STD_LOGIC_VECTOR ( 11 downto 0 );
    NMU_RD_USR_DST : in STD_LOGIC_VECTOR ( 11 downto 0 )
  );
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of ulp_inst_0_axi_noc_kernel0_0_bd_0ad1_M00_INI_stub_nmu_0 : entity is "noc_nmu_0,noc_nmu_v1_0_0_0,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of ulp_inst_0_axi_noc_kernel0_0_bd_0ad1_M00_INI_stub_nmu_0 : entity is "yes";
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of ulp_inst_0_axi_noc_kernel0_0_bd_0ad1_M00_INI_stub_nmu_0 : entity is "bd_0ad1_M00_INI_stub_nmu_0";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of ulp_inst_0_axi_noc_kernel0_0_bd_0ad1_M00_INI_stub_nmu_0 : entity is "noc_nmu_v1_0_0_0,Vivado 2018.1.0";
end ulp_inst_0_axi_noc_kernel0_0_bd_0ad1_M00_INI_stub_nmu_0;

architecture STRUCTURE of ulp_inst_0_axi_noc_kernel0_0_bd_0ad1_M00_INI_stub_nmu_0 is
  attribute REG_ADDR_DST0 : string;
  attribute REG_ADDR_DST0 of bd_0ad1_M00_INI_stub_nmu_0_top_INST : label is "16'b0000000000000000";
  attribute REG_ADDR_DST1 : string;
  attribute REG_ADDR_DST1 of bd_0ad1_M00_INI_stub_nmu_0_top_INST : label is "16'b0000000000000000";
  attribute REG_ADDR_DST10 : string;
  attribute REG_ADDR_DST10 of bd_0ad1_M00_INI_stub_nmu_0_top_INST : label is "16'b0000000000000000";
  attribute REG_ADDR_DST11 : string;
  attribute REG_ADDR_DST11 of bd_0ad1_M00_INI_stub_nmu_0_top_INST : label is "16'b0000000000000000";
  attribute REG_ADDR_DST12 : string;
  attribute REG_ADDR_DST12 of bd_0ad1_M00_INI_stub_nmu_0_top_INST : label is "16'b0000000000000000";
  attribute REG_ADDR_DST13 : string;
  attribute REG_ADDR_DST13 of bd_0ad1_M00_INI_stub_nmu_0_top_INST : label is "16'b0000000000000000";
  attribute REG_ADDR_DST14 : string;
  attribute REG_ADDR_DST14 of bd_0ad1_M00_INI_stub_nmu_0_top_INST : label is "16'b0000000000000000";
  attribute REG_ADDR_DST15 : string;
  attribute REG_ADDR_DST15 of bd_0ad1_M00_INI_stub_nmu_0_top_INST : label is "16'b0000000000000000";
  attribute REG_ADDR_DST2 : string;
  attribute REG_ADDR_DST2 of bd_0ad1_M00_INI_stub_nmu_0_top_INST : label is "16'b0000000000000000";
  attribute REG_ADDR_DST3 : string;
  attribute REG_ADDR_DST3 of bd_0ad1_M00_INI_stub_nmu_0_top_INST : label is "16'b0000000000000000";
  attribute REG_ADDR_DST4 : string;
  attribute REG_ADDR_DST4 of bd_0ad1_M00_INI_stub_nmu_0_top_INST : label is "16'b0000000000000000";
  attribute REG_ADDR_DST5 : string;
  attribute REG_ADDR_DST5 of bd_0ad1_M00_INI_stub_nmu_0_top_INST : label is "16'b0000000000000000";
  attribute REG_ADDR_DST6 : string;
  attribute REG_ADDR_DST6 of bd_0ad1_M00_INI_stub_nmu_0_top_INST : label is "16'b0000000000000000";
  attribute REG_ADDR_DST7 : string;
  attribute REG_ADDR_DST7 of bd_0ad1_M00_INI_stub_nmu_0_top_INST : label is "16'b0000000000000000";
  attribute REG_ADDR_DST8 : string;
  attribute REG_ADDR_DST8 of bd_0ad1_M00_INI_stub_nmu_0_top_INST : label is "16'b0000000000000000";
  attribute REG_ADDR_DST9 : string;
  attribute REG_ADDR_DST9 of bd_0ad1_M00_INI_stub_nmu_0_top_INST : label is "16'b0000000000000000";
  attribute REG_ADDR_ENABLE : string;
  attribute REG_ADDR_ENABLE of bd_0ad1_M00_INI_stub_nmu_0_top_INST : label is "16'b0000000000000000";
  attribute REG_ADDR_MADDR0 : string;
  attribute REG_ADDR_MADDR0 of bd_0ad1_M00_INI_stub_nmu_0_top_INST : label is "32'b00000000000000000000000000000000";
  attribute REG_ADDR_MADDR1 : string;
  attribute REG_ADDR_MADDR1 of bd_0ad1_M00_INI_stub_nmu_0_top_INST : label is "32'b00000000000000000000000000000000";
  attribute REG_ADDR_MADDR10 : string;
  attribute REG_ADDR_MADDR10 of bd_0ad1_M00_INI_stub_nmu_0_top_INST : label is "32'b00000000000000000000000000000000";
  attribute REG_ADDR_MADDR11 : string;
  attribute REG_ADDR_MADDR11 of bd_0ad1_M00_INI_stub_nmu_0_top_INST : label is "32'b00000000000000000000000000000000";
  attribute REG_ADDR_MADDR12 : string;
  attribute REG_ADDR_MADDR12 of bd_0ad1_M00_INI_stub_nmu_0_top_INST : label is "32'b00000000000000000000000000000000";
  attribute REG_ADDR_MADDR13 : string;
  attribute REG_ADDR_MADDR13 of bd_0ad1_M00_INI_stub_nmu_0_top_INST : label is "32'b00000000000000000000000000000000";
  attribute REG_ADDR_MADDR14 : string;
  attribute REG_ADDR_MADDR14 of bd_0ad1_M00_INI_stub_nmu_0_top_INST : label is "32'b00000000000000000000000000000000";
  attribute REG_ADDR_MADDR15 : string;
  attribute REG_ADDR_MADDR15 of bd_0ad1_M00_INI_stub_nmu_0_top_INST : label is "32'b00000000000000000000000000000000";
  attribute REG_ADDR_MADDR2 : string;
  attribute REG_ADDR_MADDR2 of bd_0ad1_M00_INI_stub_nmu_0_top_INST : label is "32'b00000000000000000000000000000000";
  attribute REG_ADDR_MADDR3 : string;
  attribute REG_ADDR_MADDR3 of bd_0ad1_M00_INI_stub_nmu_0_top_INST : label is "32'b00000000000000000000000000000000";
  attribute REG_ADDR_MADDR4 : string;
  attribute REG_ADDR_MADDR4 of bd_0ad1_M00_INI_stub_nmu_0_top_INST : label is "32'b00000000000000000000000000000000";
  attribute REG_ADDR_MADDR5 : string;
  attribute REG_ADDR_MADDR5 of bd_0ad1_M00_INI_stub_nmu_0_top_INST : label is "32'b00000000000000000000000000000000";
  attribute REG_ADDR_MADDR6 : string;
  attribute REG_ADDR_MADDR6 of bd_0ad1_M00_INI_stub_nmu_0_top_INST : label is "32'b00000000000000000000000000000000";
  attribute REG_ADDR_MADDR7 : string;
  attribute REG_ADDR_MADDR7 of bd_0ad1_M00_INI_stub_nmu_0_top_INST : label is "32'b00000000000000000000000000000000";
  attribute REG_ADDR_MADDR8 : string;
  attribute REG_ADDR_MADDR8 of bd_0ad1_M00_INI_stub_nmu_0_top_INST : label is "32'b00000000000000000000000000000000";
  attribute REG_ADDR_MADDR9 : string;
  attribute REG_ADDR_MADDR9 of bd_0ad1_M00_INI_stub_nmu_0_top_INST : label is "32'b00000000000000000000000000000000";
  attribute REG_ADDR_MASK0 : string;
  attribute REG_ADDR_MASK0 of bd_0ad1_M00_INI_stub_nmu_0_top_INST : label is "32'b00000000000000000000000000000000";
  attribute REG_ADDR_MASK1 : string;
  attribute REG_ADDR_MASK1 of bd_0ad1_M00_INI_stub_nmu_0_top_INST : label is "32'b00000000000000000000000000000000";
  attribute REG_ADDR_MASK10 : string;
  attribute REG_ADDR_MASK10 of bd_0ad1_M00_INI_stub_nmu_0_top_INST : label is "32'b00000000000000000000000000000000";
  attribute REG_ADDR_MASK11 : string;
  attribute REG_ADDR_MASK11 of bd_0ad1_M00_INI_stub_nmu_0_top_INST : label is "32'b00000000000000000000000000000000";
  attribute REG_ADDR_MASK12 : string;
  attribute REG_ADDR_MASK12 of bd_0ad1_M00_INI_stub_nmu_0_top_INST : label is "32'b00000000000000000000000000000000";
  attribute REG_ADDR_MASK13 : string;
  attribute REG_ADDR_MASK13 of bd_0ad1_M00_INI_stub_nmu_0_top_INST : label is "32'b00000000000000000000000000000000";
  attribute REG_ADDR_MASK14 : string;
  attribute REG_ADDR_MASK14 of bd_0ad1_M00_INI_stub_nmu_0_top_INST : label is "32'b00000000000000000000000000000000";
  attribute REG_ADDR_MASK15 : string;
  attribute REG_ADDR_MASK15 of bd_0ad1_M00_INI_stub_nmu_0_top_INST : label is "32'b00000000000000000000000000000000";
  attribute REG_ADDR_MASK2 : string;
  attribute REG_ADDR_MASK2 of bd_0ad1_M00_INI_stub_nmu_0_top_INST : label is "32'b00000000000000000000000000000000";
  attribute REG_ADDR_MASK3 : string;
  attribute REG_ADDR_MASK3 of bd_0ad1_M00_INI_stub_nmu_0_top_INST : label is "32'b00000000000000000000000000000000";
  attribute REG_ADDR_MASK4 : string;
  attribute REG_ADDR_MASK4 of bd_0ad1_M00_INI_stub_nmu_0_top_INST : label is "32'b00000000000000000000000000000000";
  attribute REG_ADDR_MASK5 : string;
  attribute REG_ADDR_MASK5 of bd_0ad1_M00_INI_stub_nmu_0_top_INST : label is "32'b00000000000000000000000000000000";
  attribute REG_ADDR_MASK6 : string;
  attribute REG_ADDR_MASK6 of bd_0ad1_M00_INI_stub_nmu_0_top_INST : label is "32'b00000000000000000000000000000000";
  attribute REG_ADDR_MASK7 : string;
  attribute REG_ADDR_MASK7 of bd_0ad1_M00_INI_stub_nmu_0_top_INST : label is "32'b00000000000000000000000000000000";
  attribute REG_ADDR_MASK8 : string;
  attribute REG_ADDR_MASK8 of bd_0ad1_M00_INI_stub_nmu_0_top_INST : label is "32'b00000000000000000000000000000000";
  attribute REG_ADDR_MASK9 : string;
  attribute REG_ADDR_MASK9 of bd_0ad1_M00_INI_stub_nmu_0_top_INST : label is "32'b00000000000000000000000000000000";
  attribute REG_ADDR_REMAP : string;
  attribute REG_ADDR_REMAP of bd_0ad1_M00_INI_stub_nmu_0_top_INST : label is "16'b0000000000000000";
  attribute REG_ADDR_RPADDR0 : string;
  attribute REG_ADDR_RPADDR0 of bd_0ad1_M00_INI_stub_nmu_0_top_INST : label is "32'b00000000000000000000000000000000";
  attribute REG_ADDR_RPADDR1 : string;
  attribute REG_ADDR_RPADDR1 of bd_0ad1_M00_INI_stub_nmu_0_top_INST : label is "32'b00000000000000000000000000000000";
  attribute REG_ADDR_RPADDR10 : string;
  attribute REG_ADDR_RPADDR10 of bd_0ad1_M00_INI_stub_nmu_0_top_INST : label is "32'b00000000000000000000000000000000";
  attribute REG_ADDR_RPADDR11 : string;
  attribute REG_ADDR_RPADDR11 of bd_0ad1_M00_INI_stub_nmu_0_top_INST : label is "32'b00000000000000000000000000000000";
  attribute REG_ADDR_RPADDR12 : string;
  attribute REG_ADDR_RPADDR12 of bd_0ad1_M00_INI_stub_nmu_0_top_INST : label is "32'b00000000000000000000000000000000";
  attribute REG_ADDR_RPADDR13 : string;
  attribute REG_ADDR_RPADDR13 of bd_0ad1_M00_INI_stub_nmu_0_top_INST : label is "32'b00000000000000000000000000000000";
  attribute REG_ADDR_RPADDR14 : string;
  attribute REG_ADDR_RPADDR14 of bd_0ad1_M00_INI_stub_nmu_0_top_INST : label is "32'b00000000000000000000000000000000";
  attribute REG_ADDR_RPADDR15 : string;
  attribute REG_ADDR_RPADDR15 of bd_0ad1_M00_INI_stub_nmu_0_top_INST : label is "32'b00000000000000000000000000000000";
  attribute REG_ADDR_RPADDR2 : string;
  attribute REG_ADDR_RPADDR2 of bd_0ad1_M00_INI_stub_nmu_0_top_INST : label is "32'b00000000000000000000000000000000";
  attribute REG_ADDR_RPADDR3 : string;
  attribute REG_ADDR_RPADDR3 of bd_0ad1_M00_INI_stub_nmu_0_top_INST : label is "32'b00000000000000000000000000000000";
  attribute REG_ADDR_RPADDR4 : string;
  attribute REG_ADDR_RPADDR4 of bd_0ad1_M00_INI_stub_nmu_0_top_INST : label is "32'b00000000000000000000000000000000";
  attribute REG_ADDR_RPADDR5 : string;
  attribute REG_ADDR_RPADDR5 of bd_0ad1_M00_INI_stub_nmu_0_top_INST : label is "32'b00000000000000000000000000000000";
  attribute REG_ADDR_RPADDR6 : string;
  attribute REG_ADDR_RPADDR6 of bd_0ad1_M00_INI_stub_nmu_0_top_INST : label is "32'b00000000000000000000000000000000";
  attribute REG_ADDR_RPADDR7 : string;
  attribute REG_ADDR_RPADDR7 of bd_0ad1_M00_INI_stub_nmu_0_top_INST : label is "32'b00000000000000000000000000000000";
  attribute REG_ADDR_RPADDR8 : string;
  attribute REG_ADDR_RPADDR8 of bd_0ad1_M00_INI_stub_nmu_0_top_INST : label is "32'b00000000000000000000000000000000";
  attribute REG_ADDR_RPADDR9 : string;
  attribute REG_ADDR_RPADDR9 of bd_0ad1_M00_INI_stub_nmu_0_top_INST : label is "32'b00000000000000000000000000000000";
  attribute REG_ADR_MAP_CPM : string;
  attribute REG_ADR_MAP_CPM of bd_0ad1_M00_INI_stub_nmu_0_top_INST : label is "12'b111111000000";
  attribute REG_ADR_MAP_FPD_AFI_0 : string;
  attribute REG_ADR_MAP_FPD_AFI_0 of bd_0ad1_M00_INI_stub_nmu_0_top_INST : label is "12'b111111000000";
  attribute REG_ADR_MAP_FPD_AFI_1 : string;
  attribute REG_ADR_MAP_FPD_AFI_1 of bd_0ad1_M00_INI_stub_nmu_0_top_INST : label is "12'b111111000000";
  attribute REG_ADR_MAP_LPD_AFI_FS : string;
  attribute REG_ADR_MAP_LPD_AFI_FS of bd_0ad1_M00_INI_stub_nmu_0_top_INST : label is "12'b111111000000";
  attribute REG_ADR_MAP_ME_ARRAY_0 : string;
  attribute REG_ADR_MAP_ME_ARRAY_0 of bd_0ad1_M00_INI_stub_nmu_0_top_INST : label is "12'b111111000000";
  attribute REG_ADR_MAP_ME_ARRAY_1 : string;
  attribute REG_ADR_MAP_ME_ARRAY_1 of bd_0ad1_M00_INI_stub_nmu_0_top_INST : label is "12'b111111000000";
  attribute REG_ADR_MAP_ME_ARRAY_2 : string;
  attribute REG_ADR_MAP_ME_ARRAY_2 of bd_0ad1_M00_INI_stub_nmu_0_top_INST : label is "12'b111111000000";
  attribute REG_ADR_MAP_ME_ARRAY_3 : string;
  attribute REG_ADR_MAP_ME_ARRAY_3 of bd_0ad1_M00_INI_stub_nmu_0_top_INST : label is "12'b111111000000";
  attribute REG_ADR_MAP_PCIE : string;
  attribute REG_ADR_MAP_PCIE of bd_0ad1_M00_INI_stub_nmu_0_top_INST : label is "12'b111111000000";
  attribute REG_ADR_MAP_PMC : string;
  attribute REG_ADR_MAP_PMC of bd_0ad1_M00_INI_stub_nmu_0_top_INST : label is "12'b111111000000";
  attribute REG_ADR_MAP_PMC_ALIAS_0 : string;
  attribute REG_ADR_MAP_PMC_ALIAS_0 of bd_0ad1_M00_INI_stub_nmu_0_top_INST : label is "12'b111111000000";
  attribute REG_ADR_MAP_PMC_ALIAS_1 : string;
  attribute REG_ADR_MAP_PMC_ALIAS_1 of bd_0ad1_M00_INI_stub_nmu_0_top_INST : label is "12'b111111000000";
  attribute REG_ADR_MAP_PMC_ALIAS_2 : string;
  attribute REG_ADR_MAP_PMC_ALIAS_2 of bd_0ad1_M00_INI_stub_nmu_0_top_INST : label is "12'b111111000000";
  attribute REG_ADR_MAP_PMC_ALIAS_3 : string;
  attribute REG_ADR_MAP_PMC_ALIAS_3 of bd_0ad1_M00_INI_stub_nmu_0_top_INST : label is "12'b111111000000";
  attribute REG_ADR_MAP_QSPI : string;
  attribute REG_ADR_MAP_QSPI of bd_0ad1_M00_INI_stub_nmu_0_top_INST : label is "12'b111111000000";
  attribute REG_ADR_MAP_STM_GIC : string;
  attribute REG_ADR_MAP_STM_GIC of bd_0ad1_M00_INI_stub_nmu_0_top_INST : label is "12'b111111000000";
  attribute REG_ADR_MAP_XPDS : string;
  attribute REG_ADR_MAP_XPDS of bd_0ad1_M00_INI_stub_nmu_0_top_INST : label is "12'b111111000000";
  attribute REG_AXI_NON_MOD_DISABLE : string;
  attribute REG_AXI_NON_MOD_DISABLE of bd_0ad1_M00_INI_stub_nmu_0_top_INST : label is "1'b0";
  attribute REG_AXI_PAR_CHK : string;
  attribute REG_AXI_PAR_CHK of bd_0ad1_M00_INI_stub_nmu_0_top_INST : label is "2'b00";
  attribute REG_CHOPSIZE : string;
  attribute REG_CHOPSIZE of bd_0ad1_M00_INI_stub_nmu_0_top_INST : label is "4'b1010";
  attribute REG_DDR_ADR_MAP0 : string;
  attribute REG_DDR_ADR_MAP0 of bd_0ad1_M00_INI_stub_nmu_0_top_INST : label is "15'b110011010001000";
  attribute REG_DDR_ADR_MAP1 : string;
  attribute REG_DDR_ADR_MAP1 of bd_0ad1_M00_INI_stub_nmu_0_top_INST : label is "15'b001111111111111";
  attribute REG_DDR_ADR_MAP2 : string;
  attribute REG_DDR_ADR_MAP2 of bd_0ad1_M00_INI_stub_nmu_0_top_INST : label is "15'b001111111111111";
  attribute REG_DDR_ADR_MAP3 : string;
  attribute REG_DDR_ADR_MAP3 of bd_0ad1_M00_INI_stub_nmu_0_top_INST : label is "15'b001111111111111";
  attribute REG_DDR_ADR_MAP4 : string;
  attribute REG_DDR_ADR_MAP4 of bd_0ad1_M00_INI_stub_nmu_0_top_INST : label is "15'b001111111111111";
  attribute REG_DDR_ADR_MAP5 : string;
  attribute REG_DDR_ADR_MAP5 of bd_0ad1_M00_INI_stub_nmu_0_top_INST : label is "15'b001111111111111";
  attribute REG_DDR_ADR_MAP6 : string;
  attribute REG_DDR_ADR_MAP6 of bd_0ad1_M00_INI_stub_nmu_0_top_INST : label is "15'b001111111111111";
  attribute REG_DDR_DST_MAP0 : string;
  attribute REG_DDR_DST_MAP0 of bd_0ad1_M00_INI_stub_nmu_0_top_INST : label is "12'b100010000000";
  attribute REG_DDR_DST_MAP1 : string;
  attribute REG_DDR_DST_MAP1 of bd_0ad1_M00_INI_stub_nmu_0_top_INST : label is "12'b010110000000";
  attribute REG_DDR_DST_MAP2 : string;
  attribute REG_DDR_DST_MAP2 of bd_0ad1_M00_INI_stub_nmu_0_top_INST : label is "12'b011110000000";
  attribute REG_DDR_DST_MAP3 : string;
  attribute REG_DDR_DST_MAP3 of bd_0ad1_M00_INI_stub_nmu_0_top_INST : label is "12'b011010000000";
  attribute REG_DDR_DST_MAP4 : string;
  attribute REG_DDR_DST_MAP4 of bd_0ad1_M00_INI_stub_nmu_0_top_INST : label is "12'b111111000000";
  attribute REG_DDR_DST_MAP5 : string;
  attribute REG_DDR_DST_MAP5 of bd_0ad1_M00_INI_stub_nmu_0_top_INST : label is "12'b111111000000";
  attribute REG_DDR_DST_MAP6 : string;
  attribute REG_DDR_DST_MAP6 of bd_0ad1_M00_INI_stub_nmu_0_top_INST : label is "12'b111111000000";
  attribute REG_DDR_DST_MAP7 : string;
  attribute REG_DDR_DST_MAP7 of bd_0ad1_M00_INI_stub_nmu_0_top_INST : label is "12'b111111000000";
  attribute REG_DWIDTH : string;
  attribute REG_DWIDTH of bd_0ad1_M00_INI_stub_nmu_0_top_INST : label is "3'b110";
  attribute REG_ECC_CHK_EN : string;
  attribute REG_ECC_CHK_EN of bd_0ad1_M00_INI_stub_nmu_0_top_INST : label is "1'b1";
  attribute REG_HBM_MAP_T0_CH0 : string;
  attribute REG_HBM_MAP_T0_CH0 of bd_0ad1_M00_INI_stub_nmu_0_top_INST : label is "12'b111111000000";
  attribute REG_HBM_MAP_T0_CH1 : string;
  attribute REG_HBM_MAP_T0_CH1 of bd_0ad1_M00_INI_stub_nmu_0_top_INST : label is "12'b111111000000";
  attribute REG_HBM_MAP_T0_CH10 : string;
  attribute REG_HBM_MAP_T0_CH10 of bd_0ad1_M00_INI_stub_nmu_0_top_INST : label is "12'b111111000000";
  attribute REG_HBM_MAP_T0_CH11 : string;
  attribute REG_HBM_MAP_T0_CH11 of bd_0ad1_M00_INI_stub_nmu_0_top_INST : label is "12'b111111000000";
  attribute REG_HBM_MAP_T0_CH12 : string;
  attribute REG_HBM_MAP_T0_CH12 of bd_0ad1_M00_INI_stub_nmu_0_top_INST : label is "12'b111111000000";
  attribute REG_HBM_MAP_T0_CH13 : string;
  attribute REG_HBM_MAP_T0_CH13 of bd_0ad1_M00_INI_stub_nmu_0_top_INST : label is "12'b111111000000";
  attribute REG_HBM_MAP_T0_CH14 : string;
  attribute REG_HBM_MAP_T0_CH14 of bd_0ad1_M00_INI_stub_nmu_0_top_INST : label is "12'b111111000000";
  attribute REG_HBM_MAP_T0_CH15 : string;
  attribute REG_HBM_MAP_T0_CH15 of bd_0ad1_M00_INI_stub_nmu_0_top_INST : label is "12'b111111000000";
  attribute REG_HBM_MAP_T0_CH2 : string;
  attribute REG_HBM_MAP_T0_CH2 of bd_0ad1_M00_INI_stub_nmu_0_top_INST : label is "12'b111111000000";
  attribute REG_HBM_MAP_T0_CH3 : string;
  attribute REG_HBM_MAP_T0_CH3 of bd_0ad1_M00_INI_stub_nmu_0_top_INST : label is "12'b111111000000";
  attribute REG_HBM_MAP_T0_CH4 : string;
  attribute REG_HBM_MAP_T0_CH4 of bd_0ad1_M00_INI_stub_nmu_0_top_INST : label is "12'b111111000000";
  attribute REG_HBM_MAP_T0_CH5 : string;
  attribute REG_HBM_MAP_T0_CH5 of bd_0ad1_M00_INI_stub_nmu_0_top_INST : label is "12'b111111000000";
  attribute REG_HBM_MAP_T0_CH6 : string;
  attribute REG_HBM_MAP_T0_CH6 of bd_0ad1_M00_INI_stub_nmu_0_top_INST : label is "12'b111111000000";
  attribute REG_HBM_MAP_T0_CH7 : string;
  attribute REG_HBM_MAP_T0_CH7 of bd_0ad1_M00_INI_stub_nmu_0_top_INST : label is "12'b111111000000";
  attribute REG_HBM_MAP_T0_CH8 : string;
  attribute REG_HBM_MAP_T0_CH8 of bd_0ad1_M00_INI_stub_nmu_0_top_INST : label is "12'b111111000000";
  attribute REG_HBM_MAP_T0_CH9 : string;
  attribute REG_HBM_MAP_T0_CH9 of bd_0ad1_M00_INI_stub_nmu_0_top_INST : label is "12'b111111000000";
  attribute REG_HBM_MAP_T1_CH0 : string;
  attribute REG_HBM_MAP_T1_CH0 of bd_0ad1_M00_INI_stub_nmu_0_top_INST : label is "12'b111111000000";
  attribute REG_HBM_MAP_T1_CH1 : string;
  attribute REG_HBM_MAP_T1_CH1 of bd_0ad1_M00_INI_stub_nmu_0_top_INST : label is "12'b111111000000";
  attribute REG_HBM_MAP_T1_CH10 : string;
  attribute REG_HBM_MAP_T1_CH10 of bd_0ad1_M00_INI_stub_nmu_0_top_INST : label is "12'b111111000000";
  attribute REG_HBM_MAP_T1_CH11 : string;
  attribute REG_HBM_MAP_T1_CH11 of bd_0ad1_M00_INI_stub_nmu_0_top_INST : label is "12'b111111000000";
  attribute REG_HBM_MAP_T1_CH12 : string;
  attribute REG_HBM_MAP_T1_CH12 of bd_0ad1_M00_INI_stub_nmu_0_top_INST : label is "12'b111111000000";
  attribute REG_HBM_MAP_T1_CH13 : string;
  attribute REG_HBM_MAP_T1_CH13 of bd_0ad1_M00_INI_stub_nmu_0_top_INST : label is "12'b111111000000";
  attribute REG_HBM_MAP_T1_CH14 : string;
  attribute REG_HBM_MAP_T1_CH14 of bd_0ad1_M00_INI_stub_nmu_0_top_INST : label is "12'b111111000000";
  attribute REG_HBM_MAP_T1_CH15 : string;
  attribute REG_HBM_MAP_T1_CH15 of bd_0ad1_M00_INI_stub_nmu_0_top_INST : label is "12'b111111000000";
  attribute REG_HBM_MAP_T1_CH2 : string;
  attribute REG_HBM_MAP_T1_CH2 of bd_0ad1_M00_INI_stub_nmu_0_top_INST : label is "12'b111111000000";
  attribute REG_HBM_MAP_T1_CH3 : string;
  attribute REG_HBM_MAP_T1_CH3 of bd_0ad1_M00_INI_stub_nmu_0_top_INST : label is "12'b111111000000";
  attribute REG_HBM_MAP_T1_CH4 : string;
  attribute REG_HBM_MAP_T1_CH4 of bd_0ad1_M00_INI_stub_nmu_0_top_INST : label is "12'b111111000000";
  attribute REG_HBM_MAP_T1_CH5 : string;
  attribute REG_HBM_MAP_T1_CH5 of bd_0ad1_M00_INI_stub_nmu_0_top_INST : label is "12'b111111000000";
  attribute REG_HBM_MAP_T1_CH6 : string;
  attribute REG_HBM_MAP_T1_CH6 of bd_0ad1_M00_INI_stub_nmu_0_top_INST : label is "12'b111111000000";
  attribute REG_HBM_MAP_T1_CH7 : string;
  attribute REG_HBM_MAP_T1_CH7 of bd_0ad1_M00_INI_stub_nmu_0_top_INST : label is "12'b111111000000";
  attribute REG_HBM_MAP_T1_CH8 : string;
  attribute REG_HBM_MAP_T1_CH8 of bd_0ad1_M00_INI_stub_nmu_0_top_INST : label is "12'b111111000000";
  attribute REG_HBM_MAP_T1_CH9 : string;
  attribute REG_HBM_MAP_T1_CH9 of bd_0ad1_M00_INI_stub_nmu_0_top_INST : label is "12'b111111000000";
  attribute REG_HBM_MAP_T2_CH0 : string;
  attribute REG_HBM_MAP_T2_CH0 of bd_0ad1_M00_INI_stub_nmu_0_top_INST : label is "12'b111111000000";
  attribute REG_HBM_MAP_T2_CH1 : string;
  attribute REG_HBM_MAP_T2_CH1 of bd_0ad1_M00_INI_stub_nmu_0_top_INST : label is "12'b111111000000";
  attribute REG_HBM_MAP_T2_CH10 : string;
  attribute REG_HBM_MAP_T2_CH10 of bd_0ad1_M00_INI_stub_nmu_0_top_INST : label is "12'b111111000000";
  attribute REG_HBM_MAP_T2_CH11 : string;
  attribute REG_HBM_MAP_T2_CH11 of bd_0ad1_M00_INI_stub_nmu_0_top_INST : label is "12'b111111000000";
  attribute REG_HBM_MAP_T2_CH12 : string;
  attribute REG_HBM_MAP_T2_CH12 of bd_0ad1_M00_INI_stub_nmu_0_top_INST : label is "12'b111111000000";
  attribute REG_HBM_MAP_T2_CH13 : string;
  attribute REG_HBM_MAP_T2_CH13 of bd_0ad1_M00_INI_stub_nmu_0_top_INST : label is "12'b111111000000";
  attribute REG_HBM_MAP_T2_CH14 : string;
  attribute REG_HBM_MAP_T2_CH14 of bd_0ad1_M00_INI_stub_nmu_0_top_INST : label is "12'b111111000000";
  attribute REG_HBM_MAP_T2_CH15 : string;
  attribute REG_HBM_MAP_T2_CH15 of bd_0ad1_M00_INI_stub_nmu_0_top_INST : label is "12'b111111000000";
  attribute REG_HBM_MAP_T2_CH2 : string;
  attribute REG_HBM_MAP_T2_CH2 of bd_0ad1_M00_INI_stub_nmu_0_top_INST : label is "12'b111111000000";
  attribute REG_HBM_MAP_T2_CH3 : string;
  attribute REG_HBM_MAP_T2_CH3 of bd_0ad1_M00_INI_stub_nmu_0_top_INST : label is "12'b111111000000";
  attribute REG_HBM_MAP_T2_CH4 : string;
  attribute REG_HBM_MAP_T2_CH4 of bd_0ad1_M00_INI_stub_nmu_0_top_INST : label is "12'b111111000000";
  attribute REG_HBM_MAP_T2_CH5 : string;
  attribute REG_HBM_MAP_T2_CH5 of bd_0ad1_M00_INI_stub_nmu_0_top_INST : label is "12'b111111000000";
  attribute REG_HBM_MAP_T2_CH6 : string;
  attribute REG_HBM_MAP_T2_CH6 of bd_0ad1_M00_INI_stub_nmu_0_top_INST : label is "12'b111111000000";
  attribute REG_HBM_MAP_T2_CH7 : string;
  attribute REG_HBM_MAP_T2_CH7 of bd_0ad1_M00_INI_stub_nmu_0_top_INST : label is "12'b111111000000";
  attribute REG_HBM_MAP_T2_CH8 : string;
  attribute REG_HBM_MAP_T2_CH8 of bd_0ad1_M00_INI_stub_nmu_0_top_INST : label is "12'b111111000000";
  attribute REG_HBM_MAP_T2_CH9 : string;
  attribute REG_HBM_MAP_T2_CH9 of bd_0ad1_M00_INI_stub_nmu_0_top_INST : label is "12'b111111000000";
  attribute REG_HBM_MAP_T3_CH0 : string;
  attribute REG_HBM_MAP_T3_CH0 of bd_0ad1_M00_INI_stub_nmu_0_top_INST : label is "12'b111111000000";
  attribute REG_HBM_MAP_T3_CH1 : string;
  attribute REG_HBM_MAP_T3_CH1 of bd_0ad1_M00_INI_stub_nmu_0_top_INST : label is "12'b111111000000";
  attribute REG_HBM_MAP_T3_CH10 : string;
  attribute REG_HBM_MAP_T3_CH10 of bd_0ad1_M00_INI_stub_nmu_0_top_INST : label is "12'b111111000000";
  attribute REG_HBM_MAP_T3_CH11 : string;
  attribute REG_HBM_MAP_T3_CH11 of bd_0ad1_M00_INI_stub_nmu_0_top_INST : label is "12'b111111000000";
  attribute REG_HBM_MAP_T3_CH12 : string;
  attribute REG_HBM_MAP_T3_CH12 of bd_0ad1_M00_INI_stub_nmu_0_top_INST : label is "12'b111111000000";
  attribute REG_HBM_MAP_T3_CH13 : string;
  attribute REG_HBM_MAP_T3_CH13 of bd_0ad1_M00_INI_stub_nmu_0_top_INST : label is "12'b111111000000";
  attribute REG_HBM_MAP_T3_CH14 : string;
  attribute REG_HBM_MAP_T3_CH14 of bd_0ad1_M00_INI_stub_nmu_0_top_INST : label is "12'b111111000000";
  attribute REG_HBM_MAP_T3_CH15 : string;
  attribute REG_HBM_MAP_T3_CH15 of bd_0ad1_M00_INI_stub_nmu_0_top_INST : label is "12'b111111000000";
  attribute REG_HBM_MAP_T3_CH2 : string;
  attribute REG_HBM_MAP_T3_CH2 of bd_0ad1_M00_INI_stub_nmu_0_top_INST : label is "12'b111111000000";
  attribute REG_HBM_MAP_T3_CH3 : string;
  attribute REG_HBM_MAP_T3_CH3 of bd_0ad1_M00_INI_stub_nmu_0_top_INST : label is "12'b111111000000";
  attribute REG_HBM_MAP_T3_CH4 : string;
  attribute REG_HBM_MAP_T3_CH4 of bd_0ad1_M00_INI_stub_nmu_0_top_INST : label is "12'b111111000000";
  attribute REG_HBM_MAP_T3_CH5 : string;
  attribute REG_HBM_MAP_T3_CH5 of bd_0ad1_M00_INI_stub_nmu_0_top_INST : label is "12'b111111000000";
  attribute REG_HBM_MAP_T3_CH6 : string;
  attribute REG_HBM_MAP_T3_CH6 of bd_0ad1_M00_INI_stub_nmu_0_top_INST : label is "12'b111111000000";
  attribute REG_HBM_MAP_T3_CH7 : string;
  attribute REG_HBM_MAP_T3_CH7 of bd_0ad1_M00_INI_stub_nmu_0_top_INST : label is "12'b111111000000";
  attribute REG_HBM_MAP_T3_CH8 : string;
  attribute REG_HBM_MAP_T3_CH8 of bd_0ad1_M00_INI_stub_nmu_0_top_INST : label is "12'b111111000000";
  attribute REG_HBM_MAP_T3_CH9 : string;
  attribute REG_HBM_MAP_T3_CH9 of bd_0ad1_M00_INI_stub_nmu_0_top_INST : label is "12'b111111000000";
  attribute REG_MODE_SELECT : string;
  attribute REG_MODE_SELECT of bd_0ad1_M00_INI_stub_nmu_0_top_INST : label is "16'b0000000000000000";
  attribute REG_OUTSTANDING_RD_TXN : string;
  attribute REG_OUTSTANDING_RD_TXN of bd_0ad1_M00_INI_stub_nmu_0_top_INST : label is "7'b1000000";
  attribute REG_OUTSTANDING_WR_TXN : string;
  attribute REG_OUTSTANDING_WR_TXN of bd_0ad1_M00_INI_stub_nmu_0_top_INST : label is "7'b1000000";
  attribute REG_PRIORITY : string;
  attribute REG_PRIORITY of bd_0ad1_M00_INI_stub_nmu_0_top_INST : label is "2'b00";
  attribute REG_RD_AXPROT_SEL : string;
  attribute REG_RD_AXPROT_SEL of bd_0ad1_M00_INI_stub_nmu_0_top_INST : label is "6'b000000";
  attribute REG_RD_RATE_CREDIT_DROP : string;
  attribute REG_RD_RATE_CREDIT_DROP of bd_0ad1_M00_INI_stub_nmu_0_top_INST : label is "10'b0000000100";
  attribute REG_RD_RATE_CREDIT_LIMIT : string;
  attribute REG_RD_RATE_CREDIT_LIMIT of bd_0ad1_M00_INI_stub_nmu_0_top_INST : label is "13'b0000100000000";
  attribute REG_RD_VCA_TOKEN0 : string;
  attribute REG_RD_VCA_TOKEN0 of bd_0ad1_M00_INI_stub_nmu_0_top_INST : label is "8'b00010100";
  attribute REG_RPOISON_TO_SLVERR : string;
  attribute REG_RPOISON_TO_SLVERR of bd_0ad1_M00_INI_stub_nmu_0_top_INST : label is "1'b0";
  attribute REG_RROB_RAM_SETTING : string;
  attribute REG_RROB_RAM_SETTING of bd_0ad1_M00_INI_stub_nmu_0_top_INST : label is "9'b000010010";
  attribute REG_SMID_SEL : string;
  attribute REG_SMID_SEL of bd_0ad1_M00_INI_stub_nmu_0_top_INST : label is "20'b00000000000000000000";
  attribute REG_SRC : string;
  attribute REG_SRC of bd_0ad1_M00_INI_stub_nmu_0_top_INST : label is "12'b000101000000";
  attribute REG_TBASE_AXI_TIMEOUT : string;
  attribute REG_TBASE_AXI_TIMEOUT of bd_0ad1_M00_INI_stub_nmu_0_top_INST : label is "3'b001";
  attribute REG_TBASE_MODE_RLIMIT_RD : string;
  attribute REG_TBASE_MODE_RLIMIT_RD of bd_0ad1_M00_INI_stub_nmu_0_top_INST : label is "3'b010";
  attribute REG_TBASE_MODE_RLIMIT_WR : string;
  attribute REG_TBASE_MODE_RLIMIT_WR of bd_0ad1_M00_INI_stub_nmu_0_top_INST : label is "3'b010";
  attribute REG_TBASE_TRK_TIMEOUT : string;
  attribute REG_TBASE_TRK_TIMEOUT of bd_0ad1_M00_INI_stub_nmu_0_top_INST : label is "3'b001";
  attribute REG_VC_MAP : string;
  attribute REG_VC_MAP of bd_0ad1_M00_INI_stub_nmu_0_top_INST : label is "12'b111010101000";
  attribute REG_WBUF_LAUNCH_SIZE : string;
  attribute REG_WBUF_LAUNCH_SIZE of bd_0ad1_M00_INI_stub_nmu_0_top_INST : label is "6'b010000";
  attribute REG_WBUF_RAM_SETTING : string;
  attribute REG_WBUF_RAM_SETTING of bd_0ad1_M00_INI_stub_nmu_0_top_INST : label is "9'b000010010";
  attribute REG_WR_AXPROT_SEL : string;
  attribute REG_WR_AXPROT_SEL of bd_0ad1_M00_INI_stub_nmu_0_top_INST : label is "6'b000000";
  attribute REG_WR_RATE_CREDIT_DROP : string;
  attribute REG_WR_RATE_CREDIT_DROP of bd_0ad1_M00_INI_stub_nmu_0_top_INST : label is "10'b0000000100";
  attribute REG_WR_RATE_CREDIT_LIMIT : string;
  attribute REG_WR_RATE_CREDIT_LIMIT of bd_0ad1_M00_INI_stub_nmu_0_top_INST : label is "13'b0000100000000";
  attribute REG_WR_VCA_TOKEN0 : string;
  attribute REG_WR_VCA_TOKEN0 of bd_0ad1_M00_INI_stub_nmu_0_top_INST : label is "8'b00010000";
  attribute X_INTERFACE_INFO : string;
  attribute X_INTERFACE_INFO of IF_NOC_AXI_ARREADY : signal is "xilinx.com:interface:aximm:1.0 SAXI4 ARREADY";
  attribute X_INTERFACE_INFO of IF_NOC_AXI_ARVALID : signal is "xilinx.com:interface:aximm:1.0 SAXI4 ARVALID";
  attribute X_INTERFACE_INFO of IF_NOC_AXI_AWREADY : signal is "xilinx.com:interface:aximm:1.0 SAXI4 AWREADY";
  attribute X_INTERFACE_INFO of IF_NOC_AXI_AWVALID : signal is "xilinx.com:interface:aximm:1.0 SAXI4 AWVALID";
  attribute X_INTERFACE_INFO of IF_NOC_AXI_BREADY : signal is "xilinx.com:interface:aximm:1.0 SAXI4 BREADY";
  attribute X_INTERFACE_INFO of IF_NOC_AXI_BVALID : signal is "xilinx.com:interface:aximm:1.0 SAXI4 BVALID";
  attribute X_INTERFACE_INFO of IF_NOC_AXI_RREADY : signal is "xilinx.com:interface:aximm:1.0 SAXI4 RREADY";
  attribute X_INTERFACE_INFO of IF_NOC_AXI_RVALID : signal is "xilinx.com:interface:aximm:1.0 SAXI4 RVALID";
  attribute X_INTERFACE_INFO of IF_NOC_AXI_WREADY : signal is "xilinx.com:interface:aximm:1.0 SAXI4 WREADY";
  attribute X_INTERFACE_INFO of IF_NOC_AXI_WVALID : signal is "xilinx.com:interface:aximm:1.0 SAXI4 WVALID";
  attribute X_INTERFACE_INFO of IF_NOC_NPP_IN_NOC_CREDIT_RDY : signal is "xilinx.com:interface:npp:1.0 SNPP CREDIT_RDY";
  attribute X_INTERFACE_INFO of IF_NOC_NPP_OUT_NOC_CREDIT_RDY : signal is "xilinx.com:interface:npp:1.0 MNPP CREDIT_RDY";
  attribute dont_touch : string;
  attribute dont_touch of NMU : signal is "true";
  attribute X_INTERFACE_INFO of aclk : signal is "xilinx.com:signal:clock:1.0 aclk aclk";
  attribute X_INTERFACE_PARAMETER : string;
  attribute X_INTERFACE_PARAMETER of aclk : signal is "XIL_INTERFACENAME aclk, ASSOCIATED_BUSIF SAXI4:SAXI_STREAM, FREQ_HZ 100000000, PHASE 0.000";
  attribute X_INTERFACE_INFO of IF_NOC_AXI_ARADDR : signal is "xilinx.com:interface:aximm:1.0 SAXI4 ARADDR";
  attribute X_INTERFACE_INFO of IF_NOC_AXI_ARBURST : signal is "xilinx.com:interface:aximm:1.0 SAXI4 ARBURST";
  attribute X_INTERFACE_INFO of IF_NOC_AXI_ARCACHE : signal is "xilinx.com:interface:aximm:1.0 SAXI4 ARCACHE";
  attribute X_INTERFACE_INFO of IF_NOC_AXI_ARLEN : signal is "xilinx.com:interface:aximm:1.0 SAXI4 ARLEN";
  attribute X_INTERFACE_INFO of IF_NOC_AXI_ARLOCK : signal is "xilinx.com:interface:aximm:1.0 SAXI4 ARLOCK";
  attribute X_INTERFACE_INFO of IF_NOC_AXI_ARPROT : signal is "xilinx.com:interface:aximm:1.0 SAXI4 ARPROT";
  attribute X_INTERFACE_INFO of IF_NOC_AXI_ARQOS : signal is "xilinx.com:interface:aximm:1.0 SAXI4 ARQOS";
  attribute X_INTERFACE_INFO of IF_NOC_AXI_ARREGION : signal is "xilinx.com:interface:aximm:1.0 SAXI4 ARREGION";
  attribute X_INTERFACE_INFO of IF_NOC_AXI_ARSIZE : signal is "xilinx.com:interface:aximm:1.0 SAXI4 ARSIZE";
  attribute X_INTERFACE_INFO of IF_NOC_AXI_AWADDR : signal is "xilinx.com:interface:aximm:1.0 SAXI4 AWADDR";
  attribute X_INTERFACE_INFO of IF_NOC_AXI_AWBURST : signal is "xilinx.com:interface:aximm:1.0 SAXI4 AWBURST";
  attribute X_INTERFACE_INFO of IF_NOC_AXI_AWCACHE : signal is "xilinx.com:interface:aximm:1.0 SAXI4 AWCACHE";
  attribute X_INTERFACE_INFO of IF_NOC_AXI_AWLEN : signal is "xilinx.com:interface:aximm:1.0 SAXI4 AWLEN";
  attribute X_INTERFACE_INFO of IF_NOC_AXI_AWLOCK : signal is "xilinx.com:interface:aximm:1.0 SAXI4 AWLOCK";
  attribute X_INTERFACE_INFO of IF_NOC_AXI_AWPROT : signal is "xilinx.com:interface:aximm:1.0 SAXI4 AWPROT";
  attribute X_INTERFACE_INFO of IF_NOC_AXI_AWQOS : signal is "xilinx.com:interface:aximm:1.0 SAXI4 AWQOS";
  attribute X_INTERFACE_INFO of IF_NOC_AXI_AWREGION : signal is "xilinx.com:interface:aximm:1.0 SAXI4 AWREGION";
  attribute X_INTERFACE_INFO of IF_NOC_AXI_AWSIZE : signal is "xilinx.com:interface:aximm:1.0 SAXI4 AWSIZE";
  attribute X_INTERFACE_INFO of IF_NOC_AXI_BRESP : signal is "xilinx.com:interface:aximm:1.0 SAXI4 BRESP";
  attribute X_INTERFACE_INFO of IF_NOC_AXI_RDATA : signal is "xilinx.com:interface:aximm:1.0 SAXI4 RDATA";
  attribute X_INTERFACE_INFO of IF_NOC_AXI_RLAST : signal is "xilinx.com:interface:aximm:1.0 SAXI4 RLAST";
  attribute X_INTERFACE_INFO of IF_NOC_AXI_RRESP : signal is "xilinx.com:interface:aximm:1.0 SAXI4 RRESP";
  attribute X_INTERFACE_INFO of IF_NOC_AXI_WDATA : signal is "xilinx.com:interface:aximm:1.0 SAXI4 WDATA";
  attribute X_INTERFACE_INFO of IF_NOC_AXI_WLAST : signal is "xilinx.com:interface:aximm:1.0 SAXI4 WLAST";
  attribute X_INTERFACE_INFO of IF_NOC_AXI_WSTRB : signal is "xilinx.com:interface:aximm:1.0 SAXI4 WSTRB";
  attribute X_INTERFACE_INFO of IF_NOC_NPP_IN_NOC_CREDIT_RETURN : signal is "xilinx.com:interface:npp:1.0 SNPP CREDIT_RETURN";
  attribute X_INTERFACE_INFO of IF_NOC_NPP_IN_NOC_FLIT : signal is "xilinx.com:interface:npp:1.0 SNPP FLIT";
  attribute X_INTERFACE_INFO of IF_NOC_NPP_IN_NOC_VALID : signal is "xilinx.com:interface:npp:1.0 SNPP VALID";
  attribute X_INTERFACE_PARAMETER of IF_NOC_NPP_IN_NOC_VALID : signal is "XIL_INTERFACENAME SNPP, IN_SYNTHESIS_HDL NO, CAN_DEBUG false";
  attribute X_INTERFACE_INFO of IF_NOC_NPP_OUT_NOC_CREDIT_RETURN : signal is "xilinx.com:interface:npp:1.0 MNPP CREDIT_RETURN";
  attribute X_INTERFACE_PARAMETER of IF_NOC_NPP_OUT_NOC_CREDIT_RETURN : signal is "XIL_INTERFACENAME MNPP, IN_SYNTHESIS_HDL NO, CAN_DEBUG false";
  attribute X_INTERFACE_INFO of IF_NOC_NPP_OUT_NOC_FLIT : signal is "xilinx.com:interface:npp:1.0 MNPP FLIT";
  attribute X_INTERFACE_INFO of IF_NOC_NPP_OUT_NOC_VALID : signal is "xilinx.com:interface:npp:1.0 MNPP VALID";
begin
bd_0ad1_M00_INI_stub_nmu_0_top_INST: entity work.ulp_inst_0_axi_noc_kernel0_0_bd_0ad1_M00_INI_stub_nmu_0_top
     port map (
      IF_NOC_AXI_ARADDR(0) => IF_NOC_AXI_ARADDR(0),
      IF_NOC_AXI_ARBURST(1 downto 0) => IF_NOC_AXI_ARBURST(1 downto 0),
      IF_NOC_AXI_ARCACHE(3 downto 0) => IF_NOC_AXI_ARCACHE(3 downto 0),
      IF_NOC_AXI_ARLEN(7 downto 0) => IF_NOC_AXI_ARLEN(7 downto 0),
      IF_NOC_AXI_ARLOCK(0) => IF_NOC_AXI_ARLOCK(0),
      IF_NOC_AXI_ARPROT(2 downto 0) => IF_NOC_AXI_ARPROT(2 downto 0),
      IF_NOC_AXI_ARQOS(3 downto 0) => IF_NOC_AXI_ARQOS(3 downto 0),
      IF_NOC_AXI_ARREADY => IF_NOC_AXI_ARREADY,
      IF_NOC_AXI_ARREGION(3 downto 0) => IF_NOC_AXI_ARREGION(3 downto 0),
      IF_NOC_AXI_ARSIZE(2 downto 0) => IF_NOC_AXI_ARSIZE(2 downto 0),
      IF_NOC_AXI_ARVALID => IF_NOC_AXI_ARVALID,
      IF_NOC_AXI_AWADDR(0) => IF_NOC_AXI_AWADDR(0),
      IF_NOC_AXI_AWBURST(1 downto 0) => IF_NOC_AXI_AWBURST(1 downto 0),
      IF_NOC_AXI_AWCACHE(3 downto 0) => IF_NOC_AXI_AWCACHE(3 downto 0),
      IF_NOC_AXI_AWLEN(7 downto 0) => IF_NOC_AXI_AWLEN(7 downto 0),
      IF_NOC_AXI_AWLOCK(0) => IF_NOC_AXI_AWLOCK(0),
      IF_NOC_AXI_AWPROT(2 downto 0) => IF_NOC_AXI_AWPROT(2 downto 0),
      IF_NOC_AXI_AWQOS(3 downto 0) => IF_NOC_AXI_AWQOS(3 downto 0),
      IF_NOC_AXI_AWREADY => IF_NOC_AXI_AWREADY,
      IF_NOC_AXI_AWREGION(3 downto 0) => IF_NOC_AXI_AWREGION(3 downto 0),
      IF_NOC_AXI_AWSIZE(2 downto 0) => IF_NOC_AXI_AWSIZE(2 downto 0),
      IF_NOC_AXI_AWVALID => IF_NOC_AXI_AWVALID,
      IF_NOC_AXI_BREADY => IF_NOC_AXI_BREADY,
      IF_NOC_AXI_BRESP(1 downto 0) => IF_NOC_AXI_BRESP(1 downto 0),
      IF_NOC_AXI_BVALID => IF_NOC_AXI_BVALID,
      IF_NOC_AXI_RDATA(511 downto 0) => IF_NOC_AXI_RDATA(511 downto 0),
      IF_NOC_AXI_RLAST(0) => IF_NOC_AXI_RLAST(0),
      IF_NOC_AXI_RREADY => IF_NOC_AXI_RREADY,
      IF_NOC_AXI_RRESP(1 downto 0) => IF_NOC_AXI_RRESP(1 downto 0),
      IF_NOC_AXI_RVALID => IF_NOC_AXI_RVALID,
      IF_NOC_AXI_WDATA(511 downto 0) => IF_NOC_AXI_WDATA(511 downto 0),
      IF_NOC_AXI_WLAST(0) => IF_NOC_AXI_WLAST(0),
      IF_NOC_AXI_WREADY => IF_NOC_AXI_WREADY,
      IF_NOC_AXI_WSTRB(63 downto 0) => IF_NOC_AXI_WSTRB(63 downto 0),
      IF_NOC_AXI_WVALID => IF_NOC_AXI_WVALID,
      IF_NOC_NPP_IN_NOC_CREDIT_RDY => IF_NOC_NPP_IN_NOC_CREDIT_RDY,
      IF_NOC_NPP_IN_NOC_CREDIT_RETURN(7 downto 0) => IF_NOC_NPP_IN_NOC_CREDIT_RETURN(7 downto 0),
      IF_NOC_NPP_IN_NOC_FLIT(181 downto 0) => IF_NOC_NPP_IN_NOC_FLIT(181 downto 0),
      IF_NOC_NPP_IN_NOC_VALID(7 downto 0) => IF_NOC_NPP_IN_NOC_VALID(7 downto 0),
      IF_NOC_NPP_OUT_NOC_CREDIT_RDY => IF_NOC_NPP_OUT_NOC_CREDIT_RDY,
      IF_NOC_NPP_OUT_NOC_CREDIT_RETURN(7 downto 0) => IF_NOC_NPP_OUT_NOC_CREDIT_RETURN(7 downto 0),
      IF_NOC_NPP_OUT_NOC_FLIT(181 downto 0) => IF_NOC_NPP_OUT_NOC_FLIT(181 downto 0),
      IF_NOC_NPP_OUT_NOC_VALID(7 downto 0) => IF_NOC_NPP_OUT_NOC_VALID(7 downto 0),
      NMU => NMU,
      NMU_RD_DEST_MODE => NMU_RD_DEST_MODE,
      NMU_RD_USR_DST(11 downto 0) => NMU_RD_USR_DST(11 downto 0),
      NMU_WR_DEST_MODE => NMU_WR_DEST_MODE,
      NMU_WR_USR_DST(11 downto 0) => NMU_WR_USR_DST(11 downto 0),
      aclk => aclk
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity ulp_inst_0_axi_noc_kernel0_0_bd_0ad1_M01_INI_stub_nmu_0 is
  port (
    IF_NOC_AXI_WVALID : in STD_LOGIC;
    IF_NOC_AXI_WREADY : out STD_LOGIC;
    IF_NOC_AXI_WLAST : in STD_LOGIC_VECTOR ( 0 to 0 );
    IF_NOC_AXI_WDATA : in STD_LOGIC_VECTOR ( 511 downto 0 );
    IF_NOC_AXI_WSTRB : in STD_LOGIC_VECTOR ( 63 downto 0 );
    IF_NOC_AXI_ARREADY : out STD_LOGIC;
    IF_NOC_AXI_AWREADY : out STD_LOGIC;
    IF_NOC_AXI_BRESP : out STD_LOGIC_VECTOR ( 1 downto 0 );
    IF_NOC_AXI_BVALID : out STD_LOGIC;
    IF_NOC_AXI_RDATA : out STD_LOGIC_VECTOR ( 511 downto 0 );
    IF_NOC_AXI_RLAST : out STD_LOGIC_VECTOR ( 0 to 0 );
    IF_NOC_AXI_RRESP : out STD_LOGIC_VECTOR ( 1 downto 0 );
    IF_NOC_AXI_RVALID : out STD_LOGIC;
    IF_NOC_AXI_ARADDR : in STD_LOGIC_VECTOR ( 0 to 0 );
    IF_NOC_AXI_ARBURST : in STD_LOGIC_VECTOR ( 1 downto 0 );
    IF_NOC_AXI_ARCACHE : in STD_LOGIC_VECTOR ( 3 downto 0 );
    IF_NOC_AXI_ARLEN : in STD_LOGIC_VECTOR ( 7 downto 0 );
    IF_NOC_AXI_ARLOCK : in STD_LOGIC_VECTOR ( 0 to 0 );
    IF_NOC_AXI_ARPROT : in STD_LOGIC_VECTOR ( 2 downto 0 );
    IF_NOC_AXI_ARQOS : in STD_LOGIC_VECTOR ( 3 downto 0 );
    IF_NOC_AXI_ARREGION : in STD_LOGIC_VECTOR ( 3 downto 0 );
    IF_NOC_AXI_ARSIZE : in STD_LOGIC_VECTOR ( 2 downto 0 );
    IF_NOC_AXI_ARVALID : in STD_LOGIC;
    IF_NOC_AXI_AWADDR : in STD_LOGIC_VECTOR ( 0 to 0 );
    IF_NOC_AXI_AWBURST : in STD_LOGIC_VECTOR ( 1 downto 0 );
    IF_NOC_AXI_AWCACHE : in STD_LOGIC_VECTOR ( 3 downto 0 );
    IF_NOC_AXI_AWLEN : in STD_LOGIC_VECTOR ( 7 downto 0 );
    IF_NOC_AXI_AWLOCK : in STD_LOGIC_VECTOR ( 0 to 0 );
    IF_NOC_AXI_AWPROT : in STD_LOGIC_VECTOR ( 2 downto 0 );
    IF_NOC_AXI_AWQOS : in STD_LOGIC_VECTOR ( 3 downto 0 );
    IF_NOC_AXI_AWREGION : in STD_LOGIC_VECTOR ( 3 downto 0 );
    IF_NOC_AXI_AWSIZE : in STD_LOGIC_VECTOR ( 2 downto 0 );
    IF_NOC_AXI_AWVALID : in STD_LOGIC;
    IF_NOC_AXI_BREADY : in STD_LOGIC;
    IF_NOC_AXI_RREADY : in STD_LOGIC;
    NMU_RD_DEST_MODE : in STD_LOGIC;
    NMU_WR_DEST_MODE : in STD_LOGIC;
    IF_NOC_NPP_IN_NOC_CREDIT_RETURN : out STD_LOGIC_VECTOR ( 7 downto 0 );
    IF_NOC_NPP_OUT_NOC_CREDIT_RDY : out STD_LOGIC;
    IF_NOC_NPP_OUT_NOC_FLIT : out STD_LOGIC_VECTOR ( 181 downto 0 );
    IF_NOC_NPP_OUT_NOC_VALID : out STD_LOGIC_VECTOR ( 7 downto 0 );
    aclk : in STD_LOGIC;
    IF_NOC_NPP_IN_NOC_CREDIT_RDY : in STD_LOGIC;
    IF_NOC_NPP_IN_NOC_FLIT : in STD_LOGIC_VECTOR ( 181 downto 0 );
    IF_NOC_NPP_IN_NOC_VALID : in STD_LOGIC_VECTOR ( 7 downto 0 );
    IF_NOC_NPP_OUT_NOC_CREDIT_RETURN : in STD_LOGIC_VECTOR ( 7 downto 0 );
    NMU : out STD_LOGIC;
    NMU_WR_USR_DST : in STD_LOGIC_VECTOR ( 11 downto 0 );
    NMU_RD_USR_DST : in STD_LOGIC_VECTOR ( 11 downto 0 )
  );
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of ulp_inst_0_axi_noc_kernel0_0_bd_0ad1_M01_INI_stub_nmu_0 : entity is "noc_nmu_0,noc_nmu_v1_0_0_0,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of ulp_inst_0_axi_noc_kernel0_0_bd_0ad1_M01_INI_stub_nmu_0 : entity is "yes";
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of ulp_inst_0_axi_noc_kernel0_0_bd_0ad1_M01_INI_stub_nmu_0 : entity is "bd_0ad1_M01_INI_stub_nmu_0";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of ulp_inst_0_axi_noc_kernel0_0_bd_0ad1_M01_INI_stub_nmu_0 : entity is "noc_nmu_v1_0_0_0,Vivado 2018.1.0";
end ulp_inst_0_axi_noc_kernel0_0_bd_0ad1_M01_INI_stub_nmu_0;

architecture STRUCTURE of ulp_inst_0_axi_noc_kernel0_0_bd_0ad1_M01_INI_stub_nmu_0 is
  attribute REG_ADDR_DST0 : string;
  attribute REG_ADDR_DST0 of bd_0ad1_M01_INI_stub_nmu_0_top_INST : label is "16'b0000000000000000";
  attribute REG_ADDR_DST1 : string;
  attribute REG_ADDR_DST1 of bd_0ad1_M01_INI_stub_nmu_0_top_INST : label is "16'b0000000000000000";
  attribute REG_ADDR_DST10 : string;
  attribute REG_ADDR_DST10 of bd_0ad1_M01_INI_stub_nmu_0_top_INST : label is "16'b0000000000000000";
  attribute REG_ADDR_DST11 : string;
  attribute REG_ADDR_DST11 of bd_0ad1_M01_INI_stub_nmu_0_top_INST : label is "16'b0000000000000000";
  attribute REG_ADDR_DST12 : string;
  attribute REG_ADDR_DST12 of bd_0ad1_M01_INI_stub_nmu_0_top_INST : label is "16'b0000000000000000";
  attribute REG_ADDR_DST13 : string;
  attribute REG_ADDR_DST13 of bd_0ad1_M01_INI_stub_nmu_0_top_INST : label is "16'b0000000000000000";
  attribute REG_ADDR_DST14 : string;
  attribute REG_ADDR_DST14 of bd_0ad1_M01_INI_stub_nmu_0_top_INST : label is "16'b0000000000000000";
  attribute REG_ADDR_DST15 : string;
  attribute REG_ADDR_DST15 of bd_0ad1_M01_INI_stub_nmu_0_top_INST : label is "16'b0000000000000000";
  attribute REG_ADDR_DST2 : string;
  attribute REG_ADDR_DST2 of bd_0ad1_M01_INI_stub_nmu_0_top_INST : label is "16'b0000000000000000";
  attribute REG_ADDR_DST3 : string;
  attribute REG_ADDR_DST3 of bd_0ad1_M01_INI_stub_nmu_0_top_INST : label is "16'b0000000000000000";
  attribute REG_ADDR_DST4 : string;
  attribute REG_ADDR_DST4 of bd_0ad1_M01_INI_stub_nmu_0_top_INST : label is "16'b0000000000000000";
  attribute REG_ADDR_DST5 : string;
  attribute REG_ADDR_DST5 of bd_0ad1_M01_INI_stub_nmu_0_top_INST : label is "16'b0000000000000000";
  attribute REG_ADDR_DST6 : string;
  attribute REG_ADDR_DST6 of bd_0ad1_M01_INI_stub_nmu_0_top_INST : label is "16'b0000000000000000";
  attribute REG_ADDR_DST7 : string;
  attribute REG_ADDR_DST7 of bd_0ad1_M01_INI_stub_nmu_0_top_INST : label is "16'b0000000000000000";
  attribute REG_ADDR_DST8 : string;
  attribute REG_ADDR_DST8 of bd_0ad1_M01_INI_stub_nmu_0_top_INST : label is "16'b0000000000000000";
  attribute REG_ADDR_DST9 : string;
  attribute REG_ADDR_DST9 of bd_0ad1_M01_INI_stub_nmu_0_top_INST : label is "16'b0000000000000000";
  attribute REG_ADDR_ENABLE : string;
  attribute REG_ADDR_ENABLE of bd_0ad1_M01_INI_stub_nmu_0_top_INST : label is "16'b0000000000000000";
  attribute REG_ADDR_MADDR0 : string;
  attribute REG_ADDR_MADDR0 of bd_0ad1_M01_INI_stub_nmu_0_top_INST : label is "32'b00000000000000000000000000000000";
  attribute REG_ADDR_MADDR1 : string;
  attribute REG_ADDR_MADDR1 of bd_0ad1_M01_INI_stub_nmu_0_top_INST : label is "32'b00000000000000000000000000000000";
  attribute REG_ADDR_MADDR10 : string;
  attribute REG_ADDR_MADDR10 of bd_0ad1_M01_INI_stub_nmu_0_top_INST : label is "32'b00000000000000000000000000000000";
  attribute REG_ADDR_MADDR11 : string;
  attribute REG_ADDR_MADDR11 of bd_0ad1_M01_INI_stub_nmu_0_top_INST : label is "32'b00000000000000000000000000000000";
  attribute REG_ADDR_MADDR12 : string;
  attribute REG_ADDR_MADDR12 of bd_0ad1_M01_INI_stub_nmu_0_top_INST : label is "32'b00000000000000000000000000000000";
  attribute REG_ADDR_MADDR13 : string;
  attribute REG_ADDR_MADDR13 of bd_0ad1_M01_INI_stub_nmu_0_top_INST : label is "32'b00000000000000000000000000000000";
  attribute REG_ADDR_MADDR14 : string;
  attribute REG_ADDR_MADDR14 of bd_0ad1_M01_INI_stub_nmu_0_top_INST : label is "32'b00000000000000000000000000000000";
  attribute REG_ADDR_MADDR15 : string;
  attribute REG_ADDR_MADDR15 of bd_0ad1_M01_INI_stub_nmu_0_top_INST : label is "32'b00000000000000000000000000000000";
  attribute REG_ADDR_MADDR2 : string;
  attribute REG_ADDR_MADDR2 of bd_0ad1_M01_INI_stub_nmu_0_top_INST : label is "32'b00000000000000000000000000000000";
  attribute REG_ADDR_MADDR3 : string;
  attribute REG_ADDR_MADDR3 of bd_0ad1_M01_INI_stub_nmu_0_top_INST : label is "32'b00000000000000000000000000000000";
  attribute REG_ADDR_MADDR4 : string;
  attribute REG_ADDR_MADDR4 of bd_0ad1_M01_INI_stub_nmu_0_top_INST : label is "32'b00000000000000000000000000000000";
  attribute REG_ADDR_MADDR5 : string;
  attribute REG_ADDR_MADDR5 of bd_0ad1_M01_INI_stub_nmu_0_top_INST : label is "32'b00000000000000000000000000000000";
  attribute REG_ADDR_MADDR6 : string;
  attribute REG_ADDR_MADDR6 of bd_0ad1_M01_INI_stub_nmu_0_top_INST : label is "32'b00000000000000000000000000000000";
  attribute REG_ADDR_MADDR7 : string;
  attribute REG_ADDR_MADDR7 of bd_0ad1_M01_INI_stub_nmu_0_top_INST : label is "32'b00000000000000000000000000000000";
  attribute REG_ADDR_MADDR8 : string;
  attribute REG_ADDR_MADDR8 of bd_0ad1_M01_INI_stub_nmu_0_top_INST : label is "32'b00000000000000000000000000000000";
  attribute REG_ADDR_MADDR9 : string;
  attribute REG_ADDR_MADDR9 of bd_0ad1_M01_INI_stub_nmu_0_top_INST : label is "32'b00000000000000000000000000000000";
  attribute REG_ADDR_MASK0 : string;
  attribute REG_ADDR_MASK0 of bd_0ad1_M01_INI_stub_nmu_0_top_INST : label is "32'b00000000000000000000000000000000";
  attribute REG_ADDR_MASK1 : string;
  attribute REG_ADDR_MASK1 of bd_0ad1_M01_INI_stub_nmu_0_top_INST : label is "32'b00000000000000000000000000000000";
  attribute REG_ADDR_MASK10 : string;
  attribute REG_ADDR_MASK10 of bd_0ad1_M01_INI_stub_nmu_0_top_INST : label is "32'b00000000000000000000000000000000";
  attribute REG_ADDR_MASK11 : string;
  attribute REG_ADDR_MASK11 of bd_0ad1_M01_INI_stub_nmu_0_top_INST : label is "32'b00000000000000000000000000000000";
  attribute REG_ADDR_MASK12 : string;
  attribute REG_ADDR_MASK12 of bd_0ad1_M01_INI_stub_nmu_0_top_INST : label is "32'b00000000000000000000000000000000";
  attribute REG_ADDR_MASK13 : string;
  attribute REG_ADDR_MASK13 of bd_0ad1_M01_INI_stub_nmu_0_top_INST : label is "32'b00000000000000000000000000000000";
  attribute REG_ADDR_MASK14 : string;
  attribute REG_ADDR_MASK14 of bd_0ad1_M01_INI_stub_nmu_0_top_INST : label is "32'b00000000000000000000000000000000";
  attribute REG_ADDR_MASK15 : string;
  attribute REG_ADDR_MASK15 of bd_0ad1_M01_INI_stub_nmu_0_top_INST : label is "32'b00000000000000000000000000000000";
  attribute REG_ADDR_MASK2 : string;
  attribute REG_ADDR_MASK2 of bd_0ad1_M01_INI_stub_nmu_0_top_INST : label is "32'b00000000000000000000000000000000";
  attribute REG_ADDR_MASK3 : string;
  attribute REG_ADDR_MASK3 of bd_0ad1_M01_INI_stub_nmu_0_top_INST : label is "32'b00000000000000000000000000000000";
  attribute REG_ADDR_MASK4 : string;
  attribute REG_ADDR_MASK4 of bd_0ad1_M01_INI_stub_nmu_0_top_INST : label is "32'b00000000000000000000000000000000";
  attribute REG_ADDR_MASK5 : string;
  attribute REG_ADDR_MASK5 of bd_0ad1_M01_INI_stub_nmu_0_top_INST : label is "32'b00000000000000000000000000000000";
  attribute REG_ADDR_MASK6 : string;
  attribute REG_ADDR_MASK6 of bd_0ad1_M01_INI_stub_nmu_0_top_INST : label is "32'b00000000000000000000000000000000";
  attribute REG_ADDR_MASK7 : string;
  attribute REG_ADDR_MASK7 of bd_0ad1_M01_INI_stub_nmu_0_top_INST : label is "32'b00000000000000000000000000000000";
  attribute REG_ADDR_MASK8 : string;
  attribute REG_ADDR_MASK8 of bd_0ad1_M01_INI_stub_nmu_0_top_INST : label is "32'b00000000000000000000000000000000";
  attribute REG_ADDR_MASK9 : string;
  attribute REG_ADDR_MASK9 of bd_0ad1_M01_INI_stub_nmu_0_top_INST : label is "32'b00000000000000000000000000000000";
  attribute REG_ADDR_REMAP : string;
  attribute REG_ADDR_REMAP of bd_0ad1_M01_INI_stub_nmu_0_top_INST : label is "16'b0000000000000000";
  attribute REG_ADDR_RPADDR0 : string;
  attribute REG_ADDR_RPADDR0 of bd_0ad1_M01_INI_stub_nmu_0_top_INST : label is "32'b00000000000000000000000000000000";
  attribute REG_ADDR_RPADDR1 : string;
  attribute REG_ADDR_RPADDR1 of bd_0ad1_M01_INI_stub_nmu_0_top_INST : label is "32'b00000000000000000000000000000000";
  attribute REG_ADDR_RPADDR10 : string;
  attribute REG_ADDR_RPADDR10 of bd_0ad1_M01_INI_stub_nmu_0_top_INST : label is "32'b00000000000000000000000000000000";
  attribute REG_ADDR_RPADDR11 : string;
  attribute REG_ADDR_RPADDR11 of bd_0ad1_M01_INI_stub_nmu_0_top_INST : label is "32'b00000000000000000000000000000000";
  attribute REG_ADDR_RPADDR12 : string;
  attribute REG_ADDR_RPADDR12 of bd_0ad1_M01_INI_stub_nmu_0_top_INST : label is "32'b00000000000000000000000000000000";
  attribute REG_ADDR_RPADDR13 : string;
  attribute REG_ADDR_RPADDR13 of bd_0ad1_M01_INI_stub_nmu_0_top_INST : label is "32'b00000000000000000000000000000000";
  attribute REG_ADDR_RPADDR14 : string;
  attribute REG_ADDR_RPADDR14 of bd_0ad1_M01_INI_stub_nmu_0_top_INST : label is "32'b00000000000000000000000000000000";
  attribute REG_ADDR_RPADDR15 : string;
  attribute REG_ADDR_RPADDR15 of bd_0ad1_M01_INI_stub_nmu_0_top_INST : label is "32'b00000000000000000000000000000000";
  attribute REG_ADDR_RPADDR2 : string;
  attribute REG_ADDR_RPADDR2 of bd_0ad1_M01_INI_stub_nmu_0_top_INST : label is "32'b00000000000000000000000000000000";
  attribute REG_ADDR_RPADDR3 : string;
  attribute REG_ADDR_RPADDR3 of bd_0ad1_M01_INI_stub_nmu_0_top_INST : label is "32'b00000000000000000000000000000000";
  attribute REG_ADDR_RPADDR4 : string;
  attribute REG_ADDR_RPADDR4 of bd_0ad1_M01_INI_stub_nmu_0_top_INST : label is "32'b00000000000000000000000000000000";
  attribute REG_ADDR_RPADDR5 : string;
  attribute REG_ADDR_RPADDR5 of bd_0ad1_M01_INI_stub_nmu_0_top_INST : label is "32'b00000000000000000000000000000000";
  attribute REG_ADDR_RPADDR6 : string;
  attribute REG_ADDR_RPADDR6 of bd_0ad1_M01_INI_stub_nmu_0_top_INST : label is "32'b00000000000000000000000000000000";
  attribute REG_ADDR_RPADDR7 : string;
  attribute REG_ADDR_RPADDR7 of bd_0ad1_M01_INI_stub_nmu_0_top_INST : label is "32'b00000000000000000000000000000000";
  attribute REG_ADDR_RPADDR8 : string;
  attribute REG_ADDR_RPADDR8 of bd_0ad1_M01_INI_stub_nmu_0_top_INST : label is "32'b00000000000000000000000000000000";
  attribute REG_ADDR_RPADDR9 : string;
  attribute REG_ADDR_RPADDR9 of bd_0ad1_M01_INI_stub_nmu_0_top_INST : label is "32'b00000000000000000000000000000000";
  attribute REG_ADR_MAP_CPM : string;
  attribute REG_ADR_MAP_CPM of bd_0ad1_M01_INI_stub_nmu_0_top_INST : label is "12'b111111000000";
  attribute REG_ADR_MAP_FPD_AFI_0 : string;
  attribute REG_ADR_MAP_FPD_AFI_0 of bd_0ad1_M01_INI_stub_nmu_0_top_INST : label is "12'b111111000000";
  attribute REG_ADR_MAP_FPD_AFI_1 : string;
  attribute REG_ADR_MAP_FPD_AFI_1 of bd_0ad1_M01_INI_stub_nmu_0_top_INST : label is "12'b111111000000";
  attribute REG_ADR_MAP_LPD_AFI_FS : string;
  attribute REG_ADR_MAP_LPD_AFI_FS of bd_0ad1_M01_INI_stub_nmu_0_top_INST : label is "12'b111111000000";
  attribute REG_ADR_MAP_ME_ARRAY_0 : string;
  attribute REG_ADR_MAP_ME_ARRAY_0 of bd_0ad1_M01_INI_stub_nmu_0_top_INST : label is "12'b111111000000";
  attribute REG_ADR_MAP_ME_ARRAY_1 : string;
  attribute REG_ADR_MAP_ME_ARRAY_1 of bd_0ad1_M01_INI_stub_nmu_0_top_INST : label is "12'b111111000000";
  attribute REG_ADR_MAP_ME_ARRAY_2 : string;
  attribute REG_ADR_MAP_ME_ARRAY_2 of bd_0ad1_M01_INI_stub_nmu_0_top_INST : label is "12'b111111000000";
  attribute REG_ADR_MAP_ME_ARRAY_3 : string;
  attribute REG_ADR_MAP_ME_ARRAY_3 of bd_0ad1_M01_INI_stub_nmu_0_top_INST : label is "12'b111111000000";
  attribute REG_ADR_MAP_PCIE : string;
  attribute REG_ADR_MAP_PCIE of bd_0ad1_M01_INI_stub_nmu_0_top_INST : label is "12'b111111000000";
  attribute REG_ADR_MAP_PMC : string;
  attribute REG_ADR_MAP_PMC of bd_0ad1_M01_INI_stub_nmu_0_top_INST : label is "12'b111111000000";
  attribute REG_ADR_MAP_PMC_ALIAS_0 : string;
  attribute REG_ADR_MAP_PMC_ALIAS_0 of bd_0ad1_M01_INI_stub_nmu_0_top_INST : label is "12'b111111000000";
  attribute REG_ADR_MAP_PMC_ALIAS_1 : string;
  attribute REG_ADR_MAP_PMC_ALIAS_1 of bd_0ad1_M01_INI_stub_nmu_0_top_INST : label is "12'b111111000000";
  attribute REG_ADR_MAP_PMC_ALIAS_2 : string;
  attribute REG_ADR_MAP_PMC_ALIAS_2 of bd_0ad1_M01_INI_stub_nmu_0_top_INST : label is "12'b111111000000";
  attribute REG_ADR_MAP_PMC_ALIAS_3 : string;
  attribute REG_ADR_MAP_PMC_ALIAS_3 of bd_0ad1_M01_INI_stub_nmu_0_top_INST : label is "12'b111111000000";
  attribute REG_ADR_MAP_QSPI : string;
  attribute REG_ADR_MAP_QSPI of bd_0ad1_M01_INI_stub_nmu_0_top_INST : label is "12'b111111000000";
  attribute REG_ADR_MAP_STM_GIC : string;
  attribute REG_ADR_MAP_STM_GIC of bd_0ad1_M01_INI_stub_nmu_0_top_INST : label is "12'b111111000000";
  attribute REG_ADR_MAP_XPDS : string;
  attribute REG_ADR_MAP_XPDS of bd_0ad1_M01_INI_stub_nmu_0_top_INST : label is "12'b111111000000";
  attribute REG_AXI_NON_MOD_DISABLE : string;
  attribute REG_AXI_NON_MOD_DISABLE of bd_0ad1_M01_INI_stub_nmu_0_top_INST : label is "1'b0";
  attribute REG_AXI_PAR_CHK : string;
  attribute REG_AXI_PAR_CHK of bd_0ad1_M01_INI_stub_nmu_0_top_INST : label is "2'b00";
  attribute REG_CHOPSIZE : string;
  attribute REG_CHOPSIZE of bd_0ad1_M01_INI_stub_nmu_0_top_INST : label is "4'b1010";
  attribute REG_DDR_ADR_MAP0 : string;
  attribute REG_DDR_ADR_MAP0 of bd_0ad1_M01_INI_stub_nmu_0_top_INST : label is "15'b110011010001000";
  attribute REG_DDR_ADR_MAP1 : string;
  attribute REG_DDR_ADR_MAP1 of bd_0ad1_M01_INI_stub_nmu_0_top_INST : label is "15'b001111111111111";
  attribute REG_DDR_ADR_MAP2 : string;
  attribute REG_DDR_ADR_MAP2 of bd_0ad1_M01_INI_stub_nmu_0_top_INST : label is "15'b001111111111111";
  attribute REG_DDR_ADR_MAP3 : string;
  attribute REG_DDR_ADR_MAP3 of bd_0ad1_M01_INI_stub_nmu_0_top_INST : label is "15'b001111111111111";
  attribute REG_DDR_ADR_MAP4 : string;
  attribute REG_DDR_ADR_MAP4 of bd_0ad1_M01_INI_stub_nmu_0_top_INST : label is "15'b001111111111111";
  attribute REG_DDR_ADR_MAP5 : string;
  attribute REG_DDR_ADR_MAP5 of bd_0ad1_M01_INI_stub_nmu_0_top_INST : label is "15'b001111111111111";
  attribute REG_DDR_ADR_MAP6 : string;
  attribute REG_DDR_ADR_MAP6 of bd_0ad1_M01_INI_stub_nmu_0_top_INST : label is "15'b001111111111111";
  attribute REG_DDR_DST_MAP0 : string;
  attribute REG_DDR_DST_MAP0 of bd_0ad1_M01_INI_stub_nmu_0_top_INST : label is "12'b100011000000";
  attribute REG_DDR_DST_MAP1 : string;
  attribute REG_DDR_DST_MAP1 of bd_0ad1_M01_INI_stub_nmu_0_top_INST : label is "12'b010111000000";
  attribute REG_DDR_DST_MAP2 : string;
  attribute REG_DDR_DST_MAP2 of bd_0ad1_M01_INI_stub_nmu_0_top_INST : label is "12'b011111000000";
  attribute REG_DDR_DST_MAP3 : string;
  attribute REG_DDR_DST_MAP3 of bd_0ad1_M01_INI_stub_nmu_0_top_INST : label is "12'b011011000000";
  attribute REG_DDR_DST_MAP4 : string;
  attribute REG_DDR_DST_MAP4 of bd_0ad1_M01_INI_stub_nmu_0_top_INST : label is "12'b111111000000";
  attribute REG_DDR_DST_MAP5 : string;
  attribute REG_DDR_DST_MAP5 of bd_0ad1_M01_INI_stub_nmu_0_top_INST : label is "12'b111111000000";
  attribute REG_DDR_DST_MAP6 : string;
  attribute REG_DDR_DST_MAP6 of bd_0ad1_M01_INI_stub_nmu_0_top_INST : label is "12'b111111000000";
  attribute REG_DDR_DST_MAP7 : string;
  attribute REG_DDR_DST_MAP7 of bd_0ad1_M01_INI_stub_nmu_0_top_INST : label is "12'b111111000000";
  attribute REG_DWIDTH : string;
  attribute REG_DWIDTH of bd_0ad1_M01_INI_stub_nmu_0_top_INST : label is "3'b110";
  attribute REG_ECC_CHK_EN : string;
  attribute REG_ECC_CHK_EN of bd_0ad1_M01_INI_stub_nmu_0_top_INST : label is "1'b1";
  attribute REG_HBM_MAP_T0_CH0 : string;
  attribute REG_HBM_MAP_T0_CH0 of bd_0ad1_M01_INI_stub_nmu_0_top_INST : label is "12'b111111000000";
  attribute REG_HBM_MAP_T0_CH1 : string;
  attribute REG_HBM_MAP_T0_CH1 of bd_0ad1_M01_INI_stub_nmu_0_top_INST : label is "12'b111111000000";
  attribute REG_HBM_MAP_T0_CH10 : string;
  attribute REG_HBM_MAP_T0_CH10 of bd_0ad1_M01_INI_stub_nmu_0_top_INST : label is "12'b111111000000";
  attribute REG_HBM_MAP_T0_CH11 : string;
  attribute REG_HBM_MAP_T0_CH11 of bd_0ad1_M01_INI_stub_nmu_0_top_INST : label is "12'b111111000000";
  attribute REG_HBM_MAP_T0_CH12 : string;
  attribute REG_HBM_MAP_T0_CH12 of bd_0ad1_M01_INI_stub_nmu_0_top_INST : label is "12'b111111000000";
  attribute REG_HBM_MAP_T0_CH13 : string;
  attribute REG_HBM_MAP_T0_CH13 of bd_0ad1_M01_INI_stub_nmu_0_top_INST : label is "12'b111111000000";
  attribute REG_HBM_MAP_T0_CH14 : string;
  attribute REG_HBM_MAP_T0_CH14 of bd_0ad1_M01_INI_stub_nmu_0_top_INST : label is "12'b111111000000";
  attribute REG_HBM_MAP_T0_CH15 : string;
  attribute REG_HBM_MAP_T0_CH15 of bd_0ad1_M01_INI_stub_nmu_0_top_INST : label is "12'b111111000000";
  attribute REG_HBM_MAP_T0_CH2 : string;
  attribute REG_HBM_MAP_T0_CH2 of bd_0ad1_M01_INI_stub_nmu_0_top_INST : label is "12'b111111000000";
  attribute REG_HBM_MAP_T0_CH3 : string;
  attribute REG_HBM_MAP_T0_CH3 of bd_0ad1_M01_INI_stub_nmu_0_top_INST : label is "12'b111111000000";
  attribute REG_HBM_MAP_T0_CH4 : string;
  attribute REG_HBM_MAP_T0_CH4 of bd_0ad1_M01_INI_stub_nmu_0_top_INST : label is "12'b111111000000";
  attribute REG_HBM_MAP_T0_CH5 : string;
  attribute REG_HBM_MAP_T0_CH5 of bd_0ad1_M01_INI_stub_nmu_0_top_INST : label is "12'b111111000000";
  attribute REG_HBM_MAP_T0_CH6 : string;
  attribute REG_HBM_MAP_T0_CH6 of bd_0ad1_M01_INI_stub_nmu_0_top_INST : label is "12'b111111000000";
  attribute REG_HBM_MAP_T0_CH7 : string;
  attribute REG_HBM_MAP_T0_CH7 of bd_0ad1_M01_INI_stub_nmu_0_top_INST : label is "12'b111111000000";
  attribute REG_HBM_MAP_T0_CH8 : string;
  attribute REG_HBM_MAP_T0_CH8 of bd_0ad1_M01_INI_stub_nmu_0_top_INST : label is "12'b111111000000";
  attribute REG_HBM_MAP_T0_CH9 : string;
  attribute REG_HBM_MAP_T0_CH9 of bd_0ad1_M01_INI_stub_nmu_0_top_INST : label is "12'b111111000000";
  attribute REG_HBM_MAP_T1_CH0 : string;
  attribute REG_HBM_MAP_T1_CH0 of bd_0ad1_M01_INI_stub_nmu_0_top_INST : label is "12'b111111000000";
  attribute REG_HBM_MAP_T1_CH1 : string;
  attribute REG_HBM_MAP_T1_CH1 of bd_0ad1_M01_INI_stub_nmu_0_top_INST : label is "12'b111111000000";
  attribute REG_HBM_MAP_T1_CH10 : string;
  attribute REG_HBM_MAP_T1_CH10 of bd_0ad1_M01_INI_stub_nmu_0_top_INST : label is "12'b111111000000";
  attribute REG_HBM_MAP_T1_CH11 : string;
  attribute REG_HBM_MAP_T1_CH11 of bd_0ad1_M01_INI_stub_nmu_0_top_INST : label is "12'b111111000000";
  attribute REG_HBM_MAP_T1_CH12 : string;
  attribute REG_HBM_MAP_T1_CH12 of bd_0ad1_M01_INI_stub_nmu_0_top_INST : label is "12'b111111000000";
  attribute REG_HBM_MAP_T1_CH13 : string;
  attribute REG_HBM_MAP_T1_CH13 of bd_0ad1_M01_INI_stub_nmu_0_top_INST : label is "12'b111111000000";
  attribute REG_HBM_MAP_T1_CH14 : string;
  attribute REG_HBM_MAP_T1_CH14 of bd_0ad1_M01_INI_stub_nmu_0_top_INST : label is "12'b111111000000";
  attribute REG_HBM_MAP_T1_CH15 : string;
  attribute REG_HBM_MAP_T1_CH15 of bd_0ad1_M01_INI_stub_nmu_0_top_INST : label is "12'b111111000000";
  attribute REG_HBM_MAP_T1_CH2 : string;
  attribute REG_HBM_MAP_T1_CH2 of bd_0ad1_M01_INI_stub_nmu_0_top_INST : label is "12'b111111000000";
  attribute REG_HBM_MAP_T1_CH3 : string;
  attribute REG_HBM_MAP_T1_CH3 of bd_0ad1_M01_INI_stub_nmu_0_top_INST : label is "12'b111111000000";
  attribute REG_HBM_MAP_T1_CH4 : string;
  attribute REG_HBM_MAP_T1_CH4 of bd_0ad1_M01_INI_stub_nmu_0_top_INST : label is "12'b111111000000";
  attribute REG_HBM_MAP_T1_CH5 : string;
  attribute REG_HBM_MAP_T1_CH5 of bd_0ad1_M01_INI_stub_nmu_0_top_INST : label is "12'b111111000000";
  attribute REG_HBM_MAP_T1_CH6 : string;
  attribute REG_HBM_MAP_T1_CH6 of bd_0ad1_M01_INI_stub_nmu_0_top_INST : label is "12'b111111000000";
  attribute REG_HBM_MAP_T1_CH7 : string;
  attribute REG_HBM_MAP_T1_CH7 of bd_0ad1_M01_INI_stub_nmu_0_top_INST : label is "12'b111111000000";
  attribute REG_HBM_MAP_T1_CH8 : string;
  attribute REG_HBM_MAP_T1_CH8 of bd_0ad1_M01_INI_stub_nmu_0_top_INST : label is "12'b111111000000";
  attribute REG_HBM_MAP_T1_CH9 : string;
  attribute REG_HBM_MAP_T1_CH9 of bd_0ad1_M01_INI_stub_nmu_0_top_INST : label is "12'b111111000000";
  attribute REG_HBM_MAP_T2_CH0 : string;
  attribute REG_HBM_MAP_T2_CH0 of bd_0ad1_M01_INI_stub_nmu_0_top_INST : label is "12'b111111000000";
  attribute REG_HBM_MAP_T2_CH1 : string;
  attribute REG_HBM_MAP_T2_CH1 of bd_0ad1_M01_INI_stub_nmu_0_top_INST : label is "12'b111111000000";
  attribute REG_HBM_MAP_T2_CH10 : string;
  attribute REG_HBM_MAP_T2_CH10 of bd_0ad1_M01_INI_stub_nmu_0_top_INST : label is "12'b111111000000";
  attribute REG_HBM_MAP_T2_CH11 : string;
  attribute REG_HBM_MAP_T2_CH11 of bd_0ad1_M01_INI_stub_nmu_0_top_INST : label is "12'b111111000000";
  attribute REG_HBM_MAP_T2_CH12 : string;
  attribute REG_HBM_MAP_T2_CH12 of bd_0ad1_M01_INI_stub_nmu_0_top_INST : label is "12'b111111000000";
  attribute REG_HBM_MAP_T2_CH13 : string;
  attribute REG_HBM_MAP_T2_CH13 of bd_0ad1_M01_INI_stub_nmu_0_top_INST : label is "12'b111111000000";
  attribute REG_HBM_MAP_T2_CH14 : string;
  attribute REG_HBM_MAP_T2_CH14 of bd_0ad1_M01_INI_stub_nmu_0_top_INST : label is "12'b111111000000";
  attribute REG_HBM_MAP_T2_CH15 : string;
  attribute REG_HBM_MAP_T2_CH15 of bd_0ad1_M01_INI_stub_nmu_0_top_INST : label is "12'b111111000000";
  attribute REG_HBM_MAP_T2_CH2 : string;
  attribute REG_HBM_MAP_T2_CH2 of bd_0ad1_M01_INI_stub_nmu_0_top_INST : label is "12'b111111000000";
  attribute REG_HBM_MAP_T2_CH3 : string;
  attribute REG_HBM_MAP_T2_CH3 of bd_0ad1_M01_INI_stub_nmu_0_top_INST : label is "12'b111111000000";
  attribute REG_HBM_MAP_T2_CH4 : string;
  attribute REG_HBM_MAP_T2_CH4 of bd_0ad1_M01_INI_stub_nmu_0_top_INST : label is "12'b111111000000";
  attribute REG_HBM_MAP_T2_CH5 : string;
  attribute REG_HBM_MAP_T2_CH5 of bd_0ad1_M01_INI_stub_nmu_0_top_INST : label is "12'b111111000000";
  attribute REG_HBM_MAP_T2_CH6 : string;
  attribute REG_HBM_MAP_T2_CH6 of bd_0ad1_M01_INI_stub_nmu_0_top_INST : label is "12'b111111000000";
  attribute REG_HBM_MAP_T2_CH7 : string;
  attribute REG_HBM_MAP_T2_CH7 of bd_0ad1_M01_INI_stub_nmu_0_top_INST : label is "12'b111111000000";
  attribute REG_HBM_MAP_T2_CH8 : string;
  attribute REG_HBM_MAP_T2_CH8 of bd_0ad1_M01_INI_stub_nmu_0_top_INST : label is "12'b111111000000";
  attribute REG_HBM_MAP_T2_CH9 : string;
  attribute REG_HBM_MAP_T2_CH9 of bd_0ad1_M01_INI_stub_nmu_0_top_INST : label is "12'b111111000000";
  attribute REG_HBM_MAP_T3_CH0 : string;
  attribute REG_HBM_MAP_T3_CH0 of bd_0ad1_M01_INI_stub_nmu_0_top_INST : label is "12'b111111000000";
  attribute REG_HBM_MAP_T3_CH1 : string;
  attribute REG_HBM_MAP_T3_CH1 of bd_0ad1_M01_INI_stub_nmu_0_top_INST : label is "12'b111111000000";
  attribute REG_HBM_MAP_T3_CH10 : string;
  attribute REG_HBM_MAP_T3_CH10 of bd_0ad1_M01_INI_stub_nmu_0_top_INST : label is "12'b111111000000";
  attribute REG_HBM_MAP_T3_CH11 : string;
  attribute REG_HBM_MAP_T3_CH11 of bd_0ad1_M01_INI_stub_nmu_0_top_INST : label is "12'b111111000000";
  attribute REG_HBM_MAP_T3_CH12 : string;
  attribute REG_HBM_MAP_T3_CH12 of bd_0ad1_M01_INI_stub_nmu_0_top_INST : label is "12'b111111000000";
  attribute REG_HBM_MAP_T3_CH13 : string;
  attribute REG_HBM_MAP_T3_CH13 of bd_0ad1_M01_INI_stub_nmu_0_top_INST : label is "12'b111111000000";
  attribute REG_HBM_MAP_T3_CH14 : string;
  attribute REG_HBM_MAP_T3_CH14 of bd_0ad1_M01_INI_stub_nmu_0_top_INST : label is "12'b111111000000";
  attribute REG_HBM_MAP_T3_CH15 : string;
  attribute REG_HBM_MAP_T3_CH15 of bd_0ad1_M01_INI_stub_nmu_0_top_INST : label is "12'b111111000000";
  attribute REG_HBM_MAP_T3_CH2 : string;
  attribute REG_HBM_MAP_T3_CH2 of bd_0ad1_M01_INI_stub_nmu_0_top_INST : label is "12'b111111000000";
  attribute REG_HBM_MAP_T3_CH3 : string;
  attribute REG_HBM_MAP_T3_CH3 of bd_0ad1_M01_INI_stub_nmu_0_top_INST : label is "12'b111111000000";
  attribute REG_HBM_MAP_T3_CH4 : string;
  attribute REG_HBM_MAP_T3_CH4 of bd_0ad1_M01_INI_stub_nmu_0_top_INST : label is "12'b111111000000";
  attribute REG_HBM_MAP_T3_CH5 : string;
  attribute REG_HBM_MAP_T3_CH5 of bd_0ad1_M01_INI_stub_nmu_0_top_INST : label is "12'b111111000000";
  attribute REG_HBM_MAP_T3_CH6 : string;
  attribute REG_HBM_MAP_T3_CH6 of bd_0ad1_M01_INI_stub_nmu_0_top_INST : label is "12'b111111000000";
  attribute REG_HBM_MAP_T3_CH7 : string;
  attribute REG_HBM_MAP_T3_CH7 of bd_0ad1_M01_INI_stub_nmu_0_top_INST : label is "12'b111111000000";
  attribute REG_HBM_MAP_T3_CH8 : string;
  attribute REG_HBM_MAP_T3_CH8 of bd_0ad1_M01_INI_stub_nmu_0_top_INST : label is "12'b111111000000";
  attribute REG_HBM_MAP_T3_CH9 : string;
  attribute REG_HBM_MAP_T3_CH9 of bd_0ad1_M01_INI_stub_nmu_0_top_INST : label is "12'b111111000000";
  attribute REG_MODE_SELECT : string;
  attribute REG_MODE_SELECT of bd_0ad1_M01_INI_stub_nmu_0_top_INST : label is "16'b0000000000000000";
  attribute REG_OUTSTANDING_RD_TXN : string;
  attribute REG_OUTSTANDING_RD_TXN of bd_0ad1_M01_INI_stub_nmu_0_top_INST : label is "7'b1000000";
  attribute REG_OUTSTANDING_WR_TXN : string;
  attribute REG_OUTSTANDING_WR_TXN of bd_0ad1_M01_INI_stub_nmu_0_top_INST : label is "7'b1000000";
  attribute REG_PRIORITY : string;
  attribute REG_PRIORITY of bd_0ad1_M01_INI_stub_nmu_0_top_INST : label is "2'b00";
  attribute REG_RD_AXPROT_SEL : string;
  attribute REG_RD_AXPROT_SEL of bd_0ad1_M01_INI_stub_nmu_0_top_INST : label is "6'b000000";
  attribute REG_RD_RATE_CREDIT_DROP : string;
  attribute REG_RD_RATE_CREDIT_DROP of bd_0ad1_M01_INI_stub_nmu_0_top_INST : label is "10'b0000000100";
  attribute REG_RD_RATE_CREDIT_LIMIT : string;
  attribute REG_RD_RATE_CREDIT_LIMIT of bd_0ad1_M01_INI_stub_nmu_0_top_INST : label is "13'b0000100000000";
  attribute REG_RD_VCA_TOKEN0 : string;
  attribute REG_RD_VCA_TOKEN0 of bd_0ad1_M01_INI_stub_nmu_0_top_INST : label is "8'b00010100";
  attribute REG_RPOISON_TO_SLVERR : string;
  attribute REG_RPOISON_TO_SLVERR of bd_0ad1_M01_INI_stub_nmu_0_top_INST : label is "1'b0";
  attribute REG_RROB_RAM_SETTING : string;
  attribute REG_RROB_RAM_SETTING of bd_0ad1_M01_INI_stub_nmu_0_top_INST : label is "9'b000010010";
  attribute REG_SMID_SEL : string;
  attribute REG_SMID_SEL of bd_0ad1_M01_INI_stub_nmu_0_top_INST : label is "20'b00000000000000000000";
  attribute REG_SRC : string;
  attribute REG_SRC of bd_0ad1_M01_INI_stub_nmu_0_top_INST : label is "12'b000010000000";
  attribute REG_TBASE_AXI_TIMEOUT : string;
  attribute REG_TBASE_AXI_TIMEOUT of bd_0ad1_M01_INI_stub_nmu_0_top_INST : label is "3'b001";
  attribute REG_TBASE_MODE_RLIMIT_RD : string;
  attribute REG_TBASE_MODE_RLIMIT_RD of bd_0ad1_M01_INI_stub_nmu_0_top_INST : label is "3'b010";
  attribute REG_TBASE_MODE_RLIMIT_WR : string;
  attribute REG_TBASE_MODE_RLIMIT_WR of bd_0ad1_M01_INI_stub_nmu_0_top_INST : label is "3'b010";
  attribute REG_TBASE_TRK_TIMEOUT : string;
  attribute REG_TBASE_TRK_TIMEOUT of bd_0ad1_M01_INI_stub_nmu_0_top_INST : label is "3'b001";
  attribute REG_VC_MAP : string;
  attribute REG_VC_MAP of bd_0ad1_M01_INI_stub_nmu_0_top_INST : label is "12'b111110101100";
  attribute REG_WBUF_LAUNCH_SIZE : string;
  attribute REG_WBUF_LAUNCH_SIZE of bd_0ad1_M01_INI_stub_nmu_0_top_INST : label is "6'b010000";
  attribute REG_WBUF_RAM_SETTING : string;
  attribute REG_WBUF_RAM_SETTING of bd_0ad1_M01_INI_stub_nmu_0_top_INST : label is "9'b000010010";
  attribute REG_WR_AXPROT_SEL : string;
  attribute REG_WR_AXPROT_SEL of bd_0ad1_M01_INI_stub_nmu_0_top_INST : label is "6'b000000";
  attribute REG_WR_RATE_CREDIT_DROP : string;
  attribute REG_WR_RATE_CREDIT_DROP of bd_0ad1_M01_INI_stub_nmu_0_top_INST : label is "10'b0000000100";
  attribute REG_WR_RATE_CREDIT_LIMIT : string;
  attribute REG_WR_RATE_CREDIT_LIMIT of bd_0ad1_M01_INI_stub_nmu_0_top_INST : label is "13'b0000100000000";
  attribute REG_WR_VCA_TOKEN0 : string;
  attribute REG_WR_VCA_TOKEN0 of bd_0ad1_M01_INI_stub_nmu_0_top_INST : label is "8'b00010000";
  attribute X_INTERFACE_INFO : string;
  attribute X_INTERFACE_INFO of IF_NOC_AXI_ARREADY : signal is "xilinx.com:interface:aximm:1.0 SAXI4 ARREADY";
  attribute X_INTERFACE_INFO of IF_NOC_AXI_ARVALID : signal is "xilinx.com:interface:aximm:1.0 SAXI4 ARVALID";
  attribute X_INTERFACE_INFO of IF_NOC_AXI_AWREADY : signal is "xilinx.com:interface:aximm:1.0 SAXI4 AWREADY";
  attribute X_INTERFACE_INFO of IF_NOC_AXI_AWVALID : signal is "xilinx.com:interface:aximm:1.0 SAXI4 AWVALID";
  attribute X_INTERFACE_INFO of IF_NOC_AXI_BREADY : signal is "xilinx.com:interface:aximm:1.0 SAXI4 BREADY";
  attribute X_INTERFACE_INFO of IF_NOC_AXI_BVALID : signal is "xilinx.com:interface:aximm:1.0 SAXI4 BVALID";
  attribute X_INTERFACE_INFO of IF_NOC_AXI_RREADY : signal is "xilinx.com:interface:aximm:1.0 SAXI4 RREADY";
  attribute X_INTERFACE_INFO of IF_NOC_AXI_RVALID : signal is "xilinx.com:interface:aximm:1.0 SAXI4 RVALID";
  attribute X_INTERFACE_INFO of IF_NOC_AXI_WREADY : signal is "xilinx.com:interface:aximm:1.0 SAXI4 WREADY";
  attribute X_INTERFACE_INFO of IF_NOC_AXI_WVALID : signal is "xilinx.com:interface:aximm:1.0 SAXI4 WVALID";
  attribute X_INTERFACE_INFO of IF_NOC_NPP_IN_NOC_CREDIT_RDY : signal is "xilinx.com:interface:npp:1.0 SNPP CREDIT_RDY";
  attribute X_INTERFACE_INFO of IF_NOC_NPP_OUT_NOC_CREDIT_RDY : signal is "xilinx.com:interface:npp:1.0 MNPP CREDIT_RDY";
  attribute dont_touch : string;
  attribute dont_touch of NMU : signal is "true";
  attribute X_INTERFACE_INFO of aclk : signal is "xilinx.com:signal:clock:1.0 aclk aclk";
  attribute X_INTERFACE_PARAMETER : string;
  attribute X_INTERFACE_PARAMETER of aclk : signal is "XIL_INTERFACENAME aclk, ASSOCIATED_BUSIF SAXI4:SAXI_STREAM, FREQ_HZ 100000000, PHASE 0.000";
  attribute X_INTERFACE_INFO of IF_NOC_AXI_ARADDR : signal is "xilinx.com:interface:aximm:1.0 SAXI4 ARADDR";
  attribute X_INTERFACE_INFO of IF_NOC_AXI_ARBURST : signal is "xilinx.com:interface:aximm:1.0 SAXI4 ARBURST";
  attribute X_INTERFACE_INFO of IF_NOC_AXI_ARCACHE : signal is "xilinx.com:interface:aximm:1.0 SAXI4 ARCACHE";
  attribute X_INTERFACE_INFO of IF_NOC_AXI_ARLEN : signal is "xilinx.com:interface:aximm:1.0 SAXI4 ARLEN";
  attribute X_INTERFACE_INFO of IF_NOC_AXI_ARLOCK : signal is "xilinx.com:interface:aximm:1.0 SAXI4 ARLOCK";
  attribute X_INTERFACE_INFO of IF_NOC_AXI_ARPROT : signal is "xilinx.com:interface:aximm:1.0 SAXI4 ARPROT";
  attribute X_INTERFACE_INFO of IF_NOC_AXI_ARQOS : signal is "xilinx.com:interface:aximm:1.0 SAXI4 ARQOS";
  attribute X_INTERFACE_INFO of IF_NOC_AXI_ARREGION : signal is "xilinx.com:interface:aximm:1.0 SAXI4 ARREGION";
  attribute X_INTERFACE_INFO of IF_NOC_AXI_ARSIZE : signal is "xilinx.com:interface:aximm:1.0 SAXI4 ARSIZE";
  attribute X_INTERFACE_INFO of IF_NOC_AXI_AWADDR : signal is "xilinx.com:interface:aximm:1.0 SAXI4 AWADDR";
  attribute X_INTERFACE_INFO of IF_NOC_AXI_AWBURST : signal is "xilinx.com:interface:aximm:1.0 SAXI4 AWBURST";
  attribute X_INTERFACE_INFO of IF_NOC_AXI_AWCACHE : signal is "xilinx.com:interface:aximm:1.0 SAXI4 AWCACHE";
  attribute X_INTERFACE_INFO of IF_NOC_AXI_AWLEN : signal is "xilinx.com:interface:aximm:1.0 SAXI4 AWLEN";
  attribute X_INTERFACE_INFO of IF_NOC_AXI_AWLOCK : signal is "xilinx.com:interface:aximm:1.0 SAXI4 AWLOCK";
  attribute X_INTERFACE_INFO of IF_NOC_AXI_AWPROT : signal is "xilinx.com:interface:aximm:1.0 SAXI4 AWPROT";
  attribute X_INTERFACE_INFO of IF_NOC_AXI_AWQOS : signal is "xilinx.com:interface:aximm:1.0 SAXI4 AWQOS";
  attribute X_INTERFACE_INFO of IF_NOC_AXI_AWREGION : signal is "xilinx.com:interface:aximm:1.0 SAXI4 AWREGION";
  attribute X_INTERFACE_INFO of IF_NOC_AXI_AWSIZE : signal is "xilinx.com:interface:aximm:1.0 SAXI4 AWSIZE";
  attribute X_INTERFACE_INFO of IF_NOC_AXI_BRESP : signal is "xilinx.com:interface:aximm:1.0 SAXI4 BRESP";
  attribute X_INTERFACE_INFO of IF_NOC_AXI_RDATA : signal is "xilinx.com:interface:aximm:1.0 SAXI4 RDATA";
  attribute X_INTERFACE_INFO of IF_NOC_AXI_RLAST : signal is "xilinx.com:interface:aximm:1.0 SAXI4 RLAST";
  attribute X_INTERFACE_INFO of IF_NOC_AXI_RRESP : signal is "xilinx.com:interface:aximm:1.0 SAXI4 RRESP";
  attribute X_INTERFACE_INFO of IF_NOC_AXI_WDATA : signal is "xilinx.com:interface:aximm:1.0 SAXI4 WDATA";
  attribute X_INTERFACE_INFO of IF_NOC_AXI_WLAST : signal is "xilinx.com:interface:aximm:1.0 SAXI4 WLAST";
  attribute X_INTERFACE_INFO of IF_NOC_AXI_WSTRB : signal is "xilinx.com:interface:aximm:1.0 SAXI4 WSTRB";
  attribute X_INTERFACE_INFO of IF_NOC_NPP_IN_NOC_CREDIT_RETURN : signal is "xilinx.com:interface:npp:1.0 SNPP CREDIT_RETURN";
  attribute X_INTERFACE_INFO of IF_NOC_NPP_IN_NOC_FLIT : signal is "xilinx.com:interface:npp:1.0 SNPP FLIT";
  attribute X_INTERFACE_INFO of IF_NOC_NPP_IN_NOC_VALID : signal is "xilinx.com:interface:npp:1.0 SNPP VALID";
  attribute X_INTERFACE_PARAMETER of IF_NOC_NPP_IN_NOC_VALID : signal is "XIL_INTERFACENAME SNPP, IN_SYNTHESIS_HDL NO, CAN_DEBUG false";
  attribute X_INTERFACE_INFO of IF_NOC_NPP_OUT_NOC_CREDIT_RETURN : signal is "xilinx.com:interface:npp:1.0 MNPP CREDIT_RETURN";
  attribute X_INTERFACE_PARAMETER of IF_NOC_NPP_OUT_NOC_CREDIT_RETURN : signal is "XIL_INTERFACENAME MNPP, IN_SYNTHESIS_HDL NO, CAN_DEBUG false";
  attribute X_INTERFACE_INFO of IF_NOC_NPP_OUT_NOC_FLIT : signal is "xilinx.com:interface:npp:1.0 MNPP FLIT";
  attribute X_INTERFACE_INFO of IF_NOC_NPP_OUT_NOC_VALID : signal is "xilinx.com:interface:npp:1.0 MNPP VALID";
begin
bd_0ad1_M01_INI_stub_nmu_0_top_INST: entity work.ulp_inst_0_axi_noc_kernel0_0_bd_0ad1_M01_INI_stub_nmu_0_top
     port map (
      IF_NOC_AXI_ARADDR(0) => IF_NOC_AXI_ARADDR(0),
      IF_NOC_AXI_ARBURST(1 downto 0) => IF_NOC_AXI_ARBURST(1 downto 0),
      IF_NOC_AXI_ARCACHE(3 downto 0) => IF_NOC_AXI_ARCACHE(3 downto 0),
      IF_NOC_AXI_ARLEN(7 downto 0) => IF_NOC_AXI_ARLEN(7 downto 0),
      IF_NOC_AXI_ARLOCK(0) => IF_NOC_AXI_ARLOCK(0),
      IF_NOC_AXI_ARPROT(2 downto 0) => IF_NOC_AXI_ARPROT(2 downto 0),
      IF_NOC_AXI_ARQOS(3 downto 0) => IF_NOC_AXI_ARQOS(3 downto 0),
      IF_NOC_AXI_ARREADY => IF_NOC_AXI_ARREADY,
      IF_NOC_AXI_ARREGION(3 downto 0) => IF_NOC_AXI_ARREGION(3 downto 0),
      IF_NOC_AXI_ARSIZE(2 downto 0) => IF_NOC_AXI_ARSIZE(2 downto 0),
      IF_NOC_AXI_ARVALID => IF_NOC_AXI_ARVALID,
      IF_NOC_AXI_AWADDR(0) => IF_NOC_AXI_AWADDR(0),
      IF_NOC_AXI_AWBURST(1 downto 0) => IF_NOC_AXI_AWBURST(1 downto 0),
      IF_NOC_AXI_AWCACHE(3 downto 0) => IF_NOC_AXI_AWCACHE(3 downto 0),
      IF_NOC_AXI_AWLEN(7 downto 0) => IF_NOC_AXI_AWLEN(7 downto 0),
      IF_NOC_AXI_AWLOCK(0) => IF_NOC_AXI_AWLOCK(0),
      IF_NOC_AXI_AWPROT(2 downto 0) => IF_NOC_AXI_AWPROT(2 downto 0),
      IF_NOC_AXI_AWQOS(3 downto 0) => IF_NOC_AXI_AWQOS(3 downto 0),
      IF_NOC_AXI_AWREADY => IF_NOC_AXI_AWREADY,
      IF_NOC_AXI_AWREGION(3 downto 0) => IF_NOC_AXI_AWREGION(3 downto 0),
      IF_NOC_AXI_AWSIZE(2 downto 0) => IF_NOC_AXI_AWSIZE(2 downto 0),
      IF_NOC_AXI_AWVALID => IF_NOC_AXI_AWVALID,
      IF_NOC_AXI_BREADY => IF_NOC_AXI_BREADY,
      IF_NOC_AXI_BRESP(1 downto 0) => IF_NOC_AXI_BRESP(1 downto 0),
      IF_NOC_AXI_BVALID => IF_NOC_AXI_BVALID,
      IF_NOC_AXI_RDATA(511 downto 0) => IF_NOC_AXI_RDATA(511 downto 0),
      IF_NOC_AXI_RLAST(0) => IF_NOC_AXI_RLAST(0),
      IF_NOC_AXI_RREADY => IF_NOC_AXI_RREADY,
      IF_NOC_AXI_RRESP(1 downto 0) => IF_NOC_AXI_RRESP(1 downto 0),
      IF_NOC_AXI_RVALID => IF_NOC_AXI_RVALID,
      IF_NOC_AXI_WDATA(511 downto 0) => IF_NOC_AXI_WDATA(511 downto 0),
      IF_NOC_AXI_WLAST(0) => IF_NOC_AXI_WLAST(0),
      IF_NOC_AXI_WREADY => IF_NOC_AXI_WREADY,
      IF_NOC_AXI_WSTRB(63 downto 0) => IF_NOC_AXI_WSTRB(63 downto 0),
      IF_NOC_AXI_WVALID => IF_NOC_AXI_WVALID,
      IF_NOC_NPP_IN_NOC_CREDIT_RDY => IF_NOC_NPP_IN_NOC_CREDIT_RDY,
      IF_NOC_NPP_IN_NOC_CREDIT_RETURN(7 downto 0) => IF_NOC_NPP_IN_NOC_CREDIT_RETURN(7 downto 0),
      IF_NOC_NPP_IN_NOC_FLIT(181 downto 0) => IF_NOC_NPP_IN_NOC_FLIT(181 downto 0),
      IF_NOC_NPP_IN_NOC_VALID(7 downto 0) => IF_NOC_NPP_IN_NOC_VALID(7 downto 0),
      IF_NOC_NPP_OUT_NOC_CREDIT_RDY => IF_NOC_NPP_OUT_NOC_CREDIT_RDY,
      IF_NOC_NPP_OUT_NOC_CREDIT_RETURN(7 downto 0) => IF_NOC_NPP_OUT_NOC_CREDIT_RETURN(7 downto 0),
      IF_NOC_NPP_OUT_NOC_FLIT(181 downto 0) => IF_NOC_NPP_OUT_NOC_FLIT(181 downto 0),
      IF_NOC_NPP_OUT_NOC_VALID(7 downto 0) => IF_NOC_NPP_OUT_NOC_VALID(7 downto 0),
      NMU => NMU,
      NMU_RD_DEST_MODE => NMU_RD_DEST_MODE,
      NMU_RD_USR_DST(11 downto 0) => NMU_RD_USR_DST(11 downto 0),
      NMU_WR_DEST_MODE => NMU_WR_DEST_MODE,
      NMU_WR_USR_DST(11 downto 0) => NMU_WR_USR_DST(11 downto 0),
      aclk => aclk
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity ulp_inst_0_axi_noc_kernel0_0_bd_0ad1_M02_INI_stub_nmu_0 is
  port (
    IF_NOC_AXI_WVALID : in STD_LOGIC;
    IF_NOC_AXI_WREADY : out STD_LOGIC;
    IF_NOC_AXI_WLAST : in STD_LOGIC_VECTOR ( 0 to 0 );
    IF_NOC_AXI_WDATA : in STD_LOGIC_VECTOR ( 511 downto 0 );
    IF_NOC_AXI_WSTRB : in STD_LOGIC_VECTOR ( 63 downto 0 );
    IF_NOC_AXI_ARREADY : out STD_LOGIC;
    IF_NOC_AXI_AWREADY : out STD_LOGIC;
    IF_NOC_AXI_BRESP : out STD_LOGIC_VECTOR ( 1 downto 0 );
    IF_NOC_AXI_BVALID : out STD_LOGIC;
    IF_NOC_AXI_RDATA : out STD_LOGIC_VECTOR ( 511 downto 0 );
    IF_NOC_AXI_RLAST : out STD_LOGIC_VECTOR ( 0 to 0 );
    IF_NOC_AXI_RRESP : out STD_LOGIC_VECTOR ( 1 downto 0 );
    IF_NOC_AXI_RVALID : out STD_LOGIC;
    IF_NOC_AXI_ARADDR : in STD_LOGIC_VECTOR ( 0 to 0 );
    IF_NOC_AXI_ARBURST : in STD_LOGIC_VECTOR ( 1 downto 0 );
    IF_NOC_AXI_ARCACHE : in STD_LOGIC_VECTOR ( 3 downto 0 );
    IF_NOC_AXI_ARLEN : in STD_LOGIC_VECTOR ( 7 downto 0 );
    IF_NOC_AXI_ARLOCK : in STD_LOGIC_VECTOR ( 0 to 0 );
    IF_NOC_AXI_ARPROT : in STD_LOGIC_VECTOR ( 2 downto 0 );
    IF_NOC_AXI_ARQOS : in STD_LOGIC_VECTOR ( 3 downto 0 );
    IF_NOC_AXI_ARREGION : in STD_LOGIC_VECTOR ( 3 downto 0 );
    IF_NOC_AXI_ARSIZE : in STD_LOGIC_VECTOR ( 2 downto 0 );
    IF_NOC_AXI_ARVALID : in STD_LOGIC;
    IF_NOC_AXI_AWADDR : in STD_LOGIC_VECTOR ( 0 to 0 );
    IF_NOC_AXI_AWBURST : in STD_LOGIC_VECTOR ( 1 downto 0 );
    IF_NOC_AXI_AWCACHE : in STD_LOGIC_VECTOR ( 3 downto 0 );
    IF_NOC_AXI_AWLEN : in STD_LOGIC_VECTOR ( 7 downto 0 );
    IF_NOC_AXI_AWLOCK : in STD_LOGIC_VECTOR ( 0 to 0 );
    IF_NOC_AXI_AWPROT : in STD_LOGIC_VECTOR ( 2 downto 0 );
    IF_NOC_AXI_AWQOS : in STD_LOGIC_VECTOR ( 3 downto 0 );
    IF_NOC_AXI_AWREGION : in STD_LOGIC_VECTOR ( 3 downto 0 );
    IF_NOC_AXI_AWSIZE : in STD_LOGIC_VECTOR ( 2 downto 0 );
    IF_NOC_AXI_AWVALID : in STD_LOGIC;
    IF_NOC_AXI_BREADY : in STD_LOGIC;
    IF_NOC_AXI_RREADY : in STD_LOGIC;
    NMU_RD_DEST_MODE : in STD_LOGIC;
    NMU_WR_DEST_MODE : in STD_LOGIC;
    IF_NOC_NPP_IN_NOC_CREDIT_RETURN : out STD_LOGIC_VECTOR ( 7 downto 0 );
    IF_NOC_NPP_OUT_NOC_CREDIT_RDY : out STD_LOGIC;
    IF_NOC_NPP_OUT_NOC_FLIT : out STD_LOGIC_VECTOR ( 181 downto 0 );
    IF_NOC_NPP_OUT_NOC_VALID : out STD_LOGIC_VECTOR ( 7 downto 0 );
    aclk : in STD_LOGIC;
    IF_NOC_NPP_IN_NOC_CREDIT_RDY : in STD_LOGIC;
    IF_NOC_NPP_IN_NOC_FLIT : in STD_LOGIC_VECTOR ( 181 downto 0 );
    IF_NOC_NPP_IN_NOC_VALID : in STD_LOGIC_VECTOR ( 7 downto 0 );
    IF_NOC_NPP_OUT_NOC_CREDIT_RETURN : in STD_LOGIC_VECTOR ( 7 downto 0 );
    NMU : out STD_LOGIC;
    NMU_WR_USR_DST : in STD_LOGIC_VECTOR ( 11 downto 0 );
    NMU_RD_USR_DST : in STD_LOGIC_VECTOR ( 11 downto 0 )
  );
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of ulp_inst_0_axi_noc_kernel0_0_bd_0ad1_M02_INI_stub_nmu_0 : entity is "noc_nmu_0,noc_nmu_v1_0_0_0,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of ulp_inst_0_axi_noc_kernel0_0_bd_0ad1_M02_INI_stub_nmu_0 : entity is "yes";
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of ulp_inst_0_axi_noc_kernel0_0_bd_0ad1_M02_INI_stub_nmu_0 : entity is "bd_0ad1_M02_INI_stub_nmu_0";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of ulp_inst_0_axi_noc_kernel0_0_bd_0ad1_M02_INI_stub_nmu_0 : entity is "noc_nmu_v1_0_0_0,Vivado 2018.1.0";
end ulp_inst_0_axi_noc_kernel0_0_bd_0ad1_M02_INI_stub_nmu_0;

architecture STRUCTURE of ulp_inst_0_axi_noc_kernel0_0_bd_0ad1_M02_INI_stub_nmu_0 is
  attribute REG_ADDR_DST0 : string;
  attribute REG_ADDR_DST0 of bd_0ad1_M02_INI_stub_nmu_0_top_INST : label is "16'b0000000000000000";
  attribute REG_ADDR_DST1 : string;
  attribute REG_ADDR_DST1 of bd_0ad1_M02_INI_stub_nmu_0_top_INST : label is "16'b0000000000000000";
  attribute REG_ADDR_DST10 : string;
  attribute REG_ADDR_DST10 of bd_0ad1_M02_INI_stub_nmu_0_top_INST : label is "16'b0000000000000000";
  attribute REG_ADDR_DST11 : string;
  attribute REG_ADDR_DST11 of bd_0ad1_M02_INI_stub_nmu_0_top_INST : label is "16'b0000000000000000";
  attribute REG_ADDR_DST12 : string;
  attribute REG_ADDR_DST12 of bd_0ad1_M02_INI_stub_nmu_0_top_INST : label is "16'b0000000000000000";
  attribute REG_ADDR_DST13 : string;
  attribute REG_ADDR_DST13 of bd_0ad1_M02_INI_stub_nmu_0_top_INST : label is "16'b0000000000000000";
  attribute REG_ADDR_DST14 : string;
  attribute REG_ADDR_DST14 of bd_0ad1_M02_INI_stub_nmu_0_top_INST : label is "16'b0000000000000000";
  attribute REG_ADDR_DST15 : string;
  attribute REG_ADDR_DST15 of bd_0ad1_M02_INI_stub_nmu_0_top_INST : label is "16'b0000000000000000";
  attribute REG_ADDR_DST2 : string;
  attribute REG_ADDR_DST2 of bd_0ad1_M02_INI_stub_nmu_0_top_INST : label is "16'b0000000000000000";
  attribute REG_ADDR_DST3 : string;
  attribute REG_ADDR_DST3 of bd_0ad1_M02_INI_stub_nmu_0_top_INST : label is "16'b0000000000000000";
  attribute REG_ADDR_DST4 : string;
  attribute REG_ADDR_DST4 of bd_0ad1_M02_INI_stub_nmu_0_top_INST : label is "16'b0000000000000000";
  attribute REG_ADDR_DST5 : string;
  attribute REG_ADDR_DST5 of bd_0ad1_M02_INI_stub_nmu_0_top_INST : label is "16'b0000000000000000";
  attribute REG_ADDR_DST6 : string;
  attribute REG_ADDR_DST6 of bd_0ad1_M02_INI_stub_nmu_0_top_INST : label is "16'b0000000000000000";
  attribute REG_ADDR_DST7 : string;
  attribute REG_ADDR_DST7 of bd_0ad1_M02_INI_stub_nmu_0_top_INST : label is "16'b0000000000000000";
  attribute REG_ADDR_DST8 : string;
  attribute REG_ADDR_DST8 of bd_0ad1_M02_INI_stub_nmu_0_top_INST : label is "16'b0000000000000000";
  attribute REG_ADDR_DST9 : string;
  attribute REG_ADDR_DST9 of bd_0ad1_M02_INI_stub_nmu_0_top_INST : label is "16'b0000000000000000";
  attribute REG_ADDR_ENABLE : string;
  attribute REG_ADDR_ENABLE of bd_0ad1_M02_INI_stub_nmu_0_top_INST : label is "16'b0000000000000000";
  attribute REG_ADDR_MADDR0 : string;
  attribute REG_ADDR_MADDR0 of bd_0ad1_M02_INI_stub_nmu_0_top_INST : label is "32'b00000000000000000000000000000000";
  attribute REG_ADDR_MADDR1 : string;
  attribute REG_ADDR_MADDR1 of bd_0ad1_M02_INI_stub_nmu_0_top_INST : label is "32'b00000000000000000000000000000000";
  attribute REG_ADDR_MADDR10 : string;
  attribute REG_ADDR_MADDR10 of bd_0ad1_M02_INI_stub_nmu_0_top_INST : label is "32'b00000000000000000000000000000000";
  attribute REG_ADDR_MADDR11 : string;
  attribute REG_ADDR_MADDR11 of bd_0ad1_M02_INI_stub_nmu_0_top_INST : label is "32'b00000000000000000000000000000000";
  attribute REG_ADDR_MADDR12 : string;
  attribute REG_ADDR_MADDR12 of bd_0ad1_M02_INI_stub_nmu_0_top_INST : label is "32'b00000000000000000000000000000000";
  attribute REG_ADDR_MADDR13 : string;
  attribute REG_ADDR_MADDR13 of bd_0ad1_M02_INI_stub_nmu_0_top_INST : label is "32'b00000000000000000000000000000000";
  attribute REG_ADDR_MADDR14 : string;
  attribute REG_ADDR_MADDR14 of bd_0ad1_M02_INI_stub_nmu_0_top_INST : label is "32'b00000000000000000000000000000000";
  attribute REG_ADDR_MADDR15 : string;
  attribute REG_ADDR_MADDR15 of bd_0ad1_M02_INI_stub_nmu_0_top_INST : label is "32'b00000000000000000000000000000000";
  attribute REG_ADDR_MADDR2 : string;
  attribute REG_ADDR_MADDR2 of bd_0ad1_M02_INI_stub_nmu_0_top_INST : label is "32'b00000000000000000000000000000000";
  attribute REG_ADDR_MADDR3 : string;
  attribute REG_ADDR_MADDR3 of bd_0ad1_M02_INI_stub_nmu_0_top_INST : label is "32'b00000000000000000000000000000000";
  attribute REG_ADDR_MADDR4 : string;
  attribute REG_ADDR_MADDR4 of bd_0ad1_M02_INI_stub_nmu_0_top_INST : label is "32'b00000000000000000000000000000000";
  attribute REG_ADDR_MADDR5 : string;
  attribute REG_ADDR_MADDR5 of bd_0ad1_M02_INI_stub_nmu_0_top_INST : label is "32'b00000000000000000000000000000000";
  attribute REG_ADDR_MADDR6 : string;
  attribute REG_ADDR_MADDR6 of bd_0ad1_M02_INI_stub_nmu_0_top_INST : label is "32'b00000000000000000000000000000000";
  attribute REG_ADDR_MADDR7 : string;
  attribute REG_ADDR_MADDR7 of bd_0ad1_M02_INI_stub_nmu_0_top_INST : label is "32'b00000000000000000000000000000000";
  attribute REG_ADDR_MADDR8 : string;
  attribute REG_ADDR_MADDR8 of bd_0ad1_M02_INI_stub_nmu_0_top_INST : label is "32'b00000000000000000000000000000000";
  attribute REG_ADDR_MADDR9 : string;
  attribute REG_ADDR_MADDR9 of bd_0ad1_M02_INI_stub_nmu_0_top_INST : label is "32'b00000000000000000000000000000000";
  attribute REG_ADDR_MASK0 : string;
  attribute REG_ADDR_MASK0 of bd_0ad1_M02_INI_stub_nmu_0_top_INST : label is "32'b00000000000000000000000000000000";
  attribute REG_ADDR_MASK1 : string;
  attribute REG_ADDR_MASK1 of bd_0ad1_M02_INI_stub_nmu_0_top_INST : label is "32'b00000000000000000000000000000000";
  attribute REG_ADDR_MASK10 : string;
  attribute REG_ADDR_MASK10 of bd_0ad1_M02_INI_stub_nmu_0_top_INST : label is "32'b00000000000000000000000000000000";
  attribute REG_ADDR_MASK11 : string;
  attribute REG_ADDR_MASK11 of bd_0ad1_M02_INI_stub_nmu_0_top_INST : label is "32'b00000000000000000000000000000000";
  attribute REG_ADDR_MASK12 : string;
  attribute REG_ADDR_MASK12 of bd_0ad1_M02_INI_stub_nmu_0_top_INST : label is "32'b00000000000000000000000000000000";
  attribute REG_ADDR_MASK13 : string;
  attribute REG_ADDR_MASK13 of bd_0ad1_M02_INI_stub_nmu_0_top_INST : label is "32'b00000000000000000000000000000000";
  attribute REG_ADDR_MASK14 : string;
  attribute REG_ADDR_MASK14 of bd_0ad1_M02_INI_stub_nmu_0_top_INST : label is "32'b00000000000000000000000000000000";
  attribute REG_ADDR_MASK15 : string;
  attribute REG_ADDR_MASK15 of bd_0ad1_M02_INI_stub_nmu_0_top_INST : label is "32'b00000000000000000000000000000000";
  attribute REG_ADDR_MASK2 : string;
  attribute REG_ADDR_MASK2 of bd_0ad1_M02_INI_stub_nmu_0_top_INST : label is "32'b00000000000000000000000000000000";
  attribute REG_ADDR_MASK3 : string;
  attribute REG_ADDR_MASK3 of bd_0ad1_M02_INI_stub_nmu_0_top_INST : label is "32'b00000000000000000000000000000000";
  attribute REG_ADDR_MASK4 : string;
  attribute REG_ADDR_MASK4 of bd_0ad1_M02_INI_stub_nmu_0_top_INST : label is "32'b00000000000000000000000000000000";
  attribute REG_ADDR_MASK5 : string;
  attribute REG_ADDR_MASK5 of bd_0ad1_M02_INI_stub_nmu_0_top_INST : label is "32'b00000000000000000000000000000000";
  attribute REG_ADDR_MASK6 : string;
  attribute REG_ADDR_MASK6 of bd_0ad1_M02_INI_stub_nmu_0_top_INST : label is "32'b00000000000000000000000000000000";
  attribute REG_ADDR_MASK7 : string;
  attribute REG_ADDR_MASK7 of bd_0ad1_M02_INI_stub_nmu_0_top_INST : label is "32'b00000000000000000000000000000000";
  attribute REG_ADDR_MASK8 : string;
  attribute REG_ADDR_MASK8 of bd_0ad1_M02_INI_stub_nmu_0_top_INST : label is "32'b00000000000000000000000000000000";
  attribute REG_ADDR_MASK9 : string;
  attribute REG_ADDR_MASK9 of bd_0ad1_M02_INI_stub_nmu_0_top_INST : label is "32'b00000000000000000000000000000000";
  attribute REG_ADDR_REMAP : string;
  attribute REG_ADDR_REMAP of bd_0ad1_M02_INI_stub_nmu_0_top_INST : label is "16'b0000000000000000";
  attribute REG_ADDR_RPADDR0 : string;
  attribute REG_ADDR_RPADDR0 of bd_0ad1_M02_INI_stub_nmu_0_top_INST : label is "32'b00000000000000000000000000000000";
  attribute REG_ADDR_RPADDR1 : string;
  attribute REG_ADDR_RPADDR1 of bd_0ad1_M02_INI_stub_nmu_0_top_INST : label is "32'b00000000000000000000000000000000";
  attribute REG_ADDR_RPADDR10 : string;
  attribute REG_ADDR_RPADDR10 of bd_0ad1_M02_INI_stub_nmu_0_top_INST : label is "32'b00000000000000000000000000000000";
  attribute REG_ADDR_RPADDR11 : string;
  attribute REG_ADDR_RPADDR11 of bd_0ad1_M02_INI_stub_nmu_0_top_INST : label is "32'b00000000000000000000000000000000";
  attribute REG_ADDR_RPADDR12 : string;
  attribute REG_ADDR_RPADDR12 of bd_0ad1_M02_INI_stub_nmu_0_top_INST : label is "32'b00000000000000000000000000000000";
  attribute REG_ADDR_RPADDR13 : string;
  attribute REG_ADDR_RPADDR13 of bd_0ad1_M02_INI_stub_nmu_0_top_INST : label is "32'b00000000000000000000000000000000";
  attribute REG_ADDR_RPADDR14 : string;
  attribute REG_ADDR_RPADDR14 of bd_0ad1_M02_INI_stub_nmu_0_top_INST : label is "32'b00000000000000000000000000000000";
  attribute REG_ADDR_RPADDR15 : string;
  attribute REG_ADDR_RPADDR15 of bd_0ad1_M02_INI_stub_nmu_0_top_INST : label is "32'b00000000000000000000000000000000";
  attribute REG_ADDR_RPADDR2 : string;
  attribute REG_ADDR_RPADDR2 of bd_0ad1_M02_INI_stub_nmu_0_top_INST : label is "32'b00000000000000000000000000000000";
  attribute REG_ADDR_RPADDR3 : string;
  attribute REG_ADDR_RPADDR3 of bd_0ad1_M02_INI_stub_nmu_0_top_INST : label is "32'b00000000000000000000000000000000";
  attribute REG_ADDR_RPADDR4 : string;
  attribute REG_ADDR_RPADDR4 of bd_0ad1_M02_INI_stub_nmu_0_top_INST : label is "32'b00000000000000000000000000000000";
  attribute REG_ADDR_RPADDR5 : string;
  attribute REG_ADDR_RPADDR5 of bd_0ad1_M02_INI_stub_nmu_0_top_INST : label is "32'b00000000000000000000000000000000";
  attribute REG_ADDR_RPADDR6 : string;
  attribute REG_ADDR_RPADDR6 of bd_0ad1_M02_INI_stub_nmu_0_top_INST : label is "32'b00000000000000000000000000000000";
  attribute REG_ADDR_RPADDR7 : string;
  attribute REG_ADDR_RPADDR7 of bd_0ad1_M02_INI_stub_nmu_0_top_INST : label is "32'b00000000000000000000000000000000";
  attribute REG_ADDR_RPADDR8 : string;
  attribute REG_ADDR_RPADDR8 of bd_0ad1_M02_INI_stub_nmu_0_top_INST : label is "32'b00000000000000000000000000000000";
  attribute REG_ADDR_RPADDR9 : string;
  attribute REG_ADDR_RPADDR9 of bd_0ad1_M02_INI_stub_nmu_0_top_INST : label is "32'b00000000000000000000000000000000";
  attribute REG_ADR_MAP_CPM : string;
  attribute REG_ADR_MAP_CPM of bd_0ad1_M02_INI_stub_nmu_0_top_INST : label is "12'b111111000000";
  attribute REG_ADR_MAP_FPD_AFI_0 : string;
  attribute REG_ADR_MAP_FPD_AFI_0 of bd_0ad1_M02_INI_stub_nmu_0_top_INST : label is "12'b111111000000";
  attribute REG_ADR_MAP_FPD_AFI_1 : string;
  attribute REG_ADR_MAP_FPD_AFI_1 of bd_0ad1_M02_INI_stub_nmu_0_top_INST : label is "12'b111111000000";
  attribute REG_ADR_MAP_LPD_AFI_FS : string;
  attribute REG_ADR_MAP_LPD_AFI_FS of bd_0ad1_M02_INI_stub_nmu_0_top_INST : label is "12'b111111000000";
  attribute REG_ADR_MAP_ME_ARRAY_0 : string;
  attribute REG_ADR_MAP_ME_ARRAY_0 of bd_0ad1_M02_INI_stub_nmu_0_top_INST : label is "12'b111111000000";
  attribute REG_ADR_MAP_ME_ARRAY_1 : string;
  attribute REG_ADR_MAP_ME_ARRAY_1 of bd_0ad1_M02_INI_stub_nmu_0_top_INST : label is "12'b111111000000";
  attribute REG_ADR_MAP_ME_ARRAY_2 : string;
  attribute REG_ADR_MAP_ME_ARRAY_2 of bd_0ad1_M02_INI_stub_nmu_0_top_INST : label is "12'b111111000000";
  attribute REG_ADR_MAP_ME_ARRAY_3 : string;
  attribute REG_ADR_MAP_ME_ARRAY_3 of bd_0ad1_M02_INI_stub_nmu_0_top_INST : label is "12'b111111000000";
  attribute REG_ADR_MAP_PCIE : string;
  attribute REG_ADR_MAP_PCIE of bd_0ad1_M02_INI_stub_nmu_0_top_INST : label is "12'b111111000000";
  attribute REG_ADR_MAP_PMC : string;
  attribute REG_ADR_MAP_PMC of bd_0ad1_M02_INI_stub_nmu_0_top_INST : label is "12'b111111000000";
  attribute REG_ADR_MAP_PMC_ALIAS_0 : string;
  attribute REG_ADR_MAP_PMC_ALIAS_0 of bd_0ad1_M02_INI_stub_nmu_0_top_INST : label is "12'b111111000000";
  attribute REG_ADR_MAP_PMC_ALIAS_1 : string;
  attribute REG_ADR_MAP_PMC_ALIAS_1 of bd_0ad1_M02_INI_stub_nmu_0_top_INST : label is "12'b111111000000";
  attribute REG_ADR_MAP_PMC_ALIAS_2 : string;
  attribute REG_ADR_MAP_PMC_ALIAS_2 of bd_0ad1_M02_INI_stub_nmu_0_top_INST : label is "12'b111111000000";
  attribute REG_ADR_MAP_PMC_ALIAS_3 : string;
  attribute REG_ADR_MAP_PMC_ALIAS_3 of bd_0ad1_M02_INI_stub_nmu_0_top_INST : label is "12'b111111000000";
  attribute REG_ADR_MAP_QSPI : string;
  attribute REG_ADR_MAP_QSPI of bd_0ad1_M02_INI_stub_nmu_0_top_INST : label is "12'b111111000000";
  attribute REG_ADR_MAP_STM_GIC : string;
  attribute REG_ADR_MAP_STM_GIC of bd_0ad1_M02_INI_stub_nmu_0_top_INST : label is "12'b111111000000";
  attribute REG_ADR_MAP_XPDS : string;
  attribute REG_ADR_MAP_XPDS of bd_0ad1_M02_INI_stub_nmu_0_top_INST : label is "12'b111111000000";
  attribute REG_AXI_NON_MOD_DISABLE : string;
  attribute REG_AXI_NON_MOD_DISABLE of bd_0ad1_M02_INI_stub_nmu_0_top_INST : label is "1'b0";
  attribute REG_AXI_PAR_CHK : string;
  attribute REG_AXI_PAR_CHK of bd_0ad1_M02_INI_stub_nmu_0_top_INST : label is "2'b00";
  attribute REG_CHOPSIZE : string;
  attribute REG_CHOPSIZE of bd_0ad1_M02_INI_stub_nmu_0_top_INST : label is "4'b1010";
  attribute REG_DDR_ADR_MAP0 : string;
  attribute REG_DDR_ADR_MAP0 of bd_0ad1_M02_INI_stub_nmu_0_top_INST : label is "15'b110011010001000";
  attribute REG_DDR_ADR_MAP1 : string;
  attribute REG_DDR_ADR_MAP1 of bd_0ad1_M02_INI_stub_nmu_0_top_INST : label is "15'b001111111111111";
  attribute REG_DDR_ADR_MAP2 : string;
  attribute REG_DDR_ADR_MAP2 of bd_0ad1_M02_INI_stub_nmu_0_top_INST : label is "15'b001111111111111";
  attribute REG_DDR_ADR_MAP3 : string;
  attribute REG_DDR_ADR_MAP3 of bd_0ad1_M02_INI_stub_nmu_0_top_INST : label is "15'b001111111111111";
  attribute REG_DDR_ADR_MAP4 : string;
  attribute REG_DDR_ADR_MAP4 of bd_0ad1_M02_INI_stub_nmu_0_top_INST : label is "15'b001111111111111";
  attribute REG_DDR_ADR_MAP5 : string;
  attribute REG_DDR_ADR_MAP5 of bd_0ad1_M02_INI_stub_nmu_0_top_INST : label is "15'b001111111111111";
  attribute REG_DDR_ADR_MAP6 : string;
  attribute REG_DDR_ADR_MAP6 of bd_0ad1_M02_INI_stub_nmu_0_top_INST : label is "15'b001111111111111";
  attribute REG_DDR_DST_MAP0 : string;
  attribute REG_DDR_DST_MAP0 of bd_0ad1_M02_INI_stub_nmu_0_top_INST : label is "12'b100100000000";
  attribute REG_DDR_DST_MAP1 : string;
  attribute REG_DDR_DST_MAP1 of bd_0ad1_M02_INI_stub_nmu_0_top_INST : label is "12'b011000000000";
  attribute REG_DDR_DST_MAP2 : string;
  attribute REG_DDR_DST_MAP2 of bd_0ad1_M02_INI_stub_nmu_0_top_INST : label is "12'b100000000000";
  attribute REG_DDR_DST_MAP3 : string;
  attribute REG_DDR_DST_MAP3 of bd_0ad1_M02_INI_stub_nmu_0_top_INST : label is "12'b011100000000";
  attribute REG_DDR_DST_MAP4 : string;
  attribute REG_DDR_DST_MAP4 of bd_0ad1_M02_INI_stub_nmu_0_top_INST : label is "12'b111111000000";
  attribute REG_DDR_DST_MAP5 : string;
  attribute REG_DDR_DST_MAP5 of bd_0ad1_M02_INI_stub_nmu_0_top_INST : label is "12'b111111000000";
  attribute REG_DDR_DST_MAP6 : string;
  attribute REG_DDR_DST_MAP6 of bd_0ad1_M02_INI_stub_nmu_0_top_INST : label is "12'b111111000000";
  attribute REG_DDR_DST_MAP7 : string;
  attribute REG_DDR_DST_MAP7 of bd_0ad1_M02_INI_stub_nmu_0_top_INST : label is "12'b111111000000";
  attribute REG_DWIDTH : string;
  attribute REG_DWIDTH of bd_0ad1_M02_INI_stub_nmu_0_top_INST : label is "3'b110";
  attribute REG_ECC_CHK_EN : string;
  attribute REG_ECC_CHK_EN of bd_0ad1_M02_INI_stub_nmu_0_top_INST : label is "1'b1";
  attribute REG_HBM_MAP_T0_CH0 : string;
  attribute REG_HBM_MAP_T0_CH0 of bd_0ad1_M02_INI_stub_nmu_0_top_INST : label is "12'b111111000000";
  attribute REG_HBM_MAP_T0_CH1 : string;
  attribute REG_HBM_MAP_T0_CH1 of bd_0ad1_M02_INI_stub_nmu_0_top_INST : label is "12'b111111000000";
  attribute REG_HBM_MAP_T0_CH10 : string;
  attribute REG_HBM_MAP_T0_CH10 of bd_0ad1_M02_INI_stub_nmu_0_top_INST : label is "12'b111111000000";
  attribute REG_HBM_MAP_T0_CH11 : string;
  attribute REG_HBM_MAP_T0_CH11 of bd_0ad1_M02_INI_stub_nmu_0_top_INST : label is "12'b111111000000";
  attribute REG_HBM_MAP_T0_CH12 : string;
  attribute REG_HBM_MAP_T0_CH12 of bd_0ad1_M02_INI_stub_nmu_0_top_INST : label is "12'b111111000000";
  attribute REG_HBM_MAP_T0_CH13 : string;
  attribute REG_HBM_MAP_T0_CH13 of bd_0ad1_M02_INI_stub_nmu_0_top_INST : label is "12'b111111000000";
  attribute REG_HBM_MAP_T0_CH14 : string;
  attribute REG_HBM_MAP_T0_CH14 of bd_0ad1_M02_INI_stub_nmu_0_top_INST : label is "12'b111111000000";
  attribute REG_HBM_MAP_T0_CH15 : string;
  attribute REG_HBM_MAP_T0_CH15 of bd_0ad1_M02_INI_stub_nmu_0_top_INST : label is "12'b111111000000";
  attribute REG_HBM_MAP_T0_CH2 : string;
  attribute REG_HBM_MAP_T0_CH2 of bd_0ad1_M02_INI_stub_nmu_0_top_INST : label is "12'b111111000000";
  attribute REG_HBM_MAP_T0_CH3 : string;
  attribute REG_HBM_MAP_T0_CH3 of bd_0ad1_M02_INI_stub_nmu_0_top_INST : label is "12'b111111000000";
  attribute REG_HBM_MAP_T0_CH4 : string;
  attribute REG_HBM_MAP_T0_CH4 of bd_0ad1_M02_INI_stub_nmu_0_top_INST : label is "12'b111111000000";
  attribute REG_HBM_MAP_T0_CH5 : string;
  attribute REG_HBM_MAP_T0_CH5 of bd_0ad1_M02_INI_stub_nmu_0_top_INST : label is "12'b111111000000";
  attribute REG_HBM_MAP_T0_CH6 : string;
  attribute REG_HBM_MAP_T0_CH6 of bd_0ad1_M02_INI_stub_nmu_0_top_INST : label is "12'b111111000000";
  attribute REG_HBM_MAP_T0_CH7 : string;
  attribute REG_HBM_MAP_T0_CH7 of bd_0ad1_M02_INI_stub_nmu_0_top_INST : label is "12'b111111000000";
  attribute REG_HBM_MAP_T0_CH8 : string;
  attribute REG_HBM_MAP_T0_CH8 of bd_0ad1_M02_INI_stub_nmu_0_top_INST : label is "12'b111111000000";
  attribute REG_HBM_MAP_T0_CH9 : string;
  attribute REG_HBM_MAP_T0_CH9 of bd_0ad1_M02_INI_stub_nmu_0_top_INST : label is "12'b111111000000";
  attribute REG_HBM_MAP_T1_CH0 : string;
  attribute REG_HBM_MAP_T1_CH0 of bd_0ad1_M02_INI_stub_nmu_0_top_INST : label is "12'b111111000000";
  attribute REG_HBM_MAP_T1_CH1 : string;
  attribute REG_HBM_MAP_T1_CH1 of bd_0ad1_M02_INI_stub_nmu_0_top_INST : label is "12'b111111000000";
  attribute REG_HBM_MAP_T1_CH10 : string;
  attribute REG_HBM_MAP_T1_CH10 of bd_0ad1_M02_INI_stub_nmu_0_top_INST : label is "12'b111111000000";
  attribute REG_HBM_MAP_T1_CH11 : string;
  attribute REG_HBM_MAP_T1_CH11 of bd_0ad1_M02_INI_stub_nmu_0_top_INST : label is "12'b111111000000";
  attribute REG_HBM_MAP_T1_CH12 : string;
  attribute REG_HBM_MAP_T1_CH12 of bd_0ad1_M02_INI_stub_nmu_0_top_INST : label is "12'b111111000000";
  attribute REG_HBM_MAP_T1_CH13 : string;
  attribute REG_HBM_MAP_T1_CH13 of bd_0ad1_M02_INI_stub_nmu_0_top_INST : label is "12'b111111000000";
  attribute REG_HBM_MAP_T1_CH14 : string;
  attribute REG_HBM_MAP_T1_CH14 of bd_0ad1_M02_INI_stub_nmu_0_top_INST : label is "12'b111111000000";
  attribute REG_HBM_MAP_T1_CH15 : string;
  attribute REG_HBM_MAP_T1_CH15 of bd_0ad1_M02_INI_stub_nmu_0_top_INST : label is "12'b111111000000";
  attribute REG_HBM_MAP_T1_CH2 : string;
  attribute REG_HBM_MAP_T1_CH2 of bd_0ad1_M02_INI_stub_nmu_0_top_INST : label is "12'b111111000000";
  attribute REG_HBM_MAP_T1_CH3 : string;
  attribute REG_HBM_MAP_T1_CH3 of bd_0ad1_M02_INI_stub_nmu_0_top_INST : label is "12'b111111000000";
  attribute REG_HBM_MAP_T1_CH4 : string;
  attribute REG_HBM_MAP_T1_CH4 of bd_0ad1_M02_INI_stub_nmu_0_top_INST : label is "12'b111111000000";
  attribute REG_HBM_MAP_T1_CH5 : string;
  attribute REG_HBM_MAP_T1_CH5 of bd_0ad1_M02_INI_stub_nmu_0_top_INST : label is "12'b111111000000";
  attribute REG_HBM_MAP_T1_CH6 : string;
  attribute REG_HBM_MAP_T1_CH6 of bd_0ad1_M02_INI_stub_nmu_0_top_INST : label is "12'b111111000000";
  attribute REG_HBM_MAP_T1_CH7 : string;
  attribute REG_HBM_MAP_T1_CH7 of bd_0ad1_M02_INI_stub_nmu_0_top_INST : label is "12'b111111000000";
  attribute REG_HBM_MAP_T1_CH8 : string;
  attribute REG_HBM_MAP_T1_CH8 of bd_0ad1_M02_INI_stub_nmu_0_top_INST : label is "12'b111111000000";
  attribute REG_HBM_MAP_T1_CH9 : string;
  attribute REG_HBM_MAP_T1_CH9 of bd_0ad1_M02_INI_stub_nmu_0_top_INST : label is "12'b111111000000";
  attribute REG_HBM_MAP_T2_CH0 : string;
  attribute REG_HBM_MAP_T2_CH0 of bd_0ad1_M02_INI_stub_nmu_0_top_INST : label is "12'b111111000000";
  attribute REG_HBM_MAP_T2_CH1 : string;
  attribute REG_HBM_MAP_T2_CH1 of bd_0ad1_M02_INI_stub_nmu_0_top_INST : label is "12'b111111000000";
  attribute REG_HBM_MAP_T2_CH10 : string;
  attribute REG_HBM_MAP_T2_CH10 of bd_0ad1_M02_INI_stub_nmu_0_top_INST : label is "12'b111111000000";
  attribute REG_HBM_MAP_T2_CH11 : string;
  attribute REG_HBM_MAP_T2_CH11 of bd_0ad1_M02_INI_stub_nmu_0_top_INST : label is "12'b111111000000";
  attribute REG_HBM_MAP_T2_CH12 : string;
  attribute REG_HBM_MAP_T2_CH12 of bd_0ad1_M02_INI_stub_nmu_0_top_INST : label is "12'b111111000000";
  attribute REG_HBM_MAP_T2_CH13 : string;
  attribute REG_HBM_MAP_T2_CH13 of bd_0ad1_M02_INI_stub_nmu_0_top_INST : label is "12'b111111000000";
  attribute REG_HBM_MAP_T2_CH14 : string;
  attribute REG_HBM_MAP_T2_CH14 of bd_0ad1_M02_INI_stub_nmu_0_top_INST : label is "12'b111111000000";
  attribute REG_HBM_MAP_T2_CH15 : string;
  attribute REG_HBM_MAP_T2_CH15 of bd_0ad1_M02_INI_stub_nmu_0_top_INST : label is "12'b111111000000";
  attribute REG_HBM_MAP_T2_CH2 : string;
  attribute REG_HBM_MAP_T2_CH2 of bd_0ad1_M02_INI_stub_nmu_0_top_INST : label is "12'b111111000000";
  attribute REG_HBM_MAP_T2_CH3 : string;
  attribute REG_HBM_MAP_T2_CH3 of bd_0ad1_M02_INI_stub_nmu_0_top_INST : label is "12'b111111000000";
  attribute REG_HBM_MAP_T2_CH4 : string;
  attribute REG_HBM_MAP_T2_CH4 of bd_0ad1_M02_INI_stub_nmu_0_top_INST : label is "12'b111111000000";
  attribute REG_HBM_MAP_T2_CH5 : string;
  attribute REG_HBM_MAP_T2_CH5 of bd_0ad1_M02_INI_stub_nmu_0_top_INST : label is "12'b111111000000";
  attribute REG_HBM_MAP_T2_CH6 : string;
  attribute REG_HBM_MAP_T2_CH6 of bd_0ad1_M02_INI_stub_nmu_0_top_INST : label is "12'b111111000000";
  attribute REG_HBM_MAP_T2_CH7 : string;
  attribute REG_HBM_MAP_T2_CH7 of bd_0ad1_M02_INI_stub_nmu_0_top_INST : label is "12'b111111000000";
  attribute REG_HBM_MAP_T2_CH8 : string;
  attribute REG_HBM_MAP_T2_CH8 of bd_0ad1_M02_INI_stub_nmu_0_top_INST : label is "12'b111111000000";
  attribute REG_HBM_MAP_T2_CH9 : string;
  attribute REG_HBM_MAP_T2_CH9 of bd_0ad1_M02_INI_stub_nmu_0_top_INST : label is "12'b111111000000";
  attribute REG_HBM_MAP_T3_CH0 : string;
  attribute REG_HBM_MAP_T3_CH0 of bd_0ad1_M02_INI_stub_nmu_0_top_INST : label is "12'b111111000000";
  attribute REG_HBM_MAP_T3_CH1 : string;
  attribute REG_HBM_MAP_T3_CH1 of bd_0ad1_M02_INI_stub_nmu_0_top_INST : label is "12'b111111000000";
  attribute REG_HBM_MAP_T3_CH10 : string;
  attribute REG_HBM_MAP_T3_CH10 of bd_0ad1_M02_INI_stub_nmu_0_top_INST : label is "12'b111111000000";
  attribute REG_HBM_MAP_T3_CH11 : string;
  attribute REG_HBM_MAP_T3_CH11 of bd_0ad1_M02_INI_stub_nmu_0_top_INST : label is "12'b111111000000";
  attribute REG_HBM_MAP_T3_CH12 : string;
  attribute REG_HBM_MAP_T3_CH12 of bd_0ad1_M02_INI_stub_nmu_0_top_INST : label is "12'b111111000000";
  attribute REG_HBM_MAP_T3_CH13 : string;
  attribute REG_HBM_MAP_T3_CH13 of bd_0ad1_M02_INI_stub_nmu_0_top_INST : label is "12'b111111000000";
  attribute REG_HBM_MAP_T3_CH14 : string;
  attribute REG_HBM_MAP_T3_CH14 of bd_0ad1_M02_INI_stub_nmu_0_top_INST : label is "12'b111111000000";
  attribute REG_HBM_MAP_T3_CH15 : string;
  attribute REG_HBM_MAP_T3_CH15 of bd_0ad1_M02_INI_stub_nmu_0_top_INST : label is "12'b111111000000";
  attribute REG_HBM_MAP_T3_CH2 : string;
  attribute REG_HBM_MAP_T3_CH2 of bd_0ad1_M02_INI_stub_nmu_0_top_INST : label is "12'b111111000000";
  attribute REG_HBM_MAP_T3_CH3 : string;
  attribute REG_HBM_MAP_T3_CH3 of bd_0ad1_M02_INI_stub_nmu_0_top_INST : label is "12'b111111000000";
  attribute REG_HBM_MAP_T3_CH4 : string;
  attribute REG_HBM_MAP_T3_CH4 of bd_0ad1_M02_INI_stub_nmu_0_top_INST : label is "12'b111111000000";
  attribute REG_HBM_MAP_T3_CH5 : string;
  attribute REG_HBM_MAP_T3_CH5 of bd_0ad1_M02_INI_stub_nmu_0_top_INST : label is "12'b111111000000";
  attribute REG_HBM_MAP_T3_CH6 : string;
  attribute REG_HBM_MAP_T3_CH6 of bd_0ad1_M02_INI_stub_nmu_0_top_INST : label is "12'b111111000000";
  attribute REG_HBM_MAP_T3_CH7 : string;
  attribute REG_HBM_MAP_T3_CH7 of bd_0ad1_M02_INI_stub_nmu_0_top_INST : label is "12'b111111000000";
  attribute REG_HBM_MAP_T3_CH8 : string;
  attribute REG_HBM_MAP_T3_CH8 of bd_0ad1_M02_INI_stub_nmu_0_top_INST : label is "12'b111111000000";
  attribute REG_HBM_MAP_T3_CH9 : string;
  attribute REG_HBM_MAP_T3_CH9 of bd_0ad1_M02_INI_stub_nmu_0_top_INST : label is "12'b111111000000";
  attribute REG_MODE_SELECT : string;
  attribute REG_MODE_SELECT of bd_0ad1_M02_INI_stub_nmu_0_top_INST : label is "16'b0000000000000000";
  attribute REG_OUTSTANDING_RD_TXN : string;
  attribute REG_OUTSTANDING_RD_TXN of bd_0ad1_M02_INI_stub_nmu_0_top_INST : label is "7'b1000000";
  attribute REG_OUTSTANDING_WR_TXN : string;
  attribute REG_OUTSTANDING_WR_TXN of bd_0ad1_M02_INI_stub_nmu_0_top_INST : label is "7'b1000000";
  attribute REG_PRIORITY : string;
  attribute REG_PRIORITY of bd_0ad1_M02_INI_stub_nmu_0_top_INST : label is "2'b00";
  attribute REG_RD_AXPROT_SEL : string;
  attribute REG_RD_AXPROT_SEL of bd_0ad1_M02_INI_stub_nmu_0_top_INST : label is "6'b000000";
  attribute REG_RD_RATE_CREDIT_DROP : string;
  attribute REG_RD_RATE_CREDIT_DROP of bd_0ad1_M02_INI_stub_nmu_0_top_INST : label is "10'b0000000100";
  attribute REG_RD_RATE_CREDIT_LIMIT : string;
  attribute REG_RD_RATE_CREDIT_LIMIT of bd_0ad1_M02_INI_stub_nmu_0_top_INST : label is "13'b0000100000000";
  attribute REG_RD_VCA_TOKEN0 : string;
  attribute REG_RD_VCA_TOKEN0 of bd_0ad1_M02_INI_stub_nmu_0_top_INST : label is "8'b00010100";
  attribute REG_RPOISON_TO_SLVERR : string;
  attribute REG_RPOISON_TO_SLVERR of bd_0ad1_M02_INI_stub_nmu_0_top_INST : label is "1'b0";
  attribute REG_RROB_RAM_SETTING : string;
  attribute REG_RROB_RAM_SETTING of bd_0ad1_M02_INI_stub_nmu_0_top_INST : label is "9'b000010010";
  attribute REG_SMID_SEL : string;
  attribute REG_SMID_SEL of bd_0ad1_M02_INI_stub_nmu_0_top_INST : label is "20'b00000000000000000000";
  attribute REG_SRC : string;
  attribute REG_SRC of bd_0ad1_M02_INI_stub_nmu_0_top_INST : label is "12'b001000000000";
  attribute REG_TBASE_AXI_TIMEOUT : string;
  attribute REG_TBASE_AXI_TIMEOUT of bd_0ad1_M02_INI_stub_nmu_0_top_INST : label is "3'b001";
  attribute REG_TBASE_MODE_RLIMIT_RD : string;
  attribute REG_TBASE_MODE_RLIMIT_RD of bd_0ad1_M02_INI_stub_nmu_0_top_INST : label is "3'b010";
  attribute REG_TBASE_MODE_RLIMIT_WR : string;
  attribute REG_TBASE_MODE_RLIMIT_WR of bd_0ad1_M02_INI_stub_nmu_0_top_INST : label is "3'b010";
  attribute REG_TBASE_TRK_TIMEOUT : string;
  attribute REG_TBASE_TRK_TIMEOUT of bd_0ad1_M02_INI_stub_nmu_0_top_INST : label is "3'b001";
  attribute REG_VC_MAP : string;
  attribute REG_VC_MAP of bd_0ad1_M02_INI_stub_nmu_0_top_INST : label is "12'b011010001000";
  attribute REG_WBUF_LAUNCH_SIZE : string;
  attribute REG_WBUF_LAUNCH_SIZE of bd_0ad1_M02_INI_stub_nmu_0_top_INST : label is "6'b010000";
  attribute REG_WBUF_RAM_SETTING : string;
  attribute REG_WBUF_RAM_SETTING of bd_0ad1_M02_INI_stub_nmu_0_top_INST : label is "9'b000010010";
  attribute REG_WR_AXPROT_SEL : string;
  attribute REG_WR_AXPROT_SEL of bd_0ad1_M02_INI_stub_nmu_0_top_INST : label is "6'b000000";
  attribute REG_WR_RATE_CREDIT_DROP : string;
  attribute REG_WR_RATE_CREDIT_DROP of bd_0ad1_M02_INI_stub_nmu_0_top_INST : label is "10'b0000000100";
  attribute REG_WR_RATE_CREDIT_LIMIT : string;
  attribute REG_WR_RATE_CREDIT_LIMIT of bd_0ad1_M02_INI_stub_nmu_0_top_INST : label is "13'b0000100000000";
  attribute REG_WR_VCA_TOKEN0 : string;
  attribute REG_WR_VCA_TOKEN0 of bd_0ad1_M02_INI_stub_nmu_0_top_INST : label is "8'b00010000";
  attribute X_INTERFACE_INFO : string;
  attribute X_INTERFACE_INFO of IF_NOC_AXI_ARREADY : signal is "xilinx.com:interface:aximm:1.0 SAXI4 ARREADY";
  attribute X_INTERFACE_INFO of IF_NOC_AXI_ARVALID : signal is "xilinx.com:interface:aximm:1.0 SAXI4 ARVALID";
  attribute X_INTERFACE_INFO of IF_NOC_AXI_AWREADY : signal is "xilinx.com:interface:aximm:1.0 SAXI4 AWREADY";
  attribute X_INTERFACE_INFO of IF_NOC_AXI_AWVALID : signal is "xilinx.com:interface:aximm:1.0 SAXI4 AWVALID";
  attribute X_INTERFACE_INFO of IF_NOC_AXI_BREADY : signal is "xilinx.com:interface:aximm:1.0 SAXI4 BREADY";
  attribute X_INTERFACE_INFO of IF_NOC_AXI_BVALID : signal is "xilinx.com:interface:aximm:1.0 SAXI4 BVALID";
  attribute X_INTERFACE_INFO of IF_NOC_AXI_RREADY : signal is "xilinx.com:interface:aximm:1.0 SAXI4 RREADY";
  attribute X_INTERFACE_INFO of IF_NOC_AXI_RVALID : signal is "xilinx.com:interface:aximm:1.0 SAXI4 RVALID";
  attribute X_INTERFACE_INFO of IF_NOC_AXI_WREADY : signal is "xilinx.com:interface:aximm:1.0 SAXI4 WREADY";
  attribute X_INTERFACE_INFO of IF_NOC_AXI_WVALID : signal is "xilinx.com:interface:aximm:1.0 SAXI4 WVALID";
  attribute X_INTERFACE_INFO of IF_NOC_NPP_IN_NOC_CREDIT_RDY : signal is "xilinx.com:interface:npp:1.0 SNPP CREDIT_RDY";
  attribute X_INTERFACE_INFO of IF_NOC_NPP_OUT_NOC_CREDIT_RDY : signal is "xilinx.com:interface:npp:1.0 MNPP CREDIT_RDY";
  attribute dont_touch : string;
  attribute dont_touch of NMU : signal is "true";
  attribute X_INTERFACE_INFO of aclk : signal is "xilinx.com:signal:clock:1.0 aclk aclk";
  attribute X_INTERFACE_PARAMETER : string;
  attribute X_INTERFACE_PARAMETER of aclk : signal is "XIL_INTERFACENAME aclk, ASSOCIATED_BUSIF SAXI4:SAXI_STREAM, FREQ_HZ 100000000, PHASE 0.000";
  attribute X_INTERFACE_INFO of IF_NOC_AXI_ARADDR : signal is "xilinx.com:interface:aximm:1.0 SAXI4 ARADDR";
  attribute X_INTERFACE_INFO of IF_NOC_AXI_ARBURST : signal is "xilinx.com:interface:aximm:1.0 SAXI4 ARBURST";
  attribute X_INTERFACE_INFO of IF_NOC_AXI_ARCACHE : signal is "xilinx.com:interface:aximm:1.0 SAXI4 ARCACHE";
  attribute X_INTERFACE_INFO of IF_NOC_AXI_ARLEN : signal is "xilinx.com:interface:aximm:1.0 SAXI4 ARLEN";
  attribute X_INTERFACE_INFO of IF_NOC_AXI_ARLOCK : signal is "xilinx.com:interface:aximm:1.0 SAXI4 ARLOCK";
  attribute X_INTERFACE_INFO of IF_NOC_AXI_ARPROT : signal is "xilinx.com:interface:aximm:1.0 SAXI4 ARPROT";
  attribute X_INTERFACE_INFO of IF_NOC_AXI_ARQOS : signal is "xilinx.com:interface:aximm:1.0 SAXI4 ARQOS";
  attribute X_INTERFACE_INFO of IF_NOC_AXI_ARREGION : signal is "xilinx.com:interface:aximm:1.0 SAXI4 ARREGION";
  attribute X_INTERFACE_INFO of IF_NOC_AXI_ARSIZE : signal is "xilinx.com:interface:aximm:1.0 SAXI4 ARSIZE";
  attribute X_INTERFACE_INFO of IF_NOC_AXI_AWADDR : signal is "xilinx.com:interface:aximm:1.0 SAXI4 AWADDR";
  attribute X_INTERFACE_INFO of IF_NOC_AXI_AWBURST : signal is "xilinx.com:interface:aximm:1.0 SAXI4 AWBURST";
  attribute X_INTERFACE_INFO of IF_NOC_AXI_AWCACHE : signal is "xilinx.com:interface:aximm:1.0 SAXI4 AWCACHE";
  attribute X_INTERFACE_INFO of IF_NOC_AXI_AWLEN : signal is "xilinx.com:interface:aximm:1.0 SAXI4 AWLEN";
  attribute X_INTERFACE_INFO of IF_NOC_AXI_AWLOCK : signal is "xilinx.com:interface:aximm:1.0 SAXI4 AWLOCK";
  attribute X_INTERFACE_INFO of IF_NOC_AXI_AWPROT : signal is "xilinx.com:interface:aximm:1.0 SAXI4 AWPROT";
  attribute X_INTERFACE_INFO of IF_NOC_AXI_AWQOS : signal is "xilinx.com:interface:aximm:1.0 SAXI4 AWQOS";
  attribute X_INTERFACE_INFO of IF_NOC_AXI_AWREGION : signal is "xilinx.com:interface:aximm:1.0 SAXI4 AWREGION";
  attribute X_INTERFACE_INFO of IF_NOC_AXI_AWSIZE : signal is "xilinx.com:interface:aximm:1.0 SAXI4 AWSIZE";
  attribute X_INTERFACE_INFO of IF_NOC_AXI_BRESP : signal is "xilinx.com:interface:aximm:1.0 SAXI4 BRESP";
  attribute X_INTERFACE_INFO of IF_NOC_AXI_RDATA : signal is "xilinx.com:interface:aximm:1.0 SAXI4 RDATA";
  attribute X_INTERFACE_INFO of IF_NOC_AXI_RLAST : signal is "xilinx.com:interface:aximm:1.0 SAXI4 RLAST";
  attribute X_INTERFACE_INFO of IF_NOC_AXI_RRESP : signal is "xilinx.com:interface:aximm:1.0 SAXI4 RRESP";
  attribute X_INTERFACE_INFO of IF_NOC_AXI_WDATA : signal is "xilinx.com:interface:aximm:1.0 SAXI4 WDATA";
  attribute X_INTERFACE_INFO of IF_NOC_AXI_WLAST : signal is "xilinx.com:interface:aximm:1.0 SAXI4 WLAST";
  attribute X_INTERFACE_INFO of IF_NOC_AXI_WSTRB : signal is "xilinx.com:interface:aximm:1.0 SAXI4 WSTRB";
  attribute X_INTERFACE_INFO of IF_NOC_NPP_IN_NOC_CREDIT_RETURN : signal is "xilinx.com:interface:npp:1.0 SNPP CREDIT_RETURN";
  attribute X_INTERFACE_INFO of IF_NOC_NPP_IN_NOC_FLIT : signal is "xilinx.com:interface:npp:1.0 SNPP FLIT";
  attribute X_INTERFACE_INFO of IF_NOC_NPP_IN_NOC_VALID : signal is "xilinx.com:interface:npp:1.0 SNPP VALID";
  attribute X_INTERFACE_PARAMETER of IF_NOC_NPP_IN_NOC_VALID : signal is "XIL_INTERFACENAME SNPP, IN_SYNTHESIS_HDL NO, CAN_DEBUG false";
  attribute X_INTERFACE_INFO of IF_NOC_NPP_OUT_NOC_CREDIT_RETURN : signal is "xilinx.com:interface:npp:1.0 MNPP CREDIT_RETURN";
  attribute X_INTERFACE_PARAMETER of IF_NOC_NPP_OUT_NOC_CREDIT_RETURN : signal is "XIL_INTERFACENAME MNPP, IN_SYNTHESIS_HDL NO, CAN_DEBUG false";
  attribute X_INTERFACE_INFO of IF_NOC_NPP_OUT_NOC_FLIT : signal is "xilinx.com:interface:npp:1.0 MNPP FLIT";
  attribute X_INTERFACE_INFO of IF_NOC_NPP_OUT_NOC_VALID : signal is "xilinx.com:interface:npp:1.0 MNPP VALID";
begin
bd_0ad1_M02_INI_stub_nmu_0_top_INST: entity work.ulp_inst_0_axi_noc_kernel0_0_bd_0ad1_M02_INI_stub_nmu_0_top
     port map (
      IF_NOC_AXI_ARADDR(0) => IF_NOC_AXI_ARADDR(0),
      IF_NOC_AXI_ARBURST(1 downto 0) => IF_NOC_AXI_ARBURST(1 downto 0),
      IF_NOC_AXI_ARCACHE(3 downto 0) => IF_NOC_AXI_ARCACHE(3 downto 0),
      IF_NOC_AXI_ARLEN(7 downto 0) => IF_NOC_AXI_ARLEN(7 downto 0),
      IF_NOC_AXI_ARLOCK(0) => IF_NOC_AXI_ARLOCK(0),
      IF_NOC_AXI_ARPROT(2 downto 0) => IF_NOC_AXI_ARPROT(2 downto 0),
      IF_NOC_AXI_ARQOS(3 downto 0) => IF_NOC_AXI_ARQOS(3 downto 0),
      IF_NOC_AXI_ARREADY => IF_NOC_AXI_ARREADY,
      IF_NOC_AXI_ARREGION(3 downto 0) => IF_NOC_AXI_ARREGION(3 downto 0),
      IF_NOC_AXI_ARSIZE(2 downto 0) => IF_NOC_AXI_ARSIZE(2 downto 0),
      IF_NOC_AXI_ARVALID => IF_NOC_AXI_ARVALID,
      IF_NOC_AXI_AWADDR(0) => IF_NOC_AXI_AWADDR(0),
      IF_NOC_AXI_AWBURST(1 downto 0) => IF_NOC_AXI_AWBURST(1 downto 0),
      IF_NOC_AXI_AWCACHE(3 downto 0) => IF_NOC_AXI_AWCACHE(3 downto 0),
      IF_NOC_AXI_AWLEN(7 downto 0) => IF_NOC_AXI_AWLEN(7 downto 0),
      IF_NOC_AXI_AWLOCK(0) => IF_NOC_AXI_AWLOCK(0),
      IF_NOC_AXI_AWPROT(2 downto 0) => IF_NOC_AXI_AWPROT(2 downto 0),
      IF_NOC_AXI_AWQOS(3 downto 0) => IF_NOC_AXI_AWQOS(3 downto 0),
      IF_NOC_AXI_AWREADY => IF_NOC_AXI_AWREADY,
      IF_NOC_AXI_AWREGION(3 downto 0) => IF_NOC_AXI_AWREGION(3 downto 0),
      IF_NOC_AXI_AWSIZE(2 downto 0) => IF_NOC_AXI_AWSIZE(2 downto 0),
      IF_NOC_AXI_AWVALID => IF_NOC_AXI_AWVALID,
      IF_NOC_AXI_BREADY => IF_NOC_AXI_BREADY,
      IF_NOC_AXI_BRESP(1 downto 0) => IF_NOC_AXI_BRESP(1 downto 0),
      IF_NOC_AXI_BVALID => IF_NOC_AXI_BVALID,
      IF_NOC_AXI_RDATA(511 downto 0) => IF_NOC_AXI_RDATA(511 downto 0),
      IF_NOC_AXI_RLAST(0) => IF_NOC_AXI_RLAST(0),
      IF_NOC_AXI_RREADY => IF_NOC_AXI_RREADY,
      IF_NOC_AXI_RRESP(1 downto 0) => IF_NOC_AXI_RRESP(1 downto 0),
      IF_NOC_AXI_RVALID => IF_NOC_AXI_RVALID,
      IF_NOC_AXI_WDATA(511 downto 0) => IF_NOC_AXI_WDATA(511 downto 0),
      IF_NOC_AXI_WLAST(0) => IF_NOC_AXI_WLAST(0),
      IF_NOC_AXI_WREADY => IF_NOC_AXI_WREADY,
      IF_NOC_AXI_WSTRB(63 downto 0) => IF_NOC_AXI_WSTRB(63 downto 0),
      IF_NOC_AXI_WVALID => IF_NOC_AXI_WVALID,
      IF_NOC_NPP_IN_NOC_CREDIT_RDY => IF_NOC_NPP_IN_NOC_CREDIT_RDY,
      IF_NOC_NPP_IN_NOC_CREDIT_RETURN(7 downto 0) => IF_NOC_NPP_IN_NOC_CREDIT_RETURN(7 downto 0),
      IF_NOC_NPP_IN_NOC_FLIT(181 downto 0) => IF_NOC_NPP_IN_NOC_FLIT(181 downto 0),
      IF_NOC_NPP_IN_NOC_VALID(7 downto 0) => IF_NOC_NPP_IN_NOC_VALID(7 downto 0),
      IF_NOC_NPP_OUT_NOC_CREDIT_RDY => IF_NOC_NPP_OUT_NOC_CREDIT_RDY,
      IF_NOC_NPP_OUT_NOC_CREDIT_RETURN(7 downto 0) => IF_NOC_NPP_OUT_NOC_CREDIT_RETURN(7 downto 0),
      IF_NOC_NPP_OUT_NOC_FLIT(181 downto 0) => IF_NOC_NPP_OUT_NOC_FLIT(181 downto 0),
      IF_NOC_NPP_OUT_NOC_VALID(7 downto 0) => IF_NOC_NPP_OUT_NOC_VALID(7 downto 0),
      NMU => NMU,
      NMU_RD_DEST_MODE => NMU_RD_DEST_MODE,
      NMU_RD_USR_DST(11 downto 0) => NMU_RD_USR_DST(11 downto 0),
      NMU_WR_DEST_MODE => NMU_WR_DEST_MODE,
      NMU_WR_USR_DST(11 downto 0) => NMU_WR_USR_DST(11 downto 0),
      aclk => aclk
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity ulp_inst_0_axi_noc_kernel0_0_bd_0ad1 is
  port (
    M00_INI_internoc : out STD_LOGIC_VECTOR ( 0 to 0 );
    M01_INI_internoc : out STD_LOGIC_VECTOR ( 0 to 0 );
    M02_INI_internoc : out STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute HW_HANDOFF : string;
  attribute HW_HANDOFF of ulp_inst_0_axi_noc_kernel0_0_bd_0ad1 : entity is "ulp_inst_0_axi_noc_kernel0_0.hwdef";
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of ulp_inst_0_axi_noc_kernel0_0_bd_0ad1 : entity is "bd_0ad1";
end ulp_inst_0_axi_noc_kernel0_0_bd_0ad1;

architecture STRUCTURE of ulp_inst_0_axi_noc_kernel0_0_bd_0ad1 is
  signal \<const0>\ : STD_LOGIC;
  signal stub_clock_dout : STD_LOGIC;
  signal NLW_M00_INI_stub_nmu_IF_NOC_AXI_ARREADY_UNCONNECTED : STD_LOGIC;
  signal NLW_M00_INI_stub_nmu_IF_NOC_AXI_AWREADY_UNCONNECTED : STD_LOGIC;
  signal NLW_M00_INI_stub_nmu_IF_NOC_AXI_BVALID_UNCONNECTED : STD_LOGIC;
  signal NLW_M00_INI_stub_nmu_IF_NOC_AXI_RVALID_UNCONNECTED : STD_LOGIC;
  signal NLW_M00_INI_stub_nmu_IF_NOC_AXI_WREADY_UNCONNECTED : STD_LOGIC;
  signal NLW_M00_INI_stub_nmu_IF_NOC_NPP_OUT_NOC_CREDIT_RDY_UNCONNECTED : STD_LOGIC;
  signal NLW_M00_INI_stub_nmu_NMU_UNCONNECTED : STD_LOGIC;
  signal NLW_M00_INI_stub_nmu_IF_NOC_AXI_BRESP_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal NLW_M00_INI_stub_nmu_IF_NOC_AXI_RDATA_UNCONNECTED : STD_LOGIC_VECTOR ( 511 downto 0 );
  signal NLW_M00_INI_stub_nmu_IF_NOC_AXI_RLAST_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_M00_INI_stub_nmu_IF_NOC_AXI_RRESP_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal NLW_M00_INI_stub_nmu_IF_NOC_NPP_IN_NOC_CREDIT_RETURN_UNCONNECTED : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal NLW_M00_INI_stub_nmu_IF_NOC_NPP_OUT_NOC_FLIT_UNCONNECTED : STD_LOGIC_VECTOR ( 181 downto 0 );
  signal NLW_M00_INI_stub_nmu_IF_NOC_NPP_OUT_NOC_VALID_UNCONNECTED : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal NLW_M01_INI_stub_nmu_IF_NOC_AXI_ARREADY_UNCONNECTED : STD_LOGIC;
  signal NLW_M01_INI_stub_nmu_IF_NOC_AXI_AWREADY_UNCONNECTED : STD_LOGIC;
  signal NLW_M01_INI_stub_nmu_IF_NOC_AXI_BVALID_UNCONNECTED : STD_LOGIC;
  signal NLW_M01_INI_stub_nmu_IF_NOC_AXI_RVALID_UNCONNECTED : STD_LOGIC;
  signal NLW_M01_INI_stub_nmu_IF_NOC_AXI_WREADY_UNCONNECTED : STD_LOGIC;
  signal NLW_M01_INI_stub_nmu_IF_NOC_NPP_OUT_NOC_CREDIT_RDY_UNCONNECTED : STD_LOGIC;
  signal NLW_M01_INI_stub_nmu_NMU_UNCONNECTED : STD_LOGIC;
  signal NLW_M01_INI_stub_nmu_IF_NOC_AXI_BRESP_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal NLW_M01_INI_stub_nmu_IF_NOC_AXI_RDATA_UNCONNECTED : STD_LOGIC_VECTOR ( 511 downto 0 );
  signal NLW_M01_INI_stub_nmu_IF_NOC_AXI_RLAST_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_M01_INI_stub_nmu_IF_NOC_AXI_RRESP_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal NLW_M01_INI_stub_nmu_IF_NOC_NPP_IN_NOC_CREDIT_RETURN_UNCONNECTED : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal NLW_M01_INI_stub_nmu_IF_NOC_NPP_OUT_NOC_FLIT_UNCONNECTED : STD_LOGIC_VECTOR ( 181 downto 0 );
  signal NLW_M01_INI_stub_nmu_IF_NOC_NPP_OUT_NOC_VALID_UNCONNECTED : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal NLW_M02_INI_stub_nmu_IF_NOC_AXI_ARREADY_UNCONNECTED : STD_LOGIC;
  signal NLW_M02_INI_stub_nmu_IF_NOC_AXI_AWREADY_UNCONNECTED : STD_LOGIC;
  signal NLW_M02_INI_stub_nmu_IF_NOC_AXI_BVALID_UNCONNECTED : STD_LOGIC;
  signal NLW_M02_INI_stub_nmu_IF_NOC_AXI_RVALID_UNCONNECTED : STD_LOGIC;
  signal NLW_M02_INI_stub_nmu_IF_NOC_AXI_WREADY_UNCONNECTED : STD_LOGIC;
  signal NLW_M02_INI_stub_nmu_IF_NOC_NPP_OUT_NOC_CREDIT_RDY_UNCONNECTED : STD_LOGIC;
  signal NLW_M02_INI_stub_nmu_NMU_UNCONNECTED : STD_LOGIC;
  signal NLW_M02_INI_stub_nmu_IF_NOC_AXI_BRESP_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal NLW_M02_INI_stub_nmu_IF_NOC_AXI_RDATA_UNCONNECTED : STD_LOGIC_VECTOR ( 511 downto 0 );
  signal NLW_M02_INI_stub_nmu_IF_NOC_AXI_RLAST_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_M02_INI_stub_nmu_IF_NOC_AXI_RRESP_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal NLW_M02_INI_stub_nmu_IF_NOC_NPP_IN_NOC_CREDIT_RETURN_UNCONNECTED : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal NLW_M02_INI_stub_nmu_IF_NOC_NPP_OUT_NOC_FLIT_UNCONNECTED : STD_LOGIC_VECTOR ( 181 downto 0 );
  signal NLW_M02_INI_stub_nmu_IF_NOC_NPP_OUT_NOC_VALID_UNCONNECTED : STD_LOGIC_VECTOR ( 7 downto 0 );
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of M00_INI_stub_nmu : label is "noc_nmu_0,noc_nmu_v1_0_0_0,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of M00_INI_stub_nmu : label is "yes";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of M00_INI_stub_nmu : label is "noc_nmu_v1_0_0_0,Vivado 2018.1.0";
  attribute CHECK_LICENSE_TYPE of M01_INI_stub_nmu : label is "noc_nmu_0,noc_nmu_v1_0_0_0,{}";
  attribute DowngradeIPIdentifiedWarnings of M01_INI_stub_nmu : label is "yes";
  attribute X_CORE_INFO of M01_INI_stub_nmu : label is "noc_nmu_v1_0_0_0,Vivado 2018.1.0";
  attribute CHECK_LICENSE_TYPE of M02_INI_stub_nmu : label is "noc_nmu_0,noc_nmu_v1_0_0_0,{}";
  attribute DowngradeIPIdentifiedWarnings of M02_INI_stub_nmu : label is "yes";
  attribute X_CORE_INFO of M02_INI_stub_nmu : label is "noc_nmu_v1_0_0_0,Vivado 2018.1.0";
  attribute CHECK_LICENSE_TYPE of stub_clock : label is "bd_0ad1_stub_clock_0,xlconstant_v1_1_7_xlconstant,{}";
  attribute DowngradeIPIdentifiedWarnings of stub_clock : label is "yes";
  attribute X_CORE_INFO of stub_clock : label is "xlconstant_v1_1_7_xlconstant,Vivado 2022.2";
  attribute X_INTERFACE_INFO : string;
  attribute X_INTERFACE_INFO of M00_INI_internoc : signal is "xilinx.com:interface:inimm:1.0 M00_INI INTERNOC";
  attribute X_INTERFACE_PARAMETER : string;
  attribute X_INTERFACE_PARAMETER of M00_INI_internoc : signal is "XIL_INTERFACENAME M00_INI, ADDR_WIDTH 64, COMPUTED_STRATEGY load, INI_STRATEGY load, MY_CATEGORY pl, NOC_ID -1, WRITE_BUFFER_SIZE 80";
  attribute X_INTERFACE_INFO of M01_INI_internoc : signal is "xilinx.com:interface:inimm:1.0 M01_INI INTERNOC";
  attribute X_INTERFACE_PARAMETER of M01_INI_internoc : signal is "XIL_INTERFACENAME M01_INI, ADDR_WIDTH 64, COMPUTED_STRATEGY load, INI_STRATEGY load, MY_CATEGORY pl, NOC_ID -1, WRITE_BUFFER_SIZE 80";
  attribute X_INTERFACE_INFO of M02_INI_internoc : signal is "xilinx.com:interface:inimm:1.0 M02_INI INTERNOC";
  attribute X_INTERFACE_PARAMETER of M02_INI_internoc : signal is "XIL_INTERFACENAME M02_INI, ADDR_WIDTH 64, COMPUTED_STRATEGY load, INI_STRATEGY load, MY_CATEGORY pl, NOC_ID -1, WRITE_BUFFER_SIZE 80";
begin
  M00_INI_internoc(0) <= \<const0>\;
  M01_INI_internoc(0) <= \<const0>\;
  M02_INI_internoc(0) <= \<const0>\;
GND: unisim.vcomponents.GND
     port map (
      G => \<const0>\
    );
M00_INI_stub_nmu: entity work.ulp_inst_0_axi_noc_kernel0_0_bd_0ad1_M00_INI_stub_nmu_0
     port map (
      IF_NOC_AXI_ARADDR(0) => '0',
      IF_NOC_AXI_ARBURST(1 downto 0) => B"00",
      IF_NOC_AXI_ARCACHE(3 downto 0) => B"0000",
      IF_NOC_AXI_ARLEN(7 downto 0) => B"00000000",
      IF_NOC_AXI_ARLOCK(0) => '0',
      IF_NOC_AXI_ARPROT(2 downto 0) => B"000",
      IF_NOC_AXI_ARQOS(3 downto 0) => B"0000",
      IF_NOC_AXI_ARREADY => NLW_M00_INI_stub_nmu_IF_NOC_AXI_ARREADY_UNCONNECTED,
      IF_NOC_AXI_ARREGION(3 downto 0) => B"0000",
      IF_NOC_AXI_ARSIZE(2 downto 0) => B"000",
      IF_NOC_AXI_ARVALID => '0',
      IF_NOC_AXI_AWADDR(0) => '0',
      IF_NOC_AXI_AWBURST(1 downto 0) => B"00",
      IF_NOC_AXI_AWCACHE(3 downto 0) => B"0000",
      IF_NOC_AXI_AWLEN(7 downto 0) => B"00000000",
      IF_NOC_AXI_AWLOCK(0) => '0',
      IF_NOC_AXI_AWPROT(2 downto 0) => B"000",
      IF_NOC_AXI_AWQOS(3 downto 0) => B"0000",
      IF_NOC_AXI_AWREADY => NLW_M00_INI_stub_nmu_IF_NOC_AXI_AWREADY_UNCONNECTED,
      IF_NOC_AXI_AWREGION(3 downto 0) => B"0000",
      IF_NOC_AXI_AWSIZE(2 downto 0) => B"000",
      IF_NOC_AXI_AWVALID => '0',
      IF_NOC_AXI_BREADY => '0',
      IF_NOC_AXI_BRESP(1 downto 0) => NLW_M00_INI_stub_nmu_IF_NOC_AXI_BRESP_UNCONNECTED(1 downto 0),
      IF_NOC_AXI_BVALID => NLW_M00_INI_stub_nmu_IF_NOC_AXI_BVALID_UNCONNECTED,
      IF_NOC_AXI_RDATA(511 downto 0) => NLW_M00_INI_stub_nmu_IF_NOC_AXI_RDATA_UNCONNECTED(511 downto 0),
      IF_NOC_AXI_RLAST(0) => NLW_M00_INI_stub_nmu_IF_NOC_AXI_RLAST_UNCONNECTED(0),
      IF_NOC_AXI_RREADY => '0',
      IF_NOC_AXI_RRESP(1 downto 0) => NLW_M00_INI_stub_nmu_IF_NOC_AXI_RRESP_UNCONNECTED(1 downto 0),
      IF_NOC_AXI_RVALID => NLW_M00_INI_stub_nmu_IF_NOC_AXI_RVALID_UNCONNECTED,
      IF_NOC_AXI_WDATA(511 downto 0) => B"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
      IF_NOC_AXI_WLAST(0) => '0',
      IF_NOC_AXI_WREADY => NLW_M00_INI_stub_nmu_IF_NOC_AXI_WREADY_UNCONNECTED,
      IF_NOC_AXI_WSTRB(63 downto 0) => B"0000000000000000000000000000000000000000000000000000000000000000",
      IF_NOC_AXI_WVALID => '0',
      IF_NOC_NPP_IN_NOC_CREDIT_RDY => '0',
      IF_NOC_NPP_IN_NOC_CREDIT_RETURN(7 downto 0) => NLW_M00_INI_stub_nmu_IF_NOC_NPP_IN_NOC_CREDIT_RETURN_UNCONNECTED(7 downto 0),
      IF_NOC_NPP_IN_NOC_FLIT(181 downto 0) => B"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
      IF_NOC_NPP_IN_NOC_VALID(7 downto 0) => B"00000000",
      IF_NOC_NPP_OUT_NOC_CREDIT_RDY => NLW_M00_INI_stub_nmu_IF_NOC_NPP_OUT_NOC_CREDIT_RDY_UNCONNECTED,
      IF_NOC_NPP_OUT_NOC_CREDIT_RETURN(7 downto 0) => B"00000000",
      IF_NOC_NPP_OUT_NOC_FLIT(181 downto 0) => NLW_M00_INI_stub_nmu_IF_NOC_NPP_OUT_NOC_FLIT_UNCONNECTED(181 downto 0),
      IF_NOC_NPP_OUT_NOC_VALID(7 downto 0) => NLW_M00_INI_stub_nmu_IF_NOC_NPP_OUT_NOC_VALID_UNCONNECTED(7 downto 0),
      NMU => NLW_M00_INI_stub_nmu_NMU_UNCONNECTED,
      NMU_RD_DEST_MODE => '0',
      NMU_RD_USR_DST(11 downto 0) => B"000000000000",
      NMU_WR_DEST_MODE => '0',
      NMU_WR_USR_DST(11 downto 0) => B"000000000000",
      aclk => stub_clock_dout
    );
M01_INI_stub_nmu: entity work.ulp_inst_0_axi_noc_kernel0_0_bd_0ad1_M01_INI_stub_nmu_0
     port map (
      IF_NOC_AXI_ARADDR(0) => '0',
      IF_NOC_AXI_ARBURST(1 downto 0) => B"00",
      IF_NOC_AXI_ARCACHE(3 downto 0) => B"0000",
      IF_NOC_AXI_ARLEN(7 downto 0) => B"00000000",
      IF_NOC_AXI_ARLOCK(0) => '0',
      IF_NOC_AXI_ARPROT(2 downto 0) => B"000",
      IF_NOC_AXI_ARQOS(3 downto 0) => B"0000",
      IF_NOC_AXI_ARREADY => NLW_M01_INI_stub_nmu_IF_NOC_AXI_ARREADY_UNCONNECTED,
      IF_NOC_AXI_ARREGION(3 downto 0) => B"0000",
      IF_NOC_AXI_ARSIZE(2 downto 0) => B"000",
      IF_NOC_AXI_ARVALID => '0',
      IF_NOC_AXI_AWADDR(0) => '0',
      IF_NOC_AXI_AWBURST(1 downto 0) => B"00",
      IF_NOC_AXI_AWCACHE(3 downto 0) => B"0000",
      IF_NOC_AXI_AWLEN(7 downto 0) => B"00000000",
      IF_NOC_AXI_AWLOCK(0) => '0',
      IF_NOC_AXI_AWPROT(2 downto 0) => B"000",
      IF_NOC_AXI_AWQOS(3 downto 0) => B"0000",
      IF_NOC_AXI_AWREADY => NLW_M01_INI_stub_nmu_IF_NOC_AXI_AWREADY_UNCONNECTED,
      IF_NOC_AXI_AWREGION(3 downto 0) => B"0000",
      IF_NOC_AXI_AWSIZE(2 downto 0) => B"000",
      IF_NOC_AXI_AWVALID => '0',
      IF_NOC_AXI_BREADY => '0',
      IF_NOC_AXI_BRESP(1 downto 0) => NLW_M01_INI_stub_nmu_IF_NOC_AXI_BRESP_UNCONNECTED(1 downto 0),
      IF_NOC_AXI_BVALID => NLW_M01_INI_stub_nmu_IF_NOC_AXI_BVALID_UNCONNECTED,
      IF_NOC_AXI_RDATA(511 downto 0) => NLW_M01_INI_stub_nmu_IF_NOC_AXI_RDATA_UNCONNECTED(511 downto 0),
      IF_NOC_AXI_RLAST(0) => NLW_M01_INI_stub_nmu_IF_NOC_AXI_RLAST_UNCONNECTED(0),
      IF_NOC_AXI_RREADY => '0',
      IF_NOC_AXI_RRESP(1 downto 0) => NLW_M01_INI_stub_nmu_IF_NOC_AXI_RRESP_UNCONNECTED(1 downto 0),
      IF_NOC_AXI_RVALID => NLW_M01_INI_stub_nmu_IF_NOC_AXI_RVALID_UNCONNECTED,
      IF_NOC_AXI_WDATA(511 downto 0) => B"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
      IF_NOC_AXI_WLAST(0) => '0',
      IF_NOC_AXI_WREADY => NLW_M01_INI_stub_nmu_IF_NOC_AXI_WREADY_UNCONNECTED,
      IF_NOC_AXI_WSTRB(63 downto 0) => B"0000000000000000000000000000000000000000000000000000000000000000",
      IF_NOC_AXI_WVALID => '0',
      IF_NOC_NPP_IN_NOC_CREDIT_RDY => '0',
      IF_NOC_NPP_IN_NOC_CREDIT_RETURN(7 downto 0) => NLW_M01_INI_stub_nmu_IF_NOC_NPP_IN_NOC_CREDIT_RETURN_UNCONNECTED(7 downto 0),
      IF_NOC_NPP_IN_NOC_FLIT(181 downto 0) => B"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
      IF_NOC_NPP_IN_NOC_VALID(7 downto 0) => B"00000000",
      IF_NOC_NPP_OUT_NOC_CREDIT_RDY => NLW_M01_INI_stub_nmu_IF_NOC_NPP_OUT_NOC_CREDIT_RDY_UNCONNECTED,
      IF_NOC_NPP_OUT_NOC_CREDIT_RETURN(7 downto 0) => B"00000000",
      IF_NOC_NPP_OUT_NOC_FLIT(181 downto 0) => NLW_M01_INI_stub_nmu_IF_NOC_NPP_OUT_NOC_FLIT_UNCONNECTED(181 downto 0),
      IF_NOC_NPP_OUT_NOC_VALID(7 downto 0) => NLW_M01_INI_stub_nmu_IF_NOC_NPP_OUT_NOC_VALID_UNCONNECTED(7 downto 0),
      NMU => NLW_M01_INI_stub_nmu_NMU_UNCONNECTED,
      NMU_RD_DEST_MODE => '0',
      NMU_RD_USR_DST(11 downto 0) => B"000000000000",
      NMU_WR_DEST_MODE => '0',
      NMU_WR_USR_DST(11 downto 0) => B"000000000000",
      aclk => stub_clock_dout
    );
M02_INI_stub_nmu: entity work.ulp_inst_0_axi_noc_kernel0_0_bd_0ad1_M02_INI_stub_nmu_0
     port map (
      IF_NOC_AXI_ARADDR(0) => '0',
      IF_NOC_AXI_ARBURST(1 downto 0) => B"00",
      IF_NOC_AXI_ARCACHE(3 downto 0) => B"0000",
      IF_NOC_AXI_ARLEN(7 downto 0) => B"00000000",
      IF_NOC_AXI_ARLOCK(0) => '0',
      IF_NOC_AXI_ARPROT(2 downto 0) => B"000",
      IF_NOC_AXI_ARQOS(3 downto 0) => B"0000",
      IF_NOC_AXI_ARREADY => NLW_M02_INI_stub_nmu_IF_NOC_AXI_ARREADY_UNCONNECTED,
      IF_NOC_AXI_ARREGION(3 downto 0) => B"0000",
      IF_NOC_AXI_ARSIZE(2 downto 0) => B"000",
      IF_NOC_AXI_ARVALID => '0',
      IF_NOC_AXI_AWADDR(0) => '0',
      IF_NOC_AXI_AWBURST(1 downto 0) => B"00",
      IF_NOC_AXI_AWCACHE(3 downto 0) => B"0000",
      IF_NOC_AXI_AWLEN(7 downto 0) => B"00000000",
      IF_NOC_AXI_AWLOCK(0) => '0',
      IF_NOC_AXI_AWPROT(2 downto 0) => B"000",
      IF_NOC_AXI_AWQOS(3 downto 0) => B"0000",
      IF_NOC_AXI_AWREADY => NLW_M02_INI_stub_nmu_IF_NOC_AXI_AWREADY_UNCONNECTED,
      IF_NOC_AXI_AWREGION(3 downto 0) => B"0000",
      IF_NOC_AXI_AWSIZE(2 downto 0) => B"000",
      IF_NOC_AXI_AWVALID => '0',
      IF_NOC_AXI_BREADY => '0',
      IF_NOC_AXI_BRESP(1 downto 0) => NLW_M02_INI_stub_nmu_IF_NOC_AXI_BRESP_UNCONNECTED(1 downto 0),
      IF_NOC_AXI_BVALID => NLW_M02_INI_stub_nmu_IF_NOC_AXI_BVALID_UNCONNECTED,
      IF_NOC_AXI_RDATA(511 downto 0) => NLW_M02_INI_stub_nmu_IF_NOC_AXI_RDATA_UNCONNECTED(511 downto 0),
      IF_NOC_AXI_RLAST(0) => NLW_M02_INI_stub_nmu_IF_NOC_AXI_RLAST_UNCONNECTED(0),
      IF_NOC_AXI_RREADY => '0',
      IF_NOC_AXI_RRESP(1 downto 0) => NLW_M02_INI_stub_nmu_IF_NOC_AXI_RRESP_UNCONNECTED(1 downto 0),
      IF_NOC_AXI_RVALID => NLW_M02_INI_stub_nmu_IF_NOC_AXI_RVALID_UNCONNECTED,
      IF_NOC_AXI_WDATA(511 downto 0) => B"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
      IF_NOC_AXI_WLAST(0) => '0',
      IF_NOC_AXI_WREADY => NLW_M02_INI_stub_nmu_IF_NOC_AXI_WREADY_UNCONNECTED,
      IF_NOC_AXI_WSTRB(63 downto 0) => B"0000000000000000000000000000000000000000000000000000000000000000",
      IF_NOC_AXI_WVALID => '0',
      IF_NOC_NPP_IN_NOC_CREDIT_RDY => '0',
      IF_NOC_NPP_IN_NOC_CREDIT_RETURN(7 downto 0) => NLW_M02_INI_stub_nmu_IF_NOC_NPP_IN_NOC_CREDIT_RETURN_UNCONNECTED(7 downto 0),
      IF_NOC_NPP_IN_NOC_FLIT(181 downto 0) => B"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
      IF_NOC_NPP_IN_NOC_VALID(7 downto 0) => B"00000000",
      IF_NOC_NPP_OUT_NOC_CREDIT_RDY => NLW_M02_INI_stub_nmu_IF_NOC_NPP_OUT_NOC_CREDIT_RDY_UNCONNECTED,
      IF_NOC_NPP_OUT_NOC_CREDIT_RETURN(7 downto 0) => B"00000000",
      IF_NOC_NPP_OUT_NOC_FLIT(181 downto 0) => NLW_M02_INI_stub_nmu_IF_NOC_NPP_OUT_NOC_FLIT_UNCONNECTED(181 downto 0),
      IF_NOC_NPP_OUT_NOC_VALID(7 downto 0) => NLW_M02_INI_stub_nmu_IF_NOC_NPP_OUT_NOC_VALID_UNCONNECTED(7 downto 0),
      NMU => NLW_M02_INI_stub_nmu_NMU_UNCONNECTED,
      NMU_RD_DEST_MODE => '0',
      NMU_RD_USR_DST(11 downto 0) => B"000000000000",
      NMU_WR_DEST_MODE => '0',
      NMU_WR_USR_DST(11 downto 0) => B"000000000000",
      aclk => stub_clock_dout
    );
stub_clock: entity work.ulp_inst_0_axi_noc_kernel0_0_bd_0ad1_stub_clock_0
     port map (
      dout(0) => stub_clock_dout
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity ulp_inst_0_axi_noc_kernel0_0 is
  port (
    M00_INI_internoc : out STD_LOGIC_VECTOR ( 0 to 0 );
    M01_INI_internoc : out STD_LOGIC_VECTOR ( 0 to 0 );
    M02_INI_internoc : out STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of ulp_inst_0_axi_noc_kernel0_0 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of ulp_inst_0_axi_noc_kernel0_0 : entity is "ulp_inst_0_axi_noc_kernel0_0,bd_0ad1,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of ulp_inst_0_axi_noc_kernel0_0 : entity is "yes";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of ulp_inst_0_axi_noc_kernel0_0 : entity is "bd_0ad1,Vivado 2022.2";
end ulp_inst_0_axi_noc_kernel0_0;

architecture STRUCTURE of ulp_inst_0_axi_noc_kernel0_0 is
  signal \<const0>\ : STD_LOGIC;
  attribute X_INTERFACE_INFO : string;
  attribute X_INTERFACE_INFO of M00_INI_internoc : signal is "xilinx.com:interface:inimm:1.0 M00_INI INTERNOC";
  attribute X_INTERFACE_PARAMETER : string;
  attribute X_INTERFACE_PARAMETER of M00_INI_internoc : signal is "XIL_INTERFACENAME M00_INI, ADDR_WIDTH 64, INI_STRATEGY load, COMPUTED_STRATEGY load, WRITE_BUFFER_SIZE 80, NOC_ID -1, MY_CATEGORY pl";
  attribute X_INTERFACE_INFO of M01_INI_internoc : signal is "xilinx.com:interface:inimm:1.0 M01_INI INTERNOC";
  attribute X_INTERFACE_PARAMETER of M01_INI_internoc : signal is "XIL_INTERFACENAME M01_INI, ADDR_WIDTH 64, INI_STRATEGY load, COMPUTED_STRATEGY load, WRITE_BUFFER_SIZE 80, NOC_ID -1, MY_CATEGORY pl";
  attribute X_INTERFACE_INFO of M02_INI_internoc : signal is "xilinx.com:interface:inimm:1.0 M02_INI INTERNOC";
  attribute X_INTERFACE_PARAMETER of M02_INI_internoc : signal is "XIL_INTERFACENAME M02_INI, ADDR_WIDTH 64, INI_STRATEGY load, COMPUTED_STRATEGY load, WRITE_BUFFER_SIZE 80, NOC_ID -1, MY_CATEGORY pl";
begin
  M00_INI_internoc(0) <= \<const0>\;
  M01_INI_internoc(0) <= \<const0>\;
  M02_INI_internoc(0) <= \<const0>\;
GND: unisim.vcomponents.GND
     port map (
      G => \<const0>\
    );
end STRUCTURE;
