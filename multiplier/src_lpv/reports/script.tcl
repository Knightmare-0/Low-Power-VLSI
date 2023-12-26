set_attribute init_hdl_search_path ../rtl/
set_attribute init_lib_search_path ../lib/
set_attr library slow_lib_45nm.lib
read_hdl multiplier.v
elaborate 
read_sdc ../cons/constraint.sdc
synthesize -to_mapped -effort high
report power > power.rpt
report timing > timing.rpt
report area > area.rpt
write_hdl > multiplier_net.v

