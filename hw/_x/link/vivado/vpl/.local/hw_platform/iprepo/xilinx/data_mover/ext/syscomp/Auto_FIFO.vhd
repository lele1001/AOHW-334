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
library work;
use Work.Utils.all;

-- TODO: CDC variant for Reg_Slice.

entity Auto_FIFO is 
generic (
    -- Back Clock
    Back_TClk: time := 5ns;
    -- Front Clock
    Front_TClk: time := 10ns;
    -- Back AXIS
    Back_Data_Length: integer range 1 * 8 to 512 * 8 := 8;
    Back_Num_Outst: integer := 32;
    Back_Clock_Id: string := "Back";
    -- Front AXIS
    Front_Data_Length: integer := Back_Data_Length;    
    Front_Num_Outst: integer := Back_Num_Outst;
    Front_User_Length: integer := CLog2(Front_Num_Outst + 1);
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
    Back_TLast: in std_ulogic := '1';
    Back_TValid: in std_ulogic;    
    Back_TReady: out std_ulogic := '1';
    -- Front AXIS
    Front_TData: out u_unsigned(Front_Data_Length - 1 downto 0) := (others => '0');
    Front_TUser: out u_unsigned(Front_User_Length - 1 downto 0) := (others => '0');    
    Front_TValid: out std_ulogic;
    Front_TReady: in std_ulogic := '1');
constant Capacity: integer := Back_Num_Outst;
begin
end Auto_FIFO;

architecture Behavior of Auto_FIFO is

begin

U0: if Sync: Back_Clock_Id = Front_Clock_Id generate
    U0: if Reg: Capacity = 1 generate
        U0: entity work.Sync_FIFO(Reg_Slice) 
        generic map (
            Data_Length => Front_TData'Length,
            User_Length => Front_TUser'Length)
        port map (
            -- Back Clock
            Back_AClk => Back_AClk,
            Back_AResetN => Back_AResetN,
            -- Back AXIS
            Back_TData => Back_TData,
            Back_TStrb => Back_TStrb,
            Back_TLast => Back_TLast,
            Back_TValid => Back_TValid,    
            Back_TReady => Back_TReady,
            -- Front AXIS
            Front_TData => Front_TData,
            Front_TUser => Front_TUser,    
            Front_TValid => Front_TValid,
            Front_TReady => Front_TReady);           
    elsif URAM: Capacity > 1024 and Back_TData'Length >= 32 generate
        U0: entity work.Sync_FIFO(URAM) 
        generic map (
            Data_Length => Back_TData'length,
            Capacity => Capacity,
            User_Length => Front_TUser'Length)
        port map (
            -- Back Clock
            Back_AClk => Back_AClk,
            Back_AResetN => Back_AResetN,
            -- Back AXIS
            Back_TData => Back_TData,
            Back_TStrb => Back_TStrb,
            Back_TLast => Back_TLast,
            Back_TValid => Back_TValid,    
            Back_TReady => Back_TReady,
            -- Front AXIS
            Front_TData => Front_TData,
            Front_TUser => Front_TUser,    
            Front_TValid => Front_TValid,
            Front_TReady => Front_TReady);
    else DPRAM: generate
        U0: entity work.Sync_FIFO(DPRAM) 
        generic map (
            Data_Length => Back_TData'length,
            Capacity => Capacity,
            User_Length => Front_TUser'Length)
        port map (
            -- Back Clock
            Back_AClk => Back_AClk,
            Back_AResetN => Back_AResetN,
            -- Back AXIS
            Back_TData => Back_TData,
            Back_TStrb => Back_TStrb,
            Back_TLast => Back_TLast,
            Back_TValid => Back_TValid,    
            Back_TReady => Back_TReady,
            -- Front AXIS
            Front_TData => Front_TData,
            Front_TUser => Front_TUser,    
            Front_TValid => Front_TValid,
            Front_TReady => Front_TReady);        
    end generate;
else Async: generate
    U0: entity work.Async_FIFO(DPRAM) 
    generic map (
        Data_Length => Back_TData'length,
        Capacity => Capacity,
        User_Length => Front_TUser'Length)
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
        Back_TLast => Back_TLast,
        Back_TValid => Back_TValid,    
        Back_TReady => Back_TReady,
        -- Front AXIS
        Front_TData => Front_TData,
        Front_TUser => Front_TUser,
        Front_TValid => Front_TValid,
        Front_TReady => Front_TReady);    
end generate;

end Behavior;
