-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2022.2 (lin64) Build 3671981 Fri Oct 14 04:59:54 MDT 2022
-- Date        : Mon Dec  5 00:21:05 2022
-- Host        : xsjdcslab02.xilinx.com running 64-bit CentOS Linux release 8.1.1911 (Core)
-- Command     : write_vhdl -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
--               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ top_qdma_shim_0_sim_netlist.vhdl
-- Design      : top_qdma_shim_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xcvc1902-vsvd1760-2MP-e-S
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_cdc_array_single is
  port (
    src_clk : in STD_LOGIC;
    src_in : in STD_LOGIC_VECTOR ( 15 downto 0 );
    dest_clk : in STD_LOGIC;
    dest_out : out STD_LOGIC_VECTOR ( 15 downto 0 )
  );
  attribute DEST_SYNC_FF : integer;
  attribute DEST_SYNC_FF of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_cdc_array_single : entity is 4;
  attribute INIT_SYNC_FF : integer;
  attribute INIT_SYNC_FF of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_cdc_array_single : entity is 0;
  attribute SIM_ASSERT_CHK : integer;
  attribute SIM_ASSERT_CHK of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_cdc_array_single : entity is 0;
  attribute SRC_INPUT_REG : integer;
  attribute SRC_INPUT_REG of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_cdc_array_single : entity is 0;
  attribute VERSION : integer;
  attribute VERSION of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_cdc_array_single : entity is 0;
  attribute WIDTH : integer;
  attribute WIDTH of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_cdc_array_single : entity is 16;
  attribute XPM_MODULE : string;
  attribute XPM_MODULE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_cdc_array_single : entity is "TRUE";
  attribute keep_hierarchy : string;
  attribute keep_hierarchy of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_cdc_array_single : entity is "true";
  attribute xpm_cdc : string;
  attribute xpm_cdc of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_cdc_array_single : entity is "ARRAY_SINGLE";
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_cdc_array_single;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_cdc_array_single is
  signal async_path_bit : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal \syncstages_ff[0]\ : STD_LOGIC_VECTOR ( 15 downto 0 );
  attribute RTL_KEEP : string;
  attribute RTL_KEEP of \syncstages_ff[0]\ : signal is "true";
  attribute async_reg : string;
  attribute async_reg of \syncstages_ff[0]\ : signal is "true";
  attribute xpm_cdc of \syncstages_ff[0]\ : signal is "ARRAY_SINGLE";
  signal \syncstages_ff[1]\ : STD_LOGIC_VECTOR ( 15 downto 0 );
  attribute RTL_KEEP of \syncstages_ff[1]\ : signal is "true";
  attribute async_reg of \syncstages_ff[1]\ : signal is "true";
  attribute xpm_cdc of \syncstages_ff[1]\ : signal is "ARRAY_SINGLE";
  signal \syncstages_ff[2]\ : STD_LOGIC_VECTOR ( 15 downto 0 );
  attribute RTL_KEEP of \syncstages_ff[2]\ : signal is "true";
  attribute async_reg of \syncstages_ff[2]\ : signal is "true";
  attribute xpm_cdc of \syncstages_ff[2]\ : signal is "ARRAY_SINGLE";
  signal \syncstages_ff[3]\ : STD_LOGIC_VECTOR ( 15 downto 0 );
  attribute RTL_KEEP of \syncstages_ff[3]\ : signal is "true";
  attribute async_reg of \syncstages_ff[3]\ : signal is "true";
  attribute xpm_cdc of \syncstages_ff[3]\ : signal is "ARRAY_SINGLE";
  attribute ASYNC_REG_boolean : boolean;
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[0][0]\ : label is std.standard.true;
  attribute KEEP : string;
  attribute KEEP of \syncstages_ff_reg[0][0]\ : label is "true";
  attribute XPM_CDC of \syncstages_ff_reg[0][0]\ : label is "ARRAY_SINGLE";
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[0][10]\ : label is std.standard.true;
  attribute KEEP of \syncstages_ff_reg[0][10]\ : label is "true";
  attribute XPM_CDC of \syncstages_ff_reg[0][10]\ : label is "ARRAY_SINGLE";
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[0][11]\ : label is std.standard.true;
  attribute KEEP of \syncstages_ff_reg[0][11]\ : label is "true";
  attribute XPM_CDC of \syncstages_ff_reg[0][11]\ : label is "ARRAY_SINGLE";
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[0][12]\ : label is std.standard.true;
  attribute KEEP of \syncstages_ff_reg[0][12]\ : label is "true";
  attribute XPM_CDC of \syncstages_ff_reg[0][12]\ : label is "ARRAY_SINGLE";
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[0][13]\ : label is std.standard.true;
  attribute KEEP of \syncstages_ff_reg[0][13]\ : label is "true";
  attribute XPM_CDC of \syncstages_ff_reg[0][13]\ : label is "ARRAY_SINGLE";
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[0][14]\ : label is std.standard.true;
  attribute KEEP of \syncstages_ff_reg[0][14]\ : label is "true";
  attribute XPM_CDC of \syncstages_ff_reg[0][14]\ : label is "ARRAY_SINGLE";
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[0][15]\ : label is std.standard.true;
  attribute KEEP of \syncstages_ff_reg[0][15]\ : label is "true";
  attribute XPM_CDC of \syncstages_ff_reg[0][15]\ : label is "ARRAY_SINGLE";
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[0][1]\ : label is std.standard.true;
  attribute KEEP of \syncstages_ff_reg[0][1]\ : label is "true";
  attribute XPM_CDC of \syncstages_ff_reg[0][1]\ : label is "ARRAY_SINGLE";
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[0][2]\ : label is std.standard.true;
  attribute KEEP of \syncstages_ff_reg[0][2]\ : label is "true";
  attribute XPM_CDC of \syncstages_ff_reg[0][2]\ : label is "ARRAY_SINGLE";
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[0][3]\ : label is std.standard.true;
  attribute KEEP of \syncstages_ff_reg[0][3]\ : label is "true";
  attribute XPM_CDC of \syncstages_ff_reg[0][3]\ : label is "ARRAY_SINGLE";
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[0][4]\ : label is std.standard.true;
  attribute KEEP of \syncstages_ff_reg[0][4]\ : label is "true";
  attribute XPM_CDC of \syncstages_ff_reg[0][4]\ : label is "ARRAY_SINGLE";
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[0][5]\ : label is std.standard.true;
  attribute KEEP of \syncstages_ff_reg[0][5]\ : label is "true";
  attribute XPM_CDC of \syncstages_ff_reg[0][5]\ : label is "ARRAY_SINGLE";
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[0][6]\ : label is std.standard.true;
  attribute KEEP of \syncstages_ff_reg[0][6]\ : label is "true";
  attribute XPM_CDC of \syncstages_ff_reg[0][6]\ : label is "ARRAY_SINGLE";
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[0][7]\ : label is std.standard.true;
  attribute KEEP of \syncstages_ff_reg[0][7]\ : label is "true";
  attribute XPM_CDC of \syncstages_ff_reg[0][7]\ : label is "ARRAY_SINGLE";
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[0][8]\ : label is std.standard.true;
  attribute KEEP of \syncstages_ff_reg[0][8]\ : label is "true";
  attribute XPM_CDC of \syncstages_ff_reg[0][8]\ : label is "ARRAY_SINGLE";
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[0][9]\ : label is std.standard.true;
  attribute KEEP of \syncstages_ff_reg[0][9]\ : label is "true";
  attribute XPM_CDC of \syncstages_ff_reg[0][9]\ : label is "ARRAY_SINGLE";
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[1][0]\ : label is std.standard.true;
  attribute KEEP of \syncstages_ff_reg[1][0]\ : label is "true";
  attribute XPM_CDC of \syncstages_ff_reg[1][0]\ : label is "ARRAY_SINGLE";
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[1][10]\ : label is std.standard.true;
  attribute KEEP of \syncstages_ff_reg[1][10]\ : label is "true";
  attribute XPM_CDC of \syncstages_ff_reg[1][10]\ : label is "ARRAY_SINGLE";
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[1][11]\ : label is std.standard.true;
  attribute KEEP of \syncstages_ff_reg[1][11]\ : label is "true";
  attribute XPM_CDC of \syncstages_ff_reg[1][11]\ : label is "ARRAY_SINGLE";
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[1][12]\ : label is std.standard.true;
  attribute KEEP of \syncstages_ff_reg[1][12]\ : label is "true";
  attribute XPM_CDC of \syncstages_ff_reg[1][12]\ : label is "ARRAY_SINGLE";
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[1][13]\ : label is std.standard.true;
  attribute KEEP of \syncstages_ff_reg[1][13]\ : label is "true";
  attribute XPM_CDC of \syncstages_ff_reg[1][13]\ : label is "ARRAY_SINGLE";
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[1][14]\ : label is std.standard.true;
  attribute KEEP of \syncstages_ff_reg[1][14]\ : label is "true";
  attribute XPM_CDC of \syncstages_ff_reg[1][14]\ : label is "ARRAY_SINGLE";
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[1][15]\ : label is std.standard.true;
  attribute KEEP of \syncstages_ff_reg[1][15]\ : label is "true";
  attribute XPM_CDC of \syncstages_ff_reg[1][15]\ : label is "ARRAY_SINGLE";
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[1][1]\ : label is std.standard.true;
  attribute KEEP of \syncstages_ff_reg[1][1]\ : label is "true";
  attribute XPM_CDC of \syncstages_ff_reg[1][1]\ : label is "ARRAY_SINGLE";
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[1][2]\ : label is std.standard.true;
  attribute KEEP of \syncstages_ff_reg[1][2]\ : label is "true";
  attribute XPM_CDC of \syncstages_ff_reg[1][2]\ : label is "ARRAY_SINGLE";
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[1][3]\ : label is std.standard.true;
  attribute KEEP of \syncstages_ff_reg[1][3]\ : label is "true";
  attribute XPM_CDC of \syncstages_ff_reg[1][3]\ : label is "ARRAY_SINGLE";
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[1][4]\ : label is std.standard.true;
  attribute KEEP of \syncstages_ff_reg[1][4]\ : label is "true";
  attribute XPM_CDC of \syncstages_ff_reg[1][4]\ : label is "ARRAY_SINGLE";
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[1][5]\ : label is std.standard.true;
  attribute KEEP of \syncstages_ff_reg[1][5]\ : label is "true";
  attribute XPM_CDC of \syncstages_ff_reg[1][5]\ : label is "ARRAY_SINGLE";
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[1][6]\ : label is std.standard.true;
  attribute KEEP of \syncstages_ff_reg[1][6]\ : label is "true";
  attribute XPM_CDC of \syncstages_ff_reg[1][6]\ : label is "ARRAY_SINGLE";
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[1][7]\ : label is std.standard.true;
  attribute KEEP of \syncstages_ff_reg[1][7]\ : label is "true";
  attribute XPM_CDC of \syncstages_ff_reg[1][7]\ : label is "ARRAY_SINGLE";
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[1][8]\ : label is std.standard.true;
  attribute KEEP of \syncstages_ff_reg[1][8]\ : label is "true";
  attribute XPM_CDC of \syncstages_ff_reg[1][8]\ : label is "ARRAY_SINGLE";
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[1][9]\ : label is std.standard.true;
  attribute KEEP of \syncstages_ff_reg[1][9]\ : label is "true";
  attribute XPM_CDC of \syncstages_ff_reg[1][9]\ : label is "ARRAY_SINGLE";
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[2][0]\ : label is std.standard.true;
  attribute KEEP of \syncstages_ff_reg[2][0]\ : label is "true";
  attribute XPM_CDC of \syncstages_ff_reg[2][0]\ : label is "ARRAY_SINGLE";
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[2][10]\ : label is std.standard.true;
  attribute KEEP of \syncstages_ff_reg[2][10]\ : label is "true";
  attribute XPM_CDC of \syncstages_ff_reg[2][10]\ : label is "ARRAY_SINGLE";
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[2][11]\ : label is std.standard.true;
  attribute KEEP of \syncstages_ff_reg[2][11]\ : label is "true";
  attribute XPM_CDC of \syncstages_ff_reg[2][11]\ : label is "ARRAY_SINGLE";
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[2][12]\ : label is std.standard.true;
  attribute KEEP of \syncstages_ff_reg[2][12]\ : label is "true";
  attribute XPM_CDC of \syncstages_ff_reg[2][12]\ : label is "ARRAY_SINGLE";
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[2][13]\ : label is std.standard.true;
  attribute KEEP of \syncstages_ff_reg[2][13]\ : label is "true";
  attribute XPM_CDC of \syncstages_ff_reg[2][13]\ : label is "ARRAY_SINGLE";
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[2][14]\ : label is std.standard.true;
  attribute KEEP of \syncstages_ff_reg[2][14]\ : label is "true";
  attribute XPM_CDC of \syncstages_ff_reg[2][14]\ : label is "ARRAY_SINGLE";
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[2][15]\ : label is std.standard.true;
  attribute KEEP of \syncstages_ff_reg[2][15]\ : label is "true";
  attribute XPM_CDC of \syncstages_ff_reg[2][15]\ : label is "ARRAY_SINGLE";
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[2][1]\ : label is std.standard.true;
  attribute KEEP of \syncstages_ff_reg[2][1]\ : label is "true";
  attribute XPM_CDC of \syncstages_ff_reg[2][1]\ : label is "ARRAY_SINGLE";
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[2][2]\ : label is std.standard.true;
  attribute KEEP of \syncstages_ff_reg[2][2]\ : label is "true";
  attribute XPM_CDC of \syncstages_ff_reg[2][2]\ : label is "ARRAY_SINGLE";
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[2][3]\ : label is std.standard.true;
  attribute KEEP of \syncstages_ff_reg[2][3]\ : label is "true";
  attribute XPM_CDC of \syncstages_ff_reg[2][3]\ : label is "ARRAY_SINGLE";
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[2][4]\ : label is std.standard.true;
  attribute KEEP of \syncstages_ff_reg[2][4]\ : label is "true";
  attribute XPM_CDC of \syncstages_ff_reg[2][4]\ : label is "ARRAY_SINGLE";
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[2][5]\ : label is std.standard.true;
  attribute KEEP of \syncstages_ff_reg[2][5]\ : label is "true";
  attribute XPM_CDC of \syncstages_ff_reg[2][5]\ : label is "ARRAY_SINGLE";
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[2][6]\ : label is std.standard.true;
  attribute KEEP of \syncstages_ff_reg[2][6]\ : label is "true";
  attribute XPM_CDC of \syncstages_ff_reg[2][6]\ : label is "ARRAY_SINGLE";
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[2][7]\ : label is std.standard.true;
  attribute KEEP of \syncstages_ff_reg[2][7]\ : label is "true";
  attribute XPM_CDC of \syncstages_ff_reg[2][7]\ : label is "ARRAY_SINGLE";
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[2][8]\ : label is std.standard.true;
  attribute KEEP of \syncstages_ff_reg[2][8]\ : label is "true";
  attribute XPM_CDC of \syncstages_ff_reg[2][8]\ : label is "ARRAY_SINGLE";
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[2][9]\ : label is std.standard.true;
  attribute KEEP of \syncstages_ff_reg[2][9]\ : label is "true";
  attribute XPM_CDC of \syncstages_ff_reg[2][9]\ : label is "ARRAY_SINGLE";
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[3][0]\ : label is std.standard.true;
  attribute KEEP of \syncstages_ff_reg[3][0]\ : label is "true";
  attribute XPM_CDC of \syncstages_ff_reg[3][0]\ : label is "ARRAY_SINGLE";
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[3][10]\ : label is std.standard.true;
  attribute KEEP of \syncstages_ff_reg[3][10]\ : label is "true";
  attribute XPM_CDC of \syncstages_ff_reg[3][10]\ : label is "ARRAY_SINGLE";
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[3][11]\ : label is std.standard.true;
  attribute KEEP of \syncstages_ff_reg[3][11]\ : label is "true";
  attribute XPM_CDC of \syncstages_ff_reg[3][11]\ : label is "ARRAY_SINGLE";
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[3][12]\ : label is std.standard.true;
  attribute KEEP of \syncstages_ff_reg[3][12]\ : label is "true";
  attribute XPM_CDC of \syncstages_ff_reg[3][12]\ : label is "ARRAY_SINGLE";
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[3][13]\ : label is std.standard.true;
  attribute KEEP of \syncstages_ff_reg[3][13]\ : label is "true";
  attribute XPM_CDC of \syncstages_ff_reg[3][13]\ : label is "ARRAY_SINGLE";
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[3][14]\ : label is std.standard.true;
  attribute KEEP of \syncstages_ff_reg[3][14]\ : label is "true";
  attribute XPM_CDC of \syncstages_ff_reg[3][14]\ : label is "ARRAY_SINGLE";
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[3][15]\ : label is std.standard.true;
  attribute KEEP of \syncstages_ff_reg[3][15]\ : label is "true";
  attribute XPM_CDC of \syncstages_ff_reg[3][15]\ : label is "ARRAY_SINGLE";
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[3][1]\ : label is std.standard.true;
  attribute KEEP of \syncstages_ff_reg[3][1]\ : label is "true";
  attribute XPM_CDC of \syncstages_ff_reg[3][1]\ : label is "ARRAY_SINGLE";
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[3][2]\ : label is std.standard.true;
  attribute KEEP of \syncstages_ff_reg[3][2]\ : label is "true";
  attribute XPM_CDC of \syncstages_ff_reg[3][2]\ : label is "ARRAY_SINGLE";
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[3][3]\ : label is std.standard.true;
  attribute KEEP of \syncstages_ff_reg[3][3]\ : label is "true";
  attribute XPM_CDC of \syncstages_ff_reg[3][3]\ : label is "ARRAY_SINGLE";
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[3][4]\ : label is std.standard.true;
  attribute KEEP of \syncstages_ff_reg[3][4]\ : label is "true";
  attribute XPM_CDC of \syncstages_ff_reg[3][4]\ : label is "ARRAY_SINGLE";
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[3][5]\ : label is std.standard.true;
  attribute KEEP of \syncstages_ff_reg[3][5]\ : label is "true";
  attribute XPM_CDC of \syncstages_ff_reg[3][5]\ : label is "ARRAY_SINGLE";
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[3][6]\ : label is std.standard.true;
  attribute KEEP of \syncstages_ff_reg[3][6]\ : label is "true";
  attribute XPM_CDC of \syncstages_ff_reg[3][6]\ : label is "ARRAY_SINGLE";
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[3][7]\ : label is std.standard.true;
  attribute KEEP of \syncstages_ff_reg[3][7]\ : label is "true";
  attribute XPM_CDC of \syncstages_ff_reg[3][7]\ : label is "ARRAY_SINGLE";
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[3][8]\ : label is std.standard.true;
  attribute KEEP of \syncstages_ff_reg[3][8]\ : label is "true";
  attribute XPM_CDC of \syncstages_ff_reg[3][8]\ : label is "ARRAY_SINGLE";
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[3][9]\ : label is std.standard.true;
  attribute KEEP of \syncstages_ff_reg[3][9]\ : label is "true";
  attribute XPM_CDC of \syncstages_ff_reg[3][9]\ : label is "ARRAY_SINGLE";
