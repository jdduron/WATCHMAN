############################################################
## This file is generated automatically by Vivado HLS.
## Please DO NOT edit it.
## Copyright (C) 1986-2018 Xilinx, Inc. All Rights Reserved.
############################################################
open_project prototype_watchman_HLS_designs
set_top example
add_files prototype_watchman_HLS_designs/axi_ex.cpp
add_files -tb prototype_watchman_HLS_designs/axi_testbench.cpp
open_solution "axi_example"
set_part {xc7z010clg400-1} -tool vivado
create_clock -period 10 -name default
#source "./prototype_watchman_HLS_designs/axi_example/directives.tcl"
csim_design -compiler gcc
csynth_design
cosim_design -compiler gcc -rtl vhdl
export_design -rtl vhdl -format ip_catalog
