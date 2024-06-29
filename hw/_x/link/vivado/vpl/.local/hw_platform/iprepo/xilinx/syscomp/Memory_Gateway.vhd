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

-- TODO: Wait for burst ready in the input fifo before writing it to the memory. 
-- TODO: SRL-based FIFOs
-- TODO: Optional clock crossing on the Host-AXI.

entity Memory_Gateway is
generic (
    -- Host_Clock
    Host_Clock_Domain: string;
    Host_Clock_Period: time;
    -- Host AXI
    Host_Addr_Length: integer := 16;
    Host_Data_Length: integer := 32;
    Host_Base_Addr: unsigned(Host_Addr_Length - 1 downto 0) := (others => '0');
    Host_Burst_Length: integer := 1;
    Host_Num_Outst: integer := 16;
    Host_Domain: string := "";
    -- IRQ AXIS
    IRQ_Data_Length: integer := 8 * 2;
    IRQ_Num_Outst: integer := 1;
    IRQ_Domain: string := "";
    -- Memory_Clock
    Memory_Clock_Domain: string;
    Memory_Clock_Period: time;
    -- Memory AXI
    Memory_Id_Value: unsigned(7 downto 0) := 8x"0";
    Memory_Addr_Length: integer := 32;
    Memory_Data_Length: integer := 32;
    Memory_Burst_Length: integer := 4;
    Memory_Num_Outst: integer := 16; 
    Memory_Domain: string := "";
    -- OStream__Clock
    OStream_Clock_Domain: string;
    OStream_Clock_Period: time;
    -- Output Stream
    OStream_Data_Length: integer := 32;
    OStream_Num_Outst: integer := 16;
    OStream_Domain: string := "";
    -- Output Credits
    OCredits_Data_Length: integer := 8;
    OCredits_Num_Outst: integer := 16;
    OCredits_Domain: string := "";
    -- IStream_Clock
    IStream_Clock_Domain: string;
    IStream_Clock_Period: time;
    -- Input Stream
    IStream_Data_Length: integer := 32;
    IStream_Num_Outst: integer := 16;
    IStream_Domain: string := "";
    -- Input Credits
    ICredits_Data_Length: integer := 8;
    ICredits_Num_Outst: integer := 16;
    ICredits_Domain: string := "";
    -- Others
    DPush_Offset: integer := 0 * 4;
    DPop_Offset: integer := 8 * 4;
    IPush_Offset: integer := 10 * 4;
    IPop_Offset: integer := 12 * 4;
    IPoll_Offset: integer := 14 * 4;
    Page_Size: integer := 16 * 4);
port (
    -- Host_Clock
    Host_Clock_AClk: in std_ulogic;
    Host_Clock_AResetN: in std_ulogic;
    -- Host AXI
    Host_AWAddr: in u_unsigned(Host_Addr_Length - 1 downto 0) := (others => '0');
    Host_AWProt: in u_unsigned(2 downto 0) := "000";
    Host_AWValid: in std_ulogic;
    Host_AWReady: out std_ulogic;
    Host_WData: in u_unsigned(Host_Data_Length - 1 downto 0) := (others => '0');
    Host_WStrb: in u_unsigned(Host_Data_Length / 8 - 1 downto 0) := (others => '1');
    Host_WValid: in std_ulogic;
    Host_WReady: out std_ulogic;
    Host_BResp: out u_unsigned(1 downto 0) := "10";
    Host_BValid: out std_ulogic;
    Host_BReady: in std_ulogic;
    Host_ARAddr: in u_unsigned(Host_Addr_Length - 1 downto 0) := (others => '0');
    Host_ARProt: in u_unsigned(2 downto 0) := "000";
    Host_ARValid: in std_ulogic;
    Host_ARReady: out std_ulogic;
    Host_RData: out u_unsigned(Host_Data_Length - 1 downto 0) := (others => '0');
    Host_RResp: out u_unsigned(1 downto 0) := "10";
    Host_RValid: out std_ulogic;
    Host_RReady: in std_ulogic;
    -- IRQ stream
    IRQ_TData: out u_unsigned(IRQ_Data_Length - 1 downto 0) := (others => '0');
    IRQ_TStrb: out u_unsigned(IRQ_Data_Length / 8 - 1 downto 0) := (others => '1');
    IRQ_TLast: out std_ulogic := '1';
    IRQ_TValid: out std_ulogic;
    IRQ_TReady: in std_ulogic;    
    -- Memory_Clock
    Memory_Clock_AClk: in std_ulogic;
    Memory_Clock_AResetN: in std_ulogic;
    -- Memory AXI
    Memory_AWId: out u_unsigned(7 downto 0) := Memory_Id_Value;
    Memory_AWAddr: out u_unsigned(Memory_Addr_Length - 1 downto 0) := (others => '0');
    Memory_AWProt: out u_unsigned(2 downto 0) := "000";
    Memory_AWLen: out u_unsigned(7 downto 0) := to_unsigned(Memory_Burst_Length - 1, 8);
    Memory_AWValid: out std_ulogic;
    Memory_AWReady: in std_ulogic;
    Memory_WData: out u_unsigned(Memory_Data_Length - 1 downto 0) := (others => '0');
    Memory_WStrb: out u_unsigned(Memory_Data_Length / 8 - 1 downto 0) := (others => '1');
    Memory_WLast: out std_ulogic;
    Memory_WValid: out std_ulogic;
    Memory_WReady: in std_ulogic;
    Memory_BId: in u_unsigned(7 downto 0) := Memory_Id_Value;
    Memory_BResp: in u_unsigned(1 downto 0) := "10";
    Memory_BValid: in std_ulogic;
    Memory_BReady: out std_ulogic;
    Memory_ARId: out u_unsigned(7 downto 0) := Memory_Id_Value;
    Memory_ARAddr: out u_unsigned(Memory_Addr_Length - 1 downto 0) := (others => '0');
    Memory_ARProt: out u_unsigned(2 downto 0) := "000";
    Memory_ARLen: out u_unsigned(7 downto 0) := to_unsigned(Memory_Burst_Length - 1, 8);
    Memory_ARValid: out std_ulogic;
    Memory_ARReady: in std_ulogic;
    Memory_RId: in u_unsigned(7 downto 0) := Memory_Id_Value;
    Memory_RData: in u_unsigned(Memory_Data_Length - 1 downto 0) := (others => '0');
    Memory_RLast: in std_ulogic := '1';
    Memory_RResp: in u_unsigned(1 downto 0) := "10";
    Memory_RValid: in std_ulogic;
    Memory_RReady: out std_ulogic;
    -- OStream_Clock
    OStream_Clock_AClk: in std_ulogic;
    OStream_Clock_AResetN: in std_ulogic;
    -- Output Stream AXIS
    OStream_TData: out u_unsigned(OStream_Data_Length - 1 downto 0) := (others => '0');
    OStream_TStrb: out u_unsigned(OStream_Data_Length / 8 - 1 downto 0) := (others => '1');
    OStream_TLast: out std_ulogic := '1';
    OStream_TValid: out std_ulogic;
    OStream_TReady: in std_ulogic;
    -- Read Credits
    OCredits_TData: out u_unsigned(OCredits_Data_Length - 1 downto 0) := (others => '0');
    OCredits_TStrb: out u_unsigned(OCredits_Data_Length / 8 - 1 downto 0) := (others => '1');
    OCredits_TLast: out std_ulogic := '1';
    OCredits_TValid: out std_ulogic;
    OCredits_TReady: in std_ulogic;
    -- IStream_Clock
    IStream_Clock_AClk: in std_ulogic;
    IStream_Clock_AResetN: in std_ulogic;
    -- Input Stream 
    IStream_TData: in u_unsigned(IStream_Data_Length - 1 downto 0) := (others => '0');
    IStream_TStrb: in u_unsigned(IStream_Data_Length / 8 - 1 downto 0) := (others => '1');
    IStream_TLast: in std_ulogic := '1';
    IStream_TValid: in std_ulogic;
    IStream_TReady: out std_ulogic;
    -- Input Credits
    ICredits_TData: out u_unsigned(ICredits_Data_Length - 1 downto 0) := (others => '0');
    ICredits_TStrb: out u_unsigned(ICredits_Data_Length / 8 - 1 downto 0) := (others => '1');
    ICredits_TLast: out std_ulogic := '1';
    ICredits_TValid: out std_ulogic;
    ICredits_TReady: in std_ulogic);
    -- Constants
    constant Word_Size: integer := Memory_RData'Length / 8;
    constant Burst_Size: integer := Memory_Burst_Length * Word_Size;
begin   
end Memory_Gateway;

