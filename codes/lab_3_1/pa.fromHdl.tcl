
# PlanAhead Launch Script for Pre-Synthesis Floorplanning, created by Project Navigator

create_project -name lab_3_1 -dir "/users/misc/mukundm/Desktop/Aman/cs220/codes/lab_3_1/planAhead_run_2" -part xc3s500efg320-4
set_param project.pinAheadLayout yes
set srcset [get_property srcset [current_run -impl]]
set_property target_constrs_file "blink.ucf" [current_fileset -constrset]
set hdlfile [add_files [list {blink_LED.v}]]
set_property file_type Verilog $hdlfile
set_property library work $hdlfile
set_property top blink $srcset
add_files [list {blink.ucf}] -fileset [get_property constrset [current_run]]
open_rtl_design -part xc3s500efg320-4
