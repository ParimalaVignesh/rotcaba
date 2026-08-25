set SynModuleInfo {
  {SRCNAME ecg_denoiser_Pipeline_READ_INPUT MODELNAME ecg_denoiser_Pipeline_READ_INPUT RTLNAME ecg_denoiser_ecg_denoiser_Pipeline_READ_INPUT
    SUBMODULES {
      {MODELNAME ecg_denoiser_flow_control_loop_pipe_sequential_init RTLNAME ecg_denoiser_flow_control_loop_pipe_sequential_init BINDTYPE interface TYPE internal_upc_flow_control INSTNAME ecg_denoiser_flow_control_loop_pipe_sequential_init_U}
    }
  }
  {SRCNAME ecg_denoiser_Pipeline_ZNORM_MEAN MODELNAME ecg_denoiser_Pipeline_ZNORM_MEAN RTLNAME ecg_denoiser_ecg_denoiser_Pipeline_ZNORM_MEAN
    SUBMODULES {
      {MODELNAME ecg_denoiser_mux_21_32_1_1 RTLNAME ecg_denoiser_mux_21_32_1_1 BINDTYPE op TYPE mux IMPL auto LATENCY 0 ALLOW_PRAGMA 1}
    }
  }
  {SRCNAME ecg_denoiser_Pipeline_ZNORM_VAR MODELNAME ecg_denoiser_Pipeline_ZNORM_VAR RTLNAME ecg_denoiser_ecg_denoiser_Pipeline_ZNORM_VAR
    SUBMODULES {
      {MODELNAME ecg_denoiser_mul_40s_40s_72_1_1 RTLNAME ecg_denoiser_mul_40s_40s_72_1_1 BINDTYPE op TYPE mul IMPL auto LATENCY 0 ALLOW_PRAGMA 1}
    }
  }
  {SRCNAME ecg_denoiser_Pipeline_ZNORM_APPLY MODELNAME ecg_denoiser_Pipeline_ZNORM_APPLY RTLNAME ecg_denoiser_ecg_denoiser_Pipeline_ZNORM_APPLY
    SUBMODULES {
      {MODELNAME ecg_denoiser_mul_33s_32s_48_1_1 RTLNAME ecg_denoiser_mul_33s_32s_48_1_1 BINDTYPE op TYPE mul IMPL auto LATENCY 0 ALLOW_PRAGMA 1}
    }
  }
  {SRCNAME conv_layer01234_fused_Pipeline_L0_K MODELNAME conv_layer01234_fused_Pipeline_L0_K RTLNAME ecg_denoiser_conv_layer01234_fused_Pipeline_L0_K
    SUBMODULES {
      {MODELNAME ecg_denoiser_mul_24s_40s_63_1_1 RTLNAME ecg_denoiser_mul_24s_40s_63_1_1 BINDTYPE op TYPE mul IMPL auto LATENCY 0 ALLOW_PRAGMA 1}
      {MODELNAME ecg_denoiser_conv_layer01234_fused_Pipeline_L0_K_denoiser_w_L0_W_V_ROM_NP_LUTRAM_1R RTLNAME ecg_denoiser_conv_layer01234_fused_Pipeline_L0_K_denoiser_w_L0_W_V_ROM_NP_LUTRAM_1R BINDTYPE storage TYPE rom_np IMPL lutram LATENCY 2 ALLOW_PRAGMA 1}
    }
  }
  {SRCNAME conv_layer01234_fused_Pipeline_L1_IC_L1_K MODELNAME conv_layer01234_fused_Pipeline_L1_IC_L1_K RTLNAME ecg_denoiser_conv_layer01234_fused_Pipeline_L1_IC_L1_K
    SUBMODULES {
      {MODELNAME ecg_denoiser_mux_73_32_1_1 RTLNAME ecg_denoiser_mux_73_32_1_1 BINDTYPE op TYPE mux IMPL auto LATENCY 0 ALLOW_PRAGMA 1}
      {MODELNAME ecg_denoiser_mul_23s_40s_62_1_1 RTLNAME ecg_denoiser_mul_23s_40s_62_1_1 BINDTYPE op TYPE mul IMPL auto LATENCY 0 ALLOW_PRAGMA 1}
      {MODELNAME ecg_denoiser_conv_layer01234_fused_Pipeline_L1_IC_L1_K_denoiser_w_L1_W_V_ROM_NP_BRAM_1R RTLNAME ecg_denoiser_conv_layer01234_fused_Pipeline_L1_IC_L1_K_denoiser_w_L1_W_V_ROM_NP_BRAM_1R BINDTYPE storage TYPE rom_np IMPL bram LATENCY 2 ALLOW_PRAGMA 1}
    }
  }
  {SRCNAME conv_layer01234_fused_Pipeline_L2_IC_L2_K MODELNAME conv_layer01234_fused_Pipeline_L2_IC_L2_K RTLNAME ecg_denoiser_conv_layer01234_fused_Pipeline_L2_IC_L2_K
    SUBMODULES {
      {MODELNAME ecg_denoiser_mux_53_32_1_1 RTLNAME ecg_denoiser_mux_53_32_1_1 BINDTYPE op TYPE mux IMPL auto LATENCY 0 ALLOW_PRAGMA 1}
      {MODELNAME ecg_denoiser_conv_layer01234_fused_Pipeline_L2_IC_L2_K_denoiser_w_L2_W_V_ROM_NP_LUTRAM_1R RTLNAME ecg_denoiser_conv_layer01234_fused_Pipeline_L2_IC_L2_K_denoiser_w_L2_W_V_ROM_NP_LUTRAM_1R BINDTYPE storage TYPE rom_np IMPL lutram LATENCY 2 ALLOW_PRAGMA 1}
    }
  }
  {SRCNAME conv_layer01234_fused_Pipeline_L3_IC_L3_K MODELNAME conv_layer01234_fused_Pipeline_L3_IC_L3_K RTLNAME ecg_denoiser_conv_layer01234_fused_Pipeline_L3_IC_L3_K
    SUBMODULES {
      {MODELNAME ecg_denoiser_mux_21_31_1_1 RTLNAME ecg_denoiser_mux_21_31_1_1 BINDTYPE op TYPE mux IMPL auto LATENCY 0 ALLOW_PRAGMA 1}
      {MODELNAME ecg_denoiser_mux_32_31_1_1 RTLNAME ecg_denoiser_mux_32_31_1_1 BINDTYPE op TYPE mux IMPL auto LATENCY 0 ALLOW_PRAGMA 1}
      {MODELNAME ecg_denoiser_mul_23s_39ns_62_1_1 RTLNAME ecg_denoiser_mul_23s_39ns_62_1_1 BINDTYPE op TYPE mul IMPL auto LATENCY 0 ALLOW_PRAGMA 1}
      {MODELNAME ecg_denoiser_conv_layer01234_fused_Pipeline_L3_IC_L3_K_denoiser_w_L3_W_V_ROM_NP_LUTRAM_1R RTLNAME ecg_denoiser_conv_layer01234_fused_Pipeline_L3_IC_L3_K_denoiser_w_L3_W_V_ROM_NP_LUTRAM_1R BINDTYPE storage TYPE rom_np IMPL lutram LATENCY 2 ALLOW_PRAGMA 1}
    }
  }
  {SRCNAME conv_layer01234_fused_Pipeline_L4_IC_L4_K MODELNAME conv_layer01234_fused_Pipeline_L4_IC_L4_K RTLNAME ecg_denoiser_conv_layer01234_fused_Pipeline_L4_IC_L4_K
    SUBMODULES {
      {MODELNAME ecg_denoiser_conv_layer01234_fused_Pipeline_L4_IC_L4_K_denoiser_w_L4_W_V_ROM_NP_LUTRAM_1R RTLNAME ecg_denoiser_conv_layer01234_fused_Pipeline_L4_IC_L4_K_denoiser_w_L4_W_V_ROM_NP_LUTRAM_1R BINDTYPE storage TYPE rom_np IMPL lutram LATENCY 2 ALLOW_PRAGMA 1}
    }
  }
  {SRCNAME conv_layer01234_fused MODELNAME conv_layer01234_fused RTLNAME ecg_denoiser_conv_layer01234_fused
    SUBMODULES {
      {MODELNAME ecg_denoiser_conv_layer01234_fused_denoiser_w_L0_b_V_ROM_AUTO_1R RTLNAME ecg_denoiser_conv_layer01234_fused_denoiser_w_L0_b_V_ROM_AUTO_1R BINDTYPE storage TYPE rom IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME ecg_denoiser_conv_layer01234_fused_denoiser_w_L1_b_V_ROM_AUTO_1R RTLNAME ecg_denoiser_conv_layer01234_fused_denoiser_w_L1_b_V_ROM_AUTO_1R BINDTYPE storage TYPE rom IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME ecg_denoiser_conv_layer01234_fused_denoiser_w_L2_b_V_ROM_AUTO_1R RTLNAME ecg_denoiser_conv_layer01234_fused_denoiser_w_L2_b_V_ROM_AUTO_1R BINDTYPE storage TYPE rom IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME ecg_denoiser_conv_layer01234_fused_denoiser_w_L3_b_V_ROM_AUTO_1R RTLNAME ecg_denoiser_conv_layer01234_fused_denoiser_w_L3_b_V_ROM_AUTO_1R BINDTYPE storage TYPE rom IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME ecg_denoiser_conv_layer01234_fused_win01_V_RAM_AUTO_1R1W RTLNAME ecg_denoiser_conv_layer01234_fused_win01_V_RAM_AUTO_1R1W BINDTYPE storage TYPE ram IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME ecg_denoiser_conv_layer01234_fused_win01_V_1_RAM_AUTO_1R1W RTLNAME ecg_denoiser_conv_layer01234_fused_win01_V_1_RAM_AUTO_1R1W BINDTYPE storage TYPE ram IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME ecg_denoiser_conv_layer01234_fused_win12_V_RAM_AUTO_1R1W RTLNAME ecg_denoiser_conv_layer01234_fused_win12_V_RAM_AUTO_1R1W BINDTYPE storage TYPE ram IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME ecg_denoiser_conv_layer01234_fused_win12_V_1_RAM_AUTO_1R1W RTLNAME ecg_denoiser_conv_layer01234_fused_win12_V_1_RAM_AUTO_1R1W BINDTYPE storage TYPE ram IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME ecg_denoiser_conv_layer01234_fused_win23_V_RAM_AUTO_1R1W RTLNAME ecg_denoiser_conv_layer01234_fused_win23_V_RAM_AUTO_1R1W BINDTYPE storage TYPE ram IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME ecg_denoiser_conv_layer01234_fused_win34_V_RAM_AUTO_1R1W RTLNAME ecg_denoiser_conv_layer01234_fused_win34_V_RAM_AUTO_1R1W BINDTYPE storage TYPE ram IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME ecg_denoiser_conv_layer01234_fused_l0_out_V_RAM_AUTO_1R1W RTLNAME ecg_denoiser_conv_layer01234_fused_l0_out_V_RAM_AUTO_1R1W BINDTYPE storage TYPE ram IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME ecg_denoiser_conv_layer01234_fused_l1_out_V_RAM_AUTO_1R1W RTLNAME ecg_denoiser_conv_layer01234_fused_l1_out_V_RAM_AUTO_1R1W BINDTYPE storage TYPE ram IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME ecg_denoiser_conv_layer01234_fused_l3_out_V_RAM_AUTO_1R1W RTLNAME ecg_denoiser_conv_layer01234_fused_l3_out_V_RAM_AUTO_1R1W BINDTYPE storage TYPE ram IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
    }
  }
  {SRCNAME ecg_denoiser_Pipeline_WRITE_OUTPUT MODELNAME ecg_denoiser_Pipeline_WRITE_OUTPUT RTLNAME ecg_denoiser_ecg_denoiser_Pipeline_WRITE_OUTPUT}
  {SRCNAME ecg_denoiser MODELNAME ecg_denoiser RTLNAME ecg_denoiser IS_TOP 1
    SUBMODULES {
      {MODELNAME ecg_denoiser_fpext_32ns_64_2_no_dsp_1 RTLNAME ecg_denoiser_fpext_32ns_64_2_no_dsp_1 BINDTYPE op TYPE fpext IMPL auto LATENCY 1 ALLOW_PRAGMA 1}
      {MODELNAME ecg_denoiser_fcmp_32ns_32ns_1_2_no_dsp_1 RTLNAME ecg_denoiser_fcmp_32ns_32ns_1_2_no_dsp_1 BINDTYPE op TYPE fcmp IMPL auto LATENCY 1 ALLOW_PRAGMA 1}
      {MODELNAME ecg_denoiser_fsqrt_32ns_32ns_32_10_no_dsp_1 RTLNAME ecg_denoiser_fsqrt_32ns_32ns_32_10_no_dsp_1 BINDTYPE op TYPE fsqrt IMPL fabric LATENCY 9 ALLOW_PRAGMA 1}
      {MODELNAME ecg_denoiser_mul_48s_9ns_56_1_1 RTLNAME ecg_denoiser_mul_48s_9ns_56_1_1 BINDTYPE op TYPE mul IMPL auto LATENCY 0 ALLOW_PRAGMA 1}
      {MODELNAME ecg_denoiser_sdiv_34ns_32s_32_38_seq_1 RTLNAME ecg_denoiser_sdiv_34ns_32s_32_38_seq_1 BINDTYPE op TYPE sdiv IMPL auto_seq LATENCY 37 ALLOW_PRAGMA 1}
      {MODELNAME ecg_denoiser_input_buf_V_RAM_1P_LUTRAM_1R1W RTLNAME ecg_denoiser_input_buf_V_RAM_1P_LUTRAM_1R1W BINDTYPE storage TYPE ram_1p IMPL lutram LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME ecg_denoiser_buf41210_RAM_AUTO_1R1W RTLNAME ecg_denoiser_buf41210_RAM_AUTO_1R1W BINDTYPE storage TYPE ram IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME ecg_denoiser_regslice_both RTLNAME ecg_denoiser_regslice_both BINDTYPE interface TYPE interface_regslice INSTNAME ecg_denoiser_regslice_both_U}
    }
  }
}
