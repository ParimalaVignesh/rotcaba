set moduleName ecg_classifier
set isTopModule 1
set isCombinational 0
set isDatapathOnly 0
set isPipelined 0
set pipeline_type none
set FunctionProtocol ap_ctrl_hs
set isOneStateSeq 0
set ProfileFlag 0
set StallSigGenFlag 0
set isEnableWaveformDebug 1
set hasInterrupt 0
set C_modelName {ecg_classifier}
set C_modelType { void 0 }
set C_modelArgList {
	{ in_stream_V_data_V int 32 regular {axi_s 0 volatile  { in_stream Data } }  }
	{ in_stream_V_keep_V int 4 regular {axi_s 0 volatile  { in_stream Keep } }  }
	{ in_stream_V_strb_V int 4 regular {axi_s 0 volatile  { in_stream Strb } }  }
	{ in_stream_V_user_V int 1 regular {axi_s 0 volatile  { in_stream User } }  }
	{ in_stream_V_last_V int 1 regular {axi_s 0 volatile  { in_stream Last } }  }
	{ in_stream_V_id_V int 1 regular {axi_s 0 volatile  { in_stream ID } }  }
	{ in_stream_V_dest_V int 1 regular {axi_s 0 volatile  { in_stream Dest } }  }
	{ out_stream_V_data_V int 32 regular {axi_s 1 volatile  { out_stream Data } }  }
	{ out_stream_V_keep_V int 4 regular {axi_s 1 volatile  { out_stream Keep } }  }
	{ out_stream_V_strb_V int 4 regular {axi_s 1 volatile  { out_stream Strb } }  }
	{ out_stream_V_user_V int 1 regular {axi_s 1 volatile  { out_stream User } }  }
	{ out_stream_V_last_V int 1 regular {axi_s 1 volatile  { out_stream Last } }  }
	{ out_stream_V_id_V int 1 regular {axi_s 1 volatile  { out_stream ID } }  }
	{ out_stream_V_dest_V int 1 regular {axi_s 1 volatile  { out_stream Dest } }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "in_stream_V_data_V", "interface" : "axis", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "in_stream_V_keep_V", "interface" : "axis", "bitwidth" : 4, "direction" : "READONLY"} , 
 	{ "Name" : "in_stream_V_strb_V", "interface" : "axis", "bitwidth" : 4, "direction" : "READONLY"} , 
 	{ "Name" : "in_stream_V_user_V", "interface" : "axis", "bitwidth" : 1, "direction" : "READONLY"} , 
 	{ "Name" : "in_stream_V_last_V", "interface" : "axis", "bitwidth" : 1, "direction" : "READONLY"} , 
 	{ "Name" : "in_stream_V_id_V", "interface" : "axis", "bitwidth" : 1, "direction" : "READONLY"} , 
 	{ "Name" : "in_stream_V_dest_V", "interface" : "axis", "bitwidth" : 1, "direction" : "READONLY"} , 
 	{ "Name" : "out_stream_V_data_V", "interface" : "axis", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "out_stream_V_keep_V", "interface" : "axis", "bitwidth" : 4, "direction" : "WRITEONLY"} , 
 	{ "Name" : "out_stream_V_strb_V", "interface" : "axis", "bitwidth" : 4, "direction" : "WRITEONLY"} , 
 	{ "Name" : "out_stream_V_user_V", "interface" : "axis", "bitwidth" : 1, "direction" : "WRITEONLY"} , 
 	{ "Name" : "out_stream_V_last_V", "interface" : "axis", "bitwidth" : 1, "direction" : "WRITEONLY"} , 
 	{ "Name" : "out_stream_V_id_V", "interface" : "axis", "bitwidth" : 1, "direction" : "WRITEONLY"} , 
 	{ "Name" : "out_stream_V_dest_V", "interface" : "axis", "bitwidth" : 1, "direction" : "WRITEONLY"} ]}
