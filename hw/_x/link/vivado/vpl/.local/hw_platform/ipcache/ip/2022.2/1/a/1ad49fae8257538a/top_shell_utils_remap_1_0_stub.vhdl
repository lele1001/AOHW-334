-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2022.2 (lin64) Build 3671981 Fri Oct 14 04:59:54 MDT 2022
-- Date        : Mon Dec  5 00:21:09 2022
-- Host        : xsjdcslab02.xilinx.com running 64-bit CentOS Linux release 8.1.1911 (Core)
-- Command     : write_vhdl -force -mode synth_stub -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
--               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ top_shell_utils_remap_1_0_stub.vhdl
-- Design      : top_shell_utils_remap_1_0
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xcvc1902-vsvd1760-2MP-e-S
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
  Port ( 
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

end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix;

architecture stub of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "AXI_ACLK,AXI_ARESETN,S_AXI_ARADDR[63:0],S_AXI_ARBURST[1:0],S_AXI_ARCACHE[3:0],S_AXI_ARID[1:0],S_AXI_ARLEN[7:0],S_AXI_ARLOCK[0:0],S_AXI_ARPROT[2:0],S_AXI_ARREADY,S_AXI_ARSIZE[2:0],S_AXI_ARVALID,S_AXI_AWADDR[63:0],S_AXI_AWBURST[1:0],S_AXI_AWCACHE[3:0],S_AXI_AWID[1:0],S_AXI_AWLEN[7:0],S_AXI_AWLOCK[0:0],S_AXI_AWPROT[2:0],S_AXI_AWREADY,S_AXI_AWSIZE[2:0],S_AXI_AWVALID,S_AXI_BID[1:0],S_AXI_BREADY,S_AXI_BRESP[1:0],S_AXI_BVALID,S_AXI_RDATA[127:0],S_AXI_RID[1:0],S_AXI_RLAST,S_AXI_RREADY,S_AXI_RRESP[1:0],S_AXI_RVALID,S_AXI_WDATA[127:0],S_AXI_WLAST,S_AXI_WREADY,S_AXI_WSTRB[15:0],S_AXI_WVALID,M_AXI_ARADDR[63:0],M_AXI_ARBURST[1:0],M_AXI_ARCACHE[3:0],M_AXI_ARID[1:0],M_AXI_ARLEN[7:0],M_AXI_ARLOCK[0:0],M_AXI_ARPROT[2:0],M_AXI_ARREADY,M_AXI_ARSIZE[2:0],M_AXI_ARVALID,M_AXI_AWADDR[63:0],M_AXI_AWBURST[1:0],M_AXI_AWCACHE[3:0],M_AXI_AWID[1:0],M_AXI_AWLEN[7:0],M_AXI_AWLOCK[0:0],M_AXI_AWPROT[2:0],M_AXI_AWREADY,M_AXI_AWSIZE[2:0],M_AXI_AWVALID,M_AXI_BID[1:0],M_AXI_BREADY,M_AXI_BRESP[1:0],M_AXI_BVALID,M_AXI_RDATA[127:0],M_AXI_RID[1:0],M_AXI_RLAST,M_AXI_RREADY,M_AXI_RRESP[1:0],M_AXI_RVALID,M_AXI_WDATA[127:0],M_AXI_WLAST,M_AXI_WREADY,M_AXI_WSTRB[15:0],M_AXI_WVALID";
attribute x_core_info : string;
attribute x_core_info of stub : architecture is "shell_utils_versal_remap_v1_0_0,Vivado 2022.2";
begin
end;