begin
  async_path_bit(15 downto 0) <= src_in(15 downto 0);
  dest_out(15 downto 0) <= \syncstages_ff[3]\(15 downto 0);
\syncstages_ff_reg[0][0]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => async_path_bit(0),
      Q => \syncstages_ff[0]\(0),
      R => '0'
    );
\syncstages_ff_reg[0][10]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => async_path_bit(10),
      Q => \syncstages_ff[0]\(10),
      R => '0'
    );
\syncstages_ff_reg[0][11]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => async_path_bit(11),
      Q => \syncstages_ff[0]\(11),
      R => '0'
    );
\syncstages_ff_reg[0][12]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => async_path_bit(12),
      Q => \syncstages_ff[0]\(12),
      R => '0'
    );
\syncstages_ff_reg[0][13]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => async_path_bit(13),
      Q => \syncstages_ff[0]\(13),
      R => '0'
    );
\syncstages_ff_reg[0][14]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => async_path_bit(14),
      Q => \syncstages_ff[0]\(14),
      R => '0'
    );
\syncstages_ff_reg[0][15]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => async_path_bit(15),
      Q => \syncstages_ff[0]\(15),
      R => '0'
    );
\syncstages_ff_reg[0][1]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => async_path_bit(1),
      Q => \syncstages_ff[0]\(1),
      R => '0'
    );
