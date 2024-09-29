-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2022.2 (lin64) Build 3671981 Fri Oct 14 04:59:54 MDT 2022
-- Date        : Mon Dec  5 00:28:09 2022
-- Host        : xsjdcslab02.xilinx.com running 64-bit CentOS Linux release 8.1.1911 (Core)
-- Command     : write_vhdl -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
--               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ top_uuid_rom_0_sim_netlist.vhdl
-- Design      : top_uuid_rom_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xcvc1902-vsvd1760-2MP-e-S
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_address_decoder is
  port (
    Bus_RNW_reg_reg_fret_0 : out STD_LOGIC_VECTOR ( 0 to 0 );
    ena : out STD_LOGIC;
    \INCLUDE_DPHASE_TIMER.dpto_cnt_reg[2]\ : out STD_LOGIC;
    S_AXI_ACLK : in STD_LOGIC;
    bus2ip_rnw_i : in STD_LOGIC;
    start2 : in STD_LOGIC;
    S_AXI_ARESETN : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXI_ARREADY : in STD_LOGIC
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_address_decoder;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_address_decoder is
  signal Bus_RNW_reg : STD_LOGIC;
  signal Bus_RNW_reg_i_1_n_0 : STD_LOGIC;
  signal \GEN_BKEND_CE_REGISTERS[0].ce_out_i[0]_i_1_n_0\ : STD_LOGIC;
  signal \^include_dphase_timer.dpto_cnt_reg[2]\ : STD_LOGIC;
  signal \MEM_DECODE_GEN[0].cs_out_i[0]_i_1_n_0\ : STD_LOGIC;
  signal ce_out_i : STD_LOGIC;
  signal \^ena\ : STD_LOGIC;
  signal wea : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \GEN_BKEND_CE_REGISTERS[0].ce_out_i[0]_i_1\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \MEM_DECODE_GEN[0].cs_out_i[0]_i_1\ : label is "soft_lutpair0";
begin
  \INCLUDE_DPHASE_TIMER.dpto_cnt_reg[2]\ <= \^include_dphase_timer.dpto_cnt_reg[2]\;
  ena <= \^ena\;
Bus_RNW_reg_fret_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000047440000"
    )
        port map (
      I0 => bus2ip_rnw_i,
      I1 => start2,
      I2 => Bus_RNW_reg,
      I3 => ce_out_i,
      I4 => S_AXI_ARESETN,
      I5 => \^include_dphase_timer.dpto_cnt_reg[2]\,
      O => wea
    );
Bus_RNW_reg_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => bus2ip_rnw_i,
      I1 => start2,
      I2 => Bus_RNW_reg,
      O => Bus_RNW_reg_i_1_n_0
    );
Bus_RNW_reg_reg: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => '1',
      D => Bus_RNW_reg_i_1_n_0,
      Q => Bus_RNW_reg,
      R => '0'
    );
Bus_RNW_reg_reg_fret: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => '1',
      D => wea,
      Q => Bus_RNW_reg_reg_fret_0(0),
      R => '0'
    );
\GEN_BKEND_CE_REGISTERS[0].ce_out_i[0]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00E0"
    )
        port map (
      I0 => ce_out_i,
      I1 => start2,
      I2 => S_AXI_ARESETN,
      I3 => \^include_dphase_timer.dpto_cnt_reg[2]\,
      O => \GEN_BKEND_CE_REGISTERS[0].ce_out_i[0]_i_1_n_0\
    );
\GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => '1',
      D => \GEN_BKEND_CE_REGISTERS[0].ce_out_i[0]_i_1_n_0\,
      Q => ce_out_i,
      R => '0'
    );
\MEM_DECODE_GEN[0].cs_out_i[0]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00E0"
    )
        port map (
      I0 => \^ena\,
      I1 => start2,
      I2 => S_AXI_ARESETN,
      I3 => \^include_dphase_timer.dpto_cnt_reg[2]\,
      O => \MEM_DECODE_GEN[0].cs_out_i[0]_i_1_n_0\
    );
\MEM_DECODE_GEN[0].cs_out_i_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => '1',
      D => \MEM_DECODE_GEN[0].cs_out_i[0]_i_1_n_0\,
      Q => \^ena\,
      R => '0'
    );
