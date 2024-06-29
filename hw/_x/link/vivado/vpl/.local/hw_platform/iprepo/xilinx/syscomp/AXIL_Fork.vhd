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

entity AXIL_Fork is
generic (
    -- Clock
    Clock_Domain: string;
    Clock_Period: time;
    -- Input AXI
    Input_Addr_Length: integer := 16;
    Input_Data_Length: integer := 32;
    Input_Base_Addr: unsigned(Input_Addr_Length - 1 downto 0) := (others => '0');
    Input_Num_Outst: integer := 1;
    Input_Domain: string;
    -- Output0 AXI
    Output0_Addr_Length: integer := 16;
    Output0_Data_Length: integer := 32;
    Output0_Base_Addr: unsigned(Output0_Addr_Length - 1 downto 0) := (others => '0');    
    Output0_Num_Outst: integer := 1;
    Output0_Domain: string;
    -- Output1 AXI
    Output1_Addr_Length: integer := 16;
    Output1_Data_Length: integer := 32;
    Output1_Base_Addr: unsigned(Output1_Addr_Length - 1 downto 0) := (others => '0');
    Output1_Num_Outst: integer := 1;
    Output1_Domain: string);
port (
    -- Clock
    Clock_AClk: in std_ulogic;
    Clock_AResetN: in std_ulogic;    
    -- Input AXI
    Input_AWAddr: in u_unsigned(Input_Addr_Length - 1 downto 0) := (others => '0');
    Input_AWProt: in u_unsigned(2 downto 0) := "000";
    Input_AWValid: in std_ulogic := '0';
    Input_AWReady: out std_ulogic := '1';
    Input_WData: in u_unsigned(Input_Data_Length - 1 downto 0) := (others => '0');
    Input_WStrb: in u_unsigned(Input_Data_Length / 8 - 1 downto 0) := (others => '1');
    Input_WValid: in std_ulogic := '0';
    Input_WReady: out std_ulogic := '1';
    Input_BResp: out u_unsigned(1 downto 0) := "10";
    Input_BValid: out std_ulogic := '0';
    Input_BReady: in std_ulogic := '1';
    Input_ARAddr: in u_unsigned(Input_Addr_Length - 1 downto 0) := (others => '0');
    Input_ARProt: in u_unsigned(2 downto 0) := "000";
    Input_ARValid: in std_ulogic := '0';
    Input_ARReady: out std_ulogic := '1';
    Input_RData: out u_unsigned(Input_Data_Length - 1 downto 0) := (others => '0');
    Input_RResp: out u_unsigned(1 downto 0) := "10";
    Input_RValid: out std_ulogic := '0';
    Input_RReady: in std_ulogic := '1';
    -- Output0 AXI
    Output0_AWAddr: out u_unsigned(Output0_Addr_Length - 1 downto 0) := (others => '0');
    Output0_AWProt: out u_unsigned(2 downto 0) := "000";
    Output0_AWValid: out std_ulogic := '0';
    Output0_AWReady: in std_ulogic := '1';
    Output0_WData: out u_unsigned(Output0_Data_Length - 1 downto 0) := (others => '0');
    Output0_WStrb: out u_unsigned(Output0_Data_Length / 8 - 1 downto 0) := (others => '1');
    Output0_WValid: out std_ulogic := '0';
    Output0_WReady: in std_ulogic := '1';
    Output0_BResp: in u_unsigned(1 downto 0) := "10";
    Output0_BValid: in std_ulogic := '0';
    Output0_BReady: out std_ulogic := '1';
    Output0_ARAddr: out u_unsigned(Output0_Addr_Length - 1 downto 0) := (others => '0');
    Output0_ARProt: out u_unsigned(2 downto 0) := "000";
    Output0_ARValid: out std_ulogic := '0';
    Output0_ARReady: in std_ulogic := '1';
    Output0_RData: in u_unsigned(Output0_Data_Length - 1 downto 0) := (others => '0');
    Output0_RResp: in u_unsigned(1 downto 0) := "10";
    Output0_RValid: in std_ulogic := '0';
    Output0_RReady: out std_ulogic := '1';
    -- Output1 AXI
    Output1_AWAddr: out u_unsigned(Output1_Addr_Length - 1 downto 0) := (others => '0');
    Output1_AWProt: out u_unsigned(2 downto 0) := "000";
    Output1_AWValid: out std_ulogic := '0';
    Output1_AWReady: in std_ulogic := '1';
    Output1_WData: out u_unsigned(Output1_Data_Length - 1 downto 0) := (others => '0');
    Output1_WStrb: out u_unsigned(Output1_Data_Length / 8 - 1 downto 0) := (others => '1');
    Output1_WValid: out std_ulogic := '0';
    Output1_WReady: in std_ulogic := '1';
    Output1_BResp: in u_unsigned(1 downto 0) := "10";
    Output1_BValid: in std_ulogic := '0';
    Output1_BReady: out std_ulogic := '1';
    Output1_ARAddr: out u_unsigned(Output1_Addr_Length - 1 downto 0) := (others => '0');
    Output1_ARProt: out u_unsigned(2 downto 0) := "000";
    Output1_ARValid: out std_ulogic := '0';
    Output1_ARReady: in std_ulogic := '1';
    Output1_RData: in u_unsigned(Output1_Data_Length - 1 downto 0) := (others => '0');
    Output1_RResp: in u_unsigned(1 downto 0) := "10";
    Output1_RValid: in std_ulogic := '0';
    Output1_RReady: out std_ulogic := '1');
begin
end entity AXIL_Fork;


