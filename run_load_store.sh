#!/bin/bash

ghdl -a src/load_store.vhd
ghdl -a testbenches/load_store_tb.vhd
ghdl -e load_store_tb
ghdl -r load_store_tb --vcd=waves/load_store1.vcd
gtkwave waves/load_store1.vcd