\syncstages_ff_reg[0][2]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => async_path_bit(2),
      Q => \syncstages_ff[0]\(2),
      R => '0'
    );
\syncstages_ff_reg[0][3]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => async_path_bit(3),
      Q => \syncstages_ff[0]\(3),
      R => '0'
    );
\syncstages_ff_reg[0][4]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => async_path_bit(4),
      Q => \syncstages_ff[0]\(4),
      R => '0'
    );
\syncstages_ff_reg[0][5]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => async_path_bit(5),
      Q => \syncstages_ff[0]\(5),
      R => '0'
    );
\syncstages_ff_reg[0][6]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => async_path_bit(6),
      Q => \syncstages_ff[0]\(6),
      R => '0'
    );
\syncstages_ff_reg[0][7]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => async_path_bit(7),
      Q => \syncstages_ff[0]\(7),
      R => '0'
    );
\syncstages_ff_reg[0][8]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => async_path_bit(8),
      Q => \syncstages_ff[0]\(8),
      R => '0'
    );
\syncstages_ff_reg[0][9]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => async_path_bit(9),
      Q => \syncstages_ff[0]\(9),
      R => '0'
    );
\syncstages_ff_reg[1][0]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \syncstages_ff[0]\(0),
      Q => \syncstages_ff[1]\(0),
      R => '0'
    );
\syncstages_ff_reg[1][10]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \syncstages_ff[0]\(10),
      Q => \syncstages_ff[1]\(10),
      R => '0'
    );
\syncstages_ff_reg[1][11]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \syncstages_ff[0]\(11),
      Q => \syncstages_ff[1]\(11),
      R => '0'
    );
\syncstages_ff_reg[1][12]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \syncstages_ff[0]\(12),
      Q => \syncstages_ff[1]\(12),
      R => '0'
    );
\syncstages_ff_reg[1][13]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \syncstages_ff[0]\(13),
      Q => \syncstages_ff[1]\(13),
      R => '0'
    );
\syncstages_ff_reg[1][14]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \syncstages_ff[0]\(14),
      Q => \syncstages_ff[1]\(14),
      R => '0'
    );
\syncstages_ff_reg[1][15]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \syncstages_ff[0]\(15),
      Q => \syncstages_ff[1]\(15),
      R => '0'
    );
\syncstages_ff_reg[1][1]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \syncstages_ff[0]\(1),
      Q => \syncstages_ff[1]\(1),
      R => '0'
    );
\syncstages_ff_reg[1][2]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \syncstages_ff[0]\(2),
      Q => \syncstages_ff[1]\(2),
      R => '0'
    );
\syncstages_ff_reg[1][3]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \syncstages_ff[0]\(3),
      Q => \syncstages_ff[1]\(3),
      R => '0'
    );
\syncstages_ff_reg[1][4]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \syncstages_ff[0]\(4),
      Q => \syncstages_ff[1]\(4),
      R => '0'
    );
\syncstages_ff_reg[1][5]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \syncstages_ff[0]\(5),
      Q => \syncstages_ff[1]\(5),
      R => '0'
    );
\syncstages_ff_reg[1][6]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \syncstages_ff[0]\(6),
      Q => \syncstages_ff[1]\(6),
      R => '0'
    );
\syncstages_ff_reg[1][7]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \syncstages_ff[0]\(7),
      Q => \syncstages_ff[1]\(7),
      R => '0'
    );
\syncstages_ff_reg[1][8]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \syncstages_ff[0]\(8),
      Q => \syncstages_ff[1]\(8),
      R => '0'
    );
\syncstages_ff_reg[1][9]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \syncstages_ff[0]\(9),
      Q => \syncstages_ff[1]\(9),
      R => '0'
    );
\syncstages_ff_reg[2][0]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \syncstages_ff[1]\(0),
      Q => \syncstages_ff[2]\(0),
      R => '0'
    );
\syncstages_ff_reg[2][10]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \syncstages_ff[1]\(10),
      Q => \syncstages_ff[2]\(10),
      R => '0'
    );
