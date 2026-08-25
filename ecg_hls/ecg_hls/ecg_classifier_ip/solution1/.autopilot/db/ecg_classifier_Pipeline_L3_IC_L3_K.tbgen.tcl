set moduleName ecg_classifier_Pipeline_L3_IC_L3_K
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
set C_modelName {ecg_classifier_Pipeline_L3_IC_L3_K}
set C_modelType { void 0 }
set C_modelArgList {
	{ sext_ln226 int 26 regular  }
	{ sext_ln225 int 26 regular  }
	{ oc_base int 7 regular  }
	{ zext_ln837_8 int 14 regular  }
	{ buf2_circ_V int 15 regular {array 64 { 1 3 } 1 1 }  }
	{ buf2_circ_V_1 int 15 regular {array 64 { 1 3 } 1 1 }  }
	{ buf2_circ_V_2 int 15 regular {array 64 { 1 3 } 1 1 }  }
	{ buf2_circ_V_3 int 15 regular {array 64 { 1 3 } 1 1 }  }
	{ buf2_circ_V_4 int 15 regular {array 64 { 1 3 } 1 1 }  }
	{ buf2_circ_V_5 int 15 regular {array 64 { 1 3 } 1 1 }  }
	{ buf2_circ_V_6 int 15 regular {array 64 { 1 3 } 1 1 }  }
	{ buf2_circ_V_7 int 15 regular {array 64 { 1 3 } 1 1 }  }
	{ buf2_circ_V_8 int 15 regular {array 64 { 1 3 } 1 1 }  }
	{ buf2_circ_V_9 int 15 regular {array 64 { 1 3 } 1 1 }  }
	{ add_ln233_1 int 8 regular  }
	{ phi_ln818_1_out int 32 regular {pointer 1}  }
	{ phi_ln818_2_out int 32 regular {pointer 1}  }
}
set C_modelArgMapList {[ 
	{ "Name" : "sext_ln226", "interface" : "wire", "bitwidth" : 26, "direction" : "READONLY"} , 
 	{ "Name" : "sext_ln225", "interface" : "wire", "bitwidth" : 26, "direction" : "READONLY"} , 
 	{ "Name" : "oc_base", "interface" : "wire", "bitwidth" : 7, "direction" : "READONLY"} , 
 	{ "Name" : "zext_ln837_8", "interface" : "wire", "bitwidth" : 14, "direction" : "READONLY"} , 
 	{ "Name" : "buf2_circ_V", "interface" : "memory", "bitwidth" : 15, "direction" : "READONLY"} , 
 	{ "Name" : "buf2_circ_V_1", "interface" : "memory", "bitwidth" : 15, "direction" : "READONLY"} , 
 	{ "Name" : "buf2_circ_V_2", "interface" : "memory", "bitwidth" : 15, "direction" : "READONLY"} , 
 	{ "Name" : "buf2_circ_V_3", "interface" : "memory", "bitwidth" : 15, "direction" : "READONLY"} , 
 	{ "Name" : "buf2_circ_V_4", "interface" : "memory", "bitwidth" : 15, "direction" : "READONLY"} , 
 	{ "Name" : "buf2_circ_V_5", "interface" : "memory", "bitwidth" : 15, "direction" : "READONLY"} , 
 	{ "Name" : "buf2_circ_V_6", "interface" : "memory", "bitwidth" : 15, "direction" : "READONLY"} , 
 	{ "Name" : "buf2_circ_V_7", "interface" : "memory", "bitwidth" : 15, "direction" : "READONLY"} , 
 	{ "Name" : "buf2_circ_V_8", "interface" : "memory", "bitwidth" : 15, "direction" : "READONLY"} , 
 	{ "Name" : "buf2_circ_V_9", "interface" : "memory", "bitwidth" : 15, "direction" : "READONLY"} , 
 	{ "Name" : "add_ln233_1", "interface" : "wire", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "phi_ln818_1_out", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "phi_ln818_2_out", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} ]}
