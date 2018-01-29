
# PlanAhead Launch Script for Pre-Synthesis Floorplanning, created by Project Navigator

create_project -name lab2_2 -dir "/users/misc/mukundm/Desktop/Aman/cs220/codes/lab2_2/planAhead_run_1" -part xc3s500efg320-4
set_param project.pinAheadLayout yes
set srcset [get_property srcset [current_run -impl]]
set_property target_constrs_file "eight_bit_comp.ucf" [current_fileset -constrset]
set hdlfile [add_files [list {one_bit_comp.v}]]
set_property file_type Verilog $hdlfile
set_property library work $hdlfile
set hdlfile [add_files [list {eight_bit_comp.v}]]
set_property file_type Verilog $hdlfile
set_property library work $hdlfile
set_property top eight_bit_comp $srcset
add_files [list {eight_bit_comp.ucf}] -fileset [get_property constrset [current_run]]
open_rtl_design -part xc3s500efg320-4
