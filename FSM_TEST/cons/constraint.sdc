create_clock -name clk -period 20 [get_ports clk]
set_clock_transition -rise 1 [get_clocks clk]
set_clock_transition -fall 1 [get_clocks clk]
set_clock_uncertainty -setup 1 [get_ports clk]
set_clock_uncertainty -hold 0.5 [get_ports clk]
set_input_delay -max 8.0 [get_ports reset] -clock [get_clocks clk]

set_input_delay -max 8.0 [get_ports x] -clock [get_clocks clk]

set_input_transition -max 6 [get_ports reset]

set_input_transition -max 6 [get_ports x]

#create_generated_clock -name mygen_clk -divide_by 2 -source clk [get_ports clk]
set_output_delay -max 3.0 [get_ports y] -clock [get_clocks clk]

set_max_transition 3.0 [get_ports y]

set_load -max 1 [get_ports y]
set_load -min 0.1 [get_ports y]


