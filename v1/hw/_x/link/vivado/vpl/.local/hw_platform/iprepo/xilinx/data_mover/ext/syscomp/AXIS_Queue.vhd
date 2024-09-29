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

entity AXIS_Queue is
generic (
    -- Back Clock
    Back_TClk: time := 5ns;
    -- Front Clock
    Front_TClk: time := 5ns;
    -- Back AXIS
    Back_Data_Length: integer range 1 * 8 to 512 * 8 := 8;
    Back_TUser_Width: integer := 1;
    Back_Num_Outst: integer := 1;
    Back_Clock_Id: string := "Clock";
    -- Front AXIS
    Front_Data_Length: integer range 1 * 8 to 512 * 8 := Back_Data_Length;
    Front_TUser_Width: integer := Back_TUser_Width * Front_Data_Length / Back_Data_Length;
    Front_Num_Outst: integer := Back_Num_Outst;
    Front_Clock_Id: string := Back_Clock_Id);
port (
    -- Back Clock
    Back_AClk: in std_ulogic;
    Back_AResetN: in std_ulogic;
    -- Front Clock
    Front_AClk: in std_ulogic := 'U';
    Front_AResetN: in std_ulogic := 'U';
    -- Back AXIS
    Back_TData: in u_unsigned(Back_Data_Length - 1 downto 0) := (others => '0');
    Back_TStrb: in u_unsigned(Back_Data_Length / 8 - 1 downto 0) := (others => '1');
    Back_TLast: in std_logic := '1';
    Back_TUser: in u_unsigned(Back_TUser_Width - 1 downto 0) := (others => '0');
    Back_TValid: in std_ulogic;
    Back_TReady: out std_ulogic := '1';
    -- Front AXIS
    Front_TData: out u_unsigned(Front_Data_Length - 1 downto 0) := (others => '0');
    Front_TStrb: out u_unsigned(Front_Data_Length / 8 - 1 downto 0) := (others => '1');
    Front_TLast: out std_logic := '1';
    Front_TUser: out u_unsigned(Front_TUser_Width - 1 downto 0) := (others => '0');
    Front_TValid: out std_ulogic;
    Front_TReady: in std_ulogic);
begin
    assert Back_Data_Length mod 8 = 0 report "Data must be byte-aligned" severity Error;
    assert Front_Data_Length mod 8 = 0 report "Data must be byte-aligned" severity Error;
end AXIS_Queue;

architecture Behavior of AXIS_Queue is

constant Up_Ratio: integer := LCM(Back_TData'Length, Front_TData'Length) / Back_TData'Length;
constant Down_Ratio: integer := LCM(Back_TData'Length, Front_TData'Length) / Front_TData'Length;

