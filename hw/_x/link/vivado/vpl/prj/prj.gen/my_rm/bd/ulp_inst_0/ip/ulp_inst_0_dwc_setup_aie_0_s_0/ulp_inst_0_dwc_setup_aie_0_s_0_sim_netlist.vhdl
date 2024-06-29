-- Copyright 1986-2023 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2022.2.2 (lin64) Build 3788238 Tue Feb 21 19:59:23 MST 2023
-- Date        : Fri Jun 28 09:23:09 2024
-- Host        : nags27 running 64-bit Ubuntu 20.04.6 LTS
-- Command     : write_vhdl -force -mode funcsim
--               /home/users/eleonora.cabai/Documents/K-Means-AIE/hw/_x/link/vivado/vpl/prj/prj.gen/my_rm/bd/ulp_inst_0/ip/ulp_inst_0_dwc_setup_aie_0_s_0/ulp_inst_0_dwc_setup_aie_0_s_0_sim_netlist.vhdl
-- Design      : ulp_inst_0_dwc_setup_aie_0_s_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xcvc1902-vsvd1760-2MP-e-S
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity ulp_inst_0_dwc_setup_aie_0_s_0_axis_dwidth_converter_v1_1_26_axisc_downsizer is
  port (
    \state_reg[1]_0\ : out STD_LOGIC;
    \state_reg[0]_0\ : out STD_LOGIC;
    m_axis_tdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    aclk : in STD_LOGIC;
    m_axis_tready : in STD_LOGIC;
    areset_r : in STD_LOGIC;
    s_axis_tdata : in STD_LOGIC_VECTOR ( 127 downto 0 );
    s_axis_tvalid : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of ulp_inst_0_dwc_setup_aie_0_s_0_axis_dwidth_converter_v1_1_26_axisc_downsizer : entity is "axis_dwidth_converter_v1_1_26_axisc_downsizer";
end ulp_inst_0_dwc_setup_aie_0_s_0_axis_dwidth_converter_v1_1_26_axisc_downsizer;

architecture STRUCTURE of ulp_inst_0_dwc_setup_aie_0_s_0_axis_dwidth_converter_v1_1_26_axisc_downsizer is
  signal p_0_in : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal p_0_in1_in : STD_LOGIC_VECTOR ( 127 downto 0 );
  signal p_0_in_1 : STD_LOGIC;
  signal p_1_in : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \r0_data_reg_n_0_[100]\ : STD_LOGIC;
  signal \r0_data_reg_n_0_[101]\ : STD_LOGIC;
  signal \r0_data_reg_n_0_[102]\ : STD_LOGIC;
  signal \r0_data_reg_n_0_[103]\ : STD_LOGIC;
  signal \r0_data_reg_n_0_[104]\ : STD_LOGIC;
  signal \r0_data_reg_n_0_[105]\ : STD_LOGIC;
  signal \r0_data_reg_n_0_[106]\ : STD_LOGIC;
  signal \r0_data_reg_n_0_[107]\ : STD_LOGIC;
  signal \r0_data_reg_n_0_[108]\ : STD_LOGIC;
  signal \r0_data_reg_n_0_[109]\ : STD_LOGIC;
  signal \r0_data_reg_n_0_[110]\ : STD_LOGIC;
  signal \r0_data_reg_n_0_[111]\ : STD_LOGIC;
  signal \r0_data_reg_n_0_[112]\ : STD_LOGIC;
  signal \r0_data_reg_n_0_[113]\ : STD_LOGIC;
  signal \r0_data_reg_n_0_[114]\ : STD_LOGIC;
  signal \r0_data_reg_n_0_[115]\ : STD_LOGIC;
  signal \r0_data_reg_n_0_[116]\ : STD_LOGIC;
  signal \r0_data_reg_n_0_[117]\ : STD_LOGIC;
  signal \r0_data_reg_n_0_[118]\ : STD_LOGIC;
  signal \r0_data_reg_n_0_[119]\ : STD_LOGIC;
  signal \r0_data_reg_n_0_[120]\ : STD_LOGIC;
  signal \r0_data_reg_n_0_[121]\ : STD_LOGIC;
  signal \r0_data_reg_n_0_[122]\ : STD_LOGIC;
  signal \r0_data_reg_n_0_[123]\ : STD_LOGIC;
  signal \r0_data_reg_n_0_[124]\ : STD_LOGIC;
  signal \r0_data_reg_n_0_[125]\ : STD_LOGIC;
  signal \r0_data_reg_n_0_[126]\ : STD_LOGIC;
  signal \r0_data_reg_n_0_[127]\ : STD_LOGIC;
  signal \r0_data_reg_n_0_[96]\ : STD_LOGIC;
  signal \r0_data_reg_n_0_[97]\ : STD_LOGIC;
  signal \r0_data_reg_n_0_[98]\ : STD_LOGIC;
  signal \r0_data_reg_n_0_[99]\ : STD_LOGIC;
  signal r0_load : STD_LOGIC;
  signal r0_out_sel_next_r : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \r0_out_sel_next_r[1]_i_2_n_0\ : STD_LOGIC;
  signal r0_out_sel_next_r_0 : STD_LOGIC;
  signal r0_out_sel_r0 : STD_LOGIC;
  signal \r0_out_sel_r[0]_i_1_n_0\ : STD_LOGIC;
  signal \r0_out_sel_r[1]_i_1_n_0\ : STD_LOGIC;
  signal \r0_out_sel_r[1]_i_2_n_0\ : STD_LOGIC;
  signal \r0_out_sel_r_reg_n_0_[0]\ : STD_LOGIC;
  signal \r0_out_sel_r_reg_n_0_[1]\ : STD_LOGIC;
  signal \r1_data[31]_i_1_n_0\ : STD_LOGIC;
  signal state : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \^state_reg[0]_0\ : STD_LOGIC;
  signal \^state_reg[1]_0\ : STD_LOGIC;
  signal \state_reg_n_0_[2]\ : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \r0_out_sel_next_r[1]_i_3\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \r0_out_sel_next_r[1]_i_4\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \r0_out_sel_r[0]_i_1\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \r0_out_sel_r[1]_i_2\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \state[0]_i_1\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \state[0]_i_2\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \state[1]_i_1\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \state[2]_i_1\ : label is "soft_lutpair0";
  attribute FSM_ENCODING : string;
  attribute FSM_ENCODING of \state_reg[0]\ : label is "none";
  attribute FSM_ENCODING of \state_reg[1]\ : label is "none";
  attribute FSM_ENCODING of \state_reg[2]\ : label is "none";
begin
  \state_reg[0]_0\ <= \^state_reg[0]_0\;
  \state_reg[1]_0\ <= \^state_reg[1]_0\;
\m_axis_tdata[0]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => p_0_in1_in(96),
      I1 => p_0_in1_in(32),
      I2 => \r0_out_sel_r_reg_n_0_[0]\,
      I3 => p_0_in1_in(64),
      I4 => \r0_out_sel_r_reg_n_0_[1]\,
      I5 => p_0_in1_in(0),
      O => m_axis_tdata(0)
    );
\m_axis_tdata[10]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => p_0_in1_in(106),
      I1 => p_0_in1_in(42),
      I2 => \r0_out_sel_r_reg_n_0_[0]\,
      I3 => p_0_in1_in(74),
      I4 => \r0_out_sel_r_reg_n_0_[1]\,
      I5 => p_0_in1_in(10),
      O => m_axis_tdata(10)
    );
\m_axis_tdata[11]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => p_0_in1_in(107),
      I1 => p_0_in1_in(43),
      I2 => \r0_out_sel_r_reg_n_0_[0]\,
      I3 => p_0_in1_in(75),
      I4 => \r0_out_sel_r_reg_n_0_[1]\,
      I5 => p_0_in1_in(11),
      O => m_axis_tdata(11)
    );
\m_axis_tdata[12]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => p_0_in1_in(108),
      I1 => p_0_in1_in(44),
      I2 => \r0_out_sel_r_reg_n_0_[0]\,
      I3 => p_0_in1_in(76),
      I4 => \r0_out_sel_r_reg_n_0_[1]\,
      I5 => p_0_in1_in(12),
      O => m_axis_tdata(12)
    );
\m_axis_tdata[13]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => p_0_in1_in(109),
      I1 => p_0_in1_in(45),
      I2 => \r0_out_sel_r_reg_n_0_[0]\,
      I3 => p_0_in1_in(77),
      I4 => \r0_out_sel_r_reg_n_0_[1]\,
      I5 => p_0_in1_in(13),
      O => m_axis_tdata(13)
    );
\m_axis_tdata[14]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => p_0_in1_in(110),
      I1 => p_0_in1_in(46),
      I2 => \r0_out_sel_r_reg_n_0_[0]\,
      I3 => p_0_in1_in(78),
      I4 => \r0_out_sel_r_reg_n_0_[1]\,
      I5 => p_0_in1_in(14),
      O => m_axis_tdata(14)
    );
\m_axis_tdata[15]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => p_0_in1_in(111),
      I1 => p_0_in1_in(47),
      I2 => \r0_out_sel_r_reg_n_0_[0]\,
      I3 => p_0_in1_in(79),
      I4 => \r0_out_sel_r_reg_n_0_[1]\,
      I5 => p_0_in1_in(15),
      O => m_axis_tdata(15)
    );
\m_axis_tdata[16]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => p_0_in1_in(112),
      I1 => p_0_in1_in(48),
      I2 => \r0_out_sel_r_reg_n_0_[0]\,
      I3 => p_0_in1_in(80),
      I4 => \r0_out_sel_r_reg_n_0_[1]\,
      I5 => p_0_in1_in(16),
      O => m_axis_tdata(16)
    );
\m_axis_tdata[17]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => p_0_in1_in(113),
      I1 => p_0_in1_in(49),
      I2 => \r0_out_sel_r_reg_n_0_[0]\,
      I3 => p_0_in1_in(81),
      I4 => \r0_out_sel_r_reg_n_0_[1]\,
      I5 => p_0_in1_in(17),
      O => m_axis_tdata(17)
    );
