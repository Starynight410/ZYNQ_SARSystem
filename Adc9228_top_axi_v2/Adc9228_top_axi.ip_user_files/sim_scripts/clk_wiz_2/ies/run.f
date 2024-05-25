-makelib ies_lib/xil_defaultlib -sv \
  "E:/Vivado2017.4/Vivado/2017.4/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv" \
-endlib
-makelib ies_lib/xpm \
  "E:/Vivado2017.4/Vivado/2017.4/data/ip/xpm/xpm_VCOMP.vhd" \
-endlib
-makelib ies_lib/xil_defaultlib \
  "../../../../Adc9228_top_axi.srcs/sources_1/ip/clk_wiz_2/clk_wiz_2_clk_wiz.v" \
  "../../../../Adc9228_top_axi.srcs/sources_1/ip/clk_wiz_2/clk_wiz_2.v" \
-endlib
-makelib ies_lib/xil_defaultlib \
  glbl.v
-endlib

