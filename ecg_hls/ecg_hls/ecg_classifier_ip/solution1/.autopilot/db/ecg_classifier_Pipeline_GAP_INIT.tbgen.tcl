set moduleName ecg_classifier_Pipeline_GAP_INIT
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
set C_modelName {ecg_classifier_Pipeline_GAP_INIT}
set C_modelType { void 0 }
set C_modelArgList {
	{ gap_buf_V_1 int 32 regular {array 96 { 0 } 0 1 }  }
	{ gap_buf_V int 32 regular {array 96 { 0 } 0 1 }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "gap_buf_V_1", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "gap_buf_V", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY"} ]}
# RTL Port declarations: 
set portNum 14
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
	{ gap_buf_V_address0 sc_out sc_lv 7 signal 1 } 
	{ gap_buf_V_ce0 sc_out sc_logic 1 signal 1 } 
	{ gap_buf_V_we0 sc_out sc_logic 1 signal 1 } 
	{ gap_buf_V_d0 sc_out sc_lv 32 signal 1 } 
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
 	{ "name": "gap_buf_V_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":7, "type": "signal", "bundle":{"name": "gap_buf_V", "role": "address0" }} , 
 	{ "name": "gap_buf_V_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gap_buf_V", "role": "ce0" }} , 
 	{ "name": "gap_buf_V_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gap_buf_V", "role": "we0" }} , 
 	{ "name": "gap_buf_V_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "gap_buf_V", "role": "d0" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1"],
		"CDFG" : "ecg_classifier_Pipeline_GAP_INIT",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "194", "EstimateLatencyMax" : "194",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "gap_buf_V_1", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "gap_buf_V", "Type" : "Memory", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "GAP_INIT", "PipelineType" : "NotSupport"}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.flow_control_loop_pipe_sequential_init_U", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	ecg_classifier_Pipeline_GAP_INIT {
		gap_buf_V_1 {Type O LastRead -1 FirstWrite 0}
		gap_buf_V {Type O LastRead -1 FirstWrite 0}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "194", "Max" : "194"}
	, {"Name" : "Interval", "Min" : "194", "Max" : "194"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	gap_buf_V_1 { ap_memory {  { gap_buf_V_1_address0 mem_address 1 7 }  { gap_buf_V_1_ce0 mem_ce 1 1 }  { gap_buf_V_1_we0 mem_we 1 1 }  { gap_buf_V_1_d0 mem_din 1 32 } } }
	gap_buf_V { ap_memory {  { gap_buf_V_address0 mem_address 1 7 }  { gap_buf_V_ce0 mem_ce 1 1 }  { gap_buf_V_we0 mem_we 1 1 }  { gap_buf_V_d0 mem_din 1 32 } } }
}
