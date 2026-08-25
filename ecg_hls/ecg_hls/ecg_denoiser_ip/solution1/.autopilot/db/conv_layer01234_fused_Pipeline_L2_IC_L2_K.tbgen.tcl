set moduleName conv_layer01234_fused_Pipeline_L2_IC_L2_K
set isTopModule 0
set isCombinational 0
set isDatapathOnly 0
set isPipelined 1
set pipeline_type none
set FunctionProtocol ap_ctrl_hs
set isOneStateSeq 0
set ProfileFlag 0
set StallSigGenFlag 0
set isEnableWaveformDebug 1
set hasInterrupt 0
set C_modelName {conv_layer01234_fused_Pipeline_L2_IC_L2_K}
set C_modelType { void 0 }
set C_modelArgList {
	{ sext_ln143 int 25 regular  }
	{ sext_ln142 int 25 regular  }
	{ oc_base_1 int 6 regular  }
	{ zext_ln837_4 int 13 regular  }
	{ win12_V_1 int 31 regular {array 128 { 1 3 } 1 1 }  }
	{ win12_V_2 int 31 regular {array 128 { 1 3 } 1 1 }  }
	{ win12_V_3 int 31 regular {array 128 { 1 3 } 1 1 }  }
	{ phi_ln818_2_out int 32 regular {pointer 1}  }
	{ phi_ln818_3_out int 32 regular {pointer 1}  }
}
set C_modelArgMapList {[ 
	{ "Name" : "sext_ln143", "interface" : "wire", "bitwidth" : 25, "direction" : "READONLY"} , 
 	{ "Name" : "sext_ln142", "interface" : "wire", "bitwidth" : 25, "direction" : "READONLY"} , 
 	{ "Name" : "oc_base_1", "interface" : "wire", "bitwidth" : 6, "direction" : "READONLY"} , 
 	{ "Name" : "zext_ln837_4", "interface" : "wire", "bitwidth" : 13, "direction" : "READONLY"} , 
 	{ "Name" : "win12_V_1", "interface" : "memory", "bitwidth" : 31, "direction" : "READONLY"} , 
 	{ "Name" : "win12_V_2", "interface" : "memory", "bitwidth" : 31, "direction" : "READONLY"} , 
 	{ "Name" : "win12_V_3", "interface" : "memory", "bitwidth" : 31, "direction" : "READONLY"} , 
 	{ "Name" : "phi_ln818_2_out", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "phi_ln818_3_out", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} ]}
