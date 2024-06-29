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

entity AXI_Demux is
generic (
    -- Input AXI
    Input_Id_Value: unsigned(7 downto 0) := x"00";
    Input_Addr_Length: integer := 16;
    Input_Data_Length: integer := 32;
    Input_Num_Outst: integer := 1;
    -- Output0 AXI
    Output0_Id_Value: unsigned(7 downto 0) := x"00";
    Output0_Addr_Length: integer := 16;
    Output0_Data_Length: integer := 32;
    Output0_Num_Outst: integer := 1;
    -- Output1 AXI
    Output1_Id_Value: unsigned(7 downto 0) := x"00";
    Output1_Addr_Length: integer := 16;
    Output1_Data_Length: integer := 32;
    Output1_Num_Outst: integer := 1);
port (
    -- Input AXI
    Input_AWId: in u_unsigned(7 downto 0) := Input_Id_Value;
    Input_AWAddr: in u_unsigned(Input_Addr_Length - 1 downto 0) := (others => '0');
    Input_AWProt: in u_unsigned(2 downto 0) := "000";
    Input_AWLen: in u_unsigned(7 downto 0) := x"00";
    Input_AWValid: in std_ulogic := '0';
    Input_AWReady: out std_ulogic := '1';
    Input_WData: in u_unsigned(Input_Data_Length - 1 downto 0) := (others => '0');
    Input_WStrb: in u_unsigned(Input_Data_Length / 8 - 1 downto 0) := (others => '1');
    Input_WLast: in std_ulogic := '1';
    Input_WValid: in std_ulogic := '0';
    Input_WReady: out std_ulogic := '1';
    Input_BId: in u_unsigned(7 downto 0) := Input_Id_Value;
    Input_BResp: out u_unsigned(1 downto 0) := "10";
    Input_BValid: out std_ulogic := '0';
    Input_BReady: in std_ulogic := '1';
    Input_ARId: in u_unsigned(7 downto 0) := Input_Id_Value;
    Input_ARAddr: in u_unsigned(Input_Addr_Length - 1 downto 0) := (others => '0');
    Input_ARProt: in u_unsigned(2 downto 0) := "000";
    Input_ARLen: in u_unsigned(7 downto 0) := x"00";
    Input_ARValid: in std_ulogic := '0';
    Input_ARReady: out std_ulogic := '1';
    Input_RId: in u_unsigned(7 downto 0) := Input_Id_Value;
    Input_RData: out u_unsigned(Input_Data_Length - 1 downto 0) := (others => '0');
    Input_RLast: out std_ulogic := '1';
    Input_RResp: out u_unsigned(1 downto 0) := "10";
    Input_RValid: out std_ulogic := '0';
    Input_RReady: in std_ulogic := '1';
    -- Output0 AXI
    Output0_AWId: out u_unsigned(7 downto 0) := Output0_Id_Value;
    Output0_AWAddr: out u_unsigned(Output0_Addr_Length - 1 downto 0) := (others => '0');
    Output0_AWProt: out u_unsigned(2 downto 0) := "000";
    Output0_AWLen: out u_unsigned(7 downto 0) := x"00";
    Output0_AWValid: out std_ulogic := '0';
    Output0_AWReady: in std_ulogic := '1';
    Output0_WData: out u_unsigned(Output0_Data_Length - 1 downto 0) := (others => '0');
    Output0_WStrb: out u_unsigned(Output0_Data_Length / 8 - 1 downto 0) := (others => '1');
    Output0_WLast: out std_ulogic := '1';
    Output0_WValid: out std_ulogic := '0';
    Output0_WReady: in std_ulogic := '1';
    Output0_BId: out u_unsigned(7 downto 0) := Output0_Id_Value;
    Output0_BResp: in u_unsigned(1 downto 0) := "10";
    Output0_BValid: in std_ulogic := '0';
    Output0_BReady: out std_ulogic := '1';
    Output0_ARId: out u_unsigned(7 downto 0) := Output0_Id_Value;
    Output0_ARAddr: out u_unsigned(Output0_Addr_Length - 1 downto 0) := (others => '0');
    Output0_ARProt: out u_unsigned(2 downto 0) := "000";
    Output0_ARLen: out u_unsigned(7 downto 0) := x"00";
    Output0_ARValid: out std_ulogic := '0';
    Output0_ARReady: in std_ulogic := '1';
    Output0_RId: out u_unsigned(7 downto 0) := Output0_Id_Value;
    Output0_RData: in u_unsigned(Output0_Data_Length - 1 downto 0) := (others => '0');
    Output0_RLast: in std_ulogic := '1';
    Output0_RResp: in u_unsigned(1 downto 0) := "10";
    Output0_RValid: in std_ulogic := '0';
    Output0_RReady: out std_ulogic := '1';
    -- Output1 AXI
    Output1_AWId: out u_unsigned(7 downto 0) := Output1_Id_Value;
    Output1_AWAddr: out u_unsigned(Output1_Addr_Length - 1 downto 0) := (others => '0');
    Output1_AWProt: out u_unsigned(2 downto 0) := "000";
    Output1_AWLen: out u_unsigned(7 downto 0) := x"00";
    Output1_AWValid: out std_ulogic := '0';
    Output1_AWReady: in std_ulogic := '1';
    Output1_WData: out u_unsigned(Output1_Data_Length - 1 downto 0) := (others => '0');
    Output1_WStrb: out u_unsigned(Output1_Data_Length / 8 - 1 downto 0) := (others => '1');
    Output1_WLast: out std_ulogic := '1';
    Output1_WValid: out std_ulogic := '0';
    Output1_WReady: in std_ulogic := '1';
    Output1_BId: out u_unsigned(7 downto 0) := Output1_Id_Value;
    Output1_BResp: in u_unsigned(1 downto 0) := "10";
    Output1_BValid: in std_ulogic := '0';
    Output1_BReady: out std_ulogic := '1';
    Output1_ARId: out u_unsigned(7 downto 0) := Output1_Id_Value;
    Output1_ARAddr: out u_unsigned(Output1_Addr_Length - 1 downto 0) := (others => '0');
    Output1_ARProt: out u_unsigned(2 downto 0) := "000";
    Output1_ARLen: out u_unsigned(7 downto 0) := x"00";
    Output1_ARValid: out std_ulogic := '0';
    Output1_ARReady: in std_ulogic := '1';
    Output1_RId: out u_unsigned(7 downto 0) := Output1_Id_Value;
    Output1_RData: in u_unsigned(Output1_Data_Length - 1 downto 0) := (others => '0');
    Output1_RLast: in std_ulogic := '1';
    Output1_RResp: in u_unsigned(1 downto 0) := "10";
    Output1_RValid: in std_ulogic := '0';
    Output1_RReady: out std_ulogic := '1');
