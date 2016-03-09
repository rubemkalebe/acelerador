#!/bin/bash

ghdl -i src/ula.vhd
ghdl -i testbenches/ula_tb.vhd
ghdl -m ula_tb
./ula_tb --stop-time=1us --wave=waves/ula1.ghw
gtkwave waves/ula1.ghw
