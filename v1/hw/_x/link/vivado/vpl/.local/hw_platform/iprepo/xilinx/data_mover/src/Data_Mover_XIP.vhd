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

entity Data_Mover_XIP is
generic (
    -- Host AXI
    Host_Addr_Width: integer := 16;
    Host_Data_Width: integer := 32;
    Host_Id_Width: integer := 1;
    Host_AWUser_Width: integer := 1;
    Host_WUser_Width: integer := 1;
    Host_BUser_Width: integer := 1;
    Host_ARUser_Width: integer := 1;
    Host_RUser_Width: integer := 1;
    Host_Num_Write_Outstanding: integer := 32;
    Host_Num_Read_Outstanding: integer := 32; 
    Host_Id_Value: integer := 0;   
    -- IRQ AXIS
    IRQ_TData_Num_Bytes: integer := 2;
    IRQ_Num_Outstanding: integer := 1;
    -- Memory AXI
    Memory_Addr_Width: integer := 32;
    Memory_Data_Width: integer := 32;
    Memory_Id_Width: integer := 1;
    Memory_AWUser_Width: integer := 1;
    Memory_WUser_Width: integer := 1;
    Memory_BUser_Width: integer := 1;
    Memory_ARUser_Width: integer := 1;
    Memory_RUser_Width: integer := 1;
    Memory_Num_Write_Outstanding: integer := 32;
    Memory_Num_Read_Outstanding: integer := 32;
    Memory_Id_Value: integer := 0;    
    Memory_Burst_Length: integer := 8;
    -- Output Stream0 AXIS
    OStream0_TData_Num_Bytes: integer := 4;
    OStream0_Num_Outstanding: integer := 16;
    -- Output Stream1 AXIS
    OStream1_TData_Num_Bytes: integer := 4;
    OStream1_Num_Outstanding: integer := 16;
    -- Input Stream0 AXIS
    IStream0_TData_Num_Bytes: integer := 32;
    IStream0_Num_Outstanding: integer := 16;
    -- Input Stream1 AXIS
    IStream1_TData_Num_Bytes: integer := 32;
    IStream1_Num_Outstanding: integer := 16;
    -- Others
    Num_Ports: integer := 2;
    Page_Addr: integer := 0;
    Page_Size: integer := 192); -- Num_Ports * 24 * 4