\m_axis_tdata[18]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => p_0_in1_in(114),
      I1 => p_0_in1_in(50),
      I2 => \r0_out_sel_r_reg_n_0_[0]\,
      I3 => p_0_in1_in(82),
      I4 => \r0_out_sel_r_reg_n_0_[1]\,
      I5 => p_0_in1_in(18),
      O => m_axis_tdata(18)
    );
\m_axis_tdata[19]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => p_0_in1_in(115),
      I1 => p_0_in1_in(51),
      I2 => \r0_out_sel_r_reg_n_0_[0]\,
      I3 => p_0_in1_in(83),
      I4 => \r0_out_sel_r_reg_n_0_[1]\,
      I5 => p_0_in1_in(19),
      O => m_axis_tdata(19)
    );
\m_axis_tdata[1]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => p_0_in1_in(97),
      I1 => p_0_in1_in(33),
      I2 => \r0_out_sel_r_reg_n_0_[0]\,
      I3 => p_0_in1_in(65),
      I4 => \r0_out_sel_r_reg_n_0_[1]\,
      I5 => p_0_in1_in(1),
      O => m_axis_tdata(1)
    );
\m_axis_tdata[20]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => p_0_in1_in(116),
      I1 => p_0_in1_in(52),
      I2 => \r0_out_sel_r_reg_n_0_[0]\,
      I3 => p_0_in1_in(84),
      I4 => \r0_out_sel_r_reg_n_0_[1]\,
      I5 => p_0_in1_in(20),
      O => m_axis_tdata(20)
    );
\m_axis_tdata[21]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => p_0_in1_in(117),
      I1 => p_0_in1_in(53),
      I2 => \r0_out_sel_r_reg_n_0_[0]\,
      I3 => p_0_in1_in(85),
      I4 => \r0_out_sel_r_reg_n_0_[1]\,
      I5 => p_0_in1_in(21),
      O => m_axis_tdata(21)
    );
\m_axis_tdata[22]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => p_0_in1_in(118),
      I1 => p_0_in1_in(54),
      I2 => \r0_out_sel_r_reg_n_0_[0]\,
      I3 => p_0_in1_in(86),
      I4 => \r0_out_sel_r_reg_n_0_[1]\,
      I5 => p_0_in1_in(22),
      O => m_axis_tdata(22)
    );
\m_axis_tdata[23]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => p_0_in1_in(119),
      I1 => p_0_in1_in(55),
      I2 => \r0_out_sel_r_reg_n_0_[0]\,
      I3 => p_0_in1_in(87),
      I4 => \r0_out_sel_r_reg_n_0_[1]\,
      I5 => p_0_in1_in(23),
      O => m_axis_tdata(23)
    );
\m_axis_tdata[24]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => p_0_in1_in(120),
      I1 => p_0_in1_in(56),
      I2 => \r0_out_sel_r_reg_n_0_[0]\,
      I3 => p_0_in1_in(88),
      I4 => \r0_out_sel_r_reg_n_0_[1]\,
      I5 => p_0_in1_in(24),
      O => m_axis_tdata(24)
    );
\m_axis_tdata[25]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => p_0_in1_in(121),
      I1 => p_0_in1_in(57),
      I2 => \r0_out_sel_r_reg_n_0_[0]\,
      I3 => p_0_in1_in(89),
      I4 => \r0_out_sel_r_reg_n_0_[1]\,
      I5 => p_0_in1_in(25),
      O => m_axis_tdata(25)
    );
\m_axis_tdata[26]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => p_0_in1_in(122),
      I1 => p_0_in1_in(58),
      I2 => \r0_out_sel_r_reg_n_0_[0]\,
      I3 => p_0_in1_in(90),
      I4 => \r0_out_sel_r_reg_n_0_[1]\,
      I5 => p_0_in1_in(26),
      O => m_axis_tdata(26)
    );
\m_axis_tdata[27]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => p_0_in1_in(123),
      I1 => p_0_in1_in(59),
      I2 => \r0_out_sel_r_reg_n_0_[0]\,
      I3 => p_0_in1_in(91),
      I4 => \r0_out_sel_r_reg_n_0_[1]\,
      I5 => p_0_in1_in(27),
      O => m_axis_tdata(27)
    );
\m_axis_tdata[28]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => p_0_in1_in(124),
      I1 => p_0_in1_in(60),
      I2 => \r0_out_sel_r_reg_n_0_[0]\,
      I3 => p_0_in1_in(92),
      I4 => \r0_out_sel_r_reg_n_0_[1]\,
      I5 => p_0_in1_in(28),
      O => m_axis_tdata(28)
    );
\m_axis_tdata[29]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => p_0_in1_in(125),
      I1 => p_0_in1_in(61),
      I2 => \r0_out_sel_r_reg_n_0_[0]\,
      I3 => p_0_in1_in(93),
      I4 => \r0_out_sel_r_reg_n_0_[1]\,
      I5 => p_0_in1_in(29),
      O => m_axis_tdata(29)
    );
\m_axis_tdata[2]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => p_0_in1_in(98),
      I1 => p_0_in1_in(34),
      I2 => \r0_out_sel_r_reg_n_0_[0]\,
      I3 => p_0_in1_in(66),
      I4 => \r0_out_sel_r_reg_n_0_[1]\,
      I5 => p_0_in1_in(2),
      O => m_axis_tdata(2)
    );
\m_axis_tdata[30]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => p_0_in1_in(126),
      I1 => p_0_in1_in(62),
      I2 => \r0_out_sel_r_reg_n_0_[0]\,
      I3 => p_0_in1_in(94),
      I4 => \r0_out_sel_r_reg_n_0_[1]\,
      I5 => p_0_in1_in(30),
      O => m_axis_tdata(30)
    );
\m_axis_tdata[31]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => p_0_in1_in(127),
      I1 => p_0_in1_in(63),
      I2 => \r0_out_sel_r_reg_n_0_[0]\,
      I3 => p_0_in1_in(95),
      I4 => \r0_out_sel_r_reg_n_0_[1]\,
      I5 => p_0_in1_in(31),
      O => m_axis_tdata(31)
    );
\m_axis_tdata[3]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => p_0_in1_in(99),
      I1 => p_0_in1_in(35),
      I2 => \r0_out_sel_r_reg_n_0_[0]\,
      I3 => p_0_in1_in(67),
      I4 => \r0_out_sel_r_reg_n_0_[1]\,
      I5 => p_0_in1_in(3),
      O => m_axis_tdata(3)
    );
\m_axis_tdata[4]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => p_0_in1_in(100),
      I1 => p_0_in1_in(36),
      I2 => \r0_out_sel_r_reg_n_0_[0]\,
      I3 => p_0_in1_in(68),
      I4 => \r0_out_sel_r_reg_n_0_[1]\,
      I5 => p_0_in1_in(4),
      O => m_axis_tdata(4)
    );
\m_axis_tdata[5]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => p_0_in1_in(101),
      I1 => p_0_in1_in(37),
      I2 => \r0_out_sel_r_reg_n_0_[0]\,
      I3 => p_0_in1_in(69),
      I4 => \r0_out_sel_r_reg_n_0_[1]\,
      I5 => p_0_in1_in(5),
      O => m_axis_tdata(5)
    );
\m_axis_tdata[6]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => p_0_in1_in(102),
      I1 => p_0_in1_in(38),
      I2 => \r0_out_sel_r_reg_n_0_[0]\,
      I3 => p_0_in1_in(70),
      I4 => \r0_out_sel_r_reg_n_0_[1]\,
      I5 => p_0_in1_in(6),
      O => m_axis_tdata(6)
    );
\m_axis_tdata[7]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => p_0_in1_in(103),
      I1 => p_0_in1_in(39),
      I2 => \r0_out_sel_r_reg_n_0_[0]\,
      I3 => p_0_in1_in(71),
      I4 => \r0_out_sel_r_reg_n_0_[1]\,
      I5 => p_0_in1_in(7),
      O => m_axis_tdata(7)
    );
\m_axis_tdata[8]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => p_0_in1_in(104),
      I1 => p_0_in1_in(40),
      I2 => \r0_out_sel_r_reg_n_0_[0]\,
      I3 => p_0_in1_in(72),
      I4 => \r0_out_sel_r_reg_n_0_[1]\,
      I5 => p_0_in1_in(8),
      O => m_axis_tdata(8)
    );
\m_axis_tdata[9]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => p_0_in1_in(105),
      I1 => p_0_in1_in(41),
      I2 => \r0_out_sel_r_reg_n_0_[0]\,
      I3 => p_0_in1_in(73),
      I4 => \r0_out_sel_r_reg_n_0_[1]\,
      I5 => p_0_in1_in(9),
      O => m_axis_tdata(9)
    );
\r0_data[127]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"4"
    )
        port map (
      I0 => \state_reg_n_0_[2]\,
      I1 => \^state_reg[0]_0\,
      O => r0_load
    );
\r0_data_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => r0_load,
      D => s_axis_tdata(0),
      Q => p_0_in1_in(0),
      R => '0'
    );
\r0_data_reg[100]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => r0_load,
      D => s_axis_tdata(100),
      Q => \r0_data_reg_n_0_[100]\,
      R => '0'
    );
\r0_data_reg[101]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => r0_load,
      D => s_axis_tdata(101),
      Q => \r0_data_reg_n_0_[101]\,
      R => '0'
    );
\r0_data_reg[102]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => r0_load,
      D => s_axis_tdata(102),
      Q => \r0_data_reg_n_0_[102]\,
      R => '0'
    );
\r0_data_reg[103]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => r0_load,
      D => s_axis_tdata(103),
      Q => \r0_data_reg_n_0_[103]\,
      R => '0'
    );
\r0_data_reg[104]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => r0_load,
      D => s_axis_tdata(104),
      Q => \r0_data_reg_n_0_[104]\,
      R => '0'
    );
\r0_data_reg[105]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => r0_load,
      D => s_axis_tdata(105),
      Q => \r0_data_reg_n_0_[105]\,
      R => '0'
    );
\r0_data_reg[106]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => r0_load,
      D => s_axis_tdata(106),
      Q => \r0_data_reg_n_0_[106]\,
      R => '0'
    );
\r0_data_reg[107]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => r0_load,
      D => s_axis_tdata(107),
      Q => \r0_data_reg_n_0_[107]\,
      R => '0'
    );
