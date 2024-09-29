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
library std;

use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;
use IEEE.math_real.all;
use std.env;
use work.Utils.all;

package AXIL is

type Parameters is record
    Base_Addr: unsigned;    
    Data_Size: integer range 1 to 512;
    Domain: string;
end record;

type Forward_Signals is record
    AWAddr: u_unsigned; 
    AWProt: u_unsigned(2 downto 0);
    AWValid: std_ulogic;
    WData: u_unsigned;
    WStrb: u_unsigned;
    WValid: std_ulogic;
    BReady: std_ulogic;
    ARAddr: u_unsigned;
    ARProt: u_unsigned(2 downto 0);
    ARValid: std_ulogic;
    RReady: std_ulogic;
end record;

type Backward_Signals is record
    AWReady: std_ulogic;
    WReady: std_ulogic;
    BResp: u_unsigned(1 downto 0);
    BValid: std_ulogic;
    ARReady: std_ulogic;
    RData: u_unsigned;
    RResp: u_unsigned(1 downto 0);
    RValid: std_ulogic;
end record;

function Make_Parameters(
    constant Base_Addr: unsigned := 10x"0";
    constant Data_Size: integer range 1 to 512 := 4;
    constant Domain: string)
    return Parameters;
        
end AXIL;

package body AXIL is

function Make_Parameters(
    constant Base_Addr: unsigned := 10x"0";
    constant Data_Size: integer range 1 to 512 := 4;
    constant Domain: string)
    return Parameters 
is
    constant Prm: Parameters := (Base_Addr, Data_Size, Domain);
begin
    return Prm;
end function;

end package body;
