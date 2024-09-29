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
library Std;

use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;
use IEEE.math_real.all;
use Std.Env.All;
use Work.Utils.all;

-- TODO: CDC variant for Reg_Slice.

entity Auto_FIFO is 
generic (
    -- Back_Clock
    Back_Clock_Domain: string;
    Back_Clock_Period: time := 10 ns;
    -- Fornt_Clock
    Front_Clock_Domain: string;
    Front_Clock_Period: time := 10 ns;
    -- Back
    Back_Domain: string;
    Back_Data_Length: integer range 1 * 8 to 512 * 8 := 8;
    Back_Num_Outst: integer := 1;
    -- Front
    Front_Domain: string;
    Front_Data_Length: integer := 8;    
    Front_Num_Outst: integer := 1;
    -- Other
    Capacity: positive);    
port (
    -- Back_Clock
    Back_Clock_AClk: in std_ulogic;
    Back_Clock_AResetN: in std_ulogic;
    -- Front_Clock
    Front_Clock_AClk: in std_ulogic := 'U';
    Front_Clock_AResetN: in std_ulogic := 'U';
    -- Back
    Back_TData: in u_unsigned(Back_Data_Length - 1 downto 0) := (others => '0');
    Back_TStrb: in u_unsigned(Back_Data_Length / 8 - 1 downto 0) := (others => '1');
    Back_TLast: in std_ulogic := '1';
    Back_TValid: in std_ulogic;    
    Back_TReady: out std_ulogic;
    -- Front AXIS
    Front_TData: out u_unsigned(Front_Data_Length - 1 downto 0) := (others => '0');
    Front_TValid: out std_ulogic;
    Front_TReady: in std_ulogic);
begin
end Auto_FIFO;

architecture Composition of Auto_FIFO is
begin

Checks: process
begin
    if Back_Clock_Domain /= Back_Domain then
        assert false report "Clock domain mismatch" severity Error;
        stop;
    end if;
    if Front_Clock_Domain /= Front_Domain then
        assert false report "Clock domain mismatch" severity Error;
        stop;
    end if;
    wait;
end process;

Auto: if Back_Domain = Front_Domain generate
    Sync: if Capacity = 1 generate
        Latch: entity work.Sync_FIFO(Reg_Slice) 
        generic map (
            Data_Length => Front_TData'Length,
            Num_Outst => Back_Num_Outst)
        port map (
            -- Back AXIS
            Back_Clock_AClk => Back_Clock_AClk,
            Back_Clock_AResetN => Back_Clock_AResetN,
            Back_TData => Back_TData,
            Back_TStrb => Back_TStrb,
            Back_TLast => Back_TLast,
            Back_TValid => Back_TValid,    
            Back_TReady => Back_TReady,
            -- Front AXIS
            Front_TData => Front_TData,
            Front_TValid => Front_TValid,
            Front_TReady => Front_TReady);           
    elsif Capacity > 1024 and Back_TData'Length > 8 generate
        URAM: entity work.Large_FIFO 
        generic map (
            Data_Length => Back_TData'Length,
            Num_Outst => Back_Num_Outst,
            Capacity => Capacity)
        port map (
            -- Back AXIS
            Back_Clock_AClk => Back_Clock_AClk,
            Back_Clock_AResetN => Back_Clock_AResetN,
            Back_TData => Back_TData,
            Back_TStrb => Back_TStrb,
            Back_TLast => Back_TLast,
            Back_TValid => Back_TValid,    
            Back_TReady => Back_TReady,
            -- Front AXIS
            Front_TData => Front_TData,
            Front_TValid => Front_TValid,
            Front_TReady => Front_TReady);
    else generate
        Distr: entity work.Sync_FIFO(DPRAM) 
        generic map (
            Data_Length => Back_TData'length,
            Num_Outst => Back_Num_Outst,
            Capacity => Capacity)
        port map (
            -- Back AXIS
            Back_Clock_AClk => Back_Clock_AClk,
            Back_Clock_AResetN => Back_Clock_AResetN,
            Back_TData => Back_TData,
            Back_TStrb => Back_TStrb,
            Back_TLast => Back_TLast,
            Back_TValid => Back_TValid,    
            Back_TReady => Back_TReady,
            -- Front AXIS
            Front_TData => Front_TData,
            Front_TValid => Front_TValid,
            Front_TReady => Front_TReady);        
    end generate;
