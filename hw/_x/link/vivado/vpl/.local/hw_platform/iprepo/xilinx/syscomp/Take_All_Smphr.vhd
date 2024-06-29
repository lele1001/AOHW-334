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
library std;

use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;
use IEEE.math_real.all;
use std.env.all;
use work.Utils.all;

entity Take_All_Smphr is 
generic (
    -- Give_Clock
    Give_Clock_Domain: string := "";
    Give_Clock_Period: time := 10 ns;    
    -- Value_Clock
    Value_Clock_Domain: string := "";
    Value_Clock_Period: time := 10 ns;    
    -- Give
    Give_Domain: string := "";
    Give_Num_Outst: positive := 1;
    -- Value
    Value_Domain: string := "";
    -- Other
    Capacity: positive := 1;
    Initial_Size: natural := 0);
port (
    -- Give_Clock
    Give_Clock_AClk: in std_ulogic;
    Give_Clock_AResetN: in std_ulogic;
    -- Value_Clock
    Value_Clock_AClk: in std_ulogic;
    Value_Clock_AResetN: in std_ulogic;
    -- Give
    Give_TData: in u_unsigned(Get_Smphr_Size(Capacity) * 8 - 1 downto 0) := to_unsigned(1, Get_Smphr_Size(Capacity) * 8);
    Give_TValid: in std_ulogic;
    Give_TReady: out std_ulogic;
    -- Value
    Value_TData: out u_unsigned(Get_Smphr_Size(Capacity) * 8 - 1 downto 0);
    Value_TValid: out std_ulogic;
    Value_TReady: in std_ulogic;
    -- Other
    Size: out u_unsigned(Get_Smphr_Size(Capacity) * 8 - 1 downto 0));
begin
end Take_All_Smphr;

architecture Behavior of Take_All_Smphr is

signal Counter: u_signed(positive(ceil(log2(real(Capacity + 1)))) downto 0);
signal Give_Delta: signed(Counter'Range);
signal Give_Value: signed(Counter'Range);
signal Not_Full: std_ulogic;
signal Not_Empty: std_ulogic;

constant Sm0_Domain: string := Value_Domain;
signal Sm0_TData: u_unsigned(Size'Range);
signal Sm0_TValid: std_ulogic;
signal Sm0_TReady: std_ulogic;

begin

Checks: process
begin
    if Give_Clock_Domain /= Give_Domain then
        assert false report "Clock domain mismatch" severity Error;
        stop;
    end if;
    if Value_Clock_Domain /= Value_Domain then
        assert false report "Clock domain mismatch" severity Error;
        stop;
    end if;
    wait;
end process;

Sm: process (all)
begin
    Give_Delta <= signed(resize(Give_TData, Counter'Length));
    
    Not_Full <= '1' when Give_Num_Outst <= Capacity or Counter <= Capacity - Give_Delta else '0';
    Not_Empty <= '1' when Counter /= 0 else '0';
    
    Give_Value <= Give_Delta when (Give_TValid and Not_Full) = '1' else (others => '0');

    if (not Give_Clock_AResetN) = '1' then
        Counter <= to_signed(Initial_Size, Counter'Length);
    elsif rising_edge(Give_Clock_AClk) then
        if (Give_TValid and Not_Full) = '1' then
            Counter <= Counter + Give_Delta;
        end if;
        if (Sm0_TReady and Not_Empty) = '1' then
            Counter <= to_signed(0, Counter'Length);
        end if;
        if (Give_TValid and Not_Full and Sm0_TReady and Not_Empty) = '1' then
            Counter <= Give_Delta;
        end if;
    end if;
    
    Give_TReady <= /*Give_TValid and*/ Not_Full;
    Sm0_TValid <= /*Sm0_TReady and*/ Not_Empty;    
    Sm0_TData <= unsigned(resize(Counter, Value_TData'Length));
    Size <= resize(unsigned(Counter), Size'Length);
end process Sm;

CDC: if Give_Domain /= Value_Domain generate
begin
    Latch: process (all)
    begin
        if (not Give_Clock_AResetN) = '1' then
            Value_TData <= to_unsigned(0, Sm0_TData'Length);
        elsif rising_edge(Give_Clock_AClk) then
            if (Sm0_TValid and Sm0_TReady) = '1' then
                Value_TData <= Sm0_TData;
            end if;
        end if;
    end process;
    
    CDC: entity work.HSCDC 
    port map (
        -- Back
        Back_Clock_AClk => Give_Clock_AClk,
        Back_Clock_AResetN => Give_Clock_AResetN,
        Back_Valid => Sm0_TValid,
        Back_Ready => Sm0_TReady,
        -- Front
        Front_Clock_AClk => Value_Clock_AClk,
        Front_Clock_AResetN => Value_Clock_AResetN,
        Front_Valid => Value_TValid,
        Front_Ready => Value_TReady);    
else generate
    Value_TData <= resize(Sm0_TData, Value_TData'Length);
    Value_TValid <= Sm0_TValid;
    Sm0_TReady <= Value_TReady;
end generate CDC;

end Behavior;