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
library Work;
use Work.Utils.all;

entity Sync_Semaphore is 
generic (
    -- Give AXIS
    Give_TData_Length: integer range 1 * 8 to 512 * 8 := 8;
    Give_Num_Outst: integer := 32;
    -- Take AXIS
    Take_TData_Length: integer range 1 * 8 to 512 * 8 := Give_TData_Length;
    Take_Num_Outst: integer := Give_Num_Outst;
    Take_TUser_Length: integer := CLog2(Take_Num_Outst + 1);
    -- Others
    Initial_Value: integer := 0);
port (
    -- Give Clock
    Give_AClk: in std_ulogic;
    Give_AResetN: in std_ulogic;
    -- Give AXIS 
    Give_TData: in u_unsigned(Give_TData_Length - 1 downto 0) := (others => '0');
    Give_TValid: in std_ulogic;    
    -- Take AXIS 
    Take_TData: out u_unsigned(Take_TData_Length - 1 downto 0);
    Take_TUser: out u_unsigned(Take_TUser_Length - 1 downto 0);
    Take_TValid: out std_ulogic;    
    Take_TReady: in std_ulogic);
constant Capacity: integer := Max(Give_Num_Outst, Take_Num_Outst);
begin
    assert Give_TData_Length mod 8 = 0 report "TData must be byte aligned" severity Error;
    assert Take_TData_Length mod 8 = 0 report "TData must be byte aligned" severity Error;
end Sync_Semaphore;

architecture Behavior of Sync_Semaphore is

signal Counter: u_signed(CLog2(Capacity + 1) downto 0);
constant Give_Value: signed := to_signed(Give_TData'Length / 8, Counter'Length);
constant Take_Value: signed := to_signed(Take_TData'Length / 8, Counter'Length);

begin

Main: process (all)
begin
    if (not Give_AResetN) = '1' then
        Counter <= to_signed(Initial_Value, Counter'Length);
        Take_TValid <= '0';
        if Initial_Value >= Take_Value then
            Take_TValid <= '1';
        end if;
    elsif rising_edge(Give_AClk) then
        --  Take only
        if (Take_TReady) = '1' and Counter >= Take_Value then 
            Counter <= Counter + (0 - Take_Value);
            Take_TValid <= '0';
            if Counter >= 2 * Take_Value then
                Take_TValid <= '1';
            end if;
        end if;
        -- Give only
        if (Give_TValid) = '1' then
            Counter <= Counter + (Give_Value - 0);
            Take_TValid <= '0';
            if Counter >= Take_Value - Give_Value then
                Take_TValid <= '1';
            end if;
        end if;
        -- Give and Take
        if  (Give_TValid and Take_TReady) = '1' and Counter >= 2 * Take_Value - Give_Value then
            Counter <= Counter + (Give_Value - Take_Value);
            Take_TValid <= '1';
        end if;
    end if;
    --
    Take_TData <= resize("0", Take_TData);    
    Take_TUser <= resize(unsigned(Counter), Take_TUser);
end process Main;        

end Behavior;