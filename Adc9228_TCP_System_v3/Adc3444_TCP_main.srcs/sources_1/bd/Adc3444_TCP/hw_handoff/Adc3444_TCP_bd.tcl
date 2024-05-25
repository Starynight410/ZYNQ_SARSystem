
################################################################
# This is a generated script based on design: Adc3444_TCP
#
# Though there are limitations about the generated script,
# the main purpose of this utility is to make learning
# IP Integrator Tcl commands easier.
################################################################

namespace eval _tcl {
proc get_script_folder {} {
   set script_path [file normalize [info script]]
   set script_folder [file dirname $script_path]
   return $script_folder
}
}
variable script_folder
set script_folder [_tcl::get_script_folder]

################################################################
# Check if script is running in correct Vivado version.
################################################################
set scripts_vivado_version 2017.4
set current_vivado_version [version -short]

if { [string first $scripts_vivado_version $current_vivado_version] == -1 } {
   puts ""
   catch {common::send_msg_id "BD_TCL-109" "ERROR" "This script was generated using Vivado <$scripts_vivado_version> and is being run in <$current_vivado_version> of Vivado. Please run the script in Vivado <$scripts_vivado_version> then open the design in Vivado <$current_vivado_version>. Upgrade the design by running \"Tools => Report => Report IP Status...\", then run write_bd_tcl to create an updated script."}

   return 1
}

################################################################
# START
################################################################

# To test this script, run the following commands from Vivado Tcl console:
# source Adc3444_TCP_script.tcl

# If there is no project opened, this script will create a
# project, but make sure you do not have an existing project
# <./myproj/project_1.xpr> in the current working folder.

set list_projs [get_projects -quiet]
if { $list_projs eq "" } {
   create_project project_1 myproj -part xc7z020clg400-1
}


# CHANGE DESIGN NAME HERE
variable design_name
set design_name Adc3444_TCP

# If you do not already have an existing IP Integrator design open,
# you can create a design using the following command:
#    create_bd_design $design_name

# Creating design if needed
set errMsg ""
set nRet 0

set cur_design [current_bd_design -quiet]
set list_cells [get_bd_cells -quiet]

if { ${design_name} eq "" } {
   # USE CASES:
   #    1) Design_name not set

   set errMsg "Please set the variable <design_name> to a non-empty value."
   set nRet 1

} elseif { ${cur_design} ne "" && ${list_cells} eq "" } {
   # USE CASES:
   #    2): Current design opened AND is empty AND names same.
   #    3): Current design opened AND is empty AND names diff; design_name NOT in project.
   #    4): Current design opened AND is empty AND names diff; design_name exists in project.

   if { $cur_design ne $design_name } {
      common::send_msg_id "BD_TCL-001" "INFO" "Changing value of <design_name> from <$design_name> to <$cur_design> since current design is empty."
      set design_name [get_property NAME $cur_design]
   }
   common::send_msg_id "BD_TCL-002" "INFO" "Constructing design in IPI design <$cur_design>..."

} elseif { ${cur_design} ne "" && $list_cells ne "" && $cur_design eq $design_name } {
   # USE CASES:
   #    5) Current design opened AND has components AND same names.

   set errMsg "Design <$design_name> already exists in your project, please set the variable <design_name> to another value."
   set nRet 1
} elseif { [get_files -quiet ${design_name}.bd] ne "" } {
   # USE CASES: 
   #    6) Current opened design, has components, but diff names, design_name exists in project.
   #    7) No opened design, design_name exists in project.

   set errMsg "Design <$design_name> already exists in your project, please set the variable <design_name> to another value."
   set nRet 2

} else {
   # USE CASES:
   #    8) No opened design, design_name not in project.
   #    9) Current opened design, has components, but diff names, design_name not in project.

   common::send_msg_id "BD_TCL-003" "INFO" "Currently there is no design <$design_name> in project, so creating one..."

   create_bd_design $design_name

   common::send_msg_id "BD_TCL-004" "INFO" "Making design <$design_name> as current_bd_design."
   current_bd_design $design_name

}

common::send_msg_id "BD_TCL-005" "INFO" "Currently the variable <design_name> is equal to \"$design_name\"."

if { $nRet != 0 } {
   catch {common::send_msg_id "BD_TCL-114" "ERROR" $errMsg}
   return $nRet
}

##################################################################
# DESIGN PROCs
##################################################################



