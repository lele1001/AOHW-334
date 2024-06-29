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

entity Host_Gateway is
generic (
    -- Host Clock
    Host_TClk: time := 5ns;
    -- Args Clock
    Args_TClk: time := 5ns;
    -- Rets Clock
    Rets_TClk: time := 5ns;        
    -- Host AXI
    Host_Addr_Length: integer := 16;
    Host_Data_Length: integer := 32;
    Host_Base_Addr: unsigned(Host_Addr_Length - 1 downto 0) := (others => '0');
    Host_Num_Outst: integer := 1;
    Host_Clock_Id: string := "Clock";
    -- Argument stream
    Args_Data_Length: integer := 32;
    Args_Num_Outst: integer := 1;
    Args_Clock_Id: string := "Clock";
    -- Return stream
    Rets_Data_Length: integer := 32;
    Rets_Num_Outst: integer := 1;
    Rets_Clock_Id: string := "Clock";
    -- Argument stream
    Write_Data_Length: integer := 32;
    Write_Num_Outst: integer := 1;
    Write_Clock_Id: string := "Clock";
    -- Return stream
    Read_Data_Length: integer := 32;
    Read_Num_Outst: integer := 1;
    Read_Clock_Id: string := "Clock";
    -- Others
    Args_Offset: integer := 0;
    Rets_Offset: integer := Args_Offset + Args_Data_Length / 8;
    Write_Offset: integer := Rets_Offset + Rets_Data_Length / 8;
    Read_Offset: integer := Write_Offset + Write_Data_Length / 8;
    Page_Size: integer := Read_Offset + Read_Data_Length / 8);   
port (
    -- Host Clock
    Host_AClk: in std_ulogic;
    Host_AResetN: in std_ulogic;
    -- Args Clock
    Args_AClk: in std_ulogic;
    Args_AResetN: in std_ulogic;
    -- Rets Clock
    Rets_AClk: in std_ulogic;
    Rets_AResetN: in std_ulogic;
    -- Host AXI
    Host_AWAddr: in u_unsigned(Host_Addr_Length - 1 downto 0) := (others => '0');
    Host_AWProt: in u_unsigned(2 downto 0) := "000";
    Host_AWValid: in std_ulogic := '0';
    Host_AWReady: out std_ulogic := '1';
    Host_WData: in u_unsigned(Host_Data_Length - 1 downto 0) := (others => '0');
    Host_WStrb: in u_unsigned(Host_Data_Length / 8 - 1 downto 0) := (others => '1');
    Host_WValid: in std_ulogic := '0';
    Host_WReady: out std_ulogic := '1';
    Host_BResp: out u_unsigned(1 downto 0) := "10";
    Host_BValid: out std_ulogic := '0';
    Host_BReady: in std_ulogic := '1';
    Host_ARAddr: in u_unsigned(Host_Addr_Length - 1 downto 0) := (others => '0');
    Host_ARProt: in u_unsigned(2 downto 0) := "000";
    Host_ARValid: in std_ulogic := '0';
    Host_ARReady: out std_ulogic := '1';
    Host_RData: out u_unsigned(Host_Data_Length - 1 downto 0) := (others => '0');
    Host_RResp: out u_unsigned(1 downto 0) := "10";
    Host_RValid: out std_ulogic := '0';
    Host_RReady: in std_ulogic := '1';
    -- Argument stream
    Args_TData: out u_unsigned(Args_Data_Length - 1 downto 0) := (others => '0');
    Args_TStrb: out u_unsigned(Args_Data_Length / 8 - 1 downto 0) := (others => '1');
    Args_TLast: out std_ulogic := '1';
    Args_TValid: out std_ulogic := '0';
    Args_TReady: in std_ulogic := '1';
    -- Return stream
    Rets_TData: in u_unsigned(Rets_Data_Length - 1 downto 0) := (others => '0');
    Rets_TStrb: in u_unsigned(Rets_Data_Length / 8 - 1 downto 0) := (others => '1');
    Rets_TLast: in std_ulogic := '1';
    Rets_TValid: in std_ulogic := '0';
    Rets_TReady: out std_ulogic := '1';
    -- Write stream
    Write_Data: out u_unsigned(Write_Data_Length - 1 downto 0) := (others => '0');
    Write_TStrb: out u_unsigned(Write_Data_Length / 8 - 1 downto 0) := (others => '1');
    Write_TLast: out std_ulogic := '1';
    Write_TValid: out std_ulogic := '0';
    Write_TReady: in std_ulogic := '1';
    -- Read stream    
    Read_Data: in u_unsigned(Read_Data_Length - 1 downto 0) := (others => '0');
    Read_TStrb: in u_unsigned(Read_Data_Length / 8 - 1 downto 0) := (others => '1');
    Read_TLast: in std_ulogic := '1';
    Read_TValid: in std_ulogic := '0';
    Read_TReady: out std_ulogic := '1');
