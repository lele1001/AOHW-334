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

entity Large_FIFO is 
generic (
    Data_Length: integer := 8;
    Num_Outst: integer := 1;
    Capacity: integer := 32);
port (
    -- Back Clock
    Back_Clock_AClk: in std_ulogic;
    Back_Clock_AResetN: in std_ulogic;
    -- Back AXIS
    Back_TData: in u_unsigned(Data_Length - 1 downto 0) := (others => '0');
    Back_TStrb: in u_unsigned(Data_Length / 8 - 1 downto 0) := (others => '1');
    Back_TLast: in std_ulogic := '1';
    Back_TValid: in std_ulogic;    
    Back_TReady: out std_ulogic;
    -- Front AXIS
    Front_TData: out u_unsigned(Data_Length - 1 downto 0);
    Front_TValid: out std_ulogic;
    Front_TReady: in std_ulogic);
begin
end Large_FIFO;

architecture Composition of Large_FIFO is

function Obtain_URAM_Data_Length(Capacity, Data_Length: integer) return integer is
begin
    if Capacity > 2048 and Data_Length > 32 then
        if Data_Length > 72 then
            return Data_Length / 72 * 72;
        else
            return Data_Length;
        end if;
    else
        return 0;
    end if;
end function;

function Obtain_BRAM_Data_Length(Capacity, Data_Length: integer) return integer is
begin
    if Capacity > 256 and Data_Length > 64 then
        if Data_Length > 144 then
            return Data_Length / 144 * 144;
        else
            return Data_Length;
        end if;                
    elsif Capacity > 512 and Data_Length > 32 then
        if Data_Length > 72 then
            return Data_Length / 72 * 72;
        else
            return Data_Length;
        end if;                
    elsif Capacity > 1024 and Data_Length > 8 then
        if Data_Length > 16 then
            return Data_Length / 16 * 16;
        else
            return Data_Length;
        end if;
    else
        return 0;
    end if;            
end function;

constant URAM_Data_Length: integer := Obtain_URAM_Data_Length(Capacity, Back_TData'Length);        
constant BRAM_Data_Length: integer := Obtain_BRAM_Data_Length(Capacity, Back_TData'Length - URAM_Data_Length);
constant DRAM_Data_Length: integer := Back_TData'Length - URAM_Data_Length - BRAM_Data_Length;

signal URAM_TValid: std_ulogic;
signal BRAM_TValid: std_ulogic;
signal DRAM_TValid: std_ulogic;
signal URAM_TReady: std_ulogic;
signal BRAM_TReady: std_ulogic;
signal DRAM_TReady: std_ulogic;

begin

U0: if DRAM_Data_Length > 0 generate
    DRAM: entity work.Sync_FIFO(URAM) 
    generic map (
        Data_Length => DRAM_Data_Length,
        Num_Outst => Num_Outst,
        Capacity => Capacity,
        Memory_Architecture => "distributed")
    port map (
        -- Back AXIS
        Back_Clock_AClk => Back_Clock_AClk,
        Back_Clock_AResetN => Back_Clock_AResetN,
        Back_TData => Back_TData(DRAM_Data_Length - 1 downto 0),
        Back_TStrb => Back_TStrb(DRAM_Data_Length / 8 - 1 downto 0),
        Back_TLast => Back_TLast,
        Back_TValid => Back_TValid and BRAM_TReady and URAM_TReady,    
        Back_TReady => DRAM_TReady,
        -- Front AXIS
        Front_TData => Front_TData(DRAM_Data_Length - 1 downto 0),
        Front_TValid => DRAM_TValid,
        Front_TReady => Front_TReady and BRAM_TValid and URAM_TValid);
else generate
    DRAM_TValid <= '1';
    DRAM_TReady <= '1';
end generate;

U1: if BRAM_Data_Length > 0 generate
    BRAM: entity work.Sync_FIFO(URAM) 
    generic map (
        Data_Length => BRAM_Data_Length,
        Num_Outst => Num_Outst,
        Capacity => Capacity,
        Memory_Architecture => "block")
    port map (
        -- Back AXIS
        Back_Clock_AClk => Back_Clock_AClk,
        Back_Clock_AResetN => Back_Clock_AResetN,
        Back_TData => Back_TData(BRAM_Data_Length + DRAM_Data_Length - 1 downto DRAM_Data_Length),
        Back_TStrb => Back_TStrb((BRAM_Data_Length + DRAM_Data_Length) / 8 - 1 downto DRAM_Data_Length / 8),
        Back_TLast => Back_TLast,
        Back_TValid => Back_TValid and DRAM_TReady and URAM_TReady,    
        Back_TReady => BRAM_TReady,
        -- Front AXIS
        Front_TData => Front_TData(BRAM_Data_Length + DRAM_Data_Length - 1 downto DRAM_Data_Length),
        Front_TValid => BRAM_TValid,
        Front_TReady => Front_TReady and DRAM_TValid and URAM_TValid);
else generate
    BRAM_TValid <= '1';
    BRAM_TReady <= '1';
end generate;

U2: if URAM_Data_Length > 0 generate
    URAM: entity work.Sync_FIFO(URAM) 
    generic map (
        Data_Length => URAM_Data_Length,
        Num_Outst => Num_Outst,
        Capacity => Capacity,
        Memory_Architecture => "ultra")
    port map (
        -- Back AXIS
        Back_Clock_AClk => Back_Clock_AClk,
        Back_Clock_AResetN => Back_Clock_AResetN,
        Back_TData => Back_TData(URAM_Data_Length + BRAM_Data_Length + DRAM_Data_Length - 1 
                downto BRAM_Data_Length + DRAM_Data_Length),
        Back_TStrb => Back_TStrb((URAM_Data_Length + BRAM_Data_Length + DRAM_Data_Length) / 8 - 1 
                downto (BRAM_Data_Length + DRAM_Data_Length) / 8),
        Back_TLast => Back_TLast,
        Back_TValid => Back_TValid and DRAM_TReady and BRAM_TReady,    
        Back_TReady => URAM_TReady,
        -- Front AXIS
        Front_TData => Front_TData(URAM_Data_Length + BRAM_Data_Length + DRAM_Data_Length - 1 
                downto BRAM_Data_Length + DRAM_Data_Length),
        Front_TValid => URAM_TValid,
        Front_TReady => Front_TReady and DRAM_TValid and BRAM_TValid);
else generate
    URAM_TValid <= '1';
    URAM_TReady <= '1';
end generate;

Back_TReady <= DRAM_TReady and BRAM_TReady and URAM_TReady;
Front_TValid <= DRAM_TValid and BRAM_TValid and URAM_TValid;

end architecture Composition;