# Procedure to create entire design; Provide argument to make
# procedure reusable. If parentCell is "", will use root.
proc create_root_design { parentCell } {

  variable script_folder
  variable design_name

  if { $parentCell eq "" } {
     set parentCell [get_bd_cells /]
  }

  # Get object for parentCell
  set parentObj [get_bd_cells $parentCell]
  if { $parentObj == "" } {
     catch {common::send_msg_id "BD_TCL-100" "ERROR" "Unable to find parent cell <$parentCell>!"}
     return
  }

  # Make sure parentObj is hier blk
  set parentType [get_property TYPE $parentObj]
  if { $parentType ne "hier" } {
     catch {common::send_msg_id "BD_TCL-101" "ERROR" "Parent <$parentObj> has TYPE = <$parentType>. Expected to be <hier>."}
     return
  }

  # Save current instance; Restore later
  set oldCurInst [current_bd_instance .]

  # Set parent object as current
  current_bd_instance $parentObj


  # Create interface ports
  set DDR [ create_bd_intf_port -mode Master -vlnv xilinx.com:interface:ddrx_rtl:1.0 DDR ]
  set FIXED_IO [ create_bd_intf_port -mode Master -vlnv xilinx.com:display_processing_system7:fixedio_rtl:1.0 FIXED_IO ]

  # Create ports
  set CHA_n [ create_bd_port -dir I CHA_n ]
  set CHA_p [ create_bd_port -dir I CHA_p ]
  set CHB_n [ create_bd_port -dir I CHB_n ]
  set CHB_p [ create_bd_port -dir I CHB_p ]
  set CHC_n [ create_bd_port -dir I CHC_n ]
  set CHC_p [ create_bd_port -dir I CHC_p ]
  set CHD_n [ create_bd_port -dir I CHD_n ]
  set CHD_p [ create_bd_port -dir I CHD_p ]
  set DCO_n [ create_bd_port -dir I DCO_n ]
  set DCO_p [ create_bd_port -dir I DCO_p ]
  set FCO_n [ create_bd_port -dir I FCO_n ]
  set FCO_p [ create_bd_port -dir I FCO_p ]
  set SPI0_MOSI [ create_bd_port -dir O SPI0_MOSI ]
  set SPI0_SCLK [ create_bd_port -dir O SPI0_SCLK ]
  set SPI0_SS_T_0 [ create_bd_port -dir O SPI0_SS_T_0 ]
  set SPI1_MOSI [ create_bd_port -dir O SPI1_MOSI ]
  set SPI1_SCLK [ create_bd_port -dir O SPI1_SCLK ]
  set SPI1_SS_T_0 [ create_bd_port -dir O SPI1_SS_T_0 ]
  set adcClkIn_n [ create_bd_port -dir O adcClkIn_n ]
  set adcClkIn_p [ create_bd_port -dir O adcClkIn_p ]
  set clk_40m_i [ create_bd_port -dir I clk_40m_i ]
  set led [ create_bd_port -dir O led ]
  set pll_trig1 [ create_bd_port -dir I pll_trig1 ]
  set pll_trig2 [ create_bd_port -dir I pll_trig2 ]

  # Create instance: Adc9228_top_0, and set properties
  set Adc9228_top_0 [ create_bd_cell -type ip -vlnv xilinx.com:user:Adc9228_top:1.0 Adc9228_top_0 ]

  set_property -dict [ list \
   CONFIG.NUM_READ_OUTSTANDING {1} \
   CONFIG.NUM_WRITE_OUTSTANDING {1} \
 ] [get_bd_intf_pins /Adc9228_top_0/S_AXILite]

  # Create instance: TriggerCh_0, and set properties
  set TriggerCh_0 [ create_bd_cell -type ip -vlnv xilinx.com:user:TriggerCh:1.0 TriggerCh_0 ]

  set_property -dict [ list \
   CONFIG.SUPPORTS_NARROW_BURST {1} \
   CONFIG.NUM_READ_OUTSTANDING {2} \
   CONFIG.NUM_WRITE_OUTSTANDING {2} \
   CONFIG.MAX_BURST_LENGTH {256} \
 ] [get_bd_intf_pins /TriggerCh_0/m_axi]

  set_property -dict [ list \
   CONFIG.SUPPORTS_NARROW_BURST {0} \
   CONFIG.NUM_READ_OUTSTANDING {1} \
   CONFIG.NUM_WRITE_OUTSTANDING {1} \
   CONFIG.MAX_BURST_LENGTH {1} \
 ] [get_bd_intf_pins /TriggerCh_0/s_axil]

  # Create instance: TriggerCh_1, and set properties
  set TriggerCh_1 [ create_bd_cell -type ip -vlnv xilinx.com:user:TriggerCh:1.0 TriggerCh_1 ]

  set_property -dict [ list \
   CONFIG.SUPPORTS_NARROW_BURST {1} \
   CONFIG.NUM_READ_OUTSTANDING {2} \
   CONFIG.NUM_WRITE_OUTSTANDING {2} \
   CONFIG.MAX_BURST_LENGTH {256} \
 ] [get_bd_intf_pins /TriggerCh_1/m_axi]

  set_property -dict [ list \
   CONFIG.SUPPORTS_NARROW_BURST {0} \
   CONFIG.NUM_READ_OUTSTANDING {1} \
   CONFIG.NUM_WRITE_OUTSTANDING {1} \
   CONFIG.MAX_BURST_LENGTH {1} \
 ] [get_bd_intf_pins /TriggerCh_1/s_axil]

  # Create instance: TriggerCh_2, and set properties
  set TriggerCh_2 [ create_bd_cell -type ip -vlnv xilinx.com:user:TriggerCh:1.0 TriggerCh_2 ]

  set_property -dict [ list \
   CONFIG.SUPPORTS_NARROW_BURST {1} \
   CONFIG.NUM_READ_OUTSTANDING {2} \
   CONFIG.NUM_WRITE_OUTSTANDING {2} \
   CONFIG.MAX_BURST_LENGTH {256} \
 ] [get_bd_intf_pins /TriggerCh_2/m_axi]

  set_property -dict [ list \
   CONFIG.SUPPORTS_NARROW_BURST {0} \
   CONFIG.NUM_READ_OUTSTANDING {1} \
   CONFIG.NUM_WRITE_OUTSTANDING {1} \
   CONFIG.MAX_BURST_LENGTH {1} \
 ] [get_bd_intf_pins /TriggerCh_2/s_axil]

  # Create instance: TriggerCh_3, and set properties
  set TriggerCh_3 [ create_bd_cell -type ip -vlnv xilinx.com:user:TriggerCh:1.0 TriggerCh_3 ]

  set_property -dict [ list \
   CONFIG.SUPPORTS_NARROW_BURST {1} \
   CONFIG.NUM_READ_OUTSTANDING {2} \
   CONFIG.NUM_WRITE_OUTSTANDING {2} \
   CONFIG.MAX_BURST_LENGTH {256} \
 ] [get_bd_intf_pins /TriggerCh_3/m_axi]

  set_property -dict [ list \
   CONFIG.SUPPORTS_NARROW_BURST {0} \
   CONFIG.NUM_READ_OUTSTANDING {1} \
   CONFIG.NUM_WRITE_OUTSTANDING {1} \
   CONFIG.MAX_BURST_LENGTH {1} \
 ] [get_bd_intf_pins /TriggerCh_3/s_axil]

  # Create instance: processing_system7_0, and set properties
  set processing_system7_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:processing_system7:5.5 processing_system7_0 ]
  set_property -dict [ list \
   CONFIG.PCW_ACT_APU_PERIPHERAL_FREQMHZ {666.666687} \
   CONFIG.PCW_ACT_CAN_PERIPHERAL_FREQMHZ {10.000000} \
   CONFIG.PCW_ACT_DCI_PERIPHERAL_FREQMHZ {10.158730} \
   CONFIG.PCW_ACT_ENET0_PERIPHERAL_FREQMHZ {125.000000} \
   CONFIG.PCW_ACT_ENET1_PERIPHERAL_FREQMHZ {10.000000} \
   CONFIG.PCW_ACT_FPGA0_PERIPHERAL_FREQMHZ {200.000000} \
   CONFIG.PCW_ACT_FPGA1_PERIPHERAL_FREQMHZ {10.000000} \
   CONFIG.PCW_ACT_FPGA2_PERIPHERAL_FREQMHZ {10.000000} \
   CONFIG.PCW_ACT_FPGA3_PERIPHERAL_FREQMHZ {10.000000} \
   CONFIG.PCW_ACT_PCAP_PERIPHERAL_FREQMHZ {200.000000} \
   CONFIG.PCW_ACT_QSPI_PERIPHERAL_FREQMHZ {200.000000} \
   CONFIG.PCW_ACT_SDIO_PERIPHERAL_FREQMHZ {10.000000} \
   CONFIG.PCW_ACT_SMC_PERIPHERAL_FREQMHZ {10.000000} \
   CONFIG.PCW_ACT_SPI_PERIPHERAL_FREQMHZ {166.666672} \
   CONFIG.PCW_ACT_TPIU_PERIPHERAL_FREQMHZ {200.000000} \
   CONFIG.PCW_ACT_TTC0_CLK0_PERIPHERAL_FREQMHZ {111.111115} \
   CONFIG.PCW_ACT_TTC0_CLK1_PERIPHERAL_FREQMHZ {111.111115} \
   CONFIG.PCW_ACT_TTC0_CLK2_PERIPHERAL_FREQMHZ {111.111115} \
   CONFIG.PCW_ACT_TTC1_CLK0_PERIPHERAL_FREQMHZ {111.111115} \
   CONFIG.PCW_ACT_TTC1_CLK1_PERIPHERAL_FREQMHZ {111.111115} \
   CONFIG.PCW_ACT_TTC1_CLK2_PERIPHERAL_FREQMHZ {111.111115} \
   CONFIG.PCW_ACT_UART_PERIPHERAL_FREQMHZ {100.000000} \
   CONFIG.PCW_ACT_WDT_PERIPHERAL_FREQMHZ {111.111115} \
   CONFIG.PCW_ARMPLL_CTRL_FBDIV {40} \
   CONFIG.PCW_CAN_PERIPHERAL_DIVISOR0 {1} \
   CONFIG.PCW_CAN_PERIPHERAL_DIVISOR1 {1} \
   CONFIG.PCW_CLK0_FREQ {200000000} \
   CONFIG.PCW_CLK1_FREQ {10000000} \
   CONFIG.PCW_CLK2_FREQ {10000000} \
   CONFIG.PCW_CLK3_FREQ {10000000} \
   CONFIG.PCW_CPU_CPU_PLL_FREQMHZ {1333.333} \
   CONFIG.PCW_CPU_PERIPHERAL_DIVISOR0 {2} \
   CONFIG.PCW_DCI_PERIPHERAL_DIVISOR0 {15} \
   CONFIG.PCW_DCI_PERIPHERAL_DIVISOR1 {7} \
   CONFIG.PCW_DDRPLL_CTRL_FBDIV {32} \
   CONFIG.PCW_DDR_DDR_PLL_FREQMHZ {1066.667} \
   CONFIG.PCW_DDR_PERIPHERAL_DIVISOR0 {2} \
   CONFIG.PCW_DDR_RAM_HIGHADDR {0x1FFFFFFF} \
   CONFIG.PCW_ENET0_ENET0_IO {MIO 16 .. 27} \
   CONFIG.PCW_ENET0_GRP_MDIO_ENABLE {1} \
   CONFIG.PCW_ENET0_GRP_MDIO_IO {MIO 52 .. 53} \
   CONFIG.PCW_ENET0_PERIPHERAL_CLKSRC {IO PLL} \
   CONFIG.PCW_ENET0_PERIPHERAL_DIVISOR0 {8} \
   CONFIG.PCW_ENET0_PERIPHERAL_DIVISOR1 {1} \
   CONFIG.PCW_ENET0_PERIPHERAL_ENABLE {1} \
   CONFIG.PCW_ENET0_PERIPHERAL_FREQMHZ {1000 Mbps} \
   CONFIG.PCW_ENET0_RESET_ENABLE {0} \
   CONFIG.PCW_ENET1_PERIPHERAL_DIVISOR0 {1} \
   CONFIG.PCW_ENET1_PERIPHERAL_DIVISOR1 {1} \
   CONFIG.PCW_ENET1_RESET_ENABLE {0} \
   CONFIG.PCW_ENET_RESET_ENABLE {0} \
   CONFIG.PCW_EN_EMIO_ENET0 {0} \
   CONFIG.PCW_EN_EMIO_GPIO {1} \
   CONFIG.PCW_EN_EMIO_SPI0 {1} \
   CONFIG.PCW_EN_EMIO_SPI1 {1} \
   CONFIG.PCW_EN_EMIO_UART0 {0} \
   CONFIG.PCW_EN_ENET0 {1} \
   CONFIG.PCW_EN_QSPI {1} \
   CONFIG.PCW_EN_SPI0 {1} \
   CONFIG.PCW_EN_SPI1 {1} \
   CONFIG.PCW_EN_UART0 {0} \
   CONFIG.PCW_EN_UART1 {1} \
   CONFIG.PCW_FCLK0_PERIPHERAL_DIVISOR0 {5} \
   CONFIG.PCW_FCLK0_PERIPHERAL_DIVISOR1 {1} \
   CONFIG.PCW_FCLK1_PERIPHERAL_DIVISOR0 {1} \
   CONFIG.PCW_FCLK1_PERIPHERAL_DIVISOR1 {1} \
   CONFIG.PCW_FCLK2_PERIPHERAL_DIVISOR0 {1} \
   CONFIG.PCW_FCLK2_PERIPHERAL_DIVISOR1 {1} \
   CONFIG.PCW_FCLK3_PERIPHERAL_DIVISOR0 {1} \
   CONFIG.PCW_FCLK3_PERIPHERAL_DIVISOR1 {1} \
   CONFIG.PCW_FPGA0_PERIPHERAL_FREQMHZ {200} \
   CONFIG.PCW_FPGA_FCLK0_ENABLE {1} \
   CONFIG.PCW_FPGA_FCLK1_ENABLE {0} \
   CONFIG.PCW_FPGA_FCLK2_ENABLE {0} \
   CONFIG.PCW_FPGA_FCLK3_ENABLE {0} \
   CONFIG.PCW_FTM_CTI_IN0 {<Select>} \
   CONFIG.PCW_FTM_CTI_IN1 {<Select>} \
   CONFIG.PCW_FTM_CTI_IN2 {<Select>} \
   CONFIG.PCW_FTM_CTI_IN3 {<Select>} \
   CONFIG.PCW_FTM_CTI_OUT0 {<Select>} \
   CONFIG.PCW_FTM_CTI_OUT1 {<Select>} \
   CONFIG.PCW_FTM_CTI_OUT2 {<Select>} \
   CONFIG.PCW_FTM_CTI_OUT3 {<Select>} \
   CONFIG.PCW_GPIO_EMIO_GPIO_ENABLE {1} \
   CONFIG.PCW_GPIO_EMIO_GPIO_IO {1} \
   CONFIG.PCW_GPIO_EMIO_GPIO_WIDTH {1} \
   CONFIG.PCW_I2C_PERIPHERAL_FREQMHZ {25} \
   CONFIG.PCW_IOPLL_CTRL_FBDIV {30} \
   CONFIG.PCW_IO_IO_PLL_FREQMHZ {1000.000} \
   CONFIG.PCW_IRQ_F2P_INTR {1} \
   CONFIG.PCW_MIO_16_DIRECTION {out} \
   CONFIG.PCW_MIO_16_IOTYPE {LVCMOS 1.8V} \
   CONFIG.PCW_MIO_16_PULLUP {enabled} \
   CONFIG.PCW_MIO_16_SLEW {slow} \
   CONFIG.PCW_MIO_17_DIRECTION {out} \
   CONFIG.PCW_MIO_17_IOTYPE {LVCMOS 1.8V} \
   CONFIG.PCW_MIO_17_PULLUP {enabled} \
   CONFIG.PCW_MIO_17_SLEW {slow} \
   CONFIG.PCW_MIO_18_DIRECTION {out} \
   CONFIG.PCW_MIO_18_IOTYPE {LVCMOS 1.8V} \
   CONFIG.PCW_MIO_18_PULLUP {enabled} \
   CONFIG.PCW_MIO_18_SLEW {slow} \
   CONFIG.PCW_MIO_19_DIRECTION {out} \
   CONFIG.PCW_MIO_19_IOTYPE {LVCMOS 1.8V} \
   CONFIG.PCW_MIO_19_PULLUP {enabled} \
   CONFIG.PCW_MIO_19_SLEW {slow} \
   CONFIG.PCW_MIO_1_DIRECTION {out} \
   CONFIG.PCW_MIO_1_IOTYPE {LVCMOS 3.3V} \
   CONFIG.PCW_MIO_1_PULLUP {enabled} \
   CONFIG.PCW_MIO_1_SLEW {slow} \
   CONFIG.PCW_MIO_20_DIRECTION {out} \
   CONFIG.PCW_MIO_20_IOTYPE {LVCMOS 1.8V} \
   CONFIG.PCW_MIO_20_PULLUP {enabled} \
   CONFIG.PCW_MIO_20_SLEW {slow} \
   CONFIG.PCW_MIO_21_DIRECTION {out} \
   CONFIG.PCW_MIO_21_IOTYPE {LVCMOS 1.8V} \
   CONFIG.PCW_MIO_21_PULLUP {enabled} \
   CONFIG.PCW_MIO_21_SLEW {slow} \
   CONFIG.PCW_MIO_22_DIRECTION {in} \
   CONFIG.PCW_MIO_22_IOTYPE {LVCMOS 1.8V} \
   CONFIG.PCW_MIO_22_PULLUP {enabled} \
   CONFIG.PCW_MIO_22_SLEW {slow} \
   CONFIG.PCW_MIO_23_DIRECTION {in} \
   CONFIG.PCW_MIO_23_IOTYPE {LVCMOS 1.8V} \
   CONFIG.PCW_MIO_23_PULLUP {enabled} \
   CONFIG.PCW_MIO_23_SLEW {slow} \
   CONFIG.PCW_MIO_24_DIRECTION {in} \
   CONFIG.PCW_MIO_24_IOTYPE {LVCMOS 1.8V} \
   CONFIG.PCW_MIO_24_PULLUP {enabled} \
   CONFIG.PCW_MIO_24_SLEW {slow} \
   CONFIG.PCW_MIO_25_DIRECTION {in} \
   CONFIG.PCW_MIO_25_IOTYPE {LVCMOS 1.8V} \
   CONFIG.PCW_MIO_25_PULLUP {enabled} \
   CONFIG.PCW_MIO_25_SLEW {slow} \
   CONFIG.PCW_MIO_26_DIRECTION {in} \
   CONFIG.PCW_MIO_26_IOTYPE {LVCMOS 1.8V} \
   CONFIG.PCW_MIO_26_PULLUP {enabled} \
   CONFIG.PCW_MIO_26_SLEW {slow} \
   CONFIG.PCW_MIO_27_DIRECTION {in} \
   CONFIG.PCW_MIO_27_IOTYPE {LVCMOS 1.8V} \
   CONFIG.PCW_MIO_27_PULLUP {enabled} \
   CONFIG.PCW_MIO_27_SLEW {slow} \
   CONFIG.PCW_MIO_2_DIRECTION {inout} \
   CONFIG.PCW_MIO_2_IOTYPE {LVCMOS 3.3V} \
   CONFIG.PCW_MIO_2_PULLUP {disabled} \
   CONFIG.PCW_MIO_2_SLEW {slow} \
   CONFIG.PCW_MIO_3_DIRECTION {inout} \
   CONFIG.PCW_MIO_3_IOTYPE {LVCMOS 3.3V} \
   CONFIG.PCW_MIO_3_PULLUP {disabled} \
   CONFIG.PCW_MIO_3_SLEW {slow} \
   CONFIG.PCW_MIO_48_DIRECTION {out} \
   CONFIG.PCW_MIO_48_IOTYPE {LVCMOS 1.8V} \
   CONFIG.PCW_MIO_48_PULLUP {enabled} \
   CONFIG.PCW_MIO_48_SLEW {slow} \
   CONFIG.PCW_MIO_49_DIRECTION {in} \
   CONFIG.PCW_MIO_49_IOTYPE {LVCMOS 1.8V} \
   CONFIG.PCW_MIO_49_PULLUP {enabled} \
   CONFIG.PCW_MIO_49_SLEW {slow} \
   CONFIG.PCW_MIO_4_DIRECTION {inout} \
   CONFIG.PCW_MIO_4_IOTYPE {LVCMOS 3.3V} \
   CONFIG.PCW_MIO_4_PULLUP {disabled} \
   CONFIG.PCW_MIO_4_SLEW {slow} \
   CONFIG.PCW_MIO_52_DIRECTION {out} \
   CONFIG.PCW_MIO_52_IOTYPE {LVCMOS 1.8V} \
   CONFIG.PCW_MIO_52_PULLUP {enabled} \
   CONFIG.PCW_MIO_52_SLEW {slow} \
   CONFIG.PCW_MIO_53_DIRECTION {inout} \
   CONFIG.PCW_MIO_53_IOTYPE {LVCMOS 1.8V} \
   CONFIG.PCW_MIO_53_PULLUP {enabled} \
   CONFIG.PCW_MIO_53_SLEW {slow} \
   CONFIG.PCW_MIO_5_DIRECTION {inout} \
   CONFIG.PCW_MIO_5_IOTYPE {LVCMOS 3.3V} \
   CONFIG.PCW_MIO_5_PULLUP {disabled} \
   CONFIG.PCW_MIO_5_SLEW {slow} \
   CONFIG.PCW_MIO_6_DIRECTION {out} \
   CONFIG.PCW_MIO_6_IOTYPE {LVCMOS 3.3V} \
   CONFIG.PCW_MIO_6_PULLUP {disabled} \
   CONFIG.PCW_MIO_6_SLEW {slow} \
   CONFIG.PCW_MIO_TREE_PERIPHERALS {unassigned#Quad SPI Flash#Quad SPI Flash#Quad SPI Flash#Quad SPI Flash#Quad SPI Flash#Quad SPI Flash#unassigned#unassigned#unassigned#unassigned#unassigned#unassigned#unassigned#unassigned#unassigned#Enet 0#Enet 0#Enet 0#Enet 0#Enet 0#Enet 0#Enet 0#Enet 0#Enet 0#Enet 0#Enet 0#Enet 0#unassigned#unassigned#unassigned#unassigned#unassigned#unassigned#unassigned#unassigned#unassigned#unassigned#unassigned#unassigned#unassigned#unassigned#unassigned#unassigned#unassigned#unassigned#unassigned#unassigned#UART 1#UART 1#unassigned#unassigned#Enet 0#Enet 0} \
   CONFIG.PCW_MIO_TREE_SIGNALS {unassigned#qspi0_ss_b#qspi0_io[0]#qspi0_io[1]#qspi0_io[2]#qspi0_io[3]/HOLD_B#qspi0_sclk#unassigned#unassigned#unassigned#unassigned#unassigned#unassigned#unassigned#unassigned#unassigned#tx_clk#txd[0]#txd[1]#txd[2]#txd[3]#tx_ctl#rx_clk#rxd[0]#rxd[1]#rxd[2]#rxd[3]#rx_ctl#unassigned#unassigned#unassigned#unassigned#unassigned#unassigned#unassigned#unassigned#unassigned#unassigned#unassigned#unassigned#unassigned#unassigned#unassigned#unassigned#unassigned#unassigned#unassigned#unassigned#tx#rx#unassigned#unassigned#mdc#mdio} \
   CONFIG.PCW_NAND_GRP_D8_ENABLE {0} \
   CONFIG.PCW_NAND_PERIPHERAL_ENABLE {0} \
   CONFIG.PCW_NOR_GRP_A25_ENABLE {0} \
   CONFIG.PCW_NOR_GRP_CS0_ENABLE {0} \
   CONFIG.PCW_NOR_GRP_CS1_ENABLE {0} \
   CONFIG.PCW_NOR_GRP_SRAM_CS0_ENABLE {0} \
   CONFIG.PCW_NOR_GRP_SRAM_CS1_ENABLE {0} \
   CONFIG.PCW_NOR_GRP_SRAM_INT_ENABLE {0} \
   CONFIG.PCW_NOR_PERIPHERAL_ENABLE {0} \
   CONFIG.PCW_PCAP_PERIPHERAL_DIVISOR0 {5} \
   CONFIG.PCW_PRESET_BANK1_VOLTAGE {LVCMOS 1.8V} \
   CONFIG.PCW_QSPI_GRP_FBCLK_ENABLE {0} \
   CONFIG.PCW_QSPI_GRP_IO1_ENABLE {0} \
   CONFIG.PCW_QSPI_GRP_SINGLE_SS_ENABLE {1} \
   CONFIG.PCW_QSPI_GRP_SINGLE_SS_IO {MIO 1 .. 6} \
   CONFIG.PCW_QSPI_GRP_SS1_ENABLE {0} \
   CONFIG.PCW_QSPI_PERIPHERAL_DIVISOR0 {5} \
   CONFIG.PCW_QSPI_PERIPHERAL_ENABLE {1} \
   CONFIG.PCW_QSPI_PERIPHERAL_FREQMHZ {200} \
   CONFIG.PCW_QSPI_QSPI_IO {MIO 1 .. 6} \
   CONFIG.PCW_SDIO_PERIPHERAL_DIVISOR0 {1} \
   CONFIG.PCW_SINGLE_QSPI_DATA_MODE {x4} \
   CONFIG.PCW_SMC_PERIPHERAL_DIVISOR0 {1} \
   CONFIG.PCW_SPI0_GRP_SS0_ENABLE {1} \
   CONFIG.PCW_SPI0_GRP_SS0_IO {EMIO} \
   CONFIG.PCW_SPI0_GRP_SS1_ENABLE {1} \
   CONFIG.PCW_SPI0_GRP_SS1_IO {EMIO} \
   CONFIG.PCW_SPI0_GRP_SS2_ENABLE {1} \
   CONFIG.PCW_SPI0_GRP_SS2_IO {EMIO} \
   CONFIG.PCW_SPI0_PERIPHERAL_ENABLE {1} \
   CONFIG.PCW_SPI0_SPI0_IO {EMIO} \
   CONFIG.PCW_SPI1_GRP_SS0_ENABLE {1} \
   CONFIG.PCW_SPI1_GRP_SS0_IO {EMIO} \
   CONFIG.PCW_SPI1_GRP_SS1_ENABLE {1} \
   CONFIG.PCW_SPI1_GRP_SS1_IO {EMIO} \
   CONFIG.PCW_SPI1_GRP_SS2_ENABLE {1} \
   CONFIG.PCW_SPI1_GRP_SS2_IO {EMIO} \
   CONFIG.PCW_SPI1_PERIPHERAL_ENABLE {1} \
   CONFIG.PCW_SPI1_SPI1_IO {EMIO} \
   CONFIG.PCW_SPI_PERIPHERAL_DIVISOR0 {6} \
   CONFIG.PCW_SPI_PERIPHERAL_FREQMHZ {166.666666} \
   CONFIG.PCW_SPI_PERIPHERAL_VALID {1} \
   CONFIG.PCW_TPIU_PERIPHERAL_DIVISOR0 {1} \
   CONFIG.PCW_UART0_GRP_FULL_ENABLE {0} \
   CONFIG.PCW_UART0_PERIPHERAL_ENABLE {0} \
   CONFIG.PCW_UART0_UART0_IO {<Select>} \
   CONFIG.PCW_UART1_GRP_FULL_ENABLE {0} \
   CONFIG.PCW_UART1_PERIPHERAL_ENABLE {1} \
   CONFIG.PCW_UART1_UART1_IO {MIO 48 .. 49} \
   CONFIG.PCW_UART_PERIPHERAL_DIVISOR0 {10} \
   CONFIG.PCW_UART_PERIPHERAL_FREQMHZ {100} \
   CONFIG.PCW_UART_PERIPHERAL_VALID {1} \
   CONFIG.PCW_UIPARAM_ACT_DDR_FREQ_MHZ {533.333374} \
   CONFIG.PCW_UIPARAM_DDR_BANK_ADDR_COUNT {3} \
   CONFIG.PCW_UIPARAM_DDR_CL {7} \
   CONFIG.PCW_UIPARAM_DDR_COL_ADDR_COUNT {10} \
   CONFIG.PCW_UIPARAM_DDR_CWL {6} \
   CONFIG.PCW_UIPARAM_DDR_DEVICE_CAPACITY {2048 MBits} \
   CONFIG.PCW_UIPARAM_DDR_DRAM_WIDTH {16 Bits} \
   CONFIG.PCW_UIPARAM_DDR_PARTNO {MT41K128M16 JT-125} \
   CONFIG.PCW_UIPARAM_DDR_ROW_ADDR_COUNT {14} \
   CONFIG.PCW_UIPARAM_DDR_SPEED_BIN {DDR3_1066F} \
   CONFIG.PCW_UIPARAM_DDR_T_FAW {40.0} \
   CONFIG.PCW_UIPARAM_DDR_T_RAS_MIN {35.0} \
   CONFIG.PCW_UIPARAM_DDR_T_RC {48.75} \
   CONFIG.PCW_UIPARAM_DDR_T_RCD {7} \
   CONFIG.PCW_UIPARAM_DDR_T_RP {7} \
   CONFIG.PCW_USE_CROSS_TRIGGER {0} \
   CONFIG.PCW_USE_FABRIC_INTERRUPT {1} \
   CONFIG.PCW_USE_S_AXI_HP0 {1} \
   CONFIG.PCW_USE_S_AXI_HP1 {1} \
   CONFIG.PCW_USE_S_AXI_HP2 {1} \
   CONFIG.PCW_USE_S_AXI_HP3 {1} \
 ] $processing_system7_0

  # Create instance: ps7_0_axi_periph, and set properties
  set ps7_0_axi_periph [ create_bd_cell -type ip -vlnv xilinx.com:ip:axi_interconnect:2.1 ps7_0_axi_periph ]
  set_property -dict [ list \
   CONFIG.NUM_MI {5} \
 ] $ps7_0_axi_periph

  # Create instance: rst_Adc9228_top_0, and set properties
  set rst_Adc9228_top_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:proc_sys_reset:5.0 rst_Adc9228_top_0 ]

  # Create instance: smartconnect_0, and set properties
  set smartconnect_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:smartconnect:1.0 smartconnect_0 ]
  set_property -dict [ list \
   CONFIG.NUM_SI {1} \
 ] $smartconnect_0

  # Create instance: smartconnect_1, and set properties
  set smartconnect_1 [ create_bd_cell -type ip -vlnv xilinx.com:ip:smartconnect:1.0 smartconnect_1 ]
  set_property -dict [ list \
   CONFIG.NUM_SI {1} \
 ] $smartconnect_1

  # Create instance: smartconnect_2, and set properties
  set smartconnect_2 [ create_bd_cell -type ip -vlnv xilinx.com:ip:smartconnect:1.0 smartconnect_2 ]
  set_property -dict [ list \
   CONFIG.NUM_SI {1} \
 ] $smartconnect_2

  # Create instance: smartconnect_3, and set properties
  set smartconnect_3 [ create_bd_cell -type ip -vlnv xilinx.com:ip:smartconnect:1.0 smartconnect_3 ]
  set_property -dict [ list \
   CONFIG.NUM_SI {1} \
 ] $smartconnect_3

  # Create instance: system_Trig_Ch0, and set properties
  set system_Trig_Ch0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:system_ila:1.1 system_Trig_Ch0 ]
  set_property -dict [ list \
   CONFIG.C_BRAM_CNT {32} \
   CONFIG.C_DATA_DEPTH {2048} \
   CONFIG.C_NUM_MONITOR_SLOTS {1} \
 ] $system_Trig_Ch0

  # Create instance: system_Trig_Ch1, and set properties
  set system_Trig_Ch1 [ create_bd_cell -type ip -vlnv xilinx.com:ip:system_ila:1.1 system_Trig_Ch1 ]
  set_property -dict [ list \
   CONFIG.C_BRAM_CNT {0} \
   CONFIG.C_DATA_DEPTH {2048} \
   CONFIG.C_NUM_MONITOR_SLOTS {1} \
 ] $system_Trig_Ch1

  # Create instance: system_ila_axi_periph, and set properties
  set system_ila_axi_periph [ create_bd_cell -type ip -vlnv xilinx.com:ip:system_ila:1.1 system_ila_axi_periph ]
  set_property -dict [ list \
   CONFIG.C_BRAM_CNT {0} \
   CONFIG.C_DATA_DEPTH {2048} \
   CONFIG.C_NUM_MONITOR_SLOTS {2} \
 ] $system_ila_axi_periph

  # Create instance: xlconcat_0, and set properties
  set xlconcat_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:xlconcat:2.1 xlconcat_0 ]
  set_property -dict [ list \
   CONFIG.NUM_PORTS {4} \
 ] $xlconcat_0

  # Create interface connections
  connect_bd_intf_net -intf_net TriggerCh_0_m_axi [get_bd_intf_pins TriggerCh_0/m_axi] [get_bd_intf_pins smartconnect_0/S00_AXI]
