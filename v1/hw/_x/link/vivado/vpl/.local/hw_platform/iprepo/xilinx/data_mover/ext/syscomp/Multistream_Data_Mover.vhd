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
    -- Host AXI
    Host_Addr_Length: integer := 16;
    Host_Data_Length: integer := 32;
    Host_Base_Addr: unsigned(Host_Addr_Length - 1 downto 0) := (others => '0');
    Host_Num_Outst: integer := 16;
    Host_Clock_Id: string := "";
    -- IRQ AXIS
    IRQ_Data_Length: integer := 8 * 2;
    IRQ_Num_Outst: integer := 1;
    IRQ_Clock_Id: string := "Clock";
    -- Memory AXI
    Memory_Addr_Length: integer := 32;
    Memory_Data_Length: integer := 32;
    Memory_Id_Length: integer range 8 to 8 := 8;
    Memory_Num_Outst: integer := 16;        
    Memory_Clock_Id: string := "";
    -- Output Stream0 AXIS
    OStream0_Data_Length: integer := 32;
    OStream0_Num_Outst: integer := 16;
    OStream0_Clock_Id: string := "";
    -- Output Stream1 AXIS
    OStream1_Data_Length: integer := 32;
    OStream1_Num_Outst: integer := 16;
    OStream1_Clock_Id: string := "";
    -- Input Stream0 AXIS
    IStream0_Data_Length: integer := 32;
    IStream0_Num_Outst: integer := 16;
    IStream0_Clock_Id: string := "";
    -- Input Stream1 AXIS
    IStream1_Data_Length: integer := 32;
    IStream1_Num_Outst: integer := 16;
    IStream1_Clock_Id: string := "";
    -- Others
    Memory_Burst_Length: integer := 4;
    Num_Ports: integer := 2;
    Page_Size: integer := Num_Ports * 24 * 4);
