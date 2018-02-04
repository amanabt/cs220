
# PlanAhead Launch Script for Pre-Synthesis Floorplanning, created by Project Navigator

create_project -name lab_3_2 -dir "/home/ubermensch/Academics/sems/sem8/cs220/cs220/codes/lab_3_2/planAhead_run_1" -part xc3s500efg320-4
set_param project.pinAheadLayout yes
set srcset [get_property srcset [current_run -impl]]
set_property target_constrs_file "ripple_LED.ucf" [current_fileset -constrset]
set hdlfile [add_files [list {ripple_LED.v}]]
set_property file_type Verilog $hdlfile
set_property library work $hdlfile
set_property top ripple_LED $srcset
add_files [list {ripple_LED.ucf}] -fileset [get_property constrset [current_run]]
open_rtl_design -part xc3s500efg320-4