\r0_data_reg[108]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => r0_load,
      D => s_axis_tdata(108),
      Q => \r0_data_reg_n_0_[108]\,
      R => '0'
    );
\r0_data_reg[109]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => r0_load,
      D => s_axis_tdata(109),
      Q => \r0_data_reg_n_0_[109]\,
      R => '0'
    );
\r0_data_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => r0_load,
      D => s_axis_tdata(10),
      Q => p_0_in1_in(10),
      R => '0'
    );
\r0_data_reg[110]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => r0_load,
      D => s_axis_tdata(110),
      Q => \r0_data_reg_n_0_[110]\,
      R => '0'
    );
\r0_data_reg[111]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => r0_load,
      D => s_axis_tdata(111),
      Q => \r0_data_reg_n_0_[111]\,
      R => '0'
    );
\r0_data_reg[112]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => r0_load,
      D => s_axis_tdata(112),
      Q => \r0_data_reg_n_0_[112]\,
      R => '0'
    );
\r0_data_reg[113]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => r0_load,
      D => s_axis_tdata(113),
      Q => \r0_data_reg_n_0_[113]\,
      R => '0'
    );
\r0_data_reg[114]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => r0_load,
      D => s_axis_tdata(114),
      Q => \r0_data_reg_n_0_[114]\,
      R => '0'
    );
\r0_data_reg[115]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => r0_load,
      D => s_axis_tdata(115),
      Q => \r0_data_reg_n_0_[115]\,
      R => '0'
    );
\r0_data_reg[116]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => r0_load,
      D => s_axis_tdata(116),
      Q => \r0_data_reg_n_0_[116]\,
      R => '0'
    );
\r0_data_reg[117]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => r0_load,
      D => s_axis_tdata(117),
      Q => \r0_data_reg_n_0_[117]\,
      R => '0'
    );
\r0_data_reg[118]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => r0_load,
      D => s_axis_tdata(118),
      Q => \r0_data_reg_n_0_[118]\,
      R => '0'
    );
\r0_data_reg[119]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => r0_load,
      D => s_axis_tdata(119),
      Q => \r0_data_reg_n_0_[119]\,
      R => '0'
    );
\r0_data_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => r0_load,
      D => s_axis_tdata(11),
      Q => p_0_in1_in(11),
      R => '0'
    );
\r0_data_reg[120]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => r0_load,
      D => s_axis_tdata(120),
      Q => \r0_data_reg_n_0_[120]\,
      R => '0'
    );
\r0_data_reg[121]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => r0_load,
      D => s_axis_tdata(121),
      Q => \r0_data_reg_n_0_[121]\,
      R => '0'
    );
\r0_data_reg[122]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => r0_load,
      D => s_axis_tdata(122),
      Q => \r0_data_reg_n_0_[122]\,
      R => '0'
    );
\r0_data_reg[123]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => r0_load,
      D => s_axis_tdata(123),
      Q => \r0_data_reg_n_0_[123]\,
      R => '0'
    );
\r0_data_reg[124]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => r0_load,
      D => s_axis_tdata(124),
      Q => \r0_data_reg_n_0_[124]\,
      R => '0'
    );
\r0_data_reg[125]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => r0_load,
      D => s_axis_tdata(125),
      Q => \r0_data_reg_n_0_[125]\,
      R => '0'
    );
\r0_data_reg[126]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => r0_load,
      D => s_axis_tdata(126),
      Q => \r0_data_reg_n_0_[126]\,
      R => '0'
    );
\r0_data_reg[127]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => r0_load,
      D => s_axis_tdata(127),
      Q => \r0_data_reg_n_0_[127]\,
      R => '0'
    );
\r0_data_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => r0_load,
      D => s_axis_tdata(12),
      Q => p_0_in1_in(12),
      R => '0'
    );
\r0_data_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => r0_load,
      D => s_axis_tdata(13),
      Q => p_0_in1_in(13),
      R => '0'
    );
\r0_data_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => r0_load,
      D => s_axis_tdata(14),
      Q => p_0_in1_in(14),
      R => '0'
    );
\r0_data_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => r0_load,
      D => s_axis_tdata(15),
      Q => p_0_in1_in(15),
      R => '0'
    );
\r0_data_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => r0_load,
      D => s_axis_tdata(16),
      Q => p_0_in1_in(16),
      R => '0'
    );
\r0_data_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => r0_load,
      D => s_axis_tdata(17),
      Q => p_0_in1_in(17),
      R => '0'
    );
\r0_data_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => r0_load,
      D => s_axis_tdata(18),
      Q => p_0_in1_in(18),
      R => '0'
    );
\r0_data_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => r0_load,
      D => s_axis_tdata(19),
      Q => p_0_in1_in(19),
      R => '0'
    );
\r0_data_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => r0_load,
      D => s_axis_tdata(1),
      Q => p_0_in1_in(1),
      R => '0'
    );
\r0_data_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => r0_load,
      D => s_axis_tdata(20),
      Q => p_0_in1_in(20),
      R => '0'
    );
\r0_data_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => r0_load,
      D => s_axis_tdata(21),
      Q => p_0_in1_in(21),
      R => '0'
    );
\r0_data_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => r0_load,
      D => s_axis_tdata(22),
      Q => p_0_in1_in(22),
      R => '0'
    );
\r0_data_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => r0_load,
      D => s_axis_tdata(23),
      Q => p_0_in1_in(23),
      R => '0'
    );
\r0_data_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => r0_load,
      D => s_axis_tdata(24),
      Q => p_0_in1_in(24),
      R => '0'
    );
\r0_data_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => r0_load,
      D => s_axis_tdata(25),
      Q => p_0_in1_in(25),
      R => '0'
    );
\r0_data_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => r0_load,
      D => s_axis_tdata(26),
      Q => p_0_in1_in(26),
      R => '0'
    );
\r0_data_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => r0_load,
      D => s_axis_tdata(27),
      Q => p_0_in1_in(27),
      R => '0'
    );
\r0_data_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => r0_load,
      D => s_axis_tdata(28),
      Q => p_0_in1_in(28),
      R => '0'
    );
\r0_data_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => r0_load,
      D => s_axis_tdata(29),
      Q => p_0_in1_in(29),
      R => '0'
    );
\r0_data_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => r0_load,
      D => s_axis_tdata(2),
      Q => p_0_in1_in(2),
      R => '0'
    );
\r0_data_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => r0_load,
      D => s_axis_tdata(30),
      Q => p_0_in1_in(30),
      R => '0'
    );
\r0_data_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => r0_load,
      D => s_axis_tdata(31),
      Q => p_0_in1_in(31),
      R => '0'
    );
\r0_data_reg[32]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => r0_load,
      D => s_axis_tdata(32),
      Q => p_0_in1_in(32),
      R => '0'
    );
\r0_data_reg[33]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => r0_load,
      D => s_axis_tdata(33),
      Q => p_0_in1_in(33),
      R => '0'
    );
\r0_data_reg[34]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => r0_load,
      D => s_axis_tdata(34),
      Q => p_0_in1_in(34),
      R => '0'
    );
\r0_data_reg[35]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => r0_load,
      D => s_axis_tdata(35),
      Q => p_0_in1_in(35),
      R => '0'
    );
\r0_data_reg[36]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => r0_load,
      D => s_axis_tdata(36),
      Q => p_0_in1_in(36),
      R => '0'
    );
\r0_data_reg[37]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => r0_load,
      D => s_axis_tdata(37),
      Q => p_0_in1_in(37),
      R => '0'
    );
\r0_data_reg[38]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => r0_load,
      D => s_axis_tdata(38),
      Q => p_0_in1_in(38),
      R => '0'
    );
\r0_data_reg[39]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => r0_load,
      D => s_axis_tdata(39),
      Q => p_0_in1_in(39),
      R => '0'
    );
\r0_data_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => r0_load,
      D => s_axis_tdata(3),
      Q => p_0_in1_in(3),
      R => '0'
    );
\r0_data_reg[40]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => r0_load,
      D => s_axis_tdata(40),
      Q => p_0_in1_in(40),
      R => '0'
    );
\r0_data_reg[41]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => r0_load,
      D => s_axis_tdata(41),
      Q => p_0_in1_in(41),
      R => '0'
    );
\r0_data_reg[42]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => r0_load,
      D => s_axis_tdata(42),
      Q => p_0_in1_in(42),
      R => '0'
    );
\r0_data_reg[43]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => r0_load,
      D => s_axis_tdata(43),
      Q => p_0_in1_in(43),
      R => '0'
    );
\r0_data_reg[44]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => r0_load,
      D => s_axis_tdata(44),
      Q => p_0_in1_in(44),
      R => '0'
    );
\r0_data_reg[45]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => r0_load,
      D => s_axis_tdata(45),
      Q => p_0_in1_in(45),
      R => '0'
    );
\r0_data_reg[46]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => r0_load,
      D => s_axis_tdata(46),
      Q => p_0_in1_in(46),
      R => '0'
    );
\r0_data_reg[47]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => r0_load,
      D => s_axis_tdata(47),
      Q => p_0_in1_in(47),
      R => '0'
    );
\r0_data_reg[48]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => r0_load,
      D => s_axis_tdata(48),
      Q => p_0_in1_in(48),
      R => '0'
    );
\r0_data_reg[49]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => r0_load,
      D => s_axis_tdata(49),
      Q => p_0_in1_in(49),
      R => '0'
    );
\r0_data_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => r0_load,
      D => s_axis_tdata(4),
      Q => p_0_in1_in(4),
      R => '0'
    );
\r0_data_reg[50]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => r0_load,
      D => s_axis_tdata(50),
      Q => p_0_in1_in(50),
      R => '0'
    );
\r0_data_reg[51]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => r0_load,
      D => s_axis_tdata(51),
      Q => p_0_in1_in(51),
      R => '0'
    );
\r0_data_reg[52]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => r0_load,
      D => s_axis_tdata(52),
      Q => p_0_in1_in(52),
      R => '0'
    );
\r0_data_reg[53]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => r0_load,
      D => s_axis_tdata(53),
      Q => p_0_in1_in(53),
      R => '0'
    );
