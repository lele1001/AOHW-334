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

-- TODO: "No-full" variant
-- TODO: Grey Counters for power saving
-- TODO: SRL architecture

entity Sync_FIFO is 
generic (
    Data_Length: integer := 8;
    Capacity: integer := 32;
    User_Length: integer := CLog2(Capacity + 1));
port (
    -- Back Clock
    Back_AClk: in std_ulogic;
    Back_AResetN: in std_ulogic;
    -- Back AXIS
    Back_TData: in u_unsigned(Data_Length - 1 downto 0) := (others => '0');
    Back_TStrb: in u_unsigned(Data_Length / 8 - 1 downto 0) := (others => '1');
    Back_TLast: in std_ulogic := '1';
    Back_TValid: in std_ulogic;    
    Back_TReady: out std_ulogic := '1';
    -- Front AXIS
    Front_TData: out u_unsigned(Data_Length - 1 downto 0) := (others => '0');
    Front_TUser: out u_unsigned(User_Length - 1 downto 0) := (others => '0');    
    Front_TValid: out std_ulogic;
    Front_TReady: in std_ulogic := '1');
begin
end Sync_FIFO;

architecture DPRAM of Sync_FIFO is

type Memory_Type is array (0 to 2**CLog2(Capacity) - 1) of u_unsigned(Back_TData'Length - 1 downto 0);
signal Memory: Memory_Type;
signal Wr_Addr: u_unsigned(CLog2(Capacity) - 1 downto 0);
signal Rd_Addr: u_unsigned(CLog2(Capacity) - 1 downto 0);
signal Size: u_unsigned(CLog2(Capacity + 1) - 1 downto 0);

begin

U0: process (all)
begin
    if (not Back_AResetN) = '1' then
        Wr_Addr <= to_unsigned(0, Wr_Addr'Length);
        Rd_Addr <= to_unsigned(0, Rd_Addr'Length);
        Size <= to_unsigned(0, Size'Length);
        Front_TValid <= '0';
        Back_TReady <= '1';
    elsif rising_edge(Back_AClk) then
        if (Back_TReady and Back_TValid and Back_TLast) = '1' then
            -- Push
            Wr_Addr <= Wr_Addr + 1;
            if (not (Front_TValid and Front_TReady)) = '1' then
                Size <= Size + 1;
                Front_TValid <= '1';
                if (Size = Capacity - 1) then
                    Back_TReady <= '0';
                end if;
            end if;
        end if;
        if (Front_TValid and Front_TReady) = '1' then
            -- Pop
            Rd_Addr <= Rd_Addr + 1;
            if (not (Back_TReady and Back_TValid and Back_TLast)) = '1' then
                Size <= Size - 1;
                if (Size = 1) then
                    Front_TValid <= '0';
                end if;                
                Back_TReady <= '1';
            end if;
        end if;
    end if;
    --
    if rising_edge(Back_AClk) then
        -- Write bytes.
        for i in 0 to Back_TData'Length / 8 - 1 loop
            if (Back_TReady and Back_TValid and Back_TStrb(i)) = '1' then
                Memory(to_integer(Wr_Addr))((i + 1) * 8 - 1 downto i * 8) <= Back_TData((i + 1) * 8 - 1 downto i * 8);
            end if;
        end loop;    
    end if;
    --
    Front_TData <= Memory(to_integer(Rd_Addr));
    Front_TUser <= resize(Size, Front_TUser'Length);
end process;        

end DPRAM;

architecture Reg_Slice of Sync_FIFO is
begin
    U0: process (all)
    begin
        Back_TReady <= /*Back_TValid and Back_TLast and*/ (not Front_TValid or (Front_TValid and Front_TReady));
        --
        if (not Back_AResetN) = '1' then
            Front_TValid <= '0';
        elsif rising_edge(Back_AClk) then
            if (Front_TValid and Front_TReady) = '1' then
                Front_TValid <= '0';
            end if;
            if (Back_TValid and Back_TLast and (not Front_TValid or (Front_TValid and Front_TReady))) = '1' then
                Front_TValid <= '1';
            end if;
        end if;
        --
        if rising_edge(Back_AClk) then
            -- Write bytes.
            for i in 0 to Front_TData'Length / 8 - 1 loop
                if (Back_TValid and Back_TStrb(i) and (not Front_TValid or (Front_TValid and Front_TReady))) = '1' then
                    Front_TData((i + 1) * 8 - 1 downto i * 8) <= Back_TData((i + 1) * 8 - 1 downto i * 8);
                end if;
            end loop;    
        end if;
        --
        Front_TUser <= resize("" & Front_TValid, Front_TUser'Length);
    end process;    
end architecture Reg_Slice; 

architecture URAM of Sync_FIFO is

-- RAM AXIS.
constant RAM_Data_Length: integer := Front_TData'Length;
constant RAM_TUser_Length: integer := Front_TUser'Length;
constant RAM_Num_Outst: integer := Capacity;
signal RAM_TData: u_unsigned(RAM_Data_Length - 1 downto 0) := (others => '0');
signal RAM_TStrb: u_unsigned(RAM_Data_Length / 8 - 1 downto 0) := (others => '1');
signal RAM_TUser: u_unsigned(RAM_TUser_Length - 1 downto 0) := (others => '0');
signal RAM_TLast: std_ulogic := '1';
signal RAM_TValid: std_ulogic;
signal RAM_TReady: std_ulogic := '1';    

type Memory_Type is array (0 to Capacity - 1) of u_unsigned(Back_TData'Length - 1 downto 0);
signal Memory: Memory_Type;
signal Wr_Addr: u_unsigned(CLog2(Capacity) - 1 downto 0);
signal Rd_Addr: u_unsigned(CLog2(Capacity) - 1 downto 0);
signal Size: u_unsigned(CLog2(Capacity + 1) - 1 downto 0);

begin

U0: process (all)
begin
    if (not Back_AResetN) = '1' then
        Wr_Addr <= to_unsigned(0, Wr_Addr'Length);
        Rd_Addr <= to_unsigned(0, Rd_Addr'Length);
        Size <= to_unsigned(0, Size'Length);
        Front_TValid <= '0';
        Back_TReady <= '1';
    elsif rising_edge(Back_AClk) then
        if (Back_TReady and Back_TValid and Back_TLast) = '1' then
            -- Push
            Wr_Addr <= Wr_Addr + 1;
            if (not (RAM_TValid and RAM_TReady)) = '1' then
                Size <= Size + 1;
                RAM_TValid <= '1';
                if (Size = Capacity - 1) then
                    Back_TReady <= '0';
                end if;
            end if;
        end if;
        if (RAM_TValid and RAM_TReady) = '1' then
            -- Pop
            Rd_Addr <= Rd_Addr + 1;
            if (not (Back_TReady and Back_TValid and Back_TLast)) = '1' then
                Size <= Size - 1;
                if (Size = 1) then
                    RAM_TValid <= '0';
                end if;
                Back_TReady <= '1';
            end if;
        end if;
    end if;
    --
    if rising_edge(Back_AClk) then
        -- Write bytes.
        for i in 0 to Back_TData'Length / 8 - 1 loop
            if (Back_TReady and Back_TValid and Back_TStrb(i)) = '1' then
                Memory(to_integer(Wr_Addr))((i + 1) * 8 - 1 downto i * 8) <= Back_TData((i + 1) * 8 - 1 downto i * 8);
            end if;
        end loop;    
    end if;
    --
    RAM_TData <= Memory(to_integer(Rd_Addr));
    RAM_TUser <= resize(Size, Ram_TUser'Length);
    -- Output register
    RAM_TReady <= /*RAM_TValid and*/ (not Front_TValid or (Front_TValid and Front_Tready));
    if (not Back_AResetN) = '1' then
        Front_TValid <= '0';
    elsif rising_edge(Back_AClk) then
        if (Front_TValid and Front_TReady) = '1' then
            Front_TValid <= '0';        
        end if;
        if (RAM_TValid and (not Front_TValid or (Front_TValid and Front_Tready))) = '1' then
            Front_TValid <= '1';
        end if;        
    end if;
    if rising_edge(Back_AClk) then
        if (RAM_TValid and (not Front_TValid or (Front_TValid and Front_Tready))) = '1' then
            Front_TData <= RAM_TData;
            Front_TUser <= RAM_TUser;
        end if;
    end if;
end process;        

end architecture URAM;
