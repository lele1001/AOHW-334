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
use std.env.all;
use work.Utils.all;

package AXI_Stream is

type Parameters is record
    NOutst: integer;
    Domain: string;
end record;

function Make_Parameters(
    NOutst: integer := 1; 
    Domain: string := "Clock") 
return Parameters;

type Forward_Signals is record
    TId: u_unsigned;
    TDest: u_unsigned;
    TData: u_unsigned;
    TStrb: u_unsigned;
    TKeep: u_unsigned;
    TUser: u_unsigned;
    TLast: std_ulogic;
    TValid: std_ulogic;
end record;

function Make_Forward_Signals(
    TId, TDest, TData, TStrb, TKeep, TUser: u_unsigned := "0"; 
    TLast, TValid: std_ulogic := 'U') 
return Forward_Signals;

type Backward_Signals is record
    TReady: std_ulogic;
end record;

function Make_Backward_Signals(
    TReady: std_ulogic := 'U') 
return Backward_Signals;

type Test_Requests is (Idle, Run);
type Test_Responses is (Busy, Done);

procedure Producer(
    signal Test_Request: in Test_Requests;
    signal Test_Response: out Test_Responses;
    constant Clock_Domain: string;
    signal Clock_AClk: in std_ulogic;
    signal Clock_AResetN: in std_ulogic;
    constant Data_Pm: AXI_Stream.Parameters;
    signal Data_Fw: out AXI_Stream.Forward_Signals;
    signal Data_Bw: in AXI_Stream.Backward_Signals);

procedure Consumer(
    signal Test_Request: in Test_Requests;
    signal Test_Response: out Test_Responses;
    constant Clock_Domain: string;
    signal Clock_AClk: in std_ulogic;
    signal Clock_AResetN: in std_ulogic;
    constant Data_Pm: AXI_Stream.Parameters;
    signal Data_Fw: in AXI_Stream.Forward_Signals;
    signal Data_Bw: out AXI_Stream.Backward_Signals);
        
end AXI_Stream;

package body AXI_Stream is

function Make_Parameters(
    NOutst: integer := 1; 
    Domain: string := "Clock") 
return Parameters is
begin
    return (NOutst, Domain);
end function;

function Make_Forward_Signals(
    TId, TDest, TData, TStrb, TKeep, TUser: u_unsigned := "0"; 
    TLast, TValid: std_ulogic := 'U') 
return Forward_Signals is
    constant Value: Forward_Signals(TId(TId'Range), TDest(TDest'Range), TData(TData'Range), TStrb(TStrb'Range), TKeep(TKeep'Range),
        TUser(TUser'Range)) := (TId => TId, TDest => TDest, TData => TData, TStrb => TStrb, TKeep => TKeep,
            TUser => TUser, TLast => TLast, TValid => TValid);
begin
    return Value;
end function;

function Make_Backward_Signals(
    TReady: std_ulogic := 'U') return Backward_Signals is
begin
    return (TReady => TReady);
end function;

--procedure Validate_Parameters(
--    Pm: Parameters; 
--    Fw: Forward_Signals; 
--    Bw: Backward_Signals; 
--    Clk_Pm: Clock.Parameters) is
--begin
--    Utils.Assert_Decisively(Fw.TData'Length mod 8 = 0, "Wrong TData'Length");
--    Utils.Assert_Decisively(Fw.TStrb'Length = Fw.TData'Length / 8 or Fw.TStrb'Length = 0, "Wrong TStrb'Length");
--    Utils.Assert_Decisively(Fw.TKeep'Length = Fw.TData'Length / 8 or Fw.TKeep'Length = 0, "Wrong TKeep'Length");
--    Utils.Assert_Decisively(Pm.Domain = Clk_Pm.Domain, "Wrong Domain");
--end procedure Validate_Parameters;

--function "=" (L,R: Test_Responses) return BOOLEAN is
--begin
    
--end function;

procedure Producer(
    signal Test_Request: in Test_Requests;
    signal Test_Response: out Test_Responses;
    constant Clock_Domain: string;
    signal Clock_AClk: in std_ulogic;
    signal Clock_AResetN: in std_ulogic;
    constant Data_Pm: AXI_Stream.Parameters;
    signal Data_Fw: out AXI_Stream.Forward_Signals;
    signal Data_Bw: in AXI_Stream.Backward_Signals) is
begin
    if Clock_AResetN = '0' then
        Data_Fw.TValid <= '0';
    else 
        Test_Response <= Busy;
        case Test_Request is
        when Run =>
--            for i in 0 to 7 loop
--                Data_Fw.TValid <= '1';
--                wait until rising_edge(Clock_AClk);
--                while Data_Bw.TReady /= '1' loop
--                    wait until rising_edge(Clock_AClk);
--                end loop;
--            end loop;         
            Data_Fw.TValid <= '0';
            Test_Response <= Done;
        when others =>
            Data_Fw.TValid <= '0';
            Test_Response <= Done;
        end case;
    end if;
end procedure;

procedure Consumer(
    signal Test_Request: in Test_Requests;
    signal Test_Response: out Test_Responses;
    constant Clock_Domain: string;
    signal Clock_AClk: in std_ulogic;
    signal Clock_AResetN: in std_ulogic;
    constant Data_Pm: AXI_Stream.Parameters;
    signal Data_Fw: in AXI_Stream.Forward_Signals;
    signal Data_Bw: out AXI_Stream.Backward_Signals) is
begin
    if Clock_AResetN = '0' then
        Data_Bw.TReady <= '0';
    else 
        Test_Response <= Busy;
        case Test_Request is
        when Run =>
            for i in 0 to 7 loop
                Data_Bw.TReady <= '1';
                wait until rising_edge(Clock_AClk);
                while Data_Fw.TValid /= '1' loop
                    wait until rising_edge(Clock_AClk);
                end loop;
            end loop;
            Data_Bw.TReady <= '0';
            Test_Response <= Done;
        when others =>
            Data_Bw.TReady <= '0';
            Test_Response <= Done;
        end case;
    end if;
end procedure;

end package body;
