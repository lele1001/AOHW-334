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

-- TODO: Size register
-- TODO: Grey Counters

entity Async_FIFO is 
generic (
    Data_Length: integer := 8;
    Num_Outst: integer := 1;
    Capacity: integer := 32;
    User_Length: integer := CLog2(Capacity + 1));
port (
    -- Back Clock
    Back_Clock_AClk: in std_ulogic;
    Back_Clock_AResetN: in std_ulogic;
    -- Front Clock
    Front_Clock_AClk: in std_ulogic := '0';
    Front_Clock_AResetN: in std_ulogic := '0';
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

signal Wr_Latch_Data: u_unsigned(CLog2(Capacity) - 1 downto 0);
signal Wr_Latch_Flag: std_ulogic;
signal Wr_Latch_Valid: std_ulogic;
signal Wr_Latch_Ready: std_ulogic;

signal Rd_Latch_Data: u_unsigned(CLog2(Capacity) - 1 downto 0);
signal Rd_Latch_Flag: std_ulogic;
signal Rd_Latch_Valid: std_ulogic;
signal Rd_Latch_Ready: std_ulogic;

begin

Back_Logic: block
    signal Wr_Ptr: u_unsigned(Wr_Latch_Data'Length - 1 downto 0);
    signal Wr_Flag: std_ulogic;
    signal Rd_Ptr: u_unsigned(Rd_Latch_Data'Length - 1 downto 0);
    signal Rd_CDC_Valid: std_ulogic;
    signal Rd_CDC_Ready: std_ulogic;
    signal Not_Full: std_ulogic;
    signal Wr_Event: std_ulogic;
begin 
    Rd_CDC: entity work.HSCDC 
    port map (
        -- Back
        Back_Clock_AClk => Front_Clock_AClk,
        Back_Clock_AResetN => Front_Clock_AResetN,
        Back_Valid => Rd_Latch_Valid,
        Back_Ready => Rd_Latch_Ready,
        -- Front
        Front_Clock_AClk => Back_Clock_AClk,
        Front_Clock_AResetN => Back_Clock_AResetN,
        Front_Valid => Rd_CDC_Valid,
        Front_Ready => Rd_CDC_Ready);
    
    Main: process (all)
    begin
        Not_Full <= '1' when Num_Outst < Capacity or Wr_Ptr /= Rd_Ptr or (Wr_Ptr = Rd_Ptr and Wr_Flag /= '1') else '0';
        --
        if (not Back_Clock_AResetN) = '1' then
            Wr_Ptr <= to_unsigned(0, Wr_Ptr'Length);
            Rd_Ptr <= to_unsigned(0, Rd_Ptr'Length);
            Wr_Latch_Data <= to_unsigned(0, Wr_Latch_Data'Length);
            Wr_Latch_Flag <= '0';
            Wr_Flag <= '0';
            Wr_Event <= '0';
        elsif rising_edge(Back_Clock_AClk) then
            if (Rd_CDC_Valid) = '1' then
                Rd_Ptr <= Rd_Latch_Data;
                Wr_Flag <= Rd_Latch_Flag; 
            end if;
            if (Wr_Event and Wr_Latch_Ready) = '1' then
                Wr_Latch_Data <= Wr_Ptr;
                Wr_Latch_Flag <= Wr_Flag;
                Wr_Event <= '0';
            end if;
            if (Back_TValid and Back_TLast and Not_Full) = '1' then
                Wr_Ptr <= Wr_Ptr + 1;
                Wr_Flag <= '1';
                Wr_Event <= '1';
            end if;
        end if;
        --
        Rd_CDC_Ready <= '1';
        Wr_Latch_Valid <= Wr_Event /*and Wr_Latch_Ready*/;
        Back_TReady <= /*Back_TValid and Back_TLast and*/ Not_Full;
        --
        if rising_edge(Back_Clock_AClk) then
            -- Write bytes.
            for i in 0 to Back_TData'Length / 8 - 1 loop
                if (Back_TValid and Back_TStrb(i) and Not_Full) = '1' then
                    Memory(to_integer(Wr_Ptr))((i + 1) * 8 - 1 downto i * 8) <= Back_TData((i + 1) * 8 - 1 downto i * 8);
                end if;
            end loop;    
        end if;
    end process Main;
end block Back_Logic;        

Front_Logic: block
    signal Wr_Ptr: u_unsigned(Wr_Latch_Data'Length - 1 downto 0);
    signal Rd_Ptr: u_unsigned(Rd_Latch_Data'Length - 1 downto 0);
    signal Wr_CDC_Valid: std_ulogic;
    signal Wr_CDC_Ready: std_ulogic;
    signal Not_Empty: std_ulogic;
    signal Rd_Event: std_ulogic;
    signal Wr_Flag: std_ulogic;
begin 
    Wr_CDC: entity work.HSCDC 
    port map (
        -- Back
        Back_Clock_AClk => Back_Clock_AClk,
        Back_Clock_AResetN => Back_Clock_AResetN,
        Back_Valid => Wr_Latch_Valid,
        Back_Ready => Wr_Latch_Ready,
        -- Front
        Front_Clock_AClk => Front_Clock_AClk,
        Front_Clock_AResetN => Front_Clock_AResetN,
        Front_Valid => Wr_CDC_Valid,
        Front_Ready => Wr_CDC_Ready);
    
    Main: process (all)
    begin
        Not_Empty <= '1' when Wr_Ptr /= Rd_Ptr or (Wr_Ptr = Rd_Ptr and Wr_Flag = '1') else '0';
        --
        if (not Front_Clock_AResetN) = '1' then
            Rd_Ptr <= to_unsigned(0, Rd_Ptr'Length);
            Wr_Ptr <= to_unsigned(0, Wr_Ptr'Length);
            Rd_Latch_Data <= to_unsigned(0, Rd_Latch_Data'Length);
            Rd_Latch_Flag <= '0';
            Rd_Event <= '0';
            Wr_Flag <= '0';
        elsif rising_edge(Front_Clock_AClk) then
            if (Wr_CDC_Valid) = '1' then
                Wr_Ptr <= Wr_Latch_Data;
                Wr_Flag <= Wr_Latch_Flag;
            end if;        
            if (Rd_Event and Rd_Latch_Ready) = '1' then
                Rd_Latch_Data <= Rd_Ptr;
                Rd_Latch_Flag <= Wr_Flag;
                Rd_Event <= '0';
            end if;
            if (Front_TReady and Not_Empty) = '1' then
                Rd_Ptr <= Rd_Ptr + 1;
                Rd_Event <= '1';
                Wr_Flag <= '0';
            end if;
        end if;
        --
        Wr_CDC_Ready <= /*Wr_CDC_Valid and*/ '1';        
        Rd_Latch_Valid <= Rd_Event /*and Rd_Latch_Ready*/;
        Front_TValid <= /*Front_TReady and*/ Not_Empty;
        Front_TData <= Memory(to_integer(Rd_Ptr));
        Front_TUser <= resize("" & Front_TValid, Front_TUser'Length);
    end process Main; 
end block Front_Logic;       
    
end architecture DPRAM; 

architecture Reg_Slice of Async_FIFO is

signal Wr_CDC_Latch: u_unsigned(Back_TData'Range);

signal Wr_Latch_Valid: std_ulogic;
signal Wr_Latch_Ready: std_ulogic;

signal Rd_Latch_Valid: std_ulogic;
signal Rd_Latch_Ready: std_ulogic;

begin

Back_Logic: block
    signal Wr_Flag: std_ulogic;
    signal Rd_CDC_Valid: std_ulogic;
    signal Rd_CDC_Ready: std_ulogic;
    signal Wr_Event: std_ulogic;
begin 
    Rd_CDC: entity work.HSCDC 
    port map (
        -- Back
        Back_Clock_AClk => Front_Clock_AClk,
        Back_Clock_AResetN => Front_Clock_AResetN,
        Back_Valid => Rd_Latch_Valid,
        Back_Ready => Rd_Latch_Ready,
        -- Front
        Front_Clock_AClk => Back_Clock_AClk,
        Front_Clock_AResetN => Back_Clock_AResetN,
        Front_Valid => Rd_CDC_Valid,
        Front_Ready => Rd_CDC_Ready);
    
    Main: process (all)
    begin
        if (not Back_Clock_AResetN) = '1' then
            Wr_Event <= '0';
            Wr_Flag <= '0';
        elsif rising_edge(Back_Clock_AClk) then
            if (Wr_Event and Wr_Latch_Ready) = '1' then
                Wr_Event <= '0';
            end if;
            if (Rd_CDC_Valid and Wr_Flag) = '1' then
                Wr_Flag <= '0';               
            end if;
            if (Back_TValid and Back_TLast and not Wr_Flag) = '1' then
                Wr_Flag <= '1';
                Wr_Event <= '1';
            end if;
        end if;
        --
        Rd_CDC_Ready <= /*Rd_CDC_Valid and*/ Wr_Flag;
        Wr_Latch_Valid <= Wr_Event /*and Wr_Latch_Ready*/;
        Back_TReady <= /*Back_TValid and Back_TLast and*/ not Wr_Flag;
        --
        if rising_edge(Back_Clock_AClk) then
            -- Write bytes.
            for i in 0 to Back_TData'Length / 8 - 1 loop
                if (Back_TValid and Back_TStrb(i) and not Wr_Flag) = '1' then
                    Wr_CDC_Latch((i + 1) * 8 - 1 downto i * 8) <= Back_TData((i + 1) * 8 - 1 downto i * 8);
                end if;
            end loop;    
        end if;
    end process Main;
end block Back_Logic;        

Front_Logic: block
    signal Wr_CDC_Valid: std_ulogic;
    signal Wr_CDC_Ready: std_ulogic;
begin 
    Wr_CDC: entity work.HSCDC 
    port map (
        -- Back
        Back_Clock_AClk => Back_Clock_AClk,
        Back_Clock_AResetN => Back_Clock_AResetN,
        Back_Valid => Wr_Latch_Valid,
        Back_Ready => Wr_Latch_Ready,
        -- Front
        Front_Clock_AClk => Front_Clock_AClk,
        Front_Clock_AResetN => Front_Clock_AResetN,
        Front_Valid => Wr_CDC_Valid,
        Front_Ready => Wr_CDC_Ready);
    
    Main: process (all)
    begin
        if (not Front_Clock_AResetN) = '1' then
        elsif rising_edge(Front_Clock_AClk) then
        end if;
        --
        Wr_CDC_Ready <= /*Wr_CDC_Valid and*/ Rd_Latch_Ready and Front_TReady;        
        Rd_Latch_Valid <= Wr_CDC_Valid and /*Rd_Latch_Ready and*/ Front_TReady;
        Front_TValid <= Wr_CDC_Valid and Rd_Latch_Ready /*and Front_TReady*/;
        Front_TData <= Wr_CDC_Latch;
        Front_TUser <= resize("" & Front_TValid, Front_TUser'Length);
    end process Main; 
end block Front_Logic;       
    
end architecture Reg_Slice; 