connect_bd_intf_net -intf_net [get_bd_intf_nets TriggerCh_0_m_axi] [get_bd_intf_pins smartconnect_0/S00_AXI] [get_bd_intf_pins system_Trig_Ch0/SLOT_0_AXI]
  connect_bd_intf_net -intf_net TriggerCh_1_m_axi [get_bd_intf_pins TriggerCh_1/m_axi] [get_bd_intf_pins smartconnect_1/S00_AXI]
  connect_bd_intf_net -intf_net TriggerCh_2_m_axi [get_bd_intf_pins TriggerCh_2/m_axi] [get_bd_intf_pins smartconnect_2/S00_AXI]
  connect_bd_intf_net -intf_net TriggerCh_3_m_axi [get_bd_intf_pins TriggerCh_3/m_axi] [get_bd_intf_pins smartconnect_3/S00_AXI]
  connect_bd_intf_net -intf_net processing_system7_0_DDR [get_bd_intf_ports DDR] [get_bd_intf_pins processing_system7_0/DDR]
  connect_bd_intf_net -intf_net processing_system7_0_FIXED_IO [get_bd_intf_ports FIXED_IO] [get_bd_intf_pins processing_system7_0/FIXED_IO]
  connect_bd_intf_net -intf_net processing_system7_0_M_AXI_GP0 [get_bd_intf_pins processing_system7_0/M_AXI_GP0] [get_bd_intf_pins ps7_0_axi_periph/S00_AXI]
  connect_bd_intf_net -intf_net ps7_0_axi_periph_M00_AXI [get_bd_intf_pins Adc9228_top_0/S_AXILite] [get_bd_intf_pins ps7_0_axi_periph/M00_AXI]
