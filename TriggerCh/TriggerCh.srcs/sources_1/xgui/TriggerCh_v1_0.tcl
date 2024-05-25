# Definitional proc to organize widgets for parameters.
proc init_gui { IPINST } {
  ipgui::add_param $IPINST -name "Component_Name"
  #Adding Page
  set Page_0 [ipgui::add_page $IPINST -name "Page 0"]
  ipgui::add_param $IPINST -name "AXIL_ADDR_WIDTH" -parent ${Page_0}
  ipgui::add_param $IPINST -name "AXIL_DATA_WIDTH" -parent ${Page_0}
  ipgui::add_param $IPINST -name "AXIL_STRB_WIDTH" -parent ${Page_0}
  ipgui::add_param $IPINST -name "AXI_ADDR_WIDTH" -parent ${Page_0}
  ipgui::add_param $IPINST -name "AXI_ARUSER_WIDTH" -parent ${Page_0}
  ipgui::add_param $IPINST -name "AXI_AWUSER_WIDTH" -parent ${Page_0}
  ipgui::add_param $IPINST -name "AXI_DATA_WIDTH" -parent ${Page_0}
  ipgui::add_param $IPINST -name "AXI_HPorACP" -parent ${Page_0}
  ipgui::add_param $IPINST -name "AXI_ID_WIDTH" -parent ${Page_0}
  ipgui::add_param $IPINST -name "AXI_MAX_BURST_LEN" -parent ${Page_0}
  ipgui::add_param $IPINST -name "AXI_STRB_WIDTH" -parent ${Page_0}
  ipgui::add_param $IPINST -name "TrigByteWidth" -parent ${Page_0}
  ipgui::add_param $IPINST -name "TrigDDRSpace" -parent ${Page_0}
  ipgui::add_param $IPINST -name "TrigDataWidth" -parent ${Page_0}
  ipgui::add_param $IPINST -name "TrigStatusNum" -parent ${Page_0}


}

proc update_PARAM_VALUE.AXIL_ADDR_WIDTH { PARAM_VALUE.AXIL_ADDR_WIDTH } {
	# Procedure called to update AXIL_ADDR_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.AXIL_ADDR_WIDTH { PARAM_VALUE.AXIL_ADDR_WIDTH } {
	# Procedure called to validate AXIL_ADDR_WIDTH
	return true
}

proc update_PARAM_VALUE.AXIL_DATA_WIDTH { PARAM_VALUE.AXIL_DATA_WIDTH } {
	# Procedure called to update AXIL_DATA_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.AXIL_DATA_WIDTH { PARAM_VALUE.AXIL_DATA_WIDTH } {
	# Procedure called to validate AXIL_DATA_WIDTH
	return true
}

proc update_PARAM_VALUE.AXIL_STRB_WIDTH { PARAM_VALUE.AXIL_STRB_WIDTH } {
	# Procedure called to update AXIL_STRB_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.AXIL_STRB_WIDTH { PARAM_VALUE.AXIL_STRB_WIDTH } {
	# Procedure called to validate AXIL_STRB_WIDTH
	return true
}

proc update_PARAM_VALUE.AXI_ADDR_WIDTH { PARAM_VALUE.AXI_ADDR_WIDTH } {
	# Procedure called to update AXI_ADDR_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.AXI_ADDR_WIDTH { PARAM_VALUE.AXI_ADDR_WIDTH } {
	# Procedure called to validate AXI_ADDR_WIDTH
	return true
}

proc update_PARAM_VALUE.AXI_ARUSER_WIDTH { PARAM_VALUE.AXI_ARUSER_WIDTH } {
	# Procedure called to update AXI_ARUSER_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.AXI_ARUSER_WIDTH { PARAM_VALUE.AXI_ARUSER_WIDTH } {
	# Procedure called to validate AXI_ARUSER_WIDTH
	return true
}