S_AXI_ARREADY_INST_0: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4000"
    )
        port map (
      I0 => Q(2),
      I1 => Q(0),
      I2 => Q(1),
      I3 => S_AXI_ARREADY,
      O => \^include_dphase_timer.dpto_cnt_reg[2]\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_memory_base is
  port (
    sleep : in STD_LOGIC;
    clka : in STD_LOGIC;
    rsta : in STD_LOGIC;
    ena : in STD_LOGIC;
    regcea : in STD_LOGIC;
    wea : in STD_LOGIC_VECTOR ( 0 to 0 );
    addra : in STD_LOGIC_VECTOR ( 1 downto 0 );
    dina : in STD_LOGIC_VECTOR ( 31 downto 0 );
    injectsbiterra : in STD_LOGIC;
    injectdbiterra : in STD_LOGIC;
    douta : out STD_LOGIC_VECTOR ( 31 downto 0 );
    sbiterra : out STD_LOGIC;
    dbiterra : out STD_LOGIC;
    clkb : in STD_LOGIC;
    rstb : in STD_LOGIC;
    enb : in STD_LOGIC;
    regceb : in STD_LOGIC;
    web : in STD_LOGIC_VECTOR ( 0 to 0 );
    addrb : in STD_LOGIC_VECTOR ( 1 downto 0 );
    dinb : in STD_LOGIC_VECTOR ( 31 downto 0 );
    injectsbiterrb : in STD_LOGIC;
    injectdbiterrb : in STD_LOGIC;
    doutb : out STD_LOGIC_VECTOR ( 31 downto 0 );
    sbiterrb : out STD_LOGIC;
    dbiterrb : out STD_LOGIC
  );
  attribute ADDR_WIDTH_A : integer;
  attribute ADDR_WIDTH_A of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_memory_base : entity is 2;
  attribute ADDR_WIDTH_B : integer;
  attribute ADDR_WIDTH_B of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_memory_base : entity is 2;
  attribute AUTO_SLEEP_TIME : integer;
  attribute AUTO_SLEEP_TIME of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_memory_base : entity is 0;
  attribute BYTE_WRITE_WIDTH_A : integer;
  attribute BYTE_WRITE_WIDTH_A of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_memory_base : entity is 32;
  attribute BYTE_WRITE_WIDTH_B : integer;
  attribute BYTE_WRITE_WIDTH_B of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_memory_base : entity is 32;
  attribute CASCADE_HEIGHT : integer;
  attribute CASCADE_HEIGHT of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_memory_base : entity is 0;
  attribute CLOCKING_MODE : integer;
  attribute CLOCKING_MODE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_memory_base : entity is 0;
  attribute ECC_BIT_RANGE : string;
  attribute ECC_BIT_RANGE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_memory_base : entity is "[7:0]";
  attribute ECC_MODE : integer;
  attribute ECC_MODE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_memory_base : entity is 0;
  attribute ECC_TYPE : string;
  attribute ECC_TYPE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_memory_base : entity is "NONE";
  attribute IGNORE_INIT_SYNTH : integer;
  attribute IGNORE_INIT_SYNTH of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_memory_base : entity is 0;
  attribute MAX_NUM_CHAR : integer;
  attribute MAX_NUM_CHAR of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_memory_base : entity is 0;
  attribute MEMORY_INIT_FILE : string;
  attribute MEMORY_INIT_FILE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_memory_base : entity is "none";
  attribute MEMORY_INIT_PARAM : string;
  attribute MEMORY_INIT_PARAM of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_memory_base : entity is "0";
  attribute MEMORY_OPTIMIZATION : string;
  attribute MEMORY_OPTIMIZATION of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_memory_base : entity is "true";
  attribute MEMORY_PRIMITIVE : integer;
  attribute MEMORY_PRIMITIVE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_memory_base : entity is 1;
  attribute MEMORY_SIZE : integer;
  attribute MEMORY_SIZE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_memory_base : entity is 128;
  attribute MEMORY_TYPE : integer;
  attribute MEMORY_TYPE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_memory_base : entity is 0;
  attribute MESSAGE_CONTROL : integer;
  attribute MESSAGE_CONTROL of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_memory_base : entity is 0;
  attribute NUM_CHAR_LOC : integer;
  attribute NUM_CHAR_LOC of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_memory_base : entity is 0;
  attribute P_ECC_MODE : string;
  attribute P_ECC_MODE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_memory_base : entity is "no_ecc";
  attribute P_ENABLE_BYTE_WRITE_A : integer;
  attribute P_ENABLE_BYTE_WRITE_A of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_memory_base : entity is 0;
  attribute P_ENABLE_BYTE_WRITE_B : integer;
  attribute P_ENABLE_BYTE_WRITE_B of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_memory_base : entity is 0;
  attribute P_MAX_DEPTH_DATA : integer;
  attribute P_MAX_DEPTH_DATA of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_memory_base : entity is 4;
  attribute P_MEMORY_OPT : string;
  attribute P_MEMORY_OPT of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_memory_base : entity is "yes";
  attribute P_MEMORY_PRIMITIVE : string;
  attribute P_MEMORY_PRIMITIVE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_memory_base : entity is "distributed";
  attribute P_MIN_WIDTH_DATA : integer;
  attribute P_MIN_WIDTH_DATA of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_memory_base : entity is 32;
  attribute P_MIN_WIDTH_DATA_A : integer;
  attribute P_MIN_WIDTH_DATA_A of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_memory_base : entity is 32;
  attribute P_MIN_WIDTH_DATA_B : integer;
  attribute P_MIN_WIDTH_DATA_B of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_memory_base : entity is 32;
  attribute P_MIN_WIDTH_DATA_ECC : integer;
  attribute P_MIN_WIDTH_DATA_ECC of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_memory_base : entity is 32;
  attribute P_MIN_WIDTH_DATA_LDW : integer;
  attribute P_MIN_WIDTH_DATA_LDW of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_memory_base : entity is 4;
  attribute P_MIN_WIDTH_DATA_SHFT : integer;
  attribute P_MIN_WIDTH_DATA_SHFT of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_memory_base : entity is 32;
  attribute P_NUM_COLS_WRITE_A : integer;
  attribute P_NUM_COLS_WRITE_A of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_memory_base : entity is 1;
  attribute P_NUM_COLS_WRITE_B : integer;
  attribute P_NUM_COLS_WRITE_B of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_memory_base : entity is 1;
  attribute P_NUM_ROWS_READ_A : integer;
  attribute P_NUM_ROWS_READ_A of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_memory_base : entity is 1;
  attribute P_NUM_ROWS_READ_B : integer;
  attribute P_NUM_ROWS_READ_B of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_memory_base : entity is 1;
  attribute P_NUM_ROWS_WRITE_A : integer;
  attribute P_NUM_ROWS_WRITE_A of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_memory_base : entity is 1;
  attribute P_NUM_ROWS_WRITE_B : integer;
  attribute P_NUM_ROWS_WRITE_B of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_memory_base : entity is 1;
  attribute P_SDP_WRITE_MODE : string;
  attribute P_SDP_WRITE_MODE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_memory_base : entity is "yes";
  attribute P_WIDTH_ADDR_LSB_READ_A : integer;
  attribute P_WIDTH_ADDR_LSB_READ_A of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_memory_base : entity is 0;
  attribute P_WIDTH_ADDR_LSB_READ_B : integer;
  attribute P_WIDTH_ADDR_LSB_READ_B of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_memory_base : entity is 0;
  attribute P_WIDTH_ADDR_LSB_WRITE_A : integer;
  attribute P_WIDTH_ADDR_LSB_WRITE_A of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_memory_base : entity is 0;
  attribute P_WIDTH_ADDR_LSB_WRITE_B : integer;
  attribute P_WIDTH_ADDR_LSB_WRITE_B of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_memory_base : entity is 0;
  attribute P_WIDTH_ADDR_READ_A : integer;
  attribute P_WIDTH_ADDR_READ_A of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_memory_base : entity is 2;
  attribute P_WIDTH_ADDR_READ_B : integer;
  attribute P_WIDTH_ADDR_READ_B of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_memory_base : entity is 2;
  attribute P_WIDTH_ADDR_WRITE_A : integer;
  attribute P_WIDTH_ADDR_WRITE_A of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_memory_base : entity is 2;
  attribute P_WIDTH_ADDR_WRITE_B : integer;
  attribute P_WIDTH_ADDR_WRITE_B of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_memory_base : entity is 2;
  attribute P_WIDTH_COL_WRITE_A : integer;
  attribute P_WIDTH_COL_WRITE_A of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_memory_base : entity is 32;
  attribute P_WIDTH_COL_WRITE_B : integer;
  attribute P_WIDTH_COL_WRITE_B of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_memory_base : entity is 32;
  attribute READ_DATA_WIDTH_A : integer;
  attribute READ_DATA_WIDTH_A of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_memory_base : entity is 32;
  attribute READ_DATA_WIDTH_B : integer;
  attribute READ_DATA_WIDTH_B of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_memory_base : entity is 32;
  attribute READ_LATENCY_A : integer;
  attribute READ_LATENCY_A of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_memory_base : entity is 1;
  attribute READ_LATENCY_B : integer;
  attribute READ_LATENCY_B of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_memory_base : entity is 1;
  attribute READ_RESET_VALUE_A : string;
  attribute READ_RESET_VALUE_A of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_memory_base : entity is "0";
  attribute READ_RESET_VALUE_B : string;
  attribute READ_RESET_VALUE_B of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_memory_base : entity is "0";
  attribute RST_MODE_A : string;
  attribute RST_MODE_A of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_memory_base : entity is "SYNC";
  attribute RST_MODE_B : string;
  attribute RST_MODE_B of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_memory_base : entity is "SYNC";
  attribute SIM_ASSERT_CHK : integer;
  attribute SIM_ASSERT_CHK of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_memory_base : entity is 0;
  attribute USE_EMBEDDED_CONSTRAINT : integer;
  attribute USE_EMBEDDED_CONSTRAINT of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_memory_base : entity is 0;
  attribute USE_MEM_INIT : integer;
  attribute USE_MEM_INIT of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_memory_base : entity is 1;
  attribute USE_MEM_INIT_MMI : integer;
  attribute USE_MEM_INIT_MMI of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_memory_base : entity is 0;
  attribute VERSION : integer;
  attribute VERSION of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_memory_base : entity is 0;
  attribute WAKEUP_TIME : integer;
  attribute WAKEUP_TIME of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_memory_base : entity is 0;
  attribute WRITE_DATA_WIDTH_A : integer;
  attribute WRITE_DATA_WIDTH_A of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_memory_base : entity is 32;
  attribute WRITE_DATA_WIDTH_B : integer;
  attribute WRITE_DATA_WIDTH_B of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_memory_base : entity is 32;
  attribute WRITE_MODE_A : integer;
  attribute WRITE_MODE_A of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_memory_base : entity is 1;
  attribute WRITE_MODE_B : integer;
  attribute WRITE_MODE_B of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_memory_base : entity is 1;
  attribute WRITE_PROTECT : integer;
  attribute WRITE_PROTECT of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_memory_base : entity is 1;
  attribute XPM_MODULE : string;
  attribute XPM_MODULE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_memory_base : entity is "TRUE";
  attribute keep_hierarchy : string;
  attribute keep_hierarchy of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_memory_base : entity is "soft";
  attribute rsta_loop_iter : integer;
  attribute rsta_loop_iter of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_memory_base : entity is 32;
  attribute rstb_loop_iter : integer;
  attribute rstb_loop_iter of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_memory_base : entity is 32;
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_memory_base;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_memory_base is
  signal \<const0>\ : STD_LOGIC;
  signal \gen_rd_a.gen_rd_a_synth_template.gen_rf_narrow_reg.douta_reg_reg0\ : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal p_0_in : STD_LOGIC;
  attribute RTL_RAM_BITS : integer;
  attribute RTL_RAM_BITS of \gen_wr_a.gen_word_narrow.mem_reg_0_3_0_0\ : label is 128;
  attribute RTL_RAM_NAME : string;
  attribute RTL_RAM_NAME of \gen_wr_a.gen_word_narrow.mem_reg_0_3_0_0\ : label is "gen_wr_a.gen_word_narrow.mem_reg";
  attribute RTL_RAM_TYPE : string;
  attribute RTL_RAM_TYPE of \gen_wr_a.gen_word_narrow.mem_reg_0_3_0_0\ : label is "RAM_SP";
  attribute XILINX_LEGACY_PRIM : string;
  attribute XILINX_LEGACY_PRIM of \gen_wr_a.gen_word_narrow.mem_reg_0_3_0_0\ : label is "RAM16X1S";
  attribute XILINX_TRANSFORM_PINMAP : string;
  attribute XILINX_TRANSFORM_PINMAP of \gen_wr_a.gen_word_narrow.mem_reg_0_3_0_0\ : label is "GND:A4";
  attribute ram_addr_begin : integer;
  attribute ram_addr_begin of \gen_wr_a.gen_word_narrow.mem_reg_0_3_0_0\ : label is 0;
  attribute ram_addr_end : integer;
  attribute ram_addr_end of \gen_wr_a.gen_word_narrow.mem_reg_0_3_0_0\ : label is 3;
  attribute ram_offset : integer;
  attribute ram_offset of \gen_wr_a.gen_word_narrow.mem_reg_0_3_0_0\ : label is 0;
  attribute ram_slice_begin : integer;
  attribute ram_slice_begin of \gen_wr_a.gen_word_narrow.mem_reg_0_3_0_0\ : label is 0;
  attribute ram_slice_end : integer;
  attribute ram_slice_end of \gen_wr_a.gen_word_narrow.mem_reg_0_3_0_0\ : label is 0;
  attribute RTL_RAM_BITS of \gen_wr_a.gen_word_narrow.mem_reg_0_3_10_10\ : label is 128;
  attribute RTL_RAM_NAME of \gen_wr_a.gen_word_narrow.mem_reg_0_3_10_10\ : label is "gen_wr_a.gen_word_narrow.mem_reg";
  attribute RTL_RAM_TYPE of \gen_wr_a.gen_word_narrow.mem_reg_0_3_10_10\ : label is "RAM_SP";
  attribute XILINX_LEGACY_PRIM of \gen_wr_a.gen_word_narrow.mem_reg_0_3_10_10\ : label is "RAM16X1S";
  attribute XILINX_TRANSFORM_PINMAP of \gen_wr_a.gen_word_narrow.mem_reg_0_3_10_10\ : label is "GND:A4";
  attribute ram_addr_begin of \gen_wr_a.gen_word_narrow.mem_reg_0_3_10_10\ : label is 0;
  attribute ram_addr_end of \gen_wr_a.gen_word_narrow.mem_reg_0_3_10_10\ : label is 3;
  attribute ram_offset of \gen_wr_a.gen_word_narrow.mem_reg_0_3_10_10\ : label is 0;
  attribute ram_slice_begin of \gen_wr_a.gen_word_narrow.mem_reg_0_3_10_10\ : label is 10;
  attribute ram_slice_end of \gen_wr_a.gen_word_narrow.mem_reg_0_3_10_10\ : label is 10;
  attribute RTL_RAM_BITS of \gen_wr_a.gen_word_narrow.mem_reg_0_3_11_11\ : label is 128;
  attribute RTL_RAM_NAME of \gen_wr_a.gen_word_narrow.mem_reg_0_3_11_11\ : label is "gen_wr_a.gen_word_narrow.mem_reg";
  attribute RTL_RAM_TYPE of \gen_wr_a.gen_word_narrow.mem_reg_0_3_11_11\ : label is "RAM_SP";
  attribute XILINX_LEGACY_PRIM of \gen_wr_a.gen_word_narrow.mem_reg_0_3_11_11\ : label is "RAM16X1S";
  attribute XILINX_TRANSFORM_PINMAP of \gen_wr_a.gen_word_narrow.mem_reg_0_3_11_11\ : label is "GND:A4";
  attribute ram_addr_begin of \gen_wr_a.gen_word_narrow.mem_reg_0_3_11_11\ : label is 0;
  attribute ram_addr_end of \gen_wr_a.gen_word_narrow.mem_reg_0_3_11_11\ : label is 3;
  attribute ram_offset of \gen_wr_a.gen_word_narrow.mem_reg_0_3_11_11\ : label is 0;
  attribute ram_slice_begin of \gen_wr_a.gen_word_narrow.mem_reg_0_3_11_11\ : label is 11;
  attribute ram_slice_end of \gen_wr_a.gen_word_narrow.mem_reg_0_3_11_11\ : label is 11;
  attribute RTL_RAM_BITS of \gen_wr_a.gen_word_narrow.mem_reg_0_3_12_12\ : label is 128;
  attribute RTL_RAM_NAME of \gen_wr_a.gen_word_narrow.mem_reg_0_3_12_12\ : label is "gen_wr_a.gen_word_narrow.mem_reg";
  attribute RTL_RAM_TYPE of \gen_wr_a.gen_word_narrow.mem_reg_0_3_12_12\ : label is "RAM_SP";
  attribute XILINX_LEGACY_PRIM of \gen_wr_a.gen_word_narrow.mem_reg_0_3_12_12\ : label is "RAM16X1S";
  attribute XILINX_TRANSFORM_PINMAP of \gen_wr_a.gen_word_narrow.mem_reg_0_3_12_12\ : label is "GND:A4";
  attribute ram_addr_begin of \gen_wr_a.gen_word_narrow.mem_reg_0_3_12_12\ : label is 0;
  attribute ram_addr_end of \gen_wr_a.gen_word_narrow.mem_reg_0_3_12_12\ : label is 3;
  attribute ram_offset of \gen_wr_a.gen_word_narrow.mem_reg_0_3_12_12\ : label is 0;
  attribute ram_slice_begin of \gen_wr_a.gen_word_narrow.mem_reg_0_3_12_12\ : label is 12;
  attribute ram_slice_end of \gen_wr_a.gen_word_narrow.mem_reg_0_3_12_12\ : label is 12;
  attribute RTL_RAM_BITS of \gen_wr_a.gen_word_narrow.mem_reg_0_3_13_13\ : label is 128;
  attribute RTL_RAM_NAME of \gen_wr_a.gen_word_narrow.mem_reg_0_3_13_13\ : label is "gen_wr_a.gen_word_narrow.mem_reg";
  attribute RTL_RAM_TYPE of \gen_wr_a.gen_word_narrow.mem_reg_0_3_13_13\ : label is "RAM_SP";
  attribute XILINX_LEGACY_PRIM of \gen_wr_a.gen_word_narrow.mem_reg_0_3_13_13\ : label is "RAM16X1S";
  attribute XILINX_TRANSFORM_PINMAP of \gen_wr_a.gen_word_narrow.mem_reg_0_3_13_13\ : label is "GND:A4";
  attribute ram_addr_begin of \gen_wr_a.gen_word_narrow.mem_reg_0_3_13_13\ : label is 0;
  attribute ram_addr_end of \gen_wr_a.gen_word_narrow.mem_reg_0_3_13_13\ : label is 3;
  attribute ram_offset of \gen_wr_a.gen_word_narrow.mem_reg_0_3_13_13\ : label is 0;
  attribute ram_slice_begin of \gen_wr_a.gen_word_narrow.mem_reg_0_3_13_13\ : label is 13;
  attribute ram_slice_end of \gen_wr_a.gen_word_narrow.mem_reg_0_3_13_13\ : label is 13;
  attribute RTL_RAM_BITS of \gen_wr_a.gen_word_narrow.mem_reg_0_3_14_14\ : label is 128;
  attribute RTL_RAM_NAME of \gen_wr_a.gen_word_narrow.mem_reg_0_3_14_14\ : label is "gen_wr_a.gen_word_narrow.mem_reg";
  attribute RTL_RAM_TYPE of \gen_wr_a.gen_word_narrow.mem_reg_0_3_14_14\ : label is "RAM_SP";
  attribute XILINX_LEGACY_PRIM of \gen_wr_a.gen_word_narrow.mem_reg_0_3_14_14\ : label is "RAM16X1S";
  attribute XILINX_TRANSFORM_PINMAP of \gen_wr_a.gen_word_narrow.mem_reg_0_3_14_14\ : label is "GND:A4";
  attribute ram_addr_begin of \gen_wr_a.gen_word_narrow.mem_reg_0_3_14_14\ : label is 0;
  attribute ram_addr_end of \gen_wr_a.gen_word_narrow.mem_reg_0_3_14_14\ : label is 3;
  attribute ram_offset of \gen_wr_a.gen_word_narrow.mem_reg_0_3_14_14\ : label is 0;
  attribute ram_slice_begin of \gen_wr_a.gen_word_narrow.mem_reg_0_3_14_14\ : label is 14;
  attribute ram_slice_end of \gen_wr_a.gen_word_narrow.mem_reg_0_3_14_14\ : label is 14;
  attribute RTL_RAM_BITS of \gen_wr_a.gen_word_narrow.mem_reg_0_3_15_15\ : label is 128;
  attribute RTL_RAM_NAME of \gen_wr_a.gen_word_narrow.mem_reg_0_3_15_15\ : label is "gen_wr_a.gen_word_narrow.mem_reg";
  attribute RTL_RAM_TYPE of \gen_wr_a.gen_word_narrow.mem_reg_0_3_15_15\ : label is "RAM_SP";
  attribute XILINX_LEGACY_PRIM of \gen_wr_a.gen_word_narrow.mem_reg_0_3_15_15\ : label is "RAM16X1S";
  attribute XILINX_TRANSFORM_PINMAP of \gen_wr_a.gen_word_narrow.mem_reg_0_3_15_15\ : label is "GND:A4";
  attribute ram_addr_begin of \gen_wr_a.gen_word_narrow.mem_reg_0_3_15_15\ : label is 0;
  attribute ram_addr_end of \gen_wr_a.gen_word_narrow.mem_reg_0_3_15_15\ : label is 3;
  attribute ram_offset of \gen_wr_a.gen_word_narrow.mem_reg_0_3_15_15\ : label is 0;
  attribute ram_slice_begin of \gen_wr_a.gen_word_narrow.mem_reg_0_3_15_15\ : label is 15;
  attribute ram_slice_end of \gen_wr_a.gen_word_narrow.mem_reg_0_3_15_15\ : label is 15;
  attribute RTL_RAM_BITS of \gen_wr_a.gen_word_narrow.mem_reg_0_3_16_16\ : label is 128;
  attribute RTL_RAM_NAME of \gen_wr_a.gen_word_narrow.mem_reg_0_3_16_16\ : label is "gen_wr_a.gen_word_narrow.mem_reg";
  attribute RTL_RAM_TYPE of \gen_wr_a.gen_word_narrow.mem_reg_0_3_16_16\ : label is "RAM_SP";
  attribute XILINX_LEGACY_PRIM of \gen_wr_a.gen_word_narrow.mem_reg_0_3_16_16\ : label is "RAM16X1S";
  attribute XILINX_TRANSFORM_PINMAP of \gen_wr_a.gen_word_narrow.mem_reg_0_3_16_16\ : label is "GND:A4";
  attribute ram_addr_begin of \gen_wr_a.gen_word_narrow.mem_reg_0_3_16_16\ : label is 0;
  attribute ram_addr_end of \gen_wr_a.gen_word_narrow.mem_reg_0_3_16_16\ : label is 3;
  attribute ram_offset of \gen_wr_a.gen_word_narrow.mem_reg_0_3_16_16\ : label is 0;
  attribute ram_slice_begin of \gen_wr_a.gen_word_narrow.mem_reg_0_3_16_16\ : label is 16;
  attribute ram_slice_end of \gen_wr_a.gen_word_narrow.mem_reg_0_3_16_16\ : label is 16;
  attribute RTL_RAM_BITS of \gen_wr_a.gen_word_narrow.mem_reg_0_3_17_17\ : label is 128;
  attribute RTL_RAM_NAME of \gen_wr_a.gen_word_narrow.mem_reg_0_3_17_17\ : label is "gen_wr_a.gen_word_narrow.mem_reg";
  attribute RTL_RAM_TYPE of \gen_wr_a.gen_word_narrow.mem_reg_0_3_17_17\ : label is "RAM_SP";
  attribute XILINX_LEGACY_PRIM of \gen_wr_a.gen_word_narrow.mem_reg_0_3_17_17\ : label is "RAM16X1S";
  attribute XILINX_TRANSFORM_PINMAP of \gen_wr_a.gen_word_narrow.mem_reg_0_3_17_17\ : label is "GND:A4";
  attribute ram_addr_begin of \gen_wr_a.gen_word_narrow.mem_reg_0_3_17_17\ : label is 0;
  attribute ram_addr_end of \gen_wr_a.gen_word_narrow.mem_reg_0_3_17_17\ : label is 3;
  attribute ram_offset of \gen_wr_a.gen_word_narrow.mem_reg_0_3_17_17\ : label is 0;
  attribute ram_slice_begin of \gen_wr_a.gen_word_narrow.mem_reg_0_3_17_17\ : label is 17;
  attribute ram_slice_end of \gen_wr_a.gen_word_narrow.mem_reg_0_3_17_17\ : label is 17;
  attribute RTL_RAM_BITS of \gen_wr_a.gen_word_narrow.mem_reg_0_3_18_18\ : label is 128;
  attribute RTL_RAM_NAME of \gen_wr_a.gen_word_narrow.mem_reg_0_3_18_18\ : label is "gen_wr_a.gen_word_narrow.mem_reg";
  attribute RTL_RAM_TYPE of \gen_wr_a.gen_word_narrow.mem_reg_0_3_18_18\ : label is "RAM_SP";
  attribute XILINX_LEGACY_PRIM of \gen_wr_a.gen_word_narrow.mem_reg_0_3_18_18\ : label is "RAM16X1S";
  attribute XILINX_TRANSFORM_PINMAP of \gen_wr_a.gen_word_narrow.mem_reg_0_3_18_18\ : label is "GND:A4";
  attribute ram_addr_begin of \gen_wr_a.gen_word_narrow.mem_reg_0_3_18_18\ : label is 0;
  attribute ram_addr_end of \gen_wr_a.gen_word_narrow.mem_reg_0_3_18_18\ : label is 3;
  attribute ram_offset of \gen_wr_a.gen_word_narrow.mem_reg_0_3_18_18\ : label is 0;
  attribute ram_slice_begin of \gen_wr_a.gen_word_narrow.mem_reg_0_3_18_18\ : label is 18;
  attribute ram_slice_end of \gen_wr_a.gen_word_narrow.mem_reg_0_3_18_18\ : label is 18;
  attribute RTL_RAM_BITS of \gen_wr_a.gen_word_narrow.mem_reg_0_3_19_19\ : label is 128;
  attribute RTL_RAM_NAME of \gen_wr_a.gen_word_narrow.mem_reg_0_3_19_19\ : label is "gen_wr_a.gen_word_narrow.mem_reg";
  attribute RTL_RAM_TYPE of \gen_wr_a.gen_word_narrow.mem_reg_0_3_19_19\ : label is "RAM_SP";
  attribute XILINX_LEGACY_PRIM of \gen_wr_a.gen_word_narrow.mem_reg_0_3_19_19\ : label is "RAM16X1S";
  attribute XILINX_TRANSFORM_PINMAP of \gen_wr_a.gen_word_narrow.mem_reg_0_3_19_19\ : label is "GND:A4";
  attribute ram_addr_begin of \gen_wr_a.gen_word_narrow.mem_reg_0_3_19_19\ : label is 0;
  attribute ram_addr_end of \gen_wr_a.gen_word_narrow.mem_reg_0_3_19_19\ : label is 3;
  attribute ram_offset of \gen_wr_a.gen_word_narrow.mem_reg_0_3_19_19\ : label is 0;
  attribute ram_slice_begin of \gen_wr_a.gen_word_narrow.mem_reg_0_3_19_19\ : label is 19;
  attribute ram_slice_end of \gen_wr_a.gen_word_narrow.mem_reg_0_3_19_19\ : label is 19;
  attribute RTL_RAM_BITS of \gen_wr_a.gen_word_narrow.mem_reg_0_3_1_1\ : label is 128;
  attribute RTL_RAM_NAME of \gen_wr_a.gen_word_narrow.mem_reg_0_3_1_1\ : label is "gen_wr_a.gen_word_narrow.mem_reg";
  attribute RTL_RAM_TYPE of \gen_wr_a.gen_word_narrow.mem_reg_0_3_1_1\ : label is "RAM_SP";
  attribute XILINX_LEGACY_PRIM of \gen_wr_a.gen_word_narrow.mem_reg_0_3_1_1\ : label is "RAM16X1S";
  attribute XILINX_TRANSFORM_PINMAP of \gen_wr_a.gen_word_narrow.mem_reg_0_3_1_1\ : label is "GND:A4";
  attribute ram_addr_begin of \gen_wr_a.gen_word_narrow.mem_reg_0_3_1_1\ : label is 0;
  attribute ram_addr_end of \gen_wr_a.gen_word_narrow.mem_reg_0_3_1_1\ : label is 3;
  attribute ram_offset of \gen_wr_a.gen_word_narrow.mem_reg_0_3_1_1\ : label is 0;
  attribute ram_slice_begin of \gen_wr_a.gen_word_narrow.mem_reg_0_3_1_1\ : label is 1;
  attribute ram_slice_end of \gen_wr_a.gen_word_narrow.mem_reg_0_3_1_1\ : label is 1;
  attribute RTL_RAM_BITS of \gen_wr_a.gen_word_narrow.mem_reg_0_3_20_20\ : label is 128;
  attribute RTL_RAM_NAME of \gen_wr_a.gen_word_narrow.mem_reg_0_3_20_20\ : label is "gen_wr_a.gen_word_narrow.mem_reg";
  attribute RTL_RAM_TYPE of \gen_wr_a.gen_word_narrow.mem_reg_0_3_20_20\ : label is "RAM_SP";
  attribute XILINX_LEGACY_PRIM of \gen_wr_a.gen_word_narrow.mem_reg_0_3_20_20\ : label is "RAM16X1S";
  attribute XILINX_TRANSFORM_PINMAP of \gen_wr_a.gen_word_narrow.mem_reg_0_3_20_20\ : label is "GND:A4";
  attribute ram_addr_begin of \gen_wr_a.gen_word_narrow.mem_reg_0_3_20_20\ : label is 0;
  attribute ram_addr_end of \gen_wr_a.gen_word_narrow.mem_reg_0_3_20_20\ : label is 3;
  attribute ram_offset of \gen_wr_a.gen_word_narrow.mem_reg_0_3_20_20\ : label is 0;
  attribute ram_slice_begin of \gen_wr_a.gen_word_narrow.mem_reg_0_3_20_20\ : label is 20;
  attribute ram_slice_end of \gen_wr_a.gen_word_narrow.mem_reg_0_3_20_20\ : label is 20;
  attribute RTL_RAM_BITS of \gen_wr_a.gen_word_narrow.mem_reg_0_3_21_21\ : label is 128;
  attribute RTL_RAM_NAME of \gen_wr_a.gen_word_narrow.mem_reg_0_3_21_21\ : label is "gen_wr_a.gen_word_narrow.mem_reg";
  attribute RTL_RAM_TYPE of \gen_wr_a.gen_word_narrow.mem_reg_0_3_21_21\ : label is "RAM_SP";
  attribute XILINX_LEGACY_PRIM of \gen_wr_a.gen_word_narrow.mem_reg_0_3_21_21\ : label is "RAM16X1S";
  attribute XILINX_TRANSFORM_PINMAP of \gen_wr_a.gen_word_narrow.mem_reg_0_3_21_21\ : label is "GND:A4";
  attribute ram_addr_begin of \gen_wr_a.gen_word_narrow.mem_reg_0_3_21_21\ : label is 0;
  attribute ram_addr_end of \gen_wr_a.gen_word_narrow.mem_reg_0_3_21_21\ : label is 3;
  attribute ram_offset of \gen_wr_a.gen_word_narrow.mem_reg_0_3_21_21\ : label is 0;
  attribute ram_slice_begin of \gen_wr_a.gen_word_narrow.mem_reg_0_3_21_21\ : label is 21;
  attribute ram_slice_end of \gen_wr_a.gen_word_narrow.mem_reg_0_3_21_21\ : label is 21;
  attribute RTL_RAM_BITS of \gen_wr_a.gen_word_narrow.mem_reg_0_3_22_22\ : label is 128;
  attribute RTL_RAM_NAME of \gen_wr_a.gen_word_narrow.mem_reg_0_3_22_22\ : label is "gen_wr_a.gen_word_narrow.mem_reg";
  attribute RTL_RAM_TYPE of \gen_wr_a.gen_word_narrow.mem_reg_0_3_22_22\ : label is "RAM_SP";
  attribute XILINX_LEGACY_PRIM of \gen_wr_a.gen_word_narrow.mem_reg_0_3_22_22\ : label is "RAM16X1S";
  attribute XILINX_TRANSFORM_PINMAP of \gen_wr_a.gen_word_narrow.mem_reg_0_3_22_22\ : label is "GND:A4";
  attribute ram_addr_begin of \gen_wr_a.gen_word_narrow.mem_reg_0_3_22_22\ : label is 0;
  attribute ram_addr_end of \gen_wr_a.gen_word_narrow.mem_reg_0_3_22_22\ : label is 3;
  attribute ram_offset of \gen_wr_a.gen_word_narrow.mem_reg_0_3_22_22\ : label is 0;
  attribute ram_slice_begin of \gen_wr_a.gen_word_narrow.mem_reg_0_3_22_22\ : label is 22;
  attribute ram_slice_end of \gen_wr_a.gen_word_narrow.mem_reg_0_3_22_22\ : label is 22;
  attribute RTL_RAM_BITS of \gen_wr_a.gen_word_narrow.mem_reg_0_3_23_23\ : label is 128;
  attribute RTL_RAM_NAME of \gen_wr_a.gen_word_narrow.mem_reg_0_3_23_23\ : label is "gen_wr_a.gen_word_narrow.mem_reg";
  attribute RTL_RAM_TYPE of \gen_wr_a.gen_word_narrow.mem_reg_0_3_23_23\ : label is "RAM_SP";
  attribute XILINX_LEGACY_PRIM of \gen_wr_a.gen_word_narrow.mem_reg_0_3_23_23\ : label is "RAM16X1S";
  attribute XILINX_TRANSFORM_PINMAP of \gen_wr_a.gen_word_narrow.mem_reg_0_3_23_23\ : label is "GND:A4";
  attribute ram_addr_begin of \gen_wr_a.gen_word_narrow.mem_reg_0_3_23_23\ : label is 0;
  attribute ram_addr_end of \gen_wr_a.gen_word_narrow.mem_reg_0_3_23_23\ : label is 3;
  attribute ram_offset of \gen_wr_a.gen_word_narrow.mem_reg_0_3_23_23\ : label is 0;
  attribute ram_slice_begin of \gen_wr_a.gen_word_narrow.mem_reg_0_3_23_23\ : label is 23;
  attribute ram_slice_end of \gen_wr_a.gen_word_narrow.mem_reg_0_3_23_23\ : label is 23;
  attribute RTL_RAM_BITS of \gen_wr_a.gen_word_narrow.mem_reg_0_3_24_24\ : label is 128;
  attribute RTL_RAM_NAME of \gen_wr_a.gen_word_narrow.mem_reg_0_3_24_24\ : label is "gen_wr_a.gen_word_narrow.mem_reg";
  attribute RTL_RAM_TYPE of \gen_wr_a.gen_word_narrow.mem_reg_0_3_24_24\ : label is "RAM_SP";
  attribute XILINX_LEGACY_PRIM of \gen_wr_a.gen_word_narrow.mem_reg_0_3_24_24\ : label is "RAM16X1S";
  attribute XILINX_TRANSFORM_PINMAP of \gen_wr_a.gen_word_narrow.mem_reg_0_3_24_24\ : label is "GND:A4";
  attribute ram_addr_begin of \gen_wr_a.gen_word_narrow.mem_reg_0_3_24_24\ : label is 0;
  attribute ram_addr_end of \gen_wr_a.gen_word_narrow.mem_reg_0_3_24_24\ : label is 3;
  attribute ram_offset of \gen_wr_a.gen_word_narrow.mem_reg_0_3_24_24\ : label is 0;
  attribute ram_slice_begin of \gen_wr_a.gen_word_narrow.mem_reg_0_3_24_24\ : label is 24;
  attribute ram_slice_end of \gen_wr_a.gen_word_narrow.mem_reg_0_3_24_24\ : label is 24;
  attribute RTL_RAM_BITS of \gen_wr_a.gen_word_narrow.mem_reg_0_3_25_25\ : label is 128;
  attribute RTL_RAM_NAME of \gen_wr_a.gen_word_narrow.mem_reg_0_3_25_25\ : label is "gen_wr_a.gen_word_narrow.mem_reg";
  attribute RTL_RAM_TYPE of \gen_wr_a.gen_word_narrow.mem_reg_0_3_25_25\ : label is "RAM_SP";
  attribute XILINX_LEGACY_PRIM of \gen_wr_a.gen_word_narrow.mem_reg_0_3_25_25\ : label is "RAM16X1S";
  attribute XILINX_TRANSFORM_PINMAP of \gen_wr_a.gen_word_narrow.mem_reg_0_3_25_25\ : label is "GND:A4";
  attribute ram_addr_begin of \gen_wr_a.gen_word_narrow.mem_reg_0_3_25_25\ : label is 0;
  attribute ram_addr_end of \gen_wr_a.gen_word_narrow.mem_reg_0_3_25_25\ : label is 3;
  attribute ram_offset of \gen_wr_a.gen_word_narrow.mem_reg_0_3_25_25\ : label is 0;
  attribute ram_slice_begin of \gen_wr_a.gen_word_narrow.mem_reg_0_3_25_25\ : label is 25;
  attribute ram_slice_end of \gen_wr_a.gen_word_narrow.mem_reg_0_3_25_25\ : label is 25;
  attribute RTL_RAM_BITS of \gen_wr_a.gen_word_narrow.mem_reg_0_3_26_26\ : label is 128;
  attribute RTL_RAM_NAME of \gen_wr_a.gen_word_narrow.mem_reg_0_3_26_26\ : label is "gen_wr_a.gen_word_narrow.mem_reg";
  attribute RTL_RAM_TYPE of \gen_wr_a.gen_word_narrow.mem_reg_0_3_26_26\ : label is "RAM_SP";
  attribute XILINX_LEGACY_PRIM of \gen_wr_a.gen_word_narrow.mem_reg_0_3_26_26\ : label is "RAM16X1S";
  attribute XILINX_TRANSFORM_PINMAP of \gen_wr_a.gen_word_narrow.mem_reg_0_3_26_26\ : label is "GND:A4";
  attribute ram_addr_begin of \gen_wr_a.gen_word_narrow.mem_reg_0_3_26_26\ : label is 0;
  attribute ram_addr_end of \gen_wr_a.gen_word_narrow.mem_reg_0_3_26_26\ : label is 3;
  attribute ram_offset of \gen_wr_a.gen_word_narrow.mem_reg_0_3_26_26\ : label is 0;
  attribute ram_slice_begin of \gen_wr_a.gen_word_narrow.mem_reg_0_3_26_26\ : label is 26;
  attribute ram_slice_end of \gen_wr_a.gen_word_narrow.mem_reg_0_3_26_26\ : label is 26;
  attribute RTL_RAM_BITS of \gen_wr_a.gen_word_narrow.mem_reg_0_3_27_27\ : label is 128;
  attribute RTL_RAM_NAME of \gen_wr_a.gen_word_narrow.mem_reg_0_3_27_27\ : label is "gen_wr_a.gen_word_narrow.mem_reg";
  attribute RTL_RAM_TYPE of \gen_wr_a.gen_word_narrow.mem_reg_0_3_27_27\ : label is "RAM_SP";
  attribute XILINX_LEGACY_PRIM of \gen_wr_a.gen_word_narrow.mem_reg_0_3_27_27\ : label is "RAM16X1S";
  attribute XILINX_TRANSFORM_PINMAP of \gen_wr_a.gen_word_narrow.mem_reg_0_3_27_27\ : label is "GND:A4";
  attribute ram_addr_begin of \gen_wr_a.gen_word_narrow.mem_reg_0_3_27_27\ : label is 0;
  attribute ram_addr_end of \gen_wr_a.gen_word_narrow.mem_reg_0_3_27_27\ : label is 3;
  attribute ram_offset of \gen_wr_a.gen_word_narrow.mem_reg_0_3_27_27\ : label is 0;
  attribute ram_slice_begin of \gen_wr_a.gen_word_narrow.mem_reg_0_3_27_27\ : label is 27;
  attribute ram_slice_end of \gen_wr_a.gen_word_narrow.mem_reg_0_3_27_27\ : label is 27;
  attribute RTL_RAM_BITS of \gen_wr_a.gen_word_narrow.mem_reg_0_3_28_28\ : label is 128;
  attribute RTL_RAM_NAME of \gen_wr_a.gen_word_narrow.mem_reg_0_3_28_28\ : label is "gen_wr_a.gen_word_narrow.mem_reg";
  attribute RTL_RAM_TYPE of \gen_wr_a.gen_word_narrow.mem_reg_0_3_28_28\ : label is "RAM_SP";
  attribute XILINX_LEGACY_PRIM of \gen_wr_a.gen_word_narrow.mem_reg_0_3_28_28\ : label is "RAM16X1S";
  attribute XILINX_TRANSFORM_PINMAP of \gen_wr_a.gen_word_narrow.mem_reg_0_3_28_28\ : label is "GND:A4";
  attribute ram_addr_begin of \gen_wr_a.gen_word_narrow.mem_reg_0_3_28_28\ : label is 0;
  attribute ram_addr_end of \gen_wr_a.gen_word_narrow.mem_reg_0_3_28_28\ : label is 3;
  attribute ram_offset of \gen_wr_a.gen_word_narrow.mem_reg_0_3_28_28\ : label is 0;
  attribute ram_slice_begin of \gen_wr_a.gen_word_narrow.mem_reg_0_3_28_28\ : label is 28;
  attribute ram_slice_end of \gen_wr_a.gen_word_narrow.mem_reg_0_3_28_28\ : label is 28;
  attribute RTL_RAM_BITS of \gen_wr_a.gen_word_narrow.mem_reg_0_3_29_29\ : label is 128;
  attribute RTL_RAM_NAME of \gen_wr_a.gen_word_narrow.mem_reg_0_3_29_29\ : label is "gen_wr_a.gen_word_narrow.mem_reg";
  attribute RTL_RAM_TYPE of \gen_wr_a.gen_word_narrow.mem_reg_0_3_29_29\ : label is "RAM_SP";
  attribute XILINX_LEGACY_PRIM of \gen_wr_a.gen_word_narrow.mem_reg_0_3_29_29\ : label is "RAM16X1S";
  attribute XILINX_TRANSFORM_PINMAP of \gen_wr_a.gen_word_narrow.mem_reg_0_3_29_29\ : label is "GND:A4";
  attribute ram_addr_begin of \gen_wr_a.gen_word_narrow.mem_reg_0_3_29_29\ : label is 0;
  attribute ram_addr_end of \gen_wr_a.gen_word_narrow.mem_reg_0_3_29_29\ : label is 3;
  attribute ram_offset of \gen_wr_a.gen_word_narrow.mem_reg_0_3_29_29\ : label is 0;
  attribute ram_slice_begin of \gen_wr_a.gen_word_narrow.mem_reg_0_3_29_29\ : label is 29;
  attribute ram_slice_end of \gen_wr_a.gen_word_narrow.mem_reg_0_3_29_29\ : label is 29;
  attribute RTL_RAM_BITS of \gen_wr_a.gen_word_narrow.mem_reg_0_3_2_2\ : label is 128;
  attribute RTL_RAM_NAME of \gen_wr_a.gen_word_narrow.mem_reg_0_3_2_2\ : label is "gen_wr_a.gen_word_narrow.mem_reg";
  attribute RTL_RAM_TYPE of \gen_wr_a.gen_word_narrow.mem_reg_0_3_2_2\ : label is "RAM_SP";
  attribute XILINX_LEGACY_PRIM of \gen_wr_a.gen_word_narrow.mem_reg_0_3_2_2\ : label is "RAM16X1S";
  attribute XILINX_TRANSFORM_PINMAP of \gen_wr_a.gen_word_narrow.mem_reg_0_3_2_2\ : label is "GND:A4";
  attribute ram_addr_begin of \gen_wr_a.gen_word_narrow.mem_reg_0_3_2_2\ : label is 0;
  attribute ram_addr_end of \gen_wr_a.gen_word_narrow.mem_reg_0_3_2_2\ : label is 3;
  attribute ram_offset of \gen_wr_a.gen_word_narrow.mem_reg_0_3_2_2\ : label is 0;
  attribute ram_slice_begin of \gen_wr_a.gen_word_narrow.mem_reg_0_3_2_2\ : label is 2;
  attribute ram_slice_end of \gen_wr_a.gen_word_narrow.mem_reg_0_3_2_2\ : label is 2;
  attribute RTL_RAM_BITS of \gen_wr_a.gen_word_narrow.mem_reg_0_3_30_30\ : label is 128;
  attribute RTL_RAM_NAME of \gen_wr_a.gen_word_narrow.mem_reg_0_3_30_30\ : label is "gen_wr_a.gen_word_narrow.mem_reg";
  attribute RTL_RAM_TYPE of \gen_wr_a.gen_word_narrow.mem_reg_0_3_30_30\ : label is "RAM_SP";
  attribute XILINX_LEGACY_PRIM of \gen_wr_a.gen_word_narrow.mem_reg_0_3_30_30\ : label is "RAM16X1S";
  attribute XILINX_TRANSFORM_PINMAP of \gen_wr_a.gen_word_narrow.mem_reg_0_3_30_30\ : label is "GND:A4";
  attribute ram_addr_begin of \gen_wr_a.gen_word_narrow.mem_reg_0_3_30_30\ : label is 0;
  attribute ram_addr_end of \gen_wr_a.gen_word_narrow.mem_reg_0_3_30_30\ : label is 3;
  attribute ram_offset of \gen_wr_a.gen_word_narrow.mem_reg_0_3_30_30\ : label is 0;
  attribute ram_slice_begin of \gen_wr_a.gen_word_narrow.mem_reg_0_3_30_30\ : label is 30;
  attribute ram_slice_end of \gen_wr_a.gen_word_narrow.mem_reg_0_3_30_30\ : label is 30;
  attribute RTL_RAM_BITS of \gen_wr_a.gen_word_narrow.mem_reg_0_3_31_31\ : label is 128;
  attribute RTL_RAM_NAME of \gen_wr_a.gen_word_narrow.mem_reg_0_3_31_31\ : label is "gen_wr_a.gen_word_narrow.mem_reg";
  attribute RTL_RAM_TYPE of \gen_wr_a.gen_word_narrow.mem_reg_0_3_31_31\ : label is "RAM_SP";
  attribute XILINX_LEGACY_PRIM of \gen_wr_a.gen_word_narrow.mem_reg_0_3_31_31\ : label is "RAM16X1S";
  attribute XILINX_TRANSFORM_PINMAP of \gen_wr_a.gen_word_narrow.mem_reg_0_3_31_31\ : label is "GND:A4";
  attribute ram_addr_begin of \gen_wr_a.gen_word_narrow.mem_reg_0_3_31_31\ : label is 0;
  attribute ram_addr_end of \gen_wr_a.gen_word_narrow.mem_reg_0_3_31_31\ : label is 3;
  attribute ram_offset of \gen_wr_a.gen_word_narrow.mem_reg_0_3_31_31\ : label is 0;
  attribute ram_slice_begin of \gen_wr_a.gen_word_narrow.mem_reg_0_3_31_31\ : label is 31;
  attribute ram_slice_end of \gen_wr_a.gen_word_narrow.mem_reg_0_3_31_31\ : label is 31;
  attribute RTL_RAM_BITS of \gen_wr_a.gen_word_narrow.mem_reg_0_3_3_3\ : label is 128;
  attribute RTL_RAM_NAME of \gen_wr_a.gen_word_narrow.mem_reg_0_3_3_3\ : label is "gen_wr_a.gen_word_narrow.mem_reg";
  attribute RTL_RAM_TYPE of \gen_wr_a.gen_word_narrow.mem_reg_0_3_3_3\ : label is "RAM_SP";
  attribute XILINX_LEGACY_PRIM of \gen_wr_a.gen_word_narrow.mem_reg_0_3_3_3\ : label is "RAM16X1S";
  attribute XILINX_TRANSFORM_PINMAP of \gen_wr_a.gen_word_narrow.mem_reg_0_3_3_3\ : label is "GND:A4";
  attribute ram_addr_begin of \gen_wr_a.gen_word_narrow.mem_reg_0_3_3_3\ : label is 0;
  attribute ram_addr_end of \gen_wr_a.gen_word_narrow.mem_reg_0_3_3_3\ : label is 3;
  attribute ram_offset of \gen_wr_a.gen_word_narrow.mem_reg_0_3_3_3\ : label is 0;
  attribute ram_slice_begin of \gen_wr_a.gen_word_narrow.mem_reg_0_3_3_3\ : label is 3;
  attribute ram_slice_end of \gen_wr_a.gen_word_narrow.mem_reg_0_3_3_3\ : label is 3;
  attribute RTL_RAM_BITS of \gen_wr_a.gen_word_narrow.mem_reg_0_3_4_4\ : label is 128;
  attribute RTL_RAM_NAME of \gen_wr_a.gen_word_narrow.mem_reg_0_3_4_4\ : label is "gen_wr_a.gen_word_narrow.mem_reg";
  attribute RTL_RAM_TYPE of \gen_wr_a.gen_word_narrow.mem_reg_0_3_4_4\ : label is "RAM_SP";
  attribute XILINX_LEGACY_PRIM of \gen_wr_a.gen_word_narrow.mem_reg_0_3_4_4\ : label is "RAM16X1S";
  attribute XILINX_TRANSFORM_PINMAP of \gen_wr_a.gen_word_narrow.mem_reg_0_3_4_4\ : label is "GND:A4";
  attribute ram_addr_begin of \gen_wr_a.gen_word_narrow.mem_reg_0_3_4_4\ : label is 0;
  attribute ram_addr_end of \gen_wr_a.gen_word_narrow.mem_reg_0_3_4_4\ : label is 3;
  attribute ram_offset of \gen_wr_a.gen_word_narrow.mem_reg_0_3_4_4\ : label is 0;
  attribute ram_slice_begin of \gen_wr_a.gen_word_narrow.mem_reg_0_3_4_4\ : label is 4;
  attribute ram_slice_end of \gen_wr_a.gen_word_narrow.mem_reg_0_3_4_4\ : label is 4;
  attribute RTL_RAM_BITS of \gen_wr_a.gen_word_narrow.mem_reg_0_3_5_5\ : label is 128;
  attribute RTL_RAM_NAME of \gen_wr_a.gen_word_narrow.mem_reg_0_3_5_5\ : label is "gen_wr_a.gen_word_narrow.mem_reg";
  attribute RTL_RAM_TYPE of \gen_wr_a.gen_word_narrow.mem_reg_0_3_5_5\ : label is "RAM_SP";
  attribute XILINX_LEGACY_PRIM of \gen_wr_a.gen_word_narrow.mem_reg_0_3_5_5\ : label is "RAM16X1S";
  attribute XILINX_TRANSFORM_PINMAP of \gen_wr_a.gen_word_narrow.mem_reg_0_3_5_5\ : label is "GND:A4";
  attribute ram_addr_begin of \gen_wr_a.gen_word_narrow.mem_reg_0_3_5_5\ : label is 0;
  attribute ram_addr_end of \gen_wr_a.gen_word_narrow.mem_reg_0_3_5_5\ : label is 3;
  attribute ram_offset of \gen_wr_a.gen_word_narrow.mem_reg_0_3_5_5\ : label is 0;
  attribute ram_slice_begin of \gen_wr_a.gen_word_narrow.mem_reg_0_3_5_5\ : label is 5;
  attribute ram_slice_end of \gen_wr_a.gen_word_narrow.mem_reg_0_3_5_5\ : label is 5;
  attribute RTL_RAM_BITS of \gen_wr_a.gen_word_narrow.mem_reg_0_3_6_6\ : label is 128;
  attribute RTL_RAM_NAME of \gen_wr_a.gen_word_narrow.mem_reg_0_3_6_6\ : label is "gen_wr_a.gen_word_narrow.mem_reg";
  attribute RTL_RAM_TYPE of \gen_wr_a.gen_word_narrow.mem_reg_0_3_6_6\ : label is "RAM_SP";
  attribute XILINX_LEGACY_PRIM of \gen_wr_a.gen_word_narrow.mem_reg_0_3_6_6\ : label is "RAM16X1S";
  attribute XILINX_TRANSFORM_PINMAP of \gen_wr_a.gen_word_narrow.mem_reg_0_3_6_6\ : label is "GND:A4";
  attribute ram_addr_begin of \gen_wr_a.gen_word_narrow.mem_reg_0_3_6_6\ : label is 0;
  attribute ram_addr_end of \gen_wr_a.gen_word_narrow.mem_reg_0_3_6_6\ : label is 3;
  attribute ram_offset of \gen_wr_a.gen_word_narrow.mem_reg_0_3_6_6\ : label is 0;
  attribute ram_slice_begin of \gen_wr_a.gen_word_narrow.mem_reg_0_3_6_6\ : label is 6;
  attribute ram_slice_end of \gen_wr_a.gen_word_narrow.mem_reg_0_3_6_6\ : label is 6;
  attribute RTL_RAM_BITS of \gen_wr_a.gen_word_narrow.mem_reg_0_3_7_7\ : label is 128;
  attribute RTL_RAM_NAME of \gen_wr_a.gen_word_narrow.mem_reg_0_3_7_7\ : label is "gen_wr_a.gen_word_narrow.mem_reg";
  attribute RTL_RAM_TYPE of \gen_wr_a.gen_word_narrow.mem_reg_0_3_7_7\ : label is "RAM_SP";
  attribute XILINX_LEGACY_PRIM of \gen_wr_a.gen_word_narrow.mem_reg_0_3_7_7\ : label is "RAM16X1S";
  attribute XILINX_TRANSFORM_PINMAP of \gen_wr_a.gen_word_narrow.mem_reg_0_3_7_7\ : label is "GND:A4";
  attribute ram_addr_begin of \gen_wr_a.gen_word_narrow.mem_reg_0_3_7_7\ : label is 0;
  attribute ram_addr_end of \gen_wr_a.gen_word_narrow.mem_reg_0_3_7_7\ : label is 3;
  attribute ram_offset of \gen_wr_a.gen_word_narrow.mem_reg_0_3_7_7\ : label is 0;
  attribute ram_slice_begin of \gen_wr_a.gen_word_narrow.mem_reg_0_3_7_7\ : label is 7;
  attribute ram_slice_end of \gen_wr_a.gen_word_narrow.mem_reg_0_3_7_7\ : label is 7;
  attribute RTL_RAM_BITS of \gen_wr_a.gen_word_narrow.mem_reg_0_3_8_8\ : label is 128;
  attribute RTL_RAM_NAME of \gen_wr_a.gen_word_narrow.mem_reg_0_3_8_8\ : label is "gen_wr_a.gen_word_narrow.mem_reg";
  attribute RTL_RAM_TYPE of \gen_wr_a.gen_word_narrow.mem_reg_0_3_8_8\ : label is "RAM_SP";
  attribute XILINX_LEGACY_PRIM of \gen_wr_a.gen_word_narrow.mem_reg_0_3_8_8\ : label is "RAM16X1S";
  attribute XILINX_TRANSFORM_PINMAP of \gen_wr_a.gen_word_narrow.mem_reg_0_3_8_8\ : label is "GND:A4";
  attribute ram_addr_begin of \gen_wr_a.gen_word_narrow.mem_reg_0_3_8_8\ : label is 0;
  attribute ram_addr_end of \gen_wr_a.gen_word_narrow.mem_reg_0_3_8_8\ : label is 3;
  attribute ram_offset of \gen_wr_a.gen_word_narrow.mem_reg_0_3_8_8\ : label is 0;
  attribute ram_slice_begin of \gen_wr_a.gen_word_narrow.mem_reg_0_3_8_8\ : label is 8;
  attribute ram_slice_end of \gen_wr_a.gen_word_narrow.mem_reg_0_3_8_8\ : label is 8;
  attribute RTL_RAM_BITS of \gen_wr_a.gen_word_narrow.mem_reg_0_3_9_9\ : label is 128;
  attribute RTL_RAM_NAME of \gen_wr_a.gen_word_narrow.mem_reg_0_3_9_9\ : label is "gen_wr_a.gen_word_narrow.mem_reg";
  attribute RTL_RAM_TYPE of \gen_wr_a.gen_word_narrow.mem_reg_0_3_9_9\ : label is "RAM_SP";
  attribute XILINX_LEGACY_PRIM of \gen_wr_a.gen_word_narrow.mem_reg_0_3_9_9\ : label is "RAM16X1S";
  attribute XILINX_TRANSFORM_PINMAP of \gen_wr_a.gen_word_narrow.mem_reg_0_3_9_9\ : label is "GND:A4";
  attribute ram_addr_begin of \gen_wr_a.gen_word_narrow.mem_reg_0_3_9_9\ : label is 0;
  attribute ram_addr_end of \gen_wr_a.gen_word_narrow.mem_reg_0_3_9_9\ : label is 3;
  attribute ram_offset of \gen_wr_a.gen_word_narrow.mem_reg_0_3_9_9\ : label is 0;
  attribute ram_slice_begin of \gen_wr_a.gen_word_narrow.mem_reg_0_3_9_9\ : label is 9;
  attribute ram_slice_end of \gen_wr_a.gen_word_narrow.mem_reg_0_3_9_9\ : label is 9;
begin
  dbiterra <= \<const0>\;
  dbiterrb <= \<const0>\;
  doutb(31) <= \<const0>\;
  doutb(30) <= \<const0>\;
  doutb(29) <= \<const0>\;
  doutb(28) <= \<const0>\;
  doutb(27) <= \<const0>\;
  doutb(26) <= \<const0>\;
  doutb(25) <= \<const0>\;
  doutb(24) <= \<const0>\;
  doutb(23) <= \<const0>\;
  doutb(22) <= \<const0>\;
  doutb(21) <= \<const0>\;
  doutb(20) <= \<const0>\;
  doutb(19) <= \<const0>\;
  doutb(18) <= \<const0>\;
  doutb(17) <= \<const0>\;
  doutb(16) <= \<const0>\;
  doutb(15) <= \<const0>\;
  doutb(14) <= \<const0>\;
  doutb(13) <= \<const0>\;
  doutb(12) <= \<const0>\;
  doutb(11) <= \<const0>\;
  doutb(10) <= \<const0>\;
  doutb(9) <= \<const0>\;
  doutb(8) <= \<const0>\;
  doutb(7) <= \<const0>\;
  doutb(6) <= \<const0>\;
  doutb(5) <= \<const0>\;
  doutb(4) <= \<const0>\;
  doutb(3) <= \<const0>\;
  doutb(2) <= \<const0>\;
  doutb(1) <= \<const0>\;
  doutb(0) <= \<const0>\;
  sbiterra <= \<const0>\;
  sbiterrb <= \<const0>\;
GND: unisim.vcomponents.GND
     port map (
      G => \<const0>\
    );
\gen_rd_a.gen_rd_a_synth_template.gen_rf_narrow_reg.douta_reg_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clka,
      CE => ena,
      D => \gen_rd_a.gen_rd_a_synth_template.gen_rf_narrow_reg.douta_reg_reg0\(0),
      Q => douta(0),
      R => '0'
    );
