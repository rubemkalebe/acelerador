#!/bin/bash

ghdl -a src/reg.vhd
ghdl -a testbenches/reg_tb.vhd
ghdl -e reg_tb
ghdl -r reg_tb --vcd=waves/reg1.vcd
gtkwave waves/reg1.vcd
