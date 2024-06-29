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

-- TODO: "No-full" variant
-- TODO: Size register
-- TODO: Grey Counters for power saving

entity Async_FIFO is 
generic (
    Data_Length: integer := 8;
    Capacity: integer := 32;
    User_Length: integer := CLog2(Capacity + 1));
port (
    -- Back Clock
    Back_AClk: in std_ulogic;
    Back_AResetN: in std_ulogic;
    -- Front Clock
    Front_AClk: in std_ulogic := '0';
    Front_AResetN: in std_ulogic := '0';
    -- Back AXIS
    Back_TData: in u_unsigned(Data_Length - 1 downto 0) := (others => '0');
    Back_TStrb: in u_unsigned(Data_Length / 8 - 1 downto 0) := (others => '1');
    Back_TLast: in std_ulogic := '1';
    Back_TValid: in std_ulogic;    
    Back_TReady: out std_ulogic := '1';
    -- Front AXIS
    Front_TData: out u_unsigned(Data_Length - 1 downto 0) := (others => '0');
    Front_TUser: out u_unsigned(User_Length - 1 downto 0) := (others => '0');
    Front_TValid: out std_ulogic;
    Front_TReady: in std_ulogic);
begin
end Async_FIFO;

architecture DPRAM of Async_FIFO is

type Memory_Type is array (0 to 2**CLog2(Capacity) - 1) of u_unsigned(Back_TData'Length - 1 downto 0);
signal Memory: Memory_Type;

signal Wr_Latch: u_unsigned(CLog2(Capacity) - 1 downto 0);
signal Wr_Valid: std_ulogic;
signal Wr_Ready: std_ulogic;

signal Rd_Latch: u_unsigned(CLog2(Capacity) - 1 downto 0);
signal Rd_Valid: std_ulogic;
signal Rd_Ready: std_ulogic;

begin

Back_Logic: block
    signal Wr_Ptr: u_unsigned(Wr_Latch'Length - 1 downto 0);
    signal Rd_Ptr: u_unsigned(Rd_Latch'Length - 1 downto 0);
    signal Rd_CDC_Valid: std_ulogic;
    signal Not_Full: std_ulogic;
begin 
    Wr_CDC: entity work.HSCDC 
    port map (
        -- Back
        Back_Clk => Front_AClk,
        Back_ResetN => Front_AResetN,
        Back_Valid => Rd_Valid,
        Back_Ready => Rd_Ready,
        -- Front
        Front_Clk => Back_AClk,
        Front_ResetN => Back_AResetN,
        Front_Valid => Rd_CDC_Valid,
        Front_Ready => '1');
    
    Main: process (all)
    begin
        Not_Full <= '1';
--        if (Wr_Ptr = Rd_Ptr) then
--            Not_Full <= '0';
--        end if;        

        if (not Back_AResetN) = '1' then
            Wr_Ptr <= to_unsigned(0, Wr_Ptr'Length);
            Rd_Ptr <= to_unsigned(0, Rd_Ptr'Length);
            Wr_Latch <= to_unsigned(0, Wr_Latch'Length);
        elsif rising_edge(Back_AClk) then
            if Rd_CDC_Valid = '1' then
                Rd_Ptr <= Rd_Latch;
            end if;
            if (Not_Full and Back_TValid and Back_TLast) = '1' then
                Wr_Ptr <= Wr_Ptr + 1;
            end if;
            if (Wr_Ready) = '1' then
                Wr_Latch <= Wr_Ptr;
            end if;
        end if;
        --
        Wr_Valid <= '1' /*and Wr_Ready*/;
        Back_TReady <= Not_Full;
        --
        if rising_edge(Back_AClk) then
            -- Write bytes.
            for i in 0 to Back_TData'Length / 8 - 1 loop
                if (Not_Full and Back_TValid and Back_TStrb(i)) = '1' then
                    Memory(to_integer(Wr_Ptr))((i + 1) * 8 - 1 downto i * 8) <= Back_TData((i + 1) * 8 - 1 downto i * 8);
                end if;
            end loop;    
        end if;
    end process Main;
end block Back_Logic;        

Front_Logic: block
    signal Wr_Ptr: u_unsigned(Wr_Latch'Length - 1 downto 0);
    signal Rd_Ptr: u_unsigned(Rd_Latch'Length - 1 downto 0);
    signal Wr_CDC_Valid: std_ulogic;
    signal Not_Empty: std_ulogic;
begin 
    Rd_CDC: entity work.HSCDC 
    port map (
        -- Back
        Back_Clk => Back_AClk,
        Back_ResetN => Back_AResetN,
        Back_Valid => Wr_Valid,
        Back_Ready => Wr_Ready,
        -- Front
        Front_Clk => Front_AClk,
        Front_ResetN => Front_AResetN,
        Front_Valid => Wr_CDC_Valid,
        Front_Ready => '1');
    
    Main: process (all)
    begin
        Not_Empty <= '1';
        if (Wr_Ptr = Rd_Ptr) then
            Not_Empty <= '0';
        end if;        

        if (not Front_AResetN) = '1' then
            Wr_Ptr <= to_unsigned(0, Wr_Ptr'Length);
            Rd_Ptr <= to_unsigned(0, Rd_Ptr'Length);
            Rd_Latch <= to_unsigned(0, Rd_Latch'Length);
        elsif rising_edge(Front_AClk) then
            if Wr_CDC_Valid = '1' then
                Wr_Ptr <= Wr_Latch;
            end if;
            if (Not_Empty and Front_TReady) = '1' then
                Rd_Ptr <= Rd_Ptr + 1;
            end if;
            if (Rd_Ready) = '1' then
                Rd_Latch <= Rd_Ptr;
            end if;
        end if;
        --
        Rd_Valid <= '1' /*and Rd_Ready*/;
        Front_TValid <= Not_Empty /*and Front_TReady*/;
        Front_TData <= Memory(to_integer(Rd_Ptr));
        Front_TUser <= resize("" & Front_TValid, Front_TUser'Length);
    end process Main; 
end block Front_Logic;       
    
end DPRAM;