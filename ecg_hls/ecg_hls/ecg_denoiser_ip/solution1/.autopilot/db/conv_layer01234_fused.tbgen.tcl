set moduleName conv_layer01234_fused
set isTopModule 0
set isCombinational 0
set isDatapathOnly 0
set isPipelined 0
set pipeline_type none
set FunctionProtocol ap_ctrl_hs
set isOneStateSeq 0
set ProfileFlag 0
set StallSigGenFlag 0
set isEnableWaveformDebug 1
set hasInterrupt 0
set C_modelName {conv_layer01234_fused}
set C_modelType { void 0 }
set C_modelArgList {
	{ in_0 int 32 regular {array 180 { 1 } 1 1 }  }
	{ in_1 int 32 regular {array 180 { 1 } 1 1 }  }
	{ out_r int 32 regular {array 360 { 0 3 } 0 1 }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "in_0", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "in_1", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "out_r", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY"} ]}
# RTL Port declarations: 
set portNum 16
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ in_0_address0 sc_out sc_lv 8 signal 0 } 
	{ in_0_ce0 sc_out sc_logic 1 signal 0 } 
	{ in_0_q0 sc_in sc_lv 32 signal 0 } 
	{ in_1_address0 sc_out sc_lv 8 signal 1 } 
	{ in_1_ce0 sc_out sc_logic 1 signal 1 } 
	{ in_1_q0 sc_in sc_lv 32 signal 1 } 
	{ out_r_address0 sc_out sc_lv 9 signal 2 } 
	{ out_r_ce0 sc_out sc_logic 1 signal 2 } 
	{ out_r_we0 sc_out sc_logic 1 signal 2 } 
	{ out_r_d0 sc_out sc_lv 32 signal 2 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "in_0_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "in_0", "role": "address0" }} , 
 	{ "name": "in_0_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "in_0", "role": "ce0" }} , 
 	{ "name": "in_0_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "in_0", "role": "q0" }} , 
 	{ "name": "in_1_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "in_1", "role": "address0" }} , 
 	{ "name": "in_1_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "in_1", "role": "ce0" }} , 
 	{ "name": "in_1_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "in_1", "role": "q0" }} , 
 	{ "name": "out_r_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "out_r", "role": "address0" }} , 
 	{ "name": "out_r_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "out_r", "role": "ce0" }} , 
 	{ "name": "out_r_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "out_r", "role": "we0" }} , 
 	{ "name": "out_r_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "out_r", "role": "d0" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "3", "4", "5", "6", "7", "8", "9", "10", "11", "12", "13", "14", "15", "16", "17", "18", "19", "20", "21", "22", "23", "24", "25", "26", "27", "28", "29", "30", "31", "32", "33", "34", "35", "40", "46", "52", "64"],
		"CDFG" : "conv_layer01234_fused",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "19753984", "EstimateLatencyMax" : "19753984",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "in_0", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "35", "SubInstance" : "grp_conv_layer01234_fused_Pipeline_L0_K_fu_11063", "Port" : "in_0", "Inst_start_state" : "67", "Inst_end_state" : "68"}]},
			{"Name" : "in_1", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "35", "SubInstance" : "grp_conv_layer01234_fused_Pipeline_L0_K_fu_11063", "Port" : "in_1", "Inst_start_state" : "67", "Inst_end_state" : "68"}]},
			{"Name" : "out_r", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "denoiser_w_L0_b_V", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "denoiser_w_L0_W_V", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "35", "SubInstance" : "grp_conv_layer01234_fused_Pipeline_L0_K_fu_11063", "Port" : "denoiser_w_L0_W_V", "Inst_start_state" : "67", "Inst_end_state" : "68"}]},
			{"Name" : "denoiser_w_L1_b_V", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "denoiser_w_L1_W_V", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "40", "SubInstance" : "grp_conv_layer01234_fused_Pipeline_L1_IC_L1_K_fu_11080", "Port" : "denoiser_w_L1_W_V", "Inst_start_state" : "134", "Inst_end_state" : "135"}]},
			{"Name" : "denoiser_w_L2_b_V", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "denoiser_w_L2_W_V", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "46", "SubInstance" : "grp_conv_layer01234_fused_Pipeline_L2_IC_L2_K_fu_11097", "Port" : "denoiser_w_L2_W_V", "Inst_start_state" : "265", "Inst_end_state" : "266"}]},
			{"Name" : "denoiser_w_L3_b_V", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "denoiser_w_L3_W_V", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "52", "SubInstance" : "grp_conv_layer01234_fused_Pipeline_L3_IC_L3_K_fu_11112", "Port" : "denoiser_w_L3_W_V", "Inst_start_state" : "300", "Inst_end_state" : "301"}]},
			{"Name" : "denoiser_w_L4_W_V", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "64", "SubInstance" : "grp_conv_layer01234_fused_Pipeline_L4_IC_L4_K_fu_11128", "Port" : "denoiser_w_L4_W_V", "Inst_start_state" : "318", "Inst_end_state" : "319"}]}],
		"Loop" : [
			{"Name" : "L0_OC", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "320", "FirstState" : "ap_ST_fsm_state66", "LastState" : ["ap_ST_fsm_state69"], "QuitState" : ["ap_ST_fsm_state66"], "PreState" : ["ap_ST_fsm_state65"], "PostState" : ["ap_ST_fsm_state70"], "OneDepthLoop" : "0", "OneStateBlock": ""}},
			{"Name" : "L1_OC_GROUP", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "320", "FirstState" : "ap_ST_fsm_state133", "LastState" : ["ap_ST_fsm_state136"], "QuitState" : ["ap_ST_fsm_state133"], "PreState" : ["ap_ST_fsm_state132"], "PostState" : ["ap_ST_fsm_state137"], "OneDepthLoop" : "0", "OneStateBlock": ""}},
			{"Name" : "L2_OC_GROUP", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "320", "FirstState" : "ap_ST_fsm_state264", "LastState" : ["ap_ST_fsm_state267"], "QuitState" : ["ap_ST_fsm_state264"], "PreState" : ["ap_ST_fsm_state263"], "PostState" : ["ap_ST_fsm_state268"], "OneDepthLoop" : "0", "OneStateBlock": ""}},
			{"Name" : "L3_OC_GROUP", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "320", "FirstState" : "ap_ST_fsm_state299", "LastState" : ["ap_ST_fsm_state302"], "QuitState" : ["ap_ST_fsm_state299"], "PreState" : ["ap_ST_fsm_state298"], "PostState" : ["ap_ST_fsm_state303"], "OneDepthLoop" : "0", "OneStateBlock": ""}},
			{"Name" : "FUSED_T", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "320", "FirstState" : "ap_ST_fsm_state65", "LastState" : ["ap_ST_fsm_state320"], "QuitState" : ["ap_ST_fsm_state65"], "PreState" : ["ap_ST_fsm_state64"], "PostState" : ["ap_ST_fsm_state1"], "OneDepthLoop" : "0", "OneStateBlock": ""}}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.denoiser_w_L0_b_V_U", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.denoiser_w_L1_b_V_U", "Parent" : "0"},
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.denoiser_w_L2_b_V_U", "Parent" : "0"},
	{"ID" : "4", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.denoiser_w_L3_b_V_U", "Parent" : "0"},
	{"ID" : "5", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.win01_V_U", "Parent" : "0"},
	{"ID" : "6", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.win01_V_1_U", "Parent" : "0"},
	{"ID" : "7", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.win01_V_2_U", "Parent" : "0"},
	{"ID" : "8", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.win01_V_3_U", "Parent" : "0"},
	{"ID" : "9", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.win01_V_4_U", "Parent" : "0"},
	{"ID" : "10", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.win12_V_U", "Parent" : "0"},
	{"ID" : "11", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.win12_V_1_U", "Parent" : "0"},
	{"ID" : "12", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.win12_V_2_U", "Parent" : "0"},
	{"ID" : "13", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.win23_V_U", "Parent" : "0"},
	{"ID" : "14", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.win23_V_1_U", "Parent" : "0"},
	{"ID" : "15", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.win23_V_2_U", "Parent" : "0"},
	{"ID" : "16", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.win23_V_3_U", "Parent" : "0"},
	{"ID" : "17", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.win34_V_U", "Parent" : "0"},
	{"ID" : "18", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.win34_V_1_U", "Parent" : "0"},
	{"ID" : "19", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.win34_V_2_U", "Parent" : "0"},
	{"ID" : "20", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.win34_V_3_U", "Parent" : "0"},
	{"ID" : "21", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.win34_V_4_U", "Parent" : "0"},
	{"ID" : "22", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.win34_V_5_U", "Parent" : "0"},
	{"ID" : "23", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.win34_V_6_U", "Parent" : "0"},
	{"ID" : "24", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.win34_V_7_U", "Parent" : "0"},
	{"ID" : "25", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.win34_V_8_U", "Parent" : "0"},
	{"ID" : "26", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.win34_V_9_U", "Parent" : "0"},
	{"ID" : "27", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.l0_out_V_U", "Parent" : "0"},
	{"ID" : "28", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.l0_out_V_1_U", "Parent" : "0"},
	{"ID" : "29", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.l1_out_V_U", "Parent" : "0"},
	{"ID" : "30", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.l1_out_V_1_U", "Parent" : "0"},
	{"ID" : "31", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.l2_out_V_U", "Parent" : "0"},
	{"ID" : "32", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.l2_out_V_1_U", "Parent" : "0"},
	{"ID" : "33", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.l3_out_V_U", "Parent" : "0"},
	{"ID" : "34", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.l3_out_V_1_U", "Parent" : "0"},
	{"ID" : "35", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_conv_layer01234_fused_Pipeline_L0_K_fu_11063", "Parent" : "0", "Child" : ["36", "37", "38", "39"],
		"CDFG" : "conv_layer01234_fused_Pipeline_L0_K",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "15", "EstimateLatencyMax" : "15",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "sext_ln77", "Type" : "None", "Direction" : "I"},
			{"Name" : "phi_mul", "Type" : "None", "Direction" : "I"},
			{"Name" : "add_ln81", "Type" : "None", "Direction" : "I"},
			{"Name" : "add_ln82_1", "Type" : "None", "Direction" : "I"},
			{"Name" : "in_0", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "in_1", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "trunc_ln", "Type" : "None", "Direction" : "I"},
			{"Name" : "x_V_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "denoiser_w_L0_W_V", "Type" : "Memory", "Direction" : "I"}],
		"Loop" : [
			{"Name" : "L0_K", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter3", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter3", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "36", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_conv_layer01234_fused_Pipeline_L0_K_fu_11063.denoiser_w_L0_W_V_U", "Parent" : "35"},
	{"ID" : "37", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_conv_layer01234_fused_Pipeline_L0_K_fu_11063.mux_21_32_1_1_U31", "Parent" : "35"},
	{"ID" : "38", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_conv_layer01234_fused_Pipeline_L0_K_fu_11063.mul_24s_40s_63_1_1_U32", "Parent" : "35"},
	{"ID" : "39", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_conv_layer01234_fused_Pipeline_L0_K_fu_11063.flow_control_loop_pipe_sequential_init_U", "Parent" : "35"},
	{"ID" : "40", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_conv_layer01234_fused_Pipeline_L1_IC_L1_K_fu_11080", "Parent" : "0", "Child" : ["41", "42", "43", "44", "45"],
		"CDFG" : "conv_layer01234_fused_Pipeline_L1_IC_L1_K",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "453", "EstimateLatencyMax" : "453",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "sext_ln108", "Type" : "None", "Direction" : "I"},
			{"Name" : "sext_ln107", "Type" : "None", "Direction" : "I"},
			{"Name" : "oc_base", "Type" : "None", "Direction" : "I"},
			{"Name" : "zext_ln837_3", "Type" : "None", "Direction" : "I"},
			{"Name" : "win01_V_1", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "win01_V_2", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "win01_V_3", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "win01_V_4", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "win01_V_5", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "phi_ln818_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "phi_ln818_1_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "denoiser_w_L1_W_V", "Type" : "Memory", "Direction" : "I"}],
		"Loop" : [
			{"Name" : "L1_IC_L1_K", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter4", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter4", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "41", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_conv_layer01234_fused_Pipeline_L1_IC_L1_K_fu_11080.denoiser_w_L1_W_V_U", "Parent" : "40"},
	{"ID" : "42", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_conv_layer01234_fused_Pipeline_L1_IC_L1_K_fu_11080.mux_73_32_1_1_U43", "Parent" : "40"},
	{"ID" : "43", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_conv_layer01234_fused_Pipeline_L1_IC_L1_K_fu_11080.mul_23s_40s_62_1_1_U44", "Parent" : "40"},
	{"ID" : "44", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_conv_layer01234_fused_Pipeline_L1_IC_L1_K_fu_11080.mul_23s_40s_62_1_1_U45", "Parent" : "40"},
	{"ID" : "45", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_conv_layer01234_fused_Pipeline_L1_IC_L1_K_fu_11080.flow_control_loop_pipe_sequential_init_U", "Parent" : "40"},
	{"ID" : "46", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_conv_layer01234_fused_Pipeline_L2_IC_L2_K_fu_11097", "Parent" : "0", "Child" : ["47", "48", "49", "50", "51"],
		"CDFG" : "conv_layer01234_fused_Pipeline_L2_IC_L2_K",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "644", "EstimateLatencyMax" : "644",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "sext_ln143", "Type" : "None", "Direction" : "I"},
			{"Name" : "sext_ln142", "Type" : "None", "Direction" : "I"},
			{"Name" : "oc_base_1", "Type" : "None", "Direction" : "I"},
			{"Name" : "zext_ln837_4", "Type" : "None", "Direction" : "I"},
			{"Name" : "win12_V_1", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "win12_V_2", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "win12_V_3", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "phi_ln818_2_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "phi_ln818_3_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "denoiser_w_L2_W_V", "Type" : "Memory", "Direction" : "I"}],
		"Loop" : [
			{"Name" : "L2_IC_L2_K", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter3", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter3", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "47", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_conv_layer01234_fused_Pipeline_L2_IC_L2_K_fu_11097.denoiser_w_L2_W_V_U", "Parent" : "46"},
	{"ID" : "48", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_conv_layer01234_fused_Pipeline_L2_IC_L2_K_fu_11097.mux_53_32_1_1_U60", "Parent" : "46"},
	{"ID" : "49", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_conv_layer01234_fused_Pipeline_L2_IC_L2_K_fu_11097.mul_23s_40s_62_1_1_U61", "Parent" : "46"},
	{"ID" : "50", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_conv_layer01234_fused_Pipeline_L2_IC_L2_K_fu_11097.mul_23s_40s_62_1_1_U62", "Parent" : "46"},
	{"ID" : "51", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_conv_layer01234_fused_Pipeline_L2_IC_L2_K_fu_11097.flow_control_loop_pipe_sequential_init_U", "Parent" : "46"},
	{"ID" : "52", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_conv_layer01234_fused_Pipeline_L3_IC_L3_K_fu_11112", "Parent" : "0", "Child" : ["53", "54", "55", "56", "57", "58", "59", "60", "61", "62", "63"],
		"CDFG" : "conv_layer01234_fused_Pipeline_L3_IC_L3_K",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "196", "EstimateLatencyMax" : "196",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "sext_ln178", "Type" : "None", "Direction" : "I"},
			{"Name" : "sext_ln177", "Type" : "None", "Direction" : "I"},
			{"Name" : "win23_V_2", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "win23_V_3", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "win23_V_4", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "win23_V_5", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "oc_base_2", "Type" : "None", "Direction" : "I"},
			{"Name" : "zext_ln837_5", "Type" : "None", "Direction" : "I"},
			{"Name" : "phi_ln818_4_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "phi_ln818_5_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "denoiser_w_L3_W_V", "Type" : "Memory", "Direction" : "I"}],
		"Loop" : [
			{"Name" : "L3_IC_L3_K", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter3", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter3", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "53", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_conv_layer01234_fused_Pipeline_L3_IC_L3_K_fu_11112.denoiser_w_L3_W_V_U", "Parent" : "52"},
	{"ID" : "54", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_conv_layer01234_fused_Pipeline_L3_IC_L3_K_fu_11112.mux_21_31_1_1_U74", "Parent" : "52"},
	{"ID" : "55", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_conv_layer01234_fused_Pipeline_L3_IC_L3_K_fu_11112.mux_21_31_1_1_U75", "Parent" : "52"},
	{"ID" : "56", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_conv_layer01234_fused_Pipeline_L3_IC_L3_K_fu_11112.mux_21_31_1_1_U76", "Parent" : "52"},
	{"ID" : "57", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_conv_layer01234_fused_Pipeline_L3_IC_L3_K_fu_11112.mux_21_31_1_1_U77", "Parent" : "52"},
	{"ID" : "58", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_conv_layer01234_fused_Pipeline_L3_IC_L3_K_fu_11112.mux_21_31_1_1_U78", "Parent" : "52"},
	{"ID" : "59", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_conv_layer01234_fused_Pipeline_L3_IC_L3_K_fu_11112.mux_21_31_1_1_U79", "Parent" : "52"},
	{"ID" : "60", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_conv_layer01234_fused_Pipeline_L3_IC_L3_K_fu_11112.mux_32_31_1_1_U80", "Parent" : "52"},
	{"ID" : "61", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_conv_layer01234_fused_Pipeline_L3_IC_L3_K_fu_11112.mul_23s_39ns_62_1_1_U81", "Parent" : "52"},
	{"ID" : "62", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_conv_layer01234_fused_Pipeline_L3_IC_L3_K_fu_11112.mul_23s_39ns_62_1_1_U82", "Parent" : "52"},
	{"ID" : "63", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_conv_layer01234_fused_Pipeline_L3_IC_L3_K_fu_11112.flow_control_loop_pipe_sequential_init_U", "Parent" : "52"},
	{"ID" : "64", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_conv_layer01234_fused_Pipeline_L4_IC_L4_K_fu_11128", "Parent" : "0", "Child" : ["65", "66", "67", "68", "69", "70", "71", "72", "73", "74", "75", "76", "77", "78", "79", "80", "81", "82"],
		"CDFG" : "conv_layer01234_fused_Pipeline_L4_IC_L4_K",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "228", "EstimateLatencyMax" : "228",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "win34_V_2", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "win34_V_3", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "win34_V_4", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "win34_V_5", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "win34_V_6", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "win34_V_7", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "win34_V_8", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "win34_V_9", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "win34_V_10", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "win34_V_11", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "phi_ln818_6_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "denoiser_w_L4_W_V", "Type" : "Memory", "Direction" : "I"}],
		"Loop" : [
			{"Name" : "L4_IC_L4_K", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter3", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter3", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "65", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_conv_layer01234_fused_Pipeline_L4_IC_L4_K_fu_11128.denoiser_w_L4_W_V_U", "Parent" : "64"},
	{"ID" : "66", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_conv_layer01234_fused_Pipeline_L4_IC_L4_K_fu_11128.mux_21_32_1_1_U97", "Parent" : "64"},
	{"ID" : "67", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_conv_layer01234_fused_Pipeline_L4_IC_L4_K_fu_11128.mux_21_31_1_1_U98", "Parent" : "64"},
	{"ID" : "68", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_conv_layer01234_fused_Pipeline_L4_IC_L4_K_fu_11128.mux_21_31_1_1_U99", "Parent" : "64"},
	{"ID" : "69", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_conv_layer01234_fused_Pipeline_L4_IC_L4_K_fu_11128.mux_21_31_1_1_U100", "Parent" : "64"},
	{"ID" : "70", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_conv_layer01234_fused_Pipeline_L4_IC_L4_K_fu_11128.mux_21_31_1_1_U101", "Parent" : "64"},
	{"ID" : "71", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_conv_layer01234_fused_Pipeline_L4_IC_L4_K_fu_11128.mux_21_31_1_1_U102", "Parent" : "64"},
	{"ID" : "72", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_conv_layer01234_fused_Pipeline_L4_IC_L4_K_fu_11128.mux_21_31_1_1_U103", "Parent" : "64"},
	{"ID" : "73", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_conv_layer01234_fused_Pipeline_L4_IC_L4_K_fu_11128.mux_21_32_1_1_U104", "Parent" : "64"},
	{"ID" : "74", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_conv_layer01234_fused_Pipeline_L4_IC_L4_K_fu_11128.mux_21_31_1_1_U105", "Parent" : "64"},
	{"ID" : "75", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_conv_layer01234_fused_Pipeline_L4_IC_L4_K_fu_11128.mux_21_31_1_1_U106", "Parent" : "64"},
	{"ID" : "76", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_conv_layer01234_fused_Pipeline_L4_IC_L4_K_fu_11128.mux_21_31_1_1_U107", "Parent" : "64"},
	{"ID" : "77", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_conv_layer01234_fused_Pipeline_L4_IC_L4_K_fu_11128.mux_21_31_1_1_U108", "Parent" : "64"},
	{"ID" : "78", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_conv_layer01234_fused_Pipeline_L4_IC_L4_K_fu_11128.mux_21_31_1_1_U109", "Parent" : "64"},
	{"ID" : "79", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_conv_layer01234_fused_Pipeline_L4_IC_L4_K_fu_11128.mux_21_31_1_1_U110", "Parent" : "64"},
	{"ID" : "80", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_conv_layer01234_fused_Pipeline_L4_IC_L4_K_fu_11128.mux_73_32_1_1_U111", "Parent" : "64"},
	{"ID" : "81", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_conv_layer01234_fused_Pipeline_L4_IC_L4_K_fu_11128.mul_23s_40s_62_1_1_U112", "Parent" : "64"},
	{"ID" : "82", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_conv_layer01234_fused_Pipeline_L4_IC_L4_K_fu_11128.flow_control_loop_pipe_sequential_init_U", "Parent" : "64"}]}


set ArgLastReadFirstWriteLatency {
	conv_layer01234_fused {
		in_0 {Type I LastRead 0 FirstWrite -1}
		in_1 {Type I LastRead 0 FirstWrite -1}
		out_r {Type O LastRead -1 FirstWrite 307}
		denoiser_w_L0_b_V {Type I LastRead -1 FirstWrite -1}
		denoiser_w_L0_W_V {Type I LastRead -1 FirstWrite -1}
		denoiser_w_L1_b_V {Type I LastRead -1 FirstWrite -1}
		denoiser_w_L1_W_V {Type I LastRead -1 FirstWrite -1}
		denoiser_w_L2_b_V {Type I LastRead -1 FirstWrite -1}
		denoiser_w_L2_W_V {Type I LastRead -1 FirstWrite -1}
		denoiser_w_L3_b_V {Type I LastRead -1 FirstWrite -1}
		denoiser_w_L3_W_V {Type I LastRead -1 FirstWrite -1}
		denoiser_w_L4_W_V {Type I LastRead -1 FirstWrite -1}}
	conv_layer01234_fused_Pipeline_L0_K {
		sext_ln77 {Type I LastRead 0 FirstWrite -1}
		phi_mul {Type I LastRead 0 FirstWrite -1}
		add_ln81 {Type I LastRead 0 FirstWrite -1}
		add_ln82_1 {Type I LastRead 0 FirstWrite -1}
		in_0 {Type I LastRead 0 FirstWrite -1}
		in_1 {Type I LastRead 0 FirstWrite -1}
		trunc_ln {Type I LastRead 0 FirstWrite -1}
		x_V_out {Type O LastRead -1 FirstWrite 2}
		denoiser_w_L0_W_V {Type I LastRead -1 FirstWrite -1}}
	conv_layer01234_fused_Pipeline_L1_IC_L1_K {
		sext_ln108 {Type I LastRead 0 FirstWrite -1}
		sext_ln107 {Type I LastRead 0 FirstWrite -1}
		oc_base {Type I LastRead 0 FirstWrite -1}
		zext_ln837_3 {Type I LastRead 0 FirstWrite -1}
		win01_V_1 {Type I LastRead 1 FirstWrite -1}
		win01_V_2 {Type I LastRead 1 FirstWrite -1}
		win01_V_3 {Type I LastRead 1 FirstWrite -1}
		win01_V_4 {Type I LastRead 1 FirstWrite -1}
		win01_V_5 {Type I LastRead 1 FirstWrite -1}
		phi_ln818_out {Type O LastRead -1 FirstWrite 3}
		phi_ln818_1_out {Type O LastRead -1 FirstWrite 3}
		denoiser_w_L1_W_V {Type I LastRead -1 FirstWrite -1}}
	conv_layer01234_fused_Pipeline_L2_IC_L2_K {
		sext_ln143 {Type I LastRead 0 FirstWrite -1}
		sext_ln142 {Type I LastRead 0 FirstWrite -1}
		oc_base_1 {Type I LastRead 0 FirstWrite -1}
		zext_ln837_4 {Type I LastRead 0 FirstWrite -1}
		win12_V_1 {Type I LastRead 0 FirstWrite -1}
		win12_V_2 {Type I LastRead 0 FirstWrite -1}
		win12_V_3 {Type I LastRead 0 FirstWrite -1}
		phi_ln818_2_out {Type O LastRead -1 FirstWrite 2}
		phi_ln818_3_out {Type O LastRead -1 FirstWrite 2}
		denoiser_w_L2_W_V {Type I LastRead -1 FirstWrite -1}}
	conv_layer01234_fused_Pipeline_L3_IC_L3_K {
		sext_ln178 {Type I LastRead 0 FirstWrite -1}
		sext_ln177 {Type I LastRead 0 FirstWrite -1}
		win23_V_2 {Type I LastRead 1 FirstWrite -1}
		win23_V_3 {Type I LastRead 1 FirstWrite -1}
		win23_V_4 {Type I LastRead 1 FirstWrite -1}
		win23_V_5 {Type I LastRead 1 FirstWrite -1}
		oc_base_2 {Type I LastRead 0 FirstWrite -1}
		zext_ln837_5 {Type I LastRead 0 FirstWrite -1}
		phi_ln818_4_out {Type O LastRead -1 FirstWrite 2}
		phi_ln818_5_out {Type O LastRead -1 FirstWrite 2}
		denoiser_w_L3_W_V {Type I LastRead -1 FirstWrite -1}}
	conv_layer01234_fused_Pipeline_L4_IC_L4_K {
		win34_V_2 {Type I LastRead 1 FirstWrite -1}
		win34_V_3 {Type I LastRead 1 FirstWrite -1}
		win34_V_4 {Type I LastRead 1 FirstWrite -1}
		win34_V_5 {Type I LastRead 1 FirstWrite -1}
		win34_V_6 {Type I LastRead 1 FirstWrite -1}
		win34_V_7 {Type I LastRead 1 FirstWrite -1}
		win34_V_8 {Type I LastRead 1 FirstWrite -1}
		win34_V_9 {Type I LastRead 1 FirstWrite -1}
		win34_V_10 {Type I LastRead 1 FirstWrite -1}
		win34_V_11 {Type I LastRead 1 FirstWrite -1}
		phi_ln818_6_out {Type O LastRead -1 FirstWrite 2}
		denoiser_w_L4_W_V {Type I LastRead -1 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "19753984", "Max" : "19753984"}
	, {"Name" : "Interval", "Min" : "19753984", "Max" : "19753984"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	in_0 { ap_memory {  { in_0_address0 mem_address 1 8 }  { in_0_ce0 mem_ce 1 1 }  { in_0_q0 mem_dout 0 32 } } }
	in_1 { ap_memory {  { in_1_address0 mem_address 1 8 }  { in_1_ce0 mem_ce 1 1 }  { in_1_q0 mem_dout 0 32 } } }
	out_r { ap_memory {  { out_r_address0 mem_address 1 9 }  { out_r_ce0 mem_ce 1 1 }  { out_r_we0 mem_we 1 1 }  { out_r_d0 mem_din 1 32 } } }
}
