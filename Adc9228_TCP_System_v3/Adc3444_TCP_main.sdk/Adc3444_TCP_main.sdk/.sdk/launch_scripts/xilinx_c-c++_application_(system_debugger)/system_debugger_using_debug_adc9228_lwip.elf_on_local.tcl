connect -url tcp:127.0.0.1:3121
source E:/ZynqProject_v17/Adc9228_TCP_System_v3/Adc3444_TCP_main.sdk/Adc3444_TCP_wrapper_hw_platform_0/ps7_init.tcl
targets -set -nocase -filter {name =~"APU*" && jtag_cable_name =~ "Platform Cable USB 00000000000000"} -index 0
rst -system
after 3000
targets -set -filter {jtag_cable_name =~ "Platform Cable USB 00000000000000" && level==0} -index 1
fpga -file E:/ZynqProject_v17/Adc9228_TCP_System_v3/Adc3444_TCP_main.sdk/Adc3444_TCP_wrapper_hw_platform_0/Adc3444_TCP_wrapper.bit
targets -set -nocase -filter {name =~"APU*" && jtag_cable_name =~ "Platform Cable USB 00000000000000"} -index 0
loadhw -hw E:/ZynqProject_v17/Adc9228_TCP_System_v3/Adc3444_TCP_main.sdk/Adc3444_TCP_wrapper_hw_platform_0/system.hdf -mem-ranges [list {0x40000000 0xbfffffff}]
configparams force-mem-access 1
targets -set -nocase -filter {name =~"APU*" && jtag_cable_name =~ "Platform Cable USB 00000000000000"} -index 0
ps7_init
ps7_post_config
targets -set -nocase -filter {name =~ "ARM*#0" && jtag_cable_name =~ "Platform Cable USB 00000000000000"} -index 0
dow E:/ZynqProject_v17/Adc9228_TCP_System_v3/Adc3444_TCP_main.sdk/Adc9228_LWIP/Debug/Adc9228_LWIP.elf
configparams force-mem-access 0
targets -set -nocase -filter {name =~ "ARM*#0" && jtag_cable_name =~ "Platform Cable USB 00000000000000"} -index 0
con