architecture Behavior of Memory_Gateway is

constant Num_Queues: integer := 7;

-- Host Mux.
type Host_Resp_Array is array (0 to Num_Queues - 1) of u_unsigned(1 downto 0);
type Host_Data_Array is array (0 to Num_Queues - 1) of u_unsigned(Host_Data_Length - 1 downto 0);
signal Host_AWReady_Mux: std_ulogic_vector(0 to Num_Queues - 1);
signal Host_WReady_Mux: std_ulogic_vector(0 to Num_Queues - 1);
signal Host_BResp_Mux: Host_Resp_Array;
signal Host_BValid_Mux: std_ulogic_vector(0 to Num_Queues - 1);
signal Host_ARReady_Mux: std_ulogic_vector(0 to Num_Queues - 1);
signal Host_RData_Mux: Host_Data_Array;
signal Host_RResp_Mux: Host_Resp_Array;
signal Host_RValid_Mux: std_ulogic_vector(0 to Num_Queues - 1);

-- Address map.
constant RDPush_Offset: integer := DPush_Offset + 0 * 4;
constant WDPush_Offset: integer := DPush_Offset + 4 * 4;
--
constant RDPop_Offset: integer := DPop_Offset + 0 * 4;
constant WDPop_Offset: integer := DPop_Offset + 1 * 4;
--
constant RIPush_Offset: integer := IPush_Offset + 0 * 4;
constant WIPush_Offset: integer := IPush_Offset + 1 * 4;
--
constant RIPop_Offset: integer := IPop_Offset + 0 * 4;
constant WIPop_Offset: integer := IPop_Offset + 1 * 4;
--
constant RIPoll_Offset: integer := IPoll_Offset + 0 * 4;
constant WIPoll_Offset: integer := IPoll_Offset + 1 * 4;

begin

Host_Mux: process (all)
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
    for i in 0 to Num_Queues - 1 loop
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
end process Host_Mux;

Read: block

-- ARCredits AXIS.
constant ARCredits_Domain: string := Memory_Domain;
constant ARCredits_Data_Length: integer := Memory_Data_Length;
constant ARCredits_Num_Outst: integer := Memory_Num_Outst; 
signal ARCredits_TValid: std_ulogic;
signal ARCredits_TReady: std_ulogic;

-- Memory Read Response AXIS.
constant RResp_Domain: string := OStream_Domain;
constant RResp_Data_Length: integer := OStream_Data_Length;
constant RResp_Num_Outst: integer := OStream_Num_Outst;
signal RResp_TData: u_unsigned(RResp_Data_Length - 1 downto 0) := (others => '0');
signal RResp_TLast: std_ulogic;
signal RResp_TValid: std_ulogic;
signal RResp_TReady: std_ulogic;

-- Read_Done AXIS.
constant Read_Done_Domain: string := OStream_Domain;
constant Read_Done_Data_Length: integer := 8;
constant Read_Done_Num_Outst: integer := Host_Num_Outst;
signal Read_Done_TData: u_unsigned(Read_Done_Data_Length - 1 downto 0) := (others => '0');
signal Read_Done_TValid: std_ulogic;
signal Read_Done_TReady: std_ulogic;

-- OAck AXIS.
constant OAck_Domain: string := OStream_Domain;
constant OAck_Data_Length: integer := OCredits_Data_Length;
constant OAck_Num_Outst: integer := OCredits_Num_Outst; 
signal OAck_TValid: std_ulogic;
signal OAck_TReady: std_ulogic;

-- SCredits AXIS.
constant SCredits_Domain: string := Memory_Domain;
constant SCredits_Data_Length: integer := Memory_Data_Length;
constant SCredits_Num_Outst: integer := Memory_Num_Outst; 
signal SCredits_TValid: std_ulogic;
signal SCredits_TReady: std_ulogic_vector(0 to 1);

begin

ARCredits_Smphr: entity work.Take_Const_Smphr 
generic map (
    -- Give_Clock
    Give_Clock_Domain => Memory_Clock_Domain,
    Give_Clock_Period => Memory_Clock_Period,
    -- Front_Clock
    Value_Clock_Domain => Memory_Clock_Domain,
    Value_Clock_Period => Memory_Clock_Period,
    -- Give
    Give_Num_Outst => SCredits_Num_Outst,
    Give_Domain => SCredits_Domain,        
    -- Value
    Value_Domain => ARCredits_Domain,
    -- Other
    Capacity => SCredits_Num_Outst,
    Initial_Size => SCredits_Num_Outst)
port map (
    -- Give_Clock
    Give_Clock_AClk => Memory_Clock_AClk,
    Give_Clock_AResetN => Memory_Clock_AResetN,
    -- Value_Clock
    Value_Clock_AClk => Memory_Clock_AClk,
    Value_Clock_AResetN => Memory_Clock_AResetN,
    -- Input stream
    Give_TData => 8x"1",
    Give_TValid => SCredits_TValid and SCredits_TReady(1),
    Give_TReady => SCredits_TReady(0),
    -- Take
    Take_TData => 8x"1",
    -- Value
    Value_TValid => ARCredits_TValid,
    Value_TReady => ARCredits_TReady);

Request_Address: block