\r0_data_reg[54]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => r0_load,
      D => s_axis_tdata(54),
      Q => p_0_in1_in(54),
      R => '0'
    );
\r0_data_reg[55]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => r0_load,
      D => s_axis_tdata(55),
      Q => p_0_in1_in(55),
      R => '0'
    );
\r0_data_reg[56]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => r0_load,
      D => s_axis_tdata(56),
      Q => p_0_in1_in(56),
      R => '0'
    );
\r0_data_reg[57]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => r0_load,
      D => s_axis_tdata(57),
      Q => p_0_in1_in(57),
      R => '0'
    );
\r0_data_reg[58]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => r0_load,
      D => s_axis_tdata(58),
      Q => p_0_in1_in(58),
      R => '0'
    );
\r0_data_reg[59]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => r0_load,
      D => s_axis_tdata(59),
      Q => p_0_in1_in(59),
      R => '0'
    );
\r0_data_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => r0_load,
      D => s_axis_tdata(5),
      Q => p_0_in1_in(5),
      R => '0'
    );
\r0_data_reg[60]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => r0_load,
      D => s_axis_tdata(60),
      Q => p_0_in1_in(60),
      R => '0'
    );
\r0_data_reg[61]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => r0_load,
      D => s_axis_tdata(61),
      Q => p_0_in1_in(61),
      R => '0'
    );
\r0_data_reg[62]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => r0_load,
      D => s_axis_tdata(62),
      Q => p_0_in1_in(62),
      R => '0'
    );
\r0_data_reg[63]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => r0_load,
      D => s_axis_tdata(63),
      Q => p_0_in1_in(63),
      R => '0'
    );
\r0_data_reg[64]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => r0_load,
      D => s_axis_tdata(64),
      Q => p_0_in1_in(64),
      R => '0'
    );
\r0_data_reg[65]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => r0_load,
      D => s_axis_tdata(65),
      Q => p_0_in1_in(65),
      R => '0'
    );
\r0_data_reg[66]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => r0_load,
      D => s_axis_tdata(66),
      Q => p_0_in1_in(66),
      R => '0'
    );
\r0_data_reg[67]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => r0_load,
      D => s_axis_tdata(67),
      Q => p_0_in1_in(67),
      R => '0'
    );
\r0_data_reg[68]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => r0_load,
      D => s_axis_tdata(68),
      Q => p_0_in1_in(68),
      R => '0'
    );
\r0_data_reg[69]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => r0_load,
      D => s_axis_tdata(69),
      Q => p_0_in1_in(69),
      R => '0'
    );
\r0_data_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => r0_load,
      D => s_axis_tdata(6),
      Q => p_0_in1_in(6),
      R => '0'
    );
\r0_data_reg[70]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => r0_load,
      D => s_axis_tdata(70),
      Q => p_0_in1_in(70),
      R => '0'
    );
\r0_data_reg[71]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => r0_load,
      D => s_axis_tdata(71),
      Q => p_0_in1_in(71),
      R => '0'
    );
\r0_data_reg[72]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => r0_load,
      D => s_axis_tdata(72),
      Q => p_0_in1_in(72),
      R => '0'
    );
\r0_data_reg[73]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => r0_load,
      D => s_axis_tdata(73),
      Q => p_0_in1_in(73),
      R => '0'
    );
\r0_data_reg[74]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => r0_load,
      D => s_axis_tdata(74),
      Q => p_0_in1_in(74),
      R => '0'
    );
\r0_data_reg[75]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => r0_load,
      D => s_axis_tdata(75),
      Q => p_0_in1_in(75),
      R => '0'
    );
\r0_data_reg[76]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => r0_load,
      D => s_axis_tdata(76),
      Q => p_0_in1_in(76),
      R => '0'
    );
\r0_data_reg[77]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => r0_load,
      D => s_axis_tdata(77),
      Q => p_0_in1_in(77),
      R => '0'
    );
\r0_data_reg[78]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => r0_load,
      D => s_axis_tdata(78),
      Q => p_0_in1_in(78),
      R => '0'
    );
\r0_data_reg[79]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => r0_load,
      D => s_axis_tdata(79),
      Q => p_0_in1_in(79),
      R => '0'
    );
\r0_data_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => r0_load,
      D => s_axis_tdata(7),
      Q => p_0_in1_in(7),
      R => '0'
    );
\r0_data_reg[80]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => r0_load,
      D => s_axis_tdata(80),
      Q => p_0_in1_in(80),
      R => '0'
    );
\r0_data_reg[81]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => r0_load,
      D => s_axis_tdata(81),
      Q => p_0_in1_in(81),
      R => '0'
    );
\r0_data_reg[82]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => r0_load,
      D => s_axis_tdata(82),
      Q => p_0_in1_in(82),
      R => '0'
    );
\r0_data_reg[83]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => r0_load,
      D => s_axis_tdata(83),
      Q => p_0_in1_in(83),
      R => '0'
    );
\r0_data_reg[84]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => r0_load,
      D => s_axis_tdata(84),
      Q => p_0_in1_in(84),
      R => '0'
    );
\r0_data_reg[85]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => r0_load,
      D => s_axis_tdata(85),
      Q => p_0_in1_in(85),
      R => '0'
    );
\r0_data_reg[86]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => r0_load,
      D => s_axis_tdata(86),
      Q => p_0_in1_in(86),
      R => '0'
    );
\r0_data_reg[87]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => r0_load,
      D => s_axis_tdata(87),
      Q => p_0_in1_in(87),
      R => '0'
    );
\r0_data_reg[88]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => r0_load,
      D => s_axis_tdata(88),
      Q => p_0_in1_in(88),
      R => '0'
    );
\r0_data_reg[89]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => r0_load,
      D => s_axis_tdata(89),
      Q => p_0_in1_in(89),
      R => '0'
    );
\r0_data_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => r0_load,
      D => s_axis_tdata(8),
      Q => p_0_in1_in(8),
      R => '0'
    );
\r0_data_reg[90]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => r0_load,
      D => s_axis_tdata(90),
      Q => p_0_in1_in(90),
      R => '0'
    );
\r0_data_reg[91]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => r0_load,
      D => s_axis_tdata(91),
      Q => p_0_in1_in(91),
      R => '0'
    );
\r0_data_reg[92]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => r0_load,
      D => s_axis_tdata(92),
      Q => p_0_in1_in(92),
      R => '0'
    );
\r0_data_reg[93]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => r0_load,
      D => s_axis_tdata(93),
      Q => p_0_in1_in(93),
      R => '0'
    );
\r0_data_reg[94]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => r0_load,
      D => s_axis_tdata(94),
      Q => p_0_in1_in(94),
      R => '0'
    );
\r0_data_reg[95]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => r0_load,
      D => s_axis_tdata(95),
      Q => p_0_in1_in(95),
      R => '0'
    );
\r0_data_reg[96]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => r0_load,
      D => s_axis_tdata(96),
      Q => \r0_data_reg_n_0_[96]\,
      R => '0'
    );
\r0_data_reg[97]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => r0_load,
      D => s_axis_tdata(97),
      Q => \r0_data_reg_n_0_[97]\,
      R => '0'
    );
\r0_data_reg[98]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => r0_load,
      D => s_axis_tdata(98),
      Q => \r0_data_reg_n_0_[98]\,
      R => '0'
    );
\r0_data_reg[99]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => r0_load,
      D => s_axis_tdata(99),
      Q => \r0_data_reg_n_0_[99]\,
      R => '0'
    );
\r0_data_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => r0_load,
      D => s_axis_tdata(9),
      Q => p_0_in1_in(9),
      R => '0'
    );
\r0_out_sel_next_r[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => r0_out_sel_next_r(0),
      O => p_1_in(0)
    );
\r0_out_sel_next_r[1]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FEEEEEEE"
    )
        port map (
      I0 => areset_r,
      I1 => p_0_in_1,
      I2 => \r0_out_sel_r_reg_n_0_[0]\,
      I3 => \r0_out_sel_r_reg_n_0_[1]\,
      I4 => m_axis_tready,
      O => r0_out_sel_next_r_0
    );
\r0_out_sel_next_r[1]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"2A"
    )
        port map (
      I0 => m_axis_tready,
      I1 => r0_out_sel_next_r(0),
      I2 => r0_out_sel_next_r(1),
      O => \r0_out_sel_next_r[1]_i_2_n_0\
    );
\r0_out_sel_next_r[1]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => r0_out_sel_next_r(0),
      I1 => r0_out_sel_next_r(1),
      O => p_1_in(1)
    );
\r0_out_sel_next_r[1]_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"02"
    )
        port map (
      I0 => \^state_reg[0]_0\,
      I1 => \state_reg_n_0_[2]\,
      I2 => \^state_reg[1]_0\,
      O => p_0_in_1
    );
\r0_out_sel_next_r_reg[0]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => aclk,
      CE => \r0_out_sel_next_r[1]_i_2_n_0\,
      D => p_1_in(0),
      Q => r0_out_sel_next_r(0),
      S => r0_out_sel_next_r_0
    );
\r0_out_sel_next_r_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => \r0_out_sel_next_r[1]_i_2_n_0\,
      D => p_1_in(1),
      Q => r0_out_sel_next_r(1),
      R => r0_out_sel_next_r_0
    );
\r0_out_sel_r[0]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => r0_out_sel_next_r(0),
      I1 => r0_out_sel_r0,
      O => \r0_out_sel_r[0]_i_1_n_0\
    );
\r0_out_sel_r[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => m_axis_tready,
      I1 => r0_out_sel_r0,
      O => \r0_out_sel_r[1]_i_1_n_0\
    );
\r0_out_sel_r[1]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => r0_out_sel_next_r(1),
      I1 => r0_out_sel_r0,
      O => \r0_out_sel_r[1]_i_2_n_0\
    );
\r0_out_sel_r_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => \r0_out_sel_r[1]_i_1_n_0\,
      D => \r0_out_sel_r[0]_i_1_n_0\,
      Q => \r0_out_sel_r_reg_n_0_[0]\,
      R => r0_out_sel_next_r_0
    );
