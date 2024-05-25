# 
# Synthesis run script generated by Vivado
# 

proc create_report { reportName command } {
  set status "."
  append status $reportName ".fail"
  if { [file exists $status] } {
    eval file delete [glob $status]
  }
  send_msg_id runtcl-4 info "Executing : $command"
  set retval [eval catch { $command } msg]
  if { $retval != 0 } {
    set fp [open $status w]
    close $fp
    send_msg_id runtcl-5 warning "$msg"
  }
}
set_param tcl.collectionResultDisplayLimit 0
set_param xicom.use_bs_reader 1
set_param project.vivado.isBlockSynthRun true
set_msg_config -msgmgr_mode ooc_run
create_project -in_memory -part xc7z020clg400-1

set_param project.singleFileAddWarning.threshold 0
set_param project.compositeFile.enableAutoGeneration 0
set_param synth.vivado.isSynthRun true
set_msg_config -source 4 -id {IP_Flow 19-2162} -severity warning -new_severity info
set_property webtalk.parent_dir E:/ZynqProject_v17/Adc9228_TCP_System_v3/Adc3444_TCP_main.cache/wt [current_project]
set_property parent.project_path E:/ZynqProject_v17/Adc9228_TCP_System_v3/Adc3444_TCP_main.xpr [current_project]
set_property XPM_LIBRARIES {XPM_CDC XPM_FIFO XPM_MEMORY} [current_project]
set_property default_lib xil_defaultlib [current_project]
set_property target_language Verilog [current_project]
set_property ip_repo_paths {
  e:/TriggerCh
  e:/ZynqProject_v17/Adc9228_top_axi_v2
} [current_project]
set_property ip_output_repo e:/ZynqProject_v17/Adc9228_TCP_System_v3/Adc3444_TCP_main.cache/ip [current_project]
set_property ip_cache_permissions {read write} [current_project]
read_ip -quiet e:/ZynqProject_v17/Adc9228_TCP_System_v3/Adc3444_TCP_main.srcs/sources_1/bd/Adc3444_TCP/ip/Adc3444_TCP_smartconnect_0_3/Adc3444_TCP_smartconnect_0_3.xci
set_property used_in_implementation false [get_files -all e:/ZynqProject_v17/Adc9228_TCP_System_v3/Adc3444_TCP_main.srcs/sources_1/bd/Adc3444_TCP/ip/Adc3444_TCP_smartconnect_0_3/bd_0/ip/ip_5/bd_cb33_s00a2s_0_ooc.xdc]
set_property used_in_implementation false [get_files -all e:/ZynqProject_v17/Adc9228_TCP_System_v3/Adc3444_TCP_main.srcs/sources_1/bd/Adc3444_TCP/ip/Adc3444_TCP_smartconnect_0_3/bd_0/ip/ip_11/bd_cb33_m00s2a_0_ooc.xdc]
set_property used_in_implementation false [get_files -all e:/ZynqProject_v17/Adc9228_TCP_System_v3/Adc3444_TCP_main.srcs/sources_1/bd/Adc3444_TCP/ip/Adc3444_TCP_smartconnect_0_3/bd_0/ip/ip_6/bd_cb33_sarn_0_ooc.xdc]
set_property used_in_implementation false [get_files -all e:/ZynqProject_v17/Adc9228_TCP_System_v3/Adc3444_TCP_main.srcs/sources_1/bd/Adc3444_TCP/ip/Adc3444_TCP_smartconnect_0_3/bd_0/ip/ip_7/bd_cb33_srn_0_ooc.xdc]
set_property used_in_implementation false [get_files -all e:/ZynqProject_v17/Adc9228_TCP_System_v3/Adc3444_TCP_main.srcs/sources_1/bd/Adc3444_TCP/ip/Adc3444_TCP_smartconnect_0_3/bd_0/ip/ip_8/bd_cb33_sawn_0_ooc.xdc]
set_property used_in_implementation false [get_files -all e:/ZynqProject_v17/Adc9228_TCP_System_v3/Adc3444_TCP_main.srcs/sources_1/bd/Adc3444_TCP/ip/Adc3444_TCP_smartconnect_0_3/bd_0/ip/ip_9/bd_cb33_swn_0_ooc.xdc]
set_property used_in_implementation false [get_files -all e:/ZynqProject_v17/Adc9228_TCP_System_v3/Adc3444_TCP_main.srcs/sources_1/bd/Adc3444_TCP/ip/Adc3444_TCP_smartconnect_0_3/bd_0/ip/ip_10/bd_cb33_sbn_0_ooc.xdc]
set_property used_in_implementation false [get_files -all e:/ZynqProject_v17/Adc9228_TCP_System_v3/Adc3444_TCP_main.srcs/sources_1/bd/Adc3444_TCP/ip/Adc3444_TCP_smartconnect_0_3/bd_0/ip/ip_1/bd_cb33_psr_aclk_0_board.xdc]
set_property used_in_implementation false [get_files -all e:/ZynqProject_v17/Adc9228_TCP_System_v3/Adc3444_TCP_main.srcs/sources_1/bd/Adc3444_TCP/ip/Adc3444_TCP_smartconnect_0_3/bd_0/ip/ip_1/bd_cb33_psr_aclk_0.xdc]
set_property used_in_implementation false [get_files -all e:/ZynqProject_v17/Adc9228_TCP_System_v3/Adc3444_TCP_main.srcs/sources_1/bd/Adc3444_TCP/ip/Adc3444_TCP_smartconnect_0_3/ooc.xdc]

