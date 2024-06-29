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

entity Delta_Semaphore is 
generic (
    -- Clock
    Clock_TClk: time := 5ns;
    -- Given AXIS
    Given_Data_Length: integer := 8;
    Given_Burst_Length: integer  := 1;
    Given_Num_Outst: integer := 1;
    Given_Clock_Id: string := "Clock";
    -- Requested AXIS
    Requested_Data_Length: integer := 8;
    Requested_Burst_Length: integer  := 1;
    Requested_Num_Outst: integer := 1;
    Requested_Clock_Id: string := "Clock";
    -- Taken AXIS
    Taken_Data_Length: integer := 8;
    Taken_Burst_Length: integer  := 1;
    Taken_Num_Outst: integer := 1;
    Taken_Clock_Id: string := "Clock");
port (
    Clock_AClk: in std_ulogic;
    Clock_AResetN: in std_ulogic;
    -- Given stream
    Given_TData: in u_unsigned(Given_Data_Length - 1 downto 0) := (others => '0');
    Given_TStrb: in u_unsigned(Given_Data_Length / 8 - 1 downto 0) := (others => '1');
    Given_TLast: in std_ulogic := '1';
    Given_TValid: in std_ulogic;
    Given_TReady: out std_ulogic := '1';
    -- Requested stream
    Requested_TData: in u_unsigned(Requested_Data_Length - 1 downto 0) := (others => '0');
    Requested_TStrb: in u_unsigned(Requested_Data_Length / 8 - 1 downto 0) := (others => '1');
    Requested_TLast: in std_ulogic := '1';
    Requested_TValid: in std_ulogic;
    Requested_TReady: out std_ulogic := '1';
    -- Taken stream
    Taken_TData: out u_unsigned(Taken_Data_Length - 1 downto 0) := (others => '0');
    Taken_TStrb: out u_unsigned(Taken_Data_Length / 8 - 1 downto 0) := (others => '1');
    Taken_TLast: out std_ulogic := '1';
    Taken_TValid: out std_ulogic;
    Taken_TReady: in std_ulogic := '1'); 
end entity Delta_Semaphore;

architecture Behavior of Delta_Semaphore is

signal Counter: u_unsigned(Given_Data_Length - 1 downto 0);
signal Not_Empty: std_ulogic;

begin

Counting: process (all)
    variable Given_Term: u_unsigned(Given_Data_Length - 1 downto 0);
    variable Requested_Term: u_unsigned(Requested_Data_Length - 1 downto 0);
begin
    Not_Empty <= Requested_TValid and (Counter ?>= Requested_TData);

    if Clock_AResetN /= '1' then
        Counter <= (others => '0');
    elsif rising_edge(Clock_AClk) then
        Given_Term := (others => '0');
        if Given_TValid = '1' then
            Given_Term := Given_TData;
        end if;
        Requested_Term := (others => '0');
        if (Not_Empty and Taken_TReady) = '1' then
            Requested_Term := Requested_TData;
        end if;
        Counter <= Counter + (Given_Term - Requested_Term);
    end if;
    
    Given_TReady <= '1'; -- assuming it can never get full due to the credits
    Requested_TReady <= Not_Empty and Taken_TReady;  
    Taken_TValid <= Not_Empty /*and Taken_TReady*/;
    Taken_TData <= Requested_TData;
end process Counting;

end architecture Behavior;