begin
    assert Host_AWAddr'Length = Host_ARAddr'Length and Host_WData'Length = Host_RData'Length 
        and Host_WStrb'Length = Host_WData'Length / 8 
        report "Read and write sizes must match." severity error;
end entity Host_Gateway;


architecture Behavior of Host_Gateway is

-- Host Mux.
constant Num_Guests: integer := 2;
type Host_Resp_Array is array (0 to Num_Guests - 1) of u_unsigned(1 downto 0);
type Host_Data_Array is array (0 to Num_Guests - 1) of u_unsigned(Host_Data_Length - 1 downto 0);
signal Host_AWReady_Mux: std_ulogic_vector(0 to Num_Guests - 1);
signal Host_WReady_Mux: std_ulogic_vector(0 to Num_Guests - 1);
signal Host_BResp_Mux: Host_Resp_Array;
signal Host_BValid_Mux: std_ulogic_vector(0 to Num_Guests - 1);
signal Host_ARReady_Mux: std_ulogic_vector(0 to Num_Guests - 1);
signal Host_RData_Mux: Host_Data_Array;
signal Host_RResp_Mux: Host_Resp_Array;
signal Host_RValid_Mux: std_ulogic_vector(0 to Num_Guests - 1);

constant Push_Args_Data_Length: integer := Args_Data_Length;
constant Push_Args_Num_Outst: integer := Args_Num_Outst;
signal Push_Args_TData: u_unsigned(Push_Args_Data_Length - 1 downto 0) := (others => '0');
signal Push_Args_TStrb: u_unsigned(Push_Args_Data_Length / 8 - 1 downto 0) := (others => '0');
signal Push_Args_TLast: std_ulogic := '1';
signal Push_Args_TValid: std_ulogic;
signal Push_Args_TReady: std_ulogic := '1';

constant Set_Args_Data_Length: integer := Write_Data_Length;
constant Set_Args_Num_Outst: integer := Write_Num_Outst;
signal Set_Args_TData: u_unsigned(Set_Args_Data_Length - 1 downto 0) := (others => '0');
signal Set_Args_TStrb: u_unsigned(Set_Args_Data_Length / 8 - 1 downto 0) := (others => '0');
signal Set_Args_TLast: std_ulogic := '1';
signal Set_Args_TValid: std_ulogic;
signal Set_Args_TReady: std_ulogic := '1';

constant Pop_Rets_Data_Length: integer := Rets_Data_Length;
constant Pop_Rets_Num_Outst: integer := Rets_Num_Outst;
signal Pop_Rets_TData: u_unsigned(Pop_Rets_Data_Length - 1 downto 0) := (others => '0');
signal Pop_Rets_TValid: std_ulogic;
signal Pop_Rets_TReady: std_ulogic;

signal Rets_Queue_Size: u_unsigned(CLog2(Rets_Num_Outst + 1) - 1 downto 0);

constant Get_Rets_Data_Length: integer := Read_Data_Length;
constant Get_Rets_Num_Outst: integer := Read_Num_Outst;
signal Get_Rets_TData: u_unsigned(Get_Rets_Data_Length - 1 downto 0) := (others => '0');
signal Get_Rets_TValid: std_ulogic;
signal Get_Rets_TReady: std_ulogic;

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
    for i in 0 to Num_Guests - 1 loop
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