-- Registers
signal Size: u_unsigned(31 downto 0);
signal Offset: u_unsigned(31 downto 0);    
signal Base: u_unsigned(31 downto 0);
-- Args
constant Args_Domain: string := Memory_Domain;
constant Args_Data_Length: integer := 32 * 4;
constant Args_Num_Outst: integer := 32;
signal Args_TData: u_unsigned(Args_Data_Length - 1 downto 0) := (others => '0');
signal Args_TValid: std_ulogic;
signal Args_TReady: std_ulogic := '1';
-- Rets
constant Rets_Domain: string := Memory_Domain;
-- 
signal Start: std_ulogic;
signal Is_Running: std_ulogic;
signal Read: std_ulogic;
signal Addr_Counter: u_unsigned(Offset'length - 1 downto CLog2(Burst_Size));
signal Addr_Reg: u_unsigned(Base'length - 1 downto 0);
signal Size_Counter: u_unsigned(Size'length - 1 downto CLog2(Burst_Size));
signal Burst_Counter: u_unsigned(CLog2(Burst_Size) - 1 downto CLog2(Word_Size));
signal Is_Last_Burst: std_ulogic;
signal Is_Last_Word: std_ulogic;

begin

Scalars: entity Work.Host_Gateway
generic map (
    -- Host_Clock
    Host_Clock_Domain => Host_Clock_Domain,
    Host_Clock_Period => Host_Clock_Period,
    -- Args_Clock
    Args_Clock_Domain => Memory_Clock_Domain,
    Args_Clock_Period => Memory_Clock_Period,
    -- Rets Clock
    Rets_Clock_Domain => Memory_Clock_Domain,
    Rets_Clock_Period => Memory_Clock_Period,
    -- Host AXI
    Host_Domain => Host_Domain,
    Host_Addr_Length => Host_Addr_Length,
    Host_Data_Length => Host_Data_Length,
    Host_Base_Addr => Host_Base_Addr,
    Host_Num_Outst => Host_Num_Outst,
    -- Args AXIS
    Args_Domain => Args_Domain,
    Args_Data_Length => Args_Data_Length,
    Args_Num_Outst => Args_Num_Outst,
    -- Rets
    Rets_Domain => Rets_Domain,
    -- Write
    Write_Domain => Args_Domain,
    -- Read
    Read_Domain => Rets_Domain,
    -- Others
    Args_Offset => RDPush_Offset)
port map (
    -- Host clock
    Host_Clock_AClk => Host_Clock_AClk,
    Host_Clock_AResetN => Host_Clock_AResetN,
    -- Args clock
    Args_Clock_AClk => Memory_Clock_AClk,
    Args_Clock_AResetN => Memory_Clock_AResetN,
    -- Rets clock
    Rets_Clock_AClk => Memory_Clock_AClk,
    Rets_Clock_AResetN => Memory_Clock_AResetN,
    -- Host AXI
    Host_AWAddr => Host_AWAddr,
    Host_AWProt => Host_AWProt,
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
    Host_ARProt => Host_ARProt,
    Host_ARValid => Host_ARValid,
    Host_ARReady => Host_ARReady_Mux(0),
    Host_RData => Host_RData_Mux(0),
    Host_RResp => Host_RResp_Mux(0),
    Host_RValid => Host_RValid_Mux(0),
    Host_RReady => Host_RReady,
    -- Args AXIS
    Args_TData => Args_TData,
    Args_TValid => Args_TValid,
    Args_TReady => Args_TReady);

Address_Gen: process (all) 
    impure function Read_Fn(ARCredits_TValid_Mask: std_ulogic := '0'; Memory_ARReady_Mask: std_ulogic := '0') return std_ulogic is
    begin
        return (ARCredits_TValid or ARCredits_TValid_Mask) and Is_Running
            and (not Is_Last_Word or (Is_Last_Word and (Memory_ARReady or Memory_ARReady_Mask)));
    end function Read_Fn;
    
    impure function Start_Fn(Args_TValid_Mask: std_ulogic := '0') return std_ulogic is
    begin
        return (Args_TValid or Args_TValid_Mask) and (not Is_Running or (Read_Fn and Is_Last_Burst and Is_Last_Word));
    end function Start_Fn;            
begin
    Offset <= Args_TData(Offset'length + 0 * 32 - 1 downto 0 * 32);
    Base <= Args_TData(Base'length + 1 * 32 - 1 downto 1 * 32);
    Size <= Args_TData(Size'length + 2 * 32 - 1 downto 2 * 32);    
    
    Is_Last_Word <= '1' when Burst_Counter = 0 else '0';
    Is_Last_Burst <= '1' when Size_Counter = 0 else '0';
    Read <= Read_Fn;
    Start <= Start_Fn;
        
    if Memory_Clock_AResetN /= '1' then
        Addr_Counter <= (others => '0');
        Addr_Reg <= (others => '0');
        Size_Counter <= (others => '0');
        Burst_Counter <= (others => '0');
        Is_Running <= '0';
    elsif rising_edge(Memory_Clock_AClk) then
        if (Read) = '1' then
            Is_Running <= '1';
            Burst_Counter <= Burst_Counter - 1;
            if Is_Last_Word = '1' then
                Burst_Counter <= to_unsigned(Memory_Burst_Length - 1, Burst_Counter'length);
                Addr_Counter <= Addr_Counter + 1;
                Size_Counter <= Size_Counter - 1;
                if (Is_Last_Burst) = '1' then
                    Is_Running <= '0';
                    Addr_Counter <= Addr_Counter;
                    Size_Counter <= Size_Counter;
                end if;
            end if;              
        end if;
        if (Start) = '1' then
            Burst_Counter <= to_unsigned(Memory_Burst_Length - 1, Burst_Counter'length);
            Addr_Counter <= Offset(Addr_Counter'range);
            Addr_Reg <= Base(Addr_Reg'range);
            Size_Counter <= Size(Size_Counter'range);
            Is_Running <= '1';
        end if;
    end if;
    
    ARCredits_TReady <= Is_Last_Word and Read_Fn(ARCredits_TValid_Mask => '1');
    Memory_ARValid <= Is_Last_Word and Read_Fn(Memory_ARReady_Mask => '1');
    Memory_ARAddr <= resize(Addr_Reg & Addr_Counter & to_unsigned(0, CLog2(Burst_Size)), Memory_ARAddr'Length);
    Args_TReady <= Start_Fn(Args_TValid_Mask => '1');
end process Address_Gen;

end block Request_Address;

RResp_Queue: entity Work.AXIS_Queue 
generic map (
    -- Back_Clock
    Back_Clock_Period => Memory_Clock_Period,
    Back_Clock_Domain => Memory_Clock_Domain,
    -- Front_Clock
    Front_Clock_Period => OStream_Clock_Period,    
    Front_Clock_Domain => OStream_Clock_Domain,
    -- Back
    Back_Domain => Memory_Domain,
    Back_Data_Length => Memory_RData'Length,
    Back_Num_Outst => Memory_Num_Outst,
    -- Front
    Front_Domain => RResp_Domain,
    Front_Data_Length => RResp_TData'Length,
    Front_Num_Outst => RResp_Num_Outst,
    -- Other
    Capacity => Memory_Num_Outst)
port map (
    -- Clock
    Back_Clock_AClk => Memory_Clock_AClk,
    Back_Clock_AResetN => Memory_Clock_AResetN,
    -- Clock
    Front_Clock_AClk => OStream_Clock_AClk,
    Front_Clock_AResetN => OStream_Clock_AResetN,
    -- Input stream
    Back_TData => Memory_RData,
    Back_TLast => Memory_RLast,
    Back_TValid => Memory_RValid,
    Back_TReady => Memory_RReady,
    -- Output stream
    Front_TData => RResp_TData,
    Front_TLast => RResp_TLast,
    Front_TValid => RResp_TValid,
    Front_TReady => RResp_TReady);

Waiting_For_Response: block

-- Registers
signal Size: u_unsigned(31 downto 0);
-- Args
constant Args_Domain: string := Memory_Domain;
constant Args_Data_Length: integer := 32 * 4;
constant Args_Num_Outst: integer := 32;
signal Args_TData: u_unsigned(Args_Data_Length - 1 downto 0) := (others => '0');
signal Args_TValid: std_ulogic;
signal Args_TReady: std_ulogic := '1';
--
signal Size_Counter: u_unsigned(Size'length - 1 downto CLog2(Burst_Size));
signal Is_Last_Word: std_ulogic;
signal Is_Last_Burst: std_ulogic;
signal Is_Running: std_ulogic;
signal Receive: std_ulogic;
signal Start: std_ulogic;

begin
    
Scalars: entity Work.Host_Gateway
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
    -- Args_Clock
    Args_Clock_Domain => OStream_Clock_Domain,
    Args_Clock_Period => OStream_Clock_Period,
    -- Argument AXIS
    Args_Data_Length => Args_Data_Length,
    Args_Num_Outst => Args_Num_Outst,
    Args_Domain => Args_Domain,
    -- Rets_Clock
    Rets_Clock_Domain => OStream_Clock_Domain,
    Rets_Clock_Period => OStream_Clock_Period,
    -- Rets
    Rets_Domain => Args_Domain,
    -- Write
    Write_Domain => Args_Domain,
    -- Read
    Read_Domain => Args_Domain,
    -- Others
    Args_Offset => RDPush_Offset)
port map (
    -- Host clock
    Host_Clock_AClk => Host_Clock_AClk,
    Host_Clock_AResetN => Host_Clock_AResetN,
    -- Args clock
    Args_Clock_AClk => OStream_Clock_AClk,
    Args_Clock_AResetN => OStream_Clock_AResetN,
    -- Rets clock
    Rets_Clock_AClk => OStream_Clock_AClk,
    Rets_Clock_AResetN => OStream_Clock_AResetN,
    -- Host AXI
    Host_AWAddr => Host_AWAddr,
    Host_AWProt => Host_AWProt,
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
    Host_ARProt => Host_ARProt,
    Host_ARValid => Host_ARValid,
    Host_ARReady => Host_ARReady_Mux(1),
    Host_RData => Host_RData_Mux(1),
    Host_RResp => Host_RResp_Mux(1),
    Host_RValid => Host_RValid_Mux(1),
    Host_RReady => Host_RReady,
    -- Args AXIS
    Args_TData => Args_TData,
    Args_TValid => Args_TValid,
    Args_TReady => Args_TReady);

P0: process (all)
begin
    Size <= Args_TData(Size'Length + 2 * 32 - 1 downto 2 * 32);
    Is_Last_Word <= RResp_TLast;
    Is_Last_Burst <= Size_Counter ?= 0;
    Receive <= RResp_TValid and OStream_TReady and (not Is_Last_Word or (Is_Last_Word and OAck_TReady)) and Is_Running;
    Start <= Args_TValid and (not Is_Running or (Receive and Is_Last_Burst and Is_Last_Word));

    if OStream_Clock_AResetN /= '1' then
        Size_Counter <= (others => '0');
        Is_Running <= '0';
    elsif rising_edge(OStream_Clock_AClk) then
        if Receive = '1' then
            Is_Running <= '1';
            if Is_Last_Word = '1' then              
                Size_Counter <= Size_Counter - 1;
                if (Is_Last_Burst) = '1' then
                    Is_Running <= '0';
                    Size_Counter <= Size_Counter;
                end if;
            end if;
        end if;
        if Start = '1' then
            Is_Running <= '1';
            Size_Counter <= Size(Size_Counter'range);
        end if;
    end if;

    OAck_TValid <= (RResp_TValid and Is_Last_Word /*and OAck_TReady*/) and OStream_TReady and Is_Running;

    RResp_TReady <= RResp_TValid and (not Is_Last_Word or (Is_Last_Word and OAck_TReady)) and OStream_TReady and Is_Running;

    OStream_TData <= RResp_TData;
    OStream_TValid <= RResp_TValid and /*OStream_TReady and*/ (not Is_Last_Word or (Is_Last_Word and OAck_TReady)) and Is_Running;

    Args_TReady <= /*Args_TValid and*/ (not Is_Running or (Is_Running and Is_Last_Burst and Is_Last_Word));
    
    Read_Done_TValid <= Receive and Is_Last_Burst and Is_Last_Word;
end process;

end block Waiting_For_Response;

OCredits_Smphr: entity work.Take_Const_Smphr 
generic map (
    -- Give
    Give_Clock_Domain => OStream_Clock_Domain,
    Give_Clock_Period => OStream_Clock_Period,
    -- Value_Clock
    Value_Clock_Domain => Memory_Clock_Domain,
    Value_Clock_Period => Memory_Clock_Period,
    -- Give
    Give_Domain => OAck_Domain,
    Give_Num_Outst => OAck_Num_Outst,
    -- Value
    Value_Domain => SCredits_Domain,
    -- Other
    Capacity => OAck_Num_Outst)
port map (
    -- Give Clock
    Give_Clock_AClk => OStream_Clock_AClk,
    Give_Clock_AResetN => OStream_Clock_AResetN,
    -- Value Clock
    Value_Clock_AClk => Memory_Clock_AClk,
    Value_Clock_AResetN => Memory_Clock_AResetN,
    -- Give
    Give_TData => 8x"1",
    Give_TValid => OAck_TValid,
    Give_TReady => OAck_TReady,
    -- Take
    Take_TData => 8x"1",
    -- Value
    Value_TValid => SCredits_TValid,
    Value_TReady => SCredits_TReady(0) and SCredits_TReady(1));

OCredits_TData <= resize(8x"1", OCredits_TData'Length);
OCredits_TValid <= SCredits_TValid and SCredits_TReady(0);
SCredits_TReady(1) <= OCredits_TReady;

Read_IRQ: block 

-- Args
constant Args_Domain: string := Host_Domain;  
constant Args_Data_Length: integer := 32;
constant Args_Num_Outst: integer := 32;
signal Args_TData: u_unsigned(Args_Data_Length - 1 downto 0) := (others => '0');
signal Args_TValid: std_ulogic;
signal Args_TReady: std_ulogic := '1';
-- Rets
constant Rets_Domain: string := Host_Domain;
constant Rets_Data_Length: integer := 32;
constant Rets_Num_Outst: integer := 32;
signal Rets_TData: u_unsigned(Rets_Data_Length - 1 downto 0) := (others => '0');
signal Rets_TValid: std_ulogic;
signal Rets_TReady: std_ulogic := '1';
-- Sm
constant Sm_Domain: string := IRQ_Domain;
constant Sm_Num_Outst: integer := IRQ_Num_Outst;
signal Sm_TData: u_unsigned(Get_Smphr_Size(Read_Done_Num_Outst) * 8 - 1 downto 0);
signal Sm_TValid: std_ulogic;
signal Sm_TReady: std_ulogic;
--
signal Args_Num_Rets: u_unsigned(7 downto 0);    

begin

Scalars: entity Work.Host_Gateway
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
    -- Args_Clock
    Args_Clock_Domain => Host_Clock_Domain,
    Args_Clock_Period => Host_Clock_Period,
    -- Args AXIS
    Args_Data_Length => Args_Data_Length,
    Args_Num_Outst => Args_Num_Outst,
    Args_Domain => Args_Domain,
     -- Rets_Clock
    Rets_Clock_Domain => Host_Clock_Domain,
    Rets_Clock_Period => Host_Clock_Period,
   -- Return AXIS
    Rets_Data_Length => Rets_Data_Length,
    Rets_Num_Outst => Rets_Num_Outst,
    Rets_Domain => Rets_Domain,
    -- Write
    Write_Domain => Args_Domain,
    -- Read
    Read_Domain => Rets_Domain,
    -- Others
    Args_Offset => RIPush_Offset,
    Rets_Offset => RIPop_Offset,
    Read_Offset => RIPoll_Offset)
port map (
    -- Host clock
    Host_Clock_AClk => Host_Clock_AClk,
    Host_Clock_AResetN => Host_Clock_AResetN,
    -- Args clock
    Args_Clock_AClk => Host_Clock_AClk,
    Args_Clock_AResetN => Host_Clock_AResetN,
    -- Rets clock
    Rets_Clock_AClk => Host_Clock_AClk,
    Rets_Clock_AResetN => Host_Clock_AResetN,
    -- Host AXI
    Host_AWAddr => Host_AWAddr,
    Host_AWProt => Host_AWProt,
    Host_AWValid => Host_AWValid,
    Host_AWReady => Host_AWReady_Mux(2),
    Host_WData => Host_WData,
    Host_WStrb => Host_WStrb,
    Host_WValid => Host_WValid,
    Host_WReady => Host_WReady_Mux(2),
    Host_BResp => Host_BResp_Mux(2),
    Host_BValid => Host_BValid_Mux(2),
    Host_BReady => Host_BReady,
    Host_ARAddr => Host_ARAddr,
    Host_ARProt => Host_ARProt,
    Host_ARValid => Host_ARValid,
    Host_ARReady => Host_ARReady_Mux(2),
    Host_RData => Host_RData_Mux(2),
    Host_RResp => Host_RResp_Mux(2),
    Host_RValid => Host_RValid_Mux(2),
    Host_RReady => Host_RReady,
    -- Args AXIS
    Args_TData => Args_TData,
    Args_TValid => Args_TValid,
    Args_TReady => Args_TReady,
    -- Rets AXIS
    Rets_TData => Rets_TData,
    Rets_TValid => Rets_TValid,
    Rets_TReady => open);

Args_Num_Rets <= resize(Args_TData, Args_Num_Rets'Length);

IRQ_Smphr: entity work.Take_Delta_Smphr 
generic map(
    -- Give_Clock
    Give_Clock_Domain => OStream_Clock_Domain,
    Give_Clock_Period => OStream_Clock_Period,
    -- Give AXIS
    Give_Domain => Read_Done_Domain,
    Give_Num_Outst => Read_Done_Num_Outst,
    -- Take_Clock
    Take_Clock_Domain => Host_Clock_Domain,
    Take_Clock_Period => Host_Clock_Period,
    -- Take
    Take_Domain => Args_Domain,
    Take_Num_Outst => Args_Num_Outst,
    -- Value_Clock
    Value_Clock_Domain => Host_Clock_Domain,
    Value_Clock_Period => Host_Clock_Period,
    -- Value
    Value_Domain => Sm_Domain,
    Value_Num_Outst => Sm_Num_Outst,
    -- Other
    Give_Capacity => Read_Done_Num_Outst,
    Take_Capacity => Args_Num_Outst)
port map(
    -- Give_Clock
    Give_Clock_AClk => OStream_Clock_AClk,
    Give_Clock_AResetN => OStream_Clock_AResetN,
    -- Give
    Give_TData => 8x"1",
    Give_TValid => Read_Done_TValid,
    Give_TReady => open,
    -- Take_Clock
    Take_Clock_AClk => Host_Clock_AClk,
    Take_Clock_AResetN => Host_Clock_AResetN,
    -- Take
    Take_TData => Args_Num_Rets,
    Take_TReady => Args_TReady,
    Take_TValid => Args_TValid,
    -- Value_Clock
    Value_Clock_AClk => Host_Clock_AClk,
    Value_Clock_AResetN => Host_Clock_AResetN,
    -- Value
    Value_TData => Sm_TData,
    Value_TValid => Sm_TValid,
    Value_TReady => Sm_TReady);  
Sm_TReady <= Rets_TReady and IRQ_TReady;
Rets_TData <= resize(Sm_TData, Rets_TData'length);
Rets_TValid <= Sm_TValid and IRQ_TReady;    
IRQ_TData(7 downto 0) <= Sm_TData;   
IRQ_TStrb(0) <= Sm_TValid and Rets_TReady;    

end block Read_IRQ;

end block Read;

Write: block

-- AWCredits AXIS.
constant AWCredits_Domain: string := Memory_Domain;
constant AWCredits_Data_Length: integer := Memory_Data_Length;
constant AWCredits_Num_Outst: integer := Memory_Num_Outst; 
signal AWCredits_TValid: std_ulogic;
signal AWCredits_TReady: std_ulogic;

-- WCredits AXIS.
constant WCredits_Domain: string := Memory_Domain;
constant WCredits_Data_Length: integer := Memory_Data_Length;
constant WCredits_Num_Outst: integer := Memory_Num_Outst; 
signal WCredits_TValid: std_ulogic;
signal WCredits_TReady: std_ulogic;

-- IBuffer AXIS.
constant IBuffer_Domain: string := Memory_Domain;
constant IBuffer_Data_Length: integer := Memory_Data_Length;
constant IBuffer_Num_Outst: integer := IStream_Num_Outst * IStream_Data_Length / Memory_Data_Length;
constant IBuffer_TUser_Width: integer := 1;
signal IBuffer_TData: u_unsigned(IBuffer_Data_Length - 1 downto 0) := (others => '0');
signal IBuffer_TLast: std_ulogic := '1';
signal IBuffer_TUser: u_unsigned(IBuffer_TUser_Width - 1 downto 0) := (others => '0');
signal IBuffer_TValid: std_ulogic;
signal IBuffer_TReady: std_ulogic;

-- Memory Write Response AXIS.
constant WResp_Domain: string := Memory_Domain;
constant WResp_Data_Length: integer := 8;
constant WResp_Num_Outst: integer := Memory_Num_Outst;
signal WResp_TData: u_unsigned(WResp_Data_Length - 1 downto 0) := (others => '0');
signal WResp_TValid: std_ulogic;
signal WResp_TReady: std_ulogic;

-- Write_Done AXIS.
constant Write_Done_Domain: string := Memory_Domain;
constant Write_Done_Data_Length: integer := 8;
constant Write_Done_Num_Outst: integer := Host_Num_Outst;
signal Write_Done_TData: u_unsigned(Write_Done_Data_Length - 1 downto 0) := (others => '0');
signal Write_Done_TValid: std_ulogic;
signal Write_Done_TReady: std_ulogic;

-- IAck
constant IAck_Domain: string := Memory_Domain;
constant IAck_Num_Outst: integer := 32;
signal IAck_TData: u_unsigned(31 downto 0) := (others => '0');
signal IAck_TValid: std_ulogic;
signal IAck_TReady: std_ulogic;

-- SCredits
constant SCredits_Domain: string := Memory_Domain;
constant SCredits_Num_Outst: integer := 32;
signal SCredits_TData: u_unsigned(31 downto 0) := (others => '0');
signal SCredits_TValid: std_ulogic;
signal SCredits_TReady: std_ulogic_vector(0 to 2);

begin

AWCredits_Smphr: entity work.Take_Const_Smphr 
generic map (
    -- Give_Clock
    Give_Clock_Domain => Memory_Clock_Domain,
    Give_Clock_Period => Memory_Clock_Period,
    -- Front_Clock
    Value_Clock_Domain => Memory_Clock_Domain,
    Value_Clock_Period => Memory_Clock_Period,
    -- Give
    Give_Num_Outst => SCredits_Num_Outst,
    Give_Domain => SCredits_Domain,        
    -- Value
    Value_Domain => AWCredits_Domain,
    -- Other
    Capacity => SCredits_Num_Outst,
    Initial_Size => SCredits_Num_Outst)
port map (
    -- Give_Clock
    Give_Clock_AClk => Memory_Clock_AClk,
    Give_Clock_AResetN => Memory_Clock_AResetN,
    -- Value_Clock
    Value_Clock_AClk => Memory_Clock_AClk,
    Value_Clock_AResetN => Memory_Clock_AResetN,
    -- Input stream
    Give_TData => 8x"1",
    Give_TValid => SCredits_TValid and SCredits_TReady(1) and SCredits_TReady(2),
    Give_TReady => SCredits_TReady(0),
    -- Take
    Take_TData => 8x"1",
    -- Value
    Value_TValid => AWCredits_TValid,
    Value_TReady => AWCredits_TReady);
    
Requesting_Address: block
    
-- Registers
signal Size: u_unsigned(31 downto 0);
signal Offset: u_unsigned(31 downto 0);    
signal Base: u_unsigned(31 downto 0);
-- Args
constant Args_Domain: string := Memory_Domain;
constant Args_Data_Length: integer := 32 * 4;
constant Args_Num_Outst: integer := 32;
signal Args_TData: u_unsigned(Args_Data_Length - 1 downto 0) := (others => '0');
signal Args_TValid: std_ulogic;
signal Args_TReady: std_ulogic := '1';       
-- 
signal Start: std_ulogic;
signal Is_Running: std_ulogic;
signal Write: std_ulogic;
signal Addr_Counter: u_unsigned(Offset'length - 1 downto CLog2(Burst_Size));
signal Addr_Reg: u_unsigned(Base'length - 1 downto 0);
signal Size_Counter: u_unsigned(Size'length - 1 downto CLog2(Burst_Size));
signal Burst_Counter: u_unsigned(CLog2(Burst_Size) - 1 downto CLog2(Word_Size));
signal Is_Last_Word: std_ulogic;
signal Is_Last_Burst: std_ulogic;

begin

Scalars: entity Work.Host_Gateway
generic map (
    -- Host_Clock
    Host_Clock_Domain => Host_Clock_Domain,
    Host_Clock_Period => Host_Clock_Period,
    -- Args_Clock
    Args_Clock_Domain => Memory_Clock_Domain,
    Args_Clock_Period => Memory_Clock_Period,
    -- Rets_Clock
    Rets_Clock_Domain => Memory_Clock_Domain,
    Rets_Clock_Period => Memory_Clock_Period,
    -- Host
    Host_Addr_Length => Host_Addr_Length,
    Host_Data_Length => Host_Data_Length,
    Host_Base_Addr => Host_Base_Addr,
    Host_Num_Outst => Host_Num_Outst,
    Host_Domain => Host_Domain,
    -- ArgsAXIS
    Args_Data_Length => Args_Data_Length,
    Args_Num_Outst => Args_Num_Outst,
    Args_Domain => Memory_Domain,
    -- Rets
    Rets_Domain => Args_Domain,
    -- Write
    Write_Domain => Args_Domain,
    -- Read
    Read_Domain => Args_Domain,
    -- Others
    Args_Offset => WDPush_Offset)
port map (
    -- Host clock
    Host_Clock_AClk => Host_Clock_AClk,
    Host_Clock_AResetN => Host_Clock_AResetN,
    -- Args clock
    Args_Clock_AClk => Memory_Clock_AClk,
    Args_Clock_AResetN => Memory_Clock_AResetN,
    -- Rets clock
    Rets_Clock_AClk => Memory_Clock_AClk,
    Rets_Clock_AResetN => Memory_Clock_AResetN,
    -- Host AXI
    Host_AWAddr => Host_AWAddr,
    Host_AWProt => Host_AWProt,
    Host_AWValid => Host_AWValid,
    Host_AWReady => Host_AWReady_Mux(3),
    Host_WData => Host_WData,
    Host_WStrb => Host_WStrb,
    Host_WValid => Host_WValid,
    Host_WReady => Host_WReady_Mux(3),
    Host_BResp => Host_BResp_Mux(3),
    Host_BValid => Host_BValid_Mux(3),
    Host_BReady => Host_BReady,
    Host_ARAddr => Host_ARAddr,
    Host_ARProt => Host_ARProt,
    Host_ARValid => Host_ARValid,
    Host_ARReady => Host_ARReady_Mux(3),
    Host_RData => Host_RData_Mux(3),
    Host_RResp => Host_RResp_Mux(3),
    Host_RValid => Host_RValid_Mux(3),
    Host_RReady => Host_RReady,
    -- Args AXIS
    Args_TData => Args_TData,
    Args_TValid => Args_TValid,
    Args_TReady => Args_TReady);
    
P0: process (all) 
    impure function Write_Fn(AWCredits_TValid_Mask: std_ulogic := '0'; Memory_AWReady_Mask: std_ulogic := '0') return std_ulogic is
    begin
        return (AWCredits_TValid or AWCredits_TValid_Mask)  
            and Is_Running and (not Is_Last_Word or (Is_Last_Word and (Memory_AWReady or Memory_AWReady_Mask)));
    end function;
    
    impure function Start_Fn(Args_TValid_Mask: std_ulogic := '0') return std_ulogic is
    begin
        return (Args_TValid or Args_TValid_Mask) and (not Is_Running or (Write_Fn and Is_Last_Burst and Is_Last_Word));
    end function;        
begin
    Offset <= Args_TData(Offset'length + 0 * 32 - 1 downto 0 * 32);
    Base <= Args_TData(Base'length + 1 * 32 - 1 downto 1 * 32);
    Size <= Args_TData(Size'length + 2 * 32 - 1 downto 2 * 32);      
      
    Is_Last_Word <= Burst_Counter ?= 0;
    Is_Last_Burst <= Size_Counter ?= 0;
    Write <= Write_Fn;
    Start <= Start_Fn;

    if (not Memory_Clock_AResetN) = '1' then
        Addr_Counter <= (others => '0');
        Addr_Reg <= (others => '0');
        Size_Counter <= (others => '0');
        Burst_Counter <= (others => '0');
        Is_Running <= '0';
    elsif rising_edge(Memory_Clock_AClk) then
        if (Write_Fn) = '1' then
            Is_Running <= '1';
            Burst_Counter <= Burst_Counter - 1;
            if Is_Last_Word = '1' then
                Burst_Counter <= to_unsigned(Memory_Burst_Length - 1, Burst_Counter'length);
                Addr_Counter <= Addr_Counter + 1;
                Size_Counter <= Size_Counter - 1;                
                if (Is_Last_Burst and Is_Last_Word) = '1' then
                    Is_Running <= '0';
                    Addr_Counter <= Addr_Counter;
                    Size_Counter <= Size_Counter;
                end if;
            end if;
        end if;
        if (Start_Fn) = '1' then
            Burst_Counter <= to_unsigned(Memory_Burst_Length - 1, Burst_Counter'length);
            Addr_Counter <= Offset(Addr_Counter'range);
            Addr_Reg <= Base(Addr_Reg'range);
            Size_Counter <= Size(Size_Counter'range);
            Is_Running <= '1';
        end if;
    end if;

    AWCredits_TReady <= Write_Fn(AWCredits_TValid_Mask => '1');
    
    Memory_AWValid <= Is_Last_Word and Write_Fn(Memory_AWReady_Mask => '1');
    Memory_AWAddr <= resize(Addr_Reg & Addr_Counter & to_unsigned(0, CLog2(Burst_Size)), Memory_AWAddr'length);
    
    Args_TReady <= Start_Fn(Args_TValid_Mask => '1');
end process P0;

end block Requesting_Address;

IBuffer_Queue: entity Work.AXIS_Queue 
generic map (
    -- Back_Clock
    Back_Clock_Domain => IStream_Clock_Domain,
    Back_Clock_Period => IStream_Clock_Period,
    -- Front_Clock
    Front_Clock_Domain => Memory_Clock_Domain,
    Front_Clock_Period => Memory_Clock_Period,
    -- Back
    Back_Data_Length => IStream_Data_Length,
    Back_Num_Outst => IStream_Num_Outst,
    Back_Domain => IStream_Domain,
    -- Front
    Front_Data_Length => IBuffer_Data_Length,
    Front_Num_Outst => IBuffer_Num_Outst,
    Front_Domain => IBuffer_Domain,
    -- Other
    Capacity => IStream_Num_Outst)
port map (
    -- Back_Clock
    Back_Clock_AClk => IStream_Clock_AClk,
    Back_Clock_AResetN => IStream_Clock_AResetN,
    -- Front_Clock
    Front_Clock_AClk => Memory_Clock_AClk,
    Front_Clock_AResetN => Memory_Clock_AResetN,
    -- Input stream
    Back_TData => IStream_TData,
    Back_TLast => IStream_TLast,
    Back_TValid => IStream_TValid,
    Back_TReady => IStream_TReady,
    -- Output stream
    Front_TData => IBuffer_TData,
    Front_TLast => IBuffer_TLast,
    Front_TValid => IBuffer_TValid,
    Front_TReady => IBuffer_TReady);

WCredits_Smphr: entity work.Take_Const_Smphr 
generic map (
    -- Give_Clock
    Give_Clock_Domain => Memory_Clock_Domain,
    Give_Clock_Period => Memory_Clock_Period,
    -- Front_Clock
    Value_Clock_Domain => Memory_Clock_Domain,
    Value_Clock_Period => Memory_Clock_Period,
    -- Give
    Give_Num_Outst => SCredits_Num_Outst,
    Give_Domain => SCredits_Domain,        
    -- Value
    Value_Domain => WCredits_Domain,
    -- Other
    Capacity => SCredits_Num_Outst,
    Initial_Size => SCredits_Num_Outst)
port map (
    -- Give_Clock
    Give_Clock_AClk => Memory_Clock_AClk,
    Give_Clock_AResetN => Memory_Clock_AResetN,
    -- Value_Clock
    Value_Clock_AClk => Memory_Clock_AClk,
    Value_Clock_AResetN => Memory_Clock_AResetN,
    -- Input stream
    Give_TData => 8x"1",
    Give_TValid => SCredits_TValid and SCredits_TReady(0) and SCredits_TReady(2),
    Give_TReady => SCredits_TReady(1),
    -- Take
    Take_TData => 8x"1",
    -- Value
    Value_TValid => WCredits_TValid,
    Value_TReady => WCredits_TReady);

Requesting_Data: block

-- Registers
signal Size: u_unsigned(31 downto 0);
-- Args
constant Args_Domain: string := Memory_Domain;
constant Args_Data_Length: integer := 32 * 4;
constant Args_Num_Outst: integer := 32;
signal Args_TData: u_unsigned(Args_Data_Length - 1 downto 0) := (others => '0');
signal Args_TValid: std_ulogic;
signal Args_TReady: std_ulogic := '1';       
-- 
signal Start: std_ulogic;
signal Is_Running: std_ulogic;
signal Write: std_ulogic;
signal Size_Counter: u_unsigned(Size'length - 1 downto CLog2(Burst_Size));
signal Burst_Counter: u_unsigned(CLog2(Burst_Size) - 1 downto CLog2(Word_Size));
signal Is_Last_Word: std_ulogic;
signal Is_Last_Burst: std_ulogic;

begin

Scalars: entity Work.Host_Gateway
generic map (
    -- Host_Clock
    Host_Clock_Domain => Host_Clock_Domain,
    Host_Clock_Period => Host_Clock_Period,        
    -- Args_Clock
    Args_Clock_Domain => Memory_Clock_Domain,
    Args_Clock_Period => Memory_Clock_Period,        
    -- Rets_Clock
    Rets_Clock_Domain => Memory_Clock_Domain,
    Rets_Clock_Period => Memory_Clock_Period,        
    -- Host AXI
    Host_Domain => Host_Domain,
    Host_Addr_Length => Host_Addr_Length,
    Host_Data_Length => Host_Data_Length,
    Host_Base_Addr => Host_Base_Addr,
    Host_Num_Outst => Host_Num_Outst,
    -- Argument AXIS
    Args_Domain => Args_Domain,
    Args_Data_Length => Args_Data_Length,
    Args_Num_Outst => Args_Num_Outst,
    -- Rets
    Rets_Domain => Args_Domain,
    -- Write
    Write_Domain => Args_Domain,
    -- Read
    Read_Domain => Args_Domain,        
    -- Others
    Page_Size => Page_Size,
    Args_Offset => WDPush_Offset)
port map (
    -- Host clock
    Host_Clock_AClk => Host_Clock_AClk,
    Host_Clock_AResetN => Host_Clock_AResetN,
    -- Args clock
    Args_Clock_AClk => Memory_Clock_AClk,
    Args_Clock_AResetN => Memory_Clock_AResetN,
    -- Rets clock
    Rets_Clock_AClk => Memory_Clock_AClk,
    Rets_Clock_AResetN => Memory_Clock_AResetN,
    -- Host AXI
    Host_AWAddr => Host_AWAddr,
    Host_AWProt => Host_AWProt,
    Host_AWValid => Host_AWValid,
    Host_AWReady => Host_AWReady_Mux(4),
    Host_WData => Host_WData,
    Host_WStrb => Host_WStrb,
    Host_WValid => Host_WValid,
    Host_WReady => Host_WReady_Mux(4),
    Host_BResp => Host_BResp_Mux(4),
    Host_BValid => Host_BValid_Mux(4),
    Host_BReady => Host_BReady,
    Host_ARAddr => Host_ARAddr,
    Host_ARProt => Host_ARProt,
    Host_ARValid => Host_ARValid,
    Host_ARReady => Host_ARReady_Mux(4),
    Host_RData => Host_RData_Mux(4),
    Host_RResp => Host_RResp_Mux(4),
    Host_RValid => Host_RValid_Mux(4),
    Host_RReady => Host_RReady,
    -- Args AXIS
    Args_TData => Args_TData,
    Args_TValid => Args_TValid,
    Args_TReady => Args_TReady);
    
P0: process (all) 
    impure function Write_Fn(
        IBuffer_TValid_Mask: std_ulogic := '0'; 
        WCredits_TValid_Mask: std_ulogic := '0';
        Memory_WReady_Mask: std_ulogic := '0') 
        return std_ulogic is
    begin
        return (WCredits_TValid or WCredits_TValid_Mask) and (IBuffer_TValid or IBuffer_TValid_Mask) 
            and Is_Running and (Memory_WReady or Memory_WReady_Mask);
    end function;
    
    impure function Start_Fn(Args_TValid_Mask: std_ulogic := '0') return std_ulogic is
    begin
        return (Args_TValid or Args_TValid_Mask) and (not Is_Running or (Write_Fn and Is_Last_Burst and Is_Last_Word));
    end function;        
begin
    Size <= Args_TData(Size'length + 2 * 32 - 1 downto 2 * 32);
    
    Is_Last_Word <= '1' when Burst_Counter = 0 else '0';
    Is_Last_Burst <= '1' when Size_Counter = 0 else '0';
    Write <= Write_Fn;
    Start <= Start_Fn;

    if (not Memory_Clock_AResetN) = '1' then
        Burst_Counter <= (others => '0');
        Size_Counter <= (others => '0');
        Is_Running <= '0';
    elsif rising_edge(Memory_Clock_AClk) then
        if (Write_Fn) = '1' then
            Is_Running <= '1';
            Burst_Counter <= Burst_Counter - 1;
            if Is_Last_Word = '1' then
                Burst_Counter <= to_unsigned(Memory_Burst_Length - 1, Burst_Counter'length);
                Size_Counter <= Size_Counter - 1;                
                if (Is_Last_Burst and Is_Last_Word) = '1' then
                    Is_Running <= '0';
                    Size_Counter <= Size_Counter;
                end if;
            end if;
        end if;
        if (Start_Fn) = '1' then
            Burst_Counter <= to_unsigned(Memory_Burst_Length - 1, Burst_Counter'length);
            Size_Counter <= Size(Size_Counter'range);
            Is_Running <= '1';
        end if;
    end if;

    IBuffer_TReady <= Write_Fn(IBuffer_TValid_Mask => '1');
    WCredits_TReady <= Is_Last_Word and Write_Fn(WCredits_TValid_Mask => '1');
    
    Memory_WValid <= Write_Fn(Memory_WReady_Mask => '1');
    Memory_WData <= IBuffer_TData;
    Memory_WLast <= Is_Last_Word;
    
    Args_TReady <= Start_Fn(Args_TValid_Mask => '1');
end process P0;

end block Requesting_Data;

WResp_Queue: entity Work.AXIS_Queue 
generic map (
    -- Back_Clock
    Back_Clock_Period => Memory_Clock_Period,
    Back_Clock_Domain => Memory_Clock_Domain,
    -- Front_Clock
    Front_Clock_Period => Memory_Clock_Period,
    Front_Clock_Domain => Memory_Clock_Domain,
    -- Input stream
    Back_Data_Length => WResp_Data_Length,
    Back_Num_Outst => Memory_Num_Outst,
    Back_Domain => Memory_Domain,
    -- Output stream
    Front_Data_Length => WResp_Data_Length,
    Front_Num_Outst => WResp_Num_Outst,
    Front_Domain => WResp_Domain,
    -- Other
    Capacity => Memory_Num_Outst)
port map (
    -- Back_Clock
    Back_Clock_AClk => Memory_Clock_AClk,
    Back_Clock_AResetN => Memory_Clock_AResetN,
    -- Front_Clock
    Front_Clock_AClk => Memory_Clock_AClk,
    Front_Clock_AResetN => Memory_Clock_AResetN,
    -- Input stream
    Back_TData => resize(Memory_BResp, WResp_Data_Length),
    Back_TValid => Memory_BValid,
    Back_TReady => Memory_BReady,
    -- Output stream
    Front_TData => WResp_TData,
    Front_TValid => WResp_TValid,
    Front_TReady => WResp_TReady);

Waiting_For_Response: block

signal Size: u_unsigned(31 downto 0);
-- Args
constant Args_Domain: string := Memory_Domain;
constant Args_Data_Length: integer := 32 * 4;
constant Args_Num_Outst: integer := 32;
signal Args_TData: u_unsigned(Args_Data_Length - 1 downto 0) := (others => '0');
signal Args_TValid: std_ulogic;
signal Args_TReady: std_ulogic;
-- Rets
constant Rets_Domain: string := Memory_Domain;
constant Rets_Data_Length: integer := 32;
constant Rets_Num_Outst: integer := 32;
signal Rets_TData: u_unsigned(Rets_Data_Length - 1 downto 0) := (others => '0');
signal Rets_TValid: std_ulogic;
signal Rets_TReady: std_ulogic;
--
signal Size_Counter: u_unsigned(Size'length - 1 downto CLog2(Burst_Size));
signal Is_Running: std_ulogic;
signal Receive: std_ulogic;
signal Start: std_ulogic;
signal Is_Last_Burst: std_ulogic;

begin

Scalars: entity Work.Host_Gateway
generic map (
    -- Host_Clock
    Host_Clock_Domain => Host_Clock_Domain,
    Host_Clock_Period => Host_Clock_Period,        
    -- Args_Clock
    Args_Clock_Domain => Memory_Clock_Domain,
    Args_Clock_Period => Memory_Clock_Period,        
    -- Rets_Clock
    Rets_Clock_Domain => Memory_Clock_Domain,
    Rets_Clock_Period => Memory_Clock_Period,        
    -- Host AXI
    Host_Addr_Length => Host_Addr_Length,
    Host_Data_Length => Host_Data_Length,
    Host_Base_Addr => Host_Base_Addr,
    Host_Num_Outst => Host_Num_Outst,
    Host_Domain => Host_Domain,
    -- Args AXIS
    Args_Data_Length => Args_Data_Length,
    Args_Num_Outst => Args_Num_Outst,
    Args_Domain => Args_Domain,
    -- Rets AXIS
    Rets_Data_Length => Rets_Data_Length,
    Rets_Num_Outst => Rets_Num_Outst,
    Rets_Domain => Rets_Domain,
    -- Write
    Write_Domain => Args_Domain,
    -- Read
    Read_Domain => Rets_Domain,
    -- Others
    Args_Offset => WDPush_Offset,
    Rets_Offset => WDPop_Offset)
port map (
    -- Host clock
    Host_Clock_AClk => Host_Clock_AClk,
    Host_Clock_AResetN => Host_Clock_AResetN,
    -- Args clock
    Args_Clock_AClk => Memory_Clock_AClk,
    Args_Clock_AResetN => Memory_Clock_AResetN,
    -- Rets clock
    Rets_Clock_AClk => Memory_Clock_AClk,
    Rets_Clock_AResetN => Memory_Clock_AResetN,
    -- Host AXI
    Host_AWAddr => Host_AWAddr,
    Host_AWProt => Host_AWProt,
    Host_AWValid => Host_AWValid,
    Host_AWReady => Host_AWReady_Mux(5),
    Host_WData => Host_WData,
    Host_WStrb => Host_WStrb,
    Host_WValid => Host_WValid,
    Host_WReady => Host_WReady_Mux(5),
    Host_BResp => Host_BResp_Mux(5),
    Host_BValid => Host_BValid_Mux(5),
    Host_BReady => Host_BReady,
    Host_ARAddr => Host_ARAddr,
    Host_ARProt => Host_ARProt,
    Host_ARValid => Host_ARValid,
    Host_ARReady => Host_ARReady_Mux(5),
    Host_RData => Host_RData_Mux(5),
    Host_RResp => Host_RResp_Mux(5),
    Host_RValid => Host_RValid_Mux(5),
    Host_RReady => Host_RReady,
    -- Args AXIS
    Args_TData => Args_TData,
    Args_TValid => Args_TValid,
    Args_TReady => Args_TReady,
    -- Rets AXIS
    Rets_TData => Rets_TData,
    Rets_TValid => Rets_TValid,
    Rets_TReady => open);

P0: process (all)
begin
    Size <= Args_TData(Size'length + 2 * 32 - 1 downto 2 * 32);
    
    Is_Last_Burst <= '1' when Size_Counter = 0 else '0';
    Receive <= WResp_TValid and IAck_TReady and Is_Running;
    Start <= Args_TValid and (not Is_Running or (Receive and Is_Last_Burst));

    if (not Memory_Clock_AResetN) = '1' then
        Size_Counter <= (others => '0');
        Is_Running <= '0';
    elsif rising_edge(Memory_Clock_AClk) then
        if Receive = '1' then
            Is_Running <= '1';
            Size_Counter <= Size_Counter - 1;
            if Is_Last_Burst = '1' then
                Is_Running <= '0';
                Size_Counter <= Size_Counter;
            end if;
        end if;
        if Start = '1' then
            Is_Running <= '1';
            Size_Counter <= Size(Size_Counter'range);
        end if;
    end if;

    WResp_TReady <= /*WResp_TValid and*/ IAck_TReady and Is_Running;
    IAck_TValid <= WResp_TValid and /*IAck_TReady and*/ Is_Running;
    Args_TReady <= /*Args_TValid and*/ (not Is_Running or (Receive and Is_Last_Burst));
    Rets_TValid <= Receive and Is_Last_Burst;
    Rets_TData <= (others => '0'); -- TODO: acutal size
    Write_Done_TValid <= Receive and Is_Last_Burst;
    Write_Done_TData <= resize("1", Write_Done_TData'length);
end process;

end block Waiting_For_Response;

ICredits_Smphr: entity work.Take_Const_Smphr 
generic map (
    -- Give_Clock
    Give_Clock_Domain => Memory_Clock_Domain,
    Give_Clock_Period => Memory_Clock_Period,
    -- Front_Clock
    Value_Clock_Domain => Memory_Clock_Domain,
    Value_Clock_Period => Memory_Clock_Period,
    -- Give
    Give_Num_Outst => IAck_Num_Outst,
    Give_Domain => IAck_Domain,        
    -- Value
    Value_Domain => SCredits_Domain,
    -- Other
    Capacity => IAck_Num_Outst)
port map (
    -- Give_Clock
    Give_Clock_AClk => Memory_Clock_AClk,
    Give_Clock_AResetN => Memory_Clock_AResetN,
    -- Value_Clock
    Value_Clock_AClk => Memory_Clock_AClk,
    Value_Clock_AResetN => Memory_Clock_AResetN,
    -- Input stream
    Give_TData => 8x"1",
    Give_TValid => IAck_TValid,
    Give_TReady => IAck_TReady,
    -- Take
    Take_TData => 8x"1",
    -- Value
    Value_TValid => SCredits_TValid,
    Value_TReady => SCredits_TReady(0) and SCredits_TReady(1) and SCredits_TReady(2));

ICredits_TData <= resize("1", ICredits_TData'Length);
ICredits_TValid <= SCredits_TValid and SCredits_TReady(0) and SCredits_TReady(1);
SCredits_TReady(2) <= ICredits_TReady;

Write_IRQ: block
 
signal Args_Num_Rets: u_unsigned(7 downto 0);
signal Rets_TData_Num_Rets: u_unsigned(7 downto 0);
-- Args
constant Args_Domain: string := Memory_Domain;
constant Args_Num_Outst: integer := 1;
signal Args_TData: u_unsigned(31 downto 0) := (others => '0');
signal Args_TValid: std_ulogic;
signal Args_TReady: std_ulogic;
-- Rets
constant Rets_Domain: string := Memory_Domain;
constant Rets_Num_Outst: integer := 1;
signal Rets_TData: u_unsigned(31 downto 0) := (others => '0');
signal Rets_TValid: std_ulogic;
signal Rets_TReady: std_ulogic;
-- Sm
constant Sm_Domain: string := Memory_Domain;
constant Sm_Num_Outst: integer := Args_Num_Outst;
signal Sm_TData: u_unsigned(Get_Smphr_Size(Write_Done_Num_Outst) * 8 - 1 downto 0) := (others => '0');
signal Sm_TValid: std_ulogic;
signal Sm_TReady: std_ulogic;

begin
Scalars: entity Work.Host_Gateway
generic map (
    -- Host_Clock
    Host_Clock_Domain => Host_Clock_Domain,
    Host_Clock_Period => Host_Clock_Period,        
    -- Args_Clock
    Args_Clock_Domain => Host_Clock_Domain,
    Args_Clock_Period => Host_Clock_Period,        
    -- Rets_Clock
    Rets_Clock_Domain => Host_Clock_Domain,
    Rets_Clock_Period => Host_Clock_Period,        
    -- Host AXI
    Host_Domain => Host_Domain,
    Host_Addr_Length => Host_Addr_Length,
    Host_Data_Length => Host_Data_Length,
    Host_Base_Addr => Host_Base_Addr,
    Host_Num_Outst => Host_Num_Outst,
    -- Argument AXIS
    Args_Domain => Args_Domain,
    Args_Data_Length => Args_TData'Length,
    Args_Num_Outst => Args_Num_Outst,
    -- Return AXIS
    Rets_Domain => Rets_Domain,
    Rets_Data_Length => Rets_TData'Length,
    Rets_Num_Outst => Rets_Num_Outst,
    -- Write
    Write_Domain => Args_Domain,
    -- Read
    Read_Domain => Rets_Domain,
    -- Others
    Args_Offset => WIPush_Offset,
    Rets_Offset => WIPop_Offset,
    Read_Offset => WIPoll_Offset)
port map (
    -- Host clock
    Host_Clock_AClk => Host_Clock_AClk,
    Host_Clock_AResetN => Host_Clock_AResetN,
    -- Args clock
    Args_Clock_AClk => Host_Clock_AClk,
    Args_Clock_AResetN => Host_Clock_AResetN,
    -- Rets clock
    Rets_Clock_AClk => Host_Clock_AClk,
    Rets_Clock_AResetN => Host_Clock_AResetN,
    -- Host AXI
    Host_AWAddr => Host_AWAddr,
    Host_AWProt => Host_AWProt,
    Host_AWValid => Host_AWValid,
    Host_AWReady => Host_AWReady_Mux(6),
    Host_WData => Host_WData,
    Host_WStrb => Host_WStrb,
    Host_WValid => Host_WValid,
    Host_WReady => Host_WReady_Mux(6),
    Host_BResp => Host_BResp_Mux(6),
    Host_BValid => Host_BValid_Mux(6),
    Host_BReady => Host_BReady,
    Host_ARAddr => Host_ARAddr,
    Host_ARProt => Host_ARProt,
    Host_ARValid => Host_ARValid,
    Host_ARReady => Host_ARReady_Mux(6),
    Host_RData => Host_RData_Mux(6),
    Host_RResp => Host_RResp_Mux(6),
    Host_RValid => Host_RValid_Mux(6),
    Host_RReady => Host_RReady,
    -- Args AXIS
    Args_TData => Args_TData,
    Args_TValid => Args_TValid,
    Args_TReady => Args_TReady,
    -- Rets AXIS
    Rets_TData => Rets_TData,
    Rets_TValid => Rets_TValid,
    Rets_TReady => open);

Args_Num_Rets <= resize(Args_TData, Args_Num_Rets'Length);

IRQ_Smphr: entity work.Take_Delta_Smphr 
generic map(
    -- Give_Clock
    Give_Clock_Domain => Memory_Clock_Domain,
    Give_Clock_Period => Memory_Clock_Period,
    -- Take_Clock
    Take_Clock_Domain => Host_Clock_Domain,
    Take_Clock_Period => Host_Clock_Period,
    -- Value_Clock
    Value_Clock_Domain => Host_Clock_Domain,
    Value_Clock_Period => Host_Clock_Period,
    -- Give
    Give_Domain => Write_Done_Domain,
    Give_Num_Outst => Write_Done_Num_Outst,
    -- Take
    Take_Domain => Args_Domain,
    Take_Num_Outst => Args_Num_Outst,
    -- Value
    Value_Domain => Sm_Domain,
    Value_Num_Outst => Sm_Num_Outst,
    -- Other
    Give_Capacity => Write_Done_Num_Outst,
    Take_Capacity => Args_Num_Outst)
port map(
    -- Give_Clock
    Give_Clock_AClk => Memory_Clock_AClk,
    Give_Clock_AResetN => Memory_Clock_AResetN,
    -- Take_Clock
    Take_Clock_AClk => Host_Clock_AClk,
    Take_Clock_AResetN => Host_Clock_AResetN,
    -- Value_Clock
    Value_Clock_AClk => Host_Clock_AClk,
    Value_Clock_AResetN => Host_Clock_AResetN,
    -- Give
    Give_TData => Write_Done_TData,
    Give_TValid => Write_Done_TValid,
    Give_TReady => Write_Done_TReady,
    -- Take
    Take_TReady => Args_TReady,
    Take_TValid => Args_TValid,
    Take_TData => Args_Num_Rets,
    -- Produced AXIS
    Value_TData => Sm_TData,
    Value_TValid => Sm_TValid,
    Value_TReady => Sm_TReady);  

Sm_TReady <= Rets_TReady and IRQ_TReady;    
Rets_TData <= resize(Sm_TData, Rets_TData'length);
Rets_TValid <= Sm_TValid and IRQ_TReady;
IRQ_TData(8 + 7 downto 8) <= resize(Sm_TData, 8); 
IRQ_TStrb(1) <= Sm_TValid and Rets_TReady;

end block Write_IRQ;

end block Write;
    
IRQ_TValid <= or IRQ_TStrb; 

end architecture Behavior;