# Mark all dcp files as not used in implementation to prevent them from being
# stitched into the results of this synthesis run. Any black boxes in the
# design are intentionally left as such for best results. Dcp files will be
# stitched into the design at a later time, either when this synthesis run is
# opened, or when it is stitched into a dependent implementation run.
foreach dcp [get_files -quiet -all -filter file_type=="Design\ Checkpoint"] {
  set_property used_in_implementation false $dcp
}
read_xdc dont_touch.xdc
set_property used_in_implementation false [get_files dont_touch.xdc]

set cached_ip [config_ip_cache -export -no_bom -use_project_ipc -dir E:/ZynqProject_v17/Adc9228_TCP_System_v3/Adc3444_TCP_main.runs/Adc3444_TCP_smartconnect_0_3_synth_1 -new_name Adc3444_TCP_smartconnect_0_3 -ip [get_ips Adc3444_TCP_smartconnect_0_3]]

if { $cached_ip eq {} } {

synth_design -top Adc3444_TCP_smartconnect_0_3 -part xc7z020clg400-1 -mode out_of_context

#---------------------------------------------------------
# Generate Checkpoint/Stub/Simulation Files For IP Cache
#---------------------------------------------------------
# disable binary constraint mode for IPCache checkpoints
set_param constraints.enableBinaryConstraints false

catch {
 write_checkpoint -force -noxdef -rename_prefix Adc3444_TCP_smartconnect_0_3_ Adc3444_TCP_smartconnect_0_3.dcp

 set ipCachedFiles {}
 write_verilog -force -mode synth_stub -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ Adc3444_TCP_smartconnect_0_3_stub.v
 lappend ipCachedFiles Adc3444_TCP_smartconnect_0_3_stub.v

 write_vhdl -force -mode synth_stub -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ Adc3444_TCP_smartconnect_0_3_stub.vhdl
 lappend ipCachedFiles Adc3444_TCP_smartconnect_0_3_stub.vhdl

 write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ Adc3444_TCP_smartconnect_0_3_sim_netlist.v
 lappend ipCachedFiles Adc3444_TCP_smartconnect_0_3_sim_netlist.v

 write_vhdl -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ Adc3444_TCP_smartconnect_0_3_sim_netlist.vhdl
 lappend ipCachedFiles Adc3444_TCP_smartconnect_0_3_sim_netlist.vhdl

 config_ip_cache -add -dcp Adc3444_TCP_smartconnect_0_3.dcp -move_files $ipCachedFiles -use_project_ipc -ip [get_ips Adc3444_TCP_smartconnect_0_3]
}

rename_ref -prefix_all Adc3444_TCP_smartconnect_0_3_

# disable binary constraint mode for synth run checkpoints
set_param constraints.enableBinaryConstraints false
write_checkpoint -force -noxdef Adc3444_TCP_smartconnect_0_3.dcp
create_report "Adc3444_TCP_smartconnect_0_3_synth_1_synth_report_utilization_0" "report_utilization -file Adc3444_TCP_smartconnect_0_3_utilization_synth.rpt -pb Adc3444_TCP_smartconnect_0_3_utilization_synth.pb"

if { [catch {
  file copy -force E:/ZynqProject_v17/Adc9228_TCP_System_v3/Adc3444_TCP_main.runs/Adc3444_TCP_smartconnect_0_3_synth_1/Adc3444_TCP_smartconnect_0_3.dcp e:/ZynqProject_v17/Adc9228_TCP_System_v3/Adc3444_TCP_main.srcs/sources_1/bd/Adc3444_TCP/ip/Adc3444_TCP_smartconnect_0_3/Adc3444_TCP_smartconnect_0_3.dcp
} _RESULT ] } { 
  send_msg_id runtcl-3 error "ERROR: Unable to successfully create or copy the sub-design checkpoint file."
  error "ERROR: Unable to successfully create or copy the sub-design checkpoint file."
}

if { [catch {
  write_verilog -force -mode synth_stub e:/ZynqProject_v17/Adc9228_TCP_System_v3/Adc3444_TCP_main.srcs/sources_1/bd/Adc3444_TCP/ip/Adc3444_TCP_smartconnect_0_3/Adc3444_TCP_smartconnect_0_3_stub.v
} _RESULT ] } { 
  puts "CRITICAL WARNING: Unable to successfully create a Verilog synthesis stub for the sub-design. This may lead to errors in top level synthesis of the design. Error reported: $_RESULT"
}

if { [catch {
  write_vhdl -force -mode synth_stub e:/ZynqProject_v17/Adc9228_TCP_System_v3/Adc3444_TCP_main.srcs/sources_1/bd/Adc3444_TCP/ip/Adc3444_TCP_smartconnect_0_3/Adc3444_TCP_smartconnect_0_3_stub.vhdl
} _RESULT ] } { 
  puts "CRITICAL WARNING: Unable to successfully create a VHDL synthesis stub for the sub-design. This may lead to errors in top level synthesis of the design. Error reported: $_RESULT"
}

if { [catch {
  write_verilog -force -mode funcsim e:/ZynqProject_v17/Adc9228_TCP_System_v3/Adc3444_TCP_main.srcs/sources_1/bd/Adc3444_TCP/ip/Adc3444_TCP_smartconnect_0_3/Adc3444_TCP_smartconnect_0_3_sim_netlist.v
} _RESULT ] } { 
  puts "CRITICAL WARNING: Unable to successfully create the Verilog functional simulation sub-design file. Post-Synthesis Functional Simulation with this file may not be possible or may give incorrect results. Error reported: $_RESULT"
}

if { [catch {
  write_vhdl -force -mode funcsim e:/ZynqProject_v17/Adc9228_TCP_System_v3/Adc3444_TCP_main.srcs/sources_1/bd/Adc3444_TCP/ip/Adc3444_TCP_smartconnect_0_3/Adc3444_TCP_smartconnect_0_3_sim_netlist.vhdl
} _RESULT ] } { 
  puts "CRITICAL WARNING: Unable to successfully create the VHDL functional simulation sub-design file. Post-Synthesis Functional Simulation with this file may not be possible or may give incorrect results. Error reported: $_RESULT"
}


} else {


if { [catch {
  file copy -force E:/ZynqProject_v17/Adc9228_TCP_System_v3/Adc3444_TCP_main.runs/Adc3444_TCP_smartconnect_0_3_synth_1/Adc3444_TCP_smartconnect_0_3.dcp e:/ZynqProject_v17/Adc9228_TCP_System_v3/Adc3444_TCP_main.srcs/sources_1/bd/Adc3444_TCP/ip/Adc3444_TCP_smartconnect_0_3/Adc3444_TCP_smartconnect_0_3.dcp
} _RESULT ] } { 
  send_msg_id runtcl-3 error "ERROR: Unable to successfully create or copy the sub-design checkpoint file."
  error "ERROR: Unable to successfully create or copy the sub-design checkpoint file."
}

if { [catch {
  file rename -force E:/ZynqProject_v17/Adc9228_TCP_System_v3/Adc3444_TCP_main.runs/Adc3444_TCP_smartconnect_0_3_synth_1/Adc3444_TCP_smartconnect_0_3_stub.v e:/ZynqProject_v17/Adc9228_TCP_System_v3/Adc3444_TCP_main.srcs/sources_1/bd/Adc3444_TCP/ip/Adc3444_TCP_smartconnect_0_3/Adc3444_TCP_smartconnect_0_3_stub.v
} _RESULT ] } { 
  puts "CRITICAL WARNING: Unable to successfully create a Verilog synthesis stub for the sub-design. This may lead to errors in top level synthesis of the design. Error reported: $_RESULT"
}

if { [catch {
  file rename -force E:/ZynqProject_v17/Adc9228_TCP_System_v3/Adc3444_TCP_main.runs/Adc3444_TCP_smartconnect_0_3_synth_1/Adc3444_TCP_smartconnect_0_3_stub.vhdl e:/ZynqProject_v17/Adc9228_TCP_System_v3/Adc3444_TCP_main.srcs/sources_1/bd/Adc3444_TCP/ip/Adc3444_TCP_smartconnect_0_3/Adc3444_TCP_smartconnect_0_3_stub.vhdl
} _RESULT ] } { 
  puts "CRITICAL WARNING: Unable to successfully create a VHDL synthesis stub for the sub-design. This may lead to errors in top level synthesis of the design. Error reported: $_RESULT"
}

if { [catch {
  file rename -force E:/ZynqProject_v17/Adc9228_TCP_System_v3/Adc3444_TCP_main.runs/Adc3444_TCP_smartconnect_0_3_synth_1/Adc3444_TCP_smartconnect_0_3_sim_netlist.v e:/ZynqProject_v17/Adc9228_TCP_System_v3/Adc3444_TCP_main.srcs/sources_1/bd/Adc3444_TCP/ip/Adc3444_TCP_smartconnect_0_3/Adc3444_TCP_smartconnect_0_3_sim_netlist.v
} _RESULT ] } { 
  puts "CRITICAL WARNING: Unable to successfully create the Verilog functional simulation sub-design file. Post-Synthesis Functional Simulation with this file may not be possible or may give incorrect results. Error reported: $_RESULT"
}

if { [catch {
  file rename -force E:/ZynqProject_v17/Adc9228_TCP_System_v3/Adc3444_TCP_main.runs/Adc3444_TCP_smartconnect_0_3_synth_1/Adc3444_TCP_smartconnect_0_3_sim_netlist.vhdl e:/ZynqProject_v17/Adc9228_TCP_System_v3/Adc3444_TCP_main.srcs/sources_1/bd/Adc3444_TCP/ip/Adc3444_TCP_smartconnect_0_3/Adc3444_TCP_smartconnect_0_3_sim_netlist.vhdl
} _RESULT ] } { 
  puts "CRITICAL WARNING: Unable to successfully create the VHDL functional simulation sub-design file. Post-Synthesis Functional Simulation with this file may not be possible or may give incorrect results. Error reported: $_RESULT"
}

}; # end if cached_ip 