\r0_out_sel_r_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => \r0_out_sel_r[1]_i_1_n_0\,
      D => \r0_out_sel_r[1]_i_2_n_0\,
      Q => \r0_out_sel_r_reg_n_0_[1]\,
      R => r0_out_sel_next_r_0
    );
\r1_data[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \r0_data_reg_n_0_[96]\,
      I1 => p_0_in1_in(32),
      I2 => r0_out_sel_next_r(0),
      I3 => p_0_in1_in(64),
      I4 => r0_out_sel_next_r(1),
      I5 => p_0_in1_in(0),
      O => p_0_in(0)
    );
\r1_data[10]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \r0_data_reg_n_0_[106]\,
      I1 => p_0_in1_in(42),
      I2 => r0_out_sel_next_r(0),
      I3 => p_0_in1_in(74),
      I4 => r0_out_sel_next_r(1),
      I5 => p_0_in1_in(10),
      O => p_0_in(10)
    );
\r1_data[11]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \r0_data_reg_n_0_[107]\,
      I1 => p_0_in1_in(43),
      I2 => r0_out_sel_next_r(0),
      I3 => p_0_in1_in(75),
      I4 => r0_out_sel_next_r(1),
      I5 => p_0_in1_in(11),
      O => p_0_in(11)
    );
\r1_data[12]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \r0_data_reg_n_0_[108]\,
      I1 => p_0_in1_in(44),
      I2 => r0_out_sel_next_r(0),
      I3 => p_0_in1_in(76),
      I4 => r0_out_sel_next_r(1),
      I5 => p_0_in1_in(12),
      O => p_0_in(12)
    );
\r1_data[13]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \r0_data_reg_n_0_[109]\,
      I1 => p_0_in1_in(45),
      I2 => r0_out_sel_next_r(0),
      I3 => p_0_in1_in(77),
      I4 => r0_out_sel_next_r(1),
      I5 => p_0_in1_in(13),
      O => p_0_in(13)
    );
\r1_data[14]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \r0_data_reg_n_0_[110]\,
      I1 => p_0_in1_in(46),
      I2 => r0_out_sel_next_r(0),
      I3 => p_0_in1_in(78),
      I4 => r0_out_sel_next_r(1),
      I5 => p_0_in1_in(14),
      O => p_0_in(14)
    );
\r1_data[15]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \r0_data_reg_n_0_[111]\,
      I1 => p_0_in1_in(47),
      I2 => r0_out_sel_next_r(0),
      I3 => p_0_in1_in(79),
      I4 => r0_out_sel_next_r(1),
      I5 => p_0_in1_in(15),
      O => p_0_in(15)
    );
\r1_data[16]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \r0_data_reg_n_0_[112]\,
      I1 => p_0_in1_in(48),
      I2 => r0_out_sel_next_r(0),
      I3 => p_0_in1_in(80),
      I4 => r0_out_sel_next_r(1),
      I5 => p_0_in1_in(16),
      O => p_0_in(16)
    );
\r1_data[17]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \r0_data_reg_n_0_[113]\,
      I1 => p_0_in1_in(49),
      I2 => r0_out_sel_next_r(0),
      I3 => p_0_in1_in(81),
      I4 => r0_out_sel_next_r(1),
      I5 => p_0_in1_in(17),
      O => p_0_in(17)
    );
\r1_data[18]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \r0_data_reg_n_0_[114]\,
      I1 => p_0_in1_in(50),
      I2 => r0_out_sel_next_r(0),
      I3 => p_0_in1_in(82),
      I4 => r0_out_sel_next_r(1),
      I5 => p_0_in1_in(18),
      O => p_0_in(18)
    );
\r1_data[19]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \r0_data_reg_n_0_[115]\,
      I1 => p_0_in1_in(51),
      I2 => r0_out_sel_next_r(0),
      I3 => p_0_in1_in(83),
      I4 => r0_out_sel_next_r(1),
      I5 => p_0_in1_in(19),
      O => p_0_in(19)
    );
\r1_data[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \r0_data_reg_n_0_[97]\,
      I1 => p_0_in1_in(33),
      I2 => r0_out_sel_next_r(0),
      I3 => p_0_in1_in(65),
      I4 => r0_out_sel_next_r(1),
      I5 => p_0_in1_in(1),
      O => p_0_in(1)
    );
\r1_data[20]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \r0_data_reg_n_0_[116]\,
      I1 => p_0_in1_in(52),
      I2 => r0_out_sel_next_r(0),
      I3 => p_0_in1_in(84),
      I4 => r0_out_sel_next_r(1),
      I5 => p_0_in1_in(20),
      O => p_0_in(20)
    );
\r1_data[21]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \r0_data_reg_n_0_[117]\,
      I1 => p_0_in1_in(53),
      I2 => r0_out_sel_next_r(0),
      I3 => p_0_in1_in(85),
      I4 => r0_out_sel_next_r(1),
      I5 => p_0_in1_in(21),
      O => p_0_in(21)
    );
\r1_data[22]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \r0_data_reg_n_0_[118]\,
      I1 => p_0_in1_in(54),
      I2 => r0_out_sel_next_r(0),
      I3 => p_0_in1_in(86),
      I4 => r0_out_sel_next_r(1),
      I5 => p_0_in1_in(22),
      O => p_0_in(22)
    );
\r1_data[23]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \r0_data_reg_n_0_[119]\,
      I1 => p_0_in1_in(55),
      I2 => r0_out_sel_next_r(0),
      I3 => p_0_in1_in(87),
      I4 => r0_out_sel_next_r(1),
      I5 => p_0_in1_in(23),
      O => p_0_in(23)
    );
\r1_data[24]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \r0_data_reg_n_0_[120]\,
      I1 => p_0_in1_in(56),
      I2 => r0_out_sel_next_r(0),
      I3 => p_0_in1_in(88),
      I4 => r0_out_sel_next_r(1),
      I5 => p_0_in1_in(24),
      O => p_0_in(24)
    );
\r1_data[25]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \r0_data_reg_n_0_[121]\,
      I1 => p_0_in1_in(57),
      I2 => r0_out_sel_next_r(0),
      I3 => p_0_in1_in(89),
      I4 => r0_out_sel_next_r(1),
      I5 => p_0_in1_in(25),
      O => p_0_in(25)
    );
\r1_data[26]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \r0_data_reg_n_0_[122]\,
      I1 => p_0_in1_in(58),
      I2 => r0_out_sel_next_r(0),
      I3 => p_0_in1_in(90),
      I4 => r0_out_sel_next_r(1),
      I5 => p_0_in1_in(26),
      O => p_0_in(26)
    );
\r1_data[27]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \r0_data_reg_n_0_[123]\,
      I1 => p_0_in1_in(59),
      I2 => r0_out_sel_next_r(0),
      I3 => p_0_in1_in(91),
      I4 => r0_out_sel_next_r(1),
      I5 => p_0_in1_in(27),
      O => p_0_in(27)
    );
\r1_data[28]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \r0_data_reg_n_0_[124]\,
      I1 => p_0_in1_in(60),
      I2 => r0_out_sel_next_r(0),
      I3 => p_0_in1_in(92),
      I4 => r0_out_sel_next_r(1),
      I5 => p_0_in1_in(28),
      O => p_0_in(28)
    );
\r1_data[29]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \r0_data_reg_n_0_[125]\,
      I1 => p_0_in1_in(61),
      I2 => r0_out_sel_next_r(0),
      I3 => p_0_in1_in(93),
      I4 => r0_out_sel_next_r(1),
      I5 => p_0_in1_in(29),
      O => p_0_in(29)
    );
\r1_data[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \r0_data_reg_n_0_[98]\,
      I1 => p_0_in1_in(34),
      I2 => r0_out_sel_next_r(0),
      I3 => p_0_in1_in(66),
      I4 => r0_out_sel_next_r(1),
      I5 => p_0_in1_in(2),
      O => p_0_in(2)
    );
\r1_data[30]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \r0_data_reg_n_0_[126]\,
      I1 => p_0_in1_in(62),
      I2 => r0_out_sel_next_r(0),
      I3 => p_0_in1_in(94),
      I4 => r0_out_sel_next_r(1),
      I5 => p_0_in1_in(30),
      O => p_0_in(30)
    );
\r1_data[31]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"04"
    )
        port map (
      I0 => \state_reg_n_0_[2]\,
      I1 => \^state_reg[1]_0\,
      I2 => \^state_reg[0]_0\,
      O => \r1_data[31]_i_1_n_0\
    );
\r1_data[31]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \r0_data_reg_n_0_[127]\,
      I1 => p_0_in1_in(63),
      I2 => r0_out_sel_next_r(0),
      I3 => p_0_in1_in(95),
      I4 => r0_out_sel_next_r(1),
      I5 => p_0_in1_in(31),
      O => p_0_in(31)
    );
\r1_data[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \r0_data_reg_n_0_[99]\,
      I1 => p_0_in1_in(35),
      I2 => r0_out_sel_next_r(0),
      I3 => p_0_in1_in(67),
      I4 => r0_out_sel_next_r(1),
      I5 => p_0_in1_in(3),
      O => p_0_in(3)
    );
\r1_data[4]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \r0_data_reg_n_0_[100]\,
      I1 => p_0_in1_in(36),
      I2 => r0_out_sel_next_r(0),
      I3 => p_0_in1_in(68),
      I4 => r0_out_sel_next_r(1),
      I5 => p_0_in1_in(4),
      O => p_0_in(4)
    );
\r1_data[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \r0_data_reg_n_0_[101]\,
      I1 => p_0_in1_in(37),
      I2 => r0_out_sel_next_r(0),
      I3 => p_0_in1_in(69),
      I4 => r0_out_sel_next_r(1),
      I5 => p_0_in1_in(5),
      O => p_0_in(5)
    );
\r1_data[6]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \r0_data_reg_n_0_[102]\,
      I1 => p_0_in1_in(38),
      I2 => r0_out_sel_next_r(0),
      I3 => p_0_in1_in(70),
      I4 => r0_out_sel_next_r(1),
      I5 => p_0_in1_in(6),
      O => p_0_in(6)
    );
\r1_data[7]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \r0_data_reg_n_0_[103]\,
      I1 => p_0_in1_in(39),
      I2 => r0_out_sel_next_r(0),
      I3 => p_0_in1_in(71),
      I4 => r0_out_sel_next_r(1),
      I5 => p_0_in1_in(7),
      O => p_0_in(7)
    );
