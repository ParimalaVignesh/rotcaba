set moduleName ecg_classifier_Pipeline_L0_K_FILL
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
set C_modelName {ecg_classifier_Pipeline_L0_K_FILL}
set C_modelType { void 0 }
set C_modelArgList {
	{ sext_ln128 int 27 regular  }
	{ sub_ln837 int 9 regular  }
	{ add_ln113_1 int 8 regular  }
	{ t_5 int 7 regular  }
	{ trunc_ln114_mid2 int 1 regular  }
	{ norm_buf_V int 32 regular {array 94 { 1 } 1 1 }  }
	{ norm_buf_V_1 int 32 regular {array 94 { 1 } 1 1 }  }
	{ x_V_1_out int 32 regular {pointer 1}  }
}
set C_modelArgMapList {[ 
	{ "Name" : "sext_ln128", "interface" : "wire", "bitwidth" : 27, "direction" : "READONLY"} , 
 	{ "Name" : "sub_ln837", "interface" : "wire", "bitwidth" : 9, "direction" : "READONLY"} , 
 	{ "Name" : "add_ln113_1", "interface" : "wire", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "t_5", "interface" : "wire", "bitwidth" : 7, "direction" : "READONLY"} , 
 	{ "Name" : "trunc_ln114_mid2", "interface" : "wire", "bitwidth" : 1, "direction" : "READONLY"} , 
 	{ "Name" : "norm_buf_V", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "norm_buf_V_1", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "x_V_1_out", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} ]}
# RTL Port declarations: 
set portNum 19
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ sext_ln128 sc_in sc_lv 27 signal 0 } 
	{ sub_ln837 sc_in sc_lv 9 signal 1 } 
	{ add_ln113_1 sc_in sc_lv 8 signal 2 } 
	{ t_5 sc_in sc_lv 7 signal 3 } 
	{ trunc_ln114_mid2 sc_in sc_lv 1 signal 4 } 
	{ norm_buf_V_address0 sc_out sc_lv 7 signal 5 } 
	{ norm_buf_V_ce0 sc_out sc_logic 1 signal 5 } 
	{ norm_buf_V_q0 sc_in sc_lv 32 signal 5 } 
	{ norm_buf_V_1_address0 sc_out sc_lv 7 signal 6 } 
	{ norm_buf_V_1_ce0 sc_out sc_logic 1 signal 6 } 
	{ norm_buf_V_1_q0 sc_in sc_lv 32 signal 6 } 
	{ x_V_1_out sc_out sc_lv 32 signal 7 } 
	{ x_V_1_out_ap_vld sc_out sc_logic 1 outvld 7 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "sext_ln128", "direction": "in", "datatype": "sc_lv", "bitwidth":27, "type": "signal", "bundle":{"name": "sext_ln128", "role": "default" }} , 
 	{ "name": "sub_ln837", "direction": "in", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "sub_ln837", "role": "default" }} , 
 	{ "name": "add_ln113_1", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "add_ln113_1", "role": "default" }} , 
 	{ "name": "t_5", "direction": "in", "datatype": "sc_lv", "bitwidth":7, "type": "signal", "bundle":{"name": "t_5", "role": "default" }} , 
 	{ "name": "trunc_ln114_mid2", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "trunc_ln114_mid2", "role": "default" }} , 
 	{ "name": "norm_buf_V_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":7, "type": "signal", "bundle":{"name": "norm_buf_V", "role": "address0" }} , 
 	{ "name": "norm_buf_V_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "norm_buf_V", "role": "ce0" }} , 
 	{ "name": "norm_buf_V_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "norm_buf_V", "role": "q0" }} , 
 	{ "name": "norm_buf_V_1_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":7, "type": "signal", "bundle":{"name": "norm_buf_V_1", "role": "address0" }} , 
 	{ "name": "norm_buf_V_1_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "norm_buf_V_1", "role": "ce0" }} , 
 	{ "name": "norm_buf_V_1_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "norm_buf_V_1", "role": "q0" }} , 
 	{ "name": "x_V_1_out", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "x_V_1_out", "role": "default" }} , 
 	{ "name": "x_V_1_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "x_V_1_out", "role": "ap_vld" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "3", "4"],
		"CDFG" : "ecg_classifier_Pipeline_L0_K_FILL",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "11", "EstimateLatencyMax" : "11",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "sext_ln128", "Type" : "None", "Direction" : "I"},
			{"Name" : "sub_ln837", "Type" : "None", "Direction" : "I"},
			{"Name" : "add_ln113_1", "Type" : "None", "Direction" : "I"},
			{"Name" : "t_5", "Type" : "None", "Direction" : "I"},
			{"Name" : "trunc_ln114_mid2", "Type" : "None", "Direction" : "I"},
			{"Name" : "norm_buf_V", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "norm_buf_V_1", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "x_V_1_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "L0_W_V_0", "Type" : "Memory", "Direction" : "I"}],
		"Loop" : [
			{"Name" : "L0_K_FILL", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter3", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter3", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.L0_W_V_0_U", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mux_21_32_1_1_U31", "Parent" : "0"},
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_27s_40s_66_1_1_U32", "Parent" : "0"},
	{"ID" : "4", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.flow_control_loop_pipe_sequential_init_U", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	ecg_classifier_Pipeline_L0_K_FILL {
		sext_ln128 {Type I LastRead 0 FirstWrite -1}
		sub_ln837 {Type I LastRead 0 FirstWrite -1}
		add_ln113_1 {Type I LastRead 0 FirstWrite -1}
		t_5 {Type I LastRead 0 FirstWrite -1}
		trunc_ln114_mid2 {Type I LastRead 0 FirstWrite -1}
		norm_buf_V {Type I LastRead 0 FirstWrite -1}
		norm_buf_V_1 {Type I LastRead 0 FirstWrite -1}
		x_V_1_out {Type O LastRead -1 FirstWrite 2}
		L0_W_V_0 {Type I LastRead -1 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "11", "Max" : "11"}
	, {"Name" : "Interval", "Min" : "11", "Max" : "11"}
]}

set PipelineEnableSignalInfo {[
	{"Pipeline" : "0", "EnableSignal" : "ap_enable_pp0"}
]}

set Spec2ImplPortList { 
	sext_ln128 { ap_none {  { sext_ln128 in_data 0 27 } } }
	sub_ln837 { ap_none {  { sub_ln837 in_data 0 9 } } }
	add_ln113_1 { ap_none {  { add_ln113_1 in_data 0 8 } } }
	t_5 { ap_none {  { t_5 in_data 0 7 } } }
	trunc_ln114_mid2 { ap_none {  { trunc_ln114_mid2 in_data 0 1 } } }
	norm_buf_V { ap_memory {  { norm_buf_V_address0 mem_address 1 7 }  { norm_buf_V_ce0 mem_ce 1 1 }  { norm_buf_V_q0 in_data 0 32 } } }
	norm_buf_V_1 { ap_memory {  { norm_buf_V_1_address0 mem_address 1 7 }  { norm_buf_V_1_ce0 mem_ce 1 1 }  { norm_buf_V_1_q0 in_data 0 32 } } }
	x_V_1_out { ap_vld {  { x_V_1_out out_data 1 32 }  { x_V_1_out_ap_vld out_vld 1 1 } } }
}
