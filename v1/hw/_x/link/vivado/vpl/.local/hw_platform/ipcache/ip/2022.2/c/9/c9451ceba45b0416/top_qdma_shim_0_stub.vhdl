-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2022.2 (lin64) Build 3671981 Fri Oct 14 04:59:54 MDT 2022
-- Date        : Mon Dec  5 00:21:05 2022
-- Host        : xsjdcslab02.xilinx.com running 64-bit CentOS Linux release 8.1.1911 (Core)
-- Command     : write_vhdl -force -mode synth_stub -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
--               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ top_qdma_shim_0_stub.vhdl
-- Design      : top_qdma_shim_0
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xcvc1902-vsvd1760-2MP-e-S
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
  Port ( 
    clk : in STD_LOGIC;
    rstn : in STD_LOGIC;
    usr_irq_req : in STD_LOGIC_VECTOR ( 15 downto 0 );
    usr_irq_ack : out STD_LOGIC_VECTOR ( 15 downto 0 );
    usr_irq_in_vld : out STD_LOGIC;
    usr_irq_in_vec : out STD_LOGIC_VECTOR ( 4 downto 0 );
    usr_irq_in_fnc : out STD_LOGIC_VECTOR ( 7 downto 0 );
    usr_irq_out_ack : in STD_LOGIC
  );

end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix;

architecture stub of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "clk,rstn,usr_irq_req[15:0],usr_irq_ack[15:0],usr_irq_in_vld,usr_irq_in_vec[4:0],usr_irq_in_fnc[7:0],usr_irq_out_ack";
attribute X_CORE_INFO : string;
attribute X_CORE_INFO of stub : architecture is "qdma_versal_shim,Vivado 2022.2";
begin
end;
