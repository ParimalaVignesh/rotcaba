set moduleName ecg_denoiser
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
set C_modelName {ecg_denoiser}
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
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "3", "4", "5", "6", "8", "11", "15", "19", "102", "104", "105", "106", "107", "108", "109", "110", "111", "112", "113", "114", "115", "116", "117", "118", "119", "120", "121", "122", "123"],
		"CDFG" : "ecg_denoiser",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "19755865", "EstimateLatencyMax" : "19755865",
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
					{"ID" : "6", "SubInstance" : "grp_ecg_denoiser_Pipeline_READ_INPUT_fu_228", "Port" : "in_stream_V_data_V", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "in_stream_V_keep_V", "Type" : "Axis", "Direction" : "I", "BaseName" : "in_stream",
				"SubConnect" : [
					{"ID" : "6", "SubInstance" : "grp_ecg_denoiser_Pipeline_READ_INPUT_fu_228", "Port" : "in_stream_V_keep_V", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "in_stream_V_strb_V", "Type" : "Axis", "Direction" : "I", "BaseName" : "in_stream",
				"SubConnect" : [
					{"ID" : "6", "SubInstance" : "grp_ecg_denoiser_Pipeline_READ_INPUT_fu_228", "Port" : "in_stream_V_strb_V", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "in_stream_V_user_V", "Type" : "Axis", "Direction" : "I", "BaseName" : "in_stream",
				"SubConnect" : [
					{"ID" : "6", "SubInstance" : "grp_ecg_denoiser_Pipeline_READ_INPUT_fu_228", "Port" : "in_stream_V_user_V", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "in_stream_V_last_V", "Type" : "Axis", "Direction" : "I", "BaseName" : "in_stream",
				"SubConnect" : [
					{"ID" : "6", "SubInstance" : "grp_ecg_denoiser_Pipeline_READ_INPUT_fu_228", "Port" : "in_stream_V_last_V", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "in_stream_V_id_V", "Type" : "Axis", "Direction" : "I", "BaseName" : "in_stream",
				"SubConnect" : [
					{"ID" : "6", "SubInstance" : "grp_ecg_denoiser_Pipeline_READ_INPUT_fu_228", "Port" : "in_stream_V_id_V", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "in_stream_V_dest_V", "Type" : "Axis", "Direction" : "I", "BaseName" : "in_stream",
				"SubConnect" : [
					{"ID" : "6", "SubInstance" : "grp_ecg_denoiser_Pipeline_READ_INPUT_fu_228", "Port" : "in_stream_V_dest_V", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "out_stream_V_data_V", "Type" : "Axis", "Direction" : "O", "BaseName" : "out_stream",
				"SubConnect" : [
					{"ID" : "102", "SubInstance" : "grp_ecg_denoiser_Pipeline_WRITE_OUTPUT_fu_298", "Port" : "out_stream_V_data_V", "Inst_start_state" : "67", "Inst_end_state" : "68"}]},
			{"Name" : "out_stream_V_keep_V", "Type" : "Axis", "Direction" : "O", "BaseName" : "out_stream",
				"SubConnect" : [
					{"ID" : "102", "SubInstance" : "grp_ecg_denoiser_Pipeline_WRITE_OUTPUT_fu_298", "Port" : "out_stream_V_keep_V", "Inst_start_state" : "67", "Inst_end_state" : "68"}]},
			{"Name" : "out_stream_V_strb_V", "Type" : "Axis", "Direction" : "O", "BaseName" : "out_stream",
				"SubConnect" : [
					{"ID" : "102", "SubInstance" : "grp_ecg_denoiser_Pipeline_WRITE_OUTPUT_fu_298", "Port" : "out_stream_V_strb_V", "Inst_start_state" : "67", "Inst_end_state" : "68"}]},
			{"Name" : "out_stream_V_user_V", "Type" : "Axis", "Direction" : "O", "BaseName" : "out_stream",
				"SubConnect" : [
					{"ID" : "102", "SubInstance" : "grp_ecg_denoiser_Pipeline_WRITE_OUTPUT_fu_298", "Port" : "out_stream_V_user_V", "Inst_start_state" : "67", "Inst_end_state" : "68"}]},
			{"Name" : "out_stream_V_last_V", "Type" : "Axis", "Direction" : "O", "BaseName" : "out_stream",
				"SubConnect" : [
					{"ID" : "102", "SubInstance" : "grp_ecg_denoiser_Pipeline_WRITE_OUTPUT_fu_298", "Port" : "out_stream_V_last_V", "Inst_start_state" : "67", "Inst_end_state" : "68"}]},
			{"Name" : "out_stream_V_id_V", "Type" : "Axis", "Direction" : "O", "BaseName" : "out_stream",
				"SubConnect" : [
					{"ID" : "102", "SubInstance" : "grp_ecg_denoiser_Pipeline_WRITE_OUTPUT_fu_298", "Port" : "out_stream_V_id_V", "Inst_start_state" : "67", "Inst_end_state" : "68"}]},
			{"Name" : "out_stream_V_dest_V", "Type" : "Axis", "Direction" : "O", "BaseName" : "out_stream",
				"SubConnect" : [
					{"ID" : "102", "SubInstance" : "grp_ecg_denoiser_Pipeline_WRITE_OUTPUT_fu_298", "Port" : "out_stream_V_dest_V", "Inst_start_state" : "67", "Inst_end_state" : "68"}]},
			{"Name" : "denoiser_w_L0_b_V", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "19", "SubInstance" : "grp_conv_layer01234_fused_fu_273", "Port" : "denoiser_w_L0_b_V", "Inst_start_state" : "65", "Inst_end_state" : "66"}]},
			{"Name" : "denoiser_w_L0_W_V", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "19", "SubInstance" : "grp_conv_layer01234_fused_fu_273", "Port" : "denoiser_w_L0_W_V", "Inst_start_state" : "65", "Inst_end_state" : "66"}]},
			{"Name" : "denoiser_w_L1_b_V", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "19", "SubInstance" : "grp_conv_layer01234_fused_fu_273", "Port" : "denoiser_w_L1_b_V", "Inst_start_state" : "65", "Inst_end_state" : "66"}]},
			{"Name" : "denoiser_w_L1_W_V", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "19", "SubInstance" : "grp_conv_layer01234_fused_fu_273", "Port" : "denoiser_w_L1_W_V", "Inst_start_state" : "65", "Inst_end_state" : "66"}]},
			{"Name" : "denoiser_w_L2_b_V", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "19", "SubInstance" : "grp_conv_layer01234_fused_fu_273", "Port" : "denoiser_w_L2_b_V", "Inst_start_state" : "65", "Inst_end_state" : "66"}]},
			{"Name" : "denoiser_w_L2_W_V", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "19", "SubInstance" : "grp_conv_layer01234_fused_fu_273", "Port" : "denoiser_w_L2_W_V", "Inst_start_state" : "65", "Inst_end_state" : "66"}]},
			{"Name" : "denoiser_w_L3_b_V", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "19", "SubInstance" : "grp_conv_layer01234_fused_fu_273", "Port" : "denoiser_w_L3_b_V", "Inst_start_state" : "65", "Inst_end_state" : "66"}]},
			{"Name" : "denoiser_w_L3_W_V", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "19", "SubInstance" : "grp_conv_layer01234_fused_fu_273", "Port" : "denoiser_w_L3_W_V", "Inst_start_state" : "65", "Inst_end_state" : "66"}]},
			{"Name" : "denoiser_w_L4_W_V", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "19", "SubInstance" : "grp_conv_layer01234_fused_fu_273", "Port" : "denoiser_w_L4_W_V", "Inst_start_state" : "65", "Inst_end_state" : "66"}]}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.input_buf_V_U", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.input_buf_V_1_U", "Parent" : "0"},
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.norm_buf_V_U", "Parent" : "0"},
	{"ID" : "4", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.norm_buf_V_1_U", "Parent" : "0"},
	{"ID" : "5", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.buf41210_U", "Parent" : "0"},
	{"ID" : "6", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_ecg_denoiser_Pipeline_READ_INPUT_fu_228", "Parent" : "0", "Child" : ["7"],
		"CDFG" : "ecg_denoiser_Pipeline_READ_INPUT",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "362", "EstimateLatencyMax" : "362",
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
	{"ID" : "7", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_ecg_denoiser_Pipeline_READ_INPUT_fu_228.flow_control_loop_pipe_sequential_init_U", "Parent" : "6"},
	{"ID" : "8", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_ecg_denoiser_Pipeline_ZNORM_MEAN_fu_248", "Parent" : "0", "Child" : ["9", "10"],
		"CDFG" : "ecg_denoiser_Pipeline_ZNORM_MEAN",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "362", "EstimateLatencyMax" : "362",
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
	{"ID" : "9", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_ecg_denoiser_Pipeline_ZNORM_MEAN_fu_248.mux_21_32_1_1_U10", "Parent" : "8"},
	{"ID" : "10", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_ecg_denoiser_Pipeline_ZNORM_MEAN_fu_248.flow_control_loop_pipe_sequential_init_U", "Parent" : "8"},
	{"ID" : "11", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_ecg_denoiser_Pipeline_ZNORM_VAR_fu_255", "Parent" : "0", "Child" : ["12", "13", "14"],
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
	{"ID" : "12", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_ecg_denoiser_Pipeline_ZNORM_VAR_fu_255.mux_21_32_1_1_U15", "Parent" : "11"},
	{"ID" : "13", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_ecg_denoiser_Pipeline_ZNORM_VAR_fu_255.mul_40s_40s_72_1_1_U16", "Parent" : "11"},
	{"ID" : "14", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_ecg_denoiser_Pipeline_ZNORM_VAR_fu_255.flow_control_loop_pipe_sequential_init_U", "Parent" : "11"},
	{"ID" : "15", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_ecg_denoiser_Pipeline_ZNORM_APPLY_fu_263", "Parent" : "0", "Child" : ["16", "17", "18"],
		"CDFG" : "ecg_denoiser_Pipeline_ZNORM_APPLY",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "363", "EstimateLatencyMax" : "363",
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
			{"Name" : "sext_ln272", "Type" : "None", "Direction" : "I"}],
		"Loop" : [
			{"Name" : "ZNORM_APPLY", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter2", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter2", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "16", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_ecg_denoiser_Pipeline_ZNORM_APPLY_fu_263.mux_21_32_1_1_U22", "Parent" : "15"},
	{"ID" : "17", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_ecg_denoiser_Pipeline_ZNORM_APPLY_fu_263.mul_33s_32s_48_1_1_U23", "Parent" : "15"},
	{"ID" : "18", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_ecg_denoiser_Pipeline_ZNORM_APPLY_fu_263.flow_control_loop_pipe_sequential_init_U", "Parent" : "15"},
	{"ID" : "19", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_conv_layer01234_fused_fu_273", "Parent" : "0", "Child" : ["20", "21", "22", "23", "24", "25", "26", "27", "28", "29", "30", "31", "32", "33", "34", "35", "36", "37", "38", "39", "40", "41", "42", "43", "44", "45", "46", "47", "48", "49", "50", "51", "52", "53", "54", "59", "65", "71", "83"],
		"CDFG" : "conv_layer01234_fused",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "19753984", "EstimateLatencyMax" : "19753984",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "in_0", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "54", "SubInstance" : "grp_conv_layer01234_fused_Pipeline_L0_K_fu_11063", "Port" : "in_0", "Inst_start_state" : "67", "Inst_end_state" : "68"}]},
			{"Name" : "in_1", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "54", "SubInstance" : "grp_conv_layer01234_fused_Pipeline_L0_K_fu_11063", "Port" : "in_1", "Inst_start_state" : "67", "Inst_end_state" : "68"}]},
			{"Name" : "out_r", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "denoiser_w_L0_b_V", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "denoiser_w_L0_W_V", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "54", "SubInstance" : "grp_conv_layer01234_fused_Pipeline_L0_K_fu_11063", "Port" : "denoiser_w_L0_W_V", "Inst_start_state" : "67", "Inst_end_state" : "68"}]},
			{"Name" : "denoiser_w_L1_b_V", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "denoiser_w_L1_W_V", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "59", "SubInstance" : "grp_conv_layer01234_fused_Pipeline_L1_IC_L1_K_fu_11080", "Port" : "denoiser_w_L1_W_V", "Inst_start_state" : "134", "Inst_end_state" : "135"}]},
			{"Name" : "denoiser_w_L2_b_V", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "denoiser_w_L2_W_V", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "65", "SubInstance" : "grp_conv_layer01234_fused_Pipeline_L2_IC_L2_K_fu_11097", "Port" : "denoiser_w_L2_W_V", "Inst_start_state" : "265", "Inst_end_state" : "266"}]},
			{"Name" : "denoiser_w_L3_b_V", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "denoiser_w_L3_W_V", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "71", "SubInstance" : "grp_conv_layer01234_fused_Pipeline_L3_IC_L3_K_fu_11112", "Port" : "denoiser_w_L3_W_V", "Inst_start_state" : "300", "Inst_end_state" : "301"}]},
			{"Name" : "denoiser_w_L4_W_V", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "83", "SubInstance" : "grp_conv_layer01234_fused_Pipeline_L4_IC_L4_K_fu_11128", "Port" : "denoiser_w_L4_W_V", "Inst_start_state" : "318", "Inst_end_state" : "319"}]}],
		"Loop" : [
			{"Name" : "L0_OC", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "320", "FirstState" : "ap_ST_fsm_state66", "LastState" : ["ap_ST_fsm_state69"], "QuitState" : ["ap_ST_fsm_state66"], "PreState" : ["ap_ST_fsm_state65"], "PostState" : ["ap_ST_fsm_state70"], "OneDepthLoop" : "0", "OneStateBlock": ""}},
			{"Name" : "L1_OC_GROUP", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "320", "FirstState" : "ap_ST_fsm_state133", "LastState" : ["ap_ST_fsm_state136"], "QuitState" : ["ap_ST_fsm_state133"], "PreState" : ["ap_ST_fsm_state132"], "PostState" : ["ap_ST_fsm_state137"], "OneDepthLoop" : "0", "OneStateBlock": ""}},
			{"Name" : "L2_OC_GROUP", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "320", "FirstState" : "ap_ST_fsm_state264", "LastState" : ["ap_ST_fsm_state267"], "QuitState" : ["ap_ST_fsm_state264"], "PreState" : ["ap_ST_fsm_state263"], "PostState" : ["ap_ST_fsm_state268"], "OneDepthLoop" : "0", "OneStateBlock": ""}},
			{"Name" : "L3_OC_GROUP", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "320", "FirstState" : "ap_ST_fsm_state299", "LastState" : ["ap_ST_fsm_state302"], "QuitState" : ["ap_ST_fsm_state299"], "PreState" : ["ap_ST_fsm_state298"], "PostState" : ["ap_ST_fsm_state303"], "OneDepthLoop" : "0", "OneStateBlock": ""}},
			{"Name" : "FUSED_T", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "320", "FirstState" : "ap_ST_fsm_state65", "LastState" : ["ap_ST_fsm_state320"], "QuitState" : ["ap_ST_fsm_state65"], "PreState" : ["ap_ST_fsm_state64"], "PostState" : ["ap_ST_fsm_state1"], "OneDepthLoop" : "0", "OneStateBlock": ""}}]},
	{"ID" : "20", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_conv_layer01234_fused_fu_273.denoiser_w_L0_b_V_U", "Parent" : "19"},
	{"ID" : "21", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_conv_layer01234_fused_fu_273.denoiser_w_L1_b_V_U", "Parent" : "19"},
	{"ID" : "22", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_conv_layer01234_fused_fu_273.denoiser_w_L2_b_V_U", "Parent" : "19"},
	{"ID" : "23", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_conv_layer01234_fused_fu_273.denoiser_w_L3_b_V_U", "Parent" : "19"},
	{"ID" : "24", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_conv_layer01234_fused_fu_273.win01_V_U", "Parent" : "19"},
	{"ID" : "25", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_conv_layer01234_fused_fu_273.win01_V_1_U", "Parent" : "19"},
	{"ID" : "26", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_conv_layer01234_fused_fu_273.win01_V_2_U", "Parent" : "19"},
	{"ID" : "27", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_conv_layer01234_fused_fu_273.win01_V_3_U", "Parent" : "19"},
	{"ID" : "28", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_conv_layer01234_fused_fu_273.win01_V_4_U", "Parent" : "19"},
	{"ID" : "29", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_conv_layer01234_fused_fu_273.win12_V_U", "Parent" : "19"},
	{"ID" : "30", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_conv_layer01234_fused_fu_273.win12_V_1_U", "Parent" : "19"},
	{"ID" : "31", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_conv_layer01234_fused_fu_273.win12_V_2_U", "Parent" : "19"},
	{"ID" : "32", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_conv_layer01234_fused_fu_273.win23_V_U", "Parent" : "19"},
	{"ID" : "33", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_conv_layer01234_fused_fu_273.win23_V_1_U", "Parent" : "19"},
	{"ID" : "34", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_conv_layer01234_fused_fu_273.win23_V_2_U", "Parent" : "19"},
	{"ID" : "35", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_conv_layer01234_fused_fu_273.win23_V_3_U", "Parent" : "19"},
	{"ID" : "36", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_conv_layer01234_fused_fu_273.win34_V_U", "Parent" : "19"},
	{"ID" : "37", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_conv_layer01234_fused_fu_273.win34_V_1_U", "Parent" : "19"},
	{"ID" : "38", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_conv_layer01234_fused_fu_273.win34_V_2_U", "Parent" : "19"},
	{"ID" : "39", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_conv_layer01234_fused_fu_273.win34_V_3_U", "Parent" : "19"},
	{"ID" : "40", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_conv_layer01234_fused_fu_273.win34_V_4_U", "Parent" : "19"},
	{"ID" : "41", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_conv_layer01234_fused_fu_273.win34_V_5_U", "Parent" : "19"},
	{"ID" : "42", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_conv_layer01234_fused_fu_273.win34_V_6_U", "Parent" : "19"},
	{"ID" : "43", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_conv_layer01234_fused_fu_273.win34_V_7_U", "Parent" : "19"},
	{"ID" : "44", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_conv_layer01234_fused_fu_273.win34_V_8_U", "Parent" : "19"},
	{"ID" : "45", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_conv_layer01234_fused_fu_273.win34_V_9_U", "Parent" : "19"},
	{"ID" : "46", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_conv_layer01234_fused_fu_273.l0_out_V_U", "Parent" : "19"},
	{"ID" : "47", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_conv_layer01234_fused_fu_273.l0_out_V_1_U", "Parent" : "19"},
	{"ID" : "48", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_conv_layer01234_fused_fu_273.l1_out_V_U", "Parent" : "19"},
	{"ID" : "49", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_conv_layer01234_fused_fu_273.l1_out_V_1_U", "Parent" : "19"},
	{"ID" : "50", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_conv_layer01234_fused_fu_273.l2_out_V_U", "Parent" : "19"},
	{"ID" : "51", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_conv_layer01234_fused_fu_273.l2_out_V_1_U", "Parent" : "19"},
	{"ID" : "52", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_conv_layer01234_fused_fu_273.l3_out_V_U", "Parent" : "19"},
	{"ID" : "53", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_conv_layer01234_fused_fu_273.l3_out_V_1_U", "Parent" : "19"},
	{"ID" : "54", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_conv_layer01234_fused_fu_273.grp_conv_layer01234_fused_Pipeline_L0_K_fu_11063", "Parent" : "19", "Child" : ["55", "56", "57", "58"],
		"CDFG" : "conv_layer01234_fused_Pipeline_L0_K",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "15", "EstimateLatencyMax" : "15",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "sext_ln77", "Type" : "None", "Direction" : "I"},
			{"Name" : "phi_mul", "Type" : "None", "Direction" : "I"},
			{"Name" : "add_ln81", "Type" : "None", "Direction" : "I"},
			{"Name" : "add_ln82_1", "Type" : "None", "Direction" : "I"},
			{"Name" : "in_0", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "in_1", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "trunc_ln", "Type" : "None", "Direction" : "I"},
			{"Name" : "x_V_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "denoiser_w_L0_W_V", "Type" : "Memory", "Direction" : "I"}],
		"Loop" : [
			{"Name" : "L0_K", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter3", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter3", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "55", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_conv_layer01234_fused_fu_273.grp_conv_layer01234_fused_Pipeline_L0_K_fu_11063.denoiser_w_L0_W_V_U", "Parent" : "54"},
	{"ID" : "56", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_conv_layer01234_fused_fu_273.grp_conv_layer01234_fused_Pipeline_L0_K_fu_11063.mux_21_32_1_1_U31", "Parent" : "54"},
	{"ID" : "57", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_conv_layer01234_fused_fu_273.grp_conv_layer01234_fused_Pipeline_L0_K_fu_11063.mul_24s_40s_63_1_1_U32", "Parent" : "54"},
	{"ID" : "58", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_conv_layer01234_fused_fu_273.grp_conv_layer01234_fused_Pipeline_L0_K_fu_11063.flow_control_loop_pipe_sequential_init_U", "Parent" : "54"},
	{"ID" : "59", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_conv_layer01234_fused_fu_273.grp_conv_layer01234_fused_Pipeline_L1_IC_L1_K_fu_11080", "Parent" : "19", "Child" : ["60", "61", "62", "63", "64"],
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
	{"ID" : "60", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_conv_layer01234_fused_fu_273.grp_conv_layer01234_fused_Pipeline_L1_IC_L1_K_fu_11080.denoiser_w_L1_W_V_U", "Parent" : "59"},
	{"ID" : "61", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_conv_layer01234_fused_fu_273.grp_conv_layer01234_fused_Pipeline_L1_IC_L1_K_fu_11080.mux_73_32_1_1_U43", "Parent" : "59"},
	{"ID" : "62", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_conv_layer01234_fused_fu_273.grp_conv_layer01234_fused_Pipeline_L1_IC_L1_K_fu_11080.mul_23s_40s_62_1_1_U44", "Parent" : "59"},
	{"ID" : "63", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_conv_layer01234_fused_fu_273.grp_conv_layer01234_fused_Pipeline_L1_IC_L1_K_fu_11080.mul_23s_40s_62_1_1_U45", "Parent" : "59"},
	{"ID" : "64", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_conv_layer01234_fused_fu_273.grp_conv_layer01234_fused_Pipeline_L1_IC_L1_K_fu_11080.flow_control_loop_pipe_sequential_init_U", "Parent" : "59"},
	{"ID" : "65", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_conv_layer01234_fused_fu_273.grp_conv_layer01234_fused_Pipeline_L2_IC_L2_K_fu_11097", "Parent" : "19", "Child" : ["66", "67", "68", "69", "70"],
		"CDFG" : "conv_layer01234_fused_Pipeline_L2_IC_L2_K",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "644", "EstimateLatencyMax" : "644",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "sext_ln143", "Type" : "None", "Direction" : "I"},
			{"Name" : "sext_ln142", "Type" : "None", "Direction" : "I"},
			{"Name" : "oc_base_1", "Type" : "None", "Direction" : "I"},
			{"Name" : "zext_ln837_4", "Type" : "None", "Direction" : "I"},
			{"Name" : "win12_V_1", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "win12_V_2", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "win12_V_3", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "phi_ln818_2_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "phi_ln818_3_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "denoiser_w_L2_W_V", "Type" : "Memory", "Direction" : "I"}],
		"Loop" : [
			{"Name" : "L2_IC_L2_K", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter3", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter3", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "66", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_conv_layer01234_fused_fu_273.grp_conv_layer01234_fused_Pipeline_L2_IC_L2_K_fu_11097.denoiser_w_L2_W_V_U", "Parent" : "65"},
	{"ID" : "67", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_conv_layer01234_fused_fu_273.grp_conv_layer01234_fused_Pipeline_L2_IC_L2_K_fu_11097.mux_53_32_1_1_U60", "Parent" : "65"},
	{"ID" : "68", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_conv_layer01234_fused_fu_273.grp_conv_layer01234_fused_Pipeline_L2_IC_L2_K_fu_11097.mul_23s_40s_62_1_1_U61", "Parent" : "65"},
	{"ID" : "69", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_conv_layer01234_fused_fu_273.grp_conv_layer01234_fused_Pipeline_L2_IC_L2_K_fu_11097.mul_23s_40s_62_1_1_U62", "Parent" : "65"},
	{"ID" : "70", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_conv_layer01234_fused_fu_273.grp_conv_layer01234_fused_Pipeline_L2_IC_L2_K_fu_11097.flow_control_loop_pipe_sequential_init_U", "Parent" : "65"},
	{"ID" : "71", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_conv_layer01234_fused_fu_273.grp_conv_layer01234_fused_Pipeline_L3_IC_L3_K_fu_11112", "Parent" : "19", "Child" : ["72", "73", "74", "75", "76", "77", "78", "79", "80", "81", "82"],
		"CDFG" : "conv_layer01234_fused_Pipeline_L3_IC_L3_K",
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
			{"Name" : "sext_ln178", "Type" : "None", "Direction" : "I"},
			{"Name" : "sext_ln177", "Type" : "None", "Direction" : "I"},
			{"Name" : "win23_V_2", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "win23_V_3", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "win23_V_4", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "win23_V_5", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "oc_base_2", "Type" : "None", "Direction" : "I"},
			{"Name" : "zext_ln837_5", "Type" : "None", "Direction" : "I"},
			{"Name" : "phi_ln818_4_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "phi_ln818_5_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "denoiser_w_L3_W_V", "Type" : "Memory", "Direction" : "I"}],
		"Loop" : [
			{"Name" : "L3_IC_L3_K", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter3", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter3", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "72", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_conv_layer01234_fused_fu_273.grp_conv_layer01234_fused_Pipeline_L3_IC_L3_K_fu_11112.denoiser_w_L3_W_V_U", "Parent" : "71"},
	{"ID" : "73", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_conv_layer01234_fused_fu_273.grp_conv_layer01234_fused_Pipeline_L3_IC_L3_K_fu_11112.mux_21_31_1_1_U74", "Parent" : "71"},
	{"ID" : "74", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_conv_layer01234_fused_fu_273.grp_conv_layer01234_fused_Pipeline_L3_IC_L3_K_fu_11112.mux_21_31_1_1_U75", "Parent" : "71"},
	{"ID" : "75", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_conv_layer01234_fused_fu_273.grp_conv_layer01234_fused_Pipeline_L3_IC_L3_K_fu_11112.mux_21_31_1_1_U76", "Parent" : "71"},
	{"ID" : "76", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_conv_layer01234_fused_fu_273.grp_conv_layer01234_fused_Pipeline_L3_IC_L3_K_fu_11112.mux_21_31_1_1_U77", "Parent" : "71"},
	{"ID" : "77", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_conv_layer01234_fused_fu_273.grp_conv_layer01234_fused_Pipeline_L3_IC_L3_K_fu_11112.mux_21_31_1_1_U78", "Parent" : "71"},
	{"ID" : "78", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_conv_layer01234_fused_fu_273.grp_conv_layer01234_fused_Pipeline_L3_IC_L3_K_fu_11112.mux_21_31_1_1_U79", "Parent" : "71"},
	{"ID" : "79", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_conv_layer01234_fused_fu_273.grp_conv_layer01234_fused_Pipeline_L3_IC_L3_K_fu_11112.mux_32_31_1_1_U80", "Parent" : "71"},
	{"ID" : "80", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_conv_layer01234_fused_fu_273.grp_conv_layer01234_fused_Pipeline_L3_IC_L3_K_fu_11112.mul_23s_39ns_62_1_1_U81", "Parent" : "71"},
	{"ID" : "81", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_conv_layer01234_fused_fu_273.grp_conv_layer01234_fused_Pipeline_L3_IC_L3_K_fu_11112.mul_23s_39ns_62_1_1_U82", "Parent" : "71"},
	{"ID" : "82", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_conv_layer01234_fused_fu_273.grp_conv_layer01234_fused_Pipeline_L3_IC_L3_K_fu_11112.flow_control_loop_pipe_sequential_init_U", "Parent" : "71"},
	{"ID" : "83", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_conv_layer01234_fused_fu_273.grp_conv_layer01234_fused_Pipeline_L4_IC_L4_K_fu_11128", "Parent" : "19", "Child" : ["84", "85", "86", "87", "88", "89", "90", "91", "92", "93", "94", "95", "96", "97", "98", "99", "100", "101"],
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
	{"ID" : "84", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_conv_layer01234_fused_fu_273.grp_conv_layer01234_fused_Pipeline_L4_IC_L4_K_fu_11128.denoiser_w_L4_W_V_U", "Parent" : "83"},
	{"ID" : "85", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_conv_layer01234_fused_fu_273.grp_conv_layer01234_fused_Pipeline_L4_IC_L4_K_fu_11128.mux_21_32_1_1_U97", "Parent" : "83"},
	{"ID" : "86", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_conv_layer01234_fused_fu_273.grp_conv_layer01234_fused_Pipeline_L4_IC_L4_K_fu_11128.mux_21_31_1_1_U98", "Parent" : "83"},
	{"ID" : "87", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_conv_layer01234_fused_fu_273.grp_conv_layer01234_fused_Pipeline_L4_IC_L4_K_fu_11128.mux_21_31_1_1_U99", "Parent" : "83"},
	{"ID" : "88", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_conv_layer01234_fused_fu_273.grp_conv_layer01234_fused_Pipeline_L4_IC_L4_K_fu_11128.mux_21_31_1_1_U100", "Parent" : "83"},
	{"ID" : "89", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_conv_layer01234_fused_fu_273.grp_conv_layer01234_fused_Pipeline_L4_IC_L4_K_fu_11128.mux_21_31_1_1_U101", "Parent" : "83"},
	{"ID" : "90", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_conv_layer01234_fused_fu_273.grp_conv_layer01234_fused_Pipeline_L4_IC_L4_K_fu_11128.mux_21_31_1_1_U102", "Parent" : "83"},
	{"ID" : "91", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_conv_layer01234_fused_fu_273.grp_conv_layer01234_fused_Pipeline_L4_IC_L4_K_fu_11128.mux_21_31_1_1_U103", "Parent" : "83"},
	{"ID" : "92", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_conv_layer01234_fused_fu_273.grp_conv_layer01234_fused_Pipeline_L4_IC_L4_K_fu_11128.mux_21_32_1_1_U104", "Parent" : "83"},
	{"ID" : "93", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_conv_layer01234_fused_fu_273.grp_conv_layer01234_fused_Pipeline_L4_IC_L4_K_fu_11128.mux_21_31_1_1_U105", "Parent" : "83"},
	{"ID" : "94", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_conv_layer01234_fused_fu_273.grp_conv_layer01234_fused_Pipeline_L4_IC_L4_K_fu_11128.mux_21_31_1_1_U106", "Parent" : "83"},
	{"ID" : "95", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_conv_layer01234_fused_fu_273.grp_conv_layer01234_fused_Pipeline_L4_IC_L4_K_fu_11128.mux_21_31_1_1_U107", "Parent" : "83"},
	{"ID" : "96", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_conv_layer01234_fused_fu_273.grp_conv_layer01234_fused_Pipeline_L4_IC_L4_K_fu_11128.mux_21_31_1_1_U108", "Parent" : "83"},
	{"ID" : "97", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_conv_layer01234_fused_fu_273.grp_conv_layer01234_fused_Pipeline_L4_IC_L4_K_fu_11128.mux_21_31_1_1_U109", "Parent" : "83"},
	{"ID" : "98", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_conv_layer01234_fused_fu_273.grp_conv_layer01234_fused_Pipeline_L4_IC_L4_K_fu_11128.mux_21_31_1_1_U110", "Parent" : "83"},
	{"ID" : "99", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_conv_layer01234_fused_fu_273.grp_conv_layer01234_fused_Pipeline_L4_IC_L4_K_fu_11128.mux_73_32_1_1_U111", "Parent" : "83"},
	{"ID" : "100", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_conv_layer01234_fused_fu_273.grp_conv_layer01234_fused_Pipeline_L4_IC_L4_K_fu_11128.mul_23s_40s_62_1_1_U112", "Parent" : "83"},
	{"ID" : "101", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_conv_layer01234_fused_fu_273.grp_conv_layer01234_fused_Pipeline_L4_IC_L4_K_fu_11128.flow_control_loop_pipe_sequential_init_U", "Parent" : "83"},
	{"ID" : "102", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_ecg_denoiser_Pipeline_WRITE_OUTPUT_fu_298", "Parent" : "0", "Child" : ["103"],
		"CDFG" : "ecg_denoiser_Pipeline_WRITE_OUTPUT",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "362", "EstimateLatencyMax" : "362",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "buf41210", "Type" : "Memory", "Direction" : "I"},
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
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter0", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "103", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_ecg_denoiser_Pipeline_WRITE_OUTPUT_fu_298.flow_control_loop_pipe_sequential_init_U", "Parent" : "102"},
	{"ID" : "104", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fpext_32ns_64_2_no_dsp_1_U149", "Parent" : "0"},
	{"ID" : "105", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fcmp_32ns_32ns_1_2_no_dsp_1_U150", "Parent" : "0"},
	{"ID" : "106", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fsqrt_32ns_32ns_32_10_no_dsp_1_U151", "Parent" : "0"},
	{"ID" : "107", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_48s_9ns_56_1_1_U152", "Parent" : "0"},
	{"ID" : "108", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_48s_9ns_56_1_1_U153", "Parent" : "0"},
	{"ID" : "109", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.sdiv_34ns_32s_32_38_seq_1_U154", "Parent" : "0"},
	{"ID" : "110", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.regslice_both_in_stream_V_data_V_U", "Parent" : "0"},
	{"ID" : "111", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.regslice_both_in_stream_V_keep_V_U", "Parent" : "0"},
	{"ID" : "112", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.regslice_both_in_stream_V_strb_V_U", "Parent" : "0"},
	{"ID" : "113", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.regslice_both_in_stream_V_user_V_U", "Parent" : "0"},
	{"ID" : "114", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.regslice_both_in_stream_V_last_V_U", "Parent" : "0"},
	{"ID" : "115", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.regslice_both_in_stream_V_id_V_U", "Parent" : "0"},
	{"ID" : "116", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.regslice_both_in_stream_V_dest_V_U", "Parent" : "0"},
	{"ID" : "117", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.regslice_both_out_stream_V_data_V_U", "Parent" : "0"},
	{"ID" : "118", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.regslice_both_out_stream_V_keep_V_U", "Parent" : "0"},
	{"ID" : "119", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.regslice_both_out_stream_V_strb_V_U", "Parent" : "0"},
	{"ID" : "120", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.regslice_both_out_stream_V_user_V_U", "Parent" : "0"},
	{"ID" : "121", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.regslice_both_out_stream_V_last_V_U", "Parent" : "0"},
	{"ID" : "122", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.regslice_both_out_stream_V_id_V_U", "Parent" : "0"},
	{"ID" : "123", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.regslice_both_out_stream_V_dest_V_U", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	ecg_denoiser {
		in_stream_V_data_V {Type I LastRead 0 FirstWrite -1}
		in_stream_V_keep_V {Type I LastRead 0 FirstWrite -1}
		in_stream_V_strb_V {Type I LastRead 0 FirstWrite -1}
		in_stream_V_user_V {Type I LastRead 0 FirstWrite -1}
		in_stream_V_last_V {Type I LastRead 0 FirstWrite -1}
		in_stream_V_id_V {Type I LastRead 0 FirstWrite -1}
		in_stream_V_dest_V {Type I LastRead 0 FirstWrite -1}
		out_stream_V_data_V {Type O LastRead -1 FirstWrite 1}
		out_stream_V_keep_V {Type O LastRead -1 FirstWrite 1}
		out_stream_V_strb_V {Type O LastRead -1 FirstWrite 1}
		out_stream_V_user_V {Type O LastRead -1 FirstWrite 1}
		out_stream_V_last_V {Type O LastRead -1 FirstWrite 1}
		out_stream_V_id_V {Type O LastRead -1 FirstWrite 1}
		out_stream_V_dest_V {Type O LastRead -1 FirstWrite 1}
		denoiser_w_L0_b_V {Type I LastRead -1 FirstWrite -1}
		denoiser_w_L0_W_V {Type I LastRead -1 FirstWrite -1}
		denoiser_w_L1_b_V {Type I LastRead -1 FirstWrite -1}
		denoiser_w_L1_W_V {Type I LastRead -1 FirstWrite -1}
		denoiser_w_L2_b_V {Type I LastRead -1 FirstWrite -1}
		denoiser_w_L2_W_V {Type I LastRead -1 FirstWrite -1}
		denoiser_w_L3_b_V {Type I LastRead -1 FirstWrite -1}
		denoiser_w_L3_W_V {Type I LastRead -1 FirstWrite -1}
		denoiser_w_L4_W_V {Type I LastRead -1 FirstWrite -1}}
	ecg_denoiser_Pipeline_READ_INPUT {
		input_buf_V_1 {Type O LastRead -1 FirstWrite 0}
		input_buf_V {Type O LastRead -1 FirstWrite 0}
		in_stream_V_data_V {Type I LastRead 0 FirstWrite -1}
		in_stream_V_keep_V {Type I LastRead 0 FirstWrite -1}
		in_stream_V_strb_V {Type I LastRead 0 FirstWrite -1}
		in_stream_V_user_V {Type I LastRead 0 FirstWrite -1}
		in_stream_V_last_V {Type I LastRead 0 FirstWrite -1}
		in_stream_V_id_V {Type I LastRead 0 FirstWrite -1}
		in_stream_V_dest_V {Type I LastRead 0 FirstWrite -1}}
	ecg_denoiser_Pipeline_ZNORM_MEAN {
		input_buf_V {Type I LastRead 0 FirstWrite -1}
		input_buf_V_1 {Type I LastRead 0 FirstWrite -1}
		mean_acc_V_out {Type O LastRead -1 FirstWrite 0}}
	ecg_denoiser_Pipeline_ZNORM_VAR {
		input_buf_V {Type I LastRead 0 FirstWrite -1}
		input_buf_V_1 {Type I LastRead 0 FirstWrite -1}
		mean_fx_V {Type I LastRead 0 FirstWrite -1}
		var_acc_V_2_out {Type O LastRead -1 FirstWrite 2}}
	ecg_denoiser_Pipeline_ZNORM_APPLY {
		norm_buf_V_1 {Type O LastRead -1 FirstWrite 2}
		norm_buf_V {Type O LastRead -1 FirstWrite 2}
		input_buf_V {Type I LastRead 0 FirstWrite -1}
		input_buf_V_1 {Type I LastRead 0 FirstWrite -1}
		rhs {Type I LastRead 0 FirstWrite -1}
		sext_ln272 {Type I LastRead 0 FirstWrite -1}}
	conv_layer01234_fused {
		in_0 {Type I LastRead 0 FirstWrite -1}
		in_1 {Type I LastRead 0 FirstWrite -1}
		out_r {Type O LastRead -1 FirstWrite 307}
		denoiser_w_L0_b_V {Type I LastRead -1 FirstWrite -1}
		denoiser_w_L0_W_V {Type I LastRead -1 FirstWrite -1}
		denoiser_w_L1_b_V {Type I LastRead -1 FirstWrite -1}
		denoiser_w_L1_W_V {Type I LastRead -1 FirstWrite -1}
		denoiser_w_L2_b_V {Type I LastRead -1 FirstWrite -1}
		denoiser_w_L2_W_V {Type I LastRead -1 FirstWrite -1}
		denoiser_w_L3_b_V {Type I LastRead -1 FirstWrite -1}
		denoiser_w_L3_W_V {Type I LastRead -1 FirstWrite -1}
		denoiser_w_L4_W_V {Type I LastRead -1 FirstWrite -1}}
	conv_layer01234_fused_Pipeline_L0_K {
		sext_ln77 {Type I LastRead 0 FirstWrite -1}
		phi_mul {Type I LastRead 0 FirstWrite -1}
		add_ln81 {Type I LastRead 0 FirstWrite -1}
		add_ln82_1 {Type I LastRead 0 FirstWrite -1}
		in_0 {Type I LastRead 0 FirstWrite -1}
		in_1 {Type I LastRead 0 FirstWrite -1}
		trunc_ln {Type I LastRead 0 FirstWrite -1}
		x_V_out {Type O LastRead -1 FirstWrite 2}
		denoiser_w_L0_W_V {Type I LastRead -1 FirstWrite -1}}
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
		denoiser_w_L1_W_V {Type I LastRead -1 FirstWrite -1}}
	conv_layer01234_fused_Pipeline_L2_IC_L2_K {
		sext_ln143 {Type I LastRead 0 FirstWrite -1}
		sext_ln142 {Type I LastRead 0 FirstWrite -1}
		oc_base_1 {Type I LastRead 0 FirstWrite -1}
		zext_ln837_4 {Type I LastRead 0 FirstWrite -1}
		win12_V_1 {Type I LastRead 0 FirstWrite -1}
		win12_V_2 {Type I LastRead 0 FirstWrite -1}
		win12_V_3 {Type I LastRead 0 FirstWrite -1}
		phi_ln818_2_out {Type O LastRead -1 FirstWrite 2}
		phi_ln818_3_out {Type O LastRead -1 FirstWrite 2}
		denoiser_w_L2_W_V {Type I LastRead -1 FirstWrite -1}}
	conv_layer01234_fused_Pipeline_L3_IC_L3_K {
		sext_ln178 {Type I LastRead 0 FirstWrite -1}
		sext_ln177 {Type I LastRead 0 FirstWrite -1}
		win23_V_2 {Type I LastRead 1 FirstWrite -1}
		win23_V_3 {Type I LastRead 1 FirstWrite -1}
		win23_V_4 {Type I LastRead 1 FirstWrite -1}
		win23_V_5 {Type I LastRead 1 FirstWrite -1}
		oc_base_2 {Type I LastRead 0 FirstWrite -1}
		zext_ln837_5 {Type I LastRead 0 FirstWrite -1}
		phi_ln818_4_out {Type O LastRead -1 FirstWrite 2}
		phi_ln818_5_out {Type O LastRead -1 FirstWrite 2}
		denoiser_w_L3_W_V {Type I LastRead -1 FirstWrite -1}}
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
		denoiser_w_L4_W_V {Type I LastRead -1 FirstWrite -1}}
	ecg_denoiser_Pipeline_WRITE_OUTPUT {
		buf41210 {Type I LastRead 0 FirstWrite -1}
		out_stream_V_data_V {Type O LastRead -1 FirstWrite 1}
		out_stream_V_keep_V {Type O LastRead -1 FirstWrite 1}
		out_stream_V_strb_V {Type O LastRead -1 FirstWrite 1}
		out_stream_V_user_V {Type O LastRead -1 FirstWrite 1}
		out_stream_V_last_V {Type O LastRead -1 FirstWrite 1}
		out_stream_V_id_V {Type O LastRead -1 FirstWrite 1}
		out_stream_V_dest_V {Type O LastRead -1 FirstWrite 1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "19755865", "Max" : "19755865"}
	, {"Name" : "Interval", "Min" : "19755866", "Max" : "19755866"}
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
