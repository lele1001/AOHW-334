-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2022.2 (lin64) Build 3671981 Fri Oct 14 04:59:54 MDT 2022
-- Date        : Mon Dec  5 00:18:09 2022
-- Host        : xsjdcslab02.xilinx.com running 64-bit CentOS Linux release 8.1.1911 (Core)
-- Command     : write_vhdl -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
--               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ top_flr_function_ff_0_sim_netlist.vhdl
-- Design      : top_flr_function_ff_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xcvc1902-vsvd1760-2MP-e-S
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_util_ff_v1_0_1_util_ff is
  port (
    D : in STD_LOGIC_VECTOR ( 7 downto 0 );
    clk : in STD_LOGIC;
    set : in STD_LOGIC;
    clear : in STD_LOGIC;
    reset : in STD_LOGIC;
    preset : in STD_LOGIC;
    clk_enable : in STD_LOGIC;
    gate_enable : in STD_LOGIC;
    G : in STD_LOGIC;
    Q : out STD_LOGIC_VECTOR ( 7 downto 0 )
  );
  attribute C_CLR_INVERTED : string;
  attribute C_CLR_INVERTED of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_util_ff_v1_0_1_util_ff : entity is "1'b0";
  attribute C_C_INVERTED : string;
  attribute C_C_INVERTED of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_util_ff_v1_0_1_util_ff : entity is "1'b0";
  attribute C_D_INVERTED : string;
  attribute C_D_INVERTED of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_util_ff_v1_0_1_util_ff : entity is "1'b0";
  attribute C_FF_LEVELS : integer;
  attribute C_FF_LEVELS of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_util_ff_v1_0_1_util_ff : entity is 1;
  attribute C_FF_TYPE : integer;
  attribute C_FF_TYPE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_util_ff_v1_0_1_util_ff : entity is 1;
  attribute C_G_INVERTED : string;
  attribute C_G_INVERTED of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_util_ff_v1_0_1_util_ff : entity is "1'b0";
  attribute C_INIT : string;
  attribute C_INIT of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_util_ff_v1_0_1_util_ff : entity is "8'b00000000";
  attribute C_PRE_INVERTED : string;
  attribute C_PRE_INVERTED of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_util_ff_v1_0_1_util_ff : entity is "1'b0";
  attribute C_R_INVERTED : string;
  attribute C_R_INVERTED of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_util_ff_v1_0_1_util_ff : entity is "1'b1";
  attribute C_S_INVERTED : string;
  attribute C_S_INVERTED of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_util_ff_v1_0_1_util_ff : entity is "1'b0";
  attribute C_WIDTH : integer;
  attribute C_WIDTH of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_util_ff_v1_0_1_util_ff : entity is 8;
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_util_ff_v1_0_1_util_ff;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_util_ff_v1_0_1_util_ff is
  attribute BOX_TYPE : string;
  attribute BOX_TYPE of \FDRE.FDRElp[0].FDRE_inst\ : label is "PRIMITIVE";
  attribute BOX_TYPE of \FDRE.FDRElp[1].FDRE_inst\ : label is "PRIMITIVE";
  attribute BOX_TYPE of \FDRE.FDRElp[2].FDRE_inst\ : label is "PRIMITIVE";
  attribute BOX_TYPE of \FDRE.FDRElp[3].FDRE_inst\ : label is "PRIMITIVE";
  attribute BOX_TYPE of \FDRE.FDRElp[4].FDRE_inst\ : label is "PRIMITIVE";
  attribute BOX_TYPE of \FDRE.FDRElp[5].FDRE_inst\ : label is "PRIMITIVE";
  attribute BOX_TYPE of \FDRE.FDRElp[6].FDRE_inst\ : label is "PRIMITIVE";
  attribute BOX_TYPE of \FDRE.FDRElp[7].FDRE_inst\ : label is "PRIMITIVE";
begin
\FDRE.FDRElp[0].FDRE_inst\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0',
      IS_R_INVERTED => '1'
    )
        port map (
      C => clk,
      CE => clk_enable,
      D => D(0),
      Q => Q(0),
      R => reset
    );
\FDRE.FDRElp[1].FDRE_inst\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0',
      IS_R_INVERTED => '1'
    )
        port map (
      C => clk,
      CE => clk_enable,
      D => D(1),
      Q => Q(1),
      R => reset
    );
