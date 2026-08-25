set SynModuleInfo {
  {SRCNAME ecg_classifier_Pipeline_READ_INPUT MODELNAME ecg_classifier_Pipeline_READ_INPUT RTLNAME ecg_classifier_ecg_classifier_Pipeline_READ_INPUT
    SUBMODULES {
      {MODELNAME ecg_classifier_flow_control_loop_pipe_sequential_init RTLNAME ecg_classifier_flow_control_loop_pipe_sequential_init BINDTYPE interface TYPE internal_upc_flow_control INSTNAME ecg_classifier_flow_control_loop_pipe_sequential_init_U}
    }
  }
  {SRCNAME ecg_classifier_Pipeline_ZNORM_MEAN MODELNAME ecg_classifier_Pipeline_ZNORM_MEAN RTLNAME ecg_classifier_ecg_classifier_Pipeline_ZNORM_MEAN
    SUBMODULES {
      {MODELNAME ecg_classifier_mux_21_32_1_1 RTLNAME ecg_classifier_mux_21_32_1_1 BINDTYPE op TYPE mux IMPL auto LATENCY 0 ALLOW_PRAGMA 1}
    }
  }
  {SRCNAME ecg_classifier_Pipeline_ZNORM_VAR MODELNAME ecg_classifier_Pipeline_ZNORM_VAR RTLNAME ecg_classifier_ecg_classifier_Pipeline_ZNORM_VAR
    SUBMODULES {
      {MODELNAME ecg_classifier_mul_40s_40s_72_1_1 RTLNAME ecg_classifier_mul_40s_40s_72_1_1 BINDTYPE op TYPE mul IMPL auto LATENCY 0 ALLOW_PRAGMA 1}
    }
  }
  {SRCNAME ecg_classifier_Pipeline_ZNORM_APPLY MODELNAME ecg_classifier_Pipeline_ZNORM_APPLY RTLNAME ecg_classifier_ecg_classifier_Pipeline_ZNORM_APPLY
    SUBMODULES {
      {MODELNAME ecg_classifier_mul_33s_32s_48_1_1 RTLNAME ecg_classifier_mul_33s_32s_48_1_1 BINDTYPE op TYPE mul IMPL auto LATENCY 0 ALLOW_PRAGMA 1}
    }
  }
  {SRCNAME ecg_classifier_Pipeline_L0_K_FILL MODELNAME ecg_classifier_Pipeline_L0_K_FILL RTLNAME ecg_classifier_ecg_classifier_Pipeline_L0_K_FILL
    SUBMODULES {
      {MODELNAME ecg_classifier_mul_27s_40s_66_1_1 RTLNAME ecg_classifier_mul_27s_40s_66_1_1 BINDTYPE op TYPE mul IMPL auto LATENCY 0 ALLOW_PRAGMA 1}
      {MODELNAME ecg_classifier_ecg_classifier_Pipeline_L0_K_FILL_L0_W_V_0_ROM_AUTO_1R RTLNAME ecg_classifier_ecg_classifier_Pipeline_L0_K_FILL_L0_W_V_0_ROM_AUTO_1R BINDTYPE storage TYPE rom IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
    }
  }
  {SRCNAME ecg_classifier_Pipeline_L1_IC_L1_K MODELNAME ecg_classifier_Pipeline_L1_IC_L1_K RTLNAME ecg_classifier_ecg_classifier_Pipeline_L1_IC_L1_K
    SUBMODULES {
      {MODELNAME ecg_classifier_mux_73_32_1_1 RTLNAME ecg_classifier_mux_73_32_1_1 BINDTYPE op TYPE mux IMPL auto LATENCY 0 ALLOW_PRAGMA 1}
      {MODELNAME ecg_classifier_mul_23s_40s_62_1_1 RTLNAME ecg_classifier_mul_23s_40s_62_1_1 BINDTYPE op TYPE mul IMPL auto LATENCY 0 ALLOW_PRAGMA 1}
      {MODELNAME ecg_classifier_ecg_classifier_Pipeline_L1_IC_L1_K_clf_w_L1_W_V_ROM_AUTO_1R RTLNAME ecg_classifier_ecg_classifier_Pipeline_L1_IC_L1_K_clf_w_L1_W_V_ROM_AUTO_1R BINDTYPE storage TYPE rom IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
    }
  }
  {SRCNAME ecg_classifier_Pipeline_L2_IC_L2_K MODELNAME ecg_classifier_Pipeline_L2_IC_L2_K RTLNAME ecg_classifier_ecg_classifier_Pipeline_L2_IC_L2_K
    SUBMODULES {
      {MODELNAME ecg_classifier_mux_21_31_1_1 RTLNAME ecg_classifier_mux_21_31_1_1 BINDTYPE op TYPE mux IMPL auto LATENCY 0 ALLOW_PRAGMA 1}
      {MODELNAME ecg_classifier_mux_53_31_1_1 RTLNAME ecg_classifier_mux_53_31_1_1 BINDTYPE op TYPE mux IMPL auto LATENCY 0 ALLOW_PRAGMA 1}
      {MODELNAME ecg_classifier_mul_23s_39ns_62_1_1 RTLNAME ecg_classifier_mul_23s_39ns_62_1_1 BINDTYPE op TYPE mul IMPL auto LATENCY 0 ALLOW_PRAGMA 1}
      {MODELNAME ecg_classifier_ecg_classifier_Pipeline_L2_IC_L2_K_clf_w_L2_W_V_ROM_AUTO_1R RTLNAME ecg_classifier_ecg_classifier_Pipeline_L2_IC_L2_K_clf_w_L2_W_V_ROM_AUTO_1R BINDTYPE storage TYPE rom IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
    }
  }
  {SRCNAME ecg_classifier_Pipeline_GAP_INIT MODELNAME ecg_classifier_Pipeline_GAP_INIT RTLNAME ecg_classifier_ecg_classifier_Pipeline_GAP_INIT}
  {SRCNAME ecg_classifier_Pipeline_L3_IC_L3_K MODELNAME ecg_classifier_Pipeline_L3_IC_L3_K RTLNAME ecg_classifier_ecg_classifier_Pipeline_L3_IC_L3_K
    SUBMODULES {
      {MODELNAME ecg_classifier_urem_32s_4ns_3_36_1 RTLNAME ecg_classifier_urem_32s_4ns_3_36_1 BINDTYPE op TYPE urem IMPL auto LATENCY 35 ALLOW_PRAGMA 1}
      {MODELNAME ecg_classifier_mux_21_15_1_1 RTLNAME ecg_classifier_mux_21_15_1_1 BINDTYPE op TYPE mux IMPL auto LATENCY 0 ALLOW_PRAGMA 1}
      {MODELNAME ecg_classifier_mux_53_15_1_1 RTLNAME ecg_classifier_mux_53_15_1_1 BINDTYPE op TYPE mux IMPL auto LATENCY 0 ALLOW_PRAGMA 1}
      {MODELNAME ecg_classifier_mul_22s_31ns_53_1_1 RTLNAME ecg_classifier_mul_22s_31ns_53_1_1 BINDTYPE op TYPE mul IMPL auto LATENCY 0 ALLOW_PRAGMA 1}
      {MODELNAME ecg_classifier_ecg_classifier_Pipeline_L3_IC_L3_K_clf_w_L3_W_V_ROM_AUTO_1R RTLNAME ecg_classifier_ecg_classifier_Pipeline_L3_IC_L3_K_clf_w_L3_W_V_ROM_AUTO_1R BINDTYPE storage TYPE rom IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
    }
  }
  {SRCNAME ecg_classifier_Pipeline_L4_IC_L4_K MODELNAME ecg_classifier_Pipeline_L4_IC_L4_K RTLNAME ecg_classifier_ecg_classifier_Pipeline_L4_IC_L4_K
    SUBMODULES {
      {MODELNAME ecg_classifier_mux_32_31_1_1 RTLNAME ecg_classifier_mux_32_31_1_1 BINDTYPE op TYPE mux IMPL auto LATENCY 0 ALLOW_PRAGMA 1}
      {MODELNAME ecg_classifier_mul_22s_39ns_61_1_1 RTLNAME ecg_classifier_mul_22s_39ns_61_1_1 BINDTYPE op TYPE mul IMPL auto LATENCY 0 ALLOW_PRAGMA 1}
      {MODELNAME ecg_classifier_ecg_classifier_Pipeline_L4_IC_L4_K_clf_w_L4_W_V_ROM_AUTO_1R RTLNAME ecg_classifier_ecg_classifier_Pipeline_L4_IC_L4_K_clf_w_L4_W_V_ROM_AUTO_1R BINDTYPE storage TYPE rom IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
    }
  }
  {SRCNAME ecg_classifier_Pipeline_GAP_NORM MODELNAME ecg_classifier_Pipeline_GAP_NORM RTLNAME ecg_classifier_ecg_classifier_Pipeline_GAP_NORM
    SUBMODULES {
      {MODELNAME ecg_classifier_mul_32s_12ns_44_1_1 RTLNAME ecg_classifier_mul_32s_12ns_44_1_1 BINDTYPE op TYPE mul IMPL auto LATENCY 0 ALLOW_PRAGMA 1}
    }
  }
  {SRCNAME ecg_classifier_Pipeline_D0_IC MODELNAME ecg_classifier_Pipeline_D0_IC RTLNAME ecg_classifier_ecg_classifier_Pipeline_D0_IC
    SUBMODULES {
      {MODELNAME ecg_classifier_mul_24s_40s_63_1_1 RTLNAME ecg_classifier_mul_24s_40s_63_1_1 BINDTYPE op TYPE mul IMPL auto LATENCY 0 ALLOW_PRAGMA 1}
      {MODELNAME ecg_classifier_ecg_classifier_Pipeline_D0_IC_clf_w_L5_W_V_ROM_AUTO_1R RTLNAME ecg_classifier_ecg_classifier_Pipeline_D0_IC_clf_w_L5_W_V_ROM_AUTO_1R BINDTYPE storage TYPE rom IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
    }
  }
  {SRCNAME ecg_classifier_Pipeline_D1_IC MODELNAME ecg_classifier_Pipeline_D1_IC RTLNAME ecg_classifier_ecg_classifier_Pipeline_D1_IC
    SUBMODULES {
      {MODELNAME ecg_classifier_mul_24s_39ns_63_1_1 RTLNAME ecg_classifier_mul_24s_39ns_63_1_1 BINDTYPE op TYPE mul IMPL auto LATENCY 0 ALLOW_PRAGMA 1}
      {MODELNAME ecg_classifier_ecg_classifier_Pipeline_D1_IC_clf_w_L6_W_V_ROM_AUTO_1R RTLNAME ecg_classifier_ecg_classifier_Pipeline_D1_IC_clf_w_L6_W_V_ROM_AUTO_1R BINDTYPE storage TYPE rom IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
    }
  }
  {SRCNAME ecg_classifier_Pipeline_WRITE_OUTPUT MODELNAME ecg_classifier_Pipeline_WRITE_OUTPUT RTLNAME ecg_classifier_ecg_classifier_Pipeline_WRITE_OUTPUT
    SUBMODULES {
      {MODELNAME ecg_classifier_fdiv_32ns_32ns_32_10_no_dsp_1 RTLNAME ecg_classifier_fdiv_32ns_32ns_32_10_no_dsp_1 BINDTYPE op TYPE fdiv IMPL fabric LATENCY 9 ALLOW_PRAGMA 1}
    }
  }
  {SRCNAME ecg_classifier MODELNAME ecg_classifier RTLNAME ecg_classifier IS_TOP 1
    SUBMODULES {
      {MODELNAME ecg_classifier_fadd_32ns_32ns_32_4_full_dsp_1 RTLNAME ecg_classifier_fadd_32ns_32ns_32_4_full_dsp_1 BINDTYPE op TYPE fadd IMPL fulldsp LATENCY 3 ALLOW_PRAGMA 1}
      {MODELNAME ecg_classifier_fpext_32ns_64_2_no_dsp_1 RTLNAME ecg_classifier_fpext_32ns_64_2_no_dsp_1 BINDTYPE op TYPE fpext IMPL auto LATENCY 1 ALLOW_PRAGMA 1}
      {MODELNAME ecg_classifier_fcmp_32ns_32ns_1_2_no_dsp_1 RTLNAME ecg_classifier_fcmp_32ns_32ns_1_2_no_dsp_1 BINDTYPE op TYPE fcmp IMPL auto LATENCY 1 ALLOW_PRAGMA 1}
      {MODELNAME ecg_classifier_fsqrt_32ns_32ns_32_10_no_dsp_1 RTLNAME ecg_classifier_fsqrt_32ns_32ns_32_10_no_dsp_1 BINDTYPE op TYPE fsqrt IMPL fabric LATENCY 9 ALLOW_PRAGMA 1}
      {MODELNAME ecg_classifier_fexp_32ns_32ns_32_8_full_dsp_1 RTLNAME ecg_classifier_fexp_32ns_32ns_32_8_full_dsp_1 BINDTYPE op TYPE fexp IMPL fulldsp LATENCY 7 ALLOW_PRAGMA 1}
      {MODELNAME ecg_classifier_mul_48s_10ns_56_1_1 RTLNAME ecg_classifier_mul_48s_10ns_56_1_1 BINDTYPE op TYPE mul IMPL auto LATENCY 0 ALLOW_PRAGMA 1}
      {MODELNAME ecg_classifier_sdiv_34ns_32s_32_38_seq_1 RTLNAME ecg_classifier_sdiv_34ns_32s_32_38_seq_1 BINDTYPE op TYPE sdiv IMPL auto_seq LATENCY 37 ALLOW_PRAGMA 1}
      {MODELNAME ecg_classifier_clf_w_L0_b_V_ROM_AUTO_1R RTLNAME ecg_classifier_clf_w_L0_b_V_ROM_AUTO_1R BINDTYPE storage TYPE rom IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME ecg_classifier_clf_w_L1_b_V_ROM_AUTO_1R RTLNAME ecg_classifier_clf_w_L1_b_V_ROM_AUTO_1R BINDTYPE storage TYPE rom IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME ecg_classifier_clf_w_L2_b_V_ROM_AUTO_1R RTLNAME ecg_classifier_clf_w_L2_b_V_ROM_AUTO_1R BINDTYPE storage TYPE rom IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME ecg_classifier_clf_w_L3_b_V_ROM_AUTO_1R RTLNAME ecg_classifier_clf_w_L3_b_V_ROM_AUTO_1R BINDTYPE storage TYPE rom IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME ecg_classifier_clf_w_L4_b_V_ROM_AUTO_1R RTLNAME ecg_classifier_clf_w_L4_b_V_ROM_AUTO_1R BINDTYPE storage TYPE rom IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME ecg_classifier_clf_w_L5_b_V_ROM_AUTO_1R RTLNAME ecg_classifier_clf_w_L5_b_V_ROM_AUTO_1R BINDTYPE storage TYPE rom IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME ecg_classifier_clf_w_L6_b_V_ROM_AUTO_1R RTLNAME ecg_classifier_clf_w_L6_b_V_ROM_AUTO_1R BINDTYPE storage TYPE rom IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME ecg_classifier_input_buf_V_RAM_1P_LUTRAM_1R1W RTLNAME ecg_classifier_input_buf_V_RAM_1P_LUTRAM_1R1W BINDTYPE storage TYPE ram_1p IMPL lutram LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME ecg_classifier_buf2_circ_V_RAM_AUTO_1R1W RTLNAME ecg_classifier_buf2_circ_V_RAM_AUTO_1R1W BINDTYPE storage TYPE ram IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME ecg_classifier_gap_buf_V_RAM_1P_LUTRAM_1R1W RTLNAME ecg_classifier_gap_buf_V_RAM_1P_LUTRAM_1R1W BINDTYPE storage TYPE ram_1p IMPL lutram LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME ecg_classifier_dense0_buf_V_RAM_1P_LUTRAM_1R1W RTLNAME ecg_classifier_dense0_buf_V_RAM_1P_LUTRAM_1R1W BINDTYPE storage TYPE ram_1p IMPL lutram LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME ecg_classifier_win0_V_RAM_AUTO_1R1W RTLNAME ecg_classifier_win0_V_RAM_AUTO_1R1W BINDTYPE storage TYPE ram IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME ecg_classifier_win0_V_1_RAM_AUTO_1R1W RTLNAME ecg_classifier_win0_V_1_RAM_AUTO_1R1W BINDTYPE storage TYPE ram IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME ecg_classifier_win0_V_6_RAM_AUTO_1R1W RTLNAME ecg_classifier_win0_V_6_RAM_AUTO_1R1W BINDTYPE storage TYPE ram IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME ecg_classifier_win01_V_RAM_AUTO_1R1W RTLNAME ecg_classifier_win01_V_RAM_AUTO_1R1W BINDTYPE storage TYPE ram IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME ecg_classifier_win01_V_2_RAM_AUTO_1R1W RTLNAME ecg_classifier_win01_V_2_RAM_AUTO_1R1W BINDTYPE storage TYPE ram IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME ecg_classifier_l1_out_V_RAM_AUTO_1R1W RTLNAME ecg_classifier_l1_out_V_RAM_AUTO_1R1W BINDTYPE storage TYPE ram IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME ecg_classifier_l3_out_V_RAM_AUTO_1R1W RTLNAME ecg_classifier_l3_out_V_RAM_AUTO_1R1W BINDTYPE storage TYPE ram IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME ecg_classifier_regslice_both RTLNAME ecg_classifier_regslice_both BINDTYPE interface TYPE interface_regslice INSTNAME ecg_classifier_regslice_both_U}
    }
  }
}
