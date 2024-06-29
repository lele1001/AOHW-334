-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2022.2 (lin64) Build 3671981 Fri Oct 14 04:59:54 MDT 2022
-- Date        : Mon Dec  5 00:21:59 2022
-- Host        : xsjdcslab02.xilinx.com running 64-bit CentOS Linux release 8.1.1911 (Core)
-- Command     : write_vhdl -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
--               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ top_gcq_r2a_0_sim_netlist.vhdl
-- Design      : top_gcq_r2a_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xcvc1902-vsvd1760-2MP-e-S
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_cmd_queue_v1_0_0_S00_AXI is
  port (
    axi_s01_wready_reg_0 : out STD_LOGIC;
    axi_s01_awready_reg_0 : out STD_LOGIC;
    axi_s01_arready_reg_0 : out STD_LOGIC;
    axi_awready_reg_0 : out STD_LOGIC;
    axi_wready_reg_0 : out STD_LOGIC;
    soft_reset_reg : out STD_LOGIC_VECTOR ( 0 to 0 );
    axi_arready_reg_0 : out STD_LOGIC;
    axi_s01_bvalid_reg_0 : out STD_LOGIC;
    axi_s01_rvalid_reg_0 : out STD_LOGIC;
    axi_bvalid_reg_0 : out STD_LOGIC;
    axi_rvalid_reg_0 : out STD_LOGIC;
    irq_cq : out STD_LOGIC;
    Q : out STD_LOGIC_VECTOR ( 0 to 0 );
    \axi_s01_rdata_reg[31]_0\ : out STD_LOGIC_VECTOR ( 31 downto 0 );
    \axi_rdata_reg[31]_0\ : out STD_LOGIC_VECTOR ( 31 downto 0 );
    SR : in STD_LOGIC_VECTOR ( 0 to 0 );
    s00_axi_aclk : in STD_LOGIC;
    s00_axi_arvalid : in STD_LOGIC;
    s00_cq_rd_sel : in STD_LOGIC;
    s01_axi_awvalid : in STD_LOGIC;
    s01_axi_wvalid : in STD_LOGIC;
    s01_cq_wr_sel : in STD_LOGIC;
    s01_axi_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    soft_reset : in STD_LOGIC;
    s00_axi_aresetn : in STD_LOGIC;
    s01_axi_arvalid : in STD_LOGIC;
    s01_cq_rd_sel : in STD_LOGIC;
    s00_axi_wvalid : in STD_LOGIC;
    s00_axi_awvalid : in STD_LOGIC;
    s00_cq_wr_sel : in STD_LOGIC;
    s00_axi_bready : in STD_LOGIC;
    s00_axi_rready : in STD_LOGIC;
    s01_axi_bready : in STD_LOGIC;
    s01_axi_rready : in STD_LOGIC;
    s00_axi_araddr : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s01_axi_awaddr : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s01_axi_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s01_axi_araddr : in STD_LOGIC_VECTOR ( 3 downto 0 )
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_cmd_queue_v1_0_0_S00_AXI;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_cmd_queue_v1_0_0_S00_AXI is
  signal \^q\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \aw_en_i_1__0_n_0\ : STD_LOGIC;
  signal aw_en_reg_n_0 : STD_LOGIC;
  signal aw_s01_en_i_1_n_0 : STD_LOGIC;
  signal aw_s01_en_reg_n_0 : STD_LOGIC;
  signal \axi_araddr_reg_n_0_[2]\ : STD_LOGIC;
  signal \axi_araddr_reg_n_0_[3]\ : STD_LOGIC;
  signal \axi_araddr_reg_n_0_[4]\ : STD_LOGIC;
  signal \axi_araddr_reg_n_0_[5]\ : STD_LOGIC;
  signal \axi_arready_i_1__0_n_0\ : STD_LOGIC;
  signal \^axi_arready_reg_0\ : STD_LOGIC;
  signal \axi_awaddr_reg_n_0_[2]\ : STD_LOGIC;
  signal \axi_awaddr_reg_n_0_[3]\ : STD_LOGIC;
  signal \axi_awaddr_reg_n_0_[4]\ : STD_LOGIC;
  signal \axi_awaddr_reg_n_0_[5]\ : STD_LOGIC;
  signal \axi_awready_i_1__0_n_0\ : STD_LOGIC;
  signal \^axi_awready_reg_0\ : STD_LOGIC;
  signal \axi_bvalid_i_1__0_n_0\ : STD_LOGIC;
  signal \^axi_bvalid_reg_0\ : STD_LOGIC;
  signal \axi_rdata[0]_i_1__0_n_0\ : STD_LOGIC;
  signal \axi_rdata[0]_i_2__0_n_0\ : STD_LOGIC;
  signal \axi_rdata[10]_i_1__0_n_0\ : STD_LOGIC;
  signal \axi_rdata[10]_i_2__0_n_0\ : STD_LOGIC;
  signal \axi_rdata[11]_i_1__0_n_0\ : STD_LOGIC;
  signal \axi_rdata[11]_i_2__0_n_0\ : STD_LOGIC;
  signal \axi_rdata[12]_i_1__0_n_0\ : STD_LOGIC;
  signal \axi_rdata[12]_i_2__0_n_0\ : STD_LOGIC;
  signal \axi_rdata[13]_i_1__0_n_0\ : STD_LOGIC;
  signal \axi_rdata[13]_i_2__0_n_0\ : STD_LOGIC;
  signal \axi_rdata[14]_i_1__0_n_0\ : STD_LOGIC;
  signal \axi_rdata[14]_i_2__0_n_0\ : STD_LOGIC;
  signal \axi_rdata[15]_i_1__0_n_0\ : STD_LOGIC;
  signal \axi_rdata[15]_i_2__0_n_0\ : STD_LOGIC;
  signal \axi_rdata[16]_i_1__0_n_0\ : STD_LOGIC;
  signal \axi_rdata[16]_i_2__0_n_0\ : STD_LOGIC;
  signal \axi_rdata[17]_i_1__0_n_0\ : STD_LOGIC;
  signal \axi_rdata[17]_i_2__0_n_0\ : STD_LOGIC;
  signal \axi_rdata[18]_i_1__0_n_0\ : STD_LOGIC;
  signal \axi_rdata[18]_i_2__0_n_0\ : STD_LOGIC;
  signal \axi_rdata[19]_i_1__0_n_0\ : STD_LOGIC;
  signal \axi_rdata[19]_i_2__0_n_0\ : STD_LOGIC;
  signal \axi_rdata[1]_i_1__0_n_0\ : STD_LOGIC;
  signal \axi_rdata[1]_i_2__0_n_0\ : STD_LOGIC;
  signal \axi_rdata[20]_i_1__0_n_0\ : STD_LOGIC;
  signal \axi_rdata[20]_i_2__0_n_0\ : STD_LOGIC;
  signal \axi_rdata[21]_i_1__0_n_0\ : STD_LOGIC;
  signal \axi_rdata[21]_i_2__0_n_0\ : STD_LOGIC;
  signal \axi_rdata[22]_i_1__0_n_0\ : STD_LOGIC;
  signal \axi_rdata[22]_i_2__0_n_0\ : STD_LOGIC;
  signal \axi_rdata[23]_i_1__0_n_0\ : STD_LOGIC;
  signal \axi_rdata[23]_i_2__0_n_0\ : STD_LOGIC;
  signal \axi_rdata[24]_i_1__0_n_0\ : STD_LOGIC;
  signal \axi_rdata[24]_i_2__0_n_0\ : STD_LOGIC;
  signal \axi_rdata[25]_i_1__0_n_0\ : STD_LOGIC;
  signal \axi_rdata[25]_i_2__0_n_0\ : STD_LOGIC;
  signal \axi_rdata[26]_i_1__0_n_0\ : STD_LOGIC;
  signal \axi_rdata[26]_i_2__0_n_0\ : STD_LOGIC;
  signal \axi_rdata[27]_i_1__0_n_0\ : STD_LOGIC;
  signal \axi_rdata[27]_i_2__0_n_0\ : STD_LOGIC;
  signal \axi_rdata[28]_i_1__0_n_0\ : STD_LOGIC;
  signal \axi_rdata[28]_i_2__0_n_0\ : STD_LOGIC;
  signal \axi_rdata[29]_i_1__0_n_0\ : STD_LOGIC;
  signal \axi_rdata[29]_i_2__0_n_0\ : STD_LOGIC;
  signal \axi_rdata[2]_i_1__0_n_0\ : STD_LOGIC;
  signal \axi_rdata[2]_i_2__0_n_0\ : STD_LOGIC;
  signal \axi_rdata[30]_i_1__0_n_0\ : STD_LOGIC;
  signal \axi_rdata[30]_i_2__0_n_0\ : STD_LOGIC;
  signal \axi_rdata[31]_i_1__0_n_0\ : STD_LOGIC;
  signal \axi_rdata[31]_i_2__0_n_0\ : STD_LOGIC;
  signal \axi_rdata[31]_i_3__0_n_0\ : STD_LOGIC;
  signal \axi_rdata[3]_i_1__0_n_0\ : STD_LOGIC;
  signal \axi_rdata[3]_i_2__0_n_0\ : STD_LOGIC;
  signal \axi_rdata[4]_i_1__0_n_0\ : STD_LOGIC;
  signal \axi_rdata[4]_i_2__0_n_0\ : STD_LOGIC;
  signal \axi_rdata[5]_i_1__0_n_0\ : STD_LOGIC;
  signal \axi_rdata[5]_i_2__0_n_0\ : STD_LOGIC;
  signal \axi_rdata[6]_i_1__0_n_0\ : STD_LOGIC;
  signal \axi_rdata[6]_i_2__0_n_0\ : STD_LOGIC;
  signal \axi_rdata[7]_i_1__0_n_0\ : STD_LOGIC;
  signal \axi_rdata[7]_i_2__0_n_0\ : STD_LOGIC;
  signal \axi_rdata[8]_i_1__0_n_0\ : STD_LOGIC;
  signal \axi_rdata[8]_i_2__0_n_0\ : STD_LOGIC;
  signal \axi_rdata[9]_i_1__0_n_0\ : STD_LOGIC;
  signal \axi_rdata[9]_i_2__0_n_0\ : STD_LOGIC;
  signal \axi_rvalid_i_1__0_n_0\ : STD_LOGIC;
  signal \^axi_rvalid_reg_0\ : STD_LOGIC;
  signal \axi_s01_araddr_reg_n_0_[2]\ : STD_LOGIC;
  signal \axi_s01_araddr_reg_n_0_[3]\ : STD_LOGIC;
  signal \axi_s01_araddr_reg_n_0_[4]\ : STD_LOGIC;
  signal \axi_s01_araddr_reg_n_0_[5]\ : STD_LOGIC;
  signal axi_s01_arready_i_1_n_0 : STD_LOGIC;
  signal \^axi_s01_arready_reg_0\ : STD_LOGIC;
  signal axi_s01_awready_i_1_n_0 : STD_LOGIC;
  signal \^axi_s01_awready_reg_0\ : STD_LOGIC;
  signal axi_s01_bvalid_i_1_n_0 : STD_LOGIC;
  signal \^axi_s01_bvalid_reg_0\ : STD_LOGIC;
  signal \axi_s01_rdata[0]_i_1_n_0\ : STD_LOGIC;
  signal \axi_s01_rdata[0]_i_2_n_0\ : STD_LOGIC;
  signal \axi_s01_rdata[10]_i_1_n_0\ : STD_LOGIC;
  signal \axi_s01_rdata[10]_i_2_n_0\ : STD_LOGIC;
  signal \axi_s01_rdata[11]_i_1_n_0\ : STD_LOGIC;
  signal \axi_s01_rdata[11]_i_2_n_0\ : STD_LOGIC;
  signal \axi_s01_rdata[12]_i_1_n_0\ : STD_LOGIC;
  signal \axi_s01_rdata[12]_i_2_n_0\ : STD_LOGIC;
  signal \axi_s01_rdata[13]_i_1_n_0\ : STD_LOGIC;
  signal \axi_s01_rdata[13]_i_2_n_0\ : STD_LOGIC;
  signal \axi_s01_rdata[14]_i_1_n_0\ : STD_LOGIC;
  signal \axi_s01_rdata[14]_i_2_n_0\ : STD_LOGIC;
  signal \axi_s01_rdata[15]_i_1_n_0\ : STD_LOGIC;
  signal \axi_s01_rdata[15]_i_2_n_0\ : STD_LOGIC;
  signal \axi_s01_rdata[16]_i_1_n_0\ : STD_LOGIC;
  signal \axi_s01_rdata[16]_i_2_n_0\ : STD_LOGIC;
  signal \axi_s01_rdata[17]_i_1_n_0\ : STD_LOGIC;
  signal \axi_s01_rdata[17]_i_2_n_0\ : STD_LOGIC;
  signal \axi_s01_rdata[18]_i_1_n_0\ : STD_LOGIC;
  signal \axi_s01_rdata[18]_i_2_n_0\ : STD_LOGIC;
  signal \axi_s01_rdata[19]_i_1_n_0\ : STD_LOGIC;
  signal \axi_s01_rdata[19]_i_2_n_0\ : STD_LOGIC;
  signal \axi_s01_rdata[1]_i_1_n_0\ : STD_LOGIC;
  signal \axi_s01_rdata[1]_i_2_n_0\ : STD_LOGIC;
  signal \axi_s01_rdata[20]_i_1_n_0\ : STD_LOGIC;
  signal \axi_s01_rdata[20]_i_2_n_0\ : STD_LOGIC;
  signal \axi_s01_rdata[21]_i_1_n_0\ : STD_LOGIC;
  signal \axi_s01_rdata[21]_i_2_n_0\ : STD_LOGIC;
  signal \axi_s01_rdata[22]_i_1_n_0\ : STD_LOGIC;
  signal \axi_s01_rdata[22]_i_2_n_0\ : STD_LOGIC;
  signal \axi_s01_rdata[23]_i_1_n_0\ : STD_LOGIC;
  signal \axi_s01_rdata[23]_i_2_n_0\ : STD_LOGIC;
  signal \axi_s01_rdata[24]_i_1_n_0\ : STD_LOGIC;
  signal \axi_s01_rdata[24]_i_2_n_0\ : STD_LOGIC;
  signal \axi_s01_rdata[25]_i_1_n_0\ : STD_LOGIC;
  signal \axi_s01_rdata[25]_i_2_n_0\ : STD_LOGIC;
  signal \axi_s01_rdata[26]_i_1_n_0\ : STD_LOGIC;
  signal \axi_s01_rdata[26]_i_2_n_0\ : STD_LOGIC;
  signal \axi_s01_rdata[27]_i_1_n_0\ : STD_LOGIC;
  signal \axi_s01_rdata[27]_i_2_n_0\ : STD_LOGIC;
  signal \axi_s01_rdata[28]_i_1_n_0\ : STD_LOGIC;
  signal \axi_s01_rdata[28]_i_2_n_0\ : STD_LOGIC;
  signal \axi_s01_rdata[29]_i_1_n_0\ : STD_LOGIC;
  signal \axi_s01_rdata[29]_i_2_n_0\ : STD_LOGIC;
  signal \axi_s01_rdata[2]_i_1_n_0\ : STD_LOGIC;
  signal \axi_s01_rdata[2]_i_2_n_0\ : STD_LOGIC;
  signal \axi_s01_rdata[30]_i_1_n_0\ : STD_LOGIC;
  signal \axi_s01_rdata[30]_i_2_n_0\ : STD_LOGIC;
  signal \axi_s01_rdata[31]_i_1_n_0\ : STD_LOGIC;
  signal \axi_s01_rdata[31]_i_2_n_0\ : STD_LOGIC;
  signal \axi_s01_rdata[31]_i_3_n_0\ : STD_LOGIC;
  signal \axi_s01_rdata[3]_i_1_n_0\ : STD_LOGIC;
  signal \axi_s01_rdata[3]_i_2_n_0\ : STD_LOGIC;
  signal \axi_s01_rdata[4]_i_1_n_0\ : STD_LOGIC;
  signal \axi_s01_rdata[4]_i_2_n_0\ : STD_LOGIC;
  signal \axi_s01_rdata[5]_i_1_n_0\ : STD_LOGIC;
  signal \axi_s01_rdata[5]_i_2_n_0\ : STD_LOGIC;
  signal \axi_s01_rdata[6]_i_1_n_0\ : STD_LOGIC;
  signal \axi_s01_rdata[6]_i_2_n_0\ : STD_LOGIC;
  signal \axi_s01_rdata[7]_i_1_n_0\ : STD_LOGIC;
  signal \axi_s01_rdata[7]_i_2_n_0\ : STD_LOGIC;
  signal \axi_s01_rdata[8]_i_1_n_0\ : STD_LOGIC;
  signal \axi_s01_rdata[8]_i_2_n_0\ : STD_LOGIC;
  signal \axi_s01_rdata[9]_i_1_n_0\ : STD_LOGIC;
  signal \axi_s01_rdata[9]_i_2_n_0\ : STD_LOGIC;
  signal axi_s01_rvalid_i_1_n_0 : STD_LOGIC;
  signal \^axi_s01_rvalid_reg_0\ : STD_LOGIC;
  signal axi_s01_wready_i_1_n_0 : STD_LOGIC;
  signal axi_s01_wready_i_2_n_0 : STD_LOGIC;
  signal \^axi_s01_wready_reg_0\ : STD_LOGIC;
  signal \axi_wready_i_1__0_n_0\ : STD_LOGIC;
  signal \^axi_wready_reg_0\ : STD_LOGIC;
  signal irq_on_write_reg : STD_LOGIC;
  signal \irq_on_write_reg_i_1__0_n_0\ : STD_LOGIC;
  signal irq_on_write_reg_reg_n_0 : STD_LOGIC;
  signal \irq_reg_i_1__0_n_0\ : STD_LOGIC;
  signal irq_reg_read_i_1_n_0 : STD_LOGIC;
  signal irq_reg_read_reg_n_0 : STD_LOGIC;
  signal \irq_reg_write_i_1__0_n_0\ : STD_LOGIC;
  signal irq_reg_write_i_2_n_0 : STD_LOGIC;
  signal irq_reg_write_reg_n_0 : STD_LOGIC;
  signal slv_reg0 : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \slv_reg0[15]_i_1__0_n_0\ : STD_LOGIC;
  signal \slv_reg0[23]_i_1__0_n_0\ : STD_LOGIC;
  signal \slv_reg0[31]_i_1__0_n_0\ : STD_LOGIC;
  signal \slv_reg0[7]_i_1__0_n_0\ : STD_LOGIC;
  signal \slv_reg1[0]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg1_reg_n_0_[0]\ : STD_LOGIC;
  signal slv_reg2_high : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \slv_reg2_high[15]_i_1__0_n_0\ : STD_LOGIC;
  signal \slv_reg2_high[23]_i_1__0_n_0\ : STD_LOGIC;
  signal \slv_reg2_high[31]_i_1__0_n_0\ : STD_LOGIC;
  signal \slv_reg2_high[7]_i_1__0_n_0\ : STD_LOGIC;
  signal slv_reg2_low : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \slv_reg2_low[15]_i_1__0_n_0\ : STD_LOGIC;
  signal \slv_reg2_low[23]_i_1__0_n_0\ : STD_LOGIC;
  signal \slv_reg2_low[31]_i_1__0_n_0\ : STD_LOGIC;
  signal \slv_reg2_low[7]_i_1__0_n_0\ : STD_LOGIC;
  signal \slv_reg3[15]_i_1__0_n_0\ : STD_LOGIC;
  signal \slv_reg3[23]_i_1__0_n_0\ : STD_LOGIC;
  signal \slv_reg3[31]_i_2__0_n_0\ : STD_LOGIC;
  signal \slv_reg3[31]_i_3_n_0\ : STD_LOGIC;
  signal \slv_reg3[7]_i_1__0_n_0\ : STD_LOGIC;
  signal \slv_reg3_reg_n_0_[0]\ : STD_LOGIC;
  signal \slv_reg3_reg_n_0_[10]\ : STD_LOGIC;
  signal \slv_reg3_reg_n_0_[11]\ : STD_LOGIC;
  signal \slv_reg3_reg_n_0_[12]\ : STD_LOGIC;
  signal \slv_reg3_reg_n_0_[13]\ : STD_LOGIC;
  signal \slv_reg3_reg_n_0_[14]\ : STD_LOGIC;
  signal \slv_reg3_reg_n_0_[15]\ : STD_LOGIC;
  signal \slv_reg3_reg_n_0_[16]\ : STD_LOGIC;
  signal \slv_reg3_reg_n_0_[17]\ : STD_LOGIC;
  signal \slv_reg3_reg_n_0_[18]\ : STD_LOGIC;
  signal \slv_reg3_reg_n_0_[19]\ : STD_LOGIC;
  signal \slv_reg3_reg_n_0_[1]\ : STD_LOGIC;
  signal \slv_reg3_reg_n_0_[20]\ : STD_LOGIC;
  signal \slv_reg3_reg_n_0_[21]\ : STD_LOGIC;
  signal \slv_reg3_reg_n_0_[22]\ : STD_LOGIC;
  signal \slv_reg3_reg_n_0_[23]\ : STD_LOGIC;
  signal \slv_reg3_reg_n_0_[24]\ : STD_LOGIC;
  signal \slv_reg3_reg_n_0_[25]\ : STD_LOGIC;
  signal \slv_reg3_reg_n_0_[26]\ : STD_LOGIC;
  signal \slv_reg3_reg_n_0_[27]\ : STD_LOGIC;
  signal \slv_reg3_reg_n_0_[28]\ : STD_LOGIC;
  signal \slv_reg3_reg_n_0_[29]\ : STD_LOGIC;
  signal \slv_reg3_reg_n_0_[2]\ : STD_LOGIC;
  signal \slv_reg3_reg_n_0_[30]\ : STD_LOGIC;
  signal \slv_reg3_reg_n_0_[3]\ : STD_LOGIC;
  signal \slv_reg3_reg_n_0_[4]\ : STD_LOGIC;
  signal \slv_reg3_reg_n_0_[5]\ : STD_LOGIC;
  signal \slv_reg3_reg_n_0_[6]\ : STD_LOGIC;
  signal \slv_reg3_reg_n_0_[7]\ : STD_LOGIC;
  signal \slv_reg3_reg_n_0_[8]\ : STD_LOGIC;
  signal \slv_reg3_reg_n_0_[9]\ : STD_LOGIC;
  signal \^soft_reset_reg\ : STD_LOGIC_VECTOR ( 0 to 0 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of axi_s01_awready_i_1 : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of axi_s01_bvalid_i_1 : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \axi_wready_i_1__0\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \slv_reg3[31]_i_3\ : label is "soft_lutpair0";
begin
  Q(0) <= \^q\(0);
  axi_arready_reg_0 <= \^axi_arready_reg_0\;
  axi_awready_reg_0 <= \^axi_awready_reg_0\;
  axi_bvalid_reg_0 <= \^axi_bvalid_reg_0\;
  axi_rvalid_reg_0 <= \^axi_rvalid_reg_0\;
  axi_s01_arready_reg_0 <= \^axi_s01_arready_reg_0\;
  axi_s01_awready_reg_0 <= \^axi_s01_awready_reg_0\;
  axi_s01_bvalid_reg_0 <= \^axi_s01_bvalid_reg_0\;
  axi_s01_rvalid_reg_0 <= \^axi_s01_rvalid_reg_0\;
  axi_s01_wready_reg_0 <= \^axi_s01_wready_reg_0\;
  axi_wready_reg_0 <= \^axi_wready_reg_0\;
  soft_reset_reg(0) <= \^soft_reset_reg\(0);
\aw_en_i_1__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0F08"
    )
        port map (
      I0 => s01_axi_bready,
      I1 => \^axi_bvalid_reg_0\,
      I2 => \axi_awready_i_1__0_n_0\,
      I3 => aw_en_reg_n_0,
      O => \aw_en_i_1__0_n_0\
    );
aw_en_reg: unisim.vcomponents.FDSE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \aw_en_i_1__0_n_0\,
      Q => aw_en_reg_n_0,
      S => SR(0)
    );
aw_s01_en_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"DFD0D0D0"
    )
        port map (
      I0 => axi_s01_wready_i_2_n_0,
      I1 => \^axi_s01_awready_reg_0\,
      I2 => aw_s01_en_reg_n_0,
      I3 => s00_axi_bready,
      I4 => \^axi_s01_bvalid_reg_0\,
      O => aw_s01_en_i_1_n_0
    );
aw_s01_en_reg: unisim.vcomponents.FDSE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => aw_s01_en_i_1_n_0,
      Q => aw_s01_en_reg_n_0,
      S => SR(0)
    );
\axi_araddr_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \axi_arready_i_1__0_n_0\,
      D => s01_axi_araddr(0),
      Q => \axi_araddr_reg_n_0_[2]\,
      R => SR(0)
    );
\axi_araddr_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \axi_arready_i_1__0_n_0\,
      D => s01_axi_araddr(1),
      Q => \axi_araddr_reg_n_0_[3]\,
      R => SR(0)
    );
\axi_araddr_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \axi_arready_i_1__0_n_0\,
      D => s01_axi_araddr(2),
      Q => \axi_araddr_reg_n_0_[4]\,
      R => SR(0)
    );
\axi_araddr_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \axi_arready_i_1__0_n_0\,
      D => s01_axi_araddr(3),
      Q => \axi_araddr_reg_n_0_[5]\,
      R => SR(0)
    );
\axi_arready_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"08"
    )
        port map (
      I0 => s01_axi_arvalid,
      I1 => s01_cq_rd_sel,
      I2 => \^axi_arready_reg_0\,
      O => \axi_arready_i_1__0_n_0\
    );
axi_arready_reg: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \axi_arready_i_1__0_n_0\,
      Q => \^axi_arready_reg_0\,
      R => SR(0)
    );
\axi_awaddr_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \axi_awready_i_1__0_n_0\,
      D => s01_axi_awaddr(0),
      Q => \axi_awaddr_reg_n_0_[2]\,
      R => SR(0)
    );
\axi_awaddr_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \axi_awready_i_1__0_n_0\,
      D => s01_axi_awaddr(1),
      Q => \axi_awaddr_reg_n_0_[3]\,
      R => SR(0)
    );
\axi_awaddr_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \axi_awready_i_1__0_n_0\,
      D => s01_axi_awaddr(2),
      Q => \axi_awaddr_reg_n_0_[4]\,
      R => SR(0)
    );
\axi_awaddr_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \axi_awready_i_1__0_n_0\,
      D => s01_axi_awaddr(3),
      Q => \axi_awaddr_reg_n_0_[5]\,
      R => SR(0)
    );
\axi_awready_i_1__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00008000"
    )
        port map (
      I0 => s01_axi_awvalid,
      I1 => s01_axi_wvalid,
      I2 => s01_cq_wr_sel,
      I3 => aw_en_reg_n_0,
      I4 => \^axi_awready_reg_0\,
      O => \axi_awready_i_1__0_n_0\
    );
axi_awready_reg: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \axi_awready_i_1__0_n_0\,
      Q => \^axi_awready_reg_0\,
      R => SR(0)
    );
\axi_bvalid_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"74"
    )
        port map (
      I0 => s01_axi_bready,
      I1 => \^axi_bvalid_reg_0\,
      I2 => \slv_reg3[31]_i_3_n_0\,
      O => \axi_bvalid_i_1__0_n_0\
    );
axi_bvalid_reg: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \axi_bvalid_i_1__0_n_0\,
      Q => \^axi_bvalid_reg_0\,
      R => SR(0)
    );
\axi_rdata[0]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000000000F4F0040"
    )
        port map (
      I0 => \axi_araddr_reg_n_0_[2]\,
      I1 => slv_reg2_high(0),
      I2 => \axi_araddr_reg_n_0_[4]\,
      I3 => \axi_araddr_reg_n_0_[3]\,
      I4 => \axi_rdata[0]_i_2__0_n_0\,
      I5 => \axi_araddr_reg_n_0_[5]\,
      O => \axi_rdata[0]_i_1__0_n_0\
    );
\axi_rdata[0]_i_2__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \slv_reg3_reg_n_0_[0]\,
      I1 => slv_reg2_low(0),
      I2 => \axi_araddr_reg_n_0_[3]\,
      I3 => \slv_reg1_reg_n_0_[0]\,
      I4 => \axi_araddr_reg_n_0_[2]\,
      I5 => slv_reg0(0),
      O => \axi_rdata[0]_i_2__0_n_0\
    );
\axi_rdata[10]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000FF4F0040"
    )
        port map (
      I0 => \axi_araddr_reg_n_0_[2]\,
      I1 => slv_reg2_high(10),
      I2 => \axi_araddr_reg_n_0_[4]\,
      I3 => \axi_araddr_reg_n_0_[3]\,
      I4 => \axi_rdata[10]_i_2__0_n_0\,
      I5 => \axi_araddr_reg_n_0_[5]\,
      O => \axi_rdata[10]_i_1__0_n_0\
    );
\axi_rdata[10]_i_2__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"5510441011100010"
    )
        port map (
      I0 => \axi_araddr_reg_n_0_[4]\,
      I1 => \axi_araddr_reg_n_0_[2]\,
      I2 => slv_reg0(10),
      I3 => \axi_araddr_reg_n_0_[3]\,
      I4 => slv_reg2_low(10),
      I5 => \slv_reg3_reg_n_0_[10]\,
      O => \axi_rdata[10]_i_2__0_n_0\
    );
\axi_rdata[11]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000FF4F0040"
    )
        port map (
      I0 => \axi_araddr_reg_n_0_[2]\,
      I1 => slv_reg2_high(11),
      I2 => \axi_araddr_reg_n_0_[4]\,
      I3 => \axi_araddr_reg_n_0_[3]\,
      I4 => \axi_rdata[11]_i_2__0_n_0\,
      I5 => \axi_araddr_reg_n_0_[5]\,
      O => \axi_rdata[11]_i_1__0_n_0\
    );
\axi_rdata[11]_i_2__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"5510441011100010"
    )
        port map (
      I0 => \axi_araddr_reg_n_0_[4]\,
      I1 => \axi_araddr_reg_n_0_[2]\,
      I2 => slv_reg0(11),
      I3 => \axi_araddr_reg_n_0_[3]\,
      I4 => slv_reg2_low(11),
      I5 => \slv_reg3_reg_n_0_[11]\,
      O => \axi_rdata[11]_i_2__0_n_0\
    );
\axi_rdata[12]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000FF4F0040"
    )
        port map (
      I0 => \axi_araddr_reg_n_0_[2]\,
      I1 => slv_reg2_high(12),
      I2 => \axi_araddr_reg_n_0_[4]\,
      I3 => \axi_araddr_reg_n_0_[3]\,
      I4 => \axi_rdata[12]_i_2__0_n_0\,
      I5 => \axi_araddr_reg_n_0_[5]\,
      O => \axi_rdata[12]_i_1__0_n_0\
    );
\axi_rdata[12]_i_2__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"5510441011100010"
    )
        port map (
      I0 => \axi_araddr_reg_n_0_[4]\,
      I1 => \axi_araddr_reg_n_0_[2]\,
      I2 => slv_reg0(12),
      I3 => \axi_araddr_reg_n_0_[3]\,
      I4 => slv_reg2_low(12),
      I5 => \slv_reg3_reg_n_0_[12]\,
      O => \axi_rdata[12]_i_2__0_n_0\
    );
\axi_rdata[13]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000FF4F0040"
    )
        port map (
      I0 => \axi_araddr_reg_n_0_[2]\,
      I1 => slv_reg2_high(13),
      I2 => \axi_araddr_reg_n_0_[4]\,
      I3 => \axi_araddr_reg_n_0_[3]\,
      I4 => \axi_rdata[13]_i_2__0_n_0\,
      I5 => \axi_araddr_reg_n_0_[5]\,
      O => \axi_rdata[13]_i_1__0_n_0\
    );
\axi_rdata[13]_i_2__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"5510441011100010"
    )
        port map (
      I0 => \axi_araddr_reg_n_0_[4]\,
      I1 => \axi_araddr_reg_n_0_[2]\,
      I2 => slv_reg0(13),
      I3 => \axi_araddr_reg_n_0_[3]\,
      I4 => slv_reg2_low(13),
      I5 => \slv_reg3_reg_n_0_[13]\,
      O => \axi_rdata[13]_i_2__0_n_0\
    );
\axi_rdata[14]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000FF4F0040"
    )
        port map (
      I0 => \axi_araddr_reg_n_0_[2]\,
      I1 => slv_reg2_high(14),
      I2 => \axi_araddr_reg_n_0_[4]\,
      I3 => \axi_araddr_reg_n_0_[3]\,
      I4 => \axi_rdata[14]_i_2__0_n_0\,
      I5 => \axi_araddr_reg_n_0_[5]\,
      O => \axi_rdata[14]_i_1__0_n_0\
    );
\axi_rdata[14]_i_2__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"5510441011100010"
    )
        port map (
      I0 => \axi_araddr_reg_n_0_[4]\,
      I1 => \axi_araddr_reg_n_0_[2]\,
      I2 => slv_reg0(14),
      I3 => \axi_araddr_reg_n_0_[3]\,
      I4 => slv_reg2_low(14),
      I5 => \slv_reg3_reg_n_0_[14]\,
      O => \axi_rdata[14]_i_2__0_n_0\
    );
\axi_rdata[15]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000FF4F0040"
    )
        port map (
      I0 => \axi_araddr_reg_n_0_[2]\,
      I1 => slv_reg2_high(15),
      I2 => \axi_araddr_reg_n_0_[4]\,
      I3 => \axi_araddr_reg_n_0_[3]\,
      I4 => \axi_rdata[15]_i_2__0_n_0\,
      I5 => \axi_araddr_reg_n_0_[5]\,
      O => \axi_rdata[15]_i_1__0_n_0\
    );
\axi_rdata[15]_i_2__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"5510441011100010"
    )
        port map (
      I0 => \axi_araddr_reg_n_0_[4]\,
      I1 => \axi_araddr_reg_n_0_[2]\,
      I2 => slv_reg0(15),
      I3 => \axi_araddr_reg_n_0_[3]\,
      I4 => slv_reg2_low(15),
      I5 => \slv_reg3_reg_n_0_[15]\,
      O => \axi_rdata[15]_i_2__0_n_0\
    );
\axi_rdata[16]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000FF4F0040"
    )
        port map (
      I0 => \axi_araddr_reg_n_0_[2]\,
      I1 => slv_reg2_high(16),
      I2 => \axi_araddr_reg_n_0_[4]\,
      I3 => \axi_araddr_reg_n_0_[3]\,
      I4 => \axi_rdata[16]_i_2__0_n_0\,
      I5 => \axi_araddr_reg_n_0_[5]\,
      O => \axi_rdata[16]_i_1__0_n_0\
    );
\axi_rdata[16]_i_2__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"5510441011100010"
    )
        port map (
      I0 => \axi_araddr_reg_n_0_[4]\,
      I1 => \axi_araddr_reg_n_0_[2]\,
      I2 => slv_reg0(16),
      I3 => \axi_araddr_reg_n_0_[3]\,
      I4 => slv_reg2_low(16),
      I5 => \slv_reg3_reg_n_0_[16]\,
      O => \axi_rdata[16]_i_2__0_n_0\
    );
\axi_rdata[17]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000FF4F0040"
    )
        port map (
      I0 => \axi_araddr_reg_n_0_[2]\,
      I1 => slv_reg2_high(17),
      I2 => \axi_araddr_reg_n_0_[4]\,
      I3 => \axi_araddr_reg_n_0_[3]\,
      I4 => \axi_rdata[17]_i_2__0_n_0\,
      I5 => \axi_araddr_reg_n_0_[5]\,
      O => \axi_rdata[17]_i_1__0_n_0\
    );
\axi_rdata[17]_i_2__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"5510441011100010"
    )
        port map (
      I0 => \axi_araddr_reg_n_0_[4]\,
      I1 => \axi_araddr_reg_n_0_[2]\,
      I2 => slv_reg0(17),
      I3 => \axi_araddr_reg_n_0_[3]\,
      I4 => slv_reg2_low(17),
      I5 => \slv_reg3_reg_n_0_[17]\,
      O => \axi_rdata[17]_i_2__0_n_0\
    );
\axi_rdata[18]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000FF4F0040"
    )
        port map (
      I0 => \axi_araddr_reg_n_0_[2]\,
      I1 => slv_reg2_high(18),
      I2 => \axi_araddr_reg_n_0_[4]\,
      I3 => \axi_araddr_reg_n_0_[3]\,
      I4 => \axi_rdata[18]_i_2__0_n_0\,
      I5 => \axi_araddr_reg_n_0_[5]\,
      O => \axi_rdata[18]_i_1__0_n_0\
    );
\axi_rdata[18]_i_2__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"5510441011100010"
    )
        port map (
      I0 => \axi_araddr_reg_n_0_[4]\,
      I1 => \axi_araddr_reg_n_0_[2]\,
      I2 => slv_reg0(18),
      I3 => \axi_araddr_reg_n_0_[3]\,
      I4 => slv_reg2_low(18),
      I5 => \slv_reg3_reg_n_0_[18]\,
      O => \axi_rdata[18]_i_2__0_n_0\
    );
\axi_rdata[19]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000FF4F0040"
    )
        port map (
      I0 => \axi_araddr_reg_n_0_[2]\,
      I1 => slv_reg2_high(19),
      I2 => \axi_araddr_reg_n_0_[4]\,
      I3 => \axi_araddr_reg_n_0_[3]\,
      I4 => \axi_rdata[19]_i_2__0_n_0\,
      I5 => \axi_araddr_reg_n_0_[5]\,
      O => \axi_rdata[19]_i_1__0_n_0\
    );
\axi_rdata[19]_i_2__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"5510441011100010"
    )
        port map (
      I0 => \axi_araddr_reg_n_0_[4]\,
      I1 => \axi_araddr_reg_n_0_[2]\,
      I2 => slv_reg0(19),
      I3 => \axi_araddr_reg_n_0_[3]\,
      I4 => slv_reg2_low(19),
      I5 => \slv_reg3_reg_n_0_[19]\,
      O => \axi_rdata[19]_i_2__0_n_0\
    );
\axi_rdata[1]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000FF4F0040"
    )
        port map (
      I0 => \axi_araddr_reg_n_0_[2]\,
      I1 => slv_reg2_high(1),
      I2 => \axi_araddr_reg_n_0_[4]\,
      I3 => \axi_araddr_reg_n_0_[3]\,
      I4 => \axi_rdata[1]_i_2__0_n_0\,
      I5 => \axi_araddr_reg_n_0_[5]\,
      O => \axi_rdata[1]_i_1__0_n_0\
    );
\axi_rdata[1]_i_2__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"5510441011100010"
    )
        port map (
      I0 => \axi_araddr_reg_n_0_[4]\,
      I1 => \axi_araddr_reg_n_0_[2]\,
      I2 => slv_reg0(1),
      I3 => \axi_araddr_reg_n_0_[3]\,
      I4 => slv_reg2_low(1),
      I5 => \slv_reg3_reg_n_0_[1]\,
      O => \axi_rdata[1]_i_2__0_n_0\
    );
\axi_rdata[20]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000FF4F0040"
    )
        port map (
      I0 => \axi_araddr_reg_n_0_[2]\,
      I1 => slv_reg2_high(20),
      I2 => \axi_araddr_reg_n_0_[4]\,
      I3 => \axi_araddr_reg_n_0_[3]\,
      I4 => \axi_rdata[20]_i_2__0_n_0\,
      I5 => \axi_araddr_reg_n_0_[5]\,
      O => \axi_rdata[20]_i_1__0_n_0\
    );
\axi_rdata[20]_i_2__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"5510441011100010"
    )
        port map (
      I0 => \axi_araddr_reg_n_0_[4]\,
      I1 => \axi_araddr_reg_n_0_[2]\,
      I2 => slv_reg0(20),
      I3 => \axi_araddr_reg_n_0_[3]\,
      I4 => slv_reg2_low(20),
      I5 => \slv_reg3_reg_n_0_[20]\,
      O => \axi_rdata[20]_i_2__0_n_0\
    );
\axi_rdata[21]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000FF4F0040"
    )
        port map (
      I0 => \axi_araddr_reg_n_0_[2]\,
      I1 => slv_reg2_high(21),
      I2 => \axi_araddr_reg_n_0_[4]\,
      I3 => \axi_araddr_reg_n_0_[3]\,
      I4 => \axi_rdata[21]_i_2__0_n_0\,
      I5 => \axi_araddr_reg_n_0_[5]\,
      O => \axi_rdata[21]_i_1__0_n_0\
    );
\axi_rdata[21]_i_2__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"5510441011100010"
    )
        port map (
      I0 => \axi_araddr_reg_n_0_[4]\,
      I1 => \axi_araddr_reg_n_0_[2]\,
      I2 => slv_reg0(21),
      I3 => \axi_araddr_reg_n_0_[3]\,
      I4 => slv_reg2_low(21),
      I5 => \slv_reg3_reg_n_0_[21]\,
      O => \axi_rdata[21]_i_2__0_n_0\
    );
\axi_rdata[22]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000FF4F0040"
    )
        port map (
      I0 => \axi_araddr_reg_n_0_[2]\,
      I1 => slv_reg2_high(22),
      I2 => \axi_araddr_reg_n_0_[4]\,
      I3 => \axi_araddr_reg_n_0_[3]\,
      I4 => \axi_rdata[22]_i_2__0_n_0\,
      I5 => \axi_araddr_reg_n_0_[5]\,
      O => \axi_rdata[22]_i_1__0_n_0\
    );
\axi_rdata[22]_i_2__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"5510441011100010"
    )
        port map (
      I0 => \axi_araddr_reg_n_0_[4]\,
      I1 => \axi_araddr_reg_n_0_[2]\,
      I2 => slv_reg0(22),
      I3 => \axi_araddr_reg_n_0_[3]\,
      I4 => slv_reg2_low(22),
      I5 => \slv_reg3_reg_n_0_[22]\,
      O => \axi_rdata[22]_i_2__0_n_0\
    );
\axi_rdata[23]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000FF4F0040"
    )
        port map (
      I0 => \axi_araddr_reg_n_0_[2]\,
      I1 => slv_reg2_high(23),
      I2 => \axi_araddr_reg_n_0_[4]\,
      I3 => \axi_araddr_reg_n_0_[3]\,
      I4 => \axi_rdata[23]_i_2__0_n_0\,
      I5 => \axi_araddr_reg_n_0_[5]\,
      O => \axi_rdata[23]_i_1__0_n_0\
    );
\axi_rdata[23]_i_2__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"5510441011100010"
    )
        port map (
      I0 => \axi_araddr_reg_n_0_[4]\,
      I1 => \axi_araddr_reg_n_0_[2]\,
      I2 => slv_reg0(23),
      I3 => \axi_araddr_reg_n_0_[3]\,
      I4 => slv_reg2_low(23),
      I5 => \slv_reg3_reg_n_0_[23]\,
      O => \axi_rdata[23]_i_2__0_n_0\
    );
\axi_rdata[24]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000FF4F0040"
    )
        port map (
      I0 => \axi_araddr_reg_n_0_[2]\,
      I1 => slv_reg2_high(24),
      I2 => \axi_araddr_reg_n_0_[4]\,
      I3 => \axi_araddr_reg_n_0_[3]\,
      I4 => \axi_rdata[24]_i_2__0_n_0\,
      I5 => \axi_araddr_reg_n_0_[5]\,
      O => \axi_rdata[24]_i_1__0_n_0\
    );
\axi_rdata[24]_i_2__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"5510441011100010"
    )
        port map (
      I0 => \axi_araddr_reg_n_0_[4]\,
      I1 => \axi_araddr_reg_n_0_[2]\,
      I2 => slv_reg0(24),
      I3 => \axi_araddr_reg_n_0_[3]\,
      I4 => slv_reg2_low(24),
      I5 => \slv_reg3_reg_n_0_[24]\,
      O => \axi_rdata[24]_i_2__0_n_0\
    );
\axi_rdata[25]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000FF4F0040"
    )
        port map (
      I0 => \axi_araddr_reg_n_0_[2]\,
      I1 => slv_reg2_high(25),
      I2 => \axi_araddr_reg_n_0_[4]\,
      I3 => \axi_araddr_reg_n_0_[3]\,
      I4 => \axi_rdata[25]_i_2__0_n_0\,
      I5 => \axi_araddr_reg_n_0_[5]\,
      O => \axi_rdata[25]_i_1__0_n_0\
    );
\axi_rdata[25]_i_2__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"5510441011100010"
    )
        port map (
      I0 => \axi_araddr_reg_n_0_[4]\,
      I1 => \axi_araddr_reg_n_0_[2]\,
      I2 => slv_reg0(25),
      I3 => \axi_araddr_reg_n_0_[3]\,
      I4 => slv_reg2_low(25),
      I5 => \slv_reg3_reg_n_0_[25]\,
      O => \axi_rdata[25]_i_2__0_n_0\
    );
\axi_rdata[26]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000FF4F0040"
    )
        port map (
      I0 => \axi_araddr_reg_n_0_[2]\,
      I1 => slv_reg2_high(26),
      I2 => \axi_araddr_reg_n_0_[4]\,
      I3 => \axi_araddr_reg_n_0_[3]\,
      I4 => \axi_rdata[26]_i_2__0_n_0\,
      I5 => \axi_araddr_reg_n_0_[5]\,
      O => \axi_rdata[26]_i_1__0_n_0\
    );
\axi_rdata[26]_i_2__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"5510441011100010"
    )
        port map (
      I0 => \axi_araddr_reg_n_0_[4]\,
      I1 => \axi_araddr_reg_n_0_[2]\,
      I2 => slv_reg0(26),
      I3 => \axi_araddr_reg_n_0_[3]\,
      I4 => slv_reg2_low(26),
      I5 => \slv_reg3_reg_n_0_[26]\,
      O => \axi_rdata[26]_i_2__0_n_0\
    );
\axi_rdata[27]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000FF4F0040"
    )
        port map (
      I0 => \axi_araddr_reg_n_0_[2]\,
      I1 => slv_reg2_high(27),
      I2 => \axi_araddr_reg_n_0_[4]\,
      I3 => \axi_araddr_reg_n_0_[3]\,
      I4 => \axi_rdata[27]_i_2__0_n_0\,
      I5 => \axi_araddr_reg_n_0_[5]\,
      O => \axi_rdata[27]_i_1__0_n_0\
    );
\axi_rdata[27]_i_2__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"5510441011100010"
    )
        port map (
      I0 => \axi_araddr_reg_n_0_[4]\,
      I1 => \axi_araddr_reg_n_0_[2]\,
      I2 => slv_reg0(27),
      I3 => \axi_araddr_reg_n_0_[3]\,
      I4 => slv_reg2_low(27),
      I5 => \slv_reg3_reg_n_0_[27]\,
      O => \axi_rdata[27]_i_2__0_n_0\
    );
\axi_rdata[28]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000FF4F0040"
    )
        port map (
      I0 => \axi_araddr_reg_n_0_[2]\,
      I1 => slv_reg2_high(28),
      I2 => \axi_araddr_reg_n_0_[4]\,
      I3 => \axi_araddr_reg_n_0_[3]\,
      I4 => \axi_rdata[28]_i_2__0_n_0\,
      I5 => \axi_araddr_reg_n_0_[5]\,
      O => \axi_rdata[28]_i_1__0_n_0\
    );
\axi_rdata[28]_i_2__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"5510441011100010"
    )
        port map (
      I0 => \axi_araddr_reg_n_0_[4]\,
      I1 => \axi_araddr_reg_n_0_[2]\,
      I2 => slv_reg0(28),
      I3 => \axi_araddr_reg_n_0_[3]\,
      I4 => slv_reg2_low(28),
      I5 => \slv_reg3_reg_n_0_[28]\,
      O => \axi_rdata[28]_i_2__0_n_0\
    );
\axi_rdata[29]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000FF4F0040"
    )
        port map (
      I0 => \axi_araddr_reg_n_0_[2]\,
      I1 => slv_reg2_high(29),
      I2 => \axi_araddr_reg_n_0_[4]\,
      I3 => \axi_araddr_reg_n_0_[3]\,
      I4 => \axi_rdata[29]_i_2__0_n_0\,
      I5 => \axi_araddr_reg_n_0_[5]\,
      O => \axi_rdata[29]_i_1__0_n_0\
    );
\axi_rdata[29]_i_2__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"5510441011100010"
    )
        port map (
      I0 => \axi_araddr_reg_n_0_[4]\,
      I1 => \axi_araddr_reg_n_0_[2]\,
      I2 => slv_reg0(29),
      I3 => \axi_araddr_reg_n_0_[3]\,
      I4 => slv_reg2_low(29),
      I5 => \slv_reg3_reg_n_0_[29]\,
      O => \axi_rdata[29]_i_2__0_n_0\
    );
\axi_rdata[2]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000FF4F0040"
    )
        port map (
      I0 => \axi_araddr_reg_n_0_[2]\,
      I1 => slv_reg2_high(2),
      I2 => \axi_araddr_reg_n_0_[4]\,
      I3 => \axi_araddr_reg_n_0_[3]\,
      I4 => \axi_rdata[2]_i_2__0_n_0\,
      I5 => \axi_araddr_reg_n_0_[5]\,
      O => \axi_rdata[2]_i_1__0_n_0\
    );
\axi_rdata[2]_i_2__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"5510441011100010"
    )
        port map (
      I0 => \axi_araddr_reg_n_0_[4]\,
      I1 => \axi_araddr_reg_n_0_[2]\,
      I2 => slv_reg0(2),
      I3 => \axi_araddr_reg_n_0_[3]\,
      I4 => slv_reg2_low(2),
      I5 => \slv_reg3_reg_n_0_[2]\,
      O => \axi_rdata[2]_i_2__0_n_0\
    );
\axi_rdata[30]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000FF4F0040"
    )
        port map (
      I0 => \axi_araddr_reg_n_0_[2]\,
      I1 => slv_reg2_high(30),
      I2 => \axi_araddr_reg_n_0_[4]\,
      I3 => \axi_araddr_reg_n_0_[3]\,
      I4 => \axi_rdata[30]_i_2__0_n_0\,
      I5 => \axi_araddr_reg_n_0_[5]\,
      O => \axi_rdata[30]_i_1__0_n_0\
    );
\axi_rdata[30]_i_2__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"5510441011100010"
    )
        port map (
      I0 => \axi_araddr_reg_n_0_[4]\,
      I1 => \axi_araddr_reg_n_0_[2]\,
      I2 => slv_reg0(30),
      I3 => \axi_araddr_reg_n_0_[3]\,
      I4 => slv_reg2_low(30),
      I5 => \slv_reg3_reg_n_0_[30]\,
      O => \axi_rdata[30]_i_2__0_n_0\
    );
\axi_rdata[31]_i_1__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0800"
    )
        port map (
      I0 => s01_axi_arvalid,
      I1 => s01_cq_rd_sel,
      I2 => \^axi_rvalid_reg_0\,
      I3 => \^axi_arready_reg_0\,
      O => \axi_rdata[31]_i_1__0_n_0\
    );
\axi_rdata[31]_i_2__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000FF4F0040"
    )
        port map (
      I0 => \axi_araddr_reg_n_0_[2]\,
      I1 => slv_reg2_high(31),
      I2 => \axi_araddr_reg_n_0_[4]\,
      I3 => \axi_araddr_reg_n_0_[3]\,
      I4 => \axi_rdata[31]_i_3__0_n_0\,
      I5 => \axi_araddr_reg_n_0_[5]\,
      O => \axi_rdata[31]_i_2__0_n_0\
    );
\axi_rdata[31]_i_3__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"5510441011100010"
    )
        port map (
      I0 => \axi_araddr_reg_n_0_[4]\,
      I1 => \axi_araddr_reg_n_0_[2]\,
      I2 => slv_reg0(31),
      I3 => \axi_araddr_reg_n_0_[3]\,
      I4 => slv_reg2_low(31),
      I5 => \^q\(0),
      O => \axi_rdata[31]_i_3__0_n_0\
    );
\axi_rdata[3]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000FF4F0040"
    )
        port map (
      I0 => \axi_araddr_reg_n_0_[2]\,
      I1 => slv_reg2_high(3),
      I2 => \axi_araddr_reg_n_0_[4]\,
      I3 => \axi_araddr_reg_n_0_[3]\,
      I4 => \axi_rdata[3]_i_2__0_n_0\,
      I5 => \axi_araddr_reg_n_0_[5]\,
      O => \axi_rdata[3]_i_1__0_n_0\
    );
\axi_rdata[3]_i_2__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"5510441011100010"
    )
        port map (
      I0 => \axi_araddr_reg_n_0_[4]\,
      I1 => \axi_araddr_reg_n_0_[2]\,
      I2 => slv_reg0(3),
      I3 => \axi_araddr_reg_n_0_[3]\,
      I4 => slv_reg2_low(3),
      I5 => \slv_reg3_reg_n_0_[3]\,
      O => \axi_rdata[3]_i_2__0_n_0\
    );
\axi_rdata[4]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000FF4F0040"
    )
        port map (
      I0 => \axi_araddr_reg_n_0_[2]\,
      I1 => slv_reg2_high(4),
      I2 => \axi_araddr_reg_n_0_[4]\,
      I3 => \axi_araddr_reg_n_0_[3]\,
      I4 => \axi_rdata[4]_i_2__0_n_0\,
      I5 => \axi_araddr_reg_n_0_[5]\,
      O => \axi_rdata[4]_i_1__0_n_0\
    );
\axi_rdata[4]_i_2__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"5510441011100010"
    )
        port map (
      I0 => \axi_araddr_reg_n_0_[4]\,
      I1 => \axi_araddr_reg_n_0_[2]\,
      I2 => slv_reg0(4),
      I3 => \axi_araddr_reg_n_0_[3]\,
      I4 => slv_reg2_low(4),
      I5 => \slv_reg3_reg_n_0_[4]\,
      O => \axi_rdata[4]_i_2__0_n_0\
    );
\axi_rdata[5]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000FF4F0040"
    )
        port map (
      I0 => \axi_araddr_reg_n_0_[2]\,
      I1 => slv_reg2_high(5),
      I2 => \axi_araddr_reg_n_0_[4]\,
      I3 => \axi_araddr_reg_n_0_[3]\,
      I4 => \axi_rdata[5]_i_2__0_n_0\,
      I5 => \axi_araddr_reg_n_0_[5]\,
      O => \axi_rdata[5]_i_1__0_n_0\
    );
\axi_rdata[5]_i_2__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"5510441011100010"
    )
        port map (
      I0 => \axi_araddr_reg_n_0_[4]\,
      I1 => \axi_araddr_reg_n_0_[2]\,
      I2 => slv_reg0(5),
      I3 => \axi_araddr_reg_n_0_[3]\,
      I4 => slv_reg2_low(5),
      I5 => \slv_reg3_reg_n_0_[5]\,
      O => \axi_rdata[5]_i_2__0_n_0\
    );
\axi_rdata[6]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000FF4F0040"
    )
        port map (
      I0 => \axi_araddr_reg_n_0_[2]\,
      I1 => slv_reg2_high(6),
      I2 => \axi_araddr_reg_n_0_[4]\,
      I3 => \axi_araddr_reg_n_0_[3]\,
      I4 => \axi_rdata[6]_i_2__0_n_0\,
      I5 => \axi_araddr_reg_n_0_[5]\,
      O => \axi_rdata[6]_i_1__0_n_0\
    );
\axi_rdata[6]_i_2__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"5510441011100010"
    )
        port map (
      I0 => \axi_araddr_reg_n_0_[4]\,
      I1 => \axi_araddr_reg_n_0_[2]\,
      I2 => slv_reg0(6),
      I3 => \axi_araddr_reg_n_0_[3]\,
      I4 => slv_reg2_low(6),
      I5 => \slv_reg3_reg_n_0_[6]\,
      O => \axi_rdata[6]_i_2__0_n_0\
    );
\axi_rdata[7]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000FF4F0040"
    )
        port map (
      I0 => \axi_araddr_reg_n_0_[2]\,
      I1 => slv_reg2_high(7),
      I2 => \axi_araddr_reg_n_0_[4]\,
      I3 => \axi_araddr_reg_n_0_[3]\,
      I4 => \axi_rdata[7]_i_2__0_n_0\,
      I5 => \axi_araddr_reg_n_0_[5]\,
      O => \axi_rdata[7]_i_1__0_n_0\
    );
\axi_rdata[7]_i_2__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"5510441011100010"
    )
        port map (
      I0 => \axi_araddr_reg_n_0_[4]\,
      I1 => \axi_araddr_reg_n_0_[2]\,
      I2 => slv_reg0(7),
      I3 => \axi_araddr_reg_n_0_[3]\,
      I4 => slv_reg2_low(7),
      I5 => \slv_reg3_reg_n_0_[7]\,
      O => \axi_rdata[7]_i_2__0_n_0\
    );
\axi_rdata[8]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000FF4F0040"
    )
        port map (
      I0 => \axi_araddr_reg_n_0_[2]\,
      I1 => slv_reg2_high(8),
      I2 => \axi_araddr_reg_n_0_[4]\,
      I3 => \axi_araddr_reg_n_0_[3]\,
      I4 => \axi_rdata[8]_i_2__0_n_0\,
      I5 => \axi_araddr_reg_n_0_[5]\,
      O => \axi_rdata[8]_i_1__0_n_0\
    );
\axi_rdata[8]_i_2__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"5510441011100010"
    )
        port map (
      I0 => \axi_araddr_reg_n_0_[4]\,
      I1 => \axi_araddr_reg_n_0_[2]\,
      I2 => slv_reg0(8),
      I3 => \axi_araddr_reg_n_0_[3]\,
      I4 => slv_reg2_low(8),
      I5 => \slv_reg3_reg_n_0_[8]\,
      O => \axi_rdata[8]_i_2__0_n_0\
    );
\axi_rdata[9]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000FF4F0040"
    )
        port map (
      I0 => \axi_araddr_reg_n_0_[2]\,
      I1 => slv_reg2_high(9),
      I2 => \axi_araddr_reg_n_0_[4]\,
      I3 => \axi_araddr_reg_n_0_[3]\,
      I4 => \axi_rdata[9]_i_2__0_n_0\,
      I5 => \axi_araddr_reg_n_0_[5]\,
      O => \axi_rdata[9]_i_1__0_n_0\
    );
\axi_rdata[9]_i_2__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"5510441011100010"
    )
        port map (
      I0 => \axi_araddr_reg_n_0_[4]\,
      I1 => \axi_araddr_reg_n_0_[2]\,
      I2 => slv_reg0(9),
      I3 => \axi_araddr_reg_n_0_[3]\,
      I4 => slv_reg2_low(9),
      I5 => \slv_reg3_reg_n_0_[9]\,
      O => \axi_rdata[9]_i_2__0_n_0\
    );
\axi_rdata_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \axi_rdata[31]_i_1__0_n_0\,
      D => \axi_rdata[0]_i_1__0_n_0\,
      Q => \axi_rdata_reg[31]_0\(0),
      R => SR(0)
    );
\axi_rdata_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \axi_rdata[31]_i_1__0_n_0\,
      D => \axi_rdata[10]_i_1__0_n_0\,
      Q => \axi_rdata_reg[31]_0\(10),
      R => SR(0)
    );
\axi_rdata_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \axi_rdata[31]_i_1__0_n_0\,
      D => \axi_rdata[11]_i_1__0_n_0\,
      Q => \axi_rdata_reg[31]_0\(11),
      R => SR(0)
    );
\axi_rdata_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \axi_rdata[31]_i_1__0_n_0\,
      D => \axi_rdata[12]_i_1__0_n_0\,
      Q => \axi_rdata_reg[31]_0\(12),
      R => SR(0)
    );
\axi_rdata_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \axi_rdata[31]_i_1__0_n_0\,
      D => \axi_rdata[13]_i_1__0_n_0\,
      Q => \axi_rdata_reg[31]_0\(13),
      R => SR(0)
    );
\axi_rdata_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \axi_rdata[31]_i_1__0_n_0\,
      D => \axi_rdata[14]_i_1__0_n_0\,
      Q => \axi_rdata_reg[31]_0\(14),
      R => SR(0)
    );
\axi_rdata_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \axi_rdata[31]_i_1__0_n_0\,
      D => \axi_rdata[15]_i_1__0_n_0\,
      Q => \axi_rdata_reg[31]_0\(15),
      R => SR(0)
    );
\axi_rdata_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \axi_rdata[31]_i_1__0_n_0\,
      D => \axi_rdata[16]_i_1__0_n_0\,
      Q => \axi_rdata_reg[31]_0\(16),
      R => SR(0)
    );
\axi_rdata_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \axi_rdata[31]_i_1__0_n_0\,
      D => \axi_rdata[17]_i_1__0_n_0\,
      Q => \axi_rdata_reg[31]_0\(17),
      R => SR(0)
    );
\axi_rdata_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \axi_rdata[31]_i_1__0_n_0\,
      D => \axi_rdata[18]_i_1__0_n_0\,
      Q => \axi_rdata_reg[31]_0\(18),
      R => SR(0)
    );
\axi_rdata_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \axi_rdata[31]_i_1__0_n_0\,
      D => \axi_rdata[19]_i_1__0_n_0\,
      Q => \axi_rdata_reg[31]_0\(19),
      R => SR(0)
    );
\axi_rdata_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \axi_rdata[31]_i_1__0_n_0\,
      D => \axi_rdata[1]_i_1__0_n_0\,
      Q => \axi_rdata_reg[31]_0\(1),
      R => SR(0)
    );
\axi_rdata_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \axi_rdata[31]_i_1__0_n_0\,
      D => \axi_rdata[20]_i_1__0_n_0\,
      Q => \axi_rdata_reg[31]_0\(20),
      R => SR(0)
    );
\axi_rdata_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \axi_rdata[31]_i_1__0_n_0\,
      D => \axi_rdata[21]_i_1__0_n_0\,
      Q => \axi_rdata_reg[31]_0\(21),
      R => SR(0)
    );
\axi_rdata_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \axi_rdata[31]_i_1__0_n_0\,
      D => \axi_rdata[22]_i_1__0_n_0\,
      Q => \axi_rdata_reg[31]_0\(22),
      R => SR(0)
    );
\axi_rdata_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \axi_rdata[31]_i_1__0_n_0\,
      D => \axi_rdata[23]_i_1__0_n_0\,
      Q => \axi_rdata_reg[31]_0\(23),
      R => SR(0)
    );
\axi_rdata_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \axi_rdata[31]_i_1__0_n_0\,
      D => \axi_rdata[24]_i_1__0_n_0\,
      Q => \axi_rdata_reg[31]_0\(24),
      R => SR(0)
    );
\axi_rdata_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \axi_rdata[31]_i_1__0_n_0\,
      D => \axi_rdata[25]_i_1__0_n_0\,
      Q => \axi_rdata_reg[31]_0\(25),
      R => SR(0)
    );
\axi_rdata_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \axi_rdata[31]_i_1__0_n_0\,
      D => \axi_rdata[26]_i_1__0_n_0\,
      Q => \axi_rdata_reg[31]_0\(26),
      R => SR(0)
    );
\axi_rdata_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \axi_rdata[31]_i_1__0_n_0\,
      D => \axi_rdata[27]_i_1__0_n_0\,
      Q => \axi_rdata_reg[31]_0\(27),
      R => SR(0)
    );
\axi_rdata_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \axi_rdata[31]_i_1__0_n_0\,
      D => \axi_rdata[28]_i_1__0_n_0\,
      Q => \axi_rdata_reg[31]_0\(28),
      R => SR(0)
    );
\axi_rdata_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \axi_rdata[31]_i_1__0_n_0\,
      D => \axi_rdata[29]_i_1__0_n_0\,
      Q => \axi_rdata_reg[31]_0\(29),
      R => SR(0)
    );
\axi_rdata_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \axi_rdata[31]_i_1__0_n_0\,
      D => \axi_rdata[2]_i_1__0_n_0\,
      Q => \axi_rdata_reg[31]_0\(2),
      R => SR(0)
    );
\axi_rdata_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \axi_rdata[31]_i_1__0_n_0\,
      D => \axi_rdata[30]_i_1__0_n_0\,
      Q => \axi_rdata_reg[31]_0\(30),
      R => SR(0)
    );
\axi_rdata_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \axi_rdata[31]_i_1__0_n_0\,
      D => \axi_rdata[31]_i_2__0_n_0\,
      Q => \axi_rdata_reg[31]_0\(31),
      R => SR(0)
    );
\axi_rdata_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \axi_rdata[31]_i_1__0_n_0\,
      D => \axi_rdata[3]_i_1__0_n_0\,
      Q => \axi_rdata_reg[31]_0\(3),
      R => SR(0)
    );
\axi_rdata_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \axi_rdata[31]_i_1__0_n_0\,
      D => \axi_rdata[4]_i_1__0_n_0\,
      Q => \axi_rdata_reg[31]_0\(4),
      R => SR(0)
    );
\axi_rdata_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \axi_rdata[31]_i_1__0_n_0\,
      D => \axi_rdata[5]_i_1__0_n_0\,
      Q => \axi_rdata_reg[31]_0\(5),
      R => SR(0)
    );
\axi_rdata_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \axi_rdata[31]_i_1__0_n_0\,
      D => \axi_rdata[6]_i_1__0_n_0\,
      Q => \axi_rdata_reg[31]_0\(6),
      R => SR(0)
    );
\axi_rdata_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \axi_rdata[31]_i_1__0_n_0\,
      D => \axi_rdata[7]_i_1__0_n_0\,
      Q => \axi_rdata_reg[31]_0\(7),
      R => SR(0)
    );
\axi_rdata_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \axi_rdata[31]_i_1__0_n_0\,
      D => \axi_rdata[8]_i_1__0_n_0\,
      Q => \axi_rdata_reg[31]_0\(8),
      R => SR(0)
    );
\axi_rdata_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \axi_rdata[31]_i_1__0_n_0\,
      D => \axi_rdata[9]_i_1__0_n_0\,
      Q => \axi_rdata_reg[31]_0\(9),
      R => SR(0)
    );
\axi_rvalid_i_1__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0800F8F0"
    )
        port map (
      I0 => s01_axi_arvalid,
      I1 => s01_cq_rd_sel,
      I2 => \^axi_rvalid_reg_0\,
      I3 => \^axi_arready_reg_0\,
      I4 => s01_axi_rready,
      O => \axi_rvalid_i_1__0_n_0\
    );
axi_rvalid_reg: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \axi_rvalid_i_1__0_n_0\,
      Q => \^axi_rvalid_reg_0\,
      R => SR(0)
    );
\axi_s01_araddr_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => axi_s01_arready_i_1_n_0,
      D => s00_axi_araddr(0),
      Q => \axi_s01_araddr_reg_n_0_[2]\,
      R => SR(0)
    );
\axi_s01_araddr_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => axi_s01_arready_i_1_n_0,
      D => s00_axi_araddr(1),
      Q => \axi_s01_araddr_reg_n_0_[3]\,
      R => SR(0)
    );
\axi_s01_araddr_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => axi_s01_arready_i_1_n_0,
      D => s00_axi_araddr(2),
      Q => \axi_s01_araddr_reg_n_0_[4]\,
      R => SR(0)
    );
\axi_s01_araddr_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => axi_s01_arready_i_1_n_0,
      D => s00_axi_araddr(3),
      Q => \axi_s01_araddr_reg_n_0_[5]\,
      R => SR(0)
    );
axi_s01_arready_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"08"
    )
        port map (
      I0 => s00_axi_arvalid,
      I1 => s00_cq_rd_sel,
      I2 => \^axi_s01_arready_reg_0\,
      O => axi_s01_arready_i_1_n_0
    );
axi_s01_arready_reg: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => axi_s01_arready_i_1_n_0,
      Q => \^axi_s01_arready_reg_0\,
      R => SR(0)
    );
axi_s01_awready_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"20"
    )
        port map (
      I0 => axi_s01_wready_i_2_n_0,
      I1 => \^axi_s01_awready_reg_0\,
      I2 => aw_s01_en_reg_n_0,
      O => axi_s01_awready_i_1_n_0
    );
axi_s01_awready_reg: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => axi_s01_awready_i_1_n_0,
      Q => \^axi_s01_awready_reg_0\,
      R => SR(0)
    );
axi_s01_bvalid_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"74444444"
    )
        port map (
      I0 => s00_axi_bready,
      I1 => \^axi_s01_bvalid_reg_0\,
      I2 => \^axi_s01_awready_reg_0\,
      I3 => axi_s01_wready_i_2_n_0,
      I4 => \^axi_s01_wready_reg_0\,
      O => axi_s01_bvalid_i_1_n_0
    );
axi_s01_bvalid_reg: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => axi_s01_bvalid_i_1_n_0,
      Q => \^axi_s01_bvalid_reg_0\,
      R => SR(0)
    );
\axi_s01_rdata[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000000000F4F0040"
    )
        port map (
      I0 => \axi_s01_araddr_reg_n_0_[2]\,
      I1 => slv_reg2_high(0),
      I2 => \axi_s01_araddr_reg_n_0_[4]\,
      I3 => \axi_s01_araddr_reg_n_0_[3]\,
      I4 => \axi_s01_rdata[0]_i_2_n_0\,
      I5 => \axi_s01_araddr_reg_n_0_[5]\,
      O => \axi_s01_rdata[0]_i_1_n_0\
    );
\axi_s01_rdata[0]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \slv_reg3_reg_n_0_[0]\,
      I1 => slv_reg2_low(0),
      I2 => \axi_s01_araddr_reg_n_0_[3]\,
      I3 => \slv_reg1_reg_n_0_[0]\,
      I4 => \axi_s01_araddr_reg_n_0_[2]\,
      I5 => slv_reg0(0),
      O => \axi_s01_rdata[0]_i_2_n_0\
    );
\axi_s01_rdata[10]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000FF4F0040"
    )
        port map (
      I0 => \axi_s01_araddr_reg_n_0_[2]\,
      I1 => slv_reg2_high(10),
      I2 => \axi_s01_araddr_reg_n_0_[4]\,
      I3 => \axi_s01_araddr_reg_n_0_[3]\,
      I4 => \axi_s01_rdata[10]_i_2_n_0\,
      I5 => \axi_s01_araddr_reg_n_0_[5]\,
      O => \axi_s01_rdata[10]_i_1_n_0\
    );
\axi_s01_rdata[10]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"5510441011100010"
    )
        port map (
      I0 => \axi_s01_araddr_reg_n_0_[4]\,
      I1 => \axi_s01_araddr_reg_n_0_[2]\,
      I2 => slv_reg0(10),
      I3 => \axi_s01_araddr_reg_n_0_[3]\,
      I4 => slv_reg2_low(10),
      I5 => \slv_reg3_reg_n_0_[10]\,
      O => \axi_s01_rdata[10]_i_2_n_0\
    );
\axi_s01_rdata[11]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000FF4F0040"
    )
        port map (
      I0 => \axi_s01_araddr_reg_n_0_[2]\,
      I1 => slv_reg2_high(11),
      I2 => \axi_s01_araddr_reg_n_0_[4]\,
      I3 => \axi_s01_araddr_reg_n_0_[3]\,
      I4 => \axi_s01_rdata[11]_i_2_n_0\,
      I5 => \axi_s01_araddr_reg_n_0_[5]\,
      O => \axi_s01_rdata[11]_i_1_n_0\
    );
\axi_s01_rdata[11]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"5510441011100010"
    )
        port map (
      I0 => \axi_s01_araddr_reg_n_0_[4]\,
      I1 => \axi_s01_araddr_reg_n_0_[2]\,
      I2 => slv_reg0(11),
      I3 => \axi_s01_araddr_reg_n_0_[3]\,
      I4 => slv_reg2_low(11),
      I5 => \slv_reg3_reg_n_0_[11]\,
      O => \axi_s01_rdata[11]_i_2_n_0\
    );
\axi_s01_rdata[12]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000FF4F0040"
    )
        port map (
      I0 => \axi_s01_araddr_reg_n_0_[2]\,
      I1 => slv_reg2_high(12),
      I2 => \axi_s01_araddr_reg_n_0_[4]\,
      I3 => \axi_s01_araddr_reg_n_0_[3]\,
      I4 => \axi_s01_rdata[12]_i_2_n_0\,
      I5 => \axi_s01_araddr_reg_n_0_[5]\,
      O => \axi_s01_rdata[12]_i_1_n_0\
    );
\axi_s01_rdata[12]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"5510441011100010"
    )
        port map (
      I0 => \axi_s01_araddr_reg_n_0_[4]\,
      I1 => \axi_s01_araddr_reg_n_0_[2]\,
      I2 => slv_reg0(12),
      I3 => \axi_s01_araddr_reg_n_0_[3]\,
      I4 => slv_reg2_low(12),
      I5 => \slv_reg3_reg_n_0_[12]\,
      O => \axi_s01_rdata[12]_i_2_n_0\
    );
\axi_s01_rdata[13]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000FF4F0040"
    )
        port map (
      I0 => \axi_s01_araddr_reg_n_0_[2]\,
      I1 => slv_reg2_high(13),
      I2 => \axi_s01_araddr_reg_n_0_[4]\,
      I3 => \axi_s01_araddr_reg_n_0_[3]\,
      I4 => \axi_s01_rdata[13]_i_2_n_0\,
      I5 => \axi_s01_araddr_reg_n_0_[5]\,
      O => \axi_s01_rdata[13]_i_1_n_0\
    );
\axi_s01_rdata[13]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"5510441011100010"
    )
        port map (
      I0 => \axi_s01_araddr_reg_n_0_[4]\,
      I1 => \axi_s01_araddr_reg_n_0_[2]\,
      I2 => slv_reg0(13),
      I3 => \axi_s01_araddr_reg_n_0_[3]\,
      I4 => slv_reg2_low(13),
      I5 => \slv_reg3_reg_n_0_[13]\,
      O => \axi_s01_rdata[13]_i_2_n_0\
    );
\axi_s01_rdata[14]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000FF4F0040"
    )
        port map (
      I0 => \axi_s01_araddr_reg_n_0_[2]\,
      I1 => slv_reg2_high(14),
      I2 => \axi_s01_araddr_reg_n_0_[4]\,
      I3 => \axi_s01_araddr_reg_n_0_[3]\,
      I4 => \axi_s01_rdata[14]_i_2_n_0\,
      I5 => \axi_s01_araddr_reg_n_0_[5]\,
      O => \axi_s01_rdata[14]_i_1_n_0\
    );
\axi_s01_rdata[14]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"5510441011100010"
    )
        port map (
      I0 => \axi_s01_araddr_reg_n_0_[4]\,
      I1 => \axi_s01_araddr_reg_n_0_[2]\,
      I2 => slv_reg0(14),
      I3 => \axi_s01_araddr_reg_n_0_[3]\,
      I4 => slv_reg2_low(14),
      I5 => \slv_reg3_reg_n_0_[14]\,
      O => \axi_s01_rdata[14]_i_2_n_0\
    );
\axi_s01_rdata[15]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000FF4F0040"
    )
        port map (
      I0 => \axi_s01_araddr_reg_n_0_[2]\,
      I1 => slv_reg2_high(15),
      I2 => \axi_s01_araddr_reg_n_0_[4]\,
      I3 => \axi_s01_araddr_reg_n_0_[3]\,
      I4 => \axi_s01_rdata[15]_i_2_n_0\,
      I5 => \axi_s01_araddr_reg_n_0_[5]\,
      O => \axi_s01_rdata[15]_i_1_n_0\
    );
\axi_s01_rdata[15]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"5510441011100010"
    )
        port map (
      I0 => \axi_s01_araddr_reg_n_0_[4]\,
      I1 => \axi_s01_araddr_reg_n_0_[2]\,
      I2 => slv_reg0(15),
      I3 => \axi_s01_araddr_reg_n_0_[3]\,
      I4 => slv_reg2_low(15),
      I5 => \slv_reg3_reg_n_0_[15]\,
      O => \axi_s01_rdata[15]_i_2_n_0\
    );
\axi_s01_rdata[16]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000FF4F0040"
    )
        port map (
      I0 => \axi_s01_araddr_reg_n_0_[2]\,
      I1 => slv_reg2_high(16),
      I2 => \axi_s01_araddr_reg_n_0_[4]\,
      I3 => \axi_s01_araddr_reg_n_0_[3]\,
      I4 => \axi_s01_rdata[16]_i_2_n_0\,
      I5 => \axi_s01_araddr_reg_n_0_[5]\,
      O => \axi_s01_rdata[16]_i_1_n_0\
    );
\axi_s01_rdata[16]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"5510441011100010"
    )
        port map (
      I0 => \axi_s01_araddr_reg_n_0_[4]\,
      I1 => \axi_s01_araddr_reg_n_0_[2]\,
      I2 => slv_reg0(16),
      I3 => \axi_s01_araddr_reg_n_0_[3]\,
      I4 => slv_reg2_low(16),
      I5 => \slv_reg3_reg_n_0_[16]\,
      O => \axi_s01_rdata[16]_i_2_n_0\
    );
\axi_s01_rdata[17]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000FF4F0040"
    )
        port map (
      I0 => \axi_s01_araddr_reg_n_0_[2]\,
      I1 => slv_reg2_high(17),
      I2 => \axi_s01_araddr_reg_n_0_[4]\,
      I3 => \axi_s01_araddr_reg_n_0_[3]\,
      I4 => \axi_s01_rdata[17]_i_2_n_0\,
      I5 => \axi_s01_araddr_reg_n_0_[5]\,
      O => \axi_s01_rdata[17]_i_1_n_0\
    );
\axi_s01_rdata[17]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"5510441011100010"
    )
        port map (
      I0 => \axi_s01_araddr_reg_n_0_[4]\,
      I1 => \axi_s01_araddr_reg_n_0_[2]\,
      I2 => slv_reg0(17),
      I3 => \axi_s01_araddr_reg_n_0_[3]\,
      I4 => slv_reg2_low(17),
      I5 => \slv_reg3_reg_n_0_[17]\,
      O => \axi_s01_rdata[17]_i_2_n_0\
    );
\axi_s01_rdata[18]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000FF4F0040"
    )
        port map (
      I0 => \axi_s01_araddr_reg_n_0_[2]\,
      I1 => slv_reg2_high(18),
      I2 => \axi_s01_araddr_reg_n_0_[4]\,
      I3 => \axi_s01_araddr_reg_n_0_[3]\,
      I4 => \axi_s01_rdata[18]_i_2_n_0\,
      I5 => \axi_s01_araddr_reg_n_0_[5]\,
      O => \axi_s01_rdata[18]_i_1_n_0\
    );
\axi_s01_rdata[18]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"5510441011100010"
    )
        port map (
      I0 => \axi_s01_araddr_reg_n_0_[4]\,
      I1 => \axi_s01_araddr_reg_n_0_[2]\,
      I2 => slv_reg0(18),
      I3 => \axi_s01_araddr_reg_n_0_[3]\,
      I4 => slv_reg2_low(18),
      I5 => \slv_reg3_reg_n_0_[18]\,
      O => \axi_s01_rdata[18]_i_2_n_0\
    );
\axi_s01_rdata[19]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000FF4F0040"
    )
        port map (
      I0 => \axi_s01_araddr_reg_n_0_[2]\,
      I1 => slv_reg2_high(19),
      I2 => \axi_s01_araddr_reg_n_0_[4]\,
      I3 => \axi_s01_araddr_reg_n_0_[3]\,
      I4 => \axi_s01_rdata[19]_i_2_n_0\,
      I5 => \axi_s01_araddr_reg_n_0_[5]\,
      O => \axi_s01_rdata[19]_i_1_n_0\
    );
\axi_s01_rdata[19]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"5510441011100010"
    )
        port map (
      I0 => \axi_s01_araddr_reg_n_0_[4]\,
      I1 => \axi_s01_araddr_reg_n_0_[2]\,
      I2 => slv_reg0(19),
      I3 => \axi_s01_araddr_reg_n_0_[3]\,
      I4 => slv_reg2_low(19),
      I5 => \slv_reg3_reg_n_0_[19]\,
      O => \axi_s01_rdata[19]_i_2_n_0\
    );
\axi_s01_rdata[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000FF4F0040"
    )
        port map (
      I0 => \axi_s01_araddr_reg_n_0_[2]\,
      I1 => slv_reg2_high(1),
      I2 => \axi_s01_araddr_reg_n_0_[4]\,
      I3 => \axi_s01_araddr_reg_n_0_[3]\,
      I4 => \axi_s01_rdata[1]_i_2_n_0\,
      I5 => \axi_s01_araddr_reg_n_0_[5]\,
      O => \axi_s01_rdata[1]_i_1_n_0\
    );
\axi_s01_rdata[1]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"5510441011100010"
    )
        port map (
      I0 => \axi_s01_araddr_reg_n_0_[4]\,
      I1 => \axi_s01_araddr_reg_n_0_[2]\,
      I2 => slv_reg0(1),
      I3 => \axi_s01_araddr_reg_n_0_[3]\,
      I4 => slv_reg2_low(1),
      I5 => \slv_reg3_reg_n_0_[1]\,
      O => \axi_s01_rdata[1]_i_2_n_0\
    );
\axi_s01_rdata[20]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000FF4F0040"
    )
        port map (
      I0 => \axi_s01_araddr_reg_n_0_[2]\,
      I1 => slv_reg2_high(20),
      I2 => \axi_s01_araddr_reg_n_0_[4]\,
      I3 => \axi_s01_araddr_reg_n_0_[3]\,
      I4 => \axi_s01_rdata[20]_i_2_n_0\,
      I5 => \axi_s01_araddr_reg_n_0_[5]\,
      O => \axi_s01_rdata[20]_i_1_n_0\
    );
\axi_s01_rdata[20]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"5510441011100010"
    )
        port map (
      I0 => \axi_s01_araddr_reg_n_0_[4]\,
      I1 => \axi_s01_araddr_reg_n_0_[2]\,
      I2 => slv_reg0(20),
      I3 => \axi_s01_araddr_reg_n_0_[3]\,
      I4 => slv_reg2_low(20),
      I5 => \slv_reg3_reg_n_0_[20]\,
      O => \axi_s01_rdata[20]_i_2_n_0\
    );
\axi_s01_rdata[21]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000FF4F0040"
    )
        port map (
      I0 => \axi_s01_araddr_reg_n_0_[2]\,
      I1 => slv_reg2_high(21),
      I2 => \axi_s01_araddr_reg_n_0_[4]\,
      I3 => \axi_s01_araddr_reg_n_0_[3]\,
      I4 => \axi_s01_rdata[21]_i_2_n_0\,
      I5 => \axi_s01_araddr_reg_n_0_[5]\,
      O => \axi_s01_rdata[21]_i_1_n_0\
    );
\axi_s01_rdata[21]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"5510441011100010"
    )
        port map (
      I0 => \axi_s01_araddr_reg_n_0_[4]\,
      I1 => \axi_s01_araddr_reg_n_0_[2]\,
      I2 => slv_reg0(21),
      I3 => \axi_s01_araddr_reg_n_0_[3]\,
      I4 => slv_reg2_low(21),
      I5 => \slv_reg3_reg_n_0_[21]\,
      O => \axi_s01_rdata[21]_i_2_n_0\
    );
\axi_s01_rdata[22]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000FF4F0040"
    )
        port map (
      I0 => \axi_s01_araddr_reg_n_0_[2]\,
      I1 => slv_reg2_high(22),
      I2 => \axi_s01_araddr_reg_n_0_[4]\,
      I3 => \axi_s01_araddr_reg_n_0_[3]\,
      I4 => \axi_s01_rdata[22]_i_2_n_0\,
      I5 => \axi_s01_araddr_reg_n_0_[5]\,
      O => \axi_s01_rdata[22]_i_1_n_0\
    );
\axi_s01_rdata[22]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"5510441011100010"
    )
        port map (
      I0 => \axi_s01_araddr_reg_n_0_[4]\,
      I1 => \axi_s01_araddr_reg_n_0_[2]\,
      I2 => slv_reg0(22),
      I3 => \axi_s01_araddr_reg_n_0_[3]\,
      I4 => slv_reg2_low(22),
      I5 => \slv_reg3_reg_n_0_[22]\,
      O => \axi_s01_rdata[22]_i_2_n_0\
    );
\axi_s01_rdata[23]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000FF4F0040"
    )
        port map (
      I0 => \axi_s01_araddr_reg_n_0_[2]\,
      I1 => slv_reg2_high(23),
      I2 => \axi_s01_araddr_reg_n_0_[4]\,
      I3 => \axi_s01_araddr_reg_n_0_[3]\,
      I4 => \axi_s01_rdata[23]_i_2_n_0\,
      I5 => \axi_s01_araddr_reg_n_0_[5]\,
      O => \axi_s01_rdata[23]_i_1_n_0\
    );
\axi_s01_rdata[23]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"5510441011100010"
    )
        port map (
      I0 => \axi_s01_araddr_reg_n_0_[4]\,
      I1 => \axi_s01_araddr_reg_n_0_[2]\,
      I2 => slv_reg0(23),
      I3 => \axi_s01_araddr_reg_n_0_[3]\,
      I4 => slv_reg2_low(23),
      I5 => \slv_reg3_reg_n_0_[23]\,
      O => \axi_s01_rdata[23]_i_2_n_0\
    );
\axi_s01_rdata[24]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000FF4F0040"
    )
        port map (
      I0 => \axi_s01_araddr_reg_n_0_[2]\,
      I1 => slv_reg2_high(24),
      I2 => \axi_s01_araddr_reg_n_0_[4]\,
      I3 => \axi_s01_araddr_reg_n_0_[3]\,
      I4 => \axi_s01_rdata[24]_i_2_n_0\,
      I5 => \axi_s01_araddr_reg_n_0_[5]\,
      O => \axi_s01_rdata[24]_i_1_n_0\
    );
\axi_s01_rdata[24]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"5510441011100010"
    )
        port map (
      I0 => \axi_s01_araddr_reg_n_0_[4]\,
      I1 => \axi_s01_araddr_reg_n_0_[2]\,
      I2 => slv_reg0(24),
      I3 => \axi_s01_araddr_reg_n_0_[3]\,
      I4 => slv_reg2_low(24),
      I5 => \slv_reg3_reg_n_0_[24]\,
      O => \axi_s01_rdata[24]_i_2_n_0\
    );
\axi_s01_rdata[25]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000FF4F0040"
    )
        port map (
      I0 => \axi_s01_araddr_reg_n_0_[2]\,
      I1 => slv_reg2_high(25),
      I2 => \axi_s01_araddr_reg_n_0_[4]\,
      I3 => \axi_s01_araddr_reg_n_0_[3]\,
      I4 => \axi_s01_rdata[25]_i_2_n_0\,
      I5 => \axi_s01_araddr_reg_n_0_[5]\,
      O => \axi_s01_rdata[25]_i_1_n_0\
    );
\axi_s01_rdata[25]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"5510441011100010"
    )
        port map (
      I0 => \axi_s01_araddr_reg_n_0_[4]\,
      I1 => \axi_s01_araddr_reg_n_0_[2]\,
      I2 => slv_reg0(25),
      I3 => \axi_s01_araddr_reg_n_0_[3]\,
      I4 => slv_reg2_low(25),
      I5 => \slv_reg3_reg_n_0_[25]\,
      O => \axi_s01_rdata[25]_i_2_n_0\
    );
\axi_s01_rdata[26]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000FF4F0040"
    )
        port map (
      I0 => \axi_s01_araddr_reg_n_0_[2]\,
      I1 => slv_reg2_high(26),
      I2 => \axi_s01_araddr_reg_n_0_[4]\,
      I3 => \axi_s01_araddr_reg_n_0_[3]\,
      I4 => \axi_s01_rdata[26]_i_2_n_0\,
      I5 => \axi_s01_araddr_reg_n_0_[5]\,
      O => \axi_s01_rdata[26]_i_1_n_0\
    );
\axi_s01_rdata[26]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"5510441011100010"
    )
        port map (
      I0 => \axi_s01_araddr_reg_n_0_[4]\,
      I1 => \axi_s01_araddr_reg_n_0_[2]\,
      I2 => slv_reg0(26),
      I3 => \axi_s01_araddr_reg_n_0_[3]\,
      I4 => slv_reg2_low(26),
      I5 => \slv_reg3_reg_n_0_[26]\,
      O => \axi_s01_rdata[26]_i_2_n_0\
    );
\axi_s01_rdata[27]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000FF4F0040"
    )
        port map (
      I0 => \axi_s01_araddr_reg_n_0_[2]\,
      I1 => slv_reg2_high(27),
      I2 => \axi_s01_araddr_reg_n_0_[4]\,
      I3 => \axi_s01_araddr_reg_n_0_[3]\,
      I4 => \axi_s01_rdata[27]_i_2_n_0\,
      I5 => \axi_s01_araddr_reg_n_0_[5]\,
      O => \axi_s01_rdata[27]_i_1_n_0\
    );
\axi_s01_rdata[27]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"5510441011100010"
    )
        port map (
      I0 => \axi_s01_araddr_reg_n_0_[4]\,
      I1 => \axi_s01_araddr_reg_n_0_[2]\,
      I2 => slv_reg0(27),
      I3 => \axi_s01_araddr_reg_n_0_[3]\,
      I4 => slv_reg2_low(27),
      I5 => \slv_reg3_reg_n_0_[27]\,
      O => \axi_s01_rdata[27]_i_2_n_0\
    );
\axi_s01_rdata[28]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000FF4F0040"
    )
        port map (
      I0 => \axi_s01_araddr_reg_n_0_[2]\,
      I1 => slv_reg2_high(28),
      I2 => \axi_s01_araddr_reg_n_0_[4]\,
      I3 => \axi_s01_araddr_reg_n_0_[3]\,
      I4 => \axi_s01_rdata[28]_i_2_n_0\,
      I5 => \axi_s01_araddr_reg_n_0_[5]\,
      O => \axi_s01_rdata[28]_i_1_n_0\
    );
\axi_s01_rdata[28]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"5510441011100010"
    )
        port map (
      I0 => \axi_s01_araddr_reg_n_0_[4]\,
      I1 => \axi_s01_araddr_reg_n_0_[2]\,
      I2 => slv_reg0(28),
      I3 => \axi_s01_araddr_reg_n_0_[3]\,
      I4 => slv_reg2_low(28),
      I5 => \slv_reg3_reg_n_0_[28]\,
      O => \axi_s01_rdata[28]_i_2_n_0\
    );
\axi_s01_rdata[29]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000FF4F0040"
    )
        port map (
      I0 => \axi_s01_araddr_reg_n_0_[2]\,
      I1 => slv_reg2_high(29),
      I2 => \axi_s01_araddr_reg_n_0_[4]\,
      I3 => \axi_s01_araddr_reg_n_0_[3]\,
      I4 => \axi_s01_rdata[29]_i_2_n_0\,
      I5 => \axi_s01_araddr_reg_n_0_[5]\,
      O => \axi_s01_rdata[29]_i_1_n_0\
    );
\axi_s01_rdata[29]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"5510441011100010"
    )
        port map (
      I0 => \axi_s01_araddr_reg_n_0_[4]\,
      I1 => \axi_s01_araddr_reg_n_0_[2]\,
      I2 => slv_reg0(29),
      I3 => \axi_s01_araddr_reg_n_0_[3]\,
      I4 => slv_reg2_low(29),
      I5 => \slv_reg3_reg_n_0_[29]\,
      O => \axi_s01_rdata[29]_i_2_n_0\
    );
\axi_s01_rdata[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000FF4F0040"
    )
        port map (
      I0 => \axi_s01_araddr_reg_n_0_[2]\,
      I1 => slv_reg2_high(2),
      I2 => \axi_s01_araddr_reg_n_0_[4]\,
      I3 => \axi_s01_araddr_reg_n_0_[3]\,
      I4 => \axi_s01_rdata[2]_i_2_n_0\,
      I5 => \axi_s01_araddr_reg_n_0_[5]\,
      O => \axi_s01_rdata[2]_i_1_n_0\
    );
\axi_s01_rdata[2]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"5510441011100010"
    )
        port map (
      I0 => \axi_s01_araddr_reg_n_0_[4]\,
      I1 => \axi_s01_araddr_reg_n_0_[2]\,
      I2 => slv_reg0(2),
      I3 => \axi_s01_araddr_reg_n_0_[3]\,
      I4 => slv_reg2_low(2),
      I5 => \slv_reg3_reg_n_0_[2]\,
      O => \axi_s01_rdata[2]_i_2_n_0\
    );
\axi_s01_rdata[30]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000FF4F0040"
    )
        port map (
      I0 => \axi_s01_araddr_reg_n_0_[2]\,
      I1 => slv_reg2_high(30),
      I2 => \axi_s01_araddr_reg_n_0_[4]\,
      I3 => \axi_s01_araddr_reg_n_0_[3]\,
      I4 => \axi_s01_rdata[30]_i_2_n_0\,
      I5 => \axi_s01_araddr_reg_n_0_[5]\,
      O => \axi_s01_rdata[30]_i_1_n_0\
    );
\axi_s01_rdata[30]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"5510441011100010"
    )
        port map (
      I0 => \axi_s01_araddr_reg_n_0_[4]\,
      I1 => \axi_s01_araddr_reg_n_0_[2]\,
      I2 => slv_reg0(30),
      I3 => \axi_s01_araddr_reg_n_0_[3]\,
      I4 => slv_reg2_low(30),
      I5 => \slv_reg3_reg_n_0_[30]\,
      O => \axi_s01_rdata[30]_i_2_n_0\
    );
\axi_s01_rdata[31]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0800"
    )
        port map (
      I0 => s00_axi_arvalid,
      I1 => s00_cq_rd_sel,
      I2 => \^axi_s01_rvalid_reg_0\,
      I3 => \^axi_s01_arready_reg_0\,
      O => \axi_s01_rdata[31]_i_1_n_0\
    );
\axi_s01_rdata[31]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000FF4F0040"
    )
        port map (
      I0 => \axi_s01_araddr_reg_n_0_[2]\,
      I1 => slv_reg2_high(31),
      I2 => \axi_s01_araddr_reg_n_0_[4]\,
      I3 => \axi_s01_araddr_reg_n_0_[3]\,
      I4 => \axi_s01_rdata[31]_i_3_n_0\,
      I5 => \axi_s01_araddr_reg_n_0_[5]\,
      O => \axi_s01_rdata[31]_i_2_n_0\
    );
\axi_s01_rdata[31]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"5510441011100010"
    )
        port map (
      I0 => \axi_s01_araddr_reg_n_0_[4]\,
      I1 => \axi_s01_araddr_reg_n_0_[2]\,
      I2 => slv_reg0(31),
      I3 => \axi_s01_araddr_reg_n_0_[3]\,
      I4 => slv_reg2_low(31),
      I5 => \^q\(0),
      O => \axi_s01_rdata[31]_i_3_n_0\
    );
\axi_s01_rdata[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000FF4F0040"
    )
        port map (
      I0 => \axi_s01_araddr_reg_n_0_[2]\,
      I1 => slv_reg2_high(3),
      I2 => \axi_s01_araddr_reg_n_0_[4]\,
      I3 => \axi_s01_araddr_reg_n_0_[3]\,
      I4 => \axi_s01_rdata[3]_i_2_n_0\,
      I5 => \axi_s01_araddr_reg_n_0_[5]\,
      O => \axi_s01_rdata[3]_i_1_n_0\
    );
\axi_s01_rdata[3]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"5510441011100010"
    )
        port map (
      I0 => \axi_s01_araddr_reg_n_0_[4]\,
      I1 => \axi_s01_araddr_reg_n_0_[2]\,
      I2 => slv_reg0(3),
      I3 => \axi_s01_araddr_reg_n_0_[3]\,
      I4 => slv_reg2_low(3),
      I5 => \slv_reg3_reg_n_0_[3]\,
      O => \axi_s01_rdata[3]_i_2_n_0\
    );
\axi_s01_rdata[4]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000FF4F0040"
    )
        port map (
      I0 => \axi_s01_araddr_reg_n_0_[2]\,
      I1 => slv_reg2_high(4),
      I2 => \axi_s01_araddr_reg_n_0_[4]\,
      I3 => \axi_s01_araddr_reg_n_0_[3]\,
      I4 => \axi_s01_rdata[4]_i_2_n_0\,
      I5 => \axi_s01_araddr_reg_n_0_[5]\,
      O => \axi_s01_rdata[4]_i_1_n_0\
    );
\axi_s01_rdata[4]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"5510441011100010"
    )
        port map (
      I0 => \axi_s01_araddr_reg_n_0_[4]\,
      I1 => \axi_s01_araddr_reg_n_0_[2]\,
      I2 => slv_reg0(4),
      I3 => \axi_s01_araddr_reg_n_0_[3]\,
      I4 => slv_reg2_low(4),
      I5 => \slv_reg3_reg_n_0_[4]\,
      O => \axi_s01_rdata[4]_i_2_n_0\
    );
\axi_s01_rdata[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000FF4F0040"
    )
        port map (
      I0 => \axi_s01_araddr_reg_n_0_[2]\,
      I1 => slv_reg2_high(5),
      I2 => \axi_s01_araddr_reg_n_0_[4]\,
      I3 => \axi_s01_araddr_reg_n_0_[3]\,
      I4 => \axi_s01_rdata[5]_i_2_n_0\,
      I5 => \axi_s01_araddr_reg_n_0_[5]\,
      O => \axi_s01_rdata[5]_i_1_n_0\
    );
\axi_s01_rdata[5]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"5510441011100010"
    )
        port map (
      I0 => \axi_s01_araddr_reg_n_0_[4]\,
      I1 => \axi_s01_araddr_reg_n_0_[2]\,
      I2 => slv_reg0(5),
      I3 => \axi_s01_araddr_reg_n_0_[3]\,
      I4 => slv_reg2_low(5),
      I5 => \slv_reg3_reg_n_0_[5]\,
      O => \axi_s01_rdata[5]_i_2_n_0\
    );
\axi_s01_rdata[6]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000FF4F0040"
    )
        port map (
      I0 => \axi_s01_araddr_reg_n_0_[2]\,
      I1 => slv_reg2_high(6),
      I2 => \axi_s01_araddr_reg_n_0_[4]\,
      I3 => \axi_s01_araddr_reg_n_0_[3]\,
      I4 => \axi_s01_rdata[6]_i_2_n_0\,
      I5 => \axi_s01_araddr_reg_n_0_[5]\,
      O => \axi_s01_rdata[6]_i_1_n_0\
    );
\axi_s01_rdata[6]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"5510441011100010"
    )
        port map (
      I0 => \axi_s01_araddr_reg_n_0_[4]\,
      I1 => \axi_s01_araddr_reg_n_0_[2]\,
      I2 => slv_reg0(6),
      I3 => \axi_s01_araddr_reg_n_0_[3]\,
      I4 => slv_reg2_low(6),
      I5 => \slv_reg3_reg_n_0_[6]\,
      O => \axi_s01_rdata[6]_i_2_n_0\
    );
\axi_s01_rdata[7]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000FF4F0040"
    )
        port map (
      I0 => \axi_s01_araddr_reg_n_0_[2]\,
      I1 => slv_reg2_high(7),
      I2 => \axi_s01_araddr_reg_n_0_[4]\,
      I3 => \axi_s01_araddr_reg_n_0_[3]\,
      I4 => \axi_s01_rdata[7]_i_2_n_0\,
      I5 => \axi_s01_araddr_reg_n_0_[5]\,
      O => \axi_s01_rdata[7]_i_1_n_0\
    );
\axi_s01_rdata[7]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"5510441011100010"
    )
        port map (
      I0 => \axi_s01_araddr_reg_n_0_[4]\,
      I1 => \axi_s01_araddr_reg_n_0_[2]\,
      I2 => slv_reg0(7),
      I3 => \axi_s01_araddr_reg_n_0_[3]\,
      I4 => slv_reg2_low(7),
      I5 => \slv_reg3_reg_n_0_[7]\,
      O => \axi_s01_rdata[7]_i_2_n_0\
    );
\axi_s01_rdata[8]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000FF4F0040"
    )
        port map (
      I0 => \axi_s01_araddr_reg_n_0_[2]\,
      I1 => slv_reg2_high(8),
      I2 => \axi_s01_araddr_reg_n_0_[4]\,
      I3 => \axi_s01_araddr_reg_n_0_[3]\,
      I4 => \axi_s01_rdata[8]_i_2_n_0\,
      I5 => \axi_s01_araddr_reg_n_0_[5]\,
      O => \axi_s01_rdata[8]_i_1_n_0\
    );
\axi_s01_rdata[8]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"5510441011100010"
    )
        port map (
      I0 => \axi_s01_araddr_reg_n_0_[4]\,
      I1 => \axi_s01_araddr_reg_n_0_[2]\,
      I2 => slv_reg0(8),
      I3 => \axi_s01_araddr_reg_n_0_[3]\,
      I4 => slv_reg2_low(8),
      I5 => \slv_reg3_reg_n_0_[8]\,
      O => \axi_s01_rdata[8]_i_2_n_0\
    );
\axi_s01_rdata[9]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000FF4F0040"
    )
        port map (
      I0 => \axi_s01_araddr_reg_n_0_[2]\,
      I1 => slv_reg2_high(9),
      I2 => \axi_s01_araddr_reg_n_0_[4]\,
      I3 => \axi_s01_araddr_reg_n_0_[3]\,
      I4 => \axi_s01_rdata[9]_i_2_n_0\,
      I5 => \axi_s01_araddr_reg_n_0_[5]\,
      O => \axi_s01_rdata[9]_i_1_n_0\
    );
\axi_s01_rdata[9]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"5510441011100010"
    )
        port map (
      I0 => \axi_s01_araddr_reg_n_0_[4]\,
      I1 => \axi_s01_araddr_reg_n_0_[2]\,
      I2 => slv_reg0(9),
      I3 => \axi_s01_araddr_reg_n_0_[3]\,
      I4 => slv_reg2_low(9),
      I5 => \slv_reg3_reg_n_0_[9]\,
      O => \axi_s01_rdata[9]_i_2_n_0\
    );
\axi_s01_rdata_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \axi_s01_rdata[31]_i_1_n_0\,
      D => \axi_s01_rdata[0]_i_1_n_0\,
      Q => \axi_s01_rdata_reg[31]_0\(0),
      R => SR(0)
    );
\axi_s01_rdata_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \axi_s01_rdata[31]_i_1_n_0\,
      D => \axi_s01_rdata[10]_i_1_n_0\,
      Q => \axi_s01_rdata_reg[31]_0\(10),
      R => SR(0)
    );
\axi_s01_rdata_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \axi_s01_rdata[31]_i_1_n_0\,
      D => \axi_s01_rdata[11]_i_1_n_0\,
      Q => \axi_s01_rdata_reg[31]_0\(11),
      R => SR(0)
    );
\axi_s01_rdata_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \axi_s01_rdata[31]_i_1_n_0\,
      D => \axi_s01_rdata[12]_i_1_n_0\,
      Q => \axi_s01_rdata_reg[31]_0\(12),
      R => SR(0)
    );
\axi_s01_rdata_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \axi_s01_rdata[31]_i_1_n_0\,
      D => \axi_s01_rdata[13]_i_1_n_0\,
      Q => \axi_s01_rdata_reg[31]_0\(13),
      R => SR(0)
    );
\axi_s01_rdata_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \axi_s01_rdata[31]_i_1_n_0\,
      D => \axi_s01_rdata[14]_i_1_n_0\,
      Q => \axi_s01_rdata_reg[31]_0\(14),
      R => SR(0)
    );
\axi_s01_rdata_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \axi_s01_rdata[31]_i_1_n_0\,
      D => \axi_s01_rdata[15]_i_1_n_0\,
      Q => \axi_s01_rdata_reg[31]_0\(15),
      R => SR(0)
    );
\axi_s01_rdata_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \axi_s01_rdata[31]_i_1_n_0\,
      D => \axi_s01_rdata[16]_i_1_n_0\,
      Q => \axi_s01_rdata_reg[31]_0\(16),
      R => SR(0)
    );
\axi_s01_rdata_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \axi_s01_rdata[31]_i_1_n_0\,
      D => \axi_s01_rdata[17]_i_1_n_0\,
      Q => \axi_s01_rdata_reg[31]_0\(17),
      R => SR(0)
    );
\axi_s01_rdata_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \axi_s01_rdata[31]_i_1_n_0\,
      D => \axi_s01_rdata[18]_i_1_n_0\,
      Q => \axi_s01_rdata_reg[31]_0\(18),
      R => SR(0)
    );
\axi_s01_rdata_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \axi_s01_rdata[31]_i_1_n_0\,
      D => \axi_s01_rdata[19]_i_1_n_0\,
      Q => \axi_s01_rdata_reg[31]_0\(19),
      R => SR(0)
    );
\axi_s01_rdata_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \axi_s01_rdata[31]_i_1_n_0\,
      D => \axi_s01_rdata[1]_i_1_n_0\,
      Q => \axi_s01_rdata_reg[31]_0\(1),
      R => SR(0)
    );
\axi_s01_rdata_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \axi_s01_rdata[31]_i_1_n_0\,
      D => \axi_s01_rdata[20]_i_1_n_0\,
      Q => \axi_s01_rdata_reg[31]_0\(20),
      R => SR(0)
    );
\axi_s01_rdata_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \axi_s01_rdata[31]_i_1_n_0\,
      D => \axi_s01_rdata[21]_i_1_n_0\,
      Q => \axi_s01_rdata_reg[31]_0\(21),
      R => SR(0)
    );
\axi_s01_rdata_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \axi_s01_rdata[31]_i_1_n_0\,
      D => \axi_s01_rdata[22]_i_1_n_0\,
      Q => \axi_s01_rdata_reg[31]_0\(22),
      R => SR(0)
    );
\axi_s01_rdata_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \axi_s01_rdata[31]_i_1_n_0\,
      D => \axi_s01_rdata[23]_i_1_n_0\,
      Q => \axi_s01_rdata_reg[31]_0\(23),
      R => SR(0)
    );
\axi_s01_rdata_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \axi_s01_rdata[31]_i_1_n_0\,
      D => \axi_s01_rdata[24]_i_1_n_0\,
      Q => \axi_s01_rdata_reg[31]_0\(24),
      R => SR(0)
    );
\axi_s01_rdata_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \axi_s01_rdata[31]_i_1_n_0\,
      D => \axi_s01_rdata[25]_i_1_n_0\,
      Q => \axi_s01_rdata_reg[31]_0\(25),
      R => SR(0)
    );
\axi_s01_rdata_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \axi_s01_rdata[31]_i_1_n_0\,
      D => \axi_s01_rdata[26]_i_1_n_0\,
      Q => \axi_s01_rdata_reg[31]_0\(26),
      R => SR(0)
    );
\axi_s01_rdata_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \axi_s01_rdata[31]_i_1_n_0\,
      D => \axi_s01_rdata[27]_i_1_n_0\,
      Q => \axi_s01_rdata_reg[31]_0\(27),
      R => SR(0)
    );
\axi_s01_rdata_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \axi_s01_rdata[31]_i_1_n_0\,
      D => \axi_s01_rdata[28]_i_1_n_0\,
      Q => \axi_s01_rdata_reg[31]_0\(28),
      R => SR(0)
    );
\axi_s01_rdata_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \axi_s01_rdata[31]_i_1_n_0\,
      D => \axi_s01_rdata[29]_i_1_n_0\,
      Q => \axi_s01_rdata_reg[31]_0\(29),
      R => SR(0)
    );
\axi_s01_rdata_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \axi_s01_rdata[31]_i_1_n_0\,
      D => \axi_s01_rdata[2]_i_1_n_0\,
      Q => \axi_s01_rdata_reg[31]_0\(2),
      R => SR(0)
    );
\axi_s01_rdata_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \axi_s01_rdata[31]_i_1_n_0\,
      D => \axi_s01_rdata[30]_i_1_n_0\,
      Q => \axi_s01_rdata_reg[31]_0\(30),
      R => SR(0)
    );
\axi_s01_rdata_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \axi_s01_rdata[31]_i_1_n_0\,
      D => \axi_s01_rdata[31]_i_2_n_0\,
      Q => \axi_s01_rdata_reg[31]_0\(31),
      R => SR(0)
    );
\axi_s01_rdata_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \axi_s01_rdata[31]_i_1_n_0\,
      D => \axi_s01_rdata[3]_i_1_n_0\,
      Q => \axi_s01_rdata_reg[31]_0\(3),
      R => SR(0)
    );
\axi_s01_rdata_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \axi_s01_rdata[31]_i_1_n_0\,
      D => \axi_s01_rdata[4]_i_1_n_0\,
      Q => \axi_s01_rdata_reg[31]_0\(4),
      R => SR(0)
    );
\axi_s01_rdata_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \axi_s01_rdata[31]_i_1_n_0\,
      D => \axi_s01_rdata[5]_i_1_n_0\,
      Q => \axi_s01_rdata_reg[31]_0\(5),
      R => SR(0)
    );
\axi_s01_rdata_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \axi_s01_rdata[31]_i_1_n_0\,
      D => \axi_s01_rdata[6]_i_1_n_0\,
      Q => \axi_s01_rdata_reg[31]_0\(6),
      R => SR(0)
    );
\axi_s01_rdata_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \axi_s01_rdata[31]_i_1_n_0\,
      D => \axi_s01_rdata[7]_i_1_n_0\,
      Q => \axi_s01_rdata_reg[31]_0\(7),
      R => SR(0)
    );
\axi_s01_rdata_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \axi_s01_rdata[31]_i_1_n_0\,
      D => \axi_s01_rdata[8]_i_1_n_0\,
      Q => \axi_s01_rdata_reg[31]_0\(8),
      R => SR(0)
    );
\axi_s01_rdata_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \axi_s01_rdata[31]_i_1_n_0\,
      D => \axi_s01_rdata[9]_i_1_n_0\,
      Q => \axi_s01_rdata_reg[31]_0\(9),
      R => SR(0)
    );
axi_s01_rvalid_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"F2"
    )
        port map (
      I0 => \^axi_s01_rvalid_reg_0\,
      I1 => s00_axi_rready,
      I2 => \axi_s01_rdata[31]_i_1_n_0\,
      O => axi_s01_rvalid_i_1_n_0
    );
axi_s01_rvalid_reg: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => axi_s01_rvalid_i_1_n_0,
      Q => \^axi_s01_rvalid_reg_0\,
      R => SR(0)
    );
axi_s01_wready_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"20"
    )
        port map (
      I0 => axi_s01_wready_i_2_n_0,
      I1 => \^axi_s01_wready_reg_0\,
      I2 => aw_s01_en_reg_n_0,
      O => axi_s01_wready_i_1_n_0
    );
axi_s01_wready_i_2: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => s00_axi_wvalid,
      I1 => s00_axi_awvalid,
      I2 => s00_cq_wr_sel,
      O => axi_s01_wready_i_2_n_0
    );
axi_s01_wready_reg: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => axi_s01_wready_i_1_n_0,
      Q => \^axi_s01_wready_reg_0\,
      R => SR(0)
    );
\axi_wready_i_1__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00008000"
    )
        port map (
      I0 => s01_axi_awvalid,
      I1 => s01_axi_wvalid,
      I2 => s01_cq_wr_sel,
      I3 => aw_en_reg_n_0,
      I4 => \^axi_wready_reg_0\,
      O => \axi_wready_i_1__0_n_0\
    );
axi_wready_reg: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \axi_wready_i_1__0_n_0\,
      Q => \^axi_wready_reg_0\,
      R => SR(0)
    );
\irq_on_write_reg_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFF00000100"
    )
        port map (
      I0 => \axi_awaddr_reg_n_0_[3]\,
      I1 => \axi_awaddr_reg_n_0_[2]\,
      I2 => \axi_awaddr_reg_n_0_[4]\,
      I3 => irq_on_write_reg,
      I4 => \axi_awaddr_reg_n_0_[5]\,
      I5 => irq_on_write_reg_reg_n_0,
      O => \irq_on_write_reg_i_1__0_n_0\
    );
\irq_on_write_reg_i_2__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => s01_axi_wstrb(3),
      I1 => s01_axi_wstrb(1),
      I2 => s01_axi_wstrb(0),
      I3 => s01_axi_wstrb(2),
      O => irq_on_write_reg
    );
irq_on_write_reg_reg: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \irq_on_write_reg_i_1__0_n_0\,
      Q => irq_on_write_reg_reg_n_0,
      R => \irq_reg_write_i_1__0_n_0\
    );
\irq_reg_i_1__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"E2000000"
    )
        port map (
      I0 => irq_on_write_reg_reg_n_0,
      I1 => \slv_reg3_reg_n_0_[1]\,
      I2 => \slv_reg1_reg_n_0_[0]\,
      I3 => s00_axi_aresetn,
      I4 => \slv_reg3_reg_n_0_[0]\,
      O => \irq_reg_i_1__0_n_0\
    );
irq_reg_read_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAAAAA00020000"
    )
        port map (
      I0 => \axi_s01_rdata[31]_i_1_n_0\,
      I1 => \axi_s01_araddr_reg_n_0_[3]\,
      I2 => \axi_s01_araddr_reg_n_0_[5]\,
      I3 => \axi_s01_araddr_reg_n_0_[4]\,
      I4 => \axi_s01_araddr_reg_n_0_[2]\,
      I5 => irq_reg_read_reg_n_0,
      O => irq_reg_read_i_1_n_0
    );
irq_reg_read_reg: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => irq_reg_read_i_1_n_0,
      Q => irq_reg_read_reg_n_0,
      R => SR(0)
    );
irq_reg_reg: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \irq_reg_i_1__0_n_0\,
      Q => irq_cq,
      R => '0'
    );
\irq_reg_write_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BFFFFFFFFFFFFFFF"
    )
        port map (
      I0 => \^soft_reset_reg\(0),
      I1 => s01_axi_wvalid,
      I2 => s01_cq_wr_sel,
      I3 => \^axi_awready_reg_0\,
      I4 => \^axi_wready_reg_0\,
      I5 => s01_axi_awvalid,
      O => \irq_reg_write_i_1__0_n_0\
    );
irq_reg_write_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFB00000008"
    )
        port map (
      I0 => \slv_reg3[31]_i_3_n_0\,
      I1 => \axi_awaddr_reg_n_0_[2]\,
      I2 => \axi_awaddr_reg_n_0_[4]\,
      I3 => \axi_awaddr_reg_n_0_[5]\,
      I4 => \axi_awaddr_reg_n_0_[3]\,
      I5 => irq_reg_write_reg_n_0,
      O => irq_reg_write_i_2_n_0
    );
irq_reg_write_reg: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => irq_reg_write_i_2_n_0,
      Q => irq_reg_write_reg_n_0,
      R => \irq_reg_write_i_1__0_n_0\
    );
\slv_reg0[15]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000020"
    )
        port map (
      I0 => \slv_reg3[31]_i_3_n_0\,
      I1 => \axi_awaddr_reg_n_0_[5]\,
      I2 => s01_axi_wstrb(1),
      I3 => \axi_awaddr_reg_n_0_[4]\,
      I4 => \axi_awaddr_reg_n_0_[2]\,
      I5 => \axi_awaddr_reg_n_0_[3]\,
      O => \slv_reg0[15]_i_1__0_n_0\
    );
\slv_reg0[23]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000020"
    )
        port map (
      I0 => \slv_reg3[31]_i_3_n_0\,
      I1 => \axi_awaddr_reg_n_0_[5]\,
      I2 => s01_axi_wstrb(2),
      I3 => \axi_awaddr_reg_n_0_[4]\,
      I4 => \axi_awaddr_reg_n_0_[2]\,
      I5 => \axi_awaddr_reg_n_0_[3]\,
      O => \slv_reg0[23]_i_1__0_n_0\
    );
\slv_reg0[31]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000020"
    )
        port map (
      I0 => \slv_reg3[31]_i_3_n_0\,
      I1 => \axi_awaddr_reg_n_0_[5]\,
      I2 => s01_axi_wstrb(3),
      I3 => \axi_awaddr_reg_n_0_[4]\,
      I4 => \axi_awaddr_reg_n_0_[2]\,
      I5 => \axi_awaddr_reg_n_0_[3]\,
      O => \slv_reg0[31]_i_1__0_n_0\
    );
\slv_reg0[7]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000020"
    )
        port map (
      I0 => \slv_reg3[31]_i_3_n_0\,
      I1 => \axi_awaddr_reg_n_0_[5]\,
      I2 => s01_axi_wstrb(0),
      I3 => \axi_awaddr_reg_n_0_[4]\,
      I4 => \axi_awaddr_reg_n_0_[2]\,
      I5 => \axi_awaddr_reg_n_0_[3]\,
      O => \slv_reg0[7]_i_1__0_n_0\
    );
\slv_reg0_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg0[7]_i_1__0_n_0\,
      D => s01_axi_wdata(0),
      Q => slv_reg0(0),
      R => \^soft_reset_reg\(0)
    );
\slv_reg0_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg0[15]_i_1__0_n_0\,
      D => s01_axi_wdata(10),
      Q => slv_reg0(10),
      R => \^soft_reset_reg\(0)
    );
\slv_reg0_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg0[15]_i_1__0_n_0\,
      D => s01_axi_wdata(11),
      Q => slv_reg0(11),
      R => \^soft_reset_reg\(0)
    );
\slv_reg0_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg0[15]_i_1__0_n_0\,
      D => s01_axi_wdata(12),
      Q => slv_reg0(12),
      R => \^soft_reset_reg\(0)
    );
\slv_reg0_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg0[15]_i_1__0_n_0\,
      D => s01_axi_wdata(13),
      Q => slv_reg0(13),
      R => \^soft_reset_reg\(0)
    );
\slv_reg0_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg0[15]_i_1__0_n_0\,
      D => s01_axi_wdata(14),
      Q => slv_reg0(14),
      R => \^soft_reset_reg\(0)
    );
\slv_reg0_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg0[15]_i_1__0_n_0\,
      D => s01_axi_wdata(15),
      Q => slv_reg0(15),
      R => \^soft_reset_reg\(0)
    );
\slv_reg0_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg0[23]_i_1__0_n_0\,
      D => s01_axi_wdata(16),
      Q => slv_reg0(16),
      R => \^soft_reset_reg\(0)
    );
\slv_reg0_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg0[23]_i_1__0_n_0\,
      D => s01_axi_wdata(17),
      Q => slv_reg0(17),
      R => \^soft_reset_reg\(0)
    );
\slv_reg0_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg0[23]_i_1__0_n_0\,
      D => s01_axi_wdata(18),
      Q => slv_reg0(18),
      R => \^soft_reset_reg\(0)
    );
\slv_reg0_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg0[23]_i_1__0_n_0\,
      D => s01_axi_wdata(19),
      Q => slv_reg0(19),
      R => \^soft_reset_reg\(0)
    );
\slv_reg0_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg0[7]_i_1__0_n_0\,
      D => s01_axi_wdata(1),
      Q => slv_reg0(1),
      R => \^soft_reset_reg\(0)
    );
\slv_reg0_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg0[23]_i_1__0_n_0\,
      D => s01_axi_wdata(20),
      Q => slv_reg0(20),
      R => \^soft_reset_reg\(0)
    );
\slv_reg0_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg0[23]_i_1__0_n_0\,
      D => s01_axi_wdata(21),
      Q => slv_reg0(21),
      R => \^soft_reset_reg\(0)
    );
\slv_reg0_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg0[23]_i_1__0_n_0\,
      D => s01_axi_wdata(22),
      Q => slv_reg0(22),
      R => \^soft_reset_reg\(0)
    );
\slv_reg0_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg0[23]_i_1__0_n_0\,
      D => s01_axi_wdata(23),
      Q => slv_reg0(23),
      R => \^soft_reset_reg\(0)
    );
\slv_reg0_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg0[31]_i_1__0_n_0\,
      D => s01_axi_wdata(24),
      Q => slv_reg0(24),
      R => \^soft_reset_reg\(0)
    );
\slv_reg0_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg0[31]_i_1__0_n_0\,
      D => s01_axi_wdata(25),
      Q => slv_reg0(25),
      R => \^soft_reset_reg\(0)
    );
\slv_reg0_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg0[31]_i_1__0_n_0\,
      D => s01_axi_wdata(26),
      Q => slv_reg0(26),
      R => \^soft_reset_reg\(0)
    );
\slv_reg0_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg0[31]_i_1__0_n_0\,
      D => s01_axi_wdata(27),
      Q => slv_reg0(27),
      R => \^soft_reset_reg\(0)
    );
\slv_reg0_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg0[31]_i_1__0_n_0\,
      D => s01_axi_wdata(28),
      Q => slv_reg0(28),
      R => \^soft_reset_reg\(0)
    );
\slv_reg0_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg0[31]_i_1__0_n_0\,
      D => s01_axi_wdata(29),
      Q => slv_reg0(29),
      R => \^soft_reset_reg\(0)
    );
\slv_reg0_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg0[7]_i_1__0_n_0\,
      D => s01_axi_wdata(2),
      Q => slv_reg0(2),
      R => \^soft_reset_reg\(0)
    );
\slv_reg0_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg0[31]_i_1__0_n_0\,
      D => s01_axi_wdata(30),
      Q => slv_reg0(30),
      R => \^soft_reset_reg\(0)
    );
\slv_reg0_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg0[31]_i_1__0_n_0\,
      D => s01_axi_wdata(31),
      Q => slv_reg0(31),
      R => \^soft_reset_reg\(0)
    );
\slv_reg0_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg0[7]_i_1__0_n_0\,
      D => s01_axi_wdata(3),
      Q => slv_reg0(3),
      R => \^soft_reset_reg\(0)
    );
\slv_reg0_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg0[7]_i_1__0_n_0\,
      D => s01_axi_wdata(4),
      Q => slv_reg0(4),
      R => \^soft_reset_reg\(0)
    );
\slv_reg0_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg0[7]_i_1__0_n_0\,
      D => s01_axi_wdata(5),
      Q => slv_reg0(5),
      R => \^soft_reset_reg\(0)
    );
\slv_reg0_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg0[7]_i_1__0_n_0\,
      D => s01_axi_wdata(6),
      Q => slv_reg0(6),
      R => \^soft_reset_reg\(0)
    );
\slv_reg0_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg0[7]_i_1__0_n_0\,
      D => s01_axi_wdata(7),
      Q => slv_reg0(7),
      R => \^soft_reset_reg\(0)
    );
\slv_reg0_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg0[15]_i_1__0_n_0\,
      D => s01_axi_wdata(8),
      Q => slv_reg0(8),
      R => \^soft_reset_reg\(0)
    );
\slv_reg0_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg0[15]_i_1__0_n_0\,
      D => s01_axi_wdata(9),
      Q => slv_reg0(9),
      R => \^soft_reset_reg\(0)
    );
\slv_reg1[0]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"F4"
    )
        port map (
      I0 => irq_reg_read_reg_n_0,
      I1 => \slv_reg1_reg_n_0_[0]\,
      I2 => irq_reg_write_reg_n_0,
      O => \slv_reg1[0]_i_1_n_0\
    );
\slv_reg1_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \slv_reg1[0]_i_1_n_0\,
      Q => \slv_reg1_reg_n_0_[0]\,
      R => \^soft_reset_reg\(0)
    );
\slv_reg2_high[15]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000002000"
    )
        port map (
      I0 => \slv_reg3[31]_i_3_n_0\,
      I1 => \axi_awaddr_reg_n_0_[5]\,
      I2 => s01_axi_wstrb(1),
      I3 => \axi_awaddr_reg_n_0_[4]\,
      I4 => \axi_awaddr_reg_n_0_[2]\,
      I5 => \axi_awaddr_reg_n_0_[3]\,
      O => \slv_reg2_high[15]_i_1__0_n_0\
    );
\slv_reg2_high[23]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000002000"
    )
        port map (
      I0 => \slv_reg3[31]_i_3_n_0\,
      I1 => \axi_awaddr_reg_n_0_[5]\,
      I2 => s01_axi_wstrb(2),
      I3 => \axi_awaddr_reg_n_0_[4]\,
      I4 => \axi_awaddr_reg_n_0_[2]\,
      I5 => \axi_awaddr_reg_n_0_[3]\,
      O => \slv_reg2_high[23]_i_1__0_n_0\
    );
\slv_reg2_high[31]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000002000"
    )
        port map (
      I0 => \slv_reg3[31]_i_3_n_0\,
      I1 => \axi_awaddr_reg_n_0_[5]\,
      I2 => s01_axi_wstrb(3),
      I3 => \axi_awaddr_reg_n_0_[4]\,
      I4 => \axi_awaddr_reg_n_0_[2]\,
      I5 => \axi_awaddr_reg_n_0_[3]\,
      O => \slv_reg2_high[31]_i_1__0_n_0\
    );
\slv_reg2_high[7]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000002000"
    )
        port map (
      I0 => \slv_reg3[31]_i_3_n_0\,
      I1 => \axi_awaddr_reg_n_0_[5]\,
      I2 => s01_axi_wstrb(0),
      I3 => \axi_awaddr_reg_n_0_[4]\,
      I4 => \axi_awaddr_reg_n_0_[2]\,
      I5 => \axi_awaddr_reg_n_0_[3]\,
      O => \slv_reg2_high[7]_i_1__0_n_0\
    );
\slv_reg2_high_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2_high[7]_i_1__0_n_0\,
      D => s01_axi_wdata(0),
      Q => slv_reg2_high(0),
      R => \^soft_reset_reg\(0)
    );
\slv_reg2_high_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2_high[15]_i_1__0_n_0\,
      D => s01_axi_wdata(10),
      Q => slv_reg2_high(10),
      R => \^soft_reset_reg\(0)
    );
\slv_reg2_high_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2_high[15]_i_1__0_n_0\,
      D => s01_axi_wdata(11),
      Q => slv_reg2_high(11),
      R => \^soft_reset_reg\(0)
    );
\slv_reg2_high_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2_high[15]_i_1__0_n_0\,
      D => s01_axi_wdata(12),
      Q => slv_reg2_high(12),
      R => \^soft_reset_reg\(0)
    );
\slv_reg2_high_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2_high[15]_i_1__0_n_0\,
      D => s01_axi_wdata(13),
      Q => slv_reg2_high(13),
      R => \^soft_reset_reg\(0)
    );
\slv_reg2_high_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2_high[15]_i_1__0_n_0\,
      D => s01_axi_wdata(14),
      Q => slv_reg2_high(14),
      R => \^soft_reset_reg\(0)
    );
\slv_reg2_high_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2_high[15]_i_1__0_n_0\,
      D => s01_axi_wdata(15),
      Q => slv_reg2_high(15),
      R => \^soft_reset_reg\(0)
    );
\slv_reg2_high_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2_high[23]_i_1__0_n_0\,
      D => s01_axi_wdata(16),
      Q => slv_reg2_high(16),
      R => \^soft_reset_reg\(0)
    );
\slv_reg2_high_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2_high[23]_i_1__0_n_0\,
      D => s01_axi_wdata(17),
      Q => slv_reg2_high(17),
      R => \^soft_reset_reg\(0)
    );
\slv_reg2_high_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2_high[23]_i_1__0_n_0\,
      D => s01_axi_wdata(18),
      Q => slv_reg2_high(18),
      R => \^soft_reset_reg\(0)
    );
\slv_reg2_high_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2_high[23]_i_1__0_n_0\,
      D => s01_axi_wdata(19),
      Q => slv_reg2_high(19),
      R => \^soft_reset_reg\(0)
    );
\slv_reg2_high_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2_high[7]_i_1__0_n_0\,
      D => s01_axi_wdata(1),
      Q => slv_reg2_high(1),
      R => \^soft_reset_reg\(0)
    );
\slv_reg2_high_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2_high[23]_i_1__0_n_0\,
      D => s01_axi_wdata(20),
      Q => slv_reg2_high(20),
      R => \^soft_reset_reg\(0)
    );
\slv_reg2_high_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2_high[23]_i_1__0_n_0\,
      D => s01_axi_wdata(21),
      Q => slv_reg2_high(21),
      R => \^soft_reset_reg\(0)
    );
\slv_reg2_high_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2_high[23]_i_1__0_n_0\,
      D => s01_axi_wdata(22),
      Q => slv_reg2_high(22),
      R => \^soft_reset_reg\(0)
    );
\slv_reg2_high_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2_high[23]_i_1__0_n_0\,
      D => s01_axi_wdata(23),
      Q => slv_reg2_high(23),
      R => \^soft_reset_reg\(0)
    );
\slv_reg2_high_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2_high[31]_i_1__0_n_0\,
      D => s01_axi_wdata(24),
      Q => slv_reg2_high(24),
      R => \^soft_reset_reg\(0)
    );
\slv_reg2_high_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2_high[31]_i_1__0_n_0\,
      D => s01_axi_wdata(25),
      Q => slv_reg2_high(25),
      R => \^soft_reset_reg\(0)
    );
\slv_reg2_high_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2_high[31]_i_1__0_n_0\,
      D => s01_axi_wdata(26),
      Q => slv_reg2_high(26),
      R => \^soft_reset_reg\(0)
    );
\slv_reg2_high_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2_high[31]_i_1__0_n_0\,
      D => s01_axi_wdata(27),
      Q => slv_reg2_high(27),
      R => \^soft_reset_reg\(0)
    );
\slv_reg2_high_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2_high[31]_i_1__0_n_0\,
      D => s01_axi_wdata(28),
      Q => slv_reg2_high(28),
      R => \^soft_reset_reg\(0)
    );
\slv_reg2_high_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2_high[31]_i_1__0_n_0\,
      D => s01_axi_wdata(29),
      Q => slv_reg2_high(29),
      R => \^soft_reset_reg\(0)
    );
\slv_reg2_high_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2_high[7]_i_1__0_n_0\,
      D => s01_axi_wdata(2),
      Q => slv_reg2_high(2),
      R => \^soft_reset_reg\(0)
    );
\slv_reg2_high_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2_high[31]_i_1__0_n_0\,
      D => s01_axi_wdata(30),
      Q => slv_reg2_high(30),
      R => \^soft_reset_reg\(0)
    );
\slv_reg2_high_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2_high[31]_i_1__0_n_0\,
      D => s01_axi_wdata(31),
      Q => slv_reg2_high(31),
      R => \^soft_reset_reg\(0)
    );
\slv_reg2_high_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2_high[7]_i_1__0_n_0\,
      D => s01_axi_wdata(3),
      Q => slv_reg2_high(3),
      R => \^soft_reset_reg\(0)
    );
\slv_reg2_high_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2_high[7]_i_1__0_n_0\,
      D => s01_axi_wdata(4),
      Q => slv_reg2_high(4),
      R => \^soft_reset_reg\(0)
    );
\slv_reg2_high_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2_high[7]_i_1__0_n_0\,
      D => s01_axi_wdata(5),
      Q => slv_reg2_high(5),
      R => \^soft_reset_reg\(0)
    );
\slv_reg2_high_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2_high[7]_i_1__0_n_0\,
      D => s01_axi_wdata(6),
      Q => slv_reg2_high(6),
      R => \^soft_reset_reg\(0)
    );
\slv_reg2_high_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2_high[7]_i_1__0_n_0\,
      D => s01_axi_wdata(7),
      Q => slv_reg2_high(7),
      R => \^soft_reset_reg\(0)
    );
\slv_reg2_high_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2_high[15]_i_1__0_n_0\,
      D => s01_axi_wdata(8),
      Q => slv_reg2_high(8),
      R => \^soft_reset_reg\(0)
    );
\slv_reg2_high_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2_high[15]_i_1__0_n_0\,
      D => s01_axi_wdata(9),
      Q => slv_reg2_high(9),
      R => \^soft_reset_reg\(0)
    );
\slv_reg2_low[15]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000002000"
    )
        port map (
      I0 => \slv_reg3[31]_i_3_n_0\,
      I1 => \axi_awaddr_reg_n_0_[5]\,
      I2 => \axi_awaddr_reg_n_0_[3]\,
      I3 => s01_axi_wstrb(1),
      I4 => \axi_awaddr_reg_n_0_[2]\,
      I5 => \axi_awaddr_reg_n_0_[4]\,
      O => \slv_reg2_low[15]_i_1__0_n_0\
    );
\slv_reg2_low[23]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000002000"
    )
        port map (
      I0 => \slv_reg3[31]_i_3_n_0\,
      I1 => \axi_awaddr_reg_n_0_[5]\,
      I2 => \axi_awaddr_reg_n_0_[3]\,
      I3 => s01_axi_wstrb(2),
      I4 => \axi_awaddr_reg_n_0_[2]\,
      I5 => \axi_awaddr_reg_n_0_[4]\,
      O => \slv_reg2_low[23]_i_1__0_n_0\
    );
\slv_reg2_low[31]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000002000"
    )
        port map (
      I0 => \slv_reg3[31]_i_3_n_0\,
      I1 => \axi_awaddr_reg_n_0_[5]\,
      I2 => \axi_awaddr_reg_n_0_[3]\,
      I3 => s01_axi_wstrb(3),
      I4 => \axi_awaddr_reg_n_0_[2]\,
      I5 => \axi_awaddr_reg_n_0_[4]\,
      O => \slv_reg2_low[31]_i_1__0_n_0\
    );
\slv_reg2_low[7]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000002000"
    )
        port map (
      I0 => \slv_reg3[31]_i_3_n_0\,
      I1 => \axi_awaddr_reg_n_0_[5]\,
      I2 => \axi_awaddr_reg_n_0_[3]\,
      I3 => s01_axi_wstrb(0),
      I4 => \axi_awaddr_reg_n_0_[2]\,
      I5 => \axi_awaddr_reg_n_0_[4]\,
      O => \slv_reg2_low[7]_i_1__0_n_0\
    );
\slv_reg2_low_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2_low[7]_i_1__0_n_0\,
      D => s01_axi_wdata(0),
      Q => slv_reg2_low(0),
      R => \^soft_reset_reg\(0)
    );
\slv_reg2_low_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2_low[15]_i_1__0_n_0\,
      D => s01_axi_wdata(10),
      Q => slv_reg2_low(10),
      R => \^soft_reset_reg\(0)
    );
\slv_reg2_low_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2_low[15]_i_1__0_n_0\,
      D => s01_axi_wdata(11),
      Q => slv_reg2_low(11),
      R => \^soft_reset_reg\(0)
    );
\slv_reg2_low_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2_low[15]_i_1__0_n_0\,
      D => s01_axi_wdata(12),
      Q => slv_reg2_low(12),
      R => \^soft_reset_reg\(0)
    );
\slv_reg2_low_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2_low[15]_i_1__0_n_0\,
      D => s01_axi_wdata(13),
      Q => slv_reg2_low(13),
      R => \^soft_reset_reg\(0)
    );
\slv_reg2_low_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2_low[15]_i_1__0_n_0\,
      D => s01_axi_wdata(14),
      Q => slv_reg2_low(14),
      R => \^soft_reset_reg\(0)
    );
\slv_reg2_low_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2_low[15]_i_1__0_n_0\,
      D => s01_axi_wdata(15),
      Q => slv_reg2_low(15),
      R => \^soft_reset_reg\(0)
    );
\slv_reg2_low_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2_low[23]_i_1__0_n_0\,
      D => s01_axi_wdata(16),
      Q => slv_reg2_low(16),
      R => \^soft_reset_reg\(0)
    );
\slv_reg2_low_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2_low[23]_i_1__0_n_0\,
      D => s01_axi_wdata(17),
      Q => slv_reg2_low(17),
      R => \^soft_reset_reg\(0)
    );
\slv_reg2_low_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2_low[23]_i_1__0_n_0\,
      D => s01_axi_wdata(18),
      Q => slv_reg2_low(18),
      R => \^soft_reset_reg\(0)
    );
\slv_reg2_low_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2_low[23]_i_1__0_n_0\,
      D => s01_axi_wdata(19),
      Q => slv_reg2_low(19),
      R => \^soft_reset_reg\(0)
    );
\slv_reg2_low_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2_low[7]_i_1__0_n_0\,
      D => s01_axi_wdata(1),
      Q => slv_reg2_low(1),
      R => \^soft_reset_reg\(0)
    );
\slv_reg2_low_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2_low[23]_i_1__0_n_0\,
      D => s01_axi_wdata(20),
      Q => slv_reg2_low(20),
      R => \^soft_reset_reg\(0)
    );
\slv_reg2_low_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2_low[23]_i_1__0_n_0\,
      D => s01_axi_wdata(21),
      Q => slv_reg2_low(21),
      R => \^soft_reset_reg\(0)
    );
\slv_reg2_low_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2_low[23]_i_1__0_n_0\,
      D => s01_axi_wdata(22),
      Q => slv_reg2_low(22),
      R => \^soft_reset_reg\(0)
    );
\slv_reg2_low_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2_low[23]_i_1__0_n_0\,
      D => s01_axi_wdata(23),
      Q => slv_reg2_low(23),
      R => \^soft_reset_reg\(0)
    );
\slv_reg2_low_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2_low[31]_i_1__0_n_0\,
      D => s01_axi_wdata(24),
      Q => slv_reg2_low(24),
      R => \^soft_reset_reg\(0)
    );
\slv_reg2_low_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2_low[31]_i_1__0_n_0\,
      D => s01_axi_wdata(25),
      Q => slv_reg2_low(25),
      R => \^soft_reset_reg\(0)
    );
\slv_reg2_low_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2_low[31]_i_1__0_n_0\,
      D => s01_axi_wdata(26),
      Q => slv_reg2_low(26),
      R => \^soft_reset_reg\(0)
    );
\slv_reg2_low_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2_low[31]_i_1__0_n_0\,
      D => s01_axi_wdata(27),
      Q => slv_reg2_low(27),
      R => \^soft_reset_reg\(0)
    );
\slv_reg2_low_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2_low[31]_i_1__0_n_0\,
      D => s01_axi_wdata(28),
      Q => slv_reg2_low(28),
      R => \^soft_reset_reg\(0)
    );
\slv_reg2_low_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2_low[31]_i_1__0_n_0\,
      D => s01_axi_wdata(29),
      Q => slv_reg2_low(29),
      R => \^soft_reset_reg\(0)
    );
\slv_reg2_low_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2_low[7]_i_1__0_n_0\,
      D => s01_axi_wdata(2),
      Q => slv_reg2_low(2),
      R => \^soft_reset_reg\(0)
    );
\slv_reg2_low_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2_low[31]_i_1__0_n_0\,
      D => s01_axi_wdata(30),
      Q => slv_reg2_low(30),
      R => \^soft_reset_reg\(0)
    );
\slv_reg2_low_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2_low[31]_i_1__0_n_0\,
      D => s01_axi_wdata(31),
      Q => slv_reg2_low(31),
      R => \^soft_reset_reg\(0)
    );
\slv_reg2_low_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2_low[7]_i_1__0_n_0\,
      D => s01_axi_wdata(3),
      Q => slv_reg2_low(3),
      R => \^soft_reset_reg\(0)
    );
\slv_reg2_low_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2_low[7]_i_1__0_n_0\,
      D => s01_axi_wdata(4),
      Q => slv_reg2_low(4),
      R => \^soft_reset_reg\(0)
    );
\slv_reg2_low_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2_low[7]_i_1__0_n_0\,
      D => s01_axi_wdata(5),
      Q => slv_reg2_low(5),
      R => \^soft_reset_reg\(0)
    );
\slv_reg2_low_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2_low[7]_i_1__0_n_0\,
      D => s01_axi_wdata(6),
      Q => slv_reg2_low(6),
      R => \^soft_reset_reg\(0)
    );
\slv_reg2_low_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2_low[7]_i_1__0_n_0\,
      D => s01_axi_wdata(7),
      Q => slv_reg2_low(7),
      R => \^soft_reset_reg\(0)
    );
\slv_reg2_low_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2_low[15]_i_1__0_n_0\,
      D => s01_axi_wdata(8),
      Q => slv_reg2_low(8),
      R => \^soft_reset_reg\(0)
    );
\slv_reg2_low_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2_low[15]_i_1__0_n_0\,
      D => s01_axi_wdata(9),
      Q => slv_reg2_low(9),
      R => \^soft_reset_reg\(0)
    );
\slv_reg3[15]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000020000000"
    )
        port map (
      I0 => \slv_reg3[31]_i_3_n_0\,
      I1 => \axi_awaddr_reg_n_0_[5]\,
      I2 => s01_axi_wstrb(1),
      I3 => \axi_awaddr_reg_n_0_[2]\,
      I4 => \axi_awaddr_reg_n_0_[3]\,
      I5 => \axi_awaddr_reg_n_0_[4]\,
      O => \slv_reg3[15]_i_1__0_n_0\
    );
\slv_reg3[23]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000020000000"
    )
        port map (
      I0 => \slv_reg3[31]_i_3_n_0\,
      I1 => \axi_awaddr_reg_n_0_[5]\,
      I2 => s01_axi_wstrb(2),
      I3 => \axi_awaddr_reg_n_0_[2]\,
      I4 => \axi_awaddr_reg_n_0_[3]\,
      I5 => \axi_awaddr_reg_n_0_[4]\,
      O => \slv_reg3[23]_i_1__0_n_0\
    );
\slv_reg3[31]_i_1__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => soft_reset,
      I1 => s00_axi_aresetn,
      O => \^soft_reset_reg\(0)
    );
\slv_reg3[31]_i_2__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000020000000"
    )
        port map (
      I0 => \slv_reg3[31]_i_3_n_0\,
      I1 => \axi_awaddr_reg_n_0_[5]\,
      I2 => s01_axi_wstrb(3),
      I3 => \axi_awaddr_reg_n_0_[2]\,
      I4 => \axi_awaddr_reg_n_0_[3]\,
      I5 => \axi_awaddr_reg_n_0_[4]\,
      O => \slv_reg3[31]_i_2__0_n_0\
    );
\slv_reg3[31]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"80000000"
    )
        port map (
      I0 => s01_axi_awvalid,
      I1 => \^axi_wready_reg_0\,
      I2 => \^axi_awready_reg_0\,
      I3 => s01_cq_wr_sel,
      I4 => s01_axi_wvalid,
      O => \slv_reg3[31]_i_3_n_0\
    );
\slv_reg3[7]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000020000000"
    )
        port map (
      I0 => \slv_reg3[31]_i_3_n_0\,
      I1 => \axi_awaddr_reg_n_0_[5]\,
      I2 => s01_axi_wstrb(0),
      I3 => \axi_awaddr_reg_n_0_[2]\,
      I4 => \axi_awaddr_reg_n_0_[3]\,
      I5 => \axi_awaddr_reg_n_0_[4]\,
      O => \slv_reg3[7]_i_1__0_n_0\
    );
\slv_reg3_reg[0]\: unisim.vcomponents.FDSE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[7]_i_1__0_n_0\,
      D => s01_axi_wdata(0),
      Q => \slv_reg3_reg_n_0_[0]\,
      S => \^soft_reset_reg\(0)
    );
\slv_reg3_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[15]_i_1__0_n_0\,
      D => s01_axi_wdata(10),
      Q => \slv_reg3_reg_n_0_[10]\,
      R => \^soft_reset_reg\(0)
    );
\slv_reg3_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[15]_i_1__0_n_0\,
      D => s01_axi_wdata(11),
      Q => \slv_reg3_reg_n_0_[11]\,
      R => \^soft_reset_reg\(0)
    );
\slv_reg3_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[15]_i_1__0_n_0\,
      D => s01_axi_wdata(12),
      Q => \slv_reg3_reg_n_0_[12]\,
      R => \^soft_reset_reg\(0)
    );
\slv_reg3_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[15]_i_1__0_n_0\,
      D => s01_axi_wdata(13),
      Q => \slv_reg3_reg_n_0_[13]\,
      R => \^soft_reset_reg\(0)
    );
\slv_reg3_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[15]_i_1__0_n_0\,
      D => s01_axi_wdata(14),
      Q => \slv_reg3_reg_n_0_[14]\,
      R => \^soft_reset_reg\(0)
    );
\slv_reg3_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[15]_i_1__0_n_0\,
      D => s01_axi_wdata(15),
      Q => \slv_reg3_reg_n_0_[15]\,
      R => \^soft_reset_reg\(0)
    );
\slv_reg3_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[23]_i_1__0_n_0\,
      D => s01_axi_wdata(16),
      Q => \slv_reg3_reg_n_0_[16]\,
      R => \^soft_reset_reg\(0)
    );
\slv_reg3_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[23]_i_1__0_n_0\,
      D => s01_axi_wdata(17),
      Q => \slv_reg3_reg_n_0_[17]\,
      R => \^soft_reset_reg\(0)
    );
\slv_reg3_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[23]_i_1__0_n_0\,
      D => s01_axi_wdata(18),
      Q => \slv_reg3_reg_n_0_[18]\,
      R => \^soft_reset_reg\(0)
    );
\slv_reg3_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[23]_i_1__0_n_0\,
      D => s01_axi_wdata(19),
      Q => \slv_reg3_reg_n_0_[19]\,
      R => \^soft_reset_reg\(0)
    );
\slv_reg3_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[7]_i_1__0_n_0\,
      D => s01_axi_wdata(1),
      Q => \slv_reg3_reg_n_0_[1]\,
      R => \^soft_reset_reg\(0)
    );
\slv_reg3_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[23]_i_1__0_n_0\,
      D => s01_axi_wdata(20),
      Q => \slv_reg3_reg_n_0_[20]\,
      R => \^soft_reset_reg\(0)
    );
\slv_reg3_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[23]_i_1__0_n_0\,
      D => s01_axi_wdata(21),
      Q => \slv_reg3_reg_n_0_[21]\,
      R => \^soft_reset_reg\(0)
    );
\slv_reg3_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[23]_i_1__0_n_0\,
      D => s01_axi_wdata(22),
      Q => \slv_reg3_reg_n_0_[22]\,
      R => \^soft_reset_reg\(0)
    );
\slv_reg3_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[23]_i_1__0_n_0\,
      D => s01_axi_wdata(23),
      Q => \slv_reg3_reg_n_0_[23]\,
      R => \^soft_reset_reg\(0)
    );
\slv_reg3_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[31]_i_2__0_n_0\,
      D => s01_axi_wdata(24),
      Q => \slv_reg3_reg_n_0_[24]\,
      R => \^soft_reset_reg\(0)
    );
\slv_reg3_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[31]_i_2__0_n_0\,
      D => s01_axi_wdata(25),
      Q => \slv_reg3_reg_n_0_[25]\,
      R => \^soft_reset_reg\(0)
    );
\slv_reg3_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[31]_i_2__0_n_0\,
      D => s01_axi_wdata(26),
      Q => \slv_reg3_reg_n_0_[26]\,
      R => \^soft_reset_reg\(0)
    );
\slv_reg3_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[31]_i_2__0_n_0\,
      D => s01_axi_wdata(27),
      Q => \slv_reg3_reg_n_0_[27]\,
      R => \^soft_reset_reg\(0)
    );
\slv_reg3_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[31]_i_2__0_n_0\,
      D => s01_axi_wdata(28),
      Q => \slv_reg3_reg_n_0_[28]\,
      R => \^soft_reset_reg\(0)
    );
\slv_reg3_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[31]_i_2__0_n_0\,
      D => s01_axi_wdata(29),
      Q => \slv_reg3_reg_n_0_[29]\,
      R => \^soft_reset_reg\(0)
    );
\slv_reg3_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[7]_i_1__0_n_0\,
      D => s01_axi_wdata(2),
      Q => \slv_reg3_reg_n_0_[2]\,
      R => \^soft_reset_reg\(0)
    );
\slv_reg3_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[31]_i_2__0_n_0\,
      D => s01_axi_wdata(30),
      Q => \slv_reg3_reg_n_0_[30]\,
      R => \^soft_reset_reg\(0)
    );
\slv_reg3_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[31]_i_2__0_n_0\,
      D => s01_axi_wdata(31),
      Q => \^q\(0),
      R => \^soft_reset_reg\(0)
    );
\slv_reg3_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[7]_i_1__0_n_0\,
      D => s01_axi_wdata(3),
      Q => \slv_reg3_reg_n_0_[3]\,
      R => \^soft_reset_reg\(0)
    );
\slv_reg3_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[7]_i_1__0_n_0\,
      D => s01_axi_wdata(4),
      Q => \slv_reg3_reg_n_0_[4]\,
      R => \^soft_reset_reg\(0)
    );
\slv_reg3_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[7]_i_1__0_n_0\,
      D => s01_axi_wdata(5),
      Q => \slv_reg3_reg_n_0_[5]\,
      R => \^soft_reset_reg\(0)
    );
\slv_reg3_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[7]_i_1__0_n_0\,
      D => s01_axi_wdata(6),
      Q => \slv_reg3_reg_n_0_[6]\,
      R => \^soft_reset_reg\(0)
    );
\slv_reg3_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[7]_i_1__0_n_0\,
      D => s01_axi_wdata(7),
      Q => \slv_reg3_reg_n_0_[7]\,
      R => \^soft_reset_reg\(0)
    );
\slv_reg3_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[15]_i_1__0_n_0\,
      D => s01_axi_wdata(8),
      Q => \slv_reg3_reg_n_0_[8]\,
      R => \^soft_reset_reg\(0)
    );
\slv_reg3_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[15]_i_1__0_n_0\,
      D => s01_axi_wdata(9),
      Q => \slv_reg3_reg_n_0_[9]\,
      R => \^soft_reset_reg\(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_cmd_queue_v1_0_0_S00_AXI_0 is
  port (
    SR : out STD_LOGIC_VECTOR ( 0 to 0 );
    irq_sq : out STD_LOGIC;
    \slv_reg3_reg[31]_0\ : out STD_LOGIC;
    s00_axi_awready : out STD_LOGIC;
    s00_axi_wready : out STD_LOGIC;
    s00_axi_bvalid : out STD_LOGIC;
    s00_axi_arready : out STD_LOGIC;
    s00_axi_rvalid : out STD_LOGIC;
    s01_axi_awready : out STD_LOGIC;
    s01_axi_wready : out STD_LOGIC;
    s01_axi_bvalid : out STD_LOGIC;
    s01_axi_arready : out STD_LOGIC;
    s01_axi_rvalid : out STD_LOGIC;
    s00_axi_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s01_axi_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s00_axi_aclk : in STD_LOGIC;
    \slv_reg3_reg[0]_0\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    s00_axi_awvalid : in STD_LOGIC;
    s00_axi_wvalid : in STD_LOGIC;
    s00_sq_wr_sel : in STD_LOGIC;
    s00_axi_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s00_axi_arvalid : in STD_LOGIC;
    s00_sq_rd_sel : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 0 to 0 );
    s01_axi_arvalid : in STD_LOGIC;
    s01_sq_rd_sel : in STD_LOGIC;
    s00_axi_aresetn : in STD_LOGIC;
    s00_axi_awready_0 : in STD_LOGIC;
    s00_axi_wready_0 : in STD_LOGIC;
    s00_axi_bvalid_0 : in STD_LOGIC;
    s00_axi_arready_0 : in STD_LOGIC;
    s00_axi_rvalid_0 : in STD_LOGIC;
    s01_axi_wvalid : in STD_LOGIC;
    s01_axi_awvalid : in STD_LOGIC;
    s01_sq_wr_sel : in STD_LOGIC;
    s01_axi_awready_0 : in STD_LOGIC;
    s01_axi_wready_0 : in STD_LOGIC;
    s01_axi_bvalid_0 : in STD_LOGIC;
    s01_axi_arready_0 : in STD_LOGIC;
    s01_axi_rvalid_0 : in STD_LOGIC;
    \s00_axi_rdata[31]\ : in STD_LOGIC_VECTOR ( 31 downto 0 );
    \s01_axi_rdata[31]\ : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s00_axi_bready : in STD_LOGIC;
    s01_axi_rready : in STD_LOGIC;
    s01_axi_bready : in STD_LOGIC;
    s00_axi_rready : in STD_LOGIC;
    s00_axi_awaddr : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s00_axi_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s01_axi_araddr : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s00_axi_araddr : in STD_LOGIC_VECTOR ( 3 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_cmd_queue_v1_0_0_S00_AXI_0 : entity is "cmd_queue_v1_0_0_S00_AXI";
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_cmd_queue_v1_0_0_S00_AXI_0;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_cmd_queue_v1_0_0_S00_AXI_0 is
  signal \^sr\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal aw_en_i_1_n_0 : STD_LOGIC;
  signal aw_en_reg_n_0 : STD_LOGIC;
  signal \aw_s01_en_i_1__0_n_0\ : STD_LOGIC;
  signal aw_s01_en_reg_n_0 : STD_LOGIC;
  signal \axi_araddr_reg_n_0_[5]\ : STD_LOGIC;
  signal axi_arready : STD_LOGIC;
  signal axi_arready0 : STD_LOGIC;
  signal axi_awaddr : STD_LOGIC_VECTOR ( 5 downto 2 );
  signal axi_awready : STD_LOGIC;
  signal axi_awready0 : STD_LOGIC;
  signal axi_bvalid : STD_LOGIC;
  signal axi_bvalid_i_1_n_0 : STD_LOGIC;
  signal axi_rdata : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \axi_rdata[0]_i_1_n_0\ : STD_LOGIC;
  signal \axi_rdata[0]_i_2_n_0\ : STD_LOGIC;
  signal \axi_rdata[10]_i_1_n_0\ : STD_LOGIC;
  signal \axi_rdata[10]_i_2_n_0\ : STD_LOGIC;
  signal \axi_rdata[11]_i_1_n_0\ : STD_LOGIC;
  signal \axi_rdata[11]_i_2_n_0\ : STD_LOGIC;
  signal \axi_rdata[12]_i_1_n_0\ : STD_LOGIC;
  signal \axi_rdata[12]_i_2_n_0\ : STD_LOGIC;
  signal \axi_rdata[13]_i_1_n_0\ : STD_LOGIC;
  signal \axi_rdata[13]_i_2_n_0\ : STD_LOGIC;
  signal \axi_rdata[14]_i_1_n_0\ : STD_LOGIC;
  signal \axi_rdata[14]_i_2_n_0\ : STD_LOGIC;
  signal \axi_rdata[15]_i_1_n_0\ : STD_LOGIC;
  signal \axi_rdata[15]_i_2_n_0\ : STD_LOGIC;
  signal \axi_rdata[16]_i_1_n_0\ : STD_LOGIC;
  signal \axi_rdata[16]_i_2_n_0\ : STD_LOGIC;
  signal \axi_rdata[17]_i_1_n_0\ : STD_LOGIC;
  signal \axi_rdata[17]_i_2_n_0\ : STD_LOGIC;
  signal \axi_rdata[18]_i_1_n_0\ : STD_LOGIC;
  signal \axi_rdata[18]_i_2_n_0\ : STD_LOGIC;
  signal \axi_rdata[19]_i_1_n_0\ : STD_LOGIC;
  signal \axi_rdata[19]_i_2_n_0\ : STD_LOGIC;
  signal \axi_rdata[1]_i_1_n_0\ : STD_LOGIC;
  signal \axi_rdata[1]_i_2_n_0\ : STD_LOGIC;
  signal \axi_rdata[20]_i_1_n_0\ : STD_LOGIC;
  signal \axi_rdata[20]_i_2_n_0\ : STD_LOGIC;
  signal \axi_rdata[21]_i_1_n_0\ : STD_LOGIC;
  signal \axi_rdata[21]_i_2_n_0\ : STD_LOGIC;
  signal \axi_rdata[22]_i_1_n_0\ : STD_LOGIC;
  signal \axi_rdata[22]_i_2_n_0\ : STD_LOGIC;
  signal \axi_rdata[23]_i_1_n_0\ : STD_LOGIC;
  signal \axi_rdata[23]_i_2_n_0\ : STD_LOGIC;
  signal \axi_rdata[24]_i_1_n_0\ : STD_LOGIC;
  signal \axi_rdata[24]_i_2_n_0\ : STD_LOGIC;
  signal \axi_rdata[25]_i_1_n_0\ : STD_LOGIC;
  signal \axi_rdata[25]_i_2_n_0\ : STD_LOGIC;
  signal \axi_rdata[26]_i_1_n_0\ : STD_LOGIC;
  signal \axi_rdata[26]_i_2_n_0\ : STD_LOGIC;
  signal \axi_rdata[27]_i_1_n_0\ : STD_LOGIC;
  signal \axi_rdata[27]_i_2_n_0\ : STD_LOGIC;
  signal \axi_rdata[28]_i_1_n_0\ : STD_LOGIC;
  signal \axi_rdata[28]_i_2_n_0\ : STD_LOGIC;
  signal \axi_rdata[29]_i_1_n_0\ : STD_LOGIC;
  signal \axi_rdata[29]_i_2_n_0\ : STD_LOGIC;
  signal \axi_rdata[2]_i_1_n_0\ : STD_LOGIC;
  signal \axi_rdata[2]_i_2_n_0\ : STD_LOGIC;
  signal \axi_rdata[30]_i_1_n_0\ : STD_LOGIC;
  signal \axi_rdata[30]_i_2_n_0\ : STD_LOGIC;
  signal \axi_rdata[31]_i_2_n_0\ : STD_LOGIC;
  signal \axi_rdata[31]_i_3_n_0\ : STD_LOGIC;
  signal \axi_rdata[3]_i_1_n_0\ : STD_LOGIC;
  signal \axi_rdata[3]_i_2_n_0\ : STD_LOGIC;
  signal \axi_rdata[4]_i_1_n_0\ : STD_LOGIC;
  signal \axi_rdata[4]_i_2_n_0\ : STD_LOGIC;
  signal \axi_rdata[5]_i_1_n_0\ : STD_LOGIC;
  signal \axi_rdata[5]_i_2_n_0\ : STD_LOGIC;
  signal \axi_rdata[6]_i_1_n_0\ : STD_LOGIC;
  signal \axi_rdata[6]_i_2_n_0\ : STD_LOGIC;
  signal \axi_rdata[7]_i_1_n_0\ : STD_LOGIC;
  signal \axi_rdata[7]_i_2_n_0\ : STD_LOGIC;
  signal \axi_rdata[8]_i_1_n_0\ : STD_LOGIC;
  signal \axi_rdata[8]_i_2_n_0\ : STD_LOGIC;
  signal \axi_rdata[9]_i_1_n_0\ : STD_LOGIC;
  signal \axi_rdata[9]_i_2_n_0\ : STD_LOGIC;
  signal axi_rvalid : STD_LOGIC;
  signal axi_rvalid_i_1_n_0 : STD_LOGIC;
  signal axi_s01_araddr : STD_LOGIC_VECTOR ( 5 downto 2 );
  signal axi_s01_arready : STD_LOGIC;
  signal axi_s01_arready0 : STD_LOGIC;
  signal axi_s01_awready : STD_LOGIC;
  signal axi_s01_awready0 : STD_LOGIC;
  signal axi_s01_bvalid : STD_LOGIC;
  signal \axi_s01_bvalid_i_1__0_n_0\ : STD_LOGIC;
  signal \axi_s01_rdata[0]_i_1__0_n_0\ : STD_LOGIC;
  signal \axi_s01_rdata[0]_i_2__0_n_0\ : STD_LOGIC;
  signal \axi_s01_rdata[10]_i_1__0_n_0\ : STD_LOGIC;
  signal \axi_s01_rdata[10]_i_2__0_n_0\ : STD_LOGIC;
  signal \axi_s01_rdata[11]_i_1__0_n_0\ : STD_LOGIC;
  signal \axi_s01_rdata[11]_i_2__0_n_0\ : STD_LOGIC;
  signal \axi_s01_rdata[12]_i_1__0_n_0\ : STD_LOGIC;
  signal \axi_s01_rdata[12]_i_2__0_n_0\ : STD_LOGIC;
  signal \axi_s01_rdata[13]_i_1__0_n_0\ : STD_LOGIC;
  signal \axi_s01_rdata[13]_i_2__0_n_0\ : STD_LOGIC;
  signal \axi_s01_rdata[14]_i_1__0_n_0\ : STD_LOGIC;
  signal \axi_s01_rdata[14]_i_2__0_n_0\ : STD_LOGIC;
  signal \axi_s01_rdata[15]_i_1__0_n_0\ : STD_LOGIC;
  signal \axi_s01_rdata[15]_i_2__0_n_0\ : STD_LOGIC;
  signal \axi_s01_rdata[16]_i_1__0_n_0\ : STD_LOGIC;
  signal \axi_s01_rdata[16]_i_2__0_n_0\ : STD_LOGIC;
  signal \axi_s01_rdata[17]_i_1__0_n_0\ : STD_LOGIC;
  signal \axi_s01_rdata[17]_i_2__0_n_0\ : STD_LOGIC;
  signal \axi_s01_rdata[18]_i_1__0_n_0\ : STD_LOGIC;
  signal \axi_s01_rdata[18]_i_2__0_n_0\ : STD_LOGIC;
  signal \axi_s01_rdata[19]_i_1__0_n_0\ : STD_LOGIC;
  signal \axi_s01_rdata[19]_i_2__0_n_0\ : STD_LOGIC;
  signal \axi_s01_rdata[1]_i_1__0_n_0\ : STD_LOGIC;
  signal \axi_s01_rdata[1]_i_2__0_n_0\ : STD_LOGIC;
  signal \axi_s01_rdata[20]_i_1__0_n_0\ : STD_LOGIC;
  signal \axi_s01_rdata[20]_i_2__0_n_0\ : STD_LOGIC;
  signal \axi_s01_rdata[21]_i_1__0_n_0\ : STD_LOGIC;
  signal \axi_s01_rdata[21]_i_2__0_n_0\ : STD_LOGIC;
  signal \axi_s01_rdata[22]_i_1__0_n_0\ : STD_LOGIC;
  signal \axi_s01_rdata[22]_i_2__0_n_0\ : STD_LOGIC;
  signal \axi_s01_rdata[23]_i_1__0_n_0\ : STD_LOGIC;
  signal \axi_s01_rdata[23]_i_2__0_n_0\ : STD_LOGIC;
  signal \axi_s01_rdata[24]_i_1__0_n_0\ : STD_LOGIC;
  signal \axi_s01_rdata[24]_i_2__0_n_0\ : STD_LOGIC;
  signal \axi_s01_rdata[25]_i_1__0_n_0\ : STD_LOGIC;
  signal \axi_s01_rdata[25]_i_2__0_n_0\ : STD_LOGIC;
  signal \axi_s01_rdata[26]_i_1__0_n_0\ : STD_LOGIC;
  signal \axi_s01_rdata[26]_i_2__0_n_0\ : STD_LOGIC;
  signal \axi_s01_rdata[27]_i_1__0_n_0\ : STD_LOGIC;
  signal \axi_s01_rdata[27]_i_2__0_n_0\ : STD_LOGIC;
  signal \axi_s01_rdata[28]_i_1__0_n_0\ : STD_LOGIC;
  signal \axi_s01_rdata[28]_i_2__0_n_0\ : STD_LOGIC;
  signal \axi_s01_rdata[29]_i_1__0_n_0\ : STD_LOGIC;
  signal \axi_s01_rdata[29]_i_2__0_n_0\ : STD_LOGIC;
  signal \axi_s01_rdata[2]_i_1__0_n_0\ : STD_LOGIC;
  signal \axi_s01_rdata[2]_i_2__0_n_0\ : STD_LOGIC;
  signal \axi_s01_rdata[30]_i_1__0_n_0\ : STD_LOGIC;
  signal \axi_s01_rdata[30]_i_2__0_n_0\ : STD_LOGIC;
  signal \axi_s01_rdata[31]_i_2__0_n_0\ : STD_LOGIC;
  signal \axi_s01_rdata[31]_i_3__0_n_0\ : STD_LOGIC;
  signal \axi_s01_rdata[3]_i_1__0_n_0\ : STD_LOGIC;
  signal \axi_s01_rdata[3]_i_2__0_n_0\ : STD_LOGIC;
  signal \axi_s01_rdata[4]_i_1__0_n_0\ : STD_LOGIC;
  signal \axi_s01_rdata[4]_i_2__0_n_0\ : STD_LOGIC;
  signal \axi_s01_rdata[5]_i_1__0_n_0\ : STD_LOGIC;
  signal \axi_s01_rdata[5]_i_2__0_n_0\ : STD_LOGIC;
  signal \axi_s01_rdata[6]_i_1__0_n_0\ : STD_LOGIC;
  signal \axi_s01_rdata[6]_i_2__0_n_0\ : STD_LOGIC;
  signal \axi_s01_rdata[7]_i_1__0_n_0\ : STD_LOGIC;
  signal \axi_s01_rdata[7]_i_2__0_n_0\ : STD_LOGIC;
  signal \axi_s01_rdata[8]_i_1__0_n_0\ : STD_LOGIC;
  signal \axi_s01_rdata[8]_i_2__0_n_0\ : STD_LOGIC;
  signal \axi_s01_rdata[9]_i_1__0_n_0\ : STD_LOGIC;
  signal \axi_s01_rdata[9]_i_2__0_n_0\ : STD_LOGIC;
  signal \axi_s01_rdata_reg_n_0_[0]\ : STD_LOGIC;
  signal \axi_s01_rdata_reg_n_0_[10]\ : STD_LOGIC;
  signal \axi_s01_rdata_reg_n_0_[11]\ : STD_LOGIC;
  signal \axi_s01_rdata_reg_n_0_[12]\ : STD_LOGIC;
  signal \axi_s01_rdata_reg_n_0_[13]\ : STD_LOGIC;
  signal \axi_s01_rdata_reg_n_0_[14]\ : STD_LOGIC;
  signal \axi_s01_rdata_reg_n_0_[15]\ : STD_LOGIC;
  signal \axi_s01_rdata_reg_n_0_[16]\ : STD_LOGIC;
  signal \axi_s01_rdata_reg_n_0_[17]\ : STD_LOGIC;
  signal \axi_s01_rdata_reg_n_0_[18]\ : STD_LOGIC;
  signal \axi_s01_rdata_reg_n_0_[19]\ : STD_LOGIC;
  signal \axi_s01_rdata_reg_n_0_[1]\ : STD_LOGIC;
  signal \axi_s01_rdata_reg_n_0_[20]\ : STD_LOGIC;
  signal \axi_s01_rdata_reg_n_0_[21]\ : STD_LOGIC;
  signal \axi_s01_rdata_reg_n_0_[22]\ : STD_LOGIC;
  signal \axi_s01_rdata_reg_n_0_[23]\ : STD_LOGIC;
  signal \axi_s01_rdata_reg_n_0_[24]\ : STD_LOGIC;
  signal \axi_s01_rdata_reg_n_0_[25]\ : STD_LOGIC;
  signal \axi_s01_rdata_reg_n_0_[26]\ : STD_LOGIC;
  signal \axi_s01_rdata_reg_n_0_[27]\ : STD_LOGIC;
  signal \axi_s01_rdata_reg_n_0_[28]\ : STD_LOGIC;
  signal \axi_s01_rdata_reg_n_0_[29]\ : STD_LOGIC;
  signal \axi_s01_rdata_reg_n_0_[2]\ : STD_LOGIC;
  signal \axi_s01_rdata_reg_n_0_[30]\ : STD_LOGIC;
  signal \axi_s01_rdata_reg_n_0_[31]\ : STD_LOGIC;
  signal \axi_s01_rdata_reg_n_0_[3]\ : STD_LOGIC;
  signal \axi_s01_rdata_reg_n_0_[4]\ : STD_LOGIC;
  signal \axi_s01_rdata_reg_n_0_[5]\ : STD_LOGIC;
  signal \axi_s01_rdata_reg_n_0_[6]\ : STD_LOGIC;
  signal \axi_s01_rdata_reg_n_0_[7]\ : STD_LOGIC;
  signal \axi_s01_rdata_reg_n_0_[8]\ : STD_LOGIC;
  signal \axi_s01_rdata_reg_n_0_[9]\ : STD_LOGIC;
  signal axi_s01_rvalid : STD_LOGIC;
  signal \axi_s01_rvalid_i_1__0_n_0\ : STD_LOGIC;
  signal axi_s01_wready : STD_LOGIC;
  signal axi_s01_wready0 : STD_LOGIC;
  signal \axi_s01_wready_i_2__0_n_0\ : STD_LOGIC;
  signal axi_wready : STD_LOGIC;
  signal axi_wready0 : STD_LOGIC;
  signal irq_on_write_reg : STD_LOGIC;
  signal irq_on_write_reg_0 : STD_LOGIC;
  signal irq_on_write_reg_i_1_n_0 : STD_LOGIC;
  signal irq_reg_i_1_n_0 : STD_LOGIC;
  signal \irq_reg_read_i_1__0_n_0\ : STD_LOGIC;
  signal irq_reg_read_reg_n_0 : STD_LOGIC;
  signal irq_reg_write_i_1_n_0 : STD_LOGIC;
  signal \irq_reg_write_i_2__0_n_0\ : STD_LOGIC;
  signal irq_reg_write_reg_n_0 : STD_LOGIC;
  signal sel0 : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \slv_reg0[15]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg0[23]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg0[31]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg0[7]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg0_reg_n_0_[0]\ : STD_LOGIC;
  signal \slv_reg0_reg_n_0_[10]\ : STD_LOGIC;
  signal \slv_reg0_reg_n_0_[11]\ : STD_LOGIC;
  signal \slv_reg0_reg_n_0_[12]\ : STD_LOGIC;
  signal \slv_reg0_reg_n_0_[13]\ : STD_LOGIC;
  signal \slv_reg0_reg_n_0_[14]\ : STD_LOGIC;
  signal \slv_reg0_reg_n_0_[15]\ : STD_LOGIC;
  signal \slv_reg0_reg_n_0_[16]\ : STD_LOGIC;
  signal \slv_reg0_reg_n_0_[17]\ : STD_LOGIC;
  signal \slv_reg0_reg_n_0_[18]\ : STD_LOGIC;
  signal \slv_reg0_reg_n_0_[19]\ : STD_LOGIC;
  signal \slv_reg0_reg_n_0_[1]\ : STD_LOGIC;
  signal \slv_reg0_reg_n_0_[20]\ : STD_LOGIC;
  signal \slv_reg0_reg_n_0_[21]\ : STD_LOGIC;
  signal \slv_reg0_reg_n_0_[22]\ : STD_LOGIC;
  signal \slv_reg0_reg_n_0_[23]\ : STD_LOGIC;
  signal \slv_reg0_reg_n_0_[24]\ : STD_LOGIC;
  signal \slv_reg0_reg_n_0_[25]\ : STD_LOGIC;
  signal \slv_reg0_reg_n_0_[26]\ : STD_LOGIC;
  signal \slv_reg0_reg_n_0_[27]\ : STD_LOGIC;
  signal \slv_reg0_reg_n_0_[28]\ : STD_LOGIC;
  signal \slv_reg0_reg_n_0_[29]\ : STD_LOGIC;
  signal \slv_reg0_reg_n_0_[2]\ : STD_LOGIC;
  signal \slv_reg0_reg_n_0_[30]\ : STD_LOGIC;
  signal \slv_reg0_reg_n_0_[31]\ : STD_LOGIC;
  signal \slv_reg0_reg_n_0_[3]\ : STD_LOGIC;
  signal \slv_reg0_reg_n_0_[4]\ : STD_LOGIC;
  signal \slv_reg0_reg_n_0_[5]\ : STD_LOGIC;
  signal \slv_reg0_reg_n_0_[6]\ : STD_LOGIC;
  signal \slv_reg0_reg_n_0_[7]\ : STD_LOGIC;
  signal \slv_reg0_reg_n_0_[8]\ : STD_LOGIC;
  signal \slv_reg0_reg_n_0_[9]\ : STD_LOGIC;
  signal \slv_reg1[0]_i_1__0_n_0\ : STD_LOGIC;
  signal \slv_reg1_reg_n_0_[0]\ : STD_LOGIC;
  signal \slv_reg2_high[15]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg2_high[23]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg2_high[31]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg2_high[7]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg2_high_reg_n_0_[0]\ : STD_LOGIC;
  signal \slv_reg2_high_reg_n_0_[10]\ : STD_LOGIC;
  signal \slv_reg2_high_reg_n_0_[11]\ : STD_LOGIC;
  signal \slv_reg2_high_reg_n_0_[12]\ : STD_LOGIC;
  signal \slv_reg2_high_reg_n_0_[13]\ : STD_LOGIC;
  signal \slv_reg2_high_reg_n_0_[14]\ : STD_LOGIC;
  signal \slv_reg2_high_reg_n_0_[15]\ : STD_LOGIC;
  signal \slv_reg2_high_reg_n_0_[16]\ : STD_LOGIC;
  signal \slv_reg2_high_reg_n_0_[17]\ : STD_LOGIC;
  signal \slv_reg2_high_reg_n_0_[18]\ : STD_LOGIC;
  signal \slv_reg2_high_reg_n_0_[19]\ : STD_LOGIC;
  signal \slv_reg2_high_reg_n_0_[1]\ : STD_LOGIC;
  signal \slv_reg2_high_reg_n_0_[20]\ : STD_LOGIC;
  signal \slv_reg2_high_reg_n_0_[21]\ : STD_LOGIC;
  signal \slv_reg2_high_reg_n_0_[22]\ : STD_LOGIC;
  signal \slv_reg2_high_reg_n_0_[23]\ : STD_LOGIC;
  signal \slv_reg2_high_reg_n_0_[24]\ : STD_LOGIC;
  signal \slv_reg2_high_reg_n_0_[25]\ : STD_LOGIC;
  signal \slv_reg2_high_reg_n_0_[26]\ : STD_LOGIC;
  signal \slv_reg2_high_reg_n_0_[27]\ : STD_LOGIC;
  signal \slv_reg2_high_reg_n_0_[28]\ : STD_LOGIC;
  signal \slv_reg2_high_reg_n_0_[29]\ : STD_LOGIC;
  signal \slv_reg2_high_reg_n_0_[2]\ : STD_LOGIC;
  signal \slv_reg2_high_reg_n_0_[30]\ : STD_LOGIC;
  signal \slv_reg2_high_reg_n_0_[31]\ : STD_LOGIC;
  signal \slv_reg2_high_reg_n_0_[3]\ : STD_LOGIC;
  signal \slv_reg2_high_reg_n_0_[4]\ : STD_LOGIC;
  signal \slv_reg2_high_reg_n_0_[5]\ : STD_LOGIC;
  signal \slv_reg2_high_reg_n_0_[6]\ : STD_LOGIC;
  signal \slv_reg2_high_reg_n_0_[7]\ : STD_LOGIC;
  signal \slv_reg2_high_reg_n_0_[8]\ : STD_LOGIC;
  signal \slv_reg2_high_reg_n_0_[9]\ : STD_LOGIC;
  signal \slv_reg2_low[15]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg2_low[23]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg2_low[31]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg2_low[7]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg2_low_reg_n_0_[0]\ : STD_LOGIC;
  signal \slv_reg2_low_reg_n_0_[10]\ : STD_LOGIC;
  signal \slv_reg2_low_reg_n_0_[11]\ : STD_LOGIC;
  signal \slv_reg2_low_reg_n_0_[12]\ : STD_LOGIC;
  signal \slv_reg2_low_reg_n_0_[13]\ : STD_LOGIC;
  signal \slv_reg2_low_reg_n_0_[14]\ : STD_LOGIC;
  signal \slv_reg2_low_reg_n_0_[15]\ : STD_LOGIC;
  signal \slv_reg2_low_reg_n_0_[16]\ : STD_LOGIC;
  signal \slv_reg2_low_reg_n_0_[17]\ : STD_LOGIC;
  signal \slv_reg2_low_reg_n_0_[18]\ : STD_LOGIC;
  signal \slv_reg2_low_reg_n_0_[19]\ : STD_LOGIC;
  signal \slv_reg2_low_reg_n_0_[1]\ : STD_LOGIC;
  signal \slv_reg2_low_reg_n_0_[20]\ : STD_LOGIC;
  signal \slv_reg2_low_reg_n_0_[21]\ : STD_LOGIC;
  signal \slv_reg2_low_reg_n_0_[22]\ : STD_LOGIC;
  signal \slv_reg2_low_reg_n_0_[23]\ : STD_LOGIC;
  signal \slv_reg2_low_reg_n_0_[24]\ : STD_LOGIC;
  signal \slv_reg2_low_reg_n_0_[25]\ : STD_LOGIC;
  signal \slv_reg2_low_reg_n_0_[26]\ : STD_LOGIC;
  signal \slv_reg2_low_reg_n_0_[27]\ : STD_LOGIC;
  signal \slv_reg2_low_reg_n_0_[28]\ : STD_LOGIC;
  signal \slv_reg2_low_reg_n_0_[29]\ : STD_LOGIC;
  signal \slv_reg2_low_reg_n_0_[2]\ : STD_LOGIC;
  signal \slv_reg2_low_reg_n_0_[30]\ : STD_LOGIC;
  signal \slv_reg2_low_reg_n_0_[31]\ : STD_LOGIC;
  signal \slv_reg2_low_reg_n_0_[3]\ : STD_LOGIC;
  signal \slv_reg2_low_reg_n_0_[4]\ : STD_LOGIC;
  signal \slv_reg2_low_reg_n_0_[5]\ : STD_LOGIC;
  signal \slv_reg2_low_reg_n_0_[6]\ : STD_LOGIC;
  signal \slv_reg2_low_reg_n_0_[7]\ : STD_LOGIC;
  signal \slv_reg2_low_reg_n_0_[8]\ : STD_LOGIC;
  signal \slv_reg2_low_reg_n_0_[9]\ : STD_LOGIC;
  signal \slv_reg3[15]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg3[23]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg3[31]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg3[7]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg3_reg_n_0_[0]\ : STD_LOGIC;
  signal \slv_reg3_reg_n_0_[10]\ : STD_LOGIC;
  signal \slv_reg3_reg_n_0_[11]\ : STD_LOGIC;
  signal \slv_reg3_reg_n_0_[12]\ : STD_LOGIC;
  signal \slv_reg3_reg_n_0_[13]\ : STD_LOGIC;
  signal \slv_reg3_reg_n_0_[14]\ : STD_LOGIC;
  signal \slv_reg3_reg_n_0_[15]\ : STD_LOGIC;
  signal \slv_reg3_reg_n_0_[16]\ : STD_LOGIC;
  signal \slv_reg3_reg_n_0_[17]\ : STD_LOGIC;
  signal \slv_reg3_reg_n_0_[18]\ : STD_LOGIC;
  signal \slv_reg3_reg_n_0_[19]\ : STD_LOGIC;
  signal \slv_reg3_reg_n_0_[1]\ : STD_LOGIC;
  signal \slv_reg3_reg_n_0_[20]\ : STD_LOGIC;
  signal \slv_reg3_reg_n_0_[21]\ : STD_LOGIC;
  signal \slv_reg3_reg_n_0_[22]\ : STD_LOGIC;
  signal \slv_reg3_reg_n_0_[23]\ : STD_LOGIC;
  signal \slv_reg3_reg_n_0_[24]\ : STD_LOGIC;
  signal \slv_reg3_reg_n_0_[25]\ : STD_LOGIC;
  signal \slv_reg3_reg_n_0_[26]\ : STD_LOGIC;
  signal \slv_reg3_reg_n_0_[27]\ : STD_LOGIC;
  signal \slv_reg3_reg_n_0_[28]\ : STD_LOGIC;
  signal \slv_reg3_reg_n_0_[29]\ : STD_LOGIC;
  signal \slv_reg3_reg_n_0_[2]\ : STD_LOGIC;
  signal \slv_reg3_reg_n_0_[30]\ : STD_LOGIC;
  signal \slv_reg3_reg_n_0_[31]\ : STD_LOGIC;
  signal \slv_reg3_reg_n_0_[3]\ : STD_LOGIC;
  signal \slv_reg3_reg_n_0_[4]\ : STD_LOGIC;
  signal \slv_reg3_reg_n_0_[5]\ : STD_LOGIC;
  signal \slv_reg3_reg_n_0_[6]\ : STD_LOGIC;
  signal \slv_reg3_reg_n_0_[7]\ : STD_LOGIC;
  signal \slv_reg3_reg_n_0_[8]\ : STD_LOGIC;
  signal \slv_reg3_reg_n_0_[9]\ : STD_LOGIC;
  signal slv_reg_rden : STD_LOGIC;
  signal slv_reg_s01_rden : STD_LOGIC;
  signal slv_reg_wren : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of aw_en_i_1 : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of axi_rvalid_i_1 : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \axi_s01_awready_i_1__0\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \axi_s01_bvalid_i_1__0\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \axi_s01_rvalid_i_1__0\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \axi_s01_wready_i_1__0\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \axi_s01_wready_i_2__0\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of axi_wready_i_1 : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of s00_axi_arready_INST_0 : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of s00_axi_awready_INST_0 : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of s00_axi_bvalid_INST_0 : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \s00_axi_rdata[0]_INST_0\ : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \s00_axi_rdata[10]_INST_0\ : label is "soft_lutpair16";
  attribute SOFT_HLUTNM of \s00_axi_rdata[11]_INST_0\ : label is "soft_lutpair17";
  attribute SOFT_HLUTNM of \s00_axi_rdata[12]_INST_0\ : label is "soft_lutpair17";
  attribute SOFT_HLUTNM of \s00_axi_rdata[13]_INST_0\ : label is "soft_lutpair18";
  attribute SOFT_HLUTNM of \s00_axi_rdata[14]_INST_0\ : label is "soft_lutpair18";
  attribute SOFT_HLUTNM of \s00_axi_rdata[15]_INST_0\ : label is "soft_lutpair19";
  attribute SOFT_HLUTNM of \s00_axi_rdata[16]_INST_0\ : label is "soft_lutpair19";
  attribute SOFT_HLUTNM of \s00_axi_rdata[17]_INST_0\ : label is "soft_lutpair20";
  attribute SOFT_HLUTNM of \s00_axi_rdata[18]_INST_0\ : label is "soft_lutpair20";
  attribute SOFT_HLUTNM of \s00_axi_rdata[19]_INST_0\ : label is "soft_lutpair21";
  attribute SOFT_HLUTNM of \s00_axi_rdata[1]_INST_0\ : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of \s00_axi_rdata[20]_INST_0\ : label is "soft_lutpair21";
  attribute SOFT_HLUTNM of \s00_axi_rdata[21]_INST_0\ : label is "soft_lutpair22";
  attribute SOFT_HLUTNM of \s00_axi_rdata[22]_INST_0\ : label is "soft_lutpair22";
  attribute SOFT_HLUTNM of \s00_axi_rdata[23]_INST_0\ : label is "soft_lutpair23";
  attribute SOFT_HLUTNM of \s00_axi_rdata[24]_INST_0\ : label is "soft_lutpair23";
  attribute SOFT_HLUTNM of \s00_axi_rdata[25]_INST_0\ : label is "soft_lutpair24";
  attribute SOFT_HLUTNM of \s00_axi_rdata[26]_INST_0\ : label is "soft_lutpair24";
  attribute SOFT_HLUTNM of \s00_axi_rdata[27]_INST_0\ : label is "soft_lutpair25";
  attribute SOFT_HLUTNM of \s00_axi_rdata[28]_INST_0\ : label is "soft_lutpair25";
  attribute SOFT_HLUTNM of \s00_axi_rdata[29]_INST_0\ : label is "soft_lutpair26";
  attribute SOFT_HLUTNM of \s00_axi_rdata[2]_INST_0\ : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of \s00_axi_rdata[30]_INST_0\ : label is "soft_lutpair26";
  attribute SOFT_HLUTNM of \s00_axi_rdata[3]_INST_0\ : label is "soft_lutpair13";
  attribute SOFT_HLUTNM of \s00_axi_rdata[4]_INST_0\ : label is "soft_lutpair13";
  attribute SOFT_HLUTNM of \s00_axi_rdata[5]_INST_0\ : label is "soft_lutpair14";
  attribute SOFT_HLUTNM of \s00_axi_rdata[6]_INST_0\ : label is "soft_lutpair14";
  attribute SOFT_HLUTNM of \s00_axi_rdata[7]_INST_0\ : label is "soft_lutpair15";
  attribute SOFT_HLUTNM of \s00_axi_rdata[8]_INST_0\ : label is "soft_lutpair15";
  attribute SOFT_HLUTNM of \s00_axi_rdata[9]_INST_0\ : label is "soft_lutpair16";
  attribute SOFT_HLUTNM of s00_axi_rvalid_INST_0 : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of s00_axi_wready_INST_0 : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of s01_axi_arready_INST_0 : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of s01_axi_awready_INST_0 : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \s01_axi_rdata[0]_INST_0\ : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of \s01_axi_rdata[10]_INST_0\ : label is "soft_lutpair31";
  attribute SOFT_HLUTNM of \s01_axi_rdata[11]_INST_0\ : label is "soft_lutpair32";
  attribute SOFT_HLUTNM of \s01_axi_rdata[12]_INST_0\ : label is "soft_lutpair32";
  attribute SOFT_HLUTNM of \s01_axi_rdata[13]_INST_0\ : label is "soft_lutpair33";
  attribute SOFT_HLUTNM of \s01_axi_rdata[14]_INST_0\ : label is "soft_lutpair33";
  attribute SOFT_HLUTNM of \s01_axi_rdata[15]_INST_0\ : label is "soft_lutpair34";
  attribute SOFT_HLUTNM of \s01_axi_rdata[16]_INST_0\ : label is "soft_lutpair34";
  attribute SOFT_HLUTNM of \s01_axi_rdata[17]_INST_0\ : label is "soft_lutpair35";
  attribute SOFT_HLUTNM of \s01_axi_rdata[18]_INST_0\ : label is "soft_lutpair35";
  attribute SOFT_HLUTNM of \s01_axi_rdata[19]_INST_0\ : label is "soft_lutpair36";
  attribute SOFT_HLUTNM of \s01_axi_rdata[1]_INST_0\ : label is "soft_lutpair27";
  attribute SOFT_HLUTNM of \s01_axi_rdata[20]_INST_0\ : label is "soft_lutpair36";
  attribute SOFT_HLUTNM of \s01_axi_rdata[21]_INST_0\ : label is "soft_lutpair37";
  attribute SOFT_HLUTNM of \s01_axi_rdata[22]_INST_0\ : label is "soft_lutpair37";
  attribute SOFT_HLUTNM of \s01_axi_rdata[23]_INST_0\ : label is "soft_lutpair38";
  attribute SOFT_HLUTNM of \s01_axi_rdata[24]_INST_0\ : label is "soft_lutpair38";
  attribute SOFT_HLUTNM of \s01_axi_rdata[25]_INST_0\ : label is "soft_lutpair39";
  attribute SOFT_HLUTNM of \s01_axi_rdata[26]_INST_0\ : label is "soft_lutpair39";
  attribute SOFT_HLUTNM of \s01_axi_rdata[27]_INST_0\ : label is "soft_lutpair40";
  attribute SOFT_HLUTNM of \s01_axi_rdata[28]_INST_0\ : label is "soft_lutpair40";
  attribute SOFT_HLUTNM of \s01_axi_rdata[29]_INST_0\ : label is "soft_lutpair41";
  attribute SOFT_HLUTNM of \s01_axi_rdata[2]_INST_0\ : label is "soft_lutpair27";
  attribute SOFT_HLUTNM of \s01_axi_rdata[30]_INST_0\ : label is "soft_lutpair41";
  attribute SOFT_HLUTNM of \s01_axi_rdata[3]_INST_0\ : label is "soft_lutpair28";
  attribute SOFT_HLUTNM of \s01_axi_rdata[4]_INST_0\ : label is "soft_lutpair28";
  attribute SOFT_HLUTNM of \s01_axi_rdata[5]_INST_0\ : label is "soft_lutpair29";
  attribute SOFT_HLUTNM of \s01_axi_rdata[6]_INST_0\ : label is "soft_lutpair29";
  attribute SOFT_HLUTNM of \s01_axi_rdata[7]_INST_0\ : label is "soft_lutpair30";
  attribute SOFT_HLUTNM of \s01_axi_rdata[8]_INST_0\ : label is "soft_lutpair30";
  attribute SOFT_HLUTNM of \s01_axi_rdata[9]_INST_0\ : label is "soft_lutpair31";
  attribute SOFT_HLUTNM of s01_axi_rvalid_INST_0 : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of s01_axi_wready_INST_0 : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \slv_reg3[31]_i_2\ : label is "soft_lutpair2";
begin
  SR(0) <= \^sr\(0);
aw_en_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0F08"
    )
        port map (
      I0 => s00_axi_bready,
      I1 => axi_bvalid,
      I2 => axi_awready0,
      I3 => aw_en_reg_n_0,
      O => aw_en_i_1_n_0
    );
aw_en_reg: unisim.vcomponents.FDSE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => aw_en_i_1_n_0,
      Q => aw_en_reg_n_0,
      S => \^sr\(0)
    );
\aw_s01_en_i_1__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"DFD0D0D0"
    )
        port map (
      I0 => \axi_s01_wready_i_2__0_n_0\,
      I1 => axi_s01_awready,
      I2 => aw_s01_en_reg_n_0,
      I3 => s01_axi_bready,
      I4 => axi_s01_bvalid,
      O => \aw_s01_en_i_1__0_n_0\
    );
aw_s01_en_reg: unisim.vcomponents.FDSE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \aw_s01_en_i_1__0_n_0\,
      Q => aw_s01_en_reg_n_0,
      S => \^sr\(0)
    );
\axi_araddr_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => axi_arready0,
      D => s00_axi_araddr(0),
      Q => sel0(0),
      R => \^sr\(0)
    );
\axi_araddr_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => axi_arready0,
      D => s00_axi_araddr(1),
      Q => sel0(1),
      R => \^sr\(0)
    );
\axi_araddr_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => axi_arready0,
      D => s00_axi_araddr(2),
      Q => sel0(2),
      R => \^sr\(0)
    );
\axi_araddr_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => axi_arready0,
      D => s00_axi_araddr(3),
      Q => \axi_araddr_reg_n_0_[5]\,
      R => \^sr\(0)
    );
axi_arready_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"08"
    )
        port map (
      I0 => s00_axi_arvalid,
      I1 => s00_sq_rd_sel,
      I2 => axi_arready,
      O => axi_arready0
    );
axi_arready_reg: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => axi_arready0,
      Q => axi_arready,
      R => \^sr\(0)
    );
\axi_awaddr_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => axi_awready0,
      D => s00_axi_awaddr(0),
      Q => axi_awaddr(2),
      R => \^sr\(0)
    );
\axi_awaddr_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => axi_awready0,
      D => s00_axi_awaddr(1),
      Q => axi_awaddr(3),
      R => \^sr\(0)
    );
\axi_awaddr_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => axi_awready0,
      D => s00_axi_awaddr(2),
      Q => axi_awaddr(4),
      R => \^sr\(0)
    );
\axi_awaddr_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => axi_awready0,
      D => s00_axi_awaddr(3),
      Q => axi_awaddr(5),
      R => \^sr\(0)
    );
axi_awready_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00008000"
    )
        port map (
      I0 => s00_axi_awvalid,
      I1 => s00_axi_wvalid,
      I2 => s00_sq_wr_sel,
      I3 => aw_en_reg_n_0,
      I4 => axi_awready,
      O => axi_awready0
    );
axi_awready_reg: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => axi_awready0,
      Q => axi_awready,
      R => \^sr\(0)
    );
axi_bvalid_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"74"
    )
        port map (
      I0 => s00_axi_bready,
      I1 => axi_bvalid,
      I2 => slv_reg_wren,
      O => axi_bvalid_i_1_n_0
    );
axi_bvalid_reg: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => axi_bvalid_i_1_n_0,
      Q => axi_bvalid,
      R => \^sr\(0)
    );
\axi_rdata[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000000000F4F0040"
    )
        port map (
      I0 => sel0(0),
      I1 => \slv_reg2_high_reg_n_0_[0]\,
      I2 => sel0(2),
      I3 => sel0(1),
      I4 => \axi_rdata[0]_i_2_n_0\,
      I5 => \axi_araddr_reg_n_0_[5]\,
      O => \axi_rdata[0]_i_1_n_0\
    );
\axi_rdata[0]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \slv_reg3_reg_n_0_[0]\,
      I1 => \slv_reg2_low_reg_n_0_[0]\,
      I2 => sel0(1),
      I3 => \slv_reg1_reg_n_0_[0]\,
      I4 => sel0(0),
      I5 => \slv_reg0_reg_n_0_[0]\,
      O => \axi_rdata[0]_i_2_n_0\
    );
\axi_rdata[10]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000FF4F0040"
    )
        port map (
      I0 => sel0(0),
      I1 => \slv_reg2_high_reg_n_0_[10]\,
      I2 => sel0(2),
      I3 => sel0(1),
      I4 => \axi_rdata[10]_i_2_n_0\,
      I5 => \axi_araddr_reg_n_0_[5]\,
      O => \axi_rdata[10]_i_1_n_0\
    );
\axi_rdata[10]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"5510441011100010"
    )
        port map (
      I0 => sel0(2),
      I1 => sel0(0),
      I2 => \slv_reg0_reg_n_0_[10]\,
      I3 => sel0(1),
      I4 => \slv_reg2_low_reg_n_0_[10]\,
      I5 => \slv_reg3_reg_n_0_[10]\,
      O => \axi_rdata[10]_i_2_n_0\
    );
\axi_rdata[11]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000FF4F0040"
    )
        port map (
      I0 => sel0(0),
      I1 => \slv_reg2_high_reg_n_0_[11]\,
      I2 => sel0(2),
      I3 => sel0(1),
      I4 => \axi_rdata[11]_i_2_n_0\,
      I5 => \axi_araddr_reg_n_0_[5]\,
      O => \axi_rdata[11]_i_1_n_0\
    );
\axi_rdata[11]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"5510441011100010"
    )
        port map (
      I0 => sel0(2),
      I1 => sel0(0),
      I2 => \slv_reg0_reg_n_0_[11]\,
      I3 => sel0(1),
      I4 => \slv_reg2_low_reg_n_0_[11]\,
      I5 => \slv_reg3_reg_n_0_[11]\,
      O => \axi_rdata[11]_i_2_n_0\
    );
\axi_rdata[12]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000FF4F0040"
    )
        port map (
      I0 => sel0(0),
      I1 => \slv_reg2_high_reg_n_0_[12]\,
      I2 => sel0(2),
      I3 => sel0(1),
      I4 => \axi_rdata[12]_i_2_n_0\,
      I5 => \axi_araddr_reg_n_0_[5]\,
      O => \axi_rdata[12]_i_1_n_0\
    );
\axi_rdata[12]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"5510441011100010"
    )
        port map (
      I0 => sel0(2),
      I1 => sel0(0),
      I2 => \slv_reg0_reg_n_0_[12]\,
      I3 => sel0(1),
      I4 => \slv_reg2_low_reg_n_0_[12]\,
      I5 => \slv_reg3_reg_n_0_[12]\,
      O => \axi_rdata[12]_i_2_n_0\
    );
\axi_rdata[13]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000FF4F0040"
    )
        port map (
      I0 => sel0(0),
      I1 => \slv_reg2_high_reg_n_0_[13]\,
      I2 => sel0(2),
      I3 => sel0(1),
      I4 => \axi_rdata[13]_i_2_n_0\,
      I5 => \axi_araddr_reg_n_0_[5]\,
      O => \axi_rdata[13]_i_1_n_0\
    );
\axi_rdata[13]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"5510441011100010"
    )
        port map (
      I0 => sel0(2),
      I1 => sel0(0),
      I2 => \slv_reg0_reg_n_0_[13]\,
      I3 => sel0(1),
      I4 => \slv_reg2_low_reg_n_0_[13]\,
      I5 => \slv_reg3_reg_n_0_[13]\,
      O => \axi_rdata[13]_i_2_n_0\
    );
\axi_rdata[14]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000FF4F0040"
    )
        port map (
      I0 => sel0(0),
      I1 => \slv_reg2_high_reg_n_0_[14]\,
      I2 => sel0(2),
      I3 => sel0(1),
      I4 => \axi_rdata[14]_i_2_n_0\,
      I5 => \axi_araddr_reg_n_0_[5]\,
      O => \axi_rdata[14]_i_1_n_0\
    );
\axi_rdata[14]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"5510441011100010"
    )
        port map (
      I0 => sel0(2),
      I1 => sel0(0),
      I2 => \slv_reg0_reg_n_0_[14]\,
      I3 => sel0(1),
      I4 => \slv_reg2_low_reg_n_0_[14]\,
      I5 => \slv_reg3_reg_n_0_[14]\,
      O => \axi_rdata[14]_i_2_n_0\
    );
\axi_rdata[15]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000FF4F0040"
    )
        port map (
      I0 => sel0(0),
      I1 => \slv_reg2_high_reg_n_0_[15]\,
      I2 => sel0(2),
      I3 => sel0(1),
      I4 => \axi_rdata[15]_i_2_n_0\,
      I5 => \axi_araddr_reg_n_0_[5]\,
      O => \axi_rdata[15]_i_1_n_0\
    );
\axi_rdata[15]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"5510441011100010"
    )
        port map (
      I0 => sel0(2),
      I1 => sel0(0),
      I2 => \slv_reg0_reg_n_0_[15]\,
      I3 => sel0(1),
      I4 => \slv_reg2_low_reg_n_0_[15]\,
      I5 => \slv_reg3_reg_n_0_[15]\,
      O => \axi_rdata[15]_i_2_n_0\
    );
\axi_rdata[16]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000FF4F0040"
    )
        port map (
      I0 => sel0(0),
      I1 => \slv_reg2_high_reg_n_0_[16]\,
      I2 => sel0(2),
      I3 => sel0(1),
      I4 => \axi_rdata[16]_i_2_n_0\,
      I5 => \axi_araddr_reg_n_0_[5]\,
      O => \axi_rdata[16]_i_1_n_0\
    );
\axi_rdata[16]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"5510441011100010"
    )
        port map (
      I0 => sel0(2),
      I1 => sel0(0),
      I2 => \slv_reg0_reg_n_0_[16]\,
      I3 => sel0(1),
      I4 => \slv_reg2_low_reg_n_0_[16]\,
      I5 => \slv_reg3_reg_n_0_[16]\,
      O => \axi_rdata[16]_i_2_n_0\
    );
\axi_rdata[17]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000FF4F0040"
    )
        port map (
      I0 => sel0(0),
      I1 => \slv_reg2_high_reg_n_0_[17]\,
      I2 => sel0(2),
      I3 => sel0(1),
      I4 => \axi_rdata[17]_i_2_n_0\,
      I5 => \axi_araddr_reg_n_0_[5]\,
      O => \axi_rdata[17]_i_1_n_0\
    );
\axi_rdata[17]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"5510441011100010"
    )
        port map (
      I0 => sel0(2),
      I1 => sel0(0),
      I2 => \slv_reg0_reg_n_0_[17]\,
      I3 => sel0(1),
      I4 => \slv_reg2_low_reg_n_0_[17]\,
      I5 => \slv_reg3_reg_n_0_[17]\,
      O => \axi_rdata[17]_i_2_n_0\
    );
\axi_rdata[18]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000FF4F0040"
    )
        port map (
      I0 => sel0(0),
      I1 => \slv_reg2_high_reg_n_0_[18]\,
      I2 => sel0(2),
      I3 => sel0(1),
      I4 => \axi_rdata[18]_i_2_n_0\,
      I5 => \axi_araddr_reg_n_0_[5]\,
      O => \axi_rdata[18]_i_1_n_0\
    );
\axi_rdata[18]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"5510441011100010"
    )
        port map (
      I0 => sel0(2),
      I1 => sel0(0),
      I2 => \slv_reg0_reg_n_0_[18]\,
      I3 => sel0(1),
      I4 => \slv_reg2_low_reg_n_0_[18]\,
      I5 => \slv_reg3_reg_n_0_[18]\,
      O => \axi_rdata[18]_i_2_n_0\
    );
\axi_rdata[19]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000FF4F0040"
    )
        port map (
      I0 => sel0(0),
      I1 => \slv_reg2_high_reg_n_0_[19]\,
      I2 => sel0(2),
      I3 => sel0(1),
      I4 => \axi_rdata[19]_i_2_n_0\,
      I5 => \axi_araddr_reg_n_0_[5]\,
      O => \axi_rdata[19]_i_1_n_0\
    );
\axi_rdata[19]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"5510441011100010"
    )
        port map (
      I0 => sel0(2),
      I1 => sel0(0),
      I2 => \slv_reg0_reg_n_0_[19]\,
      I3 => sel0(1),
      I4 => \slv_reg2_low_reg_n_0_[19]\,
      I5 => \slv_reg3_reg_n_0_[19]\,
      O => \axi_rdata[19]_i_2_n_0\
    );
\axi_rdata[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000FF4F0040"
    )
        port map (
      I0 => sel0(0),
      I1 => \slv_reg2_high_reg_n_0_[1]\,
      I2 => sel0(2),
      I3 => sel0(1),
      I4 => \axi_rdata[1]_i_2_n_0\,
      I5 => \axi_araddr_reg_n_0_[5]\,
      O => \axi_rdata[1]_i_1_n_0\
    );
\axi_rdata[1]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"5510441011100010"
    )
        port map (
      I0 => sel0(2),
      I1 => sel0(0),
      I2 => \slv_reg0_reg_n_0_[1]\,
      I3 => sel0(1),
      I4 => \slv_reg2_low_reg_n_0_[1]\,
      I5 => \slv_reg3_reg_n_0_[1]\,
      O => \axi_rdata[1]_i_2_n_0\
    );
\axi_rdata[20]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000FF4F0040"
    )
        port map (
      I0 => sel0(0),
      I1 => \slv_reg2_high_reg_n_0_[20]\,
      I2 => sel0(2),
      I3 => sel0(1),
      I4 => \axi_rdata[20]_i_2_n_0\,
      I5 => \axi_araddr_reg_n_0_[5]\,
      O => \axi_rdata[20]_i_1_n_0\
    );
\axi_rdata[20]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"5510441011100010"
    )
        port map (
      I0 => sel0(2),
      I1 => sel0(0),
      I2 => \slv_reg0_reg_n_0_[20]\,
      I3 => sel0(1),
      I4 => \slv_reg2_low_reg_n_0_[20]\,
      I5 => \slv_reg3_reg_n_0_[20]\,
      O => \axi_rdata[20]_i_2_n_0\
    );
\axi_rdata[21]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000FF4F0040"
    )
        port map (
      I0 => sel0(0),
      I1 => \slv_reg2_high_reg_n_0_[21]\,
      I2 => sel0(2),
      I3 => sel0(1),
      I4 => \axi_rdata[21]_i_2_n_0\,
      I5 => \axi_araddr_reg_n_0_[5]\,
      O => \axi_rdata[21]_i_1_n_0\
    );
\axi_rdata[21]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"5510441011100010"
    )
        port map (
      I0 => sel0(2),
      I1 => sel0(0),
      I2 => \slv_reg0_reg_n_0_[21]\,
      I3 => sel0(1),
      I4 => \slv_reg2_low_reg_n_0_[21]\,
      I5 => \slv_reg3_reg_n_0_[21]\,
      O => \axi_rdata[21]_i_2_n_0\
    );
\axi_rdata[22]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000FF4F0040"
    )
        port map (
      I0 => sel0(0),
      I1 => \slv_reg2_high_reg_n_0_[22]\,
      I2 => sel0(2),
      I3 => sel0(1),
      I4 => \axi_rdata[22]_i_2_n_0\,
      I5 => \axi_araddr_reg_n_0_[5]\,
      O => \axi_rdata[22]_i_1_n_0\
    );
\axi_rdata[22]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"5510441011100010"
    )
        port map (
      I0 => sel0(2),
      I1 => sel0(0),
      I2 => \slv_reg0_reg_n_0_[22]\,
      I3 => sel0(1),
      I4 => \slv_reg2_low_reg_n_0_[22]\,
      I5 => \slv_reg3_reg_n_0_[22]\,
      O => \axi_rdata[22]_i_2_n_0\
    );
\axi_rdata[23]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000FF4F0040"
    )
        port map (
      I0 => sel0(0),
      I1 => \slv_reg2_high_reg_n_0_[23]\,
      I2 => sel0(2),
      I3 => sel0(1),
      I4 => \axi_rdata[23]_i_2_n_0\,
      I5 => \axi_araddr_reg_n_0_[5]\,
      O => \axi_rdata[23]_i_1_n_0\
    );
\axi_rdata[23]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"5510441011100010"
    )
        port map (
      I0 => sel0(2),
      I1 => sel0(0),
      I2 => \slv_reg0_reg_n_0_[23]\,
      I3 => sel0(1),
      I4 => \slv_reg2_low_reg_n_0_[23]\,
      I5 => \slv_reg3_reg_n_0_[23]\,
      O => \axi_rdata[23]_i_2_n_0\
    );
\axi_rdata[24]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000FF4F0040"
    )
        port map (
      I0 => sel0(0),
      I1 => \slv_reg2_high_reg_n_0_[24]\,
      I2 => sel0(2),
      I3 => sel0(1),
      I4 => \axi_rdata[24]_i_2_n_0\,
      I5 => \axi_araddr_reg_n_0_[5]\,
      O => \axi_rdata[24]_i_1_n_0\
    );
\axi_rdata[24]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"5510441011100010"
    )
        port map (
      I0 => sel0(2),
      I1 => sel0(0),
      I2 => \slv_reg0_reg_n_0_[24]\,
      I3 => sel0(1),
      I4 => \slv_reg2_low_reg_n_0_[24]\,
      I5 => \slv_reg3_reg_n_0_[24]\,
      O => \axi_rdata[24]_i_2_n_0\
    );
\axi_rdata[25]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000FF4F0040"
    )
        port map (
      I0 => sel0(0),
      I1 => \slv_reg2_high_reg_n_0_[25]\,
      I2 => sel0(2),
      I3 => sel0(1),
      I4 => \axi_rdata[25]_i_2_n_0\,
      I5 => \axi_araddr_reg_n_0_[5]\,
      O => \axi_rdata[25]_i_1_n_0\
    );
\axi_rdata[25]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"5510441011100010"
    )
        port map (
      I0 => sel0(2),
      I1 => sel0(0),
      I2 => \slv_reg0_reg_n_0_[25]\,
      I3 => sel0(1),
      I4 => \slv_reg2_low_reg_n_0_[25]\,
      I5 => \slv_reg3_reg_n_0_[25]\,
      O => \axi_rdata[25]_i_2_n_0\
    );
\axi_rdata[26]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000FF4F0040"
    )
        port map (
      I0 => sel0(0),
      I1 => \slv_reg2_high_reg_n_0_[26]\,
      I2 => sel0(2),
      I3 => sel0(1),
      I4 => \axi_rdata[26]_i_2_n_0\,
      I5 => \axi_araddr_reg_n_0_[5]\,
      O => \axi_rdata[26]_i_1_n_0\
    );
\axi_rdata[26]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"5510441011100010"
    )
        port map (
      I0 => sel0(2),
      I1 => sel0(0),
      I2 => \slv_reg0_reg_n_0_[26]\,
      I3 => sel0(1),
      I4 => \slv_reg2_low_reg_n_0_[26]\,
      I5 => \slv_reg3_reg_n_0_[26]\,
      O => \axi_rdata[26]_i_2_n_0\
    );
\axi_rdata[27]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000FF4F0040"
    )
        port map (
      I0 => sel0(0),
      I1 => \slv_reg2_high_reg_n_0_[27]\,
      I2 => sel0(2),
      I3 => sel0(1),
      I4 => \axi_rdata[27]_i_2_n_0\,
      I5 => \axi_araddr_reg_n_0_[5]\,
      O => \axi_rdata[27]_i_1_n_0\
    );
\axi_rdata[27]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"5510441011100010"
    )
        port map (
      I0 => sel0(2),
      I1 => sel0(0),
      I2 => \slv_reg0_reg_n_0_[27]\,
      I3 => sel0(1),
      I4 => \slv_reg2_low_reg_n_0_[27]\,
      I5 => \slv_reg3_reg_n_0_[27]\,
      O => \axi_rdata[27]_i_2_n_0\
    );
\axi_rdata[28]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000FF4F0040"
    )
        port map (
      I0 => sel0(0),
      I1 => \slv_reg2_high_reg_n_0_[28]\,
      I2 => sel0(2),
      I3 => sel0(1),
      I4 => \axi_rdata[28]_i_2_n_0\,
      I5 => \axi_araddr_reg_n_0_[5]\,
      O => \axi_rdata[28]_i_1_n_0\
    );
\axi_rdata[28]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"5510441011100010"
    )
        port map (
      I0 => sel0(2),
      I1 => sel0(0),
      I2 => \slv_reg0_reg_n_0_[28]\,
      I3 => sel0(1),
      I4 => \slv_reg2_low_reg_n_0_[28]\,
      I5 => \slv_reg3_reg_n_0_[28]\,
      O => \axi_rdata[28]_i_2_n_0\
    );
\axi_rdata[29]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000FF4F0040"
    )
        port map (
      I0 => sel0(0),
      I1 => \slv_reg2_high_reg_n_0_[29]\,
      I2 => sel0(2),
      I3 => sel0(1),
      I4 => \axi_rdata[29]_i_2_n_0\,
      I5 => \axi_araddr_reg_n_0_[5]\,
      O => \axi_rdata[29]_i_1_n_0\
    );
\axi_rdata[29]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"5510441011100010"
    )
        port map (
      I0 => sel0(2),
      I1 => sel0(0),
      I2 => \slv_reg0_reg_n_0_[29]\,
      I3 => sel0(1),
      I4 => \slv_reg2_low_reg_n_0_[29]\,
      I5 => \slv_reg3_reg_n_0_[29]\,
      O => \axi_rdata[29]_i_2_n_0\
    );
\axi_rdata[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000FF4F0040"
    )
        port map (
      I0 => sel0(0),
      I1 => \slv_reg2_high_reg_n_0_[2]\,
      I2 => sel0(2),
      I3 => sel0(1),
      I4 => \axi_rdata[2]_i_2_n_0\,
      I5 => \axi_araddr_reg_n_0_[5]\,
      O => \axi_rdata[2]_i_1_n_0\
    );
\axi_rdata[2]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"5510441011100010"
    )
        port map (
      I0 => sel0(2),
      I1 => sel0(0),
      I2 => \slv_reg0_reg_n_0_[2]\,
      I3 => sel0(1),
      I4 => \slv_reg2_low_reg_n_0_[2]\,
      I5 => \slv_reg3_reg_n_0_[2]\,
      O => \axi_rdata[2]_i_2_n_0\
    );
\axi_rdata[30]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000FF4F0040"
    )
        port map (
      I0 => sel0(0),
      I1 => \slv_reg2_high_reg_n_0_[30]\,
      I2 => sel0(2),
      I3 => sel0(1),
      I4 => \axi_rdata[30]_i_2_n_0\,
      I5 => \axi_araddr_reg_n_0_[5]\,
      O => \axi_rdata[30]_i_1_n_0\
    );
\axi_rdata[30]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"5510441011100010"
    )
        port map (
      I0 => sel0(2),
      I1 => sel0(0),
      I2 => \slv_reg0_reg_n_0_[30]\,
      I3 => sel0(1),
      I4 => \slv_reg2_low_reg_n_0_[30]\,
      I5 => \slv_reg3_reg_n_0_[30]\,
      O => \axi_rdata[30]_i_2_n_0\
    );
\axi_rdata[31]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0800"
    )
        port map (
      I0 => s00_axi_arvalid,
      I1 => s00_sq_rd_sel,
      I2 => axi_rvalid,
      I3 => axi_arready,
      O => slv_reg_rden
    );
\axi_rdata[31]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000FF4F0040"
    )
        port map (
      I0 => sel0(0),
      I1 => \slv_reg2_high_reg_n_0_[31]\,
      I2 => sel0(2),
      I3 => sel0(1),
      I4 => \axi_rdata[31]_i_3_n_0\,
      I5 => \axi_araddr_reg_n_0_[5]\,
      O => \axi_rdata[31]_i_2_n_0\
    );
\axi_rdata[31]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"5510441011100010"
    )
        port map (
      I0 => sel0(2),
      I1 => sel0(0),
      I2 => \slv_reg0_reg_n_0_[31]\,
      I3 => sel0(1),
      I4 => \slv_reg2_low_reg_n_0_[31]\,
      I5 => \slv_reg3_reg_n_0_[31]\,
      O => \axi_rdata[31]_i_3_n_0\
    );
\axi_rdata[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000FF4F0040"
    )
        port map (
      I0 => sel0(0),
      I1 => \slv_reg2_high_reg_n_0_[3]\,
      I2 => sel0(2),
      I3 => sel0(1),
      I4 => \axi_rdata[3]_i_2_n_0\,
      I5 => \axi_araddr_reg_n_0_[5]\,
      O => \axi_rdata[3]_i_1_n_0\
    );
\axi_rdata[3]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"5510441011100010"
    )
        port map (
      I0 => sel0(2),
      I1 => sel0(0),
      I2 => \slv_reg0_reg_n_0_[3]\,
      I3 => sel0(1),
      I4 => \slv_reg2_low_reg_n_0_[3]\,
      I5 => \slv_reg3_reg_n_0_[3]\,
      O => \axi_rdata[3]_i_2_n_0\
    );
\axi_rdata[4]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000FF4F0040"
    )
        port map (
      I0 => sel0(0),
      I1 => \slv_reg2_high_reg_n_0_[4]\,
      I2 => sel0(2),
      I3 => sel0(1),
      I4 => \axi_rdata[4]_i_2_n_0\,
      I5 => \axi_araddr_reg_n_0_[5]\,
      O => \axi_rdata[4]_i_1_n_0\
    );
\axi_rdata[4]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"5510441011100010"
    )
        port map (
      I0 => sel0(2),
      I1 => sel0(0),
      I2 => \slv_reg0_reg_n_0_[4]\,
      I3 => sel0(1),
      I4 => \slv_reg2_low_reg_n_0_[4]\,
      I5 => \slv_reg3_reg_n_0_[4]\,
      O => \axi_rdata[4]_i_2_n_0\
    );
\axi_rdata[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000FF4F0040"
    )
        port map (
      I0 => sel0(0),
      I1 => \slv_reg2_high_reg_n_0_[5]\,
      I2 => sel0(2),
      I3 => sel0(1),
      I4 => \axi_rdata[5]_i_2_n_0\,
      I5 => \axi_araddr_reg_n_0_[5]\,
      O => \axi_rdata[5]_i_1_n_0\
    );
\axi_rdata[5]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"5510441011100010"
    )
        port map (
      I0 => sel0(2),
      I1 => sel0(0),
      I2 => \slv_reg0_reg_n_0_[5]\,
      I3 => sel0(1),
      I4 => \slv_reg2_low_reg_n_0_[5]\,
      I5 => \slv_reg3_reg_n_0_[5]\,
      O => \axi_rdata[5]_i_2_n_0\
    );
\axi_rdata[6]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000FF4F0040"
    )
        port map (
      I0 => sel0(0),
      I1 => \slv_reg2_high_reg_n_0_[6]\,
      I2 => sel0(2),
      I3 => sel0(1),
      I4 => \axi_rdata[6]_i_2_n_0\,
      I5 => \axi_araddr_reg_n_0_[5]\,
      O => \axi_rdata[6]_i_1_n_0\
    );
\axi_rdata[6]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"5510441011100010"
    )
        port map (
      I0 => sel0(2),
      I1 => sel0(0),
      I2 => \slv_reg0_reg_n_0_[6]\,
      I3 => sel0(1),
      I4 => \slv_reg2_low_reg_n_0_[6]\,
      I5 => \slv_reg3_reg_n_0_[6]\,
      O => \axi_rdata[6]_i_2_n_0\
    );
\axi_rdata[7]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000FF4F0040"
    )
        port map (
      I0 => sel0(0),
      I1 => \slv_reg2_high_reg_n_0_[7]\,
      I2 => sel0(2),
      I3 => sel0(1),
      I4 => \axi_rdata[7]_i_2_n_0\,
      I5 => \axi_araddr_reg_n_0_[5]\,
      O => \axi_rdata[7]_i_1_n_0\
    );
\axi_rdata[7]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"5510441011100010"
    )
        port map (
      I0 => sel0(2),
      I1 => sel0(0),
      I2 => \slv_reg0_reg_n_0_[7]\,
      I3 => sel0(1),
      I4 => \slv_reg2_low_reg_n_0_[7]\,
      I5 => \slv_reg3_reg_n_0_[7]\,
      O => \axi_rdata[7]_i_2_n_0\
    );
\axi_rdata[8]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000FF4F0040"
    )
        port map (
      I0 => sel0(0),
      I1 => \slv_reg2_high_reg_n_0_[8]\,
      I2 => sel0(2),
      I3 => sel0(1),
      I4 => \axi_rdata[8]_i_2_n_0\,
      I5 => \axi_araddr_reg_n_0_[5]\,
      O => \axi_rdata[8]_i_1_n_0\
    );
\axi_rdata[8]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"5510441011100010"
    )
        port map (
      I0 => sel0(2),
      I1 => sel0(0),
      I2 => \slv_reg0_reg_n_0_[8]\,
      I3 => sel0(1),
      I4 => \slv_reg2_low_reg_n_0_[8]\,
      I5 => \slv_reg3_reg_n_0_[8]\,
      O => \axi_rdata[8]_i_2_n_0\
    );
\axi_rdata[9]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000FF4F0040"
    )
        port map (
      I0 => sel0(0),
      I1 => \slv_reg2_high_reg_n_0_[9]\,
      I2 => sel0(2),
      I3 => sel0(1),
      I4 => \axi_rdata[9]_i_2_n_0\,
      I5 => \axi_araddr_reg_n_0_[5]\,
      O => \axi_rdata[9]_i_1_n_0\
    );
\axi_rdata[9]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"5510441011100010"
    )
        port map (
      I0 => sel0(2),
      I1 => sel0(0),
      I2 => \slv_reg0_reg_n_0_[9]\,
      I3 => sel0(1),
      I4 => \slv_reg2_low_reg_n_0_[9]\,
      I5 => \slv_reg3_reg_n_0_[9]\,
      O => \axi_rdata[9]_i_2_n_0\
    );
\axi_rdata_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => slv_reg_rden,
      D => \axi_rdata[0]_i_1_n_0\,
      Q => axi_rdata(0),
      R => \^sr\(0)
    );
\axi_rdata_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => slv_reg_rden,
      D => \axi_rdata[10]_i_1_n_0\,
      Q => axi_rdata(10),
      R => \^sr\(0)
    );
\axi_rdata_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => slv_reg_rden,
      D => \axi_rdata[11]_i_1_n_0\,
      Q => axi_rdata(11),
      R => \^sr\(0)
    );
\axi_rdata_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => slv_reg_rden,
      D => \axi_rdata[12]_i_1_n_0\,
      Q => axi_rdata(12),
      R => \^sr\(0)
    );
\axi_rdata_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => slv_reg_rden,
      D => \axi_rdata[13]_i_1_n_0\,
      Q => axi_rdata(13),
      R => \^sr\(0)
    );
\axi_rdata_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => slv_reg_rden,
      D => \axi_rdata[14]_i_1_n_0\,
      Q => axi_rdata(14),
      R => \^sr\(0)
    );
\axi_rdata_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => slv_reg_rden,
      D => \axi_rdata[15]_i_1_n_0\,
      Q => axi_rdata(15),
      R => \^sr\(0)
    );
\axi_rdata_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => slv_reg_rden,
      D => \axi_rdata[16]_i_1_n_0\,
      Q => axi_rdata(16),
      R => \^sr\(0)
    );
\axi_rdata_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => slv_reg_rden,
      D => \axi_rdata[17]_i_1_n_0\,
      Q => axi_rdata(17),
      R => \^sr\(0)
    );
\axi_rdata_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => slv_reg_rden,
      D => \axi_rdata[18]_i_1_n_0\,
      Q => axi_rdata(18),
      R => \^sr\(0)
    );
\axi_rdata_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => slv_reg_rden,
      D => \axi_rdata[19]_i_1_n_0\,
      Q => axi_rdata(19),
      R => \^sr\(0)
    );
\axi_rdata_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => slv_reg_rden,
      D => \axi_rdata[1]_i_1_n_0\,
      Q => axi_rdata(1),
      R => \^sr\(0)
    );
\axi_rdata_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => slv_reg_rden,
      D => \axi_rdata[20]_i_1_n_0\,
      Q => axi_rdata(20),
      R => \^sr\(0)
    );
\axi_rdata_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => slv_reg_rden,
      D => \axi_rdata[21]_i_1_n_0\,
      Q => axi_rdata(21),
      R => \^sr\(0)
    );
\axi_rdata_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => slv_reg_rden,
      D => \axi_rdata[22]_i_1_n_0\,
      Q => axi_rdata(22),
      R => \^sr\(0)
    );
\axi_rdata_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => slv_reg_rden,
      D => \axi_rdata[23]_i_1_n_0\,
      Q => axi_rdata(23),
      R => \^sr\(0)
    );
\axi_rdata_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => slv_reg_rden,
      D => \axi_rdata[24]_i_1_n_0\,
      Q => axi_rdata(24),
      R => \^sr\(0)
    );
\axi_rdata_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => slv_reg_rden,
      D => \axi_rdata[25]_i_1_n_0\,
      Q => axi_rdata(25),
      R => \^sr\(0)
    );
\axi_rdata_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => slv_reg_rden,
      D => \axi_rdata[26]_i_1_n_0\,
      Q => axi_rdata(26),
      R => \^sr\(0)
    );
\axi_rdata_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => slv_reg_rden,
      D => \axi_rdata[27]_i_1_n_0\,
      Q => axi_rdata(27),
      R => \^sr\(0)
    );
\axi_rdata_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => slv_reg_rden,
      D => \axi_rdata[28]_i_1_n_0\,
      Q => axi_rdata(28),
      R => \^sr\(0)
    );
\axi_rdata_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => slv_reg_rden,
      D => \axi_rdata[29]_i_1_n_0\,
      Q => axi_rdata(29),
      R => \^sr\(0)
    );
\axi_rdata_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => slv_reg_rden,
      D => \axi_rdata[2]_i_1_n_0\,
      Q => axi_rdata(2),
      R => \^sr\(0)
    );
\axi_rdata_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => slv_reg_rden,
      D => \axi_rdata[30]_i_1_n_0\,
      Q => axi_rdata(30),
      R => \^sr\(0)
    );
\axi_rdata_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => slv_reg_rden,
      D => \axi_rdata[31]_i_2_n_0\,
      Q => axi_rdata(31),
      R => \^sr\(0)
    );
\axi_rdata_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => slv_reg_rden,
      D => \axi_rdata[3]_i_1_n_0\,
      Q => axi_rdata(3),
      R => \^sr\(0)
    );
\axi_rdata_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => slv_reg_rden,
      D => \axi_rdata[4]_i_1_n_0\,
      Q => axi_rdata(4),
      R => \^sr\(0)
    );
\axi_rdata_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => slv_reg_rden,
      D => \axi_rdata[5]_i_1_n_0\,
      Q => axi_rdata(5),
      R => \^sr\(0)
    );
\axi_rdata_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => slv_reg_rden,
      D => \axi_rdata[6]_i_1_n_0\,
      Q => axi_rdata(6),
      R => \^sr\(0)
    );
\axi_rdata_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => slv_reg_rden,
      D => \axi_rdata[7]_i_1_n_0\,
      Q => axi_rdata(7),
      R => \^sr\(0)
    );
\axi_rdata_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => slv_reg_rden,
      D => \axi_rdata[8]_i_1_n_0\,
      Q => axi_rdata(8),
      R => \^sr\(0)
    );
\axi_rdata_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => slv_reg_rden,
      D => \axi_rdata[9]_i_1_n_0\,
      Q => axi_rdata(9),
      R => \^sr\(0)
    );
axi_rvalid_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0800F8F0"
    )
        port map (
      I0 => s00_axi_arvalid,
      I1 => s00_sq_rd_sel,
      I2 => axi_rvalid,
      I3 => axi_arready,
      I4 => s00_axi_rready,
      O => axi_rvalid_i_1_n_0
    );
axi_rvalid_reg: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => axi_rvalid_i_1_n_0,
      Q => axi_rvalid,
      R => \^sr\(0)
    );
\axi_s01_araddr_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => axi_s01_arready0,
      D => s01_axi_araddr(0),
      Q => axi_s01_araddr(2),
      R => \^sr\(0)
    );
\axi_s01_araddr_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => axi_s01_arready0,
      D => s01_axi_araddr(1),
      Q => axi_s01_araddr(3),
      R => \^sr\(0)
    );
\axi_s01_araddr_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => axi_s01_arready0,
      D => s01_axi_araddr(2),
      Q => axi_s01_araddr(4),
      R => \^sr\(0)
    );
\axi_s01_araddr_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => axi_s01_arready0,
      D => s01_axi_araddr(3),
      Q => axi_s01_araddr(5),
      R => \^sr\(0)
    );
\axi_s01_arready_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"08"
    )
        port map (
      I0 => s01_axi_arvalid,
      I1 => s01_sq_rd_sel,
      I2 => axi_s01_arready,
      O => axi_s01_arready0
    );
axi_s01_arready_reg: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => axi_s01_arready0,
      Q => axi_s01_arready,
      R => \^sr\(0)
    );
\axi_s01_awready_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"20"
    )
        port map (
      I0 => \axi_s01_wready_i_2__0_n_0\,
      I1 => axi_s01_awready,
      I2 => aw_s01_en_reg_n_0,
      O => axi_s01_awready0
    );
axi_s01_awready_reg: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => axi_s01_awready0,
      Q => axi_s01_awready,
      R => \^sr\(0)
    );
\axi_s01_bvalid_i_1__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"74444444"
    )
        port map (
      I0 => s01_axi_bready,
      I1 => axi_s01_bvalid,
      I2 => axi_s01_awready,
      I3 => \axi_s01_wready_i_2__0_n_0\,
      I4 => axi_s01_wready,
      O => \axi_s01_bvalid_i_1__0_n_0\
    );
axi_s01_bvalid_reg: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \axi_s01_bvalid_i_1__0_n_0\,
      Q => axi_s01_bvalid,
      R => \^sr\(0)
    );
\axi_s01_rdata[0]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000000000F4F0040"
    )
        port map (
      I0 => axi_s01_araddr(2),
      I1 => \slv_reg2_high_reg_n_0_[0]\,
      I2 => axi_s01_araddr(4),
      I3 => axi_s01_araddr(3),
      I4 => \axi_s01_rdata[0]_i_2__0_n_0\,
      I5 => axi_s01_araddr(5),
      O => \axi_s01_rdata[0]_i_1__0_n_0\
    );
\axi_s01_rdata[0]_i_2__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \slv_reg3_reg_n_0_[0]\,
      I1 => \slv_reg2_low_reg_n_0_[0]\,
      I2 => axi_s01_araddr(3),
      I3 => \slv_reg1_reg_n_0_[0]\,
      I4 => axi_s01_araddr(2),
      I5 => \slv_reg0_reg_n_0_[0]\,
      O => \axi_s01_rdata[0]_i_2__0_n_0\
    );
\axi_s01_rdata[10]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000FF4F0040"
    )
        port map (
      I0 => axi_s01_araddr(2),
      I1 => \slv_reg2_high_reg_n_0_[10]\,
      I2 => axi_s01_araddr(4),
      I3 => axi_s01_araddr(3),
      I4 => \axi_s01_rdata[10]_i_2__0_n_0\,
      I5 => axi_s01_araddr(5),
      O => \axi_s01_rdata[10]_i_1__0_n_0\
    );
\axi_s01_rdata[10]_i_2__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"5510441011100010"
    )
        port map (
      I0 => axi_s01_araddr(4),
      I1 => axi_s01_araddr(2),
      I2 => \slv_reg0_reg_n_0_[10]\,
      I3 => axi_s01_araddr(3),
      I4 => \slv_reg2_low_reg_n_0_[10]\,
      I5 => \slv_reg3_reg_n_0_[10]\,
      O => \axi_s01_rdata[10]_i_2__0_n_0\
    );
\axi_s01_rdata[11]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000FF4F0040"
    )
        port map (
      I0 => axi_s01_araddr(2),
      I1 => \slv_reg2_high_reg_n_0_[11]\,
      I2 => axi_s01_araddr(4),
      I3 => axi_s01_araddr(3),
      I4 => \axi_s01_rdata[11]_i_2__0_n_0\,
      I5 => axi_s01_araddr(5),
      O => \axi_s01_rdata[11]_i_1__0_n_0\
    );
\axi_s01_rdata[11]_i_2__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"5510441011100010"
    )
        port map (
      I0 => axi_s01_araddr(4),
      I1 => axi_s01_araddr(2),
      I2 => \slv_reg0_reg_n_0_[11]\,
      I3 => axi_s01_araddr(3),
      I4 => \slv_reg2_low_reg_n_0_[11]\,
      I5 => \slv_reg3_reg_n_0_[11]\,
      O => \axi_s01_rdata[11]_i_2__0_n_0\
    );
\axi_s01_rdata[12]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000FF4F0040"
    )
        port map (
      I0 => axi_s01_araddr(2),
      I1 => \slv_reg2_high_reg_n_0_[12]\,
      I2 => axi_s01_araddr(4),
      I3 => axi_s01_araddr(3),
      I4 => \axi_s01_rdata[12]_i_2__0_n_0\,
      I5 => axi_s01_araddr(5),
      O => \axi_s01_rdata[12]_i_1__0_n_0\
    );
\axi_s01_rdata[12]_i_2__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"5510441011100010"
    )
        port map (
      I0 => axi_s01_araddr(4),
      I1 => axi_s01_araddr(2),
      I2 => \slv_reg0_reg_n_0_[12]\,
      I3 => axi_s01_araddr(3),
      I4 => \slv_reg2_low_reg_n_0_[12]\,
      I5 => \slv_reg3_reg_n_0_[12]\,
      O => \axi_s01_rdata[12]_i_2__0_n_0\
    );
\axi_s01_rdata[13]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000FF4F0040"
    )
        port map (
      I0 => axi_s01_araddr(2),
      I1 => \slv_reg2_high_reg_n_0_[13]\,
      I2 => axi_s01_araddr(4),
      I3 => axi_s01_araddr(3),
      I4 => \axi_s01_rdata[13]_i_2__0_n_0\,
      I5 => axi_s01_araddr(5),
      O => \axi_s01_rdata[13]_i_1__0_n_0\
    );
\axi_s01_rdata[13]_i_2__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"5510441011100010"
    )
        port map (
      I0 => axi_s01_araddr(4),
      I1 => axi_s01_araddr(2),
      I2 => \slv_reg0_reg_n_0_[13]\,
      I3 => axi_s01_araddr(3),
      I4 => \slv_reg2_low_reg_n_0_[13]\,
      I5 => \slv_reg3_reg_n_0_[13]\,
      O => \axi_s01_rdata[13]_i_2__0_n_0\
    );
\axi_s01_rdata[14]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000FF4F0040"
    )
        port map (
      I0 => axi_s01_araddr(2),
      I1 => \slv_reg2_high_reg_n_0_[14]\,
      I2 => axi_s01_araddr(4),
      I3 => axi_s01_araddr(3),
      I4 => \axi_s01_rdata[14]_i_2__0_n_0\,
      I5 => axi_s01_araddr(5),
      O => \axi_s01_rdata[14]_i_1__0_n_0\
    );
\axi_s01_rdata[14]_i_2__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"5510441011100010"
    )
        port map (
      I0 => axi_s01_araddr(4),
      I1 => axi_s01_araddr(2),
      I2 => \slv_reg0_reg_n_0_[14]\,
      I3 => axi_s01_araddr(3),
      I4 => \slv_reg2_low_reg_n_0_[14]\,
      I5 => \slv_reg3_reg_n_0_[14]\,
      O => \axi_s01_rdata[14]_i_2__0_n_0\
    );
\axi_s01_rdata[15]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000FF4F0040"
    )
        port map (
      I0 => axi_s01_araddr(2),
      I1 => \slv_reg2_high_reg_n_0_[15]\,
      I2 => axi_s01_araddr(4),
      I3 => axi_s01_araddr(3),
      I4 => \axi_s01_rdata[15]_i_2__0_n_0\,
      I5 => axi_s01_araddr(5),
      O => \axi_s01_rdata[15]_i_1__0_n_0\
    );
\axi_s01_rdata[15]_i_2__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"5510441011100010"
    )
        port map (
      I0 => axi_s01_araddr(4),
      I1 => axi_s01_araddr(2),
      I2 => \slv_reg0_reg_n_0_[15]\,
      I3 => axi_s01_araddr(3),
      I4 => \slv_reg2_low_reg_n_0_[15]\,
      I5 => \slv_reg3_reg_n_0_[15]\,
      O => \axi_s01_rdata[15]_i_2__0_n_0\
    );
\axi_s01_rdata[16]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000FF4F0040"
    )
        port map (
      I0 => axi_s01_araddr(2),
      I1 => \slv_reg2_high_reg_n_0_[16]\,
      I2 => axi_s01_araddr(4),
      I3 => axi_s01_araddr(3),
      I4 => \axi_s01_rdata[16]_i_2__0_n_0\,
      I5 => axi_s01_araddr(5),
      O => \axi_s01_rdata[16]_i_1__0_n_0\
    );
\axi_s01_rdata[16]_i_2__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"5510441011100010"
    )
        port map (
      I0 => axi_s01_araddr(4),
      I1 => axi_s01_araddr(2),
      I2 => \slv_reg0_reg_n_0_[16]\,
      I3 => axi_s01_araddr(3),
      I4 => \slv_reg2_low_reg_n_0_[16]\,
      I5 => \slv_reg3_reg_n_0_[16]\,
      O => \axi_s01_rdata[16]_i_2__0_n_0\
    );
\axi_s01_rdata[17]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000FF4F0040"
    )
        port map (
      I0 => axi_s01_araddr(2),
      I1 => \slv_reg2_high_reg_n_0_[17]\,
      I2 => axi_s01_araddr(4),
      I3 => axi_s01_araddr(3),
      I4 => \axi_s01_rdata[17]_i_2__0_n_0\,
      I5 => axi_s01_araddr(5),
      O => \axi_s01_rdata[17]_i_1__0_n_0\
    );
\axi_s01_rdata[17]_i_2__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"5510441011100010"
    )
        port map (
      I0 => axi_s01_araddr(4),
      I1 => axi_s01_araddr(2),
      I2 => \slv_reg0_reg_n_0_[17]\,
      I3 => axi_s01_araddr(3),
      I4 => \slv_reg2_low_reg_n_0_[17]\,
      I5 => \slv_reg3_reg_n_0_[17]\,
      O => \axi_s01_rdata[17]_i_2__0_n_0\
    );
\axi_s01_rdata[18]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000FF4F0040"
    )
        port map (
      I0 => axi_s01_araddr(2),
      I1 => \slv_reg2_high_reg_n_0_[18]\,
      I2 => axi_s01_araddr(4),
      I3 => axi_s01_araddr(3),
      I4 => \axi_s01_rdata[18]_i_2__0_n_0\,
      I5 => axi_s01_araddr(5),
      O => \axi_s01_rdata[18]_i_1__0_n_0\
    );
\axi_s01_rdata[18]_i_2__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"5510441011100010"
    )
        port map (
      I0 => axi_s01_araddr(4),
      I1 => axi_s01_araddr(2),
      I2 => \slv_reg0_reg_n_0_[18]\,
      I3 => axi_s01_araddr(3),
      I4 => \slv_reg2_low_reg_n_0_[18]\,
      I5 => \slv_reg3_reg_n_0_[18]\,
      O => \axi_s01_rdata[18]_i_2__0_n_0\
    );
\axi_s01_rdata[19]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000FF4F0040"
    )
        port map (
      I0 => axi_s01_araddr(2),
      I1 => \slv_reg2_high_reg_n_0_[19]\,
      I2 => axi_s01_araddr(4),
      I3 => axi_s01_araddr(3),
      I4 => \axi_s01_rdata[19]_i_2__0_n_0\,
      I5 => axi_s01_araddr(5),
      O => \axi_s01_rdata[19]_i_1__0_n_0\
    );
\axi_s01_rdata[19]_i_2__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"5510441011100010"
    )
        port map (
      I0 => axi_s01_araddr(4),
      I1 => axi_s01_araddr(2),
      I2 => \slv_reg0_reg_n_0_[19]\,
      I3 => axi_s01_araddr(3),
      I4 => \slv_reg2_low_reg_n_0_[19]\,
      I5 => \slv_reg3_reg_n_0_[19]\,
      O => \axi_s01_rdata[19]_i_2__0_n_0\
    );
\axi_s01_rdata[1]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000FF4F0040"
    )
        port map (
      I0 => axi_s01_araddr(2),
      I1 => \slv_reg2_high_reg_n_0_[1]\,
      I2 => axi_s01_araddr(4),
      I3 => axi_s01_araddr(3),
      I4 => \axi_s01_rdata[1]_i_2__0_n_0\,
      I5 => axi_s01_araddr(5),
      O => \axi_s01_rdata[1]_i_1__0_n_0\
    );
\axi_s01_rdata[1]_i_2__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"5510441011100010"
    )
        port map (
      I0 => axi_s01_araddr(4),
      I1 => axi_s01_araddr(2),
      I2 => \slv_reg0_reg_n_0_[1]\,
      I3 => axi_s01_araddr(3),
      I4 => \slv_reg2_low_reg_n_0_[1]\,
      I5 => \slv_reg3_reg_n_0_[1]\,
      O => \axi_s01_rdata[1]_i_2__0_n_0\
    );
\axi_s01_rdata[20]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000FF4F0040"
    )
        port map (
      I0 => axi_s01_araddr(2),
      I1 => \slv_reg2_high_reg_n_0_[20]\,
      I2 => axi_s01_araddr(4),
      I3 => axi_s01_araddr(3),
      I4 => \axi_s01_rdata[20]_i_2__0_n_0\,
      I5 => axi_s01_araddr(5),
      O => \axi_s01_rdata[20]_i_1__0_n_0\
    );
\axi_s01_rdata[20]_i_2__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"5510441011100010"
    )
        port map (
      I0 => axi_s01_araddr(4),
      I1 => axi_s01_araddr(2),
      I2 => \slv_reg0_reg_n_0_[20]\,
      I3 => axi_s01_araddr(3),
      I4 => \slv_reg2_low_reg_n_0_[20]\,
      I5 => \slv_reg3_reg_n_0_[20]\,
      O => \axi_s01_rdata[20]_i_2__0_n_0\
    );
\axi_s01_rdata[21]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000FF4F0040"
    )
        port map (
      I0 => axi_s01_araddr(2),
      I1 => \slv_reg2_high_reg_n_0_[21]\,
      I2 => axi_s01_araddr(4),
      I3 => axi_s01_araddr(3),
      I4 => \axi_s01_rdata[21]_i_2__0_n_0\,
      I5 => axi_s01_araddr(5),
      O => \axi_s01_rdata[21]_i_1__0_n_0\
    );
\axi_s01_rdata[21]_i_2__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"5510441011100010"
    )
        port map (
      I0 => axi_s01_araddr(4),
      I1 => axi_s01_araddr(2),
      I2 => \slv_reg0_reg_n_0_[21]\,
      I3 => axi_s01_araddr(3),
      I4 => \slv_reg2_low_reg_n_0_[21]\,
      I5 => \slv_reg3_reg_n_0_[21]\,
      O => \axi_s01_rdata[21]_i_2__0_n_0\
    );
\axi_s01_rdata[22]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000FF4F0040"
    )
        port map (
      I0 => axi_s01_araddr(2),
      I1 => \slv_reg2_high_reg_n_0_[22]\,
      I2 => axi_s01_araddr(4),
      I3 => axi_s01_araddr(3),
      I4 => \axi_s01_rdata[22]_i_2__0_n_0\,
      I5 => axi_s01_araddr(5),
      O => \axi_s01_rdata[22]_i_1__0_n_0\
    );
\axi_s01_rdata[22]_i_2__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"5510441011100010"
    )
        port map (
      I0 => axi_s01_araddr(4),
      I1 => axi_s01_araddr(2),
      I2 => \slv_reg0_reg_n_0_[22]\,
      I3 => axi_s01_araddr(3),
      I4 => \slv_reg2_low_reg_n_0_[22]\,
      I5 => \slv_reg3_reg_n_0_[22]\,
      O => \axi_s01_rdata[22]_i_2__0_n_0\
    );
\axi_s01_rdata[23]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000FF4F0040"
    )
        port map (
      I0 => axi_s01_araddr(2),
      I1 => \slv_reg2_high_reg_n_0_[23]\,
      I2 => axi_s01_araddr(4),
      I3 => axi_s01_araddr(3),
      I4 => \axi_s01_rdata[23]_i_2__0_n_0\,
      I5 => axi_s01_araddr(5),
      O => \axi_s01_rdata[23]_i_1__0_n_0\
    );
\axi_s01_rdata[23]_i_2__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"5510441011100010"
    )
        port map (
      I0 => axi_s01_araddr(4),
      I1 => axi_s01_araddr(2),
      I2 => \slv_reg0_reg_n_0_[23]\,
      I3 => axi_s01_araddr(3),
      I4 => \slv_reg2_low_reg_n_0_[23]\,
      I5 => \slv_reg3_reg_n_0_[23]\,
      O => \axi_s01_rdata[23]_i_2__0_n_0\
    );
\axi_s01_rdata[24]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000FF4F0040"
    )
        port map (
      I0 => axi_s01_araddr(2),
      I1 => \slv_reg2_high_reg_n_0_[24]\,
      I2 => axi_s01_araddr(4),
      I3 => axi_s01_araddr(3),
      I4 => \axi_s01_rdata[24]_i_2__0_n_0\,
      I5 => axi_s01_araddr(5),
      O => \axi_s01_rdata[24]_i_1__0_n_0\
    );
\axi_s01_rdata[24]_i_2__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"5510441011100010"
    )
        port map (
      I0 => axi_s01_araddr(4),
      I1 => axi_s01_araddr(2),
      I2 => \slv_reg0_reg_n_0_[24]\,
      I3 => axi_s01_araddr(3),
      I4 => \slv_reg2_low_reg_n_0_[24]\,
      I5 => \slv_reg3_reg_n_0_[24]\,
      O => \axi_s01_rdata[24]_i_2__0_n_0\
    );
\axi_s01_rdata[25]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000FF4F0040"
    )
        port map (
      I0 => axi_s01_araddr(2),
      I1 => \slv_reg2_high_reg_n_0_[25]\,
      I2 => axi_s01_araddr(4),
      I3 => axi_s01_araddr(3),
      I4 => \axi_s01_rdata[25]_i_2__0_n_0\,
      I5 => axi_s01_araddr(5),
      O => \axi_s01_rdata[25]_i_1__0_n_0\
    );
\axi_s01_rdata[25]_i_2__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"5510441011100010"
    )
        port map (
      I0 => axi_s01_araddr(4),
      I1 => axi_s01_araddr(2),
      I2 => \slv_reg0_reg_n_0_[25]\,
      I3 => axi_s01_araddr(3),
      I4 => \slv_reg2_low_reg_n_0_[25]\,
      I5 => \slv_reg3_reg_n_0_[25]\,
      O => \axi_s01_rdata[25]_i_2__0_n_0\
    );
\axi_s01_rdata[26]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000FF4F0040"
    )
        port map (
      I0 => axi_s01_araddr(2),
      I1 => \slv_reg2_high_reg_n_0_[26]\,
      I2 => axi_s01_araddr(4),
      I3 => axi_s01_araddr(3),
      I4 => \axi_s01_rdata[26]_i_2__0_n_0\,
      I5 => axi_s01_araddr(5),
      O => \axi_s01_rdata[26]_i_1__0_n_0\
    );
\axi_s01_rdata[26]_i_2__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"5510441011100010"
    )
        port map (
      I0 => axi_s01_araddr(4),
      I1 => axi_s01_araddr(2),
      I2 => \slv_reg0_reg_n_0_[26]\,
      I3 => axi_s01_araddr(3),
      I4 => \slv_reg2_low_reg_n_0_[26]\,
      I5 => \slv_reg3_reg_n_0_[26]\,
      O => \axi_s01_rdata[26]_i_2__0_n_0\
    );
\axi_s01_rdata[27]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000FF4F0040"
    )
        port map (
      I0 => axi_s01_araddr(2),
      I1 => \slv_reg2_high_reg_n_0_[27]\,
      I2 => axi_s01_araddr(4),
      I3 => axi_s01_araddr(3),
      I4 => \axi_s01_rdata[27]_i_2__0_n_0\,
      I5 => axi_s01_araddr(5),
      O => \axi_s01_rdata[27]_i_1__0_n_0\
    );
\axi_s01_rdata[27]_i_2__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"5510441011100010"
    )
        port map (
      I0 => axi_s01_araddr(4),
      I1 => axi_s01_araddr(2),
      I2 => \slv_reg0_reg_n_0_[27]\,
      I3 => axi_s01_araddr(3),
      I4 => \slv_reg2_low_reg_n_0_[27]\,
      I5 => \slv_reg3_reg_n_0_[27]\,
      O => \axi_s01_rdata[27]_i_2__0_n_0\
    );
\axi_s01_rdata[28]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000FF4F0040"
    )
        port map (
      I0 => axi_s01_araddr(2),
      I1 => \slv_reg2_high_reg_n_0_[28]\,
      I2 => axi_s01_araddr(4),
      I3 => axi_s01_araddr(3),
      I4 => \axi_s01_rdata[28]_i_2__0_n_0\,
      I5 => axi_s01_araddr(5),
      O => \axi_s01_rdata[28]_i_1__0_n_0\
    );
\axi_s01_rdata[28]_i_2__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"5510441011100010"
    )
        port map (
      I0 => axi_s01_araddr(4),
      I1 => axi_s01_araddr(2),
      I2 => \slv_reg0_reg_n_0_[28]\,
      I3 => axi_s01_araddr(3),
      I4 => \slv_reg2_low_reg_n_0_[28]\,
      I5 => \slv_reg3_reg_n_0_[28]\,
      O => \axi_s01_rdata[28]_i_2__0_n_0\
    );
\axi_s01_rdata[29]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000FF4F0040"
    )
        port map (
      I0 => axi_s01_araddr(2),
      I1 => \slv_reg2_high_reg_n_0_[29]\,
      I2 => axi_s01_araddr(4),
      I3 => axi_s01_araddr(3),
      I4 => \axi_s01_rdata[29]_i_2__0_n_0\,
      I5 => axi_s01_araddr(5),
      O => \axi_s01_rdata[29]_i_1__0_n_0\
    );
\axi_s01_rdata[29]_i_2__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"5510441011100010"
    )
        port map (
      I0 => axi_s01_araddr(4),
      I1 => axi_s01_araddr(2),
      I2 => \slv_reg0_reg_n_0_[29]\,
      I3 => axi_s01_araddr(3),
      I4 => \slv_reg2_low_reg_n_0_[29]\,
      I5 => \slv_reg3_reg_n_0_[29]\,
      O => \axi_s01_rdata[29]_i_2__0_n_0\
    );
\axi_s01_rdata[2]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000FF4F0040"
    )
        port map (
      I0 => axi_s01_araddr(2),
      I1 => \slv_reg2_high_reg_n_0_[2]\,
      I2 => axi_s01_araddr(4),
      I3 => axi_s01_araddr(3),
      I4 => \axi_s01_rdata[2]_i_2__0_n_0\,
      I5 => axi_s01_araddr(5),
      O => \axi_s01_rdata[2]_i_1__0_n_0\
    );
\axi_s01_rdata[2]_i_2__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"5510441011100010"
    )
        port map (
      I0 => axi_s01_araddr(4),
      I1 => axi_s01_araddr(2),
      I2 => \slv_reg0_reg_n_0_[2]\,
      I3 => axi_s01_araddr(3),
      I4 => \slv_reg2_low_reg_n_0_[2]\,
      I5 => \slv_reg3_reg_n_0_[2]\,
      O => \axi_s01_rdata[2]_i_2__0_n_0\
    );
\axi_s01_rdata[30]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000FF4F0040"
    )
        port map (
      I0 => axi_s01_araddr(2),
      I1 => \slv_reg2_high_reg_n_0_[30]\,
      I2 => axi_s01_araddr(4),
      I3 => axi_s01_araddr(3),
      I4 => \axi_s01_rdata[30]_i_2__0_n_0\,
      I5 => axi_s01_araddr(5),
      O => \axi_s01_rdata[30]_i_1__0_n_0\
    );
\axi_s01_rdata[30]_i_2__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"5510441011100010"
    )
        port map (
      I0 => axi_s01_araddr(4),
      I1 => axi_s01_araddr(2),
      I2 => \slv_reg0_reg_n_0_[30]\,
      I3 => axi_s01_araddr(3),
      I4 => \slv_reg2_low_reg_n_0_[30]\,
      I5 => \slv_reg3_reg_n_0_[30]\,
      O => \axi_s01_rdata[30]_i_2__0_n_0\
    );
\axi_s01_rdata[31]_i_1__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0800"
    )
        port map (
      I0 => s01_axi_arvalid,
      I1 => s01_sq_rd_sel,
      I2 => axi_s01_rvalid,
      I3 => axi_s01_arready,
      O => slv_reg_s01_rden
    );
\axi_s01_rdata[31]_i_2__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000FF4F0040"
    )
        port map (
      I0 => axi_s01_araddr(2),
      I1 => \slv_reg2_high_reg_n_0_[31]\,
      I2 => axi_s01_araddr(4),
      I3 => axi_s01_araddr(3),
      I4 => \axi_s01_rdata[31]_i_3__0_n_0\,
      I5 => axi_s01_araddr(5),
      O => \axi_s01_rdata[31]_i_2__0_n_0\
    );
\axi_s01_rdata[31]_i_3__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"5510441011100010"
    )
        port map (
      I0 => axi_s01_araddr(4),
      I1 => axi_s01_araddr(2),
      I2 => \slv_reg0_reg_n_0_[31]\,
      I3 => axi_s01_araddr(3),
      I4 => \slv_reg2_low_reg_n_0_[31]\,
      I5 => \slv_reg3_reg_n_0_[31]\,
      O => \axi_s01_rdata[31]_i_3__0_n_0\
    );
\axi_s01_rdata[3]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000FF4F0040"
    )
        port map (
      I0 => axi_s01_araddr(2),
      I1 => \slv_reg2_high_reg_n_0_[3]\,
      I2 => axi_s01_araddr(4),
      I3 => axi_s01_araddr(3),
      I4 => \axi_s01_rdata[3]_i_2__0_n_0\,
      I5 => axi_s01_araddr(5),
      O => \axi_s01_rdata[3]_i_1__0_n_0\
    );
\axi_s01_rdata[3]_i_2__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"5510441011100010"
    )
        port map (
      I0 => axi_s01_araddr(4),
      I1 => axi_s01_araddr(2),
      I2 => \slv_reg0_reg_n_0_[3]\,
      I3 => axi_s01_araddr(3),
      I4 => \slv_reg2_low_reg_n_0_[3]\,
      I5 => \slv_reg3_reg_n_0_[3]\,
      O => \axi_s01_rdata[3]_i_2__0_n_0\
    );
\axi_s01_rdata[4]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000FF4F0040"
    )
        port map (
      I0 => axi_s01_araddr(2),
      I1 => \slv_reg2_high_reg_n_0_[4]\,
      I2 => axi_s01_araddr(4),
      I3 => axi_s01_araddr(3),
      I4 => \axi_s01_rdata[4]_i_2__0_n_0\,
      I5 => axi_s01_araddr(5),
      O => \axi_s01_rdata[4]_i_1__0_n_0\
    );
\axi_s01_rdata[4]_i_2__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"5510441011100010"
    )
        port map (
      I0 => axi_s01_araddr(4),
      I1 => axi_s01_araddr(2),
      I2 => \slv_reg0_reg_n_0_[4]\,
      I3 => axi_s01_araddr(3),
      I4 => \slv_reg2_low_reg_n_0_[4]\,
      I5 => \slv_reg3_reg_n_0_[4]\,
      O => \axi_s01_rdata[4]_i_2__0_n_0\
    );
\axi_s01_rdata[5]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000FF4F0040"
    )
        port map (
      I0 => axi_s01_araddr(2),
      I1 => \slv_reg2_high_reg_n_0_[5]\,
      I2 => axi_s01_araddr(4),
      I3 => axi_s01_araddr(3),
      I4 => \axi_s01_rdata[5]_i_2__0_n_0\,
      I5 => axi_s01_araddr(5),
      O => \axi_s01_rdata[5]_i_1__0_n_0\
    );
\axi_s01_rdata[5]_i_2__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"5510441011100010"
    )
        port map (
      I0 => axi_s01_araddr(4),
      I1 => axi_s01_araddr(2),
      I2 => \slv_reg0_reg_n_0_[5]\,
      I3 => axi_s01_araddr(3),
      I4 => \slv_reg2_low_reg_n_0_[5]\,
      I5 => \slv_reg3_reg_n_0_[5]\,
      O => \axi_s01_rdata[5]_i_2__0_n_0\
    );
\axi_s01_rdata[6]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000FF4F0040"
    )
        port map (
      I0 => axi_s01_araddr(2),
      I1 => \slv_reg2_high_reg_n_0_[6]\,
      I2 => axi_s01_araddr(4),
      I3 => axi_s01_araddr(3),
      I4 => \axi_s01_rdata[6]_i_2__0_n_0\,
      I5 => axi_s01_araddr(5),
      O => \axi_s01_rdata[6]_i_1__0_n_0\
    );
\axi_s01_rdata[6]_i_2__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"5510441011100010"
    )
        port map (
      I0 => axi_s01_araddr(4),
      I1 => axi_s01_araddr(2),
      I2 => \slv_reg0_reg_n_0_[6]\,
      I3 => axi_s01_araddr(3),
      I4 => \slv_reg2_low_reg_n_0_[6]\,
      I5 => \slv_reg3_reg_n_0_[6]\,
      O => \axi_s01_rdata[6]_i_2__0_n_0\
    );
\axi_s01_rdata[7]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000FF4F0040"
    )
        port map (
      I0 => axi_s01_araddr(2),
      I1 => \slv_reg2_high_reg_n_0_[7]\,
      I2 => axi_s01_araddr(4),
      I3 => axi_s01_araddr(3),
      I4 => \axi_s01_rdata[7]_i_2__0_n_0\,
      I5 => axi_s01_araddr(5),
      O => \axi_s01_rdata[7]_i_1__0_n_0\
    );
\axi_s01_rdata[7]_i_2__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"5510441011100010"
    )
        port map (
      I0 => axi_s01_araddr(4),
      I1 => axi_s01_araddr(2),
      I2 => \slv_reg0_reg_n_0_[7]\,
      I3 => axi_s01_araddr(3),
      I4 => \slv_reg2_low_reg_n_0_[7]\,
      I5 => \slv_reg3_reg_n_0_[7]\,
      O => \axi_s01_rdata[7]_i_2__0_n_0\
    );
\axi_s01_rdata[8]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000FF4F0040"
    )
        port map (
      I0 => axi_s01_araddr(2),
      I1 => \slv_reg2_high_reg_n_0_[8]\,
      I2 => axi_s01_araddr(4),
      I3 => axi_s01_araddr(3),
      I4 => \axi_s01_rdata[8]_i_2__0_n_0\,
      I5 => axi_s01_araddr(5),
      O => \axi_s01_rdata[8]_i_1__0_n_0\
    );
\axi_s01_rdata[8]_i_2__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"5510441011100010"
    )
        port map (
      I0 => axi_s01_araddr(4),
      I1 => axi_s01_araddr(2),
      I2 => \slv_reg0_reg_n_0_[8]\,
      I3 => axi_s01_araddr(3),
      I4 => \slv_reg2_low_reg_n_0_[8]\,
      I5 => \slv_reg3_reg_n_0_[8]\,
      O => \axi_s01_rdata[8]_i_2__0_n_0\
    );
\axi_s01_rdata[9]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000FF4F0040"
    )
        port map (
      I0 => axi_s01_araddr(2),
      I1 => \slv_reg2_high_reg_n_0_[9]\,
      I2 => axi_s01_araddr(4),
      I3 => axi_s01_araddr(3),
      I4 => \axi_s01_rdata[9]_i_2__0_n_0\,
      I5 => axi_s01_araddr(5),
      O => \axi_s01_rdata[9]_i_1__0_n_0\
    );
\axi_s01_rdata[9]_i_2__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"5510441011100010"
    )
        port map (
      I0 => axi_s01_araddr(4),
      I1 => axi_s01_araddr(2),
      I2 => \slv_reg0_reg_n_0_[9]\,
      I3 => axi_s01_araddr(3),
      I4 => \slv_reg2_low_reg_n_0_[9]\,
      I5 => \slv_reg3_reg_n_0_[9]\,
      O => \axi_s01_rdata[9]_i_2__0_n_0\
    );
\axi_s01_rdata_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => slv_reg_s01_rden,
      D => \axi_s01_rdata[0]_i_1__0_n_0\,
      Q => \axi_s01_rdata_reg_n_0_[0]\,
      R => \^sr\(0)
    );
\axi_s01_rdata_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => slv_reg_s01_rden,
      D => \axi_s01_rdata[10]_i_1__0_n_0\,
      Q => \axi_s01_rdata_reg_n_0_[10]\,
      R => \^sr\(0)
    );
\axi_s01_rdata_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => slv_reg_s01_rden,
      D => \axi_s01_rdata[11]_i_1__0_n_0\,
      Q => \axi_s01_rdata_reg_n_0_[11]\,
      R => \^sr\(0)
    );
\axi_s01_rdata_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => slv_reg_s01_rden,
      D => \axi_s01_rdata[12]_i_1__0_n_0\,
      Q => \axi_s01_rdata_reg_n_0_[12]\,
      R => \^sr\(0)
    );
\axi_s01_rdata_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => slv_reg_s01_rden,
      D => \axi_s01_rdata[13]_i_1__0_n_0\,
      Q => \axi_s01_rdata_reg_n_0_[13]\,
      R => \^sr\(0)
    );
\axi_s01_rdata_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => slv_reg_s01_rden,
      D => \axi_s01_rdata[14]_i_1__0_n_0\,
      Q => \axi_s01_rdata_reg_n_0_[14]\,
      R => \^sr\(0)
    );
\axi_s01_rdata_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => slv_reg_s01_rden,
      D => \axi_s01_rdata[15]_i_1__0_n_0\,
      Q => \axi_s01_rdata_reg_n_0_[15]\,
      R => \^sr\(0)
    );
\axi_s01_rdata_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => slv_reg_s01_rden,
      D => \axi_s01_rdata[16]_i_1__0_n_0\,
      Q => \axi_s01_rdata_reg_n_0_[16]\,
      R => \^sr\(0)
    );
\axi_s01_rdata_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => slv_reg_s01_rden,
      D => \axi_s01_rdata[17]_i_1__0_n_0\,
      Q => \axi_s01_rdata_reg_n_0_[17]\,
      R => \^sr\(0)
    );
\axi_s01_rdata_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => slv_reg_s01_rden,
      D => \axi_s01_rdata[18]_i_1__0_n_0\,
      Q => \axi_s01_rdata_reg_n_0_[18]\,
      R => \^sr\(0)
    );
\axi_s01_rdata_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => slv_reg_s01_rden,
      D => \axi_s01_rdata[19]_i_1__0_n_0\,
      Q => \axi_s01_rdata_reg_n_0_[19]\,
      R => \^sr\(0)
    );
\axi_s01_rdata_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => slv_reg_s01_rden,
      D => \axi_s01_rdata[1]_i_1__0_n_0\,
      Q => \axi_s01_rdata_reg_n_0_[1]\,
      R => \^sr\(0)
    );
\axi_s01_rdata_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => slv_reg_s01_rden,
      D => \axi_s01_rdata[20]_i_1__0_n_0\,
      Q => \axi_s01_rdata_reg_n_0_[20]\,
      R => \^sr\(0)
    );
\axi_s01_rdata_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => slv_reg_s01_rden,
      D => \axi_s01_rdata[21]_i_1__0_n_0\,
      Q => \axi_s01_rdata_reg_n_0_[21]\,
      R => \^sr\(0)
    );
\axi_s01_rdata_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => slv_reg_s01_rden,
      D => \axi_s01_rdata[22]_i_1__0_n_0\,
      Q => \axi_s01_rdata_reg_n_0_[22]\,
      R => \^sr\(0)
    );
\axi_s01_rdata_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => slv_reg_s01_rden,
      D => \axi_s01_rdata[23]_i_1__0_n_0\,
      Q => \axi_s01_rdata_reg_n_0_[23]\,
      R => \^sr\(0)
    );
\axi_s01_rdata_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => slv_reg_s01_rden,
      D => \axi_s01_rdata[24]_i_1__0_n_0\,
      Q => \axi_s01_rdata_reg_n_0_[24]\,
      R => \^sr\(0)
    );
\axi_s01_rdata_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => slv_reg_s01_rden,
      D => \axi_s01_rdata[25]_i_1__0_n_0\,
      Q => \axi_s01_rdata_reg_n_0_[25]\,
      R => \^sr\(0)
    );
\axi_s01_rdata_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => slv_reg_s01_rden,
      D => \axi_s01_rdata[26]_i_1__0_n_0\,
      Q => \axi_s01_rdata_reg_n_0_[26]\,
      R => \^sr\(0)
    );
\axi_s01_rdata_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => slv_reg_s01_rden,
      D => \axi_s01_rdata[27]_i_1__0_n_0\,
      Q => \axi_s01_rdata_reg_n_0_[27]\,
      R => \^sr\(0)
    );
\axi_s01_rdata_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => slv_reg_s01_rden,
      D => \axi_s01_rdata[28]_i_1__0_n_0\,
      Q => \axi_s01_rdata_reg_n_0_[28]\,
      R => \^sr\(0)
    );
\axi_s01_rdata_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => slv_reg_s01_rden,
      D => \axi_s01_rdata[29]_i_1__0_n_0\,
      Q => \axi_s01_rdata_reg_n_0_[29]\,
      R => \^sr\(0)
    );
\axi_s01_rdata_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => slv_reg_s01_rden,
      D => \axi_s01_rdata[2]_i_1__0_n_0\,
      Q => \axi_s01_rdata_reg_n_0_[2]\,
      R => \^sr\(0)
    );
\axi_s01_rdata_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => slv_reg_s01_rden,
      D => \axi_s01_rdata[30]_i_1__0_n_0\,
      Q => \axi_s01_rdata_reg_n_0_[30]\,
      R => \^sr\(0)
    );
\axi_s01_rdata_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => slv_reg_s01_rden,
      D => \axi_s01_rdata[31]_i_2__0_n_0\,
      Q => \axi_s01_rdata_reg_n_0_[31]\,
      R => \^sr\(0)
    );
\axi_s01_rdata_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => slv_reg_s01_rden,
      D => \axi_s01_rdata[3]_i_1__0_n_0\,
      Q => \axi_s01_rdata_reg_n_0_[3]\,
      R => \^sr\(0)
    );
\axi_s01_rdata_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => slv_reg_s01_rden,
      D => \axi_s01_rdata[4]_i_1__0_n_0\,
      Q => \axi_s01_rdata_reg_n_0_[4]\,
      R => \^sr\(0)
    );
\axi_s01_rdata_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => slv_reg_s01_rden,
      D => \axi_s01_rdata[5]_i_1__0_n_0\,
      Q => \axi_s01_rdata_reg_n_0_[5]\,
      R => \^sr\(0)
    );
\axi_s01_rdata_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => slv_reg_s01_rden,
      D => \axi_s01_rdata[6]_i_1__0_n_0\,
      Q => \axi_s01_rdata_reg_n_0_[6]\,
      R => \^sr\(0)
    );
\axi_s01_rdata_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => slv_reg_s01_rden,
      D => \axi_s01_rdata[7]_i_1__0_n_0\,
      Q => \axi_s01_rdata_reg_n_0_[7]\,
      R => \^sr\(0)
    );
\axi_s01_rdata_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => slv_reg_s01_rden,
      D => \axi_s01_rdata[8]_i_1__0_n_0\,
      Q => \axi_s01_rdata_reg_n_0_[8]\,
      R => \^sr\(0)
    );
\axi_s01_rdata_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => slv_reg_s01_rden,
      D => \axi_s01_rdata[9]_i_1__0_n_0\,
      Q => \axi_s01_rdata_reg_n_0_[9]\,
      R => \^sr\(0)
    );
\axi_s01_rvalid_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"F2"
    )
        port map (
      I0 => axi_s01_rvalid,
      I1 => s01_axi_rready,
      I2 => slv_reg_s01_rden,
      O => \axi_s01_rvalid_i_1__0_n_0\
    );
axi_s01_rvalid_reg: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \axi_s01_rvalid_i_1__0_n_0\,
      Q => axi_s01_rvalid,
      R => \^sr\(0)
    );
\axi_s01_wready_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"20"
    )
        port map (
      I0 => \axi_s01_wready_i_2__0_n_0\,
      I1 => axi_s01_wready,
      I2 => aw_s01_en_reg_n_0,
      O => axi_s01_wready0
    );
\axi_s01_wready_i_2__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => s01_axi_wvalid,
      I1 => s01_axi_awvalid,
      I2 => s01_sq_wr_sel,
      O => \axi_s01_wready_i_2__0_n_0\
    );
axi_s01_wready_reg: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => axi_s01_wready0,
      Q => axi_s01_wready,
      R => \^sr\(0)
    );
axi_wready_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00008000"
    )
        port map (
      I0 => s00_axi_awvalid,
      I1 => s00_axi_wvalid,
      I2 => s00_sq_wr_sel,
      I3 => aw_en_reg_n_0,
      I4 => axi_wready,
      O => axi_wready0
    );
axi_wready_reg: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => axi_wready0,
      Q => axi_wready,
      R => \^sr\(0)
    );
irq_on_write_reg_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFF00000100"
    )
        port map (
      I0 => axi_awaddr(3),
      I1 => axi_awaddr(2),
      I2 => axi_awaddr(4),
      I3 => irq_on_write_reg_0,
      I4 => axi_awaddr(5),
      I5 => irq_on_write_reg,
      O => irq_on_write_reg_i_1_n_0
    );
irq_on_write_reg_i_2: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => s00_axi_wstrb(3),
      I1 => s00_axi_wstrb(1),
      I2 => s00_axi_wstrb(0),
      I3 => s00_axi_wstrb(2),
      O => irq_on_write_reg_0
    );
irq_on_write_reg_reg: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => irq_on_write_reg_i_1_n_0,
      Q => irq_on_write_reg,
      R => irq_reg_write_i_1_n_0
    );
irq_reg_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"E2000000"
    )
        port map (
      I0 => irq_on_write_reg,
      I1 => \slv_reg3_reg_n_0_[1]\,
      I2 => \slv_reg1_reg_n_0_[0]\,
      I3 => s00_axi_aresetn,
      I4 => \slv_reg3_reg_n_0_[0]\,
      O => irq_reg_i_1_n_0
    );
\irq_reg_read_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAAAAA00020000"
    )
        port map (
      I0 => slv_reg_s01_rden,
      I1 => axi_s01_araddr(3),
      I2 => axi_s01_araddr(5),
      I3 => axi_s01_araddr(4),
      I4 => axi_s01_araddr(2),
      I5 => irq_reg_read_reg_n_0,
      O => \irq_reg_read_i_1__0_n_0\
    );
irq_reg_read_reg: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \irq_reg_read_i_1__0_n_0\,
      Q => irq_reg_read_reg_n_0,
      R => \^sr\(0)
    );
irq_reg_reg: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => irq_reg_i_1_n_0,
      Q => irq_sq,
      R => '0'
    );
irq_reg_write_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BFFFFFFFFFFFFFFF"
    )
        port map (
      I0 => \slv_reg3_reg[0]_0\(0),
      I1 => s00_axi_wvalid,
      I2 => s00_sq_wr_sel,
      I3 => axi_awready,
      I4 => axi_wready,
      I5 => s00_axi_awvalid,
      O => irq_reg_write_i_1_n_0
    );
\irq_reg_write_i_2__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFB00000008"
    )
        port map (
      I0 => slv_reg_wren,
      I1 => axi_awaddr(2),
      I2 => axi_awaddr(4),
      I3 => axi_awaddr(5),
      I4 => axi_awaddr(3),
      I5 => irq_reg_write_reg_n_0,
      O => \irq_reg_write_i_2__0_n_0\
    );
irq_reg_write_reg: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \irq_reg_write_i_2__0_n_0\,
      Q => irq_reg_write_reg_n_0,
      R => irq_reg_write_i_1_n_0
    );
s00_axi_arready_INST_0: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => axi_arready,
      I1 => s00_axi_arready_0,
      I2 => s00_sq_rd_sel,
      O => s00_axi_arready
    );
s00_axi_awready_INST_0: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => axi_awready,
      I1 => s00_axi_awready_0,
      I2 => s00_sq_wr_sel,
      O => s00_axi_awready
    );
s00_axi_bvalid_INST_0: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => axi_bvalid,
      I1 => s00_axi_bvalid_0,
      I2 => s00_sq_wr_sel,
      O => s00_axi_bvalid
    );
\s00_axi_rdata[0]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => axi_rdata(0),
      I1 => \s00_axi_rdata[31]\(0),
      I2 => s00_sq_rd_sel,
      O => s00_axi_rdata(0)
    );
\s00_axi_rdata[10]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => axi_rdata(10),
      I1 => \s00_axi_rdata[31]\(10),
      I2 => s00_sq_rd_sel,
      O => s00_axi_rdata(10)
    );
\s00_axi_rdata[11]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => axi_rdata(11),
      I1 => \s00_axi_rdata[31]\(11),
      I2 => s00_sq_rd_sel,
      O => s00_axi_rdata(11)
    );
\s00_axi_rdata[12]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => axi_rdata(12),
      I1 => \s00_axi_rdata[31]\(12),
      I2 => s00_sq_rd_sel,
      O => s00_axi_rdata(12)
    );
\s00_axi_rdata[13]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => axi_rdata(13),
      I1 => \s00_axi_rdata[31]\(13),
      I2 => s00_sq_rd_sel,
      O => s00_axi_rdata(13)
    );
\s00_axi_rdata[14]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => axi_rdata(14),
      I1 => \s00_axi_rdata[31]\(14),
      I2 => s00_sq_rd_sel,
      O => s00_axi_rdata(14)
    );
\s00_axi_rdata[15]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => axi_rdata(15),
      I1 => \s00_axi_rdata[31]\(15),
      I2 => s00_sq_rd_sel,
      O => s00_axi_rdata(15)
    );
\s00_axi_rdata[16]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => axi_rdata(16),
      I1 => \s00_axi_rdata[31]\(16),
      I2 => s00_sq_rd_sel,
      O => s00_axi_rdata(16)
    );
\s00_axi_rdata[17]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => axi_rdata(17),
      I1 => \s00_axi_rdata[31]\(17),
      I2 => s00_sq_rd_sel,
      O => s00_axi_rdata(17)
    );
\s00_axi_rdata[18]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => axi_rdata(18),
      I1 => \s00_axi_rdata[31]\(18),
      I2 => s00_sq_rd_sel,
      O => s00_axi_rdata(18)
    );
\s00_axi_rdata[19]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => axi_rdata(19),
      I1 => \s00_axi_rdata[31]\(19),
      I2 => s00_sq_rd_sel,
      O => s00_axi_rdata(19)
    );
\s00_axi_rdata[1]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => axi_rdata(1),
      I1 => \s00_axi_rdata[31]\(1),
      I2 => s00_sq_rd_sel,
      O => s00_axi_rdata(1)
    );
\s00_axi_rdata[20]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => axi_rdata(20),
      I1 => \s00_axi_rdata[31]\(20),
      I2 => s00_sq_rd_sel,
      O => s00_axi_rdata(20)
    );
\s00_axi_rdata[21]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => axi_rdata(21),
      I1 => \s00_axi_rdata[31]\(21),
      I2 => s00_sq_rd_sel,
      O => s00_axi_rdata(21)
    );
\s00_axi_rdata[22]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => axi_rdata(22),
      I1 => \s00_axi_rdata[31]\(22),
      I2 => s00_sq_rd_sel,
      O => s00_axi_rdata(22)
    );
\s00_axi_rdata[23]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => axi_rdata(23),
      I1 => \s00_axi_rdata[31]\(23),
      I2 => s00_sq_rd_sel,
      O => s00_axi_rdata(23)
    );
\s00_axi_rdata[24]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => axi_rdata(24),
      I1 => \s00_axi_rdata[31]\(24),
      I2 => s00_sq_rd_sel,
      O => s00_axi_rdata(24)
    );
\s00_axi_rdata[25]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => axi_rdata(25),
      I1 => \s00_axi_rdata[31]\(25),
      I2 => s00_sq_rd_sel,
      O => s00_axi_rdata(25)
    );
\s00_axi_rdata[26]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => axi_rdata(26),
      I1 => \s00_axi_rdata[31]\(26),
      I2 => s00_sq_rd_sel,
      O => s00_axi_rdata(26)
    );
\s00_axi_rdata[27]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => axi_rdata(27),
      I1 => \s00_axi_rdata[31]\(27),
      I2 => s00_sq_rd_sel,
      O => s00_axi_rdata(27)
    );
\s00_axi_rdata[28]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => axi_rdata(28),
      I1 => \s00_axi_rdata[31]\(28),
      I2 => s00_sq_rd_sel,
      O => s00_axi_rdata(28)
    );
\s00_axi_rdata[29]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => axi_rdata(29),
      I1 => \s00_axi_rdata[31]\(29),
      I2 => s00_sq_rd_sel,
      O => s00_axi_rdata(29)
    );
\s00_axi_rdata[2]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => axi_rdata(2),
      I1 => \s00_axi_rdata[31]\(2),
      I2 => s00_sq_rd_sel,
      O => s00_axi_rdata(2)
    );
\s00_axi_rdata[30]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => axi_rdata(30),
      I1 => \s00_axi_rdata[31]\(30),
      I2 => s00_sq_rd_sel,
      O => s00_axi_rdata(30)
    );
\s00_axi_rdata[31]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => axi_rdata(31),
      I1 => \s00_axi_rdata[31]\(31),
      I2 => s00_sq_rd_sel,
      O => s00_axi_rdata(31)
    );
\s00_axi_rdata[3]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => axi_rdata(3),
      I1 => \s00_axi_rdata[31]\(3),
      I2 => s00_sq_rd_sel,
      O => s00_axi_rdata(3)
    );
\s00_axi_rdata[4]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => axi_rdata(4),
      I1 => \s00_axi_rdata[31]\(4),
      I2 => s00_sq_rd_sel,
      O => s00_axi_rdata(4)
    );
\s00_axi_rdata[5]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => axi_rdata(5),
      I1 => \s00_axi_rdata[31]\(5),
      I2 => s00_sq_rd_sel,
      O => s00_axi_rdata(5)
    );
\s00_axi_rdata[6]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => axi_rdata(6),
      I1 => \s00_axi_rdata[31]\(6),
      I2 => s00_sq_rd_sel,
      O => s00_axi_rdata(6)
    );
\s00_axi_rdata[7]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => axi_rdata(7),
      I1 => \s00_axi_rdata[31]\(7),
      I2 => s00_sq_rd_sel,
      O => s00_axi_rdata(7)
    );
\s00_axi_rdata[8]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => axi_rdata(8),
      I1 => \s00_axi_rdata[31]\(8),
      I2 => s00_sq_rd_sel,
      O => s00_axi_rdata(8)
    );
\s00_axi_rdata[9]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => axi_rdata(9),
      I1 => \s00_axi_rdata[31]\(9),
      I2 => s00_sq_rd_sel,
      O => s00_axi_rdata(9)
    );
s00_axi_rvalid_INST_0: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => axi_rvalid,
      I1 => s00_axi_rvalid_0,
      I2 => s00_sq_rd_sel,
      O => s00_axi_rvalid
    );
s00_axi_wready_INST_0: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => axi_wready,
      I1 => s00_axi_wready_0,
      I2 => s00_sq_wr_sel,
      O => s00_axi_wready
    );
s00_sq_wr_sel_i_1: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => s00_axi_aresetn,
      O => \^sr\(0)
    );
s01_axi_arready_INST_0: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => axi_s01_arready,
      I1 => s01_axi_arready_0,
      I2 => s01_sq_rd_sel,
      O => s01_axi_arready
    );
s01_axi_awready_INST_0: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => axi_s01_awready,
      I1 => s01_axi_awready_0,
      I2 => s01_sq_wr_sel,
      O => s01_axi_awready
    );
s01_axi_bvalid_INST_0: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => axi_s01_bvalid,
      I1 => s01_axi_bvalid_0,
      I2 => s01_sq_wr_sel,
      O => s01_axi_bvalid
    );
\s01_axi_rdata[0]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => \axi_s01_rdata_reg_n_0_[0]\,
      I1 => \s01_axi_rdata[31]\(0),
      I2 => s01_sq_rd_sel,
      O => s01_axi_rdata(0)
    );
\s01_axi_rdata[10]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => \axi_s01_rdata_reg_n_0_[10]\,
      I1 => \s01_axi_rdata[31]\(10),
      I2 => s01_sq_rd_sel,
      O => s01_axi_rdata(10)
    );
\s01_axi_rdata[11]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => \axi_s01_rdata_reg_n_0_[11]\,
      I1 => \s01_axi_rdata[31]\(11),
      I2 => s01_sq_rd_sel,
      O => s01_axi_rdata(11)
    );
\s01_axi_rdata[12]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => \axi_s01_rdata_reg_n_0_[12]\,
      I1 => \s01_axi_rdata[31]\(12),
      I2 => s01_sq_rd_sel,
      O => s01_axi_rdata(12)
    );
\s01_axi_rdata[13]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => \axi_s01_rdata_reg_n_0_[13]\,
      I1 => \s01_axi_rdata[31]\(13),
      I2 => s01_sq_rd_sel,
      O => s01_axi_rdata(13)
    );
\s01_axi_rdata[14]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => \axi_s01_rdata_reg_n_0_[14]\,
      I1 => \s01_axi_rdata[31]\(14),
      I2 => s01_sq_rd_sel,
      O => s01_axi_rdata(14)
    );
\s01_axi_rdata[15]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => \axi_s01_rdata_reg_n_0_[15]\,
      I1 => \s01_axi_rdata[31]\(15),
      I2 => s01_sq_rd_sel,
      O => s01_axi_rdata(15)
    );
\s01_axi_rdata[16]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => \axi_s01_rdata_reg_n_0_[16]\,
      I1 => \s01_axi_rdata[31]\(16),
      I2 => s01_sq_rd_sel,
      O => s01_axi_rdata(16)
    );
\s01_axi_rdata[17]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => \axi_s01_rdata_reg_n_0_[17]\,
      I1 => \s01_axi_rdata[31]\(17),
      I2 => s01_sq_rd_sel,
      O => s01_axi_rdata(17)
    );
\s01_axi_rdata[18]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => \axi_s01_rdata_reg_n_0_[18]\,
      I1 => \s01_axi_rdata[31]\(18),
      I2 => s01_sq_rd_sel,
      O => s01_axi_rdata(18)
    );
\s01_axi_rdata[19]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => \axi_s01_rdata_reg_n_0_[19]\,
      I1 => \s01_axi_rdata[31]\(19),
      I2 => s01_sq_rd_sel,
      O => s01_axi_rdata(19)
    );
\s01_axi_rdata[1]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => \axi_s01_rdata_reg_n_0_[1]\,
      I1 => \s01_axi_rdata[31]\(1),
      I2 => s01_sq_rd_sel,
      O => s01_axi_rdata(1)
    );
\s01_axi_rdata[20]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => \axi_s01_rdata_reg_n_0_[20]\,
      I1 => \s01_axi_rdata[31]\(20),
      I2 => s01_sq_rd_sel,
      O => s01_axi_rdata(20)
    );
\s01_axi_rdata[21]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => \axi_s01_rdata_reg_n_0_[21]\,
      I1 => \s01_axi_rdata[31]\(21),
      I2 => s01_sq_rd_sel,
      O => s01_axi_rdata(21)
    );
\s01_axi_rdata[22]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => \axi_s01_rdata_reg_n_0_[22]\,
      I1 => \s01_axi_rdata[31]\(22),
      I2 => s01_sq_rd_sel,
      O => s01_axi_rdata(22)
    );
\s01_axi_rdata[23]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => \axi_s01_rdata_reg_n_0_[23]\,
      I1 => \s01_axi_rdata[31]\(23),
      I2 => s01_sq_rd_sel,
      O => s01_axi_rdata(23)
    );
\s01_axi_rdata[24]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => \axi_s01_rdata_reg_n_0_[24]\,
      I1 => \s01_axi_rdata[31]\(24),
      I2 => s01_sq_rd_sel,
      O => s01_axi_rdata(24)
    );
\s01_axi_rdata[25]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => \axi_s01_rdata_reg_n_0_[25]\,
      I1 => \s01_axi_rdata[31]\(25),
      I2 => s01_sq_rd_sel,
      O => s01_axi_rdata(25)
    );
\s01_axi_rdata[26]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => \axi_s01_rdata_reg_n_0_[26]\,
      I1 => \s01_axi_rdata[31]\(26),
      I2 => s01_sq_rd_sel,
      O => s01_axi_rdata(26)
    );
\s01_axi_rdata[27]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => \axi_s01_rdata_reg_n_0_[27]\,
      I1 => \s01_axi_rdata[31]\(27),
      I2 => s01_sq_rd_sel,
      O => s01_axi_rdata(27)
    );
\s01_axi_rdata[28]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => \axi_s01_rdata_reg_n_0_[28]\,
      I1 => \s01_axi_rdata[31]\(28),
      I2 => s01_sq_rd_sel,
      O => s01_axi_rdata(28)
    );
\s01_axi_rdata[29]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => \axi_s01_rdata_reg_n_0_[29]\,
      I1 => \s01_axi_rdata[31]\(29),
      I2 => s01_sq_rd_sel,
      O => s01_axi_rdata(29)
    );
\s01_axi_rdata[2]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => \axi_s01_rdata_reg_n_0_[2]\,
      I1 => \s01_axi_rdata[31]\(2),
      I2 => s01_sq_rd_sel,
      O => s01_axi_rdata(2)
    );
\s01_axi_rdata[30]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => \axi_s01_rdata_reg_n_0_[30]\,
      I1 => \s01_axi_rdata[31]\(30),
      I2 => s01_sq_rd_sel,
      O => s01_axi_rdata(30)
    );
\s01_axi_rdata[31]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => \axi_s01_rdata_reg_n_0_[31]\,
      I1 => \s01_axi_rdata[31]\(31),
      I2 => s01_sq_rd_sel,
      O => s01_axi_rdata(31)
    );
\s01_axi_rdata[3]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => \axi_s01_rdata_reg_n_0_[3]\,
      I1 => \s01_axi_rdata[31]\(3),
      I2 => s01_sq_rd_sel,
      O => s01_axi_rdata(3)
    );
\s01_axi_rdata[4]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => \axi_s01_rdata_reg_n_0_[4]\,
      I1 => \s01_axi_rdata[31]\(4),
      I2 => s01_sq_rd_sel,
      O => s01_axi_rdata(4)
    );
\s01_axi_rdata[5]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => \axi_s01_rdata_reg_n_0_[5]\,
      I1 => \s01_axi_rdata[31]\(5),
      I2 => s01_sq_rd_sel,
      O => s01_axi_rdata(5)
    );
\s01_axi_rdata[6]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => \axi_s01_rdata_reg_n_0_[6]\,
      I1 => \s01_axi_rdata[31]\(6),
      I2 => s01_sq_rd_sel,
      O => s01_axi_rdata(6)
    );
\s01_axi_rdata[7]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => \axi_s01_rdata_reg_n_0_[7]\,
      I1 => \s01_axi_rdata[31]\(7),
      I2 => s01_sq_rd_sel,
      O => s01_axi_rdata(7)
    );
\s01_axi_rdata[8]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => \axi_s01_rdata_reg_n_0_[8]\,
      I1 => \s01_axi_rdata[31]\(8),
      I2 => s01_sq_rd_sel,
      O => s01_axi_rdata(8)
    );
\s01_axi_rdata[9]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => \axi_s01_rdata_reg_n_0_[9]\,
      I1 => \s01_axi_rdata[31]\(9),
      I2 => s01_sq_rd_sel,
      O => s01_axi_rdata(9)
    );
s01_axi_rvalid_INST_0: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => axi_s01_rvalid,
      I1 => s01_axi_rvalid_0,
      I2 => s01_sq_rd_sel,
      O => s01_axi_rvalid
    );
s01_axi_wready_INST_0: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => axi_s01_wready,
      I1 => s01_axi_wready_0,
      I2 => s01_sq_wr_sel,
      O => s01_axi_wready
    );
\slv_reg0[15]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000020"
    )
        port map (
      I0 => slv_reg_wren,
      I1 => axi_awaddr(5),
      I2 => s00_axi_wstrb(1),
      I3 => axi_awaddr(4),
      I4 => axi_awaddr(2),
      I5 => axi_awaddr(3),
      O => \slv_reg0[15]_i_1_n_0\
    );
\slv_reg0[23]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000020"
    )
        port map (
      I0 => slv_reg_wren,
      I1 => axi_awaddr(5),
      I2 => s00_axi_wstrb(2),
      I3 => axi_awaddr(4),
      I4 => axi_awaddr(2),
      I5 => axi_awaddr(3),
      O => \slv_reg0[23]_i_1_n_0\
    );
\slv_reg0[31]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000020"
    )
        port map (
      I0 => slv_reg_wren,
      I1 => axi_awaddr(5),
      I2 => s00_axi_wstrb(3),
      I3 => axi_awaddr(4),
      I4 => axi_awaddr(2),
      I5 => axi_awaddr(3),
      O => \slv_reg0[31]_i_1_n_0\
    );
\slv_reg0[7]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000020"
    )
        port map (
      I0 => slv_reg_wren,
      I1 => axi_awaddr(5),
      I2 => s00_axi_wstrb(0),
      I3 => axi_awaddr(4),
      I4 => axi_awaddr(2),
      I5 => axi_awaddr(3),
      O => \slv_reg0[7]_i_1_n_0\
    );
\slv_reg0_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg0[7]_i_1_n_0\,
      D => s00_axi_wdata(0),
      Q => \slv_reg0_reg_n_0_[0]\,
      R => \slv_reg3_reg[0]_0\(0)
    );
\slv_reg0_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg0[15]_i_1_n_0\,
      D => s00_axi_wdata(10),
      Q => \slv_reg0_reg_n_0_[10]\,
      R => \slv_reg3_reg[0]_0\(0)
    );
\slv_reg0_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg0[15]_i_1_n_0\,
      D => s00_axi_wdata(11),
      Q => \slv_reg0_reg_n_0_[11]\,
      R => \slv_reg3_reg[0]_0\(0)
    );
\slv_reg0_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg0[15]_i_1_n_0\,
      D => s00_axi_wdata(12),
      Q => \slv_reg0_reg_n_0_[12]\,
      R => \slv_reg3_reg[0]_0\(0)
    );
\slv_reg0_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg0[15]_i_1_n_0\,
      D => s00_axi_wdata(13),
      Q => \slv_reg0_reg_n_0_[13]\,
      R => \slv_reg3_reg[0]_0\(0)
    );
\slv_reg0_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg0[15]_i_1_n_0\,
      D => s00_axi_wdata(14),
      Q => \slv_reg0_reg_n_0_[14]\,
      R => \slv_reg3_reg[0]_0\(0)
    );
\slv_reg0_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg0[15]_i_1_n_0\,
      D => s00_axi_wdata(15),
      Q => \slv_reg0_reg_n_0_[15]\,
      R => \slv_reg3_reg[0]_0\(0)
    );
\slv_reg0_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg0[23]_i_1_n_0\,
      D => s00_axi_wdata(16),
      Q => \slv_reg0_reg_n_0_[16]\,
      R => \slv_reg3_reg[0]_0\(0)
    );
\slv_reg0_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg0[23]_i_1_n_0\,
      D => s00_axi_wdata(17),
      Q => \slv_reg0_reg_n_0_[17]\,
      R => \slv_reg3_reg[0]_0\(0)
    );
\slv_reg0_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg0[23]_i_1_n_0\,
      D => s00_axi_wdata(18),
      Q => \slv_reg0_reg_n_0_[18]\,
      R => \slv_reg3_reg[0]_0\(0)
    );
\slv_reg0_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg0[23]_i_1_n_0\,
      D => s00_axi_wdata(19),
      Q => \slv_reg0_reg_n_0_[19]\,
      R => \slv_reg3_reg[0]_0\(0)
    );
\slv_reg0_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg0[7]_i_1_n_0\,
      D => s00_axi_wdata(1),
      Q => \slv_reg0_reg_n_0_[1]\,
      R => \slv_reg3_reg[0]_0\(0)
    );
\slv_reg0_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg0[23]_i_1_n_0\,
      D => s00_axi_wdata(20),
      Q => \slv_reg0_reg_n_0_[20]\,
      R => \slv_reg3_reg[0]_0\(0)
    );
\slv_reg0_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg0[23]_i_1_n_0\,
      D => s00_axi_wdata(21),
      Q => \slv_reg0_reg_n_0_[21]\,
      R => \slv_reg3_reg[0]_0\(0)
    );
\slv_reg0_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg0[23]_i_1_n_0\,
      D => s00_axi_wdata(22),
      Q => \slv_reg0_reg_n_0_[22]\,
      R => \slv_reg3_reg[0]_0\(0)
    );
\slv_reg0_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg0[23]_i_1_n_0\,
      D => s00_axi_wdata(23),
      Q => \slv_reg0_reg_n_0_[23]\,
      R => \slv_reg3_reg[0]_0\(0)
    );
\slv_reg0_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg0[31]_i_1_n_0\,
      D => s00_axi_wdata(24),
      Q => \slv_reg0_reg_n_0_[24]\,
      R => \slv_reg3_reg[0]_0\(0)
    );
\slv_reg0_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg0[31]_i_1_n_0\,
      D => s00_axi_wdata(25),
      Q => \slv_reg0_reg_n_0_[25]\,
      R => \slv_reg3_reg[0]_0\(0)
    );
\slv_reg0_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg0[31]_i_1_n_0\,
      D => s00_axi_wdata(26),
      Q => \slv_reg0_reg_n_0_[26]\,
      R => \slv_reg3_reg[0]_0\(0)
    );
\slv_reg0_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg0[31]_i_1_n_0\,
      D => s00_axi_wdata(27),
      Q => \slv_reg0_reg_n_0_[27]\,
      R => \slv_reg3_reg[0]_0\(0)
    );
\slv_reg0_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg0[31]_i_1_n_0\,
      D => s00_axi_wdata(28),
      Q => \slv_reg0_reg_n_0_[28]\,
      R => \slv_reg3_reg[0]_0\(0)
    );
\slv_reg0_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg0[31]_i_1_n_0\,
      D => s00_axi_wdata(29),
      Q => \slv_reg0_reg_n_0_[29]\,
      R => \slv_reg3_reg[0]_0\(0)
    );
\slv_reg0_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg0[7]_i_1_n_0\,
      D => s00_axi_wdata(2),
      Q => \slv_reg0_reg_n_0_[2]\,
      R => \slv_reg3_reg[0]_0\(0)
    );
\slv_reg0_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg0[31]_i_1_n_0\,
      D => s00_axi_wdata(30),
      Q => \slv_reg0_reg_n_0_[30]\,
      R => \slv_reg3_reg[0]_0\(0)
    );
\slv_reg0_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg0[31]_i_1_n_0\,
      D => s00_axi_wdata(31),
      Q => \slv_reg0_reg_n_0_[31]\,
      R => \slv_reg3_reg[0]_0\(0)
    );
\slv_reg0_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg0[7]_i_1_n_0\,
      D => s00_axi_wdata(3),
      Q => \slv_reg0_reg_n_0_[3]\,
      R => \slv_reg3_reg[0]_0\(0)
    );
\slv_reg0_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg0[7]_i_1_n_0\,
      D => s00_axi_wdata(4),
      Q => \slv_reg0_reg_n_0_[4]\,
      R => \slv_reg3_reg[0]_0\(0)
    );
\slv_reg0_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg0[7]_i_1_n_0\,
      D => s00_axi_wdata(5),
      Q => \slv_reg0_reg_n_0_[5]\,
      R => \slv_reg3_reg[0]_0\(0)
    );
\slv_reg0_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg0[7]_i_1_n_0\,
      D => s00_axi_wdata(6),
      Q => \slv_reg0_reg_n_0_[6]\,
      R => \slv_reg3_reg[0]_0\(0)
    );
\slv_reg0_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg0[7]_i_1_n_0\,
      D => s00_axi_wdata(7),
      Q => \slv_reg0_reg_n_0_[7]\,
      R => \slv_reg3_reg[0]_0\(0)
    );
\slv_reg0_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg0[15]_i_1_n_0\,
      D => s00_axi_wdata(8),
      Q => \slv_reg0_reg_n_0_[8]\,
      R => \slv_reg3_reg[0]_0\(0)
    );
\slv_reg0_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg0[15]_i_1_n_0\,
      D => s00_axi_wdata(9),
      Q => \slv_reg0_reg_n_0_[9]\,
      R => \slv_reg3_reg[0]_0\(0)
    );
\slv_reg1[0]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"F4"
    )
        port map (
      I0 => irq_reg_read_reg_n_0,
      I1 => \slv_reg1_reg_n_0_[0]\,
      I2 => irq_reg_write_reg_n_0,
      O => \slv_reg1[0]_i_1__0_n_0\
    );
\slv_reg1_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \slv_reg1[0]_i_1__0_n_0\,
      Q => \slv_reg1_reg_n_0_[0]\,
      R => \slv_reg3_reg[0]_0\(0)
    );
\slv_reg2_high[15]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000002000"
    )
        port map (
      I0 => slv_reg_wren,
      I1 => axi_awaddr(5),
      I2 => s00_axi_wstrb(1),
      I3 => axi_awaddr(4),
      I4 => axi_awaddr(2),
      I5 => axi_awaddr(3),
      O => \slv_reg2_high[15]_i_1_n_0\
    );
\slv_reg2_high[23]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000002000"
    )
        port map (
      I0 => slv_reg_wren,
      I1 => axi_awaddr(5),
      I2 => s00_axi_wstrb(2),
      I3 => axi_awaddr(4),
      I4 => axi_awaddr(2),
      I5 => axi_awaddr(3),
      O => \slv_reg2_high[23]_i_1_n_0\
    );
\slv_reg2_high[31]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000002000"
    )
        port map (
      I0 => slv_reg_wren,
      I1 => axi_awaddr(5),
      I2 => s00_axi_wstrb(3),
      I3 => axi_awaddr(4),
      I4 => axi_awaddr(2),
      I5 => axi_awaddr(3),
      O => \slv_reg2_high[31]_i_1_n_0\
    );
\slv_reg2_high[7]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000002000"
    )
        port map (
      I0 => slv_reg_wren,
      I1 => axi_awaddr(5),
      I2 => s00_axi_wstrb(0),
      I3 => axi_awaddr(4),
      I4 => axi_awaddr(2),
      I5 => axi_awaddr(3),
      O => \slv_reg2_high[7]_i_1_n_0\
    );
\slv_reg2_high_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2_high[7]_i_1_n_0\,
      D => s00_axi_wdata(0),
      Q => \slv_reg2_high_reg_n_0_[0]\,
      R => \slv_reg3_reg[0]_0\(0)
    );
\slv_reg2_high_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2_high[15]_i_1_n_0\,
      D => s00_axi_wdata(10),
      Q => \slv_reg2_high_reg_n_0_[10]\,
      R => \slv_reg3_reg[0]_0\(0)
    );
\slv_reg2_high_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2_high[15]_i_1_n_0\,
      D => s00_axi_wdata(11),
      Q => \slv_reg2_high_reg_n_0_[11]\,
      R => \slv_reg3_reg[0]_0\(0)
    );
\slv_reg2_high_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2_high[15]_i_1_n_0\,
      D => s00_axi_wdata(12),
      Q => \slv_reg2_high_reg_n_0_[12]\,
      R => \slv_reg3_reg[0]_0\(0)
    );
\slv_reg2_high_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2_high[15]_i_1_n_0\,
      D => s00_axi_wdata(13),
      Q => \slv_reg2_high_reg_n_0_[13]\,
      R => \slv_reg3_reg[0]_0\(0)
    );
\slv_reg2_high_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2_high[15]_i_1_n_0\,
      D => s00_axi_wdata(14),
      Q => \slv_reg2_high_reg_n_0_[14]\,
      R => \slv_reg3_reg[0]_0\(0)
    );
\slv_reg2_high_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2_high[15]_i_1_n_0\,
      D => s00_axi_wdata(15),
      Q => \slv_reg2_high_reg_n_0_[15]\,
      R => \slv_reg3_reg[0]_0\(0)
    );
\slv_reg2_high_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2_high[23]_i_1_n_0\,
      D => s00_axi_wdata(16),
      Q => \slv_reg2_high_reg_n_0_[16]\,
      R => \slv_reg3_reg[0]_0\(0)
    );
\slv_reg2_high_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2_high[23]_i_1_n_0\,
      D => s00_axi_wdata(17),
      Q => \slv_reg2_high_reg_n_0_[17]\,
      R => \slv_reg3_reg[0]_0\(0)
    );
\slv_reg2_high_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2_high[23]_i_1_n_0\,
      D => s00_axi_wdata(18),
      Q => \slv_reg2_high_reg_n_0_[18]\,
      R => \slv_reg3_reg[0]_0\(0)
    );
\slv_reg2_high_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2_high[23]_i_1_n_0\,
      D => s00_axi_wdata(19),
      Q => \slv_reg2_high_reg_n_0_[19]\,
      R => \slv_reg3_reg[0]_0\(0)
    );
\slv_reg2_high_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2_high[7]_i_1_n_0\,
      D => s00_axi_wdata(1),
      Q => \slv_reg2_high_reg_n_0_[1]\,
      R => \slv_reg3_reg[0]_0\(0)
    );
\slv_reg2_high_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2_high[23]_i_1_n_0\,
      D => s00_axi_wdata(20),
      Q => \slv_reg2_high_reg_n_0_[20]\,
      R => \slv_reg3_reg[0]_0\(0)
    );
\slv_reg2_high_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2_high[23]_i_1_n_0\,
      D => s00_axi_wdata(21),
      Q => \slv_reg2_high_reg_n_0_[21]\,
      R => \slv_reg3_reg[0]_0\(0)
    );
\slv_reg2_high_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2_high[23]_i_1_n_0\,
      D => s00_axi_wdata(22),
      Q => \slv_reg2_high_reg_n_0_[22]\,
      R => \slv_reg3_reg[0]_0\(0)
    );
\slv_reg2_high_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2_high[23]_i_1_n_0\,
      D => s00_axi_wdata(23),
      Q => \slv_reg2_high_reg_n_0_[23]\,
      R => \slv_reg3_reg[0]_0\(0)
    );
\slv_reg2_high_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2_high[31]_i_1_n_0\,
      D => s00_axi_wdata(24),
      Q => \slv_reg2_high_reg_n_0_[24]\,
      R => \slv_reg3_reg[0]_0\(0)
    );
\slv_reg2_high_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2_high[31]_i_1_n_0\,
      D => s00_axi_wdata(25),
      Q => \slv_reg2_high_reg_n_0_[25]\,
      R => \slv_reg3_reg[0]_0\(0)
    );
\slv_reg2_high_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2_high[31]_i_1_n_0\,
      D => s00_axi_wdata(26),
      Q => \slv_reg2_high_reg_n_0_[26]\,
      R => \slv_reg3_reg[0]_0\(0)
    );
\slv_reg2_high_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2_high[31]_i_1_n_0\,
      D => s00_axi_wdata(27),
      Q => \slv_reg2_high_reg_n_0_[27]\,
      R => \slv_reg3_reg[0]_0\(0)
    );
\slv_reg2_high_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2_high[31]_i_1_n_0\,
      D => s00_axi_wdata(28),
      Q => \slv_reg2_high_reg_n_0_[28]\,
      R => \slv_reg3_reg[0]_0\(0)
    );
\slv_reg2_high_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2_high[31]_i_1_n_0\,
      D => s00_axi_wdata(29),
      Q => \slv_reg2_high_reg_n_0_[29]\,
      R => \slv_reg3_reg[0]_0\(0)
    );
\slv_reg2_high_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2_high[7]_i_1_n_0\,
      D => s00_axi_wdata(2),
      Q => \slv_reg2_high_reg_n_0_[2]\,
      R => \slv_reg3_reg[0]_0\(0)
    );
\slv_reg2_high_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2_high[31]_i_1_n_0\,
      D => s00_axi_wdata(30),
      Q => \slv_reg2_high_reg_n_0_[30]\,
      R => \slv_reg3_reg[0]_0\(0)
    );
\slv_reg2_high_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2_high[31]_i_1_n_0\,
      D => s00_axi_wdata(31),
      Q => \slv_reg2_high_reg_n_0_[31]\,
      R => \slv_reg3_reg[0]_0\(0)
    );
\slv_reg2_high_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2_high[7]_i_1_n_0\,
      D => s00_axi_wdata(3),
      Q => \slv_reg2_high_reg_n_0_[3]\,
      R => \slv_reg3_reg[0]_0\(0)
    );
\slv_reg2_high_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2_high[7]_i_1_n_0\,
      D => s00_axi_wdata(4),
      Q => \slv_reg2_high_reg_n_0_[4]\,
      R => \slv_reg3_reg[0]_0\(0)
    );
\slv_reg2_high_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2_high[7]_i_1_n_0\,
      D => s00_axi_wdata(5),
      Q => \slv_reg2_high_reg_n_0_[5]\,
      R => \slv_reg3_reg[0]_0\(0)
    );
\slv_reg2_high_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2_high[7]_i_1_n_0\,
      D => s00_axi_wdata(6),
      Q => \slv_reg2_high_reg_n_0_[6]\,
      R => \slv_reg3_reg[0]_0\(0)
    );
\slv_reg2_high_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2_high[7]_i_1_n_0\,
      D => s00_axi_wdata(7),
      Q => \slv_reg2_high_reg_n_0_[7]\,
      R => \slv_reg3_reg[0]_0\(0)
    );
\slv_reg2_high_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2_high[15]_i_1_n_0\,
      D => s00_axi_wdata(8),
      Q => \slv_reg2_high_reg_n_0_[8]\,
      R => \slv_reg3_reg[0]_0\(0)
    );
\slv_reg2_high_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2_high[15]_i_1_n_0\,
      D => s00_axi_wdata(9),
      Q => \slv_reg2_high_reg_n_0_[9]\,
      R => \slv_reg3_reg[0]_0\(0)
    );
\slv_reg2_low[15]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000002000"
    )
        port map (
      I0 => slv_reg_wren,
      I1 => axi_awaddr(5),
      I2 => axi_awaddr(3),
      I3 => s00_axi_wstrb(1),
      I4 => axi_awaddr(2),
      I5 => axi_awaddr(4),
      O => \slv_reg2_low[15]_i_1_n_0\
    );
\slv_reg2_low[23]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000002000"
    )
        port map (
      I0 => slv_reg_wren,
      I1 => axi_awaddr(5),
      I2 => axi_awaddr(3),
      I3 => s00_axi_wstrb(2),
      I4 => axi_awaddr(2),
      I5 => axi_awaddr(4),
      O => \slv_reg2_low[23]_i_1_n_0\
    );
\slv_reg2_low[31]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000002000"
    )
        port map (
      I0 => slv_reg_wren,
      I1 => axi_awaddr(5),
      I2 => axi_awaddr(3),
      I3 => s00_axi_wstrb(3),
      I4 => axi_awaddr(2),
      I5 => axi_awaddr(4),
      O => \slv_reg2_low[31]_i_1_n_0\
    );
\slv_reg2_low[7]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000002000"
    )
        port map (
      I0 => slv_reg_wren,
      I1 => axi_awaddr(5),
      I2 => axi_awaddr(3),
      I3 => s00_axi_wstrb(0),
      I4 => axi_awaddr(2),
      I5 => axi_awaddr(4),
      O => \slv_reg2_low[7]_i_1_n_0\
    );
\slv_reg2_low_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2_low[7]_i_1_n_0\,
      D => s00_axi_wdata(0),
      Q => \slv_reg2_low_reg_n_0_[0]\,
      R => \slv_reg3_reg[0]_0\(0)
    );
\slv_reg2_low_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2_low[15]_i_1_n_0\,
      D => s00_axi_wdata(10),
      Q => \slv_reg2_low_reg_n_0_[10]\,
      R => \slv_reg3_reg[0]_0\(0)
    );
\slv_reg2_low_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2_low[15]_i_1_n_0\,
      D => s00_axi_wdata(11),
      Q => \slv_reg2_low_reg_n_0_[11]\,
      R => \slv_reg3_reg[0]_0\(0)
    );
\slv_reg2_low_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2_low[15]_i_1_n_0\,
      D => s00_axi_wdata(12),
      Q => \slv_reg2_low_reg_n_0_[12]\,
      R => \slv_reg3_reg[0]_0\(0)
    );
\slv_reg2_low_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2_low[15]_i_1_n_0\,
      D => s00_axi_wdata(13),
      Q => \slv_reg2_low_reg_n_0_[13]\,
      R => \slv_reg3_reg[0]_0\(0)
    );
\slv_reg2_low_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2_low[15]_i_1_n_0\,
      D => s00_axi_wdata(14),
      Q => \slv_reg2_low_reg_n_0_[14]\,
      R => \slv_reg3_reg[0]_0\(0)
    );
\slv_reg2_low_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2_low[15]_i_1_n_0\,
      D => s00_axi_wdata(15),
      Q => \slv_reg2_low_reg_n_0_[15]\,
      R => \slv_reg3_reg[0]_0\(0)
    );
\slv_reg2_low_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2_low[23]_i_1_n_0\,
      D => s00_axi_wdata(16),
      Q => \slv_reg2_low_reg_n_0_[16]\,
      R => \slv_reg3_reg[0]_0\(0)
    );
\slv_reg2_low_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2_low[23]_i_1_n_0\,
      D => s00_axi_wdata(17),
      Q => \slv_reg2_low_reg_n_0_[17]\,
      R => \slv_reg3_reg[0]_0\(0)
    );
\slv_reg2_low_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2_low[23]_i_1_n_0\,
      D => s00_axi_wdata(18),
      Q => \slv_reg2_low_reg_n_0_[18]\,
      R => \slv_reg3_reg[0]_0\(0)
    );
\slv_reg2_low_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2_low[23]_i_1_n_0\,
      D => s00_axi_wdata(19),
      Q => \slv_reg2_low_reg_n_0_[19]\,
      R => \slv_reg3_reg[0]_0\(0)
    );
\slv_reg2_low_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2_low[7]_i_1_n_0\,
      D => s00_axi_wdata(1),
      Q => \slv_reg2_low_reg_n_0_[1]\,
      R => \slv_reg3_reg[0]_0\(0)
    );
\slv_reg2_low_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2_low[23]_i_1_n_0\,
      D => s00_axi_wdata(20),
      Q => \slv_reg2_low_reg_n_0_[20]\,
      R => \slv_reg3_reg[0]_0\(0)
    );
\slv_reg2_low_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2_low[23]_i_1_n_0\,
      D => s00_axi_wdata(21),
      Q => \slv_reg2_low_reg_n_0_[21]\,
      R => \slv_reg3_reg[0]_0\(0)
    );
\slv_reg2_low_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2_low[23]_i_1_n_0\,
      D => s00_axi_wdata(22),
      Q => \slv_reg2_low_reg_n_0_[22]\,
      R => \slv_reg3_reg[0]_0\(0)
    );
\slv_reg2_low_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2_low[23]_i_1_n_0\,
      D => s00_axi_wdata(23),
      Q => \slv_reg2_low_reg_n_0_[23]\,
      R => \slv_reg3_reg[0]_0\(0)
    );
\slv_reg2_low_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2_low[31]_i_1_n_0\,
      D => s00_axi_wdata(24),
      Q => \slv_reg2_low_reg_n_0_[24]\,
      R => \slv_reg3_reg[0]_0\(0)
    );
\slv_reg2_low_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2_low[31]_i_1_n_0\,
      D => s00_axi_wdata(25),
      Q => \slv_reg2_low_reg_n_0_[25]\,
      R => \slv_reg3_reg[0]_0\(0)
    );
\slv_reg2_low_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2_low[31]_i_1_n_0\,
      D => s00_axi_wdata(26),
      Q => \slv_reg2_low_reg_n_0_[26]\,
      R => \slv_reg3_reg[0]_0\(0)
    );
\slv_reg2_low_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2_low[31]_i_1_n_0\,
      D => s00_axi_wdata(27),
      Q => \slv_reg2_low_reg_n_0_[27]\,
      R => \slv_reg3_reg[0]_0\(0)
    );
\slv_reg2_low_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2_low[31]_i_1_n_0\,
      D => s00_axi_wdata(28),
      Q => \slv_reg2_low_reg_n_0_[28]\,
      R => \slv_reg3_reg[0]_0\(0)
    );
\slv_reg2_low_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2_low[31]_i_1_n_0\,
      D => s00_axi_wdata(29),
      Q => \slv_reg2_low_reg_n_0_[29]\,
      R => \slv_reg3_reg[0]_0\(0)
    );
\slv_reg2_low_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2_low[7]_i_1_n_0\,
      D => s00_axi_wdata(2),
      Q => \slv_reg2_low_reg_n_0_[2]\,
      R => \slv_reg3_reg[0]_0\(0)
    );
\slv_reg2_low_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2_low[31]_i_1_n_0\,
      D => s00_axi_wdata(30),
      Q => \slv_reg2_low_reg_n_0_[30]\,
      R => \slv_reg3_reg[0]_0\(0)
    );
\slv_reg2_low_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2_low[31]_i_1_n_0\,
      D => s00_axi_wdata(31),
      Q => \slv_reg2_low_reg_n_0_[31]\,
      R => \slv_reg3_reg[0]_0\(0)
    );
\slv_reg2_low_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2_low[7]_i_1_n_0\,
      D => s00_axi_wdata(3),
      Q => \slv_reg2_low_reg_n_0_[3]\,
      R => \slv_reg3_reg[0]_0\(0)
    );
\slv_reg2_low_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2_low[7]_i_1_n_0\,
      D => s00_axi_wdata(4),
      Q => \slv_reg2_low_reg_n_0_[4]\,
      R => \slv_reg3_reg[0]_0\(0)
    );
\slv_reg2_low_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2_low[7]_i_1_n_0\,
      D => s00_axi_wdata(5),
      Q => \slv_reg2_low_reg_n_0_[5]\,
      R => \slv_reg3_reg[0]_0\(0)
    );
\slv_reg2_low_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2_low[7]_i_1_n_0\,
      D => s00_axi_wdata(6),
      Q => \slv_reg2_low_reg_n_0_[6]\,
      R => \slv_reg3_reg[0]_0\(0)
    );
\slv_reg2_low_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2_low[7]_i_1_n_0\,
      D => s00_axi_wdata(7),
      Q => \slv_reg2_low_reg_n_0_[7]\,
      R => \slv_reg3_reg[0]_0\(0)
    );
\slv_reg2_low_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2_low[15]_i_1_n_0\,
      D => s00_axi_wdata(8),
      Q => \slv_reg2_low_reg_n_0_[8]\,
      R => \slv_reg3_reg[0]_0\(0)
    );
\slv_reg2_low_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2_low[15]_i_1_n_0\,
      D => s00_axi_wdata(9),
      Q => \slv_reg2_low_reg_n_0_[9]\,
      R => \slv_reg3_reg[0]_0\(0)
    );
\slv_reg3[15]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000020000000"
    )
        port map (
      I0 => slv_reg_wren,
      I1 => axi_awaddr(5),
      I2 => s00_axi_wstrb(1),
      I3 => axi_awaddr(2),
      I4 => axi_awaddr(3),
      I5 => axi_awaddr(4),
      O => \slv_reg3[15]_i_1_n_0\
    );
\slv_reg3[23]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000020000000"
    )
        port map (
      I0 => slv_reg_wren,
      I1 => axi_awaddr(5),
      I2 => s00_axi_wstrb(2),
      I3 => axi_awaddr(2),
      I4 => axi_awaddr(3),
      I5 => axi_awaddr(4),
      O => \slv_reg3[23]_i_1_n_0\
    );
\slv_reg3[31]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000020000000"
    )
        port map (
      I0 => slv_reg_wren,
      I1 => axi_awaddr(5),
      I2 => s00_axi_wstrb(3),
      I3 => axi_awaddr(2),
      I4 => axi_awaddr(3),
      I5 => axi_awaddr(4),
      O => \slv_reg3[31]_i_1_n_0\
    );
\slv_reg3[31]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"80000000"
    )
        port map (
      I0 => s00_axi_awvalid,
      I1 => axi_wready,
      I2 => axi_awready,
      I3 => s00_sq_wr_sel,
      I4 => s00_axi_wvalid,
      O => slv_reg_wren
    );
\slv_reg3[7]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000020000000"
    )
        port map (
      I0 => slv_reg_wren,
      I1 => axi_awaddr(5),
      I2 => s00_axi_wstrb(0),
      I3 => axi_awaddr(2),
      I4 => axi_awaddr(3),
      I5 => axi_awaddr(4),
      O => \slv_reg3[7]_i_1_n_0\
    );
\slv_reg3_reg[0]\: unisim.vcomponents.FDSE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[7]_i_1_n_0\,
      D => s00_axi_wdata(0),
      Q => \slv_reg3_reg_n_0_[0]\,
      S => \slv_reg3_reg[0]_0\(0)
    );
\slv_reg3_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[15]_i_1_n_0\,
      D => s00_axi_wdata(10),
      Q => \slv_reg3_reg_n_0_[10]\,
      R => \slv_reg3_reg[0]_0\(0)
    );
\slv_reg3_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[15]_i_1_n_0\,
      D => s00_axi_wdata(11),
      Q => \slv_reg3_reg_n_0_[11]\,
      R => \slv_reg3_reg[0]_0\(0)
    );
\slv_reg3_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[15]_i_1_n_0\,
      D => s00_axi_wdata(12),
      Q => \slv_reg3_reg_n_0_[12]\,
      R => \slv_reg3_reg[0]_0\(0)
    );
\slv_reg3_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[15]_i_1_n_0\,
      D => s00_axi_wdata(13),
      Q => \slv_reg3_reg_n_0_[13]\,
      R => \slv_reg3_reg[0]_0\(0)
    );
\slv_reg3_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[15]_i_1_n_0\,
      D => s00_axi_wdata(14),
      Q => \slv_reg3_reg_n_0_[14]\,
      R => \slv_reg3_reg[0]_0\(0)
    );
\slv_reg3_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[15]_i_1_n_0\,
      D => s00_axi_wdata(15),
      Q => \slv_reg3_reg_n_0_[15]\,
      R => \slv_reg3_reg[0]_0\(0)
    );
\slv_reg3_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[23]_i_1_n_0\,
      D => s00_axi_wdata(16),
      Q => \slv_reg3_reg_n_0_[16]\,
      R => \slv_reg3_reg[0]_0\(0)
    );
\slv_reg3_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[23]_i_1_n_0\,
      D => s00_axi_wdata(17),
      Q => \slv_reg3_reg_n_0_[17]\,
      R => \slv_reg3_reg[0]_0\(0)
    );
\slv_reg3_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[23]_i_1_n_0\,
      D => s00_axi_wdata(18),
      Q => \slv_reg3_reg_n_0_[18]\,
      R => \slv_reg3_reg[0]_0\(0)
    );
\slv_reg3_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[23]_i_1_n_0\,
      D => s00_axi_wdata(19),
      Q => \slv_reg3_reg_n_0_[19]\,
      R => \slv_reg3_reg[0]_0\(0)
    );
\slv_reg3_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[7]_i_1_n_0\,
      D => s00_axi_wdata(1),
      Q => \slv_reg3_reg_n_0_[1]\,
      R => \slv_reg3_reg[0]_0\(0)
    );
\slv_reg3_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[23]_i_1_n_0\,
      D => s00_axi_wdata(20),
      Q => \slv_reg3_reg_n_0_[20]\,
      R => \slv_reg3_reg[0]_0\(0)
    );
\slv_reg3_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[23]_i_1_n_0\,
      D => s00_axi_wdata(21),
      Q => \slv_reg3_reg_n_0_[21]\,
      R => \slv_reg3_reg[0]_0\(0)
    );
\slv_reg3_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[23]_i_1_n_0\,
      D => s00_axi_wdata(22),
      Q => \slv_reg3_reg_n_0_[22]\,
      R => \slv_reg3_reg[0]_0\(0)
    );
\slv_reg3_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[23]_i_1_n_0\,
      D => s00_axi_wdata(23),
      Q => \slv_reg3_reg_n_0_[23]\,
      R => \slv_reg3_reg[0]_0\(0)
    );
\slv_reg3_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[31]_i_1_n_0\,
      D => s00_axi_wdata(24),
      Q => \slv_reg3_reg_n_0_[24]\,
      R => \slv_reg3_reg[0]_0\(0)
    );
\slv_reg3_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[31]_i_1_n_0\,
      D => s00_axi_wdata(25),
      Q => \slv_reg3_reg_n_0_[25]\,
      R => \slv_reg3_reg[0]_0\(0)
    );
\slv_reg3_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[31]_i_1_n_0\,
      D => s00_axi_wdata(26),
      Q => \slv_reg3_reg_n_0_[26]\,
      R => \slv_reg3_reg[0]_0\(0)
    );
\slv_reg3_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[31]_i_1_n_0\,
      D => s00_axi_wdata(27),
      Q => \slv_reg3_reg_n_0_[27]\,
      R => \slv_reg3_reg[0]_0\(0)
    );
\slv_reg3_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[31]_i_1_n_0\,
      D => s00_axi_wdata(28),
      Q => \slv_reg3_reg_n_0_[28]\,
      R => \slv_reg3_reg[0]_0\(0)
    );
\slv_reg3_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[31]_i_1_n_0\,
      D => s00_axi_wdata(29),
      Q => \slv_reg3_reg_n_0_[29]\,
      R => \slv_reg3_reg[0]_0\(0)
    );
\slv_reg3_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[7]_i_1_n_0\,
      D => s00_axi_wdata(2),
      Q => \slv_reg3_reg_n_0_[2]\,
      R => \slv_reg3_reg[0]_0\(0)
    );
\slv_reg3_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[31]_i_1_n_0\,
      D => s00_axi_wdata(30),
      Q => \slv_reg3_reg_n_0_[30]\,
      R => \slv_reg3_reg[0]_0\(0)
    );
\slv_reg3_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[31]_i_1_n_0\,
      D => s00_axi_wdata(31),
      Q => \slv_reg3_reg_n_0_[31]\,
      R => \slv_reg3_reg[0]_0\(0)
    );
\slv_reg3_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[7]_i_1_n_0\,
      D => s00_axi_wdata(3),
      Q => \slv_reg3_reg_n_0_[3]\,
      R => \slv_reg3_reg[0]_0\(0)
    );
\slv_reg3_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[7]_i_1_n_0\,
      D => s00_axi_wdata(4),
      Q => \slv_reg3_reg_n_0_[4]\,
      R => \slv_reg3_reg[0]_0\(0)
    );
\slv_reg3_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[7]_i_1_n_0\,
      D => s00_axi_wdata(5),
      Q => \slv_reg3_reg_n_0_[5]\,
      R => \slv_reg3_reg[0]_0\(0)
    );
\slv_reg3_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[7]_i_1_n_0\,
      D => s00_axi_wdata(6),
      Q => \slv_reg3_reg_n_0_[6]\,
      R => \slv_reg3_reg[0]_0\(0)
    );
\slv_reg3_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[7]_i_1_n_0\,
      D => s00_axi_wdata(7),
      Q => \slv_reg3_reg_n_0_[7]\,
      R => \slv_reg3_reg[0]_0\(0)
    );
\slv_reg3_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[15]_i_1_n_0\,
      D => s00_axi_wdata(8),
      Q => \slv_reg3_reg_n_0_[8]\,
      R => \slv_reg3_reg[0]_0\(0)
    );
\slv_reg3_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[15]_i_1_n_0\,
      D => s00_axi_wdata(9),
      Q => \slv_reg3_reg_n_0_[9]\,
      R => \slv_reg3_reg[0]_0\(0)
    );
soft_reset_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \slv_reg3_reg_n_0_[31]\,
      I1 => Q(0),
      O => \slv_reg3_reg[31]_0\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_cmd_queue_v1_0_0 is
  port (
    irq_sq : out STD_LOGIC;
    irq_cq : out STD_LOGIC;
    s00_axi_aclk : in STD_LOGIC;
    s00_axi_aresetn : in STD_LOGIC;
    s00_axi_awaddr : in STD_LOGIC_VECTOR ( 8 downto 0 );
    s00_axi_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s00_axi_awvalid : in STD_LOGIC;
    s00_axi_awready : out STD_LOGIC;
    s00_axi_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s00_axi_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s00_axi_wvalid : in STD_LOGIC;
    s00_axi_wready : out STD_LOGIC;
    s00_axi_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s00_axi_bvalid : out STD_LOGIC;
    s00_axi_bready : in STD_LOGIC;
    s00_axi_araddr : in STD_LOGIC_VECTOR ( 8 downto 0 );
    s00_axi_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s00_axi_arvalid : in STD_LOGIC;
    s00_axi_arready : out STD_LOGIC;
    s00_axi_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s00_axi_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s00_axi_rvalid : out STD_LOGIC;
    s00_axi_rready : in STD_LOGIC;
    s01_axi_awaddr : in STD_LOGIC_VECTOR ( 8 downto 0 );
    s01_axi_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s01_axi_awvalid : in STD_LOGIC;
    s01_axi_awready : out STD_LOGIC;
    s01_axi_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s01_axi_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s01_axi_wvalid : in STD_LOGIC;
    s01_axi_wready : out STD_LOGIC;
    s01_axi_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s01_axi_bvalid : out STD_LOGIC;
    s01_axi_bready : in STD_LOGIC;
    s01_axi_araddr : in STD_LOGIC_VECTOR ( 8 downto 0 );
    s01_axi_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s01_axi_arvalid : in STD_LOGIC;
    s01_axi_arready : out STD_LOGIC;
    s01_axi_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s01_axi_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s01_axi_rvalid : out STD_LOGIC;
    s01_axi_rready : in STD_LOGIC
  );
  attribute C_S00_AXI_ADDR_WIDTH : integer;
  attribute C_S00_AXI_ADDR_WIDTH of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_cmd_queue_v1_0_0 : entity is 9;
  attribute C_S00_AXI_BASEADDR : integer;
  attribute C_S00_AXI_BASEADDR of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_cmd_queue_v1_0_0 : entity is -2147414016;
  attribute C_S00_AXI_DATA_WIDTH : integer;
  attribute C_S00_AXI_DATA_WIDTH of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_cmd_queue_v1_0_0 : entity is 32;
  attribute C_S00_AXI_HIGHADDR : integer;
  attribute C_S00_AXI_HIGHADDR of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_cmd_queue_v1_0_0 : entity is -2147409921;
  attribute C_S01_AXI_ADDR_WIDTH : integer;
  attribute C_S01_AXI_ADDR_WIDTH of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_cmd_queue_v1_0_0 : entity is 9;
  attribute C_S01_AXI_BASEADDR : integer;
  attribute C_S01_AXI_BASEADDR of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_cmd_queue_v1_0_0 : entity is 0;
  attribute C_S01_AXI_DATA_WIDTH : integer;
  attribute C_S01_AXI_DATA_WIDTH of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_cmd_queue_v1_0_0 : entity is 32;
  attribute C_S01_AXI_HIGHADDR : integer;
  attribute C_S01_AXI_HIGHADDR of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_cmd_queue_v1_0_0 : entity is 4095;
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_cmd_queue_v1_0_0;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_cmd_queue_v1_0_0 is
  signal \<const0>\ : STD_LOGIC;
  signal axi_s01_rdata : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal cmd_queue_v1_0_0_S00_AXI_cq_inst_n_0 : STD_LOGIC;
  signal cmd_queue_v1_0_0_S00_AXI_cq_inst_n_1 : STD_LOGIC;
  signal cmd_queue_v1_0_0_S00_AXI_cq_inst_n_10 : STD_LOGIC;
  signal cmd_queue_v1_0_0_S00_AXI_cq_inst_n_12 : STD_LOGIC;
  signal cmd_queue_v1_0_0_S00_AXI_cq_inst_n_2 : STD_LOGIC;
  signal cmd_queue_v1_0_0_S00_AXI_cq_inst_n_3 : STD_LOGIC;
  signal cmd_queue_v1_0_0_S00_AXI_cq_inst_n_4 : STD_LOGIC;
  signal cmd_queue_v1_0_0_S00_AXI_cq_inst_n_45 : STD_LOGIC;
  signal cmd_queue_v1_0_0_S00_AXI_cq_inst_n_46 : STD_LOGIC;
  signal cmd_queue_v1_0_0_S00_AXI_cq_inst_n_47 : STD_LOGIC;
  signal cmd_queue_v1_0_0_S00_AXI_cq_inst_n_48 : STD_LOGIC;
  signal cmd_queue_v1_0_0_S00_AXI_cq_inst_n_49 : STD_LOGIC;
  signal cmd_queue_v1_0_0_S00_AXI_cq_inst_n_50 : STD_LOGIC;
  signal cmd_queue_v1_0_0_S00_AXI_cq_inst_n_51 : STD_LOGIC;
  signal cmd_queue_v1_0_0_S00_AXI_cq_inst_n_52 : STD_LOGIC;
  signal cmd_queue_v1_0_0_S00_AXI_cq_inst_n_53 : STD_LOGIC;
  signal cmd_queue_v1_0_0_S00_AXI_cq_inst_n_54 : STD_LOGIC;
  signal cmd_queue_v1_0_0_S00_AXI_cq_inst_n_55 : STD_LOGIC;
  signal cmd_queue_v1_0_0_S00_AXI_cq_inst_n_56 : STD_LOGIC;
  signal cmd_queue_v1_0_0_S00_AXI_cq_inst_n_57 : STD_LOGIC;
  signal cmd_queue_v1_0_0_S00_AXI_cq_inst_n_58 : STD_LOGIC;
  signal cmd_queue_v1_0_0_S00_AXI_cq_inst_n_59 : STD_LOGIC;
  signal cmd_queue_v1_0_0_S00_AXI_cq_inst_n_6 : STD_LOGIC;
  signal cmd_queue_v1_0_0_S00_AXI_cq_inst_n_60 : STD_LOGIC;
  signal cmd_queue_v1_0_0_S00_AXI_cq_inst_n_61 : STD_LOGIC;
  signal cmd_queue_v1_0_0_S00_AXI_cq_inst_n_62 : STD_LOGIC;
  signal cmd_queue_v1_0_0_S00_AXI_cq_inst_n_63 : STD_LOGIC;
  signal cmd_queue_v1_0_0_S00_AXI_cq_inst_n_64 : STD_LOGIC;
  signal cmd_queue_v1_0_0_S00_AXI_cq_inst_n_65 : STD_LOGIC;
  signal cmd_queue_v1_0_0_S00_AXI_cq_inst_n_66 : STD_LOGIC;
  signal cmd_queue_v1_0_0_S00_AXI_cq_inst_n_67 : STD_LOGIC;
  signal cmd_queue_v1_0_0_S00_AXI_cq_inst_n_68 : STD_LOGIC;
  signal cmd_queue_v1_0_0_S00_AXI_cq_inst_n_69 : STD_LOGIC;
  signal cmd_queue_v1_0_0_S00_AXI_cq_inst_n_7 : STD_LOGIC;
  signal cmd_queue_v1_0_0_S00_AXI_cq_inst_n_70 : STD_LOGIC;
  signal cmd_queue_v1_0_0_S00_AXI_cq_inst_n_71 : STD_LOGIC;
  signal cmd_queue_v1_0_0_S00_AXI_cq_inst_n_72 : STD_LOGIC;
  signal cmd_queue_v1_0_0_S00_AXI_cq_inst_n_73 : STD_LOGIC;
  signal cmd_queue_v1_0_0_S00_AXI_cq_inst_n_74 : STD_LOGIC;
  signal cmd_queue_v1_0_0_S00_AXI_cq_inst_n_75 : STD_LOGIC;
  signal cmd_queue_v1_0_0_S00_AXI_cq_inst_n_76 : STD_LOGIC;
  signal cmd_queue_v1_0_0_S00_AXI_cq_inst_n_8 : STD_LOGIC;
  signal cmd_queue_v1_0_0_S00_AXI_cq_inst_n_9 : STD_LOGIC;
  signal cmd_queue_v1_0_0_S00_AXI_sq_inst_n_2 : STD_LOGIC;
  signal p_0_in : STD_LOGIC;
  signal s00_cq_rd_sel : STD_LOGIC;
  signal s00_cq_wr_sel : STD_LOGIC;
  signal s00_sq_rd_sel : STD_LOGIC;
  signal s00_sq_rd_sel_i_1_n_0 : STD_LOGIC;
  signal s00_sq_wr_sel : STD_LOGIC;
  signal s00_sq_wr_sel_i_2_n_0 : STD_LOGIC;
  signal s01_cq_rd_sel : STD_LOGIC;
  signal s01_cq_rd_sel_i_1_n_0 : STD_LOGIC;
  signal s01_cq_wr_sel : STD_LOGIC;
  signal s01_cq_wr_sel_i_1_n_0 : STD_LOGIC;
  signal s01_sq_rd_sel : STD_LOGIC;
  signal s01_sq_wr_sel : STD_LOGIC;
  signal slv_reg10 : STD_LOGIC;
  signal soft_reset : STD_LOGIC;
begin
  s00_axi_bresp(1) <= \<const0>\;
  s00_axi_bresp(0) <= \<const0>\;
  s00_axi_rresp(1) <= \<const0>\;
  s00_axi_rresp(0) <= \<const0>\;
  s01_axi_bresp(1) <= \<const0>\;
  s01_axi_bresp(0) <= \<const0>\;
  s01_axi_rresp(1) <= \<const0>\;
  s01_axi_rresp(0) <= \<const0>\;
GND: unisim.vcomponents.GND
     port map (
      G => \<const0>\
    );
cmd_queue_v1_0_0_S00_AXI_cq_inst: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_cmd_queue_v1_0_0_S00_AXI
     port map (
      Q(0) => cmd_queue_v1_0_0_S00_AXI_cq_inst_n_12,
      SR(0) => p_0_in,
      axi_arready_reg_0 => cmd_queue_v1_0_0_S00_AXI_cq_inst_n_6,
      axi_awready_reg_0 => cmd_queue_v1_0_0_S00_AXI_cq_inst_n_3,
      axi_bvalid_reg_0 => cmd_queue_v1_0_0_S00_AXI_cq_inst_n_9,
      \axi_rdata_reg[31]_0\(31) => cmd_queue_v1_0_0_S00_AXI_cq_inst_n_45,
      \axi_rdata_reg[31]_0\(30) => cmd_queue_v1_0_0_S00_AXI_cq_inst_n_46,
      \axi_rdata_reg[31]_0\(29) => cmd_queue_v1_0_0_S00_AXI_cq_inst_n_47,
      \axi_rdata_reg[31]_0\(28) => cmd_queue_v1_0_0_S00_AXI_cq_inst_n_48,
      \axi_rdata_reg[31]_0\(27) => cmd_queue_v1_0_0_S00_AXI_cq_inst_n_49,
      \axi_rdata_reg[31]_0\(26) => cmd_queue_v1_0_0_S00_AXI_cq_inst_n_50,
      \axi_rdata_reg[31]_0\(25) => cmd_queue_v1_0_0_S00_AXI_cq_inst_n_51,
      \axi_rdata_reg[31]_0\(24) => cmd_queue_v1_0_0_S00_AXI_cq_inst_n_52,
      \axi_rdata_reg[31]_0\(23) => cmd_queue_v1_0_0_S00_AXI_cq_inst_n_53,
      \axi_rdata_reg[31]_0\(22) => cmd_queue_v1_0_0_S00_AXI_cq_inst_n_54,
      \axi_rdata_reg[31]_0\(21) => cmd_queue_v1_0_0_S00_AXI_cq_inst_n_55,
      \axi_rdata_reg[31]_0\(20) => cmd_queue_v1_0_0_S00_AXI_cq_inst_n_56,
      \axi_rdata_reg[31]_0\(19) => cmd_queue_v1_0_0_S00_AXI_cq_inst_n_57,
      \axi_rdata_reg[31]_0\(18) => cmd_queue_v1_0_0_S00_AXI_cq_inst_n_58,
      \axi_rdata_reg[31]_0\(17) => cmd_queue_v1_0_0_S00_AXI_cq_inst_n_59,
      \axi_rdata_reg[31]_0\(16) => cmd_queue_v1_0_0_S00_AXI_cq_inst_n_60,
      \axi_rdata_reg[31]_0\(15) => cmd_queue_v1_0_0_S00_AXI_cq_inst_n_61,
      \axi_rdata_reg[31]_0\(14) => cmd_queue_v1_0_0_S00_AXI_cq_inst_n_62,
      \axi_rdata_reg[31]_0\(13) => cmd_queue_v1_0_0_S00_AXI_cq_inst_n_63,
      \axi_rdata_reg[31]_0\(12) => cmd_queue_v1_0_0_S00_AXI_cq_inst_n_64,
      \axi_rdata_reg[31]_0\(11) => cmd_queue_v1_0_0_S00_AXI_cq_inst_n_65,
      \axi_rdata_reg[31]_0\(10) => cmd_queue_v1_0_0_S00_AXI_cq_inst_n_66,
      \axi_rdata_reg[31]_0\(9) => cmd_queue_v1_0_0_S00_AXI_cq_inst_n_67,
      \axi_rdata_reg[31]_0\(8) => cmd_queue_v1_0_0_S00_AXI_cq_inst_n_68,
      \axi_rdata_reg[31]_0\(7) => cmd_queue_v1_0_0_S00_AXI_cq_inst_n_69,
      \axi_rdata_reg[31]_0\(6) => cmd_queue_v1_0_0_S00_AXI_cq_inst_n_70,
      \axi_rdata_reg[31]_0\(5) => cmd_queue_v1_0_0_S00_AXI_cq_inst_n_71,
      \axi_rdata_reg[31]_0\(4) => cmd_queue_v1_0_0_S00_AXI_cq_inst_n_72,
      \axi_rdata_reg[31]_0\(3) => cmd_queue_v1_0_0_S00_AXI_cq_inst_n_73,
      \axi_rdata_reg[31]_0\(2) => cmd_queue_v1_0_0_S00_AXI_cq_inst_n_74,
      \axi_rdata_reg[31]_0\(1) => cmd_queue_v1_0_0_S00_AXI_cq_inst_n_75,
      \axi_rdata_reg[31]_0\(0) => cmd_queue_v1_0_0_S00_AXI_cq_inst_n_76,
      axi_rvalid_reg_0 => cmd_queue_v1_0_0_S00_AXI_cq_inst_n_10,
      axi_s01_arready_reg_0 => cmd_queue_v1_0_0_S00_AXI_cq_inst_n_2,
      axi_s01_awready_reg_0 => cmd_queue_v1_0_0_S00_AXI_cq_inst_n_1,
      axi_s01_bvalid_reg_0 => cmd_queue_v1_0_0_S00_AXI_cq_inst_n_7,
      \axi_s01_rdata_reg[31]_0\(31 downto 0) => axi_s01_rdata(31 downto 0),
      axi_s01_rvalid_reg_0 => cmd_queue_v1_0_0_S00_AXI_cq_inst_n_8,
      axi_s01_wready_reg_0 => cmd_queue_v1_0_0_S00_AXI_cq_inst_n_0,
      axi_wready_reg_0 => cmd_queue_v1_0_0_S00_AXI_cq_inst_n_4,
      irq_cq => irq_cq,
      s00_axi_aclk => s00_axi_aclk,
      s00_axi_araddr(3 downto 0) => s00_axi_araddr(5 downto 2),
      s00_axi_aresetn => s00_axi_aresetn,
      s00_axi_arvalid => s00_axi_arvalid,
      s00_axi_awvalid => s00_axi_awvalid,
      s00_axi_bready => s00_axi_bready,
      s00_axi_rready => s00_axi_rready,
      s00_axi_wvalid => s00_axi_wvalid,
      s00_cq_rd_sel => s00_cq_rd_sel,
      s00_cq_wr_sel => s00_cq_wr_sel,
      s01_axi_araddr(3 downto 0) => s01_axi_araddr(5 downto 2),
      s01_axi_arvalid => s01_axi_arvalid,
      s01_axi_awaddr(3 downto 0) => s01_axi_awaddr(5 downto 2),
      s01_axi_awvalid => s01_axi_awvalid,
      s01_axi_bready => s01_axi_bready,
      s01_axi_rready => s01_axi_rready,
      s01_axi_wdata(31 downto 0) => s01_axi_wdata(31 downto 0),
      s01_axi_wstrb(3 downto 0) => s01_axi_wstrb(3 downto 0),
      s01_axi_wvalid => s01_axi_wvalid,
      s01_cq_rd_sel => s01_cq_rd_sel,
      s01_cq_wr_sel => s01_cq_wr_sel,
      soft_reset => soft_reset,
      soft_reset_reg(0) => slv_reg10
    );
cmd_queue_v1_0_0_S00_AXI_sq_inst: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_cmd_queue_v1_0_0_S00_AXI_0
     port map (
      Q(0) => cmd_queue_v1_0_0_S00_AXI_cq_inst_n_12,
      SR(0) => p_0_in,
      irq_sq => irq_sq,
      s00_axi_aclk => s00_axi_aclk,
      s00_axi_araddr(3 downto 0) => s00_axi_araddr(5 downto 2),
      s00_axi_aresetn => s00_axi_aresetn,
      s00_axi_arready => s00_axi_arready,
      s00_axi_arready_0 => cmd_queue_v1_0_0_S00_AXI_cq_inst_n_2,
      s00_axi_arvalid => s00_axi_arvalid,
      s00_axi_awaddr(3 downto 0) => s00_axi_awaddr(5 downto 2),
      s00_axi_awready => s00_axi_awready,
      s00_axi_awready_0 => cmd_queue_v1_0_0_S00_AXI_cq_inst_n_1,
      s00_axi_awvalid => s00_axi_awvalid,
      s00_axi_bready => s00_axi_bready,
      s00_axi_bvalid => s00_axi_bvalid,
      s00_axi_bvalid_0 => cmd_queue_v1_0_0_S00_AXI_cq_inst_n_7,
      s00_axi_rdata(31 downto 0) => s00_axi_rdata(31 downto 0),
      \s00_axi_rdata[31]\(31 downto 0) => axi_s01_rdata(31 downto 0),
      s00_axi_rready => s00_axi_rready,
      s00_axi_rvalid => s00_axi_rvalid,
      s00_axi_rvalid_0 => cmd_queue_v1_0_0_S00_AXI_cq_inst_n_8,
      s00_axi_wdata(31 downto 0) => s00_axi_wdata(31 downto 0),
      s00_axi_wready => s00_axi_wready,
      s00_axi_wready_0 => cmd_queue_v1_0_0_S00_AXI_cq_inst_n_0,
      s00_axi_wstrb(3 downto 0) => s00_axi_wstrb(3 downto 0),
      s00_axi_wvalid => s00_axi_wvalid,
      s00_sq_rd_sel => s00_sq_rd_sel,
      s00_sq_wr_sel => s00_sq_wr_sel,
      s01_axi_araddr(3 downto 0) => s01_axi_araddr(5 downto 2),
      s01_axi_arready => s01_axi_arready,
      s01_axi_arready_0 => cmd_queue_v1_0_0_S00_AXI_cq_inst_n_6,
      s01_axi_arvalid => s01_axi_arvalid,
      s01_axi_awready => s01_axi_awready,
      s01_axi_awready_0 => cmd_queue_v1_0_0_S00_AXI_cq_inst_n_3,
      s01_axi_awvalid => s01_axi_awvalid,
      s01_axi_bready => s01_axi_bready,
      s01_axi_bvalid => s01_axi_bvalid,
      s01_axi_bvalid_0 => cmd_queue_v1_0_0_S00_AXI_cq_inst_n_9,
      s01_axi_rdata(31 downto 0) => s01_axi_rdata(31 downto 0),
      \s01_axi_rdata[31]\(31) => cmd_queue_v1_0_0_S00_AXI_cq_inst_n_45,
      \s01_axi_rdata[31]\(30) => cmd_queue_v1_0_0_S00_AXI_cq_inst_n_46,
      \s01_axi_rdata[31]\(29) => cmd_queue_v1_0_0_S00_AXI_cq_inst_n_47,
      \s01_axi_rdata[31]\(28) => cmd_queue_v1_0_0_S00_AXI_cq_inst_n_48,
      \s01_axi_rdata[31]\(27) => cmd_queue_v1_0_0_S00_AXI_cq_inst_n_49,
      \s01_axi_rdata[31]\(26) => cmd_queue_v1_0_0_S00_AXI_cq_inst_n_50,
      \s01_axi_rdata[31]\(25) => cmd_queue_v1_0_0_S00_AXI_cq_inst_n_51,
      \s01_axi_rdata[31]\(24) => cmd_queue_v1_0_0_S00_AXI_cq_inst_n_52,
      \s01_axi_rdata[31]\(23) => cmd_queue_v1_0_0_S00_AXI_cq_inst_n_53,
      \s01_axi_rdata[31]\(22) => cmd_queue_v1_0_0_S00_AXI_cq_inst_n_54,
      \s01_axi_rdata[31]\(21) => cmd_queue_v1_0_0_S00_AXI_cq_inst_n_55,
      \s01_axi_rdata[31]\(20) => cmd_queue_v1_0_0_S00_AXI_cq_inst_n_56,
      \s01_axi_rdata[31]\(19) => cmd_queue_v1_0_0_S00_AXI_cq_inst_n_57,
      \s01_axi_rdata[31]\(18) => cmd_queue_v1_0_0_S00_AXI_cq_inst_n_58,
      \s01_axi_rdata[31]\(17) => cmd_queue_v1_0_0_S00_AXI_cq_inst_n_59,
      \s01_axi_rdata[31]\(16) => cmd_queue_v1_0_0_S00_AXI_cq_inst_n_60,
      \s01_axi_rdata[31]\(15) => cmd_queue_v1_0_0_S00_AXI_cq_inst_n_61,
      \s01_axi_rdata[31]\(14) => cmd_queue_v1_0_0_S00_AXI_cq_inst_n_62,
      \s01_axi_rdata[31]\(13) => cmd_queue_v1_0_0_S00_AXI_cq_inst_n_63,
      \s01_axi_rdata[31]\(12) => cmd_queue_v1_0_0_S00_AXI_cq_inst_n_64,
      \s01_axi_rdata[31]\(11) => cmd_queue_v1_0_0_S00_AXI_cq_inst_n_65,
      \s01_axi_rdata[31]\(10) => cmd_queue_v1_0_0_S00_AXI_cq_inst_n_66,
      \s01_axi_rdata[31]\(9) => cmd_queue_v1_0_0_S00_AXI_cq_inst_n_67,
      \s01_axi_rdata[31]\(8) => cmd_queue_v1_0_0_S00_AXI_cq_inst_n_68,
      \s01_axi_rdata[31]\(7) => cmd_queue_v1_0_0_S00_AXI_cq_inst_n_69,
      \s01_axi_rdata[31]\(6) => cmd_queue_v1_0_0_S00_AXI_cq_inst_n_70,
      \s01_axi_rdata[31]\(5) => cmd_queue_v1_0_0_S00_AXI_cq_inst_n_71,
      \s01_axi_rdata[31]\(4) => cmd_queue_v1_0_0_S00_AXI_cq_inst_n_72,
      \s01_axi_rdata[31]\(3) => cmd_queue_v1_0_0_S00_AXI_cq_inst_n_73,
      \s01_axi_rdata[31]\(2) => cmd_queue_v1_0_0_S00_AXI_cq_inst_n_74,
      \s01_axi_rdata[31]\(1) => cmd_queue_v1_0_0_S00_AXI_cq_inst_n_75,
      \s01_axi_rdata[31]\(0) => cmd_queue_v1_0_0_S00_AXI_cq_inst_n_76,
      s01_axi_rready => s01_axi_rready,
      s01_axi_rvalid => s01_axi_rvalid,
      s01_axi_rvalid_0 => cmd_queue_v1_0_0_S00_AXI_cq_inst_n_10,
      s01_axi_wready => s01_axi_wready,
      s01_axi_wready_0 => cmd_queue_v1_0_0_S00_AXI_cq_inst_n_4,
      s01_axi_wvalid => s01_axi_wvalid,
      s01_sq_rd_sel => s01_sq_rd_sel,
      s01_sq_wr_sel => s01_sq_wr_sel,
      \slv_reg3_reg[0]_0\(0) => slv_reg10,
      \slv_reg3_reg[31]_0\ => cmd_queue_v1_0_0_S00_AXI_sq_inst_n_2
    );
s00_cq_rd_sel_reg: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => s00_axi_aresetn,
      D => s00_axi_araddr(8),
      Q => s00_cq_rd_sel,
      R => p_0_in
    );
s00_cq_wr_sel_reg: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => s00_axi_aresetn,
      D => s00_axi_awaddr(8),
      Q => s00_cq_wr_sel,
      R => p_0_in
    );
s00_sq_rd_sel_i_1: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => s00_axi_araddr(8),
      O => s00_sq_rd_sel_i_1_n_0
    );
s00_sq_rd_sel_reg: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => s00_axi_aresetn,
      D => s00_sq_rd_sel_i_1_n_0,
      Q => s00_sq_rd_sel,
      R => p_0_in
    );
s00_sq_wr_sel_i_2: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => s00_axi_awaddr(8),
      O => s00_sq_wr_sel_i_2_n_0
    );
s00_sq_wr_sel_reg: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => s00_axi_aresetn,
      D => s00_sq_wr_sel_i_2_n_0,
      Q => s00_sq_wr_sel,
      R => p_0_in
    );
s01_cq_rd_sel_i_1: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => s01_axi_araddr(8),
      O => s01_cq_rd_sel_i_1_n_0
    );
s01_cq_rd_sel_reg: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => s00_axi_aresetn,
      D => s01_cq_rd_sel_i_1_n_0,
      Q => s01_cq_rd_sel,
      R => p_0_in
    );
s01_cq_wr_sel_i_1: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => s01_axi_awaddr(8),
      O => s01_cq_wr_sel_i_1_n_0
    );
s01_cq_wr_sel_reg: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => s00_axi_aresetn,
      D => s01_cq_wr_sel_i_1_n_0,
      Q => s01_cq_wr_sel,
      R => p_0_in
    );
s01_sq_rd_sel_reg: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => s00_axi_aresetn,
      D => s01_axi_araddr(8),
      Q => s01_sq_rd_sel,
      R => p_0_in
    );
s01_sq_wr_sel_reg: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => s00_axi_aresetn,
      D => s01_axi_awaddr(8),
      Q => s01_sq_wr_sel,
      R => p_0_in
    );
soft_reset_reg: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => cmd_queue_v1_0_0_S00_AXI_sq_inst_n_2,
      Q => soft_reset,
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
  port (
    irq_sq : out STD_LOGIC;
    irq_cq : out STD_LOGIC;
    s00_axi_aclk : in STD_LOGIC;
    s00_axi_aresetn : in STD_LOGIC;
    s00_axi_awaddr : in STD_LOGIC_VECTOR ( 8 downto 0 );
    s00_axi_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s00_axi_awvalid : in STD_LOGIC;
    s00_axi_awready : out STD_LOGIC;
    s00_axi_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s00_axi_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s00_axi_wvalid : in STD_LOGIC;
    s00_axi_wready : out STD_LOGIC;
    s00_axi_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s00_axi_bvalid : out STD_LOGIC;
    s00_axi_bready : in STD_LOGIC;
    s00_axi_araddr : in STD_LOGIC_VECTOR ( 8 downto 0 );
    s00_axi_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s00_axi_arvalid : in STD_LOGIC;
    s00_axi_arready : out STD_LOGIC;
    s00_axi_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s00_axi_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s00_axi_rvalid : out STD_LOGIC;
    s00_axi_rready : in STD_LOGIC;
    s01_axi_awaddr : in STD_LOGIC_VECTOR ( 8 downto 0 );
    s01_axi_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s01_axi_awvalid : in STD_LOGIC;
    s01_axi_awready : out STD_LOGIC;
    s01_axi_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s01_axi_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s01_axi_wvalid : in STD_LOGIC;
    s01_axi_wready : out STD_LOGIC;
    s01_axi_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s01_axi_bvalid : out STD_LOGIC;
    s01_axi_bready : in STD_LOGIC;
    s01_axi_araddr : in STD_LOGIC_VECTOR ( 8 downto 0 );
    s01_axi_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s01_axi_arvalid : in STD_LOGIC;
    s01_axi_arready : out STD_LOGIC;
    s01_axi_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s01_axi_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s01_axi_rvalid : out STD_LOGIC;
    s01_axi_rready : in STD_LOGIC
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "top_gcq_r2a_0,cmd_queue_v1_0_0,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "yes";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "cmd_queue_v1_0_0,Vivado 2022.2";
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
  signal \<const0>\ : STD_LOGIC;
  signal NLW_inst_s00_axi_bresp_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal NLW_inst_s00_axi_rresp_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal NLW_inst_s01_axi_bresp_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal NLW_inst_s01_axi_rresp_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  attribute C_S00_AXI_ADDR_WIDTH : integer;
  attribute C_S00_AXI_ADDR_WIDTH of inst : label is 9;
  attribute C_S00_AXI_BASEADDR : integer;
  attribute C_S00_AXI_BASEADDR of inst : label is -2147414016;
  attribute C_S00_AXI_DATA_WIDTH : integer;
  attribute C_S00_AXI_DATA_WIDTH of inst : label is 32;
  attribute C_S00_AXI_HIGHADDR : integer;
  attribute C_S00_AXI_HIGHADDR of inst : label is -2147409921;
  attribute C_S01_AXI_ADDR_WIDTH : integer;
  attribute C_S01_AXI_ADDR_WIDTH of inst : label is 9;
  attribute C_S01_AXI_BASEADDR : integer;
  attribute C_S01_AXI_BASEADDR of inst : label is 0;
  attribute C_S01_AXI_DATA_WIDTH : integer;
  attribute C_S01_AXI_DATA_WIDTH of inst : label is 32;
  attribute C_S01_AXI_HIGHADDR : integer;
  attribute C_S01_AXI_HIGHADDR of inst : label is 4095;
  attribute X_INTERFACE_INFO : string;
  attribute X_INTERFACE_INFO of irq_cq : signal is "xilinx.com:signal:interrupt:1.0 irq_cq INTERRUPT";
  attribute X_INTERFACE_PARAMETER : string;
  attribute X_INTERFACE_PARAMETER of irq_cq : signal is "XIL_INTERFACENAME irq_cq, SENSITIVITY EDGE_RISING, PortWidth 1";
  attribute X_INTERFACE_INFO of irq_sq : signal is "xilinx.com:signal:interrupt:1.0 irq_sq INTERRUPT";
  attribute X_INTERFACE_PARAMETER of irq_sq : signal is "XIL_INTERFACENAME irq_sq, SENSITIVITY EDGE_RISING, PortWidth 1";
  attribute X_INTERFACE_INFO of s00_axi_aclk : signal is "xilinx.com:signal:clock:1.0 s00_axi_aclk CLK";
  attribute X_INTERFACE_PARAMETER of s00_axi_aclk : signal is "XIL_INTERFACENAME s00_axi_aclk, ASSOCIATED_BUSIF S00_AXI:S01_AXI, ASSOCIATED_RESET s00_axi_aresetn, FREQ_HZ 99999992, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN bd_4885_pspmc_0_0_pl0_ref_clk, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of s00_axi_aresetn : signal is "xilinx.com:signal:reset:1.0 s00_axi_aresetn RST";
  attribute X_INTERFACE_PARAMETER of s00_axi_aresetn : signal is "XIL_INTERFACENAME s00_axi_aresetn, POLARITY ACTIVE_LOW, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of s00_axi_arready : signal is "xilinx.com:interface:aximm:1.0 S00_AXI ARREADY";
  attribute X_INTERFACE_INFO of s00_axi_arvalid : signal is "xilinx.com:interface:aximm:1.0 S00_AXI ARVALID";
  attribute X_INTERFACE_INFO of s00_axi_awready : signal is "xilinx.com:interface:aximm:1.0 S00_AXI AWREADY";
  attribute X_INTERFACE_INFO of s00_axi_awvalid : signal is "xilinx.com:interface:aximm:1.0 S00_AXI AWVALID";
  attribute X_INTERFACE_INFO of s00_axi_bready : signal is "xilinx.com:interface:aximm:1.0 S00_AXI BREADY";
  attribute X_INTERFACE_INFO of s00_axi_bvalid : signal is "xilinx.com:interface:aximm:1.0 S00_AXI BVALID";
  attribute X_INTERFACE_INFO of s00_axi_rready : signal is "xilinx.com:interface:aximm:1.0 S00_AXI RREADY";
  attribute X_INTERFACE_PARAMETER of s00_axi_rready : signal is "XIL_INTERFACENAME S00_AXI, DATA_WIDTH 32, PROTOCOL AXI4LITE, FREQ_HZ 99999992, ID_WIDTH 0, ADDR_WIDTH 9, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, READ_WRITE_MODE READ_WRITE, HAS_BURST 0, HAS_LOCK 0, HAS_PROT 1, HAS_CACHE 0, HAS_QOS 0, HAS_REGION 0, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, SUPPORTS_NARROW_BURST 0, NUM_READ_OUTSTANDING 2, NUM_WRITE_OUTSTANDING 2, MAX_BURST_LENGTH 1, PHASE 0.0, CLK_DOMAIN bd_4885_pspmc_0_0_pl0_ref_clk, NUM_READ_THREADS 1, NUM_WRITE_THREADS 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of s00_axi_rvalid : signal is "xilinx.com:interface:aximm:1.0 S00_AXI RVALID";
  attribute X_INTERFACE_INFO of s00_axi_wready : signal is "xilinx.com:interface:aximm:1.0 S00_AXI WREADY";
  attribute X_INTERFACE_INFO of s00_axi_wvalid : signal is "xilinx.com:interface:aximm:1.0 S00_AXI WVALID";
  attribute X_INTERFACE_INFO of s01_axi_arready : signal is "xilinx.com:interface:aximm:1.0 S01_AXI ARREADY";
  attribute X_INTERFACE_INFO of s01_axi_arvalid : signal is "xilinx.com:interface:aximm:1.0 S01_AXI ARVALID";
  attribute X_INTERFACE_INFO of s01_axi_awready : signal is "xilinx.com:interface:aximm:1.0 S01_AXI AWREADY";
  attribute X_INTERFACE_INFO of s01_axi_awvalid : signal is "xilinx.com:interface:aximm:1.0 S01_AXI AWVALID";
  attribute X_INTERFACE_INFO of s01_axi_bready : signal is "xilinx.com:interface:aximm:1.0 S01_AXI BREADY";
  attribute X_INTERFACE_INFO of s01_axi_bvalid : signal is "xilinx.com:interface:aximm:1.0 S01_AXI BVALID";
  attribute X_INTERFACE_INFO of s01_axi_rready : signal is "xilinx.com:interface:aximm:1.0 S01_AXI RREADY";
  attribute X_INTERFACE_PARAMETER of s01_axi_rready : signal is "XIL_INTERFACENAME S01_AXI, DATA_WIDTH 32, PROTOCOL AXI4LITE, FREQ_HZ 99999992, ID_WIDTH 0, ADDR_WIDTH 9, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, READ_WRITE_MODE READ_WRITE, HAS_BURST 0, HAS_LOCK 0, HAS_PROT 1, HAS_CACHE 0, HAS_QOS 0, HAS_REGION 0, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, SUPPORTS_NARROW_BURST 0, NUM_READ_OUTSTANDING 2, NUM_WRITE_OUTSTANDING 2, MAX_BURST_LENGTH 1, PHASE 0.0, CLK_DOMAIN bd_4885_pspmc_0_0_pl0_ref_clk, NUM_READ_THREADS 1, NUM_WRITE_THREADS 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of s01_axi_rvalid : signal is "xilinx.com:interface:aximm:1.0 S01_AXI RVALID";
  attribute X_INTERFACE_INFO of s01_axi_wready : signal is "xilinx.com:interface:aximm:1.0 S01_AXI WREADY";
  attribute X_INTERFACE_INFO of s01_axi_wvalid : signal is "xilinx.com:interface:aximm:1.0 S01_AXI WVALID";
  attribute X_INTERFACE_INFO of s00_axi_araddr : signal is "xilinx.com:interface:aximm:1.0 S00_AXI ARADDR";
  attribute X_INTERFACE_INFO of s00_axi_arprot : signal is "xilinx.com:interface:aximm:1.0 S00_AXI ARPROT";
  attribute X_INTERFACE_INFO of s00_axi_awaddr : signal is "xilinx.com:interface:aximm:1.0 S00_AXI AWADDR";
  attribute X_INTERFACE_INFO of s00_axi_awprot : signal is "xilinx.com:interface:aximm:1.0 S00_AXI AWPROT";
  attribute X_INTERFACE_INFO of s00_axi_bresp : signal is "xilinx.com:interface:aximm:1.0 S00_AXI BRESP";
  attribute X_INTERFACE_INFO of s00_axi_rdata : signal is "xilinx.com:interface:aximm:1.0 S00_AXI RDATA";
  attribute X_INTERFACE_INFO of s00_axi_rresp : signal is "xilinx.com:interface:aximm:1.0 S00_AXI RRESP";
  attribute X_INTERFACE_INFO of s00_axi_wdata : signal is "xilinx.com:interface:aximm:1.0 S00_AXI WDATA";
  attribute X_INTERFACE_INFO of s00_axi_wstrb : signal is "xilinx.com:interface:aximm:1.0 S00_AXI WSTRB";
  attribute X_INTERFACE_INFO of s01_axi_araddr : signal is "xilinx.com:interface:aximm:1.0 S01_AXI ARADDR";
  attribute X_INTERFACE_INFO of s01_axi_arprot : signal is "xilinx.com:interface:aximm:1.0 S01_AXI ARPROT";
  attribute X_INTERFACE_INFO of s01_axi_awaddr : signal is "xilinx.com:interface:aximm:1.0 S01_AXI AWADDR";
  attribute X_INTERFACE_INFO of s01_axi_awprot : signal is "xilinx.com:interface:aximm:1.0 S01_AXI AWPROT";
  attribute X_INTERFACE_INFO of s01_axi_bresp : signal is "xilinx.com:interface:aximm:1.0 S01_AXI BRESP";
  attribute X_INTERFACE_INFO of s01_axi_rdata : signal is "xilinx.com:interface:aximm:1.0 S01_AXI RDATA";
  attribute X_INTERFACE_INFO of s01_axi_rresp : signal is "xilinx.com:interface:aximm:1.0 S01_AXI RRESP";
  attribute X_INTERFACE_INFO of s01_axi_wdata : signal is "xilinx.com:interface:aximm:1.0 S01_AXI WDATA";
  attribute X_INTERFACE_INFO of s01_axi_wstrb : signal is "xilinx.com:interface:aximm:1.0 S01_AXI WSTRB";
begin
  s00_axi_bresp(1) <= \<const0>\;
  s00_axi_bresp(0) <= \<const0>\;
  s00_axi_rresp(1) <= \<const0>\;
  s00_axi_rresp(0) <= \<const0>\;
  s01_axi_bresp(1) <= \<const0>\;
  s01_axi_bresp(0) <= \<const0>\;
  s01_axi_rresp(1) <= \<const0>\;
  s01_axi_rresp(0) <= \<const0>\;
GND: unisim.vcomponents.GND
     port map (
      G => \<const0>\
    );
inst: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_cmd_queue_v1_0_0
     port map (
      irq_cq => irq_cq,
      irq_sq => irq_sq,
      s00_axi_aclk => s00_axi_aclk,
      s00_axi_araddr(8) => s00_axi_araddr(8),
      s00_axi_araddr(7 downto 6) => B"00",
      s00_axi_araddr(5 downto 2) => s00_axi_araddr(5 downto 2),
      s00_axi_araddr(1 downto 0) => B"00",
      s00_axi_aresetn => s00_axi_aresetn,
      s00_axi_arprot(2 downto 0) => B"000",
      s00_axi_arready => s00_axi_arready,
      s00_axi_arvalid => s00_axi_arvalid,
      s00_axi_awaddr(8) => s00_axi_awaddr(8),
      s00_axi_awaddr(7 downto 6) => B"00",
      s00_axi_awaddr(5 downto 2) => s00_axi_awaddr(5 downto 2),
      s00_axi_awaddr(1 downto 0) => B"00",
      s00_axi_awprot(2 downto 0) => B"000",
      s00_axi_awready => s00_axi_awready,
      s00_axi_awvalid => s00_axi_awvalid,
      s00_axi_bready => s00_axi_bready,
      s00_axi_bresp(1 downto 0) => NLW_inst_s00_axi_bresp_UNCONNECTED(1 downto 0),
      s00_axi_bvalid => s00_axi_bvalid,
      s00_axi_rdata(31 downto 0) => s00_axi_rdata(31 downto 0),
      s00_axi_rready => s00_axi_rready,
      s00_axi_rresp(1 downto 0) => NLW_inst_s00_axi_rresp_UNCONNECTED(1 downto 0),
      s00_axi_rvalid => s00_axi_rvalid,
      s00_axi_wdata(31 downto 0) => s00_axi_wdata(31 downto 0),
      s00_axi_wready => s00_axi_wready,
      s00_axi_wstrb(3 downto 0) => s00_axi_wstrb(3 downto 0),
      s00_axi_wvalid => s00_axi_wvalid,
      s01_axi_araddr(8) => s01_axi_araddr(8),
      s01_axi_araddr(7 downto 6) => B"00",
      s01_axi_araddr(5 downto 2) => s01_axi_araddr(5 downto 2),
      s01_axi_araddr(1 downto 0) => B"00",
      s01_axi_arprot(2 downto 0) => B"000",
      s01_axi_arready => s01_axi_arready,
      s01_axi_arvalid => s01_axi_arvalid,
      s01_axi_awaddr(8) => s01_axi_awaddr(8),
      s01_axi_awaddr(7 downto 6) => B"00",
      s01_axi_awaddr(5 downto 2) => s01_axi_awaddr(5 downto 2),
      s01_axi_awaddr(1 downto 0) => B"00",
      s01_axi_awprot(2 downto 0) => B"000",
      s01_axi_awready => s01_axi_awready,
      s01_axi_awvalid => s01_axi_awvalid,
      s01_axi_bready => s01_axi_bready,
      s01_axi_bresp(1 downto 0) => NLW_inst_s01_axi_bresp_UNCONNECTED(1 downto 0),
      s01_axi_bvalid => s01_axi_bvalid,
      s01_axi_rdata(31 downto 0) => s01_axi_rdata(31 downto 0),
      s01_axi_rready => s01_axi_rready,
      s01_axi_rresp(1 downto 0) => NLW_inst_s01_axi_rresp_UNCONNECTED(1 downto 0),
      s01_axi_rvalid => s01_axi_rvalid,
      s01_axi_wdata(31 downto 0) => s01_axi_wdata(31 downto 0),
      s01_axi_wready => s01_axi_wready,
      s01_axi_wstrb(3 downto 0) => s01_axi_wstrb(3 downto 0),
      s01_axi_wvalid => s01_axi_wvalid
    );
end STRUCTURE;