begin
end entity AXI_Demux;


architecture Behavior of AXI_Demux is

begin

Output0_AWAddr <= Input_AWAddr;
Output0_AWProt <= Input_AWProt;
Output0_AWLen <= Input_AWLen;
Output0_AWValid <= Input_AWValid and Output1_AWReady;

Output1_AWAddr <= Input_AWAddr;
Output1_AWProt <= Input_AWProt;
Output1_AWLen <= Input_AWLen;
Output1_AWValid <= Input_AWValid and Output0_AWReady;

Input_AWReady <= Output0_AWReady and Output1_AWReady;

Output0_WData <= Input_WData;
Output0_WStrb <= Input_WStrb;
Output0_WLast <= Input_WLast;
Output0_WValid <= Input_WValid and Output1_WReady;

Output1_WData <= Input_WData;
Output1_WStrb <= Input_WStrb;
Output1_WLast <= Input_WLast;
Output1_WValid <= Input_WValid and Output0_WReady;

Input_WReady <= Output0_WReady and Output1_WReady;

Input_BResp <= Output0_BResp and Output1_BResp;
Input_BValid <= Output0_BValid and Output1_BValid;

Output0_BReady <= Input_BReady and Output1_BValid;
Output1_BReady <= Input_BReady and Output0_BValid;

Output0_ARAddr <= Input_ARAddr;
Output0_ARProt <= Input_ARProt;
Output0_ARLen <= Input_ARLen;
Output0_ARValid <= Input_ARValid and Output1_ARReady;

Output1_ARAddr <= Input_ARAddr;
Output1_ARProt <= Input_ARProt;
Output1_ARLen <= Input_ARLen;
Output1_ARValid <= Input_ARValid and Output0_ARReady;

Input_ARReady <= Output0_ARReady and Output0_ARReady;

Input_RData <= Output0_RData or Output1_RData;
Input_RLast <= Output0_RLast or Output1_RLast;
Input_RResp <= Output0_RResp and Output1_RResp;
Input_RValid <= Output0_RValid and Output1_RValid;

Output0_RReady <= Input_RReady and Output1_RValid;
Output1_RReady <= Input_RReady and Output0_RValid;

end Behavior;