proc update_PARAM_VALUE.AXI_AWUSER_WIDTH { PARAM_VALUE.AXI_AWUSER_WIDTH } {
	# Procedure called to update AXI_AWUSER_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.AXI_AWUSER_WIDTH { PARAM_VALUE.AXI_AWUSER_WIDTH } {
	# Procedure called to validate AXI_AWUSER_WIDTH
	return true
}

proc update_PARAM_VALUE.AXI_DATA_WIDTH { PARAM_VALUE.AXI_DATA_WIDTH } {
	# Procedure called to update AXI_DATA_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.AXI_DATA_WIDTH { PARAM_VALUE.AXI_DATA_WIDTH } {
	# Procedure called to validate AXI_DATA_WIDTH
	return true
}

proc update_PARAM_VALUE.AXI_HPorACP { PARAM_VALUE.AXI_HPorACP } {
	# Procedure called to update AXI_HPorACP when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.AXI_HPorACP { PARAM_VALUE.AXI_HPorACP } {
	# Procedure called to validate AXI_HPorACP
	return true
}

proc update_PARAM_VALUE.AXI_ID_WIDTH { PARAM_VALUE.AXI_ID_WIDTH } {
	# Procedure called to update AXI_ID_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.AXI_ID_WIDTH { PARAM_VALUE.AXI_ID_WIDTH } {
	# Procedure called to validate AXI_ID_WIDTH
	return true
}

proc update_PARAM_VALUE.AXI_MAX_BURST_LEN { PARAM_VALUE.AXI_MAX_BURST_LEN } {
	# Procedure called to update AXI_MAX_BURST_LEN when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.AXI_MAX_BURST_LEN { PARAM_VALUE.AXI_MAX_BURST_LEN } {
	# Procedure called to validate AXI_MAX_BURST_LEN
	return true
}

proc update_PARAM_VALUE.AXI_STRB_WIDTH { PARAM_VALUE.AXI_STRB_WIDTH } {
	# Procedure called to update AXI_STRB_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.AXI_STRB_WIDTH { PARAM_VALUE.AXI_STRB_WIDTH } {
	# Procedure called to validate AXI_STRB_WIDTH
	return true
}

proc update_PARAM_VALUE.TrigByteWidth { PARAM_VALUE.TrigByteWidth } {
	# Procedure called to update TrigByteWidth when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.TrigByteWidth { PARAM_VALUE.TrigByteWidth } {
	# Procedure called to validate TrigByteWidth
	return true
}

proc update_PARAM_VALUE.TrigDDRSpace { PARAM_VALUE.TrigDDRSpace } {
	# Procedure called to update TrigDDRSpace when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.TrigDDRSpace { PARAM_VALUE.TrigDDRSpace } {
	# Procedure called to validate TrigDDRSpace
	return true
}

proc update_PARAM_VALUE.TrigDataWidth { PARAM_VALUE.TrigDataWidth } {
	# Procedure called to update TrigDataWidth when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.TrigDataWidth { PARAM_VALUE.TrigDataWidth } {
	# Procedure called to validate TrigDataWidth
	return true
}

proc update_PARAM_VALUE.TrigStatusNum { PARAM_VALUE.TrigStatusNum } {
	# Procedure called to update TrigStatusNum when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.TrigStatusNum { PARAM_VALUE.TrigStatusNum } {
	# Procedure called to validate TrigStatusNum
	return true
}


proc update_MODELPARAM_VALUE.AXI_HPorACP { MODELPARAM_VALUE.AXI_HPorACP PARAM_VALUE.AXI_HPorACP } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.AXI_HPorACP}] ${MODELPARAM_VALUE.AXI_HPorACP}
}

proc update_MODELPARAM_VALUE.AXIL_ADDR_WIDTH { MODELPARAM_VALUE.AXIL_ADDR_WIDTH PARAM_VALUE.AXIL_ADDR_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.AXIL_ADDR_WIDTH}] ${MODELPARAM_VALUE.AXIL_ADDR_WIDTH}
}