else generate
    Async: if Capacity = 1 generate
        Latch: entity work.Async_FIFO(Reg_Slice) 
        generic map (
            Data_Length => Back_TData'length)
        port map (
            -- Back Clock
            Back_Clock_AClk => Back_Clock_AClk,
            Back_Clock_AResetN => Back_Clock_AResetN,
            -- Front Clock
            Front_Clock_AClk => Front_Clock_AClk,
            Front_Clock_AResetN => Front_Clock_AResetN,
            -- Back AXIS
            Back_TData => Back_TData,
            Back_TStrb => Back_TStrb,
            Back_TLast => Back_TLast,
            Back_TValid => Back_TValid,    
            Back_TReady => Back_TReady,
            -- Front AXIS
            Front_TData => Front_TData,
            Front_TValid => Front_TValid,
            Front_TReady => Front_TReady);    
    elsif Capacity > 1024 and Back_TData'Length > 8 generate
        signal CDC_TData: u_unsigned(Back_TData'Range);
        signal CDC_TValid: std_ulogic;
        signal CDC_TReady: std_ulogic;
    begin
        URAM: if Back_Clock_Period >= Front_Clock_Period generate
            Back_CDC: entity work.Async_FIFO(DPRAM) 
            generic map (
                Data_Length => Back_TData'length,
                Num_Outst => Back_Num_Outst - Capacity,
                Capacity => 32)
            port map (
                -- Back Clock
                Back_Clock_AClk => Back_Clock_AClk,
                Back_Clock_AResetN => Back_Clock_AResetN,
                -- Front Clock
                Front_Clock_AClk => Front_Clock_AClk,
                Front_Clock_AResetN => Front_Clock_AResetN,
                -- Back AXIS
                Back_TData => Back_TData,
                Back_TStrb => Back_TStrb,
                Back_TLast => Back_TLast,
                Back_TValid => Back_TValid,    
                Back_TReady => Back_TReady,
                -- Front AXIS
                Front_TData => CDC_TData,
                Front_TValid => CDC_TValid,
                Front_TReady => CDC_TReady);
            
            URAM: entity work.Large_FIFO 
            generic map (
                Data_Length => Back_TData'Length,
                Num_Outst => Back_Num_Outst,
                Capacity => Capacity)
            port map (
                -- Back AXIS
                Back_Clock_AClk => Front_Clock_AClk,
                Back_Clock_AResetN => Front_Clock_AResetN,
                Back_TData => CDC_TData,
                Back_TValid => CDC_TValid,    
                Back_TReady => CDC_TReady,
                -- Front AXIS
                Front_TData => Front_TData,
                Front_TValid => Front_TValid,
                Front_TReady => Front_TReady);
        else generate
            URAM: entity work.Large_FIFO 
            generic map (
                Data_Length => Back_TData'Length,
                Num_Outst => Back_Num_Outst,
                Capacity => Capacity)
            port map (
                Back_Clock_AClk => Back_Clock_AClk,
                Back_Clock_AResetN => Back_Clock_AResetN,
                -- Back AXIS
                Back_TData => Back_TData,
                Back_TStrb => Back_TStrb,
                Back_TLast => Back_TLast,
                Back_TValid => Back_TValid,    
                Back_TReady => Back_TReady,
                -- Front AXIS
                Front_TData => CDC_TData,
                Front_TValid => CDC_TValid,
                Front_TReady => CDC_TReady);
            
            Front_CDC: entity work.Async_FIFO(DPRAM) 
            generic map (
                Data_Length => CDC_TData'Length,
                Num_Outst => 64,
                Capacity => 32)
            port map (
                -- Back Clock
                Back_Clock_AClk => Back_Clock_AClk,
                Back_Clock_AResetN => Back_Clock_AResetN,
                -- Front Clock
                Front_Clock_AClk => Front_Clock_AClk,
                Front_Clock_AResetN => Front_Clock_AResetN,
                -- Back AXIS
                Back_TData => CDC_TData,
                Back_TValid => CDC_TValid,    
                Back_TReady => CDC_TReady,
                -- Front AXIS
                Front_TData => Front_TData,
                Front_TValid => Front_TValid,
                Front_TReady => Front_TReady);
        end generate;   
    else generate
        Distr: entity work.Async_FIFO(DPRAM) 
        generic map (
            Data_Length => Back_TData'length,
            Num_Outst => Back_Num_Outst,
            Capacity => Capacity)
        port map (
            -- Back Clock
            Back_Clock_AClk => Back_Clock_AClk,
            Back_Clock_AResetN => Back_Clock_AResetN,
            -- Front Clock
            Front_Clock_AClk => Front_Clock_AClk,
            Front_Clock_AResetN => Front_Clock_AResetN,
            -- Back AXIS
            Back_TData => Back_TData,
            Back_TStrb => Back_TStrb,
            Back_TLast => Back_TLast,
            Back_TValid => Back_TValid,    
            Back_TReady => Back_TReady,
            -- Front AXIS
            Front_TData => Front_TData,
            Front_TValid => Front_TValid,
            Front_TReady => Front_TReady);    
    end generate;
end generate;
end architecture Composition;
