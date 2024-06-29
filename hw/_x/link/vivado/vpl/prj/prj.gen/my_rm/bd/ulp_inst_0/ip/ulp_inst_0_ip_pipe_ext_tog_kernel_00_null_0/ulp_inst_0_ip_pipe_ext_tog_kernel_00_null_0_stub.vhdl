-- Copyright 1986-2023 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2022.2.2 (lin64) Build 3788238 Tue Feb 21 19:59:23 MST 2023
-- Date        : Fri Jun 28 10:27:32 2024
-- Host        : nags27 running 64-bit Ubuntu 20.04.6 LTS
-- Command     : write_vhdl -force -mode synth_stub
--               /home/users/eleonora.cabai/Documents/K-Means-AIE/hw/_x/link/vivado/vpl/prj/prj.gen/my_rm/bd/ulp_inst_0/ip/ulp_inst_0_ip_pipe_ext_tog_kernel_00_null_0/ulp_inst_0_ip_pipe_ext_tog_kernel_00_null_0_stub.vhdl
-- Design      : ulp_inst_0_ip_pipe_ext_tog_kernel_00_null_0
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xcvc1902-vsvd1760-2MP-e-S
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity ulp_inst_0_ip_pipe_ext_tog_kernel_00_null_0 is
  Port ( 
    clk : in STD_LOGIC;
    D : in STD_LOGIC_VECTOR ( 0 to 0 );
    Q : out STD_LOGIC_VECTOR ( 0 to 0 );
    reset : in STD_LOGIC;
    clk_enable : in STD_LOGIC
  );

end ulp_inst_0_ip_pipe_ext_tog_kernel_00_null_0;

architecture stub of ulp_inst_0_ip_pipe_ext_tog_kernel_00_null_0 is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "clk,D[0:0],Q[0:0],reset,clk_enable";
attribute X_CORE_INFO : string;
attribute X_CORE_INFO of stub : architecture is "util_ff_v1_0_1_util_ff,Vivado 2022.2";
begin
end;
