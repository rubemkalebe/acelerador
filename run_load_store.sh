#!/bin/bash

ghdl -i src/load_store.vhd
ghdl -i testbenches/load_store_tb.vhd
ghdl -m load_store_tb
#./alu_tb --stop-time=1us --wave=waves/alu1.ghw
#gtkwave waves/alu1.ghw