architecture Behavior of AXIL_Fork is

signal Comb_BResp: u_unsigned(Input_BResp'range);
signal Comb_BValid: std_ulogic;
signal Comb_BReady: std_ulogic; 

signal Comb_RResp: u_unsigned(Input_RResp'range);
signal Comb_RData: u_unsigned(Input_RData'range);
signal Comb_RValid: std_ulogic;
signal Comb_RReady: std_ulogic; 

signal Queue_BResp: u_unsigned((Comb_BResp'length + 7) / 8 * 8 - 1 downto 0);
signal Queue_RResp: u_unsigned((Comb_RResp'length + Comb_RData'length + 7) / 8 * 8 - 1 downto 0);

begin

Checks: process
begin
    assert Input_Domain = Clock_Domain report "Clock domain mismatch" severity failure;
    assert Output0_Domain = Clock_Domain report "Clock domain mismatch" severity failure;
    assert Output1_Domain = Clock_Domain report "Clock domain mismatch" severity failure;
    wait;
end process;
    
Output0_AWAddr <= Input_AWAddr;
Output0_AWProt <= Input_AWProt;
Output0_AWValid <= Input_AWValid;

Output1_AWAddr <= Input_AWAddr;
Output1_AWProt <= Input_AWProt;
Output1_AWValid <= Input_AWValid;

Input_AWReady <= Output0_AWReady and Output1_AWReady;

Output0_WData <= Input_WData;
Output0_WStrb <= Input_WStrb;
Output0_WValid <= Input_WValid;

Output1_WData <= Input_WData;
Output1_WStrb <= Input_WStrb;
Output1_WValid <= Input_WValid;

Input_WReady <= Output0_WReady and Output1_WReady;

Comb_BResp <= Output0_BResp and Output1_BResp;
Comb_BValid <= Output0_BValid and Output1_BValid;

Output0_BReady <= Comb_BReady;
Output1_BReady <= Comb_BReady;

Output0_ARAddr <= Input_ARAddr;
Output0_ARProt <= Input_ARProt;
Output0_ARValid <= Input_ARValid;

Output1_ARAddr <= Input_ARAddr;
Output1_ARProt <= Input_ARProt;
Output1_ARValid <= Input_ARValid;

Input_ARReady <= Output0_ARReady and Output1_ARReady;

Comb_RData <= Output0_RData or Output1_RData;
Comb_RResp <= Output0_RResp and Output1_RResp;
Comb_RValid <= Output0_RValid and Output1_RValid;

Output0_RReady <= Comb_RReady;
Output1_RReady <= Comb_RReady;


BResp_Queue: entity Work.Auto_FIFO 
generic map (
    -- Back_Clock
    Back_Clock_Period => Clock_Period,
    Back_Clock_Domain => Clock_Domain,
    -- Front_Clock
    Front_Clock_Period => Clock_Period,    
    Front_Clock_Domain => Clock_Domain,
    -- Back
    Back_Domain => Input_Domain,
    Back_Data_Length => Queue_BResp'length,
    Back_Num_Outst => Input_Num_Outst,
    -- Front
    Front_Domain => Input_Domain,
    Front_Data_Length => Queue_BResp'length,
    Front_Num_Outst => Input_Num_Outst,
    -- Other
    Capacity => Input_Num_Outst)
port map (
    -- Clock
    Back_Clock_AClk => Clock_AClk,
    Back_Clock_AResetN => Clock_AResetN,
    -- Clock
    Front_Clock_AClk => Clock_AClk,
    Front_Clock_AResetN => Clock_AResetN,
    -- Input stream
    Back_TData => resize(Comb_BResp, Queue_BResp'length),
    Back_TLast => '1',
    Back_TStrb => (others => '1'),
    Back_TValid => Comb_BValid,
    Back_TReady => Comb_BReady,
    -- Output stream
    Front_TData => Queue_BResp,
    Front_TValid => Input_BValid,
    Front_TReady => Input_BReady);
Input_BResp <= resize(Queue_BResp, Input_BResp'length);

RResp_Queue: entity Work.Auto_FIFO 
generic map (
    -- Back_Clock
    Back_Clock_Period => Clock_Period,
    Back_Clock_Domain => Clock_Domain,
    -- Front_Clock
    Front_Clock_Period => Clock_Period,    
    Front_Clock_Domain => Clock_Domain,
    -- Back
    Back_Domain => Input_Domain,
    Back_Data_Length => Queue_RResp'length,
    Back_Num_Outst => Input_Num_Outst,
    -- Front
    Front_Domain => Input_Domain,
    Front_Data_Length => Queue_RResp'length,
    Front_Num_Outst => Input_Num_Outst,
    -- Other
    Capacity => Input_Num_Outst)
port map (
    -- Clock
    Back_Clock_AClk => Clock_AClk,
    Back_Clock_AResetN => Clock_AResetN,
    -- Clock
    Front_Clock_AClk => Clock_AClk,
    Front_Clock_AResetN => Clock_AResetN,
    -- Input stream
    Back_TData => resize(Comb_RResp & Comb_RData, Queue_RResp'length),
    Back_TLast => '1',
    Back_TStrb => (others => '1'),
    Back_TValid => Comb_RValid,
    Back_TReady => Comb_RReady,
    -- Output stream
    Front_TData => Queue_RResp,
    Front_TValid => Input_RValid,
    Front_TReady => Input_RReady);
(Input_RResp, Input_RData) <= resize(Queue_RResp, Input_RResp'length + Input_RData'length);


end Behavior;

