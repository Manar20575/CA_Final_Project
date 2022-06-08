vlib work 
vmap work work
vlog -sv *.sv
vsim testbench
add wave -position insertpoint sim:/testbench/*
add wave -position insertpoint sim:/testbench/dut/mips/*
add wave -position insertpoint sim:/testbench/dut/mips/dp/alu/*
add wave -position insertpoint sim:/testbench/dut/imem/*
add wave -position insertpoint sim:/testbench/dut/dmem/*
add wave -position insertpoint sim:/testbench/dut/mips/dp/rf/*
run 2000