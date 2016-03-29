#!/bin/bash

ghdl -i src/register_file.vhd
ghdl -i testbenches/register_file_tb.vhd
ghdl -m register_file_tb
./register_file_tb --stop-time=1us --wave=waves/register_file1.ghw
gtkwave waves/register_file1.ghw
