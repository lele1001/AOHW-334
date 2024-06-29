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

entity Upsize is 
generic (
    -- Back Clock
    Back_TClk: time := 5ns;
    -- Front Clock
    Front_TClk: time := Back_TClk;
    -- Back AXIS
    Back_TData_Width: integer range 1 * 8 to 512 * 8 := 8;
    Back_TUser_Width: integer := 1;
    Back_Num_Outst: integer := 1;
    Back_Clock_Id: string := "Clock";
    -- Front AXIS
    Front_TData_Width: integer range 1 * 8 to 512 * 8 := Back_TData_Width;
    Front_TUser_Width: integer := Back_TUser_Width;
    Front_Num_Outst: integer := Back_Num_Outst;
    Front_Clock_Id: string := Back_Clock_Id);
port (
    -- Back Clock
    Back_AClk: in std_ulogic;
    Back_AResetN: in std_ulogic;
    -- Front Clock
    Front_AClk: in std_ulogic := '0';
    Front_AResetN: in std_ulogic := '0';
    -- Back AXIS 
    Back_TData: in u_unsigned(Back_TData_Width - 1 downto 0) := (others => '0');
    Back_TStrb: in u_unsigned(Back_TData_Width / 8 - 1 downto 0) := (others => '0');
    Back_TLast: in std_logic := '1';
    Back_TUser: in u_unsigned(Back_TUser_Width - 1 downto 0) := (others => '0');
    Back_TValid: in std_ulogic;
    Back_TReady: out std_ulogic := '1';
    -- Front AXIS
    Front_TData: out u_unsigned(Front_TData_Width - 1 downto 0) := (others => '0');
    Front_TStrb: out u_unsigned(Front_TData_Width / 8 - 1 downto 0) := (others => '0');
    Front_TLast: out std_logic := '1';
    Front_TUser: out u_unsigned(Front_TUser_Width - 1 downto 0) := (others => '0');
    Front_TValid: out std_ulogic;
    Front_TReady: in std_ulogic);
constant Up_Ratio: integer :=  Front_TData_Width / Back_TData_Width;    
constant Capacity: integer := Front_Num_Outst;
begin
    assert Up_Ratio > 1 report "Error 1 in " & Upsize'INSTANCE_NAME severity Error;
end Upsize;

architecture Behavior of Upsize is