-- Buffered
constant Buffered_Num_Outst: integer := (Back_Num_Outst + Up_Ratio - 1) / Up_Ratio;
signal Buffered_TData: u_unsigned(Back_TData'Length * Up_Ratio - 1 downto 0);
signal Buffered_TStrb: u_unsigned(Back_TData'Length * Up_Ratio / 8 - 1 downto 0);
signal Buffered_TUser: u_unsigned(Back_TUser'Length * Up_Ratio - 1 downto 0);
signal Buffered_TLast: std_logic := '1';
signal Buffered_TValid: std_logic;
signal Buffered_TReady: std_logic :=  '1';

begin

U0: if Async: (Back_Clock_Id /= Front_Clock_Id) generate
begin
    U0: if Big: (Buffered_Num_Outst > 1024 and  Buffered_TData'Length > 8) generate
        -- Upsized
        constant Upsized_Num_Outst: integer := (Back_Num_Outst + Up_Ratio - 1) / Up_Ratio;
        signal Upsized_TData: u_unsigned(Back_TData'Length * Up_Ratio - 1 downto 0);
        signal Upsized_TStrb: u_unsigned(Back_TData'Length * Up_Ratio / 8 - 1 downto 0);
        signal Upsized_TUser: u_unsigned(Back_TUser'Length * Up_Ratio - 1 downto 0);
        signal Upsized_TLast: std_logic := '1';
        signal Upsized_TValid: std_logic;
        signal Upsized_TReady: std_logic :=  '1';
        --
        signal Data1: u_unsigned((Upsized_TData'Length + Upsized_TStrb'Length + 7) / 8 * 8 - 1 downto 0);
        signal Data2: u_unsigned((Upsized_TUser'Length + 1 + 7) / 8 * 8 - 1 downto 0);
        signal Valid1: std_logic;
        signal Valid2: std_logic;
    begin
        U0: if Fast: (Back_TClk * Up_Ratio <= Front_TClk) generate
        begin
            U0: if Up: Back_TData'Length < Buffered_TData'Length generate
            begin
                U0: entity work.Upsize
                generic map (
                    -- Back Clock
                    Back_TClk => Back_TClk,
                    -- Back AXIS
                    Back_TData_Width => Back_TData'Length,
                    Back_TUser_Width => Back_TUser'Length,
                    Back_Num_Outst => 1,
                    Back_Clock_Id => Back_Clock_Id,
                    -- Front AXIS
                    Front_TData_Width => Upsized_TData'Length,
                    Front_TUser_Width => Upsized_TUser'Length,
                    Front_Num_Outst => 1,
                    Front_Clock_Id => Back_Clock_Id)
                port map (
                    -- Back Clock
                    Back_AClk => Back_AClk,
                    Back_AResetN => Back_AResetN,
                    -- Back AXIS
                    Back_TData => Back_TData,
                    Back_TStrb => Back_TStrb,
                    Back_TUser => Back_TUser,
                    Back_TLast => Back_TLast,
                    Back_TValid => Back_TValid,
                    Back_TReady => Back_TReady,
                    -- Front AXIS
                    Front_TData => Upsized_TData,
                    Front_TStrb => Upsized_TStrb,
                    Front_TUser => Upsized_TUser,
                    Front_TLast => Upsized_TLast,
                    Front_TValid => Upsized_TValid,
                    Front_TReady => Upsized_TReady);
            else Bypass: generate
                Upsized_TData <= Back_TData;
                Upsized_TStrb <= Back_TStrb;
                Upsized_TUser <= Back_TUser;
                Upsized_TLast <= Back_TLast;
                Upsized_TValid <= Back_TValid;
                Back_TReady <= Upsized_TReady;
            end generate;
                                   
            U1: entity work.Sync_FIFO(URAM)
            generic map (
                Data_Length => Data1'Length,
                Capacity => Buffered_Num_Outst)
            port map (
                -- Back Clock
                Back_AClk => Back_AClk,
                Back_AResetN => Back_AResetN,
                -- Back AXIS
                Back_TData => resize(Upsized_TData & Upsized_TStrb, Data1'Length),
                Back_TValid => Upsized_TValid,
                Back_TReady => Upsized_TReady,
                -- Front AXIS
                Front_TData => Data1,
                Front_TValid => Valid1,
                Front_TReady => Buffered_TReady and Valid2);
                
            U2: entity work.Sync_FIFO(URAM)
            generic map (
                Data_Length => Data2'Length,
                Capacity => Buffered_Num_Outst)
            port map (
                -- Back Clock
                Back_AClk => Back_AClk,
                Back_AResetN => Back_AResetN,
                -- Back AXIS
                Back_TData => resize(Upsized_TUser & Upsized_TLast, Data2'Length),
                Back_TValid => Upsized_TValid,
                Back_TReady => Upsized_TReady,
                -- Front AXIS
                Front_TData => Data2,
                Front_TValid => Valid2,
                Front_TReady => Buffered_TReady and Valid1);
                    
            (Buffered_TData, Buffered_TStrb) <= resize(Data1, Buffered_TData'Length + Buffered_TStrb'Length);
            (Buffered_TUser, Buffered_TLast) <= resize(Data2, Buffered_TUser'Length + 1);
            Buffered_TValid <= Valid1 and Valid2;
            
            U3: if Down: Front_TData'Length < Buffered_TData'Length generate
                U0: entity work.Downsize
                generic map (
                    -- Back Clock
                    Back_TClk => Back_TClk,
                    -- Front Clock
                    Front_TClk => Front_TClk,
                    -- Back AXIS
                    Back_TData_Width => Buffered_TData'Length,
                    Back_TUser_Width => Buffered_TUser'Length,
                    Back_Num_Outst => (32 + Down_Ratio - 1) / Down_Ratio,
                    Back_Clock_Id => Back_Clock_Id,
                    -- Front AXIS
                    Front_TData_Width => Front_TData'Length,
                    Front_TUser_Width => Front_TUser'Length,
                    Front_Num_Outst => 32,
                    Front_Clock_Id => Front_Clock_Id)
                port map (
                    -- Back Clock
                    Back_AClk => Back_AClk,
                    Back_AResetN => Back_AResetN,
                    -- Front Clock
                    Front_AClk => Front_AClk,
                    Front_AResetN => Front_AResetN,
                    -- Back AXIS
                    Back_TData => Buffered_TData,
                    Back_TStrb => Buffered_TStrb,
                    Back_TUser => Buffered_TUser,
                    Back_TLast => Buffered_TLast,
                    Back_TValid => Buffered_TValid,
                    Back_TReady => Buffered_TReady,
                    -- Front AXIS
                    Front_TData => Front_TData,
                    Front_TStrb => Front_TStrb,
                    Front_TUser => Front_TUser,
                    Front_TLast => Front_TLast,
                    Front_TValid => Front_TValid,
                    Front_TReady => Front_TReady);
            else CDC: generate
                signal Data: u_unsigned((Front_TData'Length + Front_TStrb'Length + Front_TUser'Length + 1 + 7) / 8 * 8 - 1 downto 0);
            begin
                U0: entity work.Async_FIFO(DPRAM)
                generic map (
                    Data_Length => Data'Length,
                    Capacity => 32)
                port map (
                    -- Back Clock
                    Back_AClk => Back_AClk,
                    Back_AResetN => Back_AResetN,
                    -- Front Clock
                    Front_AClk => Front_AClk,
                    Front_AResetN => Front_AResetN,
                    -- Back AXIS
                    Back_TData => resize(Buffered_TData & Buffered_TStrb & Buffered_TUser & Buffered_TLast, Data'Length),
                    Back_TValid => Buffered_TValid,
                    Back_TReady => Buffered_TReady,
                    -- Front AXIS
                    Front_TData => Data,
                    Front_TValid => Front_TValid,
                    Front_TReady => Front_TReady);
                    
                (Front_TData, Front_TStrb, Front_TUser, Front_TLast)
                    <= resize(Data, Back_TData'Length + Back_TStrb'Length + Back_TUser'Length + 1);
            end generate;
        else Slow: generate
            U0: if Up: Back_TData'Length < Buffered_TData'Length generate
            begin
                U0: entity work.Upsize
                generic map (
                    -- Back Clock
                    Back_TClk => Back_TClk,
                    -- Front Clock
                    Front_TClk => Front_TClk,
                    -- Back AXIS
                    Back_TData_Width => Back_TData'Length,
                    Back_TUser_Width => Back_TUser'Length,
                    Back_Num_Outst => 32 * Up_Ratio,
                    Back_Clock_Id => Back_Clock_Id,
                    -- Front AXIS
                    Front_TData_Width => Upsized_TData'Length,
                    Front_TUser_Width => Upsized_TUser'Length,
                    Front_Num_Outst => 32,
                    Front_Clock_Id => Front_Clock_Id)
                port map (
                    -- Back Clock
                    Back_AClk => Back_AClk,
                    Back_AResetN => Back_AResetN,
                    -- Front Clock
                    Front_AClk => Front_AClk,
                    Front_AResetN => Front_AResetN,
                    -- Back AXIS
                    Back_TData => Back_TData,
                    Back_TStrb => Back_TStrb,
                    Back_TUser => Back_TUser,
                    Back_TLast => Back_TLast,
                    Back_TValid => Back_TValid,
                    Back_TReady => Back_TReady,
                    -- Front AXIS
                    Front_TData => Upsized_TData,
                    Front_TStrb => Upsized_TStrb,
                    Front_TUser => Upsized_TUser,
                    Front_TLast => Upsized_TLast,
                    Front_TValid => Upsized_TValid,
                    Front_TReady => Upsized_TReady);
            else CDC: generate
                signal Data: u_unsigned((Back_TData'Length + Back_TStrb'Length + Back_TUser'Length + 1 + 7) / 8 * 8 - 1 downto 0);
            begin
                U0: entity work.Async_FIFO(DPRAM)
                generic map (
                    Data_Length => Data'Length,
                    Capacity => 32)
                port map (
                    -- Back Clock
                    Back_AClk => Back_AClk,
                    Back_AResetN => Back_AResetN,
                    -- Front Clock
                    Front_AClk => Front_AClk,
                    Front_AResetN => Front_AResetN,
                    -- Back AXIS
                    Back_TData => resize(Back_TData & Back_TStrb & Back_TUser & Back_TLast, Data'Length),
                    Back_TValid => Back_TValid,
                    Back_TReady => Back_TReady,
                    -- Front AXIS
                    Front_TData => Data,
                    Front_TValid => Upsized_TValid,
                    Front_TReady => Upsized_TReady);
                    
                (Upsized_TData, Upsized_TStrb, Upsized_TUser, Upsized_TLast)
                    <= resize(Data, Back_TData'Length + Back_TStrb'Length + Back_TUser'Length + 1);
            end generate;
                      
            U1: entity work.Sync_FIFO(URAM)
            generic map (
                Data_Length => Data1'Length,
                Capacity => Buffered_Num_Outst)
            port map (
                -- Back Clock
                Back_AClk => Front_AClk,
                Back_AResetN => Front_AResetN,
                -- Back AXIS
                Back_TData => resize(Upsized_TData & Upsized_TStrb, Data1'Length),
                Back_TValid => Upsized_TValid,
                Back_TReady => Upsized_TReady,
                -- Front AXIS
                Front_TData => Data1,
                Front_TValid => Valid1,
                Front_TReady => Buffered_TReady and Valid2);
                
            U2: entity work.Sync_FIFO(URAM)
            generic map (
                Data_Length => Data2'Length,
                Capacity => Buffered_Num_Outst)
            port map (
                -- Back Clock
                Back_AClk => Front_AClk,
                Back_AResetN => Front_AResetN,
                -- Back AXIS
                Back_TData => resize(Upsized_TUser & Upsized_TLast, Data2'Length),
                Back_TValid => Upsized_TValid,
                Back_TReady => Upsized_TReady,
                -- Front AXIS
                Front_TData => Data2,
                Front_TValid => Valid2,
                Front_TReady => Buffered_TReady and Valid1);
                       
            (Buffered_TData, Buffered_TStrb) <= resize(Data1, Buffered_TData'Length + Buffered_TStrb'Length);
            (Buffered_TUser, Buffered_TLast) <= resize(Data2, Buffered_TUser'Length + 1);
            Buffered_TValid <= Valid1 and Valid2;
            
            U3: if Down: Front_TData'Length < Buffered_TData'Length generate
                U0: entity work.Downsize
                generic map (
                    -- Back Clock
                    Back_TClk => Front_TClk,
                    -- Back AXIS
                    Back_TData_Width => Buffered_TData'Length,
                    Back_TUser_Width => Buffered_TUser'Length,
                    Back_Num_Outst => 1,
                    Back_Clock_Id => Front_Clock_Id,
                    -- Front AXIS
                    Front_TData_Width => Front_TData'Length,
                    Front_TUser_Width => Front_TUser'Length,
                    Front_Num_Outst => 1,
                    Front_Clock_Id => Front_Clock_Id)
                port map (
                    -- Back Clock
                    Back_AClk => Front_AClk,
                    Back_AResetN => Front_AResetN,
                    -- Back AXIS
                    Back_TData => Buffered_TData,
                    Back_TStrb => Buffered_TStrb,
                    Back_TUser => Buffered_TUser,
                    Back_TLast => Buffered_TLast,
                    Back_TValid => Buffered_TValid,
                    Back_TReady => Buffered_TReady,
                    -- Front AXIS
                    Front_TData => Front_TData,
                    Front_TStrb => Front_TStrb,
                    Front_TUser => Front_TUser,
                    Front_TLast => Front_TLast,
                    Front_TValid => Front_TValid,
                    Front_TReady => Front_TReady);
            else Bypass: generate
                Front_TData <= Buffered_TData;
                Front_TStrb <= Buffered_TStrb;
                Front_TUser <= Buffered_TUser;
                Front_TLast <= Buffered_TLast;
                Front_TValid <= Buffered_TValid;
                Buffered_TReady <= Front_TReady;
            end generate;
        end generate;
    else Small: generate
    begin
        U0: if Up: Back_TData'Length < Buffered_TData'Length generate
            U0: entity work.Upsize
            generic map (
                -- Back Clock
                Back_TClk => Back_TClk,
                -- Front Clock
                Front_TClk => Front_TClk,
                -- Back AXIS
                Back_TData_Width => Back_TData'Length,
                Back_TUser_Width => Back_TUser'Length,
                Back_Num_Outst => Back_Num_Outst,
                Back_Clock_Id => Back_Clock_Id,
                -- Front AXIS
                Front_TData_Width => Buffered_TData'Length,
                Front_TUser_Width => Buffered_TUser'Length,
                Front_Num_Outst => Buffered_Num_Outst,
                Front_Clock_Id => Front_Clock_Id)
            port map (
                -- Back Clock
                Back_AClk => Back_AClk,
                Back_AResetN => Back_AResetN,
                -- Front Clock
                Front_AClk => Front_AClk,
                Front_AResetN => Front_AResetN,
                -- Back AXIS
                Back_TData => Back_TData,
                Back_TStrb => Back_TStrb,
                Back_TUser => Back_TUser,
                Back_TLast => Back_TLast,
                Back_TValid => Back_TValid,
                Back_TReady => Back_TReady,
                -- Front AXIS
                Front_TData => Buffered_TData,
                Front_TStrb => Buffered_TStrb,
                Front_TUser => Buffered_TUser,
                Front_TLast => Buffered_TLast,
                Front_TValid => Buffered_TValid,
                Front_TReady => Buffered_TReady);
        else CDC: generate
                signal Data: u_unsigned((Back_TData'Length + Back_TStrb'Length + Back_TUser'Length + 1 + 7) / 8 * 8 - 1 downto 0);
            begin
                U0: entity work.Async_FIFO(DPRAM)
                generic map (
                    Data_Length => Data'Length,
                    Capacity => Back_Num_Outst)
                port map (
                    -- Back Clock
                    Back_AClk => Back_AClk,
                    Back_AResetN => Back_AResetN,
                    -- Front Clock
                    Front_AClk => Front_AClk,
                    Front_AResetN => Front_AResetN,
                    -- Back AXIS
                    Back_TData => resize(Back_TData & Back_TStrb & Back_TUser & Back_TLast, Data'Length),
                    Back_TValid => Back_TValid,
                    Back_TReady => Back_TReady,
                    -- Front AXIS
                    Front_TData => Data,
                    Front_TValid => Buffered_TValid,
                    Front_TReady => Buffered_TReady);
                    
                (Buffered_TData, Buffered_TStrb, Buffered_TUser, Buffered_TLast)
                    <= resize(Data, Back_TData'Length + Back_TStrb'Length + Back_TUser'Length + 1);
        end generate;
        
        U1: if Down: Front_TData'Length < Buffered_TData'Length generate
            U0: entity work.Downsize
            generic map (
                -- Back Clock
                Back_TClk => Front_TClk,
                -- Back AXIS
                Back_TData_Width => Buffered_TData'Length,
                Back_TUser_Width => Buffered_TUser'Length,
                Back_Num_Outst => 1,
                Back_Clock_Id => Front_Clock_Id,
                -- Front AXIS
                Front_TData_Width => Front_TData'Length,
                Front_TUser_Width => Front_TUser'Length,
                Front_Num_Outst => 1,
                Front_Clock_Id => Front_Clock_Id)
            port map (
                -- Back Clock
                Back_AClk => Front_AClk,
                Back_AResetN => Front_AResetN,
                -- Back AXIS
                Back_TData => Buffered_TData,
                Back_TStrb => Buffered_TStrb,
                Back_TUser => Buffered_TUser,
                Back_TLast => Buffered_TLast,
                Back_TValid => Buffered_TValid,
                Back_TReady => Buffered_TReady,
                -- Front AXIS
                Front_TData => Front_TData,
                Front_TStrb => Front_TStrb,
                Front_TUser => Front_TUser,
                Front_TLast => Front_TLast,
                Front_TValid => Front_TValid,
                Front_TReady => Front_TReady);
        else Bypass: generate
            Front_TData <= Buffered_TData;
            Front_TStrb <= Buffered_TStrb;
            Front_TUser <= Buffered_TUser;
            Front_TLast <= Buffered_TLast;
            Front_TValid <= Buffered_TValid;
            Buffered_TReady <= Front_TReady;
        end generate;
    end generate;
else Sync: generate
    U0: if Big: (Buffered_Num_Outst > 1024 and  Buffered_TData'Length > 8) generate
        -- Upsized
        constant Upsized_Num_Outst: integer := (Back_Num_Outst + Up_Ratio - 1) / Up_Ratio;
        signal Upsized_TData: u_unsigned(Back_TData'Length * Up_Ratio - 1 downto 0);
        signal Upsized_TStrb: u_unsigned(Back_TData'Length * Up_Ratio / 8 - 1 downto 0);
        signal Upsized_TUser: u_unsigned(Back_TUser'Length * Up_Ratio - 1 downto 0);
        signal Upsized_TLast: std_logic := '1';
        signal Upsized_TValid: std_logic;
        signal Upsized_TReady: std_logic :=  '1';
        --
        signal Data1: u_unsigned((Upsized_TData'Length + Upsized_TStrb'Length + 7) / 8 * 8 - 1 downto 0);
        signal Data2: u_unsigned((Upsized_TUser'Length + 1 + 7) / 8 * 8 - 1 downto 0);
        signal Valid1: std_logic;
        signal Valid2: std_logic;
    begin
        U0: if Up: Back_TData'Length < Buffered_TData'Length generate
            U0: entity work.Upsize
            generic map (
                -- Back Clock
                Back_TClk => Back_TClk,
                -- Back AXIS
                Back_TData_Width => Back_TData'Length,
                Back_TUser_Width => Back_TUser'Length,
                Back_Num_Outst => 1,
                Back_Clock_Id => Back_Clock_Id,
                -- Front AXIS
                Front_TData_Width => Upsized_TData'Length,
                Front_TUser_Width => Upsized_TUser'Length,
                Front_Num_Outst => 1,
                Front_Clock_Id => Back_Clock_Id)
            port map (
                -- Back Clock
                Back_AClk => Back_AClk,
                Back_AResetN => Back_AResetN,
                -- Back AXIS
                Back_TData => Back_TData,
                Back_TStrb => Back_TStrb,
                Back_TUser => Back_TUser,
                Back_TLast => Back_TLast,
                Back_TValid => Back_TValid,
                Back_TReady => Back_TReady,
                -- Front AXIS
                Front_TData => Upsized_TData,
                Front_TStrb => Upsized_TStrb,
                Front_TUser => Upsized_TUser,
                Front_TLast => Upsized_TLast,
                Front_TValid => Upsized_TValid,
                Front_TReady => Upsized_TReady);
        else Bypass: generate
            Upsized_TData <= Back_TData;
            Upsized_TStrb <= Back_TStrb;
            Upsized_TUser <= Back_TUser;
            Upsized_TLast <= Back_TLast;
            Upsized_TValid <= Back_TValid;
            Back_TReady <= Upsized_TReady;
        end generate;
                               
        U1: entity work.Sync_FIFO(URAM)
        generic map (
            Data_Length => Data1'Length,
            Capacity => Buffered_Num_Outst)
        port map (
            -- Back Clock
            Back_AClk => Back_AClk,
            Back_AResetN => Back_AResetN,
            -- Back AXIS
            Back_TData => resize(Upsized_TData & Upsized_TStrb, Data1'Length),
            Back_TValid => Upsized_TValid,
            Back_TReady => Upsized_TReady,
            -- Front AXIS
            Front_TData => Data1,
            Front_TValid => Valid1,
            Front_TReady => Buffered_TReady and Valid2);
            
        U2: entity work.Sync_FIFO(URAM)
        generic map (
            Data_Length => Data2'Length,
            Capacity => Buffered_Num_Outst)
        port map (
            -- Back Clock
            Back_AClk => Back_AClk,
            Back_AResetN => Back_AResetN,
            -- Back AXIS
            Back_TData => resize(Upsized_TUser & Upsized_TLast, Data2'Length),
            Back_TValid => Upsized_TValid,
            Back_TReady => Upsized_TReady,
            -- Front AXIS
            Front_TData => Data2,
            Front_TValid => Valid2,
            Front_TReady => Buffered_TReady and Valid1);
                
        (Buffered_TData, Buffered_TStrb) <= resize(Data1, Buffered_TData'Length + Buffered_TStrb'Length);
        (Buffered_TUser, Buffered_TLast) <= resize(Data2, Buffered_TUser'Length + 1);
        Buffered_TValid <= Valid1 and Valid2;
        
        U3: if Down: Front_TData'Length < Buffered_TData'Length generate
            U0: entity work.Downsize
            generic map (
                -- Back Clock
                Back_TClk => Back_TClk,
                -- Back AXIS
                Back_TData_Width => Buffered_TData'Length,
                Back_TUser_Width => Buffered_TUser'Length,
                Back_Num_Outst => 1,
                Back_Clock_Id => Back_Clock_Id,
                -- Front AXIS
                Front_TData_Width => Front_TData'Length,
                Front_TUser_Width => Front_TUser'Length,
                Front_Num_Outst => 1,
                Front_Clock_Id => Back_Clock_Id)
            port map (
                -- Back Clock
                Back_AClk => Back_AClk,
                Back_AResetN => Back_AResetN,
                -- Back AXIS
                Back_TData => Buffered_TData,
                Back_TStrb => Buffered_TStrb,
                Back_TUser => Buffered_TUser,
                Back_TLast => Buffered_TLast,
                Back_TValid => Buffered_TValid,
                Back_TReady => Buffered_TReady,
                -- Front AXIS
                Front_TData => Front_TData,
                Front_TStrb => Front_TStrb,
                Front_TUser => Front_TUser,
                Front_TLast => Front_TLast,
                Front_TValid => Front_TValid,
                Front_TReady => Front_TReady);
        else Bypass: generate
            Front_TData <= Buffered_TData;
            Front_TStrb <= Buffered_TStrb;
            Front_TUser <= Buffered_TUser;
            Front_TLast <= Buffered_TLast;
            Front_TValid <= Buffered_TValid;
            Buffered_TReady <= Front_TReady;
        end generate;
    else Small: generate
    begin
        U0: if Up: Back_TData'Length < Buffered_TData'Length generate
            U0: entity work.Upsize
            generic map (
                -- Back Clock
                Back_TClk => Back_TClk,
                -- Back AXIS
                Back_TData_Width => Back_TData'Length,
                Back_TUser_Width => Back_TUser'Length,
                Back_Num_Outst => Back_Num_Outst,
                Back_Clock_Id => Back_Clock_Id,
                -- Front AXIS
                Front_TData_Width => Buffered_TData'Length,
                Front_TUser_Width => Buffered_TUser'Length,
                Front_Num_Outst => Buffered_Num_Outst,
                Front_Clock_Id => Back_Clock_Id)
            port map (
                -- Back Clock
                Back_AClk => Back_AClk,
                Back_AResetN => Back_AResetN,
                -- Back AXIS
                Back_TData => Back_TData,
                Back_TStrb => Back_TStrb,
                Back_TUser => Back_TUser,
                Back_TLast => Back_TLast,
                Back_TValid => Back_TValid,
                Back_TReady => Back_TReady,
                -- Front AXIS
                Front_TData => Buffered_TData,
                Front_TStrb => Buffered_TStrb,
                Front_TUser => Buffered_TUser,
                Front_TLast => Buffered_TLast,
                Front_TValid => Buffered_TValid,
                Front_TReady => Buffered_TReady);
        else FIFO: generate
            signal Data: u_unsigned((Back_TData'Length + Back_TStrb'Length + Back_TUser'Length + 1 + 7) / 8 * 8 - 1 downto 0);
        begin
            U0: entity work.Sync_FIFO(DPRAM)
            generic map (
                Data_Length => Data'Length,
                Capacity => Back_Num_Outst)
            port map (
                -- Back Clock
                Back_AClk => Back_AClk,
                Back_AResetN => Back_AResetN,
                -- Back AXIS
                Back_TData => resize(Back_TData & Back_TStrb & Back_TUser & Back_TLast, Data'Length),
                Back_TValid => Back_TValid,
                Back_TReady => Back_TReady,
                -- Front AXIS
                Front_TData => Data,
                Front_TValid => Buffered_TValid,
                Front_TReady => Buffered_TReady);
                
            (Buffered_TData, Buffered_TStrb, Buffered_TUser, Buffered_TLast)
                <= resize(Data, Back_TData'Length + Back_TStrb'Length + Back_TUser'Length + 1);
        end generate;
        
        U1: if Down: Front_TData'Length < Buffered_TData'Length generate
            U0: entity work.Downsize
            generic map (
                -- Back Clock
                Back_TClk => Back_TClk,
                -- Back AXIS
                Back_TData_Width => Buffered_TData'Length,
                Back_TUser_Width => Buffered_TUser'Length,
                Back_Num_Outst => 1,
                Back_Clock_Id => Back_Clock_Id,
                -- Front AXIS
                Front_TData_Width => Front_TData'Length,
                Front_TUser_Width => Front_TUser'Length,
                Front_Num_Outst => 1,
                Front_Clock_Id => Back_Clock_Id)
            port map (
                -- Back Clock
                Back_AClk => Back_AClk,
                Back_AResetN => Back_AResetN,
                -- Back AXIS
                Back_TData => Buffered_TData,
                Back_TStrb => Buffered_TStrb,
                Back_TUser => Buffered_TUser,
                Back_TLast => Buffered_TLast,
                Back_TValid => Buffered_TValid,
                Back_TReady => Buffered_TReady,
                -- Front AXIS
                Front_TData => Front_TData,
                Front_TStrb => Front_TStrb,
                Front_TUser => Front_TUser,
                Front_TLast => Front_TLast,
                Front_TValid => Front_TValid,
                Front_TReady => Front_TReady);
        else Bypass: generate
            Front_TData <= Buffered_TData;
            Front_TStrb <= Buffered_TStrb;
            Front_TUser <= Buffered_TUser;
            Front_TLast <= Buffered_TLast;
            Front_TValid <= Buffered_TValid;
            Buffered_TReady <= Front_TReady;
        end generate;
    end generate;
end generate;

end Behavior;