\syncstages_ff_reg[2][11]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \syncstages_ff[1]\(11),
      Q => \syncstages_ff[2]\(11),
      R => '0'
    );
\syncstages_ff_reg[2][12]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \syncstages_ff[1]\(12),
      Q => \syncstages_ff[2]\(12),
      R => '0'
    );
\syncstages_ff_reg[2][13]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \syncstages_ff[1]\(13),
      Q => \syncstages_ff[2]\(13),
      R => '0'
    );
\syncstages_ff_reg[2][14]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \syncstages_ff[1]\(14),
      Q => \syncstages_ff[2]\(14),
      R => '0'
    );
\syncstages_ff_reg[2][15]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \syncstages_ff[1]\(15),
      Q => \syncstages_ff[2]\(15),
      R => '0'
    );
\syncstages_ff_reg[2][1]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \syncstages_ff[1]\(1),
      Q => \syncstages_ff[2]\(1),
      R => '0'
    );
\syncstages_ff_reg[2][2]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \syncstages_ff[1]\(2),
      Q => \syncstages_ff[2]\(2),
      R => '0'
    );
\syncstages_ff_reg[2][3]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \syncstages_ff[1]\(3),
      Q => \syncstages_ff[2]\(3),
      R => '0'
    );
\syncstages_ff_reg[2][4]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \syncstages_ff[1]\(4),
      Q => \syncstages_ff[2]\(4),
      R => '0'
    );
\syncstages_ff_reg[2][5]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \syncstages_ff[1]\(5),
      Q => \syncstages_ff[2]\(5),
      R => '0'
    );
\syncstages_ff_reg[2][6]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \syncstages_ff[1]\(6),
      Q => \syncstages_ff[2]\(6),
      R => '0'
    );
\syncstages_ff_reg[2][7]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \syncstages_ff[1]\(7),
      Q => \syncstages_ff[2]\(7),
      R => '0'
    );
\syncstages_ff_reg[2][8]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \syncstages_ff[1]\(8),
      Q => \syncstages_ff[2]\(8),
      R => '0'
    );
\syncstages_ff_reg[2][9]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \syncstages_ff[1]\(9),
      Q => \syncstages_ff[2]\(9),
      R => '0'
    );
\syncstages_ff_reg[3][0]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \syncstages_ff[2]\(0),
      Q => \syncstages_ff[3]\(0),
      R => '0'
    );
\syncstages_ff_reg[3][10]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \syncstages_ff[2]\(10),
      Q => \syncstages_ff[3]\(10),
      R => '0'
    );
\syncstages_ff_reg[3][11]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \syncstages_ff[2]\(11),
      Q => \syncstages_ff[3]\(11),
      R => '0'
    );
\syncstages_ff_reg[3][12]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \syncstages_ff[2]\(12),
      Q => \syncstages_ff[3]\(12),
      R => '0'
    );
\syncstages_ff_reg[3][13]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \syncstages_ff[2]\(13),
      Q => \syncstages_ff[3]\(13),
      R => '0'
    );
\syncstages_ff_reg[3][14]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \syncstages_ff[2]\(14),
      Q => \syncstages_ff[3]\(14),
      R => '0'
    );
\syncstages_ff_reg[3][15]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \syncstages_ff[2]\(15),
      Q => \syncstages_ff[3]\(15),
      R => '0'
    );
\syncstages_ff_reg[3][1]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \syncstages_ff[2]\(1),
      Q => \syncstages_ff[3]\(1),
      R => '0'
    );
\syncstages_ff_reg[3][2]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \syncstages_ff[2]\(2),
      Q => \syncstages_ff[3]\(2),
      R => '0'
    );
\syncstages_ff_reg[3][3]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \syncstages_ff[2]\(3),
      Q => \syncstages_ff[3]\(3),
      R => '0'
    );
\syncstages_ff_reg[3][4]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \syncstages_ff[2]\(4),
      Q => \syncstages_ff[3]\(4),
      R => '0'
    );
\syncstages_ff_reg[3][5]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \syncstages_ff[2]\(5),
      Q => \syncstages_ff[3]\(5),
      R => '0'
    );
\syncstages_ff_reg[3][6]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \syncstages_ff[2]\(6),
      Q => \syncstages_ff[3]\(6),
      R => '0'
    );
\syncstages_ff_reg[3][7]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \syncstages_ff[2]\(7),
      Q => \syncstages_ff[3]\(7),
      R => '0'
    );
\syncstages_ff_reg[3][8]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \syncstages_ff[2]\(8),
      Q => \syncstages_ff[3]\(8),
      R => '0'
    );