\gen_rd_a.gen_rd_a_synth_template.gen_rf_narrow_reg.douta_reg_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clka,
      CE => ena,
      D => \gen_rd_a.gen_rd_a_synth_template.gen_rf_narrow_reg.douta_reg_reg0\(10),
      Q => douta(10),
      R => '0'
    );
\gen_rd_a.gen_rd_a_synth_template.gen_rf_narrow_reg.douta_reg_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clka,
      CE => ena,
      D => \gen_rd_a.gen_rd_a_synth_template.gen_rf_narrow_reg.douta_reg_reg0\(11),
      Q => douta(11),
      R => '0'
    );
\gen_rd_a.gen_rd_a_synth_template.gen_rf_narrow_reg.douta_reg_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clka,
      CE => ena,
      D => \gen_rd_a.gen_rd_a_synth_template.gen_rf_narrow_reg.douta_reg_reg0\(12),
      Q => douta(12),
      R => '0'
    );
\gen_rd_a.gen_rd_a_synth_template.gen_rf_narrow_reg.douta_reg_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clka,
      CE => ena,
      D => \gen_rd_a.gen_rd_a_synth_template.gen_rf_narrow_reg.douta_reg_reg0\(13),
      Q => douta(13),
      R => '0'
    );
\gen_rd_a.gen_rd_a_synth_template.gen_rf_narrow_reg.douta_reg_reg[14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clka,
      CE => ena,
      D => \gen_rd_a.gen_rd_a_synth_template.gen_rf_narrow_reg.douta_reg_reg0\(14),
      Q => douta(14),
      R => '0'
    );
