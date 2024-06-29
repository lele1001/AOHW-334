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
use std.env;
use Work.Utils.all;

entity AXIS_To_BRAM is
generic (
    -- AXIS_Clock
    AXIS_Clock_Domain: string;
    AXIS_Clock_Period: time;
    -- AXIS
    AXIS_TId_Length: positive := 1;
    AXIS_TDest_Length: positive := 1;
    AXIS_Data_Length: integer range 1 * 8 to 512 * 8 := 8;
    AXIS_TUser_Length: positive := AXIS_Data_Length / 8;
    AXIS_Num_Outst: positive := 1;
    AXIS_Domain: string;
    -- Other
    Capacity: positive;
    ap_clock_Domain: string;
    ap_clock_Period: time;
    BRAM_Addr_A_Length: positive;
    BRAM_Data_A_Length: positive;
    Ram_Style_Attr: string := "block");        
port (
    -- AXIS_Clock
    AXIS_Clock_AClk: in std_ulogic;
    AXIS_Clock_AResetN: in std_ulogic;
    -- AXIS
    AXIS_TId: in u_unsigned(AXIS_TId_Length - 1 downto 0) := (others => '0');
    AXIS_TDest: in u_unsigned(AXIS_TDest_Length - 1 downto 0) := (others => '0');
    AXIS_TData: in u_unsigned(AXIS_Data_Length - 1 downto 0) := (others => '0');
    AXIS_TStrb: in u_unsigned(AXIS_Data_Length / 8 - 1 downto 0) := (others => '1');
    AXIS_TKeep: in u_unsigned(AXIS_Data_Length / 8 - 1 downto 0) := (others => '1');
    AXIS_TLast: in std_logic := '1';
    AXIS_TUser: in u_unsigned(AXIS_TUser_Length - 1 downto 0) := (others => '0');
    AXIS_TValid: in std_ulogic;
    AXIS_TReady: out std_ulogic;
    -- ap_clock
    ap_clk: in std_ulogic;
    ap_rst_n: in std_ulogic;
    -- ap_ctrl_hs
    ap_start: out std_ulogic;
    ap_ready: in std_ulogic;
    ap_done: in std_ulogic;
    -- HLS_BRAM
    BRAM_Addr_A: in std_ulogic_vector(BRAM_Addr_A_Length - 1 downto 0);
    BRAM_En_A: in std_ulogic;
    BRAM_WEn_A: in std_ulogic_vector(BRAM_Data_A_Length / 8 - 1 downto 0);
    BRAM_DIn_A: in std_ulogic_vector(BRAM_Data_A_Length - 1 downto 0);
    BRAM_DOut_A: out std_ulogic_vector(BRAM_Data_A_Length - 1 downto 0));    
end entity AXIS_To_BRAM;

architecture DPRAM of AXIS_To_BRAM is

constant Addr_Width: integer := CLog2(Capacity);

type Memory_Type is array (0 to 2 * 2**Addr_Width - 1) of u_unsigned(BRAM_DOut_A'range);
signal Memory_Array: Memory_Type;
attribute Ram_Style: string;
attribute Ram_Style of Memory_Array: signal is Ram_Style_Attr;

constant Num_Banks: integer := 2;
signal Smphr: u_unsigned(CLog2(Num_Banks + 1) - 1 downto 0);
signal WBank: u_unsigned(CLog2(Num_Banks) - 1 downto 0);
signal RBank: u_unsigned(CLog2(Num_Banks) - 1 downto 0);
signal Full: std_ulogic;
signal Empty: std_ulogic;

signal WAddr: u_unsigned(Addr_Width- 1 downto 0);
signal Start_Smphr: u_unsigned(CLog2(Num_Banks + 1) - 1 downto 0);

begin

Checks: process
begin
    assert AXIS_Clock_Domain = AXIS_Domain report "Clock domain mismatch" severity failure;
    wait;
end process;

AXIS_TReady <= not Full;
ap_start <= '1' when Start_Smphr > 0 else '0'; 

Switch_Banks: process (all)
    variable Push: std_ulogic;
    variable Pop: std_ulogic;
begin
    Push := AXIS_TValid and AXIS_TLast and not Full;
    Pop := ap_done;
    
    if ap_rst_n = '0' then
        Smphr <= resize("0", Smphr'length);
        WBank <= resize("0", WBank'length);
        RBank <= resize("0", RBank'length);
        Full <= '0';
        Empty <= '1';
        Start_Smphr <= resize("0", Start_Smphr'length);
    elsif rising_edge(ap_clk) then
        -- Decrement start
        if Start_Smphr > 0 and ap_ready = '1' then
            Start_Smphr <= Start_Smphr - 1;
        end if;
        -- Push bank
        if Push = '1' then
            WBank <= WBank + 1;
            if Pop = '0' then
                Smphr <= Smphr + 1;
                Start_Smphr <= Start_Smphr + 1;
                Empty <= '0';
                if Smphr = Num_Banks - 1 then
                    Full <= '1';
                end if;                
            end if;
        end if;
        -- Pop bank
        if Pop = '1' then
            RBank <= RBank + 1;
            if Push = '0' then
                Smphr <= Smphr - 1;
                Full <= '0';
                if Smphr = 1 then
                    Empty <= '1';
                end if;
            end if;
        end if;
    end if;
end process;

Generate_Address: process (all)
begin
    if (not AXIS_Clock_AResetN) = '1' then
        WAddr <= to_unsigned(0, WAddr'length);
    elsif rising_edge(AXIS_Clock_AClk) then
        if (AXIS_TValid and AXIS_TReady) = '1' then
            WAddr <= WAddr + 1;
            if AXIS_TLast = '1' then
                WAddr <= to_unsigned(0, WAddr'length);
            end if;
        end if;
    end if;
end process;

Write_Memory: process (all)
begin
    if rising_edge(AXIS_Clock_AClk) then
        for i in 0 to AXIS_TData'Length / 8 - 1 loop
            if (AXIS_TValid and AXIS_TReady) = '1' then
                if (AXIS_TStrb(i)) = '1' then
                    Memory_Array(to_integer(WBank & WAddr))((i + 1) * 8 - 1 downto i * 8) 
                        <= AXIS_TData((i + 1) * 8 - 1 downto i * 8);
                end if;
            end if;
        end loop;    
    end if;
end process;

Read_Memory: process (all)
begin
    if rising_edge(ap_clk) then
        if (BRAM_En_A) = '1' then
            BRAM_DOut_A <= std_logic_vector(Memory_Array(to_integer(RBank & resize(unsigned(
                BRAM_Addr_A), Addr_Width))));
        end if;
    end if;
end process;
     
end DPRAM;
