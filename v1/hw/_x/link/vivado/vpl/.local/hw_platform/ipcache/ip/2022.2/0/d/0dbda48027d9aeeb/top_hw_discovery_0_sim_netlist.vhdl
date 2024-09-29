-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2022.2 (lin64) Build 3671981 Fri Oct 14 04:59:54 MDT 2022
-- Date        : Mon Dec  5 00:25:48 2022
-- Host        : xsjdcslab02.xilinx.com running 64-bit CentOS Linux release 8.1.1911 (Core)
-- Command     : write_vhdl -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
--               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ top_hw_discovery_0_sim_netlist.vhdl
-- Design      : top_hw_discovery_0
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
    Bus2IP_CS : out STD_LOGIC;
    \INCLUDE_DPHASE_TIMER.dpto_cnt_reg[0]\ : out STD_LOGIC;
    \INCLUDE_DPHASE_TIMER.dpto_cnt_reg[0]_0\ : out STD_LOGIC;
    \MEM_DECODE_GEN[0].cs_out_i_reg[0]_0\ : out STD_LOGIC;
    aclk_ctrl : in STD_LOGIC;
    \MEM_DECODE_GEN[0].cs_out_i_reg[0]_1\ : in STD_LOGIC;
    aresetn_ctrl : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 4 downto 0 );
    s_axi_ctrl_pf1_ARREADY : in STD_LOGIC;
    IP2Bus_WrAck : in STD_LOGIC;
    s_axi_ctrl_pf1_AWREADY : in STD_LOGIC
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_address_decoder;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_address_decoder is
  signal \^bus2ip_cs\ : STD_LOGIC;
  signal \^include_dphase_timer.dpto_cnt_reg[0]\ : STD_LOGIC;
  signal \^include_dphase_timer.dpto_cnt_reg[0]_0\ : STD_LOGIC;
  signal \MEM_DECODE_GEN[0].cs_out_i[0]_i_1__0_n_0\ : STD_LOGIC;
  signal s_axi_ctrl_pf1_WREADY_INST_0_i_1_n_0 : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \IP2Bus_Data[28]_i_1__0\ : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of \MEM_DECODE_GEN[0].cs_out_i[0]_i_1__0\ : label is "soft_lutpair12";
begin
  Bus2IP_CS <= \^bus2ip_cs\;
  \INCLUDE_DPHASE_TIMER.dpto_cnt_reg[0]\ <= \^include_dphase_timer.dpto_cnt_reg[0]\;
  \INCLUDE_DPHASE_TIMER.dpto_cnt_reg[0]_0\ <= \^include_dphase_timer.dpto_cnt_reg[0]_0\;
\IP2Bus_Data[28]_i_1__0\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^bus2ip_cs\,
      O => \MEM_DECODE_GEN[0].cs_out_i_reg[0]_0\
    );
\MEM_DECODE_GEN[0].cs_out_i[0]_i_1__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00005400"
    )
        port map (
      I0 => \^include_dphase_timer.dpto_cnt_reg[0]\,
      I1 => \^bus2ip_cs\,
      I2 => \MEM_DECODE_GEN[0].cs_out_i_reg[0]_1\,
      I3 => aresetn_ctrl,
      I4 => \^include_dphase_timer.dpto_cnt_reg[0]_0\,
      O => \MEM_DECODE_GEN[0].cs_out_i[0]_i_1__0_n_0\
    );
\MEM_DECODE_GEN[0].cs_out_i_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => aclk_ctrl,
      CE => '1',
      D => \MEM_DECODE_GEN[0].cs_out_i[0]_i_1__0_n_0\,
      Q => \^bus2ip_cs\,
      R => '0'
    );
s_axi_ctrl_pf1_ARREADY_INST_0: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFF00200000"
    )
        port map (
      I0 => s_axi_ctrl_pf1_WREADY_INST_0_i_1_n_0,
      I1 => Q(0),
      I2 => s_axi_ctrl_pf1_ARREADY,
      I3 => Q(1),
      I4 => Q(2),
      I5 => IP2Bus_WrAck,
      O => \^include_dphase_timer.dpto_cnt_reg[0]\
    );
s_axi_ctrl_pf1_WREADY_INST_0: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFF00200000"
    )
        port map (
      I0 => s_axi_ctrl_pf1_WREADY_INST_0_i_1_n_0,
      I1 => Q(0),
      I2 => s_axi_ctrl_pf1_AWREADY,
      I3 => Q(1),
      I4 => Q(2),
      I5 => IP2Bus_WrAck,
      O => \^include_dphase_timer.dpto_cnt_reg[0]_0\
    );
s_axi_ctrl_pf1_WREADY_INST_0_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => Q(3),
      I1 => Q(4),
      O => s_axi_ctrl_pf1_WREADY_INST_0_i_1_n_0
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_address_decoder_2 is
  port (
    Bus2IP_CS : out STD_LOGIC;
    \INCLUDE_DPHASE_TIMER.dpto_cnt_reg[0]\ : out STD_LOGIC;
    \INCLUDE_DPHASE_TIMER.dpto_cnt_reg[0]_0\ : out STD_LOGIC;
    \MEM_DECODE_GEN[0].cs_out_i_reg[0]_0\ : out STD_LOGIC;
    aclk_ctrl : in STD_LOGIC;
    start2 : in STD_LOGIC;
    aresetn_ctrl : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 4 downto 0 );
    s_axi_ctrl_pf0_ARREADY : in STD_LOGIC;
    IP2Bus_WrAck : in STD_LOGIC;
    s_axi_ctrl_pf0_AWREADY : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_address_decoder_2 : entity is "address_decoder";
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_address_decoder_2;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_address_decoder_2 is
  signal \^bus2ip_cs\ : STD_LOGIC;
  signal \^include_dphase_timer.dpto_cnt_reg[0]\ : STD_LOGIC;
  signal \^include_dphase_timer.dpto_cnt_reg[0]_0\ : STD_LOGIC;
  signal \MEM_DECODE_GEN[0].cs_out_i[0]_i_1_n_0\ : STD_LOGIC;
  signal s_axi_ctrl_pf0_WREADY_INST_0_i_1_n_0 : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \IP2Bus_Data[29]_i_1\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \MEM_DECODE_GEN[0].cs_out_i[0]_i_1\ : label is "soft_lutpair0";
begin
  Bus2IP_CS <= \^bus2ip_cs\;
  \INCLUDE_DPHASE_TIMER.dpto_cnt_reg[0]\ <= \^include_dphase_timer.dpto_cnt_reg[0]\;
  \INCLUDE_DPHASE_TIMER.dpto_cnt_reg[0]_0\ <= \^include_dphase_timer.dpto_cnt_reg[0]_0\;
\IP2Bus_Data[29]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^bus2ip_cs\,
      O => \MEM_DECODE_GEN[0].cs_out_i_reg[0]_0\
    );
\MEM_DECODE_GEN[0].cs_out_i[0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00005400"
    )
        port map (
      I0 => \^include_dphase_timer.dpto_cnt_reg[0]\,
      I1 => \^bus2ip_cs\,
      I2 => start2,
      I3 => aresetn_ctrl,
      I4 => \^include_dphase_timer.dpto_cnt_reg[0]_0\,
      O => \MEM_DECODE_GEN[0].cs_out_i[0]_i_1_n_0\
    );
\MEM_DECODE_GEN[0].cs_out_i_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => aclk_ctrl,
      CE => '1',
      D => \MEM_DECODE_GEN[0].cs_out_i[0]_i_1_n_0\,
      Q => \^bus2ip_cs\,
      R => '0'
    );
s_axi_ctrl_pf0_ARREADY_INST_0: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFF00200000"
    )
        port map (
      I0 => s_axi_ctrl_pf0_WREADY_INST_0_i_1_n_0,
      I1 => Q(0),
      I2 => s_axi_ctrl_pf0_ARREADY,
      I3 => Q(1),
      I4 => Q(2),
      I5 => IP2Bus_WrAck,
      O => \^include_dphase_timer.dpto_cnt_reg[0]\
    );
s_axi_ctrl_pf0_WREADY_INST_0: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFF00200000"
    )
        port map (
      I0 => s_axi_ctrl_pf0_WREADY_INST_0_i_1_n_0,
      I1 => Q(0),
      I2 => s_axi_ctrl_pf0_AWREADY,
      I3 => Q(1),
      I4 => Q(2),
      I5 => IP2Bus_WrAck,
      O => \^include_dphase_timer.dpto_cnt_reg[0]_0\
    );
s_axi_ctrl_pf0_WREADY_INST_0_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => Q(3),
      I1 => Q(4),
      O => s_axi_ctrl_pf0_WREADY_INST_0_i_1_n_0
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_pcie_vsec is
  port (
    s_pcie4_cfg_ext_read_data_valid : out STD_LOGIC;
    s_pcie4_cfg_ext_read_data : out STD_LOGIC_VECTOR ( 3 downto 0 );
    s_pcie4_cfg_ext_read_received : in STD_LOGIC;
    aclk_pcie : in STD_LOGIC;
    s_pcie4_cfg_ext_function_number : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_pcie4_cfg_ext_register_number : in STD_LOGIC_VECTOR ( 9 downto 0 )
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_pcie_vsec;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_pcie_vsec is
  signal cfg_ext_read_data : STD_LOGIC_VECTOR ( 25 downto 1 );
  signal \cfg_ext_read_data[16]_i_1_n_0\ : STD_LOGIC;
  signal \cfg_ext_read_data[25]_i_3_n_0\ : STD_LOGIC;
  signal cfg_ext_read_data_valid : STD_LOGIC;
  signal p_0_in : STD_LOGIC_VECTOR ( 25 to 25 );
  signal p_1_out : STD_LOGIC_VECTOR ( 25 downto 1 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \cfg_ext_read_data[16]_i_1\ : label is "soft_lutpair22";
  attribute SOFT_HLUTNM of \cfg_ext_read_data[1]_i_1\ : label is "soft_lutpair22";
  attribute SOFT_HLUTNM of \cfg_ext_read_data[24]_i_1\ : label is "soft_lutpair23";
  attribute SOFT_HLUTNM of \cfg_ext_read_data[25]_i_2\ : label is "soft_lutpair23";
begin
\G_GENERATE_M_PCIE4_CFG_EXT.s_pcie4_cfg_ext_read_data_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => aclk_pcie,
      CE => '1',
      D => cfg_ext_read_data(16),
      Q => s_pcie4_cfg_ext_read_data(1),
      R => '0'
    );
\G_GENERATE_M_PCIE4_CFG_EXT.s_pcie4_cfg_ext_read_data_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => aclk_pcie,
      CE => '1',
      D => cfg_ext_read_data(1),
      Q => s_pcie4_cfg_ext_read_data(0),
      R => '0'
    );
\G_GENERATE_M_PCIE4_CFG_EXT.s_pcie4_cfg_ext_read_data_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => aclk_pcie,
      CE => '1',
      D => cfg_ext_read_data(24),
      Q => s_pcie4_cfg_ext_read_data(2),
      R => '0'
    );
\G_GENERATE_M_PCIE4_CFG_EXT.s_pcie4_cfg_ext_read_data_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => aclk_pcie,
      CE => '1',
      D => cfg_ext_read_data(25),
      Q => s_pcie4_cfg_ext_read_data(3),
      R => '0'
    );
\G_GENERATE_M_PCIE4_CFG_EXT.s_pcie4_cfg_ext_read_data_valid_reg\: unisim.vcomponents.FDRE
     port map (
      C => aclk_pcie,
      CE => '1',
      D => cfg_ext_read_data_valid,
      Q => s_pcie4_cfg_ext_read_data_valid,
      R => '0'
    );
\cfg_ext_read_data[16]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"01"
    )
        port map (
      I0 => s_pcie4_cfg_ext_function_number(1),
      I1 => s_pcie4_cfg_ext_register_number(0),
      I2 => s_pcie4_cfg_ext_register_number(1),
      O => \cfg_ext_read_data[16]_i_1_n_0\
    );
\cfg_ext_read_data[1]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"000D"
    )
        port map (
      I0 => s_pcie4_cfg_ext_register_number(1),
      I1 => s_pcie4_cfg_ext_function_number(0),
      I2 => s_pcie4_cfg_ext_function_number(1),
      I3 => s_pcie4_cfg_ext_register_number(0),
      O => p_1_out(1)
    );
\cfg_ext_read_data[24]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"02"
    )
        port map (
      I0 => s_pcie4_cfg_ext_register_number(0),
      I1 => s_pcie4_cfg_ext_function_number(1),
      I2 => s_pcie4_cfg_ext_register_number(1),
      O => p_1_out(24)
    );
\cfg_ext_read_data[25]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFBFFFFFFFFF"
    )
        port map (
      I0 => \cfg_ext_read_data[25]_i_3_n_0\,
      I1 => s_pcie4_cfg_ext_register_number(7),
      I2 => s_pcie4_cfg_ext_register_number(8),
      I3 => s_pcie4_cfg_ext_register_number(6),
      I4 => s_pcie4_cfg_ext_register_number(9),
      I5 => s_pcie4_cfg_ext_read_received,
      O => p_0_in(25)
    );
\cfg_ext_read_data[25]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"02"
    )
        port map (
      I0 => s_pcie4_cfg_ext_register_number(1),
      I1 => s_pcie4_cfg_ext_function_number(1),
      I2 => s_pcie4_cfg_ext_register_number(0),
      O => p_1_out(25)
    );
\cfg_ext_read_data[25]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => s_pcie4_cfg_ext_register_number(4),
      I1 => s_pcie4_cfg_ext_register_number(5),
      I2 => s_pcie4_cfg_ext_register_number(2),
      I3 => s_pcie4_cfg_ext_register_number(3),
      O => \cfg_ext_read_data[25]_i_3_n_0\
    );
\cfg_ext_read_data_reg[16]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk_pcie,
      CE => '1',
      D => \cfg_ext_read_data[16]_i_1_n_0\,
      Q => cfg_ext_read_data(16),
      R => p_0_in(25)
    );
\cfg_ext_read_data_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk_pcie,
      CE => '1',
      D => p_1_out(1),
      Q => cfg_ext_read_data(1),
      R => p_0_in(25)
    );
\cfg_ext_read_data_reg[24]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk_pcie,
      CE => '1',
      D => p_1_out(24),
      Q => cfg_ext_read_data(24),
      R => p_0_in(25)
    );
\cfg_ext_read_data_reg[25]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk_pcie,
      CE => '1',
      D => p_1_out(25),
      Q => cfg_ext_read_data(25),
      R => p_0_in(25)
    );
cfg_ext_read_data_valid_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk_pcie,
      CE => '1',
      D => s_pcie4_cfg_ext_read_received,
      Q => cfg_ext_read_data_valid,
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_slave_attachment is
  port (
    Bus2IP_CS : out STD_LOGIC;
    s_axi_ctrl_pf1_RVALID : out STD_LOGIC;
    s_axi_ctrl_pf1_BVALID : out STD_LOGIC;
    \INCLUDE_DPHASE_TIMER.dpto_cnt_reg[0]_0\ : out STD_LOGIC;
    \INCLUDE_DPHASE_TIMER.dpto_cnt_reg[0]_1\ : out STD_LOGIC;
    \MEM_DECODE_GEN[0].cs_out_i_reg[0]\ : out STD_LOGIC;
    s_axi_ctrl_pf1_RDATA : out STD_LOGIC_VECTOR ( 8 downto 0 );
    D : out STD_LOGIC_VECTOR ( 8 downto 0 );
    SR : in STD_LOGIC_VECTOR ( 0 to 0 );
    aclk_ctrl : in STD_LOGIC;
    s_axi_ctrl_pf1_ARVALID : in STD_LOGIC;
    aresetn_ctrl : in STD_LOGIC;
    IP2Bus_WrAck : in STD_LOGIC;
    s_axi_ctrl_pf1_AWVALID : in STD_LOGIC;
    s_axi_ctrl_pf1_WVALID : in STD_LOGIC;
    s_axi_ctrl_pf1_RREADY : in STD_LOGIC;
    s_axi_ctrl_pf1_BREADY : in STD_LOGIC;
    s_axi_ctrl_pf1_ARADDR : in STD_LOGIC_VECTOR ( 4 downto 0 );
    s_axi_ctrl_pf1_AWADDR : in STD_LOGIC_VECTOR ( 4 downto 0 );
    Q : in STD_LOGIC_VECTOR ( 8 downto 0 )
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_slave_attachment;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_slave_attachment is
  signal \FSM_onehot_state[0]_i_1__0_n_0\ : STD_LOGIC;
  signal \FSM_onehot_state[1]_i_1__0_n_0\ : STD_LOGIC;
  signal \FSM_onehot_state[2]_i_1__0_n_0\ : STD_LOGIC;
  signal \FSM_onehot_state[2]_i_2__0_n_0\ : STD_LOGIC;
  signal \FSM_onehot_state[3]_i_1__0_n_0\ : STD_LOGIC;
  signal \FSM_onehot_state_reg_n_0_[0]\ : STD_LOGIC;
  signal \FSM_onehot_state_reg_n_0_[3]\ : STD_LOGIC;
  signal \INCLUDE_DPHASE_TIMER.dpto_cnt[4]_i_1__0_n_0\ : STD_LOGIC;
  signal \INCLUDE_DPHASE_TIMER.dpto_cnt_reg\ : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal \^include_dphase_timer.dpto_cnt_reg[0]_0\ : STD_LOGIC;
  signal \^include_dphase_timer.dpto_cnt_reg[0]_1\ : STD_LOGIC;
  signal \bus2ip_addr_i[2]_i_1__0_n_0\ : STD_LOGIC;
  signal \bus2ip_addr_i[3]_i_1__0_n_0\ : STD_LOGIC;
  signal \bus2ip_addr_i[4]_i_1__0_n_0\ : STD_LOGIC;
  signal \bus2ip_addr_i[5]_i_1__0_n_0\ : STD_LOGIC;
  signal \bus2ip_addr_i[6]_i_1__0_n_0\ : STD_LOGIC;
  signal \bus2ip_addr_i_reg_n_0_[2]\ : STD_LOGIC;
  signal \bus2ip_addr_i_reg_n_0_[3]\ : STD_LOGIC;
  signal \bus2ip_addr_i_reg_n_0_[4]\ : STD_LOGIC;
  signal \bus2ip_addr_i_reg_n_0_[5]\ : STD_LOGIC;
  signal \bus2ip_addr_i_reg_n_0_[6]\ : STD_LOGIC;
  signal is_read : STD_LOGIC;
  signal \is_read_i_1__0_n_0\ : STD_LOGIC;
  signal is_read_reg_n_0 : STD_LOGIC;
  signal is_write : STD_LOGIC;
  signal is_write_reg_n_0 : STD_LOGIC;
  signal \plusOp__0\ : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal s_axi_bresp_i : STD_LOGIC;
  signal \s_axi_bvalid_i_i_1__0_n_0\ : STD_LOGIC;
  signal \^s_axi_ctrl_pf1_bvalid\ : STD_LOGIC;
  signal \^s_axi_ctrl_pf1_rvalid\ : STD_LOGIC;
  signal s_axi_rresp_i : STD_LOGIC;
  signal \s_axi_rvalid_i_i_1__0_n_0\ : STD_LOGIC;
  signal \start2_i_1__0_n_0\ : STD_LOGIC;
  signal start2_reg_n_0 : STD_LOGIC;
  signal \state1__2\ : STD_LOGIC;
  signal \state[0]_i_1__0_n_0\ : STD_LOGIC;
  signal \state[1]_i_1__0_n_0\ : STD_LOGIC;
  signal \state_reg_n_0_[0]\ : STD_LOGIC;
  signal \state_reg_n_0_[1]\ : STD_LOGIC;
  attribute FSM_ENCODED_STATES : string;
  attribute FSM_ENCODED_STATES of \FSM_onehot_state_reg[0]\ : label is "iSTATE:0010,iSTATE0:0100,iSTATE1:1000,iSTATE2:0001";
  attribute FSM_ENCODED_STATES of \FSM_onehot_state_reg[1]\ : label is "iSTATE:0010,iSTATE0:0100,iSTATE1:1000,iSTATE2:0001";
  attribute FSM_ENCODED_STATES of \FSM_onehot_state_reg[2]\ : label is "iSTATE:0010,iSTATE0:0100,iSTATE1:1000,iSTATE2:0001";
  attribute FSM_ENCODED_STATES of \FSM_onehot_state_reg[3]\ : label is "iSTATE:0010,iSTATE0:0100,iSTATE1:1000,iSTATE2:0001";
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \INCLUDE_DPHASE_TIMER.dpto_cnt[1]_i_1__0\ : label is "soft_lutpair19";
  attribute SOFT_HLUTNM of \INCLUDE_DPHASE_TIMER.dpto_cnt[2]_i_1__0\ : label is "soft_lutpair19";
  attribute SOFT_HLUTNM of \INCLUDE_DPHASE_TIMER.dpto_cnt[3]_i_1__0\ : label is "soft_lutpair17";
  attribute SOFT_HLUTNM of \INCLUDE_DPHASE_TIMER.dpto_cnt[4]_i_2__0\ : label is "soft_lutpair17";
  attribute SOFT_HLUTNM of \IP2Bus_Data[0]_i_1__0\ : label is "soft_lutpair13";
  attribute SOFT_HLUTNM of \IP2Bus_Data[14]_i_1\ : label is "soft_lutpair15";
  attribute SOFT_HLUTNM of \IP2Bus_Data[24]_i_1\ : label is "soft_lutpair14";
  attribute SOFT_HLUTNM of \IP2Bus_Data[28]_i_2\ : label is "soft_lutpair15";
  attribute SOFT_HLUTNM of \IP2Bus_Data[4]_i_1__0\ : label is "soft_lutpair13";
  attribute SOFT_HLUTNM of \IP2Bus_Data[5]_i_1__0\ : label is "soft_lutpair16";
  attribute SOFT_HLUTNM of \IP2Bus_Data[6]_i_1__0\ : label is "soft_lutpair14";
  attribute SOFT_HLUTNM of \IP2Bus_Data[9]_i_1__0\ : label is "soft_lutpair16";
  attribute SOFT_HLUTNM of \bus2ip_addr_i[3]_i_1__0\ : label is "soft_lutpair21";
  attribute SOFT_HLUTNM of \bus2ip_addr_i[4]_i_1__0\ : label is "soft_lutpair21";
  attribute SOFT_HLUTNM of \bus2ip_addr_i[5]_i_1__0\ : label is "soft_lutpair20";
  attribute SOFT_HLUTNM of \bus2ip_addr_i[6]_i_1__0\ : label is "soft_lutpair20";
  attribute SOFT_HLUTNM of \is_read_i_2__0\ : label is "soft_lutpair18";
  attribute SOFT_HLUTNM of \is_write_i_1__0\ : label is "soft_lutpair18";
begin
  \INCLUDE_DPHASE_TIMER.dpto_cnt_reg[0]_0\ <= \^include_dphase_timer.dpto_cnt_reg[0]_0\;
  \INCLUDE_DPHASE_TIMER.dpto_cnt_reg[0]_1\ <= \^include_dphase_timer.dpto_cnt_reg[0]_1\;
  s_axi_ctrl_pf1_BVALID <= \^s_axi_ctrl_pf1_bvalid\;
  s_axi_ctrl_pf1_RVALID <= \^s_axi_ctrl_pf1_rvalid\;
\FSM_onehot_state[0]_i_1__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FF080808"
    )
        port map (
      I0 => \FSM_onehot_state[2]_i_2__0_n_0\,
      I1 => \FSM_onehot_state_reg_n_0_[0]\,
      I2 => s_axi_ctrl_pf1_ARVALID,
      I3 => \state1__2\,
      I4 => \FSM_onehot_state_reg_n_0_[3]\,
      O => \FSM_onehot_state[0]_i_1__0_n_0\
    );
\FSM_onehot_state[1]_i_1__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8F88"
    )
        port map (
      I0 => \FSM_onehot_state_reg_n_0_[0]\,
      I1 => s_axi_ctrl_pf1_ARVALID,
      I2 => \^include_dphase_timer.dpto_cnt_reg[0]_0\,
      I3 => s_axi_rresp_i,
      O => \FSM_onehot_state[1]_i_1__0_n_0\
    );
\FSM_onehot_state[2]_i_1__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"04FF0404"
    )
        port map (
      I0 => s_axi_ctrl_pf1_ARVALID,
      I1 => \FSM_onehot_state_reg_n_0_[0]\,
      I2 => \FSM_onehot_state[2]_i_2__0_n_0\,
      I3 => \^include_dphase_timer.dpto_cnt_reg[0]_1\,
      I4 => s_axi_bresp_i,
      O => \FSM_onehot_state[2]_i_1__0_n_0\
    );
\FSM_onehot_state[2]_i_2__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"7"
    )
        port map (
      I0 => s_axi_ctrl_pf1_AWVALID,
      I1 => s_axi_ctrl_pf1_WVALID,
      O => \FSM_onehot_state[2]_i_2__0_n_0\
    );
\FSM_onehot_state[3]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFF88F888F888F8"
    )
        port map (
      I0 => s_axi_bresp_i,
      I1 => \^include_dphase_timer.dpto_cnt_reg[0]_1\,
      I2 => \FSM_onehot_state_reg_n_0_[3]\,
      I3 => \state1__2\,
      I4 => \^include_dphase_timer.dpto_cnt_reg[0]_0\,
      I5 => s_axi_rresp_i,
      O => \FSM_onehot_state[3]_i_1__0_n_0\
    );
\FSM_onehot_state[3]_i_2__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F888"
    )
        port map (
      I0 => s_axi_ctrl_pf1_RREADY,
      I1 => \^s_axi_ctrl_pf1_rvalid\,
      I2 => s_axi_ctrl_pf1_BREADY,
      I3 => \^s_axi_ctrl_pf1_bvalid\,
      O => \state1__2\
    );
\FSM_onehot_state_reg[0]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => aclk_ctrl,
      CE => '1',
      D => \FSM_onehot_state[0]_i_1__0_n_0\,
      Q => \FSM_onehot_state_reg_n_0_[0]\,
      S => SR(0)
    );
\FSM_onehot_state_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk_ctrl,
      CE => '1',
      D => \FSM_onehot_state[1]_i_1__0_n_0\,
      Q => s_axi_rresp_i,
      R => SR(0)
    );
\FSM_onehot_state_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk_ctrl,
      CE => '1',
      D => \FSM_onehot_state[2]_i_1__0_n_0\,
      Q => s_axi_bresp_i,
      R => SR(0)
    );
\FSM_onehot_state_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk_ctrl,
      CE => '1',
      D => \FSM_onehot_state[3]_i_1__0_n_0\,
      Q => \FSM_onehot_state_reg_n_0_[3]\,
      R => SR(0)
    );
\INCLUDE_DPHASE_TIMER.dpto_cnt[0]_i_1__0\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \INCLUDE_DPHASE_TIMER.dpto_cnt_reg\(0),
      O => \plusOp__0\(0)
    );
\INCLUDE_DPHASE_TIMER.dpto_cnt[1]_i_1__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \INCLUDE_DPHASE_TIMER.dpto_cnt_reg\(0),
      I1 => \INCLUDE_DPHASE_TIMER.dpto_cnt_reg\(1),
      O => \plusOp__0\(1)
    );
\INCLUDE_DPHASE_TIMER.dpto_cnt[2]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"78"
    )
        port map (
      I0 => \INCLUDE_DPHASE_TIMER.dpto_cnt_reg\(1),
      I1 => \INCLUDE_DPHASE_TIMER.dpto_cnt_reg\(0),
      I2 => \INCLUDE_DPHASE_TIMER.dpto_cnt_reg\(2),
      O => \plusOp__0\(2)
    );
\INCLUDE_DPHASE_TIMER.dpto_cnt[3]_i_1__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7F80"
    )
        port map (
      I0 => \INCLUDE_DPHASE_TIMER.dpto_cnt_reg\(2),
      I1 => \INCLUDE_DPHASE_TIMER.dpto_cnt_reg\(0),
      I2 => \INCLUDE_DPHASE_TIMER.dpto_cnt_reg\(1),
      I3 => \INCLUDE_DPHASE_TIMER.dpto_cnt_reg\(3),
      O => \plusOp__0\(3)
    );
\INCLUDE_DPHASE_TIMER.dpto_cnt[4]_i_1__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \state_reg_n_0_[0]\,
      I1 => \state_reg_n_0_[1]\,
      O => \INCLUDE_DPHASE_TIMER.dpto_cnt[4]_i_1__0_n_0\
    );
\INCLUDE_DPHASE_TIMER.dpto_cnt[4]_i_2__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7FFF8000"
    )
        port map (
      I0 => \INCLUDE_DPHASE_TIMER.dpto_cnt_reg\(3),
      I1 => \INCLUDE_DPHASE_TIMER.dpto_cnt_reg\(1),
      I2 => \INCLUDE_DPHASE_TIMER.dpto_cnt_reg\(0),
      I3 => \INCLUDE_DPHASE_TIMER.dpto_cnt_reg\(2),
      I4 => \INCLUDE_DPHASE_TIMER.dpto_cnt_reg\(4),
      O => \plusOp__0\(4)
    );
\INCLUDE_DPHASE_TIMER.dpto_cnt_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => aclk_ctrl,
      CE => '1',
      D => \plusOp__0\(0),
      Q => \INCLUDE_DPHASE_TIMER.dpto_cnt_reg\(0),
      R => \INCLUDE_DPHASE_TIMER.dpto_cnt[4]_i_1__0_n_0\
    );
\INCLUDE_DPHASE_TIMER.dpto_cnt_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => aclk_ctrl,
      CE => '1',
      D => \plusOp__0\(1),
      Q => \INCLUDE_DPHASE_TIMER.dpto_cnt_reg\(1),
      R => \INCLUDE_DPHASE_TIMER.dpto_cnt[4]_i_1__0_n_0\
    );
\INCLUDE_DPHASE_TIMER.dpto_cnt_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => aclk_ctrl,
      CE => '1',
      D => \plusOp__0\(2),
      Q => \INCLUDE_DPHASE_TIMER.dpto_cnt_reg\(2),
      R => \INCLUDE_DPHASE_TIMER.dpto_cnt[4]_i_1__0_n_0\
    );
\INCLUDE_DPHASE_TIMER.dpto_cnt_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => aclk_ctrl,
      CE => '1',
      D => \plusOp__0\(3),
      Q => \INCLUDE_DPHASE_TIMER.dpto_cnt_reg\(3),
      R => \INCLUDE_DPHASE_TIMER.dpto_cnt[4]_i_1__0_n_0\
    );
\INCLUDE_DPHASE_TIMER.dpto_cnt_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => aclk_ctrl,
      CE => '1',
      D => \plusOp__0\(4),
      Q => \INCLUDE_DPHASE_TIMER.dpto_cnt_reg\(4),
      R => \INCLUDE_DPHASE_TIMER.dpto_cnt[4]_i_1__0_n_0\
    );
\IP2Bus_Data[0]_i_1__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00040007"
    )
        port map (
      I0 => \bus2ip_addr_i_reg_n_0_[5]\,
      I1 => \bus2ip_addr_i_reg_n_0_[4]\,
      I2 => \bus2ip_addr_i_reg_n_0_[2]\,
      I3 => \bus2ip_addr_i_reg_n_0_[6]\,
      I4 => \bus2ip_addr_i_reg_n_0_[3]\,
      O => D(0)
    );
\IP2Bus_Data[14]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00010000"
    )
        port map (
      I0 => \bus2ip_addr_i_reg_n_0_[3]\,
      I1 => \bus2ip_addr_i_reg_n_0_[6]\,
      I2 => \bus2ip_addr_i_reg_n_0_[5]\,
      I3 => \bus2ip_addr_i_reg_n_0_[2]\,
      I4 => \bus2ip_addr_i_reg_n_0_[4]\,
      O => D(6)
    );
\IP2Bus_Data[24]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00020000"
    )
        port map (
      I0 => \bus2ip_addr_i_reg_n_0_[3]\,
      I1 => \bus2ip_addr_i_reg_n_0_[6]\,
      I2 => \bus2ip_addr_i_reg_n_0_[5]\,
      I3 => \bus2ip_addr_i_reg_n_0_[2]\,
      I4 => \bus2ip_addr_i_reg_n_0_[4]\,
      O => D(7)
    );
\IP2Bus_Data[28]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000001"
    )
        port map (
      I0 => \bus2ip_addr_i_reg_n_0_[3]\,
      I1 => \bus2ip_addr_i_reg_n_0_[6]\,
      I2 => \bus2ip_addr_i_reg_n_0_[5]\,
      I3 => \bus2ip_addr_i_reg_n_0_[2]\,
      I4 => \bus2ip_addr_i_reg_n_0_[4]\,
      O => D(8)
    );
\IP2Bus_Data[4]_i_1__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000116"
    )
        port map (
      I0 => \bus2ip_addr_i_reg_n_0_[4]\,
      I1 => \bus2ip_addr_i_reg_n_0_[3]\,
      I2 => \bus2ip_addr_i_reg_n_0_[2]\,
      I3 => \bus2ip_addr_i_reg_n_0_[5]\,
      I4 => \bus2ip_addr_i_reg_n_0_[6]\,
      O => D(1)
    );
\IP2Bus_Data[5]_i_1__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000014"
    )
        port map (
      I0 => \bus2ip_addr_i_reg_n_0_[3]\,
      I1 => \bus2ip_addr_i_reg_n_0_[2]\,
      I2 => \bus2ip_addr_i_reg_n_0_[5]\,
      I3 => \bus2ip_addr_i_reg_n_0_[6]\,
      I4 => \bus2ip_addr_i_reg_n_0_[4]\,
      O => D(2)
    );
\IP2Bus_Data[6]_i_1__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000012"
    )
        port map (
      I0 => \bus2ip_addr_i_reg_n_0_[4]\,
      I1 => \bus2ip_addr_i_reg_n_0_[2]\,
      I2 => \bus2ip_addr_i_reg_n_0_[5]\,
      I3 => \bus2ip_addr_i_reg_n_0_[6]\,
      I4 => \bus2ip_addr_i_reg_n_0_[3]\,
      O => D(3)
    );
\IP2Bus_Data[7]_i_1__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000010"
    )
        port map (
      I0 => \bus2ip_addr_i_reg_n_0_[3]\,
      I1 => \bus2ip_addr_i_reg_n_0_[6]\,
      I2 => \bus2ip_addr_i_reg_n_0_[5]\,
      I3 => \bus2ip_addr_i_reg_n_0_[2]\,
      I4 => \bus2ip_addr_i_reg_n_0_[4]\,
      O => D(4)
    );
\IP2Bus_Data[9]_i_1__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"01000000"
    )
        port map (
      I0 => \bus2ip_addr_i_reg_n_0_[3]\,
      I1 => \bus2ip_addr_i_reg_n_0_[6]\,
      I2 => \bus2ip_addr_i_reg_n_0_[5]\,
      I3 => \bus2ip_addr_i_reg_n_0_[2]\,
      I4 => \bus2ip_addr_i_reg_n_0_[4]\,
      O => D(5)
    );
I_DECODER: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_address_decoder
     port map (
      Bus2IP_CS => Bus2IP_CS,
      \INCLUDE_DPHASE_TIMER.dpto_cnt_reg[0]\ => \^include_dphase_timer.dpto_cnt_reg[0]_0\,
      \INCLUDE_DPHASE_TIMER.dpto_cnt_reg[0]_0\ => \^include_dphase_timer.dpto_cnt_reg[0]_1\,
      IP2Bus_WrAck => IP2Bus_WrAck,
      \MEM_DECODE_GEN[0].cs_out_i_reg[0]_0\ => \MEM_DECODE_GEN[0].cs_out_i_reg[0]\,
      \MEM_DECODE_GEN[0].cs_out_i_reg[0]_1\ => start2_reg_n_0,
      Q(4 downto 0) => \INCLUDE_DPHASE_TIMER.dpto_cnt_reg\(4 downto 0),
      aclk_ctrl => aclk_ctrl,
      aresetn_ctrl => aresetn_ctrl,
      s_axi_ctrl_pf1_ARREADY => is_read_reg_n_0,
      s_axi_ctrl_pf1_AWREADY => is_write_reg_n_0
    );
\bus2ip_addr_i[2]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_ctrl_pf1_ARADDR(0),
      I1 => s_axi_ctrl_pf1_ARVALID,
      I2 => s_axi_ctrl_pf1_AWADDR(0),
      O => \bus2ip_addr_i[2]_i_1__0_n_0\
    );
\bus2ip_addr_i[3]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_ctrl_pf1_ARADDR(1),
      I1 => s_axi_ctrl_pf1_ARVALID,
      I2 => s_axi_ctrl_pf1_AWADDR(1),
      O => \bus2ip_addr_i[3]_i_1__0_n_0\
    );
\bus2ip_addr_i[4]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_ctrl_pf1_ARADDR(2),
      I1 => s_axi_ctrl_pf1_ARVALID,
      I2 => s_axi_ctrl_pf1_AWADDR(2),
      O => \bus2ip_addr_i[4]_i_1__0_n_0\
    );
\bus2ip_addr_i[5]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_ctrl_pf1_ARADDR(3),
      I1 => s_axi_ctrl_pf1_ARVALID,
      I2 => s_axi_ctrl_pf1_AWADDR(3),
      O => \bus2ip_addr_i[5]_i_1__0_n_0\
    );
\bus2ip_addr_i[6]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_ctrl_pf1_ARADDR(4),
      I1 => s_axi_ctrl_pf1_ARVALID,
      I2 => s_axi_ctrl_pf1_AWADDR(4),
      O => \bus2ip_addr_i[6]_i_1__0_n_0\
    );
\bus2ip_addr_i_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => aclk_ctrl,
      CE => \start2_i_1__0_n_0\,
      D => \bus2ip_addr_i[2]_i_1__0_n_0\,
      Q => \bus2ip_addr_i_reg_n_0_[2]\,
      R => SR(0)
    );
\bus2ip_addr_i_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => aclk_ctrl,
      CE => \start2_i_1__0_n_0\,
      D => \bus2ip_addr_i[3]_i_1__0_n_0\,
      Q => \bus2ip_addr_i_reg_n_0_[3]\,
      R => SR(0)
    );
\bus2ip_addr_i_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => aclk_ctrl,
      CE => \start2_i_1__0_n_0\,
      D => \bus2ip_addr_i[4]_i_1__0_n_0\,
      Q => \bus2ip_addr_i_reg_n_0_[4]\,
      R => SR(0)
    );
\bus2ip_addr_i_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => aclk_ctrl,
      CE => \start2_i_1__0_n_0\,
      D => \bus2ip_addr_i[5]_i_1__0_n_0\,
      Q => \bus2ip_addr_i_reg_n_0_[5]\,
      R => SR(0)
    );
\bus2ip_addr_i_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => aclk_ctrl,
      CE => \start2_i_1__0_n_0\,
      D => \bus2ip_addr_i[6]_i_1__0_n_0\,
      Q => \bus2ip_addr_i_reg_n_0_[6]\,
      R => SR(0)
    );
\is_read_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"F8"
    )
        port map (
      I0 => \state1__2\,
      I1 => \FSM_onehot_state_reg_n_0_[3]\,
      I2 => \FSM_onehot_state_reg_n_0_[0]\,
      O => \is_read_i_1__0_n_0\
    );
\is_read_i_2__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \FSM_onehot_state_reg_n_0_[0]\,
      I1 => s_axi_ctrl_pf1_ARVALID,
      O => is_read
    );
is_read_reg: unisim.vcomponents.FDRE
     port map (
      C => aclk_ctrl,
      CE => \is_read_i_1__0_n_0\,
      D => is_read,
      Q => is_read_reg_n_0,
      R => SR(0)
    );
\is_write_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"04"
    )
        port map (
      I0 => s_axi_ctrl_pf1_ARVALID,
      I1 => \FSM_onehot_state_reg_n_0_[0]\,
      I2 => \FSM_onehot_state[2]_i_2__0_n_0\,
      O => is_write
    );
is_write_reg: unisim.vcomponents.FDRE
     port map (
      C => aclk_ctrl,
      CE => \is_read_i_1__0_n_0\,
      D => is_write,
      Q => is_write_reg_n_0,
      R => SR(0)
    );
\s_axi_bvalid_i_i_1__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"08FF0808"
    )
        port map (
      I0 => \^include_dphase_timer.dpto_cnt_reg[0]_1\,
      I1 => \state_reg_n_0_[1]\,
      I2 => \state_reg_n_0_[0]\,
      I3 => s_axi_ctrl_pf1_BREADY,
      I4 => \^s_axi_ctrl_pf1_bvalid\,
      O => \s_axi_bvalid_i_i_1__0_n_0\
    );
s_axi_bvalid_i_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk_ctrl,
      CE => '1',
      D => \s_axi_bvalid_i_i_1__0_n_0\,
      Q => \^s_axi_ctrl_pf1_bvalid\,
      R => SR(0)
    );
\s_axi_rdata_i_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk_ctrl,
      CE => s_axi_rresp_i,
      D => Q(0),
      Q => s_axi_ctrl_pf1_RDATA(0),
      R => SR(0)
    );
\s_axi_rdata_i_reg[14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk_ctrl,
      CE => s_axi_rresp_i,
      D => Q(6),
      Q => s_axi_ctrl_pf1_RDATA(6),
      R => SR(0)
    );
\s_axi_rdata_i_reg[24]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk_ctrl,
      CE => s_axi_rresp_i,
      D => Q(7),
      Q => s_axi_ctrl_pf1_RDATA(7),
      R => SR(0)
    );
\s_axi_rdata_i_reg[28]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk_ctrl,
      CE => s_axi_rresp_i,
      D => Q(8),
      Q => s_axi_ctrl_pf1_RDATA(8),
      R => SR(0)
    );
\s_axi_rdata_i_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk_ctrl,
      CE => s_axi_rresp_i,
      D => Q(1),
      Q => s_axi_ctrl_pf1_RDATA(1),
      R => SR(0)
    );
\s_axi_rdata_i_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk_ctrl,
      CE => s_axi_rresp_i,
      D => Q(2),
      Q => s_axi_ctrl_pf1_RDATA(2),
      R => SR(0)
    );
\s_axi_rdata_i_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk_ctrl,
      CE => s_axi_rresp_i,
      D => Q(3),
      Q => s_axi_ctrl_pf1_RDATA(3),
      R => SR(0)
    );
\s_axi_rdata_i_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk_ctrl,
      CE => s_axi_rresp_i,
      D => Q(4),
      Q => s_axi_ctrl_pf1_RDATA(4),
      R => SR(0)
    );
\s_axi_rdata_i_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk_ctrl,
      CE => s_axi_rresp_i,
      D => Q(5),
      Q => s_axi_ctrl_pf1_RDATA(5),
      R => SR(0)
    );
\s_axi_rvalid_i_i_1__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"08FF0808"
    )
        port map (
      I0 => \^include_dphase_timer.dpto_cnt_reg[0]_0\,
      I1 => \state_reg_n_0_[0]\,
      I2 => \state_reg_n_0_[1]\,
      I3 => s_axi_ctrl_pf1_RREADY,
      I4 => \^s_axi_ctrl_pf1_rvalid\,
      O => \s_axi_rvalid_i_i_1__0_n_0\
    );
s_axi_rvalid_i_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk_ctrl,
      CE => '1',
      D => \s_axi_rvalid_i_i_1__0_n_0\,
      Q => \^s_axi_ctrl_pf1_rvalid\,
      R => SR(0)
    );
\start2_i_1__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"000D"
    )
        port map (
      I0 => \FSM_onehot_state[2]_i_2__0_n_0\,
      I1 => s_axi_ctrl_pf1_ARVALID,
      I2 => \state_reg_n_0_[1]\,
      I3 => \state_reg_n_0_[0]\,
      O => \start2_i_1__0_n_0\
    );
start2_reg: unisim.vcomponents.FDRE
     port map (
      C => aclk_ctrl,
      CE => '1',
      D => \start2_i_1__0_n_0\,
      Q => start2_reg_n_0,
      R => SR(0)
    );
\state[0]_i_1__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"3AFF3AF0"
    )
        port map (
      I0 => \^include_dphase_timer.dpto_cnt_reg[0]_1\,
      I1 => \state1__2\,
      I2 => \state_reg_n_0_[0]\,
      I3 => \state_reg_n_0_[1]\,
      I4 => s_axi_ctrl_pf1_ARVALID,
      O => \state[0]_i_1__0_n_0\
    );
\state[1]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"3AF03AF03AF03AFF"
    )
        port map (
      I0 => \^include_dphase_timer.dpto_cnt_reg[0]_0\,
      I1 => \state1__2\,
      I2 => \state_reg_n_0_[1]\,
      I3 => \state_reg_n_0_[0]\,
      I4 => s_axi_ctrl_pf1_ARVALID,
      I5 => \FSM_onehot_state[2]_i_2__0_n_0\,
      O => \state[1]_i_1__0_n_0\
    );
\state_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk_ctrl,
      CE => '1',
      D => \state[0]_i_1__0_n_0\,
      Q => \state_reg_n_0_[0]\,
      R => SR(0)
    );
\state_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk_ctrl,
      CE => '1',
      D => \state[1]_i_1__0_n_0\,
      Q => \state_reg_n_0_[1]\,
      R => SR(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_slave_attachment_1 is
  port (
    SR : out STD_LOGIC_VECTOR ( 0 to 0 );
    Bus2IP_CS : out STD_LOGIC;
    s_axi_ctrl_pf0_RVALID : out STD_LOGIC;
    s_axi_ctrl_pf0_BVALID : out STD_LOGIC;
    \INCLUDE_DPHASE_TIMER.dpto_cnt_reg[0]_0\ : out STD_LOGIC;
    \INCLUDE_DPHASE_TIMER.dpto_cnt_reg[0]_1\ : out STD_LOGIC;
    \MEM_DECODE_GEN[0].cs_out_i_reg[0]\ : out STD_LOGIC;
    s_axi_ctrl_pf0_RDATA : out STD_LOGIC_VECTOR ( 12 downto 0 );
    D : out STD_LOGIC_VECTOR ( 12 downto 0 );
    aclk_ctrl : in STD_LOGIC;
    s_axi_ctrl_pf0_ARVALID : in STD_LOGIC;
    aresetn_ctrl : in STD_LOGIC;
    IP2Bus_WrAck : in STD_LOGIC;
    s_axi_ctrl_pf0_AWVALID : in STD_LOGIC;
    s_axi_ctrl_pf0_WVALID : in STD_LOGIC;
    s_axi_ctrl_pf0_RREADY : in STD_LOGIC;
    s_axi_ctrl_pf0_BREADY : in STD_LOGIC;
    s_axi_ctrl_pf0_ARADDR : in STD_LOGIC_VECTOR ( 4 downto 0 );
    s_axi_ctrl_pf0_AWADDR : in STD_LOGIC_VECTOR ( 4 downto 0 );
    Q : in STD_LOGIC_VECTOR ( 12 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_slave_attachment_1 : entity is "slave_attachment";
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_slave_attachment_1;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_slave_attachment_1 is
  signal \FSM_onehot_state[0]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_onehot_state[1]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_onehot_state[2]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_onehot_state[2]_i_2_n_0\ : STD_LOGIC;
  signal \FSM_onehot_state[3]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_onehot_state_reg_n_0_[0]\ : STD_LOGIC;
  signal \FSM_onehot_state_reg_n_0_[3]\ : STD_LOGIC;
  signal \INCLUDE_DPHASE_TIMER.dpto_cnt_reg\ : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal \^include_dphase_timer.dpto_cnt_reg[0]_0\ : STD_LOGIC;
  signal \^include_dphase_timer.dpto_cnt_reg[0]_1\ : STD_LOGIC;
  signal \^sr\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal clear : STD_LOGIC;
  signal is_read : STD_LOGIC;
  signal is_read_i_1_n_0 : STD_LOGIC;
  signal is_read_reg_n_0 : STD_LOGIC;
  signal is_write : STD_LOGIC;
  signal is_write_reg_n_0 : STD_LOGIC;
  signal p_1_in : STD_LOGIC_VECTOR ( 6 downto 2 );
  signal plusOp : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal rst_i_1_n_0 : STD_LOGIC;
  signal s_axi_bresp_i : STD_LOGIC;
  signal s_axi_bvalid_i_i_1_n_0 : STD_LOGIC;
  signal \^s_axi_ctrl_pf0_bvalid\ : STD_LOGIC;
  signal \^s_axi_ctrl_pf0_rvalid\ : STD_LOGIC;
  signal s_axi_rresp_i : STD_LOGIC;
  signal s_axi_rvalid_i_i_1_n_0 : STD_LOGIC;
  signal sel : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal start2 : STD_LOGIC;
  signal start2_i_1_n_0 : STD_LOGIC;
  signal \state1__2\ : STD_LOGIC;
  signal \state[0]_i_1_n_0\ : STD_LOGIC;
  signal \state[1]_i_1_n_0\ : STD_LOGIC;
  signal \state_reg_n_0_[0]\ : STD_LOGIC;
  signal \state_reg_n_0_[1]\ : STD_LOGIC;
  attribute FSM_ENCODED_STATES : string;
  attribute FSM_ENCODED_STATES of \FSM_onehot_state_reg[0]\ : label is "iSTATE:0010,iSTATE0:0100,iSTATE1:1000,iSTATE2:0001";
  attribute FSM_ENCODED_STATES of \FSM_onehot_state_reg[1]\ : label is "iSTATE:0010,iSTATE0:0100,iSTATE1:1000,iSTATE2:0001";
  attribute FSM_ENCODED_STATES of \FSM_onehot_state_reg[2]\ : label is "iSTATE:0010,iSTATE0:0100,iSTATE1:1000,iSTATE2:0001";
  attribute FSM_ENCODED_STATES of \FSM_onehot_state_reg[3]\ : label is "iSTATE:0010,iSTATE0:0100,iSTATE1:1000,iSTATE2:0001";
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \INCLUDE_DPHASE_TIMER.dpto_cnt[1]_i_1\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \INCLUDE_DPHASE_TIMER.dpto_cnt[2]_i_1\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \INCLUDE_DPHASE_TIMER.dpto_cnt[3]_i_1\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \INCLUDE_DPHASE_TIMER.dpto_cnt[4]_i_2\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \IP2Bus_Data[0]_i_1\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \IP2Bus_Data[11]_i_1\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \IP2Bus_Data[16]_i_1\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \IP2Bus_Data[1]_i_1\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \IP2Bus_Data[25]_i_1\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \IP2Bus_Data[28]_i_1\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \IP2Bus_Data[29]_i_2\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \IP2Bus_Data[2]_i_1\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \IP2Bus_Data[4]_i_1\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \IP2Bus_Data[5]_i_1\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \IP2Bus_Data[7]_i_1\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \IP2Bus_Data[9]_i_1\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \bus2ip_addr_i[3]_i_1\ : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of \bus2ip_addr_i[4]_i_1\ : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of \bus2ip_addr_i[5]_i_1\ : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \bus2ip_addr_i[6]_i_1\ : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of is_read_i_2 : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of is_write_i_1 : label is "soft_lutpair8";
begin
  \INCLUDE_DPHASE_TIMER.dpto_cnt_reg[0]_0\ <= \^include_dphase_timer.dpto_cnt_reg[0]_0\;
  \INCLUDE_DPHASE_TIMER.dpto_cnt_reg[0]_1\ <= \^include_dphase_timer.dpto_cnt_reg[0]_1\;
  SR(0) <= \^sr\(0);
  s_axi_ctrl_pf0_BVALID <= \^s_axi_ctrl_pf0_bvalid\;
  s_axi_ctrl_pf0_RVALID <= \^s_axi_ctrl_pf0_rvalid\;
\FSM_onehot_state[0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FF080808"
    )
        port map (
      I0 => \FSM_onehot_state[2]_i_2_n_0\,
      I1 => \FSM_onehot_state_reg_n_0_[0]\,
      I2 => s_axi_ctrl_pf0_ARVALID,
      I3 => \state1__2\,
      I4 => \FSM_onehot_state_reg_n_0_[3]\,
      O => \FSM_onehot_state[0]_i_1_n_0\
    );
\FSM_onehot_state[1]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8F88"
    )
        port map (
      I0 => \FSM_onehot_state_reg_n_0_[0]\,
      I1 => s_axi_ctrl_pf0_ARVALID,
      I2 => \^include_dphase_timer.dpto_cnt_reg[0]_0\,
      I3 => s_axi_rresp_i,
      O => \FSM_onehot_state[1]_i_1_n_0\
    );
\FSM_onehot_state[2]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"04FF0404"
    )
        port map (
      I0 => s_axi_ctrl_pf0_ARVALID,
      I1 => \FSM_onehot_state_reg_n_0_[0]\,
      I2 => \FSM_onehot_state[2]_i_2_n_0\,
      I3 => \^include_dphase_timer.dpto_cnt_reg[0]_1\,
      I4 => s_axi_bresp_i,
      O => \FSM_onehot_state[2]_i_1_n_0\
    );
\FSM_onehot_state[2]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"7"
    )
        port map (
      I0 => s_axi_ctrl_pf0_AWVALID,
      I1 => s_axi_ctrl_pf0_WVALID,
      O => \FSM_onehot_state[2]_i_2_n_0\
    );
\FSM_onehot_state[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFF88F888F888F8"
    )
        port map (
      I0 => s_axi_bresp_i,
      I1 => \^include_dphase_timer.dpto_cnt_reg[0]_1\,
      I2 => \FSM_onehot_state_reg_n_0_[3]\,
      I3 => \state1__2\,
      I4 => \^include_dphase_timer.dpto_cnt_reg[0]_0\,
      I5 => s_axi_rresp_i,
      O => \FSM_onehot_state[3]_i_1_n_0\
    );
\FSM_onehot_state[3]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F888"
    )
        port map (
      I0 => s_axi_ctrl_pf0_RREADY,
      I1 => \^s_axi_ctrl_pf0_rvalid\,
      I2 => s_axi_ctrl_pf0_BREADY,
      I3 => \^s_axi_ctrl_pf0_bvalid\,
      O => \state1__2\
    );
\FSM_onehot_state_reg[0]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => aclk_ctrl,
      CE => '1',
      D => \FSM_onehot_state[0]_i_1_n_0\,
      Q => \FSM_onehot_state_reg_n_0_[0]\,
      S => \^sr\(0)
    );
\FSM_onehot_state_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk_ctrl,
      CE => '1',
      D => \FSM_onehot_state[1]_i_1_n_0\,
      Q => s_axi_rresp_i,
      R => \^sr\(0)
    );
\FSM_onehot_state_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk_ctrl,
      CE => '1',
      D => \FSM_onehot_state[2]_i_1_n_0\,
      Q => s_axi_bresp_i,
      R => \^sr\(0)
    );
\FSM_onehot_state_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk_ctrl,
      CE => '1',
      D => \FSM_onehot_state[3]_i_1_n_0\,
      Q => \FSM_onehot_state_reg_n_0_[3]\,
      R => \^sr\(0)
    );
\INCLUDE_DPHASE_TIMER.dpto_cnt[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \INCLUDE_DPHASE_TIMER.dpto_cnt_reg\(0),
      O => plusOp(0)
    );
\INCLUDE_DPHASE_TIMER.dpto_cnt[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \INCLUDE_DPHASE_TIMER.dpto_cnt_reg\(0),
      I1 => \INCLUDE_DPHASE_TIMER.dpto_cnt_reg\(1),
      O => plusOp(1)
    );
\INCLUDE_DPHASE_TIMER.dpto_cnt[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"78"
    )
        port map (
      I0 => \INCLUDE_DPHASE_TIMER.dpto_cnt_reg\(1),
      I1 => \INCLUDE_DPHASE_TIMER.dpto_cnt_reg\(0),
      I2 => \INCLUDE_DPHASE_TIMER.dpto_cnt_reg\(2),
      O => plusOp(2)
    );
\INCLUDE_DPHASE_TIMER.dpto_cnt[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7F80"
    )
        port map (
      I0 => \INCLUDE_DPHASE_TIMER.dpto_cnt_reg\(2),
      I1 => \INCLUDE_DPHASE_TIMER.dpto_cnt_reg\(0),
      I2 => \INCLUDE_DPHASE_TIMER.dpto_cnt_reg\(1),
      I3 => \INCLUDE_DPHASE_TIMER.dpto_cnt_reg\(3),
      O => plusOp(3)
    );
\INCLUDE_DPHASE_TIMER.dpto_cnt[4]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \state_reg_n_0_[0]\,
      I1 => \state_reg_n_0_[1]\,
      O => clear
    );
\INCLUDE_DPHASE_TIMER.dpto_cnt[4]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7FFF8000"
    )
        port map (
      I0 => \INCLUDE_DPHASE_TIMER.dpto_cnt_reg\(3),
      I1 => \INCLUDE_DPHASE_TIMER.dpto_cnt_reg\(1),
      I2 => \INCLUDE_DPHASE_TIMER.dpto_cnt_reg\(0),
      I3 => \INCLUDE_DPHASE_TIMER.dpto_cnt_reg\(2),
      I4 => \INCLUDE_DPHASE_TIMER.dpto_cnt_reg\(4),
      O => plusOp(4)
    );
\INCLUDE_DPHASE_TIMER.dpto_cnt_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => aclk_ctrl,
      CE => '1',
      D => plusOp(0),
      Q => \INCLUDE_DPHASE_TIMER.dpto_cnt_reg\(0),
      R => clear
    );
\INCLUDE_DPHASE_TIMER.dpto_cnt_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => aclk_ctrl,
      CE => '1',
      D => plusOp(1),
      Q => \INCLUDE_DPHASE_TIMER.dpto_cnt_reg\(1),
      R => clear
    );
\INCLUDE_DPHASE_TIMER.dpto_cnt_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => aclk_ctrl,
      CE => '1',
      D => plusOp(2),
      Q => \INCLUDE_DPHASE_TIMER.dpto_cnt_reg\(2),
      R => clear
    );
\INCLUDE_DPHASE_TIMER.dpto_cnt_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => aclk_ctrl,
      CE => '1',
      D => plusOp(3),
      Q => \INCLUDE_DPHASE_TIMER.dpto_cnt_reg\(3),
      R => clear
    );
\INCLUDE_DPHASE_TIMER.dpto_cnt_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => aclk_ctrl,
      CE => '1',
      D => plusOp(4),
      Q => \INCLUDE_DPHASE_TIMER.dpto_cnt_reg\(4),
      R => clear
    );
\IP2Bus_Data[0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00105665"
    )
        port map (
      I0 => sel(4),
      I1 => sel(3),
      I2 => sel(2),
      I3 => sel(1),
      I4 => sel(0),
      O => D(0)
    );
\IP2Bus_Data[11]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00002000"
    )
        port map (
      I0 => sel(3),
      I1 => sel(1),
      I2 => sel(0),
      I3 => sel(2),
      I4 => sel(4),
      O => D(8)
    );
\IP2Bus_Data[16]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"05000600"
    )
        port map (
      I0 => sel(4),
      I1 => sel(3),
      I2 => sel(0),
      I3 => sel(1),
      I4 => sel(2),
      O => D(9)
    );
\IP2Bus_Data[1]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00010008"
    )
        port map (
      I0 => sel(4),
      I1 => sel(2),
      I2 => sel(1),
      I3 => sel(0),
      I4 => sel(3),
      O => D(1)
    );
\IP2Bus_Data[25]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000020"
    )
        port map (
      I0 => sel(3),
      I1 => sel(0),
      I2 => sel(1),
      I3 => sel(2),
      I4 => sel(4),
      O => D(10)
    );
\IP2Bus_Data[28]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000001"
    )
        port map (
      I0 => sel(3),
      I1 => sel(0),
      I2 => sel(1),
      I3 => sel(2),
      I4 => sel(4),
      O => D(11)
    );
\IP2Bus_Data[29]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00010000"
    )
        port map (
      I0 => sel(3),
      I1 => sel(0),
      I2 => sel(1),
      I3 => sel(2),
      I4 => sel(4),
      O => D(12)
    );
\IP2Bus_Data[2]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00070000"
    )
        port map (
      I0 => sel(3),
      I1 => sel(4),
      I2 => sel(0),
      I3 => sel(1),
      I4 => sel(2),
      O => D(2)
    );
\IP2Bus_Data[4]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000176"
    )
        port map (
      I0 => sel(4),
      I1 => sel(3),
      I2 => sel(2),
      I3 => sel(1),
      I4 => sel(0),
      O => D(3)
    );
\IP2Bus_Data[5]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000018"
    )
        port map (
      I0 => sel(4),
      I1 => sel(2),
      I2 => sel(0),
      I3 => sel(1),
      I4 => sel(3),
      O => D(4)
    );
\IP2Bus_Data[6]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000176"
    )
        port map (
      I0 => sel(4),
      I1 => sel(3),
      I2 => sel(2),
      I3 => sel(0),
      I4 => sel(1),
      O => D(5)
    );
\IP2Bus_Data[7]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"01000000"
    )
        port map (
      I0 => sel(3),
      I1 => sel(0),
      I2 => sel(1),
      I3 => sel(2),
      I4 => sel(4),
      O => D(6)
    );
\IP2Bus_Data[9]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"01100600"
    )
        port map (
      I0 => sel(4),
      I1 => sel(3),
      I2 => sel(1),
      I3 => sel(0),
      I4 => sel(2),
      O => D(7)
    );
I_DECODER: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_address_decoder_2
     port map (
      Bus2IP_CS => Bus2IP_CS,
      \INCLUDE_DPHASE_TIMER.dpto_cnt_reg[0]\ => \^include_dphase_timer.dpto_cnt_reg[0]_0\,
      \INCLUDE_DPHASE_TIMER.dpto_cnt_reg[0]_0\ => \^include_dphase_timer.dpto_cnt_reg[0]_1\,
      IP2Bus_WrAck => IP2Bus_WrAck,
      \MEM_DECODE_GEN[0].cs_out_i_reg[0]_0\ => \MEM_DECODE_GEN[0].cs_out_i_reg[0]\,
      Q(4 downto 0) => \INCLUDE_DPHASE_TIMER.dpto_cnt_reg\(4 downto 0),
      aclk_ctrl => aclk_ctrl,
      aresetn_ctrl => aresetn_ctrl,
      s_axi_ctrl_pf0_ARREADY => is_read_reg_n_0,
      s_axi_ctrl_pf0_AWREADY => is_write_reg_n_0,
      start2 => start2
    );
\bus2ip_addr_i[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_ctrl_pf0_ARADDR(0),
      I1 => s_axi_ctrl_pf0_ARVALID,
      I2 => s_axi_ctrl_pf0_AWADDR(0),
      O => p_1_in(2)
    );
\bus2ip_addr_i[3]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_ctrl_pf0_ARADDR(1),
      I1 => s_axi_ctrl_pf0_ARVALID,
      I2 => s_axi_ctrl_pf0_AWADDR(1),
      O => p_1_in(3)
    );
\bus2ip_addr_i[4]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_ctrl_pf0_ARADDR(2),
      I1 => s_axi_ctrl_pf0_ARVALID,
      I2 => s_axi_ctrl_pf0_AWADDR(2),
      O => p_1_in(4)
    );
\bus2ip_addr_i[5]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_ctrl_pf0_ARADDR(3),
      I1 => s_axi_ctrl_pf0_ARVALID,
      I2 => s_axi_ctrl_pf0_AWADDR(3),
      O => p_1_in(5)
    );
\bus2ip_addr_i[6]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_ctrl_pf0_ARADDR(4),
      I1 => s_axi_ctrl_pf0_ARVALID,
      I2 => s_axi_ctrl_pf0_AWADDR(4),
      O => p_1_in(6)
    );
\bus2ip_addr_i_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => aclk_ctrl,
      CE => start2_i_1_n_0,
      D => p_1_in(2),
      Q => sel(0),
      R => \^sr\(0)
    );
\bus2ip_addr_i_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => aclk_ctrl,
      CE => start2_i_1_n_0,
      D => p_1_in(3),
      Q => sel(1),
      R => \^sr\(0)
    );
\bus2ip_addr_i_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => aclk_ctrl,
      CE => start2_i_1_n_0,
      D => p_1_in(4),
      Q => sel(2),
      R => \^sr\(0)
    );
\bus2ip_addr_i_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => aclk_ctrl,
      CE => start2_i_1_n_0,
      D => p_1_in(5),
      Q => sel(3),
      R => \^sr\(0)
    );
\bus2ip_addr_i_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => aclk_ctrl,
      CE => start2_i_1_n_0,
      D => p_1_in(6),
      Q => sel(4),
      R => \^sr\(0)
    );
is_read_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"F8"
    )
        port map (
      I0 => \state1__2\,
      I1 => \FSM_onehot_state_reg_n_0_[3]\,
      I2 => \FSM_onehot_state_reg_n_0_[0]\,
      O => is_read_i_1_n_0
    );
is_read_i_2: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \FSM_onehot_state_reg_n_0_[0]\,
      I1 => s_axi_ctrl_pf0_ARVALID,
      O => is_read
    );
is_read_reg: unisim.vcomponents.FDRE
     port map (
      C => aclk_ctrl,
      CE => is_read_i_1_n_0,
      D => is_read,
      Q => is_read_reg_n_0,
      R => \^sr\(0)
    );
is_write_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"04"
    )
        port map (
      I0 => s_axi_ctrl_pf0_ARVALID,
      I1 => \FSM_onehot_state_reg_n_0_[0]\,
      I2 => \FSM_onehot_state[2]_i_2_n_0\,
      O => is_write
    );
is_write_reg: unisim.vcomponents.FDRE
     port map (
      C => aclk_ctrl,
      CE => is_read_i_1_n_0,
      D => is_write,
      Q => is_write_reg_n_0,
      R => \^sr\(0)
    );
rst_i_1: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => aresetn_ctrl,
      O => rst_i_1_n_0
    );
rst_reg: unisim.vcomponents.FDRE
     port map (
      C => aclk_ctrl,
      CE => '1',
      D => rst_i_1_n_0,
      Q => \^sr\(0),
      R => '0'
    );
s_axi_bvalid_i_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"08FF0808"
    )
        port map (
      I0 => \^include_dphase_timer.dpto_cnt_reg[0]_1\,
      I1 => \state_reg_n_0_[1]\,
      I2 => \state_reg_n_0_[0]\,
      I3 => s_axi_ctrl_pf0_BREADY,
      I4 => \^s_axi_ctrl_pf0_bvalid\,
      O => s_axi_bvalid_i_i_1_n_0
    );
s_axi_bvalid_i_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk_ctrl,
      CE => '1',
      D => s_axi_bvalid_i_i_1_n_0,
      Q => \^s_axi_ctrl_pf0_bvalid\,
      R => \^sr\(0)
    );
\s_axi_rdata_i_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk_ctrl,
      CE => s_axi_rresp_i,
      D => Q(0),
      Q => s_axi_ctrl_pf0_RDATA(0),
      R => \^sr\(0)
    );
\s_axi_rdata_i_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk_ctrl,
      CE => s_axi_rresp_i,
      D => Q(8),
      Q => s_axi_ctrl_pf0_RDATA(8),
      R => \^sr\(0)
    );
\s_axi_rdata_i_reg[16]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk_ctrl,
      CE => s_axi_rresp_i,
      D => Q(9),
      Q => s_axi_ctrl_pf0_RDATA(9),
      R => \^sr\(0)
    );
\s_axi_rdata_i_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk_ctrl,
      CE => s_axi_rresp_i,
      D => Q(1),
      Q => s_axi_ctrl_pf0_RDATA(1),
      R => \^sr\(0)
    );
\s_axi_rdata_i_reg[25]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk_ctrl,
      CE => s_axi_rresp_i,
      D => Q(10),
      Q => s_axi_ctrl_pf0_RDATA(10),
      R => \^sr\(0)
    );
\s_axi_rdata_i_reg[28]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk_ctrl,
      CE => s_axi_rresp_i,
      D => Q(11),
      Q => s_axi_ctrl_pf0_RDATA(11),
      R => \^sr\(0)
    );
\s_axi_rdata_i_reg[29]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk_ctrl,
      CE => s_axi_rresp_i,
      D => Q(12),
      Q => s_axi_ctrl_pf0_RDATA(12),
      R => \^sr\(0)
    );
\s_axi_rdata_i_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk_ctrl,
      CE => s_axi_rresp_i,
      D => Q(2),
      Q => s_axi_ctrl_pf0_RDATA(2),
      R => \^sr\(0)
    );
\s_axi_rdata_i_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk_ctrl,
      CE => s_axi_rresp_i,
      D => Q(3),
      Q => s_axi_ctrl_pf0_RDATA(3),
      R => \^sr\(0)
    );
\s_axi_rdata_i_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk_ctrl,
      CE => s_axi_rresp_i,
      D => Q(4),
      Q => s_axi_ctrl_pf0_RDATA(4),
      R => \^sr\(0)
    );
\s_axi_rdata_i_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk_ctrl,
      CE => s_axi_rresp_i,
      D => Q(5),
      Q => s_axi_ctrl_pf0_RDATA(5),
      R => \^sr\(0)
    );
\s_axi_rdata_i_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk_ctrl,
      CE => s_axi_rresp_i,
      D => Q(6),
      Q => s_axi_ctrl_pf0_RDATA(6),
      R => \^sr\(0)
    );
\s_axi_rdata_i_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk_ctrl,
      CE => s_axi_rresp_i,
      D => Q(7),
      Q => s_axi_ctrl_pf0_RDATA(7),
      R => \^sr\(0)
    );
s_axi_rvalid_i_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"08FF0808"
    )
        port map (
      I0 => \^include_dphase_timer.dpto_cnt_reg[0]_0\,
      I1 => \state_reg_n_0_[0]\,
      I2 => \state_reg_n_0_[1]\,
      I3 => s_axi_ctrl_pf0_RREADY,
      I4 => \^s_axi_ctrl_pf0_rvalid\,
      O => s_axi_rvalid_i_i_1_n_0
    );
s_axi_rvalid_i_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk_ctrl,
      CE => '1',
      D => s_axi_rvalid_i_i_1_n_0,
      Q => \^s_axi_ctrl_pf0_rvalid\,
      R => \^sr\(0)
    );
start2_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"000D"
    )
        port map (
      I0 => \FSM_onehot_state[2]_i_2_n_0\,
      I1 => s_axi_ctrl_pf0_ARVALID,
      I2 => \state_reg_n_0_[1]\,
      I3 => \state_reg_n_0_[0]\,
      O => start2_i_1_n_0
    );
start2_reg: unisim.vcomponents.FDRE
     port map (
      C => aclk_ctrl,
      CE => '1',
      D => start2_i_1_n_0,
      Q => start2,
      R => \^sr\(0)
    );
\state[0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"3AFF3AF0"
    )
        port map (
      I0 => \^include_dphase_timer.dpto_cnt_reg[0]_1\,
      I1 => \state1__2\,
      I2 => \state_reg_n_0_[0]\,
      I3 => \state_reg_n_0_[1]\,
      I4 => s_axi_ctrl_pf0_ARVALID,
      O => \state[0]_i_1_n_0\
    );
\state[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"3AF03AF03AF03AFF"
    )
        port map (
      I0 => \^include_dphase_timer.dpto_cnt_reg[0]_0\,
      I1 => \state1__2\,
      I2 => \state_reg_n_0_[1]\,
      I3 => \state_reg_n_0_[0]\,
      I4 => s_axi_ctrl_pf0_ARVALID,
      I5 => \FSM_onehot_state[2]_i_2_n_0\,
      O => \state[1]_i_1_n_0\
    );
\state_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk_ctrl,
      CE => '1',
      D => \state[0]_i_1_n_0\,
      Q => \state_reg_n_0_[0]\,
      R => \^sr\(0)
    );
\state_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk_ctrl,
      CE => '1',
      D => \state[1]_i_1_n_0\,
      Q => \state_reg_n_0_[1]\,
      R => \^sr\(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_lite_ipif is
  port (
    Bus2IP_CS : out STD_LOGIC;
    s_axi_ctrl_pf1_RVALID : out STD_LOGIC;
    s_axi_ctrl_pf1_BVALID : out STD_LOGIC;
    \INCLUDE_DPHASE_TIMER.dpto_cnt_reg[0]\ : out STD_LOGIC;
    \INCLUDE_DPHASE_TIMER.dpto_cnt_reg[0]_0\ : out STD_LOGIC;
    \MEM_DECODE_GEN[0].cs_out_i_reg[0]\ : out STD_LOGIC;
    s_axi_ctrl_pf1_RDATA : out STD_LOGIC_VECTOR ( 8 downto 0 );
    D : out STD_LOGIC_VECTOR ( 8 downto 0 );
    SR : in STD_LOGIC_VECTOR ( 0 to 0 );
    aclk_ctrl : in STD_LOGIC;
    s_axi_ctrl_pf1_ARVALID : in STD_LOGIC;
    aresetn_ctrl : in STD_LOGIC;
    IP2Bus_WrAck : in STD_LOGIC;
    s_axi_ctrl_pf1_AWVALID : in STD_LOGIC;
    s_axi_ctrl_pf1_WVALID : in STD_LOGIC;
    s_axi_ctrl_pf1_RREADY : in STD_LOGIC;
    s_axi_ctrl_pf1_BREADY : in STD_LOGIC;
    s_axi_ctrl_pf1_ARADDR : in STD_LOGIC_VECTOR ( 4 downto 0 );
    s_axi_ctrl_pf1_AWADDR : in STD_LOGIC_VECTOR ( 4 downto 0 );
    Q : in STD_LOGIC_VECTOR ( 8 downto 0 )
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_lite_ipif;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_lite_ipif is
begin
I_SLAVE_ATTACHMENT: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_slave_attachment
     port map (
      Bus2IP_CS => Bus2IP_CS,
      D(8 downto 0) => D(8 downto 0),
      \INCLUDE_DPHASE_TIMER.dpto_cnt_reg[0]_0\ => \INCLUDE_DPHASE_TIMER.dpto_cnt_reg[0]\,
      \INCLUDE_DPHASE_TIMER.dpto_cnt_reg[0]_1\ => \INCLUDE_DPHASE_TIMER.dpto_cnt_reg[0]_0\,
      IP2Bus_WrAck => IP2Bus_WrAck,
      \MEM_DECODE_GEN[0].cs_out_i_reg[0]\ => \MEM_DECODE_GEN[0].cs_out_i_reg[0]\,
      Q(8 downto 0) => Q(8 downto 0),
      SR(0) => SR(0),
      aclk_ctrl => aclk_ctrl,
      aresetn_ctrl => aresetn_ctrl,
      s_axi_ctrl_pf1_ARADDR(4 downto 0) => s_axi_ctrl_pf1_ARADDR(4 downto 0),
      s_axi_ctrl_pf1_ARVALID => s_axi_ctrl_pf1_ARVALID,
      s_axi_ctrl_pf1_AWADDR(4 downto 0) => s_axi_ctrl_pf1_AWADDR(4 downto 0),
      s_axi_ctrl_pf1_AWVALID => s_axi_ctrl_pf1_AWVALID,
      s_axi_ctrl_pf1_BREADY => s_axi_ctrl_pf1_BREADY,
      s_axi_ctrl_pf1_BVALID => s_axi_ctrl_pf1_BVALID,
      s_axi_ctrl_pf1_RDATA(8 downto 0) => s_axi_ctrl_pf1_RDATA(8 downto 0),
      s_axi_ctrl_pf1_RREADY => s_axi_ctrl_pf1_RREADY,
      s_axi_ctrl_pf1_RVALID => s_axi_ctrl_pf1_RVALID,
      s_axi_ctrl_pf1_WVALID => s_axi_ctrl_pf1_WVALID
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_lite_ipif_0 is
  port (
    SR : out STD_LOGIC_VECTOR ( 0 to 0 );
    Bus2IP_CS : out STD_LOGIC;
    s_axi_ctrl_pf0_RVALID : out STD_LOGIC;
    s_axi_ctrl_pf0_BVALID : out STD_LOGIC;
    \INCLUDE_DPHASE_TIMER.dpto_cnt_reg[0]\ : out STD_LOGIC;
    \INCLUDE_DPHASE_TIMER.dpto_cnt_reg[0]_0\ : out STD_LOGIC;
    \MEM_DECODE_GEN[0].cs_out_i_reg[0]\ : out STD_LOGIC;
    s_axi_ctrl_pf0_RDATA : out STD_LOGIC_VECTOR ( 12 downto 0 );
    D : out STD_LOGIC_VECTOR ( 12 downto 0 );
    aclk_ctrl : in STD_LOGIC;
    s_axi_ctrl_pf0_ARVALID : in STD_LOGIC;
    aresetn_ctrl : in STD_LOGIC;
    IP2Bus_WrAck : in STD_LOGIC;
    s_axi_ctrl_pf0_AWVALID : in STD_LOGIC;
    s_axi_ctrl_pf0_WVALID : in STD_LOGIC;
    s_axi_ctrl_pf0_RREADY : in STD_LOGIC;
    s_axi_ctrl_pf0_BREADY : in STD_LOGIC;
    s_axi_ctrl_pf0_ARADDR : in STD_LOGIC_VECTOR ( 4 downto 0 );
    s_axi_ctrl_pf0_AWADDR : in STD_LOGIC_VECTOR ( 4 downto 0 );
    Q : in STD_LOGIC_VECTOR ( 12 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_lite_ipif_0 : entity is "axi_lite_ipif";
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_lite_ipif_0;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_lite_ipif_0 is
begin
I_SLAVE_ATTACHMENT: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_slave_attachment_1
     port map (
      Bus2IP_CS => Bus2IP_CS,
      D(12 downto 0) => D(12 downto 0),
      \INCLUDE_DPHASE_TIMER.dpto_cnt_reg[0]_0\ => \INCLUDE_DPHASE_TIMER.dpto_cnt_reg[0]\,
      \INCLUDE_DPHASE_TIMER.dpto_cnt_reg[0]_1\ => \INCLUDE_DPHASE_TIMER.dpto_cnt_reg[0]_0\,
      IP2Bus_WrAck => IP2Bus_WrAck,
      \MEM_DECODE_GEN[0].cs_out_i_reg[0]\ => \MEM_DECODE_GEN[0].cs_out_i_reg[0]\,
      Q(12 downto 0) => Q(12 downto 0),
      SR(0) => SR(0),
      aclk_ctrl => aclk_ctrl,
      aresetn_ctrl => aresetn_ctrl,
      s_axi_ctrl_pf0_ARADDR(4 downto 0) => s_axi_ctrl_pf0_ARADDR(4 downto 0),
      s_axi_ctrl_pf0_ARVALID => s_axi_ctrl_pf0_ARVALID,
      s_axi_ctrl_pf0_AWADDR(4 downto 0) => s_axi_ctrl_pf0_AWADDR(4 downto 0),
      s_axi_ctrl_pf0_AWVALID => s_axi_ctrl_pf0_AWVALID,
      s_axi_ctrl_pf0_BREADY => s_axi_ctrl_pf0_BREADY,
      s_axi_ctrl_pf0_BVALID => s_axi_ctrl_pf0_BVALID,
      s_axi_ctrl_pf0_RDATA(12 downto 0) => s_axi_ctrl_pf0_RDATA(12 downto 0),
      s_axi_ctrl_pf0_RREADY => s_axi_ctrl_pf0_RREADY,
      s_axi_ctrl_pf0_RVALID => s_axi_ctrl_pf0_RVALID,
      s_axi_ctrl_pf0_WVALID => s_axi_ctrl_pf0_WVALID
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_bar_layout_table is
  port (
    SR : out STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_ctrl_pf0_RVALID : out STD_LOGIC;
    s_axi_ctrl_pf0_BVALID : out STD_LOGIC;
    \INCLUDE_DPHASE_TIMER.dpto_cnt_reg[0]\ : out STD_LOGIC;
    \INCLUDE_DPHASE_TIMER.dpto_cnt_reg[0]_0\ : out STD_LOGIC;
    s_axi_ctrl_pf0_RDATA : out STD_LOGIC_VECTOR ( 12 downto 0 );
    aclk_ctrl : in STD_LOGIC;
    s_axi_ctrl_pf0_ARVALID : in STD_LOGIC;
    aresetn_ctrl : in STD_LOGIC;
    s_axi_ctrl_pf0_AWVALID : in STD_LOGIC;
    s_axi_ctrl_pf0_WVALID : in STD_LOGIC;
    s_axi_ctrl_pf0_RREADY : in STD_LOGIC;
    s_axi_ctrl_pf0_BREADY : in STD_LOGIC;
    s_axi_ctrl_pf0_ARADDR : in STD_LOGIC_VECTOR ( 4 downto 0 );
    s_axi_ctrl_pf0_AWADDR : in STD_LOGIC_VECTOR ( 4 downto 0 )
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_bar_layout_table;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_bar_layout_table is
  signal Bus2IP_CS : STD_LOGIC;
  signal \IP2Bus_Ack_reg_n_0_[4]\ : STD_LOGIC;
  signal IP2Bus_Data : STD_LOGIC_VECTOR ( 29 downto 0 );
  signal IP2Bus_WrAck : STD_LOGIC;
  signal IP2Bus_WrAck_i_1_n_0 : STD_LOGIC;
  signal axi_lite_ipif_1_n_6 : STD_LOGIC;
  signal p_0_out : STD_LOGIC_VECTOR ( 29 downto 0 );
  signal p_2_in : STD_LOGIC_VECTOR ( 2 downto 0 );
begin
\IP2Bus_Ack_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk_ctrl,
      CE => '1',
      D => Bus2IP_CS,
      Q => p_2_in(2),
      R => '0'
    );
\IP2Bus_Ack_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk_ctrl,
      CE => '1',
      D => p_2_in(2),
      Q => p_2_in(1),
      R => axi_lite_ipif_1_n_6
    );
\IP2Bus_Ack_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk_ctrl,
      CE => '1',
      D => p_2_in(1),
      Q => p_2_in(0),
      R => axi_lite_ipif_1_n_6
    );
\IP2Bus_Ack_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk_ctrl,
      CE => '1',
      D => p_2_in(0),
      Q => \IP2Bus_Ack_reg_n_0_[4]\,
      R => axi_lite_ipif_1_n_6
    );
\IP2Bus_Data_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk_ctrl,
      CE => '1',
      D => p_0_out(0),
      Q => IP2Bus_Data(0),
      R => axi_lite_ipif_1_n_6
    );
\IP2Bus_Data_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk_ctrl,
      CE => '1',
      D => p_0_out(11),
      Q => IP2Bus_Data(11),
      R => axi_lite_ipif_1_n_6
    );
\IP2Bus_Data_reg[16]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk_ctrl,
      CE => '1',
      D => p_0_out(16),
      Q => IP2Bus_Data(16),
      R => axi_lite_ipif_1_n_6
    );
\IP2Bus_Data_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk_ctrl,
      CE => '1',
      D => p_0_out(1),
      Q => IP2Bus_Data(1),
      R => axi_lite_ipif_1_n_6
    );
\IP2Bus_Data_reg[25]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk_ctrl,
      CE => '1',
      D => p_0_out(25),
      Q => IP2Bus_Data(25),
      R => axi_lite_ipif_1_n_6
    );
\IP2Bus_Data_reg[28]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk_ctrl,
      CE => '1',
      D => p_0_out(28),
      Q => IP2Bus_Data(28),
      R => axi_lite_ipif_1_n_6
    );
\IP2Bus_Data_reg[29]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk_ctrl,
      CE => '1',
      D => p_0_out(29),
      Q => IP2Bus_Data(29),
      R => axi_lite_ipif_1_n_6
    );
\IP2Bus_Data_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk_ctrl,
      CE => '1',
      D => p_0_out(2),
      Q => IP2Bus_Data(2),
      R => axi_lite_ipif_1_n_6
    );
\IP2Bus_Data_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk_ctrl,
      CE => '1',
      D => p_0_out(4),
      Q => IP2Bus_Data(4),
      R => axi_lite_ipif_1_n_6
    );
\IP2Bus_Data_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk_ctrl,
      CE => '1',
      D => p_0_out(5),
      Q => IP2Bus_Data(5),
      R => axi_lite_ipif_1_n_6
    );
\IP2Bus_Data_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk_ctrl,
      CE => '1',
      D => p_0_out(6),
      Q => IP2Bus_Data(6),
      R => axi_lite_ipif_1_n_6
    );
\IP2Bus_Data_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk_ctrl,
      CE => '1',
      D => p_0_out(7),
      Q => IP2Bus_Data(7),
      R => axi_lite_ipif_1_n_6
    );
\IP2Bus_Data_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk_ctrl,
      CE => '1',
      D => p_0_out(9),
      Q => IP2Bus_Data(9),
      R => axi_lite_ipif_1_n_6
    );
IP2Bus_WrAck_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => p_2_in(0),
      I1 => \IP2Bus_Ack_reg_n_0_[4]\,
      O => IP2Bus_WrAck_i_1_n_0
    );
IP2Bus_WrAck_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk_ctrl,
      CE => '1',
      D => IP2Bus_WrAck_i_1_n_0,
      Q => IP2Bus_WrAck,
      R => '0'
    );
axi_lite_ipif_1: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_lite_ipif_0
     port map (
      Bus2IP_CS => Bus2IP_CS,
      D(12 downto 11) => p_0_out(29 downto 28),
      D(10) => p_0_out(25),
      D(9) => p_0_out(16),
      D(8) => p_0_out(11),
      D(7) => p_0_out(9),
      D(6 downto 3) => p_0_out(7 downto 4),
      D(2 downto 0) => p_0_out(2 downto 0),
      \INCLUDE_DPHASE_TIMER.dpto_cnt_reg[0]\ => \INCLUDE_DPHASE_TIMER.dpto_cnt_reg[0]\,
      \INCLUDE_DPHASE_TIMER.dpto_cnt_reg[0]_0\ => \INCLUDE_DPHASE_TIMER.dpto_cnt_reg[0]_0\,
      IP2Bus_WrAck => IP2Bus_WrAck,
      \MEM_DECODE_GEN[0].cs_out_i_reg[0]\ => axi_lite_ipif_1_n_6,
      Q(12 downto 11) => IP2Bus_Data(29 downto 28),
      Q(10) => IP2Bus_Data(25),
      Q(9) => IP2Bus_Data(16),
      Q(8) => IP2Bus_Data(11),
      Q(7) => IP2Bus_Data(9),
      Q(6 downto 3) => IP2Bus_Data(7 downto 4),
      Q(2 downto 0) => IP2Bus_Data(2 downto 0),
      SR(0) => SR(0),
      aclk_ctrl => aclk_ctrl,
      aresetn_ctrl => aresetn_ctrl,
      s_axi_ctrl_pf0_ARADDR(4 downto 0) => s_axi_ctrl_pf0_ARADDR(4 downto 0),
      s_axi_ctrl_pf0_ARVALID => s_axi_ctrl_pf0_ARVALID,
      s_axi_ctrl_pf0_AWADDR(4 downto 0) => s_axi_ctrl_pf0_AWADDR(4 downto 0),
      s_axi_ctrl_pf0_AWVALID => s_axi_ctrl_pf0_AWVALID,
      s_axi_ctrl_pf0_BREADY => s_axi_ctrl_pf0_BREADY,
      s_axi_ctrl_pf0_BVALID => s_axi_ctrl_pf0_BVALID,
      s_axi_ctrl_pf0_RDATA(12 downto 0) => s_axi_ctrl_pf0_RDATA(12 downto 0),
      s_axi_ctrl_pf0_RREADY => s_axi_ctrl_pf0_RREADY,
      s_axi_ctrl_pf0_RVALID => s_axi_ctrl_pf0_RVALID,
      s_axi_ctrl_pf0_WVALID => s_axi_ctrl_pf0_WVALID
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_bar_layout_table__parameterized0\ is
  port (
    s_axi_ctrl_pf1_RVALID : out STD_LOGIC;
    s_axi_ctrl_pf1_BVALID : out STD_LOGIC;
    \INCLUDE_DPHASE_TIMER.dpto_cnt_reg[0]\ : out STD_LOGIC;
    \INCLUDE_DPHASE_TIMER.dpto_cnt_reg[0]_0\ : out STD_LOGIC;
    s_axi_ctrl_pf1_RDATA : out STD_LOGIC_VECTOR ( 8 downto 0 );
    SR : in STD_LOGIC_VECTOR ( 0 to 0 );
    aclk_ctrl : in STD_LOGIC;
    s_axi_ctrl_pf1_ARVALID : in STD_LOGIC;
    aresetn_ctrl : in STD_LOGIC;
    s_axi_ctrl_pf1_AWVALID : in STD_LOGIC;
    s_axi_ctrl_pf1_WVALID : in STD_LOGIC;
    s_axi_ctrl_pf1_RREADY : in STD_LOGIC;
    s_axi_ctrl_pf1_BREADY : in STD_LOGIC;
    s_axi_ctrl_pf1_ARADDR : in STD_LOGIC_VECTOR ( 4 downto 0 );
    s_axi_ctrl_pf1_AWADDR : in STD_LOGIC_VECTOR ( 4 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_bar_layout_table__parameterized0\ : entity is "bar_layout_table";
end \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_bar_layout_table__parameterized0\;

architecture STRUCTURE of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_bar_layout_table__parameterized0\ is
  signal Bus2IP_CS : STD_LOGIC;
  signal \IP2Bus_Ack_reg_n_0_[1]\ : STD_LOGIC;
  signal \IP2Bus_Ack_reg_n_0_[2]\ : STD_LOGIC;
  signal \IP2Bus_Ack_reg_n_0_[3]\ : STD_LOGIC;
  signal \IP2Bus_Ack_reg_n_0_[4]\ : STD_LOGIC;
  signal \IP2Bus_Data_reg_n_0_[0]\ : STD_LOGIC;
  signal \IP2Bus_Data_reg_n_0_[14]\ : STD_LOGIC;
  signal \IP2Bus_Data_reg_n_0_[24]\ : STD_LOGIC;
  signal \IP2Bus_Data_reg_n_0_[28]\ : STD_LOGIC;
  signal \IP2Bus_Data_reg_n_0_[4]\ : STD_LOGIC;
  signal \IP2Bus_Data_reg_n_0_[5]\ : STD_LOGIC;
  signal \IP2Bus_Data_reg_n_0_[6]\ : STD_LOGIC;
  signal \IP2Bus_Data_reg_n_0_[7]\ : STD_LOGIC;
  signal \IP2Bus_Data_reg_n_0_[9]\ : STD_LOGIC;
  signal IP2Bus_WrAck : STD_LOGIC;
  signal \IP2Bus_WrAck_i_1__0_n_0\ : STD_LOGIC;
  signal axi_lite_ipif_1_n_15 : STD_LOGIC;
  signal axi_lite_ipif_1_n_16 : STD_LOGIC;
  signal axi_lite_ipif_1_n_17 : STD_LOGIC;
  signal axi_lite_ipif_1_n_18 : STD_LOGIC;
  signal axi_lite_ipif_1_n_19 : STD_LOGIC;
  signal axi_lite_ipif_1_n_20 : STD_LOGIC;
  signal axi_lite_ipif_1_n_21 : STD_LOGIC;
  signal axi_lite_ipif_1_n_22 : STD_LOGIC;
  signal axi_lite_ipif_1_n_23 : STD_LOGIC;
  signal axi_lite_ipif_1_n_5 : STD_LOGIC;
begin
\IP2Bus_Ack_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk_ctrl,
      CE => '1',
      D => Bus2IP_CS,
      Q => \IP2Bus_Ack_reg_n_0_[1]\,
      R => '0'
    );
\IP2Bus_Ack_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk_ctrl,
      CE => '1',
      D => \IP2Bus_Ack_reg_n_0_[1]\,
      Q => \IP2Bus_Ack_reg_n_0_[2]\,
      R => axi_lite_ipif_1_n_5
    );
\IP2Bus_Ack_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk_ctrl,
      CE => '1',
      D => \IP2Bus_Ack_reg_n_0_[2]\,
      Q => \IP2Bus_Ack_reg_n_0_[3]\,
      R => axi_lite_ipif_1_n_5
    );
\IP2Bus_Ack_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk_ctrl,
      CE => '1',
      D => \IP2Bus_Ack_reg_n_0_[3]\,
      Q => \IP2Bus_Ack_reg_n_0_[4]\,
      R => axi_lite_ipif_1_n_5
    );
\IP2Bus_Data_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk_ctrl,
      CE => '1',
      D => axi_lite_ipif_1_n_23,
      Q => \IP2Bus_Data_reg_n_0_[0]\,
      R => axi_lite_ipif_1_n_5
    );
\IP2Bus_Data_reg[14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk_ctrl,
      CE => '1',
      D => axi_lite_ipif_1_n_17,
      Q => \IP2Bus_Data_reg_n_0_[14]\,
      R => axi_lite_ipif_1_n_5
    );
\IP2Bus_Data_reg[24]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk_ctrl,
      CE => '1',
      D => axi_lite_ipif_1_n_16,
      Q => \IP2Bus_Data_reg_n_0_[24]\,
      R => axi_lite_ipif_1_n_5
    );
\IP2Bus_Data_reg[28]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk_ctrl,
      CE => '1',
      D => axi_lite_ipif_1_n_15,
      Q => \IP2Bus_Data_reg_n_0_[28]\,
      R => axi_lite_ipif_1_n_5
    );
\IP2Bus_Data_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk_ctrl,
      CE => '1',
      D => axi_lite_ipif_1_n_22,
      Q => \IP2Bus_Data_reg_n_0_[4]\,
      R => axi_lite_ipif_1_n_5
    );
\IP2Bus_Data_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk_ctrl,
      CE => '1',
      D => axi_lite_ipif_1_n_21,
      Q => \IP2Bus_Data_reg_n_0_[5]\,
      R => axi_lite_ipif_1_n_5
    );
\IP2Bus_Data_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk_ctrl,
      CE => '1',
      D => axi_lite_ipif_1_n_20,
      Q => \IP2Bus_Data_reg_n_0_[6]\,
      R => axi_lite_ipif_1_n_5
    );
\IP2Bus_Data_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk_ctrl,
      CE => '1',
      D => axi_lite_ipif_1_n_19,
      Q => \IP2Bus_Data_reg_n_0_[7]\,
      R => axi_lite_ipif_1_n_5
    );
\IP2Bus_Data_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk_ctrl,
      CE => '1',
      D => axi_lite_ipif_1_n_18,
      Q => \IP2Bus_Data_reg_n_0_[9]\,
      R => axi_lite_ipif_1_n_5
    );
\IP2Bus_WrAck_i_1__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \IP2Bus_Ack_reg_n_0_[3]\,
      I1 => \IP2Bus_Ack_reg_n_0_[4]\,
      O => \IP2Bus_WrAck_i_1__0_n_0\
    );
IP2Bus_WrAck_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk_ctrl,
      CE => '1',
      D => \IP2Bus_WrAck_i_1__0_n_0\,
      Q => IP2Bus_WrAck,
      R => '0'
    );
axi_lite_ipif_1: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_lite_ipif
     port map (
      Bus2IP_CS => Bus2IP_CS,
      D(8) => axi_lite_ipif_1_n_15,
      D(7) => axi_lite_ipif_1_n_16,
      D(6) => axi_lite_ipif_1_n_17,
      D(5) => axi_lite_ipif_1_n_18,
      D(4) => axi_lite_ipif_1_n_19,
      D(3) => axi_lite_ipif_1_n_20,
      D(2) => axi_lite_ipif_1_n_21,
      D(1) => axi_lite_ipif_1_n_22,
      D(0) => axi_lite_ipif_1_n_23,
      \INCLUDE_DPHASE_TIMER.dpto_cnt_reg[0]\ => \INCLUDE_DPHASE_TIMER.dpto_cnt_reg[0]\,
      \INCLUDE_DPHASE_TIMER.dpto_cnt_reg[0]_0\ => \INCLUDE_DPHASE_TIMER.dpto_cnt_reg[0]_0\,
      IP2Bus_WrAck => IP2Bus_WrAck,
      \MEM_DECODE_GEN[0].cs_out_i_reg[0]\ => axi_lite_ipif_1_n_5,
      Q(8) => \IP2Bus_Data_reg_n_0_[28]\,
      Q(7) => \IP2Bus_Data_reg_n_0_[24]\,
      Q(6) => \IP2Bus_Data_reg_n_0_[14]\,
      Q(5) => \IP2Bus_Data_reg_n_0_[9]\,
      Q(4) => \IP2Bus_Data_reg_n_0_[7]\,
      Q(3) => \IP2Bus_Data_reg_n_0_[6]\,
      Q(2) => \IP2Bus_Data_reg_n_0_[5]\,
      Q(1) => \IP2Bus_Data_reg_n_0_[4]\,
      Q(0) => \IP2Bus_Data_reg_n_0_[0]\,
      SR(0) => SR(0),
      aclk_ctrl => aclk_ctrl,
      aresetn_ctrl => aresetn_ctrl,
      s_axi_ctrl_pf1_ARADDR(4 downto 0) => s_axi_ctrl_pf1_ARADDR(4 downto 0),
      s_axi_ctrl_pf1_ARVALID => s_axi_ctrl_pf1_ARVALID,
      s_axi_ctrl_pf1_AWADDR(4 downto 0) => s_axi_ctrl_pf1_AWADDR(4 downto 0),
      s_axi_ctrl_pf1_AWVALID => s_axi_ctrl_pf1_AWVALID,
      s_axi_ctrl_pf1_BREADY => s_axi_ctrl_pf1_BREADY,
      s_axi_ctrl_pf1_BVALID => s_axi_ctrl_pf1_BVALID,
      s_axi_ctrl_pf1_RDATA(8 downto 0) => s_axi_ctrl_pf1_RDATA(8 downto 0),
      s_axi_ctrl_pf1_RREADY => s_axi_ctrl_pf1_RREADY,
      s_axi_ctrl_pf1_RVALID => s_axi_ctrl_pf1_RVALID,
      s_axi_ctrl_pf1_WVALID => s_axi_ctrl_pf1_WVALID
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_hw_disc is
  port (
    \INCLUDE_DPHASE_TIMER.dpto_cnt_reg[0]\ : out STD_LOGIC;
    \INCLUDE_DPHASE_TIMER.dpto_cnt_reg[0]_0\ : out STD_LOGIC;
    \INCLUDE_DPHASE_TIMER.dpto_cnt_reg[0]_1\ : out STD_LOGIC;
    \INCLUDE_DPHASE_TIMER.dpto_cnt_reg[0]_2\ : out STD_LOGIC;
    s_axi_ctrl_pf0_RDATA : out STD_LOGIC_VECTOR ( 12 downto 0 );
    s_axi_ctrl_pf1_RDATA : out STD_LOGIC_VECTOR ( 8 downto 0 );
    s_pcie4_cfg_ext_read_data : out STD_LOGIC_VECTOR ( 3 downto 0 );
    s_pcie4_cfg_ext_read_data_valid : out STD_LOGIC;
    s_axi_ctrl_pf0_RVALID : out STD_LOGIC;
    s_axi_ctrl_pf0_BVALID : out STD_LOGIC;
    s_axi_ctrl_pf1_RVALID : out STD_LOGIC;
    s_axi_ctrl_pf1_BVALID : out STD_LOGIC;
    s_pcie4_cfg_ext_function_number : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_pcie4_cfg_ext_register_number : in STD_LOGIC_VECTOR ( 9 downto 0 );
    s_axi_ctrl_pf0_ARVALID : in STD_LOGIC;
    s_axi_ctrl_pf1_ARVALID : in STD_LOGIC;
    aclk_ctrl : in STD_LOGIC;
    aclk_pcie : in STD_LOGIC;
    s_pcie4_cfg_ext_read_received : in STD_LOGIC;
    aresetn_ctrl : in STD_LOGIC;
    s_axi_ctrl_pf0_AWVALID : in STD_LOGIC;
    s_axi_ctrl_pf0_WVALID : in STD_LOGIC;
    s_axi_ctrl_pf1_AWVALID : in STD_LOGIC;
    s_axi_ctrl_pf1_WVALID : in STD_LOGIC;
    s_axi_ctrl_pf0_RREADY : in STD_LOGIC;
    s_axi_ctrl_pf0_BREADY : in STD_LOGIC;
    s_axi_ctrl_pf1_RREADY : in STD_LOGIC;
    s_axi_ctrl_pf1_BREADY : in STD_LOGIC;
    s_axi_ctrl_pf0_ARADDR : in STD_LOGIC_VECTOR ( 4 downto 0 );
    s_axi_ctrl_pf0_AWADDR : in STD_LOGIC_VECTOR ( 4 downto 0 );
    s_axi_ctrl_pf1_ARADDR : in STD_LOGIC_VECTOR ( 4 downto 0 );
    s_axi_ctrl_pf1_AWADDR : in STD_LOGIC_VECTOR ( 4 downto 0 )
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_hw_disc;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_hw_disc is
  signal \axi_lite_ipif_1/I_SLAVE_ATTACHMENT/rst\ : STD_LOGIC;
begin
\G_GENERATE[0].G_GENERATE_PF0.BAR_LAYOUT_TABLE_inst_0\: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_bar_layout_table
     port map (
      \INCLUDE_DPHASE_TIMER.dpto_cnt_reg[0]\ => \INCLUDE_DPHASE_TIMER.dpto_cnt_reg[0]\,
      \INCLUDE_DPHASE_TIMER.dpto_cnt_reg[0]_0\ => \INCLUDE_DPHASE_TIMER.dpto_cnt_reg[0]_0\,
      SR(0) => \axi_lite_ipif_1/I_SLAVE_ATTACHMENT/rst\,
      aclk_ctrl => aclk_ctrl,
      aresetn_ctrl => aresetn_ctrl,
      s_axi_ctrl_pf0_ARADDR(4 downto 0) => s_axi_ctrl_pf0_ARADDR(4 downto 0),
      s_axi_ctrl_pf0_ARVALID => s_axi_ctrl_pf0_ARVALID,
      s_axi_ctrl_pf0_AWADDR(4 downto 0) => s_axi_ctrl_pf0_AWADDR(4 downto 0),
      s_axi_ctrl_pf0_AWVALID => s_axi_ctrl_pf0_AWVALID,
      s_axi_ctrl_pf0_BREADY => s_axi_ctrl_pf0_BREADY,
      s_axi_ctrl_pf0_BVALID => s_axi_ctrl_pf0_BVALID,
      s_axi_ctrl_pf0_RDATA(12 downto 0) => s_axi_ctrl_pf0_RDATA(12 downto 0),
      s_axi_ctrl_pf0_RREADY => s_axi_ctrl_pf0_RREADY,
      s_axi_ctrl_pf0_RVALID => s_axi_ctrl_pf0_RVALID,
      s_axi_ctrl_pf0_WVALID => s_axi_ctrl_pf0_WVALID
    );
\G_GENERATE[1].G_GENERATE_PF1.BAR_LAYOUT_TABLE_inst_1\: entity work.\decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_bar_layout_table__parameterized0\
     port map (
      \INCLUDE_DPHASE_TIMER.dpto_cnt_reg[0]\ => \INCLUDE_DPHASE_TIMER.dpto_cnt_reg[0]_1\,
      \INCLUDE_DPHASE_TIMER.dpto_cnt_reg[0]_0\ => \INCLUDE_DPHASE_TIMER.dpto_cnt_reg[0]_2\,
      SR(0) => \axi_lite_ipif_1/I_SLAVE_ATTACHMENT/rst\,
      aclk_ctrl => aclk_ctrl,
      aresetn_ctrl => aresetn_ctrl,
      s_axi_ctrl_pf1_ARADDR(4 downto 0) => s_axi_ctrl_pf1_ARADDR(4 downto 0),
      s_axi_ctrl_pf1_ARVALID => s_axi_ctrl_pf1_ARVALID,
      s_axi_ctrl_pf1_AWADDR(4 downto 0) => s_axi_ctrl_pf1_AWADDR(4 downto 0),
      s_axi_ctrl_pf1_AWVALID => s_axi_ctrl_pf1_AWVALID,
      s_axi_ctrl_pf1_BREADY => s_axi_ctrl_pf1_BREADY,
      s_axi_ctrl_pf1_BVALID => s_axi_ctrl_pf1_BVALID,
      s_axi_ctrl_pf1_RDATA(8 downto 0) => s_axi_ctrl_pf1_RDATA(8 downto 0),
      s_axi_ctrl_pf1_RREADY => s_axi_ctrl_pf1_RREADY,
      s_axi_ctrl_pf1_RVALID => s_axi_ctrl_pf1_RVALID,
      s_axi_ctrl_pf1_WVALID => s_axi_ctrl_pf1_WVALID
    );
pcie_vsec_inst: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_pcie_vsec
     port map (
      aclk_pcie => aclk_pcie,
      s_pcie4_cfg_ext_function_number(1 downto 0) => s_pcie4_cfg_ext_function_number(1 downto 0),
      s_pcie4_cfg_ext_read_data(3 downto 0) => s_pcie4_cfg_ext_read_data(3 downto 0),
      s_pcie4_cfg_ext_read_data_valid => s_pcie4_cfg_ext_read_data_valid,
      s_pcie4_cfg_ext_read_received => s_pcie4_cfg_ext_read_received,
      s_pcie4_cfg_ext_register_number(9 downto 0) => s_pcie4_cfg_ext_register_number(9 downto 0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_hw_discovery is
  port (
    aclk_pcie : in STD_LOGIC;
    aresetn_pcie : in STD_LOGIC;
    aclk_ctrl : in STD_LOGIC;
    aresetn_ctrl : in STD_LOGIC;
    s_pcie4_cfg_ext_function_number : in STD_LOGIC_VECTOR ( 7 downto 0 );
    s_pcie4_cfg_ext_read_data : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s_pcie4_cfg_ext_read_data_valid : out STD_LOGIC;
    s_pcie4_cfg_ext_read_received : in STD_LOGIC;
    s_pcie4_cfg_ext_register_number : in STD_LOGIC_VECTOR ( 9 downto 0 );
    s_pcie4_cfg_ext_write_byte_enable : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_pcie4_cfg_ext_write_data : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_pcie4_cfg_ext_write_received : in STD_LOGIC;
    m_pcie4_cfg_ext_function_number : out STD_LOGIC_VECTOR ( 7 downto 0 );
    m_pcie4_cfg_ext_read_data : in STD_LOGIC_VECTOR ( 31 downto 0 );
    m_pcie4_cfg_ext_read_data_valid : in STD_LOGIC;
    m_pcie4_cfg_ext_read_received : out STD_LOGIC;
    m_pcie4_cfg_ext_register_number : out STD_LOGIC_VECTOR ( 9 downto 0 );
    m_pcie4_cfg_ext_write_byte_enable : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_pcie4_cfg_ext_write_data : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_pcie4_cfg_ext_write_received : out STD_LOGIC;
    s_axi_ctrl_pf0_AWADDR : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_ctrl_pf0_AWVALID : in STD_LOGIC;
    s_axi_ctrl_pf0_AWREADY : out STD_LOGIC;
    s_axi_ctrl_pf0_WDATA : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_ctrl_pf0_WSTRB : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_ctrl_pf0_WVALID : in STD_LOGIC;
    s_axi_ctrl_pf0_WREADY : out STD_LOGIC;
    s_axi_ctrl_pf0_BRESP : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_ctrl_pf0_BVALID : out STD_LOGIC;
    s_axi_ctrl_pf0_BREADY : in STD_LOGIC;
    s_axi_ctrl_pf0_ARADDR : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_ctrl_pf0_ARVALID : in STD_LOGIC;
    s_axi_ctrl_pf0_ARREADY : out STD_LOGIC;
    s_axi_ctrl_pf0_RDATA : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_ctrl_pf0_RRESP : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_ctrl_pf0_RVALID : out STD_LOGIC;
    s_axi_ctrl_pf0_RREADY : in STD_LOGIC;
    s_axi_ctrl_pf1_AWADDR : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_ctrl_pf1_AWVALID : in STD_LOGIC;
    s_axi_ctrl_pf1_AWREADY : out STD_LOGIC;
    s_axi_ctrl_pf1_WDATA : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_ctrl_pf1_WSTRB : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_ctrl_pf1_WVALID : in STD_LOGIC;
    s_axi_ctrl_pf1_WREADY : out STD_LOGIC;
    s_axi_ctrl_pf1_BRESP : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_ctrl_pf1_BVALID : out STD_LOGIC;
    s_axi_ctrl_pf1_BREADY : in STD_LOGIC;
    s_axi_ctrl_pf1_ARADDR : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_ctrl_pf1_ARVALID : in STD_LOGIC;
    s_axi_ctrl_pf1_ARREADY : out STD_LOGIC;
    s_axi_ctrl_pf1_RDATA : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_ctrl_pf1_RRESP : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_ctrl_pf1_RVALID : out STD_LOGIC;
    s_axi_ctrl_pf1_RREADY : in STD_LOGIC;
    s_axi_ctrl_pf2_AWADDR : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_ctrl_pf2_AWVALID : in STD_LOGIC;
    s_axi_ctrl_pf2_AWREADY : out STD_LOGIC;
    s_axi_ctrl_pf2_WDATA : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_ctrl_pf2_WSTRB : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_ctrl_pf2_WVALID : in STD_LOGIC;
    s_axi_ctrl_pf2_WREADY : out STD_LOGIC;
    s_axi_ctrl_pf2_BRESP : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_ctrl_pf2_BVALID : out STD_LOGIC;
    s_axi_ctrl_pf2_BREADY : in STD_LOGIC;
    s_axi_ctrl_pf2_ARADDR : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_ctrl_pf2_ARVALID : in STD_LOGIC;
    s_axi_ctrl_pf2_ARREADY : out STD_LOGIC;
    s_axi_ctrl_pf2_RDATA : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_ctrl_pf2_RRESP : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_ctrl_pf2_RVALID : out STD_LOGIC;
    s_axi_ctrl_pf2_RREADY : in STD_LOGIC;
    s_axi_ctrl_pf3_AWADDR : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_ctrl_pf3_AWVALID : in STD_LOGIC;
    s_axi_ctrl_pf3_AWREADY : out STD_LOGIC;
    s_axi_ctrl_pf3_WDATA : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_ctrl_pf3_WSTRB : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_ctrl_pf3_WVALID : in STD_LOGIC;
    s_axi_ctrl_pf3_WREADY : out STD_LOGIC;
    s_axi_ctrl_pf3_BRESP : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_ctrl_pf3_BVALID : out STD_LOGIC;
    s_axi_ctrl_pf3_BREADY : in STD_LOGIC;
    s_axi_ctrl_pf3_ARADDR : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_ctrl_pf3_ARVALID : in STD_LOGIC;
    s_axi_ctrl_pf3_ARREADY : out STD_LOGIC;
    s_axi_ctrl_pf3_RDATA : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_ctrl_pf3_RRESP : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_ctrl_pf3_RVALID : out STD_LOGIC;
    s_axi_ctrl_pf3_RREADY : in STD_LOGIC
  );
  attribute C_CAP_BASE_ADDR : string;
  attribute C_CAP_BASE_ADDR of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_hw_discovery : entity is "12'b011000000000";
  attribute C_NEXT_CAP_ADDR : string;
  attribute C_NEXT_CAP_ADDR of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_hw_discovery : entity is "12'b000000000000";
  attribute C_NUM_PFS : integer;
  attribute C_NUM_PFS of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_hw_discovery : entity is 2;
  attribute C_PF0_BAR_INDEX : integer;
  attribute C_PF0_BAR_INDEX of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_hw_discovery : entity is 0;
  attribute C_PF0_ENTRY_ADDR_0 : string;
  attribute C_PF0_ENTRY_ADDR_0 of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_hw_discovery : entity is "48'b000000000000000000000010000000010000000000000000";
  attribute C_PF0_ENTRY_ADDR_1 : string;
  attribute C_PF0_ENTRY_ADDR_1 of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_hw_discovery : entity is "48'b000000000000000000000010000000000000000000000000";
  attribute C_PF0_ENTRY_ADDR_10 : string;
  attribute C_PF0_ENTRY_ADDR_10 of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_hw_discovery : entity is "48'b000000000000000000000000000000000000000000000000";
  attribute C_PF0_ENTRY_ADDR_11 : string;
  attribute C_PF0_ENTRY_ADDR_11 of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_hw_discovery : entity is "48'b000000000000000000000000000000000000000000000000";
  attribute C_PF0_ENTRY_ADDR_12 : string;
  attribute C_PF0_ENTRY_ADDR_12 of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_hw_discovery : entity is "48'b000000000000000000000000000000000000000000000000";
  attribute C_PF0_ENTRY_ADDR_13 : string;
  attribute C_PF0_ENTRY_ADDR_13 of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_hw_discovery : entity is "48'b000000000000000000000000000000000000000000000000";
  attribute C_PF0_ENTRY_ADDR_14 : string;
  attribute C_PF0_ENTRY_ADDR_14 of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_hw_discovery : entity is "48'b000000000000000000000000000000000000000000000000";
  attribute C_PF0_ENTRY_ADDR_15 : string;
  attribute C_PF0_ENTRY_ADDR_15 of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_hw_discovery : entity is "48'b000000000000000000000000000000000000000000000000";
  attribute C_PF0_ENTRY_ADDR_2 : string;
  attribute C_PF0_ENTRY_ADDR_2 of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_hw_discovery : entity is "48'b000000000000000000001000000000000000000000000000";
  attribute C_PF0_ENTRY_ADDR_3 : string;
  attribute C_PF0_ENTRY_ADDR_3 of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_hw_discovery : entity is "48'b000000000000000000000010000000000010000000000000";
  attribute C_PF0_ENTRY_ADDR_4 : string;
  attribute C_PF0_ENTRY_ADDR_4 of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_hw_discovery : entity is "48'b000000000000000000000000000000000000000000000000";
  attribute C_PF0_ENTRY_ADDR_5 : string;
  attribute C_PF0_ENTRY_ADDR_5 of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_hw_discovery : entity is "48'b000000000000000000000000000000000000000000000000";
  attribute C_PF0_ENTRY_ADDR_6 : string;
  attribute C_PF0_ENTRY_ADDR_6 of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_hw_discovery : entity is "48'b000000000000000000000000000000000000000000000000";
  attribute C_PF0_ENTRY_ADDR_7 : string;
  attribute C_PF0_ENTRY_ADDR_7 of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_hw_discovery : entity is "48'b000000000000000000000000000000000000000000000000";
  attribute C_PF0_ENTRY_ADDR_8 : string;
  attribute C_PF0_ENTRY_ADDR_8 of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_hw_discovery : entity is "48'b000000000000000000000000000000000000000000000000";
  attribute C_PF0_ENTRY_ADDR_9 : string;
  attribute C_PF0_ENTRY_ADDR_9 of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_hw_discovery : entity is "48'b000000000000000000000000000000000000000000000000";
  attribute C_PF0_ENTRY_BAR_0 : integer;
  attribute C_PF0_ENTRY_BAR_0 of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_hw_discovery : entity is 0;
  attribute C_PF0_ENTRY_BAR_1 : integer;
  attribute C_PF0_ENTRY_BAR_1 of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_hw_discovery : entity is 0;
  attribute C_PF0_ENTRY_BAR_10 : integer;
  attribute C_PF0_ENTRY_BAR_10 of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_hw_discovery : entity is 0;
  attribute C_PF0_ENTRY_BAR_11 : integer;
  attribute C_PF0_ENTRY_BAR_11 of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_hw_discovery : entity is 0;
  attribute C_PF0_ENTRY_BAR_12 : integer;
  attribute C_PF0_ENTRY_BAR_12 of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_hw_discovery : entity is 0;
  attribute C_PF0_ENTRY_BAR_13 : integer;
  attribute C_PF0_ENTRY_BAR_13 of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_hw_discovery : entity is 0;
  attribute C_PF0_ENTRY_BAR_14 : integer;
  attribute C_PF0_ENTRY_BAR_14 of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_hw_discovery : entity is 0;
  attribute C_PF0_ENTRY_BAR_15 : integer;
  attribute C_PF0_ENTRY_BAR_15 of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_hw_discovery : entity is 0;
  attribute C_PF0_ENTRY_BAR_2 : integer;
  attribute C_PF0_ENTRY_BAR_2 of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_hw_discovery : entity is 0;
  attribute C_PF0_ENTRY_BAR_3 : integer;
  attribute C_PF0_ENTRY_BAR_3 of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_hw_discovery : entity is 0;
  attribute C_PF0_ENTRY_BAR_4 : integer;
  attribute C_PF0_ENTRY_BAR_4 of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_hw_discovery : entity is 0;
  attribute C_PF0_ENTRY_BAR_5 : integer;
  attribute C_PF0_ENTRY_BAR_5 of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_hw_discovery : entity is 0;
  attribute C_PF0_ENTRY_BAR_6 : integer;
  attribute C_PF0_ENTRY_BAR_6 of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_hw_discovery : entity is 0;
  attribute C_PF0_ENTRY_BAR_7 : integer;
  attribute C_PF0_ENTRY_BAR_7 of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_hw_discovery : entity is 0;
  attribute C_PF0_ENTRY_BAR_8 : integer;
  attribute C_PF0_ENTRY_BAR_8 of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_hw_discovery : entity is 0;
  attribute C_PF0_ENTRY_BAR_9 : integer;
  attribute C_PF0_ENTRY_BAR_9 of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_hw_discovery : entity is 0;
  attribute C_PF0_ENTRY_MAJOR_VERSION_0 : integer;
  attribute C_PF0_ENTRY_MAJOR_VERSION_0 of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_hw_discovery : entity is 1;
  attribute C_PF0_ENTRY_MAJOR_VERSION_1 : integer;
  attribute C_PF0_ENTRY_MAJOR_VERSION_1 of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_hw_discovery : entity is 1;
  attribute C_PF0_ENTRY_MAJOR_VERSION_10 : integer;
  attribute C_PF0_ENTRY_MAJOR_VERSION_10 of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_hw_discovery : entity is 0;
  attribute C_PF0_ENTRY_MAJOR_VERSION_11 : integer;
  attribute C_PF0_ENTRY_MAJOR_VERSION_11 of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_hw_discovery : entity is 0;
  attribute C_PF0_ENTRY_MAJOR_VERSION_12 : integer;
  attribute C_PF0_ENTRY_MAJOR_VERSION_12 of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_hw_discovery : entity is 0;
  attribute C_PF0_ENTRY_MAJOR_VERSION_13 : integer;
  attribute C_PF0_ENTRY_MAJOR_VERSION_13 of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_hw_discovery : entity is 0;
  attribute C_PF0_ENTRY_MAJOR_VERSION_14 : integer;
  attribute C_PF0_ENTRY_MAJOR_VERSION_14 of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_hw_discovery : entity is 0;
  attribute C_PF0_ENTRY_MAJOR_VERSION_15 : integer;
  attribute C_PF0_ENTRY_MAJOR_VERSION_15 of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_hw_discovery : entity is 0;
  attribute C_PF0_ENTRY_MAJOR_VERSION_2 : integer;
  attribute C_PF0_ENTRY_MAJOR_VERSION_2 of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_hw_discovery : entity is 1;
  attribute C_PF0_ENTRY_MAJOR_VERSION_3 : integer;
  attribute C_PF0_ENTRY_MAJOR_VERSION_3 of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_hw_discovery : entity is 1;
  attribute C_PF0_ENTRY_MAJOR_VERSION_4 : integer;
  attribute C_PF0_ENTRY_MAJOR_VERSION_4 of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_hw_discovery : entity is 0;
  attribute C_PF0_ENTRY_MAJOR_VERSION_5 : integer;
  attribute C_PF0_ENTRY_MAJOR_VERSION_5 of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_hw_discovery : entity is 0;
  attribute C_PF0_ENTRY_MAJOR_VERSION_6 : integer;
  attribute C_PF0_ENTRY_MAJOR_VERSION_6 of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_hw_discovery : entity is 0;
  attribute C_PF0_ENTRY_MAJOR_VERSION_7 : integer;
  attribute C_PF0_ENTRY_MAJOR_VERSION_7 of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_hw_discovery : entity is 0;
  attribute C_PF0_ENTRY_MAJOR_VERSION_8 : integer;
  attribute C_PF0_ENTRY_MAJOR_VERSION_8 of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_hw_discovery : entity is 0;
  attribute C_PF0_ENTRY_MAJOR_VERSION_9 : integer;
  attribute C_PF0_ENTRY_MAJOR_VERSION_9 of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_hw_discovery : entity is 0;
  attribute C_PF0_ENTRY_MINOR_VERSION_0 : integer;
  attribute C_PF0_ENTRY_MINOR_VERSION_0 of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_hw_discovery : entity is 2;
  attribute C_PF0_ENTRY_MINOR_VERSION_1 : integer;
  attribute C_PF0_ENTRY_MINOR_VERSION_1 of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_hw_discovery : entity is 0;
  attribute C_PF0_ENTRY_MINOR_VERSION_10 : integer;
  attribute C_PF0_ENTRY_MINOR_VERSION_10 of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_hw_discovery : entity is 0;
  attribute C_PF0_ENTRY_MINOR_VERSION_11 : integer;
  attribute C_PF0_ENTRY_MINOR_VERSION_11 of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_hw_discovery : entity is 0;
  attribute C_PF0_ENTRY_MINOR_VERSION_12 : integer;
  attribute C_PF0_ENTRY_MINOR_VERSION_12 of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_hw_discovery : entity is 0;
  attribute C_PF0_ENTRY_MINOR_VERSION_13 : integer;
  attribute C_PF0_ENTRY_MINOR_VERSION_13 of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_hw_discovery : entity is 0;
  attribute C_PF0_ENTRY_MINOR_VERSION_14 : integer;
  attribute C_PF0_ENTRY_MINOR_VERSION_14 of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_hw_discovery : entity is 0;
  attribute C_PF0_ENTRY_MINOR_VERSION_15 : integer;
  attribute C_PF0_ENTRY_MINOR_VERSION_15 of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_hw_discovery : entity is 0;
  attribute C_PF0_ENTRY_MINOR_VERSION_2 : integer;
  attribute C_PF0_ENTRY_MINOR_VERSION_2 of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_hw_discovery : entity is 0;
  attribute C_PF0_ENTRY_MINOR_VERSION_3 : integer;
  attribute C_PF0_ENTRY_MINOR_VERSION_3 of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_hw_discovery : entity is 0;
  attribute C_PF0_ENTRY_MINOR_VERSION_4 : integer;
  attribute C_PF0_ENTRY_MINOR_VERSION_4 of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_hw_discovery : entity is 0;
  attribute C_PF0_ENTRY_MINOR_VERSION_5 : integer;
  attribute C_PF0_ENTRY_MINOR_VERSION_5 of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_hw_discovery : entity is 0;
  attribute C_PF0_ENTRY_MINOR_VERSION_6 : integer;
  attribute C_PF0_ENTRY_MINOR_VERSION_6 of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_hw_discovery : entity is 0;
  attribute C_PF0_ENTRY_MINOR_VERSION_7 : integer;
  attribute C_PF0_ENTRY_MINOR_VERSION_7 of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_hw_discovery : entity is 0;
  attribute C_PF0_ENTRY_MINOR_VERSION_8 : integer;
  attribute C_PF0_ENTRY_MINOR_VERSION_8 of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_hw_discovery : entity is 0;
  attribute C_PF0_ENTRY_MINOR_VERSION_9 : integer;
  attribute C_PF0_ENTRY_MINOR_VERSION_9 of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_hw_discovery : entity is 0;
  attribute C_PF0_ENTRY_RSVD0_0 : string;
  attribute C_PF0_ENTRY_RSVD0_0 of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_hw_discovery : entity is "4'b0000";
  attribute C_PF0_ENTRY_RSVD0_1 : string;
  attribute C_PF0_ENTRY_RSVD0_1 of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_hw_discovery : entity is "4'b0011";
  attribute C_PF0_ENTRY_RSVD0_10 : string;
  attribute C_PF0_ENTRY_RSVD0_10 of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_hw_discovery : entity is "4'b0000";
  attribute C_PF0_ENTRY_RSVD0_11 : string;
  attribute C_PF0_ENTRY_RSVD0_11 of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_hw_discovery : entity is "4'b0000";
  attribute C_PF0_ENTRY_RSVD0_12 : string;
  attribute C_PF0_ENTRY_RSVD0_12 of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_hw_discovery : entity is "4'b0000";
  attribute C_PF0_ENTRY_RSVD0_13 : string;
  attribute C_PF0_ENTRY_RSVD0_13 of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_hw_discovery : entity is "4'b0000";
  attribute C_PF0_ENTRY_RSVD0_14 : string;
  attribute C_PF0_ENTRY_RSVD0_14 of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_hw_discovery : entity is "4'b0000";
  attribute C_PF0_ENTRY_RSVD0_15 : string;
  attribute C_PF0_ENTRY_RSVD0_15 of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_hw_discovery : entity is "4'b0000";
  attribute C_PF0_ENTRY_RSVD0_2 : string;
  attribute C_PF0_ENTRY_RSVD0_2 of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_hw_discovery : entity is "4'b0000";
  attribute C_PF0_ENTRY_RSVD0_3 : string;
  attribute C_PF0_ENTRY_RSVD0_3 of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_hw_discovery : entity is "4'b0000";
  attribute C_PF0_ENTRY_RSVD0_4 : string;
  attribute C_PF0_ENTRY_RSVD0_4 of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_hw_discovery : entity is "4'b0000";
  attribute C_PF0_ENTRY_RSVD0_5 : string;
  attribute C_PF0_ENTRY_RSVD0_5 of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_hw_discovery : entity is "4'b0000";
  attribute C_PF0_ENTRY_RSVD0_6 : string;
  attribute C_PF0_ENTRY_RSVD0_6 of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_hw_discovery : entity is "4'b0000";
  attribute C_PF0_ENTRY_RSVD0_7 : string;
  attribute C_PF0_ENTRY_RSVD0_7 of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_hw_discovery : entity is "4'b0000";
  attribute C_PF0_ENTRY_RSVD0_8 : string;
  attribute C_PF0_ENTRY_RSVD0_8 of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_hw_discovery : entity is "4'b0000";
  attribute C_PF0_ENTRY_RSVD0_9 : string;
  attribute C_PF0_ENTRY_RSVD0_9 of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_hw_discovery : entity is "4'b0000";
  attribute C_PF0_ENTRY_TYPE_0 : string;
  attribute C_PF0_ENTRY_TYPE_0 of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_hw_discovery : entity is "8'b01010100";
  attribute C_PF0_ENTRY_TYPE_1 : string;
  attribute C_PF0_ENTRY_TYPE_1 of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_hw_discovery : entity is "8'b01010011";
  attribute C_PF0_ENTRY_TYPE_10 : string;
  attribute C_PF0_ENTRY_TYPE_10 of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_hw_discovery : entity is "8'b00000000";
  attribute C_PF0_ENTRY_TYPE_11 : string;
  attribute C_PF0_ENTRY_TYPE_11 of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_hw_discovery : entity is "8'b00000000";
  attribute C_PF0_ENTRY_TYPE_12 : string;
  attribute C_PF0_ENTRY_TYPE_12 of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_hw_discovery : entity is "8'b00000000";
  attribute C_PF0_ENTRY_TYPE_13 : string;
  attribute C_PF0_ENTRY_TYPE_13 of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_hw_discovery : entity is "8'b00000000";
  attribute C_PF0_ENTRY_TYPE_14 : string;
  attribute C_PF0_ENTRY_TYPE_14 of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_hw_discovery : entity is "8'b00000000";
  attribute C_PF0_ENTRY_TYPE_15 : string;
  attribute C_PF0_ENTRY_TYPE_15 of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_hw_discovery : entity is "8'b00000000";
  attribute C_PF0_ENTRY_TYPE_2 : string;
  attribute C_PF0_ENTRY_TYPE_2 of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_hw_discovery : entity is "8'b01010101";
  attribute C_PF0_ENTRY_TYPE_3 : string;
  attribute C_PF0_ENTRY_TYPE_3 of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_hw_discovery : entity is "8'b01010000";
  attribute C_PF0_ENTRY_TYPE_4 : string;
  attribute C_PF0_ENTRY_TYPE_4 of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_hw_discovery : entity is "8'b00000000";
  attribute C_PF0_ENTRY_TYPE_5 : string;
  attribute C_PF0_ENTRY_TYPE_5 of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_hw_discovery : entity is "8'b00000000";
  attribute C_PF0_ENTRY_TYPE_6 : string;
  attribute C_PF0_ENTRY_TYPE_6 of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_hw_discovery : entity is "8'b00000000";
  attribute C_PF0_ENTRY_TYPE_7 : string;
  attribute C_PF0_ENTRY_TYPE_7 of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_hw_discovery : entity is "8'b00000000";
  attribute C_PF0_ENTRY_TYPE_8 : string;
  attribute C_PF0_ENTRY_TYPE_8 of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_hw_discovery : entity is "8'b00000000";
  attribute C_PF0_ENTRY_TYPE_9 : string;
  attribute C_PF0_ENTRY_TYPE_9 of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_hw_discovery : entity is "8'b00000000";
  attribute C_PF0_ENTRY_VERSION_TYPE_0 : string;
  attribute C_PF0_ENTRY_VERSION_TYPE_0 of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_hw_discovery : entity is "8'b00000001";
  attribute C_PF0_ENTRY_VERSION_TYPE_1 : string;
  attribute C_PF0_ENTRY_VERSION_TYPE_1 of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_hw_discovery : entity is "8'b00000001";
  attribute C_PF0_ENTRY_VERSION_TYPE_10 : string;
  attribute C_PF0_ENTRY_VERSION_TYPE_10 of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_hw_discovery : entity is "8'b00000000";
  attribute C_PF0_ENTRY_VERSION_TYPE_11 : string;
  attribute C_PF0_ENTRY_VERSION_TYPE_11 of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_hw_discovery : entity is "8'b00000000";
  attribute C_PF0_ENTRY_VERSION_TYPE_12 : string;
  attribute C_PF0_ENTRY_VERSION_TYPE_12 of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_hw_discovery : entity is "8'b00000000";
  attribute C_PF0_ENTRY_VERSION_TYPE_13 : string;
  attribute C_PF0_ENTRY_VERSION_TYPE_13 of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_hw_discovery : entity is "8'b00000000";
  attribute C_PF0_ENTRY_VERSION_TYPE_14 : string;
  attribute C_PF0_ENTRY_VERSION_TYPE_14 of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_hw_discovery : entity is "8'b00000000";
  attribute C_PF0_ENTRY_VERSION_TYPE_15 : string;
  attribute C_PF0_ENTRY_VERSION_TYPE_15 of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_hw_discovery : entity is "8'b00000000";
  attribute C_PF0_ENTRY_VERSION_TYPE_2 : string;
  attribute C_PF0_ENTRY_VERSION_TYPE_2 of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_hw_discovery : entity is "8'b00000001";
  attribute C_PF0_ENTRY_VERSION_TYPE_3 : string;
  attribute C_PF0_ENTRY_VERSION_TYPE_3 of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_hw_discovery : entity is "8'b00000001";
  attribute C_PF0_ENTRY_VERSION_TYPE_4 : string;
  attribute C_PF0_ENTRY_VERSION_TYPE_4 of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_hw_discovery : entity is "8'b00000000";
  attribute C_PF0_ENTRY_VERSION_TYPE_5 : string;
  attribute C_PF0_ENTRY_VERSION_TYPE_5 of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_hw_discovery : entity is "8'b00000000";
  attribute C_PF0_ENTRY_VERSION_TYPE_6 : string;
  attribute C_PF0_ENTRY_VERSION_TYPE_6 of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_hw_discovery : entity is "8'b00000000";
  attribute C_PF0_ENTRY_VERSION_TYPE_7 : string;
  attribute C_PF0_ENTRY_VERSION_TYPE_7 of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_hw_discovery : entity is "8'b00000000";
  attribute C_PF0_ENTRY_VERSION_TYPE_8 : string;
  attribute C_PF0_ENTRY_VERSION_TYPE_8 of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_hw_discovery : entity is "8'b00000000";
  attribute C_PF0_ENTRY_VERSION_TYPE_9 : string;
  attribute C_PF0_ENTRY_VERSION_TYPE_9 of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_hw_discovery : entity is "8'b00000000";
  attribute C_PF0_HAS_UUID_ROM : integer;
  attribute C_PF0_HAS_UUID_ROM of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_hw_discovery : entity is 0;
  attribute C_PF0_HIGH_OFFSET : integer;
  attribute C_PF0_HIGH_OFFSET of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_hw_discovery : entity is 0;
  attribute C_PF0_LOW_OFFSET : string;
  attribute C_PF0_LOW_OFFSET of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_hw_discovery : entity is "28'b0000001000000000000100000000";
  attribute C_PF0_NUM_SLOTS_BAR_LAYOUT_TABLE : integer;
  attribute C_PF0_NUM_SLOTS_BAR_LAYOUT_TABLE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_hw_discovery : entity is 4;
  attribute C_PF0_S_AXI_ADDR_WIDTH : integer;
  attribute C_PF0_S_AXI_ADDR_WIDTH of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_hw_discovery : entity is 32;
  attribute C_PF0_S_AXI_DATA_WIDTH : integer;
  attribute C_PF0_S_AXI_DATA_WIDTH of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_hw_discovery : entity is 32;
  attribute C_PF0_UUID_ROM_INIT : string;
  attribute C_PF0_UUID_ROM_INIT of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_hw_discovery : entity is "00000000,00000000,00000000,00000000";
  attribute C_PF1_BAR_INDEX : integer;
  attribute C_PF1_BAR_INDEX of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_hw_discovery : entity is 2;
  attribute C_PF1_ENTRY_ADDR_0 : string;
  attribute C_PF1_ENTRY_ADDR_0 of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_hw_discovery : entity is "48'b000000000000000000000010000000000000000000000000";
  attribute C_PF1_ENTRY_ADDR_1 : string;
  attribute C_PF1_ENTRY_ADDR_1 of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_hw_discovery : entity is "48'b000000000000000000000000000000000000000000000000";
  attribute C_PF1_ENTRY_ADDR_10 : string;
  attribute C_PF1_ENTRY_ADDR_10 of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_hw_discovery : entity is "48'b000000000000000000000000000000000000000000000000";
  attribute C_PF1_ENTRY_ADDR_11 : string;
  attribute C_PF1_ENTRY_ADDR_11 of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_hw_discovery : entity is "48'b000000000000000000000000000000000000000000000000";
  attribute C_PF1_ENTRY_ADDR_12 : string;
  attribute C_PF1_ENTRY_ADDR_12 of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_hw_discovery : entity is "48'b000000000000000000000000000000000000000000000000";
  attribute C_PF1_ENTRY_ADDR_13 : string;
  attribute C_PF1_ENTRY_ADDR_13 of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_hw_discovery : entity is "48'b000000000000000000000000000000000000000000000000";
  attribute C_PF1_ENTRY_ADDR_14 : string;
  attribute C_PF1_ENTRY_ADDR_14 of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_hw_discovery : entity is "48'b000000000000000000000000000000000000000000000000";
  attribute C_PF1_ENTRY_ADDR_15 : string;
  attribute C_PF1_ENTRY_ADDR_15 of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_hw_discovery : entity is "48'b000000000000000000000000000000000000000000000000";
  attribute C_PF1_ENTRY_ADDR_2 : string;
  attribute C_PF1_ENTRY_ADDR_2 of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_hw_discovery : entity is "48'b000000000000000000000000000000000000000000000000";
  attribute C_PF1_ENTRY_ADDR_3 : string;
  attribute C_PF1_ENTRY_ADDR_3 of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_hw_discovery : entity is "48'b000000000000000000000000000000000000000000000000";
  attribute C_PF1_ENTRY_ADDR_4 : string;
  attribute C_PF1_ENTRY_ADDR_4 of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_hw_discovery : entity is "48'b000000000000000000000000000000000000000000000000";
  attribute C_PF1_ENTRY_ADDR_5 : string;
  attribute C_PF1_ENTRY_ADDR_5 of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_hw_discovery : entity is "48'b000000000000000000000000000000000000000000000000";
  attribute C_PF1_ENTRY_ADDR_6 : string;
  attribute C_PF1_ENTRY_ADDR_6 of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_hw_discovery : entity is "48'b000000000000000000000000000000000000000000000000";
  attribute C_PF1_ENTRY_ADDR_7 : string;
  attribute C_PF1_ENTRY_ADDR_7 of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_hw_discovery : entity is "48'b000000000000000000000000000000000000000000000000";
  attribute C_PF1_ENTRY_ADDR_8 : string;
  attribute C_PF1_ENTRY_ADDR_8 of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_hw_discovery : entity is "48'b000000000000000000000000000000000000000000000000";
  attribute C_PF1_ENTRY_ADDR_9 : string;
  attribute C_PF1_ENTRY_ADDR_9 of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_hw_discovery : entity is "48'b000000000000000000000000000000000000000000000000";
  attribute C_PF1_ENTRY_BAR_0 : integer;
  attribute C_PF1_ENTRY_BAR_0 of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_hw_discovery : entity is 2;
  attribute C_PF1_ENTRY_BAR_1 : integer;
  attribute C_PF1_ENTRY_BAR_1 of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_hw_discovery : entity is 0;
  attribute C_PF1_ENTRY_BAR_10 : integer;
  attribute C_PF1_ENTRY_BAR_10 of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_hw_discovery : entity is 0;
  attribute C_PF1_ENTRY_BAR_11 : integer;
  attribute C_PF1_ENTRY_BAR_11 of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_hw_discovery : entity is 0;
  attribute C_PF1_ENTRY_BAR_12 : integer;
  attribute C_PF1_ENTRY_BAR_12 of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_hw_discovery : entity is 0;
  attribute C_PF1_ENTRY_BAR_13 : integer;
  attribute C_PF1_ENTRY_BAR_13 of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_hw_discovery : entity is 0;
  attribute C_PF1_ENTRY_BAR_14 : integer;
  attribute C_PF1_ENTRY_BAR_14 of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_hw_discovery : entity is 0;
  attribute C_PF1_ENTRY_BAR_15 : integer;
  attribute C_PF1_ENTRY_BAR_15 of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_hw_discovery : entity is 0;
  attribute C_PF1_ENTRY_BAR_2 : integer;
  attribute C_PF1_ENTRY_BAR_2 of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_hw_discovery : entity is 0;
  attribute C_PF1_ENTRY_BAR_3 : integer;
  attribute C_PF1_ENTRY_BAR_3 of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_hw_discovery : entity is 0;
  attribute C_PF1_ENTRY_BAR_4 : integer;
  attribute C_PF1_ENTRY_BAR_4 of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_hw_discovery : entity is 0;
  attribute C_PF1_ENTRY_BAR_5 : integer;
  attribute C_PF1_ENTRY_BAR_5 of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_hw_discovery : entity is 0;
  attribute C_PF1_ENTRY_BAR_6 : integer;
  attribute C_PF1_ENTRY_BAR_6 of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_hw_discovery : entity is 0;
  attribute C_PF1_ENTRY_BAR_7 : integer;
  attribute C_PF1_ENTRY_BAR_7 of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_hw_discovery : entity is 0;
  attribute C_PF1_ENTRY_BAR_8 : integer;
  attribute C_PF1_ENTRY_BAR_8 of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_hw_discovery : entity is 0;
  attribute C_PF1_ENTRY_BAR_9 : integer;
  attribute C_PF1_ENTRY_BAR_9 of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_hw_discovery : entity is 0;
  attribute C_PF1_ENTRY_MAJOR_VERSION_0 : integer;
  attribute C_PF1_ENTRY_MAJOR_VERSION_0 of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_hw_discovery : entity is 1;
  attribute C_PF1_ENTRY_MAJOR_VERSION_1 : integer;
  attribute C_PF1_ENTRY_MAJOR_VERSION_1 of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_hw_discovery : entity is 0;
  attribute C_PF1_ENTRY_MAJOR_VERSION_10 : integer;
  attribute C_PF1_ENTRY_MAJOR_VERSION_10 of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_hw_discovery : entity is 0;
  attribute C_PF1_ENTRY_MAJOR_VERSION_11 : integer;
  attribute C_PF1_ENTRY_MAJOR_VERSION_11 of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_hw_discovery : entity is 0;
  attribute C_PF1_ENTRY_MAJOR_VERSION_12 : integer;
  attribute C_PF1_ENTRY_MAJOR_VERSION_12 of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_hw_discovery : entity is 0;
  attribute C_PF1_ENTRY_MAJOR_VERSION_13 : integer;
  attribute C_PF1_ENTRY_MAJOR_VERSION_13 of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_hw_discovery : entity is 0;
  attribute C_PF1_ENTRY_MAJOR_VERSION_14 : integer;
  attribute C_PF1_ENTRY_MAJOR_VERSION_14 of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_hw_discovery : entity is 0;
  attribute C_PF1_ENTRY_MAJOR_VERSION_15 : integer;
  attribute C_PF1_ENTRY_MAJOR_VERSION_15 of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_hw_discovery : entity is 0;
  attribute C_PF1_ENTRY_MAJOR_VERSION_2 : integer;
  attribute C_PF1_ENTRY_MAJOR_VERSION_2 of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_hw_discovery : entity is 0;
  attribute C_PF1_ENTRY_MAJOR_VERSION_3 : integer;
  attribute C_PF1_ENTRY_MAJOR_VERSION_3 of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_hw_discovery : entity is 0;
  attribute C_PF1_ENTRY_MAJOR_VERSION_4 : integer;
  attribute C_PF1_ENTRY_MAJOR_VERSION_4 of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_hw_discovery : entity is 0;
  attribute C_PF1_ENTRY_MAJOR_VERSION_5 : integer;
  attribute C_PF1_ENTRY_MAJOR_VERSION_5 of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_hw_discovery : entity is 0;
  attribute C_PF1_ENTRY_MAJOR_VERSION_6 : integer;
  attribute C_PF1_ENTRY_MAJOR_VERSION_6 of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_hw_discovery : entity is 0;
  attribute C_PF1_ENTRY_MAJOR_VERSION_7 : integer;
  attribute C_PF1_ENTRY_MAJOR_VERSION_7 of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_hw_discovery : entity is 0;
  attribute C_PF1_ENTRY_MAJOR_VERSION_8 : integer;
  attribute C_PF1_ENTRY_MAJOR_VERSION_8 of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_hw_discovery : entity is 0;
  attribute C_PF1_ENTRY_MAJOR_VERSION_9 : integer;
  attribute C_PF1_ENTRY_MAJOR_VERSION_9 of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_hw_discovery : entity is 0;
  attribute C_PF1_ENTRY_MINOR_VERSION_0 : integer;
  attribute C_PF1_ENTRY_MINOR_VERSION_0 of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_hw_discovery : entity is 0;
  attribute C_PF1_ENTRY_MINOR_VERSION_1 : integer;
  attribute C_PF1_ENTRY_MINOR_VERSION_1 of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_hw_discovery : entity is 0;
  attribute C_PF1_ENTRY_MINOR_VERSION_10 : integer;
  attribute C_PF1_ENTRY_MINOR_VERSION_10 of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_hw_discovery : entity is 0;
  attribute C_PF1_ENTRY_MINOR_VERSION_11 : integer;
  attribute C_PF1_ENTRY_MINOR_VERSION_11 of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_hw_discovery : entity is 0;
  attribute C_PF1_ENTRY_MINOR_VERSION_12 : integer;
  attribute C_PF1_ENTRY_MINOR_VERSION_12 of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_hw_discovery : entity is 0;
  attribute C_PF1_ENTRY_MINOR_VERSION_13 : integer;
  attribute C_PF1_ENTRY_MINOR_VERSION_13 of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_hw_discovery : entity is 0;
  attribute C_PF1_ENTRY_MINOR_VERSION_14 : integer;
  attribute C_PF1_ENTRY_MINOR_VERSION_14 of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_hw_discovery : entity is 0;
  attribute C_PF1_ENTRY_MINOR_VERSION_15 : integer;
  attribute C_PF1_ENTRY_MINOR_VERSION_15 of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_hw_discovery : entity is 0;
  attribute C_PF1_ENTRY_MINOR_VERSION_2 : integer;
  attribute C_PF1_ENTRY_MINOR_VERSION_2 of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_hw_discovery : entity is 0;
  attribute C_PF1_ENTRY_MINOR_VERSION_3 : integer;
  attribute C_PF1_ENTRY_MINOR_VERSION_3 of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_hw_discovery : entity is 0;
  attribute C_PF1_ENTRY_MINOR_VERSION_4 : integer;
  attribute C_PF1_ENTRY_MINOR_VERSION_4 of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_hw_discovery : entity is 0;
  attribute C_PF1_ENTRY_MINOR_VERSION_5 : integer;
  attribute C_PF1_ENTRY_MINOR_VERSION_5 of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_hw_discovery : entity is 0;
  attribute C_PF1_ENTRY_MINOR_VERSION_6 : integer;
  attribute C_PF1_ENTRY_MINOR_VERSION_6 of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_hw_discovery : entity is 0;
  attribute C_PF1_ENTRY_MINOR_VERSION_7 : integer;
  attribute C_PF1_ENTRY_MINOR_VERSION_7 of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_hw_discovery : entity is 0;
  attribute C_PF1_ENTRY_MINOR_VERSION_8 : integer;
  attribute C_PF1_ENTRY_MINOR_VERSION_8 of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_hw_discovery : entity is 0;
  attribute C_PF1_ENTRY_MINOR_VERSION_9 : integer;
  attribute C_PF1_ENTRY_MINOR_VERSION_9 of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_hw_discovery : entity is 0;
  attribute C_PF1_ENTRY_RSVD0_0 : string;
  attribute C_PF1_ENTRY_RSVD0_0 of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_hw_discovery : entity is "4'b0001";
  attribute C_PF1_ENTRY_RSVD0_1 : string;
  attribute C_PF1_ENTRY_RSVD0_1 of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_hw_discovery : entity is "4'b0000";
  attribute C_PF1_ENTRY_RSVD0_10 : string;
  attribute C_PF1_ENTRY_RSVD0_10 of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_hw_discovery : entity is "4'b0000";
  attribute C_PF1_ENTRY_RSVD0_11 : string;
  attribute C_PF1_ENTRY_RSVD0_11 of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_hw_discovery : entity is "4'b0000";
  attribute C_PF1_ENTRY_RSVD0_12 : string;
  attribute C_PF1_ENTRY_RSVD0_12 of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_hw_discovery : entity is "4'b0000";
  attribute C_PF1_ENTRY_RSVD0_13 : string;
  attribute C_PF1_ENTRY_RSVD0_13 of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_hw_discovery : entity is "4'b0000";
  attribute C_PF1_ENTRY_RSVD0_14 : string;
  attribute C_PF1_ENTRY_RSVD0_14 of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_hw_discovery : entity is "4'b0000";
  attribute C_PF1_ENTRY_RSVD0_15 : string;
  attribute C_PF1_ENTRY_RSVD0_15 of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_hw_discovery : entity is "4'b0000";
  attribute C_PF1_ENTRY_RSVD0_2 : string;
  attribute C_PF1_ENTRY_RSVD0_2 of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_hw_discovery : entity is "4'b0000";
  attribute C_PF1_ENTRY_RSVD0_3 : string;
  attribute C_PF1_ENTRY_RSVD0_3 of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_hw_discovery : entity is "4'b0000";
  attribute C_PF1_ENTRY_RSVD0_4 : string;
  attribute C_PF1_ENTRY_RSVD0_4 of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_hw_discovery : entity is "4'b0000";
  attribute C_PF1_ENTRY_RSVD0_5 : string;
  attribute C_PF1_ENTRY_RSVD0_5 of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_hw_discovery : entity is "4'b0000";
  attribute C_PF1_ENTRY_RSVD0_6 : string;
  attribute C_PF1_ENTRY_RSVD0_6 of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_hw_discovery : entity is "4'b0000";
  attribute C_PF1_ENTRY_RSVD0_7 : string;
  attribute C_PF1_ENTRY_RSVD0_7 of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_hw_discovery : entity is "4'b0000";
  attribute C_PF1_ENTRY_RSVD0_8 : string;
  attribute C_PF1_ENTRY_RSVD0_8 of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_hw_discovery : entity is "4'b0000";
  attribute C_PF1_ENTRY_RSVD0_9 : string;
  attribute C_PF1_ENTRY_RSVD0_9 of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_hw_discovery : entity is "4'b0000";
  attribute C_PF1_ENTRY_TYPE_0 : string;
  attribute C_PF1_ENTRY_TYPE_0 of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_hw_discovery : entity is "8'b01010011";
  attribute C_PF1_ENTRY_TYPE_1 : string;
  attribute C_PF1_ENTRY_TYPE_1 of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_hw_discovery : entity is "8'b00000000";
  attribute C_PF1_ENTRY_TYPE_10 : string;
  attribute C_PF1_ENTRY_TYPE_10 of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_hw_discovery : entity is "8'b00000000";
  attribute C_PF1_ENTRY_TYPE_11 : string;
  attribute C_PF1_ENTRY_TYPE_11 of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_hw_discovery : entity is "8'b00000000";
  attribute C_PF1_ENTRY_TYPE_12 : string;
  attribute C_PF1_ENTRY_TYPE_12 of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_hw_discovery : entity is "8'b00000000";
  attribute C_PF1_ENTRY_TYPE_13 : string;
  attribute C_PF1_ENTRY_TYPE_13 of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_hw_discovery : entity is "8'b00000000";
  attribute C_PF1_ENTRY_TYPE_14 : string;
  attribute C_PF1_ENTRY_TYPE_14 of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_hw_discovery : entity is "8'b00000000";
  attribute C_PF1_ENTRY_TYPE_15 : string;
  attribute C_PF1_ENTRY_TYPE_15 of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_hw_discovery : entity is "8'b00000000";
  attribute C_PF1_ENTRY_TYPE_2 : string;
  attribute C_PF1_ENTRY_TYPE_2 of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_hw_discovery : entity is "8'b00000000";
  attribute C_PF1_ENTRY_TYPE_3 : string;
  attribute C_PF1_ENTRY_TYPE_3 of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_hw_discovery : entity is "8'b00000000";
  attribute C_PF1_ENTRY_TYPE_4 : string;
  attribute C_PF1_ENTRY_TYPE_4 of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_hw_discovery : entity is "8'b00000000";
  attribute C_PF1_ENTRY_TYPE_5 : string;
  attribute C_PF1_ENTRY_TYPE_5 of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_hw_discovery : entity is "8'b00000000";
  attribute C_PF1_ENTRY_TYPE_6 : string;
  attribute C_PF1_ENTRY_TYPE_6 of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_hw_discovery : entity is "8'b00000000";
  attribute C_PF1_ENTRY_TYPE_7 : string;
  attribute C_PF1_ENTRY_TYPE_7 of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_hw_discovery : entity is "8'b00000000";
  attribute C_PF1_ENTRY_TYPE_8 : string;
  attribute C_PF1_ENTRY_TYPE_8 of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_hw_discovery : entity is "8'b00000000";
  attribute C_PF1_ENTRY_TYPE_9 : string;
  attribute C_PF1_ENTRY_TYPE_9 of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_hw_discovery : entity is "8'b00000000";
  attribute C_PF1_ENTRY_VERSION_TYPE_0 : string;
  attribute C_PF1_ENTRY_VERSION_TYPE_0 of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_hw_discovery : entity is "8'b00000001";
  attribute C_PF1_ENTRY_VERSION_TYPE_1 : string;
  attribute C_PF1_ENTRY_VERSION_TYPE_1 of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_hw_discovery : entity is "8'b00000000";
  attribute C_PF1_ENTRY_VERSION_TYPE_10 : string;
  attribute C_PF1_ENTRY_VERSION_TYPE_10 of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_hw_discovery : entity is "8'b00000000";
  attribute C_PF1_ENTRY_VERSION_TYPE_11 : string;
  attribute C_PF1_ENTRY_VERSION_TYPE_11 of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_hw_discovery : entity is "8'b00000000";
  attribute C_PF1_ENTRY_VERSION_TYPE_12 : string;
  attribute C_PF1_ENTRY_VERSION_TYPE_12 of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_hw_discovery : entity is "8'b00000000";
  attribute C_PF1_ENTRY_VERSION_TYPE_13 : string;
  attribute C_PF1_ENTRY_VERSION_TYPE_13 of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_hw_discovery : entity is "8'b00000000";
  attribute C_PF1_ENTRY_VERSION_TYPE_14 : string;
  attribute C_PF1_ENTRY_VERSION_TYPE_14 of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_hw_discovery : entity is "8'b00000000";
  attribute C_PF1_ENTRY_VERSION_TYPE_15 : string;
  attribute C_PF1_ENTRY_VERSION_TYPE_15 of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_hw_discovery : entity is "8'b00000000";
  attribute C_PF1_ENTRY_VERSION_TYPE_2 : string;
  attribute C_PF1_ENTRY_VERSION_TYPE_2 of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_hw_discovery : entity is "8'b00000000";
  attribute C_PF1_ENTRY_VERSION_TYPE_3 : string;
  attribute C_PF1_ENTRY_VERSION_TYPE_3 of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_hw_discovery : entity is "8'b00000000";
  attribute C_PF1_ENTRY_VERSION_TYPE_4 : string;
  attribute C_PF1_ENTRY_VERSION_TYPE_4 of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_hw_discovery : entity is "8'b00000000";
  attribute C_PF1_ENTRY_VERSION_TYPE_5 : string;
  attribute C_PF1_ENTRY_VERSION_TYPE_5 of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_hw_discovery : entity is "8'b00000000";
  attribute C_PF1_ENTRY_VERSION_TYPE_6 : string;
  attribute C_PF1_ENTRY_VERSION_TYPE_6 of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_hw_discovery : entity is "8'b00000000";
  attribute C_PF1_ENTRY_VERSION_TYPE_7 : string;
  attribute C_PF1_ENTRY_VERSION_TYPE_7 of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_hw_discovery : entity is "8'b00000000";
  attribute C_PF1_ENTRY_VERSION_TYPE_8 : string;
  attribute C_PF1_ENTRY_VERSION_TYPE_8 of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_hw_discovery : entity is "8'b00000000";
  attribute C_PF1_ENTRY_VERSION_TYPE_9 : string;
  attribute C_PF1_ENTRY_VERSION_TYPE_9 of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_hw_discovery : entity is "8'b00000000";
  attribute C_PF1_HAS_UUID_ROM : integer;
  attribute C_PF1_HAS_UUID_ROM of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_hw_discovery : entity is 0;
  attribute C_PF1_HIGH_OFFSET : integer;
  attribute C_PF1_HIGH_OFFSET of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_hw_discovery : entity is 0;
  attribute C_PF1_LOW_OFFSET : string;
  attribute C_PF1_LOW_OFFSET of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_hw_discovery : entity is "28'b0000001000000000000100000000";
  attribute C_PF1_NUM_SLOTS_BAR_LAYOUT_TABLE : integer;
  attribute C_PF1_NUM_SLOTS_BAR_LAYOUT_TABLE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_hw_discovery : entity is 1;
  attribute C_PF1_S_AXI_ADDR_WIDTH : integer;
  attribute C_PF1_S_AXI_ADDR_WIDTH of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_hw_discovery : entity is 32;
  attribute C_PF1_S_AXI_DATA_WIDTH : integer;
  attribute C_PF1_S_AXI_DATA_WIDTH of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_hw_discovery : entity is 32;
  attribute C_PF1_UUID_ROM_INIT : string;
  attribute C_PF1_UUID_ROM_INIT of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_hw_discovery : entity is "00000000,00000000,00000000,00000000";
  attribute C_PF2_BAR_INDEX : integer;
  attribute C_PF2_BAR_INDEX of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_hw_discovery : entity is 0;
  attribute C_PF2_ENTRY_ADDR_0 : string;
  attribute C_PF2_ENTRY_ADDR_0 of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_hw_discovery : entity is "48'b000000000000000000000000000000000000000000000000";
  attribute C_PF2_ENTRY_ADDR_1 : string;
  attribute C_PF2_ENTRY_ADDR_1 of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_hw_discovery : entity is "48'b000000000000000000000000000000000000000000000000";
  attribute C_PF2_ENTRY_ADDR_10 : string;
  attribute C_PF2_ENTRY_ADDR_10 of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_hw_discovery : entity is "48'b000000000000000000000000000000000000000000000000";
  attribute C_PF2_ENTRY_ADDR_11 : string;
  attribute C_PF2_ENTRY_ADDR_11 of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_hw_discovery : entity is "48'b000000000000000000000000000000000000000000000000";
  attribute C_PF2_ENTRY_ADDR_12 : string;
  attribute C_PF2_ENTRY_ADDR_12 of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_hw_discovery : entity is "48'b000000000000000000000000000000000000000000000000";
  attribute C_PF2_ENTRY_ADDR_13 : string;
  attribute C_PF2_ENTRY_ADDR_13 of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_hw_discovery : entity is "48'b000000000000000000000000000000000000000000000000";
  attribute C_PF2_ENTRY_ADDR_14 : string;
  attribute C_PF2_ENTRY_ADDR_14 of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_hw_discovery : entity is "48'b000000000000000000000000000000000000000000000000";
  attribute C_PF2_ENTRY_ADDR_15 : string;
  attribute C_PF2_ENTRY_ADDR_15 of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_hw_discovery : entity is "48'b000000000000000000000000000000000000000000000000";
  attribute C_PF2_ENTRY_ADDR_2 : string;
  attribute C_PF2_ENTRY_ADDR_2 of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_hw_discovery : entity is "48'b000000000000000000000000000000000000000000000000";
  attribute C_PF2_ENTRY_ADDR_3 : string;
  attribute C_PF2_ENTRY_ADDR_3 of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_hw_discovery : entity is "48'b000000000000000000000000000000000000000000000000";
  attribute C_PF2_ENTRY_ADDR_4 : string;
  attribute C_PF2_ENTRY_ADDR_4 of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_hw_discovery : entity is "48'b000000000000000000000000000000000000000000000000";
  attribute C_PF2_ENTRY_ADDR_5 : string;
  attribute C_PF2_ENTRY_ADDR_5 of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_hw_discovery : entity is "48'b000000000000000000000000000000000000000000000000";
  attribute C_PF2_ENTRY_ADDR_6 : string;
  attribute C_PF2_ENTRY_ADDR_6 of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_hw_discovery : entity is "48'b000000000000000000000000000000000000000000000000";
  attribute C_PF2_ENTRY_ADDR_7 : string;
  attribute C_PF2_ENTRY_ADDR_7 of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_hw_discovery : entity is "48'b000000000000000000000000000000000000000000000000";
  attribute C_PF2_ENTRY_ADDR_8 : string;
  attribute C_PF2_ENTRY_ADDR_8 of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_hw_discovery : entity is "48'b000000000000000000000000000000000000000000000000";
  attribute C_PF2_ENTRY_ADDR_9 : string;
  attribute C_PF2_ENTRY_ADDR_9 of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_hw_discovery : entity is "48'b000000000000000000000000000000000000000000000000";
  attribute C_PF2_ENTRY_BAR_0 : integer;
  attribute C_PF2_ENTRY_BAR_0 of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_hw_discovery : entity is 0;
  attribute C_PF2_ENTRY_BAR_1 : integer;
  attribute C_PF2_ENTRY_BAR_1 of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_hw_discovery : entity is 0;
  attribute C_PF2_ENTRY_BAR_10 : integer;
  attribute C_PF2_ENTRY_BAR_10 of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_hw_discovery : entity is 0;
  attribute C_PF2_ENTRY_BAR_11 : integer;
  attribute C_PF2_ENTRY_BAR_11 of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_hw_discovery : entity is 0;
  attribute C_PF2_ENTRY_BAR_12 : integer;
  attribute C_PF2_ENTRY_BAR_12 of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_hw_discovery : entity is 0;
  attribute C_PF2_ENTRY_BAR_13 : integer;
  attribute C_PF2_ENTRY_BAR_13 of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_hw_discovery : entity is 0;
  attribute C_PF2_ENTRY_BAR_14 : integer;
  attribute C_PF2_ENTRY_BAR_14 of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_hw_discovery : entity is 0;
  attribute C_PF2_ENTRY_BAR_15 : integer;
  attribute C_PF2_ENTRY_BAR_15 of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_hw_discovery : entity is 0;
  attribute C_PF2_ENTRY_BAR_2 : integer;
  attribute C_PF2_ENTRY_BAR_2 of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_hw_discovery : entity is 0;
  attribute C_PF2_ENTRY_BAR_3 : integer;
  attribute C_PF2_ENTRY_BAR_3 of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_hw_discovery : entity is 0;
  attribute C_PF2_ENTRY_BAR_4 : integer;
  attribute C_PF2_ENTRY_BAR_4 of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_hw_discovery : entity is 0;
  attribute C_PF2_ENTRY_BAR_5 : integer;
  attribute C_PF2_ENTRY_BAR_5 of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_hw_discovery : entity is 0;
  attribute C_PF2_ENTRY_BAR_6 : integer;
  attribute C_PF2_ENTRY_BAR_6 of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_hw_discovery : entity is 0;
  attribute C_PF2_ENTRY_BAR_7 : integer;
  attribute C_PF2_ENTRY_BAR_7 of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_hw_discovery : entity is 0;
  attribute C_PF2_ENTRY_BAR_8 : integer;
  attribute C_PF2_ENTRY_BAR_8 of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_hw_discovery : entity is 0;
  attribute C_PF2_ENTRY_BAR_9 : integer;
  attribute C_PF2_ENTRY_BAR_9 of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_hw_discovery : entity is 0;
  attribute C_PF2_ENTRY_MAJOR_VERSION_0 : integer;
  attribute C_PF2_ENTRY_MAJOR_VERSION_0 of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_hw_discovery : entity is 0;
  attribute C_PF2_ENTRY_MAJOR_VERSION_1 : integer;
  attribute C_PF2_ENTRY_MAJOR_VERSION_1 of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_hw_discovery : entity is 0;
  attribute C_PF2_ENTRY_MAJOR_VERSION_10 : integer;
  attribute C_PF2_ENTRY_MAJOR_VERSION_10 of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_hw_discovery : entity is 0;
  attribute C_PF2_ENTRY_MAJOR_VERSION_11 : integer;
  attribute C_PF2_ENTRY_MAJOR_VERSION_11 of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_hw_discovery : entity is 0;
  attribute C_PF2_ENTRY_MAJOR_VERSION_12 : integer;
  attribute C_PF2_ENTRY_MAJOR_VERSION_12 of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_hw_discovery : entity is 0;
  attribute C_PF2_ENTRY_MAJOR_VERSION_13 : integer;
  attribute C_PF2_ENTRY_MAJOR_VERSION_13 of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_hw_discovery : entity is 0;
  attribute C_PF2_ENTRY_MAJOR_VERSION_14 : integer;
  attribute C_PF2_ENTRY_MAJOR_VERSION_14 of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_hw_discovery : entity is 0;
  attribute C_PF2_ENTRY_MAJOR_VERSION_15 : integer;
  attribute C_PF2_ENTRY_MAJOR_VERSION_15 of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_hw_discovery : entity is 0;
  attribute C_PF2_ENTRY_MAJOR_VERSION_2 : integer;
  attribute C_PF2_ENTRY_MAJOR_VERSION_2 of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_hw_discovery : entity is 0;
  attribute C_PF2_ENTRY_MAJOR_VERSION_3 : integer;
  attribute C_PF2_ENTRY_MAJOR_VERSION_3 of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_hw_discovery : entity is 0;
  attribute C_PF2_ENTRY_MAJOR_VERSION_4 : integer;
  attribute C_PF2_ENTRY_MAJOR_VERSION_4 of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_hw_discovery : entity is 0;
  attribute C_PF2_ENTRY_MAJOR_VERSION_5 : integer;
  attribute C_PF2_ENTRY_MAJOR_VERSION_5 of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_hw_discovery : entity is 0;
  attribute C_PF2_ENTRY_MAJOR_VERSION_6 : integer;
  attribute C_PF2_ENTRY_MAJOR_VERSION_6 of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_hw_discovery : entity is 0;
  attribute C_PF2_ENTRY_MAJOR_VERSION_7 : integer;
  attribute C_PF2_ENTRY_MAJOR_VERSION_7 of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_hw_discovery : entity is 0;
  attribute C_PF2_ENTRY_MAJOR_VERSION_8 : integer;
  attribute C_PF2_ENTRY_MAJOR_VERSION_8 of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_hw_discovery : entity is 0;
  attribute C_PF2_ENTRY_MAJOR_VERSION_9 : integer;
  attribute C_PF2_ENTRY_MAJOR_VERSION_9 of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_hw_discovery : entity is 0;
  attribute C_PF2_ENTRY_MINOR_VERSION_0 : integer;
  attribute C_PF2_ENTRY_MINOR_VERSION_0 of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_hw_discovery : entity is 0;
  attribute C_PF2_ENTRY_MINOR_VERSION_1 : integer;
  attribute C_PF2_ENTRY_MINOR_VERSION_1 of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_hw_discovery : entity is 0;
  attribute C_PF2_ENTRY_MINOR_VERSION_10 : integer;
  attribute C_PF2_ENTRY_MINOR_VERSION_10 of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_hw_discovery : entity is 0;
  attribute C_PF2_ENTRY_MINOR_VERSION_11 : integer;
  attribute C_PF2_ENTRY_MINOR_VERSION_11 of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_hw_discovery : entity is 0;
  attribute C_PF2_ENTRY_MINOR_VERSION_12 : integer;
  attribute C_PF2_ENTRY_MINOR_VERSION_12 of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_hw_discovery : entity is 0;
  attribute C_PF2_ENTRY_MINOR_VERSION_13 : integer;
  attribute C_PF2_ENTRY_MINOR_VERSION_13 of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_hw_discovery : entity is 0;
  attribute C_PF2_ENTRY_MINOR_VERSION_14 : integer;
  attribute C_PF2_ENTRY_MINOR_VERSION_14 of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_hw_discovery : entity is 0;
  attribute C_PF2_ENTRY_MINOR_VERSION_15 : integer;
  attribute C_PF2_ENTRY_MINOR_VERSION_15 of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_hw_discovery : entity is 0;
  attribute C_PF2_ENTRY_MINOR_VERSION_2 : integer;
  attribute C_PF2_ENTRY_MINOR_VERSION_2 of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_hw_discovery : entity is 0;
  attribute C_PF2_ENTRY_MINOR_VERSION_3 : integer;
  attribute C_PF2_ENTRY_MINOR_VERSION_3 of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_hw_discovery : entity is 0;
  attribute C_PF2_ENTRY_MINOR_VERSION_4 : integer;
  attribute C_PF2_ENTRY_MINOR_VERSION_4 of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_hw_discovery : entity is 0;
  attribute C_PF2_ENTRY_MINOR_VERSION_5 : integer;
  attribute C_PF2_ENTRY_MINOR_VERSION_5 of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_hw_discovery : entity is 0;
  attribute C_PF2_ENTRY_MINOR_VERSION_6 : integer;
  attribute C_PF2_ENTRY_MINOR_VERSION_6 of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_hw_discovery : entity is 0;
  attribute C_PF2_ENTRY_MINOR_VERSION_7 : integer;
  attribute C_PF2_ENTRY_MINOR_VERSION_7 of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_hw_discovery : entity is 0;
  attribute C_PF2_ENTRY_MINOR_VERSION_8 : integer;
  attribute C_PF2_ENTRY_MINOR_VERSION_8 of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_hw_discovery : entity is 0;
  attribute C_PF2_ENTRY_MINOR_VERSION_9 : integer;
  attribute C_PF2_ENTRY_MINOR_VERSION_9 of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_hw_discovery : entity is 0;
  attribute C_PF2_ENTRY_RSVD0_0 : string;
  attribute C_PF2_ENTRY_RSVD0_0 of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_hw_discovery : entity is "4'b0000";
  attribute C_PF2_ENTRY_RSVD0_1 : string;
  attribute C_PF2_ENTRY_RSVD0_1 of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_hw_discovery : entity is "4'b0000";
  attribute C_PF2_ENTRY_RSVD0_10 : string;
  attribute C_PF2_ENTRY_RSVD0_10 of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_hw_discovery : entity is "4'b0000";
  attribute C_PF2_ENTRY_RSVD0_11 : string;
  attribute C_PF2_ENTRY_RSVD0_11 of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_hw_discovery : entity is "4'b0000";
  attribute C_PF2_ENTRY_RSVD0_12 : string;
  attribute C_PF2_ENTRY_RSVD0_12 of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_hw_discovery : entity is "4'b0000";
  attribute C_PF2_ENTRY_RSVD0_13 : string;
  attribute C_PF2_ENTRY_RSVD0_13 of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_hw_discovery : entity is "4'b0000";
  attribute C_PF2_ENTRY_RSVD0_14 : string;
  attribute C_PF2_ENTRY_RSVD0_14 of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_hw_discovery : entity is "4'b0000";
  attribute C_PF2_ENTRY_RSVD0_15 : string;
  attribute C_PF2_ENTRY_RSVD0_15 of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_hw_discovery : entity is "4'b0000";
  attribute C_PF2_ENTRY_RSVD0_2 : string;
  attribute C_PF2_ENTRY_RSVD0_2 of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_hw_discovery : entity is "4'b0000";
  attribute C_PF2_ENTRY_RSVD0_3 : string;
  attribute C_PF2_ENTRY_RSVD0_3 of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_hw_discovery : entity is "4'b0000";
  attribute C_PF2_ENTRY_RSVD0_4 : string;
  attribute C_PF2_ENTRY_RSVD0_4 of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_hw_discovery : entity is "4'b0000";
  attribute C_PF2_ENTRY_RSVD0_5 : string;
  attribute C_PF2_ENTRY_RSVD0_5 of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_hw_discovery : entity is "4'b0000";
  attribute C_PF2_ENTRY_RSVD0_6 : string;
  attribute C_PF2_ENTRY_RSVD0_6 of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_hw_discovery : entity is "4'b0000";
  attribute C_PF2_ENTRY_RSVD0_7 : string;
  attribute C_PF2_ENTRY_RSVD0_7 of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_hw_discovery : entity is "4'b0000";
  attribute C_PF2_ENTRY_RSVD0_8 : string;
  attribute C_PF2_ENTRY_RSVD0_8 of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_hw_discovery : entity is "4'b0000";
  attribute C_PF2_ENTRY_RSVD0_9 : string;
  attribute C_PF2_ENTRY_RSVD0_9 of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_hw_discovery : entity is "4'b0000";
  attribute C_PF2_ENTRY_TYPE_0 : string;
  attribute C_PF2_ENTRY_TYPE_0 of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_hw_discovery : entity is "8'b00000000";
  attribute C_PF2_ENTRY_TYPE_1 : string;
  attribute C_PF2_ENTRY_TYPE_1 of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_hw_discovery : entity is "8'b00000000";
  attribute C_PF2_ENTRY_TYPE_10 : string;
  attribute C_PF2_ENTRY_TYPE_10 of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_hw_discovery : entity is "8'b00000000";
  attribute C_PF2_ENTRY_TYPE_11 : string;
  attribute C_PF2_ENTRY_TYPE_11 of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_hw_discovery : entity is "8'b00000000";
  attribute C_PF2_ENTRY_TYPE_12 : string;
  attribute C_PF2_ENTRY_TYPE_12 of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_hw_discovery : entity is "8'b00000000";
  attribute C_PF2_ENTRY_TYPE_13 : string;
  attribute C_PF2_ENTRY_TYPE_13 of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_hw_discovery : entity is "8'b00000000";
  attribute C_PF2_ENTRY_TYPE_14 : string;
  attribute C_PF2_ENTRY_TYPE_14 of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_hw_discovery : entity is "8'b00000000";
  attribute C_PF2_ENTRY_TYPE_15 : string;
  attribute C_PF2_ENTRY_TYPE_15 of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_hw_discovery : entity is "8'b00000000";
  attribute C_PF2_ENTRY_TYPE_2 : string;
  attribute C_PF2_ENTRY_TYPE_2 of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_hw_discovery : entity is "8'b00000000";
  attribute C_PF2_ENTRY_TYPE_3 : string;
  attribute C_PF2_ENTRY_TYPE_3 of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_hw_discovery : entity is "8'b00000000";
  attribute C_PF2_ENTRY_TYPE_4 : string;
  attribute C_PF2_ENTRY_TYPE_4 of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_hw_discovery : entity is "8'b00000000";
  attribute C_PF2_ENTRY_TYPE_5 : string;
  attribute C_PF2_ENTRY_TYPE_5 of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_hw_discovery : entity is "8'b00000000";
  attribute C_PF2_ENTRY_TYPE_6 : string;
  attribute C_PF2_ENTRY_TYPE_6 of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_hw_discovery : entity is "8'b00000000";
  attribute C_PF2_ENTRY_TYPE_7 : string;
  attribute C_PF2_ENTRY_TYPE_7 of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_hw_discovery : entity is "8'b00000000";
  attribute C_PF2_ENTRY_TYPE_8 : string;
  attribute C_PF2_ENTRY_TYPE_8 of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_hw_discovery : entity is "8'b00000000";
  attribute C_PF2_ENTRY_TYPE_9 : string;
  attribute C_PF2_ENTRY_TYPE_9 of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_hw_discovery : entity is "8'b00000000";
  attribute C_PF2_ENTRY_VERSION_TYPE_0 : string;
  attribute C_PF2_ENTRY_VERSION_TYPE_0 of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_hw_discovery : entity is "8'b00000000";
  attribute C_PF2_ENTRY_VERSION_TYPE_1 : string;
  attribute C_PF2_ENTRY_VERSION_TYPE_1 of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_hw_discovery : entity is "8'b00000000";
  attribute C_PF2_ENTRY_VERSION_TYPE_10 : string;
  attribute C_PF2_ENTRY_VERSION_TYPE_10 of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_hw_discovery : entity is "8'b00000000";
  attribute C_PF2_ENTRY_VERSION_TYPE_11 : string;
  attribute C_PF2_ENTRY_VERSION_TYPE_11 of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_hw_discovery : entity is "8'b00000000";
  attribute C_PF2_ENTRY_VERSION_TYPE_12 : string;
  attribute C_PF2_ENTRY_VERSION_TYPE_12 of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_hw_discovery : entity is "8'b00000000";
  attribute C_PF2_ENTRY_VERSION_TYPE_13 : string;
  attribute C_PF2_ENTRY_VERSION_TYPE_13 of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_hw_discovery : entity is "8'b00000000";
  attribute C_PF2_ENTRY_VERSION_TYPE_14 : string;
  attribute C_PF2_ENTRY_VERSION_TYPE_14 of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_hw_discovery : entity is "8'b00000000";
  attribute C_PF2_ENTRY_VERSION_TYPE_15 : string;
  attribute C_PF2_ENTRY_VERSION_TYPE_15 of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_hw_discovery : entity is "8'b00000000";
  attribute C_PF2_ENTRY_VERSION_TYPE_2 : string;
  attribute C_PF2_ENTRY_VERSION_TYPE_2 of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_hw_discovery : entity is "8'b00000000";
  attribute C_PF2_ENTRY_VERSION_TYPE_3 : string;
  attribute C_PF2_ENTRY_VERSION_TYPE_3 of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_hw_discovery : entity is "8'b00000000";
  attribute C_PF2_ENTRY_VERSION_TYPE_4 : string;
  attribute C_PF2_ENTRY_VERSION_TYPE_4 of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_hw_discovery : entity is "8'b00000000";
  attribute C_PF2_ENTRY_VERSION_TYPE_5 : string;
  attribute C_PF2_ENTRY_VERSION_TYPE_5 of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_hw_discovery : entity is "8'b00000000";
  attribute C_PF2_ENTRY_VERSION_TYPE_6 : string;
  attribute C_PF2_ENTRY_VERSION_TYPE_6 of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_hw_discovery : entity is "8'b00000000";
  attribute C_PF2_ENTRY_VERSION_TYPE_7 : string;
  attribute C_PF2_ENTRY_VERSION_TYPE_7 of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_hw_discovery : entity is "8'b00000000";
  attribute C_PF2_ENTRY_VERSION_TYPE_8 : string;
  attribute C_PF2_ENTRY_VERSION_TYPE_8 of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_hw_discovery : entity is "8'b00000000";
  attribute C_PF2_ENTRY_VERSION_TYPE_9 : string;
  attribute C_PF2_ENTRY_VERSION_TYPE_9 of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_hw_discovery : entity is "8'b00000000";
  attribute C_PF2_HAS_UUID_ROM : integer;
  attribute C_PF2_HAS_UUID_ROM of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_hw_discovery : entity is 0;
  attribute C_PF2_HIGH_OFFSET : integer;
  attribute C_PF2_HIGH_OFFSET of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_hw_discovery : entity is 0;
  attribute C_PF2_LOW_OFFSET : string;
  attribute C_PF2_LOW_OFFSET of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_hw_discovery : entity is "28'b0000000000000000000000000000";
  attribute C_PF2_NUM_SLOTS_BAR_LAYOUT_TABLE : integer;
  attribute C_PF2_NUM_SLOTS_BAR_LAYOUT_TABLE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_hw_discovery : entity is 1;
  attribute C_PF2_S_AXI_ADDR_WIDTH : integer;
  attribute C_PF2_S_AXI_ADDR_WIDTH of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_hw_discovery : entity is 32;
  attribute C_PF2_S_AXI_DATA_WIDTH : integer;
  attribute C_PF2_S_AXI_DATA_WIDTH of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_hw_discovery : entity is 32;
  attribute C_PF2_UUID_ROM_INIT : string;
  attribute C_PF2_UUID_ROM_INIT of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_hw_discovery : entity is "00000000,00000000,00000000,00000000";
  attribute C_PF3_BAR_INDEX : integer;
  attribute C_PF3_BAR_INDEX of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_hw_discovery : entity is 0;
  attribute C_PF3_ENTRY_ADDR_0 : string;
  attribute C_PF3_ENTRY_ADDR_0 of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_hw_discovery : entity is "48'b000000000000000000000000000000000000000000000000";
  attribute C_PF3_ENTRY_ADDR_1 : string;
  attribute C_PF3_ENTRY_ADDR_1 of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_hw_discovery : entity is "48'b000000000000000000000000000000000000000000000000";
  attribute C_PF3_ENTRY_ADDR_10 : string;
  attribute C_PF3_ENTRY_ADDR_10 of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_hw_discovery : entity is "48'b000000000000000000000000000000000000000000000000";
  attribute C_PF3_ENTRY_ADDR_11 : string;
  attribute C_PF3_ENTRY_ADDR_11 of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_hw_discovery : entity is "48'b000000000000000000000000000000000000000000000000";
  attribute C_PF3_ENTRY_ADDR_12 : string;
  attribute C_PF3_ENTRY_ADDR_12 of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_hw_discovery : entity is "48'b000000000000000000000000000000000000000000000000";
  attribute C_PF3_ENTRY_ADDR_13 : string;
  attribute C_PF3_ENTRY_ADDR_13 of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_hw_discovery : entity is "48'b000000000000000000000000000000000000000000000000";
  attribute C_PF3_ENTRY_ADDR_14 : string;
  attribute C_PF3_ENTRY_ADDR_14 of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_hw_discovery : entity is "48'b000000000000000000000000000000000000000000000000";
  attribute C_PF3_ENTRY_ADDR_15 : string;
  attribute C_PF3_ENTRY_ADDR_15 of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_hw_discovery : entity is "48'b000000000000000000000000000000000000000000000000";
  attribute C_PF3_ENTRY_ADDR_2 : string;
  attribute C_PF3_ENTRY_ADDR_2 of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_hw_discovery : entity is "48'b000000000000000000000000000000000000000000000000";
  attribute C_PF3_ENTRY_ADDR_3 : string;
  attribute C_PF3_ENTRY_ADDR_3 of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_hw_discovery : entity is "48'b000000000000000000000000000000000000000000000000";
  attribute C_PF3_ENTRY_ADDR_4 : string;
  attribute C_PF3_ENTRY_ADDR_4 of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_hw_discovery : entity is "48'b000000000000000000000000000000000000000000000000";
  attribute C_PF3_ENTRY_ADDR_5 : string;
  attribute C_PF3_ENTRY_ADDR_5 of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_hw_discovery : entity is "48'b000000000000000000000000000000000000000000000000";
  attribute C_PF3_ENTRY_ADDR_6 : string;
  attribute C_PF3_ENTRY_ADDR_6 of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_hw_discovery : entity is "48'b000000000000000000000000000000000000000000000000";
  attribute C_PF3_ENTRY_ADDR_7 : string;
  attribute C_PF3_ENTRY_ADDR_7 of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_hw_discovery : entity is "48'b000000000000000000000000000000000000000000000000";
  attribute C_PF3_ENTRY_ADDR_8 : string;
  attribute C_PF3_ENTRY_ADDR_8 of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_hw_discovery : entity is "48'b000000000000000000000000000000000000000000000000";
  attribute C_PF3_ENTRY_ADDR_9 : string;
  attribute C_PF3_ENTRY_ADDR_9 of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_hw_discovery : entity is "48'b000000000000000000000000000000000000000000000000";
  attribute C_PF3_ENTRY_BAR_0 : integer;
  attribute C_PF3_ENTRY_BAR_0 of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_hw_discovery : entity is 0;
  attribute C_PF3_ENTRY_BAR_1 : integer;
  attribute C_PF3_ENTRY_BAR_1 of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_hw_discovery : entity is 0;
  attribute C_PF3_ENTRY_BAR_10 : integer;
  attribute C_PF3_ENTRY_BAR_10 of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_hw_discovery : entity is 0;
  attribute C_PF3_ENTRY_BAR_11 : integer;
  attribute C_PF3_ENTRY_BAR_11 of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_hw_discovery : entity is 0;
  attribute C_PF3_ENTRY_BAR_12 : integer;
  attribute C_PF3_ENTRY_BAR_12 of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_hw_discovery : entity is 0;
  attribute C_PF3_ENTRY_BAR_13 : integer;
  attribute C_PF3_ENTRY_BAR_13 of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_hw_discovery : entity is 0;
  attribute C_PF3_ENTRY_BAR_14 : integer;
  attribute C_PF3_ENTRY_BAR_14 of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_hw_discovery : entity is 0;
  attribute C_PF3_ENTRY_BAR_15 : integer;
  attribute C_PF3_ENTRY_BAR_15 of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_hw_discovery : entity is 0;
  attribute C_PF3_ENTRY_BAR_2 : integer;
  attribute C_PF3_ENTRY_BAR_2 of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_hw_discovery : entity is 0;
  attribute C_PF3_ENTRY_BAR_3 : integer;
  attribute C_PF3_ENTRY_BAR_3 of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_hw_discovery : entity is 0;
  attribute C_PF3_ENTRY_BAR_4 : integer;
  attribute C_PF3_ENTRY_BAR_4 of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_hw_discovery : entity is 0;
  attribute C_PF3_ENTRY_BAR_5 : integer;
  attribute C_PF3_ENTRY_BAR_5 of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_hw_discovery : entity is 0;
  attribute C_PF3_ENTRY_BAR_6 : integer;
  attribute C_PF3_ENTRY_BAR_6 of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_hw_discovery : entity is 0;
  attribute C_PF3_ENTRY_BAR_7 : integer;
  attribute C_PF3_ENTRY_BAR_7 of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_hw_discovery : entity is 0;
  attribute C_PF3_ENTRY_BAR_8 : integer;
  attribute C_PF3_ENTRY_BAR_8 of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_hw_discovery : entity is 0;
  attribute C_PF3_ENTRY_BAR_9 : integer;
  attribute C_PF3_ENTRY_BAR_9 of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_hw_discovery : entity is 0;
  attribute C_PF3_ENTRY_MAJOR_VERSION_0 : integer;
  attribute C_PF3_ENTRY_MAJOR_VERSION_0 of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_hw_discovery : entity is 0;
  attribute C_PF3_ENTRY_MAJOR_VERSION_1 : integer;
  attribute C_PF3_ENTRY_MAJOR_VERSION_1 of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_hw_discovery : entity is 0;
  attribute C_PF3_ENTRY_MAJOR_VERSION_10 : integer;
  attribute C_PF3_ENTRY_MAJOR_VERSION_10 of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_hw_discovery : entity is 0;
  attribute C_PF3_ENTRY_MAJOR_VERSION_11 : integer;
  attribute C_PF3_ENTRY_MAJOR_VERSION_11 of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_hw_discovery : entity is 0;
  attribute C_PF3_ENTRY_MAJOR_VERSION_12 : integer;
  attribute C_PF3_ENTRY_MAJOR_VERSION_12 of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_hw_discovery : entity is 0;
  attribute C_PF3_ENTRY_MAJOR_VERSION_13 : integer;
  attribute C_PF3_ENTRY_MAJOR_VERSION_13 of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_hw_discovery : entity is 0;
  attribute C_PF3_ENTRY_MAJOR_VERSION_14 : integer;
  attribute C_PF3_ENTRY_MAJOR_VERSION_14 of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_hw_discovery : entity is 0;
  attribute C_PF3_ENTRY_MAJOR_VERSION_15 : integer;
  attribute C_PF3_ENTRY_MAJOR_VERSION_15 of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_hw_discovery : entity is 0;
  attribute C_PF3_ENTRY_MAJOR_VERSION_2 : integer;
  attribute C_PF3_ENTRY_MAJOR_VERSION_2 of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_hw_discovery : entity is 0;
  attribute C_PF3_ENTRY_MAJOR_VERSION_3 : integer;
  attribute C_PF3_ENTRY_MAJOR_VERSION_3 of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_hw_discovery : entity is 0;
  attribute C_PF3_ENTRY_MAJOR_VERSION_4 : integer;
  attribute C_PF3_ENTRY_MAJOR_VERSION_4 of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_hw_discovery : entity is 0;
  attribute C_PF3_ENTRY_MAJOR_VERSION_5 : integer;
  attribute C_PF3_ENTRY_MAJOR_VERSION_5 of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_hw_discovery : entity is 0;
  attribute C_PF3_ENTRY_MAJOR_VERSION_6 : integer;
  attribute C_PF3_ENTRY_MAJOR_VERSION_6 of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_hw_discovery : entity is 0;
  attribute C_PF3_ENTRY_MAJOR_VERSION_7 : integer;
  attribute C_PF3_ENTRY_MAJOR_VERSION_7 of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_hw_discovery : entity is 0;
  attribute C_PF3_ENTRY_MAJOR_VERSION_8 : integer;
  attribute C_PF3_ENTRY_MAJOR_VERSION_8 of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_hw_discovery : entity is 0;
  attribute C_PF3_ENTRY_MAJOR_VERSION_9 : integer;
  attribute C_PF3_ENTRY_MAJOR_VERSION_9 of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_hw_discovery : entity is 0;
  attribute C_PF3_ENTRY_MINOR_VERSION_0 : integer;
  attribute C_PF3_ENTRY_MINOR_VERSION_0 of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_hw_discovery : entity is 0;
  attribute C_PF3_ENTRY_MINOR_VERSION_1 : integer;
  attribute C_PF3_ENTRY_MINOR_VERSION_1 of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_hw_discovery : entity is 0;
  attribute C_PF3_ENTRY_MINOR_VERSION_10 : integer;
  attribute C_PF3_ENTRY_MINOR_VERSION_10 of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_hw_discovery : entity is 0;
  attribute C_PF3_ENTRY_MINOR_VERSION_11 : integer;
  attribute C_PF3_ENTRY_MINOR_VERSION_11 of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_hw_discovery : entity is 0;
  attribute C_PF3_ENTRY_MINOR_VERSION_12 : integer;
  attribute C_PF3_ENTRY_MINOR_VERSION_12 of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_hw_discovery : entity is 0;
  attribute C_PF3_ENTRY_MINOR_VERSION_13 : integer;
  attribute C_PF3_ENTRY_MINOR_VERSION_13 of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_hw_discovery : entity is 0;
  attribute C_PF3_ENTRY_MINOR_VERSION_14 : integer;
  attribute C_PF3_ENTRY_MINOR_VERSION_14 of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_hw_discovery : entity is 0;
  attribute C_PF3_ENTRY_MINOR_VERSION_15 : integer;
  attribute C_PF3_ENTRY_MINOR_VERSION_15 of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_hw_discovery : entity is 0;
  attribute C_PF3_ENTRY_MINOR_VERSION_2 : integer;
  attribute C_PF3_ENTRY_MINOR_VERSION_2 of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_hw_discovery : entity is 0;
  attribute C_PF3_ENTRY_MINOR_VERSION_3 : integer;
  attribute C_PF3_ENTRY_MINOR_VERSION_3 of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_hw_discovery : entity is 0;
  attribute C_PF3_ENTRY_MINOR_VERSION_4 : integer;
  attribute C_PF3_ENTRY_MINOR_VERSION_4 of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_hw_discovery : entity is 0;
  attribute C_PF3_ENTRY_MINOR_VERSION_5 : integer;
  attribute C_PF3_ENTRY_MINOR_VERSION_5 of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_hw_discovery : entity is 0;
  attribute C_PF3_ENTRY_MINOR_VERSION_6 : integer;
  attribute C_PF3_ENTRY_MINOR_VERSION_6 of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_hw_discovery : entity is 0;
  attribute C_PF3_ENTRY_MINOR_VERSION_7 : integer;
  attribute C_PF3_ENTRY_MINOR_VERSION_7 of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_hw_discovery : entity is 0;
  attribute C_PF3_ENTRY_MINOR_VERSION_8 : integer;
  attribute C_PF3_ENTRY_MINOR_VERSION_8 of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_hw_discovery : entity is 0;
  attribute C_PF3_ENTRY_MINOR_VERSION_9 : integer;
  attribute C_PF3_ENTRY_MINOR_VERSION_9 of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_hw_discovery : entity is 0;
  attribute C_PF3_ENTRY_RSVD0_0 : string;
  attribute C_PF3_ENTRY_RSVD0_0 of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_hw_discovery : entity is "4'b0000";
  attribute C_PF3_ENTRY_RSVD0_1 : string;
  attribute C_PF3_ENTRY_RSVD0_1 of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_hw_discovery : entity is "4'b0000";
  attribute C_PF3_ENTRY_RSVD0_10 : string;
  attribute C_PF3_ENTRY_RSVD0_10 of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_hw_discovery : entity is "4'b0000";
  attribute C_PF3_ENTRY_RSVD0_11 : string;
  attribute C_PF3_ENTRY_RSVD0_11 of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_hw_discovery : entity is "4'b0000";
  attribute C_PF3_ENTRY_RSVD0_12 : string;
  attribute C_PF3_ENTRY_RSVD0_12 of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_hw_discovery : entity is "4'b0000";
  attribute C_PF3_ENTRY_RSVD0_13 : string;
  attribute C_PF3_ENTRY_RSVD0_13 of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_hw_discovery : entity is "4'b0000";
  attribute C_PF3_ENTRY_RSVD0_14 : string;
  attribute C_PF3_ENTRY_RSVD0_14 of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_hw_discovery : entity is "4'b0000";
  attribute C_PF3_ENTRY_RSVD0_15 : string;
  attribute C_PF3_ENTRY_RSVD0_15 of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_hw_discovery : entity is "4'b0000";
  attribute C_PF3_ENTRY_RSVD0_2 : string;
  attribute C_PF3_ENTRY_RSVD0_2 of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_hw_discovery : entity is "4'b0000";
  attribute C_PF3_ENTRY_RSVD0_3 : string;
  attribute C_PF3_ENTRY_RSVD0_3 of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_hw_discovery : entity is "4'b0000";
  attribute C_PF3_ENTRY_RSVD0_4 : string;
  attribute C_PF3_ENTRY_RSVD0_4 of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_hw_discovery : entity is "4'b0000";
  attribute C_PF3_ENTRY_RSVD0_5 : string;
  attribute C_PF3_ENTRY_RSVD0_5 of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_hw_discovery : entity is "4'b0000";
  attribute C_PF3_ENTRY_RSVD0_6 : string;
  attribute C_PF3_ENTRY_RSVD0_6 of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_hw_discovery : entity is "4'b0000";
  attribute C_PF3_ENTRY_RSVD0_7 : string;
  attribute C_PF3_ENTRY_RSVD0_7 of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_hw_discovery : entity is "4'b0000";
  attribute C_PF3_ENTRY_RSVD0_8 : string;
  attribute C_PF3_ENTRY_RSVD0_8 of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_hw_discovery : entity is "4'b0000";
  attribute C_PF3_ENTRY_RSVD0_9 : string;
  attribute C_PF3_ENTRY_RSVD0_9 of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_hw_discovery : entity is "4'b0000";
  attribute C_PF3_ENTRY_TYPE_0 : string;
  attribute C_PF3_ENTRY_TYPE_0 of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_hw_discovery : entity is "8'b00000000";
  attribute C_PF3_ENTRY_TYPE_1 : string;
  attribute C_PF3_ENTRY_TYPE_1 of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_hw_discovery : entity is "8'b00000000";
  attribute C_PF3_ENTRY_TYPE_10 : string;
  attribute C_PF3_ENTRY_TYPE_10 of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_hw_discovery : entity is "8'b00000000";
  attribute C_PF3_ENTRY_TYPE_11 : string;
  attribute C_PF3_ENTRY_TYPE_11 of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_hw_discovery : entity is "8'b00000000";
  attribute C_PF3_ENTRY_TYPE_12 : string;
  attribute C_PF3_ENTRY_TYPE_12 of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_hw_discovery : entity is "8'b00000000";
  attribute C_PF3_ENTRY_TYPE_13 : string;
  attribute C_PF3_ENTRY_TYPE_13 of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_hw_discovery : entity is "8'b00000000";
  attribute C_PF3_ENTRY_TYPE_14 : string;
  attribute C_PF3_ENTRY_TYPE_14 of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_hw_discovery : entity is "8'b00000000";
  attribute C_PF3_ENTRY_TYPE_15 : string;
  attribute C_PF3_ENTRY_TYPE_15 of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_hw_discovery : entity is "8'b00000000";
  attribute C_PF3_ENTRY_TYPE_2 : string;
  attribute C_PF3_ENTRY_TYPE_2 of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_hw_discovery : entity is "8'b00000000";
  attribute C_PF3_ENTRY_TYPE_3 : string;
  attribute C_PF3_ENTRY_TYPE_3 of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_hw_discovery : entity is "8'b00000000";
  attribute C_PF3_ENTRY_TYPE_4 : string;
  attribute C_PF3_ENTRY_TYPE_4 of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_hw_discovery : entity is "8'b00000000";
  attribute C_PF3_ENTRY_TYPE_5 : string;
  attribute C_PF3_ENTRY_TYPE_5 of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_hw_discovery : entity is "8'b00000000";
  attribute C_PF3_ENTRY_TYPE_6 : string;
  attribute C_PF3_ENTRY_TYPE_6 of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_hw_discovery : entity is "8'b00000000";
  attribute C_PF3_ENTRY_TYPE_7 : string;
  attribute C_PF3_ENTRY_TYPE_7 of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_hw_discovery : entity is "8'b00000000";
  attribute C_PF3_ENTRY_TYPE_8 : string;
  attribute C_PF3_ENTRY_TYPE_8 of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_hw_discovery : entity is "8'b00000000";
  attribute C_PF3_ENTRY_TYPE_9 : string;
  attribute C_PF3_ENTRY_TYPE_9 of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_hw_discovery : entity is "8'b00000000";
  attribute C_PF3_ENTRY_VERSION_TYPE_0 : string;
  attribute C_PF3_ENTRY_VERSION_TYPE_0 of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_hw_discovery : entity is "8'b00000000";
  attribute C_PF3_ENTRY_VERSION_TYPE_1 : string;
  attribute C_PF3_ENTRY_VERSION_TYPE_1 of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_hw_discovery : entity is "8'b00000000";
  attribute C_PF3_ENTRY_VERSION_TYPE_10 : string;
  attribute C_PF3_ENTRY_VERSION_TYPE_10 of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_hw_discovery : entity is "8'b00000000";
  attribute C_PF3_ENTRY_VERSION_TYPE_11 : string;
  attribute C_PF3_ENTRY_VERSION_TYPE_11 of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_hw_discovery : entity is "8'b00000000";
  attribute C_PF3_ENTRY_VERSION_TYPE_12 : string;
  attribute C_PF3_ENTRY_VERSION_TYPE_12 of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_hw_discovery : entity is "8'b00000000";
  attribute C_PF3_ENTRY_VERSION_TYPE_13 : string;
  attribute C_PF3_ENTRY_VERSION_TYPE_13 of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_hw_discovery : entity is "8'b00000000";
  attribute C_PF3_ENTRY_VERSION_TYPE_14 : string;
  attribute C_PF3_ENTRY_VERSION_TYPE_14 of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_hw_discovery : entity is "8'b00000000";
  attribute C_PF3_ENTRY_VERSION_TYPE_15 : string;
  attribute C_PF3_ENTRY_VERSION_TYPE_15 of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_hw_discovery : entity is "8'b00000000";
  attribute C_PF3_ENTRY_VERSION_TYPE_2 : string;
  attribute C_PF3_ENTRY_VERSION_TYPE_2 of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_hw_discovery : entity is "8'b00000000";
  attribute C_PF3_ENTRY_VERSION_TYPE_3 : string;
  attribute C_PF3_ENTRY_VERSION_TYPE_3 of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_hw_discovery : entity is "8'b00000000";
  attribute C_PF3_ENTRY_VERSION_TYPE_4 : string;
  attribute C_PF3_ENTRY_VERSION_TYPE_4 of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_hw_discovery : entity is "8'b00000000";
  attribute C_PF3_ENTRY_VERSION_TYPE_5 : string;
  attribute C_PF3_ENTRY_VERSION_TYPE_5 of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_hw_discovery : entity is "8'b00000000";
  attribute C_PF3_ENTRY_VERSION_TYPE_6 : string;
  attribute C_PF3_ENTRY_VERSION_TYPE_6 of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_hw_discovery : entity is "8'b00000000";
  attribute C_PF3_ENTRY_VERSION_TYPE_7 : string;
  attribute C_PF3_ENTRY_VERSION_TYPE_7 of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_hw_discovery : entity is "8'b00000000";
  attribute C_PF3_ENTRY_VERSION_TYPE_8 : string;
  attribute C_PF3_ENTRY_VERSION_TYPE_8 of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_hw_discovery : entity is "8'b00000000";
  attribute C_PF3_ENTRY_VERSION_TYPE_9 : string;
  attribute C_PF3_ENTRY_VERSION_TYPE_9 of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_hw_discovery : entity is "8'b00000000";
  attribute C_PF3_HAS_UUID_ROM : integer;
  attribute C_PF3_HAS_UUID_ROM of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_hw_discovery : entity is 0;
  attribute C_PF3_HIGH_OFFSET : integer;
  attribute C_PF3_HIGH_OFFSET of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_hw_discovery : entity is 0;
  attribute C_PF3_LOW_OFFSET : string;
  attribute C_PF3_LOW_OFFSET of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_hw_discovery : entity is "28'b0000000000000000000000000000";
  attribute C_PF3_NUM_SLOTS_BAR_LAYOUT_TABLE : integer;
  attribute C_PF3_NUM_SLOTS_BAR_LAYOUT_TABLE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_hw_discovery : entity is 1;
  attribute C_PF3_S_AXI_ADDR_WIDTH : integer;
  attribute C_PF3_S_AXI_ADDR_WIDTH of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_hw_discovery : entity is 32;
  attribute C_PF3_S_AXI_DATA_WIDTH : integer;
  attribute C_PF3_S_AXI_DATA_WIDTH of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_hw_discovery : entity is 32;
  attribute C_PF3_UUID_ROM_INIT : string;
  attribute C_PF3_UUID_ROM_INIT of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_hw_discovery : entity is "00000000,00000000,00000000,00000000";
  attribute C_XDEVICEFAMILY : string;
  attribute C_XDEVICEFAMILY of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_hw_discovery : entity is "versal";
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_hw_discovery;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_hw_discovery is
  signal \<const0>\ : STD_LOGIC;
  signal \^s_axi_ctrl_pf0_awready\ : STD_LOGIC;
  signal \^s_axi_ctrl_pf0_rdata\ : STD_LOGIC_VECTOR ( 29 downto 0 );
  signal \^s_axi_ctrl_pf1_awready\ : STD_LOGIC;
  signal \^s_axi_ctrl_pf1_rdata\ : STD_LOGIC_VECTOR ( 28 downto 0 );
  signal \^s_pcie4_cfg_ext_read_data\ : STD_LOGIC_VECTOR ( 12 downto 1 );
begin
  m_pcie4_cfg_ext_function_number(7) <= \<const0>\;
  m_pcie4_cfg_ext_function_number(6) <= \<const0>\;
  m_pcie4_cfg_ext_function_number(5) <= \<const0>\;
  m_pcie4_cfg_ext_function_number(4) <= \<const0>\;
  m_pcie4_cfg_ext_function_number(3) <= \<const0>\;
  m_pcie4_cfg_ext_function_number(2) <= \<const0>\;
  m_pcie4_cfg_ext_function_number(1) <= \<const0>\;
  m_pcie4_cfg_ext_function_number(0) <= \<const0>\;
  m_pcie4_cfg_ext_read_received <= \<const0>\;
  m_pcie4_cfg_ext_register_number(9) <= \<const0>\;
  m_pcie4_cfg_ext_register_number(8) <= \<const0>\;
  m_pcie4_cfg_ext_register_number(7) <= \<const0>\;
  m_pcie4_cfg_ext_register_number(6) <= \<const0>\;
  m_pcie4_cfg_ext_register_number(5) <= \<const0>\;
  m_pcie4_cfg_ext_register_number(4) <= \<const0>\;
  m_pcie4_cfg_ext_register_number(3) <= \<const0>\;
  m_pcie4_cfg_ext_register_number(2) <= \<const0>\;
  m_pcie4_cfg_ext_register_number(1) <= \<const0>\;
  m_pcie4_cfg_ext_register_number(0) <= \<const0>\;
  m_pcie4_cfg_ext_write_byte_enable(3) <= \<const0>\;
  m_pcie4_cfg_ext_write_byte_enable(2) <= \<const0>\;
  m_pcie4_cfg_ext_write_byte_enable(1) <= \<const0>\;
  m_pcie4_cfg_ext_write_byte_enable(0) <= \<const0>\;
  m_pcie4_cfg_ext_write_data(31) <= \<const0>\;
  m_pcie4_cfg_ext_write_data(30) <= \<const0>\;
  m_pcie4_cfg_ext_write_data(29) <= \<const0>\;
  m_pcie4_cfg_ext_write_data(28) <= \<const0>\;
  m_pcie4_cfg_ext_write_data(27) <= \<const0>\;
  m_pcie4_cfg_ext_write_data(26) <= \<const0>\;
  m_pcie4_cfg_ext_write_data(25) <= \<const0>\;
  m_pcie4_cfg_ext_write_data(24) <= \<const0>\;
  m_pcie4_cfg_ext_write_data(23) <= \<const0>\;
  m_pcie4_cfg_ext_write_data(22) <= \<const0>\;
  m_pcie4_cfg_ext_write_data(21) <= \<const0>\;
  m_pcie4_cfg_ext_write_data(20) <= \<const0>\;
  m_pcie4_cfg_ext_write_data(19) <= \<const0>\;
  m_pcie4_cfg_ext_write_data(18) <= \<const0>\;
  m_pcie4_cfg_ext_write_data(17) <= \<const0>\;
  m_pcie4_cfg_ext_write_data(16) <= \<const0>\;
  m_pcie4_cfg_ext_write_data(15) <= \<const0>\;
  m_pcie4_cfg_ext_write_data(14) <= \<const0>\;
  m_pcie4_cfg_ext_write_data(13) <= \<const0>\;
  m_pcie4_cfg_ext_write_data(12) <= \<const0>\;
  m_pcie4_cfg_ext_write_data(11) <= \<const0>\;
  m_pcie4_cfg_ext_write_data(10) <= \<const0>\;
  m_pcie4_cfg_ext_write_data(9) <= \<const0>\;
  m_pcie4_cfg_ext_write_data(8) <= \<const0>\;
  m_pcie4_cfg_ext_write_data(7) <= \<const0>\;
  m_pcie4_cfg_ext_write_data(6) <= \<const0>\;
  m_pcie4_cfg_ext_write_data(5) <= \<const0>\;
  m_pcie4_cfg_ext_write_data(4) <= \<const0>\;
  m_pcie4_cfg_ext_write_data(3) <= \<const0>\;
  m_pcie4_cfg_ext_write_data(2) <= \<const0>\;
  m_pcie4_cfg_ext_write_data(1) <= \<const0>\;
  m_pcie4_cfg_ext_write_data(0) <= \<const0>\;
  m_pcie4_cfg_ext_write_received <= \<const0>\;
  s_axi_ctrl_pf0_AWREADY <= \^s_axi_ctrl_pf0_awready\;
  s_axi_ctrl_pf0_BRESP(1) <= \<const0>\;
  s_axi_ctrl_pf0_BRESP(0) <= \<const0>\;
  s_axi_ctrl_pf0_RDATA(31) <= \<const0>\;
  s_axi_ctrl_pf0_RDATA(30) <= \<const0>\;
  s_axi_ctrl_pf0_RDATA(29 downto 28) <= \^s_axi_ctrl_pf0_rdata\(29 downto 28);
  s_axi_ctrl_pf0_RDATA(27) <= \<const0>\;
  s_axi_ctrl_pf0_RDATA(26) <= \<const0>\;
  s_axi_ctrl_pf0_RDATA(25) <= \^s_axi_ctrl_pf0_rdata\(24);
  s_axi_ctrl_pf0_RDATA(24) <= \^s_axi_ctrl_pf0_rdata\(24);
  s_axi_ctrl_pf0_RDATA(23) <= \<const0>\;
  s_axi_ctrl_pf0_RDATA(22) <= \<const0>\;
  s_axi_ctrl_pf0_RDATA(21) <= \<const0>\;
  s_axi_ctrl_pf0_RDATA(20) <= \<const0>\;
  s_axi_ctrl_pf0_RDATA(19) <= \<const0>\;
  s_axi_ctrl_pf0_RDATA(18) <= \<const0>\;
  s_axi_ctrl_pf0_RDATA(17) <= \<const0>\;
  s_axi_ctrl_pf0_RDATA(16) <= \^s_axi_ctrl_pf0_rdata\(16);
  s_axi_ctrl_pf0_RDATA(15) <= \<const0>\;
  s_axi_ctrl_pf0_RDATA(14) <= \<const0>\;
  s_axi_ctrl_pf0_RDATA(13) <= \<const0>\;
  s_axi_ctrl_pf0_RDATA(12) <= \<const0>\;
  s_axi_ctrl_pf0_RDATA(11) <= \^s_axi_ctrl_pf0_rdata\(11);
  s_axi_ctrl_pf0_RDATA(10) <= \<const0>\;
  s_axi_ctrl_pf0_RDATA(9) <= \^s_axi_ctrl_pf0_rdata\(9);
  s_axi_ctrl_pf0_RDATA(8) <= \<const0>\;
  s_axi_ctrl_pf0_RDATA(7) <= \^s_axi_ctrl_pf0_rdata\(3);
  s_axi_ctrl_pf0_RDATA(6 downto 0) <= \^s_axi_ctrl_pf0_rdata\(6 downto 0);
  s_axi_ctrl_pf0_RRESP(1) <= \<const0>\;
  s_axi_ctrl_pf0_RRESP(0) <= \<const0>\;
  s_axi_ctrl_pf0_WREADY <= \^s_axi_ctrl_pf0_awready\;
  s_axi_ctrl_pf1_AWREADY <= \^s_axi_ctrl_pf1_awready\;
  s_axi_ctrl_pf1_BRESP(1) <= \<const0>\;
  s_axi_ctrl_pf1_BRESP(0) <= \<const0>\;
  s_axi_ctrl_pf1_RDATA(31) <= \<const0>\;
  s_axi_ctrl_pf1_RDATA(30) <= \<const0>\;
  s_axi_ctrl_pf1_RDATA(29) <= \<const0>\;
  s_axi_ctrl_pf1_RDATA(28) <= \^s_axi_ctrl_pf1_rdata\(28);
  s_axi_ctrl_pf1_RDATA(27) <= \<const0>\;
  s_axi_ctrl_pf1_RDATA(26) <= \<const0>\;
  s_axi_ctrl_pf1_RDATA(25) <= \<const0>\;
  s_axi_ctrl_pf1_RDATA(24) <= \^s_axi_ctrl_pf1_rdata\(16);
  s_axi_ctrl_pf1_RDATA(23) <= \<const0>\;
  s_axi_ctrl_pf1_RDATA(22) <= \<const0>\;
  s_axi_ctrl_pf1_RDATA(21) <= \<const0>\;
  s_axi_ctrl_pf1_RDATA(20) <= \<const0>\;
  s_axi_ctrl_pf1_RDATA(19) <= \<const0>\;
  s_axi_ctrl_pf1_RDATA(18) <= \<const0>\;
  s_axi_ctrl_pf1_RDATA(17) <= \<const0>\;
  s_axi_ctrl_pf1_RDATA(16) <= \^s_axi_ctrl_pf1_rdata\(16);
  s_axi_ctrl_pf1_RDATA(15) <= \<const0>\;
  s_axi_ctrl_pf1_RDATA(14) <= \^s_axi_ctrl_pf1_rdata\(14);
  s_axi_ctrl_pf1_RDATA(13) <= \<const0>\;
  s_axi_ctrl_pf1_RDATA(12) <= \<const0>\;
  s_axi_ctrl_pf1_RDATA(11) <= \<const0>\;
  s_axi_ctrl_pf1_RDATA(10) <= \<const0>\;
  s_axi_ctrl_pf1_RDATA(9) <= \^s_axi_ctrl_pf1_rdata\(9);
  s_axi_ctrl_pf1_RDATA(8) <= \<const0>\;
  s_axi_ctrl_pf1_RDATA(7) <= \^s_axi_ctrl_pf1_rdata\(3);
  s_axi_ctrl_pf1_RDATA(6) <= \^s_axi_ctrl_pf1_rdata\(1);
  s_axi_ctrl_pf1_RDATA(5 downto 3) <= \^s_axi_ctrl_pf1_rdata\(5 downto 3);
  s_axi_ctrl_pf1_RDATA(2) <= \^s_axi_ctrl_pf1_rdata\(3);
  s_axi_ctrl_pf1_RDATA(1 downto 0) <= \^s_axi_ctrl_pf1_rdata\(1 downto 0);
  s_axi_ctrl_pf1_RRESP(1) <= \<const0>\;
  s_axi_ctrl_pf1_RRESP(0) <= \<const0>\;
  s_axi_ctrl_pf1_WREADY <= \^s_axi_ctrl_pf1_awready\;
  s_axi_ctrl_pf2_ARREADY <= \<const0>\;
  s_axi_ctrl_pf2_AWREADY <= \<const0>\;
  s_axi_ctrl_pf2_BRESP(1) <= \<const0>\;
  s_axi_ctrl_pf2_BRESP(0) <= \<const0>\;
  s_axi_ctrl_pf2_BVALID <= \<const0>\;
  s_axi_ctrl_pf2_RDATA(31) <= \<const0>\;
  s_axi_ctrl_pf2_RDATA(30) <= \<const0>\;
  s_axi_ctrl_pf2_RDATA(29) <= \<const0>\;
  s_axi_ctrl_pf2_RDATA(28) <= \<const0>\;
  s_axi_ctrl_pf2_RDATA(27) <= \<const0>\;
  s_axi_ctrl_pf2_RDATA(26) <= \<const0>\;
  s_axi_ctrl_pf2_RDATA(25) <= \<const0>\;
  s_axi_ctrl_pf2_RDATA(24) <= \<const0>\;
  s_axi_ctrl_pf2_RDATA(23) <= \<const0>\;
  s_axi_ctrl_pf2_RDATA(22) <= \<const0>\;
  s_axi_ctrl_pf2_RDATA(21) <= \<const0>\;
  s_axi_ctrl_pf2_RDATA(20) <= \<const0>\;
  s_axi_ctrl_pf2_RDATA(19) <= \<const0>\;
  s_axi_ctrl_pf2_RDATA(18) <= \<const0>\;
  s_axi_ctrl_pf2_RDATA(17) <= \<const0>\;
  s_axi_ctrl_pf2_RDATA(16) <= \<const0>\;
  s_axi_ctrl_pf2_RDATA(15) <= \<const0>\;
  s_axi_ctrl_pf2_RDATA(14) <= \<const0>\;
  s_axi_ctrl_pf2_RDATA(13) <= \<const0>\;
  s_axi_ctrl_pf2_RDATA(12) <= \<const0>\;
  s_axi_ctrl_pf2_RDATA(11) <= \<const0>\;
  s_axi_ctrl_pf2_RDATA(10) <= \<const0>\;
  s_axi_ctrl_pf2_RDATA(9) <= \<const0>\;
  s_axi_ctrl_pf2_RDATA(8) <= \<const0>\;
  s_axi_ctrl_pf2_RDATA(7) <= \<const0>\;
  s_axi_ctrl_pf2_RDATA(6) <= \<const0>\;
  s_axi_ctrl_pf2_RDATA(5) <= \<const0>\;
  s_axi_ctrl_pf2_RDATA(4) <= \<const0>\;
  s_axi_ctrl_pf2_RDATA(3) <= \<const0>\;
  s_axi_ctrl_pf2_RDATA(2) <= \<const0>\;
  s_axi_ctrl_pf2_RDATA(1) <= \<const0>\;
  s_axi_ctrl_pf2_RDATA(0) <= \<const0>\;
  s_axi_ctrl_pf2_RRESP(1) <= \<const0>\;
  s_axi_ctrl_pf2_RRESP(0) <= \<const0>\;
  s_axi_ctrl_pf2_RVALID <= \<const0>\;
  s_axi_ctrl_pf2_WREADY <= \<const0>\;
  s_axi_ctrl_pf3_ARREADY <= \<const0>\;
  s_axi_ctrl_pf3_AWREADY <= \<const0>\;
  s_axi_ctrl_pf3_BRESP(1) <= \<const0>\;
  s_axi_ctrl_pf3_BRESP(0) <= \<const0>\;
  s_axi_ctrl_pf3_BVALID <= \<const0>\;
  s_axi_ctrl_pf3_RDATA(31) <= \<const0>\;
  s_axi_ctrl_pf3_RDATA(30) <= \<const0>\;
  s_axi_ctrl_pf3_RDATA(29) <= \<const0>\;
  s_axi_ctrl_pf3_RDATA(28) <= \<const0>\;
  s_axi_ctrl_pf3_RDATA(27) <= \<const0>\;
  s_axi_ctrl_pf3_RDATA(26) <= \<const0>\;
  s_axi_ctrl_pf3_RDATA(25) <= \<const0>\;
  s_axi_ctrl_pf3_RDATA(24) <= \<const0>\;
  s_axi_ctrl_pf3_RDATA(23) <= \<const0>\;
  s_axi_ctrl_pf3_RDATA(22) <= \<const0>\;
  s_axi_ctrl_pf3_RDATA(21) <= \<const0>\;
  s_axi_ctrl_pf3_RDATA(20) <= \<const0>\;
  s_axi_ctrl_pf3_RDATA(19) <= \<const0>\;
  s_axi_ctrl_pf3_RDATA(18) <= \<const0>\;
  s_axi_ctrl_pf3_RDATA(17) <= \<const0>\;
  s_axi_ctrl_pf3_RDATA(16) <= \<const0>\;
  s_axi_ctrl_pf3_RDATA(15) <= \<const0>\;
  s_axi_ctrl_pf3_RDATA(14) <= \<const0>\;
  s_axi_ctrl_pf3_RDATA(13) <= \<const0>\;
  s_axi_ctrl_pf3_RDATA(12) <= \<const0>\;
  s_axi_ctrl_pf3_RDATA(11) <= \<const0>\;
  s_axi_ctrl_pf3_RDATA(10) <= \<const0>\;
  s_axi_ctrl_pf3_RDATA(9) <= \<const0>\;
  s_axi_ctrl_pf3_RDATA(8) <= \<const0>\;
  s_axi_ctrl_pf3_RDATA(7) <= \<const0>\;
  s_axi_ctrl_pf3_RDATA(6) <= \<const0>\;
  s_axi_ctrl_pf3_RDATA(5) <= \<const0>\;
  s_axi_ctrl_pf3_RDATA(4) <= \<const0>\;
  s_axi_ctrl_pf3_RDATA(3) <= \<const0>\;
  s_axi_ctrl_pf3_RDATA(2) <= \<const0>\;
  s_axi_ctrl_pf3_RDATA(1) <= \<const0>\;
  s_axi_ctrl_pf3_RDATA(0) <= \<const0>\;
  s_axi_ctrl_pf3_RRESP(1) <= \<const0>\;
  s_axi_ctrl_pf3_RRESP(0) <= \<const0>\;
  s_axi_ctrl_pf3_RVALID <= \<const0>\;
  s_axi_ctrl_pf3_WREADY <= \<const0>\;
  s_pcie4_cfg_ext_read_data(31) <= \<const0>\;
  s_pcie4_cfg_ext_read_data(30) <= \<const0>\;
  s_pcie4_cfg_ext_read_data(29) <= \<const0>\;
  s_pcie4_cfg_ext_read_data(28) <= \<const0>\;
  s_pcie4_cfg_ext_read_data(27) <= \<const0>\;
  s_pcie4_cfg_ext_read_data(26) <= \<const0>\;
  s_pcie4_cfg_ext_read_data(25) <= \^s_pcie4_cfg_ext_read_data\(12);
  s_pcie4_cfg_ext_read_data(24) <= \^s_pcie4_cfg_ext_read_data\(5);
  s_pcie4_cfg_ext_read_data(23) <= \<const0>\;
  s_pcie4_cfg_ext_read_data(22) <= \<const0>\;
  s_pcie4_cfg_ext_read_data(21) <= \<const0>\;
  s_pcie4_cfg_ext_read_data(20) <= \<const0>\;
  s_pcie4_cfg_ext_read_data(19) <= \<const0>\;
  s_pcie4_cfg_ext_read_data(18) <= \<const0>\;
  s_pcie4_cfg_ext_read_data(17) <= \<const0>\;
  s_pcie4_cfg_ext_read_data(16) <= \^s_pcie4_cfg_ext_read_data\(3);
  s_pcie4_cfg_ext_read_data(15) <= \<const0>\;
  s_pcie4_cfg_ext_read_data(14) <= \<const0>\;
  s_pcie4_cfg_ext_read_data(13) <= \<const0>\;
  s_pcie4_cfg_ext_read_data(12) <= \^s_pcie4_cfg_ext_read_data\(12);
  s_pcie4_cfg_ext_read_data(11) <= \<const0>\;
  s_pcie4_cfg_ext_read_data(10) <= \<const0>\;
  s_pcie4_cfg_ext_read_data(9) <= \<const0>\;
  s_pcie4_cfg_ext_read_data(8) <= \<const0>\;
  s_pcie4_cfg_ext_read_data(7) <= \<const0>\;
  s_pcie4_cfg_ext_read_data(6) <= \<const0>\;
  s_pcie4_cfg_ext_read_data(5) <= \^s_pcie4_cfg_ext_read_data\(5);
  s_pcie4_cfg_ext_read_data(4) <= \<const0>\;
  s_pcie4_cfg_ext_read_data(3) <= \^s_pcie4_cfg_ext_read_data\(3);
  s_pcie4_cfg_ext_read_data(2) <= \<const0>\;
  s_pcie4_cfg_ext_read_data(1) <= \^s_pcie4_cfg_ext_read_data\(1);
  s_pcie4_cfg_ext_read_data(0) <= \^s_pcie4_cfg_ext_read_data\(3);
GND: unisim.vcomponents.GND
     port map (
      G => \<const0>\
    );
hw_disc_inst: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_hw_disc
     port map (
      \INCLUDE_DPHASE_TIMER.dpto_cnt_reg[0]\ => s_axi_ctrl_pf0_ARREADY,
      \INCLUDE_DPHASE_TIMER.dpto_cnt_reg[0]_0\ => \^s_axi_ctrl_pf0_awready\,
      \INCLUDE_DPHASE_TIMER.dpto_cnt_reg[0]_1\ => s_axi_ctrl_pf1_ARREADY,
      \INCLUDE_DPHASE_TIMER.dpto_cnt_reg[0]_2\ => \^s_axi_ctrl_pf1_awready\,
      aclk_ctrl => aclk_ctrl,
      aclk_pcie => aclk_pcie,
      aresetn_ctrl => aresetn_ctrl,
      s_axi_ctrl_pf0_ARADDR(4 downto 0) => s_axi_ctrl_pf0_ARADDR(6 downto 2),
      s_axi_ctrl_pf0_ARVALID => s_axi_ctrl_pf0_ARVALID,
      s_axi_ctrl_pf0_AWADDR(4 downto 0) => s_axi_ctrl_pf0_AWADDR(6 downto 2),
      s_axi_ctrl_pf0_AWVALID => s_axi_ctrl_pf0_AWVALID,
      s_axi_ctrl_pf0_BREADY => s_axi_ctrl_pf0_BREADY,
      s_axi_ctrl_pf0_BVALID => s_axi_ctrl_pf0_BVALID,
      s_axi_ctrl_pf0_RDATA(12 downto 11) => \^s_axi_ctrl_pf0_rdata\(29 downto 28),
      s_axi_ctrl_pf0_RDATA(10) => \^s_axi_ctrl_pf0_rdata\(24),
      s_axi_ctrl_pf0_RDATA(9) => \^s_axi_ctrl_pf0_rdata\(16),
      s_axi_ctrl_pf0_RDATA(8) => \^s_axi_ctrl_pf0_rdata\(11),
      s_axi_ctrl_pf0_RDATA(7) => \^s_axi_ctrl_pf0_rdata\(9),
      s_axi_ctrl_pf0_RDATA(6) => \^s_axi_ctrl_pf0_rdata\(3),
      s_axi_ctrl_pf0_RDATA(5 downto 3) => \^s_axi_ctrl_pf0_rdata\(6 downto 4),
      s_axi_ctrl_pf0_RDATA(2 downto 0) => \^s_axi_ctrl_pf0_rdata\(2 downto 0),
      s_axi_ctrl_pf0_RREADY => s_axi_ctrl_pf0_RREADY,
      s_axi_ctrl_pf0_RVALID => s_axi_ctrl_pf0_RVALID,
      s_axi_ctrl_pf0_WVALID => s_axi_ctrl_pf0_WVALID,
      s_axi_ctrl_pf1_ARADDR(4 downto 0) => s_axi_ctrl_pf1_ARADDR(6 downto 2),
      s_axi_ctrl_pf1_ARVALID => s_axi_ctrl_pf1_ARVALID,
      s_axi_ctrl_pf1_AWADDR(4 downto 0) => s_axi_ctrl_pf1_AWADDR(6 downto 2),
      s_axi_ctrl_pf1_AWVALID => s_axi_ctrl_pf1_AWVALID,
      s_axi_ctrl_pf1_BREADY => s_axi_ctrl_pf1_BREADY,
      s_axi_ctrl_pf1_BVALID => s_axi_ctrl_pf1_BVALID,
      s_axi_ctrl_pf1_RDATA(8) => \^s_axi_ctrl_pf1_rdata\(28),
      s_axi_ctrl_pf1_RDATA(7) => \^s_axi_ctrl_pf1_rdata\(16),
      s_axi_ctrl_pf1_RDATA(6) => \^s_axi_ctrl_pf1_rdata\(14),
      s_axi_ctrl_pf1_RDATA(5) => \^s_axi_ctrl_pf1_rdata\(9),
      s_axi_ctrl_pf1_RDATA(4) => \^s_axi_ctrl_pf1_rdata\(3),
      s_axi_ctrl_pf1_RDATA(3) => \^s_axi_ctrl_pf1_rdata\(1),
      s_axi_ctrl_pf1_RDATA(2 downto 1) => \^s_axi_ctrl_pf1_rdata\(5 downto 4),
      s_axi_ctrl_pf1_RDATA(0) => \^s_axi_ctrl_pf1_rdata\(0),
      s_axi_ctrl_pf1_RREADY => s_axi_ctrl_pf1_RREADY,
      s_axi_ctrl_pf1_RVALID => s_axi_ctrl_pf1_RVALID,
      s_axi_ctrl_pf1_WVALID => s_axi_ctrl_pf1_WVALID,
      s_pcie4_cfg_ext_function_number(1 downto 0) => s_pcie4_cfg_ext_function_number(1 downto 0),
      s_pcie4_cfg_ext_read_data(3) => \^s_pcie4_cfg_ext_read_data\(12),
      s_pcie4_cfg_ext_read_data(2) => \^s_pcie4_cfg_ext_read_data\(5),
      s_pcie4_cfg_ext_read_data(1) => \^s_pcie4_cfg_ext_read_data\(3),
      s_pcie4_cfg_ext_read_data(0) => \^s_pcie4_cfg_ext_read_data\(1),
      s_pcie4_cfg_ext_read_data_valid => s_pcie4_cfg_ext_read_data_valid,
      s_pcie4_cfg_ext_read_received => s_pcie4_cfg_ext_read_received,
      s_pcie4_cfg_ext_register_number(9 downto 0) => s_pcie4_cfg_ext_register_number(9 downto 0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
  port (
    aclk_pcie : in STD_LOGIC;
    aresetn_pcie : in STD_LOGIC;
    aclk_ctrl : in STD_LOGIC;
    aresetn_ctrl : in STD_LOGIC;
    s_pcie4_cfg_ext_function_number : in STD_LOGIC_VECTOR ( 7 downto 0 );
    s_pcie4_cfg_ext_read_data : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s_pcie4_cfg_ext_read_data_valid : out STD_LOGIC;
    s_pcie4_cfg_ext_read_received : in STD_LOGIC;
    s_pcie4_cfg_ext_register_number : in STD_LOGIC_VECTOR ( 9 downto 0 );
    s_pcie4_cfg_ext_write_byte_enable : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_pcie4_cfg_ext_write_data : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_pcie4_cfg_ext_write_received : in STD_LOGIC;
    s_axi_ctrl_pf0_AWADDR : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_ctrl_pf0_AWVALID : in STD_LOGIC;
    s_axi_ctrl_pf0_AWREADY : out STD_LOGIC;
    s_axi_ctrl_pf0_WDATA : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_ctrl_pf0_WSTRB : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_ctrl_pf0_WVALID : in STD_LOGIC;
    s_axi_ctrl_pf0_WREADY : out STD_LOGIC;
    s_axi_ctrl_pf0_BRESP : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_ctrl_pf0_BVALID : out STD_LOGIC;
    s_axi_ctrl_pf0_BREADY : in STD_LOGIC;
    s_axi_ctrl_pf0_ARADDR : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_ctrl_pf0_ARVALID : in STD_LOGIC;
    s_axi_ctrl_pf0_ARREADY : out STD_LOGIC;
    s_axi_ctrl_pf0_RDATA : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_ctrl_pf0_RRESP : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_ctrl_pf0_RVALID : out STD_LOGIC;
    s_axi_ctrl_pf0_RREADY : in STD_LOGIC;
    s_axi_ctrl_pf1_AWADDR : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_ctrl_pf1_AWVALID : in STD_LOGIC;
    s_axi_ctrl_pf1_AWREADY : out STD_LOGIC;
    s_axi_ctrl_pf1_WDATA : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_ctrl_pf1_WSTRB : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_ctrl_pf1_WVALID : in STD_LOGIC;
    s_axi_ctrl_pf1_WREADY : out STD_LOGIC;
    s_axi_ctrl_pf1_BRESP : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_ctrl_pf1_BVALID : out STD_LOGIC;
    s_axi_ctrl_pf1_BREADY : in STD_LOGIC;
    s_axi_ctrl_pf1_ARADDR : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_ctrl_pf1_ARVALID : in STD_LOGIC;
    s_axi_ctrl_pf1_ARREADY : out STD_LOGIC;
    s_axi_ctrl_pf1_RDATA : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_ctrl_pf1_RRESP : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_ctrl_pf1_RVALID : out STD_LOGIC;
    s_axi_ctrl_pf1_RREADY : in STD_LOGIC
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "top_hw_discovery_0,hw_discovery,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "yes";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "hw_discovery,Vivado 2022.2";
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
  signal \<const0>\ : STD_LOGIC;
  signal \^s_axi_ctrl_pf0_rdata\ : STD_LOGIC_VECTOR ( 29 downto 0 );
  signal \^s_axi_ctrl_pf1_rdata\ : STD_LOGIC_VECTOR ( 28 downto 0 );
  signal \^s_pcie4_cfg_ext_read_data\ : STD_LOGIC_VECTOR ( 25 downto 0 );
  signal NLW_inst_m_pcie4_cfg_ext_read_received_UNCONNECTED : STD_LOGIC;
  signal NLW_inst_m_pcie4_cfg_ext_write_received_UNCONNECTED : STD_LOGIC;
  signal NLW_inst_s_axi_ctrl_pf2_ARREADY_UNCONNECTED : STD_LOGIC;
  signal NLW_inst_s_axi_ctrl_pf2_AWREADY_UNCONNECTED : STD_LOGIC;
  signal NLW_inst_s_axi_ctrl_pf2_BVALID_UNCONNECTED : STD_LOGIC;
  signal NLW_inst_s_axi_ctrl_pf2_RVALID_UNCONNECTED : STD_LOGIC;
  signal NLW_inst_s_axi_ctrl_pf2_WREADY_UNCONNECTED : STD_LOGIC;
  signal NLW_inst_s_axi_ctrl_pf3_ARREADY_UNCONNECTED : STD_LOGIC;
  signal NLW_inst_s_axi_ctrl_pf3_AWREADY_UNCONNECTED : STD_LOGIC;
  signal NLW_inst_s_axi_ctrl_pf3_BVALID_UNCONNECTED : STD_LOGIC;
  signal NLW_inst_s_axi_ctrl_pf3_RVALID_UNCONNECTED : STD_LOGIC;
  signal NLW_inst_s_axi_ctrl_pf3_WREADY_UNCONNECTED : STD_LOGIC;
  signal NLW_inst_m_pcie4_cfg_ext_function_number_UNCONNECTED : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal NLW_inst_m_pcie4_cfg_ext_register_number_UNCONNECTED : STD_LOGIC_VECTOR ( 9 downto 0 );
  signal NLW_inst_m_pcie4_cfg_ext_write_byte_enable_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_inst_m_pcie4_cfg_ext_write_data_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal NLW_inst_s_axi_ctrl_pf0_BRESP_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal NLW_inst_s_axi_ctrl_pf0_RDATA_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 8 );
  signal NLW_inst_s_axi_ctrl_pf0_RRESP_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal NLW_inst_s_axi_ctrl_pf1_BRESP_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal NLW_inst_s_axi_ctrl_pf1_RDATA_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 8 );
  signal NLW_inst_s_axi_ctrl_pf1_RRESP_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal NLW_inst_s_axi_ctrl_pf2_BRESP_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal NLW_inst_s_axi_ctrl_pf2_RDATA_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal NLW_inst_s_axi_ctrl_pf2_RRESP_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal NLW_inst_s_axi_ctrl_pf3_BRESP_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal NLW_inst_s_axi_ctrl_pf3_RDATA_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal NLW_inst_s_axi_ctrl_pf3_RRESP_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal NLW_inst_s_pcie4_cfg_ext_read_data_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 2 );
  attribute C_CAP_BASE_ADDR : string;
  attribute C_CAP_BASE_ADDR of inst : label is "12'b011000000000";
  attribute C_NEXT_CAP_ADDR : string;
  attribute C_NEXT_CAP_ADDR of inst : label is "12'b000000000000";
  attribute C_NUM_PFS : integer;
  attribute C_NUM_PFS of inst : label is 2;
  attribute C_PF0_BAR_INDEX : integer;
  attribute C_PF0_BAR_INDEX of inst : label is 0;
  attribute C_PF0_ENTRY_ADDR_0 : string;
  attribute C_PF0_ENTRY_ADDR_0 of inst : label is "48'b000000000000000000000010000000010000000000000000";
  attribute C_PF0_ENTRY_ADDR_1 : string;
  attribute C_PF0_ENTRY_ADDR_1 of inst : label is "48'b000000000000000000000010000000000000000000000000";
  attribute C_PF0_ENTRY_ADDR_10 : string;
  attribute C_PF0_ENTRY_ADDR_10 of inst : label is "48'b000000000000000000000000000000000000000000000000";
  attribute C_PF0_ENTRY_ADDR_11 : string;
  attribute C_PF0_ENTRY_ADDR_11 of inst : label is "48'b000000000000000000000000000000000000000000000000";
  attribute C_PF0_ENTRY_ADDR_12 : string;
  attribute C_PF0_ENTRY_ADDR_12 of inst : label is "48'b000000000000000000000000000000000000000000000000";
  attribute C_PF0_ENTRY_ADDR_13 : string;
  attribute C_PF0_ENTRY_ADDR_13 of inst : label is "48'b000000000000000000000000000000000000000000000000";
  attribute C_PF0_ENTRY_ADDR_14 : string;
  attribute C_PF0_ENTRY_ADDR_14 of inst : label is "48'b000000000000000000000000000000000000000000000000";
  attribute C_PF0_ENTRY_ADDR_15 : string;
  attribute C_PF0_ENTRY_ADDR_15 of inst : label is "48'b000000000000000000000000000000000000000000000000";
  attribute C_PF0_ENTRY_ADDR_2 : string;
  attribute C_PF0_ENTRY_ADDR_2 of inst : label is "48'b000000000000000000001000000000000000000000000000";
  attribute C_PF0_ENTRY_ADDR_3 : string;
  attribute C_PF0_ENTRY_ADDR_3 of inst : label is "48'b000000000000000000000010000000000010000000000000";
  attribute C_PF0_ENTRY_ADDR_4 : string;
  attribute C_PF0_ENTRY_ADDR_4 of inst : label is "48'b000000000000000000000000000000000000000000000000";
  attribute C_PF0_ENTRY_ADDR_5 : string;
  attribute C_PF0_ENTRY_ADDR_5 of inst : label is "48'b000000000000000000000000000000000000000000000000";
  attribute C_PF0_ENTRY_ADDR_6 : string;
  attribute C_PF0_ENTRY_ADDR_6 of inst : label is "48'b000000000000000000000000000000000000000000000000";
  attribute C_PF0_ENTRY_ADDR_7 : string;
  attribute C_PF0_ENTRY_ADDR_7 of inst : label is "48'b000000000000000000000000000000000000000000000000";
  attribute C_PF0_ENTRY_ADDR_8 : string;
  attribute C_PF0_ENTRY_ADDR_8 of inst : label is "48'b000000000000000000000000000000000000000000000000";
  attribute C_PF0_ENTRY_ADDR_9 : string;
  attribute C_PF0_ENTRY_ADDR_9 of inst : label is "48'b000000000000000000000000000000000000000000000000";
  attribute C_PF0_ENTRY_BAR_0 : integer;
  attribute C_PF0_ENTRY_BAR_0 of inst : label is 0;
  attribute C_PF0_ENTRY_BAR_1 : integer;
  attribute C_PF0_ENTRY_BAR_1 of inst : label is 0;
  attribute C_PF0_ENTRY_BAR_10 : integer;
  attribute C_PF0_ENTRY_BAR_10 of inst : label is 0;
  attribute C_PF0_ENTRY_BAR_11 : integer;
  attribute C_PF0_ENTRY_BAR_11 of inst : label is 0;
  attribute C_PF0_ENTRY_BAR_12 : integer;
  attribute C_PF0_ENTRY_BAR_12 of inst : label is 0;
  attribute C_PF0_ENTRY_BAR_13 : integer;
  attribute C_PF0_ENTRY_BAR_13 of inst : label is 0;
  attribute C_PF0_ENTRY_BAR_14 : integer;
  attribute C_PF0_ENTRY_BAR_14 of inst : label is 0;
  attribute C_PF0_ENTRY_BAR_15 : integer;
  attribute C_PF0_ENTRY_BAR_15 of inst : label is 0;
  attribute C_PF0_ENTRY_BAR_2 : integer;
  attribute C_PF0_ENTRY_BAR_2 of inst : label is 0;
  attribute C_PF0_ENTRY_BAR_3 : integer;
  attribute C_PF0_ENTRY_BAR_3 of inst : label is 0;
  attribute C_PF0_ENTRY_BAR_4 : integer;
  attribute C_PF0_ENTRY_BAR_4 of inst : label is 0;
  attribute C_PF0_ENTRY_BAR_5 : integer;
  attribute C_PF0_ENTRY_BAR_5 of inst : label is 0;
  attribute C_PF0_ENTRY_BAR_6 : integer;
  attribute C_PF0_ENTRY_BAR_6 of inst : label is 0;
  attribute C_PF0_ENTRY_BAR_7 : integer;
  attribute C_PF0_ENTRY_BAR_7 of inst : label is 0;
  attribute C_PF0_ENTRY_BAR_8 : integer;
  attribute C_PF0_ENTRY_BAR_8 of inst : label is 0;
  attribute C_PF0_ENTRY_BAR_9 : integer;
  attribute C_PF0_ENTRY_BAR_9 of inst : label is 0;
  attribute C_PF0_ENTRY_MAJOR_VERSION_0 : integer;
  attribute C_PF0_ENTRY_MAJOR_VERSION_0 of inst : label is 1;
  attribute C_PF0_ENTRY_MAJOR_VERSION_1 : integer;
  attribute C_PF0_ENTRY_MAJOR_VERSION_1 of inst : label is 1;
  attribute C_PF0_ENTRY_MAJOR_VERSION_10 : integer;
  attribute C_PF0_ENTRY_MAJOR_VERSION_10 of inst : label is 0;
  attribute C_PF0_ENTRY_MAJOR_VERSION_11 : integer;
  attribute C_PF0_ENTRY_MAJOR_VERSION_11 of inst : label is 0;
  attribute C_PF0_ENTRY_MAJOR_VERSION_12 : integer;
  attribute C_PF0_ENTRY_MAJOR_VERSION_12 of inst : label is 0;
  attribute C_PF0_ENTRY_MAJOR_VERSION_13 : integer;
  attribute C_PF0_ENTRY_MAJOR_VERSION_13 of inst : label is 0;
  attribute C_PF0_ENTRY_MAJOR_VERSION_14 : integer;
  attribute C_PF0_ENTRY_MAJOR_VERSION_14 of inst : label is 0;
  attribute C_PF0_ENTRY_MAJOR_VERSION_15 : integer;
  attribute C_PF0_ENTRY_MAJOR_VERSION_15 of inst : label is 0;
  attribute C_PF0_ENTRY_MAJOR_VERSION_2 : integer;
  attribute C_PF0_ENTRY_MAJOR_VERSION_2 of inst : label is 1;
  attribute C_PF0_ENTRY_MAJOR_VERSION_3 : integer;
  attribute C_PF0_ENTRY_MAJOR_VERSION_3 of inst : label is 1;
  attribute C_PF0_ENTRY_MAJOR_VERSION_4 : integer;
  attribute C_PF0_ENTRY_MAJOR_VERSION_4 of inst : label is 0;
  attribute C_PF0_ENTRY_MAJOR_VERSION_5 : integer;
  attribute C_PF0_ENTRY_MAJOR_VERSION_5 of inst : label is 0;
  attribute C_PF0_ENTRY_MAJOR_VERSION_6 : integer;
  attribute C_PF0_ENTRY_MAJOR_VERSION_6 of inst : label is 0;
  attribute C_PF0_ENTRY_MAJOR_VERSION_7 : integer;
  attribute C_PF0_ENTRY_MAJOR_VERSION_7 of inst : label is 0;
  attribute C_PF0_ENTRY_MAJOR_VERSION_8 : integer;
  attribute C_PF0_ENTRY_MAJOR_VERSION_8 of inst : label is 0;
  attribute C_PF0_ENTRY_MAJOR_VERSION_9 : integer;
  attribute C_PF0_ENTRY_MAJOR_VERSION_9 of inst : label is 0;
  attribute C_PF0_ENTRY_MINOR_VERSION_0 : integer;
  attribute C_PF0_ENTRY_MINOR_VERSION_0 of inst : label is 2;
  attribute C_PF0_ENTRY_MINOR_VERSION_1 : integer;
  attribute C_PF0_ENTRY_MINOR_VERSION_1 of inst : label is 0;
  attribute C_PF0_ENTRY_MINOR_VERSION_10 : integer;
  attribute C_PF0_ENTRY_MINOR_VERSION_10 of inst : label is 0;
  attribute C_PF0_ENTRY_MINOR_VERSION_11 : integer;
  attribute C_PF0_ENTRY_MINOR_VERSION_11 of inst : label is 0;
  attribute C_PF0_ENTRY_MINOR_VERSION_12 : integer;
  attribute C_PF0_ENTRY_MINOR_VERSION_12 of inst : label is 0;
  attribute C_PF0_ENTRY_MINOR_VERSION_13 : integer;
  attribute C_PF0_ENTRY_MINOR_VERSION_13 of inst : label is 0;
  attribute C_PF0_ENTRY_MINOR_VERSION_14 : integer;
  attribute C_PF0_ENTRY_MINOR_VERSION_14 of inst : label is 0;
  attribute C_PF0_ENTRY_MINOR_VERSION_15 : integer;
  attribute C_PF0_ENTRY_MINOR_VERSION_15 of inst : label is 0;
  attribute C_PF0_ENTRY_MINOR_VERSION_2 : integer;
  attribute C_PF0_ENTRY_MINOR_VERSION_2 of inst : label is 0;
  attribute C_PF0_ENTRY_MINOR_VERSION_3 : integer;
  attribute C_PF0_ENTRY_MINOR_VERSION_3 of inst : label is 0;
  attribute C_PF0_ENTRY_MINOR_VERSION_4 : integer;
  attribute C_PF0_ENTRY_MINOR_VERSION_4 of inst : label is 0;
  attribute C_PF0_ENTRY_MINOR_VERSION_5 : integer;
  attribute C_PF0_ENTRY_MINOR_VERSION_5 of inst : label is 0;
  attribute C_PF0_ENTRY_MINOR_VERSION_6 : integer;
  attribute C_PF0_ENTRY_MINOR_VERSION_6 of inst : label is 0;
  attribute C_PF0_ENTRY_MINOR_VERSION_7 : integer;
  attribute C_PF0_ENTRY_MINOR_VERSION_7 of inst : label is 0;
  attribute C_PF0_ENTRY_MINOR_VERSION_8 : integer;
  attribute C_PF0_ENTRY_MINOR_VERSION_8 of inst : label is 0;
  attribute C_PF0_ENTRY_MINOR_VERSION_9 : integer;
  attribute C_PF0_ENTRY_MINOR_VERSION_9 of inst : label is 0;
  attribute C_PF0_ENTRY_RSVD0_0 : string;
  attribute C_PF0_ENTRY_RSVD0_0 of inst : label is "4'b0000";
  attribute C_PF0_ENTRY_RSVD0_1 : string;
  attribute C_PF0_ENTRY_RSVD0_1 of inst : label is "4'b0011";
  attribute C_PF0_ENTRY_RSVD0_10 : string;
  attribute C_PF0_ENTRY_RSVD0_10 of inst : label is "4'b0000";
  attribute C_PF0_ENTRY_RSVD0_11 : string;
  attribute C_PF0_ENTRY_RSVD0_11 of inst : label is "4'b0000";
  attribute C_PF0_ENTRY_RSVD0_12 : string;
  attribute C_PF0_ENTRY_RSVD0_12 of inst : label is "4'b0000";
  attribute C_PF0_ENTRY_RSVD0_13 : string;
  attribute C_PF0_ENTRY_RSVD0_13 of inst : label is "4'b0000";
  attribute C_PF0_ENTRY_RSVD0_14 : string;
  attribute C_PF0_ENTRY_RSVD0_14 of inst : label is "4'b0000";
  attribute C_PF0_ENTRY_RSVD0_15 : string;
  attribute C_PF0_ENTRY_RSVD0_15 of inst : label is "4'b0000";
  attribute C_PF0_ENTRY_RSVD0_2 : string;
  attribute C_PF0_ENTRY_RSVD0_2 of inst : label is "4'b0000";
  attribute C_PF0_ENTRY_RSVD0_3 : string;
  attribute C_PF0_ENTRY_RSVD0_3 of inst : label is "4'b0000";
  attribute C_PF0_ENTRY_RSVD0_4 : string;
  attribute C_PF0_ENTRY_RSVD0_4 of inst : label is "4'b0000";
  attribute C_PF0_ENTRY_RSVD0_5 : string;
  attribute C_PF0_ENTRY_RSVD0_5 of inst : label is "4'b0000";
  attribute C_PF0_ENTRY_RSVD0_6 : string;
  attribute C_PF0_ENTRY_RSVD0_6 of inst : label is "4'b0000";
  attribute C_PF0_ENTRY_RSVD0_7 : string;
  attribute C_PF0_ENTRY_RSVD0_7 of inst : label is "4'b0000";
  attribute C_PF0_ENTRY_RSVD0_8 : string;
  attribute C_PF0_ENTRY_RSVD0_8 of inst : label is "4'b0000";
  attribute C_PF0_ENTRY_RSVD0_9 : string;
  attribute C_PF0_ENTRY_RSVD0_9 of inst : label is "4'b0000";
  attribute C_PF0_ENTRY_TYPE_0 : string;
  attribute C_PF0_ENTRY_TYPE_0 of inst : label is "8'b01010100";
  attribute C_PF0_ENTRY_TYPE_1 : string;
  attribute C_PF0_ENTRY_TYPE_1 of inst : label is "8'b01010011";
  attribute C_PF0_ENTRY_TYPE_10 : string;
  attribute C_PF0_ENTRY_TYPE_10 of inst : label is "8'b00000000";
  attribute C_PF0_ENTRY_TYPE_11 : string;
  attribute C_PF0_ENTRY_TYPE_11 of inst : label is "8'b00000000";
  attribute C_PF0_ENTRY_TYPE_12 : string;
  attribute C_PF0_ENTRY_TYPE_12 of inst : label is "8'b00000000";
  attribute C_PF0_ENTRY_TYPE_13 : string;
  attribute C_PF0_ENTRY_TYPE_13 of inst : label is "8'b00000000";
  attribute C_PF0_ENTRY_TYPE_14 : string;
  attribute C_PF0_ENTRY_TYPE_14 of inst : label is "8'b00000000";
  attribute C_PF0_ENTRY_TYPE_15 : string;
  attribute C_PF0_ENTRY_TYPE_15 of inst : label is "8'b00000000";
  attribute C_PF0_ENTRY_TYPE_2 : string;
  attribute C_PF0_ENTRY_TYPE_2 of inst : label is "8'b01010101";
  attribute C_PF0_ENTRY_TYPE_3 : string;
  attribute C_PF0_ENTRY_TYPE_3 of inst : label is "8'b01010000";
  attribute C_PF0_ENTRY_TYPE_4 : string;
  attribute C_PF0_ENTRY_TYPE_4 of inst : label is "8'b00000000";
  attribute C_PF0_ENTRY_TYPE_5 : string;
  attribute C_PF0_ENTRY_TYPE_5 of inst : label is "8'b00000000";
  attribute C_PF0_ENTRY_TYPE_6 : string;
  attribute C_PF0_ENTRY_TYPE_6 of inst : label is "8'b00000000";
  attribute C_PF0_ENTRY_TYPE_7 : string;
  attribute C_PF0_ENTRY_TYPE_7 of inst : label is "8'b00000000";
  attribute C_PF0_ENTRY_TYPE_8 : string;
  attribute C_PF0_ENTRY_TYPE_8 of inst : label is "8'b00000000";
  attribute C_PF0_ENTRY_TYPE_9 : string;
  attribute C_PF0_ENTRY_TYPE_9 of inst : label is "8'b00000000";
  attribute C_PF0_ENTRY_VERSION_TYPE_0 : string;
  attribute C_PF0_ENTRY_VERSION_TYPE_0 of inst : label is "8'b00000001";
  attribute C_PF0_ENTRY_VERSION_TYPE_1 : string;
  attribute C_PF0_ENTRY_VERSION_TYPE_1 of inst : label is "8'b00000001";
  attribute C_PF0_ENTRY_VERSION_TYPE_10 : string;
  attribute C_PF0_ENTRY_VERSION_TYPE_10 of inst : label is "8'b00000000";
  attribute C_PF0_ENTRY_VERSION_TYPE_11 : string;
  attribute C_PF0_ENTRY_VERSION_TYPE_11 of inst : label is "8'b00000000";
  attribute C_PF0_ENTRY_VERSION_TYPE_12 : string;
  attribute C_PF0_ENTRY_VERSION_TYPE_12 of inst : label is "8'b00000000";
  attribute C_PF0_ENTRY_VERSION_TYPE_13 : string;
  attribute C_PF0_ENTRY_VERSION_TYPE_13 of inst : label is "8'b00000000";
  attribute C_PF0_ENTRY_VERSION_TYPE_14 : string;
  attribute C_PF0_ENTRY_VERSION_TYPE_14 of inst : label is "8'b00000000";
  attribute C_PF0_ENTRY_VERSION_TYPE_15 : string;
  attribute C_PF0_ENTRY_VERSION_TYPE_15 of inst : label is "8'b00000000";
  attribute C_PF0_ENTRY_VERSION_TYPE_2 : string;
  attribute C_PF0_ENTRY_VERSION_TYPE_2 of inst : label is "8'b00000001";
  attribute C_PF0_ENTRY_VERSION_TYPE_3 : string;
  attribute C_PF0_ENTRY_VERSION_TYPE_3 of inst : label is "8'b00000001";
  attribute C_PF0_ENTRY_VERSION_TYPE_4 : string;
  attribute C_PF0_ENTRY_VERSION_TYPE_4 of inst : label is "8'b00000000";
  attribute C_PF0_ENTRY_VERSION_TYPE_5 : string;
  attribute C_PF0_ENTRY_VERSION_TYPE_5 of inst : label is "8'b00000000";
  attribute C_PF0_ENTRY_VERSION_TYPE_6 : string;
  attribute C_PF0_ENTRY_VERSION_TYPE_6 of inst : label is "8'b00000000";
  attribute C_PF0_ENTRY_VERSION_TYPE_7 : string;
  attribute C_PF0_ENTRY_VERSION_TYPE_7 of inst : label is "8'b00000000";
  attribute C_PF0_ENTRY_VERSION_TYPE_8 : string;
  attribute C_PF0_ENTRY_VERSION_TYPE_8 of inst : label is "8'b00000000";
  attribute C_PF0_ENTRY_VERSION_TYPE_9 : string;
  attribute C_PF0_ENTRY_VERSION_TYPE_9 of inst : label is "8'b00000000";
  attribute C_PF0_HAS_UUID_ROM : integer;
  attribute C_PF0_HAS_UUID_ROM of inst : label is 0;
  attribute C_PF0_HIGH_OFFSET : integer;
  attribute C_PF0_HIGH_OFFSET of inst : label is 0;
  attribute C_PF0_LOW_OFFSET : string;
  attribute C_PF0_LOW_OFFSET of inst : label is "28'b0000001000000000000100000000";
  attribute C_PF0_NUM_SLOTS_BAR_LAYOUT_TABLE : integer;
  attribute C_PF0_NUM_SLOTS_BAR_LAYOUT_TABLE of inst : label is 4;
  attribute C_PF0_S_AXI_ADDR_WIDTH : integer;
  attribute C_PF0_S_AXI_ADDR_WIDTH of inst : label is 32;
  attribute C_PF0_S_AXI_DATA_WIDTH : integer;
  attribute C_PF0_S_AXI_DATA_WIDTH of inst : label is 32;
  attribute C_PF0_UUID_ROM_INIT : string;
  attribute C_PF0_UUID_ROM_INIT of inst : label is "00000000,00000000,00000000,00000000";
  attribute C_PF1_BAR_INDEX : integer;
  attribute C_PF1_BAR_INDEX of inst : label is 2;
  attribute C_PF1_ENTRY_ADDR_0 : string;
  attribute C_PF1_ENTRY_ADDR_0 of inst : label is "48'b000000000000000000000010000000000000000000000000";
  attribute C_PF1_ENTRY_ADDR_1 : string;
  attribute C_PF1_ENTRY_ADDR_1 of inst : label is "48'b000000000000000000000000000000000000000000000000";
  attribute C_PF1_ENTRY_ADDR_10 : string;
  attribute C_PF1_ENTRY_ADDR_10 of inst : label is "48'b000000000000000000000000000000000000000000000000";
  attribute C_PF1_ENTRY_ADDR_11 : string;
  attribute C_PF1_ENTRY_ADDR_11 of inst : label is "48'b000000000000000000000000000000000000000000000000";
  attribute C_PF1_ENTRY_ADDR_12 : string;
  attribute C_PF1_ENTRY_ADDR_12 of inst : label is "48'b000000000000000000000000000000000000000000000000";
  attribute C_PF1_ENTRY_ADDR_13 : string;
  attribute C_PF1_ENTRY_ADDR_13 of inst : label is "48'b000000000000000000000000000000000000000000000000";
  attribute C_PF1_ENTRY_ADDR_14 : string;
  attribute C_PF1_ENTRY_ADDR_14 of inst : label is "48'b000000000000000000000000000000000000000000000000";
  attribute C_PF1_ENTRY_ADDR_15 : string;
  attribute C_PF1_ENTRY_ADDR_15 of inst : label is "48'b000000000000000000000000000000000000000000000000";
  attribute C_PF1_ENTRY_ADDR_2 : string;
  attribute C_PF1_ENTRY_ADDR_2 of inst : label is "48'b000000000000000000000000000000000000000000000000";
  attribute C_PF1_ENTRY_ADDR_3 : string;
  attribute C_PF1_ENTRY_ADDR_3 of inst : label is "48'b000000000000000000000000000000000000000000000000";
  attribute C_PF1_ENTRY_ADDR_4 : string;
  attribute C_PF1_ENTRY_ADDR_4 of inst : label is "48'b000000000000000000000000000000000000000000000000";
  attribute C_PF1_ENTRY_ADDR_5 : string;
  attribute C_PF1_ENTRY_ADDR_5 of inst : label is "48'b000000000000000000000000000000000000000000000000";
  attribute C_PF1_ENTRY_ADDR_6 : string;
  attribute C_PF1_ENTRY_ADDR_6 of inst : label is "48'b000000000000000000000000000000000000000000000000";
  attribute C_PF1_ENTRY_ADDR_7 : string;
  attribute C_PF1_ENTRY_ADDR_7 of inst : label is "48'b000000000000000000000000000000000000000000000000";
  attribute C_PF1_ENTRY_ADDR_8 : string;
  attribute C_PF1_ENTRY_ADDR_8 of inst : label is "48'b000000000000000000000000000000000000000000000000";
  attribute C_PF1_ENTRY_ADDR_9 : string;
  attribute C_PF1_ENTRY_ADDR_9 of inst : label is "48'b000000000000000000000000000000000000000000000000";
  attribute C_PF1_ENTRY_BAR_0 : integer;
  attribute C_PF1_ENTRY_BAR_0 of inst : label is 2;
  attribute C_PF1_ENTRY_BAR_1 : integer;
  attribute C_PF1_ENTRY_BAR_1 of inst : label is 0;
  attribute C_PF1_ENTRY_BAR_10 : integer;
  attribute C_PF1_ENTRY_BAR_10 of inst : label is 0;
  attribute C_PF1_ENTRY_BAR_11 : integer;
  attribute C_PF1_ENTRY_BAR_11 of inst : label is 0;
  attribute C_PF1_ENTRY_BAR_12 : integer;
  attribute C_PF1_ENTRY_BAR_12 of inst : label is 0;
  attribute C_PF1_ENTRY_BAR_13 : integer;
  attribute C_PF1_ENTRY_BAR_13 of inst : label is 0;
  attribute C_PF1_ENTRY_BAR_14 : integer;
  attribute C_PF1_ENTRY_BAR_14 of inst : label is 0;
  attribute C_PF1_ENTRY_BAR_15 : integer;
  attribute C_PF1_ENTRY_BAR_15 of inst : label is 0;
  attribute C_PF1_ENTRY_BAR_2 : integer;
  attribute C_PF1_ENTRY_BAR_2 of inst : label is 0;
  attribute C_PF1_ENTRY_BAR_3 : integer;
  attribute C_PF1_ENTRY_BAR_3 of inst : label is 0;
  attribute C_PF1_ENTRY_BAR_4 : integer;
  attribute C_PF1_ENTRY_BAR_4 of inst : label is 0;
  attribute C_PF1_ENTRY_BAR_5 : integer;
  attribute C_PF1_ENTRY_BAR_5 of inst : label is 0;
  attribute C_PF1_ENTRY_BAR_6 : integer;
  attribute C_PF1_ENTRY_BAR_6 of inst : label is 0;
  attribute C_PF1_ENTRY_BAR_7 : integer;
  attribute C_PF1_ENTRY_BAR_7 of inst : label is 0;
  attribute C_PF1_ENTRY_BAR_8 : integer;
  attribute C_PF1_ENTRY_BAR_8 of inst : label is 0;
  attribute C_PF1_ENTRY_BAR_9 : integer;
  attribute C_PF1_ENTRY_BAR_9 of inst : label is 0;
  attribute C_PF1_ENTRY_MAJOR_VERSION_0 : integer;
  attribute C_PF1_ENTRY_MAJOR_VERSION_0 of inst : label is 1;
  attribute C_PF1_ENTRY_MAJOR_VERSION_1 : integer;
  attribute C_PF1_ENTRY_MAJOR_VERSION_1 of inst : label is 0;
  attribute C_PF1_ENTRY_MAJOR_VERSION_10 : integer;
  attribute C_PF1_ENTRY_MAJOR_VERSION_10 of inst : label is 0;
  attribute C_PF1_ENTRY_MAJOR_VERSION_11 : integer;
  attribute C_PF1_ENTRY_MAJOR_VERSION_11 of inst : label is 0;
  attribute C_PF1_ENTRY_MAJOR_VERSION_12 : integer;
  attribute C_PF1_ENTRY_MAJOR_VERSION_12 of inst : label is 0;
  attribute C_PF1_ENTRY_MAJOR_VERSION_13 : integer;
  attribute C_PF1_ENTRY_MAJOR_VERSION_13 of inst : label is 0;
  attribute C_PF1_ENTRY_MAJOR_VERSION_14 : integer;
  attribute C_PF1_ENTRY_MAJOR_VERSION_14 of inst : label is 0;
  attribute C_PF1_ENTRY_MAJOR_VERSION_15 : integer;
  attribute C_PF1_ENTRY_MAJOR_VERSION_15 of inst : label is 0;
  attribute C_PF1_ENTRY_MAJOR_VERSION_2 : integer;
  attribute C_PF1_ENTRY_MAJOR_VERSION_2 of inst : label is 0;
  attribute C_PF1_ENTRY_MAJOR_VERSION_3 : integer;
  attribute C_PF1_ENTRY_MAJOR_VERSION_3 of inst : label is 0;
  attribute C_PF1_ENTRY_MAJOR_VERSION_4 : integer;
  attribute C_PF1_ENTRY_MAJOR_VERSION_4 of inst : label is 0;
  attribute C_PF1_ENTRY_MAJOR_VERSION_5 : integer;
  attribute C_PF1_ENTRY_MAJOR_VERSION_5 of inst : label is 0;
  attribute C_PF1_ENTRY_MAJOR_VERSION_6 : integer;
  attribute C_PF1_ENTRY_MAJOR_VERSION_6 of inst : label is 0;
  attribute C_PF1_ENTRY_MAJOR_VERSION_7 : integer;
  attribute C_PF1_ENTRY_MAJOR_VERSION_7 of inst : label is 0;
  attribute C_PF1_ENTRY_MAJOR_VERSION_8 : integer;
  attribute C_PF1_ENTRY_MAJOR_VERSION_8 of inst : label is 0;
  attribute C_PF1_ENTRY_MAJOR_VERSION_9 : integer;
  attribute C_PF1_ENTRY_MAJOR_VERSION_9 of inst : label is 0;
  attribute C_PF1_ENTRY_MINOR_VERSION_0 : integer;
  attribute C_PF1_ENTRY_MINOR_VERSION_0 of inst : label is 0;
  attribute C_PF1_ENTRY_MINOR_VERSION_1 : integer;
  attribute C_PF1_ENTRY_MINOR_VERSION_1 of inst : label is 0;
  attribute C_PF1_ENTRY_MINOR_VERSION_10 : integer;
  attribute C_PF1_ENTRY_MINOR_VERSION_10 of inst : label is 0;
  attribute C_PF1_ENTRY_MINOR_VERSION_11 : integer;
  attribute C_PF1_ENTRY_MINOR_VERSION_11 of inst : label is 0;
  attribute C_PF1_ENTRY_MINOR_VERSION_12 : integer;
  attribute C_PF1_ENTRY_MINOR_VERSION_12 of inst : label is 0;
  attribute C_PF1_ENTRY_MINOR_VERSION_13 : integer;
  attribute C_PF1_ENTRY_MINOR_VERSION_13 of inst : label is 0;
  attribute C_PF1_ENTRY_MINOR_VERSION_14 : integer;
  attribute C_PF1_ENTRY_MINOR_VERSION_14 of inst : label is 0;
  attribute C_PF1_ENTRY_MINOR_VERSION_15 : integer;
  attribute C_PF1_ENTRY_MINOR_VERSION_15 of inst : label is 0;
  attribute C_PF1_ENTRY_MINOR_VERSION_2 : integer;
  attribute C_PF1_ENTRY_MINOR_VERSION_2 of inst : label is 0;
  attribute C_PF1_ENTRY_MINOR_VERSION_3 : integer;
  attribute C_PF1_ENTRY_MINOR_VERSION_3 of inst : label is 0;
  attribute C_PF1_ENTRY_MINOR_VERSION_4 : integer;
  attribute C_PF1_ENTRY_MINOR_VERSION_4 of inst : label is 0;
  attribute C_PF1_ENTRY_MINOR_VERSION_5 : integer;
  attribute C_PF1_ENTRY_MINOR_VERSION_5 of inst : label is 0;
  attribute C_PF1_ENTRY_MINOR_VERSION_6 : integer;
  attribute C_PF1_ENTRY_MINOR_VERSION_6 of inst : label is 0;
  attribute C_PF1_ENTRY_MINOR_VERSION_7 : integer;
  attribute C_PF1_ENTRY_MINOR_VERSION_7 of inst : label is 0;
  attribute C_PF1_ENTRY_MINOR_VERSION_8 : integer;
  attribute C_PF1_ENTRY_MINOR_VERSION_8 of inst : label is 0;
  attribute C_PF1_ENTRY_MINOR_VERSION_9 : integer;
  attribute C_PF1_ENTRY_MINOR_VERSION_9 of inst : label is 0;
  attribute C_PF1_ENTRY_RSVD0_0 : string;
  attribute C_PF1_ENTRY_RSVD0_0 of inst : label is "4'b0001";
  attribute C_PF1_ENTRY_RSVD0_1 : string;
  attribute C_PF1_ENTRY_RSVD0_1 of inst : label is "4'b0000";
  attribute C_PF1_ENTRY_RSVD0_10 : string;
  attribute C_PF1_ENTRY_RSVD0_10 of inst : label is "4'b0000";
  attribute C_PF1_ENTRY_RSVD0_11 : string;
  attribute C_PF1_ENTRY_RSVD0_11 of inst : label is "4'b0000";
  attribute C_PF1_ENTRY_RSVD0_12 : string;
  attribute C_PF1_ENTRY_RSVD0_12 of inst : label is "4'b0000";
  attribute C_PF1_ENTRY_RSVD0_13 : string;
  attribute C_PF1_ENTRY_RSVD0_13 of inst : label is "4'b0000";
  attribute C_PF1_ENTRY_RSVD0_14 : string;
  attribute C_PF1_ENTRY_RSVD0_14 of inst : label is "4'b0000";
  attribute C_PF1_ENTRY_RSVD0_15 : string;
  attribute C_PF1_ENTRY_RSVD0_15 of inst : label is "4'b0000";
  attribute C_PF1_ENTRY_RSVD0_2 : string;
  attribute C_PF1_ENTRY_RSVD0_2 of inst : label is "4'b0000";
  attribute C_PF1_ENTRY_RSVD0_3 : string;
  attribute C_PF1_ENTRY_RSVD0_3 of inst : label is "4'b0000";
  attribute C_PF1_ENTRY_RSVD0_4 : string;
  attribute C_PF1_ENTRY_RSVD0_4 of inst : label is "4'b0000";
  attribute C_PF1_ENTRY_RSVD0_5 : string;
  attribute C_PF1_ENTRY_RSVD0_5 of inst : label is "4'b0000";
  attribute C_PF1_ENTRY_RSVD0_6 : string;
  attribute C_PF1_ENTRY_RSVD0_6 of inst : label is "4'b0000";
  attribute C_PF1_ENTRY_RSVD0_7 : string;
  attribute C_PF1_ENTRY_RSVD0_7 of inst : label is "4'b0000";
  attribute C_PF1_ENTRY_RSVD0_8 : string;
  attribute C_PF1_ENTRY_RSVD0_8 of inst : label is "4'b0000";
  attribute C_PF1_ENTRY_RSVD0_9 : string;
  attribute C_PF1_ENTRY_RSVD0_9 of inst : label is "4'b0000";
  attribute C_PF1_ENTRY_TYPE_0 : string;
  attribute C_PF1_ENTRY_TYPE_0 of inst : label is "8'b01010011";
  attribute C_PF1_ENTRY_TYPE_1 : string;
  attribute C_PF1_ENTRY_TYPE_1 of inst : label is "8'b00000000";
  attribute C_PF1_ENTRY_TYPE_10 : string;
  attribute C_PF1_ENTRY_TYPE_10 of inst : label is "8'b00000000";
  attribute C_PF1_ENTRY_TYPE_11 : string;
  attribute C_PF1_ENTRY_TYPE_11 of inst : label is "8'b00000000";
  attribute C_PF1_ENTRY_TYPE_12 : string;
  attribute C_PF1_ENTRY_TYPE_12 of inst : label is "8'b00000000";
  attribute C_PF1_ENTRY_TYPE_13 : string;
  attribute C_PF1_ENTRY_TYPE_13 of inst : label is "8'b00000000";
  attribute C_PF1_ENTRY_TYPE_14 : string;
  attribute C_PF1_ENTRY_TYPE_14 of inst : label is "8'b00000000";
  attribute C_PF1_ENTRY_TYPE_15 : string;
  attribute C_PF1_ENTRY_TYPE_15 of inst : label is "8'b00000000";
  attribute C_PF1_ENTRY_TYPE_2 : string;
  attribute C_PF1_ENTRY_TYPE_2 of inst : label is "8'b00000000";
  attribute C_PF1_ENTRY_TYPE_3 : string;
  attribute C_PF1_ENTRY_TYPE_3 of inst : label is "8'b00000000";
  attribute C_PF1_ENTRY_TYPE_4 : string;
  attribute C_PF1_ENTRY_TYPE_4 of inst : label is "8'b00000000";
  attribute C_PF1_ENTRY_TYPE_5 : string;
  attribute C_PF1_ENTRY_TYPE_5 of inst : label is "8'b00000000";
  attribute C_PF1_ENTRY_TYPE_6 : string;
  attribute C_PF1_ENTRY_TYPE_6 of inst : label is "8'b00000000";
  attribute C_PF1_ENTRY_TYPE_7 : string;
  attribute C_PF1_ENTRY_TYPE_7 of inst : label is "8'b00000000";
  attribute C_PF1_ENTRY_TYPE_8 : string;
  attribute C_PF1_ENTRY_TYPE_8 of inst : label is "8'b00000000";
  attribute C_PF1_ENTRY_TYPE_9 : string;
  attribute C_PF1_ENTRY_TYPE_9 of inst : label is "8'b00000000";
  attribute C_PF1_ENTRY_VERSION_TYPE_0 : string;
  attribute C_PF1_ENTRY_VERSION_TYPE_0 of inst : label is "8'b00000001";
  attribute C_PF1_ENTRY_VERSION_TYPE_1 : string;
  attribute C_PF1_ENTRY_VERSION_TYPE_1 of inst : label is "8'b00000000";
  attribute C_PF1_ENTRY_VERSION_TYPE_10 : string;
  attribute C_PF1_ENTRY_VERSION_TYPE_10 of inst : label is "8'b00000000";
  attribute C_PF1_ENTRY_VERSION_TYPE_11 : string;
  attribute C_PF1_ENTRY_VERSION_TYPE_11 of inst : label is "8'b00000000";
  attribute C_PF1_ENTRY_VERSION_TYPE_12 : string;
  attribute C_PF1_ENTRY_VERSION_TYPE_12 of inst : label is "8'b00000000";
  attribute C_PF1_ENTRY_VERSION_TYPE_13 : string;
  attribute C_PF1_ENTRY_VERSION_TYPE_13 of inst : label is "8'b00000000";
  attribute C_PF1_ENTRY_VERSION_TYPE_14 : string;
  attribute C_PF1_ENTRY_VERSION_TYPE_14 of inst : label is "8'b00000000";
  attribute C_PF1_ENTRY_VERSION_TYPE_15 : string;
  attribute C_PF1_ENTRY_VERSION_TYPE_15 of inst : label is "8'b00000000";
  attribute C_PF1_ENTRY_VERSION_TYPE_2 : string;
  attribute C_PF1_ENTRY_VERSION_TYPE_2 of inst : label is "8'b00000000";
  attribute C_PF1_ENTRY_VERSION_TYPE_3 : string;
  attribute C_PF1_ENTRY_VERSION_TYPE_3 of inst : label is "8'b00000000";
  attribute C_PF1_ENTRY_VERSION_TYPE_4 : string;
  attribute C_PF1_ENTRY_VERSION_TYPE_4 of inst : label is "8'b00000000";
  attribute C_PF1_ENTRY_VERSION_TYPE_5 : string;
  attribute C_PF1_ENTRY_VERSION_TYPE_5 of inst : label is "8'b00000000";
  attribute C_PF1_ENTRY_VERSION_TYPE_6 : string;
  attribute C_PF1_ENTRY_VERSION_TYPE_6 of inst : label is "8'b00000000";
  attribute C_PF1_ENTRY_VERSION_TYPE_7 : string;
  attribute C_PF1_ENTRY_VERSION_TYPE_7 of inst : label is "8'b00000000";
  attribute C_PF1_ENTRY_VERSION_TYPE_8 : string;
  attribute C_PF1_ENTRY_VERSION_TYPE_8 of inst : label is "8'b00000000";
  attribute C_PF1_ENTRY_VERSION_TYPE_9 : string;
  attribute C_PF1_ENTRY_VERSION_TYPE_9 of inst : label is "8'b00000000";
  attribute C_PF1_HAS_UUID_ROM : integer;
  attribute C_PF1_HAS_UUID_ROM of inst : label is 0;
  attribute C_PF1_HIGH_OFFSET : integer;
  attribute C_PF1_HIGH_OFFSET of inst : label is 0;
  attribute C_PF1_LOW_OFFSET : string;
  attribute C_PF1_LOW_OFFSET of inst : label is "28'b0000001000000000000100000000";
  attribute C_PF1_NUM_SLOTS_BAR_LAYOUT_TABLE : integer;
  attribute C_PF1_NUM_SLOTS_BAR_LAYOUT_TABLE of inst : label is 1;
  attribute C_PF1_S_AXI_ADDR_WIDTH : integer;
  attribute C_PF1_S_AXI_ADDR_WIDTH of inst : label is 32;
  attribute C_PF1_S_AXI_DATA_WIDTH : integer;
  attribute C_PF1_S_AXI_DATA_WIDTH of inst : label is 32;
  attribute C_PF1_UUID_ROM_INIT : string;
  attribute C_PF1_UUID_ROM_INIT of inst : label is "00000000,00000000,00000000,00000000";
  attribute C_PF2_BAR_INDEX : integer;
  attribute C_PF2_BAR_INDEX of inst : label is 0;
  attribute C_PF2_ENTRY_ADDR_0 : string;
  attribute C_PF2_ENTRY_ADDR_0 of inst : label is "48'b000000000000000000000000000000000000000000000000";
  attribute C_PF2_ENTRY_ADDR_1 : string;
  attribute C_PF2_ENTRY_ADDR_1 of inst : label is "48'b000000000000000000000000000000000000000000000000";
  attribute C_PF2_ENTRY_ADDR_10 : string;
  attribute C_PF2_ENTRY_ADDR_10 of inst : label is "48'b000000000000000000000000000000000000000000000000";
  attribute C_PF2_ENTRY_ADDR_11 : string;
  attribute C_PF2_ENTRY_ADDR_11 of inst : label is "48'b000000000000000000000000000000000000000000000000";
  attribute C_PF2_ENTRY_ADDR_12 : string;
  attribute C_PF2_ENTRY_ADDR_12 of inst : label is "48'b000000000000000000000000000000000000000000000000";
  attribute C_PF2_ENTRY_ADDR_13 : string;
  attribute C_PF2_ENTRY_ADDR_13 of inst : label is "48'b000000000000000000000000000000000000000000000000";
  attribute C_PF2_ENTRY_ADDR_14 : string;
  attribute C_PF2_ENTRY_ADDR_14 of inst : label is "48'b000000000000000000000000000000000000000000000000";
  attribute C_PF2_ENTRY_ADDR_15 : string;
  attribute C_PF2_ENTRY_ADDR_15 of inst : label is "48'b000000000000000000000000000000000000000000000000";
  attribute C_PF2_ENTRY_ADDR_2 : string;
  attribute C_PF2_ENTRY_ADDR_2 of inst : label is "48'b000000000000000000000000000000000000000000000000";
  attribute C_PF2_ENTRY_ADDR_3 : string;
  attribute C_PF2_ENTRY_ADDR_3 of inst : label is "48'b000000000000000000000000000000000000000000000000";
  attribute C_PF2_ENTRY_ADDR_4 : string;
  attribute C_PF2_ENTRY_ADDR_4 of inst : label is "48'b000000000000000000000000000000000000000000000000";
  attribute C_PF2_ENTRY_ADDR_5 : string;
  attribute C_PF2_ENTRY_ADDR_5 of inst : label is "48'b000000000000000000000000000000000000000000000000";
  attribute C_PF2_ENTRY_ADDR_6 : string;
  attribute C_PF2_ENTRY_ADDR_6 of inst : label is "48'b000000000000000000000000000000000000000000000000";
  attribute C_PF2_ENTRY_ADDR_7 : string;
  attribute C_PF2_ENTRY_ADDR_7 of inst : label is "48'b000000000000000000000000000000000000000000000000";
  attribute C_PF2_ENTRY_ADDR_8 : string;
  attribute C_PF2_ENTRY_ADDR_8 of inst : label is "48'b000000000000000000000000000000000000000000000000";
  attribute C_PF2_ENTRY_ADDR_9 : string;
  attribute C_PF2_ENTRY_ADDR_9 of inst : label is "48'b000000000000000000000000000000000000000000000000";
  attribute C_PF2_ENTRY_BAR_0 : integer;
  attribute C_PF2_ENTRY_BAR_0 of inst : label is 0;
  attribute C_PF2_ENTRY_BAR_1 : integer;
  attribute C_PF2_ENTRY_BAR_1 of inst : label is 0;
  attribute C_PF2_ENTRY_BAR_10 : integer;
  attribute C_PF2_ENTRY_BAR_10 of inst : label is 0;
  attribute C_PF2_ENTRY_BAR_11 : integer;
  attribute C_PF2_ENTRY_BAR_11 of inst : label is 0;
  attribute C_PF2_ENTRY_BAR_12 : integer;
  attribute C_PF2_ENTRY_BAR_12 of inst : label is 0;
  attribute C_PF2_ENTRY_BAR_13 : integer;
  attribute C_PF2_ENTRY_BAR_13 of inst : label is 0;
  attribute C_PF2_ENTRY_BAR_14 : integer;
  attribute C_PF2_ENTRY_BAR_14 of inst : label is 0;
  attribute C_PF2_ENTRY_BAR_15 : integer;
  attribute C_PF2_ENTRY_BAR_15 of inst : label is 0;
  attribute C_PF2_ENTRY_BAR_2 : integer;
  attribute C_PF2_ENTRY_BAR_2 of inst : label is 0;
  attribute C_PF2_ENTRY_BAR_3 : integer;
  attribute C_PF2_ENTRY_BAR_3 of inst : label is 0;
  attribute C_PF2_ENTRY_BAR_4 : integer;
  attribute C_PF2_ENTRY_BAR_4 of inst : label is 0;
  attribute C_PF2_ENTRY_BAR_5 : integer;
  attribute C_PF2_ENTRY_BAR_5 of inst : label is 0;
  attribute C_PF2_ENTRY_BAR_6 : integer;
  attribute C_PF2_ENTRY_BAR_6 of inst : label is 0;
  attribute C_PF2_ENTRY_BAR_7 : integer;
  attribute C_PF2_ENTRY_BAR_7 of inst : label is 0;
  attribute C_PF2_ENTRY_BAR_8 : integer;
  attribute C_PF2_ENTRY_BAR_8 of inst : label is 0;
  attribute C_PF2_ENTRY_BAR_9 : integer;
  attribute C_PF2_ENTRY_BAR_9 of inst : label is 0;
  attribute C_PF2_ENTRY_MAJOR_VERSION_0 : integer;
  attribute C_PF2_ENTRY_MAJOR_VERSION_0 of inst : label is 0;
  attribute C_PF2_ENTRY_MAJOR_VERSION_1 : integer;
  attribute C_PF2_ENTRY_MAJOR_VERSION_1 of inst : label is 0;
  attribute C_PF2_ENTRY_MAJOR_VERSION_10 : integer;
  attribute C_PF2_ENTRY_MAJOR_VERSION_10 of inst : label is 0;
  attribute C_PF2_ENTRY_MAJOR_VERSION_11 : integer;
  attribute C_PF2_ENTRY_MAJOR_VERSION_11 of inst : label is 0;
  attribute C_PF2_ENTRY_MAJOR_VERSION_12 : integer;
  attribute C_PF2_ENTRY_MAJOR_VERSION_12 of inst : label is 0;
  attribute C_PF2_ENTRY_MAJOR_VERSION_13 : integer;
  attribute C_PF2_ENTRY_MAJOR_VERSION_13 of inst : label is 0;
  attribute C_PF2_ENTRY_MAJOR_VERSION_14 : integer;
  attribute C_PF2_ENTRY_MAJOR_VERSION_14 of inst : label is 0;
  attribute C_PF2_ENTRY_MAJOR_VERSION_15 : integer;
  attribute C_PF2_ENTRY_MAJOR_VERSION_15 of inst : label is 0;
  attribute C_PF2_ENTRY_MAJOR_VERSION_2 : integer;
  attribute C_PF2_ENTRY_MAJOR_VERSION_2 of inst : label is 0;
  attribute C_PF2_ENTRY_MAJOR_VERSION_3 : integer;
  attribute C_PF2_ENTRY_MAJOR_VERSION_3 of inst : label is 0;
  attribute C_PF2_ENTRY_MAJOR_VERSION_4 : integer;
  attribute C_PF2_ENTRY_MAJOR_VERSION_4 of inst : label is 0;
  attribute C_PF2_ENTRY_MAJOR_VERSION_5 : integer;
  attribute C_PF2_ENTRY_MAJOR_VERSION_5 of inst : label is 0;
  attribute C_PF2_ENTRY_MAJOR_VERSION_6 : integer;
  attribute C_PF2_ENTRY_MAJOR_VERSION_6 of inst : label is 0;
  attribute C_PF2_ENTRY_MAJOR_VERSION_7 : integer;
  attribute C_PF2_ENTRY_MAJOR_VERSION_7 of inst : label is 0;
  attribute C_PF2_ENTRY_MAJOR_VERSION_8 : integer;
  attribute C_PF2_ENTRY_MAJOR_VERSION_8 of inst : label is 0;
  attribute C_PF2_ENTRY_MAJOR_VERSION_9 : integer;
  attribute C_PF2_ENTRY_MAJOR_VERSION_9 of inst : label is 0;
  attribute C_PF2_ENTRY_MINOR_VERSION_0 : integer;
  attribute C_PF2_ENTRY_MINOR_VERSION_0 of inst : label is 0;
  attribute C_PF2_ENTRY_MINOR_VERSION_1 : integer;
  attribute C_PF2_ENTRY_MINOR_VERSION_1 of inst : label is 0;
  attribute C_PF2_ENTRY_MINOR_VERSION_10 : integer;
  attribute C_PF2_ENTRY_MINOR_VERSION_10 of inst : label is 0;
  attribute C_PF2_ENTRY_MINOR_VERSION_11 : integer;
  attribute C_PF2_ENTRY_MINOR_VERSION_11 of inst : label is 0;
  attribute C_PF2_ENTRY_MINOR_VERSION_12 : integer;
  attribute C_PF2_ENTRY_MINOR_VERSION_12 of inst : label is 0;
  attribute C_PF2_ENTRY_MINOR_VERSION_13 : integer;
  attribute C_PF2_ENTRY_MINOR_VERSION_13 of inst : label is 0;
  attribute C_PF2_ENTRY_MINOR_VERSION_14 : integer;
  attribute C_PF2_ENTRY_MINOR_VERSION_14 of inst : label is 0;
  attribute C_PF2_ENTRY_MINOR_VERSION_15 : integer;
  attribute C_PF2_ENTRY_MINOR_VERSION_15 of inst : label is 0;
  attribute C_PF2_ENTRY_MINOR_VERSION_2 : integer;
  attribute C_PF2_ENTRY_MINOR_VERSION_2 of inst : label is 0;
  attribute C_PF2_ENTRY_MINOR_VERSION_3 : integer;
  attribute C_PF2_ENTRY_MINOR_VERSION_3 of inst : label is 0;
  attribute C_PF2_ENTRY_MINOR_VERSION_4 : integer;
  attribute C_PF2_ENTRY_MINOR_VERSION_4 of inst : label is 0;
  attribute C_PF2_ENTRY_MINOR_VERSION_5 : integer;
  attribute C_PF2_ENTRY_MINOR_VERSION_5 of inst : label is 0;
  attribute C_PF2_ENTRY_MINOR_VERSION_6 : integer;
  attribute C_PF2_ENTRY_MINOR_VERSION_6 of inst : label is 0;
  attribute C_PF2_ENTRY_MINOR_VERSION_7 : integer;
  attribute C_PF2_ENTRY_MINOR_VERSION_7 of inst : label is 0;
  attribute C_PF2_ENTRY_MINOR_VERSION_8 : integer;
  attribute C_PF2_ENTRY_MINOR_VERSION_8 of inst : label is 0;
  attribute C_PF2_ENTRY_MINOR_VERSION_9 : integer;
  attribute C_PF2_ENTRY_MINOR_VERSION_9 of inst : label is 0;
  attribute C_PF2_ENTRY_RSVD0_0 : string;
  attribute C_PF2_ENTRY_RSVD0_0 of inst : label is "4'b0000";
  attribute C_PF2_ENTRY_RSVD0_1 : string;
  attribute C_PF2_ENTRY_RSVD0_1 of inst : label is "4'b0000";
  attribute C_PF2_ENTRY_RSVD0_10 : string;
  attribute C_PF2_ENTRY_RSVD0_10 of inst : label is "4'b0000";
  attribute C_PF2_ENTRY_RSVD0_11 : string;
  attribute C_PF2_ENTRY_RSVD0_11 of inst : label is "4'b0000";
  attribute C_PF2_ENTRY_RSVD0_12 : string;
  attribute C_PF2_ENTRY_RSVD0_12 of inst : label is "4'b0000";
  attribute C_PF2_ENTRY_RSVD0_13 : string;
  attribute C_PF2_ENTRY_RSVD0_13 of inst : label is "4'b0000";
  attribute C_PF2_ENTRY_RSVD0_14 : string;
  attribute C_PF2_ENTRY_RSVD0_14 of inst : label is "4'b0000";
  attribute C_PF2_ENTRY_RSVD0_15 : string;
  attribute C_PF2_ENTRY_RSVD0_15 of inst : label is "4'b0000";
  attribute C_PF2_ENTRY_RSVD0_2 : string;
  attribute C_PF2_ENTRY_RSVD0_2 of inst : label is "4'b0000";
  attribute C_PF2_ENTRY_RSVD0_3 : string;
  attribute C_PF2_ENTRY_RSVD0_3 of inst : label is "4'b0000";
  attribute C_PF2_ENTRY_RSVD0_4 : string;
  attribute C_PF2_ENTRY_RSVD0_4 of inst : label is "4'b0000";
  attribute C_PF2_ENTRY_RSVD0_5 : string;
  attribute C_PF2_ENTRY_RSVD0_5 of inst : label is "4'b0000";
  attribute C_PF2_ENTRY_RSVD0_6 : string;
  attribute C_PF2_ENTRY_RSVD0_6 of inst : label is "4'b0000";
  attribute C_PF2_ENTRY_RSVD0_7 : string;
  attribute C_PF2_ENTRY_RSVD0_7 of inst : label is "4'b0000";
  attribute C_PF2_ENTRY_RSVD0_8 : string;
  attribute C_PF2_ENTRY_RSVD0_8 of inst : label is "4'b0000";
  attribute C_PF2_ENTRY_RSVD0_9 : string;
  attribute C_PF2_ENTRY_RSVD0_9 of inst : label is "4'b0000";
  attribute C_PF2_ENTRY_TYPE_0 : string;
  attribute C_PF2_ENTRY_TYPE_0 of inst : label is "8'b00000000";
  attribute C_PF2_ENTRY_TYPE_1 : string;
  attribute C_PF2_ENTRY_TYPE_1 of inst : label is "8'b00000000";
  attribute C_PF2_ENTRY_TYPE_10 : string;
  attribute C_PF2_ENTRY_TYPE_10 of inst : label is "8'b00000000";
  attribute C_PF2_ENTRY_TYPE_11 : string;
  attribute C_PF2_ENTRY_TYPE_11 of inst : label is "8'b00000000";
  attribute C_PF2_ENTRY_TYPE_12 : string;
  attribute C_PF2_ENTRY_TYPE_12 of inst : label is "8'b00000000";
  attribute C_PF2_ENTRY_TYPE_13 : string;
  attribute C_PF2_ENTRY_TYPE_13 of inst : label is "8'b00000000";
  attribute C_PF2_ENTRY_TYPE_14 : string;
  attribute C_PF2_ENTRY_TYPE_14 of inst : label is "8'b00000000";
  attribute C_PF2_ENTRY_TYPE_15 : string;
  attribute C_PF2_ENTRY_TYPE_15 of inst : label is "8'b00000000";
  attribute C_PF2_ENTRY_TYPE_2 : string;
  attribute C_PF2_ENTRY_TYPE_2 of inst : label is "8'b00000000";
  attribute C_PF2_ENTRY_TYPE_3 : string;
  attribute C_PF2_ENTRY_TYPE_3 of inst : label is "8'b00000000";
  attribute C_PF2_ENTRY_TYPE_4 : string;
  attribute C_PF2_ENTRY_TYPE_4 of inst : label is "8'b00000000";
  attribute C_PF2_ENTRY_TYPE_5 : string;
  attribute C_PF2_ENTRY_TYPE_5 of inst : label is "8'b00000000";
  attribute C_PF2_ENTRY_TYPE_6 : string;
  attribute C_PF2_ENTRY_TYPE_6 of inst : label is "8'b00000000";
  attribute C_PF2_ENTRY_TYPE_7 : string;
  attribute C_PF2_ENTRY_TYPE_7 of inst : label is "8'b00000000";
  attribute C_PF2_ENTRY_TYPE_8 : string;
  attribute C_PF2_ENTRY_TYPE_8 of inst : label is "8'b00000000";
  attribute C_PF2_ENTRY_TYPE_9 : string;
  attribute C_PF2_ENTRY_TYPE_9 of inst : label is "8'b00000000";
  attribute C_PF2_ENTRY_VERSION_TYPE_0 : string;
  attribute C_PF2_ENTRY_VERSION_TYPE_0 of inst : label is "8'b00000000";
  attribute C_PF2_ENTRY_VERSION_TYPE_1 : string;
  attribute C_PF2_ENTRY_VERSION_TYPE_1 of inst : label is "8'b00000000";
  attribute C_PF2_ENTRY_VERSION_TYPE_10 : string;
  attribute C_PF2_ENTRY_VERSION_TYPE_10 of inst : label is "8'b00000000";
  attribute C_PF2_ENTRY_VERSION_TYPE_11 : string;
  attribute C_PF2_ENTRY_VERSION_TYPE_11 of inst : label is "8'b00000000";
  attribute C_PF2_ENTRY_VERSION_TYPE_12 : string;
  attribute C_PF2_ENTRY_VERSION_TYPE_12 of inst : label is "8'b00000000";
  attribute C_PF2_ENTRY_VERSION_TYPE_13 : string;
  attribute C_PF2_ENTRY_VERSION_TYPE_13 of inst : label is "8'b00000000";
  attribute C_PF2_ENTRY_VERSION_TYPE_14 : string;
  attribute C_PF2_ENTRY_VERSION_TYPE_14 of inst : label is "8'b00000000";
  attribute C_PF2_ENTRY_VERSION_TYPE_15 : string;
  attribute C_PF2_ENTRY_VERSION_TYPE_15 of inst : label is "8'b00000000";
  attribute C_PF2_ENTRY_VERSION_TYPE_2 : string;
  attribute C_PF2_ENTRY_VERSION_TYPE_2 of inst : label is "8'b00000000";
  attribute C_PF2_ENTRY_VERSION_TYPE_3 : string;
  attribute C_PF2_ENTRY_VERSION_TYPE_3 of inst : label is "8'b00000000";
  attribute C_PF2_ENTRY_VERSION_TYPE_4 : string;
  attribute C_PF2_ENTRY_VERSION_TYPE_4 of inst : label is "8'b00000000";
  attribute C_PF2_ENTRY_VERSION_TYPE_5 : string;
  attribute C_PF2_ENTRY_VERSION_TYPE_5 of inst : label is "8'b00000000";
  attribute C_PF2_ENTRY_VERSION_TYPE_6 : string;
  attribute C_PF2_ENTRY_VERSION_TYPE_6 of inst : label is "8'b00000000";
  attribute C_PF2_ENTRY_VERSION_TYPE_7 : string;
  attribute C_PF2_ENTRY_VERSION_TYPE_7 of inst : label is "8'b00000000";
  attribute C_PF2_ENTRY_VERSION_TYPE_8 : string;
  attribute C_PF2_ENTRY_VERSION_TYPE_8 of inst : label is "8'b00000000";
  attribute C_PF2_ENTRY_VERSION_TYPE_9 : string;
  attribute C_PF2_ENTRY_VERSION_TYPE_9 of inst : label is "8'b00000000";
  attribute C_PF2_HAS_UUID_ROM : integer;
  attribute C_PF2_HAS_UUID_ROM of inst : label is 0;
  attribute C_PF2_HIGH_OFFSET : integer;
  attribute C_PF2_HIGH_OFFSET of inst : label is 0;
  attribute C_PF2_LOW_OFFSET : string;
  attribute C_PF2_LOW_OFFSET of inst : label is "28'b0000000000000000000000000000";
  attribute C_PF2_NUM_SLOTS_BAR_LAYOUT_TABLE : integer;
  attribute C_PF2_NUM_SLOTS_BAR_LAYOUT_TABLE of inst : label is 1;
  attribute C_PF2_S_AXI_ADDR_WIDTH : integer;
  attribute C_PF2_S_AXI_ADDR_WIDTH of inst : label is 32;
  attribute C_PF2_S_AXI_DATA_WIDTH : integer;
  attribute C_PF2_S_AXI_DATA_WIDTH of inst : label is 32;
  attribute C_PF2_UUID_ROM_INIT : string;
  attribute C_PF2_UUID_ROM_INIT of inst : label is "00000000,00000000,00000000,00000000";
  attribute C_PF3_BAR_INDEX : integer;
  attribute C_PF3_BAR_INDEX of inst : label is 0;
  attribute C_PF3_ENTRY_ADDR_0 : string;
  attribute C_PF3_ENTRY_ADDR_0 of inst : label is "48'b000000000000000000000000000000000000000000000000";
  attribute C_PF3_ENTRY_ADDR_1 : string;
  attribute C_PF3_ENTRY_ADDR_1 of inst : label is "48'b000000000000000000000000000000000000000000000000";
  attribute C_PF3_ENTRY_ADDR_10 : string;
  attribute C_PF3_ENTRY_ADDR_10 of inst : label is "48'b000000000000000000000000000000000000000000000000";
  attribute C_PF3_ENTRY_ADDR_11 : string;
  attribute C_PF3_ENTRY_ADDR_11 of inst : label is "48'b000000000000000000000000000000000000000000000000";
  attribute C_PF3_ENTRY_ADDR_12 : string;
  attribute C_PF3_ENTRY_ADDR_12 of inst : label is "48'b000000000000000000000000000000000000000000000000";
  attribute C_PF3_ENTRY_ADDR_13 : string;
  attribute C_PF3_ENTRY_ADDR_13 of inst : label is "48'b000000000000000000000000000000000000000000000000";
  attribute C_PF3_ENTRY_ADDR_14 : string;
  attribute C_PF3_ENTRY_ADDR_14 of inst : label is "48'b000000000000000000000000000000000000000000000000";
  attribute C_PF3_ENTRY_ADDR_15 : string;
  attribute C_PF3_ENTRY_ADDR_15 of inst : label is "48'b000000000000000000000000000000000000000000000000";
  attribute C_PF3_ENTRY_ADDR_2 : string;
  attribute C_PF3_ENTRY_ADDR_2 of inst : label is "48'b000000000000000000000000000000000000000000000000";
  attribute C_PF3_ENTRY_ADDR_3 : string;
  attribute C_PF3_ENTRY_ADDR_3 of inst : label is "48'b000000000000000000000000000000000000000000000000";
  attribute C_PF3_ENTRY_ADDR_4 : string;
  attribute C_PF3_ENTRY_ADDR_4 of inst : label is "48'b000000000000000000000000000000000000000000000000";
  attribute C_PF3_ENTRY_ADDR_5 : string;
  attribute C_PF3_ENTRY_ADDR_5 of inst : label is "48'b000000000000000000000000000000000000000000000000";
  attribute C_PF3_ENTRY_ADDR_6 : string;
  attribute C_PF3_ENTRY_ADDR_6 of inst : label is "48'b000000000000000000000000000000000000000000000000";
  attribute C_PF3_ENTRY_ADDR_7 : string;
  attribute C_PF3_ENTRY_ADDR_7 of inst : label is "48'b000000000000000000000000000000000000000000000000";
  attribute C_PF3_ENTRY_ADDR_8 : string;
  attribute C_PF3_ENTRY_ADDR_8 of inst : label is "48'b000000000000000000000000000000000000000000000000";
  attribute C_PF3_ENTRY_ADDR_9 : string;
  attribute C_PF3_ENTRY_ADDR_9 of inst : label is "48'b000000000000000000000000000000000000000000000000";
  attribute C_PF3_ENTRY_BAR_0 : integer;
  attribute C_PF3_ENTRY_BAR_0 of inst : label is 0;
  attribute C_PF3_ENTRY_BAR_1 : integer;
  attribute C_PF3_ENTRY_BAR_1 of inst : label is 0;
  attribute C_PF3_ENTRY_BAR_10 : integer;
  attribute C_PF3_ENTRY_BAR_10 of inst : label is 0;
  attribute C_PF3_ENTRY_BAR_11 : integer;
  attribute C_PF3_ENTRY_BAR_11 of inst : label is 0;
  attribute C_PF3_ENTRY_BAR_12 : integer;
  attribute C_PF3_ENTRY_BAR_12 of inst : label is 0;
  attribute C_PF3_ENTRY_BAR_13 : integer;
  attribute C_PF3_ENTRY_BAR_13 of inst : label is 0;
  attribute C_PF3_ENTRY_BAR_14 : integer;
  attribute C_PF3_ENTRY_BAR_14 of inst : label is 0;
  attribute C_PF3_ENTRY_BAR_15 : integer;
  attribute C_PF3_ENTRY_BAR_15 of inst : label is 0;
  attribute C_PF3_ENTRY_BAR_2 : integer;
  attribute C_PF3_ENTRY_BAR_2 of inst : label is 0;
  attribute C_PF3_ENTRY_BAR_3 : integer;
  attribute C_PF3_ENTRY_BAR_3 of inst : label is 0;
  attribute C_PF3_ENTRY_BAR_4 : integer;
  attribute C_PF3_ENTRY_BAR_4 of inst : label is 0;
  attribute C_PF3_ENTRY_BAR_5 : integer;
  attribute C_PF3_ENTRY_BAR_5 of inst : label is 0;
  attribute C_PF3_ENTRY_BAR_6 : integer;
  attribute C_PF3_ENTRY_BAR_6 of inst : label is 0;
  attribute C_PF3_ENTRY_BAR_7 : integer;
  attribute C_PF3_ENTRY_BAR_7 of inst : label is 0;
  attribute C_PF3_ENTRY_BAR_8 : integer;
  attribute C_PF3_ENTRY_BAR_8 of inst : label is 0;
  attribute C_PF3_ENTRY_BAR_9 : integer;
  attribute C_PF3_ENTRY_BAR_9 of inst : label is 0;
  attribute C_PF3_ENTRY_MAJOR_VERSION_0 : integer;
  attribute C_PF3_ENTRY_MAJOR_VERSION_0 of inst : label is 0;
  attribute C_PF3_ENTRY_MAJOR_VERSION_1 : integer;
  attribute C_PF3_ENTRY_MAJOR_VERSION_1 of inst : label is 0;
  attribute C_PF3_ENTRY_MAJOR_VERSION_10 : integer;
  attribute C_PF3_ENTRY_MAJOR_VERSION_10 of inst : label is 0;
  attribute C_PF3_ENTRY_MAJOR_VERSION_11 : integer;
  attribute C_PF3_ENTRY_MAJOR_VERSION_11 of inst : label is 0;
  attribute C_PF3_ENTRY_MAJOR_VERSION_12 : integer;
  attribute C_PF3_ENTRY_MAJOR_VERSION_12 of inst : label is 0;
  attribute C_PF3_ENTRY_MAJOR_VERSION_13 : integer;
  attribute C_PF3_ENTRY_MAJOR_VERSION_13 of inst : label is 0;
  attribute C_PF3_ENTRY_MAJOR_VERSION_14 : integer;
  attribute C_PF3_ENTRY_MAJOR_VERSION_14 of inst : label is 0;
  attribute C_PF3_ENTRY_MAJOR_VERSION_15 : integer;
  attribute C_PF3_ENTRY_MAJOR_VERSION_15 of inst : label is 0;
  attribute C_PF3_ENTRY_MAJOR_VERSION_2 : integer;
  attribute C_PF3_ENTRY_MAJOR_VERSION_2 of inst : label is 0;
  attribute C_PF3_ENTRY_MAJOR_VERSION_3 : integer;
  attribute C_PF3_ENTRY_MAJOR_VERSION_3 of inst : label is 0;
  attribute C_PF3_ENTRY_MAJOR_VERSION_4 : integer;
  attribute C_PF3_ENTRY_MAJOR_VERSION_4 of inst : label is 0;
  attribute C_PF3_ENTRY_MAJOR_VERSION_5 : integer;
  attribute C_PF3_ENTRY_MAJOR_VERSION_5 of inst : label is 0;
  attribute C_PF3_ENTRY_MAJOR_VERSION_6 : integer;
  attribute C_PF3_ENTRY_MAJOR_VERSION_6 of inst : label is 0;
  attribute C_PF3_ENTRY_MAJOR_VERSION_7 : integer;
  attribute C_PF3_ENTRY_MAJOR_VERSION_7 of inst : label is 0;
  attribute C_PF3_ENTRY_MAJOR_VERSION_8 : integer;
  attribute C_PF3_ENTRY_MAJOR_VERSION_8 of inst : label is 0;
  attribute C_PF3_ENTRY_MAJOR_VERSION_9 : integer;
  attribute C_PF3_ENTRY_MAJOR_VERSION_9 of inst : label is 0;
  attribute C_PF3_ENTRY_MINOR_VERSION_0 : integer;
  attribute C_PF3_ENTRY_MINOR_VERSION_0 of inst : label is 0;
  attribute C_PF3_ENTRY_MINOR_VERSION_1 : integer;
  attribute C_PF3_ENTRY_MINOR_VERSION_1 of inst : label is 0;
  attribute C_PF3_ENTRY_MINOR_VERSION_10 : integer;
  attribute C_PF3_ENTRY_MINOR_VERSION_10 of inst : label is 0;
  attribute C_PF3_ENTRY_MINOR_VERSION_11 : integer;
  attribute C_PF3_ENTRY_MINOR_VERSION_11 of inst : label is 0;
  attribute C_PF3_ENTRY_MINOR_VERSION_12 : integer;
  attribute C_PF3_ENTRY_MINOR_VERSION_12 of inst : label is 0;
  attribute C_PF3_ENTRY_MINOR_VERSION_13 : integer;
  attribute C_PF3_ENTRY_MINOR_VERSION_13 of inst : label is 0;
  attribute C_PF3_ENTRY_MINOR_VERSION_14 : integer;
  attribute C_PF3_ENTRY_MINOR_VERSION_14 of inst : label is 0;
  attribute C_PF3_ENTRY_MINOR_VERSION_15 : integer;
  attribute C_PF3_ENTRY_MINOR_VERSION_15 of inst : label is 0;
  attribute C_PF3_ENTRY_MINOR_VERSION_2 : integer;
  attribute C_PF3_ENTRY_MINOR_VERSION_2 of inst : label is 0;
  attribute C_PF3_ENTRY_MINOR_VERSION_3 : integer;
  attribute C_PF3_ENTRY_MINOR_VERSION_3 of inst : label is 0;
  attribute C_PF3_ENTRY_MINOR_VERSION_4 : integer;
  attribute C_PF3_ENTRY_MINOR_VERSION_4 of inst : label is 0;
  attribute C_PF3_ENTRY_MINOR_VERSION_5 : integer;
  attribute C_PF3_ENTRY_MINOR_VERSION_5 of inst : label is 0;
  attribute C_PF3_ENTRY_MINOR_VERSION_6 : integer;
  attribute C_PF3_ENTRY_MINOR_VERSION_6 of inst : label is 0;
  attribute C_PF3_ENTRY_MINOR_VERSION_7 : integer;
  attribute C_PF3_ENTRY_MINOR_VERSION_7 of inst : label is 0;
  attribute C_PF3_ENTRY_MINOR_VERSION_8 : integer;
  attribute C_PF3_ENTRY_MINOR_VERSION_8 of inst : label is 0;
  attribute C_PF3_ENTRY_MINOR_VERSION_9 : integer;
  attribute C_PF3_ENTRY_MINOR_VERSION_9 of inst : label is 0;
  attribute C_PF3_ENTRY_RSVD0_0 : string;
  attribute C_PF3_ENTRY_RSVD0_0 of inst : label is "4'b0000";
  attribute C_PF3_ENTRY_RSVD0_1 : string;
  attribute C_PF3_ENTRY_RSVD0_1 of inst : label is "4'b0000";
  attribute C_PF3_ENTRY_RSVD0_10 : string;
  attribute C_PF3_ENTRY_RSVD0_10 of inst : label is "4'b0000";
  attribute C_PF3_ENTRY_RSVD0_11 : string;
  attribute C_PF3_ENTRY_RSVD0_11 of inst : label is "4'b0000";
  attribute C_PF3_ENTRY_RSVD0_12 : string;
  attribute C_PF3_ENTRY_RSVD0_12 of inst : label is "4'b0000";
  attribute C_PF3_ENTRY_RSVD0_13 : string;
  attribute C_PF3_ENTRY_RSVD0_13 of inst : label is "4'b0000";
  attribute C_PF3_ENTRY_RSVD0_14 : string;
  attribute C_PF3_ENTRY_RSVD0_14 of inst : label is "4'b0000";
  attribute C_PF3_ENTRY_RSVD0_15 : string;
  attribute C_PF3_ENTRY_RSVD0_15 of inst : label is "4'b0000";
  attribute C_PF3_ENTRY_RSVD0_2 : string;
  attribute C_PF3_ENTRY_RSVD0_2 of inst : label is "4'b0000";
  attribute C_PF3_ENTRY_RSVD0_3 : string;
  attribute C_PF3_ENTRY_RSVD0_3 of inst : label is "4'b0000";
  attribute C_PF3_ENTRY_RSVD0_4 : string;
  attribute C_PF3_ENTRY_RSVD0_4 of inst : label is "4'b0000";
  attribute C_PF3_ENTRY_RSVD0_5 : string;
  attribute C_PF3_ENTRY_RSVD0_5 of inst : label is "4'b0000";
  attribute C_PF3_ENTRY_RSVD0_6 : string;
  attribute C_PF3_ENTRY_RSVD0_6 of inst : label is "4'b0000";
  attribute C_PF3_ENTRY_RSVD0_7 : string;
  attribute C_PF3_ENTRY_RSVD0_7 of inst : label is "4'b0000";
  attribute C_PF3_ENTRY_RSVD0_8 : string;
  attribute C_PF3_ENTRY_RSVD0_8 of inst : label is "4'b0000";
  attribute C_PF3_ENTRY_RSVD0_9 : string;
  attribute C_PF3_ENTRY_RSVD0_9 of inst : label is "4'b0000";
  attribute C_PF3_ENTRY_TYPE_0 : string;
  attribute C_PF3_ENTRY_TYPE_0 of inst : label is "8'b00000000";
  attribute C_PF3_ENTRY_TYPE_1 : string;
  attribute C_PF3_ENTRY_TYPE_1 of inst : label is "8'b00000000";
  attribute C_PF3_ENTRY_TYPE_10 : string;
  attribute C_PF3_ENTRY_TYPE_10 of inst : label is "8'b00000000";
  attribute C_PF3_ENTRY_TYPE_11 : string;
  attribute C_PF3_ENTRY_TYPE_11 of inst : label is "8'b00000000";
  attribute C_PF3_ENTRY_TYPE_12 : string;
  attribute C_PF3_ENTRY_TYPE_12 of inst : label is "8'b00000000";
  attribute C_PF3_ENTRY_TYPE_13 : string;
  attribute C_PF3_ENTRY_TYPE_13 of inst : label is "8'b00000000";
  attribute C_PF3_ENTRY_TYPE_14 : string;
  attribute C_PF3_ENTRY_TYPE_14 of inst : label is "8'b00000000";
  attribute C_PF3_ENTRY_TYPE_15 : string;
  attribute C_PF3_ENTRY_TYPE_15 of inst : label is "8'b00000000";
  attribute C_PF3_ENTRY_TYPE_2 : string;
  attribute C_PF3_ENTRY_TYPE_2 of inst : label is "8'b00000000";
  attribute C_PF3_ENTRY_TYPE_3 : string;
  attribute C_PF3_ENTRY_TYPE_3 of inst : label is "8'b00000000";
  attribute C_PF3_ENTRY_TYPE_4 : string;
  attribute C_PF3_ENTRY_TYPE_4 of inst : label is "8'b00000000";
  attribute C_PF3_ENTRY_TYPE_5 : string;
  attribute C_PF3_ENTRY_TYPE_5 of inst : label is "8'b00000000";
  attribute C_PF3_ENTRY_TYPE_6 : string;
  attribute C_PF3_ENTRY_TYPE_6 of inst : label is "8'b00000000";
  attribute C_PF3_ENTRY_TYPE_7 : string;
  attribute C_PF3_ENTRY_TYPE_7 of inst : label is "8'b00000000";
  attribute C_PF3_ENTRY_TYPE_8 : string;
  attribute C_PF3_ENTRY_TYPE_8 of inst : label is "8'b00000000";
  attribute C_PF3_ENTRY_TYPE_9 : string;
  attribute C_PF3_ENTRY_TYPE_9 of inst : label is "8'b00000000";
  attribute C_PF3_ENTRY_VERSION_TYPE_0 : string;
  attribute C_PF3_ENTRY_VERSION_TYPE_0 of inst : label is "8'b00000000";
  attribute C_PF3_ENTRY_VERSION_TYPE_1 : string;
  attribute C_PF3_ENTRY_VERSION_TYPE_1 of inst : label is "8'b00000000";
  attribute C_PF3_ENTRY_VERSION_TYPE_10 : string;
  attribute C_PF3_ENTRY_VERSION_TYPE_10 of inst : label is "8'b00000000";
  attribute C_PF3_ENTRY_VERSION_TYPE_11 : string;
  attribute C_PF3_ENTRY_VERSION_TYPE_11 of inst : label is "8'b00000000";
  attribute C_PF3_ENTRY_VERSION_TYPE_12 : string;
  attribute C_PF3_ENTRY_VERSION_TYPE_12 of inst : label is "8'b00000000";
  attribute C_PF3_ENTRY_VERSION_TYPE_13 : string;
  attribute C_PF3_ENTRY_VERSION_TYPE_13 of inst : label is "8'b00000000";
  attribute C_PF3_ENTRY_VERSION_TYPE_14 : string;
  attribute C_PF3_ENTRY_VERSION_TYPE_14 of inst : label is "8'b00000000";
  attribute C_PF3_ENTRY_VERSION_TYPE_15 : string;
  attribute C_PF3_ENTRY_VERSION_TYPE_15 of inst : label is "8'b00000000";
  attribute C_PF3_ENTRY_VERSION_TYPE_2 : string;
  attribute C_PF3_ENTRY_VERSION_TYPE_2 of inst : label is "8'b00000000";
  attribute C_PF3_ENTRY_VERSION_TYPE_3 : string;
  attribute C_PF3_ENTRY_VERSION_TYPE_3 of inst : label is "8'b00000000";
  attribute C_PF3_ENTRY_VERSION_TYPE_4 : string;
  attribute C_PF3_ENTRY_VERSION_TYPE_4 of inst : label is "8'b00000000";
  attribute C_PF3_ENTRY_VERSION_TYPE_5 : string;
  attribute C_PF3_ENTRY_VERSION_TYPE_5 of inst : label is "8'b00000000";
  attribute C_PF3_ENTRY_VERSION_TYPE_6 : string;
  attribute C_PF3_ENTRY_VERSION_TYPE_6 of inst : label is "8'b00000000";
  attribute C_PF3_ENTRY_VERSION_TYPE_7 : string;
  attribute C_PF3_ENTRY_VERSION_TYPE_7 of inst : label is "8'b00000000";
  attribute C_PF3_ENTRY_VERSION_TYPE_8 : string;
  attribute C_PF3_ENTRY_VERSION_TYPE_8 of inst : label is "8'b00000000";
  attribute C_PF3_ENTRY_VERSION_TYPE_9 : string;
  attribute C_PF3_ENTRY_VERSION_TYPE_9 of inst : label is "8'b00000000";
  attribute C_PF3_HAS_UUID_ROM : integer;
  attribute C_PF3_HAS_UUID_ROM of inst : label is 0;
  attribute C_PF3_HIGH_OFFSET : integer;
  attribute C_PF3_HIGH_OFFSET of inst : label is 0;
  attribute C_PF3_LOW_OFFSET : string;
  attribute C_PF3_LOW_OFFSET of inst : label is "28'b0000000000000000000000000000";
  attribute C_PF3_NUM_SLOTS_BAR_LAYOUT_TABLE : integer;
  attribute C_PF3_NUM_SLOTS_BAR_LAYOUT_TABLE of inst : label is 1;
  attribute C_PF3_S_AXI_ADDR_WIDTH : integer;
  attribute C_PF3_S_AXI_ADDR_WIDTH of inst : label is 32;
  attribute C_PF3_S_AXI_DATA_WIDTH : integer;
  attribute C_PF3_S_AXI_DATA_WIDTH of inst : label is 32;
  attribute C_PF3_UUID_ROM_INIT : string;
  attribute C_PF3_UUID_ROM_INIT of inst : label is "00000000,00000000,00000000,00000000";
  attribute C_XDEVICEFAMILY : string;
  attribute C_XDEVICEFAMILY of inst : label is "versal";
  attribute X_INTERFACE_INFO : string;
  attribute X_INTERFACE_INFO of aclk_ctrl : signal is "xilinx.com:signal:clock:1.0 aclk_ctrl CLK";
  attribute X_INTERFACE_PARAMETER : string;
  attribute X_INTERFACE_PARAMETER of aclk_ctrl : signal is "XIL_INTERFACENAME aclk_ctrl, ASSOCIATED_BUSIF s_axi_ctrl_pf0:s_axi_ctrl_pf1:s_axi_ctrl_pf2:s_axi_ctrl_pf3, ASSOCIATED_RESET aresetn_ctrl, FREQ_HZ 99999992, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN bd_4885_pspmc_0_0_pl0_ref_clk, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of aclk_pcie : signal is "xilinx.com:signal:clock:1.0 aclk_pcie CLK";
  attribute X_INTERFACE_PARAMETER of aclk_pcie : signal is "XIL_INTERFACENAME aclk_pcie, ASSOCIATED_BUSIF s_pcie4_cfg_ext:m_pcie4_cfg_ext, ASSOCIATED_RESET aresetn_pcie, FREQ_HZ 250000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN bd_4885_cpm_0_0_pcie0_user_clk, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of aresetn_ctrl : signal is "xilinx.com:signal:reset:1.0 aresetn_ctrl RST";
  attribute X_INTERFACE_PARAMETER of aresetn_ctrl : signal is "XIL_INTERFACENAME aresetn_ctrl, POLARITY ACTIVE_LOW, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of aresetn_pcie : signal is "xilinx.com:signal:reset:1.0 aresetn_pcie RST";
  attribute X_INTERFACE_PARAMETER of aresetn_pcie : signal is "XIL_INTERFACENAME aresetn_pcie, POLARITY ACTIVE_LOW, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of s_axi_ctrl_pf0_ARREADY : signal is "xilinx.com:interface:aximm:1.0 s_axi_ctrl_pf0 ARREADY";
  attribute X_INTERFACE_INFO of s_axi_ctrl_pf0_ARVALID : signal is "xilinx.com:interface:aximm:1.0 s_axi_ctrl_pf0 ARVALID";
  attribute X_INTERFACE_INFO of s_axi_ctrl_pf0_AWREADY : signal is "xilinx.com:interface:aximm:1.0 s_axi_ctrl_pf0 AWREADY";
  attribute X_INTERFACE_INFO of s_axi_ctrl_pf0_AWVALID : signal is "xilinx.com:interface:aximm:1.0 s_axi_ctrl_pf0 AWVALID";
  attribute X_INTERFACE_INFO of s_axi_ctrl_pf0_BREADY : signal is "xilinx.com:interface:aximm:1.0 s_axi_ctrl_pf0 BREADY";
  attribute X_INTERFACE_INFO of s_axi_ctrl_pf0_BVALID : signal is "xilinx.com:interface:aximm:1.0 s_axi_ctrl_pf0 BVALID";
  attribute X_INTERFACE_INFO of s_axi_ctrl_pf0_RREADY : signal is "xilinx.com:interface:aximm:1.0 s_axi_ctrl_pf0 RREADY";
  attribute X_INTERFACE_PARAMETER of s_axi_ctrl_pf0_RREADY : signal is "XIL_INTERFACENAME s_axi_ctrl_pf0, DATA_WIDTH 32, PROTOCOL AXI4LITE, FREQ_HZ 99999992, ID_WIDTH 0, ADDR_WIDTH 32, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, READ_WRITE_MODE READ_WRITE, HAS_BURST 0, HAS_LOCK 0, HAS_PROT 0, HAS_CACHE 0, HAS_QOS 0, HAS_REGION 0, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, SUPPORTS_NARROW_BURST 0, NUM_READ_OUTSTANDING 32, NUM_WRITE_OUTSTANDING 32, MAX_BURST_LENGTH 1, PHASE 0.0, CLK_DOMAIN bd_4885_pspmc_0_0_pl0_ref_clk, NUM_READ_THREADS 1, NUM_WRITE_THREADS 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of s_axi_ctrl_pf0_RVALID : signal is "xilinx.com:interface:aximm:1.0 s_axi_ctrl_pf0 RVALID";
  attribute X_INTERFACE_INFO of s_axi_ctrl_pf0_WREADY : signal is "xilinx.com:interface:aximm:1.0 s_axi_ctrl_pf0 WREADY";
  attribute X_INTERFACE_INFO of s_axi_ctrl_pf0_WVALID : signal is "xilinx.com:interface:aximm:1.0 s_axi_ctrl_pf0 WVALID";
  attribute X_INTERFACE_INFO of s_axi_ctrl_pf1_ARREADY : signal is "xilinx.com:interface:aximm:1.0 s_axi_ctrl_pf1 ARREADY";
  attribute X_INTERFACE_INFO of s_axi_ctrl_pf1_ARVALID : signal is "xilinx.com:interface:aximm:1.0 s_axi_ctrl_pf1 ARVALID";
  attribute X_INTERFACE_INFO of s_axi_ctrl_pf1_AWREADY : signal is "xilinx.com:interface:aximm:1.0 s_axi_ctrl_pf1 AWREADY";
  attribute X_INTERFACE_INFO of s_axi_ctrl_pf1_AWVALID : signal is "xilinx.com:interface:aximm:1.0 s_axi_ctrl_pf1 AWVALID";
  attribute X_INTERFACE_INFO of s_axi_ctrl_pf1_BREADY : signal is "xilinx.com:interface:aximm:1.0 s_axi_ctrl_pf1 BREADY";
  attribute X_INTERFACE_INFO of s_axi_ctrl_pf1_BVALID : signal is "xilinx.com:interface:aximm:1.0 s_axi_ctrl_pf1 BVALID";
  attribute X_INTERFACE_INFO of s_axi_ctrl_pf1_RREADY : signal is "xilinx.com:interface:aximm:1.0 s_axi_ctrl_pf1 RREADY";
  attribute X_INTERFACE_PARAMETER of s_axi_ctrl_pf1_RREADY : signal is "XIL_INTERFACENAME s_axi_ctrl_pf1, DATA_WIDTH 32, PROTOCOL AXI4LITE, FREQ_HZ 99999992, ID_WIDTH 0, ADDR_WIDTH 32, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, READ_WRITE_MODE READ_WRITE, HAS_BURST 0, HAS_LOCK 0, HAS_PROT 0, HAS_CACHE 0, HAS_QOS 0, HAS_REGION 0, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, SUPPORTS_NARROW_BURST 0, NUM_READ_OUTSTANDING 32, NUM_WRITE_OUTSTANDING 32, MAX_BURST_LENGTH 1, PHASE 0.0, CLK_DOMAIN bd_4885_pspmc_0_0_pl0_ref_clk, NUM_READ_THREADS 1, NUM_WRITE_THREADS 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of s_axi_ctrl_pf1_RVALID : signal is "xilinx.com:interface:aximm:1.0 s_axi_ctrl_pf1 RVALID";
  attribute X_INTERFACE_INFO of s_axi_ctrl_pf1_WREADY : signal is "xilinx.com:interface:aximm:1.0 s_axi_ctrl_pf1 WREADY";
  attribute X_INTERFACE_INFO of s_axi_ctrl_pf1_WVALID : signal is "xilinx.com:interface:aximm:1.0 s_axi_ctrl_pf1 WVALID";
  attribute X_INTERFACE_INFO of s_pcie4_cfg_ext_read_data_valid : signal is "xilinx.com:interface:pcie3_cfg_ext:1.0 s_pcie4_cfg_ext read_data_valid";
  attribute X_INTERFACE_INFO of s_pcie4_cfg_ext_read_received : signal is "xilinx.com:interface:pcie3_cfg_ext:1.0 s_pcie4_cfg_ext read_received";
  attribute X_INTERFACE_INFO of s_pcie4_cfg_ext_write_received : signal is "xilinx.com:interface:pcie3_cfg_ext:1.0 s_pcie4_cfg_ext write_received";
  attribute X_INTERFACE_INFO of s_axi_ctrl_pf0_ARADDR : signal is "xilinx.com:interface:aximm:1.0 s_axi_ctrl_pf0 ARADDR";
  attribute X_INTERFACE_INFO of s_axi_ctrl_pf0_AWADDR : signal is "xilinx.com:interface:aximm:1.0 s_axi_ctrl_pf0 AWADDR";
  attribute X_INTERFACE_INFO of s_axi_ctrl_pf0_BRESP : signal is "xilinx.com:interface:aximm:1.0 s_axi_ctrl_pf0 BRESP";
  attribute X_INTERFACE_INFO of s_axi_ctrl_pf0_RDATA : signal is "xilinx.com:interface:aximm:1.0 s_axi_ctrl_pf0 RDATA";
  attribute X_INTERFACE_INFO of s_axi_ctrl_pf0_RRESP : signal is "xilinx.com:interface:aximm:1.0 s_axi_ctrl_pf0 RRESP";
  attribute X_INTERFACE_INFO of s_axi_ctrl_pf0_WDATA : signal is "xilinx.com:interface:aximm:1.0 s_axi_ctrl_pf0 WDATA";
  attribute X_INTERFACE_INFO of s_axi_ctrl_pf0_WSTRB : signal is "xilinx.com:interface:aximm:1.0 s_axi_ctrl_pf0 WSTRB";
  attribute X_INTERFACE_INFO of s_axi_ctrl_pf1_ARADDR : signal is "xilinx.com:interface:aximm:1.0 s_axi_ctrl_pf1 ARADDR";
  attribute X_INTERFACE_INFO of s_axi_ctrl_pf1_AWADDR : signal is "xilinx.com:interface:aximm:1.0 s_axi_ctrl_pf1 AWADDR";
  attribute X_INTERFACE_INFO of s_axi_ctrl_pf1_BRESP : signal is "xilinx.com:interface:aximm:1.0 s_axi_ctrl_pf1 BRESP";
  attribute X_INTERFACE_INFO of s_axi_ctrl_pf1_RDATA : signal is "xilinx.com:interface:aximm:1.0 s_axi_ctrl_pf1 RDATA";
  attribute X_INTERFACE_INFO of s_axi_ctrl_pf1_RRESP : signal is "xilinx.com:interface:aximm:1.0 s_axi_ctrl_pf1 RRESP";
  attribute X_INTERFACE_INFO of s_axi_ctrl_pf1_WDATA : signal is "xilinx.com:interface:aximm:1.0 s_axi_ctrl_pf1 WDATA";
  attribute X_INTERFACE_INFO of s_axi_ctrl_pf1_WSTRB : signal is "xilinx.com:interface:aximm:1.0 s_axi_ctrl_pf1 WSTRB";
  attribute X_INTERFACE_INFO of s_pcie4_cfg_ext_function_number : signal is "xilinx.com:interface:pcie3_cfg_ext:1.0 s_pcie4_cfg_ext function_number";
  attribute X_INTERFACE_INFO of s_pcie4_cfg_ext_read_data : signal is "xilinx.com:interface:pcie3_cfg_ext:1.0 s_pcie4_cfg_ext read_data";
  attribute X_INTERFACE_INFO of s_pcie4_cfg_ext_register_number : signal is "xilinx.com:interface:pcie3_cfg_ext:1.0 s_pcie4_cfg_ext register_number";
  attribute X_INTERFACE_INFO of s_pcie4_cfg_ext_write_byte_enable : signal is "xilinx.com:interface:pcie3_cfg_ext:1.0 s_pcie4_cfg_ext write_byte_enable";
  attribute X_INTERFACE_INFO of s_pcie4_cfg_ext_write_data : signal is "xilinx.com:interface:pcie3_cfg_ext:1.0 s_pcie4_cfg_ext write_data";
begin
  s_axi_ctrl_pf0_BRESP(1) <= \<const0>\;
  s_axi_ctrl_pf0_BRESP(0) <= \<const0>\;
  s_axi_ctrl_pf0_RDATA(31) <= \<const0>\;
  s_axi_ctrl_pf0_RDATA(30) <= \<const0>\;
  s_axi_ctrl_pf0_RDATA(29 downto 28) <= \^s_axi_ctrl_pf0_rdata\(29 downto 28);
  s_axi_ctrl_pf0_RDATA(27) <= \<const0>\;
  s_axi_ctrl_pf0_RDATA(26) <= \<const0>\;
  s_axi_ctrl_pf0_RDATA(25 downto 24) <= \^s_axi_ctrl_pf0_rdata\(25 downto 24);
  s_axi_ctrl_pf0_RDATA(23) <= \<const0>\;
  s_axi_ctrl_pf0_RDATA(22) <= \<const0>\;
  s_axi_ctrl_pf0_RDATA(21) <= \<const0>\;
  s_axi_ctrl_pf0_RDATA(20) <= \<const0>\;
  s_axi_ctrl_pf0_RDATA(19) <= \<const0>\;
  s_axi_ctrl_pf0_RDATA(18) <= \<const0>\;
  s_axi_ctrl_pf0_RDATA(17) <= \<const0>\;
  s_axi_ctrl_pf0_RDATA(16) <= \^s_axi_ctrl_pf0_rdata\(16);
  s_axi_ctrl_pf0_RDATA(15) <= \<const0>\;
  s_axi_ctrl_pf0_RDATA(14) <= \<const0>\;
  s_axi_ctrl_pf0_RDATA(13) <= \<const0>\;
  s_axi_ctrl_pf0_RDATA(12) <= \<const0>\;
  s_axi_ctrl_pf0_RDATA(11) <= \^s_axi_ctrl_pf0_rdata\(11);
  s_axi_ctrl_pf0_RDATA(10) <= \<const0>\;
  s_axi_ctrl_pf0_RDATA(9) <= \^s_axi_ctrl_pf0_rdata\(9);
  s_axi_ctrl_pf0_RDATA(8) <= \<const0>\;
  s_axi_ctrl_pf0_RDATA(7 downto 0) <= \^s_axi_ctrl_pf0_rdata\(7 downto 0);
  s_axi_ctrl_pf0_RRESP(1) <= \<const0>\;
  s_axi_ctrl_pf0_RRESP(0) <= \<const0>\;
  s_axi_ctrl_pf1_BRESP(1) <= \<const0>\;
  s_axi_ctrl_pf1_BRESP(0) <= \<const0>\;
  s_axi_ctrl_pf1_RDATA(31) <= \<const0>\;
  s_axi_ctrl_pf1_RDATA(30) <= \<const0>\;
  s_axi_ctrl_pf1_RDATA(29) <= \<const0>\;
  s_axi_ctrl_pf1_RDATA(28) <= \^s_axi_ctrl_pf1_rdata\(28);
  s_axi_ctrl_pf1_RDATA(27) <= \<const0>\;
  s_axi_ctrl_pf1_RDATA(26) <= \<const0>\;
  s_axi_ctrl_pf1_RDATA(25) <= \<const0>\;
  s_axi_ctrl_pf1_RDATA(24) <= \^s_axi_ctrl_pf1_rdata\(24);
  s_axi_ctrl_pf1_RDATA(23) <= \<const0>\;
  s_axi_ctrl_pf1_RDATA(22) <= \<const0>\;
  s_axi_ctrl_pf1_RDATA(21) <= \<const0>\;
  s_axi_ctrl_pf1_RDATA(20) <= \<const0>\;
  s_axi_ctrl_pf1_RDATA(19) <= \<const0>\;
  s_axi_ctrl_pf1_RDATA(18) <= \<const0>\;
  s_axi_ctrl_pf1_RDATA(17) <= \<const0>\;
  s_axi_ctrl_pf1_RDATA(16) <= \^s_axi_ctrl_pf1_rdata\(16);
  s_axi_ctrl_pf1_RDATA(15) <= \<const0>\;
  s_axi_ctrl_pf1_RDATA(14) <= \^s_axi_ctrl_pf1_rdata\(14);
  s_axi_ctrl_pf1_RDATA(13) <= \<const0>\;
  s_axi_ctrl_pf1_RDATA(12) <= \<const0>\;
  s_axi_ctrl_pf1_RDATA(11) <= \<const0>\;
  s_axi_ctrl_pf1_RDATA(10) <= \<const0>\;
  s_axi_ctrl_pf1_RDATA(9) <= \^s_axi_ctrl_pf1_rdata\(9);
  s_axi_ctrl_pf1_RDATA(8) <= \<const0>\;
  s_axi_ctrl_pf1_RDATA(7 downto 0) <= \^s_axi_ctrl_pf1_rdata\(7 downto 0);
  s_axi_ctrl_pf1_RRESP(1) <= \<const0>\;
  s_axi_ctrl_pf1_RRESP(0) <= \<const0>\;
  s_pcie4_cfg_ext_read_data(31) <= \<const0>\;
  s_pcie4_cfg_ext_read_data(30) <= \<const0>\;
  s_pcie4_cfg_ext_read_data(29) <= \<const0>\;
  s_pcie4_cfg_ext_read_data(28) <= \<const0>\;
  s_pcie4_cfg_ext_read_data(27) <= \<const0>\;
  s_pcie4_cfg_ext_read_data(26) <= \<const0>\;
  s_pcie4_cfg_ext_read_data(25 downto 24) <= \^s_pcie4_cfg_ext_read_data\(25 downto 24);
  s_pcie4_cfg_ext_read_data(23) <= \<const0>\;
  s_pcie4_cfg_ext_read_data(22) <= \<const0>\;
  s_pcie4_cfg_ext_read_data(21) <= \<const0>\;
  s_pcie4_cfg_ext_read_data(20) <= \<const0>\;
  s_pcie4_cfg_ext_read_data(19) <= \<const0>\;
  s_pcie4_cfg_ext_read_data(18) <= \<const0>\;
  s_pcie4_cfg_ext_read_data(17) <= \<const0>\;
  s_pcie4_cfg_ext_read_data(16) <= \^s_pcie4_cfg_ext_read_data\(16);
  s_pcie4_cfg_ext_read_data(15) <= \<const0>\;
  s_pcie4_cfg_ext_read_data(14) <= \<const0>\;
  s_pcie4_cfg_ext_read_data(13) <= \<const0>\;
  s_pcie4_cfg_ext_read_data(12) <= \^s_pcie4_cfg_ext_read_data\(12);
  s_pcie4_cfg_ext_read_data(11) <= \<const0>\;
  s_pcie4_cfg_ext_read_data(10) <= \<const0>\;
  s_pcie4_cfg_ext_read_data(9) <= \<const0>\;
  s_pcie4_cfg_ext_read_data(8) <= \<const0>\;
  s_pcie4_cfg_ext_read_data(7) <= \<const0>\;
  s_pcie4_cfg_ext_read_data(6) <= \<const0>\;
  s_pcie4_cfg_ext_read_data(5) <= \^s_pcie4_cfg_ext_read_data\(5);
  s_pcie4_cfg_ext_read_data(4) <= \<const0>\;
  s_pcie4_cfg_ext_read_data(3) <= \^s_pcie4_cfg_ext_read_data\(3);
  s_pcie4_cfg_ext_read_data(2) <= \<const0>\;
  s_pcie4_cfg_ext_read_data(1 downto 0) <= \^s_pcie4_cfg_ext_read_data\(1 downto 0);
GND: unisim.vcomponents.GND
     port map (
      G => \<const0>\
    );
inst: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_hw_discovery
     port map (
      aclk_ctrl => aclk_ctrl,
      aclk_pcie => aclk_pcie,
      aresetn_ctrl => aresetn_ctrl,
      aresetn_pcie => '0',
      m_pcie4_cfg_ext_function_number(7 downto 0) => NLW_inst_m_pcie4_cfg_ext_function_number_UNCONNECTED(7 downto 0),
      m_pcie4_cfg_ext_read_data(31 downto 0) => B"00000000000000000000000000000000",
      m_pcie4_cfg_ext_read_data_valid => '0',
      m_pcie4_cfg_ext_read_received => NLW_inst_m_pcie4_cfg_ext_read_received_UNCONNECTED,
      m_pcie4_cfg_ext_register_number(9 downto 0) => NLW_inst_m_pcie4_cfg_ext_register_number_UNCONNECTED(9 downto 0),
      m_pcie4_cfg_ext_write_byte_enable(3 downto 0) => NLW_inst_m_pcie4_cfg_ext_write_byte_enable_UNCONNECTED(3 downto 0),
      m_pcie4_cfg_ext_write_data(31 downto 0) => NLW_inst_m_pcie4_cfg_ext_write_data_UNCONNECTED(31 downto 0),
      m_pcie4_cfg_ext_write_received => NLW_inst_m_pcie4_cfg_ext_write_received_UNCONNECTED,
      s_axi_ctrl_pf0_ARADDR(31 downto 7) => B"0000000000000000000000000",
      s_axi_ctrl_pf0_ARADDR(6 downto 2) => s_axi_ctrl_pf0_ARADDR(6 downto 2),
      s_axi_ctrl_pf0_ARADDR(1 downto 0) => B"00",
      s_axi_ctrl_pf0_ARREADY => s_axi_ctrl_pf0_ARREADY,
      s_axi_ctrl_pf0_ARVALID => s_axi_ctrl_pf0_ARVALID,
      s_axi_ctrl_pf0_AWADDR(31 downto 7) => B"0000000000000000000000000",
      s_axi_ctrl_pf0_AWADDR(6 downto 2) => s_axi_ctrl_pf0_AWADDR(6 downto 2),
      s_axi_ctrl_pf0_AWADDR(1 downto 0) => B"00",
      s_axi_ctrl_pf0_AWREADY => s_axi_ctrl_pf0_AWREADY,
      s_axi_ctrl_pf0_AWVALID => s_axi_ctrl_pf0_AWVALID,
      s_axi_ctrl_pf0_BREADY => s_axi_ctrl_pf0_BREADY,
      s_axi_ctrl_pf0_BRESP(1 downto 0) => NLW_inst_s_axi_ctrl_pf0_BRESP_UNCONNECTED(1 downto 0),
      s_axi_ctrl_pf0_BVALID => s_axi_ctrl_pf0_BVALID,
      s_axi_ctrl_pf0_RDATA(31 downto 30) => NLW_inst_s_axi_ctrl_pf0_RDATA_UNCONNECTED(31 downto 30),
      s_axi_ctrl_pf0_RDATA(29 downto 28) => \^s_axi_ctrl_pf0_rdata\(29 downto 28),
      s_axi_ctrl_pf0_RDATA(27 downto 26) => NLW_inst_s_axi_ctrl_pf0_RDATA_UNCONNECTED(27 downto 26),
      s_axi_ctrl_pf0_RDATA(25 downto 24) => \^s_axi_ctrl_pf0_rdata\(25 downto 24),
      s_axi_ctrl_pf0_RDATA(23 downto 17) => NLW_inst_s_axi_ctrl_pf0_RDATA_UNCONNECTED(23 downto 17),
      s_axi_ctrl_pf0_RDATA(16) => \^s_axi_ctrl_pf0_rdata\(16),
      s_axi_ctrl_pf0_RDATA(15 downto 12) => NLW_inst_s_axi_ctrl_pf0_RDATA_UNCONNECTED(15 downto 12),
      s_axi_ctrl_pf0_RDATA(11) => \^s_axi_ctrl_pf0_rdata\(11),
      s_axi_ctrl_pf0_RDATA(10) => NLW_inst_s_axi_ctrl_pf0_RDATA_UNCONNECTED(10),
      s_axi_ctrl_pf0_RDATA(9) => \^s_axi_ctrl_pf0_rdata\(9),
      s_axi_ctrl_pf0_RDATA(8) => NLW_inst_s_axi_ctrl_pf0_RDATA_UNCONNECTED(8),
      s_axi_ctrl_pf0_RDATA(7 downto 0) => \^s_axi_ctrl_pf0_rdata\(7 downto 0),
      s_axi_ctrl_pf0_RREADY => s_axi_ctrl_pf0_RREADY,
      s_axi_ctrl_pf0_RRESP(1 downto 0) => NLW_inst_s_axi_ctrl_pf0_RRESP_UNCONNECTED(1 downto 0),
      s_axi_ctrl_pf0_RVALID => s_axi_ctrl_pf0_RVALID,
      s_axi_ctrl_pf0_WDATA(31 downto 0) => B"00000000000000000000000000000000",
      s_axi_ctrl_pf0_WREADY => s_axi_ctrl_pf0_WREADY,
      s_axi_ctrl_pf0_WSTRB(3 downto 0) => B"0000",
      s_axi_ctrl_pf0_WVALID => s_axi_ctrl_pf0_WVALID,
      s_axi_ctrl_pf1_ARADDR(31 downto 7) => B"0000000000000000000000000",
      s_axi_ctrl_pf1_ARADDR(6 downto 2) => s_axi_ctrl_pf1_ARADDR(6 downto 2),
      s_axi_ctrl_pf1_ARADDR(1 downto 0) => B"00",
      s_axi_ctrl_pf1_ARREADY => s_axi_ctrl_pf1_ARREADY,
      s_axi_ctrl_pf1_ARVALID => s_axi_ctrl_pf1_ARVALID,
      s_axi_ctrl_pf1_AWADDR(31 downto 7) => B"0000000000000000000000000",
      s_axi_ctrl_pf1_AWADDR(6 downto 2) => s_axi_ctrl_pf1_AWADDR(6 downto 2),
      s_axi_ctrl_pf1_AWADDR(1 downto 0) => B"00",
      s_axi_ctrl_pf1_AWREADY => s_axi_ctrl_pf1_AWREADY,
      s_axi_ctrl_pf1_AWVALID => s_axi_ctrl_pf1_AWVALID,
      s_axi_ctrl_pf1_BREADY => s_axi_ctrl_pf1_BREADY,
      s_axi_ctrl_pf1_BRESP(1 downto 0) => NLW_inst_s_axi_ctrl_pf1_BRESP_UNCONNECTED(1 downto 0),
      s_axi_ctrl_pf1_BVALID => s_axi_ctrl_pf1_BVALID,
      s_axi_ctrl_pf1_RDATA(31 downto 29) => NLW_inst_s_axi_ctrl_pf1_RDATA_UNCONNECTED(31 downto 29),
      s_axi_ctrl_pf1_RDATA(28) => \^s_axi_ctrl_pf1_rdata\(28),
      s_axi_ctrl_pf1_RDATA(27 downto 25) => NLW_inst_s_axi_ctrl_pf1_RDATA_UNCONNECTED(27 downto 25),
      s_axi_ctrl_pf1_RDATA(24) => \^s_axi_ctrl_pf1_rdata\(24),
      s_axi_ctrl_pf1_RDATA(23 downto 17) => NLW_inst_s_axi_ctrl_pf1_RDATA_UNCONNECTED(23 downto 17),
      s_axi_ctrl_pf1_RDATA(16) => \^s_axi_ctrl_pf1_rdata\(16),
      s_axi_ctrl_pf1_RDATA(15) => NLW_inst_s_axi_ctrl_pf1_RDATA_UNCONNECTED(15),
      s_axi_ctrl_pf1_RDATA(14) => \^s_axi_ctrl_pf1_rdata\(14),
      s_axi_ctrl_pf1_RDATA(13 downto 10) => NLW_inst_s_axi_ctrl_pf1_RDATA_UNCONNECTED(13 downto 10),
      s_axi_ctrl_pf1_RDATA(9) => \^s_axi_ctrl_pf1_rdata\(9),
      s_axi_ctrl_pf1_RDATA(8) => NLW_inst_s_axi_ctrl_pf1_RDATA_UNCONNECTED(8),
      s_axi_ctrl_pf1_RDATA(7 downto 0) => \^s_axi_ctrl_pf1_rdata\(7 downto 0),
      s_axi_ctrl_pf1_RREADY => s_axi_ctrl_pf1_RREADY,
      s_axi_ctrl_pf1_RRESP(1 downto 0) => NLW_inst_s_axi_ctrl_pf1_RRESP_UNCONNECTED(1 downto 0),
      s_axi_ctrl_pf1_RVALID => s_axi_ctrl_pf1_RVALID,
      s_axi_ctrl_pf1_WDATA(31 downto 0) => B"00000000000000000000000000000000",
      s_axi_ctrl_pf1_WREADY => s_axi_ctrl_pf1_WREADY,
      s_axi_ctrl_pf1_WSTRB(3 downto 0) => B"0000",
      s_axi_ctrl_pf1_WVALID => s_axi_ctrl_pf1_WVALID,
      s_axi_ctrl_pf2_ARADDR(31 downto 0) => B"00000000000000000000000000000000",
      s_axi_ctrl_pf2_ARREADY => NLW_inst_s_axi_ctrl_pf2_ARREADY_UNCONNECTED,
      s_axi_ctrl_pf2_ARVALID => '0',
      s_axi_ctrl_pf2_AWADDR(31 downto 0) => B"00000000000000000000000000000000",
      s_axi_ctrl_pf2_AWREADY => NLW_inst_s_axi_ctrl_pf2_AWREADY_UNCONNECTED,
      s_axi_ctrl_pf2_AWVALID => '0',
      s_axi_ctrl_pf2_BREADY => '0',
      s_axi_ctrl_pf2_BRESP(1 downto 0) => NLW_inst_s_axi_ctrl_pf2_BRESP_UNCONNECTED(1 downto 0),
      s_axi_ctrl_pf2_BVALID => NLW_inst_s_axi_ctrl_pf2_BVALID_UNCONNECTED,
      s_axi_ctrl_pf2_RDATA(31 downto 0) => NLW_inst_s_axi_ctrl_pf2_RDATA_UNCONNECTED(31 downto 0),
      s_axi_ctrl_pf2_RREADY => '0',
      s_axi_ctrl_pf2_RRESP(1 downto 0) => NLW_inst_s_axi_ctrl_pf2_RRESP_UNCONNECTED(1 downto 0),
      s_axi_ctrl_pf2_RVALID => NLW_inst_s_axi_ctrl_pf2_RVALID_UNCONNECTED,
      s_axi_ctrl_pf2_WDATA(31 downto 0) => B"00000000000000000000000000000000",
      s_axi_ctrl_pf2_WREADY => NLW_inst_s_axi_ctrl_pf2_WREADY_UNCONNECTED,
      s_axi_ctrl_pf2_WSTRB(3 downto 0) => B"0000",
      s_axi_ctrl_pf2_WVALID => '0',
      s_axi_ctrl_pf3_ARADDR(31 downto 0) => B"00000000000000000000000000000000",
      s_axi_ctrl_pf3_ARREADY => NLW_inst_s_axi_ctrl_pf3_ARREADY_UNCONNECTED,
      s_axi_ctrl_pf3_ARVALID => '0',
      s_axi_ctrl_pf3_AWADDR(31 downto 0) => B"00000000000000000000000000000000",
      s_axi_ctrl_pf3_AWREADY => NLW_inst_s_axi_ctrl_pf3_AWREADY_UNCONNECTED,
      s_axi_ctrl_pf3_AWVALID => '0',
      s_axi_ctrl_pf3_BREADY => '0',
      s_axi_ctrl_pf3_BRESP(1 downto 0) => NLW_inst_s_axi_ctrl_pf3_BRESP_UNCONNECTED(1 downto 0),
      s_axi_ctrl_pf3_BVALID => NLW_inst_s_axi_ctrl_pf3_BVALID_UNCONNECTED,
      s_axi_ctrl_pf3_RDATA(31 downto 0) => NLW_inst_s_axi_ctrl_pf3_RDATA_UNCONNECTED(31 downto 0),
      s_axi_ctrl_pf3_RREADY => '0',
      s_axi_ctrl_pf3_RRESP(1 downto 0) => NLW_inst_s_axi_ctrl_pf3_RRESP_UNCONNECTED(1 downto 0),
      s_axi_ctrl_pf3_RVALID => NLW_inst_s_axi_ctrl_pf3_RVALID_UNCONNECTED,
      s_axi_ctrl_pf3_WDATA(31 downto 0) => B"00000000000000000000000000000000",
      s_axi_ctrl_pf3_WREADY => NLW_inst_s_axi_ctrl_pf3_WREADY_UNCONNECTED,
      s_axi_ctrl_pf3_WSTRB(3 downto 0) => B"0000",
      s_axi_ctrl_pf3_WVALID => '0',
      s_pcie4_cfg_ext_function_number(7 downto 2) => B"000000",
      s_pcie4_cfg_ext_function_number(1 downto 0) => s_pcie4_cfg_ext_function_number(1 downto 0),
      s_pcie4_cfg_ext_read_data(31 downto 26) => NLW_inst_s_pcie4_cfg_ext_read_data_UNCONNECTED(31 downto 26),
      s_pcie4_cfg_ext_read_data(25 downto 24) => \^s_pcie4_cfg_ext_read_data\(25 downto 24),
      s_pcie4_cfg_ext_read_data(23 downto 17) => NLW_inst_s_pcie4_cfg_ext_read_data_UNCONNECTED(23 downto 17),
      s_pcie4_cfg_ext_read_data(16) => \^s_pcie4_cfg_ext_read_data\(16),
      s_pcie4_cfg_ext_read_data(15 downto 13) => NLW_inst_s_pcie4_cfg_ext_read_data_UNCONNECTED(15 downto 13),
      s_pcie4_cfg_ext_read_data(12) => \^s_pcie4_cfg_ext_read_data\(12),
      s_pcie4_cfg_ext_read_data(11 downto 6) => NLW_inst_s_pcie4_cfg_ext_read_data_UNCONNECTED(11 downto 6),
      s_pcie4_cfg_ext_read_data(5) => \^s_pcie4_cfg_ext_read_data\(5),
      s_pcie4_cfg_ext_read_data(4) => NLW_inst_s_pcie4_cfg_ext_read_data_UNCONNECTED(4),
      s_pcie4_cfg_ext_read_data(3) => \^s_pcie4_cfg_ext_read_data\(3),
      s_pcie4_cfg_ext_read_data(2) => NLW_inst_s_pcie4_cfg_ext_read_data_UNCONNECTED(2),
      s_pcie4_cfg_ext_read_data(1 downto 0) => \^s_pcie4_cfg_ext_read_data\(1 downto 0),
      s_pcie4_cfg_ext_read_data_valid => s_pcie4_cfg_ext_read_data_valid,
      s_pcie4_cfg_ext_read_received => s_pcie4_cfg_ext_read_received,
      s_pcie4_cfg_ext_register_number(9 downto 0) => s_pcie4_cfg_ext_register_number(9 downto 0),
      s_pcie4_cfg_ext_write_byte_enable(3 downto 0) => B"0000",
      s_pcie4_cfg_ext_write_data(31 downto 0) => B"00000000000000000000000000000000",
      s_pcie4_cfg_ext_write_received => '0'
    );
end STRUCTURE;