# RTL Port declarations: 
set portNum 23
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ sext_ln143 sc_in sc_lv 25 signal 0 } 
	{ sext_ln142 sc_in sc_lv 25 signal 1 } 
	{ oc_base_1 sc_in sc_lv 6 signal 2 } 
	{ zext_ln837_4 sc_in sc_lv 13 signal 3 } 
	{ win12_V_1_address0 sc_out sc_lv 7 signal 4 } 
	{ win12_V_1_ce0 sc_out sc_logic 1 signal 4 } 
	{ win12_V_1_q0 sc_in sc_lv 31 signal 4 } 
	{ win12_V_2_address0 sc_out sc_lv 7 signal 5 } 
	{ win12_V_2_ce0 sc_out sc_logic 1 signal 5 } 
	{ win12_V_2_q0 sc_in sc_lv 31 signal 5 } 
	{ win12_V_3_address0 sc_out sc_lv 7 signal 6 } 
	{ win12_V_3_ce0 sc_out sc_logic 1 signal 6 } 
	{ win12_V_3_q0 sc_in sc_lv 31 signal 6 } 
	{ phi_ln818_2_out sc_out sc_lv 32 signal 7 } 
	{ phi_ln818_2_out_ap_vld sc_out sc_logic 1 outvld 7 } 
	{ phi_ln818_3_out sc_out sc_lv 32 signal 8 } 
	{ phi_ln818_3_out_ap_vld sc_out sc_logic 1 outvld 8 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "sext_ln143", "direction": "in", "datatype": "sc_lv", "bitwidth":25, "type": "signal", "bundle":{"name": "sext_ln143", "role": "default" }} , 
 	{ "name": "sext_ln142", "direction": "in", "datatype": "sc_lv", "bitwidth":25, "type": "signal", "bundle":{"name": "sext_ln142", "role": "default" }} , 
 	{ "name": "oc_base_1", "direction": "in", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "oc_base_1", "role": "default" }} , 
 	{ "name": "zext_ln837_4", "direction": "in", "datatype": "sc_lv", "bitwidth":13, "type": "signal", "bundle":{"name": "zext_ln837_4", "role": "default" }} , 
 	{ "name": "win12_V_1_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":7, "type": "signal", "bundle":{"name": "win12_V_1", "role": "address0" }} , 
 	{ "name": "win12_V_1_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "win12_V_1", "role": "ce0" }} , 
 	{ "name": "win12_V_1_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":31, "type": "signal", "bundle":{"name": "win12_V_1", "role": "q0" }} , 
 	{ "name": "win12_V_2_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":7, "type": "signal", "bundle":{"name": "win12_V_2", "role": "address0" }} , 
 	{ "name": "win12_V_2_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "win12_V_2", "role": "ce0" }} , 
 	{ "name": "win12_V_2_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":31, "type": "signal", "bundle":{"name": "win12_V_2", "role": "q0" }} , 
 	{ "name": "win12_V_3_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":7, "type": "signal", "bundle":{"name": "win12_V_3", "role": "address0" }} , 
 	{ "name": "win12_V_3_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "win12_V_3", "role": "ce0" }} , 
 	{ "name": "win12_V_3_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":31, "type": "signal", "bundle":{"name": "win12_V_3", "role": "q0" }} , 
 	{ "name": "phi_ln818_2_out", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "phi_ln818_2_out", "role": "default" }} , 
 	{ "name": "phi_ln818_2_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "phi_ln818_2_out", "role": "ap_vld" }} , 
 	{ "name": "phi_ln818_3_out", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "phi_ln818_3_out", "role": "default" }} , 
 	{ "name": "phi_ln818_3_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "phi_ln818_3_out", "role": "ap_vld" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "3", "4", "5"],
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
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.denoiser_w_L2_W_V_U", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mux_53_32_1_1_U60", "Parent" : "0"},
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_23s_40s_62_1_1_U61", "Parent" : "0"},
	{"ID" : "4", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_23s_40s_62_1_1_U62", "Parent" : "0"},
	{"ID" : "5", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.flow_control_loop_pipe_sequential_init_U", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
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
		denoiser_w_L2_W_V {Type I LastRead -1 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "644", "Max" : "644"}
	, {"Name" : "Interval", "Min" : "644", "Max" : "644"}
]}

set PipelineEnableSignalInfo {[
	{"Pipeline" : "0", "EnableSignal" : "ap_enable_pp0"}
]}

set Spec2ImplPortList { 
	sext_ln143 { ap_none {  { sext_ln143 in_data 0 25 } } }
	sext_ln142 { ap_none {  { sext_ln142 in_data 0 25 } } }
	oc_base_1 { ap_none {  { oc_base_1 in_data 0 6 } } }
	zext_ln837_4 { ap_none {  { zext_ln837_4 in_data 0 13 } } }
	win12_V_1 { ap_memory {  { win12_V_1_address0 mem_address 1 7 }  { win12_V_1_ce0 mem_ce 1 1 }  { win12_V_1_q0 in_data 0 31 } } }
	win12_V_2 { ap_memory {  { win12_V_2_address0 mem_address 1 7 }  { win12_V_2_ce0 mem_ce 1 1 }  { win12_V_2_q0 in_data 0 31 } } }
	win12_V_3 { ap_memory {  { win12_V_3_address0 mem_address 1 7 }  { win12_V_3_ce0 mem_ce 1 1 }  { win12_V_3_q0 in_data 0 31 } } }
	phi_ln818_2_out { ap_vld {  { phi_ln818_2_out out_data 1 32 }  { phi_ln818_2_out_ap_vld out_vld 1 1 } } }
	phi_ln818_3_out { ap_vld {  { phi_ln818_3_out out_data 1 32 }  { phi_ln818_3_out_ap_vld out_vld 1 1 } } }
}