signal Is_Last: std_ulogic := '1';
signal Counter: u_unsigned(CLog2(Up_Ratio) - 1 downto 0);
-- Padded
constant Padded_TTData_Width: integer := (Back_TData'Length + 7) / 8 * 8;
constant Padded_TStrb_Length: integer := (Back_TStrb'Length + 7) / 8 * 8;    
constant Padded_TUser_Length: integer := (Back_TUser'Length + 7) / 8 * 8;    
constant Padded_TLast_Length: integer := 8;    
-- Packed
signal Packed_TData: u_unsigned(Padded_TTData_Width * Up_Ratio + Padded_TStrb_Length * Up_Ratio 
    + Padded_TUser_Length * Up_Ratio + Padded_TLast_Length - 1 downto 0);
signal Packed_TStrb: u_unsigned(Padded_TTData_Width * Up_Ratio / 8 + Padded_TStrb_Length * Up_Ratio / 8 
    + Padded_TUser_Length * Up_Ratio / 8 + Padded_TLast_Length / 8 - 1 downto 0);        
signal Packed_TLast: std_logic := '1';
signal Packed_TValid: std_logic;
signal Packed_TReady: std_logic :=  '1';
-- Queued
signal Queued_TData: u_unsigned(Packed_TData'Length - 1 downto 0);
signal Queued_TValid: std_ulogic;
signal Queued_TReady: std_ulogic := '1';

begin

/**
Generate write enable (strb) for each byte of the upsized data, then pack all the signals to send them through the FIFO.
*/
U0: process (all)
    variable TData_Bytes: u_unsigned(Padded_TTData_Width * Up_Ratio - 1 downto 0);
    variable TStrb_Bytes: u_unsigned(Padded_TStrb_Length * Up_Ratio - 1 downto 0);
    variable TUser_Bytes: u_unsigned(Padded_TUser_Length * Up_Ratio - 1 downto 0);
    variable TLast_Bytes: u_unsigned(7 downto 0);
    variable TData_Write: u_unsigned(Padded_TTData_Width / 8 * Up_Ratio - 1 downto 0);
    variable TStrb_Write: u_unsigned(Padded_TStrb_Length / 8 * Up_Ratio - 1 downto 0);
    variable TUser_Write: u_unsigned(Padded_TUser_Length / 8 * Up_Ratio - 1 downto 0);
    variable TLast_Write: u_unsigned(0 downto 0);                
begin
    Is_Last <= '0';
    if Counter = Up_Ratio - 1 then
        Is_Last <= '1';
    end if;

    if (not Back_AResetN) = '1' then
        Counter <= to_unsigned(0, Counter'Length);
    elsif rising_edge(Back_AClk) then
        if (Back_TValid and Packed_TReady) = '1' then
            Counter <= Counter + '1';
            if Is_Last = '1' then
                Counter <= to_unsigned(0, Counter'Length); 
            end if;
        end if;
    end if;
    --
    Back_TReady <= /*Back_TValid and*/ Packed_TReady;
    --
    TData_Bytes := (others => '0');
    TStrb_Bytes := (others => '0');
    TUser_Bytes := (others => '0');
    TData_Write := (others => '0');
    TStrb_Write := (others => '0');
    TUser_Write := (others => '0');
    for i in 0 to Up_Ratio - 1 loop
        TData_Bytes((i + 1) * Padded_TTData_Width - 1 downto i * Padded_TTData_Width) := resize(Back_TData, Padded_TTData_Width);
        TStrb_Bytes((i + 1) * Padded_TStrb_Length - 1 downto i * Padded_TStrb_Length) := resize(Back_TStrb, Padded_TStrb_Length);
        TUser_Bytes((i + 1) * Padded_TUser_Length - 1 downto i * Padded_TUser_Length) := resize(Back_TUser, Padded_TUser_Length);
        if i = Counter then
            TData_Write((i + 1) * Padded_TTData_Width / 8 - 1 downto i * Padded_TTData_Width / 8) := (others => '1');
            TStrb_Write((i + 1) * Padded_TStrb_Length / 8 - 1 downto i * Padded_TStrb_Length / 8) := (others => '1');
            TUser_Write((i + 1) * Padded_TUser_Length / 8 - 1 downto i * Padded_TUser_Length / 8) := (others => '1');    
        end if;
    end loop;
    TLast_Bytes := (0 => Back_TLast, others => '0');
    TLast_Write := (0 => Is_Last, others => '0');
    --
    Packed_TData <= (TData_Bytes, TStrb_Bytes, TUser_Bytes, TLast_Bytes);
    Packed_TStrb <= (TData_Write, TStrb_Write, TUser_Write, TLast_Write);
    Packed_TLast <= Is_Last;
    Packed_TValid <= Back_TValid /*and Upsize_TReady*/;
end process;

U1: entity work.Auto_FIFO 
generic map (
    -- Back Clock
    Back_TClk => Back_TClk,
    -- Front Clock
    Front_TClk => Front_TClk,
    -- Back AXIS
    Back_Data_Length => Packed_TData'Length,
    Back_Num_Outst => Capacity,
    Back_Clock_Id => Back_Clock_Id,
    -- Front AXIS
    Front_Clock_Id => Front_Clock_Id)
port map (
    -- Back Clock
    Back_AClk => Back_AClk,
    Back_AResetN => Back_AResetN,
    -- Front Clock
    Front_AClk => Front_AClk,
    Front_AResetN => Front_AResetN,
    -- Back AXIS
    Back_TData => Packed_TData,
    Back_TStrb => Packed_TStrb,
    Back_TLast => Packed_TLast,
    Back_TValid => Packed_TValid,
    Back_TReady => Packed_TReady,
    -- Front AXIS
    Front_TData => Queued_TData,
    Front_TValid => Queued_TValid,
    Front_TReady => Queued_TReady);

--U1: if Async: (Back_Clock_Id /= Front_Clock_Id and Capacity > 1) generate
--    U0: entity work.Async_FIFO(DPRAM) 
--    generic map (
--        Data_Length => Packed_TData'Length,
--        Capacity => Capacity)
--    port map (
--        -- Back Clock
--        Back_AClk => Back_AClk,
--        Back_AResetN => Back_AResetN,
--        -- Front Clock
--        Front_AClk => Front_AClk,
--        Front_AResetN => Front_AResetN,
--        -- Back AXIS
--        Back_TData => Packed_TData,
--        Back_TStrb => Packed_TStrb,
--        Back_TLast => Packed_TLast,
--        Back_TValid => Packed_TValid,
--        Back_TReady => Packed_TReady,
--        -- Front AXIS
--        Front_TData => Queued_TData,
--        Front_TValid => Queued_TValid,
--        Front_TReady => Queued_TReady);
--elsif Sync: (Back_Clock_Id = Front_Clock_Id and Capacity > 1) generate
--    U0: entity work.Sync_FIFO(DPRAM) 
--    generic map (
--        Data_Length => Packed_TData'Length,
--        Capacity => Capacity)
--    port map (
--        -- Back Clock
--        Back_AClk => Back_AClk,
--        Back_AResetN => Back_AResetN,
--        -- Back AXIS
--        Back_TData => Packed_TData,
--        Back_TStrb => Packed_TStrb,
--        Back_TLast => Packed_TLast,
--        Back_TValid => Packed_TValid,
--        Back_TReady => Packed_TReady,
--        -- Front AXIS
--        Front_TData => Queued_TData,
--        Front_TValid => Queued_TValid,
--        Front_TReady => Queued_TReady);
--elsif Reg: (Back_Clock_Id = Front_Clock_Id and Capacity = 1) generate
--    U0: entity work.Sync_FIFO(Reg_Slice) 
--    generic map (
--        Data_Length => Packed_TData'Length)
--    port map (
--        -- Back Clock
--        Back_AClk => Back_AClk,
--        Back_AResetN => Back_AResetN,
--        -- Back AXIS
--        Back_TData => Packed_TData,
--        Back_TStrb => Packed_TStrb,
--        Back_TLast => Packed_TLast,
--        Back_TValid => Packed_TValid,
--        Back_TReady => Packed_TReady,
--        -- Front AXIS
--        Front_TData => Queued_TData,
--        Front_TValid => Queued_TValid,
--        Front_TReady => Queued_TReady);
--else NA: generate
--    Checks: process
--    begin
--        assert false report "Error 2 in " & Upsize'INSTANCE_NAME severity Error;
--        wait;
--    end process Checks;
--end generate;

/**
Remove zero bits to obtain the final upsized busses.
*/  
U2: process (all)
    variable TData_Bytes: u_unsigned(Padded_TTData_Width * Up_Ratio - 1 downto 0);
    variable TStrb_Bytes: u_unsigned(Padded_TStrb_Length * Up_Ratio - 1 downto 0);
    variable TUser_Bytes: u_unsigned(Padded_TUser_Length * Up_Ratio - 1 downto 0);
    variable TLast_Bytes: u_unsigned(7 downto 0);        
begin    
    Queued_TReady <= /*Queued_TValid and*/ Front_TReady;
    (TData_Bytes, TStrb_Bytes, TUser_Bytes, TLast_Bytes) := Queued_TData;    
    for i in 0 to Up_Ratio - 1 loop
        Front_TData((i + 1) * Back_TData'Length - 1 downto i * Back_TData'Length) 
            <= resize(TData_Bytes((i + 1) * Padded_TTData_Width - 1 downto i * Padded_TTData_Width), Back_TData'Length);
        Front_TStrb((i + 1) * Back_TStrb'Length - 1 downto i * Back_TStrb'Length) 
            <= resize(TStrb_Bytes((i + 1) * Padded_TStrb_Length - 1 downto i * Padded_TStrb_Length), Back_TStrb'Length);
        Front_TUser((i + 1) * Back_TUser'Length - 1 downto i * Back_TUser'Length) 
            <= resize(TUser_Bytes((i + 1) * Padded_TUser_Length - 1 downto i * Padded_TUser_Length), Back_TUser'Length);
    end loop;
    Front_TLast <= TLast_Bytes(0);
    Front_TValid <= Queued_TValid;
end process;

end Behavior;

