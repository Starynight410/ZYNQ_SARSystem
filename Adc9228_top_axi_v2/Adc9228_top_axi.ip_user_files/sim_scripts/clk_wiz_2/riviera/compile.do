vlib work
vlib riviera

vlib riviera/xil_defaultlib
vlib riviera/xpm

vmap xil_defaultlib riviera/xil_defaultlib
vmap xpm riviera/xpm

vlog -work xil_defaultlib  -sv2k12 "+incdir+../../../ipstatic" "+incdir+../../../ipstatic" \
"E:/Vivado2017.4/Vivado/2017.4/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv" \

vcom -work xpm -93 \
"E:/Vivado2017.4/Vivado/2017.4/data/ip/xpm/xpm_VCOMP.vhd" \

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../ipstatic" "+incdir+../../../ipstatic" \
"../../../../Adc9228_top_axi.srcs/sources_1/ip/clk_wiz_2/clk_wiz_2_clk_wiz.v" \
"../../../../Adc9228_top_axi.srcs/sources_1/ip/clk_wiz_2/clk_wiz_2.v" \

vlog -work xil_defaultlib \
"glbl.v"

