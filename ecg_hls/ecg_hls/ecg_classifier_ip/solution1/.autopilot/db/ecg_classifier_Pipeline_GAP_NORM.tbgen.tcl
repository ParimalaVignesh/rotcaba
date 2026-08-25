set moduleName ecg_classifier_Pipeline_GAP_NORM
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
set C_modelName {ecg_classifier_Pipeline_GAP_NORM}
set C_modelType { void 0 }
set C_modelArgList {
	{ gap_buf_V_1 int 32 regular {array 96 { 2 } 1 1 }  }
	{ gap_buf_V int 32 regular {array 96 { 2 } 1 1 }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "gap_buf_V_1", "interface" : "memory", "bitwidth" : 32, "direction" : "READWRITE"} , 
 	{ "Name" : "gap_buf_V", "interface" : "memory", "bitwidth" : 32, "direction" : "READWRITE"} ]}
# RTL Port declarations: 
set portNum 16
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ gap_buf_V_1_address0 sc_out sc_lv 7 signal 0 } 
	{ gap_buf_V_1_ce0 sc_out sc_logic 1 signal 0 } 
	{ gap_buf_V_1_we0 sc_out sc_logic 1 signal 0 } 
	{ gap_buf_V_1_d0 sc_out sc_lv 32 signal 0 } 
	{ gap_buf_V_1_q0 sc_in sc_lv 32 signal 0 } 
	{ gap_buf_V_address0 sc_out sc_lv 7 signal 1 } 
	{ gap_buf_V_ce0 sc_out sc_logic 1 signal 1 } 
	{ gap_buf_V_we0 sc_out sc_logic 1 signal 1 } 
	{ gap_buf_V_d0 sc_out sc_lv 32 signal 1 } 
	{ gap_buf_V_q0 sc_in sc_lv 32 signal 1 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "gap_buf_V_1_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":7, "type": "signal", "bundle":{"name": "gap_buf_V_1", "role": "address0" }} , 
 	{ "name": "gap_buf_V_1_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gap_buf_V_1", "role": "ce0" }} , 
 	{ "name": "gap_buf_V_1_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gap_buf_V_1", "role": "we0" }} , 
 	{ "name": "gap_buf_V_1_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "gap_buf_V_1", "role": "d0" }} , 
 	{ "name": "gap_buf_V_1_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "gap_buf_V_1", "role": "q0" }} , 
 	{ "name": "gap_buf_V_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":7, "type": "signal", "bundle":{"name": "gap_buf_V", "role": "address0" }} , 
 	{ "name": "gap_buf_V_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gap_buf_V", "role": "ce0" }} , 
 	{ "name": "gap_buf_V_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gap_buf_V", "role": "we0" }} , 
 	{ "name": "gap_buf_V_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "gap_buf_V", "role": "d0" }} , 
 	{ "name": "gap_buf_V_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "gap_buf_V", "role": "q0" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "3"],
		"CDFG" : "ecg_classifier_Pipeline_GAP_NORM",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "387", "EstimateLatencyMax" : "387",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"DependenceCheck" : [
			{"FromInitialState" : "ap_enable_state1_pp0_iter0_stage0", "FromInitialIteration" : "ap_enable_reg_pp0_iter0", "FromInitialOperation" : "ap_enable_operation_22", "FromInitialSV" : "0", "FromFinalState" : "ap_enable_state2_pp0_iter0_stage1", "FromFinalIteration" : "ap_enable_reg_pp0_iter0", "FromFinalOperation" : "ap_enable_operation_27", "FromFinalSV" : "1", "FromAddress" : "gap_buf_V_address0", "FromType" : "R", "ToInitialState" : "ap_enable_state4_pp0_iter1_stage1", "ToInitialIteration" : "ap_enable_reg_pp0_iter1", "ToInitialNextIteration" : "null", "ToInitialOperation" : "ap_enable_operation_36", "ToInitialSV" : "3", "ToFinalState" : "ap_enable_state4_pp0_iter1_stage1", "ToFinalIteration" : "ap_enable_reg_pp0_iter1", "ToFinalOperation" : "ap_enable_operation_36", "ToFinalSV" : "3", "ToAddress" : "gap_buf_V_address0", "ToType" : "W", "PipelineBlock" : "ap_block_pp0", "AddressWidth" : "7", "II" : "2", "Pragma" : "(src/ecg_classifier.cpp:282:9)", "Type" : "WAR"},
			{"FromInitialState" : "ap_enable_state1_pp0_iter0_stage0", "FromInitialIteration" : "ap_enable_reg_pp0_iter0", "FromInitialOperation" : "ap_enable_operation_23", "FromInitialSV" : "0", "FromFinalState" : "ap_enable_state2_pp0_iter0_stage1", "FromFinalIteration" : "ap_enable_reg_pp0_iter0", "FromFinalOperation" : "ap_enable_operation_28", "FromFinalSV" : "1", "FromAddress" : "gap_buf_V_1_address0", "FromType" : "R", "ToInitialState" : "ap_enable_state4_pp0_iter1_stage1", "ToInitialIteration" : "ap_enable_reg_pp0_iter1", "ToInitialNextIteration" : "null", "ToInitialOperation" : "ap_enable_operation_38", "ToInitialSV" : "3", "ToFinalState" : "ap_enable_state4_pp0_iter1_stage1", "ToFinalIteration" : "ap_enable_reg_pp0_iter1", "ToFinalOperation" : "ap_enable_operation_38", "ToFinalSV" : "3", "ToAddress" : "gap_buf_V_1_address0", "ToType" : "W", "PipelineBlock" : "ap_block_pp0", "AddressWidth" : "7", "II" : "2", "Pragma" : "(src/ecg_classifier.cpp:282:9)", "Type" : "WAR"},
			{"FromInitialState" : "ap_enable_state4_pp0_iter1_stage1", "FromInitialIteration" : "ap_enable_reg_pp0_iter1", "FromInitialOperation" : "ap_enable_operation_36", "FromInitialSV" : "3", "FromFinalState" : "ap_enable_state4_pp0_iter1_stage1", "FromFinalIteration" : "ap_enable_reg_pp0_iter1", "FromFinalOperation" : "ap_enable_operation_36", "FromFinalSV" : "3", "FromAddress" : "gap_buf_V_address0", "FromType" : "W", "ToInitialState" : "ap_enable_state1_pp0_iter0_stage0", "ToInitialIteration" : "ap_enable_reg_pp0_iter0", "ToInitialNextIteration" : "ap_enable_reg_pp0_iter1", "ToInitialOperation" : "ap_enable_operation_22", "ToInitialSV" : "0", "ToFinalState" : "ap_enable_state2_pp0_iter0_stage1", "ToFinalIteration" : "ap_enable_reg_pp0_iter0", "ToFinalOperation" : "ap_enable_operation_27", "ToFinalSV" : "1", "ToAddress" : "gap_buf_V_address0", "ToType" : "R", "PipelineBlock" : "ap_block_pp0", "AddressWidth" : "7", "II" : "2", "Pragma" : "(src/ecg_classifier.cpp:282:9)", "Type" : "RAW", "StateEnableSignalListForFifoShift" : ["ap_enable_state1_pp0_iter0_stage0"]},
			{"FromInitialState" : "ap_enable_state4_pp0_iter1_stage1", "FromInitialIteration" : "ap_enable_reg_pp0_iter1", "FromInitialOperation" : "ap_enable_operation_38", "FromInitialSV" : "3", "FromFinalState" : "ap_enable_state4_pp0_iter1_stage1", "FromFinalIteration" : "ap_enable_reg_pp0_iter1", "FromFinalOperation" : "ap_enable_operation_38", "FromFinalSV" : "3", "FromAddress" : "gap_buf_V_1_address0", "FromType" : "W", "ToInitialState" : "ap_enable_state1_pp0_iter0_stage0", "ToInitialIteration" : "ap_enable_reg_pp0_iter0", "ToInitialNextIteration" : "ap_enable_reg_pp0_iter1", "ToInitialOperation" : "ap_enable_operation_23", "ToInitialSV" : "0", "ToFinalState" : "ap_enable_state2_pp0_iter0_stage1", "ToFinalIteration" : "ap_enable_reg_pp0_iter0", "ToFinalOperation" : "ap_enable_operation_28", "ToFinalSV" : "1", "ToAddress" : "gap_buf_V_1_address0", "ToType" : "R", "PipelineBlock" : "ap_block_pp0", "AddressWidth" : "7", "II" : "2", "Pragma" : "(src/ecg_classifier.cpp:282:9)", "Type" : "RAW", "StateEnableSignalListForFifoShift" : ["ap_enable_state1_pp0_iter0_stage0"]}],
		"Port" : [
			{"Name" : "gap_buf_V_1", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "gap_buf_V", "Type" : "Memory", "Direction" : "IO"}],
		"Loop" : [
			{"Name" : "GAP_NORM", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "2", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage1", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage1_subdone", "QuitState" : "ap_ST_fsm_pp0_stage1", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage1_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mux_21_32_1_1_U144", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_32s_12ns_44_1_1_U145", "Parent" : "0"},
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.flow_control_loop_pipe_sequential_init_U", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	ecg_classifier_Pipeline_GAP_NORM {
		gap_buf_V_1 {Type IO LastRead 0 FirstWrite 3}
		gap_buf_V {Type IO LastRead 0 FirstWrite 3}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "387", "Max" : "387"}
	, {"Name" : "Interval", "Min" : "387", "Max" : "387"}
]}

set PipelineEnableSignalInfo {[
	{"Pipeline" : "0", "EnableSignal" : "ap_enable_pp0"}
]}

set Spec2ImplPortList { 
	gap_buf_V_1 { ap_memory {  { gap_buf_V_1_address0 mem_address 1 7 }  { gap_buf_V_1_ce0 mem_ce 1 1 }  { gap_buf_V_1_we0 mem_we 1 1 }  { gap_buf_V_1_d0 mem_din 1 32 }  { gap_buf_V_1_q0 in_data 0 32 } } }
	gap_buf_V { ap_memory {  { gap_buf_V_address0 mem_address 1 7 }  { gap_buf_V_ce0 mem_ce 1 1 }  { gap_buf_V_we0 mem_we 1 1 }  { gap_buf_V_d0 mem_din 1 32 }  { gap_buf_V_q0 in_data 0 32 } } }
}
