############################################################
## This file is generated automatically by Vitis HLS.
## Please DO NOT edit it.
## Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
############################################################
open_project ecg_classifier_ip
set_top ecg_classifier
add_files src/ecg_classifier.cpp -cflags "-IC:/ecg_hls/include"
add_files src/weights_clf_L0_W.cpp -cflags "-IC:/ecg_hls/include"
add_files src/weights_clf_L0_b.cpp -cflags "-IC:/ecg_hls/include"
add_files src/weights_clf_L1_W.cpp -cflags "-IC:/ecg_hls/include"
add_files src/weights_clf_L1_b.cpp -cflags "-IC:/ecg_hls/include"
add_files src/weights_clf_L2_W.cpp -cflags "-IC:/ecg_hls/include"
add_files src/weights_clf_L2_b.cpp -cflags "-IC:/ecg_hls/include"
add_files src/weights_clf_L3_W.cpp -cflags "-IC:/ecg_hls/include"
add_files src/weights_clf_L3_b.cpp -cflags "-IC:/ecg_hls/include"
add_files src/weights_clf_L4_W.cpp -cflags "-IC:/ecg_hls/include"
add_files src/weights_clf_L4_b.cpp -cflags "-IC:/ecg_hls/include"
add_files src/weights_clf_L5_W.cpp -cflags "-IC:/ecg_hls/include"
add_files src/weights_clf_L5_b.cpp -cflags "-IC:/ecg_hls/include"
add_files src/weights_clf_L6_W.cpp -cflags "-IC:/ecg_hls/include"
add_files src/weights_clf_L6_b.cpp -cflags "-IC:/ecg_hls/include"
add_files -tb tb/tb_classifier.cpp -cflags "-IC:/ecg_hls/include -Wno-unknown-pragmas -Wno-unknown-pragmas -Wno-unknown-pragmas -Wno-unknown-pragmas -Wno-unknown-pragmas -Wno-unknown-pragmas -Wno-unknown-pragmas -Wno-unknown-pragmas" -csimflags "-Wno-unknown-pragmas"
open_solution "solution1" -flow_target vivado
set_part {xc7z030-sbg485-2}
create_clock -period 13 -name default
config_export -description {ECG Classifier 1D-CNN} -display_name ecg_classifier -format ip_catalog -library ECG -output C:/ecg_hls/ecg_classifier_ip -rtl verilog -vendor MyOrg -version 1.0
source "./ecg_classifier_ip/solution1/directives.tcl"
csim_design -clean
csynth_design
cosim_design
export_design -rtl verilog -format ip_catalog -output C:/ecg_hls/ecg_classifier_ip
