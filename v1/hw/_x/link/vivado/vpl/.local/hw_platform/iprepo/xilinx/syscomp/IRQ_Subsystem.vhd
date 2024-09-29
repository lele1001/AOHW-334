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

entity IRQ_Subsystem is
generic (
    -- Host: Clock_Input
    Host_Clock_Domain: string;
    Host_Clock_Period: time;
    -- Accel: Clock_Input
    Accel_Clock_Domain: string;
    Accel_Clock_Period: time;    
    -- Host
    Host_Addr_Length: integer := 12;
    Host_Data_Length: integer := 32;
    Host_Base_Addr: unsigned(Host_Addr_Length - 1 downto 0) := (others => '0');
    Host_Num_Outst: integer := 32;
    Host_Domain: string;
    -- IRQ AXIS
    IRQ_Data_Length: integer := 8;
    IRQ_Num_Outst: integer := 1;
    IRQ_Domain: string;
     -- Accel_Rets AXIS
    Accel_Rets_Data_Length: integer := 32;
    Accel_Rets_Num_Outst: integer := 16;
    Accel_Rets_Domain: string;
    -- Others
    Args_Offset: integer := 0;
    Rets_Offset: integer := 4;
    Write_Offset: integer := 8;
    Read_Offset: integer := 12;
    Page_Size: integer := 16);
port (
    -- Host: Clock_Input
    Host_Clock_AClk: in std_ulogic;
    Host_Clock_AResetN: in std_ulogic;
    -- Accel: Clock_Input
    Accel_Clock_AClk: in std_ulogic;
    Accel_Clock_AResetN: in std_ulogic;
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
    -- Input Stream AXIS
    Accel_Rets_TData: in u_unsigned(Accel_Rets_Data_Length - 1 downto 0) := (others => '0');
    Accel_Rets_TStrb: in u_unsigned(Accel_Rets_Data_Length / 8 - 1 downto 0) := (others => '1');
    Accel_Rets_TLast: in std_ulogic := '1';
    Accel_Rets_TValid: in std_ulogic;
    Accel_Rets_TReady: out std_ulogic := '1');
begin   
end IRQ_Subsystem;

architecture Behavior of IRQ_Subsystem is
    -- Args
    constant Args_Data_Length: integer := 32;
    constant Args_Num_Outst: integer := 1;
    constant Args_Domain: string := Host_Domain;
    signal Args_TData: u_unsigned(Args_Data_Length - 1 downto 0) := (others => '0');
    signal Args_TStrb: u_unsigned(Args_Data_Length / 8 - 1 downto 0) := (others => '1');
    signal Args_TLast: std_ulogic := '1';
    signal Args_TValid: std_ulogic;
    signal Args_TReady: std_ulogic := '1';
    -- Rets
    constant Rets_Data_Length: integer := 32;
    constant Rets_Num_Outst: integer := 1;
    constant Rets_Domain: string := Host_Domain;
    signal Rets_TData: u_unsigned(Rets_Data_Length - 1 downto 0) := (others => '0');
    signal Rets_TStrb: u_unsigned(Rets_Data_Length / 8 - 1 downto 0) := (others => '1');
    signal Rets_TLast: std_ulogic := '1';
    signal Rets_TValid: std_ulogic;
    signal Rets_TReady: std_ulogic := '1';
    -- Other
    signal Sm_TData: u_unsigned(Get_Smphr_Size(Accel_Rets_Num_Outst) * 8 - 1 downto 0);
    signal Sm_TValid: std_ulogic;
    signal Sm_TReady: std_ulogic_vector(0 to 1);
