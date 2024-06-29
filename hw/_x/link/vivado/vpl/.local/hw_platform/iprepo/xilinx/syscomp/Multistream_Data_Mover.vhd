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

-- TODO: Memory intefrace buffers for timing closure
-- TODO: Stream CDC buffers

entity Multistream_Data_Mover is
generic (
    -- Host_Clock
    Host_Clock_Domain: string;
    Host_Clock_Period: time;
    -- Memory_Clock
    Memory_Clock_Domain: string;
    Memory_Clock_Period: time;
    -- Host AXI
    Host_Addr_Length: integer := 16;
    Host_Data_Length: integer := 32;
    Host_Base_Addr: unsigned(Host_Addr_Length - 1 downto 0) := (others => '0');
    Host_Num_Outst: integer := 16;
    Host_Domain: string;
    -- IRQ AXIS
    IRQ_Data_Length: integer := 8 * 2;
    IRQ_Num_Outst: integer := 1;
    IRQ_Domain: string;
    -- Memory AXI
    Memory_Addr_Length: integer := 32;
    Memory_Data_Length: integer := 32;
    Memory_Id_Length: integer range 8 to 8 := 8;
    Memory_Num_Outst: integer := 16;        
    Memory_Domain: string;
    -- Ostream0_Clock
    Ostream0_Clock_Domain: string;
    Ostream0_Clock_Period: time;
    -- Output Stream0 AXIS
    OStream0_Data_Length: integer := 32;
    OStream0_Num_Outst: integer := 16;
    OStream0_Domain: string;
    -- Ostream1_Clock
    Ostream1_Clock_Domain: string;
    Ostream1_Clock_Period: time;
    -- Output Stream1 AXIS
    OStream1_Data_Length: integer := 32;
    OStream1_Num_Outst: integer := 16;
    OStream1_Domain: string;
    -- Istream0_Clock
    Istream0_Clock_Domain: string;
    Istream0_Clock_Period: time;
    -- Input Stream0 AXIS
    IStream0_Data_Length: integer := 32;
    IStream0_Num_Outst: integer := 16;
    IStream0_Domain: string;
    -- Istream1_Clock
    Istream1_Clock_Domain: string;
    Istream1_Clock_Period: time;
    -- Input Stream1 AXIS
    IStream1_Data_Length: integer := 32;
    IStream1_Num_Outst: integer := 16;
    IStream1_Domain: string;
    -- Others
    Memory_Burst_Length: integer := 4;
    Num_Ports: integer := 2;
    Page_Size: integer := Num_Ports * 24 * 4);
port (
    -- Host_Clock
    Host_Clock_AClk: in std_ulogic;
    Host_Clock_AResetN: in std_ulogic;
    -- Host AXI
    Host_AWAddr: in u_unsigned(Host_Addr_Length - 1 downto 0);
    Host_AWProt: in u_unsigned(2 downto 0);
    Host_AWValid: in std_logic;
    Host_AWReady: out std_logic;
    Host_WData: in u_unsigned(Host_Data_Length - 1 downto 0);
    Host_WStrb: in u_unsigned(Host_Data_Length / 8 - 1 downto 0);
    Host_WValid: in std_logic;
    Host_WReady: out std_logic;
    Host_BResp: out u_unsigned(1 downto 0);
    Host_BValid: out std_logic;
    Host_BReady: in std_logic;
    Host_ARAddr: in u_unsigned(Host_Addr_Length - 1 downto 0);
    Host_ARProt: in u_unsigned(2 downto 0);
    Host_ARValid: in std_logic;
    Host_ARReady: out std_logic;
    Host_RData: out u_unsigned(Host_Data_Length - 1 downto 0);
    Host_RResp: out u_unsigned(1 downto 0);
    Host_RValid: out std_logic;
    Host_RReady: in std_logic;
    -- IRQ stream
    IRQ_TData: out u_unsigned(IRQ_Data_Length - 1 downto 0) := (others => '0');
    IRQ_TStrb: out u_unsigned(IRQ_Data_Length / 8 - 1 downto 0) := (others => '1');
    IRQ_TLast: out std_ulogic := '1';
    IRQ_TValid: out std_ulogic := '0';
    IRQ_TReady: in std_ulogic := '1';    
    -- Memory_Clock
    Memory_Clock_AClk: in std_ulogic;
    Memory_Clock_AResetN: in std_ulogic;
    -- Memory AXI
    Memory_AWAddr: out u_unsigned(Memory_Addr_Length - 1 downto 0);
    Memory_AWId: out u_unsigned(Memory_Id_Length - 1 downto 0);
    Memory_AWProt: out u_unsigned(2 downto 0);
    Memory_AWLen: out u_unsigned(7 downto 0);
    Memory_AWValid: out std_logic;
    Memory_AWReady: in std_logic;
    Memory_WData: out u_unsigned(Memory_Data_Length - 1 downto 0);
    Memory_WStrb: out u_unsigned(Memory_Data_Length / 8 - 1 downto 0);
    Memory_WLast: out std_logic;
    Memory_WValid: out std_logic;
    Memory_WReady: in std_logic;
    Memory_BId: in u_unsigned(Memory_Id_Length - 1 downto 0);
    Memory_BResp: in u_unsigned(1 downto 0);
    Memory_BValid: in std_logic;
    Memory_BReady: out std_logic;
    Memory_ARId: out u_unsigned(Memory_Id_Length - 1 downto 0);
    Memory_ARAddr: out u_unsigned(Memory_Addr_Length - 1 downto 0);
    Memory_ARProt: out u_unsigned(2 downto 0);
    Memory_ARLen: out u_unsigned(7 downto 0);
    Memory_ARValid: out std_logic;
    Memory_ARReady: in std_logic;
    Memory_RId: in u_unsigned(Memory_Id_Length - 1 downto 0);
    Memory_RData: in u_unsigned(Memory_Data_Length - 1 downto 0);
    Memory_RLast: in std_logic;
    Memory_RResp: in u_unsigned(1 downto 0);
    Memory_RValid: in std_logic;
    Memory_RReady: out std_logic;
    -- Ostream0_Clock
    Ostream0_Clock_AClk: in std_ulogic;
    Ostream0_Clock_AResetN: in std_ulogic;
    -- Output Stream0 AXIS
    OStream0_TData: out u_unsigned(OStream0_Data_Length - 1 downto 0) := (others => '0');
    OStream0_TStrb: out u_unsigned(OStream0_Data_Length / 8 - 1 downto 0) := (others => '1');
    OStream0_TLast: out std_ulogic := '1';
    OStream0_TValid: out std_ulogic;
    OStream0_TReady: in std_ulogic;
    -- Ostream1_Clock
    Ostream1_Clock_AClk: in std_ulogic;
    Ostream1_Clock_AResetN: in std_ulogic;
    -- Output Stream1 AXIS
    OStream1_TData: out u_unsigned(OStream1_Data_Length - 1 downto 0) := (others => '0');
    OStream1_TStrb: out u_unsigned(OStream1_Data_Length / 8 - 1 downto 0) := (others => '1');
    OStream1_TLast: out std_ulogic := '1';
    OStream1_TValid: out std_ulogic;
    OStream1_TReady: in std_ulogic;
    -- Istream0_Clock
    Istream0_Clock_AClk: in std_ulogic;
    Istream0_Clock_AResetN: in std_ulogic;
    -- Input Stream0 AXIS
    IStream0_TData: in u_unsigned(IStream0_Data_Length - 1 downto 0) := (others => '0');
    IStream0_TStrb: in u_unsigned(IStream0_Data_Length / 8 - 1 downto 0) := (others => '1');
    IStream0_TLast: in std_ulogic := '1';
    IStream0_TValid: in std_ulogic;
    IStream0_TReady: out std_ulogic := '1';
    -- Istream1_Clock
    Istream1_Clock_AClk: in std_ulogic;
    Istream1_Clock_AResetN: in std_ulogic;
    -- Input Stream1 AXIS
    IStream1_TData: in u_unsigned(IStream1_Data_Length - 1 downto 0) := (others => '0');
    IStream1_TStrb: in u_unsigned(IStream1_Data_Length / 8 - 1 downto 0) := (others => '1');
    IStream1_TLast: in std_ulogic := '1';
    IStream1_TValid: in std_ulogic;
    IStream1_TReady: out std_ulogic := '1');
