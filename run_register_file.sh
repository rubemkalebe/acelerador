#!/bin/bash

ghdl -a src/register_file.vhd
ghdl -a testbenches/register_file_tb.vhd
ghdl -e register_file_tb
ghdl -r register_file_tb --vcd=waves/register_file1.vcd
gtkwave waves/register_file1.vcd
