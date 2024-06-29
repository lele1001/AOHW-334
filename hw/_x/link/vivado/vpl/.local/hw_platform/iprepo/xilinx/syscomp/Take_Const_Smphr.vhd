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

entity Take_Const_Smphr is 
generic (
    -- Give_Clock
    Give_Clock_Domain: string := "";
    Give_Clock_Period: time := 10 ns;
    -- Value_Clock
    Value_Clock_Domain: string := "";
    Value_Clock_Period: time := 10 ns;    
    -- Give
    Give_Domain: string := "";    
    Give_TData_Length: positive := 8;
    Give_Num_Outst: positive := 1;
    -- Take
    Take_TData_Length: positive := 8;
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
    Give_TData: in u_unsigned(Give_TData_Length - 1 downto 0) := to_unsigned(1, Give_TData_Length);
    Give_TValid: in std_ulogic;
    Give_TReady: out std_ulogic;
    -- Take
    Take_TData: in u_unsigned(Take_TData_Length - 1 downto 0) := to_unsigned(1, Take_TData_Length);
    -- Value
    Value_TValid: out std_ulogic;
    Value_TReady: in std_ulogic;
    -- Other
    Size: out u_unsigned(positive(ceil(log2(real(Capacity + 1)))) - 1 downto 0));
begin
end Take_Const_Smphr;

architecture Behavior of Take_Const_Smphr is

constant Sm_Domain: string := Give_Domain;
constant Sm_Num_Outst: integer := Give_Num_Outst;
signal Sm_TData: u_unsigned(positive(ceil(log2(real(Capacity + 1)))) - 1 downto 0);
signal Sm_TValid: std_ulogic;
signal Sm_TReady: std_ulogic;

signal Counter: u_signed(positive(ceil(log2(real(Capacity + 1)))) downto 0);
signal Sm_Delta: signed(Counter'Range);
signal Take_Delta: signed(Counter'Range);
signal Sm_Value: signed(Counter'Range);
signal Take_Value: signed(Counter'Range);
signal Not_Full: std_ulogic;
signal Not_Empty: std_ulogic;

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

CDC: if Give_Domain /= Value_Domain generate
    Sm: entity Work.Take_All_Smphr
    generic map(
        -- Give_Clock
        Give_Clock_Domain => Give_Clock_Domain,
        Give_Clock_Period => Give_Clock_Period,    
        -- Give
        Give_Domain => Give_Domain,
        Give_Num_Outst => Give_Num_Outst,
        -- Value_Clock
        Value_Clock_Domain => Value_Clock_Domain,
        Value_Clock_Period => Value_Clock_Period,    
        -- Value
        Value_Domain => Sm_Domain,
        -- Other
        Capacity => Capacity)
    port map(
        -- Give
        Give_Clock_AClk => Give_Clock_AClk,
        Give_Clock_AResetN => Give_Clock_AResetN,
        Give_TData => Give_TData,
        Give_TValid => Give_TValid,
        Give_TReady => Give_TReady,
        -- Value
        Value_Clock_AClk => Value_Clock_AClk,
        Value_Clock_AResetN => Value_Clock_AResetN,
        Value_TData => Sm_TData,
        Value_TValid => Sm_TValid,
        Value_TReady => Sm_TReady);
else generate
    Sm_TData <= resize(Give_TData, Sm_TData'Length);
    Sm_TValid <= Give_TValid;
    Give_TReady <= Sm_TReady;
end generate CDC;

Sm: process (all)
begin
    Sm_Delta <= signed(resize(Sm_TData, Counter'Length));
    Take_Delta <= signed(resize(Take_TData, Counter'Length));
    
    Not_Full <= '1' when Sm_Num_Outst <= Capacity or Counter <= Capacity - Sm_Delta else '0';
    Not_Empty <= '1' when Counter >= Take_Delta else '0';
    
    Sm_Value <= Sm_Delta when (Sm_TValid and Not_Full) = '1' else (others => '0');
    Take_Value <= Take_Delta when (Value_TReady and Not_Empty) = '1' else (others => '0');

    if (not Value_Clock_AResetN) = '1' then
        Counter <= to_signed(Initial_Size, Counter'Length);
    elsif rising_edge(Value_Clock_AClk) then
        Counter <= Counter + (Sm_Value - Take_Value);
    end if;
    
    Sm_TReady <= /*Sm_TValid and*/ Not_Full;
    Value_TValid <= /*Value_TReady and*/ Not_Empty;    
    Size <= resize(unsigned(Counter), Size'Length);
end process Sm;

end architecture Behavior;