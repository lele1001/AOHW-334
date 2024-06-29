-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2022.2 (lin64) Build 3671981 Fri Oct 14 04:59:54 MDT 2022
-- Date        : Mon Dec  5 00:29:21 2022
-- Host        : xsjdcslab02.xilinx.com running 64-bit CentOS Linux release 8.1.1911 (Core)
-- Command     : write_vhdl -force -mode synth_stub -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
--               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ top_axi_noc_mc_0_stub.vhdl
-- Design      : top_axi_noc_mc_0
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xcvc1902-vsvd1760-2MP-e-S
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
  Port ( 
    S00_AXI_awaddr : in STD_LOGIC_VECTOR ( 63 downto 0 );
    S00_AXI_awlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    S00_AXI_awsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S00_AXI_awburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    S00_AXI_awlock : in STD_LOGIC_VECTOR ( 0 to 0 );
    S00_AXI_awcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S00_AXI_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S00_AXI_awregion : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S00_AXI_awqos : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S00_AXI_awvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    S00_AXI_awready : out STD_LOGIC_VECTOR ( 0 to 0 );
    S00_AXI_wdata : in STD_LOGIC_VECTOR ( 127 downto 0 );
    S00_AXI_wstrb : in STD_LOGIC_VECTOR ( 15 downto 0 );
    S00_AXI_wlast : in STD_LOGIC_VECTOR ( 0 to 0 );
    S00_AXI_wvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    S00_AXI_wready : out STD_LOGIC_VECTOR ( 0 to 0 );
    S00_AXI_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S00_AXI_bvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    S00_AXI_bready : in STD_LOGIC_VECTOR ( 0 to 0 );
    S00_AXI_araddr : in STD_LOGIC_VECTOR ( 63 downto 0 );
    S00_AXI_arlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    S00_AXI_arsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S00_AXI_arburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    S00_AXI_arlock : in STD_LOGIC_VECTOR ( 0 to 0 );
    S00_AXI_arcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S00_AXI_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S00_AXI_arregion : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S00_AXI_arqos : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S00_AXI_arvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    S00_AXI_arready : out STD_LOGIC_VECTOR ( 0 to 0 );
    S00_AXI_rdata : out STD_LOGIC_VECTOR ( 127 downto 0 );
    S00_AXI_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S00_AXI_rlast : out STD_LOGIC_VECTOR ( 0 to 0 );
    S00_AXI_rvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    S00_AXI_rready : in STD_LOGIC_VECTOR ( 0 to 0 );
    S01_AXI_awaddr : in STD_LOGIC_VECTOR ( 63 downto 0 );
    S01_AXI_awlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    S01_AXI_awsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S01_AXI_awburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    S01_AXI_awlock : in STD_LOGIC_VECTOR ( 0 to 0 );
    S01_AXI_awcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S01_AXI_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S01_AXI_awregion : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S01_AXI_awqos : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S01_AXI_awvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    S01_AXI_awready : out STD_LOGIC_VECTOR ( 0 to 0 );
    S01_AXI_wdata : in STD_LOGIC_VECTOR ( 127 downto 0 );
    S01_AXI_wstrb : in STD_LOGIC_VECTOR ( 15 downto 0 );
    S01_AXI_wlast : in STD_LOGIC_VECTOR ( 0 to 0 );
    S01_AXI_wvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    S01_AXI_wready : out STD_LOGIC_VECTOR ( 0 to 0 );
    S01_AXI_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S01_AXI_bvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    S01_AXI_bready : in STD_LOGIC_VECTOR ( 0 to 0 );
    S01_AXI_araddr : in STD_LOGIC_VECTOR ( 63 downto 0 );
    S01_AXI_arlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    S01_AXI_arsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S01_AXI_arburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    S01_AXI_arlock : in STD_LOGIC_VECTOR ( 0 to 0 );
    S01_AXI_arcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S01_AXI_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S01_AXI_arregion : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S01_AXI_arqos : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S01_AXI_arvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    S01_AXI_arready : out STD_LOGIC_VECTOR ( 0 to 0 );
    S01_AXI_rdata : out STD_LOGIC_VECTOR ( 127 downto 0 );
    S01_AXI_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S01_AXI_rlast : out STD_LOGIC_VECTOR ( 0 to 0 );
    S01_AXI_rvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    S01_AXI_rready : in STD_LOGIC_VECTOR ( 0 to 0 );
    S00_INI_internoc : in STD_LOGIC_VECTOR ( 0 to 0 );
    S01_INI_internoc : in STD_LOGIC_VECTOR ( 0 to 0 );
    S02_INI_internoc : in STD_LOGIC_VECTOR ( 0 to 0 );
    S03_INI_internoc : in STD_LOGIC_VECTOR ( 0 to 0 );
    S04_INI_internoc : in STD_LOGIC_VECTOR ( 0 to 0 );
    S05_INI_internoc : in STD_LOGIC_VECTOR ( 0 to 0 );
    S06_INI_internoc : in STD_LOGIC_VECTOR ( 0 to 0 );
    aclk0 : in STD_LOGIC;
    sys_clk0_clk_p : in STD_LOGIC_VECTOR ( 0 to 0 );
    sys_clk0_clk_n : in STD_LOGIC_VECTOR ( 0 to 0 );
    CH0_DDR4_0_dq : inout STD_LOGIC_VECTOR ( 71 downto 0 );
    CH0_DDR4_0_dqs_t : inout STD_LOGIC_VECTOR ( 8 downto 0 );
    CH0_DDR4_0_dqs_c : inout STD_LOGIC_VECTOR ( 8 downto 0 );
    CH0_DDR4_0_adr : out STD_LOGIC_VECTOR ( 16 downto 0 );
    CH0_DDR4_0_ba : out STD_LOGIC_VECTOR ( 1 downto 0 );
    CH0_DDR4_0_bg : out STD_LOGIC_VECTOR ( 0 to 0 );
    CH0_DDR4_0_act_n : out STD_LOGIC_VECTOR ( 0 to 0 );
    CH0_DDR4_0_reset_n : out STD_LOGIC_VECTOR ( 0 to 0 );
    CH0_DDR4_0_ck_t : out STD_LOGIC_VECTOR ( 0 to 0 );
    CH0_DDR4_0_ck_c : out STD_LOGIC_VECTOR ( 0 to 0 );
    CH0_DDR4_0_cke : out STD_LOGIC_VECTOR ( 0 to 0 );
    CH0_DDR4_0_cs_n : out STD_LOGIC_VECTOR ( 0 to 0 );
    CH0_DDR4_0_dm_n : inout STD_LOGIC_VECTOR ( 8 downto 0 );
    CH0_DDR4_0_odt : out STD_LOGIC_VECTOR ( 0 to 0 );
    sys_clk1_clk_p : in STD_LOGIC_VECTOR ( 0 to 0 );
    sys_clk1_clk_n : in STD_LOGIC_VECTOR ( 0 to 0 );
    CH0_DDR4_1_dq : inout STD_LOGIC_VECTOR ( 71 downto 0 );
    CH0_DDR4_1_dqs_t : inout STD_LOGIC_VECTOR ( 8 downto 0 );
    CH0_DDR4_1_dqs_c : inout STD_LOGIC_VECTOR ( 8 downto 0 );
    CH0_DDR4_1_adr : out STD_LOGIC_VECTOR ( 16 downto 0 );
    CH0_DDR4_1_ba : out STD_LOGIC_VECTOR ( 1 downto 0 );
    CH0_DDR4_1_bg : out STD_LOGIC_VECTOR ( 0 to 0 );
    CH0_DDR4_1_act_n : out STD_LOGIC_VECTOR ( 0 to 0 );
    CH0_DDR4_1_reset_n : out STD_LOGIC_VECTOR ( 0 to 0 );
    CH0_DDR4_1_ck_t : out STD_LOGIC_VECTOR ( 0 to 0 );
    CH0_DDR4_1_ck_c : out STD_LOGIC_VECTOR ( 0 to 0 );
    CH0_DDR4_1_cke : out STD_LOGIC_VECTOR ( 0 to 0 );
    CH0_DDR4_1_cs_n : out STD_LOGIC_VECTOR ( 0 to 0 );
    CH0_DDR4_1_dm_n : inout STD_LOGIC_VECTOR ( 8 downto 0 );
    CH0_DDR4_1_odt : out STD_LOGIC_VECTOR ( 0 to 0 );
    sys_clk2_clk_p : in STD_LOGIC_VECTOR ( 0 to 0 );
    sys_clk2_clk_n : in STD_LOGIC_VECTOR ( 0 to 0 );
    CH0_DDR4_2_dq : inout STD_LOGIC_VECTOR ( 71 downto 0 );
    CH0_DDR4_2_dqs_t : inout STD_LOGIC_VECTOR ( 8 downto 0 );
    CH0_DDR4_2_dqs_c : inout STD_LOGIC_VECTOR ( 8 downto 0 );
    CH0_DDR4_2_adr : out STD_LOGIC_VECTOR ( 16 downto 0 );
    CH0_DDR4_2_ba : out STD_LOGIC_VECTOR ( 1 downto 0 );
    CH0_DDR4_2_bg : out STD_LOGIC_VECTOR ( 0 to 0 );
    CH0_DDR4_2_act_n : out STD_LOGIC_VECTOR ( 0 to 0 );
    CH0_DDR4_2_reset_n : out STD_LOGIC_VECTOR ( 0 to 0 );
    CH0_DDR4_2_ck_t : out STD_LOGIC_VECTOR ( 0 to 0 );
    CH0_DDR4_2_ck_c : out STD_LOGIC_VECTOR ( 0 to 0 );
    CH0_DDR4_2_cke : out STD_LOGIC_VECTOR ( 0 to 0 );
    CH0_DDR4_2_cs_n : out STD_LOGIC_VECTOR ( 0 to 0 );
    CH0_DDR4_2_dm_n : inout STD_LOGIC_VECTOR ( 8 downto 0 );
    CH0_DDR4_2_odt : out STD_LOGIC_VECTOR ( 0 to 0 );
    sys_clk3_clk_p : in STD_LOGIC_VECTOR ( 0 to 0 );
    sys_clk3_clk_n : in STD_LOGIC_VECTOR ( 0 to 0 );
    CH0_DDR4_3_dq : inout STD_LOGIC_VECTOR ( 71 downto 0 );
    CH0_DDR4_3_dqs_t : inout STD_LOGIC_VECTOR ( 8 downto 0 );
    CH0_DDR4_3_dqs_c : inout STD_LOGIC_VECTOR ( 8 downto 0 );
    CH0_DDR4_3_adr : out STD_LOGIC_VECTOR ( 16 downto 0 );
    CH0_DDR4_3_ba : out STD_LOGIC_VECTOR ( 1 downto 0 );
    CH0_DDR4_3_bg : out STD_LOGIC_VECTOR ( 0 to 0 );
    CH0_DDR4_3_act_n : out STD_LOGIC_VECTOR ( 0 to 0 );
    CH0_DDR4_3_reset_n : out STD_LOGIC_VECTOR ( 0 to 0 );
    CH0_DDR4_3_ck_t : out STD_LOGIC_VECTOR ( 0 to 0 );
    CH0_DDR4_3_ck_c : out STD_LOGIC_VECTOR ( 0 to 0 );
    CH0_DDR4_3_cke : out STD_LOGIC_VECTOR ( 0 to 0 );
    CH0_DDR4_3_cs_n : out STD_LOGIC_VECTOR ( 0 to 0 );
    CH0_DDR4_3_dm_n : inout STD_LOGIC_VECTOR ( 8 downto 0 );
    CH0_DDR4_3_odt : out STD_LOGIC_VECTOR ( 0 to 0 );
    S01_AXI_arid : in STD_LOGIC_VECTOR ( 1 downto 0 );
    S01_AXI_awid : in STD_LOGIC_VECTOR ( 1 downto 0 );
    S01_AXI_bid : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S01_AXI_rid : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S00_AXI_arid : in STD_LOGIC_VECTOR ( 1 downto 0 );
    S00_AXI_awid : in STD_LOGIC_VECTOR ( 1 downto 0 );
    S00_AXI_bid : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S00_AXI_rid : out STD_LOGIC_VECTOR ( 1 downto 0 )
  );