begin
    assert Page_Size >= Num_Ports * 24 * 4 report Multistream_Data_Mover'instance_name & ": 0" severity error;
end Multistream_Data_Mover;

architecture Behavior of Multistream_Data_Mover is

-- Host Demux.
type Host_Resp_Array is array (0 to Num_Ports - 1) of u_unsigned(1 downto 0);
type Host_Data_Array is array (0 to Num_Ports - 1) of u_unsigned(Host_Data_Length - 1 downto 0);
signal Host_AWReady_Mux: std_ulogic_vector(0 to Num_Ports - 1);
signal Host_WReady_Mux: std_ulogic_vector(0 to Num_Ports - 1);
signal Host_BResp_Mux: Host_Resp_Array;
signal Host_BValid_Mux: std_ulogic_vector(0 to Num_Ports - 1);
signal Host_ARReady_Mux: std_ulogic_vector(0 to Num_Ports - 1);
signal Host_RData_Mux: Host_Data_Array;
signal Host_RResp_Mux: Host_Resp_Array;
signal Host_RValid_Mux: std_ulogic_vector(0 to Num_Ports - 1);

-- IRQ Mux
type IRQ_Strb_Array is array (0 to Num_Ports - 1) of u_unsigned(1 downto 0);
signal IRQ_TStrb_Mux: IRQ_Strb_Array;
signal IRQ_TValid_Mux: std_ulogic_vector(0 to Num_Ports - 1);

-- Memory Mux.
type Memory_Addr_Array is array (0 to Num_Ports - 1) of u_unsigned(Memory_Addr_Length - 1 downto 0);
type Memory_Len_Array is array (0 to Num_Ports - 1) of u_unsigned(7 downto 0);
type Memory_Data_Array is array (0 to Num_Ports - 1) of u_unsigned(Memory_Data_Length - 1 downto 0);
type Memory_Strb_Array is array (0 to Num_Ports - 1) of u_unsigned(Memory_Data_Length / 8 - 1 downto 0);
signal Memory_AWAddr_Mux: Memory_Addr_Array;
signal Memory_AWLen_Mux: Memory_Len_Array;
signal Memory_AWValid_Mux: std_ulogic_vector(0 to Num_Ports - 1);
signal Memory_AWReady_Mux: std_ulogic_vector(0 to Num_Ports - 1);
signal Memory_WData_Mux: Memory_Data_Array;
signal Memory_WStrb_Mux: Memory_Strb_Array;
signal Memory_WLast_Mux: std_ulogic_vector(0 to Num_Ports - 1);
signal Memory_WValid_Mux: std_ulogic_vector(0 to Num_Ports - 1);
signal Memory_WReady_Mux: std_ulogic_vector(0 to Num_Ports - 1);
signal Memory_BValid_Mux: std_ulogic_vector(0 to Num_Ports - 1);
signal Memory_ARAddr_Mux: Memory_Addr_Array;
signal Memory_ARLen_Mux: Memory_Len_Array;
signal Memory_ARValid_Mux: std_ulogic_vector(0 to Num_Ports - 1);
signal Memory_ARReady_Mux: std_ulogic_vector(0 to Num_Ports - 1) := (others => '1');
signal Memory_RValid_Mux: std_ulogic_vector(0 to Num_Ports - 1);