if {[file isdir E:/ZynqProject_v17/Adc9228_TCP_System_v3/Adc3444_TCP_main.ip_user_files/ip/Adc3444_TCP_smartconnect_0_3]} {
  catch { 
    file copy -force e:/ZynqProject_v17/Adc9228_TCP_System_v3/Adc3444_TCP_main.srcs/sources_1/bd/Adc3444_TCP/ip/Adc3444_TCP_smartconnect_0_3/Adc3444_TCP_smartconnect_0_3_stub.v E:/ZynqProject_v17/Adc9228_TCP_System_v3/Adc3444_TCP_main.ip_user_files/ip/Adc3444_TCP_smartconnect_0_3
  }
}

if {[file isdir E:/ZynqProject_v17/Adc9228_TCP_System_v3/Adc3444_TCP_main.ip_user_files/ip/Adc3444_TCP_smartconnect_0_3]} {
  catch { 
    file copy -force e:/ZynqProject_v17/Adc9228_TCP_System_v3/Adc3444_TCP_main.srcs/sources_1/bd/Adc3444_TCP/ip/Adc3444_TCP_smartconnect_0_3/Adc3444_TCP_smartconnect_0_3_stub.vhdl E:/ZynqProject_v17/Adc9228_TCP_System_v3/Adc3444_TCP_main.ip_user_files/ip/Adc3444_TCP_smartconnect_0_3
  }
}
