set moduleName pooling2d_cl_array_array_ap_fixed_16_6_5_3_0_32u_config14_s
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
set DLRegFirstOffset 0
set DLRegItemOffset 0
set C_modelName {pooling2d_cl<array,array<ap_fixed<16,6,5,3,0>,32u>,config14>}
set C_modelType { void 0 }
set C_modelArgList {
	{ layer12_out int 512 regular {fifo 0 volatile }  }
	{ layer14_out int 512 regular {fifo 1 volatile }  }
}
set hasAXIMCache 0
set C_modelArgMapList {[ 
	{ "Name" : "layer12_out", "interface" : "fifo", "bitwidth" : 512, "direction" : "READONLY"} , 
 	{ "Name" : "layer14_out", "interface" : "fifo", "bitwidth" : 512, "direction" : "WRITEONLY"} ]}
# RTL Port declarations: 
set portNum 20
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ start_full_n sc_in sc_logic 1 signal -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_continue sc_in sc_logic 1 continue -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ layer12_out_dout sc_in sc_lv 512 signal 0 } 
	{ layer12_out_num_data_valid sc_in sc_lv 8 signal 0 } 
	{ layer12_out_fifo_cap sc_in sc_lv 8 signal 0 } 
	{ layer12_out_empty_n sc_in sc_logic 1 signal 0 } 
	{ layer12_out_read sc_out sc_logic 1 signal 0 } 
	{ layer14_out_din sc_out sc_lv 512 signal 1 } 
	{ layer14_out_num_data_valid sc_in sc_lv 6 signal 1 } 
	{ layer14_out_fifo_cap sc_in sc_lv 6 signal 1 } 
	{ layer14_out_full_n sc_in sc_logic 1 signal 1 } 
	{ layer14_out_write sc_out sc_logic 1 signal 1 } 
	{ start_out sc_out sc_logic 1 signal -1 } 
	{ start_write sc_out sc_logic 1 signal -1 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "start_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "start_full_n", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_continue", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "continue", "bundle":{"name": "ap_continue", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "layer12_out_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":512, "type": "signal", "bundle":{"name": "layer12_out", "role": "dout" }} , 
 	{ "name": "layer12_out_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "layer12_out", "role": "num_data_valid" }} , 
 	{ "name": "layer12_out_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "layer12_out", "role": "fifo_cap" }} , 
 	{ "name": "layer12_out_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "layer12_out", "role": "empty_n" }} , 
 	{ "name": "layer12_out_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "layer12_out", "role": "read" }} , 
 	{ "name": "layer14_out_din", "direction": "out", "datatype": "sc_lv", "bitwidth":512, "type": "signal", "bundle":{"name": "layer14_out", "role": "din" }} , 
 	{ "name": "layer14_out_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "layer14_out", "role": "num_data_valid" }} , 
 	{ "name": "layer14_out_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "layer14_out", "role": "fifo_cap" }} , 
 	{ "name": "layer14_out_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "layer14_out", "role": "full_n" }} , 
 	{ "name": "layer14_out_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "layer14_out", "role": "write" }} , 
 	{ "name": "start_out", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "start_out", "role": "default" }} , 
 	{ "name": "start_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "start_write", "role": "default" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "3", "4", "5", "6", "7", "8", "9", "10", "11", "12", "13", "14", "15", "16", "17", "18", "19", "20", "21", "22", "23", "24", "25", "26", "27", "28", "29", "30", "31", "32", "33"],
		"CDFG" : "pooling2d_cl_array_array_ap_fixed_16_6_5_3_0_32u_config14_s",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "115", "EstimateLatencyMax" : "115",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "layer12_out", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "112", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "layer12_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "layer14_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "28", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "layer14_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "sY_5", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "pY_5", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "pX_5", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "sX_5", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_ZZN4nnet22compute_pool_buffer_2dINS_5arrayI8ap_fixedILi16ELi6EL9ap_q_mode5EL9ap_1115", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_ZZN4nnet22compute_pool_buffer_2dINS_5arrayI8ap_fixedILi16ELi6EL9ap_q_mode5EL9ap_1116", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_ZZN4nnet22compute_pool_buffer_2dINS_5arrayI8ap_fixedILi16ELi6EL9ap_q_mode5EL9ap_1117", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_ZZN4nnet22compute_pool_buffer_2dINS_5arrayI8ap_fixedILi16ELi6EL9ap_q_mode5EL9ap_1118", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_ZZN4nnet22compute_pool_buffer_2dINS_5arrayI8ap_fixedILi16ELi6EL9ap_q_mode5EL9ap_1119", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_ZZN4nnet22compute_pool_buffer_2dINS_5arrayI8ap_fixedILi16ELi6EL9ap_q_mode5EL9ap_1120", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_ZZN4nnet22compute_pool_buffer_2dINS_5arrayI8ap_fixedILi16ELi6EL9ap_q_mode5EL9ap_1121", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_ZZN4nnet22compute_pool_buffer_2dINS_5arrayI8ap_fixedILi16ELi6EL9ap_q_mode5EL9ap_1122", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_ZZN4nnet22compute_pool_buffer_2dINS_5arrayI8ap_fixedILi16ELi6EL9ap_q_mode5EL9ap_1123", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_ZZN4nnet22compute_pool_buffer_2dINS_5arrayI8ap_fixedILi16ELi6EL9ap_q_mode5EL9ap_1124", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_ZZN4nnet22compute_pool_buffer_2dINS_5arrayI8ap_fixedILi16ELi6EL9ap_q_mode5EL9ap_1125", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_ZZN4nnet22compute_pool_buffer_2dINS_5arrayI8ap_fixedILi16ELi6EL9ap_q_mode5EL9ap_1126", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_ZZN4nnet22compute_pool_buffer_2dINS_5arrayI8ap_fixedILi16ELi6EL9ap_q_mode5EL9ap_1127", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_ZZN4nnet22compute_pool_buffer_2dINS_5arrayI8ap_fixedILi16ELi6EL9ap_q_mode5EL9ap_1128", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_ZZN4nnet22compute_pool_buffer_2dINS_5arrayI8ap_fixedILi16ELi6EL9ap_q_mode5EL9ap_1129", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_ZZN4nnet22compute_pool_buffer_2dINS_5arrayI8ap_fixedILi16ELi6EL9ap_q_mode5EL9ap_1130", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_ZZN4nnet22compute_pool_buffer_2dINS_5arrayI8ap_fixedILi16ELi6EL9ap_q_mode5EL9ap_1131", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_ZZN4nnet22compute_pool_buffer_2dINS_5arrayI8ap_fixedILi16ELi6EL9ap_q_mode5EL9ap_1132", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_ZZN4nnet22compute_pool_buffer_2dINS_5arrayI8ap_fixedILi16ELi6EL9ap_q_mode5EL9ap_1133", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_ZZN4nnet22compute_pool_buffer_2dINS_5arrayI8ap_fixedILi16ELi6EL9ap_q_mode5EL9ap_1134", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_ZZN4nnet22compute_pool_buffer_2dINS_5arrayI8ap_fixedILi16ELi6EL9ap_q_mode5EL9ap_1135", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_ZZN4nnet22compute_pool_buffer_2dINS_5arrayI8ap_fixedILi16ELi6EL9ap_q_mode5EL9ap_1136", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_ZZN4nnet22compute_pool_buffer_2dINS_5arrayI8ap_fixedILi16ELi6EL9ap_q_mode5EL9ap_1137", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_ZZN4nnet22compute_pool_buffer_2dINS_5arrayI8ap_fixedILi16ELi6EL9ap_q_mode5EL9ap_1138", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_ZZN4nnet22compute_pool_buffer_2dINS_5arrayI8ap_fixedILi16ELi6EL9ap_q_mode5EL9ap_1139", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_ZZN4nnet22compute_pool_buffer_2dINS_5arrayI8ap_fixedILi16ELi6EL9ap_q_mode5EL9ap_1140", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_ZZN4nnet22compute_pool_buffer_2dINS_5arrayI8ap_fixedILi16ELi6EL9ap_q_mode5EL9ap_1141", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_ZZN4nnet22compute_pool_buffer_2dINS_5arrayI8ap_fixedILi16ELi6EL9ap_q_mode5EL9ap_1142", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_ZZN4nnet22compute_pool_buffer_2dINS_5arrayI8ap_fixedILi16ELi6EL9ap_q_mode5EL9ap_1143", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_ZZN4nnet22compute_pool_buffer_2dINS_5arrayI8ap_fixedILi16ELi6EL9ap_q_mode5EL9ap_1144", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_ZZN4nnet22compute_pool_buffer_2dINS_5arrayI8ap_fixedILi16ELi6EL9ap_q_mode5EL9ap_1145", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_ZZN4nnet22compute_pool_buffer_2dINS_5arrayI8ap_fixedILi16ELi6EL9ap_q_mode5EL9ap_1146", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_ZZN4nnet22compute_pool_buffer_2dINS_5arrayI8ap_fixedILi16ELi6EL9ap_q_mode5EL9ap_1147", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_ZZN4nnet22compute_pool_buffer_2dINS_5arrayI8ap_fixedILi16ELi6EL9ap_q_mode5EL9ap_1148", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_ZZN4nnet22compute_pool_buffer_2dINS_5arrayI8ap_fixedILi16ELi6EL9ap_q_mode5EL9ap_1149", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_ZZN4nnet22compute_pool_buffer_2dINS_5arrayI8ap_fixedILi16ELi6EL9ap_q_mode5EL9ap_1150", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_ZZN4nnet22compute_pool_buffer_2dINS_5arrayI8ap_fixedILi16ELi6EL9ap_q_mode5EL9ap_1087", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_ZZN4nnet22compute_pool_buffer_2dINS_5arrayI8ap_fixedILi16ELi6EL9ap_q_mode5EL9ap_1088", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_ZZN4nnet22compute_pool_buffer_2dINS_5arrayI8ap_fixedILi16ELi6EL9ap_q_mode5EL9ap_1089", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_ZZN4nnet22compute_pool_buffer_2dINS_5arrayI8ap_fixedILi16ELi6EL9ap_q_mode5EL9ap_1090", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_ZZN4nnet22compute_pool_buffer_2dINS_5arrayI8ap_fixedILi16ELi6EL9ap_q_mode5EL9ap_1091", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_ZZN4nnet22compute_pool_buffer_2dINS_5arrayI8ap_fixedILi16ELi6EL9ap_q_mode5EL9ap_1092", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_ZZN4nnet22compute_pool_buffer_2dINS_5arrayI8ap_fixedILi16ELi6EL9ap_q_mode5EL9ap_1093", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_ZZN4nnet22compute_pool_buffer_2dINS_5arrayI8ap_fixedILi16ELi6EL9ap_q_mode5EL9ap_1094", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_ZZN4nnet22compute_pool_buffer_2dINS_5arrayI8ap_fixedILi16ELi6EL9ap_q_mode5EL9ap_1095", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_ZZN4nnet22compute_pool_buffer_2dINS_5arrayI8ap_fixedILi16ELi6EL9ap_q_mode5EL9ap_1096", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_ZZN4nnet22compute_pool_buffer_2dINS_5arrayI8ap_fixedILi16ELi6EL9ap_q_mode5EL9ap_1097", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_ZZN4nnet22compute_pool_buffer_2dINS_5arrayI8ap_fixedILi16ELi6EL9ap_q_mode5EL9ap_1098", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_ZZN4nnet22compute_pool_buffer_2dINS_5arrayI8ap_fixedILi16ELi6EL9ap_q_mode5EL9ap_1099", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_ZZN4nnet22compute_pool_buffer_2dINS_5arrayI8ap_fixedILi16ELi6EL9ap_q_mode5EL9ap_1100", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_ZZN4nnet22compute_pool_buffer_2dINS_5arrayI8ap_fixedILi16ELi6EL9ap_q_mode5EL9ap_1101", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_ZZN4nnet22compute_pool_buffer_2dINS_5arrayI8ap_fixedILi16ELi6EL9ap_q_mode5EL9ap_1102", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_ZZN4nnet22compute_pool_buffer_2dINS_5arrayI8ap_fixedILi16ELi6EL9ap_q_mode5EL9ap_1103", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_ZZN4nnet22compute_pool_buffer_2dINS_5arrayI8ap_fixedILi16ELi6EL9ap_q_mode5EL9ap_1104", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_ZZN4nnet22compute_pool_buffer_2dINS_5arrayI8ap_fixedILi16ELi6EL9ap_q_mode5EL9ap_1105", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_ZZN4nnet22compute_pool_buffer_2dINS_5arrayI8ap_fixedILi16ELi6EL9ap_q_mode5EL9ap_1106", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_ZZN4nnet22compute_pool_buffer_2dINS_5arrayI8ap_fixedILi16ELi6EL9ap_q_mode5EL9ap_1107", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_ZZN4nnet22compute_pool_buffer_2dINS_5arrayI8ap_fixedILi16ELi6EL9ap_q_mode5EL9ap_1108", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_ZZN4nnet22compute_pool_buffer_2dINS_5arrayI8ap_fixedILi16ELi6EL9ap_q_mode5EL9ap_1109", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_ZZN4nnet22compute_pool_buffer_2dINS_5arrayI8ap_fixedILi16ELi6EL9ap_q_mode5EL9ap_1110", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_ZZN4nnet22compute_pool_buffer_2dINS_5arrayI8ap_fixedILi16ELi6EL9ap_q_mode5EL9ap_1111", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_ZZN4nnet22compute_pool_buffer_2dINS_5arrayI8ap_fixedILi16ELi6EL9ap_q_mode5EL9ap_1112", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_ZZN4nnet22compute_pool_buffer_2dINS_5arrayI8ap_fixedILi16ELi6EL9ap_q_mode5EL9ap_1113", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_ZZN4nnet22compute_pool_buffer_2dINS_5arrayI8ap_fixedILi16ELi6EL9ap_q_mode5EL9ap_1114", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "void_pooling2d_buffer_cl_stream_stream_array_ap_fixed_32u_0_line_buffer_9", "Type" : "Memory", "Direction" : "X"},
			{"Name" : "void_pooling2d_buffer_cl_stream_stream_array_ap_fixed_32u_0_line_buffer", "Type" : "Memory", "Direction" : "X"},
			{"Name" : "void_pooling2d_buffer_cl_stream_stream_array_ap_fixed_32u_0_line_buffer_8", "Type" : "Memory", "Direction" : "X"},
			{"Name" : "void_pooling2d_buffer_cl_stream_stream_array_ap_fixed_32u_0_line_buffer_7", "Type" : "Memory", "Direction" : "X"},
			{"Name" : "void_pooling2d_buffer_cl_stream_stream_array_ap_fixed_32u_0_line_buffer_6", "Type" : "Memory", "Direction" : "X"},
			{"Name" : "void_pooling2d_buffer_cl_stream_stream_array_ap_fixed_32u_0_line_buffer_5", "Type" : "Memory", "Direction" : "X"},
			{"Name" : "void_pooling2d_buffer_cl_stream_stream_array_ap_fixed_32u_0_line_buffer_4", "Type" : "Memory", "Direction" : "X"},
			{"Name" : "void_pooling2d_buffer_cl_stream_stream_array_ap_fixed_32u_0_line_buffer_3", "Type" : "Memory", "Direction" : "X"},
			{"Name" : "void_pooling2d_buffer_cl_stream_stream_array_ap_fixed_32u_0_line_buffer_2", "Type" : "Memory", "Direction" : "X"},
			{"Name" : "void_pooling2d_buffer_cl_stream_stream_array_ap_fixed_32u_0_line_buffer_1", "Type" : "Memory", "Direction" : "X"},
			{"Name" : "p_ZZN4nnet19pooling2d_buffer_clINS_5arrayI8ap_fixedILi16ELi6EL9ap_q_mode5EL9ap_o_321", "Type" : "Memory", "Direction" : "X"},
			{"Name" : "p_ZZN4nnet19pooling2d_buffer_clINS_5arrayI8ap_fixedILi16ELi6EL9ap_q_mode5EL9ap_o_322", "Type" : "Memory", "Direction" : "X"},
			{"Name" : "p_ZZN4nnet19pooling2d_buffer_clINS_5arrayI8ap_fixedILi16ELi6EL9ap_q_mode5EL9ap_o_323", "Type" : "Memory", "Direction" : "X"},
			{"Name" : "p_ZZN4nnet19pooling2d_buffer_clINS_5arrayI8ap_fixedILi16ELi6EL9ap_q_mode5EL9ap_o_324", "Type" : "Memory", "Direction" : "X"},
			{"Name" : "p_ZZN4nnet19pooling2d_buffer_clINS_5arrayI8ap_fixedILi16ELi6EL9ap_q_mode5EL9ap_o_325", "Type" : "Memory", "Direction" : "X"},
			{"Name" : "p_ZZN4nnet19pooling2d_buffer_clINS_5arrayI8ap_fixedILi16ELi6EL9ap_q_mode5EL9ap_o_326", "Type" : "Memory", "Direction" : "X"},
			{"Name" : "p_ZZN4nnet19pooling2d_buffer_clINS_5arrayI8ap_fixedILi16ELi6EL9ap_q_mode5EL9ap_o_327", "Type" : "Memory", "Direction" : "X"},
			{"Name" : "p_ZZN4nnet19pooling2d_buffer_clINS_5arrayI8ap_fixedILi16ELi6EL9ap_q_mode5EL9ap_o_328", "Type" : "Memory", "Direction" : "X"},
			{"Name" : "p_ZZN4nnet19pooling2d_buffer_clINS_5arrayI8ap_fixedILi16ELi6EL9ap_q_mode5EL9ap_o_329", "Type" : "Memory", "Direction" : "X"},
			{"Name" : "p_ZZN4nnet19pooling2d_buffer_clINS_5arrayI8ap_fixedILi16ELi6EL9ap_q_mode5EL9ap_o_330", "Type" : "Memory", "Direction" : "X"},
			{"Name" : "p_ZZN4nnet19pooling2d_buffer_clINS_5arrayI8ap_fixedILi16ELi6EL9ap_q_mode5EL9ap_o_331", "Type" : "Memory", "Direction" : "X"},
			{"Name" : "p_ZZN4nnet19pooling2d_buffer_clINS_5arrayI8ap_fixedILi16ELi6EL9ap_q_mode5EL9ap_o_332", "Type" : "Memory", "Direction" : "X"},
			{"Name" : "p_ZZN4nnet19pooling2d_buffer_clINS_5arrayI8ap_fixedILi16ELi6EL9ap_q_mode5EL9ap_o_333", "Type" : "Memory", "Direction" : "X"},
			{"Name" : "p_ZZN4nnet19pooling2d_buffer_clINS_5arrayI8ap_fixedILi16ELi6EL9ap_q_mode5EL9ap_o_334", "Type" : "Memory", "Direction" : "X"},
			{"Name" : "p_ZZN4nnet19pooling2d_buffer_clINS_5arrayI8ap_fixedILi16ELi6EL9ap_q_mode5EL9ap_o_335", "Type" : "Memory", "Direction" : "X"},
			{"Name" : "p_ZZN4nnet19pooling2d_buffer_clINS_5arrayI8ap_fixedILi16ELi6EL9ap_q_mode5EL9ap_o_336", "Type" : "Memory", "Direction" : "X"},
			{"Name" : "p_ZZN4nnet19pooling2d_buffer_clINS_5arrayI8ap_fixedILi16ELi6EL9ap_q_mode5EL9ap_o_337", "Type" : "Memory", "Direction" : "X"},
			{"Name" : "p_ZZN4nnet19pooling2d_buffer_clINS_5arrayI8ap_fixedILi16ELi6EL9ap_q_mode5EL9ap_o_338", "Type" : "Memory", "Direction" : "X"},
			{"Name" : "p_ZZN4nnet19pooling2d_buffer_clINS_5arrayI8ap_fixedILi16ELi6EL9ap_q_mode5EL9ap_o_339", "Type" : "Memory", "Direction" : "X"},
			{"Name" : "p_ZZN4nnet19pooling2d_buffer_clINS_5arrayI8ap_fixedILi16ELi6EL9ap_q_mode5EL9ap_o_340", "Type" : "Memory", "Direction" : "X"},
			{"Name" : "p_ZZN4nnet19pooling2d_buffer_clINS_5arrayI8ap_fixedILi16ELi6EL9ap_q_mode5EL9ap_o_341", "Type" : "Memory", "Direction" : "X"},
			{"Name" : "p_ZZN4nnet19pooling2d_buffer_clINS_5arrayI8ap_fixedILi16ELi6EL9ap_q_mode5EL9ap_o_342", "Type" : "Memory", "Direction" : "X"}],
		"Loop" : [
			{"Name" : "ReadInputHeight_ReadInputWidth", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter2", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter2", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "1"}}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.void_pooling2d_buffer_cl_stream_stream_array_ap_fixed_32u_0_line_buffer_9_U", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.void_pooling2d_buffer_cl_stream_stream_array_ap_fixed_32u_0_line_buffer_U", "Parent" : "0"},
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.void_pooling2d_buffer_cl_stream_stream_array_ap_fixed_32u_0_line_buffer_8_U", "Parent" : "0"},
	{"ID" : "4", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.void_pooling2d_buffer_cl_stream_stream_array_ap_fixed_32u_0_line_buffer_7_U", "Parent" : "0"},
	{"ID" : "5", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.void_pooling2d_buffer_cl_stream_stream_array_ap_fixed_32u_0_line_buffer_6_U", "Parent" : "0"},
	{"ID" : "6", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.void_pooling2d_buffer_cl_stream_stream_array_ap_fixed_32u_0_line_buffer_5_U", "Parent" : "0"},
	{"ID" : "7", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.void_pooling2d_buffer_cl_stream_stream_array_ap_fixed_32u_0_line_buffer_4_U", "Parent" : "0"},
	{"ID" : "8", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.void_pooling2d_buffer_cl_stream_stream_array_ap_fixed_32u_0_line_buffer_3_U", "Parent" : "0"},
	{"ID" : "9", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.void_pooling2d_buffer_cl_stream_stream_array_ap_fixed_32u_0_line_buffer_2_U", "Parent" : "0"},
	{"ID" : "10", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.void_pooling2d_buffer_cl_stream_stream_array_ap_fixed_32u_0_line_buffer_1_U", "Parent" : "0"},
	{"ID" : "11", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.p_ZZN4nnet19pooling2d_buffer_clINS_5arrayI8ap_fixedILi16ELi6EL9ap_q_mode5EL9ap_o_321_U", "Parent" : "0"},
	{"ID" : "12", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.p_ZZN4nnet19pooling2d_buffer_clINS_5arrayI8ap_fixedILi16ELi6EL9ap_q_mode5EL9ap_o_322_U", "Parent" : "0"},
	{"ID" : "13", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.p_ZZN4nnet19pooling2d_buffer_clINS_5arrayI8ap_fixedILi16ELi6EL9ap_q_mode5EL9ap_o_323_U", "Parent" : "0"},
	{"ID" : "14", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.p_ZZN4nnet19pooling2d_buffer_clINS_5arrayI8ap_fixedILi16ELi6EL9ap_q_mode5EL9ap_o_324_U", "Parent" : "0"},
	{"ID" : "15", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.p_ZZN4nnet19pooling2d_buffer_clINS_5arrayI8ap_fixedILi16ELi6EL9ap_q_mode5EL9ap_o_325_U", "Parent" : "0"},
	{"ID" : "16", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.p_ZZN4nnet19pooling2d_buffer_clINS_5arrayI8ap_fixedILi16ELi6EL9ap_q_mode5EL9ap_o_326_U", "Parent" : "0"},
	{"ID" : "17", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.p_ZZN4nnet19pooling2d_buffer_clINS_5arrayI8ap_fixedILi16ELi6EL9ap_q_mode5EL9ap_o_327_U", "Parent" : "0"},
	{"ID" : "18", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.p_ZZN4nnet19pooling2d_buffer_clINS_5arrayI8ap_fixedILi16ELi6EL9ap_q_mode5EL9ap_o_328_U", "Parent" : "0"},
	{"ID" : "19", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.p_ZZN4nnet19pooling2d_buffer_clINS_5arrayI8ap_fixedILi16ELi6EL9ap_q_mode5EL9ap_o_329_U", "Parent" : "0"},
	{"ID" : "20", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.p_ZZN4nnet19pooling2d_buffer_clINS_5arrayI8ap_fixedILi16ELi6EL9ap_q_mode5EL9ap_o_330_U", "Parent" : "0"},
	{"ID" : "21", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.p_ZZN4nnet19pooling2d_buffer_clINS_5arrayI8ap_fixedILi16ELi6EL9ap_q_mode5EL9ap_o_331_U", "Parent" : "0"},
	{"ID" : "22", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.p_ZZN4nnet19pooling2d_buffer_clINS_5arrayI8ap_fixedILi16ELi6EL9ap_q_mode5EL9ap_o_332_U", "Parent" : "0"},
	{"ID" : "23", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.p_ZZN4nnet19pooling2d_buffer_clINS_5arrayI8ap_fixedILi16ELi6EL9ap_q_mode5EL9ap_o_333_U", "Parent" : "0"},
	{"ID" : "24", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.p_ZZN4nnet19pooling2d_buffer_clINS_5arrayI8ap_fixedILi16ELi6EL9ap_q_mode5EL9ap_o_334_U", "Parent" : "0"},
	{"ID" : "25", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.p_ZZN4nnet19pooling2d_buffer_clINS_5arrayI8ap_fixedILi16ELi6EL9ap_q_mode5EL9ap_o_335_U", "Parent" : "0"},
	{"ID" : "26", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.p_ZZN4nnet19pooling2d_buffer_clINS_5arrayI8ap_fixedILi16ELi6EL9ap_q_mode5EL9ap_o_336_U", "Parent" : "0"},
	{"ID" : "27", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.p_ZZN4nnet19pooling2d_buffer_clINS_5arrayI8ap_fixedILi16ELi6EL9ap_q_mode5EL9ap_o_337_U", "Parent" : "0"},
	{"ID" : "28", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.p_ZZN4nnet19pooling2d_buffer_clINS_5arrayI8ap_fixedILi16ELi6EL9ap_q_mode5EL9ap_o_338_U", "Parent" : "0"},
	{"ID" : "29", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.p_ZZN4nnet19pooling2d_buffer_clINS_5arrayI8ap_fixedILi16ELi6EL9ap_q_mode5EL9ap_o_339_U", "Parent" : "0"},
	{"ID" : "30", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.p_ZZN4nnet19pooling2d_buffer_clINS_5arrayI8ap_fixedILi16ELi6EL9ap_q_mode5EL9ap_o_340_U", "Parent" : "0"},
	{"ID" : "31", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.p_ZZN4nnet19pooling2d_buffer_clINS_5arrayI8ap_fixedILi16ELi6EL9ap_q_mode5EL9ap_o_341_U", "Parent" : "0"},
	{"ID" : "32", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.p_ZZN4nnet19pooling2d_buffer_clINS_5arrayI8ap_fixedILi16ELi6EL9ap_q_mode5EL9ap_o_342_U", "Parent" : "0"},
	{"ID" : "33", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.flow_control_loop_pipe_U", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	pooling2d_cl_array_array_ap_fixed_16_6_5_3_0_32u_config14_s {
		layer12_out {Type I LastRead 1 FirstWrite -1}
		layer14_out {Type O LastRead -1 FirstWrite 2}
		sY_5 {Type IO LastRead -1 FirstWrite -1}
		pY_5 {Type IO LastRead -1 FirstWrite -1}
		pX_5 {Type IO LastRead -1 FirstWrite -1}
		sX_5 {Type IO LastRead -1 FirstWrite -1}
		p_ZZN4nnet22compute_pool_buffer_2dINS_5arrayI8ap_fixedILi16ELi6EL9ap_q_mode5EL9ap_1115 {Type IO LastRead -1 FirstWrite -1}
		p_ZZN4nnet22compute_pool_buffer_2dINS_5arrayI8ap_fixedILi16ELi6EL9ap_q_mode5EL9ap_1116 {Type IO LastRead -1 FirstWrite -1}
		p_ZZN4nnet22compute_pool_buffer_2dINS_5arrayI8ap_fixedILi16ELi6EL9ap_q_mode5EL9ap_1117 {Type IO LastRead -1 FirstWrite -1}
		p_ZZN4nnet22compute_pool_buffer_2dINS_5arrayI8ap_fixedILi16ELi6EL9ap_q_mode5EL9ap_1118 {Type IO LastRead -1 FirstWrite -1}
		p_ZZN4nnet22compute_pool_buffer_2dINS_5arrayI8ap_fixedILi16ELi6EL9ap_q_mode5EL9ap_1119 {Type IO LastRead -1 FirstWrite -1}
		p_ZZN4nnet22compute_pool_buffer_2dINS_5arrayI8ap_fixedILi16ELi6EL9ap_q_mode5EL9ap_1120 {Type IO LastRead -1 FirstWrite -1}
		p_ZZN4nnet22compute_pool_buffer_2dINS_5arrayI8ap_fixedILi16ELi6EL9ap_q_mode5EL9ap_1121 {Type IO LastRead -1 FirstWrite -1}
		p_ZZN4nnet22compute_pool_buffer_2dINS_5arrayI8ap_fixedILi16ELi6EL9ap_q_mode5EL9ap_1122 {Type IO LastRead -1 FirstWrite -1}
		p_ZZN4nnet22compute_pool_buffer_2dINS_5arrayI8ap_fixedILi16ELi6EL9ap_q_mode5EL9ap_1123 {Type IO LastRead -1 FirstWrite -1}
		p_ZZN4nnet22compute_pool_buffer_2dINS_5arrayI8ap_fixedILi16ELi6EL9ap_q_mode5EL9ap_1124 {Type IO LastRead -1 FirstWrite -1}
		p_ZZN4nnet22compute_pool_buffer_2dINS_5arrayI8ap_fixedILi16ELi6EL9ap_q_mode5EL9ap_1125 {Type IO LastRead -1 FirstWrite -1}
		p_ZZN4nnet22compute_pool_buffer_2dINS_5arrayI8ap_fixedILi16ELi6EL9ap_q_mode5EL9ap_1126 {Type IO LastRead -1 FirstWrite -1}
		p_ZZN4nnet22compute_pool_buffer_2dINS_5arrayI8ap_fixedILi16ELi6EL9ap_q_mode5EL9ap_1127 {Type IO LastRead -1 FirstWrite -1}
		p_ZZN4nnet22compute_pool_buffer_2dINS_5arrayI8ap_fixedILi16ELi6EL9ap_q_mode5EL9ap_1128 {Type IO LastRead -1 FirstWrite -1}
		p_ZZN4nnet22compute_pool_buffer_2dINS_5arrayI8ap_fixedILi16ELi6EL9ap_q_mode5EL9ap_1129 {Type IO LastRead -1 FirstWrite -1}
		p_ZZN4nnet22compute_pool_buffer_2dINS_5arrayI8ap_fixedILi16ELi6EL9ap_q_mode5EL9ap_1130 {Type IO LastRead -1 FirstWrite -1}
		p_ZZN4nnet22compute_pool_buffer_2dINS_5arrayI8ap_fixedILi16ELi6EL9ap_q_mode5EL9ap_1131 {Type IO LastRead -1 FirstWrite -1}
		p_ZZN4nnet22compute_pool_buffer_2dINS_5arrayI8ap_fixedILi16ELi6EL9ap_q_mode5EL9ap_1132 {Type IO LastRead -1 FirstWrite -1}
		p_ZZN4nnet22compute_pool_buffer_2dINS_5arrayI8ap_fixedILi16ELi6EL9ap_q_mode5EL9ap_1133 {Type IO LastRead -1 FirstWrite -1}
		p_ZZN4nnet22compute_pool_buffer_2dINS_5arrayI8ap_fixedILi16ELi6EL9ap_q_mode5EL9ap_1134 {Type IO LastRead -1 FirstWrite -1}
		p_ZZN4nnet22compute_pool_buffer_2dINS_5arrayI8ap_fixedILi16ELi6EL9ap_q_mode5EL9ap_1135 {Type IO LastRead -1 FirstWrite -1}
		p_ZZN4nnet22compute_pool_buffer_2dINS_5arrayI8ap_fixedILi16ELi6EL9ap_q_mode5EL9ap_1136 {Type IO LastRead -1 FirstWrite -1}
		p_ZZN4nnet22compute_pool_buffer_2dINS_5arrayI8ap_fixedILi16ELi6EL9ap_q_mode5EL9ap_1137 {Type IO LastRead -1 FirstWrite -1}
		p_ZZN4nnet22compute_pool_buffer_2dINS_5arrayI8ap_fixedILi16ELi6EL9ap_q_mode5EL9ap_1138 {Type IO LastRead -1 FirstWrite -1}
		p_ZZN4nnet22compute_pool_buffer_2dINS_5arrayI8ap_fixedILi16ELi6EL9ap_q_mode5EL9ap_1139 {Type IO LastRead -1 FirstWrite -1}
		p_ZZN4nnet22compute_pool_buffer_2dINS_5arrayI8ap_fixedILi16ELi6EL9ap_q_mode5EL9ap_1140 {Type IO LastRead -1 FirstWrite -1}
		p_ZZN4nnet22compute_pool_buffer_2dINS_5arrayI8ap_fixedILi16ELi6EL9ap_q_mode5EL9ap_1141 {Type IO LastRead -1 FirstWrite -1}
		p_ZZN4nnet22compute_pool_buffer_2dINS_5arrayI8ap_fixedILi16ELi6EL9ap_q_mode5EL9ap_1142 {Type IO LastRead -1 FirstWrite -1}
		p_ZZN4nnet22compute_pool_buffer_2dINS_5arrayI8ap_fixedILi16ELi6EL9ap_q_mode5EL9ap_1143 {Type IO LastRead -1 FirstWrite -1}
		p_ZZN4nnet22compute_pool_buffer_2dINS_5arrayI8ap_fixedILi16ELi6EL9ap_q_mode5EL9ap_1144 {Type IO LastRead -1 FirstWrite -1}
		p_ZZN4nnet22compute_pool_buffer_2dINS_5arrayI8ap_fixedILi16ELi6EL9ap_q_mode5EL9ap_1145 {Type IO LastRead -1 FirstWrite -1}
		p_ZZN4nnet22compute_pool_buffer_2dINS_5arrayI8ap_fixedILi16ELi6EL9ap_q_mode5EL9ap_1146 {Type IO LastRead -1 FirstWrite -1}
		p_ZZN4nnet22compute_pool_buffer_2dINS_5arrayI8ap_fixedILi16ELi6EL9ap_q_mode5EL9ap_1147 {Type IO LastRead -1 FirstWrite -1}
		p_ZZN4nnet22compute_pool_buffer_2dINS_5arrayI8ap_fixedILi16ELi6EL9ap_q_mode5EL9ap_1148 {Type IO LastRead -1 FirstWrite -1}
		p_ZZN4nnet22compute_pool_buffer_2dINS_5arrayI8ap_fixedILi16ELi6EL9ap_q_mode5EL9ap_1149 {Type IO LastRead -1 FirstWrite -1}
		p_ZZN4nnet22compute_pool_buffer_2dINS_5arrayI8ap_fixedILi16ELi6EL9ap_q_mode5EL9ap_1150 {Type IO LastRead -1 FirstWrite -1}
		p_ZZN4nnet22compute_pool_buffer_2dINS_5arrayI8ap_fixedILi16ELi6EL9ap_q_mode5EL9ap_1087 {Type IO LastRead -1 FirstWrite -1}
		p_ZZN4nnet22compute_pool_buffer_2dINS_5arrayI8ap_fixedILi16ELi6EL9ap_q_mode5EL9ap_1088 {Type IO LastRead -1 FirstWrite -1}
		p_ZZN4nnet22compute_pool_buffer_2dINS_5arrayI8ap_fixedILi16ELi6EL9ap_q_mode5EL9ap_1089 {Type IO LastRead -1 FirstWrite -1}
		p_ZZN4nnet22compute_pool_buffer_2dINS_5arrayI8ap_fixedILi16ELi6EL9ap_q_mode5EL9ap_1090 {Type IO LastRead -1 FirstWrite -1}
		p_ZZN4nnet22compute_pool_buffer_2dINS_5arrayI8ap_fixedILi16ELi6EL9ap_q_mode5EL9ap_1091 {Type IO LastRead -1 FirstWrite -1}
		p_ZZN4nnet22compute_pool_buffer_2dINS_5arrayI8ap_fixedILi16ELi6EL9ap_q_mode5EL9ap_1092 {Type IO LastRead -1 FirstWrite -1}
		p_ZZN4nnet22compute_pool_buffer_2dINS_5arrayI8ap_fixedILi16ELi6EL9ap_q_mode5EL9ap_1093 {Type IO LastRead -1 FirstWrite -1}
		p_ZZN4nnet22compute_pool_buffer_2dINS_5arrayI8ap_fixedILi16ELi6EL9ap_q_mode5EL9ap_1094 {Type IO LastRead -1 FirstWrite -1}
		p_ZZN4nnet22compute_pool_buffer_2dINS_5arrayI8ap_fixedILi16ELi6EL9ap_q_mode5EL9ap_1095 {Type IO LastRead -1 FirstWrite -1}
		p_ZZN4nnet22compute_pool_buffer_2dINS_5arrayI8ap_fixedILi16ELi6EL9ap_q_mode5EL9ap_1096 {Type IO LastRead -1 FirstWrite -1}
		p_ZZN4nnet22compute_pool_buffer_2dINS_5arrayI8ap_fixedILi16ELi6EL9ap_q_mode5EL9ap_1097 {Type IO LastRead -1 FirstWrite -1}
		p_ZZN4nnet22compute_pool_buffer_2dINS_5arrayI8ap_fixedILi16ELi6EL9ap_q_mode5EL9ap_1098 {Type IO LastRead -1 FirstWrite -1}
		p_ZZN4nnet22compute_pool_buffer_2dINS_5arrayI8ap_fixedILi16ELi6EL9ap_q_mode5EL9ap_1099 {Type IO LastRead -1 FirstWrite -1}
		p_ZZN4nnet22compute_pool_buffer_2dINS_5arrayI8ap_fixedILi16ELi6EL9ap_q_mode5EL9ap_1100 {Type IO LastRead -1 FirstWrite -1}
		p_ZZN4nnet22compute_pool_buffer_2dINS_5arrayI8ap_fixedILi16ELi6EL9ap_q_mode5EL9ap_1101 {Type IO LastRead -1 FirstWrite -1}
		p_ZZN4nnet22compute_pool_buffer_2dINS_5arrayI8ap_fixedILi16ELi6EL9ap_q_mode5EL9ap_1102 {Type IO LastRead -1 FirstWrite -1}
		p_ZZN4nnet22compute_pool_buffer_2dINS_5arrayI8ap_fixedILi16ELi6EL9ap_q_mode5EL9ap_1103 {Type IO LastRead -1 FirstWrite -1}
		p_ZZN4nnet22compute_pool_buffer_2dINS_5arrayI8ap_fixedILi16ELi6EL9ap_q_mode5EL9ap_1104 {Type IO LastRead -1 FirstWrite -1}
		p_ZZN4nnet22compute_pool_buffer_2dINS_5arrayI8ap_fixedILi16ELi6EL9ap_q_mode5EL9ap_1105 {Type IO LastRead -1 FirstWrite -1}
		p_ZZN4nnet22compute_pool_buffer_2dINS_5arrayI8ap_fixedILi16ELi6EL9ap_q_mode5EL9ap_1106 {Type IO LastRead -1 FirstWrite -1}
		p_ZZN4nnet22compute_pool_buffer_2dINS_5arrayI8ap_fixedILi16ELi6EL9ap_q_mode5EL9ap_1107 {Type IO LastRead -1 FirstWrite -1}
		p_ZZN4nnet22compute_pool_buffer_2dINS_5arrayI8ap_fixedILi16ELi6EL9ap_q_mode5EL9ap_1108 {Type IO LastRead -1 FirstWrite -1}
		p_ZZN4nnet22compute_pool_buffer_2dINS_5arrayI8ap_fixedILi16ELi6EL9ap_q_mode5EL9ap_1109 {Type IO LastRead -1 FirstWrite -1}
		p_ZZN4nnet22compute_pool_buffer_2dINS_5arrayI8ap_fixedILi16ELi6EL9ap_q_mode5EL9ap_1110 {Type IO LastRead -1 FirstWrite -1}
		p_ZZN4nnet22compute_pool_buffer_2dINS_5arrayI8ap_fixedILi16ELi6EL9ap_q_mode5EL9ap_1111 {Type IO LastRead -1 FirstWrite -1}
		p_ZZN4nnet22compute_pool_buffer_2dINS_5arrayI8ap_fixedILi16ELi6EL9ap_q_mode5EL9ap_1112 {Type IO LastRead -1 FirstWrite -1}
		p_ZZN4nnet22compute_pool_buffer_2dINS_5arrayI8ap_fixedILi16ELi6EL9ap_q_mode5EL9ap_1113 {Type IO LastRead -1 FirstWrite -1}
		p_ZZN4nnet22compute_pool_buffer_2dINS_5arrayI8ap_fixedILi16ELi6EL9ap_q_mode5EL9ap_1114 {Type IO LastRead -1 FirstWrite -1}
		void_pooling2d_buffer_cl_stream_stream_array_ap_fixed_32u_0_line_buffer_9 {Type X LastRead -1 FirstWrite -1}
		void_pooling2d_buffer_cl_stream_stream_array_ap_fixed_32u_0_line_buffer {Type X LastRead -1 FirstWrite -1}
		void_pooling2d_buffer_cl_stream_stream_array_ap_fixed_32u_0_line_buffer_8 {Type X LastRead -1 FirstWrite -1}
		void_pooling2d_buffer_cl_stream_stream_array_ap_fixed_32u_0_line_buffer_7 {Type X LastRead -1 FirstWrite -1}
		void_pooling2d_buffer_cl_stream_stream_array_ap_fixed_32u_0_line_buffer_6 {Type X LastRead -1 FirstWrite -1}
		void_pooling2d_buffer_cl_stream_stream_array_ap_fixed_32u_0_line_buffer_5 {Type X LastRead -1 FirstWrite -1}
		void_pooling2d_buffer_cl_stream_stream_array_ap_fixed_32u_0_line_buffer_4 {Type X LastRead -1 FirstWrite -1}
		void_pooling2d_buffer_cl_stream_stream_array_ap_fixed_32u_0_line_buffer_3 {Type X LastRead -1 FirstWrite -1}
		void_pooling2d_buffer_cl_stream_stream_array_ap_fixed_32u_0_line_buffer_2 {Type X LastRead -1 FirstWrite -1}
		void_pooling2d_buffer_cl_stream_stream_array_ap_fixed_32u_0_line_buffer_1 {Type X LastRead -1 FirstWrite -1}
		p_ZZN4nnet19pooling2d_buffer_clINS_5arrayI8ap_fixedILi16ELi6EL9ap_q_mode5EL9ap_o_321 {Type X LastRead -1 FirstWrite -1}
		p_ZZN4nnet19pooling2d_buffer_clINS_5arrayI8ap_fixedILi16ELi6EL9ap_q_mode5EL9ap_o_322 {Type X LastRead -1 FirstWrite -1}
		p_ZZN4nnet19pooling2d_buffer_clINS_5arrayI8ap_fixedILi16ELi6EL9ap_q_mode5EL9ap_o_323 {Type X LastRead -1 FirstWrite -1}
		p_ZZN4nnet19pooling2d_buffer_clINS_5arrayI8ap_fixedILi16ELi6EL9ap_q_mode5EL9ap_o_324 {Type X LastRead -1 FirstWrite -1}
		p_ZZN4nnet19pooling2d_buffer_clINS_5arrayI8ap_fixedILi16ELi6EL9ap_q_mode5EL9ap_o_325 {Type X LastRead -1 FirstWrite -1}
		p_ZZN4nnet19pooling2d_buffer_clINS_5arrayI8ap_fixedILi16ELi6EL9ap_q_mode5EL9ap_o_326 {Type X LastRead -1 FirstWrite -1}
		p_ZZN4nnet19pooling2d_buffer_clINS_5arrayI8ap_fixedILi16ELi6EL9ap_q_mode5EL9ap_o_327 {Type X LastRead -1 FirstWrite -1}
		p_ZZN4nnet19pooling2d_buffer_clINS_5arrayI8ap_fixedILi16ELi6EL9ap_q_mode5EL9ap_o_328 {Type X LastRead -1 FirstWrite -1}
		p_ZZN4nnet19pooling2d_buffer_clINS_5arrayI8ap_fixedILi16ELi6EL9ap_q_mode5EL9ap_o_329 {Type X LastRead -1 FirstWrite -1}
		p_ZZN4nnet19pooling2d_buffer_clINS_5arrayI8ap_fixedILi16ELi6EL9ap_q_mode5EL9ap_o_330 {Type X LastRead -1 FirstWrite -1}
		p_ZZN4nnet19pooling2d_buffer_clINS_5arrayI8ap_fixedILi16ELi6EL9ap_q_mode5EL9ap_o_331 {Type X LastRead -1 FirstWrite -1}
		p_ZZN4nnet19pooling2d_buffer_clINS_5arrayI8ap_fixedILi16ELi6EL9ap_q_mode5EL9ap_o_332 {Type X LastRead -1 FirstWrite -1}
		p_ZZN4nnet19pooling2d_buffer_clINS_5arrayI8ap_fixedILi16ELi6EL9ap_q_mode5EL9ap_o_333 {Type X LastRead -1 FirstWrite -1}
		p_ZZN4nnet19pooling2d_buffer_clINS_5arrayI8ap_fixedILi16ELi6EL9ap_q_mode5EL9ap_o_334 {Type X LastRead -1 FirstWrite -1}
		p_ZZN4nnet19pooling2d_buffer_clINS_5arrayI8ap_fixedILi16ELi6EL9ap_q_mode5EL9ap_o_335 {Type X LastRead -1 FirstWrite -1}
		p_ZZN4nnet19pooling2d_buffer_clINS_5arrayI8ap_fixedILi16ELi6EL9ap_q_mode5EL9ap_o_336 {Type X LastRead -1 FirstWrite -1}
		p_ZZN4nnet19pooling2d_buffer_clINS_5arrayI8ap_fixedILi16ELi6EL9ap_q_mode5EL9ap_o_337 {Type X LastRead -1 FirstWrite -1}
		p_ZZN4nnet19pooling2d_buffer_clINS_5arrayI8ap_fixedILi16ELi6EL9ap_q_mode5EL9ap_o_338 {Type X LastRead -1 FirstWrite -1}
		p_ZZN4nnet19pooling2d_buffer_clINS_5arrayI8ap_fixedILi16ELi6EL9ap_q_mode5EL9ap_o_339 {Type X LastRead -1 FirstWrite -1}
		p_ZZN4nnet19pooling2d_buffer_clINS_5arrayI8ap_fixedILi16ELi6EL9ap_q_mode5EL9ap_o_340 {Type X LastRead -1 FirstWrite -1}
		p_ZZN4nnet19pooling2d_buffer_clINS_5arrayI8ap_fixedILi16ELi6EL9ap_q_mode5EL9ap_o_341 {Type X LastRead -1 FirstWrite -1}
		p_ZZN4nnet19pooling2d_buffer_clINS_5arrayI8ap_fixedILi16ELi6EL9ap_q_mode5EL9ap_o_342 {Type X LastRead -1 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "115", "Max" : "115"}
	, {"Name" : "Interval", "Min" : "115", "Max" : "115"}
]}

set PipelineEnableSignalInfo {[
	{"Pipeline" : "0", "EnableSignal" : "ap_enable_pp0"}
]}

set Spec2ImplPortList { 
	layer12_out { ap_fifo {  { layer12_out_dout fifo_port_we 0 512 }  { layer12_out_num_data_valid fifo_status_num_data_valid 0 8 }  { layer12_out_fifo_cap fifo_update 0 8 }  { layer12_out_empty_n fifo_status 0 1 }  { layer12_out_read fifo_data 1 1 } } }
	layer14_out { ap_fifo {  { layer14_out_din fifo_port_we 1 512 }  { layer14_out_num_data_valid fifo_status_num_data_valid 0 6 }  { layer14_out_fifo_cap fifo_update 0 6 }  { layer14_out_full_n fifo_status 0 1 }  { layer14_out_write fifo_data 1 1 } } }
}
