gui_start
analyze -library WORK -format vhdl {constants.vhd}
analyze -library WORK -format vhdl {alu_types.vhd}
analyze -library WORK -format vhdl {alu.vhd}
elaborate ALU -architecture ARCHBEH -library WORK
compile -exact_map
report_area > ALU_area.txt
report_timing > ALU_timing.txt
