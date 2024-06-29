-- 67d7842dbbe25473c3c32b93c0da8047785f30d78e8a024de1b57352245f9689
-- (c) Copyright 2021 – 2022 Xilinx, Inc. All rights reserved. 
-- 
-- This file contains confidential and proprietary information 
-- of Xilinx, Inc. and is protected under U.S. and 
-- international copyright and other intellectual property 
-- laws. 
-- 
-- DISCLAIMER 
-- This disclaimer is not a license and does not grant any 
-- rights to the materials distributed herewith. Except as 
-- otherwise provided in a valid license issued to you by 
-- Xilinx, and to the maximum extent permitted by applicable 
-- law: (1) THESE MATERIALS ARE MADE AVAILABLE "AS IS" AND 
-- WITH ALL FAULTS, AND XILINX HEREBY DISCLAIMS ALL WARRANTIES 
-- AND CONDITIONS, EXPRESS, IMPLIED, OR STATUTORY, INCLUDING 
-- BUT NOT LIMITED TO WARRANTIES OF MERCHANTABILITY, NON- 
-- INFRINGEMENT, OR FITNESS FOR ANY PARTICULAR PURPOSE; and
-- (2) Xilinx shall not be liable (whether in contract or tort, 
-- including negligence, or under any other theory of 
-- liability) for any loss or damage of any kind or nature 
-- related to, arising under or in connection with these 
-- materials, including for any direct, or any indirect, 
-- special, incidental, or consequential loss or damage 
-- (including loss of data, profits, goodwill, or any type of 
-- loss or damage suffered as a result of any action brought 
-- by a third party) even if such damage or loss was 
-- reasonably foreseeable or Xilinx had been advised of the 
-- possibility of the same. 
-- 
-- CRITICAL APPLICATIONS 
-- Xilinx products are not designed or intended to be fail- 
-- safe, or for use in any application requiring fail-safe 
-- performance, such as life-support or safety devices or 
-- systems, Class III medical devices, nuclear facilities, 
-- applications related to the deployment of airbags, or any 
-- other applications that could lead to death, personal 
-- injury, or severe property or environmental damage 
-- (individually and collectively, "Critical 
-- Applications"). Customer assumes the sole risk and 
-- liability of any use of Xilinx products in Critical 
-- Applications, subject only to applicable laws and 
-- regulations governing limitations on product liability. 
-- 
-- THIS COPYRIGHT NOTICE AND DISCLAIMER MUST BE RETAINED AS 
-- PART OF THIS FILE AT ALL TIMES.

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;
use IEEE.math_real.all;

use Work.Utils.all;

entity AXIS_Fork is 
generic (
    -- Clock
    Clock_Domain: string;
    Clock_Period: time;
    -- Input AXIS
    Input_Data_Length: integer range 1 * 8 to 512 * 8 := 8;
    Input_Num_Outst: integer := 1;
    Input_Domain: string;
    -- Output0 AXIS
    Output0_Data_Length: integer range 1 * 8 to 512 * 8 := 8;
    Output0_Num_Outst: integer := 1;
    Output0_Domain: string;
    -- Output1 AXIS
    Output1_Data_Length: integer range 1 * 8 to 512 * 8 := 8;
    Output1_Num_Outst: integer := 1;
    Output1_Domain: string);
port (
    -- Clock
    Clock_AClk: in std_ulogic;
    Clock_AResetN: in std_ulogic;    
    -- Input AXIS
    Input_TData: in u_unsigned(Input_Data_Length - 1 downto 0) := (others => '0');
    Input_TStrb: in u_unsigned(Input_Data_Length / 8 - 1 downto 0) := (others => '1');
    Input_TLast: in std_ulogic := '1';
    Input_TValid: in std_ulogic;
    Input_TReady: out std_ulogic;
    -- Output0 AXIS
    Output0_TData: out u_unsigned(Output0_Data_Length - 1 downto 0) := (others => '0');
    Output0_TStrb: out u_unsigned(Output0_Data_Length / 8 - 1 downto 0) := (others => '1');
    Output0_TLast: out std_ulogic := '1';
    Output0_TValid: out std_ulogic;
    Output0_TReady: in std_ulogic;
    -- Output1 AXIS
    Output1_TData: out u_unsigned(Output1_Data_Length - 1 downto 0) := (others => '0');
    Output1_TStrb: out u_unsigned(Output1_Data_Length / 8 - 1 downto 0) := (others => '1');
    Output1_TLast: out std_ulogic := '1';
    Output1_TValid: out std_ulogic;
    Output1_TReady: in std_ulogic);

constant Capacity: integer := Input_Num_Outst;    
begin
    assert Input_Num_Outst = Output0_Num_Outst report AXIS_Fork'Instance_Name & ": Error 0" severity Error;
    assert Input_Num_Outst = Output1_Num_Outst report AXIS_Fork'Instance_Name & ": Error 1" severity Error;
end AXIS_Fork;

architecture Behavior of AXIS_Fork is

begin

Output0_TData <= Input_TData;
Output0_TStrb <= Input_TStrb;
Output0_TLast <= Input_TLast;
Output0_TValid <= Input_TValid;

Output1_TData <= Input_TData;
Output1_TStrb <= Input_TStrb;
Output1_TLast <= Input_TLast;
Output1_TValid <= Input_TValid;

Input_TReady <= Output0_TReady and Output1_TReady;

end Behavior;
