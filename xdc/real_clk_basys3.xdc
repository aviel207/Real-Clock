
##########
# Clocks #
##########
create_clock -name clk -period 10 -waveform {0 5} [get_ports clk]

###############
# Input Delay #
###############
set_input_delay 0 -clock clk  -add_delay  [get_ports {reset mode load addrs* data_in*}]

################
# Output Delay #
################
set_output_delay 0 -clock clk  -add_delay  [get_ports {basys_anode* display_ssd*}]

##############################
# Pin Locations and Voltages #
##############################
set_property -dict { PACKAGE_PIN W5   IOSTANDARD LVCMOS33 } [get_ports { clk   			}]; 
set_property -dict { PACKAGE_PIN U18  IOSTANDARD LVCMOS33 } [get_ports { reset 			}]; 
set_property -dict { PACKAGE_PIN U17  IOSTANDARD LVCMOS33 } [get_ports { mode 		    }]; 
set_property -dict { PACKAGE_PIN T18  IOSTANDARD LVCMOS33 } [get_ports { load 			}]; 
set_property -dict { PACKAGE_PIN R2   IOSTANDARD LVCMOS33 } [get_ports { addrs[1]       }];
set_property -dict { PACKAGE_PIN T1   IOSTANDARD LVCMOS33 } [get_ports { addrs[0]       }];
set_property -dict { PACKAGE_PIN V15  IOSTANDARD LVCMOS33 } [get_ports { data_in[5]     }];
set_property -dict { PACKAGE_PIN W15  IOSTANDARD LVCMOS33 } [get_ports { data_in[4]     }];
set_property -dict { PACKAGE_PIN W17  IOSTANDARD LVCMOS33 } [get_ports { data_in[3]     }];
set_property -dict { PACKAGE_PIN W16  IOSTANDARD LVCMOS33 } [get_ports { data_in[2]     }];
set_property -dict { PACKAGE_PIN V16  IOSTANDARD LVCMOS33 } [get_ports { data_in[1]     }];
set_property -dict { PACKAGE_PIN V17  IOSTANDARD LVCMOS33 } [get_ports { data_in[0]     }];
set_property -dict { PACKAGE_PIN W4   IOSTANDARD LVCMOS33 } [get_ports { basys_anode[3] }];
set_property -dict { PACKAGE_PIN V4   IOSTANDARD LVCMOS33 } [get_ports { basys_anode[2] }];
set_property -dict { PACKAGE_PIN U4   IOSTANDARD LVCMOS33 } [get_ports { basys_anode[1] }];
set_property -dict { PACKAGE_PIN U2   IOSTANDARD LVCMOS33 } [get_ports { basys_anode[0] }];
set_property -dict { PACKAGE_PIN W7   IOSTANDARD LVCMOS33 } [get_ports { display_ssd[6] }];
set_property -dict { PACKAGE_PIN W6   IOSTANDARD LVCMOS33 } [get_ports { display_ssd[5] }];
set_property -dict { PACKAGE_PIN U8   IOSTANDARD LVCMOS33 } [get_ports { display_ssd[4] }];
set_property -dict { PACKAGE_PIN V8   IOSTANDARD LVCMOS33 } [get_ports { display_ssd[3] }];
set_property -dict { PACKAGE_PIN U5   IOSTANDARD LVCMOS33 } [get_ports { display_ssd[2] }];
set_property -dict { PACKAGE_PIN V5   IOSTANDARD LVCMOS33 } [get_ports { display_ssd[1] }];
set_property -dict { PACKAGE_PIN U7   IOSTANDARD LVCMOS33 } [get_ports { display_ssd[0] }];


##########################
# Configuration Settings #
##########################
set_property CFGBVS VCCO [current_design]
set_property CONFIG_VOLTAGE 3.3 [current_design]