\gen_rd_a.gen_rd_a_synth_template.gen_rf_narrow_reg.douta_reg_reg[15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clka,
      CE => ena,
      D => \gen_rd_a.gen_rd_a_synth_template.gen_rf_narrow_reg.douta_reg_reg0\(15),
      Q => douta(15),
      R => '0'
    );
\gen_rd_a.gen_rd_a_synth_template.gen_rf_narrow_reg.douta_reg_reg[16]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clka,
      CE => ena,
      D => \gen_rd_a.gen_rd_a_synth_template.gen_rf_narrow_reg.douta_reg_reg0\(16),
      Q => douta(16),
      R => '0'
    );
\gen_rd_a.gen_rd_a_synth_template.gen_rf_narrow_reg.douta_reg_reg[17]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clka,
      CE => ena,
      D => \gen_rd_a.gen_rd_a_synth_template.gen_rf_narrow_reg.douta_reg_reg0\(17),
      Q => douta(17),
      R => '0'
    );
\gen_rd_a.gen_rd_a_synth_template.gen_rf_narrow_reg.douta_reg_reg[18]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clka,
      CE => ena,
      D => \gen_rd_a.gen_rd_a_synth_template.gen_rf_narrow_reg.douta_reg_reg0\(18),
      Q => douta(18),
      R => '0'
    );
\gen_rd_a.gen_rd_a_synth_template.gen_rf_narrow_reg.douta_reg_reg[19]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clka,
      CE => ena,
      D => \gen_rd_a.gen_rd_a_synth_template.gen_rf_narrow_reg.douta_reg_reg0\(19),
      Q => douta(19),
      R => '0'
    );
\gen_rd_a.gen_rd_a_synth_template.gen_rf_narrow_reg.douta_reg_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clka,
      CE => ena,
      D => \gen_rd_a.gen_rd_a_synth_template.gen_rf_narrow_reg.douta_reg_reg0\(1),
      Q => douta(1),
      R => '0'
    );
\gen_rd_a.gen_rd_a_synth_template.gen_rf_narrow_reg.douta_reg_reg[20]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clka,
      CE => ena,
      D => \gen_rd_a.gen_rd_a_synth_template.gen_rf_narrow_reg.douta_reg_reg0\(20),
      Q => douta(20),
      R => '0'
    );
\gen_rd_a.gen_rd_a_synth_template.gen_rf_narrow_reg.douta_reg_reg[21]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clka,
      CE => ena,
      D => \gen_rd_a.gen_rd_a_synth_template.gen_rf_narrow_reg.douta_reg_reg0\(21),
      Q => douta(21),
      R => '0'
    );
\gen_rd_a.gen_rd_a_synth_template.gen_rf_narrow_reg.douta_reg_reg[22]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clka,
      CE => ena,
      D => \gen_rd_a.gen_rd_a_synth_template.gen_rf_narrow_reg.douta_reg_reg0\(22),
      Q => douta(22),
      R => '0'
    );
\gen_rd_a.gen_rd_a_synth_template.gen_rf_narrow_reg.douta_reg_reg[23]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clka,
      CE => ena,
      D => \gen_rd_a.gen_rd_a_synth_template.gen_rf_narrow_reg.douta_reg_reg0\(23),
      Q => douta(23),
      R => '0'
    );
\gen_rd_a.gen_rd_a_synth_template.gen_rf_narrow_reg.douta_reg_reg[24]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clka,
      CE => ena,
      D => \gen_rd_a.gen_rd_a_synth_template.gen_rf_narrow_reg.douta_reg_reg0\(24),
      Q => douta(24),
      R => '0'
    );
\gen_rd_a.gen_rd_a_synth_template.gen_rf_narrow_reg.douta_reg_reg[25]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clka,
      CE => ena,
      D => \gen_rd_a.gen_rd_a_synth_template.gen_rf_narrow_reg.douta_reg_reg0\(25),
      Q => douta(25),
      R => '0'
    );
\gen_rd_a.gen_rd_a_synth_template.gen_rf_narrow_reg.douta_reg_reg[26]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clka,
      CE => ena,
      D => \gen_rd_a.gen_rd_a_synth_template.gen_rf_narrow_reg.douta_reg_reg0\(26),
      Q => douta(26),
      R => '0'
    );
\gen_rd_a.gen_rd_a_synth_template.gen_rf_narrow_reg.douta_reg_reg[27]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clka,
      CE => ena,
      D => \gen_rd_a.gen_rd_a_synth_template.gen_rf_narrow_reg.douta_reg_reg0\(27),
      Q => douta(27),
      R => '0'
    );
