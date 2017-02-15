
# PlanAhead Launch Script for Post PAR Floorplanning, created by Project Navigator

create_project -name lab7_leak -dir "C:/Users/mos28/Documents/xilinx proj/hardsec/lab7_leak/planAhead_run_2" -part xc7a100tcsg324-3
set srcset [get_property srcset [current_run -impl]]
set_property design_mode GateLvl $srcset
set_property edif_top_file "C:/Users/mos28/Documents/xilinx proj/hardsec/lab7_leak/rc5dup.ngc" [ get_property srcset [ current_run ] ]
add_files -norecurse { {C:/Users/mos28/Documents/xilinx proj/hardsec/lab7_leak} }
set_property target_constrs_file "rc5dup.ucf" [current_fileset -constrset]
add_files [list {rc5dup.ucf}] -fileset [get_property constrset [current_run]]
link_design
read_xdl -file "C:/Users/mos28/Documents/xilinx proj/hardsec/lab7_leak/rc5dup.ncd"
if {[catch {read_twx -name results_1 -file "C:/Users/mos28/Documents/xilinx proj/hardsec/lab7_leak/rc5dup.twx"} eInfo]} {
   puts "WARNING: there was a problem importing \"C:/Users/mos28/Documents/xilinx proj/hardsec/lab7_leak/rc5dup.twx\": $eInfo"
}
