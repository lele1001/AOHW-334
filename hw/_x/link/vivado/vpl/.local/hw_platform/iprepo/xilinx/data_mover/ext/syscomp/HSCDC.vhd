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

entity HSCDC is 
port (
    -- Back
    Back_Clk: in std_ulogic;
    Back_ResetN: in std_ulogic;
    Back_Valid: in std_ulogic;
    Back_Ready: out std_ulogic;
    -- Front
    Front_Clk: in std_ulogic;
    Front_ResetN: in std_ulogic;
    Front_Valid: out std_ulogic;
    Front_Ready: in std_ulogic);
begin
end HSCDC;

architecture Behavior of HSCDC is

signal Back_Flag: std_ulogic;
signal Back_Prev: std_ulogic;
signal Back_Sync: std_ulogic_vector(0 to 1);
signal Front_Prev: std_ulogic;
signal Front_Sync: std_ulogic_vector(0 to 1);

begin

Back_Logic: process (all)
begin
    if (not Back_ResetN) = '1' then
        Back_Sync <= "00";
        Back_Flag <= '0';
        Back_Ready <= '1';
    elsif rising_edge(Back_Clk) then
        if (Back_Valid and Back_Ready) = '1' then
            Back_Flag <= '1';
            Back_Ready <= '0';
        end if;
        Back_Sync(0) <= Front_Sync(1);
        Back_Sync(1) <= Back_Sync(0);
        if (Back_Sync(1) and Back_Flag) = '1' then
            Back_Flag <= '0';
        end if;
        Back_Prev <= Back_Sync(1);
        if (Back_Prev and not Back_Sync(1)) = '1' then
            Back_Ready <= '1';
        end if;
    end if;
end process Back_Logic;

Front_Logic: process (all)
begin
    if (not Front_ResetN) = '1' then
        Front_Sync <= "00";
        Front_Prev <= '0';
        Front_Valid <= '0';
    elsif rising_edge(Front_Clk) then
        Front_Sync(0) <= Back_Flag;
        Front_Sync(1) <= Front_Sync(0);
        Front_Prev <= Front_Sync(1);
        if Front_Ready = '1' then
            Front_Valid <= '0';
        end if;
        if (Front_Sync(1) and not Front_Prev) = '1' then
            Front_Valid <= '1';
        end if;
    end if;
end process Front_Logic;

end Behavior;