proc update_MODELPARAM_VALUE.AXIL_DATA_WIDTH { MODELPARAM_VALUE.AXIL_DATA_WIDTH PARAM_VALUE.AXIL_DATA_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.AXIL_DATA_WIDTH}] ${MODELPARAM_VALUE.AXIL_DATA_WIDTH}
}

proc update_MODELPARAM_VALUE.AXIL_STRB_WIDTH { MODELPARAM_VALUE.AXIL_STRB_WIDTH PARAM_VALUE.AXIL_STRB_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.AXIL_STRB_WIDTH}] ${MODELPARAM_VALUE.AXIL_STRB_WIDTH}
}

proc update_MODELPARAM_VALUE.AXI_ID_WIDTH { MODELPARAM_VALUE.AXI_ID_WIDTH PARAM_VALUE.AXI_ID_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.AXI_ID_WIDTH}] ${MODELPARAM_VALUE.AXI_ID_WIDTH}
}

proc update_MODELPARAM_VALUE.AXI_ADDR_WIDTH { MODELPARAM_VALUE.AXI_ADDR_WIDTH PARAM_VALUE.AXI_ADDR_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.AXI_ADDR_WIDTH}] ${MODELPARAM_VALUE.AXI_ADDR_WIDTH}
}

proc update_MODELPARAM_VALUE.AXI_DATA_WIDTH { MODELPARAM_VALUE.AXI_DATA_WIDTH PARAM_VALUE.AXI_DATA_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.AXI_DATA_WIDTH}] ${MODELPARAM_VALUE.AXI_DATA_WIDTH}
}

proc update_MODELPARAM_VALUE.AXI_MAX_BURST_LEN { MODELPARAM_VALUE.AXI_MAX_BURST_LEN PARAM_VALUE.AXI_MAX_BURST_LEN } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.AXI_MAX_BURST_LEN}] ${MODELPARAM_VALUE.AXI_MAX_BURST_LEN}
}

proc update_MODELPARAM_VALUE.AXI_STRB_WIDTH { MODELPARAM_VALUE.AXI_STRB_WIDTH PARAM_VALUE.AXI_STRB_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.AXI_STRB_WIDTH}] ${MODELPARAM_VALUE.AXI_STRB_WIDTH}
}

proc update_MODELPARAM_VALUE.AXI_ARUSER_WIDTH { MODELPARAM_VALUE.AXI_ARUSER_WIDTH PARAM_VALUE.AXI_ARUSER_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.AXI_ARUSER_WIDTH}] ${MODELPARAM_VALUE.AXI_ARUSER_WIDTH}
}

proc update_MODELPARAM_VALUE.AXI_AWUSER_WIDTH { MODELPARAM_VALUE.AXI_AWUSER_WIDTH PARAM_VALUE.AXI_AWUSER_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.AXI_AWUSER_WIDTH}] ${MODELPARAM_VALUE.AXI_AWUSER_WIDTH}
}

proc update_MODELPARAM_VALUE.TrigDataWidth { MODELPARAM_VALUE.TrigDataWidth PARAM_VALUE.TrigDataWidth } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.TrigDataWidth}] ${MODELPARAM_VALUE.TrigDataWidth}
}

proc update_MODELPARAM_VALUE.TrigByteWidth { MODELPARAM_VALUE.TrigByteWidth PARAM_VALUE.TrigByteWidth } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.TrigByteWidth}] ${MODELPARAM_VALUE.TrigByteWidth}
}

proc update_MODELPARAM_VALUE.TrigStatusNum { MODELPARAM_VALUE.TrigStatusNum PARAM_VALUE.TrigStatusNum } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.TrigStatusNum}] ${MODELPARAM_VALUE.TrigStatusNum}
}

proc update_MODELPARAM_VALUE.TrigDDRSpace { MODELPARAM_VALUE.TrigDDRSpace PARAM_VALUE.TrigDDRSpace } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.TrigDDRSpace}] ${MODELPARAM_VALUE.TrigDDRSpace}
}