\gen_rd_a.gen_rd_a_synth_template.gen_rf_narrow_reg.douta_reg_reg[28]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clka,
      CE => ena,
      D => \gen_rd_a.gen_rd_a_synth_template.gen_rf_narrow_reg.douta_reg_reg0\(28),
      Q => douta(28),
      R => '0'
    );
\gen_rd_a.gen_rd_a_synth_template.gen_rf_narrow_reg.douta_reg_reg[29]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clka,
      CE => ena,
      D => \gen_rd_a.gen_rd_a_synth_template.gen_rf_narrow_reg.douta_reg_reg0\(29),
      Q => douta(29),
      R => '0'
    );
\gen_rd_a.gen_rd_a_synth_template.gen_rf_narrow_reg.douta_reg_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clka,
      CE => ena,
      D => \gen_rd_a.gen_rd_a_synth_template.gen_rf_narrow_reg.douta_reg_reg0\(2),
      Q => douta(2),
      R => '0'
    );
\gen_rd_a.gen_rd_a_synth_template.gen_rf_narrow_reg.douta_reg_reg[30]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clka,
      CE => ena,
      D => \gen_rd_a.gen_rd_a_synth_template.gen_rf_narrow_reg.douta_reg_reg0\(30),
      Q => douta(30),
      R => '0'
    );
\gen_rd_a.gen_rd_a_synth_template.gen_rf_narrow_reg.douta_reg_reg[31]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clka,
      CE => ena,
      D => \gen_rd_a.gen_rd_a_synth_template.gen_rf_narrow_reg.douta_reg_reg0\(31),
      Q => douta(31),
      R => '0'
    );
\gen_rd_a.gen_rd_a_synth_template.gen_rf_narrow_reg.douta_reg_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clka,
      CE => ena,
      D => \gen_rd_a.gen_rd_a_synth_template.gen_rf_narrow_reg.douta_reg_reg0\(3),
      Q => douta(3),
      R => '0'
    );
\gen_rd_a.gen_rd_a_synth_template.gen_rf_narrow_reg.douta_reg_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clka,
      CE => ena,
      D => \gen_rd_a.gen_rd_a_synth_template.gen_rf_narrow_reg.douta_reg_reg0\(4),
      Q => douta(4),
      R => '0'
    );
\gen_rd_a.gen_rd_a_synth_template.gen_rf_narrow_reg.douta_reg_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clka,
      CE => ena,
      D => \gen_rd_a.gen_rd_a_synth_template.gen_rf_narrow_reg.douta_reg_reg0\(5),
      Q => douta(5),
      R => '0'
    );
\gen_rd_a.gen_rd_a_synth_template.gen_rf_narrow_reg.douta_reg_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clka,
      CE => ena,
      D => \gen_rd_a.gen_rd_a_synth_template.gen_rf_narrow_reg.douta_reg_reg0\(6),
      Q => douta(6),
      R => '0'
    );
\gen_rd_a.gen_rd_a_synth_template.gen_rf_narrow_reg.douta_reg_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clka,
      CE => ena,
      D => \gen_rd_a.gen_rd_a_synth_template.gen_rf_narrow_reg.douta_reg_reg0\(7),
      Q => douta(7),
      R => '0'
    );
\gen_rd_a.gen_rd_a_synth_template.gen_rf_narrow_reg.douta_reg_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clka,
      CE => ena,
      D => \gen_rd_a.gen_rd_a_synth_template.gen_rf_narrow_reg.douta_reg_reg0\(8),
      Q => douta(8),
      R => '0'
    );
\gen_rd_a.gen_rd_a_synth_template.gen_rf_narrow_reg.douta_reg_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clka,
      CE => ena,
      D => \gen_rd_a.gen_rd_a_synth_template.gen_rf_narrow_reg.douta_reg_reg0\(9),
      Q => douta(9),
      R => '0'
    );
\gen_wr_a.gen_word_narrow.mem_reg_0_3_0_0\: unisim.vcomponents.RAM32X1S
    generic map(
      INIT => X"00000000"
    )
        port map (
      A0 => addra(0),
      A1 => addra(1),
      A2 => '0',
      A3 => '0',
      A4 => '0',
      D => dina(0),
      O => \gen_rd_a.gen_rd_a_synth_template.gen_rf_narrow_reg.douta_reg_reg0\(0),
      WCLK => clka,
      WE => p_0_in
    );
\gen_wr_a.gen_word_narrow.mem_reg_0_3_0_0_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => wea(0),
      I1 => ena,
      O => p_0_in
    );
\gen_wr_a.gen_word_narrow.mem_reg_0_3_10_10\: unisim.vcomponents.RAM32X1S
    generic map(
      INIT => X"00000000"
    )
        port map (
      A0 => addra(0),
      A1 => addra(1),
      A2 => '0',
      A3 => '0',
      A4 => '0',
      D => dina(10),
      O => \gen_rd_a.gen_rd_a_synth_template.gen_rf_narrow_reg.douta_reg_reg0\(10),
      WCLK => clka,
      WE => p_0_in
    );
\gen_wr_a.gen_word_narrow.mem_reg_0_3_11_11\: unisim.vcomponents.RAM32X1S
    generic map(
      INIT => X"00000000"
    )
        port map (
      A0 => addra(0),
      A1 => addra(1),
      A2 => '0',
      A3 => '0',
      A4 => '0',
      D => dina(11),
      O => \gen_rd_a.gen_rd_a_synth_template.gen_rf_narrow_reg.douta_reg_reg0\(11),
      WCLK => clka,
      WE => p_0_in
    );
\gen_wr_a.gen_word_narrow.mem_reg_0_3_12_12\: unisim.vcomponents.RAM32X1S
    generic map(
      INIT => X"00000000"
    )
        port map (
      A0 => addra(0),
      A1 => addra(1),
      A2 => '0',
      A3 => '0',
      A4 => '0',
      D => dina(12),
      O => \gen_rd_a.gen_rd_a_synth_template.gen_rf_narrow_reg.douta_reg_reg0\(12),
      WCLK => clka,
      WE => p_0_in
    );
\gen_wr_a.gen_word_narrow.mem_reg_0_3_13_13\: unisim.vcomponents.RAM32X1S
    generic map(
      INIT => X"00000000"
    )
        port map (
      A0 => addra(0),
      A1 => addra(1),
      A2 => '0',
      A3 => '0',
      A4 => '0',
      D => dina(13),
      O => \gen_rd_a.gen_rd_a_synth_template.gen_rf_narrow_reg.douta_reg_reg0\(13),
      WCLK => clka,
      WE => p_0_in
    );
\gen_wr_a.gen_word_narrow.mem_reg_0_3_14_14\: unisim.vcomponents.RAM32X1S
    generic map(
      INIT => X"00000000"
    )
        port map (
      A0 => addra(0),
      A1 => addra(1),
      A2 => '0',
      A3 => '0',
      A4 => '0',
      D => dina(14),
      O => \gen_rd_a.gen_rd_a_synth_template.gen_rf_narrow_reg.douta_reg_reg0\(14),
      WCLK => clka,
      WE => p_0_in
    );
\gen_wr_a.gen_word_narrow.mem_reg_0_3_15_15\: unisim.vcomponents.RAM32X1S
    generic map(
      INIT => X"00000000"
    )
        port map (
      A0 => addra(0),
      A1 => addra(1),
      A2 => '0',
      A3 => '0',
      A4 => '0',
      D => dina(15),
      O => \gen_rd_a.gen_rd_a_synth_template.gen_rf_narrow_reg.douta_reg_reg0\(15),
      WCLK => clka,
      WE => p_0_in
    );
\gen_wr_a.gen_word_narrow.mem_reg_0_3_16_16\: unisim.vcomponents.RAM32X1S
    generic map(
      INIT => X"00000000"
    )
        port map (
      A0 => addra(0),
      A1 => addra(1),
      A2 => '0',
      A3 => '0',
      A4 => '0',
      D => dina(16),
      O => \gen_rd_a.gen_rd_a_synth_template.gen_rf_narrow_reg.douta_reg_reg0\(16),
      WCLK => clka,
      WE => p_0_in
    );
\gen_wr_a.gen_word_narrow.mem_reg_0_3_17_17\: unisim.vcomponents.RAM32X1S
    generic map(
      INIT => X"00000000"
    )
        port map (
      A0 => addra(0),
      A1 => addra(1),
      A2 => '0',
      A3 => '0',
      A4 => '0',
      D => dina(17),
      O => \gen_rd_a.gen_rd_a_synth_template.gen_rf_narrow_reg.douta_reg_reg0\(17),
      WCLK => clka,
      WE => p_0_in
    );
\gen_wr_a.gen_word_narrow.mem_reg_0_3_18_18\: unisim.vcomponents.RAM32X1S
    generic map(
      INIT => X"00000000"
    )
        port map (
      A0 => addra(0),
      A1 => addra(1),
      A2 => '0',
      A3 => '0',
      A4 => '0',
      D => dina(18),
      O => \gen_rd_a.gen_rd_a_synth_template.gen_rf_narrow_reg.douta_reg_reg0\(18),
      WCLK => clka,
      WE => p_0_in
    );
\gen_wr_a.gen_word_narrow.mem_reg_0_3_19_19\: unisim.vcomponents.RAM32X1S
    generic map(
      INIT => X"00000000"
    )
        port map (
      A0 => addra(0),
      A1 => addra(1),
      A2 => '0',
      A3 => '0',
      A4 => '0',
      D => dina(19),
      O => \gen_rd_a.gen_rd_a_synth_template.gen_rf_narrow_reg.douta_reg_reg0\(19),
      WCLK => clka,
      WE => p_0_in
    );
\gen_wr_a.gen_word_narrow.mem_reg_0_3_1_1\: unisim.vcomponents.RAM32X1S
    generic map(
      INIT => X"00000000"
    )
        port map (
      A0 => addra(0),
      A1 => addra(1),
      A2 => '0',
      A3 => '0',
      A4 => '0',
      D => dina(1),
      O => \gen_rd_a.gen_rd_a_synth_template.gen_rf_narrow_reg.douta_reg_reg0\(1),
      WCLK => clka,
      WE => p_0_in
    );
\gen_wr_a.gen_word_narrow.mem_reg_0_3_20_20\: unisim.vcomponents.RAM32X1S
    generic map(
      INIT => X"00000000"
    )
        port map (
      A0 => addra(0),
      A1 => addra(1),
      A2 => '0',
      A3 => '0',
      A4 => '0',
      D => dina(20),
      O => \gen_rd_a.gen_rd_a_synth_template.gen_rf_narrow_reg.douta_reg_reg0\(20),
      WCLK => clka,
      WE => p_0_in
    );
\gen_wr_a.gen_word_narrow.mem_reg_0_3_21_21\: unisim.vcomponents.RAM32X1S
    generic map(
      INIT => X"00000000"
    )
        port map (
      A0 => addra(0),
      A1 => addra(1),
      A2 => '0',
      A3 => '0',
      A4 => '0',
      D => dina(21),
      O => \gen_rd_a.gen_rd_a_synth_template.gen_rf_narrow_reg.douta_reg_reg0\(21),
      WCLK => clka,
      WE => p_0_in
    );
\gen_wr_a.gen_word_narrow.mem_reg_0_3_22_22\: unisim.vcomponents.RAM32X1S
    generic map(
      INIT => X"00000000"
    )
        port map (
      A0 => addra(0),
      A1 => addra(1),
      A2 => '0',
      A3 => '0',
      A4 => '0',
      D => dina(22),
      O => \gen_rd_a.gen_rd_a_synth_template.gen_rf_narrow_reg.douta_reg_reg0\(22),
      WCLK => clka,
      WE => p_0_in
    );
\gen_wr_a.gen_word_narrow.mem_reg_0_3_23_23\: unisim.vcomponents.RAM32X1S
    generic map(
      INIT => X"00000000"
    )
        port map (
      A0 => addra(0),
      A1 => addra(1),
      A2 => '0',
      A3 => '0',
      A4 => '0',
      D => dina(23),
      O => \gen_rd_a.gen_rd_a_synth_template.gen_rf_narrow_reg.douta_reg_reg0\(23),
      WCLK => clka,
      WE => p_0_in
    );
\gen_wr_a.gen_word_narrow.mem_reg_0_3_24_24\: unisim.vcomponents.RAM32X1S
    generic map(
      INIT => X"00000000"
    )
        port map (
      A0 => addra(0),
      A1 => addra(1),
      A2 => '0',
      A3 => '0',
      A4 => '0',
      D => dina(24),
      O => \gen_rd_a.gen_rd_a_synth_template.gen_rf_narrow_reg.douta_reg_reg0\(24),
      WCLK => clka,
      WE => p_0_in
    );
\gen_wr_a.gen_word_narrow.mem_reg_0_3_25_25\: unisim.vcomponents.RAM32X1S
    generic map(
      INIT => X"00000000"
    )
        port map (
      A0 => addra(0),
      A1 => addra(1),
      A2 => '0',
      A3 => '0',
      A4 => '0',
      D => dina(25),
      O => \gen_rd_a.gen_rd_a_synth_template.gen_rf_narrow_reg.douta_reg_reg0\(25),
      WCLK => clka,
      WE => p_0_in
    );
\gen_wr_a.gen_word_narrow.mem_reg_0_3_26_26\: unisim.vcomponents.RAM32X1S
    generic map(
      INIT => X"00000000"
    )
        port map (
      A0 => addra(0),
      A1 => addra(1),
      A2 => '0',
      A3 => '0',
      A4 => '0',
      D => dina(26),
      O => \gen_rd_a.gen_rd_a_synth_template.gen_rf_narrow_reg.douta_reg_reg0\(26),
      WCLK => clka,
      WE => p_0_in
    );
\gen_wr_a.gen_word_narrow.mem_reg_0_3_27_27\: unisim.vcomponents.RAM32X1S
    generic map(
      INIT => X"00000000"
    )
        port map (
      A0 => addra(0),
      A1 => addra(1),
      A2 => '0',
      A3 => '0',
      A4 => '0',
      D => dina(27),
      O => \gen_rd_a.gen_rd_a_synth_template.gen_rf_narrow_reg.douta_reg_reg0\(27),
      WCLK => clka,
      WE => p_0_in
    );
\gen_wr_a.gen_word_narrow.mem_reg_0_3_28_28\: unisim.vcomponents.RAM32X1S
    generic map(
      INIT => X"00000000"
    )
        port map (
      A0 => addra(0),
      A1 => addra(1),
      A2 => '0',
      A3 => '0',
      A4 => '0',
      D => dina(28),
      O => \gen_rd_a.gen_rd_a_synth_template.gen_rf_narrow_reg.douta_reg_reg0\(28),
      WCLK => clka,
      WE => p_0_in
    );
\gen_wr_a.gen_word_narrow.mem_reg_0_3_29_29\: unisim.vcomponents.RAM32X1S
    generic map(
      INIT => X"00000000"
    )
        port map (
      A0 => addra(0),
      A1 => addra(1),
      A2 => '0',
      A3 => '0',
      A4 => '0',
      D => dina(29),
      O => \gen_rd_a.gen_rd_a_synth_template.gen_rf_narrow_reg.douta_reg_reg0\(29),
      WCLK => clka,
      WE => p_0_in
    );
\gen_wr_a.gen_word_narrow.mem_reg_0_3_2_2\: unisim.vcomponents.RAM32X1S
    generic map(
      INIT => X"00000000"
    )
        port map (
      A0 => addra(0),
      A1 => addra(1),
      A2 => '0',
      A3 => '0',
      A4 => '0',
      D => dina(2),
      O => \gen_rd_a.gen_rd_a_synth_template.gen_rf_narrow_reg.douta_reg_reg0\(2),
      WCLK => clka,
      WE => p_0_in
    );
\gen_wr_a.gen_word_narrow.mem_reg_0_3_30_30\: unisim.vcomponents.RAM32X1S
    generic map(
      INIT => X"00000000"
    )
        port map (
      A0 => addra(0),
      A1 => addra(1),
      A2 => '0',
      A3 => '0',
      A4 => '0',
      D => dina(30),
      O => \gen_rd_a.gen_rd_a_synth_template.gen_rf_narrow_reg.douta_reg_reg0\(30),
      WCLK => clka,
      WE => p_0_in
    );
\gen_wr_a.gen_word_narrow.mem_reg_0_3_31_31\: unisim.vcomponents.RAM32X1S
    generic map(
      INIT => X"00000000"
    )
        port map (
      A0 => addra(0),
      A1 => addra(1),
      A2 => '0',
      A3 => '0',
      A4 => '0',
      D => dina(31),
      O => \gen_rd_a.gen_rd_a_synth_template.gen_rf_narrow_reg.douta_reg_reg0\(31),
      WCLK => clka,
      WE => p_0_in
    );
\gen_wr_a.gen_word_narrow.mem_reg_0_3_3_3\: unisim.vcomponents.RAM32X1S
    generic map(
      INIT => X"00000000"
    )
        port map (
      A0 => addra(0),
      A1 => addra(1),
      A2 => '0',
      A3 => '0',
      A4 => '0',
      D => dina(3),
      O => \gen_rd_a.gen_rd_a_synth_template.gen_rf_narrow_reg.douta_reg_reg0\(3),
      WCLK => clka,
      WE => p_0_in
    );
