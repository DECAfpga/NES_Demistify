
# Input delays

set_input_delay -clock [get_clocks {guest|clock_21mhz|altpll_component|auto_generated|pll1|clk[0]}] -reference_pin [get_ports ${RAM_CLK}] -max 6.4 [get_ports ${RAM_IN}]
set_input_delay -clock [get_clocks {guest|clock_21mhz|altpll_component|auto_generated|pll1|clk[0]}] -reference_pin [get_ports ${RAM_CLK}] -min 3.2 [get_ports ${RAM_IN}]

# Output delays


set_output_delay -clock [get_clocks {guest|clock_21mhz|altpll_component|auto_generated|pll1|clk[0]}] -reference_pin [get_ports ${RAM_CLK}] -max 1.5 [get_ports ${RAM_OUT}]
set_output_delay -clock [get_clocks {guest|clock_21mhz|altpll_component|auto_generated|pll1|clk[0]}] -reference_pin [get_ports ${RAM_CLK}] -min -0.8 [get_ports ${RAM_OUT}]

set_output_delay -clock [get_clocks {guest|clock_21mhz|altpll_component|auto_generated|pll1|clk[1]}] -max 0 [get_ports ${VGA_OUT}]
set_output_delay -clock [get_clocks {guest|clock_21mhz|altpll_component|auto_generated|pll1|clk[1]}] -min -5 [get_ports ${VGA_OUT}]

# false paths

set_false_path -from [get_clocks {spiclk}] -to [get_clocks {guest|clock_21mhz|altpll_component|auto_generated|pll1|clk[1]}]
set_false_path -from [get_clocks {guest|clock_21mhz|altpll_component|auto_generated|pll1|clk[1]}] -to [get_clocks {spiclk}]

set_false_path -to [get_ports ${FALSE_OUT}]

# Multicycles

set_multicycle_path -from [get_clocks {guest|clock_21mhz|altpll_component|auto_generated|pll1|clk[1]}] -to [get_clocks {guest|clock_21mhz|altpll_component|auto_generated|pll1|clk[0]}] -setup 2
set_multicycle_path -from [get_clocks {guest|clock_21mhz|altpll_component|auto_generated|pll1|clk[1]}] -to [get_clocks {guest|clock_21mhz|altpll_component|auto_generated|pll1|clk[0]}] -hold 1

set_multicycle_path -to ${VGA_OUT} -setup 2
set_multicycle_path -to ${VGA_OUT} -hold 1
