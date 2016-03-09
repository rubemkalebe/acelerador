#!/bin/bash

ghdl -i src/multiplier.vhd
ghdl -i testbenches/multiplier_tb.vhd
ghdl -m multiplier_tb
./multiplier_tb --stop-time=1us --wave=waves/multiplier1.ghw
gtkwave waves/multiplier1.ghw
