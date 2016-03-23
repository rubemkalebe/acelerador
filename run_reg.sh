#!/bin/bash

ghdl -i src/reg.vhd
ghdl -i testbenches/reg_tb.vhd
ghdl -m reg_tb
./reg_tb --stop-time=1us --wave=waves/reg1.ghw
gtkwave waves/reg1.ghw
