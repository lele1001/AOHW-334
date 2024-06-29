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
library Std;

use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;
use IEEE.math_real.all;
use Std.Env.All;
use Work.Utils.all;

-- TODO: Unaligned resize

entity AXIS_Queue is
generic (
    -- Back Clock
    Back_Clock_Domain: string;
    Back_Clock_Period: time := 10 ns;
    -- Front Clock
    Front_Clock_Period: time := 10 ns;
    Front_Clock_Domain: string;
    -- Back
    Back_Domain: string;
    Back_Data_Length: integer range 1 * 8 to 512 * 8 := 8;
    Back_TUser_Length: positive := Back_Data_Length / 8;
    Back_TId_Length: positive := 1;
    Back_TDest_Length: positive := 1;
    Back_Num_Outst: positive := 1;
    -- Front
    Front_Domain: string;
    Front_Data_Length: integer range 1 * 8 to 512 * 8 := 8;
    Front_TUser_Length: positive := Front_Data_Length / 8;
    Front_TId_Length: positive := 1;
    Front_TDest_Length: positive := 1;
    Front_Num_Outst: positive := 1;
    -- Other
    Capacity: natural;
    Min_Packet_Size: positive := 1);
port (
    -- Back Clock
    Back_Clock_AClk: in std_ulogic;
    Back_Clock_AResetN: in std_ulogic;
    -- Front Clock
    Front_Clock_AClk: in std_ulogic;
    Front_Clock_AResetN: in std_ulogic;
    -- Back
    Back_TData: in u_unsigned(Back_Data_Length - 1 downto 0) := (others => '0');
    Back_TStrb: in u_unsigned(Back_Data_Length / 8 - 1 downto 0) := (others => '1');
    Back_TLast: in std_logic := '1';
    Back_TUser: in u_unsigned(Back_TUser_Length - 1 downto 0) := (others => '0');
    Back_TId: in u_unsigned(Back_TId_Length - 1 downto 0) := (others => '0');
    Back_TDest: in u_unsigned(Back_TDest_Length - 1 downto 0) := (others => '0');
    Back_TValid: in std_ulogic;
    Back_TReady: out std_ulogic;
    -- Front
    Front_TData: out u_unsigned(Front_Data_Length - 1 downto 0);
    Front_TStrb: out u_unsigned(Front_Data_Length / 8 - 1 downto 0);
    Front_TLast: out std_logic;
    Front_TUser: out u_unsigned(Front_TUser_Length - 1 downto 0);
    Front_TId: out u_unsigned(Front_TId_Length - 1 downto 0);
    Front_TDest: out u_unsigned(Front_TDest_Length - 1 downto 0);
    Front_TValid: out std_ulogic;
    Front_TReady: in std_ulogic);
begin
end AXIS_Queue;

architecture Behavior of AXIS_Queue is

constant Up_Ratio: integer := LCM(Back_TData'Length, Front_TData'Length) / Back_TData'Length;
constant Down_Ratio: integer := LCM(Back_TData'Length, Front_TData'Length) / Front_TData'Length;