\gen_wr_a.gen_word_narrow.mem_reg_0_3_4_4\: unisim.vcomponents.RAM32X1S
    generic map(
      INIT => X"00000000"
    )
        port map (
      A0 => addra(0),
      A1 => addra(1),
      A2 => '0',
      A3 => '0',
      A4 => '0',
      D => dina(4),
      O => \gen_rd_a.gen_rd_a_synth_template.gen_rf_narrow_reg.douta_reg_reg0\(4),
      WCLK => clka,
      WE => p_0_in
    );
\gen_wr_a.gen_word_narrow.mem_reg_0_3_5_5\: unisim.vcomponents.RAM32X1S
    generic map(
      INIT => X"00000000"
    )
        port map (
      A0 => addra(0),
      A1 => addra(1),
      A2 => '0',
      A3 => '0',
      A4 => '0',
      D => dina(5),
      O => \gen_rd_a.gen_rd_a_synth_template.gen_rf_narrow_reg.douta_reg_reg0\(5),
      WCLK => clka,
      WE => p_0_in
    );
\gen_wr_a.gen_word_narrow.mem_reg_0_3_6_6\: unisim.vcomponents.RAM32X1S
    generic map(
      INIT => X"00000000"
    )
        port map (
      A0 => addra(0),
      A1 => addra(1),
      A2 => '0',
      A3 => '0',
      A4 => '0',
      D => dina(6),
      O => \gen_rd_a.gen_rd_a_synth_template.gen_rf_narrow_reg.douta_reg_reg0\(6),
      WCLK => clka,
      WE => p_0_in
    );
\gen_wr_a.gen_word_narrow.mem_reg_0_3_7_7\: unisim.vcomponents.RAM32X1S
    generic map(
      INIT => X"00000000"
    )
        port map (
      A0 => addra(0),
      A1 => addra(1),
      A2 => '0',
      A3 => '0',
      A4 => '0',
      D => dina(7),
      O => \gen_rd_a.gen_rd_a_synth_template.gen_rf_narrow_reg.douta_reg_reg0\(7),
      WCLK => clka,
      WE => p_0_in
    );
\gen_wr_a.gen_word_narrow.mem_reg_0_3_8_8\: unisim.vcomponents.RAM32X1S
    generic map(
      INIT => X"00000000"
    )
        port map (
      A0 => addra(0),
      A1 => addra(1),
      A2 => '0',
      A3 => '0',
      A4 => '0',
      D => dina(8),
      O => \gen_rd_a.gen_rd_a_synth_template.gen_rf_narrow_reg.douta_reg_reg0\(8),
      WCLK => clka,
      WE => p_0_in
    );
\gen_wr_a.gen_word_narrow.mem_reg_0_3_9_9\: unisim.vcomponents.RAM32X1S
    generic map(
      INIT => X"00000000"
    )
        port map (
      A0 => addra(0),
      A1 => addra(1),
      A2 => '0',
      A3 => '0',
      A4 => '0',
      D => dina(9),
      O => \gen_rd_a.gen_rd_a_synth_template.gen_rf_narrow_reg.douta_reg_reg0\(9),
      WCLK => clka,
      WE => p_0_in
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_slave_attachment is
  port (
    \INCLUDE_DPHASE_TIMER.dpto_cnt_reg[2]_0\ : out STD_LOGIC;
    S_AXI_RDATA : out STD_LOGIC_VECTOR ( 31 downto 0 );
    Q : out STD_LOGIC_VECTOR ( 1 downto 0 );
    ena : out STD_LOGIC;
    s_axi_rvalid_i_reg_0 : out STD_LOGIC;
    Bus_RNW_reg_reg_fret : out STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_ARESETN : in STD_LOGIC;
    S_AXI_ACLK : in STD_LOGIC;
    D : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_ARADDR : in STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_RREADY : in STD_LOGIC;
    S_AXI_ARVALID : in STD_LOGIC
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_slave_attachment;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_slave_attachment is
  signal \FSM_onehot_state[0]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_onehot_state[1]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_onehot_state[3]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_onehot_state_reg_n_0_[0]\ : STD_LOGIC;
  signal \FSM_onehot_state_reg_n_0_[3]\ : STD_LOGIC;
  signal \INCLUDE_DPHASE_TIMER.dpto_cnt\ : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \INCLUDE_DPHASE_TIMER.dpto_cnt0\ : STD_LOGIC;
  signal \INCLUDE_DPHASE_TIMER.dpto_cnt[2]_i_2_n_0\ : STD_LOGIC;
  signal \^include_dphase_timer.dpto_cnt_reg[2]_0\ : STD_LOGIC;
  signal bus2ip_rnw_i : STD_LOGIC;
  signal bus2ip_rnw_i06_out : STD_LOGIC;
  signal is_read_i_1_n_0 : STD_LOGIC;
  signal is_read_reg_n_0 : STD_LOGIC;
  signal p_0_in : STD_LOGIC;
  signal plusOp : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal rst : STD_LOGIC;
  signal s_axi_rresp_i : STD_LOGIC;
  signal s_axi_rvalid_i_i_1_n_0 : STD_LOGIC;
  signal \^s_axi_rvalid_i_reg_0\ : STD_LOGIC;
  signal start2 : STD_LOGIC;
  signal \state[0]_i_1_n_0\ : STD_LOGIC;
  signal \state[1]_i_1_n_0\ : STD_LOGIC;
  signal \state_reg_n_0_[0]\ : STD_LOGIC;
  signal \state_reg_n_0_[1]\ : STD_LOGIC;
  attribute FSM_ENCODED_STATES : string;
  attribute FSM_ENCODED_STATES of \FSM_onehot_state_reg[0]\ : label is "iSTATE:0010,iSTATE0:0100,iSTATE1:1000,iSTATE2:0001";
  attribute FSM_ENCODED_STATES of \FSM_onehot_state_reg[1]\ : label is "iSTATE:0010,iSTATE0:0100,iSTATE1:1000,iSTATE2:0001";
  attribute FSM_ENCODED_STATES of \FSM_onehot_state_reg[3]\ : label is "iSTATE:0010,iSTATE0:0100,iSTATE1:1000,iSTATE2:0001";
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \INCLUDE_DPHASE_TIMER.dpto_cnt[1]_i_1\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \INCLUDE_DPHASE_TIMER.dpto_cnt[2]_i_2\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of s_axi_rvalid_i_i_1 : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \state[1]_i_1\ : label is "soft_lutpair1";
begin
  \INCLUDE_DPHASE_TIMER.dpto_cnt_reg[2]_0\ <= \^include_dphase_timer.dpto_cnt_reg[2]_0\;
  s_axi_rvalid_i_reg_0 <= \^s_axi_rvalid_i_reg_0\;
\FSM_onehot_state[0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F4444444"
    )
        port map (
      I0 => S_AXI_ARVALID,
      I1 => \FSM_onehot_state_reg_n_0_[0]\,
      I2 => \^s_axi_rvalid_i_reg_0\,
      I3 => S_AXI_RREADY,
      I4 => \FSM_onehot_state_reg_n_0_[3]\,
      O => \FSM_onehot_state[0]_i_1_n_0\
    );
\FSM_onehot_state[1]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8F88"
    )
        port map (
      I0 => S_AXI_ARVALID,
      I1 => \FSM_onehot_state_reg_n_0_[0]\,
      I2 => \^include_dphase_timer.dpto_cnt_reg[2]_0\,
      I3 => s_axi_rresp_i,
      O => \FSM_onehot_state[1]_i_1_n_0\
    );
\FSM_onehot_state[3]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FF707070"
    )
        port map (
      I0 => \^s_axi_rvalid_i_reg_0\,
      I1 => S_AXI_RREADY,
      I2 => \FSM_onehot_state_reg_n_0_[3]\,
      I3 => \^include_dphase_timer.dpto_cnt_reg[2]_0\,
      I4 => s_axi_rresp_i,
      O => \FSM_onehot_state[3]_i_1_n_0\
    );
\FSM_onehot_state_reg[0]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => S_AXI_ACLK,
      CE => '1',
      D => \FSM_onehot_state[0]_i_1_n_0\,
      Q => \FSM_onehot_state_reg_n_0_[0]\,
      S => rst
    );
\FSM_onehot_state_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => S_AXI_ACLK,
      CE => '1',
      D => \FSM_onehot_state[1]_i_1_n_0\,
      Q => s_axi_rresp_i,
      R => rst
    );
\FSM_onehot_state_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => S_AXI_ACLK,
      CE => '1',
      D => \FSM_onehot_state[3]_i_1_n_0\,
      Q => \FSM_onehot_state_reg_n_0_[3]\,
      R => rst
    );
\INCLUDE_DPHASE_TIMER.dpto_cnt[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \INCLUDE_DPHASE_TIMER.dpto_cnt\(0),
      O => plusOp(0)
    );
\INCLUDE_DPHASE_TIMER.dpto_cnt[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \INCLUDE_DPHASE_TIMER.dpto_cnt\(0),
      I1 => \INCLUDE_DPHASE_TIMER.dpto_cnt\(1),
      O => plusOp(1)
    );
\INCLUDE_DPHASE_TIMER.dpto_cnt[2]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \state_reg_n_0_[0]\,
      I1 => \state_reg_n_0_[1]\,
      O => \INCLUDE_DPHASE_TIMER.dpto_cnt0\
    );
\INCLUDE_DPHASE_TIMER.dpto_cnt[2]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"78"
    )
        port map (
      I0 => \INCLUDE_DPHASE_TIMER.dpto_cnt\(1),
      I1 => \INCLUDE_DPHASE_TIMER.dpto_cnt\(0),
      I2 => \INCLUDE_DPHASE_TIMER.dpto_cnt\(2),
      O => \INCLUDE_DPHASE_TIMER.dpto_cnt[2]_i_2_n_0\
    );
\INCLUDE_DPHASE_TIMER.dpto_cnt_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => '1',
      D => plusOp(0),
      Q => \INCLUDE_DPHASE_TIMER.dpto_cnt\(0),
      R => \INCLUDE_DPHASE_TIMER.dpto_cnt0\
    );
\INCLUDE_DPHASE_TIMER.dpto_cnt_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => '1',
      D => plusOp(1),
      Q => \INCLUDE_DPHASE_TIMER.dpto_cnt\(1),
      R => \INCLUDE_DPHASE_TIMER.dpto_cnt0\
    );
\INCLUDE_DPHASE_TIMER.dpto_cnt_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => '1',
      D => \INCLUDE_DPHASE_TIMER.dpto_cnt[2]_i_2_n_0\,
      Q => \INCLUDE_DPHASE_TIMER.dpto_cnt\(2),
      R => \INCLUDE_DPHASE_TIMER.dpto_cnt0\
    );
I_DECODER: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_address_decoder
     port map (
      Bus_RNW_reg_reg_fret_0(0) => Bus_RNW_reg_reg_fret(0),
      \INCLUDE_DPHASE_TIMER.dpto_cnt_reg[2]\ => \^include_dphase_timer.dpto_cnt_reg[2]_0\,
      Q(2 downto 0) => \INCLUDE_DPHASE_TIMER.dpto_cnt\(2 downto 0),
      S_AXI_ACLK => S_AXI_ACLK,
      S_AXI_ARESETN => S_AXI_ARESETN,
      S_AXI_ARREADY => is_read_reg_n_0,
      bus2ip_rnw_i => bus2ip_rnw_i,
      ena => ena,
      start2 => start2
    );
\bus2ip_addr_i_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => bus2ip_rnw_i06_out,
      D => S_AXI_ARADDR(0),
      Q => Q(0),
      R => rst
    );
\bus2ip_addr_i_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => bus2ip_rnw_i06_out,
      D => S_AXI_ARADDR(1),
      Q => Q(1),
      R => rst
    );
bus2ip_rnw_i_reg: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => bus2ip_rnw_i06_out,
      D => bus2ip_rnw_i06_out,
      Q => bus2ip_rnw_i,
      R => rst
    );
is_read_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8BBBBBBB88888888"
    )
        port map (
      I0 => S_AXI_ARVALID,
      I1 => \FSM_onehot_state_reg_n_0_[0]\,
      I2 => \^s_axi_rvalid_i_reg_0\,
      I3 => S_AXI_RREADY,
      I4 => \FSM_onehot_state_reg_n_0_[3]\,
      I5 => is_read_reg_n_0,
      O => is_read_i_1_n_0
    );
is_read_reg: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => '1',
      D => is_read_i_1_n_0,
      Q => is_read_reg_n_0,
      R => rst
    );
rst_i_1: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => S_AXI_ARESETN,
      O => p_0_in
    );
rst_reg: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => '1',
      D => p_0_in,
      Q => rst,
      R => '0'
    );
\s_axi_rdata_i_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => S_AXI_ACLK,
      CE => s_axi_rresp_i,
      D => D(0),
      Q => S_AXI_RDATA(0),
      R => rst
    );
\s_axi_rdata_i_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => S_AXI_ACLK,
      CE => s_axi_rresp_i,
      D => D(10),
      Q => S_AXI_RDATA(10),
      R => rst
    );
\s_axi_rdata_i_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => S_AXI_ACLK,
      CE => s_axi_rresp_i,
      D => D(11),
      Q => S_AXI_RDATA(11),
      R => rst
    );
\s_axi_rdata_i_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => S_AXI_ACLK,
      CE => s_axi_rresp_i,
      D => D(12),
      Q => S_AXI_RDATA(12),
      R => rst
    );
\s_axi_rdata_i_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => S_AXI_ACLK,
      CE => s_axi_rresp_i,
      D => D(13),
      Q => S_AXI_RDATA(13),
      R => rst
    );
\s_axi_rdata_i_reg[14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => S_AXI_ACLK,
      CE => s_axi_rresp_i,
      D => D(14),
      Q => S_AXI_RDATA(14),
      R => rst
    );
\s_axi_rdata_i_reg[15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => S_AXI_ACLK,
      CE => s_axi_rresp_i,
      D => D(15),
      Q => S_AXI_RDATA(15),
      R => rst
    );
\s_axi_rdata_i_reg[16]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => S_AXI_ACLK,
      CE => s_axi_rresp_i,
      D => D(16),
      Q => S_AXI_RDATA(16),
      R => rst
    );
\s_axi_rdata_i_reg[17]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => S_AXI_ACLK,
      CE => s_axi_rresp_i,
      D => D(17),
      Q => S_AXI_RDATA(17),
      R => rst
    );
\s_axi_rdata_i_reg[18]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => S_AXI_ACLK,
      CE => s_axi_rresp_i,
      D => D(18),
      Q => S_AXI_RDATA(18),
      R => rst
    );
\s_axi_rdata_i_reg[19]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => S_AXI_ACLK,
      CE => s_axi_rresp_i,
      D => D(19),
      Q => S_AXI_RDATA(19),
      R => rst
    );
\s_axi_rdata_i_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => S_AXI_ACLK,
      CE => s_axi_rresp_i,
      D => D(1),
      Q => S_AXI_RDATA(1),
      R => rst
    );
\s_axi_rdata_i_reg[20]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => S_AXI_ACLK,
      CE => s_axi_rresp_i,
      D => D(20),
      Q => S_AXI_RDATA(20),
      R => rst
    );
\s_axi_rdata_i_reg[21]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => S_AXI_ACLK,
      CE => s_axi_rresp_i,
      D => D(21),
      Q => S_AXI_RDATA(21),
      R => rst
    );
\s_axi_rdata_i_reg[22]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => S_AXI_ACLK,
      CE => s_axi_rresp_i,
      D => D(22),
      Q => S_AXI_RDATA(22),
      R => rst
    );
\s_axi_rdata_i_reg[23]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => S_AXI_ACLK,
      CE => s_axi_rresp_i,
      D => D(23),
      Q => S_AXI_RDATA(23),
      R => rst
    );
\s_axi_rdata_i_reg[24]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => S_AXI_ACLK,
      CE => s_axi_rresp_i,
      D => D(24),
      Q => S_AXI_RDATA(24),
      R => rst
    );
\s_axi_rdata_i_reg[25]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => S_AXI_ACLK,
      CE => s_axi_rresp_i,
      D => D(25),
      Q => S_AXI_RDATA(25),
      R => rst
    );
\s_axi_rdata_i_reg[26]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => S_AXI_ACLK,
      CE => s_axi_rresp_i,
      D => D(26),
      Q => S_AXI_RDATA(26),
      R => rst
    );
\s_axi_rdata_i_reg[27]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => S_AXI_ACLK,
      CE => s_axi_rresp_i,
      D => D(27),
      Q => S_AXI_RDATA(27),
      R => rst
    );
\s_axi_rdata_i_reg[28]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => S_AXI_ACLK,
      CE => s_axi_rresp_i,
      D => D(28),
      Q => S_AXI_RDATA(28),
      R => rst
    );
\s_axi_rdata_i_reg[29]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => S_AXI_ACLK,
      CE => s_axi_rresp_i,
      D => D(29),
      Q => S_AXI_RDATA(29),
      R => rst
    );
\s_axi_rdata_i_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => S_AXI_ACLK,
      CE => s_axi_rresp_i,
      D => D(2),
      Q => S_AXI_RDATA(2),
      R => rst
    );
\s_axi_rdata_i_reg[30]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => S_AXI_ACLK,
      CE => s_axi_rresp_i,
      D => D(30),
      Q => S_AXI_RDATA(30),
      R => rst
    );
\s_axi_rdata_i_reg[31]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => S_AXI_ACLK,
      CE => s_axi_rresp_i,
      D => D(31),
      Q => S_AXI_RDATA(31),
      R => rst
    );