\syncstages_ff_reg[3][9]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \syncstages_ff[2]\(9),
      Q => \syncstages_ff[3]\(9),
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_qdma_versal_shim is
  port (
    Q : out STD_LOGIC_VECTOR ( 2 downto 0 );
    usr_irq_ack : out STD_LOGIC_VECTOR ( 15 downto 0 );
    \usr_irq_in_vec_reg[3]_0\ : out STD_LOGIC;
    \usr_irq_in_vec_reg[4]_0\ : out STD_LOGIC;
    usr_irq_in_vld : out STD_LOGIC;
    usr_irq_req : in STD_LOGIC_VECTOR ( 15 downto 0 );
    clk : in STD_LOGIC;
    usr_irq_out_ack : in STD_LOGIC;
    rstn : in STD_LOGIC
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_qdma_versal_shim;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_qdma_versal_shim is
  signal \FSM_sequential_state[0]_i_2_n_0\ : STD_LOGIC;
  signal \FSM_sequential_state[1]_i_1_n_0\ : STD_LOGIC;
  signal \^q\ : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal state : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \state__0\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal usr_irq_ack1_in : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal \usr_irq_ack[15]_i_1_n_0\ : STD_LOGIC;
  signal \usr_irq_ack[15]_i_2_n_0\ : STD_LOGIC;
  signal usr_irq_ack_cpy : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \usr_irq_ack_cpy[3]_i_1_n_0\ : STD_LOGIC;
  signal \usr_irq_ack_cpy_reg_n_0_[0]\ : STD_LOGIC;
  signal \usr_irq_ack_cpy_reg_n_0_[1]\ : STD_LOGIC;
  signal \usr_irq_ack_cpy_reg_n_0_[2]\ : STD_LOGIC;
  signal \usr_irq_ack_cpy_reg_n_0_[3]\ : STD_LOGIC;
  signal \usr_irq_in_vec[0]_i_1_n_0\ : STD_LOGIC;
  signal \usr_irq_in_vec[0]_i_2_n_0\ : STD_LOGIC;
  signal \usr_irq_in_vec[0]_i_3_n_0\ : STD_LOGIC;
  signal \usr_irq_in_vec[0]_i_4_n_0\ : STD_LOGIC;
  signal \usr_irq_in_vec[0]_i_5_n_0\ : STD_LOGIC;
  signal \usr_irq_in_vec[0]_i_6_n_0\ : STD_LOGIC;
  signal \usr_irq_in_vec[1]_i_1_n_0\ : STD_LOGIC;
  signal \usr_irq_in_vec[1]_i_1_n_1\ : STD_LOGIC;
  signal \usr_irq_in_vec[1]_i_2_n_0\ : STD_LOGIC;
  signal \usr_irq_in_vec[1]_i_3_n_0\ : STD_LOGIC;
  signal \usr_irq_in_vec[1]_i_4_n_0\ : STD_LOGIC;
  signal \usr_irq_in_vec[1]_i_5_n_0\ : STD_LOGIC;
  signal \usr_irq_in_vec[2]_i_1_n_0\ : STD_LOGIC;
  signal \usr_irq_in_vec[2]_i_2_n_0\ : STD_LOGIC;
  signal \usr_irq_in_vec[2]_i_3_n_0\ : STD_LOGIC;
  signal \usr_irq_in_vec[2]_i_4_n_0\ : STD_LOGIC;
  signal \usr_irq_in_vec[3]_i_1_n_0\ : STD_LOGIC;
  signal \usr_irq_in_vec[3]_i_2_n_0\ : STD_LOGIC;
  signal \usr_irq_in_vec[3]_i_3_n_0\ : STD_LOGIC;
  signal \^usr_irq_in_vec_reg[3]_0\ : STD_LOGIC;
  signal \^usr_irq_in_vec_reg[4]_0\ : STD_LOGIC;
  signal usr_irq_in_vld_i_1_n_0 : STD_LOGIC;
  signal usr_irq_in_vld_i_2_n_0 : STD_LOGIC;
  signal usr_irq_in_vld_i_3_n_0 : STD_LOGIC;
  signal usr_irq_in_vld_i_4_n_0 : STD_LOGIC;
  signal usr_irq_in_vld_i_5_n_0 : STD_LOGIC;
  signal usr_irq_in_vld_i_6_n_0 : STD_LOGIC;
  signal usr_irq_in_vld_i_7_n_0 : STD_LOGIC;
  signal usr_irq_in_vld_i_8_n_0 : STD_LOGIC;
  signal usr_irq_req_cdc : STD_LOGIC_VECTOR ( 15 downto 0 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \FSM_sequential_state[0]_i_1\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \FSM_sequential_state[1]_i_2\ : label is "soft_lutpair1";
  attribute FSM_ENCODED_STATES : string;
  attribute FSM_ENCODED_STATES of \FSM_sequential_state_reg[0]\ : label is "iSTATE:10,iSTATE0:01,iSTATE1:00,iSTATE2:11";
  attribute FSM_ENCODED_STATES of \FSM_sequential_state_reg[1]\ : label is "iSTATE:10,iSTATE0:01,iSTATE1:00,iSTATE2:11";
  attribute SOFT_HLUTNM of \usr_irq_ack_cpy[1]_i_1\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \usr_irq_ack_cpy[2]_i_1\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \usr_irq_ack_cpy[3]_i_2\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \usr_irq_in_vec[0]_i_1\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \usr_irq_in_vec[0]_i_4\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \usr_irq_in_vec[0]_i_5\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \usr_irq_in_vec[1]_i_4\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \usr_irq_in_vec[1]_i_5\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \usr_irq_in_vec[2]_i_2\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \usr_irq_in_vec[2]_i_3\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \usr_irq_in_vec[2]_i_4\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \usr_irq_in_vec[3]_i_2\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \usr_irq_in_vec[3]_i_3\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of usr_irq_in_vld_i_2 : label is "soft_lutpair0";
  attribute DEST_SYNC_FF : integer;
  attribute DEST_SYNC_FF of usr_irq_xpm_cdc : label is 4;
  attribute INIT_SYNC_FF : integer;
  attribute INIT_SYNC_FF of usr_irq_xpm_cdc : label is 0;
  attribute SIM_ASSERT_CHK : integer;
  attribute SIM_ASSERT_CHK of usr_irq_xpm_cdc : label is 0;
  attribute SRC_INPUT_REG : integer;
  attribute SRC_INPUT_REG of usr_irq_xpm_cdc : label is 0;
  attribute VERSION : integer;
  attribute VERSION of usr_irq_xpm_cdc : label is 0;
  attribute WIDTH : integer;
  attribute WIDTH of usr_irq_xpm_cdc : label is 16;
  attribute XPM_CDC : string;
  attribute XPM_CDC of usr_irq_xpm_cdc : label is "ARRAY_SINGLE";
  attribute XPM_MODULE : string;
  attribute XPM_MODULE of usr_irq_xpm_cdc : label is "TRUE";
begin
  Q(2 downto 0) <= \^q\(2 downto 0);
  \usr_irq_in_vec_reg[3]_0\ <= \^usr_irq_in_vec_reg[3]_0\;
  \usr_irq_in_vec_reg[4]_0\ <= \^usr_irq_in_vec_reg[4]_0\;
\FSM_sequential_state[0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FC0C0A0A"
    )
        port map (
      I0 => \FSM_sequential_state[0]_i_2_n_0\,
      I1 => usr_irq_out_ack,
      I2 => state(0),
      I3 => usr_irq_in_vld_i_3_n_0,
      I4 => state(1),
      O => \state__0\(0)
    );
\FSM_sequential_state[0]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFFE"
    )
        port map (
      I0 => usr_irq_req_cdc(0),
      I1 => usr_irq_req_cdc(1),
      I2 => \usr_irq_in_vec[3]_i_3_n_0\,
      I3 => \usr_irq_in_vec[3]_i_2_n_0\,
      I4 => \usr_irq_in_vec[1]_i_3_n_0\,
      I5 => \usr_irq_in_vec[2]_i_3_n_0\,
      O => \FSM_sequential_state[0]_i_2_n_0\
    );
\FSM_sequential_state[1]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0FAACCFF"
    )
        port map (
      I0 => usr_irq_in_vld_i_4_n_0,
      I1 => usr_irq_out_ack,
      I2 => usr_irq_in_vld_i_3_n_0,
      I3 => state(1),
      I4 => state(0),
      O => \FSM_sequential_state[1]_i_1_n_0\
    );
\FSM_sequential_state[1]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"B8CC"
    )
        port map (
      I0 => usr_irq_in_vld_i_3_n_0,
      I1 => state(0),
      I2 => usr_irq_out_ack,
      I3 => state(1),
      O => \state__0\(1)
    );
\FSM_sequential_state_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \FSM_sequential_state[1]_i_1_n_0\,
      D => \state__0\(0),
      Q => state(0),
      R => \usr_irq_ack[15]_i_1_n_0\
    );
\FSM_sequential_state_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \FSM_sequential_state[1]_i_1_n_0\,
      D => \state__0\(1),
      Q => state(1),
      R => \usr_irq_ack[15]_i_1_n_0\
    );
\usr_irq_ack[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000001"
    )
        port map (
      I0 => \^usr_irq_in_vec_reg[3]_0\,
      I1 => state(0),
      I2 => \^usr_irq_in_vec_reg[4]_0\,
      I3 => \^q\(0),
      I4 => \^q\(2),
      I5 => \^q\(1),
      O => usr_irq_ack1_in(0)
    );
\usr_irq_ack[10]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000200000000"
    )
        port map (
      I0 => \^usr_irq_in_vec_reg[3]_0\,
      I1 => state(0),
      I2 => \^usr_irq_in_vec_reg[4]_0\,
      I3 => \^q\(0),
      I4 => \^q\(2),
      I5 => \^q\(1),
      O => usr_irq_ack1_in(10)
    );
\usr_irq_ack[11]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000020000000000"
    )
        port map (
      I0 => \^usr_irq_in_vec_reg[3]_0\,
      I1 => state(0),
      I2 => \^usr_irq_in_vec_reg[4]_0\,
      I3 => \^q\(0),
      I4 => \^q\(2),
      I5 => \^q\(1),
      O => usr_irq_ack1_in(11)
    );
\usr_irq_ack[12]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000200000000"
    )
        port map (
      I0 => \^usr_irq_in_vec_reg[3]_0\,
      I1 => state(0),
      I2 => \^usr_irq_in_vec_reg[4]_0\,
      I3 => \^q\(0),
      I4 => \^q\(1),
      I5 => \^q\(2),
      O => usr_irq_ack1_in(12)
    );
\usr_irq_ack[13]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000020000000000"
    )
        port map (
      I0 => \^usr_irq_in_vec_reg[3]_0\,
      I1 => state(0),
      I2 => \^usr_irq_in_vec_reg[4]_0\,
      I3 => \^q\(0),
      I4 => \^q\(1),
      I5 => \^q\(2),
      O => usr_irq_ack1_in(13)
    );
\usr_irq_ack[14]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0002000000000000"
    )
        port map (
      I0 => \^usr_irq_in_vec_reg[3]_0\,
      I1 => state(0),
      I2 => \^usr_irq_in_vec_reg[4]_0\,
      I3 => \^q\(0),
      I4 => \^q\(2),
      I5 => \^q\(1),
      O => usr_irq_ack1_in(14)
    );
\usr_irq_ack[15]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => rstn,
      O => \usr_irq_ack[15]_i_1_n_0\
    );
\usr_irq_ack[15]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E0"
    )
        port map (
      I0 => state(0),
      I1 => usr_irq_out_ack,
      I2 => state(1),
      O => \usr_irq_ack[15]_i_2_n_0\
    );
\usr_irq_ack[15]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0200000000000000"
    )
        port map (
      I0 => \^usr_irq_in_vec_reg[3]_0\,
      I1 => state(0),
      I2 => \^usr_irq_in_vec_reg[4]_0\,
      I3 => \^q\(0),
      I4 => \^q\(2),
      I5 => \^q\(1),
      O => usr_irq_ack1_in(15)
    );
