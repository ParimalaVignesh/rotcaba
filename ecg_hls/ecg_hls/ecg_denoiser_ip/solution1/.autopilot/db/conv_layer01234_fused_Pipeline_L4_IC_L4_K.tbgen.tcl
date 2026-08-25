set moduleName conv_layer01234_fused_Pipeline_L4_IC_L4_K
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
set C_modelName {conv_layer01234_fused_Pipeline_L4_IC_L4_K}
set C_modelType { void 0 }
set C_modelArgList {
	{ win34_V_2 int 31 regular {array 16 { 1 1 } 1 1 }  }
	{ win34_V_3 int 31 regular {array 16 { 1 1 } 1 1 }  }
	{ win34_V_4 int 31 regular {array 16 { 1 1 } 1 1 }  }
	{ win34_V_5 int 31 regular {array 16 { 1 1 } 1 1 }  }
	{ win34_V_6 int 31 regular {array 16 { 1 1 } 1 1 }  }
	{ win34_V_7 int 31 regular {array 16 { 1 1 } 1 1 }  }
	{ win34_V_8 int 31 regular {array 16 { 1 1 } 1 1 }  }
	{ win34_V_9 int 31 regular {array 16 { 1 1 } 1 1 }  }
	{ win34_V_10 int 31 regular {array 16 { 1 1 } 1 1 }  }
	{ win34_V_11 int 31 regular {array 16 { 1 1 } 1 1 }  }
	{ phi_ln818_6_out int 32 regular {pointer 1}  }
}
set C_modelArgMapList {[ 
	{ "Name" : "win34_V_2", "interface" : "memory", "bitwidth" : 31, "direction" : "READONLY"} , 
 	{ "Name" : "win34_V_3", "interface" : "memory", "bitwidth" : 31, "direction" : "READONLY"} , 
 	{ "Name" : "win34_V_4", "interface" : "memory", "bitwidth" : 31, "direction" : "READONLY"} , 
 	{ "Name" : "win34_V_5", "interface" : "memory", "bitwidth" : 31, "direction" : "READONLY"} , 
 	{ "Name" : "win34_V_6", "interface" : "memory", "bitwidth" : 31, "direction" : "READONLY"} , 
 	{ "Name" : "win34_V_7", "interface" : "memory", "bitwidth" : 31, "direction" : "READONLY"} , 
 	{ "Name" : "win34_V_8", "interface" : "memory", "bitwidth" : 31, "direction" : "READONLY"} , 
 	{ "Name" : "win34_V_9", "interface" : "memory", "bitwidth" : 31, "direction" : "READONLY"} , 
 	{ "Name" : "win34_V_10", "interface" : "memory", "bitwidth" : 31, "direction" : "READONLY"} , 
 	{ "Name" : "win34_V_11", "interface" : "memory", "bitwidth" : 31, "direction" : "READONLY"} , 
 	{ "Name" : "phi_ln818_6_out", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} ]}
