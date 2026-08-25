# This script segment is generated automatically by AutoPilot

if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler ecg_denoiser_conv_layer01234_fused_Pipeline_L4_IC_L4_K_denoiser_w_L4_W_V_ROM_NP_LUTRAM_1R BINDTYPE {storage} TYPE {rom_np} IMPL {lutram} LATENCY 2 ALLOW_PRAGMA 1
}


# clear list
if {${::AESL::PGuard_autoexp_gen}} {
    cg_default_interface_gen_dc_begin
    cg_default_interface_gen_bundle_begin
    AESL_LIB_XILADAPTER::native_axis_begin
}

# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 114 \
    name win34_V_2 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename win34_V_2 \
    op interface \
    ports { win34_V_2_address0 { O 4 vector } win34_V_2_ce0 { O 1 bit } win34_V_2_q0 { I 31 vector } win34_V_2_address1 { O 4 vector } win34_V_2_ce1 { O 1 bit } win34_V_2_q1 { I 31 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'win34_V_2'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 115 \
    name win34_V_3 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename win34_V_3 \
    op interface \
    ports { win34_V_3_address0 { O 4 vector } win34_V_3_ce0 { O 1 bit } win34_V_3_q0 { I 31 vector } win34_V_3_address1 { O 4 vector } win34_V_3_ce1 { O 1 bit } win34_V_3_q1 { I 31 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'win34_V_3'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 116 \
    name win34_V_4 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename win34_V_4 \
    op interface \
    ports { win34_V_4_address0 { O 4 vector } win34_V_4_ce0 { O 1 bit } win34_V_4_q0 { I 31 vector } win34_V_4_address1 { O 4 vector } win34_V_4_ce1 { O 1 bit } win34_V_4_q1 { I 31 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'win34_V_4'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 117 \
    name win34_V_5 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename win34_V_5 \
    op interface \
    ports { win34_V_5_address0 { O 4 vector } win34_V_5_ce0 { O 1 bit } win34_V_5_q0 { I 31 vector } win34_V_5_address1 { O 4 vector } win34_V_5_ce1 { O 1 bit } win34_V_5_q1 { I 31 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'win34_V_5'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 118 \
    name win34_V_6 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename win34_V_6 \
    op interface \
    ports { win34_V_6_address0 { O 4 vector } win34_V_6_ce0 { O 1 bit } win34_V_6_q0 { I 31 vector } win34_V_6_address1 { O 4 vector } win34_V_6_ce1 { O 1 bit } win34_V_6_q1 { I 31 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'win34_V_6'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 119 \
    name win34_V_7 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename win34_V_7 \
    op interface \
    ports { win34_V_7_address0 { O 4 vector } win34_V_7_ce0 { O 1 bit } win34_V_7_q0 { I 31 vector } win34_V_7_address1 { O 4 vector } win34_V_7_ce1 { O 1 bit } win34_V_7_q1 { I 31 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'win34_V_7'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 120 \
    name win34_V_8 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename win34_V_8 \
    op interface \
    ports { win34_V_8_address0 { O 4 vector } win34_V_8_ce0 { O 1 bit } win34_V_8_q0 { I 31 vector } win34_V_8_address1 { O 4 vector } win34_V_8_ce1 { O 1 bit } win34_V_8_q1 { I 31 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'win34_V_8'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 121 \
    name win34_V_9 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename win34_V_9 \
    op interface \
    ports { win34_V_9_address0 { O 4 vector } win34_V_9_ce0 { O 1 bit } win34_V_9_q0 { I 31 vector } win34_V_9_address1 { O 4 vector } win34_V_9_ce1 { O 1 bit } win34_V_9_q1 { I 31 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'win34_V_9'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 122 \
    name win34_V_10 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename win34_V_10 \
    op interface \
    ports { win34_V_10_address0 { O 4 vector } win34_V_10_ce0 { O 1 bit } win34_V_10_q0 { I 31 vector } win34_V_10_address1 { O 4 vector } win34_V_10_ce1 { O 1 bit } win34_V_10_q1 { I 31 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'win34_V_10'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 123 \
    name win34_V_11 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename win34_V_11 \
    op interface \
    ports { win34_V_11_address0 { O 4 vector } win34_V_11_ce0 { O 1 bit } win34_V_11_q0 { I 31 vector } win34_V_11_address1 { O 4 vector } win34_V_11_ce1 { O 1 bit } win34_V_11_q1 { I 31 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'win34_V_11'"
}
}


# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 124 \
    name phi_ln818_6_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_phi_ln818_6_out \
    op interface \
    ports { phi_ln818_6_out { O 32 vector } phi_ln818_6_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id -1 \
    name ap_ctrl \
    type ap_ctrl \
    reset_level 1 \
    sync_rst true \
    corename ap_ctrl \
    op interface \
    ports { ap_start { I 1 bit } ap_ready { O 1 bit } ap_done { O 1 bit } ap_idle { O 1 bit } } \
} "
}


# Adapter definition:
set PortName ap_clk
set DataWd 1 
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc cg_default_interface_gen_clock] == "cg_default_interface_gen_clock"} {
eval "cg_default_interface_gen_clock { \
    id -2 \
    name ${PortName} \
    reset_level 1 \
    sync_rst true \
    corename apif_ap_clk \
    data_wd ${DataWd} \
    op interface \
}"
} else {
puts "@W \[IMPL-113\] Cannot find bus interface model in the library. Ignored generation of bus interface for '${PortName}'"
}
}


# Adapter definition:
set PortName ap_rst
set DataWd 1 
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc cg_default_interface_gen_reset] == "cg_default_interface_gen_reset"} {
eval "cg_default_interface_gen_reset { \
    id -3 \
    name ${PortName} \
    reset_level 1 \
    sync_rst true \
    corename apif_ap_rst \
    data_wd ${DataWd} \
    op interface \
}"
} else {
puts "@W \[IMPL-114\] Cannot find bus interface model in the library. Ignored generation of bus interface for '${PortName}'"
}
}



# merge
if {${::AESL::PGuard_autoexp_gen}} {
    cg_default_interface_gen_dc_end
    cg_default_interface_gen_bundle_end
    AESL_LIB_XILADAPTER::native_axis_end
}


# flow_control definition:
set InstName ecg_denoiser_flow_control_loop_pipe_sequential_init_U
set CompName ecg_denoiser_flow_control_loop_pipe_sequential_init
set name flow_control_loop_pipe_sequential_init
if {${::AESL::PGuard_autocg_gen} && ${::AESL::PGuard_autocg_ipmgen}} {
if {[info proc ::AESL_LIB_VIRTEX::xil_gen_UPC_flow_control] == "::AESL_LIB_VIRTEX::xil_gen_UPC_flow_control"} {
eval "::AESL_LIB_VIRTEX::xil_gen_UPC_flow_control { \
    name ${name} \
    prefix ecg_denoiser_ \
}"
} else {
puts "@W \[IMPL-107\] Cannot find ::AESL_LIB_VIRTEX::xil_gen_UPC_flow_control, check your platform lib"
}
}


if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler $CompName BINDTYPE interface TYPE internal_upc_flow_control INSTNAME $InstName
}


