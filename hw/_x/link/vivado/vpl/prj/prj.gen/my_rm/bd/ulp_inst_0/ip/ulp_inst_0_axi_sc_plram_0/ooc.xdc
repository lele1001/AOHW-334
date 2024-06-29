# aclk {FREQ_HZ 249999985 CLK_DOMAIN bd_4885_pspmc_0_0_pl2_ref_clk PHASE 0.0} aclk1 {FREQ_HZ 299996999 CLK_DOMAIN cd_aclk_kernel_00 PHASE 0.0}
# Clock Domain: bd_4885_pspmc_0_0_pl2_ref_clk
create_clock -name aclk -period 4.000 [get_ports aclk]
# Clock Domain: cd_aclk_kernel_00
create_clock -name aclk1 -period 3.333 [get_ports aclk1]
# Generated clocks