\FDRE.FDRElp[2].FDRE_inst\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0',
      IS_R_INVERTED => '1'
    )
        port map (
      C => clk,
      CE => clk_enable,
      D => D(2),
      Q => Q(2),
      R => reset
    );
\FDRE.FDRElp[3].FDRE_inst\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0',
      IS_R_INVERTED => '1'
    )
        port map (
      C => clk,
      CE => clk_enable,
      D => D(3),
      Q => Q(3),
      R => reset
    );
\FDRE.FDRElp[4].FDRE_inst\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0',
      IS_R_INVERTED => '1'
    )
        port map (
      C => clk,
      CE => clk_enable,
      D => D(4),
      Q => Q(4),
      R => reset
    );
\FDRE.FDRElp[5].FDRE_inst\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0',
      IS_R_INVERTED => '1'
    )
        port map (
      C => clk,
      CE => clk_enable,
      D => D(5),
      Q => Q(5),
      R => reset
    );
\FDRE.FDRElp[6].FDRE_inst\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0',
      IS_R_INVERTED => '1'
    )
        port map (
      C => clk,
      CE => clk_enable,
      D => D(6),
      Q => Q(6),
      R => reset
    );
\FDRE.FDRElp[7].FDRE_inst\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0',
      IS_R_INVERTED => '1'
    )
        port map (
      C => clk,
      CE => clk_enable,
      D => D(7),
      Q => Q(7),
      R => reset
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
  port (
    clk : in STD_LOGIC;
    D : in STD_LOGIC_VECTOR ( 7 downto 0 );
    Q : out STD_LOGIC_VECTOR ( 7 downto 0 );
    reset : in STD_LOGIC;
    clk_enable : in STD_LOGIC
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "top_flr_function_ff_0,util_ff_v1_0_1_util_ff,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "yes";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "util_ff_v1_0_1_util_ff,Vivado 2022.2";
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
  attribute C_CLR_INVERTED : string;
  attribute C_CLR_INVERTED of inst : label is "1'b0";
  attribute C_C_INVERTED : string;
  attribute C_C_INVERTED of inst : label is "1'b0";
  attribute C_D_INVERTED : string;
  attribute C_D_INVERTED of inst : label is "1'b0";
  attribute C_FF_LEVELS : integer;
  attribute C_FF_LEVELS of inst : label is 1;
  attribute C_FF_TYPE : integer;
  attribute C_FF_TYPE of inst : label is 1;
  attribute C_G_INVERTED : string;
  attribute C_G_INVERTED of inst : label is "1'b0";
  attribute C_INIT : string;
  attribute C_INIT of inst : label is "8'b00000000";
  attribute C_PRE_INVERTED : string;
  attribute C_PRE_INVERTED of inst : label is "1'b0";
  attribute C_R_INVERTED : string;
  attribute C_R_INVERTED of inst : label is "1'b1";
  attribute C_S_INVERTED : string;
  attribute C_S_INVERTED of inst : label is "1'b0";
  attribute C_WIDTH : integer;
  attribute C_WIDTH of inst : label is 8;
  attribute X_INTERFACE_INFO : string;
  attribute X_INTERFACE_INFO of clk : signal is "xilinx.com:signal:clock:1.0 clk CLK";
  attribute X_INTERFACE_PARAMETER : string;
  attribute X_INTERFACE_PARAMETER of clk : signal is "XIL_INTERFACENAME clk, FREQ_HZ 250000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN bd_4885_cpm_0_0_pcie0_user_clk, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of reset : signal is "xilinx.com:signal:reset:1.0 reset RST";
  attribute X_INTERFACE_PARAMETER of reset : signal is "XIL_INTERFACENAME reset, POLARITY ACTIVE_LOW, INSERT_VIP 0";
begin
inst: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_util_ff_v1_0_1_util_ff
     port map (
      D(7 downto 0) => D(7 downto 0),
      G => '0',
      Q(7 downto 0) => Q(7 downto 0),
      clear => '0',
      clk => clk,
      clk_enable => clk_enable,
      gate_enable => '1',
      preset => '0',
      reset => reset,
      set => '0'
    );
end STRUCTURE;
