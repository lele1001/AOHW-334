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

entity Downsize is
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
    Front_AClk: in std_ulogic := 'U';
    Front_AResetN: in std_ulogic := 'U';
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
constant Down_Ratio: integer := Back_TData_Width / Front_TData_Width;    
constant Capacity: integer := Front_Num_Outst;
begin
    assert Down_Ratio > 1 report "Downsize ratio must be greater than 1" severity Error;
end Downsize;

architecture Behavior of Downsize is

signal Counter: u_unsigned(CLog2(Down_Ratio) - 1 downto 0);
signal Is_Last: std_ulogic := '1';
-- Downsized
signal Downsized_TData: u_unsigned(Front_TData'Length - 1 downto 0);
signal Downsized_TStrb: u_unsigned(Front_TStrb'Length - 1 downto 0);
signal Downsized_TUser: u_unsigned(Front_TUser'Length - 1 downto 0);        
signal Downsized_TLast: std_logic := '1';
signal Downsized_TValid: std_logic;
signal Downsized_TReady: std_logic :=  '1';
--
signal FIFO_Data: u_unsigned((Downsized_TData'Length + Downsized_TStrb'Length + Downsized_TUser'Length + 1 + 7) / 8 * 8 - 1 downto 0);

begin

U0: process (all)
begin
    Is_Last <= '0';
    if Counter = Down_Ratio - 1 then
        Is_Last <= '1';
    end if;

    if (not Back_AResetN) = '1' then
        Counter <= to_unsigned(0, Counter'Length);
    elsif rising_edge(Back_AClk) then
        if (Back_TValid and Downsized_TReady) = '1' then
            Counter <= Counter + '1';
            if Is_Last = '1' then
                Counter <= to_unsigned(0, Counter'Length); 
            end if;    
        end if;
    end if;
    
    Back_TReady <= /*Back_TValid and*/ Downsized_TReady and Is_Last;      

    Downsized_TData <= Back_TData((0 + 1) * Downsized_TData'Length - 1 downto 0 * Downsized_TData'Length);
    Downsized_TStrb <= Back_TStrb((0 + 1) * Downsized_TStrb'Length - 1 downto 0 * Downsized_TStrb'Length);
    Downsized_TUser <= Back_TUser((0 + 1) * Downsized_TUser'Length - 1 downto 0 * Downsized_TUser'Length);
    for i in 0 to Down_Ratio - 1 loop
        if Counter = i then
            Downsized_TData <= Back_TData((i + 1) * Downsized_TData'Length - 1 downto i * Downsized_TData'Length);
            Downsized_TStrb <= Back_TStrb((i + 1) * Downsized_TStrb'Length - 1 downto i * Downsized_TStrb'Length);
            Downsized_TUser <= Back_TUser((i + 1) * Downsized_TUser'Length - 1 downto i * Downsized_TUser'Length);
        end if;
    end loop;            
    Downsized_TLast <= Back_TLast and Is_Last;
    Downsized_TValid <= Back_TValid /*and Downsized_TReady*/;      
end process;

U1: entity work.Auto_FIFO 
generic map (
    -- Back Clock
    Back_TClk => Back_TClk,
    -- Front Clock
    Front_TClk => Front_TClk,
    -- Back AXIS
    Back_Data_Length => FIFO_Data'Length,
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
    Back_TData => resize(Downsized_TData & Downsized_TStrb & Downsized_TUser & Downsized_TLast, FIFO_Data'Length),
    Back_TValid => Downsized_TValid,
    Back_TReady => Downsized_TReady,
    -- Front AXIS
    Front_TData => FIFO_Data,
    Front_TValid => Front_TValid,
    Front_TReady => Front_TReady);

(Front_TData, Front_TStrb, Front_TUser, Front_TLast) <= resize(FIFO_Data, Front_TData'Length + Front_TStrb'Length + Front_TUser'Length + 1);

end Behavior;
