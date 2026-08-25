############################################################
## This file is generated automatically by Vitis HLS.
## Please DO NOT edit it.
## Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
############################################################
open_project ecg_denoiser_ip
set_top ecg_denoiser
add_files src/ecg_denoiser.cpp -cflags "-IC:/ecg_hls/include"
add_files src/weights_denoiser.cpp -cflags "-IC:/ecg_hls/include"
add_files -tb tb/tb_denoiser.cpp -cflags "-IC:/ecg_hls/include -Wno-unknown-pragmas -Wno-unknown-pragmas -Wno-unknown-pragmas -Wno-unknown-pragmas" -csimflags "-Wno-unknown-pragmas"
open_solution "solution1" -flow_target vivado
set_part {xc7z030-sbg485-2}
create_clock -period 13 -name default
config_export -description {ECG Denoiser 1D-CNN} -display_name ecg_denoiser -format ip_catalog -library ECG -output C:/ecg_hls/ecg_denoiser_ip -rtl verilog -vendor MyOrg -version 1.0
source "./ecg_denoiser_ip/solution1/directives.tcl"
csim_design -clean
csynth_design
cosim_design
export_design -rtl verilog -format ip_catalog -output C:/ecg_hls/ecg_denoiser_ip
