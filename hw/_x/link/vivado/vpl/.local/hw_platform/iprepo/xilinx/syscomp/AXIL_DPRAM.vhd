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
library std;

use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;
use IEEE.math_real.all;
use std.env;
use Work.Utils.all;
use Work.AXIL;

entity AXIL_DPRAM is
generic (
    ClockA_Domain, ClockB_Domain: string; 
    ClockA_Period, ClockB_Period: time; 
    PortA_Prm, PortB_Prm: AXIL.Parameters;
    RAM_Style_Attr: string := "block");
port (
    ClockA_AClk, ClockB_AClk: in std_ulogic;
    ClockA_AResetN, ClockB_AResetN: in std_ulogic;
    PortA_Fwd: in AXIL.Forward_Signals(AWAddr(PortA_Prm.Base_Addr'Range), ARAddr(PortA_Prm.Base_Addr'Range),
        WData(PortA_Prm.Data_Size * 8 - 1 downto 0), WStrb(PortA_Prm.Data_Size - 1 downto 0));
    PortA_Bwd: out AXIL.Backward_Signals(RData(PortA_Prm.Data_Size * 8 - 1 downto 0));
    PortB_Fwd: in AXIL.Forward_Signals(AWAddr(PortB_Prm.Base_Addr'Range), ARAddr(PortB_Prm.Base_Addr'Range),
        WData(PortB_Prm.Data_Size * 8 - 1 downto 0), WStrb(PortB_Prm.Data_Size - 1 downto 0));
    PortB_Bwd: out AXIL.Backward_Signals(RData(PortB_Prm.Data_Size * 8 - 1 downto 0)));
end entity AXIL_DPRAM;

architecture Behavior of AXIL_DPRAM is

type RAM_Type is array (0 to 2 ** PortA_Fwd.AWAddr'length - 1) of unsigned(PortA_Fwd.WData'range);
signal Storage: RAM_Type;
attribute RAM_Style: string;
attribute RAM_Style of Storage: signal is RAM_Style_Attr;

signal RAM_TData: u_unsigned(PortA_Bwd.RData'range);
signal RAM_TValid: std_ulogic;

begin

Checks: process
begin
    if ClockA_Domain /= PortA_Prm.Domain then
        assert false report "Clock domain mismatch" severity Error;
        env.stop;
    end if;
    if ClockB_Domain /= PortB_Prm.Domain then
        assert false report "Clock domain mismatch" severity Error;
        env.stop;
    end if;
    wait;
end process;

Access_PortA: process (all)
    variable Addr: integer;
begin
    -- Mux address, make write address default.
    Addr := to_integer(PortA_Fwd.AWAddr) 
        when (not PortA_Fwd.ARValid or (PortA_Fwd.ARValid and PortA_Fwd.AWValid and PortA_Fwd.WValid)) = '1' 
        else to_integer(PortA_Fwd.ARAddr);
    
    -- Write
    if rising_edge(ClockA_AClk) then
        for i in 0 to PortA_Fwd.WData'length / 8 - 1 loop
            if (PortA_Fwd.AWValid and PortA_Fwd.WValid and PortA_Fwd.WStrb(i)) = '1' then                
                Storage(Addr)((i + 1) * 8 - 1 downto i * 8) <= PortA_Fwd.WData((i + 1) * 8 - 1 downto i * 8);
            end if;
        end loop;    
    end if;
    PortA_Bwd.AWReady <= /*PortA_Fwd.AWValid and*/ PortA_Fwd.WValid;
    PortA_Bwd.WReady <= PortA_Fwd.AWValid /*and PortA_Fwd.WValid*/;
    
    -- Read    
    if ClockA_AResetN = '0' then
        PortA_Bwd.RValid <= '0';
    elsif rising_edge(ClockA_AClk) then
        if (PortA_Bwd.RValid and PortA_Fwd.RReady) = '1' then
            PortA_Bwd.RValid <= '0';        
        end if;
        if (PortA_Fwd.ARValid and not (PortA_Fwd.AWValid and PortA_Fwd.WValid) 
                and (not PortA_Bwd.RValid or (PortA_Bwd.RValid and PortA_Fwd.RReady))) = '1' then
            PortA_Bwd.RValid <= '1';
        end if;        
    end if;
    if rising_edge(ClockA_AClk) then
        if (PortA_Fwd.ARValid and not (PortA_Fwd.AWValid and PortA_Fwd.WValid) 
                and (not PortA_Bwd.RValid or (PortA_Bwd.RValid and PortA_Fwd.RReady))) = '1' then
            PortA_Bwd.RData <= Storage(Addr);
        end if;
    end if;    
    PortA_Bwd.ARReady <= /*PortA_Fwd.ARValid and*/ not (PortA_Fwd.AWValid and PortA_Fwd.WValid) 
            and (not PortA_Bwd.RValid or (PortA_Bwd.RValid and PortA_Fwd.RReady));    
end process;

Access_PortB: process (all)
    variable Addr: integer;
begin
    -- Mux address, make read address default.
    Addr := to_integer(PortB_Fwd.ARAddr) 
        when (not (PortB_Fwd.AWValid and PortB_Fwd.WValid) or (PortB_Fwd.AWValid and PortB_Fwd.WValid and PortB_Fwd.ARValid)) = '1' 
        else to_integer(PortB_Fwd.AWAddr);

    -- Read    
    if ClockB_AResetN = '0' then
        PortB_Bwd.RValid <= '0';
    elsif rising_edge(ClockB_AClk) then
        if (PortB_Bwd.RValid and PortB_Fwd.RReady) = '1' then
            PortB_Bwd.RValid <= '0';        
        end if;
        if (PortB_Fwd.ARValid and (not PortB_Bwd.RValid or (PortB_Bwd.RValid and PortB_Fwd.RReady))) = '1' then
            PortB_Bwd.RValid <= '1';
        end if;        
    end if;
    if rising_edge(ClockB_AClk) then
        if (PortB_Fwd.ARValid and (not PortB_Bwd.RValid or (PortB_Bwd.RValid and PortB_Fwd.RReady))) = '1' then
            PortB_Bwd.RData <= Storage(Addr);
        end if;
    end if;    
    PortB_Bwd.ARReady <= /*PortB_Fwd.ARValid and*/ (not PortB_Bwd.RValid or (PortB_Bwd.RValid and PortB_Fwd.RReady));    
    
    -- Write
    if rising_edge(ClockB_AClk) then
        for i in 0 to PortB_Fwd.WData'length / 8 - 1 loop
            if (not PortB_Fwd.ARValid and PortB_Fwd.AWValid and PortB_Fwd.WValid and PortB_Fwd.WStrb(i)) = '1' then                
                Storage(Addr)((i + 1) * 8 - 1 downto i * 8) <= PortB_Fwd.WData((i + 1) * 8 - 1 downto i * 8);
            end if;
        end loop;    
    end if;
    PortB_Bwd.AWReady <= not PortB_Fwd.ARValid and /*PortB_Fwd.AWValid and*/ PortB_Fwd.WValid;
    PortB_Bwd.WReady <= not PortB_Fwd.ARValid and PortB_Fwd.AWValid /*and PortB_Fwd.WValid*/;    
end process;

end Behavior;
