# =============================================================================
# run_hls.tcl  —  Vitis HLS Synthesis Script
# =============================================================================
set PART   "xc7z020clg400-1"
set PERIOD "10"

set ROOT_DIR [file dirname [info script]]
set SRC_DIR  "$ROOT_DIR/src"
set INC_DIR  "$ROOT_DIR/include"
set TB_DIR   "$ROOT_DIR/tb"

# =============================================================================
# Project 1: ECG Denoiser
# =============================================================================
open_project ecg_denoiser_ip
set_top ecg_denoiser

add_files "$SRC_DIR/ecg_denoiser.cpp" -cflags [list -I$INC_DIR]
add_files -tb "$TB_DIR/tb_denoiser.cpp" -cflags [list -I$INC_DIR] -csimflags [list -I$INC_DIR]
add_files C:/ecg_hls/src/weights_denoiser.cpp -cflags [list -IC:/ecg_hls/include]

open_solution "solution1"
set_part $PART
create_clock -period 12 -name default          

set_directive_interface -mode axis       ecg_denoiser in_stream
set_directive_interface -mode axis       ecg_denoiser out_stream
set_directive_interface -mode ap_ctrl_hs ecg_denoiser

csim_design -O
csynth_design

export_design -format ip_catalog -description "ECG Denoiser 1D-CNN 360Hz" \
              -vendor "MyOrg" -library "ECG" -version "1.0" \
              -output ./ip_export/ecg_denoiser_ip

close_project

# =============================================================================
# Project 2: ECG Classifier
# =============================================================================
open_project ecg_classifier_ip
set_top ecg_classifier

add_files "$SRC_DIR/ecg_classifier.cpp"     -cflags [list -I$INC_DIR]
add_files "$SRC_DIR/weights_clf_L0_W.cpp"   -cflags [list -I$INC_DIR]
add_files "$SRC_DIR/weights_clf_L0_b.cpp"   -cflags [list -I$INC_DIR]
add_files "$SRC_DIR/weights_clf_L1_W.cpp"   -cflags [list -I$INC_DIR]
add_files "$SRC_DIR/weights_clf_L1_b.cpp"   -cflags [list -I$INC_DIR]
add_files "$SRC_DIR/weights_clf_L2_W.cpp"   -cflags [list -I$INC_DIR]
add_files "$SRC_DIR/weights_clf_L2_b.cpp"   -cflags [list -I$INC_DIR]
add_files "$SRC_DIR/weights_clf_L3_W.cpp"   -cflags [list -I$INC_DIR]
add_files "$SRC_DIR/weights_clf_L3_b.cpp"   -cflags [list -I$INC_DIR]
add_files "$SRC_DIR/weights_clf_L4_W.cpp"   -cflags [list -I$INC_DIR]
add_files "$SRC_DIR/weights_clf_L4_b.cpp"   -cflags [list -I$INC_DIR]
add_files "$SRC_DIR/weights_clf_L5_W.cpp"   -cflags [list -I$INC_DIR]
add_files "$SRC_DIR/weights_clf_L5_b.cpp"   -cflags [list -I$INC_DIR]
add_files "$SRC_DIR/weights_clf_L6_W.cpp"   -cflags [list -I$INC_DIR]
add_files "$SRC_DIR/weights_clf_L6_b.cpp"   -cflags [list -I$INC_DIR]

add_files -tb "$TB_DIR/tb_classifier.cpp"   -cflags [list -I$INC_DIR] -csimflags [list -I$INC_DIR]

open_solution "solution1"
set_part $PART
create_clock -period 13 -name default          

set_directive_interface -mode axis       ecg_classifier in_stream
set_directive_interface -mode axis       ecg_classifier out_stream
set_directive_interface -mode ap_ctrl_hs ecg_classifier

set_directive_array_partition -dim 2 -type cyclic -factor 4 ecg_classifier buf2
set_directive_array_partition -dim 2 -type cyclic -factor 4 ecg_classifier buf4
set_directive_array_partition -dim 1 -type cyclic -factor 4 ecg_classifier gap_buf
set_directive_array_partition -dim 1 -type cyclic -factor 4 ecg_classifier dense0_buf
set_directive_array_partition -dim 1 -type cyclic -factor 4 ecg_classifier input_buf

set_directive_pipeline -II 1 ecg_classifier/READ_INPUT
set_directive_pipeline -II 1 ecg_classifier/ZNORM_MEAN
set_directive_pipeline -II 1 ecg_classifier/ZNORM_VAR
set_directive_pipeline -II 1 ecg_classifier/ZNORM_APPLY
set_directive_pipeline -II 1 ecg_classifier/GAP_CH
set_directive_pipeline -II 1 ecg_classifier/GAP_CH2
set_directive_pipeline -II 1 ecg_classifier/GAP_NORM
set_directive_pipeline -II 1 ecg_classifier/D0_OC
set_directive_pipeline -II 1 ecg_classifier/D1_OC
set_directive_pipeline -II 1 ecg_classifier/WRITE_OUTPUT

csim_design -O
csynth_design

export_design -format ip_catalog -description "ECG Arrhythmia Classifier 1D-CNN" \
              -vendor "MyOrg" -library "ECG" -version "1.0" \
              -output ./ip_export/ecg_classifier_ip

close_project

puts "\n===== HLS synthesis complete. IP cores in ./ip_export/ ====="