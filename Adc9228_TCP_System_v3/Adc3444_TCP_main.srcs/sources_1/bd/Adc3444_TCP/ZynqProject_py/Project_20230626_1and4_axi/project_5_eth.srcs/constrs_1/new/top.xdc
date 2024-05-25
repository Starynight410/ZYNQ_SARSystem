set_property PACKAGE_PIN Y7 [get_ports clk_40m_i]							
set_property IOSTANDARD LVCMOS33 [get_ports clk_40m_i]
create_clock -add -name sys_clk_pin -period 25.00 -waveform {0 12.500} [get_ports clk_40m_i]

set_property PACKAGE_PIN V6 [get_ports led]
set_property IOSTANDARD LVCMOS33 [get_ports led]

set_property PACKAGE_PIN V11 [get_ports pll_trig1]							
set_property IOSTANDARD LVCMOS33 [get_ports pll_trig1]
set_property PACKAGE_PIN W6 [get_ports pll_trig2]							
set_property IOSTANDARD LVCMOS33 [get_ports pll_trig2]
		
set_property PACKAGE_PIN N18 [get_ports {FCO_p}]
set_property IOSTANDARD DIFF_SSTL18_I [get_ports {FCO_p}]
set_property DIFF_TERM true [get_ports {FCO_p}]
create_clock -period 100.000 -name fco_clk_pin -waveform {0.000 50.000} -add [get_ports FCO_p]

set_property PACKAGE_PIN U14 [get_ports {DCO_p}]
set_property IOSTANDARD DIFF_SSTL18_I [get_ports {DCO_p}]
set_property DIFF_TERM true [get_ports {DCO_p}]
create_clock -period 16.667 -name dco_clk_pin -waveform {0.000 8.333} -add [get_ports DCO_p]

set_property PACKAGE_PIN T16 [get_ports {CHC_p}]
    set_property IOSTANDARD DIFF_SSTL18_I [get_ports {CHC_p}]
    set_property DIFF_TERM true [get_ports {CHC_p}]

set_property PACKAGE_PIN U13 [get_ports {CHD_p}]
    set_property IOSTANDARD DIFF_SSTL18_I [get_ports {CHD_p}]
    set_property DIFF_TERM true [get_ports {CHD_p}]
    
set_property PACKAGE_PIN V12 [get_ports {CHA_p}]
    set_property IOSTANDARD DIFF_SSTL18_I [get_ports {CHA_p}]
    set_property DIFF_TERM true [get_ports {CHA_p}]
        
set_property PACKAGE_PIN W14 [get_ports {CHB_p}]
    set_property IOSTANDARD DIFF_SSTL18_I [get_ports {CHB_p}]
    set_property DIFF_TERM true [get_ports {CHB_p}]

set_property PACKAGE_PIN N20 [get_ports {adcClkIn_p}]
set_property PACKAGE_PIN P20 [get_ports {adcClkIn_n}]
set_property IOSTANDARD DIFF_SSTL18_I [get_ports adcClkIn_p]
set_property IOSTANDARD DIFF_SSTL18_I [get_ports adcClkIn_n]

set_clock_groups -asynchronous -group dco_clk_pin -group sys_clk_pin

#set_property SEVERITY {Warning} [get_drc_checks UCIO-1]

#set_property PACKAGE_PIN H16 [get_ports {FCO_p_1}]
#set_property IOSTANDARD DIFF_SSTL18_I [get_ports {FCO_p_1}]
#set_property DIFF_TERM true [get_ports {FCO_p_1}]
#create_clock -period 100.000 -name fco_clk_pin_1 -waveform {0.000 50.000} -add [get_ports FCO_p_1]

#set_property PACKAGE_PIN L16 [get_ports {DCO_p_1}]
#set_property IOSTANDARD DIFF_SSTL18_I [get_ports {DCO_p_1}]
#set_property DIFF_TERM true [get_ports {DCO_p_1}]
#create_clock -period 16.667 -name dco_clk_pin_1 -waveform {0.000 8.333} -add [get_ports DCO_p_1]

#set_property PACKAGE_PIN L19 [get_ports {CHC_p_1}]
#    set_property IOSTANDARD DIFF_SSTL18_I [get_ports {CHC_p_1}]
#    set_property DIFF_TERM true [get_ports {CHC_p_1}]

#set_property PACKAGE_PIN E17 [get_ports {CHD_p_1}]
#    set_property IOSTANDARD DIFF_SSTL18_I [get_ports {CHD_p_1}]
#    set_property DIFF_TERM true [get_ports {CHD_p_1}]
    
#set_property PACKAGE_PIN D19 [get_ports {CHA_p_1}]
#    set_property IOSTANDARD DIFF_SSTL18_I [get_ports {CHA_p_1}]
#    set_property DIFF_TERM true [get_ports {CHA_p_1}]
        
#set_property PACKAGE_PIN M17 [get_ports {CHB_p_1}]
#    set_property IOSTANDARD DIFF_SSTL18_I [get_ports {CHB_p_1}]
#    set_property DIFF_TERM true [get_ports {CHB_p_1}]

#set_property PACKAGE_PIN J18 [get_ports {adcClkIn_p_1}]
#set_property PACKAGE_PIN H18 [get_ports {adcClkIn_n_1}]
#set_property IOSTANDARD DIFF_SSTL18_I [get_ports adcClkIn_p_1]
#set_property IOSTANDARD DIFF_SSTL18_I [get_ports adcClkIn_n_1]


#spi

##set_property PACKAGE_PIN W6 [get_ports SPI0_MISO]
#set_property PACKAGE_PIN T5 [get_ports SPI0_MOSI]
#set_property PACKAGE_PIN Y8 [get_ports SPI0_SCLK]
#set_property PACKAGE_PIN Y11 [get_ports SPI0_SS_T_0]

##set_property IOSTANDARD LVCMOS33 [get_ports SPI0_MISO]
#set_property IOSTANDARD LVCMOS33 [get_ports SPI0_MOSI]
#set_property IOSTANDARD LVCMOS33 [get_ports SPI0_SCLK]
#set_property IOSTANDARD LVCMOS33 [get_ports SPI0_SS_T_0]


#set_property PACKAGE_PIN U9 [get_ports SPI1_MOSI]
#set_property PACKAGE_PIN U7 [get_ports SPI1_SCLK]
#set_property PACKAGE_PIN W8 [get_ports SPI1_SS_T_0]

#set_property IOSTANDARD LVCMOS33 [get_ports SPI1_MOSI]
#set_property IOSTANDARD LVCMOS33 [get_ports SPI1_SCLK]
#set_property IOSTANDARD LVCMOS33 [get_ports SPI1_SS_T_0]