-- Upsized
constant Upsized_Num_Outst: integer := (Back_Num_Outst + Up_Ratio - 1) / Up_Ratio;
signal Upsized_TData: u_unsigned(Back_TData'Length * Up_Ratio - 1 downto 0);
signal Upsized_TStrb: u_unsigned(Back_TData'Length * Up_Ratio / 8 - 1 downto 0);
signal Upsized_TUser: u_unsigned(Back_TUser'Length * Up_Ratio - 1 downto 0);
signal Upsized_TId: u_unsigned(Back_TId'Length - 1 downto 0);
signal Upsized_TDest: u_unsigned(Back_TDest'Length - 1 downto 0);
signal Upsized_TLast: std_logic;
signal Upsized_TValid: std_logic;
signal Upsized_TReady: std_logic;

-- Buffered
constant Buffered_Num_Outst: integer := (Back_Num_Outst + Up_Ratio - 1) / Up_Ratio;
signal Buffered_TData: u_unsigned(Back_TData'Length * Up_Ratio - 1 downto 0);
signal Buffered_TStrb: u_unsigned(Back_TData'Length * Up_Ratio / 8 - 1 downto 0);
signal Buffered_TUser: u_unsigned(Back_TUser'Length * Up_Ratio - 1 downto 0);
signal Buffered_TId: u_unsigned(Back_TId'Length - 1 downto 0);
signal Buffered_TDest: u_unsigned(Back_TDest'Length - 1 downto 0);
signal Buffered_TLast: std_logic;
signal Buffered_TValid: std_logic;
signal Buffered_TReady: std_logic;

begin

Checks: process
begin
    if Back_Clock_Domain /= Back_Domain then
        assert false report "Clock domain mismatch" severity Error;
        stop;
    end if;
    if Front_Clock_Domain /= Front_Domain then
        assert false report "Clock domain mismatch" severity Error;
        stop;
    end if;
    if Back_TUser_Length mod (Back_Data_Length / 8) /= 0 then
        assert false report "TUser'length must be multiple of Data_Size" severity error;
        stop;
    end if;
    if Front_TUser_Length mod (Front_Data_Length / 8) /= 0 then
        assert false report "TUser'length must be multiple of Data_Size" severity error;
        stop;
    end if;
    wait;
end process;

Upsizer: if Back_TData'Length < Buffered_TData'Length generate
    signal Is_Last: std_ulogic := '1';
    signal Counter: u_unsigned(CLog2(Up_Ratio) - 1 downto 0);
begin
    Main: process (all)
    begin
        Is_Last <= '0';
        if Counter = Up_Ratio - 1 then
            Is_Last <= '1';
        end if;
        Back_TReady <= /*Back_TValid and*/ (not Upsized_TValid or (Upsized_TValid and Upsized_TReady));  
        --
        if (not Back_Clock_AResetN) = '1' then
            Upsized_TValid <= '0';
            Counter <= to_unsigned(0, Counter'Length);
        elsif rising_edge(Back_Clock_AClk) then
            if (Upsized_TValid and Upsized_TReady) = '1' then
                Upsized_TValid <= '0';
            end if;
            if (Back_TValid and (not Upsized_TValid or (Upsized_TValid and Upsized_TReady))) = '1' then
                Counter <= Counter + '1';
                if Is_Last = '1' then
                    Upsized_TValid <= '1';
                    Counter <= to_unsigned(0, Counter'Length); 
                    Upsized_TLast <= Back_TLast;
                    Upsized_TId <= Back_TId;
                    Upsized_TDest <= Back_TDest;    
                end if;
                for i in 0 to Up_Ratio - 1 loop
                    if i = Counter then
                        Upsized_TData((i + 1) * Back_TData'Length - 1 downto i * Back_TData'Length) <= Back_TData;
                        Upsized_TStrb((i + 1) * Back_TStrb'Length - 1 downto i * Back_TStrb'Length) <= Back_TStrb;
                        Upsized_TUser((i + 1) * Back_TUser'Length - 1 downto i * Back_TUser'Length) <= Back_TUser;
                    end if;
                end loop;
            end if;
        end if;
    end process;
else generate
    Back_TReady <= Upsized_TReady;
    Upsized_TData <= Back_TData;
    Upsized_TStrb <= Back_TStrb;
    Upsized_TUser <= Back_TUser;
    Upsized_TId <= Back_TId;
    Upsized_TDest <= Back_TDest;
    Upsized_TLast <= Back_TLast;
    Upsized_TValid <= Back_TValid;        
end generate Upsizer;

Buffering: if (Capacity > 0 or Back_Domain /= Front_Domain) generate 
    signal FIFO0_TData: u_unsigned((Upsized_TData'Length + Upsized_TStrb'Length + Upsized_TUser'Length + 1 + 7) / 8 * 8 - 1 downto 0);
    signal FIFO1_TData: u_unsigned((Upsized_TId'Length + Upsized_TDest'Length + 7) / 8 * 8 - 1 downto 0);
begin
    FIFO0: entity work.Auto_FIFO 
    generic map (
        -- Back_Clock
        Back_Clock_Domain => Back_Clock_Domain,
        Back_Clock_Period => Back_Clock_Period,
        -- Back        
        Back_Domain => Back_Domain,
        Back_Data_Length => FIFO0_TData'Length,
        Back_Num_Outst => Back_Num_Outst,
        -- Front_Clock
        Front_Clock_Domain => Front_Clock_Domain,
        Front_Clock_Period => Front_Clock_Period,
        -- Font
        Front_Domain => Front_Domain,
        Front_Data_Length => FIFO0_TData'Length,
        Front_Num_Outst => Front_Num_Outst,
        -- Other
        Capacity => Capacity)
    port map (
        -- Back AXIS
        Back_Clock_AClk => Back_Clock_AClk,
        Back_Clock_AResetN => Back_Clock_AResetN,
        Back_TData => resize(Upsized_TData & Upsized_TStrb & Upsized_TUser & Upsized_TLast, FIFO0_TData'Length),
        Back_TValid => Upsized_TValid,
        Back_TReady => Upsized_TReady,
        -- Front AXIS
        Front_Clock_AClk => Front_Clock_AClk,
        Front_Clock_AResetN => Front_Clock_AResetN,
        Front_TData => FIFO0_TData,
        Front_TValid => Buffered_TValid,
        Front_TReady => Buffered_TReady);
    (Buffered_TData, Buffered_TStrb, Buffered_TUser, Buffered_TLast) <= resize(FIFO0_TData, 
            Buffered_TData'Length + Buffered_TStrb'Length + Buffered_TUser'Length + 1);
            
    FIFO1: entity work.Auto_FIFO 
    generic map (
        -- Back_Clock
        Back_Clock_Domain => Back_Clock_Domain,
        Back_Clock_Period => Back_Clock_Period,
        -- Back        
        Back_Domain => Back_Domain,
        Back_Data_Length => FIFO1_TData'Length,
        Back_Num_Outst => Back_Num_Outst,
        -- Front_Clock
        Front_Clock_Domain => Front_Clock_Domain,
        Front_Clock_Period => Front_Clock_Period,
        -- Font
        Front_Domain => Front_Domain,
        Front_Data_Length => FIFO1_TData'Length,
        Front_Num_Outst => Front_Num_Outst,
        -- Other
        Capacity => (Capacity + Min_Packet_Size - 1) / Min_Packet_Size)
    port map (
        -- Back AXIS
        Back_Clock_AClk => Back_Clock_AClk,
        Back_Clock_AResetN => Back_Clock_AResetN,
        Back_TData => resize(Upsized_TId & Upsized_TDest, FIFO1_TData'Length),
        Back_TValid => Upsized_TValid and Upsized_TLast and Upsized_TReady,
        Back_TReady => open,
        -- Front AXIS
        Front_Clock_AClk => Front_Clock_AClk,
        Front_Clock_AResetN => Front_Clock_AResetN,
        Front_TData => FIFO1_TData,
        Front_TValid => open,
        Front_TReady => Buffered_TReady and Buffered_TValid and Buffered_TLast);
    (Buffered_TId, Buffered_TDest) <= resize(FIFO1_TData, Buffered_TId'Length + Buffered_TDest'Length);  
else generate
    Upsized_TReady <= Buffered_TReady;
    Buffered_TData <= Upsized_TData;
    Buffered_TStrb <= Upsized_TStrb;
    Buffered_TUser <= Upsized_TUser;
    Buffered_TId <= Upsized_TId;
    Buffered_TDest <= Upsized_TDest;
    Buffered_TLast <= Upsized_TLast;
    Buffered_TValid <= Upsized_TValid;        
end generate Buffering;

Downsizer: if Front_TData'Length < Buffered_TData'Length generate
    signal Counter: u_unsigned(CLog2(Down_Ratio) - 1 downto 0);
    signal Is_Last: std_ulogic := '1';
begin
    U0: process (all)
    begin
        Is_Last <= '0';
        if Counter = Down_Ratio - 1 then
            Is_Last <= '1';
        end if;
        Buffered_TReady <= Is_Last and /*Buffered_TValid and*/ (not Front_TValid or (Front_TValid and Front_TReady));      
        --
        if (not Front_Clock_AResetN) = '1' then
            Front_TValid <= '0';
            Counter <= to_unsigned(0, Counter'Length);
        elsif rising_edge(Front_Clock_AClk) then
            if (Front_TValid and Front_TReady) = '1' then
                Front_TValid <= '0';
            end if;
            if (Buffered_TValid and (not Front_TValid or (Front_TValid and Front_TReady))) = '1' then
                Front_TValid <= '1';
                Counter <= Counter + '1';
                Front_TLast <= '0';
                if Is_Last = '1' then
                    Counter <= to_unsigned(0, Counter'Length);
                    Front_TLast <= Buffered_TLast;
                    Front_TId <= Buffered_TId;
                    Front_TDest <= Buffered_TDest; 
                end if;
                for i in 0 to Down_Ratio - 1 loop
                    if Counter = i then
                        Front_TData <= Buffered_TData((i + 1) * Front_TData'Length - 1 downto i * Front_TData'Length);
                        Front_TStrb <= Buffered_TStrb((i + 1) * Front_TStrb'Length - 1 downto i * Front_TStrb'Length);
                        Front_TUser <= Buffered_TUser((i + 1) * Front_TUser'Length - 1 downto i * Front_TUser'Length);
                    end if;
                end loop; 
            end if;
        end if;
    end process;
else generate
    Buffered_TReady <= Front_TReady;
    Front_TData <= Buffered_TData;
    Front_TStrb <= Buffered_TStrb;
    Front_TUser <= Buffered_TUser;
    Front_TId <= Buffered_TId;
    Front_TDest <= Buffered_TDest;
    Front_TLast <= Buffered_TLast;
    Front_TValid <= Buffered_TValid;        
end generate Downsizer;

end Behavior;