\r1_data[8]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \r0_data_reg_n_0_[104]\,
      I1 => p_0_in1_in(40),
      I2 => r0_out_sel_next_r(0),
      I3 => p_0_in1_in(72),
      I4 => r0_out_sel_next_r(1),
      I5 => p_0_in1_in(8),
      O => p_0_in(8)
    );
\r1_data[9]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \r0_data_reg_n_0_[105]\,
      I1 => p_0_in1_in(41),
      I2 => r0_out_sel_next_r(0),
      I3 => p_0_in1_in(73),
      I4 => r0_out_sel_next_r(1),
      I5 => p_0_in1_in(9),
      O => p_0_in(9)
    );
\r1_data_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \r1_data[31]_i_1_n_0\,
      D => p_0_in(0),
      Q => p_0_in1_in(96),
      R => '0'
    );
\r1_data_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \r1_data[31]_i_1_n_0\,
      D => p_0_in(10),
      Q => p_0_in1_in(106),
      R => '0'
    );
\r1_data_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \r1_data[31]_i_1_n_0\,
      D => p_0_in(11),
      Q => p_0_in1_in(107),
      R => '0'
    );
\r1_data_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \r1_data[31]_i_1_n_0\,
      D => p_0_in(12),
      Q => p_0_in1_in(108),
      R => '0'
    );
\r1_data_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \r1_data[31]_i_1_n_0\,
      D => p_0_in(13),
      Q => p_0_in1_in(109),
      R => '0'
    );
\r1_data_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \r1_data[31]_i_1_n_0\,
      D => p_0_in(14),
      Q => p_0_in1_in(110),
      R => '0'
    );
\r1_data_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \r1_data[31]_i_1_n_0\,
      D => p_0_in(15),
      Q => p_0_in1_in(111),
      R => '0'
    );
\r1_data_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \r1_data[31]_i_1_n_0\,
      D => p_0_in(16),
      Q => p_0_in1_in(112),
      R => '0'
    );
\r1_data_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \r1_data[31]_i_1_n_0\,
      D => p_0_in(17),
      Q => p_0_in1_in(113),
      R => '0'
    );
\r1_data_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \r1_data[31]_i_1_n_0\,
      D => p_0_in(18),
      Q => p_0_in1_in(114),
      R => '0'
    );
\r1_data_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \r1_data[31]_i_1_n_0\,
      D => p_0_in(19),
      Q => p_0_in1_in(115),
      R => '0'
    );
\r1_data_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \r1_data[31]_i_1_n_0\,
      D => p_0_in(1),
      Q => p_0_in1_in(97),
      R => '0'
    );
\r1_data_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \r1_data[31]_i_1_n_0\,
      D => p_0_in(20),
      Q => p_0_in1_in(116),
      R => '0'
    );
\r1_data_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \r1_data[31]_i_1_n_0\,
      D => p_0_in(21),
      Q => p_0_in1_in(117),
      R => '0'
    );
\r1_data_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \r1_data[31]_i_1_n_0\,
      D => p_0_in(22),
      Q => p_0_in1_in(118),
      R => '0'
    );
\r1_data_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \r1_data[31]_i_1_n_0\,
      D => p_0_in(23),
      Q => p_0_in1_in(119),
      R => '0'
    );
\r1_data_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \r1_data[31]_i_1_n_0\,
      D => p_0_in(24),
      Q => p_0_in1_in(120),
      R => '0'
    );
\r1_data_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \r1_data[31]_i_1_n_0\,
      D => p_0_in(25),
      Q => p_0_in1_in(121),
      R => '0'
    );
\r1_data_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \r1_data[31]_i_1_n_0\,
      D => p_0_in(26),
      Q => p_0_in1_in(122),
      R => '0'
    );
\r1_data_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \r1_data[31]_i_1_n_0\,
      D => p_0_in(27),
      Q => p_0_in1_in(123),
      R => '0'
    );
\r1_data_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \r1_data[31]_i_1_n_0\,
      D => p_0_in(28),
      Q => p_0_in1_in(124),
      R => '0'
    );
\r1_data_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \r1_data[31]_i_1_n_0\,
      D => p_0_in(29),
      Q => p_0_in1_in(125),
      R => '0'
    );
\r1_data_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \r1_data[31]_i_1_n_0\,
      D => p_0_in(2),
      Q => p_0_in1_in(98),
      R => '0'
    );
\r1_data_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \r1_data[31]_i_1_n_0\,
      D => p_0_in(30),
      Q => p_0_in1_in(126),
      R => '0'
    );
\r1_data_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \r1_data[31]_i_1_n_0\,
      D => p_0_in(31),
      Q => p_0_in1_in(127),
      R => '0'
    );
\r1_data_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \r1_data[31]_i_1_n_0\,
      D => p_0_in(3),
      Q => p_0_in1_in(99),
      R => '0'
    );
\r1_data_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \r1_data[31]_i_1_n_0\,
      D => p_0_in(4),
      Q => p_0_in1_in(100),
      R => '0'
    );
\r1_data_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \r1_data[31]_i_1_n_0\,
      D => p_0_in(5),
      Q => p_0_in1_in(101),
      R => '0'
    );
\r1_data_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \r1_data[31]_i_1_n_0\,
      D => p_0_in(6),
      Q => p_0_in1_in(102),
      R => '0'
    );
\r1_data_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \r1_data[31]_i_1_n_0\,
      D => p_0_in(7),
      Q => p_0_in1_in(103),
      R => '0'
    );
\r1_data_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \r1_data[31]_i_1_n_0\,
      D => p_0_in(8),
      Q => p_0_in1_in(104),
      R => '0'
    );
\r1_data_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \r1_data[31]_i_1_n_0\,
      D => p_0_in(9),
      Q => p_0_in1_in(105),
      R => '0'
    );
\state[0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FF550FCF"
    )
        port map (
      I0 => s_axis_tvalid,
      I1 => r0_out_sel_r0,
      I2 => \^state_reg[1]_0\,
      I3 => \state_reg_n_0_[2]\,
      I4 => \^state_reg[0]_0\,
      O => state(0)
    );
\state[0]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => m_axis_tready,
      I1 => r0_out_sel_next_r(0),
      I2 => r0_out_sel_next_r(1),
      O => r0_out_sel_r0
    );
\state[1]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00BAF0F0"
    )
        port map (
      I0 => s_axis_tvalid,
      I1 => m_axis_tready,
      I2 => \^state_reg[1]_0\,
      I3 => \state_reg_n_0_[2]\,
      I4 => \^state_reg[0]_0\,
      O => state(1)
    );
\state[2]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"000008C0"
    )
        port map (
      I0 => s_axis_tvalid,
      I1 => \^state_reg[1]_0\,
      I2 => \state_reg_n_0_[2]\,
      I3 => \^state_reg[0]_0\,
      I4 => m_axis_tready,
      O => state(2)
    );
\state_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => '1',
      D => state(0),
      Q => \^state_reg[0]_0\,
      R => areset_r
    );
\state_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => '1',
      D => state(1),
      Q => \^state_reg[1]_0\,
      R => areset_r
    );
