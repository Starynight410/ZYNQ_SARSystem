vlib modelsim_lib/work
vlib modelsim_lib/msim

vlib modelsim_lib/msim/xil_defaultlib
vlib modelsim_lib/msim/xpm

vmap xil_defaultlib modelsim_lib/msim/xil_defaultlib
vmap xpm modelsim_lib/msim/xpm

vlog -work xil_defaultlib -64 -incr -sv "+incdir+../../../ipstatic" "+incdir+../../../ipstatic" \
"E:/Vivado2017.4/Vivado/2017.4/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv" \

vcom -work xpm -64 -93 \
"E:/Vivado2017.4/Vivado/2017.4/data/ip/xpm/xpm_VCOMP.vhd" \

vlog -work xil_defaultlib -64 -incr "+incdir+../../../ipstatic" "+incdir+../../../ipstatic" \
"../../../../Adc9228_top_axi.srcs/sources_1/ip/clk_wiz_3/clk_wiz_3_clk_wiz.v" \
"../../../../Adc9228_top_axi.srcs/sources_1/ip/clk_wiz_3/clk_wiz_3.v" \

vlog -work xil_defaultlib \
"glbl.v"