port (
    -- Clock
    Clock_AClk: in std_ulogic;
    Clock_AResetN: in std_ulogic;
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
    -- Output Stream0 AXIS
    OStream0_TData: out u_unsigned(OStream0_Data_Length - 1 downto 0) := (others => '0');
    OStream0_TStrb: out u_unsigned(OStream0_Data_Length / 8 - 1 downto 0) := (others => '1');
    OStream0_TLast: out std_ulogic := '1';
    OStream0_TValid: out std_ulogic;
    OStream0_TReady: in std_ulogic;
    -- Output Stream1 AXIS
    OStream1_TData: out u_unsigned(OStream1_Data_Length - 1 downto 0) := (others => '0');
    OStream1_TStrb: out u_unsigned(OStream1_Data_Length / 8 - 1 downto 0) := (others => '1');
    OStream1_TLast: out std_ulogic := '1';
    OStream1_TValid: out std_ulogic;
    OStream1_TReady: in std_ulogic;
    -- Input Stream0 AXIS
    IStream0_TData: in u_unsigned(IStream0_Data_Length - 1 downto 0) := (others => '0');
    IStream0_TStrb: in u_unsigned(IStream0_Data_Length / 8 - 1 downto 0) := (others => '1');
    IStream0_TLast: in std_ulogic := '1';
    IStream0_TValid: in std_ulogic;
    IStream0_TReady: out std_ulogic := '1';
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

-- RId bypass AXIS
constant RId_Data_Length: integer := Memory_ARId'length;
constant RId_Num_Outst: integer := Memory_Num_Outst;
signal RId_TData: u_unsigned(RId_Data_Length - 1 downto 0);
signal RId_TValid: std_ulogic;
signal RId_TReady: std_ulogic := '1';

-- WId bypass AXIS
constant WId_Data_Length: integer := Memory_AWId'length;
constant WId_Num_Outst: integer := Memory_Num_Outst;
signal WId_TData: u_unsigned(WId_Data_Length - 1 downto 0);
signal WId_TValid: std_ulogic;
signal WId_TReady: std_ulogic := '1';

-- Read Acknowledgements AXIS
constant RAck_Num_Outst: integer := Memory_Num_Outst;
signal RAck_TValid: std_ulogic;
signal RAck_TReady: std_ulogic := '1';
signal RAck_TValid_Mux: std_ulogic_vector(Num_Ports - 1 downto 0);
signal RAck_TReady_Mux: std_ulogic_vector(Num_Ports - 1 downto 0) := (others => '1');

-- Write Acknowledgements AXIS
constant WAck_Num_Outst: integer := Memory_Num_Outst;
signal WAck_TValid: std_ulogic;
signal WAck_TReady: std_ulogic := '1';
signal WAck_TValid_Mux: std_ulogic_vector(0 to Num_Ports - 1);
signal WAck_TReady_Mux: std_ulogic_vector(0 to Num_Ports - 1) := (others => '1');

-- Read Credits AXIS
constant ARCredits_Num_Outst: integer := Memory_Num_Outst;
signal ARCredits_TValid: std_ulogic;
signal ARCredits_TReady: std_ulogic := '1';

-- Write Credits AXIS
constant AWCredits_Num_Outst: integer := Memory_Num_Outst;
signal AWCredits_TValid: std_ulogic;
signal AWCredits_TReady: std_ulogic := '1';

-- Write Credits AXIS
constant WCredits_Num_Outst: integer := Memory_Num_Outst;
signal WCredits_TValid: std_ulogic;
signal WCredits_TReady: std_ulogic := '1';

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

ARCredits_Sm: entity Work.Sync_Semaphore 
generic map (
    -- Give stream
    Give_Num_Outst => RAck_Num_Outst,
    -- Take stream
    Take_Num_Outst => ARCredits_Num_Outst,
    -- Other parameters 
    Initial_Value => ARCredits_Num_Outst)
port map (
    -- Clock
    Give_AClk => Clock_AClk,
    Give_AResetN => Clock_AResetN,
    -- Input stream
    Give_TValid => RAck_TValid,
    -- Output stream
    Take_TValid => ARCredits_TValid,
    Take_TReady => ARCredits_TReady);

AWCredits_Sm: entity Work.Sync_Semaphore 
generic map (
    -- Give stream
    Give_Num_Outst => WAck_Num_Outst,
    -- Take stream
    Take_Num_Outst => AWCredits_Num_Outst,
    -- Other parameters 
    Initial_Value => AWCredits_Num_Outst)
port map (
    -- Clock
    Give_AClk => Clock_AClk,
    Give_AResetN => Clock_AResetN,
    -- Input stream
    Give_TValid => WAck_TValid,
    -- Output stream
    Take_TValid => AWCredits_TValid,
    Take_TReady => AWCredits_TReady);

WCredits_Sm: entity Work.Sync_Semaphore 
generic map (
    -- Give stream
    Give_Num_Outst => WAck_Num_Outst,
    -- Take stream
    Take_Num_Outst => WCredits_Num_Outst,
    -- Other parameters 
    Initial_Value => WCredits_Num_Outst)
port map (
    -- Clock
    Give_AClk => Clock_AClk,
    Give_AResetN => Clock_AResetN,
    -- Input stream
    Give_TValid => WAck_TValid,
    -- Output stream
    Take_TValid => WCredits_TValid,
    Take_TReady => WCredits_TReady);

Muxing_Memory_Requests: block
    signal Lock_Burst_Mux: std_ulogic_vector(0 to Num_Ports - 1);
    signal Burst_Valid_Mux: std_ulogic_vector(0 to Num_Ports - 1);
begin 
    P0: process(all)
    begin
        ARCredits_TReady <= Memory_ARReady and Memory_ARValid_Mux(0) /*and ARCredits_TValid*/;
        Memory_ARId <= to_unsigned(0, Memory_ARId'Length);
        Memory_ARAddr <= Memory_ARAddr_Mux(0);
        Memory_ARLen <= Memory_ARLen_Mux(0);
        Memory_ARValid <= /*Memory_ARReady and*/ Memory_ARValid_Mux(0) and ARCredits_TValid;
        Memory_ARReady_Mux <= (others => '0');
        if Memory_ARValid_Mux(0) = '1' then
            Memory_ARReady_Mux(0) <= Memory_ARReady and ARCredits_TValid;
        elsif Memory_ARValid_Mux(1) = '1' then
            ARCredits_TReady <= Memory_ARReady and Memory_ARValid_Mux(1) /*and ARCredits_TValid*/;
            Memory_ARId <= to_unsigned(1, Memory_ARId'Length);
            Memory_ARAddr <= Memory_ARAddr_Mux(1);
            Memory_ARLen <= Memory_ARLen_Mux(1);
            Memory_ARValid <= /*Memory_ARReady and*/ ARCredits_TValid;
            Memory_ARReady_Mux(1) <= Memory_ARReady and ARCredits_TValid;
        end if;
        
        Memory_AWId <= to_unsigned(0, Memory_AWId'Length);
        Memory_AWAddr <= Memory_AWAddr_Mux(0);
        Memory_AWLen <= Memory_AWLen_Mux(0);
        AWCredits_TReady <= Memory_AWReady and Memory_AWValid_Mux(0) /*and AWCredits_Tvalid*/;    
        Memory_AWValid <= /*Memory_AWReady and*/ Memory_AWValid_Mux(0) and AWCredits_Tvalid; 
        Memory_AWReady_Mux <= (others => '0');
        if Memory_AWValid_Mux(0) = '1' then            
            Memory_AWReady_Mux(0) <= Memory_AWReady and AWCredits_Tvalid;
        elsif Memory_AWValid_Mux(1) = '1' then
            Memory_AWId <= to_unsigned(1, Memory_AWId'Length);
            Memory_AWAddr <= Memory_AWAddr_Mux(1);
            Memory_AWLen <= Memory_AWLen_Mux(1);
            AWCredits_TReady <= Memory_AWReady /*and AWCredits_Tvalid*/;    
            Memory_AWValid <= /*Memory_AWReady and*/ AWCredits_Tvalid; 
            Memory_AWReady_Mux(1) <= Memory_AWReady and AWCredits_Tvalid;
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
        
        if (not Clock_AResetN) = '1' then
            Lock_Burst_Mux <= (others => '0');
        elsif rising_edge(Clock_AClk) then
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
    -- Input stream
    Back_Data_Length => Memory_ARId'length,
    Back_Num_Outst => Memory_Num_Outst,
    Back_Clock_Id => Memory_Clock_Id,
    -- Output stream
    Front_Data_Length => RId_TData'length,
    Front_Num_Outst => RId_Num_Outst,
    Front_Clock_Id => Memory_Clock_Id)
port map (
    -- Clock
    Back_AClk => Clock_AClk,
    Back_AResetN => Clock_AResetN,
    -- Input stream
    Back_TData => Memory_ARId,
    Back_TValid => Memory_ARValid,
    -- Output stream
    Front_TData => RId_TData,
    Front_TValid => RId_TValid,
    Front_TReady => RId_TReady);

WId_Queue: entity Work.AXIS_Queue 
generic map (
    -- Input stream
    Back_Data_Length => Memory_AWId'length,
    Back_Num_Outst => Memory_Num_Outst,
    Back_Clock_Id => Memory_Clock_Id,    
    -- Output stream
    Front_Data_Length => WId_TData'length,
    Front_Num_Outst => WId_Num_Outst,
    Front_Clock_Id => Memory_Clock_Id)
port map (
    -- Clock
    Back_AClk => Clock_AClk,
    Back_AResetN => Clock_AResetN,
    -- Input stream
    Back_TData => Memory_AWId,
    Back_TValid => Memory_AWValid,
    -- Output stream
    Front_TData => WId_TData,
    Front_TValid => WId_TValid,
    Front_TReady => WId_TReady);

Demuxing_Memory_Responses: process (all)
begin
    Memory_RReady <= '1';
    RId_TReady <= Memory_RValid and Memory_RLast;
    Memory_RValid_Mux <= (others => '0');
    for i in 0 to Num_Ports - 1 loop
        if i = to_integer(RId_TData) and (RId_TValid) = '1' then
            Memory_RValid_Mux(i) <= Memory_RValid;
        end if;
    end loop;

    Memory_BReady <= '1';
    WID_TReady <= Memory_BValid;
    Memory_BValid_Mux <= (others => '0');
    for i in 0 to Num_Ports - 1 loop
        if i = to_integer(WId_TData) and (WId_TValid) = '1' then
            Memory_BValid_Mux(i) <= Memory_BValid;
        end if;
    end loop;    
end process Demuxing_Memory_Responses;

Gateway0: entity Work.Memory_Gateway
generic map (
    -- Host AXI
    Host_Addr_Length => Host_Addr_Length,
    Host_Data_Length => Host_Data_Length,
    Host_Base_Addr => Host_Base_Addr,
    Host_Num_Outst => Host_Num_Outst,
    Host_Clock_Id => Host_Clock_Id,
    -- IRQ AXIS
    IRQ_Data_Length => IRQ_Data_Length,
    IRQ_Num_Outst => IRQ_Num_Outst,
    IRQ_Clock_Id => IRQ_Clock_Id,
    -- Memory AXI
    Memory_Addr_Length => Memory_Addr_Length,
    Memory_Data_Length => Memory_Data_Length,
    Memory_Burst_Length => Memory_Burst_Length,
    Memory_Num_Outst => Memory_Num_Outst,
    Memory_Clock_Id => Memory_Clock_Id,
    -- Output Stream AXIS
    OStream_Data_Length => OStream0_Data_Length,
    OStream_Num_Outst => OStream0_Num_Outst,
    OStream_Clock_Id => OStream0_Clock_Id,
    -- Read Acknowledgements AXIS
    RAck_Num_Outst => RAck_Num_Outst,
    RAck_Clock_Id => Memory_Clock_Id,
    -- Input Stream AXIS
    IStream_Data_Length => IStream0_Data_Length,
    IStream_Num_Outst => IStream0_Num_Outst,
    IStream_Clock_Id => IStream0_Clock_Id,
    -- Write Acknowledgements AXIS
    WAck_Num_Outst => WAck_Num_Outst,
    WAck_Clock_Id => Memory_Clock_Id,
    -- Others
    DPush_Offset => (Num_Ports * 0 + 0 * 8) * 4,
    DPop_Offset => (Num_Ports * 8 + 0 * 2) * 4,
    IPush_Offset => (Num_Ports * 10 + 0 * 2) * 4,
    IPop_Offset => (Num_Ports * 12 + 0 * 2) * 4,
    IPoll_Offset => (Num_Ports * 14 + 0 * 2) * 4)
port map (
    -- Clock
    Clock_AClk => Clock_AClk,
    Clock_AResetN => Clock_AResetN,
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
    -- Output Stream AXIS
    OStream_TData => OStream0_TData,
    OStream_TStrb => OStream0_TStrb,
    OStream_TLast => OStream0_TLast,
    OStream_TValid => OStream0_TValid,
    OStream_TReady => OStream0_TReady,
    -- Read Acknowledgements AXIS
    RAck_TValid => RAck_TValid_Mux(0),
    RAck_TReady => RAck_TReady_Mux(0),
    -- Input Stream0 AXIS
    IStream_TData => IStream0_TData,
    IStream_TStrb => IStream0_TStrb,
    IStream_TLast => IStream0_TLast,
    IStream_TValid => IStream0_TValid,
    IStream_TReady => IStream0_TReady,
    -- Write Acknowledgements AXIS
    WAck_TValid => WAck_TValid_Mux(0),
    WAck_TReady => WAck_TReady_Mux(0));

Gateway1: entity Work.Memory_Gateway
generic map (
    -- Host AXI
    Host_Addr_Length => Host_Addr_Length,
    Host_Data_Length => Host_Data_Length,
    Host_Base_Addr => Host_Base_Addr,
    Host_Num_Outst => Host_Num_Outst,
    Host_Clock_Id => Host_Clock_Id,
    -- IRQ AXIS
    IRQ_Data_Length => IRQ_Data_Length,
    IRQ_Num_Outst => IRQ_Num_Outst,
    IRQ_Clock_Id => IRQ_Clock_Id,
    -- Memory AXI
    Memory_Addr_Length => Memory_Addr_Length,
    Memory_Data_Length => Memory_Data_Length,
    Memory_Burst_Length => Memory_Burst_Length,
    Memory_Num_Outst => Memory_Num_Outst,
    Memory_Clock_Id => Memory_Clock_Id,
    -- Output Stream1 AXIS
    OStream_Data_Length => OStream1_Data_Length,
    OStream_Num_Outst => OStream1_Num_Outst,
    OStream_Clock_Id => OStream1_Clock_Id,
    -- Read Acknowledgements AXIS
    RAck_Num_Outst => RAck_Num_Outst,
    RAck_Clock_Id => Memory_Clock_Id,
    -- Input Stream AXIS
    IStream_Data_Length => IStream1_Data_Length,
    IStream_Num_Outst => IStream1_Num_Outst,
    IStream_Clock_Id => IStream1_Clock_Id,
    -- Write Acknowledgements AXIS
    WAck_Num_Outst => WAck_Num_Outst,
    WAck_Clock_Id => Memory_Clock_Id,
    -- Others
    DPush_Offset => (Num_Ports * 0 + 1 * 8) * 4,
    DPop_Offset => (Num_Ports * 8 + 1 * 2) * 4,
    IPush_Offset => (Num_Ports * 10 + 1 * 2) * 4,
    IPop_Offset => (Num_Ports * 12 + 1 * 2) * 4,
    IPoll_Offset => (Num_Ports * 14 + 1 * 2) * 4)
port map (
    -- Clock
    Clock_AClk => Clock_AClk,
    Clock_AResetN => Clock_AResetN,
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
    -- Output Stream AXIS
    OStream_TData => OStream1_TData,
    OStream_TStrb => OStream1_TStrb,
    OStream_TLast => OStream1_TLast,
    OStream_TValid => OStream1_TValid,
    OStream_TReady => OStream1_TReady,
    -- Read Acknowledgements AXIS
    RAck_TValid => RAck_TValid_Mux(1),
    RAck_TReady => RAck_TReady_Mux(1),
    -- Input Stream1 AXIS
    IStream_TData => IStream1_TData,
    IStream_TStrb => IStream1_TStrb,
    IStream_TLast => IStream1_TLast,
    IStream_TValid => IStream1_TValid,
    IStream_TReady => IStream1_TReady,
    -- Write Acknowledgements AXIS
    WAck_TValid => WAck_TValid_Mux(1),
    WAck_TReady => WAck_TReady_Mux(1));

Muxing_Acks: process(all)
begin
    RAck_TValid <= or Rack_TValid_Mux;
    RAck_TReady_Mux <= (others => '0');
    if RAck_TValid_Mux(0) = '1' then
        RAck_TReady_Mux(0) <= '1';
    elsif RAck_TValid_Mux(1) = '1' then
        RAck_TReady_Mux(1) <= '1';
    end if;
    
    WAck_TValid <= or WAck_TValid_Mux;
    WAck_TReady_Mux <= (others => '0');
    if WAck_TValid_Mux(0) = '1' then
        WAck_TReady_Mux(0) <= '1';
    elsif WAck_TValid_Mux(1) = '1' then
        WAck_TReady_Mux(1) <= '1';
    end if;
end process Muxing_Acks;

end architecture Behavior;