port (
    -- Host Clock
    Host_Clock_AClk: in std_ulogic;
    Host_Clock_AResetN: in std_ulogic;
    -- Memory Clock
    Memory_Clock_AClk: in std_ulogic;
    Memory_Clock_AResetN: in std_ulogic;
    -- Host AXI
    Host_AWAddr: in std_logic_vector(Host_Addr_Width - 1 downto 0) := (others => '0');
    Host_AWProt: in std_logic_vector(2 downto 0) := "000";
    Host_AWValid: in std_ulogic := '0';
    Host_AWReady: out std_ulogic := '1';
    Host_WData: in std_logic_vector(Host_Data_Width - 1 downto 0) := (others => '0');
    Host_WStrb: in std_logic_vector(Host_Data_Width / 8 - 1 downto 0) := (others => '1');
    Host_WValid: in std_ulogic := '0';
    Host_WReady: out std_ulogic := '1';
    Host_BResp: out std_logic_vector(1 downto 0) := "10";
    Host_BUser: out std_logic_vector(Host_BUser_Width - 1 downto 0) := (others => '0');    
    Host_BValid: out std_ulogic := '0';
    Host_BReady: in std_ulogic := '1';
    Host_ARAddr: in std_logic_vector(Host_Addr_Width - 1 downto 0) := (others => '0');
    Host_ARProt: in std_logic_vector(2 downto 0) := "000";
    Host_ARValid: in std_ulogic := '0';
    Host_ARReady: out std_ulogic := '1';
    Host_RData: out std_logic_vector(Host_Data_Width - 1 downto 0) := (others => '0');
    Host_RResp: out std_logic_vector(1 downto 0) := "10";
    Host_RValid: out std_ulogic := '0';
    Host_RReady: in std_ulogic := '1';
    -- IRQ Stream
    IRQ_TData: out std_logic_vector(IRQ_TData_Num_Bytes * 8 - 1 downto 0) := (others => '0');
    IRQ_TStrb: out std_logic_vector(IRQ_TData_Num_Bytes - 1 downto 0) := (others => '1');
    IRQ_TLast: out std_ulogic := '1';
    IRQ_TValid: out std_ulogic := '0';
    IRQ_TReady: in std_ulogic := '1';    
    -- Memory AXI
    Memory_AWId: out std_logic_vector(Memory_Id_Width - 1 downto 0) := (others => '0');
    Memory_AWAddr: out std_logic_vector(Memory_Addr_Width - 1 downto 0) := (others => '0');
    Memory_AWProt: out std_logic_vector(2 downto 0) := "000";
    Memory_AWLen: out std_logic_vector(7 downto 0) := x"08";
    Memory_AWUser: out std_logic_vector(Memory_AWUser_Width - 1 downto 0) := (others => '0');
    Memory_AWValid: out std_ulogic := '0';
    Memory_AWReady: in std_ulogic := '1';
    Memory_WData: out std_logic_vector(Memory_Data_Width - 1 downto 0) := (others => '0');
    Memory_WStrb: out std_logic_vector(Memory_Data_Width / 8 - 1 downto 0) := (others => '1');
    Memory_WLast: out std_ulogic := '1';
    Memory_WUser: out std_logic_vector(Memory_WUser_Width - 1 downto 0) := (others => '0');
    Memory_WValid: out std_ulogic := '0';
    Memory_WReady: in std_ulogic := '1';
    Memory_BId: in std_logic_vector(Memory_Id_Width - 1 downto 0) := (others => '0');
    Memory_BResp: in std_logic_vector(1 downto 0) := "10";
    Memory_BUser: in std_logic_vector(Memory_BUser_Width - 1 downto 0) := (others => '0');
    Memory_BValid: in std_ulogic := '0';
    Memory_BReady: out std_ulogic := '1';
    Memory_ARId: out std_logic_vector(Memory_Id_Width - 1 downto 0) := (others => '0');
    Memory_ARAddr: out std_logic_vector(Memory_Addr_Width - 1 downto 0) := (others => '0');
    Memory_ARProt: out std_logic_vector(2 downto 0) := "000";
    Memory_ARLen: out std_logic_vector(7 downto 0) := x"08";
    Memory_ARUser: out std_logic_vector(Memory_ARUser_Width - 1 downto 0) := (others => '0');
    Memory_ARValid: out std_ulogic := '0';
    Memory_ARReady: in std_ulogic := '1';
    Memory_RId: in std_logic_vector(Memory_Id_Width - 1 downto 0) := (others => '0');
    Memory_RData: in std_logic_vector(Memory_Data_Width - 1 downto 0) := (others => '0');
    Memory_RLast: in std_ulogic := '1';
    Memory_RResp: in std_logic_vector(1 downto 0) := "10";
    Memory_RUser: in std_logic_vector(Memory_RUser_Width - 1 downto 0) := (others => '0');
    Memory_RValid: in std_ulogic := '0';
    Memory_RReady: out std_ulogic := '1';
    -- Output Stream0 AXIS
    OStream0_TData: out std_logic_vector(OStream0_TData_Num_Bytes * 8 - 1 downto 0) := (others => '0');
    OStream0_TStrb: out std_logic_vector(OStream0_TData_Num_Bytes - 1 downto 0) := (others => '1');
    OStream0_TLast: out std_ulogic := '1';
    OStream0_TValid: out std_ulogic;
    OStream0_TReady: in std_ulogic;
    -- Output Stream1 AXIS
    OStream1_TData: out std_logic_vector(OStream1_TData_Num_Bytes * 8 - 1 downto 0) := (others => '0');
    OStream1_TStrb: out std_logic_vector(OStream1_TData_Num_Bytes - 1 downto 0) := (others => '1');
    OStream1_TLast: out std_ulogic := '1';
    OStream1_TValid: out std_ulogic;
    OStream1_TReady: in std_ulogic;
    -- Input Stream0 AXIS
    IStream0_TData: in std_logic_vector(IStream0_TData_Num_Bytes * 8 - 1 downto 0) := (others => '0');
    IStream0_TStrb: in std_logic_vector(IStream0_TData_Num_Bytes - 1 downto 0) := (others => '1');
    IStream0_TLast: in std_ulogic := '1';
    IStream0_TValid: in std_ulogic;
    IStream0_TReady: out std_ulogic := '1';
    -- Input Stream1 AXIS
    IStream1_TData: in std_logic_vector(IStream1_TData_Num_Bytes * 8 - 1 downto 0) := (others => '0');
    IStream1_TStrb: in std_logic_vector(IStream1_TData_Num_Bytes - 1 downto 0) := (others => '1');
    IStream1_TLast: in std_ulogic := '1';
    IStream1_TValid: in std_ulogic;
    IStream1_TReady: out std_ulogic := '1');
begin
end Data_Mover_XIP;

architecture Structure of Data_Mover_XIP is

begin

