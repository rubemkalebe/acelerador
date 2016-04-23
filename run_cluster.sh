#!/bin/bash

ghdl -a src/register_file.vhd
ghdl -a src/basic_unit.vhd
ghdl -a src/load_input_signals.vhd
ghdl -a src/cluster.vhd
ghdl -a testbenches/cluster_tb.vhd
ghdl -e cluster_tb
ghdl -r cluster_tb --vcd=waves/cluster1.vcd
gtkwave waves/cluster1.vcd
