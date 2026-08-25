set moduleName ecg_classifier_Pipeline_L4_IC_L4_K
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
set C_modelName {ecg_classifier_Pipeline_L4_IC_L4_K}
set C_modelType { void 0 }
set C_modelArgList {
	{ sext_ln262 int 26 regular  }
	{ sext_ln261 int 26 regular  }
	{ win23_V_2 int 31 regular {array 64 { 1 1 } 1 1 }  }
	{ win23_V_3 int 31 regular {array 64 { 1 1 } 1 1 }  }
	{ win23_V_4 int 31 regular {array 64 { 1 1 } 1 1 }  }
	{ win23_V_5 int 31 regular {array 64 { 1 1 } 1 1 }  }
	{ oc_base_2 int 8 regular  }
	{ zext_ln837_14 int 15 regular  }
	{ phi_ln818_6_out int 32 regular {pointer 1}  }
	{ phi_ln818_7_out int 32 regular {pointer 1}  }
}
set C_modelArgMapList {[ 
	{ "Name" : "sext_ln262", "interface" : "wire", "bitwidth" : 26, "direction" : "READONLY"} , 
 	{ "Name" : "sext_ln261", "interface" : "wire", "bitwidth" : 26, "direction" : "READONLY"} , 
 	{ "Name" : "win23_V_2", "interface" : "memory", "bitwidth" : 31, "direction" : "READONLY"} , 
 	{ "Name" : "win23_V_3", "interface" : "memory", "bitwidth" : 31, "direction" : "READONLY"} , 
 	{ "Name" : "win23_V_4", "interface" : "memory", "bitwidth" : 31, "direction" : "READONLY"} , 
 	{ "Name" : "win23_V_5", "interface" : "memory", "bitwidth" : 31, "direction" : "READONLY"} , 
 	{ "Name" : "oc_base_2", "interface" : "wire", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "zext_ln837_14", "interface" : "wire", "bitwidth" : 15, "direction" : "READONLY"} , 
 	{ "Name" : "phi_ln818_6_out", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "phi_ln818_7_out", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} ]}
