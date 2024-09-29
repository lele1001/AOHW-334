-- (c) Copyright 2022, Advanced Micro Devices, Inc.
-- 
-- Permission is hereby granted, free of charge, to any person obtaining a 
-- copy of this software and associated documentation files (the "Software"), 
-- to deal in the Software without restriction, including without limitation 
-- the rights to use, copy, modify, merge, publish, distribute, sublicense, 
-- and/or sell copies of the Software, and to permit persons to whom the 
-- Software is furnished to do so, subject to the following conditions:
-- 
-- The above copyright notice and this permission notice shall be included in 
-- all copies or substantial portions of the Software.
-- 
-- THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR 
-- IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, 
-- FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL 
-- THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER 
-- LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING 
-- FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER 
-- DEALINGS IN THE SOFTWARE.
------------------------------------------------------------

library ieee;
    use ieee.std_logic_1164.all;
    use ieee.numeric_std.all;

entity shell_utils_versal_remap_v1_0_0 is
    generic (
        C_TRANSPARENT_BITS        : integer                         := 28;
        C_MASTER_ADDR             : std_logic_vector(31 downto 0)   := X"00003000"; -- Bottom 16 bits assumed to be "0000"
        C_S_AXI_DATA_WIDTH        : integer range 32 to 128         := 128;
        C_S_AXI_ADDR_WIDTH        : integer range 32 to 64          := 64;
        C_XDEVICEFAMILY           : string                          := "no_family"
        );
    port (

        -----------------------------------------------------------------------
        -- Processor AXI Interface (S_AXI_ACLK)
        -----------------------------------------------------------------------

        AXI_ACLK        : in  std_logic;
        AXI_ARESETN     : in  std_logic;

        S_AXI_ARADDR    : in  std_logic_vector(C_S_AXI_ADDR_WIDTH-1 downto 0);
        S_AXI_ARBURST   : in  std_logic_vector(1 downto 0);
        S_AXI_ARCACHE   : in  std_logic_vector(3 downto 0);
        S_AXI_ARID      : in  std_logic_vector(1 downto 0);
        S_AXI_ARLEN     : in  std_logic_vector(7 downto 0);
        S_AXI_ARLOCK    : in  std_logic_vector(0 downto 0);
        S_AXI_ARPROT    : in  std_logic_vector(2 downto 0);
        S_AXI_ARREADY   : out std_logic;
        S_AXI_ARSIZE    : in  std_logic_vector(2 downto 0);
        S_AXI_ARVALID   : in  std_logic;

        S_AXI_AWADDR    : in  std_logic_vector(C_S_AXI_ADDR_WIDTH-1 downto 0);
        S_AXI_AWBURST   : in  std_logic_vector(1 downto 0);
        S_AXI_AWCACHE   : in  std_logic_vector(3 downto 0);
        S_AXI_AWID      : in  std_logic_vector(1 downto 0);
        S_AXI_AWLEN     : in  std_logic_vector(7 downto 0);
        S_AXI_AWLOCK    : in  std_logic_vector(0 downto 0);
        S_AXI_AWPROT    : in  std_logic_vector(2 downto 0);
        S_AXI_AWREADY   : out std_logic;
        S_AXI_AWSIZE    : in  std_logic_vector(2 downto 0);
        S_AXI_AWVALID   : in  std_logic;

        S_AXI_BID       : out std_logic_vector(1 downto 0);
        S_AXI_BREADY    : in  std_logic;
        S_AXI_BRESP     : out std_logic_vector(1 downto 0);
        S_AXI_BVALID    : out std_logic;

        S_AXI_RDATA     : out std_logic_vector(C_S_AXI_DATA_WIDTH-1 downto 0);
        S_AXI_RID       : out std_logic_vector(1 downto 0);
        S_AXI_RLAST     : out std_logic;
        S_AXI_RREADY    : in  std_logic;
        S_AXI_RRESP     : out std_logic_vector(1 downto 0);
        S_AXI_RVALID    : out std_logic;

        S_AXI_WDATA     : in  std_logic_vector(C_S_AXI_DATA_WIDTH-1 downto 0);
        S_AXI_WLAST     : in  std_logic;
        S_AXI_WREADY    : out std_logic;
        S_AXI_WSTRB     : in  std_logic_vector((C_S_AXI_DATA_WIDTH/8)-1 downto 0);
        S_AXI_WVALID    : in  std_logic;


        M_AXI_ARADDR    : out std_logic_vector(C_S_AXI_ADDR_WIDTH-1 downto 0);
        M_AXI_ARBURST   : out std_logic_vector(1 downto 0);
        M_AXI_ARCACHE   : out std_logic_vector(3 downto 0);
        M_AXI_ARID      : out std_logic_vector(1 downto 0);
        M_AXI_ARLEN     : out std_logic_vector(7 downto 0);
        M_AXI_ARLOCK    : out std_logic_vector(0 downto 0);
        M_AXI_ARPROT    : out std_logic_vector(2 downto 0);
        M_AXI_ARREADY   : in  std_logic;
        M_AXI_ARSIZE    : out std_logic_vector(2 downto 0);
        M_AXI_ARVALID   : out std_logic;

        M_AXI_AWADDR    : out  std_logic_vector(C_S_AXI_ADDR_WIDTH-1 downto 0);
        M_AXI_AWBURST   : out  std_logic_vector(1 downto 0);
        M_AXI_AWCACHE   : out  std_logic_vector(3 downto 0);
        M_AXI_AWID      : out  std_logic_vector(1 downto 0);
        M_AXI_AWLEN     : out  std_logic_vector(7 downto 0);
        M_AXI_AWLOCK    : out  std_logic_vector(0 downto 0);
        M_AXI_AWPROT    : out  std_logic_vector(2 downto 0);
        M_AXI_AWREADY   : in  std_logic;
        M_AXI_AWSIZE    : out std_logic_vector(2 downto 0);
        M_AXI_AWVALID   : out std_logic;

        M_AXI_BID       : in  std_logic_vector(1 downto 0);
        M_AXI_BREADY    : out std_logic;
        M_AXI_BRESP     : in  std_logic_vector(1 downto 0);
        M_AXI_BVALID    : in  std_logic;

        M_AXI_RDATA     : in  std_logic_vector(C_S_AXI_DATA_WIDTH-1 downto 0);
        M_AXI_RID       : in  std_logic_vector(1 downto 0);
        M_AXI_RLAST     : in  std_logic;
        M_AXI_RREADY    : out std_logic;
        M_AXI_RRESP     : in  std_logic_vector(1 downto 0);
        M_AXI_RVALID    : in  std_logic;

        M_AXI_WDATA     : out std_logic_vector(C_S_AXI_DATA_WIDTH-1 downto 0);
        M_AXI_WLAST     : out std_logic;
        M_AXI_WREADY    : in  std_logic;
        M_AXI_WSTRB     : out std_logic_vector((C_S_AXI_DATA_WIDTH/8)-1 downto 0);
        M_AXI_WVALID    : out std_logic
    );

