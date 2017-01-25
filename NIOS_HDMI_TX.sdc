## Generated SDC file "NIOS_HDMI_TX.sdc"

## Copyright (C) 1991-2015 Altera Corporation. All rights reserved.
## Your use of Altera Corporation's design tools, logic functions 
## and other software and tools, and its AMPP partner logic 
## functions, and any output files from any of the foregoing 
## (including device programming or simulation files), and any 
## associated documentation or information are expressly subject 
## to the terms and conditions of the Altera Program License 
## Subscription Agreement, the Altera Quartus Prime License Agreement,
## the Altera MegaCore Function License Agreement, or other 
## applicable license agreement, including, without limitation, 
## that your use is for the sole purpose of programming logic 
## devices manufactured by Altera and sold by Altera or its 
## authorized distributors.  Please refer to the applicable 
## agreement for further details.


## VENDOR  "Altera"
## PROGRAM "Quartus Prime"
## VERSION "Version 15.1.0 Build 185 10/21/2015 SJ Standard Edition"

## DATE    "Wed Jan 25 13:55:25 2017"

##
## DEVICE  "10M50DAF484C6GES"
##


#**************************************************************
# Time Information
#**************************************************************

set_time_format -unit ns -decimal_places 3



#**************************************************************
# Create Clock
#**************************************************************

create_clock -name {altera_reserved_tck} -period 100.000 -waveform { 0.000 50.000 } [get_ports {altera_reserved_tck}]
create_clock -name {ADC_CLK_10} -period 100.000 -waveform { 0.000 50.000 } [get_ports {ADC_CLK_10}]
create_clock -name {MAX10_CLK1_50} -period 20.000 -waveform { 0.000 10.000 } [get_ports {MAX10_CLK1_50}]
create_clock -name {MAX10_CLK2_50} -period 20.000 -waveform { 0.000 10.000 } [get_ports {MAX10_CLK2_50}]
create_clock -name {NET_RX_CLK} -period 40.000 -waveform { 0.000 20.000 } [get_ports {NET_RX_CLK}]
create_clock -name {NET_TX_CLK} -period 40.000 -waveform { 0.000 20.000 } [get_ports {NET_TX_CLK}]
create_clock -name {USB_CLKIN} -period 16.666 -waveform { 0.000 8.333 } [get_ports {USB_CLKIN}]


#**************************************************************
# Create Generated Clock
#**************************************************************

create_generated_clock -name {u_vpg|u_pll|altpll_component|auto_generated|pll1|clk[0]} -source [get_pins {u_vpg|u_pll|altpll_component|auto_generated|pll1|inclk[0]}] -duty_cycle 50.000 -multiply_by 95 -divide_by 32 -master_clock {MAX10_CLK2_50} [get_pins {u_vpg|u_pll|altpll_component|auto_generated|pll1|clk[0]}] 


#**************************************************************
# Set Clock Latency
#**************************************************************



#**************************************************************
# Set Clock Uncertainty
#**************************************************************

set_clock_uncertainty -rise_from [get_clocks {u_vpg|u_pll|altpll_component|auto_generated|pll1|clk[0]}] -rise_to [get_clocks {u_vpg|u_pll|altpll_component|auto_generated|pll1|clk[0]}]  0.020  
set_clock_uncertainty -rise_from [get_clocks {u_vpg|u_pll|altpll_component|auto_generated|pll1|clk[0]}] -fall_to [get_clocks {u_vpg|u_pll|altpll_component|auto_generated|pll1|clk[0]}]  0.020  
set_clock_uncertainty -fall_from [get_clocks {u_vpg|u_pll|altpll_component|auto_generated|pll1|clk[0]}] -rise_to [get_clocks {u_vpg|u_pll|altpll_component|auto_generated|pll1|clk[0]}]  0.020  
set_clock_uncertainty -fall_from [get_clocks {u_vpg|u_pll|altpll_component|auto_generated|pll1|clk[0]}] -fall_to [get_clocks {u_vpg|u_pll|altpll_component|auto_generated|pll1|clk[0]}]  0.020  
set_clock_uncertainty -rise_from [get_clocks {MAX10_CLK1_50}] -rise_to [get_clocks {MAX10_CLK1_50}]  0.020  
set_clock_uncertainty -rise_from [get_clocks {MAX10_CLK1_50}] -fall_to [get_clocks {MAX10_CLK1_50}]  0.020  
set_clock_uncertainty -fall_from [get_clocks {MAX10_CLK1_50}] -rise_to [get_clocks {MAX10_CLK1_50}]  0.020  
set_clock_uncertainty -fall_from [get_clocks {MAX10_CLK1_50}] -fall_to [get_clocks {MAX10_CLK1_50}]  0.020  
set_clock_uncertainty -rise_from [get_clocks {altera_reserved_tck}] -rise_to [get_clocks {altera_reserved_tck}]  0.020  
set_clock_uncertainty -rise_from [get_clocks {altera_reserved_tck}] -fall_to [get_clocks {altera_reserved_tck}]  0.020  
set_clock_uncertainty -fall_from [get_clocks {altera_reserved_tck}] -rise_to [get_clocks {altera_reserved_tck}]  0.020  
set_clock_uncertainty -fall_from [get_clocks {altera_reserved_tck}] -fall_to [get_clocks {altera_reserved_tck}]  0.020  


