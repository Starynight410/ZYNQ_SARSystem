-makelib ies_lib/xil_defaultlib -sv \
  "E:/Vivado2017.4/Vivado/2017.4/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv" \
  "E:/Vivado2017.4/Vivado/2017.4/data/ip/xpm/xpm_memory/hdl/xpm_memory.sv" \
-endlib
-makelib ies_lib/xpm \
  "E:/Vivado2017.4/Vivado/2017.4/data/ip/xpm/xpm_VCOMP.vhd" \
-endlib
-makelib ies_lib/xil_defaultlib \
  "../../../../Adc9228_top_axi.srcs/sources_1/ip/ila_1/sim/ila_1.v" \
-endlib
-makelib ies_lib/xil_defaultlib \
  glbl.v
-endlib