U0: entity Work.MultiStream_Data_Mover
generic map (
    -- Host AXI
    Host_Addr_Length => Host_Addr_Width,
    Host_Data_Length => Host_Data_Width,
    Host_Num_Outst => Host_Num_Write_Outstanding,
    -- IRQ AXIS
    IRQ_Data_Length => IRQ_TData_Num_Bytes * 8,
    IRQ_Num_Outst => IRQ_Num_Outstanding,
    -- Memory AXI
    Memory_Addr_Length => Memory_Addr_Width,
    Memory_Data_Length => Memory_Data_Width,
    Memory_Burst_Length => Memory_Burst_Length,
    Memory_Num_Outst => Memory_Num_Write_Outstanding,
    -- Output Stream0 AXIS
    OStream0_Data_Length => OStream0_TData_Num_Bytes * 8,
    OStream0_Num_Outst => OStream0_Num_Outstanding,
    -- Input Stream1 AXIS
    IStream0_Data_Length => IStream0_TData_Num_Bytes * 8,
    IStream0_Num_Outst => IStream0_Num_Outstanding,
    -- Output Stream1 AXIS
    OStream1_Data_Length => OStream1_TData_Num_Bytes * 8,
    OStream1_Num_Outst => OStream1_Num_Outstanding,
    -- Input Stream1 AXIS
    IStream1_Data_Length => IStream1_TData_Num_Bytes * 8,
    IStream1_Num_Outst => IStream1_Num_Outstanding)   
port map (
    -- Host_Clock
    Clock_AClk => Host_Clock_AClk,
    Clock_AResetN => Host_Clock_AResetN,
    -- Memory_Clock
--    Memory_Clock_AClk => Memory_Clock_AClk,
--    Memory_Clock_AResetN => Memory_Clock_AResetN,
    -- Host AXI 
    Host_AWAddr => unsigned(Host_AWAddr),
    Host_AWProt => unsigned(Host_AWProt),
    Host_AWValid => Host_AWValid,
    Host_AWReady => Host_AWReady,
    Host_WData => unsigned(Host_WData),
    Host_WStrb => unsigned(Host_WStrb),
    Host_WValid => Host_WValid,
    Host_WReady => Host_WReady,
    std_logic_vector(Host_BResp) => Host_BResp,
    Host_BValid => Host_BValid,
    Host_BReady => Host_BReady,
    Host_ARAddr => unsigned(Host_ARAddr),
    Host_ARProt => unsigned(Host_ARProt),
    Host_ARValid => Host_ARValid,
    Host_ARReady => Host_ARReady,
    std_logic_vector(Host_RData) => Host_RData,
    std_logic_vector(Host_RResp) => Host_RResp,
    Host_RValid => Host_RValid,
    Host_RReady => Host_RReady,
    -- IRQ AXIS
    std_logic_vector(IRQ_TStrb) => IRQ_TStrb,
    IRQ_TValid => IRQ_TValid,
    -- Memory AXI 
    std_logic_vector(Memory_AWId) => Memory_AWId,
    std_logic_vector(Memory_AWAddr) => Memory_AWAddr,
    std_logic_vector(Memory_AWLen) => Memory_AWLen,
    Memory_AWValid => Memory_AWValid,
    Memory_AWReady => Memory_AWReady,
    std_logic_vector(Memory_WData) => Memory_WData,
    std_logic_vector(Memory_WStrb) => Memory_WStrb,
    Memory_WLast => Memory_WLast,
    Memory_WValid => Memory_WValid,
    Memory_WReady => Memory_WReady,
    Memory_BId => unsigned(Memory_BId),
    Memory_BResp => unsigned(Memory_BResp),
    Memory_BValid => Memory_BValid,
    Memory_BReady => Memory_BReady,
    std_logic_vector(Memory_ARId) => Memory_ARId,
    std_logic_vector(Memory_ARAddr) => Memory_ARAddr,
    std_logic_vector(Memory_ARLen) => Memory_ARLen,
    Memory_ARValid => Memory_ARValid,
    Memory_ARReady => Memory_ARReady,
    Memory_RData => unsigned(Memory_RData),
    Memory_RLast => Memory_RLast,
    Memory_RId => unsigned(Memory_RId),
    Memory_RResp => unsigned(Memory_RResp),
    Memory_RValid => Memory_RValid,
    Memory_RReady => Memory_RReady,
    -- Output Stream0 AXIS
    std_logic_vector(OStream0_TData) => OStream0_TData,
    std_logic_vector(OStream0_TStrb) => OStream0_TStrb,
    OStream0_TLast => OStream0_TLast,
    OStream0_TValid => OStream0_TValid,
    OStream0_TReady => OStream0_TReady,
    -- Input Stream0 AXIS
    IStream0_TData => unsigned(IStream0_TData),
    IStream0_TStrb => unsigned(IStream0_TStrb),
    IStream0_TLast => IStream0_TLast,
    IStream0_TValid => IStream0_TValid,
    IStream0_TReady => IStream0_TReady,
    -- Output Stream1 AXIS
    std_logic_vector(OStream1_TData) => OStream1_TData,
    std_logic_vector(OStream1_TStrb) => OStream1_TStrb,
    OStream1_TLast => OStream1_TLast,
    OStream1_TValid => OStream1_TValid,
    OStream1_TReady => OStream1_TReady,
    -- Input Stream1 AXIS
    IStream1_TData => unsigned(IStream1_TData),
    IStream1_TStrb => unsigned(IStream1_TStrb),
    IStream1_TLast => IStream1_TLast,
    IStream1_TValid => IStream1_TValid,
    IStream1_TReady => IStream1_TReady);

end architecture Structure;