\usr_irq_ack[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000100"
    )
        port map (
      I0 => \^usr_irq_in_vec_reg[3]_0\,
      I1 => state(0),
      I2 => \^usr_irq_in_vec_reg[4]_0\,
      I3 => \^q\(0),
      I4 => \^q\(2),
      I5 => \^q\(1),
      O => usr_irq_ack1_in(1)
    );
\usr_irq_ack[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000100000000"
    )
        port map (
      I0 => \^usr_irq_in_vec_reg[3]_0\,
      I1 => state(0),
      I2 => \^usr_irq_in_vec_reg[4]_0\,
      I3 => \^q\(0),
      I4 => \^q\(2),
      I5 => \^q\(1),
      O => usr_irq_ack1_in(2)
    );
\usr_irq_ack[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000010000000000"
    )
        port map (
      I0 => \^usr_irq_in_vec_reg[3]_0\,
      I1 => state(0),
      I2 => \^usr_irq_in_vec_reg[4]_0\,
      I3 => \^q\(0),
      I4 => \^q\(2),
      I5 => \^q\(1),
      O => usr_irq_ack1_in(3)
    );
\usr_irq_ack[4]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000100000000"
    )
        port map (
      I0 => \^usr_irq_in_vec_reg[3]_0\,
      I1 => state(0),
      I2 => \^usr_irq_in_vec_reg[4]_0\,
      I3 => \^q\(0),
      I4 => \^q\(1),
      I5 => \^q\(2),
      O => usr_irq_ack1_in(4)
    );
\usr_irq_ack[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000010000000000"
    )
        port map (
      I0 => \^usr_irq_in_vec_reg[3]_0\,
      I1 => state(0),
      I2 => \^usr_irq_in_vec_reg[4]_0\,
      I3 => \^q\(0),
      I4 => \^q\(1),
      I5 => \^q\(2),
      O => usr_irq_ack1_in(5)
    );
\usr_irq_ack[6]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0001000000000000"
    )
        port map (
      I0 => \^usr_irq_in_vec_reg[3]_0\,
      I1 => state(0),
      I2 => \^usr_irq_in_vec_reg[4]_0\,
      I3 => \^q\(0),
      I4 => \^q\(2),
      I5 => \^q\(1),
      O => usr_irq_ack1_in(6)
    );
\usr_irq_ack[7]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0100000000000000"
    )
        port map (
      I0 => \^usr_irq_in_vec_reg[3]_0\,
      I1 => state(0),
      I2 => \^usr_irq_in_vec_reg[4]_0\,
      I3 => \^q\(0),
      I4 => \^q\(2),
      I5 => \^q\(1),
      O => usr_irq_ack1_in(7)
    );
\usr_irq_ack[8]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000002"
    )
        port map (
      I0 => \^usr_irq_in_vec_reg[3]_0\,
      I1 => state(0),
      I2 => \^usr_irq_in_vec_reg[4]_0\,
      I3 => \^q\(0),
      I4 => \^q\(2),
      I5 => \^q\(1),
      O => usr_irq_ack1_in(8)
    );
\usr_irq_ack[9]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000200"
    )
        port map (
      I0 => \^usr_irq_in_vec_reg[3]_0\,
      I1 => state(0),
      I2 => \^usr_irq_in_vec_reg[4]_0\,
      I3 => \^q\(0),
      I4 => \^q\(2),
      I5 => \^q\(1),
      O => usr_irq_ack1_in(9)
    );
\usr_irq_ack_cpy[0]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => state(1),
      I1 => \^q\(0),
      O => usr_irq_ack_cpy(0)
    );
\usr_irq_ack_cpy[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => state(1),
      I1 => \^q\(1),
      O => usr_irq_ack_cpy(1)
    );
\usr_irq_ack_cpy[2]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => state(1),
      I1 => \^q\(2),
      O => usr_irq_ack_cpy(2)
    );
\usr_irq_ack_cpy[3]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"0D"
    )
        port map (
      I0 => state(1),
      I1 => usr_irq_out_ack,
      I2 => state(0),
      O => \usr_irq_ack_cpy[3]_i_1_n_0\
    );
\usr_irq_ack_cpy[3]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => state(1),
      I1 => \^usr_irq_in_vec_reg[3]_0\,
      O => usr_irq_ack_cpy(3)
    );
\usr_irq_ack_cpy_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \usr_irq_ack_cpy[3]_i_1_n_0\,
      D => usr_irq_ack_cpy(0),
      Q => \usr_irq_ack_cpy_reg_n_0_[0]\,
      R => \usr_irq_ack[15]_i_1_n_0\
    );
\usr_irq_ack_cpy_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \usr_irq_ack_cpy[3]_i_1_n_0\,
      D => usr_irq_ack_cpy(1),
      Q => \usr_irq_ack_cpy_reg_n_0_[1]\,
      R => \usr_irq_ack[15]_i_1_n_0\
    );
\usr_irq_ack_cpy_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \usr_irq_ack_cpy[3]_i_1_n_0\,
      D => usr_irq_ack_cpy(2),
      Q => \usr_irq_ack_cpy_reg_n_0_[2]\,
      R => \usr_irq_ack[15]_i_1_n_0\
    );
\usr_irq_ack_cpy_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \usr_irq_ack_cpy[3]_i_1_n_0\,
      D => usr_irq_ack_cpy(3),
      Q => \usr_irq_ack_cpy_reg_n_0_[3]\,
      R => \usr_irq_ack[15]_i_1_n_0\
    );
\usr_irq_ack_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \usr_irq_ack[15]_i_2_n_0\,
      D => usr_irq_ack1_in(0),
      Q => usr_irq_ack(0),
      R => \usr_irq_ack[15]_i_1_n_0\
    );
\usr_irq_ack_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \usr_irq_ack[15]_i_2_n_0\,
      D => usr_irq_ack1_in(10),
      Q => usr_irq_ack(10),
      R => \usr_irq_ack[15]_i_1_n_0\
    );
\usr_irq_ack_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \usr_irq_ack[15]_i_2_n_0\,
      D => usr_irq_ack1_in(11),
      Q => usr_irq_ack(11),
      R => \usr_irq_ack[15]_i_1_n_0\
    );
\usr_irq_ack_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \usr_irq_ack[15]_i_2_n_0\,
      D => usr_irq_ack1_in(12),
      Q => usr_irq_ack(12),
      R => \usr_irq_ack[15]_i_1_n_0\
    );
\usr_irq_ack_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \usr_irq_ack[15]_i_2_n_0\,
      D => usr_irq_ack1_in(13),
      Q => usr_irq_ack(13),
      R => \usr_irq_ack[15]_i_1_n_0\
    );
\usr_irq_ack_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \usr_irq_ack[15]_i_2_n_0\,
      D => usr_irq_ack1_in(14),
      Q => usr_irq_ack(14),
      R => \usr_irq_ack[15]_i_1_n_0\
    );
\usr_irq_ack_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \usr_irq_ack[15]_i_2_n_0\,
      D => usr_irq_ack1_in(15),
      Q => usr_irq_ack(15),
      R => \usr_irq_ack[15]_i_1_n_0\
    );
\usr_irq_ack_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \usr_irq_ack[15]_i_2_n_0\,
      D => usr_irq_ack1_in(1),
      Q => usr_irq_ack(1),
      R => \usr_irq_ack[15]_i_1_n_0\
    );
\usr_irq_ack_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \usr_irq_ack[15]_i_2_n_0\,
      D => usr_irq_ack1_in(2),
      Q => usr_irq_ack(2),
      R => \usr_irq_ack[15]_i_1_n_0\
    );
\usr_irq_ack_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \usr_irq_ack[15]_i_2_n_0\,
      D => usr_irq_ack1_in(3),
      Q => usr_irq_ack(3),
      R => \usr_irq_ack[15]_i_1_n_0\
    );
\usr_irq_ack_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \usr_irq_ack[15]_i_2_n_0\,
      D => usr_irq_ack1_in(4),
      Q => usr_irq_ack(4),
      R => \usr_irq_ack[15]_i_1_n_0\
    );
