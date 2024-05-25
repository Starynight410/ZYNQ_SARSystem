-makelib ies_lib/xil_defaultlib -sv \
  "E:/Vivado2017.4/Vivado/2017.4/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv" \
  "E:/Vivado2017.4/Vivado/2017.4/data/ip/xpm/xpm_fifo/hdl/xpm_fifo.sv" \
  "E:/Vivado2017.4/Vivado/2017.4/data/ip/xpm/xpm_memory/hdl/xpm_memory.sv" \
-endlib
-makelib ies_lib/xpm \
  "E:/Vivado2017.4/Vivado/2017.4/data/ip/xpm/xpm_VCOMP.vhd" \
-endlib
-makelib ies_lib/xil_defaultlib \
  "../../../bd/Adc3444_TCP/sim/Adc3444_TCP.v" \
  "../../../bd/Adc3444_TCP/ip/Adc3444_TCP_Adc9228_top_0_0/Adc9228_top_axi.srcs/sources_1/ip/clk_wiz_3/clk_wiz_3_clk_wiz.v" \
  "../../../bd/Adc3444_TCP/ip/Adc3444_TCP_Adc9228_top_0_0/Adc9228_top_axi.srcs/sources_1/ip/clk_wiz_3/clk_wiz_3.v" \
  "../../../bd/Adc3444_TCP/ip/Adc3444_TCP_Adc9228_top_0_0/Adc9228_top_axi.srcs/sources_1/ip/clk_wiz_2/clk_wiz_2_clk_wiz.v" \
  "../../../bd/Adc3444_TCP/ip/Adc3444_TCP_Adc9228_top_0_0/Adc9228_top_axi.srcs/sources_1/ip/clk_wiz_2/clk_wiz_2.v" \
-endlib
-makelib ies_lib/fifo_generator_v13_2_1 \
  "../../../../Adc3444_TCP_main.srcs/sources_1/bd/Adc3444_TCP/ip/Adc3444_TCP_Adc9228_top_0_0/Adc9228_top_axi.srcs/sources_1/ip/fifo_generator_0/simulation/fifo_generator_vlog_beh.v" \
-endlib
-makelib ies_lib/fifo_generator_v13_2_1 \
  "../../../../Adc3444_TCP_main.srcs/sources_1/bd/Adc3444_TCP/ip/Adc3444_TCP_Adc9228_top_0_0/Adc9228_top_axi.srcs/sources_1/ip/fifo_generator_0/hdl/fifo_generator_v13_2_rfs.vhd" \
-endlib
-makelib ies_lib/fifo_generator_v13_2_1 \
  "../../../../Adc3444_TCP_main.srcs/sources_1/bd/Adc3444_TCP/ip/Adc3444_TCP_Adc9228_top_0_0/Adc9228_top_axi.srcs/sources_1/ip/fifo_generator_0/hdl/fifo_generator_v13_2_rfs.v" \
