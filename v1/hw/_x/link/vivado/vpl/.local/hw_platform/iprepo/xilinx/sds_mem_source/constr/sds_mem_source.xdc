
# Use -quiet to suppress errors for optionally generated modules
#set QUIET "-quiet"

#set RBUS_CLK [get_clocks -include_generated_clocks -of_objects [get_ports rbus_clk]]
#set MBUS_CLK [get_clocks -include_generated_clocks -of_objects [get_ports mbus_clk]]
#set STREAM_CLK [get_clocks -include_generated_clocks -of_objects [get_ports stream_clk]]

# Define clock domains
#set_clock_groups -asynchronous -group $RBUS_CLK
#set_clock_groups -asynchronous -group $MBUS_CLK
#set_clock_groups -asynchronous -group $STREAM_CLK

# Multicycle periods
set MBUS_MC_SU 4
set MBUS_MC_H 3

# mm2s multicycle

set_multicycle_path $MBUS_MC_SU -setup -from [get_pins sds_mem_source0/mm2s_inst/burst_cnt_reg[*]/C]
set_multicycle_path $MBUS_MC_H -hold  -from [get_pins sds_mem_source0/mm2s_inst/burst_cnt_reg[*]/C]

set_multicycle_path $MBUS_MC_SU -setup -from [get_pins sds_mem_source0/mm2s_inst/last_burst_reg/C]
set_multicycle_path $MBUS_MC_H -hold  -from [get_pins sds_mem_source0/mm2s_inst/last_burst_reg/C]

set_multicycle_path $MBUS_MC_SU -setup -from [get_pins sds_mem_source0/mm2s_inst/addr_cnt_reg[*]/C]
set_multicycle_path $MBUS_MC_H -hold  -from [get_pins sds_mem_source0/mm2s_inst/addr_cnt_reg[*]/C]










