# read design

read_verilog iiitb_wm.v

# generic synthesis
synth -top iiitb_wm

# mapping to mycells.lib
dfflibmap -liberty /home/archan/iiitb_wm/lib/sky130_fd_sc_hd__tt_025C_1v80.lib
abc -liberty /home/archan/iiitb_wm/lib/sky130_fd_sc_hd__tt_025C_1v80.lib
clean
flatten
# write synthesized design
write_verilog -noattr synth_iiitb_wm.v