# RTL Port declarations: 
set portNum 38
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ sext_ln262 sc_in sc_lv 26 signal 0 } 
	{ sext_ln261 sc_in sc_lv 26 signal 1 } 
	{ win23_V_2_address0 sc_out sc_lv 6 signal 2 } 
	{ win23_V_2_ce0 sc_out sc_logic 1 signal 2 } 
	{ win23_V_2_q0 sc_in sc_lv 31 signal 2 } 
	{ win23_V_2_address1 sc_out sc_lv 6 signal 2 } 
	{ win23_V_2_ce1 sc_out sc_logic 1 signal 2 } 
	{ win23_V_2_q1 sc_in sc_lv 31 signal 2 } 
	{ win23_V_3_address0 sc_out sc_lv 6 signal 3 } 
	{ win23_V_3_ce0 sc_out sc_logic 1 signal 3 } 
	{ win23_V_3_q0 sc_in sc_lv 31 signal 3 } 
	{ win23_V_3_address1 sc_out sc_lv 6 signal 3 } 
	{ win23_V_3_ce1 sc_out sc_logic 1 signal 3 } 
	{ win23_V_3_q1 sc_in sc_lv 31 signal 3 } 
	{ win23_V_4_address0 sc_out sc_lv 6 signal 4 } 
	{ win23_V_4_ce0 sc_out sc_logic 1 signal 4 } 
	{ win23_V_4_q0 sc_in sc_lv 31 signal 4 } 
	{ win23_V_4_address1 sc_out sc_lv 6 signal 4 } 
	{ win23_V_4_ce1 sc_out sc_logic 1 signal 4 } 
	{ win23_V_4_q1 sc_in sc_lv 31 signal 4 } 
	{ win23_V_5_address0 sc_out sc_lv 6 signal 5 } 
	{ win23_V_5_ce0 sc_out sc_logic 1 signal 5 } 
	{ win23_V_5_q0 sc_in sc_lv 31 signal 5 } 
	{ win23_V_5_address1 sc_out sc_lv 6 signal 5 } 
	{ win23_V_5_ce1 sc_out sc_logic 1 signal 5 } 
	{ win23_V_5_q1 sc_in sc_lv 31 signal 5 } 
	{ oc_base_2 sc_in sc_lv 8 signal 6 } 
	{ zext_ln837_14 sc_in sc_lv 15 signal 7 } 
	{ phi_ln818_6_out sc_out sc_lv 32 signal 8 } 
	{ phi_ln818_6_out_ap_vld sc_out sc_logic 1 outvld 8 } 
	{ phi_ln818_7_out sc_out sc_lv 32 signal 9 } 
	{ phi_ln818_7_out_ap_vld sc_out sc_logic 1 outvld 9 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "sext_ln262", "direction": "in", "datatype": "sc_lv", "bitwidth":26, "type": "signal", "bundle":{"name": "sext_ln262", "role": "default" }} , 
 	{ "name": "sext_ln261", "direction": "in", "datatype": "sc_lv", "bitwidth":26, "type": "signal", "bundle":{"name": "sext_ln261", "role": "default" }} , 
 	{ "name": "win23_V_2_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "win23_V_2", "role": "address0" }} , 
 	{ "name": "win23_V_2_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "win23_V_2", "role": "ce0" }} , 
 	{ "name": "win23_V_2_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":31, "type": "signal", "bundle":{"name": "win23_V_2", "role": "q0" }} , 
 	{ "name": "win23_V_2_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "win23_V_2", "role": "address1" }} , 
 	{ "name": "win23_V_2_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "win23_V_2", "role": "ce1" }} , 
 	{ "name": "win23_V_2_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":31, "type": "signal", "bundle":{"name": "win23_V_2", "role": "q1" }} , 
 	{ "name": "win23_V_3_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "win23_V_3", "role": "address0" }} , 
 	{ "name": "win23_V_3_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "win23_V_3", "role": "ce0" }} , 
 	{ "name": "win23_V_3_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":31, "type": "signal", "bundle":{"name": "win23_V_3", "role": "q0" }} , 
 	{ "name": "win23_V_3_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "win23_V_3", "role": "address1" }} , 
 	{ "name": "win23_V_3_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "win23_V_3", "role": "ce1" }} , 
 	{ "name": "win23_V_3_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":31, "type": "signal", "bundle":{"name": "win23_V_3", "role": "q1" }} , 
 	{ "name": "win23_V_4_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "win23_V_4", "role": "address0" }} , 
 	{ "name": "win23_V_4_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "win23_V_4", "role": "ce0" }} , 
 	{ "name": "win23_V_4_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":31, "type": "signal", "bundle":{"name": "win23_V_4", "role": "q0" }} , 
 	{ "name": "win23_V_4_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "win23_V_4", "role": "address1" }} , 
 	{ "name": "win23_V_4_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "win23_V_4", "role": "ce1" }} , 
 	{ "name": "win23_V_4_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":31, "type": "signal", "bundle":{"name": "win23_V_4", "role": "q1" }} , 
 	{ "name": "win23_V_5_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "win23_V_5", "role": "address0" }} , 
 	{ "name": "win23_V_5_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "win23_V_5", "role": "ce0" }} , 
 	{ "name": "win23_V_5_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":31, "type": "signal", "bundle":{"name": "win23_V_5", "role": "q0" }} , 
 	{ "name": "win23_V_5_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "win23_V_5", "role": "address1" }} , 
 	{ "name": "win23_V_5_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "win23_V_5", "role": "ce1" }} , 
 	{ "name": "win23_V_5_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":31, "type": "signal", "bundle":{"name": "win23_V_5", "role": "q1" }} , 
 	{ "name": "oc_base_2", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "oc_base_2", "role": "default" }} , 
 	{ "name": "zext_ln837_14", "direction": "in", "datatype": "sc_lv", "bitwidth":15, "type": "signal", "bundle":{"name": "zext_ln837_14", "role": "default" }} , 
 	{ "name": "phi_ln818_6_out", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "phi_ln818_6_out", "role": "default" }} , 
 	{ "name": "phi_ln818_6_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "phi_ln818_6_out", "role": "ap_vld" }} , 
 	{ "name": "phi_ln818_7_out", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "phi_ln818_7_out", "role": "default" }} , 
 	{ "name": "phi_ln818_7_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "phi_ln818_7_out", "role": "ap_vld" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "3", "4", "5", "6", "7", "8", "9", "10", "11"],
		"CDFG" : "ecg_classifier_Pipeline_L4_IC_L4_K",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "388", "EstimateLatencyMax" : "388",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "sext_ln262", "Type" : "None", "Direction" : "I"},
			{"Name" : "sext_ln261", "Type" : "None", "Direction" : "I"},
			{"Name" : "win23_V_2", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "win23_V_3", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "win23_V_4", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "win23_V_5", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "oc_base_2", "Type" : "None", "Direction" : "I"},
			{"Name" : "zext_ln837_14", "Type" : "None", "Direction" : "I"},
			{"Name" : "phi_ln818_6_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "phi_ln818_7_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "clf_w_L4_W_V", "Type" : "Memory", "Direction" : "I"}],
		"Loop" : [
			{"Name" : "L4_IC_L4_K", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter3", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter3", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.clf_w_L4_W_V_U", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mux_21_31_1_1_U122", "Parent" : "0"},
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mux_21_31_1_1_U123", "Parent" : "0"},
	{"ID" : "4", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mux_21_31_1_1_U124", "Parent" : "0"},
	{"ID" : "5", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mux_21_31_1_1_U125", "Parent" : "0"},
	{"ID" : "6", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mux_21_31_1_1_U126", "Parent" : "0"},
	{"ID" : "7", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mux_21_31_1_1_U127", "Parent" : "0"},
	{"ID" : "8", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mux_32_31_1_1_U128", "Parent" : "0"},
	{"ID" : "9", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_22s_39ns_61_1_1_U129", "Parent" : "0"},
	{"ID" : "10", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_22s_39ns_61_1_1_U130", "Parent" : "0"},
	{"ID" : "11", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.flow_control_loop_pipe_sequential_init_U", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	ecg_classifier_Pipeline_L4_IC_L4_K {
		sext_ln262 {Type I LastRead 0 FirstWrite -1}
		sext_ln261 {Type I LastRead 0 FirstWrite -1}
		win23_V_2 {Type I LastRead 1 FirstWrite -1}
		win23_V_3 {Type I LastRead 1 FirstWrite -1}
		win23_V_4 {Type I LastRead 1 FirstWrite -1}
		win23_V_5 {Type I LastRead 1 FirstWrite -1}
		oc_base_2 {Type I LastRead 0 FirstWrite -1}
		zext_ln837_14 {Type I LastRead 0 FirstWrite -1}
		phi_ln818_6_out {Type O LastRead -1 FirstWrite 2}
		phi_ln818_7_out {Type O LastRead -1 FirstWrite 2}
		clf_w_L4_W_V {Type I LastRead -1 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "388", "Max" : "388"}
	, {"Name" : "Interval", "Min" : "388", "Max" : "388"}
]}

set PipelineEnableSignalInfo {[
	{"Pipeline" : "0", "EnableSignal" : "ap_enable_pp0"}
]}

set Spec2ImplPortList { 
	sext_ln262 { ap_none {  { sext_ln262 in_data 0 26 } } }
	sext_ln261 { ap_none {  { sext_ln261 in_data 0 26 } } }
	win23_V_2 { ap_memory {  { win23_V_2_address0 mem_address 1 6 }  { win23_V_2_ce0 mem_ce 1 1 }  { win23_V_2_q0 in_data 0 31 }  { win23_V_2_address1 MemPortADDR2 1 6 }  { win23_V_2_ce1 MemPortCE2 1 1 }  { win23_V_2_q1 in_data 0 31 } } }
	win23_V_3 { ap_memory {  { win23_V_3_address0 mem_address 1 6 }  { win23_V_3_ce0 mem_ce 1 1 }  { win23_V_3_q0 in_data 0 31 }  { win23_V_3_address1 MemPortADDR2 1 6 }  { win23_V_3_ce1 MemPortCE2 1 1 }  { win23_V_3_q1 in_data 0 31 } } }
	win23_V_4 { ap_memory {  { win23_V_4_address0 mem_address 1 6 }  { win23_V_4_ce0 mem_ce 1 1 }  { win23_V_4_q0 in_data 0 31 }  { win23_V_4_address1 MemPortADDR2 1 6 }  { win23_V_4_ce1 MemPortCE2 1 1 }  { win23_V_4_q1 in_data 0 31 } } }
	win23_V_5 { ap_memory {  { win23_V_5_address0 mem_address 1 6 }  { win23_V_5_ce0 mem_ce 1 1 }  { win23_V_5_q0 in_data 0 31 }  { win23_V_5_address1 MemPortADDR2 1 6 }  { win23_V_5_ce1 MemPortCE2 1 1 }  { win23_V_5_q1 in_data 0 31 } } }
	oc_base_2 { ap_none {  { oc_base_2 in_data 0 8 } } }
	zext_ln837_14 { ap_none {  { zext_ln837_14 in_data 0 15 } } }
	phi_ln818_6_out { ap_vld {  { phi_ln818_6_out out_data 1 32 }  { phi_ln818_6_out_ap_vld out_vld 1 1 } } }
	phi_ln818_7_out { ap_vld {  { phi_ln818_7_out out_data 1 32 }  { phi_ln818_7_out_ap_vld out_vld 1 1 } } }
}