-endlib
-makelib ies_lib/xil_defaultlib \
  "../../../bd/Adc3444_TCP/ip/Adc3444_TCP_Adc9228_top_0_0/Adc9228_top_axi.srcs/sources_1/ip/fifo_generator_0/sim/fifo_generator_0.v" \
  "../../../bd/Adc3444_TCP/ip/Adc3444_TCP_Adc9228_top_0_0/Adc9228_top_axi.srcs/sources_1/ip/ila_0/sim/ila_0.v" \
  "../../../bd/Adc3444_TCP/ip/Adc3444_TCP_Adc9228_top_0_0/Adc9228_top_axi.srcs/sources_1/ip/ila_1/sim/ila_1.v" \
  "../../../bd/Adc3444_TCP/ipshared/4ebe/src/AD_control.v" \
  "../../../bd/Adc3444_TCP/ipshared/4ebe/Adc9228_top_axi.srcs/sources_1/new/Delay3Claps.v" \
  "../../../bd/Adc3444_TCP/ipshared/4ebe/src/adc_1.v" \
  "../../../bd/Adc3444_TCP/ipshared/4ebe/Adc9228_top_axi.srcs/sources_1/new/generate_vaild.v" \
  "../../../bd/Adc3444_TCP/ipshared/4ebe/src/io.v" \
  "../../../bd/Adc3444_TCP/ipshared/4ebe/src/pulse_generator.v" \
  "../../../bd/Adc3444_TCP/ipshared/4ebe/src/sys_ctrl.v" \
  "../../../bd/Adc3444_TCP/ipshared/4ebe/src/Adc9228_top.v" \
  "../../../bd/Adc3444_TCP/ip/Adc3444_TCP_Adc9228_top_0_0/sim/Adc3444_TCP_Adc9228_top_0_0.v" \
  "../../../bd/Adc3444_TCP/ip/Adc3444_TCP_TriggerCh_3_1/ip/ila_0/sim/ila_0.v" \
  "../../../bd/Adc3444_TCP/ip/Adc3444_TCP_TriggerCh_3_1/ip/ila_1/sim/ila_1.v" \
  "../../../bd/Adc3444_TCP/ipshared/6369/new/PulseConvert.v" \
  "../../../bd/Adc3444_TCP/ipshared/6369/new/TriggerDMA.v" \
  "../../../bd/Adc3444_TCP/ipshared/6369/new/TriggerGen.v" \
  "../../../bd/Adc3444_TCP/ipshared/6369/new/TriggerInterface.v" \
  "../../../bd/Adc3444_TCP/ipshared/6369/new/TriggerMux.v" \
  "../../../bd/Adc3444_TCP/ipshared/6369/new/axi_dma.v" \
  "../../../bd/Adc3444_TCP/ipshared/6369/new/axi_dma_rd.v" \
  "../../../bd/Adc3444_TCP/ipshared/6369/new/axi_dma_wr.v" \
  "../../../bd/Adc3444_TCP/ipshared/6369/new/axis_adapter.v" \
  "../../../bd/Adc3444_TCP/ipshared/6369/new/axis_async_fifo.v" \
  "../../../bd/Adc3444_TCP/ipshared/6369/new/axis_async_fifo_adapter.v" \
  "../../../bd/Adc3444_TCP/ipshared/6369/new/TriggerCh.v" \
  "../../../bd/Adc3444_TCP/ip/Adc3444_TCP_TriggerCh_3_1/sim/Adc3444_TCP_TriggerCh_3_1.v" \
-endlib
-makelib ies_lib/axi_infrastructure_v1_1_0 \
  "../../../../Adc3444_TCP_main.srcs/sources_1/bd/Adc3444_TCP/ipshared/ec67/hdl/axi_infrastructure_v1_1_vl_rfs.v" \
-endlib
-makelib ies_lib/smartconnect_v1_0 -sv \
  "../../../../Adc3444_TCP_main.srcs/sources_1/bd/Adc3444_TCP/ipshared/02c8/hdl/sc_util_v1_0_vl_rfs.sv" \
-endlib
-makelib ies_lib/axi_protocol_checker_v2_0_1 -sv \
  "../../../../Adc3444_TCP_main.srcs/sources_1/bd/Adc3444_TCP/ipshared/3b24/hdl/axi_protocol_checker_v2_0_vl_rfs.sv" \
-endlib
-makelib ies_lib/axi_vip_v1_1_1 -sv \
  "../../../../Adc3444_TCP_main.srcs/sources_1/bd/Adc3444_TCP/ipshared/a16a/hdl/axi_vip_v1_1_vl_rfs.sv" \
-endlib
-makelib ies_lib/processing_system7_vip_v1_0_3 -sv \
  "../../../../Adc3444_TCP_main.srcs/sources_1/bd/Adc3444_TCP/ipshared/1313/hdl/processing_system7_vip_v1_0_vl_rfs.sv" \
-endlib
-makelib ies_lib/xil_defaultlib \
  "../../../bd/Adc3444_TCP/ip/Adc3444_TCP_processing_system7_0_1/sim/Adc3444_TCP_processing_system7_0_1.v" \
  "../../../bd/Adc3444_TCP/ip/Adc3444_TCP_TriggerCh_0_2/sim/Adc3444_TCP_TriggerCh_0_2.v" \
  "../../../bd/Adc3444_TCP/ip/Adc3444_TCP_TriggerCh_1_0/sim/Adc3444_TCP_TriggerCh_1_0.v" \
  "../../../bd/Adc3444_TCP/ip/Adc3444_TCP_TriggerCh_2_0/sim/Adc3444_TCP_TriggerCh_2_0.v" \