\s_axi_rdata_i_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => S_AXI_ACLK,
      CE => s_axi_rresp_i,
      D => D(3),
      Q => S_AXI_RDATA(3),
      R => rst
    );
\s_axi_rdata_i_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => S_AXI_ACLK,
      CE => s_axi_rresp_i,
      D => D(4),
      Q => S_AXI_RDATA(4),
      R => rst
    );
\s_axi_rdata_i_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => S_AXI_ACLK,
      CE => s_axi_rresp_i,
      D => D(5),
      Q => S_AXI_RDATA(5),
      R => rst
    );
\s_axi_rdata_i_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => S_AXI_ACLK,
      CE => s_axi_rresp_i,
      D => D(6),
      Q => S_AXI_RDATA(6),
      R => rst
    );
\s_axi_rdata_i_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => S_AXI_ACLK,
      CE => s_axi_rresp_i,
      D => D(7),
      Q => S_AXI_RDATA(7),
      R => rst
    );
\s_axi_rdata_i_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => S_AXI_ACLK,
      CE => s_axi_rresp_i,
      D => D(8),
      Q => S_AXI_RDATA(8),
      R => rst
    );
\s_axi_rdata_i_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => S_AXI_ACLK,
      CE => s_axi_rresp_i,
      D => D(9),
      Q => S_AXI_RDATA(9),
      R => rst
    );
s_axi_rvalid_i_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"08FF0808"
    )
        port map (
      I0 => \^include_dphase_timer.dpto_cnt_reg[2]_0\,
      I1 => \state_reg_n_0_[0]\,
      I2 => \state_reg_n_0_[1]\,
      I3 => S_AXI_RREADY,
      I4 => \^s_axi_rvalid_i_reg_0\,
      O => s_axi_rvalid_i_i_1_n_0
    );
s_axi_rvalid_i_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => S_AXI_ACLK,
      CE => '1',
      D => s_axi_rvalid_i_i_1_n_0,
      Q => \^s_axi_rvalid_i_reg_0\,
      R => rst
    );
start2_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"10"
    )
        port map (
      I0 => \state_reg_n_0_[0]\,
      I1 => \state_reg_n_0_[1]\,
      I2 => S_AXI_ARVALID,
      O => bus2ip_rnw_i06_out
    );
start2_reg: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => '1',
      D => bus2ip_rnw_i06_out,
      Q => start2,
      R => rst
    );
\state[0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"3FFF2222"
    )
        port map (
      I0 => S_AXI_ARVALID,
      I1 => \state_reg_n_0_[1]\,
      I2 => S_AXI_RREADY,
      I3 => \^s_axi_rvalid_i_reg_0\,
      I4 => \state_reg_n_0_[0]\,
      O => \state[0]_i_1_n_0\
    );
\state[1]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7FF070F0"
    )
        port map (
      I0 => \^s_axi_rvalid_i_reg_0\,
      I1 => S_AXI_RREADY,
      I2 => \state_reg_n_0_[1]\,
      I3 => \state_reg_n_0_[0]\,
      I4 => \^include_dphase_timer.dpto_cnt_reg[2]_0\,
      O => \state[1]_i_1_n_0\
    );
\state_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => S_AXI_ACLK,
      CE => '1',
      D => \state[0]_i_1_n_0\,
      Q => \state_reg_n_0_[0]\,
      R => rst
    );
\state_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => S_AXI_ACLK,
      CE => '1',
      D => \state[1]_i_1_n_0\,
      Q => \state_reg_n_0_[1]\,
      R => rst
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_memory_spram is
  port (
    sleep : in STD_LOGIC;
    clka : in STD_LOGIC;
    rsta : in STD_LOGIC;
    ena : in STD_LOGIC;
    regcea : in STD_LOGIC;
    wea : in STD_LOGIC_VECTOR ( 0 to 0 );
    addra : in STD_LOGIC_VECTOR ( 1 downto 0 );
    dina : in STD_LOGIC_VECTOR ( 31 downto 0 );
    injectsbiterra : in STD_LOGIC;
    injectdbiterra : in STD_LOGIC;
    douta : out STD_LOGIC_VECTOR ( 31 downto 0 );
    sbiterra : out STD_LOGIC;
    dbiterra : out STD_LOGIC
  );
  attribute ADDR_WIDTH_A : integer;
  attribute ADDR_WIDTH_A of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_memory_spram : entity is 2;
  attribute AUTO_SLEEP_TIME : integer;
  attribute AUTO_SLEEP_TIME of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_memory_spram : entity is 0;
  attribute BYTE_WRITE_WIDTH_A : integer;
  attribute BYTE_WRITE_WIDTH_A of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_memory_spram : entity is 32;
  attribute CASCADE_HEIGHT : integer;
  attribute CASCADE_HEIGHT of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_memory_spram : entity is 0;
  attribute ECC_BIT_RANGE : string;
  attribute ECC_BIT_RANGE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_memory_spram : entity is "[7:0]";
  attribute ECC_MODE : string;
  attribute ECC_MODE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_memory_spram : entity is "no_ecc";
  attribute ECC_TYPE : string;
  attribute ECC_TYPE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_memory_spram : entity is "NONE";
  attribute IGNORE_INIT_SYNTH : integer;
  attribute IGNORE_INIT_SYNTH of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_memory_spram : entity is 0;
  attribute MEMORY_INIT_FILE : string;
  attribute MEMORY_INIT_FILE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_memory_spram : entity is "none";
  attribute MEMORY_INIT_PARAM : string;
  attribute MEMORY_INIT_PARAM of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_memory_spram : entity is "0";
  attribute MEMORY_OPTIMIZATION : string;
  attribute MEMORY_OPTIMIZATION of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_memory_spram : entity is "true";
  attribute MEMORY_PRIMITIVE : string;
  attribute MEMORY_PRIMITIVE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_memory_spram : entity is "distributed";
  attribute MEMORY_SIZE : integer;
  attribute MEMORY_SIZE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_memory_spram : entity is 128;
  attribute MESSAGE_CONTROL : integer;
  attribute MESSAGE_CONTROL of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_memory_spram : entity is 0;
  attribute P_CLOCKING_MODE : integer;
  attribute P_CLOCKING_MODE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_memory_spram : entity is 0;
  attribute P_ECC_MODE : integer;
  attribute P_ECC_MODE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_memory_spram : entity is 0;
  attribute P_MEMORY_OPTIMIZATION : integer;
  attribute P_MEMORY_OPTIMIZATION of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_memory_spram : entity is 1;
  attribute P_MEMORY_PRIMITIVE : integer;
  attribute P_MEMORY_PRIMITIVE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_memory_spram : entity is 1;
  attribute P_WAKEUP_TIME : integer;
  attribute P_WAKEUP_TIME of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_memory_spram : entity is 0;
  attribute P_WRITE_MODE_A : integer;
  attribute P_WRITE_MODE_A of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_memory_spram : entity is 1;
  attribute READ_DATA_WIDTH_A : integer;
  attribute READ_DATA_WIDTH_A of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_memory_spram : entity is 32;
  attribute READ_LATENCY_A : integer;
  attribute READ_LATENCY_A of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_memory_spram : entity is 1;
  attribute READ_RESET_VALUE_A : string;
  attribute READ_RESET_VALUE_A of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_memory_spram : entity is "0";
  attribute RST_MODE_A : string;
  attribute RST_MODE_A of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_memory_spram : entity is "SYNC";
  attribute SIM_ASSERT_CHK : integer;
  attribute SIM_ASSERT_CHK of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_memory_spram : entity is 0;
  attribute USE_MEM_INIT : integer;
  attribute USE_MEM_INIT of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_memory_spram : entity is 1;
  attribute USE_MEM_INIT_MMI : integer;
  attribute USE_MEM_INIT_MMI of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_memory_spram : entity is 0;
  attribute WAKEUP_TIME : string;
  attribute WAKEUP_TIME of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_memory_spram : entity is "disable_sleep";
  attribute WRITE_DATA_WIDTH_A : integer;
  attribute WRITE_DATA_WIDTH_A of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_memory_spram : entity is 32;
  attribute WRITE_MODE_A : string;
  attribute WRITE_MODE_A of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_memory_spram : entity is "read_first";
  attribute WRITE_PROTECT : integer;
  attribute WRITE_PROTECT of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_memory_spram : entity is 1;
  attribute XPM_MODULE : string;
  attribute XPM_MODULE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_memory_spram : entity is "TRUE";
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_memory_spram;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_memory_spram is
  signal \<const0>\ : STD_LOGIC;
  signal NLW_xpm_memory_base_inst_dbiterra_UNCONNECTED : STD_LOGIC;
  signal NLW_xpm_memory_base_inst_dbiterrb_UNCONNECTED : STD_LOGIC;
  signal NLW_xpm_memory_base_inst_sbiterra_UNCONNECTED : STD_LOGIC;
  signal NLW_xpm_memory_base_inst_sbiterrb_UNCONNECTED : STD_LOGIC;
  signal NLW_xpm_memory_base_inst_doutb_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 0 );
  attribute ADDR_WIDTH_A of xpm_memory_base_inst : label is 2;
  attribute ADDR_WIDTH_B : integer;
  attribute ADDR_WIDTH_B of xpm_memory_base_inst : label is 2;
  attribute AUTO_SLEEP_TIME of xpm_memory_base_inst : label is 0;
  attribute BYTE_WRITE_WIDTH_A of xpm_memory_base_inst : label is 32;
  attribute BYTE_WRITE_WIDTH_B : integer;
  attribute BYTE_WRITE_WIDTH_B of xpm_memory_base_inst : label is 32;
  attribute CASCADE_HEIGHT of xpm_memory_base_inst : label is 0;
  attribute CLOCKING_MODE : integer;
  attribute CLOCKING_MODE of xpm_memory_base_inst : label is 0;
  attribute ECC_BIT_RANGE of xpm_memory_base_inst : label is "[7:0]";
  attribute ECC_MODE_integer : integer;
  attribute ECC_MODE_integer of xpm_memory_base_inst : label is 0;
  attribute ECC_TYPE of xpm_memory_base_inst : label is "NONE";
  attribute IGNORE_INIT_SYNTH of xpm_memory_base_inst : label is 0;
  attribute KEEP_HIERARCHY : string;
  attribute KEEP_HIERARCHY of xpm_memory_base_inst : label is "soft";
  attribute MAX_NUM_CHAR : integer;
  attribute MAX_NUM_CHAR of xpm_memory_base_inst : label is 0;
  attribute MEMORY_INIT_FILE of xpm_memory_base_inst : label is "none";
  attribute MEMORY_INIT_PARAM of xpm_memory_base_inst : label is "0";
  attribute MEMORY_OPTIMIZATION of xpm_memory_base_inst : label is "true";
  attribute MEMORY_PRIMITIVE_integer : integer;
  attribute MEMORY_PRIMITIVE_integer of xpm_memory_base_inst : label is 1;
  attribute MEMORY_SIZE of xpm_memory_base_inst : label is 128;
  attribute MEMORY_TYPE : integer;
  attribute MEMORY_TYPE of xpm_memory_base_inst : label is 0;
  attribute MESSAGE_CONTROL of xpm_memory_base_inst : label is 0;
  attribute NUM_CHAR_LOC : integer;
  attribute NUM_CHAR_LOC of xpm_memory_base_inst : label is 0;
  attribute P_ECC_MODE_string : string;
  attribute P_ECC_MODE_string of xpm_memory_base_inst : label is "no_ecc";
  attribute P_ENABLE_BYTE_WRITE_A : integer;
  attribute P_ENABLE_BYTE_WRITE_A of xpm_memory_base_inst : label is 0;
  attribute P_ENABLE_BYTE_WRITE_B : integer;
  attribute P_ENABLE_BYTE_WRITE_B of xpm_memory_base_inst : label is 0;
  attribute P_MAX_DEPTH_DATA : integer;
  attribute P_MAX_DEPTH_DATA of xpm_memory_base_inst : label is 4;
  attribute P_MEMORY_OPT : string;
  attribute P_MEMORY_OPT of xpm_memory_base_inst : label is "yes";
  attribute P_MEMORY_PRIMITIVE_string : string;
  attribute P_MEMORY_PRIMITIVE_string of xpm_memory_base_inst : label is "distributed";
  attribute P_MIN_WIDTH_DATA : integer;
  attribute P_MIN_WIDTH_DATA of xpm_memory_base_inst : label is 32;
  attribute P_MIN_WIDTH_DATA_A : integer;
  attribute P_MIN_WIDTH_DATA_A of xpm_memory_base_inst : label is 32;
  attribute P_MIN_WIDTH_DATA_B : integer;
  attribute P_MIN_WIDTH_DATA_B of xpm_memory_base_inst : label is 32;
  attribute P_MIN_WIDTH_DATA_ECC : integer;
  attribute P_MIN_WIDTH_DATA_ECC of xpm_memory_base_inst : label is 32;
  attribute P_MIN_WIDTH_DATA_LDW : integer;
  attribute P_MIN_WIDTH_DATA_LDW of xpm_memory_base_inst : label is 4;
  attribute P_MIN_WIDTH_DATA_SHFT : integer;
  attribute P_MIN_WIDTH_DATA_SHFT of xpm_memory_base_inst : label is 32;
  attribute P_NUM_COLS_WRITE_A : integer;
  attribute P_NUM_COLS_WRITE_A of xpm_memory_base_inst : label is 1;
  attribute P_NUM_COLS_WRITE_B : integer;
  attribute P_NUM_COLS_WRITE_B of xpm_memory_base_inst : label is 1;
  attribute P_NUM_ROWS_READ_A : integer;
  attribute P_NUM_ROWS_READ_A of xpm_memory_base_inst : label is 1;
  attribute P_NUM_ROWS_READ_B : integer;
  attribute P_NUM_ROWS_READ_B of xpm_memory_base_inst : label is 1;
  attribute P_NUM_ROWS_WRITE_A : integer;
  attribute P_NUM_ROWS_WRITE_A of xpm_memory_base_inst : label is 1;
  attribute P_NUM_ROWS_WRITE_B : integer;
  attribute P_NUM_ROWS_WRITE_B of xpm_memory_base_inst : label is 1;
  attribute P_SDP_WRITE_MODE : string;
  attribute P_SDP_WRITE_MODE of xpm_memory_base_inst : label is "yes";
  attribute P_WIDTH_ADDR_LSB_READ_A : integer;
  attribute P_WIDTH_ADDR_LSB_READ_A of xpm_memory_base_inst : label is 0;
  attribute P_WIDTH_ADDR_LSB_READ_B : integer;
  attribute P_WIDTH_ADDR_LSB_READ_B of xpm_memory_base_inst : label is 0;
  attribute P_WIDTH_ADDR_LSB_WRITE_A : integer;
  attribute P_WIDTH_ADDR_LSB_WRITE_A of xpm_memory_base_inst : label is 0;
  attribute P_WIDTH_ADDR_LSB_WRITE_B : integer;
  attribute P_WIDTH_ADDR_LSB_WRITE_B of xpm_memory_base_inst : label is 0;
  attribute P_WIDTH_ADDR_READ_A : integer;
  attribute P_WIDTH_ADDR_READ_A of xpm_memory_base_inst : label is 2;
  attribute P_WIDTH_ADDR_READ_B : integer;
  attribute P_WIDTH_ADDR_READ_B of xpm_memory_base_inst : label is 2;
  attribute P_WIDTH_ADDR_WRITE_A : integer;
  attribute P_WIDTH_ADDR_WRITE_A of xpm_memory_base_inst : label is 2;
  attribute P_WIDTH_ADDR_WRITE_B : integer;
  attribute P_WIDTH_ADDR_WRITE_B of xpm_memory_base_inst : label is 2;
  attribute P_WIDTH_COL_WRITE_A : integer;
  attribute P_WIDTH_COL_WRITE_A of xpm_memory_base_inst : label is 32;
  attribute P_WIDTH_COL_WRITE_B : integer;
  attribute P_WIDTH_COL_WRITE_B of xpm_memory_base_inst : label is 32;
  attribute READ_DATA_WIDTH_A of xpm_memory_base_inst : label is 32;
  attribute READ_DATA_WIDTH_B : integer;
  attribute READ_DATA_WIDTH_B of xpm_memory_base_inst : label is 32;
  attribute READ_LATENCY_A of xpm_memory_base_inst : label is 1;
  attribute READ_LATENCY_B : integer;
  attribute READ_LATENCY_B of xpm_memory_base_inst : label is 1;
  attribute READ_RESET_VALUE_A of xpm_memory_base_inst : label is "0";
  attribute READ_RESET_VALUE_B : string;
  attribute READ_RESET_VALUE_B of xpm_memory_base_inst : label is "0";
  attribute RST_MODE_A of xpm_memory_base_inst : label is "SYNC";
  attribute RST_MODE_B : string;
  attribute RST_MODE_B of xpm_memory_base_inst : label is "SYNC";
  attribute SIM_ASSERT_CHK of xpm_memory_base_inst : label is 0;
  attribute USE_EMBEDDED_CONSTRAINT : integer;
  attribute USE_EMBEDDED_CONSTRAINT of xpm_memory_base_inst : label is 0;
  attribute USE_MEM_INIT of xpm_memory_base_inst : label is 1;
  attribute USE_MEM_INIT_MMI of xpm_memory_base_inst : label is 0;
  attribute VERSION : integer;
  attribute VERSION of xpm_memory_base_inst : label is 0;
  attribute WAKEUP_TIME_integer : integer;
  attribute WAKEUP_TIME_integer of xpm_memory_base_inst : label is 0;
  attribute WRITE_DATA_WIDTH_A of xpm_memory_base_inst : label is 32;
  attribute WRITE_DATA_WIDTH_B : integer;
  attribute WRITE_DATA_WIDTH_B of xpm_memory_base_inst : label is 32;
  attribute WRITE_MODE_A_integer : integer;
  attribute WRITE_MODE_A_integer of xpm_memory_base_inst : label is 1;
  attribute WRITE_MODE_B : integer;
  attribute WRITE_MODE_B of xpm_memory_base_inst : label is 1;
  attribute WRITE_PROTECT of xpm_memory_base_inst : label is 1;
  attribute XPM_MODULE of xpm_memory_base_inst : label is "TRUE";
  attribute rsta_loop_iter : integer;
  attribute rsta_loop_iter of xpm_memory_base_inst : label is 32;
  attribute rstb_loop_iter : integer;
  attribute rstb_loop_iter of xpm_memory_base_inst : label is 32;
