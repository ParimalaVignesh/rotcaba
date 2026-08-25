set moduleName ecg_classifier_Pipeline_D0_IC
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
set C_modelName {ecg_classifier_Pipeline_D0_IC}
set C_modelType { void 0 }
set C_modelArgList {
	{ sext_ln289 int 23 regular  }
	{ sub_ln837_2 int 15 regular  }
	{ gap_buf_V int 32 regular {array 96 { 1 } 1 1 }  }
	{ gap_buf_V_1 int 32 regular {array 96 { 1 } 1 1 }  }
	{ x_V_8_out int 32 regular {pointer 1}  }
}
set C_modelArgMapList {[ 
	{ "Name" : "sext_ln289", "interface" : "wire", "bitwidth" : 23, "direction" : "READONLY"} , 
 	{ "Name" : "sub_ln837_2", "interface" : "wire", "bitwidth" : 15, "direction" : "READONLY"} , 
 	{ "Name" : "gap_buf_V", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "gap_buf_V_1", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "x_V_8_out", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} ]}
# RTL Port declarations: 
set portNum 16
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ sext_ln289 sc_in sc_lv 23 signal 0 } 
	{ sub_ln837_2 sc_in sc_lv 15 signal 1 } 
	{ gap_buf_V_address0 sc_out sc_lv 7 signal 2 } 
	{ gap_buf_V_ce0 sc_out sc_logic 1 signal 2 } 
	{ gap_buf_V_q0 sc_in sc_lv 32 signal 2 } 
	{ gap_buf_V_1_address0 sc_out sc_lv 7 signal 3 } 
	{ gap_buf_V_1_ce0 sc_out sc_logic 1 signal 3 } 
	{ gap_buf_V_1_q0 sc_in sc_lv 32 signal 3 } 
	{ x_V_8_out sc_out sc_lv 32 signal 4 } 
	{ x_V_8_out_ap_vld sc_out sc_logic 1 outvld 4 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "sext_ln289", "direction": "in", "datatype": "sc_lv", "bitwidth":23, "type": "signal", "bundle":{"name": "sext_ln289", "role": "default" }} , 
 	{ "name": "sub_ln837_2", "direction": "in", "datatype": "sc_lv", "bitwidth":15, "type": "signal", "bundle":{"name": "sub_ln837_2", "role": "default" }} , 
 	{ "name": "gap_buf_V_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":7, "type": "signal", "bundle":{"name": "gap_buf_V", "role": "address0" }} , 
 	{ "name": "gap_buf_V_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gap_buf_V", "role": "ce0" }} , 
 	{ "name": "gap_buf_V_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "gap_buf_V", "role": "q0" }} , 
 	{ "name": "gap_buf_V_1_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":7, "type": "signal", "bundle":{"name": "gap_buf_V_1", "role": "address0" }} , 
 	{ "name": "gap_buf_V_1_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gap_buf_V_1", "role": "ce0" }} , 
 	{ "name": "gap_buf_V_1_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "gap_buf_V_1", "role": "q0" }} , 
 	{ "name": "x_V_8_out", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "x_V_8_out", "role": "default" }} , 
 	{ "name": "x_V_8_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "x_V_8_out", "role": "ap_vld" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "3", "4"],
		"CDFG" : "ecg_classifier_Pipeline_D0_IC",
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
			{"Name" : "sext_ln289", "Type" : "None", "Direction" : "I"},
			{"Name" : "sub_ln837_2", "Type" : "None", "Direction" : "I"},
			{"Name" : "gap_buf_V", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "gap_buf_V_1", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "x_V_8_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "clf_w_L5_W_V", "Type" : "Memory", "Direction" : "I"}],
		"Loop" : [
			{"Name" : "D0_IC", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter3", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter3", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.clf_w_L5_W_V_U", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mux_21_32_1_1_U149", "Parent" : "0"},
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_24s_40s_63_1_1_U150", "Parent" : "0"},
	{"ID" : "4", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.flow_control_loop_pipe_sequential_init_U", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	ecg_classifier_Pipeline_D0_IC {
		sext_ln289 {Type I LastRead 0 FirstWrite -1}
		sub_ln837_2 {Type I LastRead 0 FirstWrite -1}
		gap_buf_V {Type I LastRead 0 FirstWrite -1}
		gap_buf_V_1 {Type I LastRead 0 FirstWrite -1}
		x_V_8_out {Type O LastRead -1 FirstWrite 2}
		clf_w_L5_W_V {Type I LastRead -1 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "196", "Max" : "196"}
	, {"Name" : "Interval", "Min" : "196", "Max" : "196"}
]}

set PipelineEnableSignalInfo {[
	{"Pipeline" : "0", "EnableSignal" : "ap_enable_pp0"}
]}

set Spec2ImplPortList { 
	sext_ln289 { ap_none {  { sext_ln289 in_data 0 23 } } }
	sub_ln837_2 { ap_none {  { sub_ln837_2 in_data 0 15 } } }
	gap_buf_V { ap_memory {  { gap_buf_V_address0 mem_address 1 7 }  { gap_buf_V_ce0 mem_ce 1 1 }  { gap_buf_V_q0 in_data 0 32 } } }
	gap_buf_V_1 { ap_memory {  { gap_buf_V_1_address0 mem_address 1 7 }  { gap_buf_V_1_ce0 mem_ce 1 1 }  { gap_buf_V_1_q0 in_data 0 32 } } }
	x_V_8_out { ap_vld {  { x_V_8_out out_data 1 32 }  { x_V_8_out_ap_vld out_vld 1 1 } } }
}