-endlib
-makelib ies_lib/xlconcat_v2_1_1 \
  "../../../../Adc3444_TCP_main.srcs/sources_1/bd/Adc3444_TCP/ipshared/2f66/hdl/xlconcat_v2_1_vl_rfs.v" \
-endlib
-makelib ies_lib/xil_defaultlib \
  "../../../bd/Adc3444_TCP/ip/Adc3444_TCP_xlconcat_0_1/sim/Adc3444_TCP_xlconcat_0_1.v" \
  "../../../bd/Adc3444_TCP/ip/Adc3444_TCP_ila_0_0/sim/Adc3444_TCP_ila_0_0.v" \
-endlib
-makelib ies_lib/generic_baseblocks_v2_1_0 \
  "../../../../Adc3444_TCP_main.srcs/sources_1/bd/Adc3444_TCP/ipshared/b752/hdl/generic_baseblocks_v2_1_vl_rfs.v" \
-endlib
-makelib ies_lib/axi_register_slice_v2_1_15 \
  "../../../../Adc3444_TCP_main.srcs/sources_1/bd/Adc3444_TCP/ipshared/3ed1/hdl/axi_register_slice_v2_1_vl_rfs.v" \
-endlib
-makelib ies_lib/axi_data_fifo_v2_1_14 \
  "../../../../Adc3444_TCP_main.srcs/sources_1/bd/Adc3444_TCP/ipshared/9909/hdl/axi_data_fifo_v2_1_vl_rfs.v" \
-endlib
-makelib ies_lib/axi_crossbar_v2_1_16 \
  "../../../../Adc3444_TCP_main.srcs/sources_1/bd/Adc3444_TCP/ipshared/c631/hdl/axi_crossbar_v2_1_vl_rfs.v" \
-endlib
-makelib ies_lib/xil_defaultlib \
  "../../../bd/Adc3444_TCP/ip/Adc3444_TCP_xbar_0/sim/Adc3444_TCP_xbar_0.v" \
-endlib
-makelib ies_lib/lib_cdc_v1_0_2 \
  "../../../../Adc3444_TCP_main.srcs/sources_1/bd/Adc3444_TCP/ipshared/ef1e/hdl/lib_cdc_v1_0_rfs.vhd" \
-endlib
-makelib ies_lib/proc_sys_reset_v5_0_12 \
  "../../../../Adc3444_TCP_main.srcs/sources_1/bd/Adc3444_TCP/ipshared/f86a/hdl/proc_sys_reset_v5_0_vh_rfs.vhd" \
-endlib
-makelib ies_lib/xil_defaultlib \
  "../../../bd/Adc3444_TCP/ip/Adc3444_TCP_rst_Adc9228_top_0_10M_2/sim/Adc3444_TCP_rst_Adc9228_top_0_10M_2.vhd" \
-endlib
-makelib ies_lib/xil_defaultlib \
  "../../../bd/Adc3444_TCP/ip/Adc3444_TCP_ila_0_2/sim/Adc3444_TCP_ila_0_2.v" \
-endlib
-makelib ies_lib/axi_protocol_converter_v2_1_15 \
  "../../../../Adc3444_TCP_main.srcs/sources_1/bd/Adc3444_TCP/ipshared/ff69/hdl/axi_protocol_converter_v2_1_vl_rfs.v" \
-endlib
-makelib ies_lib/xil_defaultlib \
  "../../../bd/Adc3444_TCP/ip/Adc3444_TCP_axi_protocol_converter_0_0/sim/Adc3444_TCP_axi_protocol_converter_0_0.v" \
  "../../../bd/Adc3444_TCP/ip/Adc3444_TCP_axi_protocol_converter_0_1/sim/Adc3444_TCP_axi_protocol_converter_0_1.v" \
  "../../../bd/Adc3444_TCP/ip/Adc3444_TCP_axi_protocol_converter_1_0/sim/Adc3444_TCP_axi_protocol_converter_1_0.v" \
  "../../../bd/Adc3444_TCP/ip/Adc3444_TCP_axi_protocol_converter_2_0/sim/Adc3444_TCP_axi_protocol_converter_2_0.v" \
  "../../../bd/Adc3444_TCP/ip/Adc3444_TCP_auto_pc_0/sim/Adc3444_TCP_auto_pc_0.v" \
-endlib
-makelib ies_lib/xil_defaultlib \
  glbl.v
-endlib