# RTL Port declarations: 
set portNum 45
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ sext_ln226 sc_in sc_lv 26 signal 0 } 
	{ sext_ln225 sc_in sc_lv 26 signal 1 } 
	{ oc_base sc_in sc_lv 7 signal 2 } 
	{ zext_ln837_8 sc_in sc_lv 14 signal 3 } 
	{ buf2_circ_V_address0 sc_out sc_lv 6 signal 4 } 
	{ buf2_circ_V_ce0 sc_out sc_logic 1 signal 4 } 
	{ buf2_circ_V_q0 sc_in sc_lv 15 signal 4 } 
	{ buf2_circ_V_1_address0 sc_out sc_lv 6 signal 5 } 
	{ buf2_circ_V_1_ce0 sc_out sc_logic 1 signal 5 } 
	{ buf2_circ_V_1_q0 sc_in sc_lv 15 signal 5 } 
	{ buf2_circ_V_2_address0 sc_out sc_lv 6 signal 6 } 
	{ buf2_circ_V_2_ce0 sc_out sc_logic 1 signal 6 } 
	{ buf2_circ_V_2_q0 sc_in sc_lv 15 signal 6 } 
	{ buf2_circ_V_3_address0 sc_out sc_lv 6 signal 7 } 
	{ buf2_circ_V_3_ce0 sc_out sc_logic 1 signal 7 } 
	{ buf2_circ_V_3_q0 sc_in sc_lv 15 signal 7 } 
	{ buf2_circ_V_4_address0 sc_out sc_lv 6 signal 8 } 
	{ buf2_circ_V_4_ce0 sc_out sc_logic 1 signal 8 } 
	{ buf2_circ_V_4_q0 sc_in sc_lv 15 signal 8 } 
	{ buf2_circ_V_5_address0 sc_out sc_lv 6 signal 9 } 
	{ buf2_circ_V_5_ce0 sc_out sc_logic 1 signal 9 } 
	{ buf2_circ_V_5_q0 sc_in sc_lv 15 signal 9 } 
	{ buf2_circ_V_6_address0 sc_out sc_lv 6 signal 10 } 
	{ buf2_circ_V_6_ce0 sc_out sc_logic 1 signal 10 } 
	{ buf2_circ_V_6_q0 sc_in sc_lv 15 signal 10 } 
	{ buf2_circ_V_7_address0 sc_out sc_lv 6 signal 11 } 
	{ buf2_circ_V_7_ce0 sc_out sc_logic 1 signal 11 } 
	{ buf2_circ_V_7_q0 sc_in sc_lv 15 signal 11 } 
	{ buf2_circ_V_8_address0 sc_out sc_lv 6 signal 12 } 
	{ buf2_circ_V_8_ce0 sc_out sc_logic 1 signal 12 } 
	{ buf2_circ_V_8_q0 sc_in sc_lv 15 signal 12 } 
	{ buf2_circ_V_9_address0 sc_out sc_lv 6 signal 13 } 
	{ buf2_circ_V_9_ce0 sc_out sc_logic 1 signal 13 } 
	{ buf2_circ_V_9_q0 sc_in sc_lv 15 signal 13 } 
	{ add_ln233_1 sc_in sc_lv 8 signal 14 } 
	{ phi_ln818_1_out sc_out sc_lv 32 signal 15 } 
	{ phi_ln818_1_out_ap_vld sc_out sc_logic 1 outvld 15 } 
	{ phi_ln818_2_out sc_out sc_lv 32 signal 16 } 
	{ phi_ln818_2_out_ap_vld sc_out sc_logic 1 outvld 16 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "sext_ln226", "direction": "in", "datatype": "sc_lv", "bitwidth":26, "type": "signal", "bundle":{"name": "sext_ln226", "role": "default" }} , 
 	{ "name": "sext_ln225", "direction": "in", "datatype": "sc_lv", "bitwidth":26, "type": "signal", "bundle":{"name": "sext_ln225", "role": "default" }} , 
 	{ "name": "oc_base", "direction": "in", "datatype": "sc_lv", "bitwidth":7, "type": "signal", "bundle":{"name": "oc_base", "role": "default" }} , 
 	{ "name": "zext_ln837_8", "direction": "in", "datatype": "sc_lv", "bitwidth":14, "type": "signal", "bundle":{"name": "zext_ln837_8", "role": "default" }} , 
 	{ "name": "buf2_circ_V_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "buf2_circ_V", "role": "address0" }} , 
 	{ "name": "buf2_circ_V_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "buf2_circ_V", "role": "ce0" }} , 
 	{ "name": "buf2_circ_V_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":15, "type": "signal", "bundle":{"name": "buf2_circ_V", "role": "q0" }} , 
 	{ "name": "buf2_circ_V_1_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "buf2_circ_V_1", "role": "address0" }} , 
 	{ "name": "buf2_circ_V_1_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "buf2_circ_V_1", "role": "ce0" }} , 
 	{ "name": "buf2_circ_V_1_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":15, "type": "signal", "bundle":{"name": "buf2_circ_V_1", "role": "q0" }} , 
 	{ "name": "buf2_circ_V_2_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "buf2_circ_V_2", "role": "address0" }} , 
 	{ "name": "buf2_circ_V_2_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "buf2_circ_V_2", "role": "ce0" }} , 
 	{ "name": "buf2_circ_V_2_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":15, "type": "signal", "bundle":{"name": "buf2_circ_V_2", "role": "q0" }} , 
 	{ "name": "buf2_circ_V_3_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "buf2_circ_V_3", "role": "address0" }} , 
 	{ "name": "buf2_circ_V_3_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "buf2_circ_V_3", "role": "ce0" }} , 
 	{ "name": "buf2_circ_V_3_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":15, "type": "signal", "bundle":{"name": "buf2_circ_V_3", "role": "q0" }} , 
 	{ "name": "buf2_circ_V_4_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "buf2_circ_V_4", "role": "address0" }} , 
 	{ "name": "buf2_circ_V_4_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "buf2_circ_V_4", "role": "ce0" }} , 
 	{ "name": "buf2_circ_V_4_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":15, "type": "signal", "bundle":{"name": "buf2_circ_V_4", "role": "q0" }} , 
 	{ "name": "buf2_circ_V_5_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "buf2_circ_V_5", "role": "address0" }} , 
 	{ "name": "buf2_circ_V_5_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "buf2_circ_V_5", "role": "ce0" }} , 
 	{ "name": "buf2_circ_V_5_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":15, "type": "signal", "bundle":{"name": "buf2_circ_V_5", "role": "q0" }} , 
 	{ "name": "buf2_circ_V_6_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "buf2_circ_V_6", "role": "address0" }} , 
 	{ "name": "buf2_circ_V_6_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "buf2_circ_V_6", "role": "ce0" }} , 
 	{ "name": "buf2_circ_V_6_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":15, "type": "signal", "bundle":{"name": "buf2_circ_V_6", "role": "q0" }} , 
 	{ "name": "buf2_circ_V_7_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "buf2_circ_V_7", "role": "address0" }} , 
 	{ "name": "buf2_circ_V_7_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "buf2_circ_V_7", "role": "ce0" }} , 
 	{ "name": "buf2_circ_V_7_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":15, "type": "signal", "bundle":{"name": "buf2_circ_V_7", "role": "q0" }} , 
 	{ "name": "buf2_circ_V_8_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "buf2_circ_V_8", "role": "address0" }} , 
 	{ "name": "buf2_circ_V_8_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "buf2_circ_V_8", "role": "ce0" }} , 
 	{ "name": "buf2_circ_V_8_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":15, "type": "signal", "bundle":{"name": "buf2_circ_V_8", "role": "q0" }} , 
 	{ "name": "buf2_circ_V_9_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "buf2_circ_V_9", "role": "address0" }} , 
 	{ "name": "buf2_circ_V_9_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "buf2_circ_V_9", "role": "ce0" }} , 
 	{ "name": "buf2_circ_V_9_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":15, "type": "signal", "bundle":{"name": "buf2_circ_V_9", "role": "q0" }} , 
 	{ "name": "add_ln233_1", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "add_ln233_1", "role": "default" }} , 
 	{ "name": "phi_ln818_1_out", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "phi_ln818_1_out", "role": "default" }} , 
 	{ "name": "phi_ln818_1_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "phi_ln818_1_out", "role": "ap_vld" }} , 
 	{ "name": "phi_ln818_2_out", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "phi_ln818_2_out", "role": "default" }} , 
 	{ "name": "phi_ln818_2_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "phi_ln818_2_out", "role": "ap_vld" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "3", "4", "5", "6", "7", "8", "9", "10", "11"],
		"CDFG" : "ecg_classifier_Pipeline_L3_IC_L3_K",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "678", "EstimateLatencyMax" : "678",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "sext_ln226", "Type" : "None", "Direction" : "I"},
			{"Name" : "sext_ln225", "Type" : "None", "Direction" : "I"},
			{"Name" : "oc_base", "Type" : "None", "Direction" : "I"},
			{"Name" : "zext_ln837_8", "Type" : "None", "Direction" : "I"},
			{"Name" : "buf2_circ_V", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "buf2_circ_V_1", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "buf2_circ_V_2", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "buf2_circ_V_3", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "buf2_circ_V_4", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "buf2_circ_V_5", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "buf2_circ_V_6", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "buf2_circ_V_7", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "buf2_circ_V_8", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "buf2_circ_V_9", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "add_ln233_1", "Type" : "None", "Direction" : "I"},
			{"Name" : "phi_ln818_1_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "phi_ln818_2_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "clf_w_L3_W_V", "Type" : "Memory", "Direction" : "I"}],
		"Loop" : [
			{"Name" : "L3_IC_L3_K", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter37", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter37", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.clf_w_L3_W_V_U", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.urem_32s_4ns_3_36_1_U91", "Parent" : "0"},
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mux_21_15_1_1_U92", "Parent" : "0"},
	{"ID" : "4", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mux_21_15_1_1_U93", "Parent" : "0"},
	{"ID" : "5", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mux_21_15_1_1_U94", "Parent" : "0"},
	{"ID" : "6", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mux_21_15_1_1_U95", "Parent" : "0"},
	{"ID" : "7", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mux_21_15_1_1_U96", "Parent" : "0"},
	{"ID" : "8", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mux_53_15_1_1_U97", "Parent" : "0"},
	{"ID" : "9", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_22s_31ns_53_1_1_U98", "Parent" : "0"},
	{"ID" : "10", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_22s_31ns_53_1_1_U99", "Parent" : "0"},
	{"ID" : "11", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.flow_control_loop_pipe_sequential_init_U", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	ecg_classifier_Pipeline_L3_IC_L3_K {
		sext_ln226 {Type I LastRead 0 FirstWrite -1}
		sext_ln225 {Type I LastRead 0 FirstWrite -1}
		oc_base {Type I LastRead 0 FirstWrite -1}
		zext_ln837_8 {Type I LastRead 0 FirstWrite -1}
		buf2_circ_V {Type I LastRead 34 FirstWrite -1}
		buf2_circ_V_1 {Type I LastRead 34 FirstWrite -1}
		buf2_circ_V_2 {Type I LastRead 34 FirstWrite -1}
		buf2_circ_V_3 {Type I LastRead 34 FirstWrite -1}
		buf2_circ_V_4 {Type I LastRead 34 FirstWrite -1}
		buf2_circ_V_5 {Type I LastRead 34 FirstWrite -1}
		buf2_circ_V_6 {Type I LastRead 34 FirstWrite -1}
		buf2_circ_V_7 {Type I LastRead 34 FirstWrite -1}
		buf2_circ_V_8 {Type I LastRead 34 FirstWrite -1}
		buf2_circ_V_9 {Type I LastRead 34 FirstWrite -1}
		add_ln233_1 {Type I LastRead 0 FirstWrite -1}
		phi_ln818_1_out {Type O LastRead -1 FirstWrite 36}
		phi_ln818_2_out {Type O LastRead -1 FirstWrite 36}
		clf_w_L3_W_V {Type I LastRead -1 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "678", "Max" : "678"}
	, {"Name" : "Interval", "Min" : "678", "Max" : "678"}
]}

set PipelineEnableSignalInfo {[
	{"Pipeline" : "0", "EnableSignal" : "ap_enable_pp0"}
]}

set Spec2ImplPortList { 
	sext_ln226 { ap_none {  { sext_ln226 in_data 0 26 } } }
	sext_ln225 { ap_none {  { sext_ln225 in_data 0 26 } } }
	oc_base { ap_none {  { oc_base in_data 0 7 } } }
	zext_ln837_8 { ap_none {  { zext_ln837_8 in_data 0 14 } } }
	buf2_circ_V { ap_memory {  { buf2_circ_V_address0 mem_address 1 6 }  { buf2_circ_V_ce0 mem_ce 1 1 }  { buf2_circ_V_q0 in_data 0 15 } } }
	buf2_circ_V_1 { ap_memory {  { buf2_circ_V_1_address0 mem_address 1 6 }  { buf2_circ_V_1_ce0 mem_ce 1 1 }  { buf2_circ_V_1_q0 in_data 0 15 } } }
	buf2_circ_V_2 { ap_memory {  { buf2_circ_V_2_address0 mem_address 1 6 }  { buf2_circ_V_2_ce0 mem_ce 1 1 }  { buf2_circ_V_2_q0 in_data 0 15 } } }
	buf2_circ_V_3 { ap_memory {  { buf2_circ_V_3_address0 mem_address 1 6 }  { buf2_circ_V_3_ce0 mem_ce 1 1 }  { buf2_circ_V_3_q0 in_data 0 15 } } }
	buf2_circ_V_4 { ap_memory {  { buf2_circ_V_4_address0 mem_address 1 6 }  { buf2_circ_V_4_ce0 mem_ce 1 1 }  { buf2_circ_V_4_q0 in_data 0 15 } } }
	buf2_circ_V_5 { ap_memory {  { buf2_circ_V_5_address0 mem_address 1 6 }  { buf2_circ_V_5_ce0 mem_ce 1 1 }  { buf2_circ_V_5_q0 in_data 0 15 } } }
	buf2_circ_V_6 { ap_memory {  { buf2_circ_V_6_address0 mem_address 1 6 }  { buf2_circ_V_6_ce0 mem_ce 1 1 }  { buf2_circ_V_6_q0 in_data 0 15 } } }
	buf2_circ_V_7 { ap_memory {  { buf2_circ_V_7_address0 mem_address 1 6 }  { buf2_circ_V_7_ce0 mem_ce 1 1 }  { buf2_circ_V_7_q0 in_data 0 15 } } }
	buf2_circ_V_8 { ap_memory {  { buf2_circ_V_8_address0 mem_address 1 6 }  { buf2_circ_V_8_ce0 mem_ce 1 1 }  { buf2_circ_V_8_q0 in_data 0 15 } } }
	buf2_circ_V_9 { ap_memory {  { buf2_circ_V_9_address0 mem_address 1 6 }  { buf2_circ_V_9_ce0 mem_ce 1 1 }  { buf2_circ_V_9_q0 in_data 0 15 } } }
	add_ln233_1 { ap_none {  { add_ln233_1 in_data 0 8 } } }
	phi_ln818_1_out { ap_vld {  { phi_ln818_1_out out_data 1 32 }  { phi_ln818_1_out_ap_vld out_vld 1 1 } } }
	phi_ln818_2_out { ap_vld {  { phi_ln818_2_out out_data 1 32 }  { phi_ln818_2_out_ap_vld out_vld 1 1 } } }
}