# RTL Port declarations: 
set portNum 68
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ win34_V_2_address0 sc_out sc_lv 4 signal 0 } 
	{ win34_V_2_ce0 sc_out sc_logic 1 signal 0 } 
	{ win34_V_2_q0 sc_in sc_lv 31 signal 0 } 
	{ win34_V_2_address1 sc_out sc_lv 4 signal 0 } 
	{ win34_V_2_ce1 sc_out sc_logic 1 signal 0 } 
	{ win34_V_2_q1 sc_in sc_lv 31 signal 0 } 
	{ win34_V_3_address0 sc_out sc_lv 4 signal 1 } 
	{ win34_V_3_ce0 sc_out sc_logic 1 signal 1 } 
	{ win34_V_3_q0 sc_in sc_lv 31 signal 1 } 
	{ win34_V_3_address1 sc_out sc_lv 4 signal 1 } 
	{ win34_V_3_ce1 sc_out sc_logic 1 signal 1 } 
	{ win34_V_3_q1 sc_in sc_lv 31 signal 1 } 
	{ win34_V_4_address0 sc_out sc_lv 4 signal 2 } 
	{ win34_V_4_ce0 sc_out sc_logic 1 signal 2 } 
	{ win34_V_4_q0 sc_in sc_lv 31 signal 2 } 
	{ win34_V_4_address1 sc_out sc_lv 4 signal 2 } 
	{ win34_V_4_ce1 sc_out sc_logic 1 signal 2 } 
	{ win34_V_4_q1 sc_in sc_lv 31 signal 2 } 
	{ win34_V_5_address0 sc_out sc_lv 4 signal 3 } 
	{ win34_V_5_ce0 sc_out sc_logic 1 signal 3 } 
	{ win34_V_5_q0 sc_in sc_lv 31 signal 3 } 
	{ win34_V_5_address1 sc_out sc_lv 4 signal 3 } 
	{ win34_V_5_ce1 sc_out sc_logic 1 signal 3 } 
	{ win34_V_5_q1 sc_in sc_lv 31 signal 3 } 
	{ win34_V_6_address0 sc_out sc_lv 4 signal 4 } 
	{ win34_V_6_ce0 sc_out sc_logic 1 signal 4 } 
	{ win34_V_6_q0 sc_in sc_lv 31 signal 4 } 
	{ win34_V_6_address1 sc_out sc_lv 4 signal 4 } 
	{ win34_V_6_ce1 sc_out sc_logic 1 signal 4 } 
	{ win34_V_6_q1 sc_in sc_lv 31 signal 4 } 
	{ win34_V_7_address0 sc_out sc_lv 4 signal 5 } 
	{ win34_V_7_ce0 sc_out sc_logic 1 signal 5 } 
	{ win34_V_7_q0 sc_in sc_lv 31 signal 5 } 
	{ win34_V_7_address1 sc_out sc_lv 4 signal 5 } 
	{ win34_V_7_ce1 sc_out sc_logic 1 signal 5 } 
	{ win34_V_7_q1 sc_in sc_lv 31 signal 5 } 
	{ win34_V_8_address0 sc_out sc_lv 4 signal 6 } 
	{ win34_V_8_ce0 sc_out sc_logic 1 signal 6 } 
	{ win34_V_8_q0 sc_in sc_lv 31 signal 6 } 
	{ win34_V_8_address1 sc_out sc_lv 4 signal 6 } 
	{ win34_V_8_ce1 sc_out sc_logic 1 signal 6 } 
	{ win34_V_8_q1 sc_in sc_lv 31 signal 6 } 
	{ win34_V_9_address0 sc_out sc_lv 4 signal 7 } 
	{ win34_V_9_ce0 sc_out sc_logic 1 signal 7 } 
	{ win34_V_9_q0 sc_in sc_lv 31 signal 7 } 
	{ win34_V_9_address1 sc_out sc_lv 4 signal 7 } 
	{ win34_V_9_ce1 sc_out sc_logic 1 signal 7 } 
	{ win34_V_9_q1 sc_in sc_lv 31 signal 7 } 
	{ win34_V_10_address0 sc_out sc_lv 4 signal 8 } 
	{ win34_V_10_ce0 sc_out sc_logic 1 signal 8 } 
	{ win34_V_10_q0 sc_in sc_lv 31 signal 8 } 
	{ win34_V_10_address1 sc_out sc_lv 4 signal 8 } 
	{ win34_V_10_ce1 sc_out sc_logic 1 signal 8 } 
	{ win34_V_10_q1 sc_in sc_lv 31 signal 8 } 
	{ win34_V_11_address0 sc_out sc_lv 4 signal 9 } 
	{ win34_V_11_ce0 sc_out sc_logic 1 signal 9 } 
	{ win34_V_11_q0 sc_in sc_lv 31 signal 9 } 
	{ win34_V_11_address1 sc_out sc_lv 4 signal 9 } 
	{ win34_V_11_ce1 sc_out sc_logic 1 signal 9 } 
	{ win34_V_11_q1 sc_in sc_lv 31 signal 9 } 
	{ phi_ln818_6_out sc_out sc_lv 32 signal 10 } 
	{ phi_ln818_6_out_ap_vld sc_out sc_logic 1 outvld 10 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "win34_V_2_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "win34_V_2", "role": "address0" }} , 
 	{ "name": "win34_V_2_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "win34_V_2", "role": "ce0" }} , 
 	{ "name": "win34_V_2_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":31, "type": "signal", "bundle":{"name": "win34_V_2", "role": "q0" }} , 
 	{ "name": "win34_V_2_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "win34_V_2", "role": "address1" }} , 
 	{ "name": "win34_V_2_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "win34_V_2", "role": "ce1" }} , 
 	{ "name": "win34_V_2_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":31, "type": "signal", "bundle":{"name": "win34_V_2", "role": "q1" }} , 
 	{ "name": "win34_V_3_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "win34_V_3", "role": "address0" }} , 
 	{ "name": "win34_V_3_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "win34_V_3", "role": "ce0" }} , 
 	{ "name": "win34_V_3_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":31, "type": "signal", "bundle":{"name": "win34_V_3", "role": "q0" }} , 
 	{ "name": "win34_V_3_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "win34_V_3", "role": "address1" }} , 
 	{ "name": "win34_V_3_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "win34_V_3", "role": "ce1" }} , 
 	{ "name": "win34_V_3_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":31, "type": "signal", "bundle":{"name": "win34_V_3", "role": "q1" }} , 
 	{ "name": "win34_V_4_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "win34_V_4", "role": "address0" }} , 
 	{ "name": "win34_V_4_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "win34_V_4", "role": "ce0" }} , 
 	{ "name": "win34_V_4_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":31, "type": "signal", "bundle":{"name": "win34_V_4", "role": "q0" }} , 
 	{ "name": "win34_V_4_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "win34_V_4", "role": "address1" }} , 
 	{ "name": "win34_V_4_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "win34_V_4", "role": "ce1" }} , 
 	{ "name": "win34_V_4_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":31, "type": "signal", "bundle":{"name": "win34_V_4", "role": "q1" }} , 
 	{ "name": "win34_V_5_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "win34_V_5", "role": "address0" }} , 
 	{ "name": "win34_V_5_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "win34_V_5", "role": "ce0" }} , 
 	{ "name": "win34_V_5_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":31, "type": "signal", "bundle":{"name": "win34_V_5", "role": "q0" }} , 
 	{ "name": "win34_V_5_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "win34_V_5", "role": "address1" }} , 
 	{ "name": "win34_V_5_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "win34_V_5", "role": "ce1" }} , 
 	{ "name": "win34_V_5_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":31, "type": "signal", "bundle":{"name": "win34_V_5", "role": "q1" }} , 
 	{ "name": "win34_V_6_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "win34_V_6", "role": "address0" }} , 
 	{ "name": "win34_V_6_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "win34_V_6", "role": "ce0" }} , 
 	{ "name": "win34_V_6_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":31, "type": "signal", "bundle":{"name": "win34_V_6", "role": "q0" }} , 
 	{ "name": "win34_V_6_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "win34_V_6", "role": "address1" }} , 
 	{ "name": "win34_V_6_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "win34_V_6", "role": "ce1" }} , 
 	{ "name": "win34_V_6_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":31, "type": "signal", "bundle":{"name": "win34_V_6", "role": "q1" }} , 
 	{ "name": "win34_V_7_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "win34_V_7", "role": "address0" }} , 
 	{ "name": "win34_V_7_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "win34_V_7", "role": "ce0" }} , 
 	{ "name": "win34_V_7_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":31, "type": "signal", "bundle":{"name": "win34_V_7", "role": "q0" }} , 
 	{ "name": "win34_V_7_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "win34_V_7", "role": "address1" }} , 
 	{ "name": "win34_V_7_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "win34_V_7", "role": "ce1" }} , 
 	{ "name": "win34_V_7_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":31, "type": "signal", "bundle":{"name": "win34_V_7", "role": "q1" }} , 
 	{ "name": "win34_V_8_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "win34_V_8", "role": "address0" }} , 
 	{ "name": "win34_V_8_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "win34_V_8", "role": "ce0" }} , 
 	{ "name": "win34_V_8_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":31, "type": "signal", "bundle":{"name": "win34_V_8", "role": "q0" }} , 
 	{ "name": "win34_V_8_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "win34_V_8", "role": "address1" }} , 
 	{ "name": "win34_V_8_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "win34_V_8", "role": "ce1" }} , 
 	{ "name": "win34_V_8_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":31, "type": "signal", "bundle":{"name": "win34_V_8", "role": "q1" }} , 
 	{ "name": "win34_V_9_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "win34_V_9", "role": "address0" }} , 
 	{ "name": "win34_V_9_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "win34_V_9", "role": "ce0" }} , 
 	{ "name": "win34_V_9_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":31, "type": "signal", "bundle":{"name": "win34_V_9", "role": "q0" }} , 
 	{ "name": "win34_V_9_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "win34_V_9", "role": "address1" }} , 
 	{ "name": "win34_V_9_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "win34_V_9", "role": "ce1" }} , 
 	{ "name": "win34_V_9_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":31, "type": "signal", "bundle":{"name": "win34_V_9", "role": "q1" }} , 
 	{ "name": "win34_V_10_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "win34_V_10", "role": "address0" }} , 
 	{ "name": "win34_V_10_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "win34_V_10", "role": "ce0" }} , 
 	{ "name": "win34_V_10_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":31, "type": "signal", "bundle":{"name": "win34_V_10", "role": "q0" }} , 
 	{ "name": "win34_V_10_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "win34_V_10", "role": "address1" }} , 
 	{ "name": "win34_V_10_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "win34_V_10", "role": "ce1" }} , 
 	{ "name": "win34_V_10_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":31, "type": "signal", "bundle":{"name": "win34_V_10", "role": "q1" }} , 
 	{ "name": "win34_V_11_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "win34_V_11", "role": "address0" }} , 
 	{ "name": "win34_V_11_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "win34_V_11", "role": "ce0" }} , 
 	{ "name": "win34_V_11_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":31, "type": "signal", "bundle":{"name": "win34_V_11", "role": "q0" }} , 
 	{ "name": "win34_V_11_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "win34_V_11", "role": "address1" }} , 
 	{ "name": "win34_V_11_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "win34_V_11", "role": "ce1" }} , 
 	{ "name": "win34_V_11_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":31, "type": "signal", "bundle":{"name": "win34_V_11", "role": "q1" }} , 
 	{ "name": "phi_ln818_6_out", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "phi_ln818_6_out", "role": "default" }} , 
 	{ "name": "phi_ln818_6_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "phi_ln818_6_out", "role": "ap_vld" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "3", "4", "5", "6", "7", "8", "9", "10", "11", "12", "13", "14", "15", "16", "17", "18"],
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
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.denoiser_w_L4_W_V_U", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mux_21_32_1_1_U97", "Parent" : "0"},
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mux_21_31_1_1_U98", "Parent" : "0"},
	{"ID" : "4", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mux_21_31_1_1_U99", "Parent" : "0"},
	{"ID" : "5", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mux_21_31_1_1_U100", "Parent" : "0"},
	{"ID" : "6", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mux_21_31_1_1_U101", "Parent" : "0"},
	{"ID" : "7", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mux_21_31_1_1_U102", "Parent" : "0"},
	{"ID" : "8", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mux_21_31_1_1_U103", "Parent" : "0"},
	{"ID" : "9", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mux_21_32_1_1_U104", "Parent" : "0"},
	{"ID" : "10", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mux_21_31_1_1_U105", "Parent" : "0"},
	{"ID" : "11", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mux_21_31_1_1_U106", "Parent" : "0"},
	{"ID" : "12", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mux_21_31_1_1_U107", "Parent" : "0"},
	{"ID" : "13", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mux_21_31_1_1_U108", "Parent" : "0"},
	{"ID" : "14", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mux_21_31_1_1_U109", "Parent" : "0"},
	{"ID" : "15", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mux_21_31_1_1_U110", "Parent" : "0"},
	{"ID" : "16", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mux_73_32_1_1_U111", "Parent" : "0"},
	{"ID" : "17", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_23s_40s_62_1_1_U112", "Parent" : "0"},
	{"ID" : "18", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.flow_control_loop_pipe_sequential_init_U", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
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
	{"Name" : "Latency", "Min" : "228", "Max" : "228"}
	, {"Name" : "Interval", "Min" : "228", "Max" : "228"}
]}

set PipelineEnableSignalInfo {[
	{"Pipeline" : "0", "EnableSignal" : "ap_enable_pp0"}
]}

set Spec2ImplPortList { 
	win34_V_2 { ap_memory {  { win34_V_2_address0 mem_address 1 4 }  { win34_V_2_ce0 mem_ce 1 1 }  { win34_V_2_q0 in_data 0 31 }  { win34_V_2_address1 MemPortADDR2 1 4 }  { win34_V_2_ce1 MemPortCE2 1 1 }  { win34_V_2_q1 in_data 0 31 } } }
	win34_V_3 { ap_memory {  { win34_V_3_address0 mem_address 1 4 }  { win34_V_3_ce0 mem_ce 1 1 }  { win34_V_3_q0 in_data 0 31 }  { win34_V_3_address1 MemPortADDR2 1 4 }  { win34_V_3_ce1 MemPortCE2 1 1 }  { win34_V_3_q1 in_data 0 31 } } }
	win34_V_4 { ap_memory {  { win34_V_4_address0 mem_address 1 4 }  { win34_V_4_ce0 mem_ce 1 1 }  { win34_V_4_q0 in_data 0 31 }  { win34_V_4_address1 MemPortADDR2 1 4 }  { win34_V_4_ce1 MemPortCE2 1 1 }  { win34_V_4_q1 in_data 0 31 } } }
	win34_V_5 { ap_memory {  { win34_V_5_address0 mem_address 1 4 }  { win34_V_5_ce0 mem_ce 1 1 }  { win34_V_5_q0 in_data 0 31 }  { win34_V_5_address1 MemPortADDR2 1 4 }  { win34_V_5_ce1 MemPortCE2 1 1 }  { win34_V_5_q1 in_data 0 31 } } }
	win34_V_6 { ap_memory {  { win34_V_6_address0 mem_address 1 4 }  { win34_V_6_ce0 mem_ce 1 1 }  { win34_V_6_q0 in_data 0 31 }  { win34_V_6_address1 MemPortADDR2 1 4 }  { win34_V_6_ce1 MemPortCE2 1 1 }  { win34_V_6_q1 in_data 0 31 } } }
	win34_V_7 { ap_memory {  { win34_V_7_address0 mem_address 1 4 }  { win34_V_7_ce0 mem_ce 1 1 }  { win34_V_7_q0 in_data 0 31 }  { win34_V_7_address1 MemPortADDR2 1 4 }  { win34_V_7_ce1 MemPortCE2 1 1 }  { win34_V_7_q1 in_data 0 31 } } }
	win34_V_8 { ap_memory {  { win34_V_8_address0 mem_address 1 4 }  { win34_V_8_ce0 mem_ce 1 1 }  { win34_V_8_q0 in_data 0 31 }  { win34_V_8_address1 MemPortADDR2 1 4 }  { win34_V_8_ce1 MemPortCE2 1 1 }  { win34_V_8_q1 in_data 0 31 } } }
	win34_V_9 { ap_memory {  { win34_V_9_address0 mem_address 1 4 }  { win34_V_9_ce0 mem_ce 1 1 }  { win34_V_9_q0 in_data 0 31 }  { win34_V_9_address1 MemPortADDR2 1 4 }  { win34_V_9_ce1 MemPortCE2 1 1 }  { win34_V_9_q1 in_data 0 31 } } }
	win34_V_10 { ap_memory {  { win34_V_10_address0 mem_address 1 4 }  { win34_V_10_ce0 mem_ce 1 1 }  { win34_V_10_q0 in_data 0 31 }  { win34_V_10_address1 MemPortADDR2 1 4 }  { win34_V_10_ce1 MemPortCE2 1 1 }  { win34_V_10_q1 in_data 0 31 } } }
	win34_V_11 { ap_memory {  { win34_V_11_address0 mem_address 1 4 }  { win34_V_11_ce0 mem_ce 1 1 }  { win34_V_11_q0 in_data 0 31 }  { win34_V_11_address1 MemPortADDR2 1 4 }  { win34_V_11_ce1 MemPortCE2 1 1 }  { win34_V_11_q1 in_data 0 31 } } }
	phi_ln818_6_out { ap_vld {  { phi_ln818_6_out out_data 1 32 }  { phi_ln818_6_out_ap_vld out_vld 1 1 } } }
}
