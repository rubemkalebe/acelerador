#!/bin/bash

ghdl -i src/alu.vhd
ghdl -i testbenches/alu_tb.vhd
ghdl -m alu_tb
./alu_tb --stop-time=1us --wave=waves/alu1.ghw
gtkwave waves/alu1.ghw