\usr_irq_ack_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \usr_irq_ack[15]_i_2_n_0\,
      D => usr_irq_ack1_in(5),
      Q => usr_irq_ack(5),
      R => \usr_irq_ack[15]_i_1_n_0\
    );
\usr_irq_ack_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \usr_irq_ack[15]_i_2_n_0\,
      D => usr_irq_ack1_in(6),
      Q => usr_irq_ack(6),
      R => \usr_irq_ack[15]_i_1_n_0\
    );
\usr_irq_ack_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \usr_irq_ack[15]_i_2_n_0\,
      D => usr_irq_ack1_in(7),
      Q => usr_irq_ack(7),
      R => \usr_irq_ack[15]_i_1_n_0\
    );
\usr_irq_ack_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \usr_irq_ack[15]_i_2_n_0\,
      D => usr_irq_ack1_in(8),
      Q => usr_irq_ack(8),
      R => \usr_irq_ack[15]_i_1_n_0\
    );
\usr_irq_ack_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \usr_irq_ack[15]_i_2_n_0\,
      D => usr_irq_ack1_in(9),
      Q => usr_irq_ack(9),
      R => \usr_irq_ack[15]_i_1_n_0\
    );
\usr_irq_in_vec[0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFEAE"
    )
        port map (
      I0 => \usr_irq_in_vec[0]_i_2_n_0\,
      I1 => usr_irq_req_cdc(15),
      I2 => state(1),
      I3 => usr_irq_in_vld_i_3_n_0,
      I4 => \usr_irq_in_vec[0]_i_3_n_0\,
      O => \usr_irq_in_vec[0]_i_1_n_0\
    );
\usr_irq_in_vec[0]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"4444444444440400"
    )
        port map (
      I0 => \usr_irq_in_vec[0]_i_4_n_0\,
      I1 => \usr_irq_in_vec[0]_i_5_n_0\,
      I2 => usr_irq_req_cdc(6),
      I3 => usr_irq_req_cdc(5),
      I4 => usr_irq_req_cdc(7),
      I5 => \usr_irq_in_vec[0]_i_6_n_0\,
      O => \usr_irq_in_vec[0]_i_2_n_0\
    );
\usr_irq_in_vec[0]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFF00F400000000"
    )
        port map (
      I0 => usr_irq_req_cdc(10),
      I1 => usr_irq_req_cdc(9),
      I2 => usr_irq_req_cdc(11),
      I3 => usr_irq_req_cdc(12),
      I4 => usr_irq_req_cdc(13),
      I5 => \usr_irq_in_vec[0]_i_5_n_0\,
      O => \usr_irq_in_vec[0]_i_3_n_0\
    );
\usr_irq_in_vec[0]_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFAE"
    )
        port map (
      I0 => usr_irq_req_cdc(8),
      I1 => usr_irq_req_cdc(6),
      I2 => usr_irq_req_cdc(7),
      I3 => usr_irq_req_cdc(12),
      I4 => usr_irq_req_cdc(10),
      O => \usr_irq_in_vec[0]_i_4_n_0\
    );
\usr_irq_in_vec[0]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => state(1),
      I1 => usr_irq_req_cdc(14),
      O => \usr_irq_in_vec[0]_i_5_n_0\
    );
\usr_irq_in_vec[0]_i_6\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00AE"
    )
        port map (
      I0 => usr_irq_req_cdc(3),
      I1 => usr_irq_req_cdc(1),
      I2 => usr_irq_req_cdc(2),
      I3 => usr_irq_req_cdc(4),
      O => \usr_irq_in_vec[0]_i_6_n_0\
    );
\usr_irq_in_vec[1]_i_1\: unisim.vcomponents.LUT6_2
    generic map(
      INIT => X"BBBBBBB888888888"
    )
        port map (
      I0 => usr_irq_in_vld_i_3_n_0,
      I1 => state(1),
      I2 => \usr_irq_in_vec[1]_i_3_n_0\,
      I3 => usr_irq_req_cdc(10),
      I4 => usr_irq_req_cdc(11),
      I5 => \usr_irq_in_vec[1]_i_2_n_0\,
      O5 => \usr_irq_in_vec[1]_i_1_n_0\,
      O6 => \usr_irq_in_vec[1]_i_1_n_1\
    );
\usr_irq_in_vec[1]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFF0B0A"
    )
        port map (
      I0 => \usr_irq_in_vec[1]_i_4_n_0\,
      I1 => usr_irq_req_cdc(9),
      I2 => \usr_irq_in_vec[3]_i_3_n_0\,
      I3 => \usr_irq_in_vec[1]_i_5_n_0\,
      I4 => usr_irq_req_cdc(15),
      I5 => usr_irq_req_cdc(14),
      O => \usr_irq_in_vec[1]_i_2_n_0\
    );
\usr_irq_in_vec[1]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFFE"
    )
        port map (
      I0 => usr_irq_req_cdc(6),
      I1 => usr_irq_req_cdc(7),
      I2 => usr_irq_req_cdc(14),
      I3 => usr_irq_req_cdc(15),
      I4 => usr_irq_req_cdc(3),
      I5 => usr_irq_req_cdc(2),
      O => \usr_irq_in_vec[1]_i_3_n_0\
    );
\usr_irq_in_vec[1]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => usr_irq_req_cdc(10),
      I1 => usr_irq_req_cdc(11),
      O => \usr_irq_in_vec[1]_i_4_n_0\
    );
\usr_irq_in_vec[1]_i_5\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0000FFF1"
    )
        port map (
      I0 => usr_irq_req_cdc(4),
      I1 => usr_irq_req_cdc(5),
      I2 => usr_irq_req_cdc(6),
      I3 => usr_irq_req_cdc(7),
      I4 => usr_irq_req_cdc(8),
      O => \usr_irq_in_vec[1]_i_5_n_0\
    );
\usr_irq_in_vec[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFBBBA0000BBBA"
    )
        port map (
      I0 => \usr_irq_in_vec[2]_i_2_n_0\,
      I1 => \usr_irq_in_vec[3]_i_2_n_0\,
      I2 => \usr_irq_in_vec[2]_i_3_n_0\,
      I3 => \usr_irq_in_vec[2]_i_4_n_0\,
      I4 => state(1),
      I5 => usr_irq_in_vld_i_3_n_0,
      O => \usr_irq_in_vec[2]_i_1_n_0\
    );
\usr_irq_in_vec[2]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => usr_irq_req_cdc(13),
      I1 => usr_irq_req_cdc(12),
      I2 => usr_irq_req_cdc(15),
      I3 => usr_irq_req_cdc(14),
      O => \usr_irq_in_vec[2]_i_2_n_0\
    );
\usr_irq_in_vec[2]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => usr_irq_req_cdc(4),
      I1 => usr_irq_req_cdc(5),
      O => \usr_irq_in_vec[2]_i_3_n_0\
    );
\usr_irq_in_vec[2]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => usr_irq_req_cdc(6),
      I1 => usr_irq_req_cdc(7),
      O => \usr_irq_in_vec[2]_i_4_n_0\
    );
\usr_irq_in_vec[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFAFAFAFAFAFAFAC"
    )
        port map (
      I0 => usr_irq_in_vld_i_3_n_0,
      I1 => \usr_irq_in_vec[3]_i_2_n_0\,
      I2 => state(1),
      I3 => \usr_irq_in_vec[3]_i_3_n_0\,
      I4 => usr_irq_req_cdc(15),
      I5 => usr_irq_req_cdc(14),
      O => \usr_irq_in_vec[3]_i_1_n_0\
    );
\usr_irq_in_vec[3]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => usr_irq_req_cdc(9),
      I1 => usr_irq_req_cdc(8),
      I2 => usr_irq_req_cdc(11),
      I3 => usr_irq_req_cdc(10),
      O => \usr_irq_in_vec[3]_i_2_n_0\
    );
\usr_irq_in_vec[3]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => usr_irq_req_cdc(12),
      I1 => usr_irq_req_cdc(13),
      O => \usr_irq_in_vec[3]_i_3_n_0\
    );
\usr_irq_in_vec_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => usr_irq_in_vld_i_1_n_0,
      D => \usr_irq_in_vec[0]_i_1_n_0\,
      Q => \^q\(0),
      R => \usr_irq_ack[15]_i_1_n_0\
    );
