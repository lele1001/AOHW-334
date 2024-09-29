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

package Utils is

-- null range array constants 
constant NAU : UNSIGNED (-1 downto 0) := (others => '0');
constant NAS : SIGNED (-1 downto 0) := (others => '0');

function Max(a, b: integer) return integer;
function Min(a, b: integer) return integer;
function GCD(a, b: integer) return integer;
function LCM(a, b: integer) return integer;
function CLog2(x: positive) return positive;
function Byte_To_Bit_Mask(Byte_Mask: unsigned) return unsigned;
function Replicate(X: std_logic; Length: natural) return unsigned;
function Bits_To_Bytes(Bits: unsigned) return unsigned;
function Size_Of(X: unsigned) return integer;

end Utils;

package body Utils is

function Max(a, b: integer) return integer is
begin
    if a > b then 
        return a;
    else 
        return b;
    end if;
end;

function Min(a, b: integer) return integer is
begin
    if a < b then 
        return a;
    else return 
        b;
    end if;
end;

function GCD(a, b: integer) return integer is
    variable x, y, r, t: integer;
begin
    x := Min(a, b);
    y := Max(a, b);
    while (x > 0) loop
        r := y mod x;
        t := x;
        x := Min(r, t);
        y := Max(r, t);
    end loop;
    return y;
end;

function LCM(a, b: integer) return integer is
begin
    return abs(a * b) / GCD(a, b);
end;

function CLog2(x: positive) return positive is
    variable y: positive;
begin
    y := 1;
    if x > 1 then
        y := positive(ceil(log2(real(x))));
    end if;
    return y;
end function;

function Zeros(Length: positive) return unsigned is
    variable y: unsigned(Length - 1 downto 0) := (others => '0');
begin
    return y;
end function;

function Ones(Length: positive) return unsigned is
    variable y: unsigned(Length - 1 downto 0) := (others => '1');
begin
    return y;
end function;

function Byte_To_Bit_Mask(Byte_Mask: unsigned) return unsigned is
    variable Bit_Mask: unsigned(Byte_Mask'length * 8 - 1 downto 0) := (others => '0');
begin
    Bit_Mask := (others => '0');
    for i in 0 to Byte_Mask'length - 1 loop 
        Bit_Mask((i + 1) * 8 - 1 downto i * 8) := (others => Byte_Mask(i));
    end loop;        
    return Bit_Mask;
end function;

function Replicate(X: std_logic; Length: positive) return unsigned is
    variable Y: unsigned(Length - 1 downto 0);
begin
    Y := (others => X);
    return Y;
end function Replicate;

function Bits_To_Bytes(Bits: unsigned) return unsigned is
    variable Bytes: unsigned(Bits'length * 8 - 1 downto 0);
begin
    for i in 0 to Bits'Length - 1 loop
        Bytes(i * 8 + 7 downto i * 8) := resize("" & Bits(i), 8);
    end loop;
    return Bytes;
end function Bits_To_Bytes;

function Size_Of(X: unsigned) return integer is
begin
    return (X'Length + 7) / 8;
end function Size_Of;

end package body;
