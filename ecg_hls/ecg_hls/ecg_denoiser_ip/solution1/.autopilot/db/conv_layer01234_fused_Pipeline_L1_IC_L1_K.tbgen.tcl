set moduleName conv_layer01234_fused_Pipeline_L1_IC_L1_K
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
set C_modelName {conv_layer01234_fused_Pipeline_L1_IC_L1_K}
set C_modelType { void 0 }
set C_modelArgList {
	{ sext_ln108 int 25 regular  }
	{ sext_ln107 int 25 regular  }
	{ oc_base int 7 regular  }
	{ zext_ln837_3 int 13 regular  }
	{ win01_V_1 int 31 regular {array 64 { 1 3 } 1 1 }  }
	{ win01_V_2 int 31 regular {array 64 { 1 3 } 1 1 }  }
	{ win01_V_3 int 31 regular {array 64 { 1 3 } 1 1 }  }
	{ win01_V_4 int 31 regular {array 64 { 1 3 } 1 1 }  }
	{ win01_V_5 int 31 regular {array 64 { 1 3 } 1 1 }  }
	{ phi_ln818_out int 32 regular {pointer 1}  }
	{ phi_ln818_1_out int 32 regular {pointer 1}  }
}
set C_modelArgMapList {[ 
	{ "Name" : "sext_ln108", "interface" : "wire", "bitwidth" : 25, "direction" : "READONLY"} , 
 	{ "Name" : "sext_ln107", "interface" : "wire", "bitwidth" : 25, "direction" : "READONLY"} , 
 	{ "Name" : "oc_base", "interface" : "wire", "bitwidth" : 7, "direction" : "READONLY"} , 
 	{ "Name" : "zext_ln837_3", "interface" : "wire", "bitwidth" : 13, "direction" : "READONLY"} , 
 	{ "Name" : "win01_V_1", "interface" : "memory", "bitwidth" : 31, "direction" : "READONLY"} , 
 	{ "Name" : "win01_V_2", "interface" : "memory", "bitwidth" : 31, "direction" : "READONLY"} , 
 	{ "Name" : "win01_V_3", "interface" : "memory", "bitwidth" : 31, "direction" : "READONLY"} , 
 	{ "Name" : "win01_V_4", "interface" : "memory", "bitwidth" : 31, "direction" : "READONLY"} , 
 	{ "Name" : "win01_V_5", "interface" : "memory", "bitwidth" : 31, "direction" : "READONLY"} , 
 	{ "Name" : "phi_ln818_out", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "phi_ln818_1_out", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} ]}
