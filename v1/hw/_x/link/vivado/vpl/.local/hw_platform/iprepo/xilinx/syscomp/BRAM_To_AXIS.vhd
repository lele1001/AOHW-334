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
library std;
library work;
use work.Utils.all;

entity BRAM_To_AXIS is
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
    BRAM_DOut_A: out std_ulogic_vector(BRAM_Data_A_Length - 1 downto 0);    
    -- AXIS_Clock
    AXIS_Clock_AClk: in std_ulogic;
    AXIS_Clock_AResetN: in std_ulogic;
    -- AXIS
    AXIS_TId: out u_unsigned(AXIS_TId_Length - 1 downto 0) := (others => '0');
    AXIS_TDest: out u_unsigned(AXIS_TDest_Length - 1 downto 0) := (others => '0');
    AXIS_TData: out u_unsigned(AXIS_Data_Length - 1 downto 0) := (others => '0');
    AXIS_TStrb: out u_unsigned(AXIS_Data_Length / 8 - 1 downto 0) := (others => '1');
    AXIS_TKeep: out u_unsigned(AXIS_Data_Length / 8 - 1 downto 0) := (others => '1');
    AXIS_TLast: out std_logic := '1';
    AXIS_TUser: out u_unsigned(AXIS_TUser_Length - 1 downto 0) := (others => '0');
    AXIS_TValid: out std_ulogic;
    AXIS_TReady: in std_ulogic);
end entity BRAM_To_AXIS;

architecture DPRAM of BRAM_To_AXIS is

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

signal Start_Smphr: u_unsigned(CLog2(Num_Banks + 1) - 1 downto 0);

signal RAddr_Data: u_unsigned(Addr_Width - 1 downto 0);
signal RAddr_Last: std_logic;
signal RAddr_Valid: std_logic;
signal RAddr_Ready: std_logic;

signal RData_Data: u_unsigned(AXIS_TData'range);
signal RData_Last: std_logic;
signal RData_Valid: std_logic;
signal RData_Ready: std_logic;

begin

Checks: process
begin
    assert AXIS_Clock_Domain = AXIS_Domain report "Clock domain mismatch" severity failure;
    wait;
end process;

ap_start <= '1' when Start_Smphr > 0 else '0';

Switch_Banks: process (all)
    variable Push: std_ulogic;
    variable Pop: std_ulogic;
begin
    Push := ap_done;
    Pop := RAddr_Valid and RAddr_Last and RAddr_Ready and not Empty;
    
    if ap_rst_n = '0' then
        Smphr <= resize("0", Smphr'length);
        WBank <= resize("0", WBank'length);
        RBank <= resize("0", RBank'length);
        Full <= '0';
        Empty <= '1';
        Start_Smphr <= to_unsigned(Num_Banks, Start_Smphr'length);
    elsif rising_edge(ap_clk) then
        -- Decrement start
        if Start_Smphr > 0 and ap_ready = '1' then
            Start_Smphr <= Start_Smphr - 1;
        end if;
        -- Push bank
        if Push = '1' then
            WBank <= WBank + 1;
            Start_Smphr <= Start_Smphr + 1;
            if Pop = '0' then
                Smphr <= Smphr + 1;
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

Write_Memory: process (all)
    variable Addr: u_unsigned(Addr_Width - 1 downto 0);
begin
    if rising_edge(ap_clk) then
        if BRAM_En_A = '1' then
            for i in 0 to BRAM_DIn_A'length / 8 - 1 loop
                if BRAM_WEn_A(i) = '1' then
                    Addr := WBank & resize(unsigned(BRAM_Addr_A), Addr'length);
                    Memory_Array(to_integer(Addr))((i + 1) * 8 - 1 downto i * 8) 
                        <= unsigned(BRAM_DIn_A((i + 1) * 8 - 1 downto i * 8));
                end if;
            end loop;    
        end if;
    end if;
end process;

Gen_RAddr: process (all)
begin
    RAddr_Valid <= '1';

    if ap_rst_n = '0' then
        RAddr_Data <= resize("0", RAddr_Data'length);
        RAddr_Last <= '0';
    elsif rising_edge(ap_clk) then
        if (RAddr_Valid and RAddr_Ready) = '1' then
            RAddr_Data <= RAddr_Data + 1;
            if RAddr_Last = '1' then
                RAddr_Last <= '0';
                RAddr_Data <= resize("0", RAddr_Data'length);
            end if;
            if RAddr_Data = Capacity - 2 then
                RAddr_Last <= '1';
            end if;
        end if;
    end if;
end process;

Read_Memory: process (all)
    variable Addr: u_unsigned(Addr_Width - 1 downto 0);
begin
    RAddr_Ready <= not RData_Valid or (RData_Valid and RData_Ready);

    if rising_edge(ap_clk) then
        if (RAddr_Valid and RAddr_Ready) = '1' then
            Addr := RBank & resize(unsigned(RAddr_Data), Addr_Width);
            RData_Data <= Memory_Array(to_integer(Addr));
            RData_Last <= RAddr_Last;
        end if;
    end if;

    if ap_rst_n = '1' then
        RData_Valid <= '0';
    elsif rising_edge(ap_clk) then
        if (RData_Valid and RData_Ready) = '1' then
            RData_Valid <= '0';
        end if;
        if (RAddr_Valid and RAddr_Ready) = '1' then
            RData_Valid <= '1';
        end if;
    end if;
end process;    

Use_CDC: if AXIS_Domain /= ap_clock_Domain generate
    Yes: block
    begin
        CDC_Data_FIFO: entity work.AXIS_Queue 
        generic map (
            -- Back
            Back_Clock_Domain => ap_clock_Domain,
            Back_Clock_Period => ap_clock_Period,
            Back_Domain => ap_clock_Domain,
            Back_Data_Length => AXIS_TData'Length,
            Back_Num_Outst => Capacity,
            -- Front
            Front_Clock_Domain => AXIS_Clock_Domain,
            Front_Clock_Period => AXIS_Clock_Period,
            Front_Domain => AXIS_Domain,
            Front_Data_Length => AXIS_TData'Length,
            Front_Num_Outst => AXIS_Num_Outst,
            -- Other
            Capacity => 32)
        port map (
            -- Back AXIS
            Back_Clock_AClk => ap_clk,
            Back_Clock_AResetN => ap_rst_n,
            Back_TData => RData_Data,
            Back_TLast => RData_Last,
            Back_TValid => RData_Valid,
            Back_TReady => RData_Ready,
            -- Front AXIS
            Front_Clock_AClk => AXIS_Clock_AClk,
            Front_Clock_AResetN => AXIS_Clock_AResetN,
            Front_TData => AXIS_TData,
            Front_TLast => AXIS_TLast,
            Front_TValid => AXIS_TValid,
            Front_TReady => AXIS_TReady);   
    end block;
else generate
    No: block
    begin
        AXIS_TData <= RData_Data;
        AXIS_TLast <= RData_Last;
        AXIS_TValid <= RData_Valid;
        RData_Ready <= AXIS_TReady;
    end block;    
end generate Use_CDC;

AXIS_TId <= (others => '0');
AXIS_TDest <= (others => '0');
AXIS_TStrb <= (others => '1');
AXIS_TKeep <= (others => '1');

end DPRAM;
