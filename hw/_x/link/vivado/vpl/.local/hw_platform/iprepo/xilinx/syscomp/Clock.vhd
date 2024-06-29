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
library Std;

use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;
use IEEE.math_real.all;
use Std.Env.All;
use Work.Utils;

package Clock is

type Parameters is record
    Period: time;
    Domain: string;
end record;

type Forward_Signals is record
    AClk, AResetN: std_ulogic;
end record;

function Make_Parameters(
    constant Period: time := 10ns; 
    constant Domain: string := "") return Parameters;

function Make_Forward_Signals(
    constant AClk, AResetN: std_ulogic := 'U') return Forward_Signals;

procedure Generator(
    signal AClk: out std_ulogic; 
    constant Period: time);

procedure Reset_Synchronizer(
    signal System_AResetN: in std_ulogic;
    signal AClk: in std_ulogic; 
    signal AResetN: out std_ulogic; 
    constant Delay: time := 100 ns);

end Clock;

package body Clock is

function Make_Parameters(
    constant Period: time := 10ns; 
    constant Domain: string := "") 
return Parameters is
    constant Pm: Parameters := (Period, Domain);
begin
    return Pm;
end function;

function Make_Forward_Signals(
    constant AClk, AResetN: std_ulogic := 'U') 
return Forward_Signals is
    constant Fw: Forward_Signals := (AClk, AResetN);
begin
    return Fw;
end function;

procedure Generator(
    signal AClk: out std_ulogic; 
    constant Period: time) is
begin
    while true loop
        AClk <= '0';
        wait for Period / 2;
        AClk <= '1';
        wait for Period / 2;
    end loop;
end procedure;

procedure Reset_Synchronizer(
    signal System_AResetN: in std_ulogic;
    signal AClk: in std_ulogic; 
    signal AResetN: out std_ulogic; 
    constant Delay: time := 100 ns) is
begin
    if System_AResetN = '0' then
        AResetN <= '0';
    elsif System_AResetN = '1' then
        wait for Delay;
        wait until rising_edge(AClk);
        AResetN <= '1';
    end if;
end procedure;

end package body;
