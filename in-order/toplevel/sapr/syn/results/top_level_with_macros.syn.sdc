###################################################################

# Created by write_sdc on Mon Jun 5 13:08:46 2023

###################################################################
set sdc_version 1.7

set_units -time ns -resistance MOhm -capacitance fF -voltage V -current mA
set_operating_conditions -max slow -max_library stdcells-wc.db:NangateOpenCellLibrary -min fast -min_library stdcells-bc.db:NangateOpenCellLibrary
set_max_fanout 32 [current_design]
set_max_transition 1 [current_design]
set_timing_derate -late -net_delay 1 
set_timing_derate -early -net_delay 0.8 
set_timing_derate -late -cell_delay 1 
set_timing_derate -early -cell_delay 0.8 
create_clock [get_ports clk]  -period 10  -waveform {0 5}
set_clock_uncertainty -setup 0.05  [get_clocks clk]
set_clock_uncertainty -hold 0.01  [get_clocks clk]
set_clock_transition -min -fall 0.05 [get_clocks clk]
set_clock_transition -min -rise 0.05 [get_clocks clk]
set_clock_transition -max -fall 0.05 [get_clocks clk]
set_clock_transition -max -rise 0.05 [get_clocks clk]
group_path -name Inputs  -from [get_ports reset]
set_input_delay -clock clk  0.1  [get_ports reset]
set_drive 0.00865463  [get_ports clk]
set_drive 0.00865463  [get_ports reset]