#**************************************************************
# Set Input Delay
#**************************************************************



#**************************************************************
# Set Output Delay
#**************************************************************

set_output_delay  -max -clock [get_clocks {u_vpg|u_pll|altpll_component|auto_generated|pll1|clk[0]}]  1.800 [get_ports {HDMI_TX_DE}]
set_output_delay  -min -clock [get_clocks {u_vpg|u_pll|altpll_component|auto_generated|pll1|clk[0]}]  -1.300 [get_ports {HDMI_TX_DE}]
set_output_delay -add_delay -max -clock_fall -clock [get_clocks {u_vpg|u_pll|altpll_component|auto_generated|pll1|clk[0]}]  1.800 [get_ports {HDMI_TX_DE}]
set_output_delay -add_delay -min -clock_fall -clock [get_clocks {u_vpg|u_pll|altpll_component|auto_generated|pll1|clk[0]}]  -1.3 [get_ports {HDMI_TX_DE}]
set_output_delay  -max -clock [get_clocks {u_vpg|u_pll|altpll_component|auto_generated|pll1|clk[0]}]  1.800 [get_ports {HDMI_TX_D[0]}]
set_output_delay  -min -clock [get_clocks {u_vpg|u_pll|altpll_component|auto_generated|pll1|clk[0]}]  -1.300 [get_ports {HDMI_TX_D[0]}]
set_output_delay -add_delay -max -clock_fall -clock [get_clocks {u_vpg|u_pll|altpll_component|auto_generated|pll1|clk[0]}]  1.800 [get_ports {HDMI_TX_D[0]}]
set_output_delay -add_delay -min -clock_fall -clock [get_clocks {u_vpg|u_pll|altpll_component|auto_generated|pll1|clk[0]}]  -1.3 [get_ports {HDMI_TX_D[0]}]
set_output_delay  -max -clock [get_clocks {u_vpg|u_pll|altpll_component|auto_generated|pll1|clk[0]}]  1.800 [get_ports {HDMI_TX_D[1]}]
set_output_delay  -min -clock [get_clocks {u_vpg|u_pll|altpll_component|auto_generated|pll1|clk[0]}]  -1.300 [get_ports {HDMI_TX_D[1]}]
set_output_delay -add_delay -max -clock_fall -clock [get_clocks {u_vpg|u_pll|altpll_component|auto_generated|pll1|clk[0]}]  1.800 [get_ports {HDMI_TX_D[1]}]
set_output_delay -add_delay -min -clock_fall -clock [get_clocks {u_vpg|u_pll|altpll_component|auto_generated|pll1|clk[0]}]  -1.3 [get_ports {HDMI_TX_D[1]}]
set_output_delay  -max -clock [get_clocks {u_vpg|u_pll|altpll_component|auto_generated|pll1|clk[0]}]  1.800 [get_ports {HDMI_TX_D[2]}]
set_output_delay  -min -clock [get_clocks {u_vpg|u_pll|altpll_component|auto_generated|pll1|clk[0]}]  -1.300 [get_ports {HDMI_TX_D[2]}]
set_output_delay -add_delay -max -clock_fall -clock [get_clocks {u_vpg|u_pll|altpll_component|auto_generated|pll1|clk[0]}]  1.800 [get_ports {HDMI_TX_D[2]}]
set_output_delay -add_delay -min -clock_fall -clock [get_clocks {u_vpg|u_pll|altpll_component|auto_generated|pll1|clk[0]}]  -1.3 [get_ports {HDMI_TX_D[2]}]
set_output_delay  -max -clock [get_clocks {u_vpg|u_pll|altpll_component|auto_generated|pll1|clk[0]}]  1.800 [get_ports {HDMI_TX_D[3]}]
set_output_delay  -min -clock [get_clocks {u_vpg|u_pll|altpll_component|auto_generated|pll1|clk[0]}]  -1.300 [get_ports {HDMI_TX_D[3]}]
set_output_delay -add_delay -max -clock_fall -clock [get_clocks {u_vpg|u_pll|altpll_component|auto_generated|pll1|clk[0]}]  1.800 [get_ports {HDMI_TX_D[3]}]
set_output_delay -add_delay -min -clock_fall -clock [get_clocks {u_vpg|u_pll|altpll_component|auto_generated|pll1|clk[0]}]  -1.3 [get_ports {HDMI_TX_D[3]}]
set_output_delay  -max -clock [get_clocks {u_vpg|u_pll|altpll_component|auto_generated|pll1|clk[0]}]  1.800 [get_ports {HDMI_TX_D[4]}]
set_output_delay  -min -clock [get_clocks {u_vpg|u_pll|altpll_component|auto_generated|pll1|clk[0]}]  -1.300 [get_ports {HDMI_TX_D[4]}]
set_output_delay -add_delay -max -clock_fall -clock [get_clocks {u_vpg|u_pll|altpll_component|auto_generated|pll1|clk[0]}]  1.800 [get_ports {HDMI_TX_D[4]}]
set_output_delay -add_delay -min -clock_fall -clock [get_clocks {u_vpg|u_pll|altpll_component|auto_generated|pll1|clk[0]}]  -1.3 [get_ports {HDMI_TX_D[4]}]
set_output_delay  -max -clock [get_clocks {u_vpg|u_pll|altpll_component|auto_generated|pll1|clk[0]}]  1.800 [get_ports {HDMI_TX_D[5]}]
set_output_delay  -min -clock [get_clocks {u_vpg|u_pll|altpll_component|auto_generated|pll1|clk[0]}]  -1.300 [get_ports {HDMI_TX_D[5]}]
set_output_delay -add_delay -max -clock_fall -clock [get_clocks {u_vpg|u_pll|altpll_component|auto_generated|pll1|clk[0]}]  1.800 [get_ports {HDMI_TX_D[5]}]
set_output_delay -add_delay -min -clock_fall -clock [get_clocks {u_vpg|u_pll|altpll_component|auto_generated|pll1|clk[0]}]  -1.3 [get_ports {HDMI_TX_D[5]}]
set_output_delay  -max -clock [get_clocks {u_vpg|u_pll|altpll_component|auto_generated|pll1|clk[0]}]  1.800 [get_ports {HDMI_TX_D[6]}]
set_output_delay  -min -clock [get_clocks {u_vpg|u_pll|altpll_component|auto_generated|pll1|clk[0]}]  -1.300 [get_ports {HDMI_TX_D[6]}]
set_output_delay -add_delay -max -clock_fall -clock [get_clocks {u_vpg|u_pll|altpll_component|auto_generated|pll1|clk[0]}]  1.800 [get_ports {HDMI_TX_D[6]}]
set_output_delay -add_delay -min -clock_fall -clock [get_clocks {u_vpg|u_pll|altpll_component|auto_generated|pll1|clk[0]}]  -1.3 [get_ports {HDMI_TX_D[6]}]
set_output_delay  -max -clock [get_clocks {u_vpg|u_pll|altpll_component|auto_generated|pll1|clk[0]}]  1.800 [get_ports {HDMI_TX_D[7]}]
set_output_delay  -min -clock [get_clocks {u_vpg|u_pll|altpll_component|auto_generated|pll1|clk[0]}]  -1.300 [get_ports {HDMI_TX_D[7]}]
set_output_delay -add_delay -max -clock_fall -clock [get_clocks {u_vpg|u_pll|altpll_component|auto_generated|pll1|clk[0]}]  1.800 [get_ports {HDMI_TX_D[7]}]
set_output_delay -add_delay -min -clock_fall -clock [get_clocks {u_vpg|u_pll|altpll_component|auto_generated|pll1|clk[0]}]  -1.3 [get_ports {HDMI_TX_D[7]}]
set_output_delay  -max -clock [get_clocks {u_vpg|u_pll|altpll_component|auto_generated|pll1|clk[0]}]  1.800 [get_ports {HDMI_TX_D[8]}]
set_output_delay  -min -clock [get_clocks {u_vpg|u_pll|altpll_component|auto_generated|pll1|clk[0]}]  -1.300 [get_ports {HDMI_TX_D[8]}]
set_output_delay -add_delay -max -clock_fall -clock [get_clocks {u_vpg|u_pll|altpll_component|auto_generated|pll1|clk[0]}]  1.800 [get_ports {HDMI_TX_D[8]}]
set_output_delay -add_delay -min -clock_fall -clock [get_clocks {u_vpg|u_pll|altpll_component|auto_generated|pll1|clk[0]}]  -1.3 [get_ports {HDMI_TX_D[8]}]
set_output_delay  -max -clock [get_clocks {u_vpg|u_pll|altpll_component|auto_generated|pll1|clk[0]}]  1.800 [get_ports {HDMI_TX_D[9]}]
set_output_delay  -min -clock [get_clocks {u_vpg|u_pll|altpll_component|auto_generated|pll1|clk[0]}]  -1.300 [get_ports {HDMI_TX_D[9]}]
set_output_delay -add_delay -max -clock_fall -clock [get_clocks {u_vpg|u_pll|altpll_component|auto_generated|pll1|clk[0]}]  1.800 [get_ports {HDMI_TX_D[9]}]
set_output_delay -add_delay -min -clock_fall -clock [get_clocks {u_vpg|u_pll|altpll_component|auto_generated|pll1|clk[0]}]  -1.3 [get_ports {HDMI_TX_D[9]}]
set_output_delay  -max -clock [get_clocks {u_vpg|u_pll|altpll_component|auto_generated|pll1|clk[0]}]  1.800 [get_ports {HDMI_TX_D[10]}]
set_output_delay  -min -clock [get_clocks {u_vpg|u_pll|altpll_component|auto_generated|pll1|clk[0]}]  -1.300 [get_ports {HDMI_TX_D[10]}]
set_output_delay -add_delay -max -clock_fall -clock [get_clocks {u_vpg|u_pll|altpll_component|auto_generated|pll1|clk[0]}]  1.800 [get_ports {HDMI_TX_D[10]}]
set_output_delay -add_delay -min -clock_fall -clock [get_clocks {u_vpg|u_pll|altpll_component|auto_generated|pll1|clk[0]}]  -1.3 [get_ports {HDMI_TX_D[10]}]
set_output_delay  -max -clock [get_clocks {u_vpg|u_pll|altpll_component|auto_generated|pll1|clk[0]}]  1.800 [get_ports {HDMI_TX_D[11]}]
set_output_delay  -min -clock [get_clocks {u_vpg|u_pll|altpll_component|auto_generated|pll1|clk[0]}]  -1.300 [get_ports {HDMI_TX_D[11]}]
set_output_delay -add_delay -max -clock_fall -clock [get_clocks {u_vpg|u_pll|altpll_component|auto_generated|pll1|clk[0]}]  1.800 [get_ports {HDMI_TX_D[11]}]
set_output_delay -add_delay -min -clock_fall -clock [get_clocks {u_vpg|u_pll|altpll_component|auto_generated|pll1|clk[0]}]  -1.3 [get_ports {HDMI_TX_D[11]}]
set_output_delay  -max -clock [get_clocks {u_vpg|u_pll|altpll_component|auto_generated|pll1|clk[0]}]  1.800 [get_ports {HDMI_TX_D[12]}]
set_output_delay  -min -clock [get_clocks {u_vpg|u_pll|altpll_component|auto_generated|pll1|clk[0]}]  -1.300 [get_ports {HDMI_TX_D[12]}]
set_output_delay -add_delay -max -clock_fall -clock [get_clocks {u_vpg|u_pll|altpll_component|auto_generated|pll1|clk[0]}]  1.800 [get_ports {HDMI_TX_D[12]}]
set_output_delay -add_delay -min -clock_fall -clock [get_clocks {u_vpg|u_pll|altpll_component|auto_generated|pll1|clk[0]}]  -1.3 [get_ports {HDMI_TX_D[12]}]
set_output_delay  -max -clock [get_clocks {u_vpg|u_pll|altpll_component|auto_generated|pll1|clk[0]}]  1.800 [get_ports {HDMI_TX_D[13]}]
set_output_delay  -min -clock [get_clocks {u_vpg|u_pll|altpll_component|auto_generated|pll1|clk[0]}]  -1.300 [get_ports {HDMI_TX_D[13]}]
set_output_delay -add_delay -max -clock_fall -clock [get_clocks {u_vpg|u_pll|altpll_component|auto_generated|pll1|clk[0]}]  1.800 [get_ports {HDMI_TX_D[13]}]
set_output_delay -add_delay -min -clock_fall -clock [get_clocks {u_vpg|u_pll|altpll_component|auto_generated|pll1|clk[0]}]  -1.3 [get_ports {HDMI_TX_D[13]}]
set_output_delay  -max -clock [get_clocks {u_vpg|u_pll|altpll_component|auto_generated|pll1|clk[0]}]  1.800 [get_ports {HDMI_TX_D[14]}]
set_output_delay  -min -clock [get_clocks {u_vpg|u_pll|altpll_component|auto_generated|pll1|clk[0]}]  -1.300 [get_ports {HDMI_TX_D[14]}]
set_output_delay -add_delay -max -clock_fall -clock [get_clocks {u_vpg|u_pll|altpll_component|auto_generated|pll1|clk[0]}]  1.800 [get_ports {HDMI_TX_D[14]}]
set_output_delay -add_delay -min -clock_fall -clock [get_clocks {u_vpg|u_pll|altpll_component|auto_generated|pll1|clk[0]}]  -1.3 [get_ports {HDMI_TX_D[14]}]
set_output_delay  -max -clock [get_clocks {u_vpg|u_pll|altpll_component|auto_generated|pll1|clk[0]}]  1.800 [get_ports {HDMI_TX_D[15]}]
set_output_delay  -min -clock [get_clocks {u_vpg|u_pll|altpll_component|auto_generated|pll1|clk[0]}]  -1.300 [get_ports {HDMI_TX_D[15]}]
set_output_delay -add_delay -max -clock_fall -clock [get_clocks {u_vpg|u_pll|altpll_component|auto_generated|pll1|clk[0]}]  1.800 [get_ports {HDMI_TX_D[15]}]
set_output_delay -add_delay -min -clock_fall -clock [get_clocks {u_vpg|u_pll|altpll_component|auto_generated|pll1|clk[0]}]  -1.3 [get_ports {HDMI_TX_D[15]}]
set_output_delay  -max -clock [get_clocks {u_vpg|u_pll|altpll_component|auto_generated|pll1|clk[0]}]  1.800 [get_ports {HDMI_TX_D[16]}]
set_output_delay  -min -clock [get_clocks {u_vpg|u_pll|altpll_component|auto_generated|pll1|clk[0]}]  -1.300 [get_ports {HDMI_TX_D[16]}]
set_output_delay -add_delay -max -clock_fall -clock [get_clocks {u_vpg|u_pll|altpll_component|auto_generated|pll1|clk[0]}]  1.800 [get_ports {HDMI_TX_D[16]}]
set_output_delay -add_delay -min -clock_fall -clock [get_clocks {u_vpg|u_pll|altpll_component|auto_generated|pll1|clk[0]}]  -1.3 [get_ports {HDMI_TX_D[16]}]
set_output_delay  -max -clock [get_clocks {u_vpg|u_pll|altpll_component|auto_generated|pll1|clk[0]}]  1.800 [get_ports {HDMI_TX_D[17]}]
set_output_delay  -min -clock [get_clocks {u_vpg|u_pll|altpll_component|auto_generated|pll1|clk[0]}]  -1.300 [get_ports {HDMI_TX_D[17]}]
set_output_delay -add_delay -max -clock_fall -clock [get_clocks {u_vpg|u_pll|altpll_component|auto_generated|pll1|clk[0]}]  1.800 [get_ports {HDMI_TX_D[17]}]
set_output_delay -add_delay -min -clock_fall -clock [get_clocks {u_vpg|u_pll|altpll_component|auto_generated|pll1|clk[0]}]  -1.3 [get_ports {HDMI_TX_D[17]}]
set_output_delay  -max -clock [get_clocks {u_vpg|u_pll|altpll_component|auto_generated|pll1|clk[0]}]  1.800 [get_ports {HDMI_TX_D[18]}]
set_output_delay  -min -clock [get_clocks {u_vpg|u_pll|altpll_component|auto_generated|pll1|clk[0]}]  -1.300 [get_ports {HDMI_TX_D[18]}]
set_output_delay -add_delay -max -clock_fall -clock [get_clocks {u_vpg|u_pll|altpll_component|auto_generated|pll1|clk[0]}]  1.800 [get_ports {HDMI_TX_D[18]}]
set_output_delay -add_delay -min -clock_fall -clock [get_clocks {u_vpg|u_pll|altpll_component|auto_generated|pll1|clk[0]}]  -1.3 [get_ports {HDMI_TX_D[18]}]
set_output_delay  -max -clock [get_clocks {u_vpg|u_pll|altpll_component|auto_generated|pll1|clk[0]}]  1.800 [get_ports {HDMI_TX_D[19]}]
set_output_delay  -min -clock [get_clocks {u_vpg|u_pll|altpll_component|auto_generated|pll1|clk[0]}]  -1.300 [get_ports {HDMI_TX_D[19]}]
set_output_delay -add_delay -max -clock_fall -clock [get_clocks {u_vpg|u_pll|altpll_component|auto_generated|pll1|clk[0]}]  1.800 [get_ports {HDMI_TX_D[19]}]
set_output_delay -add_delay -min -clock_fall -clock [get_clocks {u_vpg|u_pll|altpll_component|auto_generated|pll1|clk[0]}]  -1.3 [get_ports {HDMI_TX_D[19]}]
set_output_delay  -max -clock [get_clocks {u_vpg|u_pll|altpll_component|auto_generated|pll1|clk[0]}]  1.800 [get_ports {HDMI_TX_D[20]}]
set_output_delay  -min -clock [get_clocks {u_vpg|u_pll|altpll_component|auto_generated|pll1|clk[0]}]  -1.300 [get_ports {HDMI_TX_D[20]}]
set_output_delay -add_delay -max -clock_fall -clock [get_clocks {u_vpg|u_pll|altpll_component|auto_generated|pll1|clk[0]}]  1.800 [get_ports {HDMI_TX_D[20]}]
set_output_delay -add_delay -min -clock_fall -clock [get_clocks {u_vpg|u_pll|altpll_component|auto_generated|pll1|clk[0]}]  -1.3 [get_ports {HDMI_TX_D[20]}]
set_output_delay  -max -clock [get_clocks {u_vpg|u_pll|altpll_component|auto_generated|pll1|clk[0]}]  1.800 [get_ports {HDMI_TX_D[21]}]
set_output_delay  -min -clock [get_clocks {u_vpg|u_pll|altpll_component|auto_generated|pll1|clk[0]}]  -1.300 [get_ports {HDMI_TX_D[21]}]
set_output_delay -add_delay -max -clock_fall -clock [get_clocks {u_vpg|u_pll|altpll_component|auto_generated|pll1|clk[0]}]  1.800 [get_ports {HDMI_TX_D[21]}]
set_output_delay -add_delay -min -clock_fall -clock [get_clocks {u_vpg|u_pll|altpll_component|auto_generated|pll1|clk[0]}]  -1.3 [get_ports {HDMI_TX_D[21]}]
set_output_delay  -max -clock [get_clocks {u_vpg|u_pll|altpll_component|auto_generated|pll1|clk[0]}]  1.800 [get_ports {HDMI_TX_D[22]}]
set_output_delay  -min -clock [get_clocks {u_vpg|u_pll|altpll_component|auto_generated|pll1|clk[0]}]  -1.300 [get_ports {HDMI_TX_D[22]}]
set_output_delay -add_delay -max -clock_fall -clock [get_clocks {u_vpg|u_pll|altpll_component|auto_generated|pll1|clk[0]}]  1.800 [get_ports {HDMI_TX_D[22]}]
set_output_delay -add_delay -min -clock_fall -clock [get_clocks {u_vpg|u_pll|altpll_component|auto_generated|pll1|clk[0]}]  -1.3 [get_ports {HDMI_TX_D[22]}]
set_output_delay  -max -clock [get_clocks {u_vpg|u_pll|altpll_component|auto_generated|pll1|clk[0]}]  1.800 [get_ports {HDMI_TX_D[23]}]
set_output_delay  -min -clock [get_clocks {u_vpg|u_pll|altpll_component|auto_generated|pll1|clk[0]}]  -1.300 [get_ports {HDMI_TX_D[23]}]
set_output_delay -add_delay -max -clock_fall -clock [get_clocks {u_vpg|u_pll|altpll_component|auto_generated|pll1|clk[0]}]  1.800 [get_ports {HDMI_TX_D[23]}]
set_output_delay -add_delay -min -clock_fall -clock [get_clocks {u_vpg|u_pll|altpll_component|auto_generated|pll1|clk[0]}]  -1.3 [get_ports {HDMI_TX_D[23]}]
set_output_delay  -max -clock [get_clocks {u_vpg|u_pll|altpll_component|auto_generated|pll1|clk[0]}]  1.800 [get_ports {HDMI_TX_HS}]
set_output_delay  -min -clock [get_clocks {u_vpg|u_pll|altpll_component|auto_generated|pll1|clk[0]}]  -1.300 [get_ports {HDMI_TX_HS}]
set_output_delay -add_delay -max -clock_fall -clock [get_clocks {u_vpg|u_pll|altpll_component|auto_generated|pll1|clk[0]}]  1.800 [get_ports {HDMI_TX_HS}]
set_output_delay -add_delay -min -clock_fall -clock [get_clocks {u_vpg|u_pll|altpll_component|auto_generated|pll1|clk[0]}]  -1.3 [get_ports {HDMI_TX_HS}]
set_output_delay  -max -clock [get_clocks {u_vpg|u_pll|altpll_component|auto_generated|pll1|clk[0]}]  1.800 [get_ports {HDMI_TX_VS}]
set_output_delay  -min -clock [get_clocks {u_vpg|u_pll|altpll_component|auto_generated|pll1|clk[0]}]  -1.300 [get_ports {HDMI_TX_VS}]
set_output_delay -add_delay -max -clock_fall -clock [get_clocks {u_vpg|u_pll|altpll_component|auto_generated|pll1|clk[0]}]  1.800 [get_ports {HDMI_TX_VS}]
set_output_delay -add_delay -min -clock_fall -clock [get_clocks {u_vpg|u_pll|altpll_component|auto_generated|pll1|clk[0]}]  -1.3 [get_ports {HDMI_TX_VS}]