# RTL Port declarations: 
set portNum 29
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ sext_ln108 sc_in sc_lv 25 signal 0 } 
	{ sext_ln107 sc_in sc_lv 25 signal 1 } 
	{ oc_base sc_in sc_lv 7 signal 2 } 
	{ zext_ln837_3 sc_in sc_lv 13 signal 3 } 
	{ win01_V_1_address0 sc_out sc_lv 6 signal 4 } 
	{ win01_V_1_ce0 sc_out sc_logic 1 signal 4 } 
	{ win01_V_1_q0 sc_in sc_lv 31 signal 4 } 
	{ win01_V_2_address0 sc_out sc_lv 6 signal 5 } 
	{ win01_V_2_ce0 sc_out sc_logic 1 signal 5 } 
	{ win01_V_2_q0 sc_in sc_lv 31 signal 5 } 
	{ win01_V_3_address0 sc_out sc_lv 6 signal 6 } 
	{ win01_V_3_ce0 sc_out sc_logic 1 signal 6 } 
	{ win01_V_3_q0 sc_in sc_lv 31 signal 6 } 
	{ win01_V_4_address0 sc_out sc_lv 6 signal 7 } 
	{ win01_V_4_ce0 sc_out sc_logic 1 signal 7 } 
	{ win01_V_4_q0 sc_in sc_lv 31 signal 7 } 
	{ win01_V_5_address0 sc_out sc_lv 6 signal 8 } 
	{ win01_V_5_ce0 sc_out sc_logic 1 signal 8 } 
	{ win01_V_5_q0 sc_in sc_lv 31 signal 8 } 
	{ phi_ln818_out sc_out sc_lv 32 signal 9 } 
	{ phi_ln818_out_ap_vld sc_out sc_logic 1 outvld 9 } 
	{ phi_ln818_1_out sc_out sc_lv 32 signal 10 } 
	{ phi_ln818_1_out_ap_vld sc_out sc_logic 1 outvld 10 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "sext_ln108", "direction": "in", "datatype": "sc_lv", "bitwidth":25, "type": "signal", "bundle":{"name": "sext_ln108", "role": "default" }} , 
 	{ "name": "sext_ln107", "direction": "in", "datatype": "sc_lv", "bitwidth":25, "type": "signal", "bundle":{"name": "sext_ln107", "role": "default" }} , 
 	{ "name": "oc_base", "direction": "in", "datatype": "sc_lv", "bitwidth":7, "type": "signal", "bundle":{"name": "oc_base", "role": "default" }} , 
 	{ "name": "zext_ln837_3", "direction": "in", "datatype": "sc_lv", "bitwidth":13, "type": "signal", "bundle":{"name": "zext_ln837_3", "role": "default" }} , 
 	{ "name": "win01_V_1_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "win01_V_1", "role": "address0" }} , 
 	{ "name": "win01_V_1_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "win01_V_1", "role": "ce0" }} , 
 	{ "name": "win01_V_1_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":31, "type": "signal", "bundle":{"name": "win01_V_1", "role": "q0" }} , 
 	{ "name": "win01_V_2_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "win01_V_2", "role": "address0" }} , 
 	{ "name": "win01_V_2_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "win01_V_2", "role": "ce0" }} , 
 	{ "name": "win01_V_2_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":31, "type": "signal", "bundle":{"name": "win01_V_2", "role": "q0" }} , 
 	{ "name": "win01_V_3_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "win01_V_3", "role": "address0" }} , 
 	{ "name": "win01_V_3_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "win01_V_3", "role": "ce0" }} , 
 	{ "name": "win01_V_3_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":31, "type": "signal", "bundle":{"name": "win01_V_3", "role": "q0" }} , 
 	{ "name": "win01_V_4_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "win01_V_4", "role": "address0" }} , 
 	{ "name": "win01_V_4_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "win01_V_4", "role": "ce0" }} , 
 	{ "name": "win01_V_4_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":31, "type": "signal", "bundle":{"name": "win01_V_4", "role": "q0" }} , 
 	{ "name": "win01_V_5_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "win01_V_5", "role": "address0" }} , 
 	{ "name": "win01_V_5_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "win01_V_5", "role": "ce0" }} , 
 	{ "name": "win01_V_5_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":31, "type": "signal", "bundle":{"name": "win01_V_5", "role": "q0" }} , 
 	{ "name": "phi_ln818_out", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "phi_ln818_out", "role": "default" }} , 
 	{ "name": "phi_ln818_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "phi_ln818_out", "role": "ap_vld" }} , 
 	{ "name": "phi_ln818_1_out", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "phi_ln818_1_out", "role": "default" }} , 
 	{ "name": "phi_ln818_1_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "phi_ln818_1_out", "role": "ap_vld" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "3", "4", "5"],
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
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.denoiser_w_L1_W_V_U", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mux_73_32_1_1_U43", "Parent" : "0"},
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_23s_40s_62_1_1_U44", "Parent" : "0"},
	{"ID" : "4", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_23s_40s_62_1_1_U45", "Parent" : "0"},
	{"ID" : "5", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.flow_control_loop_pipe_sequential_init_U", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
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
		denoiser_w_L1_W_V {Type I LastRead -1 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "453", "Max" : "453"}
	, {"Name" : "Interval", "Min" : "453", "Max" : "453"}
]}

set PipelineEnableSignalInfo {[
	{"Pipeline" : "0", "EnableSignal" : "ap_enable_pp0"}
]}

set Spec2ImplPortList { 
	sext_ln108 { ap_none {  { sext_ln108 in_data 0 25 } } }
	sext_ln107 { ap_none {  { sext_ln107 in_data 0 25 } } }
	oc_base { ap_none {  { oc_base in_data 0 7 } } }
	zext_ln837_3 { ap_none {  { zext_ln837_3 in_data 0 13 } } }
	win01_V_1 { ap_memory {  { win01_V_1_address0 mem_address 1 6 }  { win01_V_1_ce0 mem_ce 1 1 }  { win01_V_1_q0 in_data 0 31 } } }
	win01_V_2 { ap_memory {  { win01_V_2_address0 mem_address 1 6 }  { win01_V_2_ce0 mem_ce 1 1 }  { win01_V_2_q0 in_data 0 31 } } }
	win01_V_3 { ap_memory {  { win01_V_3_address0 mem_address 1 6 }  { win01_V_3_ce0 mem_ce 1 1 }  { win01_V_3_q0 in_data 0 31 } } }
	win01_V_4 { ap_memory {  { win01_V_4_address0 mem_address 1 6 }  { win01_V_4_ce0 mem_ce 1 1 }  { win01_V_4_q0 in_data 0 31 } } }
	win01_V_5 { ap_memory {  { win01_V_5_address0 mem_address 1 6 }  { win01_V_5_ce0 mem_ce 1 1 }  { win01_V_5_q0 in_data 0 31 } } }
	phi_ln818_out { ap_vld {  { phi_ln818_out out_data 1 32 }  { phi_ln818_out_ap_vld out_vld 1 1 } } }
	phi_ln818_1_out { ap_vld {  { phi_ln818_1_out out_data 1 32 }  { phi_ln818_1_out_ap_vld out_vld 1 1 } } }
}