end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix;

architecture stub of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "S00_AXI_awaddr[63:0],S00_AXI_awlen[7:0],S00_AXI_awsize[2:0],S00_AXI_awburst[1:0],S00_AXI_awlock[0:0],S00_AXI_awcache[3:0],S00_AXI_awprot[2:0],S00_AXI_awregion[3:0],S00_AXI_awqos[3:0],S00_AXI_awvalid[0:0],S00_AXI_awready[0:0],S00_AXI_wdata[127:0],S00_AXI_wstrb[15:0],S00_AXI_wlast[0:0],S00_AXI_wvalid[0:0],S00_AXI_wready[0:0],S00_AXI_bresp[1:0],S00_AXI_bvalid[0:0],S00_AXI_bready[0:0],S00_AXI_araddr[63:0],S00_AXI_arlen[7:0],S00_AXI_arsize[2:0],S00_AXI_arburst[1:0],S00_AXI_arlock[0:0],S00_AXI_arcache[3:0],S00_AXI_arprot[2:0],S00_AXI_arregion[3:0],S00_AXI_arqos[3:0],S00_AXI_arvalid[0:0],S00_AXI_arready[0:0],S00_AXI_rdata[127:0],S00_AXI_rresp[1:0],S00_AXI_rlast[0:0],S00_AXI_rvalid[0:0],S00_AXI_rready[0:0],S01_AXI_awaddr[63:0],S01_AXI_awlen[7:0],S01_AXI_awsize[2:0],S01_AXI_awburst[1:0],S01_AXI_awlock[0:0],S01_AXI_awcache[3:0],S01_AXI_awprot[2:0],S01_AXI_awregion[3:0],S01_AXI_awqos[3:0],S01_AXI_awvalid[0:0],S01_AXI_awready[0:0],S01_AXI_wdata[127:0],S01_AXI_wstrb[15:0],S01_AXI_wlast[0:0],S01_AXI_wvalid[0:0],S01_AXI_wready[0:0],S01_AXI_bresp[1:0],S01_AXI_bvalid[0:0],S01_AXI_bready[0:0],S01_AXI_araddr[63:0],S01_AXI_arlen[7:0],S01_AXI_arsize[2:0],S01_AXI_arburst[1:0],S01_AXI_arlock[0:0],S01_AXI_arcache[3:0],S01_AXI_arprot[2:0],S01_AXI_arregion[3:0],S01_AXI_arqos[3:0],S01_AXI_arvalid[0:0],S01_AXI_arready[0:0],S01_AXI_rdata[127:0],S01_AXI_rresp[1:0],S01_AXI_rlast[0:0],S01_AXI_rvalid[0:0],S01_AXI_rready[0:0],S00_INI_internoc[0:0],S01_INI_internoc[0:0],S02_INI_internoc[0:0],S03_INI_internoc[0:0],S04_INI_internoc[0:0],S05_INI_internoc[0:0],S06_INI_internoc[0:0],aclk0,sys_clk0_clk_p[0:0],sys_clk0_clk_n[0:0],CH0_DDR4_0_dq[71:0],CH0_DDR4_0_dqs_t[8:0],CH0_DDR4_0_dqs_c[8:0],CH0_DDR4_0_adr[16:0],CH0_DDR4_0_ba[1:0],CH0_DDR4_0_bg[0:0],CH0_DDR4_0_act_n[0:0],CH0_DDR4_0_reset_n[0:0],CH0_DDR4_0_ck_t[0:0],CH0_DDR4_0_ck_c[0:0],CH0_DDR4_0_cke[0:0],CH0_DDR4_0_cs_n[0:0],CH0_DDR4_0_dm_n[8:0],CH0_DDR4_0_odt[0:0],sys_clk1_clk_p[0:0],sys_clk1_clk_n[0:0],CH0_DDR4_1_dq[71:0],CH0_DDR4_1_dqs_t[8:0],CH0_DDR4_1_dqs_c[8:0],CH0_DDR4_1_adr[16:0],CH0_DDR4_1_ba[1:0],CH0_DDR4_1_bg[0:0],CH0_DDR4_1_act_n[0:0],CH0_DDR4_1_reset_n[0:0],CH0_DDR4_1_ck_t[0:0],CH0_DDR4_1_ck_c[0:0],CH0_DDR4_1_cke[0:0],CH0_DDR4_1_cs_n[0:0],CH0_DDR4_1_dm_n[8:0],CH0_DDR4_1_odt[0:0],sys_clk2_clk_p[0:0],sys_clk2_clk_n[0:0],CH0_DDR4_2_dq[71:0],CH0_DDR4_2_dqs_t[8:0],CH0_DDR4_2_dqs_c[8:0],CH0_DDR4_2_adr[16:0],CH0_DDR4_2_ba[1:0],CH0_DDR4_2_bg[0:0],CH0_DDR4_2_act_n[0:0],CH0_DDR4_2_reset_n[0:0],CH0_DDR4_2_ck_t[0:0],CH0_DDR4_2_ck_c[0:0],CH0_DDR4_2_cke[0:0],CH0_DDR4_2_cs_n[0:0],CH0_DDR4_2_dm_n[8:0],CH0_DDR4_2_odt[0:0],sys_clk3_clk_p[0:0],sys_clk3_clk_n[0:0],CH0_DDR4_3_dq[71:0],CH0_DDR4_3_dqs_t[8:0],CH0_DDR4_3_dqs_c[8:0],CH0_DDR4_3_adr[16:0],CH0_DDR4_3_ba[1:0],CH0_DDR4_3_bg[0:0],CH0_DDR4_3_act_n[0:0],CH0_DDR4_3_reset_n[0:0],CH0_DDR4_3_ck_t[0:0],CH0_DDR4_3_ck_c[0:0],CH0_DDR4_3_cke[0:0],CH0_DDR4_3_cs_n[0:0],CH0_DDR4_3_dm_n[8:0],CH0_DDR4_3_odt[0:0],S01_AXI_arid[1:0],S01_AXI_awid[1:0],S01_AXI_bid[1:0],S01_AXI_rid[1:0],S00_AXI_arid[1:0],S00_AXI_awid[1:0],S00_AXI_bid[1:0],S00_AXI_rid[1:0]";
attribute X_CORE_INFO : string;
attribute X_CORE_INFO of stub : architecture is "bd_0e6e,Vivado 2022.2";
begin
end;
