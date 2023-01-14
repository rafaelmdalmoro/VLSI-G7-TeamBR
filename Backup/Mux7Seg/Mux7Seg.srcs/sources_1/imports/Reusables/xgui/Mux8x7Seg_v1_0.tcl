# Definitional proc to organize widgets for parameters.
proc init_gui { IPINST } {
  ipgui::add_param $IPINST -name "Component_Name"
  #Adding Page
  ipgui::add_page $IPINST -name "Page 0"

  ipgui::add_param $IPINST -name "NoDecoder"

}

proc update_PARAM_VALUE.NoDecoder { PARAM_VALUE.NoDecoder } {
	# Procedure called to update NoDecoder when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.NoDecoder { PARAM_VALUE.NoDecoder } {
	# Procedure called to validate NoDecoder
	return true
}


proc update_MODELPARAM_VALUE.NoDecoder { MODELPARAM_VALUE.NoDecoder PARAM_VALUE.NoDecoder } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.NoDecoder}] ${MODELPARAM_VALUE.NoDecoder}
}