\usr_irq_in_vec_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => usr_irq_in_vld_i_1_n_0,
      D => \usr_irq_in_vec[1]_i_1_n_1\,
      Q => \^q\(1),
      R => \usr_irq_ack[15]_i_1_n_0\
    );
\usr_irq_in_vec_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => usr_irq_in_vld_i_1_n_0,
      D => \usr_irq_in_vec[2]_i_1_n_0\,
      Q => \^q\(2),
      R => \usr_irq_ack[15]_i_1_n_0\
    );
\usr_irq_in_vec_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => usr_irq_in_vld_i_1_n_0,
      D => \usr_irq_in_vec[3]_i_1_n_0\,
      Q => \^usr_irq_in_vec_reg[3]_0\,
      R => \usr_irq_ack[15]_i_1_n_0\
    );
\usr_irq_in_vec_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => usr_irq_in_vld_i_1_n_0,
      D => \usr_irq_in_vec[1]_i_1_n_0\,
      Q => \^usr_irq_in_vec_reg[4]_0\,
      R => \usr_irq_ack[15]_i_1_n_0\
    );
usr_irq_in_vld_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"50C0"
    )
        port map (
      I0 => usr_irq_in_vld_i_3_n_0,
      I1 => usr_irq_in_vld_i_4_n_0,
      I2 => state(0),
      I3 => state(1),
      O => usr_irq_in_vld_i_1_n_0
    );
usr_irq_in_vld_i_2: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E2"
    )
        port map (
      I0 => usr_irq_in_vld_i_4_n_0,
      I1 => state(1),
      I2 => usr_irq_in_vld_i_3_n_0,
      O => usr_irq_in_vld_i_2_n_0
    );
usr_irq_in_vld_i_3: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CAFFCAF0CA0FCA00"
    )
        port map (
      I0 => usr_irq_in_vld_i_5_n_0,
      I1 => usr_irq_in_vld_i_6_n_0,
      I2 => \usr_irq_ack_cpy_reg_n_0_[3]\,
      I3 => \usr_irq_ack_cpy_reg_n_0_[2]\,
      I4 => usr_irq_in_vld_i_7_n_0,
      I5 => usr_irq_in_vld_i_8_n_0,
      O => usr_irq_in_vld_i_3_n_0
    );
usr_irq_in_vld_i_4: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFFE"
    )
        port map (
      I0 => \usr_irq_in_vec[1]_i_3_n_0\,
      I1 => \usr_irq_in_vec[2]_i_3_n_0\,
      I2 => \usr_irq_in_vec[3]_i_3_n_0\,
      I3 => \usr_irq_in_vec[3]_i_2_n_0\,
      I4 => usr_irq_req_cdc(1),
      I5 => usr_irq_req_cdc(0),
      O => usr_irq_in_vld_i_4_n_0
    );
usr_irq_in_vld_i_5: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CACAFFF0CACA0F00"
    )
        port map (
      I0 => usr_irq_req_cdc(5),
      I1 => usr_irq_req_cdc(7),
      I2 => \usr_irq_ack_cpy_reg_n_0_[1]\,
      I3 => usr_irq_req_cdc(4),
      I4 => \usr_irq_ack_cpy_reg_n_0_[0]\,
      I5 => usr_irq_req_cdc(6),
      O => usr_irq_in_vld_i_5_n_0
    );
usr_irq_in_vld_i_6: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => usr_irq_req_cdc(15),
      I1 => usr_irq_req_cdc(14),
      I2 => \usr_irq_ack_cpy_reg_n_0_[1]\,
      I3 => usr_irq_req_cdc(13),
      I4 => \usr_irq_ack_cpy_reg_n_0_[0]\,
      I5 => usr_irq_req_cdc(12),
      O => usr_irq_in_vld_i_6_n_0
    );
usr_irq_in_vld_i_7: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => usr_irq_req_cdc(3),
      I1 => usr_irq_req_cdc(2),
      I2 => \usr_irq_ack_cpy_reg_n_0_[1]\,
      I3 => usr_irq_req_cdc(1),
      I4 => \usr_irq_ack_cpy_reg_n_0_[0]\,
      I5 => usr_irq_req_cdc(0),
      O => usr_irq_in_vld_i_7_n_0
    );
usr_irq_in_vld_i_8: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => usr_irq_req_cdc(11),
      I1 => usr_irq_req_cdc(10),
      I2 => \usr_irq_ack_cpy_reg_n_0_[1]\,
      I3 => usr_irq_req_cdc(9),
      I4 => \usr_irq_ack_cpy_reg_n_0_[0]\,
      I5 => usr_irq_req_cdc(8),
      O => usr_irq_in_vld_i_8_n_0
    );
usr_irq_in_vld_reg: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => usr_irq_in_vld_i_1_n_0,
      D => usr_irq_in_vld_i_2_n_0,
      Q => usr_irq_in_vld,
      R => \usr_irq_ack[15]_i_1_n_0\
    );
usr_irq_xpm_cdc: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_cdc_array_single
     port map (
      dest_clk => clk,
      dest_out(15 downto 0) => usr_irq_req_cdc(15 downto 0),
      src_clk => '0',
      src_in(15 downto 0) => usr_irq_req(15 downto 0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
  port (
    clk : in STD_LOGIC;
    rstn : in STD_LOGIC;
    usr_irq_req : in STD_LOGIC_VECTOR ( 15 downto 0 );
    usr_irq_ack : out STD_LOGIC_VECTOR ( 15 downto 0 );
    usr_irq_in_vld : out STD_LOGIC;
    usr_irq_in_vec : out STD_LOGIC_VECTOR ( 4 downto 0 );
    usr_irq_in_fnc : out STD_LOGIC_VECTOR ( 7 downto 0 );
    usr_irq_out_ack : in STD_LOGIC
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "top_qdma_shim_0,qdma_versal_shim,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "yes";
  attribute IP_DEFINITION_SOURCE : string;
  attribute IP_DEFINITION_SOURCE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "package_project";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "qdma_versal_shim,Vivado 2022.2";
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
  signal \^usr_irq_in_vec\ : STD_LOGIC_VECTOR ( 4 downto 0 );
  attribute X_INTERFACE_INFO : string;
  attribute X_INTERFACE_INFO of clk : signal is "xilinx.com:signal:clock:1.0 clk CLK";
  attribute X_INTERFACE_PARAMETER : string;
  attribute X_INTERFACE_PARAMETER of clk : signal is "XIL_INTERFACENAME clk, ASSOCIATED_RESET rstn, FREQ_HZ 250000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN bd_4885_cpm_0_0_pcie0_user_clk, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of rstn : signal is "xilinx.com:signal:reset:1.0 rstn RST";
  attribute X_INTERFACE_PARAMETER of rstn : signal is "XIL_INTERFACENAME rstn, POLARITY ACTIVE_LOW, INSERT_VIP 0";
begin
  usr_irq_in_fnc(7) <= \^usr_irq_in_vec\(4);
  usr_irq_in_fnc(6) <= \^usr_irq_in_vec\(4);
  usr_irq_in_fnc(5) <= \^usr_irq_in_vec\(4);
  usr_irq_in_fnc(4) <= \^usr_irq_in_vec\(4);
  usr_irq_in_fnc(3) <= \^usr_irq_in_vec\(4);
  usr_irq_in_fnc(2) <= \^usr_irq_in_vec\(4);
  usr_irq_in_fnc(1 downto 0) <= \^usr_irq_in_vec\(4 downto 3);
  usr_irq_in_vec(4 downto 0) <= \^usr_irq_in_vec\(4 downto 0);
inst: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_qdma_versal_shim
     port map (
      Q(2 downto 0) => \^usr_irq_in_vec\(2 downto 0),
      clk => clk,
      rstn => rstn,
      usr_irq_ack(15 downto 0) => usr_irq_ack(15 downto 0),
      \usr_irq_in_vec_reg[3]_0\ => \^usr_irq_in_vec\(3),
      \usr_irq_in_vec_reg[4]_0\ => \^usr_irq_in_vec\(4),
      usr_irq_in_vld => usr_irq_in_vld,
      usr_irq_out_ack => usr_irq_out_ack,
      usr_irq_req(15 downto 0) => usr_irq_req(15 downto 0)
    );
end STRUCTURE;
