###################################################################

# Created by write_sdc on Wed May 10 15:52:50 2023

###################################################################
set sdc_version 1.7

set_units -time ns -resistance 1.000000e+04kOhm -capacitance 1.000000e-04pF -voltage V -current uA
set_max_transition 1 [current_design]
set_max_fanout 32 [current_design]
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