connect_bd_intf_net -intf_net [get_bd_intf_nets ps7_0_axi_periph_M00_AXI] [get_bd_intf_pins ps7_0_axi_periph/M00_AXI] [get_bd_intf_pins system_ila_axi_periph/SLOT_1_AXI]
  connect_bd_intf_net -intf_net ps7_0_axi_periph_M01_AXI [get_bd_intf_pins TriggerCh_0/s_axil] [get_bd_intf_pins ps7_0_axi_periph/M01_AXI]
connect_bd_intf_net -intf_net [get_bd_intf_nets ps7_0_axi_periph_M01_AXI] [get_bd_intf_pins ps7_0_axi_periph/M01_AXI] [get_bd_intf_pins system_ila_axi_periph/SLOT_0_AXI]
  connect_bd_intf_net -intf_net ps7_0_axi_periph_M02_AXI [get_bd_intf_pins TriggerCh_1/s_axil] [get_bd_intf_pins ps7_0_axi_periph/M02_AXI]
  connect_bd_intf_net -intf_net ps7_0_axi_periph_M03_AXI [get_bd_intf_pins TriggerCh_2/s_axil] [get_bd_intf_pins ps7_0_axi_periph/M03_AXI]
  connect_bd_intf_net -intf_net ps7_0_axi_periph_M04_AXI [get_bd_intf_pins TriggerCh_3/s_axil] [get_bd_intf_pins ps7_0_axi_periph/M04_AXI]
  connect_bd_intf_net -intf_net smartconnect_0_M00_AXI [get_bd_intf_pins processing_system7_0/S_AXI_HP0] [get_bd_intf_pins smartconnect_0/M00_AXI]
