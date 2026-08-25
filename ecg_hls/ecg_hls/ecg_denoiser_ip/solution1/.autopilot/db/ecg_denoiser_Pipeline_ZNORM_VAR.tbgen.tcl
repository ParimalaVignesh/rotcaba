set moduleName ecg_denoiser_Pipeline_ZNORM_VAR
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
set C_modelName {ecg_denoiser_Pipeline_ZNORM_VAR}
set C_modelType { void 0 }
set C_modelArgList {
	{ input_buf_V int 32 regular {array 180 { 1 } 1 1 }  }
	{ input_buf_V_1 int 32 regular {array 180 { 1 } 1 1 }  }
	{ mean_fx_V int 32 regular  }
	{ var_acc_V_2_out int 48 regular {pointer 1}  }
}
set C_modelArgMapList {[ 
	{ "Name" : "input_buf_V", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "input_buf_V_1", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "mean_fx_V", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "var_acc_V_2_out", "interface" : "wire", "bitwidth" : 48, "direction" : "WRITEONLY"} ]}
# RTL Port declarations: 
set portNum 15
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ input_buf_V_address0 sc_out sc_lv 8 signal 0 } 
	{ input_buf_V_ce0 sc_out sc_logic 1 signal 0 } 
	{ input_buf_V_q0 sc_in sc_lv 32 signal 0 } 
	{ input_buf_V_1_address0 sc_out sc_lv 8 signal 1 } 
	{ input_buf_V_1_ce0 sc_out sc_logic 1 signal 1 } 
	{ input_buf_V_1_q0 sc_in sc_lv 32 signal 1 } 
	{ mean_fx_V sc_in sc_lv 32 signal 2 } 
	{ var_acc_V_2_out sc_out sc_lv 48 signal 3 } 
	{ var_acc_V_2_out_ap_vld sc_out sc_logic 1 outvld 3 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "input_buf_V_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "input_buf_V", "role": "address0" }} , 
 	{ "name": "input_buf_V_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "input_buf_V", "role": "ce0" }} , 
 	{ "name": "input_buf_V_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "input_buf_V", "role": "q0" }} , 
 	{ "name": "input_buf_V_1_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "input_buf_V_1", "role": "address0" }} , 
 	{ "name": "input_buf_V_1_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "input_buf_V_1", "role": "ce0" }} , 
 	{ "name": "input_buf_V_1_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "input_buf_V_1", "role": "q0" }} , 
 	{ "name": "mean_fx_V", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "mean_fx_V", "role": "default" }} , 
 	{ "name": "var_acc_V_2_out", "direction": "out", "datatype": "sc_lv", "bitwidth":48, "type": "signal", "bundle":{"name": "var_acc_V_2_out", "role": "default" }} , 
 	{ "name": "var_acc_V_2_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "var_acc_V_2_out", "role": "ap_vld" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "3"],
		"CDFG" : "ecg_denoiser_Pipeline_ZNORM_VAR",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "364", "EstimateLatencyMax" : "364",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "input_buf_V", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "input_buf_V_1", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "mean_fx_V", "Type" : "None", "Direction" : "I"},
			{"Name" : "var_acc_V_2_out", "Type" : "Vld", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "ZNORM_VAR", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter3", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter3", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mux_21_32_1_1_U15", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_40s_40s_72_1_1_U16", "Parent" : "0"},
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.flow_control_loop_pipe_sequential_init_U", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	ecg_denoiser_Pipeline_ZNORM_VAR {
		input_buf_V {Type I LastRead 0 FirstWrite -1}
		input_buf_V_1 {Type I LastRead 0 FirstWrite -1}
		mean_fx_V {Type I LastRead 0 FirstWrite -1}
		var_acc_V_2_out {Type O LastRead -1 FirstWrite 2}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "364", "Max" : "364"}
	, {"Name" : "Interval", "Min" : "364", "Max" : "364"}
]}

set PipelineEnableSignalInfo {[
	{"Pipeline" : "0", "EnableSignal" : "ap_enable_pp0"}
]}

set Spec2ImplPortList { 
	input_buf_V { ap_memory {  { input_buf_V_address0 mem_address 1 8 }  { input_buf_V_ce0 mem_ce 1 1 }  { input_buf_V_q0 in_data 0 32 } } }
	input_buf_V_1 { ap_memory {  { input_buf_V_1_address0 mem_address 1 8 }  { input_buf_V_1_ce0 mem_ce 1 1 }  { input_buf_V_1_q0 in_data 0 32 } } }
	mean_fx_V { ap_none {  { mean_fx_V in_data 0 32 } } }
	var_acc_V_2_out { ap_vld {  { var_acc_V_2_out out_data 1 48 }  { var_acc_V_2_out_ap_vld out_vld 1 1 } } }
}
