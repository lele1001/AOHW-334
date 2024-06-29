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
use Work.Utils.all;

entity Take_Delta_Smphr is 
generic (
    -- Give_Clock
    Give_Clock_Domain: string;
    Give_Clock_Period: time;    
    -- Take_Clock
    Take_Clock_Domain: string;
    Take_Clock_Period: time;    
    -- Value_Clock
    Value_Clock_Domain: string;
    Value_Clock_Period: time;
    -- Give
    Give_Domain: string;
    Give_Num_Outst: positive;
    -- Take
    Take_Domain: string;
    Take_Num_Outst: positive;
    -- Value
    Value_Domain: string;
    Value_Num_Outst: positive;
    -- Other
    Give_Capacity: positive := 1;
    Take_Capacity: positive := 1;
    Initial_Size: natural := 0);
port (
    -- Give_Clock
    Give_Clock_AClk: in std_ulogic;
    Give_Clock_AResetN: in std_ulogic;
    -- Take_Clock
    Take_Clock_AClk: in std_ulogic;
    Take_Clock_AResetN: in std_ulogic;
    -- Value_Clock
    Value_Clock_AClk: in std_ulogic;
    Value_Clock_AResetN: in std_ulogic;
    -- Give
    Give_TData: in u_unsigned(Get_Smphr_Size(Give_Capacity) * 8 - 1 downto 0);
    Give_TValid: in std_ulogic;
    Give_TReady: out std_ulogic;
    -- Take
    Take_TData: in u_unsigned(Get_Smphr_Size(Give_Capacity) * 8 - 1 downto 0);
    Take_TValid: in std_ulogic := '1';
    Take_TReady: out std_ulogic;
    -- Value
    Value_TData: out u_unsigned(Get_Smphr_Size(Give_Capacity) * 8 - 1 downto 0);
    Value_TValid: out std_ulogic;
    Value_TReady: in std_ulogic;
    -- Other
    Size: out u_unsigned(Get_Smphr_Size(Give_Capacity) * 8 - 1 downto 0));
begin
end Take_Delta_Smphr;

architecture Behavior of Take_Delta_Smphr is

constant Sm0_Num_Outst: integer := Take_Num_Outst;
constant Sm0_Domain: string := Take_Domain;
signal Sm0_TData: u_unsigned(Take_TData'Range);
signal Sm0_TValid: std_ulogic;
signal Sm0_TReady: std_ulogic;

constant Sm1_Num_Outst: integer := Take_Num_Outst;
constant Sm1_Domain: string := Take_Domain;
signal Sm1_TData: u_unsigned(Take_TData'Range);
signal Sm1_TValid: std_ulogic;
signal Sm1_TReady: std_ulogic;

begin

Checks: process
begin
    if Give_Clock_Domain /= Give_Domain then
        assert false report "Clock domain mismatch" severity Error;
        stop;
    end if;
    if Take_Clock_Domain /= Take_Domain then
        assert false report "Clock domain mismatch" severity Error;
        stop;
    end if;
    if Value_Clock_Domain /= Value_Domain then
        assert false report "Clock domain mismatch" severity Error;
        stop;
    end if;
    wait;
end process;

CDC: if Give_Domain /= Take_Domain generate
    Sm0: entity Work.Take_All_Smphr
    generic map(
        -- Give_Clock
        Give_Clock_Domain => Give_Clock_Domain,
        Give_Clock_Period => Give_Clock_Period,    
        -- Give
        Give_Domain => Give_Domain,
        Give_Num_Outst => Give_Num_Outst,
        -- Value_Clock
        Value_Clock_Domain => Take_Clock_Domain,
        Value_Clock_Period => Take_Clock_Period,    
        -- Value
        Value_Domain => Sm0_Domain,
        -- Other
        Capacity => Give_Capacity)
    port map(
        -- Give_Clock
        Give_Clock_AClk => Give_Clock_AClk,
        Give_Clock_AResetN => Give_Clock_AResetN,
        -- Give
        Give_TData => Give_TData,
        Give_TValid => Give_TValid,
        Give_TReady => Give_TReady,
        -- Value_Clock
        Value_Clock_AClk => Take_Clock_AClk,
        Value_Clock_AResetN => Take_Clock_AResetN,
        -- Value
        Value_TData => Sm0_TData,
        Value_TValid => Sm0_TValid,
        Value_TReady => Sm0_TReady);
else generate
    Sm0_TData <= resize(Give_TData, Sm0_TData'Length);
    Sm0_TValid <= Give_TValid;
    Give_TReady <= Sm0_TReady;
end generate CDC;

Sm1: block
    signal Counter: u_signed(clog2(Give_Capacity + 1) downto 0);
    signal Sm0_Delta: signed(Counter'Range);
    signal Take_Delta: signed(Counter'Range);
    signal Sm0_Value: signed(Counter'Range);
    signal Take_Value: signed(Counter'Range);
    signal Not_Full: std_ulogic;
    signal Not_Empty: std_ulogic;    
begin
    Main: process (all)
    begin
        Sm0_Delta <= signed(resize(Sm0_TData, Counter'Length));
        Take_Delta <= signed(resize(Take_TData, Counter'Length));
        
        Not_Full <= '1' when Sm0_Num_Outst <= Give_Capacity or Counter <= Give_Capacity - Sm0_Delta else '0';
        Not_Empty <= '1' when Counter >= Take_Delta else '0';
        
        Sm0_Value <= Sm0_Delta when (Sm0_TValid and Not_Full) = '1' else (others => '0');
        Take_Value <= Take_Delta when (Take_TValid and Sm1_TReady and Not_Empty) = '1' else (others => '0');
    
        if (not Take_Clock_AResetN) = '1' then
            Counter <= to_signed(Initial_Size, Counter'Length);
        elsif rising_edge(Take_Clock_AClk) then
            Counter <= Counter + (Sm0_Value - Take_Value);
        end if;
        
        Sm0_TReady <= /*Sm0_TValid and*/ Not_Full;
        Take_TReady <= /*Take_TValid and*/ Sm1_TReady and Not_Empty;    
        Size <= resize(unsigned(Counter), Size'Length);
        Sm1_TData <= resize(Take_TData, Sm1_TData'Length);
        Sm1_TValid <= Take_TValid and /*Sm1_TReady and*/ Not_Empty;
    end process Main;
end block Sm1;

Value_FIFO: entity work.Auto_FIFO 
generic map (
    -- Back
    Back_Clock_Domain => Take_Clock_Domain,
    Back_Clock_Period => Take_Clock_Period,
    Back_Domain => Sm1_Domain,
    Back_Data_Length => Sm1_TData'Length,
    Back_Num_Outst => Sm1_Num_Outst,
    -- Front
    Front_Clock_Domain => Value_Clock_Domain,
    Front_Clock_Period => Value_Clock_Period,
    Front_Domain => Value_Domain,
    Front_Data_Length => Value_TData'Length,
    Front_Num_Outst => Value_Num_Outst,
    -- Other
    Capacity => Take_Capacity)
port map (
    -- Back AXIS
    Back_Clock_AClk => Take_Clock_AClk,
    Back_Clock_AResetN => Take_Clock_AResetN,
    Back_TData => Sm1_TData,
    Back_TValid => Sm1_TValid,
    Back_TReady => Sm1_TReady,
    -- Front AXIS
    Front_Clock_AClk => Value_Clock_AClk,
    Front_Clock_AResetN => Value_Clock_AResetN,
    Front_TData => Value_TData,
    Front_TValid => Value_TValid,
    Front_TReady => Value_TReady);

end Behavior;