-- RId 
constant RId_Domain: string := Memory_Domain;
constant RId_Data_Length: integer := Memory_ARId'length;
constant RId_Num_Outst: integer := Memory_Num_Outst;
signal RId_TData: u_unsigned(RId_Data_Length - 1 downto 0);
signal RId_TValid: std_ulogic;
signal RId_TReady: std_ulogic;

-- RId_Queue
constant RId_Queue_Domain: string := Memory_Domain;
constant RId_Queue_Data_Length: integer := Memory_ARId'length;
constant RId_Queue_Num_Outst: integer := Memory_Num_Outst;
signal RId_Queue_TData: u_unsigned(RId_Queue_Data_Length - 1 downto 0);
signal RId_Queue_TValid: std_ulogic;
signal RId_Queue_TReady: std_ulogic;

-- WId 
constant WId_Domain: string := Memory_Domain;
constant WId_Data_Length: integer := Memory_AWId'length;
constant WId_Num_Outst: integer := Memory_Num_Outst;
signal WId_TData: u_unsigned(WId_Data_Length - 1 downto 0);
signal WId_TValid: std_ulogic;
signal WId_TReady: std_ulogic;

-- WId_Queue
constant WId_Queue_Domain: string := Memory_Domain;
constant WId_Queue_Data_Length: integer := Memory_AWId'length;
constant WId_Queue_Num_Outst: integer := Memory_Num_Outst;
signal WId_Queue_TData: u_unsigned(WId_Queue_Data_Length - 1 downto 0);
signal WId_Queue_TValid: std_ulogic;
signal WId_Queue_TReady: std_ulogic;

-- Read Credits AXIS
constant OCredits_Domain: string := Memory_Domain;
constant OCredits_Num_Outst: integer := Memory_Num_Outst;
signal OCredits_TValid: std_ulogic;
signal OCredits_TReady: std_ulogic;
signal OCredits_TValid_Mux: std_ulogic_vector(Num_Ports - 1 downto 0);
signal OCredits_TReady_Mux: std_ulogic_vector(Num_Ports - 1 downto 0);

-- Write Credits AXIS
constant ICredits_Domain: string := Memory_Domain;
constant ICredits_Num_Outst: integer := Memory_Num_Outst;
signal ICredits_TValid: std_ulogic;
signal ICredits_TReady: std_ulogic_vector(0 to 1);
signal ICredits_TValid_Mux: std_ulogic_vector(0 to Num_Ports - 1);
signal ICredits_TReady_Mux: std_ulogic_vector(0 to Num_Ports - 1);

-- Read Credits AXIS
constant ARCredits_Domain: string := Memory_Domain;
constant ARCredits_Num_Outst: integer := Memory_Num_Outst;
signal ARCredits_TValid: std_ulogic;
signal ARCredits_TReady: std_ulogic;

-- Write Credits AXIS
constant AWCredits_Domain: string := Memory_Domain;
constant AWCredits_Num_Outst: integer := Memory_Num_Outst;
signal AWCredits_TValid: std_ulogic;
signal AWCredits_TReady: std_ulogic;

-- Write Credits AXIS
constant WCredits_Domain: string := Memory_Domain;
constant WCredits_Num_Outst: integer := Memory_Num_Outst;
signal WCredits_TValid: std_ulogic;
signal WCredits_TReady: std_ulogic;

begin

Demuxing_Host: process (all)
    variable AWReady_Acc: std_ulogic;
    variable WReady_Acc: std_ulogic;
    variable BResp_Acc: u_unsigned(1 downto 0);
    variable BValid_Acc: std_ulogic;
    variable ARReady_Acc: std_ulogic;
    variable RData_Acc: u_unsigned(Host_Data_Length - 1 downto 0);
    variable RResp_Acc: u_unsigned(1 downto 0);
    variable RValid_Acc: std_ulogic;
begin
    AWReady_Acc := '1';
    WReady_Acc := '1';
    BResp_Acc := "11";
    BValid_Acc := '0';
    ARReady_Acc := '1';
    RData_Acc := to_unsigned(0, Host_Data_Length);
    RResp_Acc := "11";
    RValid_Acc := '0';
    for i in 0 to Num_Ports - 1 loop
        AWReady_Acc := AWReady_Acc and Host_AWReady_Mux(i);
        WReady_Acc := WReady_Acc and Host_WReady_Mux(i);
        BResp_Acc := BResp_Acc and Host_BResp_Mux(i);
        BValid_Acc := BValid_Acc or Host_BValid_Mux(i);
        ARReady_Acc := ARReady_Acc and Host_ARReady_Mux(i);
        RData_Acc := RData_Acc or Host_RData_Mux(i);
        RResp_Acc := RResp_Acc and Host_RResp_Mux(i);
        RValid_Acc := RValid_Acc or Host_RValid_Mux(i);
    end loop;
    Host_AWReady <= AWReady_Acc;
    Host_WReady <= WReady_Acc;
    Host_BResp <= BResp_Acc;
    Host_BValid <= BValid_Acc;
    Host_ARReady <= ARReady_Acc;
    Host_RData <= RData_Acc;
    Host_RResp <= RResp_Acc;
    Host_RValid <= RValid_Acc;
end process Demuxing_Host;

Muxing_IRQ: process(all)
    variable Strb_Acc: u_unsigned(IRQ_Data_Length / 8 - 1 downto 0);
    variable Valid_Acc: std_ulogic;