end shell_utils_versal_remap_v1_0_0;


architecture top of shell_utils_versal_remap_v1_0_0 is


    -------------------------------------------------------------------------------
    -- Constant Declarations
    -------------------------------------------------------------------------------
  
    constant C_MASTER_ADDR_64 : std_logic_vector(63 downto 0)   := X"0000" & C_MASTER_ADDR & X"0000";
  
    -------------------------------------------------------------------------------
    -- Signal Declarations
    -------------------------------------------------------------------------------

begin

    M_AXI_ARVALID   <= S_AXI_ARVALID;
    M_AXI_ARADDR    <= C_MASTER_ADDR_64(C_MASTER_ADDR_64'HIGH downto C_TRANSPARENT_BITS) & S_AXI_ARADDR(C_TRANSPARENT_BITS-1 downto 0);
    M_AXI_ARID      <= S_AXI_ARID;
    M_AXI_ARBURST   <= S_AXI_ARBURST;
    M_AXI_ARCACHE   <= S_AXI_ARCACHE;
    M_AXI_ARLEN     <= S_AXI_ARLEN;
    M_AXI_ARLOCK    <= S_AXI_ARLOCK;
    M_AXI_ARPROT    <= S_AXI_ARPROT;
    M_AXI_ARSIZE    <= S_AXI_ARSIZE;

    M_AXI_AWVALID   <= S_AXI_AWVALID;
    M_AXI_AWADDR    <= C_MASTER_ADDR_64(C_MASTER_ADDR_64'HIGH downto C_TRANSPARENT_BITS) & S_AXI_AWADDR(C_TRANSPARENT_BITS-1 downto 0);
    M_AXI_AWID      <= S_AXI_AWID;
    M_AXI_AWBURST   <= S_AXI_AWBURST;
    M_AXI_AWCACHE   <= S_AXI_AWCACHE;
    M_AXI_AWLEN     <= S_AXI_AWLEN;
    M_AXI_AWLOCK    <= S_AXI_AWLOCK;
    M_AXI_AWPROT    <= S_AXI_AWPROT;
    M_AXI_AWSIZE    <= S_AXI_AWSIZE;

    M_AXI_BREADY    <= S_AXI_BREADY;

    M_AXI_RREADY    <= S_AXI_RREADY;

    M_AXI_WVALID    <= S_AXI_WVALID;
    M_AXI_WDATA     <= S_AXI_WDATA;
    M_AXI_WLAST     <= S_AXI_WLAST;
    M_AXI_WSTRB     <= S_AXI_WSTRB;


    S_AXI_ARREADY   <= M_AXI_ARREADY;
    
    S_AXI_AWREADY   <= M_AXI_AWREADY;
    
    S_AXI_BVALID    <= M_AXI_BVALID;
    S_AXI_BRESP     <= M_AXI_BRESP;
    S_AXI_BID       <= M_AXI_BID;
    
    S_AXI_RVALID    <= M_AXI_RVALID;
    S_AXI_RDATA     <= M_AXI_RDATA;
    S_AXI_RID       <= M_AXI_RID;
    S_AXI_RLAST     <= M_AXI_RLAST;
    S_AXI_RRESP     <= M_AXI_RRESP;
    
    S_AXI_WREADY    <= M_AXI_WREADY;

end top;