\state_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => '1',
      D => state(2),
      Q => \state_reg_n_0_[2]\,
      R => areset_r
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity ulp_inst_0_dwc_setup_aie_0_s_0_axis_dwidth_converter_v1_1_26_axis_dwidth_converter is
  port (
    aclk : in STD_LOGIC;
    aresetn : in STD_LOGIC;
    aclken : in STD_LOGIC;
    s_axis_tvalid : in STD_LOGIC;
    s_axis_tready : out STD_LOGIC;
    s_axis_tdata : in STD_LOGIC_VECTOR ( 127 downto 0 );
    s_axis_tstrb : in STD_LOGIC_VECTOR ( 15 downto 0 );
    s_axis_tkeep : in STD_LOGIC_VECTOR ( 15 downto 0 );
    s_axis_tlast : in STD_LOGIC;
    s_axis_tid : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axis_tdest : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axis_tuser : in STD_LOGIC_VECTOR ( 0 to 0 );
    m_axis_tvalid : out STD_LOGIC;
    m_axis_tready : in STD_LOGIC;
    m_axis_tdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axis_tstrb : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axis_tkeep : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axis_tlast : out STD_LOGIC;
    m_axis_tid : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_axis_tdest : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_axis_tuser : out STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute C_AXIS_SIGNAL_SET : integer;
  attribute C_AXIS_SIGNAL_SET of ulp_inst_0_dwc_setup_aie_0_s_0_axis_dwidth_converter_v1_1_26_axis_dwidth_converter : entity is 3;
  attribute C_AXIS_TDEST_WIDTH : integer;
  attribute C_AXIS_TDEST_WIDTH of ulp_inst_0_dwc_setup_aie_0_s_0_axis_dwidth_converter_v1_1_26_axis_dwidth_converter : entity is 1;
  attribute C_AXIS_TID_WIDTH : integer;
  attribute C_AXIS_TID_WIDTH of ulp_inst_0_dwc_setup_aie_0_s_0_axis_dwidth_converter_v1_1_26_axis_dwidth_converter : entity is 1;
  attribute C_FAMILY : string;
  attribute C_FAMILY of ulp_inst_0_dwc_setup_aie_0_s_0_axis_dwidth_converter_v1_1_26_axis_dwidth_converter : entity is "versal";
  attribute C_M_AXIS_TDATA_WIDTH : integer;
  attribute C_M_AXIS_TDATA_WIDTH of ulp_inst_0_dwc_setup_aie_0_s_0_axis_dwidth_converter_v1_1_26_axis_dwidth_converter : entity is 32;
  attribute C_M_AXIS_TUSER_WIDTH : integer;
  attribute C_M_AXIS_TUSER_WIDTH of ulp_inst_0_dwc_setup_aie_0_s_0_axis_dwidth_converter_v1_1_26_axis_dwidth_converter : entity is 1;
  attribute C_S_AXIS_TDATA_WIDTH : integer;
  attribute C_S_AXIS_TDATA_WIDTH of ulp_inst_0_dwc_setup_aie_0_s_0_axis_dwidth_converter_v1_1_26_axis_dwidth_converter : entity is 128;
  attribute C_S_AXIS_TUSER_WIDTH : integer;
  attribute C_S_AXIS_TUSER_WIDTH of ulp_inst_0_dwc_setup_aie_0_s_0_axis_dwidth_converter_v1_1_26_axis_dwidth_converter : entity is 1;
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of ulp_inst_0_dwc_setup_aie_0_s_0_axis_dwidth_converter_v1_1_26_axis_dwidth_converter : entity is "yes";
  attribute G_INDX_SS_TDATA : integer;
  attribute G_INDX_SS_TDATA of ulp_inst_0_dwc_setup_aie_0_s_0_axis_dwidth_converter_v1_1_26_axis_dwidth_converter : entity is 1;
  attribute G_INDX_SS_TDEST : integer;
  attribute G_INDX_SS_TDEST of ulp_inst_0_dwc_setup_aie_0_s_0_axis_dwidth_converter_v1_1_26_axis_dwidth_converter : entity is 6;
  attribute G_INDX_SS_TID : integer;
  attribute G_INDX_SS_TID of ulp_inst_0_dwc_setup_aie_0_s_0_axis_dwidth_converter_v1_1_26_axis_dwidth_converter : entity is 5;
  attribute G_INDX_SS_TKEEP : integer;
  attribute G_INDX_SS_TKEEP of ulp_inst_0_dwc_setup_aie_0_s_0_axis_dwidth_converter_v1_1_26_axis_dwidth_converter : entity is 3;
  attribute G_INDX_SS_TLAST : integer;
  attribute G_INDX_SS_TLAST of ulp_inst_0_dwc_setup_aie_0_s_0_axis_dwidth_converter_v1_1_26_axis_dwidth_converter : entity is 4;
  attribute G_INDX_SS_TREADY : integer;
  attribute G_INDX_SS_TREADY of ulp_inst_0_dwc_setup_aie_0_s_0_axis_dwidth_converter_v1_1_26_axis_dwidth_converter : entity is 0;
  attribute G_INDX_SS_TSTRB : integer;
  attribute G_INDX_SS_TSTRB of ulp_inst_0_dwc_setup_aie_0_s_0_axis_dwidth_converter_v1_1_26_axis_dwidth_converter : entity is 2;
  attribute G_INDX_SS_TUSER : integer;
  attribute G_INDX_SS_TUSER of ulp_inst_0_dwc_setup_aie_0_s_0_axis_dwidth_converter_v1_1_26_axis_dwidth_converter : entity is 7;
  attribute G_MASK_SS_TDATA : integer;
  attribute G_MASK_SS_TDATA of ulp_inst_0_dwc_setup_aie_0_s_0_axis_dwidth_converter_v1_1_26_axis_dwidth_converter : entity is 2;
  attribute G_MASK_SS_TDEST : integer;
  attribute G_MASK_SS_TDEST of ulp_inst_0_dwc_setup_aie_0_s_0_axis_dwidth_converter_v1_1_26_axis_dwidth_converter : entity is 64;
  attribute G_MASK_SS_TID : integer;
  attribute G_MASK_SS_TID of ulp_inst_0_dwc_setup_aie_0_s_0_axis_dwidth_converter_v1_1_26_axis_dwidth_converter : entity is 32;
  attribute G_MASK_SS_TKEEP : integer;
  attribute G_MASK_SS_TKEEP of ulp_inst_0_dwc_setup_aie_0_s_0_axis_dwidth_converter_v1_1_26_axis_dwidth_converter : entity is 8;
  attribute G_MASK_SS_TLAST : integer;
  attribute G_MASK_SS_TLAST of ulp_inst_0_dwc_setup_aie_0_s_0_axis_dwidth_converter_v1_1_26_axis_dwidth_converter : entity is 16;
  attribute G_MASK_SS_TREADY : integer;
  attribute G_MASK_SS_TREADY of ulp_inst_0_dwc_setup_aie_0_s_0_axis_dwidth_converter_v1_1_26_axis_dwidth_converter : entity is 1;
  attribute G_MASK_SS_TSTRB : integer;
  attribute G_MASK_SS_TSTRB of ulp_inst_0_dwc_setup_aie_0_s_0_axis_dwidth_converter_v1_1_26_axis_dwidth_converter : entity is 4;
  attribute G_MASK_SS_TUSER : integer;
  attribute G_MASK_SS_TUSER of ulp_inst_0_dwc_setup_aie_0_s_0_axis_dwidth_converter_v1_1_26_axis_dwidth_converter : entity is 128;
  attribute G_TASK_SEVERITY_ERR : integer;
  attribute G_TASK_SEVERITY_ERR of ulp_inst_0_dwc_setup_aie_0_s_0_axis_dwidth_converter_v1_1_26_axis_dwidth_converter : entity is 2;
  attribute G_TASK_SEVERITY_INFO : integer;
  attribute G_TASK_SEVERITY_INFO of ulp_inst_0_dwc_setup_aie_0_s_0_axis_dwidth_converter_v1_1_26_axis_dwidth_converter : entity is 0;
  attribute G_TASK_SEVERITY_WARNING : integer;
  attribute G_TASK_SEVERITY_WARNING of ulp_inst_0_dwc_setup_aie_0_s_0_axis_dwidth_converter_v1_1_26_axis_dwidth_converter : entity is 1;
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of ulp_inst_0_dwc_setup_aie_0_s_0_axis_dwidth_converter_v1_1_26_axis_dwidth_converter : entity is "axis_dwidth_converter_v1_1_26_axis_dwidth_converter";
  attribute P_AXIS_SIGNAL_SET : string;
  attribute P_AXIS_SIGNAL_SET of ulp_inst_0_dwc_setup_aie_0_s_0_axis_dwidth_converter_v1_1_26_axis_dwidth_converter : entity is "32'b00000000000000000000000000000011";
  attribute P_D1_REG_CONFIG : integer;
  attribute P_D1_REG_CONFIG of ulp_inst_0_dwc_setup_aie_0_s_0_axis_dwidth_converter_v1_1_26_axis_dwidth_converter : entity is 0;
  attribute P_D1_TUSER_WIDTH : integer;
  attribute P_D1_TUSER_WIDTH of ulp_inst_0_dwc_setup_aie_0_s_0_axis_dwidth_converter_v1_1_26_axis_dwidth_converter : entity is 16;
  attribute P_D2_TDATA_WIDTH : integer;
  attribute P_D2_TDATA_WIDTH of ulp_inst_0_dwc_setup_aie_0_s_0_axis_dwidth_converter_v1_1_26_axis_dwidth_converter : entity is 128;
  attribute P_D2_TUSER_WIDTH : integer;
  attribute P_D2_TUSER_WIDTH of ulp_inst_0_dwc_setup_aie_0_s_0_axis_dwidth_converter_v1_1_26_axis_dwidth_converter : entity is 16;
  attribute P_D3_REG_CONFIG : integer;
  attribute P_D3_REG_CONFIG of ulp_inst_0_dwc_setup_aie_0_s_0_axis_dwidth_converter_v1_1_26_axis_dwidth_converter : entity is 0;
  attribute P_D3_TUSER_WIDTH : integer;
  attribute P_D3_TUSER_WIDTH of ulp_inst_0_dwc_setup_aie_0_s_0_axis_dwidth_converter_v1_1_26_axis_dwidth_converter : entity is 4;
  attribute P_M_RATIO : integer;
  attribute P_M_RATIO of ulp_inst_0_dwc_setup_aie_0_s_0_axis_dwidth_converter_v1_1_26_axis_dwidth_converter : entity is 4;
  attribute P_SS_TKEEP_REQUIRED : integer;
  attribute P_SS_TKEEP_REQUIRED of ulp_inst_0_dwc_setup_aie_0_s_0_axis_dwidth_converter_v1_1_26_axis_dwidth_converter : entity is 0;
  attribute P_S_RATIO : integer;
  attribute P_S_RATIO of ulp_inst_0_dwc_setup_aie_0_s_0_axis_dwidth_converter_v1_1_26_axis_dwidth_converter : entity is 1;
end ulp_inst_0_dwc_setup_aie_0_s_0_axis_dwidth_converter_v1_1_26_axis_dwidth_converter;

architecture STRUCTURE of ulp_inst_0_dwc_setup_aie_0_s_0_axis_dwidth_converter_v1_1_26_axis_dwidth_converter is
  signal \<const0>\ : STD_LOGIC;
  signal areset_r : STD_LOGIC;
  signal areset_r_i_1_n_0 : STD_LOGIC;
begin
  m_axis_tdest(0) <= \<const0>\;
  m_axis_tid(0) <= \<const0>\;
  m_axis_tkeep(3) <= \<const0>\;
  m_axis_tkeep(2) <= \<const0>\;
  m_axis_tkeep(1) <= \<const0>\;
  m_axis_tkeep(0) <= \<const0>\;
  m_axis_tlast <= \<const0>\;
  m_axis_tstrb(3) <= \<const0>\;
  m_axis_tstrb(2) <= \<const0>\;
  m_axis_tstrb(1) <= \<const0>\;
  m_axis_tstrb(0) <= \<const0>\;
  m_axis_tuser(0) <= \<const0>\;
GND: unisim.vcomponents.GND
     port map (
      G => \<const0>\
    );
areset_r_i_1: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => aresetn,
      O => areset_r_i_1_n_0
    );
areset_r_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => '1',
      D => areset_r_i_1_n_0,
      Q => areset_r,
      R => '0'
    );
