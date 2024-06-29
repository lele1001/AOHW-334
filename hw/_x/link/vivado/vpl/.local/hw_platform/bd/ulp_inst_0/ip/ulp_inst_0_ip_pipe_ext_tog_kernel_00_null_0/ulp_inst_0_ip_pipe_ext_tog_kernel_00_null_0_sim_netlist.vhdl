-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2022.2 (lin64) Build 3671981 Fri Oct 14 04:59:54 MDT 2022
-- Date        : Mon Dec  5 00:21:39 2022
-- Host        : xsjdcslab02.xilinx.com running 64-bit CentOS Linux release 8.1.1911 (Core)
-- Command     : write_vhdl -force -mode funcsim -rename_top ulp_inst_0_ip_pipe_ext_tog_kernel_00_null_0 -prefix
--               ulp_inst_0_ip_pipe_ext_tog_kernel_00_null_0_ top_ip_aresetn_ext_tog_kernel_00_0_sim_netlist.vhdl
-- Design      : top_ip_aresetn_ext_tog_kernel_00_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xcvc1902-vsvd1760-2MP-e-S
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity ulp_inst_0_ip_pipe_ext_tog_kernel_00_null_0_util_ff_v1_0_1_util_ff is
  port (
    D : in STD_LOGIC_VECTOR ( 0 to 0 );
    clk : in STD_LOGIC;
    set : in STD_LOGIC;
    clear : in STD_LOGIC;
    reset : in STD_LOGIC;
    preset : in STD_LOGIC;
    clk_enable : in STD_LOGIC;
    gate_enable : in STD_LOGIC;
    G : in STD_LOGIC;
    Q : out STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute C_CLR_INVERTED : string;
  attribute C_CLR_INVERTED of ulp_inst_0_ip_pipe_ext_tog_kernel_00_null_0_util_ff_v1_0_1_util_ff : entity is "1'b0";
  attribute C_C_INVERTED : string;
  attribute C_C_INVERTED of ulp_inst_0_ip_pipe_ext_tog_kernel_00_null_0_util_ff_v1_0_1_util_ff : entity is "1'b0";
  attribute C_D_INVERTED : string;
  attribute C_D_INVERTED of ulp_inst_0_ip_pipe_ext_tog_kernel_00_null_0_util_ff_v1_0_1_util_ff : entity is "1'b0";
  attribute C_FF_LEVELS : integer;
  attribute C_FF_LEVELS of ulp_inst_0_ip_pipe_ext_tog_kernel_00_null_0_util_ff_v1_0_1_util_ff : entity is 1;
  attribute C_FF_TYPE : integer;
  attribute C_FF_TYPE of ulp_inst_0_ip_pipe_ext_tog_kernel_00_null_0_util_ff_v1_0_1_util_ff : entity is 1;
  attribute C_G_INVERTED : string;
  attribute C_G_INVERTED of ulp_inst_0_ip_pipe_ext_tog_kernel_00_null_0_util_ff_v1_0_1_util_ff : entity is "1'b0";
  attribute C_INIT : string;
  attribute C_INIT of ulp_inst_0_ip_pipe_ext_tog_kernel_00_null_0_util_ff_v1_0_1_util_ff : entity is "1'b0";
  attribute C_PRE_INVERTED : string;
  attribute C_PRE_INVERTED of ulp_inst_0_ip_pipe_ext_tog_kernel_00_null_0_util_ff_v1_0_1_util_ff : entity is "1'b0";
  attribute C_R_INVERTED : string;
  attribute C_R_INVERTED of ulp_inst_0_ip_pipe_ext_tog_kernel_00_null_0_util_ff_v1_0_1_util_ff : entity is "1'b0";
  attribute C_S_INVERTED : string;
  attribute C_S_INVERTED of ulp_inst_0_ip_pipe_ext_tog_kernel_00_null_0_util_ff_v1_0_1_util_ff : entity is "1'b0";
  attribute C_WIDTH : integer;
  attribute C_WIDTH of ulp_inst_0_ip_pipe_ext_tog_kernel_00_null_0_util_ff_v1_0_1_util_ff : entity is 1;
end ulp_inst_0_ip_pipe_ext_tog_kernel_00_null_0_util_ff_v1_0_1_util_ff;

architecture STRUCTURE of ulp_inst_0_ip_pipe_ext_tog_kernel_00_null_0_util_ff_v1_0_1_util_ff is
  attribute BOX_TYPE : string;
  attribute BOX_TYPE of \FDRE.FDRElp[0].FDRE_inst\ : label is "PRIMITIVE";
begin
\FDRE.FDRElp[0].FDRE_inst\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0',
      IS_R_INVERTED => '0'
    )
        port map (
      C => clk,
      CE => clk_enable,
      D => D(0),
      Q => Q(0),
      R => reset
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity ulp_inst_0_ip_pipe_ext_tog_kernel_00_null_0 is
  port (
    clk : in STD_LOGIC;
    D : in STD_LOGIC_VECTOR ( 0 to 0 );
    Q : out STD_LOGIC_VECTOR ( 0 to 0 );
    reset : in STD_LOGIC;
    clk_enable : in STD_LOGIC
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of ulp_inst_0_ip_pipe_ext_tog_kernel_00_null_0 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of ulp_inst_0_ip_pipe_ext_tog_kernel_00_null_0 : entity is "top_ip_aresetn_ext_tog_kernel_00_0,util_ff_v1_0_1_util_ff,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of ulp_inst_0_ip_pipe_ext_tog_kernel_00_null_0 : entity is "yes";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of ulp_inst_0_ip_pipe_ext_tog_kernel_00_null_0 : entity is "util_ff_v1_0_1_util_ff,Vivado 2022.2";
end ulp_inst_0_ip_pipe_ext_tog_kernel_00_null_0;

architecture STRUCTURE of ulp_inst_0_ip_pipe_ext_tog_kernel_00_null_0 is
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
  attribute C_INIT of inst : label is "1'b0";
  attribute C_PRE_INVERTED : string;
  attribute C_PRE_INVERTED of inst : label is "1'b0";
  attribute C_R_INVERTED : string;
  attribute C_R_INVERTED of inst : label is "1'b0";
  attribute C_S_INVERTED : string;
  attribute C_S_INVERTED of inst : label is "1'b0";
  attribute C_WIDTH : integer;
  attribute C_WIDTH of inst : label is 1;
  attribute X_INTERFACE_INFO : string;
  attribute X_INTERFACE_INFO of clk : signal is "xilinx.com:signal:clock:1.0 clk CLK";
  attribute X_INTERFACE_PARAMETER : string;
  attribute X_INTERFACE_PARAMETER of clk : signal is "XIL_INTERFACENAME clk, FREQ_HZ 299996999, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN cd_aclk_ext_tog_kernel_00, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of reset : signal is "xilinx.com:signal:reset:1.0 reset RST";
  attribute X_INTERFACE_PARAMETER of reset : signal is "XIL_INTERFACENAME reset, POLARITY ACTIVE_LOW, INSERT_VIP 0";
begin
inst: entity work.ulp_inst_0_ip_pipe_ext_tog_kernel_00_null_0_util_ff_v1_0_1_util_ff
     port map (
      D(0) => D(0),
      G => '0',
      Q(0) => Q(0),
      clear => '0',
      clk => clk,
      clk_enable => clk_enable,
      gate_enable => '1',
      preset => '0',
      reset => reset,
      set => '0'
    );
end STRUCTURE;