# RTL Port declarations: 
set portNum 24
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst_n sc_in sc_logic 1 reset -1 active_low_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ in_stream_TDATA sc_in sc_lv 32 signal 0 } 
	{ in_stream_TVALID sc_in sc_logic 1 invld 6 } 
	{ in_stream_TREADY sc_out sc_logic 1 inacc 6 } 
	{ in_stream_TKEEP sc_in sc_lv 4 signal 1 } 
	{ in_stream_TSTRB sc_in sc_lv 4 signal 2 } 
	{ in_stream_TUSER sc_in sc_lv 1 signal 3 } 
	{ in_stream_TLAST sc_in sc_lv 1 signal 4 } 
	{ in_stream_TID sc_in sc_lv 1 signal 5 } 
	{ in_stream_TDEST sc_in sc_lv 1 signal 6 } 
	{ out_stream_TDATA sc_out sc_lv 32 signal 7 } 
	{ out_stream_TVALID sc_out sc_logic 1 outvld 13 } 
	{ out_stream_TREADY sc_in sc_logic 1 outacc 13 } 
	{ out_stream_TKEEP sc_out sc_lv 4 signal 8 } 
	{ out_stream_TSTRB sc_out sc_lv 4 signal 9 } 
	{ out_stream_TUSER sc_out sc_lv 1 signal 10 } 
	{ out_stream_TLAST sc_out sc_lv 1 signal 11 } 
	{ out_stream_TID sc_out sc_lv 1 signal 12 } 
	{ out_stream_TDEST sc_out sc_lv 1 signal 13 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst_n", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "in_stream_TDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "in_stream_V_data_V", "role": "default" }} , 
 	{ "name": "in_stream_TVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "invld", "bundle":{"name": "in_stream_V_dest_V", "role": "default" }} , 
 	{ "name": "in_stream_TREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "inacc", "bundle":{"name": "in_stream_V_dest_V", "role": "default" }} , 
 	{ "name": "in_stream_TKEEP", "direction": "in", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "in_stream_V_keep_V", "role": "default" }} , 
 	{ "name": "in_stream_TSTRB", "direction": "in", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "in_stream_V_strb_V", "role": "default" }} , 
 	{ "name": "in_stream_TUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "in_stream_V_user_V", "role": "default" }} , 
 	{ "name": "in_stream_TLAST", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "in_stream_V_last_V", "role": "default" }} , 
 	{ "name": "in_stream_TID", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "in_stream_V_id_V", "role": "default" }} , 
 	{ "name": "in_stream_TDEST", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "in_stream_V_dest_V", "role": "default" }} , 
 	{ "name": "out_stream_TDATA", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "out_stream_V_data_V", "role": "default" }} , 
 	{ "name": "out_stream_TVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "out_stream_V_dest_V", "role": "default" }} , 
 	{ "name": "out_stream_TREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "outacc", "bundle":{"name": "out_stream_V_dest_V", "role": "default" }} , 
 	{ "name": "out_stream_TKEEP", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "out_stream_V_keep_V", "role": "default" }} , 
 	{ "name": "out_stream_TSTRB", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "out_stream_V_strb_V", "role": "default" }} , 
 	{ "name": "out_stream_TUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "out_stream_V_user_V", "role": "default" }} , 
 	{ "name": "out_stream_TLAST", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "out_stream_V_last_V", "role": "default" }} , 
 	{ "name": "out_stream_TID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "out_stream_V_id_V", "role": "default" }} , 
 	{ "name": "out_stream_TDEST", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "out_stream_V_dest_V", "role": "default" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "3", "4", "5", "6", "7", "8", "9", "10", "11", "12", "13", "14", "15", "16", "17", "18", "19", "20", "21", "22", "23", "24", "25", "26", "27", "28", "29", "30", "31", "32", "33", "34", "35", "36", "37", "38", "39", "40", "41", "42", "43", "44", "45", "46", "47", "48", "49", "51", "54", "58", "62", "64", "69", "74", "90", "94", "106", "118", "123", "128", "131", "132", "133", "134", "135", "136", "137", "138", "139", "140", "141", "142", "143", "144", "145", "146", "147", "148", "149", "150", "151", "152", "153"],
		"CDFG" : "ecg_classifier",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "9120854", "EstimateLatencyMax" : "9120854",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "in_stream_V_data_V", "Type" : "Axis", "Direction" : "I", "BaseName" : "in_stream",
				"SubConnect" : [
					{"ID" : "49", "SubInstance" : "grp_ecg_classifier_Pipeline_READ_INPUT_fu_15534", "Port" : "in_stream_V_data_V", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "in_stream_V_keep_V", "Type" : "Axis", "Direction" : "I", "BaseName" : "in_stream",
				"SubConnect" : [
					{"ID" : "49", "SubInstance" : "grp_ecg_classifier_Pipeline_READ_INPUT_fu_15534", "Port" : "in_stream_V_keep_V", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "in_stream_V_strb_V", "Type" : "Axis", "Direction" : "I", "BaseName" : "in_stream",
				"SubConnect" : [
					{"ID" : "49", "SubInstance" : "grp_ecg_classifier_Pipeline_READ_INPUT_fu_15534", "Port" : "in_stream_V_strb_V", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "in_stream_V_user_V", "Type" : "Axis", "Direction" : "I", "BaseName" : "in_stream",
				"SubConnect" : [
					{"ID" : "49", "SubInstance" : "grp_ecg_classifier_Pipeline_READ_INPUT_fu_15534", "Port" : "in_stream_V_user_V", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "in_stream_V_last_V", "Type" : "Axis", "Direction" : "I", "BaseName" : "in_stream",
				"SubConnect" : [
					{"ID" : "49", "SubInstance" : "grp_ecg_classifier_Pipeline_READ_INPUT_fu_15534", "Port" : "in_stream_V_last_V", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "in_stream_V_id_V", "Type" : "Axis", "Direction" : "I", "BaseName" : "in_stream",
				"SubConnect" : [
					{"ID" : "49", "SubInstance" : "grp_ecg_classifier_Pipeline_READ_INPUT_fu_15534", "Port" : "in_stream_V_id_V", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "in_stream_V_dest_V", "Type" : "Axis", "Direction" : "I", "BaseName" : "in_stream",
				"SubConnect" : [
					{"ID" : "49", "SubInstance" : "grp_ecg_classifier_Pipeline_READ_INPUT_fu_15534", "Port" : "in_stream_V_dest_V", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "out_stream_V_data_V", "Type" : "Axis", "Direction" : "O", "BaseName" : "out_stream",
				"SubConnect" : [
					{"ID" : "128", "SubInstance" : "grp_ecg_classifier_Pipeline_WRITE_OUTPUT_fu_15703", "Port" : "out_stream_V_data_V", "Inst_start_state" : "295", "Inst_end_state" : "296"}]},
			{"Name" : "out_stream_V_keep_V", "Type" : "Axis", "Direction" : "O", "BaseName" : "out_stream",
				"SubConnect" : [
					{"ID" : "128", "SubInstance" : "grp_ecg_classifier_Pipeline_WRITE_OUTPUT_fu_15703", "Port" : "out_stream_V_keep_V", "Inst_start_state" : "295", "Inst_end_state" : "296"}]},
			{"Name" : "out_stream_V_strb_V", "Type" : "Axis", "Direction" : "O", "BaseName" : "out_stream",
				"SubConnect" : [
					{"ID" : "128", "SubInstance" : "grp_ecg_classifier_Pipeline_WRITE_OUTPUT_fu_15703", "Port" : "out_stream_V_strb_V", "Inst_start_state" : "295", "Inst_end_state" : "296"}]},
			{"Name" : "out_stream_V_user_V", "Type" : "Axis", "Direction" : "O", "BaseName" : "out_stream",
				"SubConnect" : [
					{"ID" : "128", "SubInstance" : "grp_ecg_classifier_Pipeline_WRITE_OUTPUT_fu_15703", "Port" : "out_stream_V_user_V", "Inst_start_state" : "295", "Inst_end_state" : "296"}]},
			{"Name" : "out_stream_V_last_V", "Type" : "Axis", "Direction" : "O", "BaseName" : "out_stream",
				"SubConnect" : [
					{"ID" : "128", "SubInstance" : "grp_ecg_classifier_Pipeline_WRITE_OUTPUT_fu_15703", "Port" : "out_stream_V_last_V", "Inst_start_state" : "295", "Inst_end_state" : "296"}]},
			{"Name" : "out_stream_V_id_V", "Type" : "Axis", "Direction" : "O", "BaseName" : "out_stream",
				"SubConnect" : [
					{"ID" : "128", "SubInstance" : "grp_ecg_classifier_Pipeline_WRITE_OUTPUT_fu_15703", "Port" : "out_stream_V_id_V", "Inst_start_state" : "295", "Inst_end_state" : "296"}]},
			{"Name" : "out_stream_V_dest_V", "Type" : "Axis", "Direction" : "O", "BaseName" : "out_stream",
				"SubConnect" : [
					{"ID" : "128", "SubInstance" : "grp_ecg_classifier_Pipeline_WRITE_OUTPUT_fu_15703", "Port" : "out_stream_V_dest_V", "Inst_start_state" : "295", "Inst_end_state" : "296"}]},
			{"Name" : "clf_w_L0_b_V", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "L0_W_V_0", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "64", "SubInstance" : "grp_ecg_classifier_Pipeline_L0_K_FILL_fu_15585", "Port" : "L0_W_V_0", "Inst_start_state" : "128", "Inst_end_state" : "129"}]},
			{"Name" : "clf_w_L1_b_V", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "clf_w_L1_W_V", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "69", "SubInstance" : "grp_ecg_classifier_Pipeline_L1_IC_L1_K_fu_15599", "Port" : "clf_w_L1_W_V", "Inst_start_state" : "163", "Inst_end_state" : "164"}]},
			{"Name" : "clf_w_L2_b_V", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "clf_w_L2_W_V", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "74", "SubInstance" : "grp_ecg_classifier_Pipeline_L2_IC_L2_K_fu_15615", "Port" : "clf_w_L2_W_V", "Inst_start_state" : "198", "Inst_end_state" : "199"}]},
			{"Name" : "clf_w_L3_b_V", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "clf_w_L3_W_V", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "94", "SubInstance" : "grp_ecg_classifier_Pipeline_L3_IC_L3_K_fu_15641", "Port" : "clf_w_L3_W_V", "Inst_start_state" : "234", "Inst_end_state" : "235"}]},
			{"Name" : "clf_w_L4_b_V", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "clf_w_L4_W_V", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "106", "SubInstance" : "grp_ecg_classifier_Pipeline_L4_IC_L4_K_fu_15664", "Port" : "clf_w_L4_W_V", "Inst_start_state" : "271", "Inst_end_state" : "272"}]},
			{"Name" : "clf_w_L5_b_V", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "clf_w_L5_W_V", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "118", "SubInstance" : "grp_ecg_classifier_Pipeline_D0_IC_fu_15681", "Port" : "clf_w_L5_W_V", "Inst_start_state" : "276", "Inst_end_state" : "277"}]},
			{"Name" : "clf_w_L6_b_V", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "clf_w_L6_W_V", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "123", "SubInstance" : "grp_ecg_classifier_Pipeline_D1_IC_fu_15692", "Port" : "clf_w_L6_W_V", "Inst_start_state" : "280", "Inst_end_state" : "281"}]}],
		"Loop" : [
			{"Name" : "L0_STRIDE_FILL_L0_OC_FILL", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "297", "FirstState" : "ap_ST_fsm_state98", "LastState" : ["ap_ST_fsm_state130"], "QuitState" : ["ap_ST_fsm_state98"], "PreState" : ["ap_ST_fsm_state97"], "PostState" : ["ap_ST_fsm_state131"], "OneDepthLoop" : "0", "OneStateBlock": ""}},
			{"Name" : "L1_OC", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "297", "FirstState" : "ap_ST_fsm_state162", "LastState" : ["ap_ST_fsm_state165"], "QuitState" : ["ap_ST_fsm_state162"], "PreState" : ["ap_ST_fsm_state161"], "PostState" : ["ap_ST_fsm_state166"], "OneDepthLoop" : "0", "OneStateBlock": ""}},
			{"Name" : "L2_OC_GROUP", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "297", "FirstState" : "ap_ST_fsm_state197", "LastState" : ["ap_ST_fsm_state200"], "QuitState" : ["ap_ST_fsm_state197"], "PreState" : ["ap_ST_fsm_state196"], "PostState" : ["ap_ST_fsm_state65"], "OneDepthLoop" : "0", "OneStateBlock": ""}},
			{"Name" : "L012_T", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "297", "FirstState" : "ap_ST_fsm_state65", "LastState" : ["ap_ST_fsm_state197"], "QuitState" : ["ap_ST_fsm_state65"], "PreState" : ["ap_ST_fsm_state64"], "PostState" : ["ap_ST_fsm_state201"], "OneDepthLoop" : "0", "OneStateBlock": ""}},
			{"Name" : "L3_OC_GROUP", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "297", "FirstState" : "ap_ST_fsm_state233", "LastState" : ["ap_ST_fsm_state236"], "QuitState" : ["ap_ST_fsm_state233"], "PreState" : ["ap_ST_fsm_state232"], "PostState" : ["ap_ST_fsm_state237"], "OneDepthLoop" : "0", "OneStateBlock": ""}},
			{"Name" : "L4_GAP_OC_GROUP", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "297", "FirstState" : "ap_ST_fsm_state269", "LastState" : ["ap_ST_fsm_state273"], "QuitState" : ["ap_ST_fsm_state269"], "PreState" : ["ap_ST_fsm_state268"], "PostState" : ["ap_ST_fsm_state232"], "OneDepthLoop" : "0", "OneStateBlock": ""}},
			{"Name" : "L34_T", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "297", "FirstState" : "ap_ST_fsm_state232", "LastState" : ["ap_ST_fsm_state269"], "QuitState" : ["ap_ST_fsm_state232"], "PreState" : ["ap_ST_fsm_state231"], "PostState" : ["ap_ST_fsm_state274"], "OneDepthLoop" : "0", "OneStateBlock": ""}},
			{"Name" : "D0_OC", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "297", "FirstState" : "ap_ST_fsm_state275", "LastState" : ["ap_ST_fsm_state278"], "QuitState" : ["ap_ST_fsm_state275"], "PreState" : ["ap_ST_fsm_state274"], "PostState" : ["ap_ST_fsm_state279"], "OneDepthLoop" : "0", "OneStateBlock": ""}},
			{"Name" : "D1_OC", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "297", "FirstState" : "ap_ST_fsm_state279", "LastState" : ["ap_ST_fsm_state284"], "QuitState" : ["ap_ST_fsm_state279"], "PreState" : ["ap_ST_fsm_state275"], "PostState" : ["ap_ST_fsm_state285"], "OneDepthLoop" : "0", "OneStateBlock": ""}}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.clf_w_L0_b_V_U", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.clf_w_L1_b_V_U", "Parent" : "0"},
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.clf_w_L2_b_V_U", "Parent" : "0"},
	{"ID" : "4", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.clf_w_L3_b_V_U", "Parent" : "0"},
	{"ID" : "5", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.clf_w_L4_b_V_U", "Parent" : "0"},
	{"ID" : "6", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.clf_w_L5_b_V_U", "Parent" : "0"},
	{"ID" : "7", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.clf_w_L6_b_V_U", "Parent" : "0"},
	{"ID" : "8", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.input_buf_V_U", "Parent" : "0"},
	{"ID" : "9", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.input_buf_V_1_U", "Parent" : "0"},
	{"ID" : "10", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.norm_buf_V_U", "Parent" : "0"},
	{"ID" : "11", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.norm_buf_V_1_U", "Parent" : "0"},
	{"ID" : "12", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.buf2_circ_V_U", "Parent" : "0"},
	{"ID" : "13", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.buf2_circ_V_1_U", "Parent" : "0"},
	{"ID" : "14", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.buf2_circ_V_2_U", "Parent" : "0"},
	{"ID" : "15", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.buf2_circ_V_3_U", "Parent" : "0"},
	{"ID" : "16", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.buf2_circ_V_4_U", "Parent" : "0"},
	{"ID" : "17", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.buf2_circ_V_5_U", "Parent" : "0"},
	{"ID" : "18", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.buf2_circ_V_6_U", "Parent" : "0"},
	{"ID" : "19", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.buf2_circ_V_7_U", "Parent" : "0"},
	{"ID" : "20", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.buf2_circ_V_8_U", "Parent" : "0"},
	{"ID" : "21", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.buf2_circ_V_9_U", "Parent" : "0"},
	{"ID" : "22", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.gap_buf_V_U", "Parent" : "0"},
	{"ID" : "23", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.gap_buf_V_1_U", "Parent" : "0"},
	{"ID" : "24", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.dense0_buf_V_U", "Parent" : "0"},
	{"ID" : "25", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.dense0_buf_V_1_U", "Parent" : "0"},
	{"ID" : "26", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.win0_V_U", "Parent" : "0"},
	{"ID" : "27", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.win0_V_1_U", "Parent" : "0"},
	{"ID" : "28", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.win0_V_2_U", "Parent" : "0"},
	{"ID" : "29", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.win0_V_3_U", "Parent" : "0"},
	{"ID" : "30", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.win0_V_4_U", "Parent" : "0"},
	{"ID" : "31", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.win0_V_5_U", "Parent" : "0"},
	{"ID" : "32", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.win0_V_6_U", "Parent" : "0"},
	{"ID" : "33", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.win01_V_U", "Parent" : "0"},
	{"ID" : "34", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.win01_V_1_U", "Parent" : "0"},
	{"ID" : "35", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.win01_V_2_U", "Parent" : "0"},
	{"ID" : "36", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.win01_V_3_U", "Parent" : "0"},
	{"ID" : "37", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.win01_V_4_U", "Parent" : "0"},
	{"ID" : "38", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.win01_V_5_U", "Parent" : "0"},
	{"ID" : "39", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.win01_V_6_U", "Parent" : "0"},
	{"ID" : "40", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.win01_V_7_U", "Parent" : "0"},
	{"ID" : "41", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.l1_out_V_U", "Parent" : "0"},
	{"ID" : "42", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.l1_out_V_1_U", "Parent" : "0"},
	{"ID" : "43", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.win23_V_U", "Parent" : "0"},
	{"ID" : "44", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.win23_V_1_U", "Parent" : "0"},
	{"ID" : "45", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.win23_V_2_U", "Parent" : "0"},
	{"ID" : "46", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.win23_V_3_U", "Parent" : "0"},
	{"ID" : "47", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.l3_out_V_U", "Parent" : "0"},
	{"ID" : "48", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.l3_out_V_1_U", "Parent" : "0"},
	{"ID" : "49", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_ecg_classifier_Pipeline_READ_INPUT_fu_15534", "Parent" : "0", "Child" : ["50"],
		"CDFG" : "ecg_classifier_Pipeline_READ_INPUT",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "189", "EstimateLatencyMax" : "189",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "input_buf_V_1", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "input_buf_V", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "in_stream_V_data_V", "Type" : "Axis", "Direction" : "I", "BaseName" : "in_stream",
				"BlockSignal" : [
					{"Name" : "in_stream_TDATA_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "in_stream_V_keep_V", "Type" : "Axis", "Direction" : "I", "BaseName" : "in_stream"},
			{"Name" : "in_stream_V_strb_V", "Type" : "Axis", "Direction" : "I", "BaseName" : "in_stream"},
			{"Name" : "in_stream_V_user_V", "Type" : "Axis", "Direction" : "I", "BaseName" : "in_stream"},
			{"Name" : "in_stream_V_last_V", "Type" : "Axis", "Direction" : "I", "BaseName" : "in_stream"},
			{"Name" : "in_stream_V_id_V", "Type" : "Axis", "Direction" : "I", "BaseName" : "in_stream"},
			{"Name" : "in_stream_V_dest_V", "Type" : "Axis", "Direction" : "I", "BaseName" : "in_stream"}],
		"Loop" : [
			{"Name" : "READ_INPUT", "PipelineType" : "NotSupport"}]},
	{"ID" : "50", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_ecg_classifier_Pipeline_READ_INPUT_fu_15534.flow_control_loop_pipe_sequential_init_U", "Parent" : "49"},
	{"ID" : "51", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_ecg_classifier_Pipeline_ZNORM_MEAN_fu_15554", "Parent" : "0", "Child" : ["52", "53"],
		"CDFG" : "ecg_classifier_Pipeline_ZNORM_MEAN",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "189", "EstimateLatencyMax" : "189",
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
			{"Name" : "mean_acc_V_out", "Type" : "Vld", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "ZNORM_MEAN", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter0", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "52", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_ecg_classifier_Pipeline_ZNORM_MEAN_fu_15554.mux_21_32_1_1_U10", "Parent" : "51"},
	{"ID" : "53", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_ecg_classifier_Pipeline_ZNORM_MEAN_fu_15554.flow_control_loop_pipe_sequential_init_U", "Parent" : "51"},
	{"ID" : "54", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_ecg_classifier_Pipeline_ZNORM_VAR_fu_15561", "Parent" : "0", "Child" : ["55", "56", "57"],
		"CDFG" : "ecg_classifier_Pipeline_ZNORM_VAR",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "191", "EstimateLatencyMax" : "191",
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
	{"ID" : "55", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_ecg_classifier_Pipeline_ZNORM_VAR_fu_15561.mux_21_32_1_1_U15", "Parent" : "54"},
	{"ID" : "56", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_ecg_classifier_Pipeline_ZNORM_VAR_fu_15561.mul_40s_40s_72_1_1_U16", "Parent" : "54"},
	{"ID" : "57", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_ecg_classifier_Pipeline_ZNORM_VAR_fu_15561.flow_control_loop_pipe_sequential_init_U", "Parent" : "54"},
	{"ID" : "58", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_ecg_classifier_Pipeline_ZNORM_APPLY_fu_15569", "Parent" : "0", "Child" : ["59", "60", "61"],
		"CDFG" : "ecg_classifier_Pipeline_ZNORM_APPLY",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "190", "EstimateLatencyMax" : "190",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "norm_buf_V_1", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "norm_buf_V", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "input_buf_V", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "input_buf_V_1", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "rhs", "Type" : "None", "Direction" : "I"},
			{"Name" : "sext_ln74", "Type" : "None", "Direction" : "I"}],
		"Loop" : [
			{"Name" : "ZNORM_APPLY", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter2", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter2", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "59", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_ecg_classifier_Pipeline_ZNORM_APPLY_fu_15569.mux_21_32_1_1_U22", "Parent" : "58"},
	{"ID" : "60", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_ecg_classifier_Pipeline_ZNORM_APPLY_fu_15569.mul_33s_32s_48_1_1_U23", "Parent" : "58"},
	{"ID" : "61", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_ecg_classifier_Pipeline_ZNORM_APPLY_fu_15569.flow_control_loop_pipe_sequential_init_U", "Parent" : "58"},
	{"ID" : "62", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_ecg_classifier_Pipeline_GAP_INIT_fu_15579", "Parent" : "0", "Child" : ["63"],
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
	{"ID" : "63", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_ecg_classifier_Pipeline_GAP_INIT_fu_15579.flow_control_loop_pipe_sequential_init_U", "Parent" : "62"},
	{"ID" : "64", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_ecg_classifier_Pipeline_L0_K_FILL_fu_15585", "Parent" : "0", "Child" : ["65", "66", "67", "68"],
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
	{"ID" : "65", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_ecg_classifier_Pipeline_L0_K_FILL_fu_15585.L0_W_V_0_U", "Parent" : "64"},
	{"ID" : "66", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_ecg_classifier_Pipeline_L0_K_FILL_fu_15585.mux_21_32_1_1_U31", "Parent" : "64"},
	{"ID" : "67", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_ecg_classifier_Pipeline_L0_K_FILL_fu_15585.mul_27s_40s_66_1_1_U32", "Parent" : "64"},
	{"ID" : "68", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_ecg_classifier_Pipeline_L0_K_FILL_fu_15585.flow_control_loop_pipe_sequential_init_U", "Parent" : "64"},
	{"ID" : "69", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_ecg_classifier_Pipeline_L1_IC_L1_K_fu_15599", "Parent" : "0", "Child" : ["70", "71", "72", "73"],
		"CDFG" : "ecg_classifier_Pipeline_L1_IC_L1_K",
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
			{"Name" : "sext_ln146", "Type" : "None", "Direction" : "I"},
			{"Name" : "zext_ln837_7", "Type" : "None", "Direction" : "I"},
			{"Name" : "win0_V", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "win0_V_1", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "win0_V_2", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "win0_V_3", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "win0_V_4", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "win0_V_5", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "win0_V_6", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "phi_ln818_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "clf_w_L1_W_V", "Type" : "Memory", "Direction" : "I"}],
		"Loop" : [
			{"Name" : "L1_IC_L1_K", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter4", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter4", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "70", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_ecg_classifier_Pipeline_L1_IC_L1_K_fu_15599.clf_w_L1_W_V_U", "Parent" : "69"},
	{"ID" : "71", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_ecg_classifier_Pipeline_L1_IC_L1_K_fu_15599.mux_73_32_1_1_U43", "Parent" : "69"},
	{"ID" : "72", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_ecg_classifier_Pipeline_L1_IC_L1_K_fu_15599.mul_23s_40s_62_1_1_U44", "Parent" : "69"},
	{"ID" : "73", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_ecg_classifier_Pipeline_L1_IC_L1_K_fu_15599.flow_control_loop_pipe_sequential_init_U", "Parent" : "69"},
	{"ID" : "74", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_ecg_classifier_Pipeline_L2_IC_L2_K_fu_15615", "Parent" : "0", "Child" : ["75", "76", "77", "78", "79", "80", "81", "82", "83", "84", "85", "86", "87", "88", "89"],
		"CDFG" : "ecg_classifier_Pipeline_L2_IC_L2_K",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "325", "EstimateLatencyMax" : "325",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "sext_ln178", "Type" : "None", "Direction" : "I"},
			{"Name" : "sext_ln177", "Type" : "None", "Direction" : "I"},
			{"Name" : "win01_V_2", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "win01_V_3", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "win01_V_4", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "win01_V_5", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "win01_V_6", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "win01_V_7", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "win01_V_8", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "win01_V_9", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "oc_base_1", "Type" : "None", "Direction" : "I"},
			{"Name" : "zext_ln837_9", "Type" : "None", "Direction" : "I"},
			{"Name" : "phi_ln818_3_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "phi_ln818_4_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "clf_w_L2_W_V", "Type" : "Memory", "Direction" : "I"}],
		"Loop" : [
			{"Name" : "L2_IC_L2_K", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter4", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter4", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "75", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_ecg_classifier_Pipeline_L2_IC_L2_K_fu_15615.clf_w_L2_W_V_U", "Parent" : "74"},
	{"ID" : "76", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_ecg_classifier_Pipeline_L2_IC_L2_K_fu_15615.mux_21_31_1_1_U58", "Parent" : "74"},
	{"ID" : "77", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_ecg_classifier_Pipeline_L2_IC_L2_K_fu_15615.mux_21_31_1_1_U59", "Parent" : "74"},
	{"ID" : "78", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_ecg_classifier_Pipeline_L2_IC_L2_K_fu_15615.mux_21_31_1_1_U60", "Parent" : "74"},
	{"ID" : "79", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_ecg_classifier_Pipeline_L2_IC_L2_K_fu_15615.mux_21_31_1_1_U61", "Parent" : "74"},
	{"ID" : "80", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_ecg_classifier_Pipeline_L2_IC_L2_K_fu_15615.mux_21_31_1_1_U62", "Parent" : "74"},
	{"ID" : "81", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_ecg_classifier_Pipeline_L2_IC_L2_K_fu_15615.mux_21_31_1_1_U63", "Parent" : "74"},
	{"ID" : "82", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_ecg_classifier_Pipeline_L2_IC_L2_K_fu_15615.mux_21_31_1_1_U64", "Parent" : "74"},
	{"ID" : "83", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_ecg_classifier_Pipeline_L2_IC_L2_K_fu_15615.mux_21_31_1_1_U65", "Parent" : "74"},
	{"ID" : "84", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_ecg_classifier_Pipeline_L2_IC_L2_K_fu_15615.mux_21_31_1_1_U66", "Parent" : "74"},
	{"ID" : "85", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_ecg_classifier_Pipeline_L2_IC_L2_K_fu_15615.mux_21_31_1_1_U67", "Parent" : "74"},
	{"ID" : "86", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_ecg_classifier_Pipeline_L2_IC_L2_K_fu_15615.mux_53_31_1_1_U68", "Parent" : "74"},
	{"ID" : "87", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_ecg_classifier_Pipeline_L2_IC_L2_K_fu_15615.mul_23s_39ns_62_1_1_U69", "Parent" : "74"},
	{"ID" : "88", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_ecg_classifier_Pipeline_L2_IC_L2_K_fu_15615.mul_23s_39ns_62_1_1_U70", "Parent" : "74"},
	{"ID" : "89", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_ecg_classifier_Pipeline_L2_IC_L2_K_fu_15615.flow_control_loop_pipe_sequential_init_U", "Parent" : "74"},
	{"ID" : "90", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_ecg_classifier_Pipeline_GAP_NORM_fu_15635", "Parent" : "0", "Child" : ["91", "92", "93"],
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
	{"ID" : "91", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_ecg_classifier_Pipeline_GAP_NORM_fu_15635.mux_21_32_1_1_U144", "Parent" : "90"},
	{"ID" : "92", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_ecg_classifier_Pipeline_GAP_NORM_fu_15635.mul_32s_12ns_44_1_1_U145", "Parent" : "90"},
	{"ID" : "93", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_ecg_classifier_Pipeline_GAP_NORM_fu_15635.flow_control_loop_pipe_sequential_init_U", "Parent" : "90"},
	{"ID" : "94", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_ecg_classifier_Pipeline_L3_IC_L3_K_fu_15641", "Parent" : "0", "Child" : ["95", "96", "97", "98", "99", "100", "101", "102", "103", "104", "105"],
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
	{"ID" : "95", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_ecg_classifier_Pipeline_L3_IC_L3_K_fu_15641.clf_w_L3_W_V_U", "Parent" : "94"},
	{"ID" : "96", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_ecg_classifier_Pipeline_L3_IC_L3_K_fu_15641.urem_32s_4ns_3_36_1_U91", "Parent" : "94"},
	{"ID" : "97", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_ecg_classifier_Pipeline_L3_IC_L3_K_fu_15641.mux_21_15_1_1_U92", "Parent" : "94"},
	{"ID" : "98", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_ecg_classifier_Pipeline_L3_IC_L3_K_fu_15641.mux_21_15_1_1_U93", "Parent" : "94"},
	{"ID" : "99", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_ecg_classifier_Pipeline_L3_IC_L3_K_fu_15641.mux_21_15_1_1_U94", "Parent" : "94"},
	{"ID" : "100", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_ecg_classifier_Pipeline_L3_IC_L3_K_fu_15641.mux_21_15_1_1_U95", "Parent" : "94"},
	{"ID" : "101", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_ecg_classifier_Pipeline_L3_IC_L3_K_fu_15641.mux_21_15_1_1_U96", "Parent" : "94"},
	{"ID" : "102", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_ecg_classifier_Pipeline_L3_IC_L3_K_fu_15641.mux_53_15_1_1_U97", "Parent" : "94"},
	{"ID" : "103", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_ecg_classifier_Pipeline_L3_IC_L3_K_fu_15641.mul_22s_31ns_53_1_1_U98", "Parent" : "94"},
	{"ID" : "104", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_ecg_classifier_Pipeline_L3_IC_L3_K_fu_15641.mul_22s_31ns_53_1_1_U99", "Parent" : "94"},
	{"ID" : "105", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_ecg_classifier_Pipeline_L3_IC_L3_K_fu_15641.flow_control_loop_pipe_sequential_init_U", "Parent" : "94"},
	{"ID" : "106", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_ecg_classifier_Pipeline_L4_IC_L4_K_fu_15664", "Parent" : "0", "Child" : ["107", "108", "109", "110", "111", "112", "113", "114", "115", "116", "117"],
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
	{"ID" : "107", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_ecg_classifier_Pipeline_L4_IC_L4_K_fu_15664.clf_w_L4_W_V_U", "Parent" : "106"},
	{"ID" : "108", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_ecg_classifier_Pipeline_L4_IC_L4_K_fu_15664.mux_21_31_1_1_U122", "Parent" : "106"},
	{"ID" : "109", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_ecg_classifier_Pipeline_L4_IC_L4_K_fu_15664.mux_21_31_1_1_U123", "Parent" : "106"},
	{"ID" : "110", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_ecg_classifier_Pipeline_L4_IC_L4_K_fu_15664.mux_21_31_1_1_U124", "Parent" : "106"},
	{"ID" : "111", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_ecg_classifier_Pipeline_L4_IC_L4_K_fu_15664.mux_21_31_1_1_U125", "Parent" : "106"},
	{"ID" : "112", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_ecg_classifier_Pipeline_L4_IC_L4_K_fu_15664.mux_21_31_1_1_U126", "Parent" : "106"},
	{"ID" : "113", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_ecg_classifier_Pipeline_L4_IC_L4_K_fu_15664.mux_21_31_1_1_U127", "Parent" : "106"},
	{"ID" : "114", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_ecg_classifier_Pipeline_L4_IC_L4_K_fu_15664.mux_32_31_1_1_U128", "Parent" : "106"},
	{"ID" : "115", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_ecg_classifier_Pipeline_L4_IC_L4_K_fu_15664.mul_22s_39ns_61_1_1_U129", "Parent" : "106"},
	{"ID" : "116", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_ecg_classifier_Pipeline_L4_IC_L4_K_fu_15664.mul_22s_39ns_61_1_1_U130", "Parent" : "106"},
	{"ID" : "117", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_ecg_classifier_Pipeline_L4_IC_L4_K_fu_15664.flow_control_loop_pipe_sequential_init_U", "Parent" : "106"},
	{"ID" : "118", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_ecg_classifier_Pipeline_D0_IC_fu_15681", "Parent" : "0", "Child" : ["119", "120", "121", "122"],
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
	{"ID" : "119", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_ecg_classifier_Pipeline_D0_IC_fu_15681.clf_w_L5_W_V_U", "Parent" : "118"},
	{"ID" : "120", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_ecg_classifier_Pipeline_D0_IC_fu_15681.mux_21_32_1_1_U149", "Parent" : "118"},
	{"ID" : "121", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_ecg_classifier_Pipeline_D0_IC_fu_15681.mul_24s_40s_63_1_1_U150", "Parent" : "118"},
	{"ID" : "122", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_ecg_classifier_Pipeline_D0_IC_fu_15681.flow_control_loop_pipe_sequential_init_U", "Parent" : "118"},
	{"ID" : "123", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_ecg_classifier_Pipeline_D1_IC_fu_15692", "Parent" : "0", "Child" : ["124", "125", "126", "127"],
		"CDFG" : "ecg_classifier_Pipeline_D1_IC",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "132", "EstimateLatencyMax" : "132",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "sext_ln300", "Type" : "None", "Direction" : "I"},
			{"Name" : "zext_ln837_17", "Type" : "None", "Direction" : "I"},
			{"Name" : "dense0_buf_V", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "dense0_buf_V_1", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "acc_V_20_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "clf_w_L6_W_V", "Type" : "Memory", "Direction" : "I"}],
		"Loop" : [
			{"Name" : "D1_IC", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter3", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter3", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "124", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_ecg_classifier_Pipeline_D1_IC_fu_15692.clf_w_L6_W_V_U", "Parent" : "123"},
	{"ID" : "125", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_ecg_classifier_Pipeline_D1_IC_fu_15692.mux_21_31_1_1_U158", "Parent" : "123"},
	{"ID" : "126", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_ecg_classifier_Pipeline_D1_IC_fu_15692.mul_24s_39ns_63_1_1_U159", "Parent" : "123"},
	{"ID" : "127", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_ecg_classifier_Pipeline_D1_IC_fu_15692.flow_control_loop_pipe_sequential_init_U", "Parent" : "123"},
	{"ID" : "128", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_ecg_classifier_Pipeline_WRITE_OUTPUT_fu_15703", "Parent" : "0", "Child" : ["129", "130"],
		"CDFG" : "ecg_classifier_Pipeline_WRITE_OUTPUT",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "13", "EstimateLatencyMax" : "13",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "ea", "Type" : "None", "Direction" : "I"},
			{"Name" : "eb", "Type" : "None", "Direction" : "I"},
			{"Name" : "s_1", "Type" : "None", "Direction" : "I"},
			{"Name" : "out_stream_V_data_V", "Type" : "Axis", "Direction" : "O", "BaseName" : "out_stream",
				"BlockSignal" : [
					{"Name" : "out_stream_TDATA_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "out_stream_V_keep_V", "Type" : "Axis", "Direction" : "O", "BaseName" : "out_stream"},
			{"Name" : "out_stream_V_strb_V", "Type" : "Axis", "Direction" : "O", "BaseName" : "out_stream"},
			{"Name" : "out_stream_V_user_V", "Type" : "Axis", "Direction" : "O", "BaseName" : "out_stream"},
			{"Name" : "out_stream_V_last_V", "Type" : "Axis", "Direction" : "O", "BaseName" : "out_stream"},
			{"Name" : "out_stream_V_id_V", "Type" : "Axis", "Direction" : "O", "BaseName" : "out_stream"},
			{"Name" : "out_stream_V_dest_V", "Type" : "Axis", "Direction" : "O", "BaseName" : "out_stream"}],
		"Loop" : [
			{"Name" : "WRITE_OUTPUT", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter10", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter10", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "129", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_ecg_classifier_Pipeline_WRITE_OUTPUT_fu_15703.fdiv_32ns_32ns_32_10_no_dsp_1_U167", "Parent" : "128"},
	{"ID" : "130", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_ecg_classifier_Pipeline_WRITE_OUTPUT_fu_15703.flow_control_loop_pipe_sequential_init_U", "Parent" : "128"},
	{"ID" : "131", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fadd_32ns_32ns_32_4_full_dsp_1_U179", "Parent" : "0"},
	{"ID" : "132", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fpext_32ns_64_2_no_dsp_1_U180", "Parent" : "0"},
	{"ID" : "133", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fcmp_32ns_32ns_1_2_no_dsp_1_U181", "Parent" : "0"},
	{"ID" : "134", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fsqrt_32ns_32ns_32_10_no_dsp_1_U182", "Parent" : "0"},
	{"ID" : "135", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fexp_32ns_32ns_32_8_full_dsp_1_U183", "Parent" : "0"},
	{"ID" : "136", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fexp_32ns_32ns_32_8_full_dsp_1_U184", "Parent" : "0"},
	{"ID" : "137", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_48s_10ns_56_1_1_U185", "Parent" : "0"},
	{"ID" : "138", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_48s_10ns_56_1_1_U186", "Parent" : "0"},
	{"ID" : "139", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.sdiv_34ns_32s_32_38_seq_1_U187", "Parent" : "0"},
	{"ID" : "140", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.regslice_both_in_stream_V_data_V_U", "Parent" : "0"},
	{"ID" : "141", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.regslice_both_in_stream_V_keep_V_U", "Parent" : "0"},
	{"ID" : "142", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.regslice_both_in_stream_V_strb_V_U", "Parent" : "0"},
	{"ID" : "143", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.regslice_both_in_stream_V_user_V_U", "Parent" : "0"},
	{"ID" : "144", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.regslice_both_in_stream_V_last_V_U", "Parent" : "0"},
	{"ID" : "145", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.regslice_both_in_stream_V_id_V_U", "Parent" : "0"},
	{"ID" : "146", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.regslice_both_in_stream_V_dest_V_U", "Parent" : "0"},
	{"ID" : "147", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.regslice_both_out_stream_V_data_V_U", "Parent" : "0"},
	{"ID" : "148", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.regslice_both_out_stream_V_keep_V_U", "Parent" : "0"},
	{"ID" : "149", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.regslice_both_out_stream_V_strb_V_U", "Parent" : "0"},
	{"ID" : "150", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.regslice_both_out_stream_V_user_V_U", "Parent" : "0"},
	{"ID" : "151", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.regslice_both_out_stream_V_last_V_U", "Parent" : "0"},
	{"ID" : "152", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.regslice_both_out_stream_V_id_V_U", "Parent" : "0"},
	{"ID" : "153", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.regslice_both_out_stream_V_dest_V_U", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	ecg_classifier {
		in_stream_V_data_V {Type I LastRead 0 FirstWrite -1}
		in_stream_V_keep_V {Type I LastRead 0 FirstWrite -1}
		in_stream_V_strb_V {Type I LastRead 0 FirstWrite -1}
		in_stream_V_user_V {Type I LastRead 0 FirstWrite -1}
		in_stream_V_last_V {Type I LastRead 0 FirstWrite -1}
		in_stream_V_id_V {Type I LastRead 0 FirstWrite -1}
		in_stream_V_dest_V {Type I LastRead 0 FirstWrite -1}
		out_stream_V_data_V {Type O LastRead -1 FirstWrite 10}
		out_stream_V_keep_V {Type O LastRead -1 FirstWrite 10}
		out_stream_V_strb_V {Type O LastRead -1 FirstWrite 10}
		out_stream_V_user_V {Type O LastRead -1 FirstWrite 10}
		out_stream_V_last_V {Type O LastRead -1 FirstWrite 10}
		out_stream_V_id_V {Type O LastRead -1 FirstWrite 10}
		out_stream_V_dest_V {Type O LastRead -1 FirstWrite 10}
		clf_w_L0_b_V {Type I LastRead -1 FirstWrite -1}
		L0_W_V_0 {Type I LastRead -1 FirstWrite -1}
		clf_w_L1_b_V {Type I LastRead -1 FirstWrite -1}
		clf_w_L1_W_V {Type I LastRead -1 FirstWrite -1}
		clf_w_L2_b_V {Type I LastRead -1 FirstWrite -1}
		clf_w_L2_W_V {Type I LastRead -1 FirstWrite -1}
		clf_w_L3_b_V {Type I LastRead -1 FirstWrite -1}
		clf_w_L3_W_V {Type I LastRead -1 FirstWrite -1}
		clf_w_L4_b_V {Type I LastRead -1 FirstWrite -1}
		clf_w_L4_W_V {Type I LastRead -1 FirstWrite -1}
		clf_w_L5_b_V {Type I LastRead -1 FirstWrite -1}
		clf_w_L5_W_V {Type I LastRead -1 FirstWrite -1}
		clf_w_L6_b_V {Type I LastRead -1 FirstWrite -1}
		clf_w_L6_W_V {Type I LastRead -1 FirstWrite -1}}
	ecg_classifier_Pipeline_READ_INPUT {
		input_buf_V_1 {Type O LastRead -1 FirstWrite 0}
		input_buf_V {Type O LastRead -1 FirstWrite 0}
		in_stream_V_data_V {Type I LastRead 0 FirstWrite -1}
		in_stream_V_keep_V {Type I LastRead 0 FirstWrite -1}
		in_stream_V_strb_V {Type I LastRead 0 FirstWrite -1}
		in_stream_V_user_V {Type I LastRead 0 FirstWrite -1}
		in_stream_V_last_V {Type I LastRead 0 FirstWrite -1}
		in_stream_V_id_V {Type I LastRead 0 FirstWrite -1}
		in_stream_V_dest_V {Type I LastRead 0 FirstWrite -1}}
	ecg_classifier_Pipeline_ZNORM_MEAN {
		input_buf_V {Type I LastRead 0 FirstWrite -1}
		input_buf_V_1 {Type I LastRead 0 FirstWrite -1}
		mean_acc_V_out {Type O LastRead -1 FirstWrite 0}}
	ecg_classifier_Pipeline_ZNORM_VAR {
		input_buf_V {Type I LastRead 0 FirstWrite -1}
		input_buf_V_1 {Type I LastRead 0 FirstWrite -1}
		mean_fx_V {Type I LastRead 0 FirstWrite -1}
		var_acc_V_2_out {Type O LastRead -1 FirstWrite 2}}
	ecg_classifier_Pipeline_ZNORM_APPLY {
		norm_buf_V_1 {Type O LastRead -1 FirstWrite 2}
		norm_buf_V {Type O LastRead -1 FirstWrite 2}
		input_buf_V {Type I LastRead 0 FirstWrite -1}
		input_buf_V_1 {Type I LastRead 0 FirstWrite -1}
		rhs {Type I LastRead 0 FirstWrite -1}
		sext_ln74 {Type I LastRead 0 FirstWrite -1}}
	ecg_classifier_Pipeline_GAP_INIT {
		gap_buf_V_1 {Type O LastRead -1 FirstWrite 0}
		gap_buf_V {Type O LastRead -1 FirstWrite 0}}
	ecg_classifier_Pipeline_L0_K_FILL {
		sext_ln128 {Type I LastRead 0 FirstWrite -1}
		sub_ln837 {Type I LastRead 0 FirstWrite -1}
		add_ln113_1 {Type I LastRead 0 FirstWrite -1}
		t_5 {Type I LastRead 0 FirstWrite -1}
		trunc_ln114_mid2 {Type I LastRead 0 FirstWrite -1}
		norm_buf_V {Type I LastRead 0 FirstWrite -1}
		norm_buf_V_1 {Type I LastRead 0 FirstWrite -1}
		x_V_1_out {Type O LastRead -1 FirstWrite 2}
		L0_W_V_0 {Type I LastRead -1 FirstWrite -1}}
	ecg_classifier_Pipeline_L1_IC_L1_K {
		sext_ln146 {Type I LastRead 0 FirstWrite -1}
		zext_ln837_7 {Type I LastRead 0 FirstWrite -1}
		win0_V {Type I LastRead 1 FirstWrite -1}
		win0_V_1 {Type I LastRead 1 FirstWrite -1}
		win0_V_2 {Type I LastRead 1 FirstWrite -1}
		win0_V_3 {Type I LastRead 1 FirstWrite -1}
		win0_V_4 {Type I LastRead 1 FirstWrite -1}
		win0_V_5 {Type I LastRead 1 FirstWrite -1}
		win0_V_6 {Type I LastRead 1 FirstWrite -1}
		phi_ln818_out {Type O LastRead -1 FirstWrite 3}
		clf_w_L1_W_V {Type I LastRead -1 FirstWrite -1}}
	ecg_classifier_Pipeline_L2_IC_L2_K {
		sext_ln178 {Type I LastRead 0 FirstWrite -1}
		sext_ln177 {Type I LastRead 0 FirstWrite -1}
		win01_V_2 {Type I LastRead 2 FirstWrite -1}
		win01_V_3 {Type I LastRead 2 FirstWrite -1}
		win01_V_4 {Type I LastRead 2 FirstWrite -1}
		win01_V_5 {Type I LastRead 2 FirstWrite -1}
		win01_V_6 {Type I LastRead 2 FirstWrite -1}
		win01_V_7 {Type I LastRead 2 FirstWrite -1}
		win01_V_8 {Type I LastRead 2 FirstWrite -1}
		win01_V_9 {Type I LastRead 2 FirstWrite -1}
		oc_base_1 {Type I LastRead 0 FirstWrite -1}
		zext_ln837_9 {Type I LastRead 0 FirstWrite -1}
		phi_ln818_3_out {Type O LastRead -1 FirstWrite 3}
		phi_ln818_4_out {Type O LastRead -1 FirstWrite 3}
		clf_w_L2_W_V {Type I LastRead -1 FirstWrite -1}}
	ecg_classifier_Pipeline_GAP_NORM {
		gap_buf_V_1 {Type IO LastRead 0 FirstWrite 3}
		gap_buf_V {Type IO LastRead 0 FirstWrite 3}}
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
		clf_w_L3_W_V {Type I LastRead -1 FirstWrite -1}}
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
		clf_w_L4_W_V {Type I LastRead -1 FirstWrite -1}}
	ecg_classifier_Pipeline_D0_IC {
		sext_ln289 {Type I LastRead 0 FirstWrite -1}
		sub_ln837_2 {Type I LastRead 0 FirstWrite -1}
		gap_buf_V {Type I LastRead 0 FirstWrite -1}
		gap_buf_V_1 {Type I LastRead 0 FirstWrite -1}
		x_V_8_out {Type O LastRead -1 FirstWrite 2}
		clf_w_L5_W_V {Type I LastRead -1 FirstWrite -1}}
	ecg_classifier_Pipeline_D1_IC {
		sext_ln300 {Type I LastRead 0 FirstWrite -1}
		zext_ln837_17 {Type I LastRead 0 FirstWrite -1}
		dense0_buf_V {Type I LastRead 0 FirstWrite -1}
		dense0_buf_V_1 {Type I LastRead 0 FirstWrite -1}
		acc_V_20_out {Type O LastRead -1 FirstWrite 2}
		clf_w_L6_W_V {Type I LastRead -1 FirstWrite -1}}
	ecg_classifier_Pipeline_WRITE_OUTPUT {
		ea {Type I LastRead 0 FirstWrite -1}
		eb {Type I LastRead 0 FirstWrite -1}
		s_1 {Type I LastRead 0 FirstWrite -1}
		out_stream_V_data_V {Type O LastRead -1 FirstWrite 10}
		out_stream_V_keep_V {Type O LastRead -1 FirstWrite 10}
		out_stream_V_strb_V {Type O LastRead -1 FirstWrite 10}
		out_stream_V_user_V {Type O LastRead -1 FirstWrite 10}
		out_stream_V_last_V {Type O LastRead -1 FirstWrite 10}
		out_stream_V_id_V {Type O LastRead -1 FirstWrite 10}
		out_stream_V_dest_V {Type O LastRead -1 FirstWrite 10}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "9120854", "Max" : "9120854"}
	, {"Name" : "Interval", "Min" : "9120855", "Max" : "9120855"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	in_stream_V_data_V { axis {  { in_stream_TDATA in_data 0 32 } } }
	in_stream_V_keep_V { axis {  { in_stream_TKEEP in_data 0 4 } } }
	in_stream_V_strb_V { axis {  { in_stream_TSTRB in_data 0 4 } } }
	in_stream_V_user_V { axis {  { in_stream_TUSER in_data 0 1 } } }
	in_stream_V_last_V { axis {  { in_stream_TLAST in_data 0 1 } } }
	in_stream_V_id_V { axis {  { in_stream_TID in_data 0 1 } } }
	in_stream_V_dest_V { axis {  { in_stream_TVALID in_vld 0 1 }  { in_stream_TREADY in_acc 1 1 }  { in_stream_TDEST in_data 0 1 } } }
	out_stream_V_data_V { axis {  { out_stream_TDATA out_data 1 32 } } }
	out_stream_V_keep_V { axis {  { out_stream_TKEEP out_data 1 4 } } }
	out_stream_V_strb_V { axis {  { out_stream_TSTRB out_data 1 4 } } }
	out_stream_V_user_V { axis {  { out_stream_TUSER out_data 1 1 } } }
	out_stream_V_last_V { axis {  { out_stream_TLAST out_data 1 1 } } }
	out_stream_V_id_V { axis {  { out_stream_TID out_data 1 1 } } }
	out_stream_V_dest_V { axis {  { out_stream_TVALID out_vld 1 1 }  { out_stream_TREADY out_acc 0 1 }  { out_stream_TDEST out_data 1 1 } } }
}

set maxi_interface_dict [dict create]

# RTL port scheduling information:
set fifoSchedulingInfoList { 
}

# RTL bus port read request latency information:
set busReadReqLatencyList { 
}

# RTL bus port write response latency information:
set busWriteResLatencyList { 
}

# RTL array port load latency information:
set memoryLoadLatencyList { 
}