\gen_downsizer_conversion.axisc_downsizer_0\: entity work.ulp_inst_0_dwc_setup_aie_0_s_0_axis_dwidth_converter_v1_1_26_axisc_downsizer
     port map (
      aclk => aclk,
      areset_r => areset_r,
      m_axis_tdata(31 downto 0) => m_axis_tdata(31 downto 0),
      m_axis_tready => m_axis_tready,
      s_axis_tdata(127 downto 0) => s_axis_tdata(127 downto 0),
      s_axis_tvalid => s_axis_tvalid,
      \state_reg[0]_0\ => s_axis_tready,
      \state_reg[1]_0\ => m_axis_tvalid
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity ulp_inst_0_dwc_setup_aie_0_s_0 is
  port (
    aclk : in STD_LOGIC;
    aresetn : in STD_LOGIC;
    s_axis_tvalid : in STD_LOGIC;
    s_axis_tready : out STD_LOGIC;
    s_axis_tdata : in STD_LOGIC_VECTOR ( 127 downto 0 );
    m_axis_tvalid : out STD_LOGIC;
    m_axis_tready : in STD_LOGIC;
    m_axis_tdata : out STD_LOGIC_VECTOR ( 31 downto 0 )
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of ulp_inst_0_dwc_setup_aie_0_s_0 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of ulp_inst_0_dwc_setup_aie_0_s_0 : entity is "ulp_inst_0_dwc_setup_aie_0_s_0,axis_dwidth_converter_v1_1_26_axis_dwidth_converter,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of ulp_inst_0_dwc_setup_aie_0_s_0 : entity is "yes";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of ulp_inst_0_dwc_setup_aie_0_s_0 : entity is "axis_dwidth_converter_v1_1_26_axis_dwidth_converter,Vivado 2022.2.2";
end ulp_inst_0_dwc_setup_aie_0_s_0;

architecture STRUCTURE of ulp_inst_0_dwc_setup_aie_0_s_0 is
  signal NLW_inst_m_axis_tlast_UNCONNECTED : STD_LOGIC;
  signal NLW_inst_m_axis_tdest_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_inst_m_axis_tid_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_inst_m_axis_tkeep_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_inst_m_axis_tstrb_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_inst_m_axis_tuser_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  attribute C_AXIS_SIGNAL_SET : integer;
  attribute C_AXIS_SIGNAL_SET of inst : label is 3;
  attribute C_AXIS_TDEST_WIDTH : integer;
  attribute C_AXIS_TDEST_WIDTH of inst : label is 1;
  attribute C_AXIS_TID_WIDTH : integer;
  attribute C_AXIS_TID_WIDTH of inst : label is 1;
  attribute C_FAMILY : string;
  attribute C_FAMILY of inst : label is "versal";
  attribute C_M_AXIS_TDATA_WIDTH : integer;
  attribute C_M_AXIS_TDATA_WIDTH of inst : label is 32;
  attribute C_M_AXIS_TUSER_WIDTH : integer;
  attribute C_M_AXIS_TUSER_WIDTH of inst : label is 1;
  attribute C_S_AXIS_TDATA_WIDTH : integer;
  attribute C_S_AXIS_TDATA_WIDTH of inst : label is 128;
  attribute C_S_AXIS_TUSER_WIDTH : integer;
  attribute C_S_AXIS_TUSER_WIDTH of inst : label is 1;
  attribute DowngradeIPIdentifiedWarnings of inst : label is "yes";
  attribute G_INDX_SS_TDATA : integer;
  attribute G_INDX_SS_TDATA of inst : label is 1;
  attribute G_INDX_SS_TDEST : integer;
  attribute G_INDX_SS_TDEST of inst : label is 6;
  attribute G_INDX_SS_TID : integer;
  attribute G_INDX_SS_TID of inst : label is 5;
  attribute G_INDX_SS_TKEEP : integer;
  attribute G_INDX_SS_TKEEP of inst : label is 3;
  attribute G_INDX_SS_TLAST : integer;
  attribute G_INDX_SS_TLAST of inst : label is 4;
  attribute G_INDX_SS_TREADY : integer;
  attribute G_INDX_SS_TREADY of inst : label is 0;
  attribute G_INDX_SS_TSTRB : integer;
  attribute G_INDX_SS_TSTRB of inst : label is 2;
  attribute G_INDX_SS_TUSER : integer;
  attribute G_INDX_SS_TUSER of inst : label is 7;
  attribute G_MASK_SS_TDATA : integer;
  attribute G_MASK_SS_TDATA of inst : label is 2;
  attribute G_MASK_SS_TDEST : integer;
  attribute G_MASK_SS_TDEST of inst : label is 64;
  attribute G_MASK_SS_TID : integer;
  attribute G_MASK_SS_TID of inst : label is 32;
  attribute G_MASK_SS_TKEEP : integer;
  attribute G_MASK_SS_TKEEP of inst : label is 8;
  attribute G_MASK_SS_TLAST : integer;
  attribute G_MASK_SS_TLAST of inst : label is 16;
  attribute G_MASK_SS_TREADY : integer;
  attribute G_MASK_SS_TREADY of inst : label is 1;
  attribute G_MASK_SS_TSTRB : integer;
  attribute G_MASK_SS_TSTRB of inst : label is 4;
  attribute G_MASK_SS_TUSER : integer;
  attribute G_MASK_SS_TUSER of inst : label is 128;
  attribute G_TASK_SEVERITY_ERR : integer;
  attribute G_TASK_SEVERITY_ERR of inst : label is 2;
  attribute G_TASK_SEVERITY_INFO : integer;
  attribute G_TASK_SEVERITY_INFO of inst : label is 0;
  attribute G_TASK_SEVERITY_WARNING : integer;
  attribute G_TASK_SEVERITY_WARNING of inst : label is 1;
  attribute P_AXIS_SIGNAL_SET : string;
  attribute P_AXIS_SIGNAL_SET of inst : label is "32'b00000000000000000000000000000011";
  attribute P_D1_REG_CONFIG : integer;
  attribute P_D1_REG_CONFIG of inst : label is 0;
  attribute P_D1_TUSER_WIDTH : integer;
  attribute P_D1_TUSER_WIDTH of inst : label is 16;
  attribute P_D2_TDATA_WIDTH : integer;
  attribute P_D2_TDATA_WIDTH of inst : label is 128;
  attribute P_D2_TUSER_WIDTH : integer;
  attribute P_D2_TUSER_WIDTH of inst : label is 16;
  attribute P_D3_REG_CONFIG : integer;
  attribute P_D3_REG_CONFIG of inst : label is 0;
  attribute P_D3_TUSER_WIDTH : integer;
  attribute P_D3_TUSER_WIDTH of inst : label is 4;
  attribute P_M_RATIO : integer;
  attribute P_M_RATIO of inst : label is 4;
  attribute P_SS_TKEEP_REQUIRED : integer;
  attribute P_SS_TKEEP_REQUIRED of inst : label is 0;
  attribute P_S_RATIO : integer;
  attribute P_S_RATIO of inst : label is 1;
  attribute X_INTERFACE_INFO : string;
  attribute X_INTERFACE_INFO of aclk : signal is "xilinx.com:signal:clock:1.0 CLKIF CLK";
  attribute X_INTERFACE_PARAMETER : string;
  attribute X_INTERFACE_PARAMETER of aclk : signal is "XIL_INTERFACENAME CLKIF, FREQ_HZ 299996999, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN cd_aclk_kernel_00, ASSOCIATED_BUSIF S_AXIS:M_AXIS, ASSOCIATED_RESET aresetn, INSERT_VIP 0, ASSOCIATED_CLKEN aclken";
  attribute X_INTERFACE_INFO of aresetn : signal is "xilinx.com:signal:reset:1.0 RSTIF RST";
  attribute X_INTERFACE_PARAMETER of aresetn : signal is "XIL_INTERFACENAME RSTIF, POLARITY ACTIVE_LOW, INSERT_VIP 0, TYPE INTERCONNECT";
  attribute X_INTERFACE_INFO of m_axis_tready : signal is "xilinx.com:interface:axis:1.0 M_AXIS TREADY";
  attribute X_INTERFACE_INFO of m_axis_tvalid : signal is "xilinx.com:interface:axis:1.0 M_AXIS TVALID";
  attribute X_INTERFACE_INFO of s_axis_tready : signal is "xilinx.com:interface:axis:1.0 S_AXIS TREADY";
  attribute X_INTERFACE_INFO of s_axis_tvalid : signal is "xilinx.com:interface:axis:1.0 S_AXIS TVALID";
  attribute X_INTERFACE_INFO of m_axis_tdata : signal is "xilinx.com:interface:axis:1.0 M_AXIS TDATA";
  attribute X_INTERFACE_PARAMETER of m_axis_tdata : signal is "XIL_INTERFACENAME M_AXIS, TDATA_NUM_BYTES 4, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 0, FREQ_HZ 299996999, PHASE 0.0, CLK_DOMAIN cd_aclk_kernel_00, LAYERED_METADATA undef, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of s_axis_tdata : signal is "xilinx.com:interface:axis:1.0 S_AXIS TDATA";
  attribute X_INTERFACE_PARAMETER of s_axis_tdata : signal is "XIL_INTERFACENAME S_AXIS, TDATA_NUM_BYTES 16, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 0, FREQ_HZ 299996999, PHASE 0.0, CLK_DOMAIN cd_aclk_kernel_00, LAYERED_METADATA undef, INSERT_VIP 0";
begin
inst: entity work.ulp_inst_0_dwc_setup_aie_0_s_0_axis_dwidth_converter_v1_1_26_axis_dwidth_converter
     port map (
      aclk => aclk,
      aclken => '1',
      aresetn => aresetn,
      m_axis_tdata(31 downto 0) => m_axis_tdata(31 downto 0),
      m_axis_tdest(0) => NLW_inst_m_axis_tdest_UNCONNECTED(0),
      m_axis_tid(0) => NLW_inst_m_axis_tid_UNCONNECTED(0),
      m_axis_tkeep(3 downto 0) => NLW_inst_m_axis_tkeep_UNCONNECTED(3 downto 0),
      m_axis_tlast => NLW_inst_m_axis_tlast_UNCONNECTED,
      m_axis_tready => m_axis_tready,
      m_axis_tstrb(3 downto 0) => NLW_inst_m_axis_tstrb_UNCONNECTED(3 downto 0),
      m_axis_tuser(0) => NLW_inst_m_axis_tuser_UNCONNECTED(0),
      m_axis_tvalid => m_axis_tvalid,
      s_axis_tdata(127 downto 0) => s_axis_tdata(127 downto 0),
      s_axis_tdest(0) => '0',
      s_axis_tid(0) => '0',
      s_axis_tkeep(15 downto 0) => B"1111111111111111",
      s_axis_tlast => '1',
      s_axis_tready => s_axis_tready,
      s_axis_tstrb(15 downto 0) => B"1111111111111111",
      s_axis_tuser(0) => '0',
      s_axis_tvalid => s_axis_tvalid
    );
end STRUCTURE;