connect_bd_intf_net -intf_net [get_bd_intf_nets smartconnect_0_M00_AXI] [get_bd_intf_pins smartconnect_0/M00_AXI] [get_bd_intf_pins system_Trig_Ch1/SLOT_0_AXI]
  connect_bd_intf_net -intf_net smartconnect_1_M00_AXI [get_bd_intf_pins processing_system7_0/S_AXI_HP1] [get_bd_intf_pins smartconnect_1/M00_AXI]
  connect_bd_intf_net -intf_net smartconnect_2_M00_AXI [get_bd_intf_pins processing_system7_0/S_AXI_HP2] [get_bd_intf_pins smartconnect_2/M00_AXI]
  connect_bd_intf_net -intf_net smartconnect_3_M00_AXI [get_bd_intf_pins processing_system7_0/S_AXI_HP3] [get_bd_intf_pins smartconnect_3/M00_AXI]

  # Create port connections
  connect_bd_net -net ARESETN_1 [get_bd_pins ps7_0_axi_periph/ARESETN] [get_bd_pins rst_Adc9228_top_0/interconnect_aresetn]
  connect_bd_net -net Adc9228_top_0_DataToTriCh0 [get_bd_pins Adc9228_top_0/DataToTriCh0_o] [get_bd_pins TriggerCh_0/iAdcData]
  connect_bd_net -net Adc9228_top_0_DataToTriCh1 [get_bd_pins Adc9228_top_0/DataToTriCh1_o] [get_bd_pins TriggerCh_1/iAdcData]
  connect_bd_net -net Adc9228_top_0_DataToTriCh2 [get_bd_pins Adc9228_top_0/DataToTriCh2_o] [get_bd_pins TriggerCh_2/iAdcData]
  connect_bd_net -net Adc9228_top_0_DataToTriCh3 [get_bd_pins Adc9228_top_0/DataToTriCh3_o] [get_bd_pins TriggerCh_3/iAdcData]
  connect_bd_net -net Adc9228_top_0_TrigInCh0 [get_bd_pins Adc9228_top_0/TrigInCh0_o] [get_bd_pins TriggerCh_0/iAdcData_Tri]
  connect_bd_net -net Adc9228_top_0_TrigInCh1 [get_bd_pins Adc9228_top_0/TrigInCh1_o] [get_bd_pins TriggerCh_1/iAdcData_Tri]
  connect_bd_net -net Adc9228_top_0_TrigInCh2 [get_bd_pins Adc9228_top_0/TrigInCh2_o] [get_bd_pins TriggerCh_2/iAdcData_Tri]
  connect_bd_net -net Adc9228_top_0_TrigInCh3 [get_bd_pins Adc9228_top_0/TrigInCh3_o] [get_bd_pins TriggerCh_3/iAdcData_Tri]
  connect_bd_net -net Adc9228_top_0_adcClkIn_n [get_bd_ports adcClkIn_n] [get_bd_pins Adc9228_top_0/adcClkIn_n]
  connect_bd_net -net Adc9228_top_0_adcClkIn_p [get_bd_ports adcClkIn_p] [get_bd_pins Adc9228_top_0/adcClkIn_p]
  connect_bd_net -net Adc9228_top_0_clk_10m_o [get_bd_pins Adc9228_top_0/S_AXI_ACLK] [get_bd_pins Adc9228_top_0/clk_100m_o] [get_bd_pins TriggerCh_0/iTrigClk] [get_bd_pins TriggerCh_0/s_axil_clk] [get_bd_pins TriggerCh_1/iTrigClk] [get_bd_pins TriggerCh_1/s_axil_clk] [get_bd_pins TriggerCh_2/iTrigClk] [get_bd_pins TriggerCh_2/s_axil_clk] [get_bd_pins TriggerCh_3/iTrigClk] [get_bd_pins TriggerCh_3/s_axil_clk] [get_bd_pins processing_system7_0/M_AXI_GP0_ACLK] [get_bd_pins ps7_0_axi_periph/ACLK] [get_bd_pins ps7_0_axi_periph/M00_ACLK] [get_bd_pins ps7_0_axi_periph/M01_ACLK] [get_bd_pins ps7_0_axi_periph/M02_ACLK] [get_bd_pins ps7_0_axi_periph/M03_ACLK] [get_bd_pins ps7_0_axi_periph/M04_ACLK] [get_bd_pins ps7_0_axi_periph/S00_ACLK] [get_bd_pins rst_Adc9228_top_0/slowest_sync_clk] [get_bd_pins system_ila_axi_periph/clk]
  connect_bd_net -net Adc9228_top_0_led [get_bd_ports led] [get_bd_pins Adc9228_top_0/led]
  connect_bd_net -net CHA_n_0_1 [get_bd_ports CHA_n] [get_bd_pins Adc9228_top_0/CHA_n]
  connect_bd_net -net CHA_p_0_1 [get_bd_ports CHA_p] [get_bd_pins Adc9228_top_0/CHA_p]
  connect_bd_net -net CHB_n_0_1 [get_bd_ports CHB_n] [get_bd_pins Adc9228_top_0/CHB_n]
  connect_bd_net -net CHB_p_0_1 [get_bd_ports CHB_p] [get_bd_pins Adc9228_top_0/CHB_p]
  connect_bd_net -net CHC_n_0_1 [get_bd_ports CHC_n] [get_bd_pins Adc9228_top_0/CHC_n]
  connect_bd_net -net CHC_p_0_1 [get_bd_ports CHC_p] [get_bd_pins Adc9228_top_0/CHC_p]
  connect_bd_net -net CHD_n_0_1 [get_bd_ports CHD_n] [get_bd_pins Adc9228_top_0/CHD_n]
  connect_bd_net -net CHD_p_0_1 [get_bd_ports CHD_p] [get_bd_pins Adc9228_top_0/CHD_p]
  connect_bd_net -net DCO_n_0_1 [get_bd_ports DCO_n] [get_bd_pins Adc9228_top_0/DCO_n]
  connect_bd_net -net DCO_p_0_1 [get_bd_ports DCO_p] [get_bd_pins Adc9228_top_0/DCO_p]
  connect_bd_net -net FCO_n_0_1 [get_bd_ports FCO_n] [get_bd_pins Adc9228_top_0/FCO_n]
  connect_bd_net -net FCO_p_0_1 [get_bd_ports FCO_p] [get_bd_pins Adc9228_top_0/FCO_p]
  connect_bd_net -net M02_ARESETN_1 [get_bd_pins Adc9228_top_0/S_AXI_ARESETN] [get_bd_pins TriggerCh_0/s_axil_rstn] [get_bd_pins TriggerCh_1/s_axil_rstn] [get_bd_pins TriggerCh_2/s_axil_rstn] [get_bd_pins TriggerCh_3/s_axil_rstn] [get_bd_pins ps7_0_axi_periph/M00_ARESETN] [get_bd_pins ps7_0_axi_periph/M01_ARESETN] [get_bd_pins ps7_0_axi_periph/M02_ARESETN] [get_bd_pins ps7_0_axi_periph/M03_ARESETN] [get_bd_pins ps7_0_axi_periph/M04_ARESETN] [get_bd_pins ps7_0_axi_periph/S00_ARESETN] [get_bd_pins rst_Adc9228_top_0/peripheral_aresetn] [get_bd_pins system_ila_axi_periph/resetn]
  connect_bd_net -net TriggerCh_0_m_axi_clk [get_bd_pins TriggerCh_0/m_axi_clk] [get_bd_pins processing_system7_0/S_AXI_HP0_ACLK] [get_bd_pins smartconnect_0/aclk] [get_bd_pins system_Trig_Ch0/clk] [get_bd_pins system_Trig_Ch1/clk]
  connect_bd_net -net TriggerCh_0_m_axi_rstn [get_bd_pins TriggerCh_0/m_axi_rstn] [get_bd_pins smartconnect_0/aresetn] [get_bd_pins system_Trig_Ch0/resetn] [get_bd_pins system_Trig_Ch1/resetn]
  connect_bd_net -net TriggerCh_0_oStateToFINISHIntr [get_bd_pins TriggerCh_0/oStateToFINISHIntr] [get_bd_pins xlconcat_0/In0]
  connect_bd_net -net TriggerCh_1_m_axi_clk [get_bd_pins TriggerCh_1/m_axi_clk] [get_bd_pins processing_system7_0/S_AXI_HP1_ACLK] [get_bd_pins smartconnect_1/aclk]
  connect_bd_net -net TriggerCh_1_m_axi_rstn [get_bd_pins TriggerCh_1/m_axi_rstn] [get_bd_pins smartconnect_1/aresetn]
  connect_bd_net -net TriggerCh_1_oStateToFINISHIntr [get_bd_pins TriggerCh_1/oStateToFINISHIntr] [get_bd_pins xlconcat_0/In1]
  connect_bd_net -net TriggerCh_2_m_axi_clk [get_bd_pins TriggerCh_2/m_axi_clk] [get_bd_pins processing_system7_0/S_AXI_HP2_ACLK] [get_bd_pins smartconnect_2/aclk]
  connect_bd_net -net TriggerCh_2_m_axi_rstn [get_bd_pins TriggerCh_2/m_axi_rstn] [get_bd_pins smartconnect_2/aresetn]
  connect_bd_net -net TriggerCh_2_oStateToFINISHIntr [get_bd_pins TriggerCh_2/oStateToFINISHIntr] [get_bd_pins xlconcat_0/In2]
  connect_bd_net -net TriggerCh_3_m_axi_clk [get_bd_pins TriggerCh_3/m_axi_clk] [get_bd_pins processing_system7_0/S_AXI_HP3_ACLK] [get_bd_pins smartconnect_3/aclk]
  connect_bd_net -net TriggerCh_3_m_axi_rstn [get_bd_pins TriggerCh_3/m_axi_rstn] [get_bd_pins smartconnect_3/aresetn]
  connect_bd_net -net TriggerCh_3_oStateToFINISHIntr [get_bd_pins TriggerCh_3/oStateToFINISHIntr] [get_bd_pins xlconcat_0/In3]
  connect_bd_net -net clk_40m_i_1 [get_bd_ports clk_40m_i] [get_bd_pins Adc9228_top_0/clk_40m_i]
  connect_bd_net -net pll_trig1_0_1 [get_bd_ports pll_trig1] [get_bd_pins Adc9228_top_0/pll_trig1]
  connect_bd_net -net pll_trig2_0_1 [get_bd_ports pll_trig2] [get_bd_pins Adc9228_top_0/pll_trig2]
  connect_bd_net -net processing_system7_0_FCLK_RESET0_N [get_bd_pins Adc9228_top_0/ps_rst_n] [get_bd_pins TriggerCh_0/iTrigRstn] [get_bd_pins TriggerCh_1/iTrigRstn] [get_bd_pins TriggerCh_2/iTrigRstn] [get_bd_pins TriggerCh_3/iTrigRstn] [get_bd_pins processing_system7_0/FCLK_RESET0_N] [get_bd_pins rst_Adc9228_top_0/ext_reset_in]
  connect_bd_net -net processing_system7_0_GPIO_O [get_bd_pins Adc9228_top_0/Start_mode] [get_bd_pins processing_system7_0/GPIO_O]
  connect_bd_net -net processing_system7_0_SPI0_MOSI_O [get_bd_ports SPI0_MOSI] [get_bd_pins processing_system7_0/SPI0_MOSI_O]
  connect_bd_net -net processing_system7_0_SPI0_SCLK_O [get_bd_ports SPI0_SCLK] [get_bd_pins processing_system7_0/SPI0_SCLK_O]
  connect_bd_net -net processing_system7_0_SPI0_SS_T [get_bd_ports SPI0_SS_T_0] [get_bd_pins processing_system7_0/SPI0_SS_T]
  connect_bd_net -net processing_system7_0_SPI1_MOSI_O [get_bd_ports SPI1_MOSI] [get_bd_pins processing_system7_0/SPI1_MOSI_O]
  connect_bd_net -net processing_system7_0_SPI1_SCLK_O [get_bd_ports SPI1_SCLK] [get_bd_pins processing_system7_0/SPI1_SCLK_O]
  connect_bd_net -net processing_system7_0_SPI1_SS_T [get_bd_ports SPI1_SS_T_0] [get_bd_pins processing_system7_0/SPI1_SS_T]
  connect_bd_net -net xlconcat_0_dout [get_bd_pins processing_system7_0/IRQ_F2P] [get_bd_pins xlconcat_0/dout]

  # Create address segments
  create_bd_addr_seg -range 0x20000000 -offset 0x00000000 [get_bd_addr_spaces TriggerCh_0/m_axi] [get_bd_addr_segs processing_system7_0/S_AXI_HP0/HP0_DDR_LOWOCM] SEG_processing_system7_0_HP0_DDR_LOWOCM
  create_bd_addr_seg -range 0x20000000 -offset 0x00000000 [get_bd_addr_spaces TriggerCh_1/m_axi] [get_bd_addr_segs processing_system7_0/S_AXI_HP1/HP1_DDR_LOWOCM] SEG_processing_system7_0_HP1_DDR_LOWOCM
  create_bd_addr_seg -range 0x20000000 -offset 0x00000000 [get_bd_addr_spaces TriggerCh_2/m_axi] [get_bd_addr_segs processing_system7_0/S_AXI_HP2/HP2_DDR_LOWOCM] SEG_processing_system7_0_HP2_DDR_LOWOCM
  create_bd_addr_seg -range 0x20000000 -offset 0x00000000 [get_bd_addr_spaces TriggerCh_3/m_axi] [get_bd_addr_segs processing_system7_0/S_AXI_HP3/HP3_DDR_LOWOCM] SEG_processing_system7_0_HP3_DDR_LOWOCM
  create_bd_addr_seg -range 0x00010000 -offset 0x44010000 [get_bd_addr_spaces processing_system7_0/Data] [get_bd_addr_segs Adc9228_top_0/S_AXILite/reg0] SEG_Adc9228_top_0_reg0
  create_bd_addr_seg -range 0x04000000 -offset 0x40000000 [get_bd_addr_spaces processing_system7_0/Data] [get_bd_addr_segs TriggerCh_0/s_axil/reg0] SEG_TriggerCh_0_reg0
  create_bd_addr_seg -range 0x04000000 -offset 0x60000000 [get_bd_addr_spaces processing_system7_0/Data] [get_bd_addr_segs TriggerCh_1/s_axil/reg0] SEG_TriggerCh_1_reg0
  create_bd_addr_seg -range 0x04000000 -offset 0x50000000 [get_bd_addr_spaces processing_system7_0/Data] [get_bd_addr_segs TriggerCh_2/s_axil/reg0] SEG_TriggerCh_2_reg0
  create_bd_addr_seg -range 0x04000000 -offset 0x70000000 [get_bd_addr_spaces processing_system7_0/Data] [get_bd_addr_segs TriggerCh_3/s_axil/reg0] SEG_TriggerCh_3_reg0


  # Restore current instance
  current_bd_instance $oldCurInst

  save_bd_design
}
# End of create_root_design()


##################################################################
# MAIN FLOW
##################################################################

create_root_design ""


