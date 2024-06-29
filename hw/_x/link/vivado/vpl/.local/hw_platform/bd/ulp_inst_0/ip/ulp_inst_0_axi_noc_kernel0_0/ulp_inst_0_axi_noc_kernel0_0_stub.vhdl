-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2022.2 (lin64) Build 3671981 Fri Oct 14 04:59:54 MDT 2022
-- Date        : Mon Dec  5 00:25:04 2022
-- Host        : xsjdcslab02.xilinx.com running 64-bit CentOS Linux release 8.1.1911 (Core)
-- Command     : write_vhdl -force -mode synth_stub
--               /proj/ipeng-nobkup/ccase/platforms/p4/Platforms_ccase_vck5000_dev0/Platforms/sources/vck5000/chassis/gen4x8_qdma/2/build_1205a_dbg_hub_fw_flop/hardware/xilinx_vck5000_gen4x8_qdma_base_2/xilinx_vck5000_gen4x8_qdma_base_2.gen/sources_1/bd/top/bd/ulp_inst_0/ip/ulp_inst_0_axi_noc_kernel0_0/ulp_inst_0_axi_noc_kernel0_0_stub.vhdl
-- Design      : ulp_inst_0_axi_noc_kernel0_0
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xcvc1902-vsvd1760-2MP-e-S
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity ulp_inst_0_axi_noc_kernel0_0 is
  Port ( 
    M00_INI_internoc : out STD_LOGIC_VECTOR ( 0 to 0 );
    M01_INI_internoc : out STD_LOGIC_VECTOR ( 0 to 0 );
    M02_INI_internoc : out STD_LOGIC_VECTOR ( 0 to 0 )
  );

end ulp_inst_0_axi_noc_kernel0_0;

architecture stub of ulp_inst_0_axi_noc_kernel0_0 is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "M00_INI_internoc[0:0],M01_INI_internoc[0:0],M02_INI_internoc[0:0]";
attribute X_CORE_INFO : string;
attribute X_CORE_INFO of stub : architecture is "bd_0ad1,Vivado 2022.2";
begin
end;