#**************************************************************
# Set Clock Groups
#**************************************************************

set_clock_groups -asynchronous -group [get_clocks {altera_reserved_tck}] 
set_clock_groups -asynchronous -group [get_clocks {altera_reserved_tck}] 


#**************************************************************
# Set False Path
#**************************************************************

set_false_path -from [get_registers {*|alt_jtag_atlantic:*|jupdate}] -to [get_registers {*|alt_jtag_atlantic:*|jupdate1*}]
set_false_path -from [get_registers {*|alt_jtag_atlantic:*|rdata[*]}] -to [get_registers {*|alt_jtag_atlantic*|td_shift[*]}]
set_false_path -from [get_registers {*|alt_jtag_atlantic:*|read}] -to [get_registers {*|alt_jtag_atlantic:*|read1*}]
set_false_path -from [get_registers {*|alt_jtag_atlantic:*|read_req}] 
set_false_path -from [get_registers {*|alt_jtag_atlantic:*|rvalid}] -to [get_registers {*|alt_jtag_atlantic*|td_shift[*]}]
set_false_path -from [get_registers {*|t_dav}] -to [get_registers {*|alt_jtag_atlantic:*|tck_t_dav}]
set_false_path -from [get_registers {*|alt_jtag_atlantic:*|user_saw_rvalid}] -to [get_registers {*|alt_jtag_atlantic:*|rvalid0*}]
set_false_path -from [get_registers {*|alt_jtag_atlantic:*|wdata[*]}] -to [get_registers *]
set_false_path -from [get_registers {*|alt_jtag_atlantic:*|write}] -to [get_registers {*|alt_jtag_atlantic:*|write1*}]
set_false_path -from [get_registers {*|alt_jtag_atlantic:*|write_stalled}] -to [get_registers {*|alt_jtag_atlantic:*|t_ena*}]
set_false_path -from [get_registers {*|alt_jtag_atlantic:*|write_stalled}] -to [get_registers {*|alt_jtag_atlantic:*|t_pause*}]
set_false_path -from [get_registers {*|alt_jtag_atlantic:*|write_valid}] 
set_false_path -to [get_keepers {*altera_std_synchronizer:*|din_s1}]
set_false_path -to [get_pins -nocase -compatibility_mode {*|alt_rst_sync_uq1|altera_reset_synchronizer_int_chain*|clrn}]
set_false_path -from [get_keepers {*amax10_qsys_nios2_gen2_cpu:*|amax10_qsys_nios2_gen2_cpu_nios2_oci:the_amax10_qsys_nios2_gen2_cpu_nios2_oci|amax10_qsys_nios2_gen2_cpu_nios2_oci_break:the_amax10_qsys_nios2_gen2_cpu_nios2_oci_break|break_readreg*}] -to [get_keepers {*amax10_qsys_nios2_gen2_cpu:*|amax10_qsys_nios2_gen2_cpu_nios2_oci:the_amax10_qsys_nios2_gen2_cpu_nios2_oci|amax10_qsys_nios2_gen2_cpu_debug_slave_wrapper:the_amax10_qsys_nios2_gen2_cpu_debug_slave_wrapper|amax10_qsys_nios2_gen2_cpu_debug_slave_tck:the_amax10_qsys_nios2_gen2_cpu_debug_slave_tck|*sr*}]
set_false_path -from [get_keepers {*amax10_qsys_nios2_gen2_cpu:*|amax10_qsys_nios2_gen2_cpu_nios2_oci:the_amax10_qsys_nios2_gen2_cpu_nios2_oci|amax10_qsys_nios2_gen2_cpu_nios2_oci_debug:the_amax10_qsys_nios2_gen2_cpu_nios2_oci_debug|*resetlatch}] -to [get_keepers {*amax10_qsys_nios2_gen2_cpu:*|amax10_qsys_nios2_gen2_cpu_nios2_oci:the_amax10_qsys_nios2_gen2_cpu_nios2_oci|amax10_qsys_nios2_gen2_cpu_debug_slave_wrapper:the_amax10_qsys_nios2_gen2_cpu_debug_slave_wrapper|amax10_qsys_nios2_gen2_cpu_debug_slave_tck:the_amax10_qsys_nios2_gen2_cpu_debug_slave_tck|*sr[33]}]
set_false_path -from [get_keepers {*amax10_qsys_nios2_gen2_cpu:*|amax10_qsys_nios2_gen2_cpu_nios2_oci:the_amax10_qsys_nios2_gen2_cpu_nios2_oci|amax10_qsys_nios2_gen2_cpu_nios2_oci_debug:the_amax10_qsys_nios2_gen2_cpu_nios2_oci_debug|monitor_ready}] -to [get_keepers {*amax10_qsys_nios2_gen2_cpu:*|amax10_qsys_nios2_gen2_cpu_nios2_oci:the_amax10_qsys_nios2_gen2_cpu_nios2_oci|amax10_qsys_nios2_gen2_cpu_debug_slave_wrapper:the_amax10_qsys_nios2_gen2_cpu_debug_slave_wrapper|amax10_qsys_nios2_gen2_cpu_debug_slave_tck:the_amax10_qsys_nios2_gen2_cpu_debug_slave_tck|*sr[0]}]
set_false_path -from [get_keepers {*amax10_qsys_nios2_gen2_cpu:*|amax10_qsys_nios2_gen2_cpu_nios2_oci:the_amax10_qsys_nios2_gen2_cpu_nios2_oci|amax10_qsys_nios2_gen2_cpu_nios2_oci_debug:the_amax10_qsys_nios2_gen2_cpu_nios2_oci_debug|monitor_error}] -to [get_keepers {*amax10_qsys_nios2_gen2_cpu:*|amax10_qsys_nios2_gen2_cpu_nios2_oci:the_amax10_qsys_nios2_gen2_cpu_nios2_oci|amax10_qsys_nios2_gen2_cpu_debug_slave_wrapper:the_amax10_qsys_nios2_gen2_cpu_debug_slave_wrapper|amax10_qsys_nios2_gen2_cpu_debug_slave_tck:the_amax10_qsys_nios2_gen2_cpu_debug_slave_tck|*sr[34]}]
set_false_path -from [get_keepers {*amax10_qsys_nios2_gen2_cpu:*|amax10_qsys_nios2_gen2_cpu_nios2_oci:the_amax10_qsys_nios2_gen2_cpu_nios2_oci|amax10_qsys_nios2_gen2_cpu_nios2_ocimem:the_amax10_qsys_nios2_gen2_cpu_nios2_ocimem|*MonDReg*}] -to [get_keepers {*amax10_qsys_nios2_gen2_cpu:*|amax10_qsys_nios2_gen2_cpu_nios2_oci:the_amax10_qsys_nios2_gen2_cpu_nios2_oci|amax10_qsys_nios2_gen2_cpu_debug_slave_wrapper:the_amax10_qsys_nios2_gen2_cpu_debug_slave_wrapper|amax10_qsys_nios2_gen2_cpu_debug_slave_tck:the_amax10_qsys_nios2_gen2_cpu_debug_slave_tck|*sr*}]
set_false_path -from [get_keepers {*amax10_qsys_nios2_gen2_cpu:*|amax10_qsys_nios2_gen2_cpu_nios2_oci:the_amax10_qsys_nios2_gen2_cpu_nios2_oci|amax10_qsys_nios2_gen2_cpu_debug_slave_wrapper:the_amax10_qsys_nios2_gen2_cpu_debug_slave_wrapper|amax10_qsys_nios2_gen2_cpu_debug_slave_tck:the_amax10_qsys_nios2_gen2_cpu_debug_slave_tck|*sr*}] -to [get_keepers {*amax10_qsys_nios2_gen2_cpu:*|amax10_qsys_nios2_gen2_cpu_nios2_oci:the_amax10_qsys_nios2_gen2_cpu_nios2_oci|amax10_qsys_nios2_gen2_cpu_debug_slave_wrapper:the_amax10_qsys_nios2_gen2_cpu_debug_slave_wrapper|amax10_qsys_nios2_gen2_cpu_debug_slave_sysclk:the_amax10_qsys_nios2_gen2_cpu_debug_slave_sysclk|*jdo*}]
set_false_path -from [get_keepers {sld_hub:*|irf_reg*}] -to [get_keepers {*amax10_qsys_nios2_gen2_cpu:*|amax10_qsys_nios2_gen2_cpu_nios2_oci:the_amax10_qsys_nios2_gen2_cpu_nios2_oci|amax10_qsys_nios2_gen2_cpu_debug_slave_wrapper:the_amax10_qsys_nios2_gen2_cpu_debug_slave_wrapper|amax10_qsys_nios2_gen2_cpu_debug_slave_sysclk:the_amax10_qsys_nios2_gen2_cpu_debug_slave_sysclk|ir*}]
set_false_path -from [get_keepers {sld_hub:*|sld_shadow_jsm:shadow_jsm|state[1]}] -to [get_keepers {*amax10_qsys_nios2_gen2_cpu:*|amax10_qsys_nios2_gen2_cpu_nios2_oci:the_amax10_qsys_nios2_gen2_cpu_nios2_oci|amax10_qsys_nios2_gen2_cpu_nios2_oci_debug:the_amax10_qsys_nios2_gen2_cpu_nios2_oci_debug|monitor_go}]


#**************************************************************
# Set Multicycle Path
#**************************************************************



#**************************************************************
# Set Maximum Delay
#**************************************************************



#**************************************************************
# Set Minimum Delay
#**************************************************************



#**************************************************************
# Set Input Transition
#**************************************************************