begin
  dbiterra <= \<const0>\;
  sbiterra <= \<const0>\;
GND: unisim.vcomponents.GND
     port map (
      G => \<const0>\
    );
xpm_memory_base_inst: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_memory_base
     port map (
      addra(1 downto 0) => addra(1 downto 0),
      addrb(1 downto 0) => B"00",
      clka => clka,
      clkb => '0',
      dbiterra => NLW_xpm_memory_base_inst_dbiterra_UNCONNECTED,
      dbiterrb => NLW_xpm_memory_base_inst_dbiterrb_UNCONNECTED,
      dina(31 downto 0) => dina(31 downto 0),
      dinb(31 downto 0) => B"00000000000000000000000000000000",
      douta(31 downto 0) => douta(31 downto 0),
      doutb(31 downto 0) => NLW_xpm_memory_base_inst_doutb_UNCONNECTED(31 downto 0),
      ena => ena,
      enb => '0',
      injectdbiterra => '0',
      injectdbiterrb => '0',
      injectsbiterra => '0',
      injectsbiterrb => '0',
      regcea => '0',
      regceb => '0',
      rsta => '0',
      rstb => '0',
      sbiterra => NLW_xpm_memory_base_inst_sbiterra_UNCONNECTED,
      sbiterrb => NLW_xpm_memory_base_inst_sbiterrb_UNCONNECTED,
      sleep => sleep,
      wea(0) => wea(0),
      web(0) => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_lite_ipif is
  port (
    \INCLUDE_DPHASE_TIMER.dpto_cnt_reg[2]\ : out STD_LOGIC;
    S_AXI_RDATA : out STD_LOGIC_VECTOR ( 31 downto 0 );
    Q : out STD_LOGIC_VECTOR ( 1 downto 0 );
    ena : out STD_LOGIC;
    s_axi_rvalid_i_reg : out STD_LOGIC;
    Bus_RNW_reg_reg_fret : out STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_ARESETN : in STD_LOGIC;
    S_AXI_ACLK : in STD_LOGIC;
    D : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_ARADDR : in STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_RREADY : in STD_LOGIC;
    S_AXI_ARVALID : in STD_LOGIC
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_lite_ipif;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_lite_ipif is
begin
I_SLAVE_ATTACHMENT: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_slave_attachment
     port map (
      Bus_RNW_reg_reg_fret(0) => Bus_RNW_reg_reg_fret(0),
      D(31 downto 0) => D(31 downto 0),
      \INCLUDE_DPHASE_TIMER.dpto_cnt_reg[2]_0\ => \INCLUDE_DPHASE_TIMER.dpto_cnt_reg[2]\,
      Q(1 downto 0) => Q(1 downto 0),
      S_AXI_ACLK => S_AXI_ACLK,
      S_AXI_ARADDR(1 downto 0) => S_AXI_ARADDR(1 downto 0),
      S_AXI_ARESETN => S_AXI_ARESETN,
      S_AXI_ARVALID => S_AXI_ARVALID,
      S_AXI_RDATA(31 downto 0) => S_AXI_RDATA(31 downto 0),
      S_AXI_RREADY => S_AXI_RREADY,
      ena => ena,
      s_axi_rvalid_i_reg_0 => s_axi_rvalid_i_reg
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_shell_utils_uuid_rom is
  port (
    S_AXI_ACLK : in STD_LOGIC;
    S_AXI_ARESETN : in STD_LOGIC;
    S_AXI_ARADDR : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_ARVALID : in STD_LOGIC;
    S_AXI_ARREADY : out STD_LOGIC;
    S_AXI_RDATA : out STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_RRESP : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_RVALID : out STD_LOGIC;
    S_AXI_RREADY : in STD_LOGIC
  );
  attribute C_MEMORY_INIT : string;
  attribute C_MEMORY_INIT of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_shell_utils_uuid_rom : entity is "0";
  attribute C_S_AXI_ADDR_WIDTH : integer;
  attribute C_S_AXI_ADDR_WIDTH of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_shell_utils_uuid_rom : entity is 4;
  attribute C_S_AXI_DATA_WIDTH : integer;
  attribute C_S_AXI_DATA_WIDTH of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_shell_utils_uuid_rom : entity is 32;
  attribute C_XDEVICEFAMILY : string;
  attribute C_XDEVICEFAMILY of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_shell_utils_uuid_rom : entity is "versal";
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_shell_utils_uuid_rom;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_shell_utils_uuid_rom is
  signal \<const0>\ : STD_LOGIC;
  signal Bus2IP_Addr : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal IP2Bus_Data : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal axi_lite_ipif_1_n_37 : STD_LOGIC;
  signal ena : STD_LOGIC;
  signal NLW_xpm_memory_spram_inst_dbiterra_UNCONNECTED : STD_LOGIC;
  signal NLW_xpm_memory_spram_inst_sbiterra_UNCONNECTED : STD_LOGIC;
  attribute ADDR_WIDTH_A : integer;
  attribute ADDR_WIDTH_A of xpm_memory_spram_inst : label is 2;
  attribute AUTO_SLEEP_TIME : integer;
  attribute AUTO_SLEEP_TIME of xpm_memory_spram_inst : label is 0;
  attribute BYTE_WRITE_WIDTH_A : integer;
  attribute BYTE_WRITE_WIDTH_A of xpm_memory_spram_inst : label is 32;
  attribute CASCADE_HEIGHT : integer;
  attribute CASCADE_HEIGHT of xpm_memory_spram_inst : label is 0;
  attribute DONT_TOUCH : boolean;
  attribute DONT_TOUCH of xpm_memory_spram_inst : label is std.standard.true;
  attribute ECC_BIT_RANGE : string;
  attribute ECC_BIT_RANGE of xpm_memory_spram_inst : label is "[7:0]";
  attribute ECC_MODE : string;
  attribute ECC_MODE of xpm_memory_spram_inst : label is "no_ecc";
  attribute ECC_TYPE : string;
  attribute ECC_TYPE of xpm_memory_spram_inst : label is "NONE";
  attribute IGNORE_INIT_SYNTH : integer;
  attribute IGNORE_INIT_SYNTH of xpm_memory_spram_inst : label is 0;
  attribute MEMORY_INIT_FILE : string;
  attribute MEMORY_INIT_FILE of xpm_memory_spram_inst : label is "none";
  attribute MEMORY_INIT_PARAM : string;
  attribute MEMORY_INIT_PARAM of xpm_memory_spram_inst : label is "0";
  attribute MEMORY_OPTIMIZATION : string;
  attribute MEMORY_OPTIMIZATION of xpm_memory_spram_inst : label is "true";
  attribute MEMORY_PRIMITIVE : string;
  attribute MEMORY_PRIMITIVE of xpm_memory_spram_inst : label is "distributed";
  attribute MEMORY_SIZE : integer;
  attribute MEMORY_SIZE of xpm_memory_spram_inst : label is 128;
  attribute MESSAGE_CONTROL : integer;
  attribute MESSAGE_CONTROL of xpm_memory_spram_inst : label is 0;
  attribute P_CLOCKING_MODE : integer;
  attribute P_CLOCKING_MODE of xpm_memory_spram_inst : label is 0;
  attribute P_ECC_MODE : integer;
  attribute P_ECC_MODE of xpm_memory_spram_inst : label is 0;
  attribute P_MEMORY_OPTIMIZATION : integer;
  attribute P_MEMORY_OPTIMIZATION of xpm_memory_spram_inst : label is 1;
  attribute P_MEMORY_PRIMITIVE : integer;
  attribute P_MEMORY_PRIMITIVE of xpm_memory_spram_inst : label is 1;
  attribute P_WAKEUP_TIME : integer;
  attribute P_WAKEUP_TIME of xpm_memory_spram_inst : label is 0;
  attribute P_WRITE_MODE_A : integer;
  attribute P_WRITE_MODE_A of xpm_memory_spram_inst : label is 1;
  attribute READ_DATA_WIDTH_A : integer;
  attribute READ_DATA_WIDTH_A of xpm_memory_spram_inst : label is 32;
  attribute READ_LATENCY_A : integer;
  attribute READ_LATENCY_A of xpm_memory_spram_inst : label is 1;
  attribute READ_RESET_VALUE_A : string;
  attribute READ_RESET_VALUE_A of xpm_memory_spram_inst : label is "0";
  attribute RST_MODE_A : string;
  attribute RST_MODE_A of xpm_memory_spram_inst : label is "SYNC";
  attribute SIM_ASSERT_CHK : integer;
  attribute SIM_ASSERT_CHK of xpm_memory_spram_inst : label is 0;
  attribute USE_MEM_INIT : integer;
  attribute USE_MEM_INIT of xpm_memory_spram_inst : label is 1;
  attribute USE_MEM_INIT_MMI : integer;
  attribute USE_MEM_INIT_MMI of xpm_memory_spram_inst : label is 0;
  attribute WAKEUP_TIME : string;
  attribute WAKEUP_TIME of xpm_memory_spram_inst : label is "disable_sleep";
  attribute WRITE_DATA_WIDTH_A : integer;
  attribute WRITE_DATA_WIDTH_A of xpm_memory_spram_inst : label is 32;
  attribute WRITE_MODE_A : string;
  attribute WRITE_MODE_A of xpm_memory_spram_inst : label is "read_first";
  attribute WRITE_PROTECT : integer;
  attribute WRITE_PROTECT of xpm_memory_spram_inst : label is 1;
  attribute XPM_MODULE : string;
  attribute XPM_MODULE of xpm_memory_spram_inst : label is "TRUE";
begin
  S_AXI_RRESP(1) <= \<const0>\;
  S_AXI_RRESP(0) <= \<const0>\;
GND: unisim.vcomponents.GND
     port map (
      G => \<const0>\
    );
axi_lite_ipif_1: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_lite_ipif
     port map (
      Bus_RNW_reg_reg_fret(0) => axi_lite_ipif_1_n_37,
      D(31 downto 0) => IP2Bus_Data(31 downto 0),
      \INCLUDE_DPHASE_TIMER.dpto_cnt_reg[2]\ => S_AXI_ARREADY,
      Q(1 downto 0) => Bus2IP_Addr(3 downto 2),
      S_AXI_ACLK => S_AXI_ACLK,
      S_AXI_ARADDR(1 downto 0) => S_AXI_ARADDR(3 downto 2),
      S_AXI_ARESETN => S_AXI_ARESETN,
      S_AXI_ARVALID => S_AXI_ARVALID,
      S_AXI_RDATA(31 downto 0) => S_AXI_RDATA(31 downto 0),
      S_AXI_RREADY => S_AXI_RREADY,
      ena => ena,
      s_axi_rvalid_i_reg => S_AXI_RVALID
    );
xpm_memory_spram_inst: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_memory_spram
     port map (
      addra(1 downto 0) => Bus2IP_Addr(3 downto 2),
      clka => S_AXI_ACLK,
      dbiterra => NLW_xpm_memory_spram_inst_dbiterra_UNCONNECTED,
      dina(31 downto 0) => B"00000000000000000000000000000000",
      douta(31 downto 0) => IP2Bus_Data(31 downto 0),
      ena => ena,
      injectdbiterra => '0',
      injectsbiterra => '0',
      regcea => '0',
      rsta => '0',
      sbiterra => NLW_xpm_memory_spram_inst_sbiterra_UNCONNECTED,
      sleep => '0',
      wea(0) => axi_lite_ipif_1_n_37
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
  port (
    S_AXI_ACLK : in STD_LOGIC;
    S_AXI_ARESETN : in STD_LOGIC;
    S_AXI_ARADDR : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_ARVALID : in STD_LOGIC;
    S_AXI_ARREADY : out STD_LOGIC;
    S_AXI_RDATA : out STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_RRESP : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_RVALID : out STD_LOGIC;
    S_AXI_RREADY : in STD_LOGIC
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "top_uuid_rom_0,shell_utils_uuid_rom,{}";
  attribute downgradeipidentifiedwarnings : string;
  attribute downgradeipidentifiedwarnings of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "yes";
  attribute x_core_info : string;
  attribute x_core_info of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "shell_utils_uuid_rom,Vivado 2022.2";
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
  signal \<const0>\ : STD_LOGIC;
  signal NLW_U0_S_AXI_RRESP_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  attribute C_MEMORY_INIT : string;
  attribute C_MEMORY_INIT of U0 : label is "0";
  attribute C_S_AXI_ADDR_WIDTH : integer;
  attribute C_S_AXI_ADDR_WIDTH of U0 : label is 4;
  attribute C_S_AXI_DATA_WIDTH : integer;
  attribute C_S_AXI_DATA_WIDTH of U0 : label is 32;
  attribute C_XDEVICEFAMILY : string;
  attribute C_XDEVICEFAMILY of U0 : label is "versal";
  attribute x_interface_info : string;
  attribute x_interface_info of S_AXI_ACLK : signal is "xilinx.com:signal:clock:1.0 S_AXI_signal_clock CLK";
  attribute x_interface_parameter : string;
  attribute x_interface_parameter of S_AXI_ACLK : signal is "XIL_INTERFACENAME S_AXI_signal_clock, ASSOCIATED_BUSIF S_AXI, ASSOCIATED_RESET S_AXI_ARESETN, FREQ_HZ 99999992, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN bd_4885_pspmc_0_0_pl0_ref_clk, INSERT_VIP 0";
  attribute x_interface_info of S_AXI_ARESETN : signal is "xilinx.com:signal:reset:1.0 S_AXI_signal_reset RST";
  attribute x_interface_parameter of S_AXI_ARESETN : signal is "XIL_INTERFACENAME S_AXI_signal_reset, POLARITY ACTIVE_LOW, INSERT_VIP 0";
  attribute x_interface_info of S_AXI_ARREADY : signal is "xilinx.com:interface:aximm:1.0 S_AXI ARREADY";
  attribute x_interface_info of S_AXI_ARVALID : signal is "xilinx.com:interface:aximm:1.0 S_AXI ARVALID";
  attribute x_interface_info of S_AXI_RREADY : signal is "xilinx.com:interface:aximm:1.0 S_AXI RREADY";
  attribute x_interface_info of S_AXI_RVALID : signal is "xilinx.com:interface:aximm:1.0 S_AXI RVALID";
  attribute x_interface_info of S_AXI_ARADDR : signal is "xilinx.com:interface:aximm:1.0 S_AXI ARADDR";
  attribute x_interface_parameter of S_AXI_ARADDR : signal is "XIL_INTERFACENAME S_AXI, DATA_WIDTH 32, PROTOCOL AXI4LITE, FREQ_HZ 99999992, ID_WIDTH 0, ADDR_WIDTH 4, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, READ_WRITE_MODE READ_ONLY, HAS_BURST 0, HAS_LOCK 0, HAS_PROT 0, HAS_CACHE 0, HAS_QOS 0, HAS_REGION 0, HAS_WSTRB 0, HAS_BRESP 0, HAS_RRESP 1, SUPPORTS_NARROW_BURST 0, NUM_READ_OUTSTANDING 32, NUM_WRITE_OUTSTANDING 32, MAX_BURST_LENGTH 1, PHASE 0.0, CLK_DOMAIN bd_4885_pspmc_0_0_pl0_ref_clk, NUM_READ_THREADS 1, NUM_WRITE_THREADS 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, INSERT_VIP 0";
  attribute x_interface_info of S_AXI_RDATA : signal is "xilinx.com:interface:aximm:1.0 S_AXI RDATA";
  attribute x_interface_info of S_AXI_RRESP : signal is "xilinx.com:interface:aximm:1.0 S_AXI RRESP";
begin
  S_AXI_RRESP(1) <= \<const0>\;
  S_AXI_RRESP(0) <= \<const0>\;
GND: unisim.vcomponents.GND
     port map (
      G => \<const0>\
    );
U0: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_shell_utils_uuid_rom
     port map (
      S_AXI_ACLK => S_AXI_ACLK,
      S_AXI_ARADDR(3 downto 2) => S_AXI_ARADDR(3 downto 2),
      S_AXI_ARADDR(1 downto 0) => B"00",
      S_AXI_ARESETN => S_AXI_ARESETN,
      S_AXI_ARREADY => S_AXI_ARREADY,
      S_AXI_ARVALID => S_AXI_ARVALID,
      S_AXI_RDATA(31 downto 0) => S_AXI_RDATA(31 downto 0),
      S_AXI_RREADY => S_AXI_RREADY,
      S_AXI_RRESP(1 downto 0) => NLW_U0_S_AXI_RRESP_UNCONNECTED(1 downto 0),
      S_AXI_RVALID => S_AXI_RVALID
    );
end STRUCTURE;