begin
    Strb_Acc := (others => '0');
    Valid_Acc := '0';
    for i in 0 to Num_Ports - 1 loop
        Strb_Acc := Strb_Acc or (resize(IRQ_TStrb_Mux(i), Strb_Acc'length) sll (i * 2));
        Valid_Acc := Valid_Acc or IRQ_TValid_Mux(i);
    end loop;
    IRQ_TStrb <= Strb_Acc;
    IRQ_TValid <= Valid_Acc;
end process Muxing_IRQ;

ARCredits_Sm: entity work.Take_Const_Smphr 
generic map (
    -- Give_Clock
    Give_Clock_Domain => Memory_Clock_Domain,
    Give_Clock_Period => Memory_Clock_Period,
    -- Give stream
    Give_Domain => OCredits_Domain,
    Give_Num_Outst => OCredits_Num_Outst,
    -- Value_Clock
    Value_Clock_Domain => Memory_Clock_Domain,
    Value_Clock_Period => Memory_Clock_Period,
    -- Take stream
    Value_Domain => ARCredits_Domain,
    -- Other parameters 
    Capacity => ARCredits_Num_Outst,
    Initial_Size => ARCredits_Num_Outst)
port map (
    -- Give_Clock
    Give_Clock_AClk => Memory_Clock_AClk,
    Give_Clock_AResetN => Memory_Clock_AResetN,
    -- Give
    Give_TData => 8x"1",
    Give_TValid => OCredits_TValid,
    Give_TReady => OCredits_TReady,
    -- Value_Clock
    Value_Clock_AClk => Memory_Clock_AClk,
    Value_Clock_AResetN => Memory_Clock_AResetN,
    -- Take
    Take_TData => 8x"1",
    -- Value
    Value_TValid => ARCredits_TValid,
    Value_TReady => ARCredits_TReady);

AWCredits_Sm: entity work.Take_Const_Smphr 
generic map (
    -- Give_Clock
    Give_Clock_Domain => Memory_Clock_Domain,
    Give_Clock_Period => Memory_Clock_Period,
    -- Give stream
    Give_Domain => ICredits_Domain,
    Give_Num_Outst => ICredits_Num_Outst,
    -- Value_Clock
    Value_Clock_Domain => Memory_Clock_Domain,
    Value_Clock_Period => Memory_Clock_Period,
    -- Value
    Value_Domain => AWCredits_Domain,
    -- Other parameters
    Capacity => AWCredits_Num_Outst,
    Initial_Size => AWCredits_Num_Outst)
port map (
    -- Give_Clock
    Give_Clock_AClk => Memory_Clock_AClk,
    Give_Clock_AResetN => Memory_Clock_AResetN,
    -- Give
    Give_TData => 8x"1",
    Give_TValid => ICredits_TValid and ICredits_TReady(1),
    Give_TReady => ICredits_TReady(0),
    -- Take
    Take_TData => 8x"1",
    -- Value_Clock
    Value_Clock_AClk => Memory_Clock_AClk,
    Value_Clock_AResetN => Memory_Clock_AResetN,
    -- Output stream
    Value_TValid => AWCredits_TValid,
    Value_TReady => AWCredits_TReady);

WCredits_Sm: entity Work.Take_Const_Smphr 
generic map (
    -- Give_Clock
    Give_Clock_Domain => Memory_Clock_Domain,
    Give_Clock_Period => Memory_Clock_Period,
    -- Give stream
    Give_Domain => ICredits_Domain,
    Give_Num_Outst => ICredits_Num_Outst,
    -- Value_Clock
    Value_Clock_Domain => Memory_Clock_Domain,
    Value_Clock_Period => Memory_Clock_Period,
    -- Value
    Value_Domain => WCredits_Domain,
    -- Other parameters 
    Capacity => WCredits_Num_Outst,
    Initial_Size => WCredits_Num_Outst)
port map (
    -- Give_Clock
    Give_Clock_AClk => Memory_Clock_AClk,
    Give_Clock_AResetN => Memory_Clock_AResetN,
    -- Give
    Give_TData => 8x"1",
    Give_TValid => ICredits_TValid and ICredits_TReady(0),
    Give_TReady => ICredits_TReady(1),
    -- Take
    Take_TData => 8x"1",
    -- Value_Clock
    Value_Clock_AClk => Memory_Clock_AClk,
    Value_Clock_AResetN => Memory_Clock_AResetN,
    -- Output stream
    Value_TValid => WCredits_TValid,
    Value_TReady => WCredits_TReady);

Muxing_Memory_Requests: block
    signal Lock_Burst_Mux: std_ulogic_vector(0 to Num_Ports - 1);
    signal Burst_Valid_Mux: std_ulogic_vector(0 to Num_Ports - 1);
begin 
    P0: process(all)
    begin
        ARCredits_TReady <= RId_TReady and Memory_ARReady and Memory_ARValid_Mux(0) /*and ARCredits_TValid*/;
        RId_TData <= to_unsigned(0, RId_TData'Length);
        RId_TValid <= /*RId_TReady and*/ Memory_ARReady and Memory_ARValid_Mux(0) and ARCredits_TValid;
        Memory_ARId <= to_unsigned(0, Memory_ARId'Length);
        Memory_ARAddr <= Memory_ARAddr_Mux(0);
        Memory_ARLen <= Memory_ARLen_Mux(0);
        Memory_ARValid <= RId_TReady and /*Memory_ARReady and*/ Memory_ARValid_Mux(0) and ARCredits_TValid;
        Memory_ARReady_Mux <= (others => '0');
        if Memory_ARValid_Mux(0) = '1' then
            Memory_ARReady_Mux(0) <= RId_TReady and Memory_ARReady and ARCredits_TValid;
        elsif Memory_ARValid_Mux(1) = '1' then
            ARCredits_TReady <= RId_TReady and Memory_ARReady /*and ARCredits_TValid*/;
            RId_TData <= to_unsigned(1, RId_TData'Length);
            RId_TValid <= /*RId_TReady and*/ Memory_ARReady and ARCredits_TValid;
            Memory_ARId <= to_unsigned(1, Memory_ARId'Length);
            Memory_ARAddr <= Memory_ARAddr_Mux(1);
            Memory_ARLen <= Memory_ARLen_Mux(1);
            Memory_ARValid <= RId_TReady and /*Memory_ARReady and*/ ARCredits_TValid;
            Memory_ARReady_Mux(1) <= RId_TReady and Memory_ARReady and ARCredits_TValid;
        end if;
        
        AWCredits_TReady <= WId_TReady and Memory_AWReady and Memory_AWValid_Mux(0) /*and AWCredits_Tvalid*/;            
        WId_TData <= to_unsigned(0, Memory_AWId'Length);
        WId_TValid <= /*WId_TReady and*/ Memory_AWReady and Memory_AWValid_Mux(0) and AWCredits_Tvalid;
        Memory_AWId <= to_unsigned(0, Memory_AWId'Length);
        Memory_AWAddr <= Memory_AWAddr_Mux(0);
        Memory_AWLen <= Memory_AWLen_Mux(0);
        Memory_AWValid <= WId_TReady and /*Memory_AWReady and*/ Memory_AWValid_Mux(0) and AWCredits_Tvalid; 
        Memory_AWReady_Mux <= (others => '0');
        if Memory_AWValid_Mux(0) = '1' then            
            Memory_AWReady_Mux(0) <= WId_TReady and Memory_AWReady and AWCredits_Tvalid;
        elsif Memory_AWValid_Mux(1) = '1' then
            AWCredits_TReady <= WId_TReady and Memory_AWReady /*and AWCredits_Tvalid*/;    
            WId_TData <= to_unsigned(1, Memory_AWId'Length);
            WId_TValid <= /*WId_TReady and*/ Memory_AWReady and AWCredits_Tvalid;
            Memory_AWId <= to_unsigned(1, Memory_AWId'Length);
            Memory_AWAddr <= Memory_AWAddr_Mux(1);
            Memory_AWLen <= Memory_AWLen_Mux(1);
            Memory_AWValid <= WId_TReady and /*Memory_AWReady and*/ AWCredits_Tvalid; 
            Memory_AWReady_Mux(1) <= WId_TReady and Memory_AWReady and AWCredits_Tvalid;
        end if;    

        Memory_WData <= Memory_WData_Mux(0);
        Memory_WStrb <= Memory_WStrb_Mux(0);
        Memory_WLast <= Memory_WLast_Mux(0);
        WCredits_TReady <= Memory_WReady and Memory_WValid_Mux(0) and (/*not Memory_WLast_Mux(0) or*/ (Memory_WLast_Mux(0) /*and WCredits_Tvalid*/));
        Memory_WValid <= /*Memory_WReady and*/ Memory_WValid_Mux(0) and (not Memory_WLast_Mux(0) or (Memory_WLast_Mux(0) and WCredits_Tvalid));
        Memory_WReady_Mux <= (others => '0');
        if Burst_Valid_Mux(0) = '1' then
            Memory_WReady_Mux(0) <= Memory_WReady and Memory_WValid_Mux(0) and (not Memory_WLast_Mux(0) or (Memory_WLast_Mux(0) and WCredits_Tvalid));        
        elsif Burst_Valid_Mux(1) = '1' then
            Memory_WData <= Memory_WData_Mux(1);
            Memory_WStrb <= Memory_WStrb_Mux(1);
            Memory_WLast <= Memory_WLast_Mux(1);
            WCredits_TReady <= Memory_WReady and Memory_WValid_Mux(1) and (/*not Memory_WLast_Mux(1) or*/ (Memory_WLast_Mux(1) /*and WCredits_Tvalid*/));
            Memory_WValid <= /*Memory_WReady and*/ Memory_WValid_Mux(1) and (not Memory_WLast_Mux(1) or (Memory_WLast_Mux(1) and WCredits_Tvalid));
            Memory_WReady_Mux(1) <= Memory_WReady and Memory_WValid_Mux(1) and (not Memory_WLast_Mux(1) or (Memory_WLast_Mux(1) and WCredits_Tvalid));        
        end if;
        
        if (not Memory_Clock_AResetN) = '1' then
            Lock_Burst_Mux <= (others => '0');
        elsif rising_edge(Memory_Clock_AClk) then
            -- Unlock
            for i in 0 to Num_Ports - 1 loop
                if (Lock_Burst_Mux(i) and Memory_WValid_Mux(i) and Memory_WLast_Mux(i)) = '1' then
                    Lock_Burst_Mux(i) <= '0';
                end if;
            end loop;
            -- Lock
            if (not (or Lock_Burst_Mux)) = '1' then
                if Memory_WValid_Mux(0) = '1' then
                    Lock_Burst_Mux(0) <= '1';
                elsif Memory_WValid_Mux(1) = '1' then
                    Lock_Burst_Mux(1) <= '1';
                end if;
            end if;           
        end if;
        for i in 0 to Num_Ports - 1 loop
            Burst_Valid_Mux(i) <= (not (or Lock_Burst_Mux) and Memory_WValid_Mux(i)) or Lock_Burst_Mux(i);
        end loop;
    end process P0;
end block Muxing_Memory_Requests;

RId_Queue: entity Work.AXIS_Queue 
generic map (
    -- Back_Clock
    Back_Clock_Domain => Memory_Clock_Domain,
    Back_Clock_Period => Memory_Clock_Period,
    -- Input stream
    Back_Data_Length => RId_TData'length,
    Back_Num_Outst => RId_Num_Outst,
    Back_Domain => RId_Domain,
    -- Front_Clock
    Front_Clock_Domain => Memory_Clock_Domain,
    Front_Clock_Period => Memory_Clock_Period,
    -- Output stream
    Front_Data_Length => RId_Queue_TData'length,
    Front_Num_Outst => RId_Queue_Num_Outst,
    Front_Domain => RId_Queue_Domain,
    -- Other
    Capacity => RId_Num_Outst)
port map (
    -- Back_Clock
    Back_Clock_AClk => Memory_Clock_AClk,
    Back_Clock_AResetN => Memory_Clock_AResetN,
    -- Back
    Back_TData => RId_TData,
    Back_TValid => RId_TValid,
    Back_TReady => RId_TReady,
    -- Front_Clock
    Front_Clock_AClk => Memory_Clock_AClk,
    Front_Clock_AResetN => Memory_Clock_AResetN,
    -- Front
    Front_TData => RId_Queue_TData,
    Front_TValid => RId_Queue_TValid,
    Front_TReady => RId_Queue_TReady);

WId_Queue: entity Work.AXIS_Queue 
generic map (
    -- Back_Clock
    Back_Clock_Domain => Memory_Clock_Domain,
    Back_Clock_Period => Memory_Clock_Period,
    -- Input stream
    Back_Data_Length => WId_TData'length,
    Back_Num_Outst => WId_Num_Outst,
    Back_Domain => WId_Domain,    
    -- Front_Clock
    Front_Clock_Domain => Memory_Clock_Domain,
    Front_Clock_Period => Memory_Clock_Period,
    -- Output stream
    Front_Data_Length => WId_Queue_TData'length,
    Front_Num_Outst => WId_Queue_Num_Outst,
    Front_Domain => WId_Queue_Domain,
    -- Other
    Capacity => WId_Num_Outst)
port map (
    -- Back_Clock
    Back_Clock_AClk => Memory_Clock_AClk,
    Back_Clock_AResetN => Memory_Clock_AResetN,
    -- Back
    Back_TData => WId_TData,
    Back_TValid => WId_TValid,
    Back_TReady => WId_TReady,
    -- Front_Clock
    Front_Clock_AClk => Memory_Clock_AClk,
    Front_Clock_AResetN => Memory_Clock_AResetN,
    -- Output stream
    Front_TData => WId_Queue_TData,
    Front_TValid => WId_Queue_TValid,
    Front_TReady => WId_Queue_TReady);

Demuxing_Memory_Responses: process (all)
begin
    Memory_RReady <= '1';
    RId_Queue_TReady <= Memory_RValid and Memory_RLast;
    Memory_RValid_Mux <= (others => '0');
    for i in 0 to Num_Ports - 1 loop
        if i = to_integer(RId_Queue_TData) and (RId_Queue_TValid) = '1' then
            Memory_RValid_Mux(i) <= Memory_RValid;
        end if;
    end loop;

    Memory_BReady <= '1';
    WId_Queue_TReady <= Memory_BValid;
    Memory_BValid_Mux <= (others => '0');
    for i in 0 to Num_Ports - 1 loop
        if i = to_integer(WId_Queue_TData) and (WId_Queue_TValid) = '1' then
            Memory_BValid_Mux(i) <= Memory_BValid;
        end if;
    end loop;    
end process Demuxing_Memory_Responses;

Gateway0: entity Work.Memory_Gateway
generic map (
    -- Host_Clock
    Host_Clock_Domain => Host_Clock_Domain,
    Host_Clock_Period => Host_Clock_Period,
    -- Host AXI
    Host_Addr_Length => Host_Addr_Length,
    Host_Data_Length => Host_Data_Length,
    Host_Base_Addr => Host_Base_Addr,
    Host_Num_Outst => Host_Num_Outst,
    Host_Domain => Host_Domain,
    -- IRQ AXIS
    IRQ_Data_Length => IRQ_Data_Length,
    IRQ_Num_Outst => IRQ_Num_Outst,
    IRQ_Domain => IRQ_Domain,
    -- Memory_Clock
    Memory_Clock_Domain => Memory_Clock_Domain,
    Memory_Clock_Period => Memory_Clock_Period,
    -- Memory AXI
    Memory_Addr_Length => Memory_Addr_Length,
    Memory_Data_Length => Memory_Data_Length,
    Memory_Burst_Length => Memory_Burst_Length,
    Memory_Num_Outst => Memory_Num_Outst,
    Memory_Domain => Memory_Domain,
    -- OStream_Clock
    OStream_Clock_Domain => OStream0_Clock_Domain,
    OStream_Clock_Period => OStream0_Clock_Period,
    -- Read Credits AXIS
    OCredits_Num_Outst => OCredits_Num_Outst,
    OCredits_Domain => OCredits_Domain,
    -- Output Stream AXIS
    OStream_Data_Length => OStream0_Data_Length,
    OStream_Num_Outst => OStream0_Num_Outst,
    OStream_Domain => OStream0_Domain,
    -- IStream_Clock
    IStream_Clock_Domain => IStream0_Clock_Domain,
    IStream_Clock_Period => IStream0_Clock_Period,
    -- Write Credits AXIS
    ICredits_Num_Outst => ICredits_Num_Outst,
    ICredits_Domain => ICredits_Domain,
    -- Input Stream AXIS
    IStream_Data_Length => IStream0_Data_Length,
    IStream_Num_Outst => IStream0_Num_Outst,
    IStream_Domain => IStream0_Domain,
    -- Others
    DPush_Offset => (Num_Ports * 0 + 0 * 8) * 4,
    DPop_Offset => (Num_Ports * 8 + 0 * 2) * 4,
    IPush_Offset => (Num_Ports * 10 + 0 * 2) * 4,
    IPop_Offset => (Num_Ports * 12 + 0 * 2) * 4,
    IPoll_Offset => (Num_Ports * 14 + 0 * 2) * 4)
port map (
    -- Host_Clock
    Host_Clock_AClk => Host_Clock_AClk,
    Host_Clock_AResetN => Host_Clock_AResetN,
    -- Host AXI 
    Host_AWAddr => Host_AWAddr,
    Host_AWValid => Host_AWValid,
    Host_AWReady => Host_AWReady_Mux(0),
    Host_WData => Host_WData,
    Host_WStrb => Host_WStrb,
    Host_WValid => Host_WValid,
    Host_WReady => Host_WReady_Mux(0),
    Host_BResp => Host_BResp_Mux(0),
    Host_BValid => Host_BValid_Mux(0),
    Host_BReady => Host_BReady,
    Host_ARAddr => Host_ARAddr,
    Host_ARValid => Host_ARValid,
    Host_ARReady => Host_ARReady_Mux(0),
    Host_RData => Host_RData_Mux(0),
    Host_RResp => Host_RResp_Mux(0),
    Host_RValid => Host_RValid_Mux(0),
    Host_RReady => Host_RReady,
    -- IRQ AXIS
    IRQ_TStrb => IRQ_TStrb_Mux(0),
    IRQ_TValid => IRQ_TValid_Mux(0),
    IRQ_TReady => IRQ_TReady,
    -- Memory_Clock
    Memory_Clock_AClk => Memory_Clock_AClk,
    Memory_Clock_AResetN => Memory_Clock_AResetN,
    -- Memory AXI 
    Memory_AWAddr => Memory_AWAddr_Mux(0),
    Memory_AWLen => Memory_AWLen_Mux(0),
    Memory_AWValid => Memory_AWValid_Mux(0),
    Memory_AWReady => Memory_AWReady_Mux(0),
    Memory_WData => Memory_WData_Mux(0),
    Memory_WStrb => Memory_WStrb_Mux(0),
    Memory_WLast => Memory_WLast_Mux(0),
    Memory_WValid => Memory_WValid_Mux(0),
    Memory_WReady => Memory_WReady_Mux(0),
    Memory_BResp => Memory_BResp,
    Memory_BValid => Memory_BValid_Mux(0),
    Memory_BReady => open,
    Memory_ARAddr => Memory_ARAddr_Mux(0),
    Memory_ARLen => Memory_ARLen_Mux(0),
    Memory_ARValid => Memory_ARValid_Mux(0),
    Memory_ARReady => Memory_ARReady_Mux(0),
    Memory_RData => Memory_RData,
    Memory_RLast => Memory_RLast,
    Memory_RResp => Memory_RResp,
    Memory_RValid => Memory_RValid_Mux(0),
    Memory_RReady => open,
    -- OStream_Clock
    OStream_Clock_AClk => OStream0_Clock_AClk,
    OStream_Clock_AResetN => OStream0_Clock_AResetN,
    -- Read Credits AXIS
    OCredits_TValid => OCredits_TValid_Mux(0),
    OCredits_TReady => OCredits_TReady_Mux(0),
    -- Output Stream AXIS
    OStream_TData => OStream0_TData,
    OStream_TStrb => OStream0_TStrb,
    OStream_TLast => OStream0_TLast,
    OStream_TValid => OStream0_TValid,
    OStream_TReady => OStream0_TReady,
    -- IStream_Clock
    IStream_Clock_AClk => IStream0_Clock_AClk,
    IStream_Clock_AResetN => IStream0_Clock_AResetN,
    -- Write Credits AXIS
    ICredits_TValid => ICredits_TValid_Mux(0),
    ICredits_TReady => ICredits_TReady_Mux(0),
    -- Input Stream0 AXIS
    IStream_TData => IStream0_TData,
    IStream_TStrb => IStream0_TStrb,
    IStream_TLast => IStream0_TLast,
    IStream_TValid => IStream0_TValid,
    IStream_TReady => IStream0_TReady);

Gateway1: entity Work.Memory_Gateway
generic map (
    -- Host_Clock
    Host_Clock_Domain => Host_Clock_Domain,
    Host_Clock_Period => Host_Clock_Period,
    -- Host AXI
    Host_Addr_Length => Host_Addr_Length,
    Host_Data_Length => Host_Data_Length,
    Host_Base_Addr => Host_Base_Addr,
    Host_Num_Outst => Host_Num_Outst,
    Host_Domain => Host_Domain,
    -- IRQ AXIS
    IRQ_Data_Length => IRQ_Data_Length,
    IRQ_Num_Outst => IRQ_Num_Outst,
    IRQ_Domain => IRQ_Domain,
    -- Memory_Clock
    Memory_Clock_Domain => Memory_Clock_Domain,
    Memory_Clock_Period => Memory_Clock_Period,
    -- Memory AXI
    Memory_Addr_Length => Memory_Addr_Length,
    Memory_Data_Length => Memory_Data_Length,
    Memory_Burst_Length => Memory_Burst_Length,
    Memory_Num_Outst => Memory_Num_Outst,
    Memory_Domain => Memory_Domain,
    -- OStream_Clock
    OStream_Clock_Domain => OStream1_Clock_Domain,
    OStream_Clock_Period => OStream1_Clock_Period,
    -- Read Credits AXIS
    OCredits_Num_Outst => OCredits_Num_Outst,
    OCredits_Domain => Memory_Domain,
    -- Output Stream1 AXIS
    OStream_Data_Length => OStream1_Data_Length,
    OStream_Num_Outst => OStream1_Num_Outst,
    OStream_Domain => OStream1_Domain,
    -- IStream_Clock
    IStream_Clock_Domain => IStream1_Clock_Domain,
    IStream_Clock_Period => IStream1_Clock_Period,
    -- Write Credits AXIS
    ICredits_Num_Outst => ICredits_Num_Outst,
    ICredits_Domain => Memory_Domain,
    -- Input Stream AXIS
    IStream_Data_Length => IStream1_Data_Length,
    IStream_Num_Outst => IStream1_Num_Outst,
    IStream_Domain => IStream1_Domain,
    -- Others
    DPush_Offset => (Num_Ports * 0 + 1 * 8) * 4,
    DPop_Offset => (Num_Ports * 8 + 1 * 2) * 4,
    IPush_Offset => (Num_Ports * 10 + 1 * 2) * 4,
    IPop_Offset => (Num_Ports * 12 + 1 * 2) * 4,
    IPoll_Offset => (Num_Ports * 14 + 1 * 2) * 4)
port map (
    -- Host_Clock
    Host_Clock_AClk => Host_Clock_AClk,
    Host_Clock_AResetN => Host_Clock_AResetN,
    -- Host AXI 
    Host_AWAddr => Host_AWAddr,
    Host_AWValid => Host_AWValid,
    Host_AWReady => Host_AWReady_Mux(1),
    Host_WData => Host_WData,
    Host_WStrb => Host_WStrb,
    Host_WValid => Host_WValid,
    Host_WReady => Host_WReady_Mux(1),
    Host_BResp => Host_BResp_Mux(1),
    Host_BValid => Host_BValid_Mux(1),
    Host_BReady => Host_BReady,
    Host_ARAddr => Host_ARAddr,
    Host_ARValid => Host_ARValid,
    Host_ARReady => Host_ARReady_Mux(1),
    Host_RData => Host_RData_Mux(1),
    Host_RResp => Host_RResp_Mux(1),
    Host_RValid => Host_RValid_Mux(1),
    Host_RReady => Host_RReady,
    -- IRQ AXIS
    IRQ_TStrb => IRQ_TStrb_Mux(1),
    IRQ_TValid => IRQ_TValid_Mux(1),
    IRQ_TReady => IRQ_TReady,
    -- Memory_Clock
    Memory_Clock_AClk => Memory_Clock_AClk,
    Memory_Clock_AResetN => Memory_Clock_AResetN,
    -- Memory AXI 
    Memory_AWAddr => Memory_AWAddr_Mux(1),
    Memory_AWLen => Memory_AWLen_Mux(1),
    Memory_AWValid => Memory_AWValid_Mux(1),
    Memory_AWReady => Memory_AWReady_Mux(1),
    Memory_WData => Memory_WData_Mux(1),
    Memory_WStrb => Memory_WStrb_Mux(1),
    Memory_WLast => Memory_WLast_Mux(1),
    Memory_WValid => Memory_WValid_Mux(1),
    Memory_WReady => Memory_WReady_Mux(1),
    Memory_BResp => Memory_BResp,
    Memory_BValid => Memory_BValid_Mux(1),
    Memory_BReady => open,
    Memory_ARAddr => Memory_ARAddr_Mux(1),
    Memory_ARLen => Memory_ARLen_Mux(1),
    Memory_ARValid => Memory_ARValid_Mux(1),
    Memory_ARReady => Memory_ARReady_Mux(1),
    Memory_RData => Memory_RData,
    Memory_RLast => Memory_RLast,
    Memory_RResp => Memory_RResp,
    Memory_RValid => Memory_RValid_Mux(1),
    Memory_RReady => open,    
    -- OStream_Clock
    OStream_Clock_AClk => OStream1_Clock_AClk,
    OStream_Clock_AResetN => OStream1_Clock_AResetN,
    -- Read Credits AXIS
    OCredits_TValid => OCredits_TValid_Mux(1),
    OCredits_TReady => OCredits_TReady_Mux(1),
    -- Output Stream AXIS
    OStream_TData => OStream1_TData,
    OStream_TStrb => OStream1_TStrb,
    OStream_TLast => OStream1_TLast,
    OStream_TValid => OStream1_TValid,
    OStream_TReady => OStream1_TReady,
    -- IStream_Clock
    IStream_Clock_AClk => IStream1_Clock_AClk,
    IStream_Clock_AResetN => IStream1_Clock_AResetN,
    -- Write Credits AXIS
    ICredits_TValid => ICredits_TValid_Mux(1),
    ICredits_TReady => ICredits_TReady_Mux(1),
    -- Input Stream1 AXIS
    IStream_TData => IStream1_TData,
    IStream_TStrb => IStream1_TStrb,
    IStream_TLast => IStream1_TLast,
    IStream_TValid => IStream1_TValid,
    IStream_TReady => IStream1_TReady);

Muxing_Acks: process(all)
begin
    OCredits_TValid <= or OCredits_TValid_Mux;
    OCredits_TReady_Mux <= (others => '0');
    if OCredits_TValid_Mux(0) = '1' then
        OCredits_TReady_Mux(0) <= OCredits_TReady;
    elsif OCredits_TValid_Mux(1) = '1' then
        OCredits_TReady_Mux(1) <= OCredits_TReady;
    end if;
    
    ICredits_TValid <= or ICredits_TValid_Mux;
    ICredits_TReady_Mux <= (others => '0');
    if ICredits_TValid_Mux(0) = '1' then
        ICredits_TReady_Mux(0) <= ICredits_TReady(0) and ICredits_TReady(1);
    elsif ICredits_TValid_Mux(1) = '1' then
        ICredits_TReady_Mux(1) <= ICredits_TReady(0) and ICredits_TReady(1);
    end if;
end process Muxing_Acks;

end architecture Behavior;
