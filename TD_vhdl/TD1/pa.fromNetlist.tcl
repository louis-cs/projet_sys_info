
# PlanAhead Launch Script for Post-Synthesis pin planning, created by Project Navigator

create_project -name TD1 -dir "/home/mhiri/Documents/git_projects/projet_sys_info/TD_vhdl/TD1/planAhead_run_3" -part xc6slx16csg324-3
set_property design_mode GateLvl [get_property srcset [current_run -impl]]
set_property edif_top_file "/home/mhiri/Documents/git_projects/projet_sys_info/TD_vhdl/TD1/compteur.ngc" [ get_property srcset [ current_run ] ]
add_files -norecurse { {/home/mhiri/Documents/git_projects/projet_sys_info/TD_vhdl/TD1} }
set_param project.pinAheadLayout  yes
set_property target_constrs_file "compteur.ucf" [current_fileset -constrset]
add_files [list {compteur.ucf}] -fileset [get_property constrset [current_run]]
open_netlist_design
