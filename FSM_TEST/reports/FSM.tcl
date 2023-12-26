set_attribute init_hdl_search_path ../rtl/
set_attribute init_lib_search_path ../lib/
set_attr library slow_lib_45nm.lib
read_hdl fsm.v
elaborate 
read_sdc ../cons/constraint.sdc
synthesize -to_mapped -effort high
report power > p2.rpt
report timing > t2.rpt
report area > a2.rpt
write_hdl > net2_slowlib.v