begin
    Host_Gateway_Inst: entity Work.Host_Gateway
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
        -- Host
        Host_Addr_Length => Host_Addr_Length,
        Host_Data_Length => Host_Data_Length,
        Host_Base_Addr => Host_Base_Addr,
        Host_Num_Outst => Host_Num_Outst,
        Host_Domain => Host_Domain,
        -- Args
        Args_Data_Length => Args_Data_Length,
        Args_Num_Outst => Args_Num_Outst,
        Args_Domain => Args_Domain,
        -- Rets
        Rets_Data_Length => Rets_Data_Length,
        Rets_Num_Outst => Rets_Num_Outst,
        Rets_Domain => Rets_Domain,
        -- Others
        Args_Offset => Args_Offset,
        Rets_Offset => Rets_Offset,
        Write_Offset => Write_Offset,
        Read_Offset => Read_Offset)
    port map (
        -- Host: Clock_Input
        Host_Clock_AClk => Host_Clock_AClk,
        Host_Clock_AResetN => Host_Clock_AResetN,
        -- Args: Clock_Input
        Args_Clock_AClk => Host_Clock_AClk,
        Args_Clock_AResetN => Host_Clock_AResetN,
        -- Rets: Clock_Input
        Rets_Clock_AClk => Host_Clock_AClk,
        Rets_Clock_AResetN => Host_Clock_AResetN,
        -- Host
        Host_AWAddr => Host_AWAddr,
        Host_AWProt => Host_AWProt,
        Host_AWValid => Host_AWValid,
        Host_AWReady => Host_AWReady,
        Host_WData => Host_WData,
        Host_WStrb => Host_WStrb,
        Host_WValid => Host_WValid,
        Host_WReady => Host_WReady,
        Host_BResp => Host_BResp,
        Host_BValid => Host_BValid,
        Host_BReady => Host_BReady,
        Host_ARAddr => Host_ARAddr,
        Host_ARProt => Host_ARProt,
        Host_ARValid => Host_ARValid,
        Host_ARReady => Host_ARReady,
        Host_RData => Host_RData,
        Host_RResp => Host_RResp,
        Host_RValid => Host_RValid,
        Host_RReady => Host_RReady,
        -- Args: AXIS_Output
        Args_TData => Args_TData,
        Args_TValid => Args_TValid,
        Args_TReady => Args_TReady,
        -- Rets: AXIS_Input
        Rets_TData => Rets_TData,
        Rets_TValid => Rets_TValid,
        Rets_TReady => Rets_TReady);
    
    IRQ_Sm: entity work.Take_Delta_Smphr
    generic map (
        -- Give_Clock
        Give_Clock_Domain => Accel_Clock_Domain,
        Give_Clock_Period => Accel_Clock_Period,
        -- Give
        Give_Num_Outst => Accel_Rets_Num_Outst,
        Give_Domain => Accel_Rets_Domain,
        -- Take_Clock
        Take_Clock_Domain => Host_Clock_Domain,
        Take_Clock_Period => Host_Clock_Period,
        -- Take
        Take_Num_Outst => Args_Num_Outst,
        Take_Domain => Args_Domain,
        -- Value_Clock
        Value_Clock_Domain => Host_Clock_Domain,
        Value_Clock_Period => Host_Clock_Period,
        -- Value
        Value_Num_Outst => IRQ_Num_Outst,
        Value_Domain => IRQ_Domain,
        -- Other
        Give_Capacity => Accel_Rets_Num_Outst,
        Take_Capacity => Args_Num_Outst)        
    port map (
        -- Give_Clock
        Give_Clock_AClk => Accel_Clock_AClk,
        Give_Clock_AResetN => Accel_Clock_AResetN,
        -- Give
        Give_TData => resize("1", Get_Smphr_Size(Accel_Rets_Num_Outst) * 8),
        Give_TValid => Accel_Rets_TValid,
        Give_TReady => Accel_Rets_TReady,
        -- Take_Clock
        Take_Clock_AClk => Host_Clock_AClk,
        Take_Clock_AResetN => Host_Clock_AResetN,
        -- Take: AXIS_Input
        Take_TData => resize(Args_TData, Get_Smphr_Size(Accel_Rets_Num_Outst) * 8),
        Take_TValid => Args_TValid,
        Take_TReady => Args_TReady,
        -- Value_Clock
        Value_Clock_AClk => Host_Clock_AClk,
        Value_Clock_AResetN => Host_Clock_AResetN,
        -- Value
        Value_TData => Sm_TData,
        Value_TValid => Sm_TValid,
        Value_TReady => Sm_TReady(0) and Sm_Tready(1));

    Rets_TData <= resize(Sm_TData, Rets_TData'Length);
    Rets_TValid <= Sm_TValid and Sm_TReady(1);
    Sm_Tready(0) <= Rets_TReady;
        
    IRQ_TData <= resize(Sm_TData, IRQ_TData'Length);
    IRQ_TStrb <= resize("" & Sm_TValid, IRQ_TStrb'length);
    IRQ_TLast <= '1';
    IRQ_TValid <= Sm_TValid and Sm_TReady(0);
    Sm_Tready(1) <= IRQ_TReady;
    
end architecture Behavior;