Pushing: block  
    constant Push_Addr: unsigned := Host_Base_Addr + to_unsigned(Args_Offset, Host_Base_Addr'length);
    constant Num_Words: integer range 1 to Args_Data_Length / 8 := Args_Data_Length / Host_Data_Length;
    constant Reg_Size: positive := Host_Data_Length / 8;
    constant Byte_Idx: unsigned(Clog2(Host_Data_Length / 8) - 1 downto 0) := (others => '0');
    constant Word_Idx: unsigned(Push_Addr'left downto Byte_Idx'left + 1) := (others => '0');
    signal Started_Comb, Started_Reg: u_unsigned(Args_Data_Length / 8 - 1 downto 0);
    signal Push, Start: std_ulogic;
    signal Push_Args_TValids: u_unsigned(Push_Args_TStrb'range);
begin
    P0: process (all)
    begin
        Started_Comb <= Started_Reg;
        Push <= '0';
        for i in 0 to Num_Words - 1 loop
            if (Host_AWValid and Host_WValid and Host_BReady) = '1' 
            and Host_AWAddr(Word_Idx'Range) = Push_Addr(Word_Idx'Range) + to_unsigned(i, Word_Idx'length) then
                Started_Comb((i + 1) * Reg_Size - 1 downto i * Reg_Size) <= Host_WStrb;
                Push <= '1';
            end if;
        end loop;
        Start <= and Started_Comb;
        --
        if (not Host_AResetN) = '1' then
            Started_Reg <= (others => '0');
        elsif rising_edge(Host_AClk) then
            if Push = '1' then
                Started_Reg <= Started_Comb;
                if Start = '1' then
                    Started_Reg <= (others => '0');
                end if;
            end if;
        end if;
        --
        Host_AWReady_Mux(0) <= /*Host_AWValid and*/ Host_WValid and Host_BReady;
        Host_WReady_Mux(0) <= Host_AWValid /*and Host_WValid*/ and Host_BReady;
        Host_BValid_Mux(0) <= Host_AWValid and Host_WValid /*and Host_BReady*/;
        Host_BResp_Mux(0) <= "10";
        --
        Push_Args_TData <= (others => '0');
        Push_Args_TStrb <= (others => '0');
        for i in 0 to Num_Words - 1 loop
            Push_Args_TData((i + 1) * Host_Data_Length - 1 downto i * Host_Data_Length) <= Host_WData;
            if (Host_AWValid and Host_WValid and Host_BReady) = '1' 
            and Host_AWAddr(Word_Idx'Range) = Push_Addr(Word_Idx'Range) + to_unsigned(i, Word_Idx'length) then
                Push_Args_TStrb((i + 1) * Host_Data_Length / 8 - 1 downto i * Host_Data_Length / 8) <= Host_WStrb;
                Host_BResp_Mux(0) <= "00";
            end if;
        end loop;
        Push_Args_TLast <= Start;
        Push_Args_TValid <= Push;
        Push_Args_TValids <= (others => Push_Args_TValid);
    end process P0;
    
    Args_Queue: entity work.Auto_FIFO 
    generic map (
        -- Back AXIS
        Back_Data_Length => Push_Args_Data_Length,
        Back_Num_Outst => Push_Args_Num_Outst,
        Back_Clock_Id => Host_Clock_Id,
         -- Front AXIS
        Front_Data_Length => Args_Data_Length,
        Front_Num_Outst => Args_Num_Outst,
        Front_Clock_Id => Args_Clock_Id)
    port map (
        -- Back Clock
        Back_AClk => Host_AClk,
        Back_AResetN => Host_AResetN,
        -- Front Clock
        Front_AClk => Args_AClk,
        Front_AResetN => Args_AResetN,
        -- Back AXIS
        Back_TData => Push_Args_TData,
        Back_TStrb => Push_Args_TStrb,
        Back_TLast =>  Push_Args_TLast,
        Back_TValid => Push_Args_TValid,
        -- Front AXIS
        Front_TData => Args_TData,
        Front_TValid => Args_TValid,
        Front_TReady => Args_TReady);

end block Pushing;

Setting: block  
    constant Set_Addr: unsigned := Host_Base_Addr + to_unsigned(Write_Offset, Host_Base_Addr'length);     
    constant Num_Words: integer range 1 to Args_Data_Length / 8 := Write_Data_Length / Host_Data_Length;
    constant Reg_Size: positive := Host_Data_Length / 8;
    constant Byte_Idx: unsigned(Clog2(Host_Data_Length / 8) - 1 downto 0) := (others => '0');
    constant Word_Idx: unsigned(Set_Addr'left downto Byte_Idx'left + 1) := (others => '0');
    signal Started_Comb, Started_Reg: u_unsigned(Args_Data_Length / 8 - 1 downto 0);
    signal Set: std_ulogic;
begin
    P0: process (all)
    begin
        Set <= '0';
        for i in 0 to Num_Words - 1 loop
            if (Host_AWValid and Host_WValid and Host_BReady) = '1'
            and Host_AWAddr(Word_Idx'Range) = Set_Addr(Word_Idx'Range) + to_unsigned(i, Word_Idx'length) then
                Set <= '1';
            end if;
        end loop;
        --
        Host_AWReady_Mux(1) <= /*Host_AWValid and*/ Host_WValid and Host_BReady;
        Host_WReady_Mux(1) <= Host_AWValid /*and Host_WValid*/ and Host_BReady;
        Host_BValid_Mux(1) <= Host_AWValid and Host_WValid /*and Host_BReady*/;
        Host_BResp_Mux(1) <= "10";
        --
        Set_Args_TData <= (others => '0');
        Set_Args_TStrb <= (others => '0');        
        for i in 0 to Num_Words - 1 loop
            Set_Args_TData((i + 1) * Host_Data_Length - 1 downto i * Host_Data_Length) <= Host_WData;
            if (Host_AWValid and Host_WValid and Host_BReady) = '1'
            and Host_AWAddr(Word_Idx'Range) = Set_Addr(Word_Idx'Range) + to_unsigned(i, Word_Idx'length) then
                Set_Args_TStrb((i + 1) * Host_Data_Length / 8 - 1 downto i * Host_Data_Length / 8) <= Host_WStrb;
                Host_BResp_Mux(1) <= "00";
            end if;
        end loop;
        Set_Args_TValid <= Set;
    end process P0;

    P1: process (all)
    begin
        if Host_AResetN /= '1' then
            Write_Data <= (others => '0');
        elsif rising_edge(Host_AClk) then
            for i in Set_Args_TStrb'range loop
                if (Set_Args_TValid and Set_Args_TStrb(i)) = '1' then
                    Write_Data(i * 8 + 7 downto i * 8) <= Set_Args_TData(i * 8 + 7 downto i * 8);
                end if;
            end loop;         
        end if;
    end process P1;

end block Setting;

Popping: block
    constant Pop_Addr: unsigned := Host_Base_Addr + to_unsigned(Rets_Offset, Host_Base_Addr'length);
    constant Num_Words: integer range 1 to Rets_Data_Length / 8 := Rets_Data_Length / Host_Data_Length;
    constant Byte_Idx: unsigned(Clog2(Host_Data_Length / 8) - 1 downto 0) := (others => '0');
    constant Word_Idx: unsigned(Pop_Addr'left downto Byte_Idx'left + 1) := (others => '0');
    signal Continued_Comb, Continued_Reg: u_unsigned(Rets_Data_Length / 8 - 1 downto 0);
    signal Read, Continue: std_ulogic;
begin
    Rets_Queue: entity work.Auto_FIFO 
    generic map (
        -- Back AXIS
        Back_Data_Length => Rets_Data_Length,
        Back_Num_Outst => Rets_Num_Outst,
        Back_Clock_Id => Rets_Clock_Id,
         -- Front AXIS
        Front_Data_Length => Pop_Rets_Data_Length,
        Front_Num_Outst => Pop_Rets_Num_Outst,
        Front_Clock_Id => Host_Clock_Id)
    port map (
        -- Back Clock
        Back_AClk => Rets_AClk,
        Back_AResetN => Rets_AResetN,
        -- Front Clock
        Front_AClk => Host_AClk,
        Front_AResetN => Host_AResetN,
        -- Back AXIS
        Back_TData => Rets_TData,
        Back_TValid => Rets_TValid,
        -- Front AXIS
        Front_TData => Pop_Rets_TData,
        Front_TValid => Pop_Rets_TValid,
        Front_TReady => Pop_Rets_TReady,
        Front_TUser => Rets_Queue_Size);

    P0: process (all)
    begin
        Continued_Comb <= Continued_Reg;
        Read <= '0';
        for i in 0 to Num_Words - 1 loop
            if (Host_ARValid and Host_RReady) = '1' 
            and Host_ARAddr(Word_Idx'Range) = Pop_Addr(Word_Idx'Range) + to_unsigned(i, Word_Idx'length) then
                Continued_Comb((i + 1) * Host_Data_Length / 8 - 1 downto i * Host_Data_Length / 8) <= (others => '1');
                Read <= '1';
            end if;
        end loop;
        Continue <= and Continued_Comb;
        --
        if (not Host_AResetN) = '1' then
            Continued_Reg <= (others => '0');
        elsif rising_edge(Host_AClk) then
            if Read = '1' then
                Continued_Reg <= Continued_Comb;
                if Continue = '1' then
                    Continued_Reg <= (others => '0');
                end if;
            end if;
        end if;
        --
        Host_ARReady_Mux(0) <= /*Host_ARValid and*/ Host_RReady; 
        Host_RValid_Mux(0) <= Host_ARValid /*and Host_RReady*/;
        Host_RData_Mux(0) <= (others => '0');
        Host_RResp_Mux(0) <= "10";
        --
        for i in 0 to Num_Words - 1 loop
            if (Host_ARValid and Host_RReady) = '1' 
            and Host_ARAddr(Word_Idx'Range) = Pop_Addr(Word_Idx'Range) + to_unsigned(i, Word_Idx'length) then
                Host_RData_Mux(0) <= Pop_Rets_TData((i + 1) * Host_Data_Length - 1 downto i * Host_Data_Length);
                Host_RResp_Mux(0) <= "00";
            end if; 
        end loop;
        Pop_Rets_TReady <= /*Rets_TValid and*/ Continue; 
    end process P0;
end block Popping;

Getting: block
    constant Get_Addr: unsigned := Host_Base_Addr + to_unsigned(Read_Offset, Host_Base_Addr'length);     
    constant Num_Words: integer range 1 to Read_Data_Length / 8 := Read_Data_Length / Host_Data_Length;    
    constant Reg_Size: positive := Host_Data_Length / 8;
    constant Byte_Idx: unsigned(Clog2(Host_Data_Length / 8) - 1 downto 0) := (others => '0');
    constant Word_Idx: unsigned(Get_Addr'left downto Byte_Idx'left + 1) := (others => '0');
    signal Get: std_ulogic;
begin
    Get_Rets_TData <= resize(Rets_Queue_Size, Get_Rets_TData'length);  
    --Get_Rets_TData <= (Read_Data(Read_Data'length - 1 downto 32), resize(Rets_Queue_Size, 32));
 
    P0: process (all)
    begin
        Get <= '0';
        for i in 0 to Num_Words - 1 loop
            if (Host_ARValid and Host_RReady) = '1' 
            and Host_ARAddr(Word_Idx'Range) = Get_Addr(Word_Idx'Range) + to_unsigned(i, Word_Idx'length) then
                Get <= '1';
            end if;
        end loop;
        --
        Host_ARReady_Mux(1) <= /*Host_ARValid and*/ Host_RReady; 
        Host_RValid_Mux(1) <= Host_ARValid /*and Host_RReady*/;
        Host_RData_Mux(1) <= (others => '0');
        Host_RResp_Mux(1) <= "10";
        --
        for i in 0 to Num_Words - 1 loop
            if (Host_ARValid and Host_RReady) = '1' 
            and Host_ARAddr(Word_Idx'Range) = Get_Addr(Word_Idx'Range) + to_unsigned(i, Word_Idx'length) then
                Host_RData_Mux(1) <= Get_Rets_TData((i + 1) * Host_Data_Length - 1 downto i * Host_Data_Length);
                Host_RResp_Mux(1) <= "00";
            end if; 
        end loop;       
        Get_Rets_TReady <= '1';
    end process P0;
end block Getting;

end Behavior;
