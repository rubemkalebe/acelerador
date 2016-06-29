#!/bin/bash

ghdl -a src/reg.vhd
ghdl -a src/alu.vhd
ghdl -a src/multiplier.vhd
ghdl -a src/load_store.vhd
ghdl -a src/basic_unit.vhd
ghdl -a testbenches/basic_unit_tb.vhd
ghdl -e basic_unit_tb
ghdl -r basic_unit_tb --vcd=waves/basic_unit1.vcd
gtkwave waves/basic_unit1.vcd
