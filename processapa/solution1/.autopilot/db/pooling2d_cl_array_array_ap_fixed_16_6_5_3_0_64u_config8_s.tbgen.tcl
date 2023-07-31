set moduleName pooling2d_cl_array_array_ap_fixed_16_6_5_3_0_64u_config8_s
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
set C_modelName {pooling2d_cl<array,array<ap_fixed<16,6,5,3,0>,64u>,config8>}
set C_modelType { void 0 }
set C_modelArgList {
	{ layer6_out int 1024 regular {fifo 0 volatile }  }
	{ layer8_out int 1024 regular {fifo 1 volatile }  }
}
set hasAXIMCache 0
set C_modelArgMapList {[ 
	{ "Name" : "layer6_out", "interface" : "fifo", "bitwidth" : 1024, "direction" : "READONLY"} , 
 	{ "Name" : "layer8_out", "interface" : "fifo", "bitwidth" : 1024, "direction" : "WRITEONLY"} ]}
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
	{ layer6_out_dout sc_in sc_lv 1024 signal 0 } 
	{ layer6_out_num_data_valid sc_in sc_lv 13 signal 0 } 
	{ layer6_out_fifo_cap sc_in sc_lv 13 signal 0 } 
	{ layer6_out_empty_n sc_in sc_logic 1 signal 0 } 
	{ layer6_out_read sc_out sc_logic 1 signal 0 } 
	{ layer8_out_din sc_out sc_lv 1024 signal 1 } 
	{ layer8_out_num_data_valid sc_in sc_lv 11 signal 1 } 
	{ layer8_out_fifo_cap sc_in sc_lv 11 signal 1 } 
	{ layer8_out_full_n sc_in sc_logic 1 signal 1 } 
	{ layer8_out_write sc_out sc_logic 1 signal 1 } 
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
 	{ "name": "layer6_out_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":1024, "type": "signal", "bundle":{"name": "layer6_out", "role": "dout" }} , 
 	{ "name": "layer6_out_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":13, "type": "signal", "bundle":{"name": "layer6_out", "role": "num_data_valid" }} , 
 	{ "name": "layer6_out_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":13, "type": "signal", "bundle":{"name": "layer6_out", "role": "fifo_cap" }} , 
 	{ "name": "layer6_out_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "layer6_out", "role": "empty_n" }} , 
 	{ "name": "layer6_out_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "layer6_out", "role": "read" }} , 
 	{ "name": "layer8_out_din", "direction": "out", "datatype": "sc_lv", "bitwidth":1024, "type": "signal", "bundle":{"name": "layer8_out", "role": "din" }} , 
 	{ "name": "layer8_out_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "layer8_out", "role": "num_data_valid" }} , 
 	{ "name": "layer8_out_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "layer8_out", "role": "fifo_cap" }} , 
 	{ "name": "layer8_out_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "layer8_out", "role": "full_n" }} , 
 	{ "name": "layer8_out_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "layer8_out", "role": "write" }} , 
 	{ "name": "start_out", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "start_out", "role": "default" }} , 
 	{ "name": "start_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "start_write", "role": "default" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "3", "4", "5", "6", "7", "8", "9", "10", "11", "12", "13", "14", "15", "16", "17", "18", "19", "20", "21", "22", "23", "24", "25", "26", "27", "28", "29", "30", "31", "32", "33", "34", "35", "36", "37", "38", "39", "40", "41", "42", "43", "44", "45", "46", "47", "48", "49", "50", "51", "52", "53", "54", "55", "56", "57", "58", "59", "60", "61", "62", "63", "64", "65"],
		"CDFG" : "pooling2d_cl_array_array_ap_fixed_16_6_5_3_0_64u_config8_s",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "3628", "EstimateLatencyMax" : "3628",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "layer6_out", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "3625", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "layer6_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "layer8_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "868", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "layer8_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "sY", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "pY", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "pX", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "sX", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_ZZN4nnet22compute_pool_buffer_2dINS_5arrayI8ap_fixedILi16ELi6EL9ap_q_mode5EL9ap_1243", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_ZZN4nnet22compute_pool_buffer_2dINS_5arrayI8ap_fixedILi16ELi6EL9ap_q_mode5EL9ap_1244", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_ZZN4nnet22compute_pool_buffer_2dINS_5arrayI8ap_fixedILi16ELi6EL9ap_q_mode5EL9ap_1245", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_ZZN4nnet22compute_pool_buffer_2dINS_5arrayI8ap_fixedILi16ELi6EL9ap_q_mode5EL9ap_1246", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_ZZN4nnet22compute_pool_buffer_2dINS_5arrayI8ap_fixedILi16ELi6EL9ap_q_mode5EL9ap_1247", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_ZZN4nnet22compute_pool_buffer_2dINS_5arrayI8ap_fixedILi16ELi6EL9ap_q_mode5EL9ap_1248", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_ZZN4nnet22compute_pool_buffer_2dINS_5arrayI8ap_fixedILi16ELi6EL9ap_q_mode5EL9ap_1249", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_ZZN4nnet22compute_pool_buffer_2dINS_5arrayI8ap_fixedILi16ELi6EL9ap_q_mode5EL9ap_1250", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_ZZN4nnet22compute_pool_buffer_2dINS_5arrayI8ap_fixedILi16ELi6EL9ap_q_mode5EL9ap_1251", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_ZZN4nnet22compute_pool_buffer_2dINS_5arrayI8ap_fixedILi16ELi6EL9ap_q_mode5EL9ap_1252", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_ZZN4nnet22compute_pool_buffer_2dINS_5arrayI8ap_fixedILi16ELi6EL9ap_q_mode5EL9ap_1253", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_ZZN4nnet22compute_pool_buffer_2dINS_5arrayI8ap_fixedILi16ELi6EL9ap_q_mode5EL9ap_1254", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_ZZN4nnet22compute_pool_buffer_2dINS_5arrayI8ap_fixedILi16ELi6EL9ap_q_mode5EL9ap_1255", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_ZZN4nnet22compute_pool_buffer_2dINS_5arrayI8ap_fixedILi16ELi6EL9ap_q_mode5EL9ap_1256", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_ZZN4nnet22compute_pool_buffer_2dINS_5arrayI8ap_fixedILi16ELi6EL9ap_q_mode5EL9ap_1257", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_ZZN4nnet22compute_pool_buffer_2dINS_5arrayI8ap_fixedILi16ELi6EL9ap_q_mode5EL9ap_1258", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_ZZN4nnet22compute_pool_buffer_2dINS_5arrayI8ap_fixedILi16ELi6EL9ap_q_mode5EL9ap_1259", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_ZZN4nnet22compute_pool_buffer_2dINS_5arrayI8ap_fixedILi16ELi6EL9ap_q_mode5EL9ap_1260", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_ZZN4nnet22compute_pool_buffer_2dINS_5arrayI8ap_fixedILi16ELi6EL9ap_q_mode5EL9ap_1261", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_ZZN4nnet22compute_pool_buffer_2dINS_5arrayI8ap_fixedILi16ELi6EL9ap_q_mode5EL9ap_1262", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_ZZN4nnet22compute_pool_buffer_2dINS_5arrayI8ap_fixedILi16ELi6EL9ap_q_mode5EL9ap_1263", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_ZZN4nnet22compute_pool_buffer_2dINS_5arrayI8ap_fixedILi16ELi6EL9ap_q_mode5EL9ap_1264", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_ZZN4nnet22compute_pool_buffer_2dINS_5arrayI8ap_fixedILi16ELi6EL9ap_q_mode5EL9ap_1265", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_ZZN4nnet22compute_pool_buffer_2dINS_5arrayI8ap_fixedILi16ELi6EL9ap_q_mode5EL9ap_1266", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_ZZN4nnet22compute_pool_buffer_2dINS_5arrayI8ap_fixedILi16ELi6EL9ap_q_mode5EL9ap_1267", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_ZZN4nnet22compute_pool_buffer_2dINS_5arrayI8ap_fixedILi16ELi6EL9ap_q_mode5EL9ap_1268", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_ZZN4nnet22compute_pool_buffer_2dINS_5arrayI8ap_fixedILi16ELi6EL9ap_q_mode5EL9ap_1269", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_ZZN4nnet22compute_pool_buffer_2dINS_5arrayI8ap_fixedILi16ELi6EL9ap_q_mode5EL9ap_1270", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_ZZN4nnet22compute_pool_buffer_2dINS_5arrayI8ap_fixedILi16ELi6EL9ap_q_mode5EL9ap_1271", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_ZZN4nnet22compute_pool_buffer_2dINS_5arrayI8ap_fixedILi16ELi6EL9ap_q_mode5EL9ap_1272", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_ZZN4nnet22compute_pool_buffer_2dINS_5arrayI8ap_fixedILi16ELi6EL9ap_q_mode5EL9ap_1273", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_ZZN4nnet22compute_pool_buffer_2dINS_5arrayI8ap_fixedILi16ELi6EL9ap_q_mode5EL9ap_1274", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_ZZN4nnet22compute_pool_buffer_2dINS_5arrayI8ap_fixedILi16ELi6EL9ap_q_mode5EL9ap_1275", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_ZZN4nnet22compute_pool_buffer_2dINS_5arrayI8ap_fixedILi16ELi6EL9ap_q_mode5EL9ap_1276", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_ZZN4nnet22compute_pool_buffer_2dINS_5arrayI8ap_fixedILi16ELi6EL9ap_q_mode5EL9ap_1277", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_ZZN4nnet22compute_pool_buffer_2dINS_5arrayI8ap_fixedILi16ELi6EL9ap_q_mode5EL9ap_1278", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_ZZN4nnet22compute_pool_buffer_2dINS_5arrayI8ap_fixedILi16ELi6EL9ap_q_mode5EL9ap_1151", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_ZZN4nnet22compute_pool_buffer_2dINS_5arrayI8ap_fixedILi16ELi6EL9ap_q_mode5EL9ap_1152", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_ZZN4nnet22compute_pool_buffer_2dINS_5arrayI8ap_fixedILi16ELi6EL9ap_q_mode5EL9ap_1153", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_ZZN4nnet22compute_pool_buffer_2dINS_5arrayI8ap_fixedILi16ELi6EL9ap_q_mode5EL9ap_1154", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_ZZN4nnet22compute_pool_buffer_2dINS_5arrayI8ap_fixedILi16ELi6EL9ap_q_mode5EL9ap_1155", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_ZZN4nnet22compute_pool_buffer_2dINS_5arrayI8ap_fixedILi16ELi6EL9ap_q_mode5EL9ap_1156", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_ZZN4nnet22compute_pool_buffer_2dINS_5arrayI8ap_fixedILi16ELi6EL9ap_q_mode5EL9ap_1157", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_ZZN4nnet22compute_pool_buffer_2dINS_5arrayI8ap_fixedILi16ELi6EL9ap_q_mode5EL9ap_1158", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_ZZN4nnet22compute_pool_buffer_2dINS_5arrayI8ap_fixedILi16ELi6EL9ap_q_mode5EL9ap_1159", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_ZZN4nnet22compute_pool_buffer_2dINS_5arrayI8ap_fixedILi16ELi6EL9ap_q_mode5EL9ap_1160", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_ZZN4nnet22compute_pool_buffer_2dINS_5arrayI8ap_fixedILi16ELi6EL9ap_q_mode5EL9ap_1161", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_ZZN4nnet22compute_pool_buffer_2dINS_5arrayI8ap_fixedILi16ELi6EL9ap_q_mode5EL9ap_1162", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_ZZN4nnet22compute_pool_buffer_2dINS_5arrayI8ap_fixedILi16ELi6EL9ap_q_mode5EL9ap_1163", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_ZZN4nnet22compute_pool_buffer_2dINS_5arrayI8ap_fixedILi16ELi6EL9ap_q_mode5EL9ap_1164", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_ZZN4nnet22compute_pool_buffer_2dINS_5arrayI8ap_fixedILi16ELi6EL9ap_q_mode5EL9ap_1165", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_ZZN4nnet22compute_pool_buffer_2dINS_5arrayI8ap_fixedILi16ELi6EL9ap_q_mode5EL9ap_1166", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_ZZN4nnet22compute_pool_buffer_2dINS_5arrayI8ap_fixedILi16ELi6EL9ap_q_mode5EL9ap_1167", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_ZZN4nnet22compute_pool_buffer_2dINS_5arrayI8ap_fixedILi16ELi6EL9ap_q_mode5EL9ap_1168", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_ZZN4nnet22compute_pool_buffer_2dINS_5arrayI8ap_fixedILi16ELi6EL9ap_q_mode5EL9ap_1169", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_ZZN4nnet22compute_pool_buffer_2dINS_5arrayI8ap_fixedILi16ELi6EL9ap_q_mode5EL9ap_1170", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_ZZN4nnet22compute_pool_buffer_2dINS_5arrayI8ap_fixedILi16ELi6EL9ap_q_mode5EL9ap_1171", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_ZZN4nnet22compute_pool_buffer_2dINS_5arrayI8ap_fixedILi16ELi6EL9ap_q_mode5EL9ap_1172", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_ZZN4nnet22compute_pool_buffer_2dINS_5arrayI8ap_fixedILi16ELi6EL9ap_q_mode5EL9ap_1173", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_ZZN4nnet22compute_pool_buffer_2dINS_5arrayI8ap_fixedILi16ELi6EL9ap_q_mode5EL9ap_1174", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_ZZN4nnet22compute_pool_buffer_2dINS_5arrayI8ap_fixedILi16ELi6EL9ap_q_mode5EL9ap_1175", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_ZZN4nnet22compute_pool_buffer_2dINS_5arrayI8ap_fixedILi16ELi6EL9ap_q_mode5EL9ap_1176", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_ZZN4nnet22compute_pool_buffer_2dINS_5arrayI8ap_fixedILi16ELi6EL9ap_q_mode5EL9ap_1177", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_ZZN4nnet22compute_pool_buffer_2dINS_5arrayI8ap_fixedILi16ELi6EL9ap_q_mode5EL9ap_1178", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_ZZN4nnet22compute_pool_buffer_2dINS_5arrayI8ap_fixedILi16ELi6EL9ap_q_mode5EL9ap_1179", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_ZZN4nnet22compute_pool_buffer_2dINS_5arrayI8ap_fixedILi16ELi6EL9ap_q_mode5EL9ap_1180", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_ZZN4nnet22compute_pool_buffer_2dINS_5arrayI8ap_fixedILi16ELi6EL9ap_q_mode5EL9ap_1181", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_ZZN4nnet22compute_pool_buffer_2dINS_5arrayI8ap_fixedILi16ELi6EL9ap_q_mode5EL9ap_1182", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_ZZN4nnet22compute_pool_buffer_2dINS_5arrayI8ap_fixedILi16ELi6EL9ap_q_mode5EL9ap_1183", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_ZZN4nnet22compute_pool_buffer_2dINS_5arrayI8ap_fixedILi16ELi6EL9ap_q_mode5EL9ap_1184", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_ZZN4nnet22compute_pool_buffer_2dINS_5arrayI8ap_fixedILi16ELi6EL9ap_q_mode5EL9ap_1185", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_ZZN4nnet22compute_pool_buffer_2dINS_5arrayI8ap_fixedILi16ELi6EL9ap_q_mode5EL9ap_1186", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_ZZN4nnet22compute_pool_buffer_2dINS_5arrayI8ap_fixedILi16ELi6EL9ap_q_mode5EL9ap_1187", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_ZZN4nnet22compute_pool_buffer_2dINS_5arrayI8ap_fixedILi16ELi6EL9ap_q_mode5EL9ap_1188", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_ZZN4nnet22compute_pool_buffer_2dINS_5arrayI8ap_fixedILi16ELi6EL9ap_q_mode5EL9ap_1189", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_ZZN4nnet22compute_pool_buffer_2dINS_5arrayI8ap_fixedILi16ELi6EL9ap_q_mode5EL9ap_1190", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_ZZN4nnet22compute_pool_buffer_2dINS_5arrayI8ap_fixedILi16ELi6EL9ap_q_mode5EL9ap_1191", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_ZZN4nnet22compute_pool_buffer_2dINS_5arrayI8ap_fixedILi16ELi6EL9ap_q_mode5EL9ap_1192", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_ZZN4nnet22compute_pool_buffer_2dINS_5arrayI8ap_fixedILi16ELi6EL9ap_q_mode5EL9ap_1193", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_ZZN4nnet22compute_pool_buffer_2dINS_5arrayI8ap_fixedILi16ELi6EL9ap_q_mode5EL9ap_1194", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_ZZN4nnet22compute_pool_buffer_2dINS_5arrayI8ap_fixedILi16ELi6EL9ap_q_mode5EL9ap_1195", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_ZZN4nnet22compute_pool_buffer_2dINS_5arrayI8ap_fixedILi16ELi6EL9ap_q_mode5EL9ap_1196", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_ZZN4nnet22compute_pool_buffer_2dINS_5arrayI8ap_fixedILi16ELi6EL9ap_q_mode5EL9ap_1197", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_ZZN4nnet22compute_pool_buffer_2dINS_5arrayI8ap_fixedILi16ELi6EL9ap_q_mode5EL9ap_1198", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_ZZN4nnet22compute_pool_buffer_2dINS_5arrayI8ap_fixedILi16ELi6EL9ap_q_mode5EL9ap_1199", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_ZZN4nnet22compute_pool_buffer_2dINS_5arrayI8ap_fixedILi16ELi6EL9ap_q_mode5EL9ap_1200", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_ZZN4nnet22compute_pool_buffer_2dINS_5arrayI8ap_fixedILi16ELi6EL9ap_q_mode5EL9ap_1201", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_ZZN4nnet22compute_pool_buffer_2dINS_5arrayI8ap_fixedILi16ELi6EL9ap_q_mode5EL9ap_1202", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_ZZN4nnet22compute_pool_buffer_2dINS_5arrayI8ap_fixedILi16ELi6EL9ap_q_mode5EL9ap_1203", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_ZZN4nnet22compute_pool_buffer_2dINS_5arrayI8ap_fixedILi16ELi6EL9ap_q_mode5EL9ap_1204", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_ZZN4nnet22compute_pool_buffer_2dINS_5arrayI8ap_fixedILi16ELi6EL9ap_q_mode5EL9ap_1205", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_ZZN4nnet22compute_pool_buffer_2dINS_5arrayI8ap_fixedILi16ELi6EL9ap_q_mode5EL9ap_1206", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_ZZN4nnet22compute_pool_buffer_2dINS_5arrayI8ap_fixedILi16ELi6EL9ap_q_mode5EL9ap_1207", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_ZZN4nnet22compute_pool_buffer_2dINS_5arrayI8ap_fixedILi16ELi6EL9ap_q_mode5EL9ap_1208", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_ZZN4nnet22compute_pool_buffer_2dINS_5arrayI8ap_fixedILi16ELi6EL9ap_q_mode5EL9ap_1209", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_ZZN4nnet22compute_pool_buffer_2dINS_5arrayI8ap_fixedILi16ELi6EL9ap_q_mode5EL9ap_1210", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_ZZN4nnet22compute_pool_buffer_2dINS_5arrayI8ap_fixedILi16ELi6EL9ap_q_mode5EL9ap_1211", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_ZZN4nnet22compute_pool_buffer_2dINS_5arrayI8ap_fixedILi16ELi6EL9ap_q_mode5EL9ap_1212", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_ZZN4nnet22compute_pool_buffer_2dINS_5arrayI8ap_fixedILi16ELi6EL9ap_q_mode5EL9ap_1213", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_ZZN4nnet22compute_pool_buffer_2dINS_5arrayI8ap_fixedILi16ELi6EL9ap_q_mode5EL9ap_1214", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_ZZN4nnet22compute_pool_buffer_2dINS_5arrayI8ap_fixedILi16ELi6EL9ap_q_mode5EL9ap_1215", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_ZZN4nnet22compute_pool_buffer_2dINS_5arrayI8ap_fixedILi16ELi6EL9ap_q_mode5EL9ap_1216", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_ZZN4nnet22compute_pool_buffer_2dINS_5arrayI8ap_fixedILi16ELi6EL9ap_q_mode5EL9ap_1217", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_ZZN4nnet22compute_pool_buffer_2dINS_5arrayI8ap_fixedILi16ELi6EL9ap_q_mode5EL9ap_1218", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_ZZN4nnet22compute_pool_buffer_2dINS_5arrayI8ap_fixedILi16ELi6EL9ap_q_mode5EL9ap_1219", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_ZZN4nnet22compute_pool_buffer_2dINS_5arrayI8ap_fixedILi16ELi6EL9ap_q_mode5EL9ap_1220", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_ZZN4nnet22compute_pool_buffer_2dINS_5arrayI8ap_fixedILi16ELi6EL9ap_q_mode5EL9ap_1221", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_ZZN4nnet22compute_pool_buffer_2dINS_5arrayI8ap_fixedILi16ELi6EL9ap_q_mode5EL9ap_1222", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_ZZN4nnet22compute_pool_buffer_2dINS_5arrayI8ap_fixedILi16ELi6EL9ap_q_mode5EL9ap_1223", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_ZZN4nnet22compute_pool_buffer_2dINS_5arrayI8ap_fixedILi16ELi6EL9ap_q_mode5EL9ap_1224", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_ZZN4nnet22compute_pool_buffer_2dINS_5arrayI8ap_fixedILi16ELi6EL9ap_q_mode5EL9ap_1225", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_ZZN4nnet22compute_pool_buffer_2dINS_5arrayI8ap_fixedILi16ELi6EL9ap_q_mode5EL9ap_1226", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_ZZN4nnet22compute_pool_buffer_2dINS_5arrayI8ap_fixedILi16ELi6EL9ap_q_mode5EL9ap_1227", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_ZZN4nnet22compute_pool_buffer_2dINS_5arrayI8ap_fixedILi16ELi6EL9ap_q_mode5EL9ap_1228", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_ZZN4nnet22compute_pool_buffer_2dINS_5arrayI8ap_fixedILi16ELi6EL9ap_q_mode5EL9ap_1229", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_ZZN4nnet22compute_pool_buffer_2dINS_5arrayI8ap_fixedILi16ELi6EL9ap_q_mode5EL9ap_1230", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_ZZN4nnet22compute_pool_buffer_2dINS_5arrayI8ap_fixedILi16ELi6EL9ap_q_mode5EL9ap_1231", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_ZZN4nnet22compute_pool_buffer_2dINS_5arrayI8ap_fixedILi16ELi6EL9ap_q_mode5EL9ap_1232", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_ZZN4nnet22compute_pool_buffer_2dINS_5arrayI8ap_fixedILi16ELi6EL9ap_q_mode5EL9ap_1233", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_ZZN4nnet22compute_pool_buffer_2dINS_5arrayI8ap_fixedILi16ELi6EL9ap_q_mode5EL9ap_1234", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_ZZN4nnet22compute_pool_buffer_2dINS_5arrayI8ap_fixedILi16ELi6EL9ap_q_mode5EL9ap_1235", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_ZZN4nnet22compute_pool_buffer_2dINS_5arrayI8ap_fixedILi16ELi6EL9ap_q_mode5EL9ap_1236", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_ZZN4nnet22compute_pool_buffer_2dINS_5arrayI8ap_fixedILi16ELi6EL9ap_q_mode5EL9ap_1237", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_ZZN4nnet22compute_pool_buffer_2dINS_5arrayI8ap_fixedILi16ELi6EL9ap_q_mode5EL9ap_1238", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_ZZN4nnet22compute_pool_buffer_2dINS_5arrayI8ap_fixedILi16ELi6EL9ap_q_mode5EL9ap_1239", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_ZZN4nnet22compute_pool_buffer_2dINS_5arrayI8ap_fixedILi16ELi6EL9ap_q_mode5EL9ap_1240", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_ZZN4nnet22compute_pool_buffer_2dINS_5arrayI8ap_fixedILi16ELi6EL9ap_q_mode5EL9ap_1241", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_ZZN4nnet22compute_pool_buffer_2dINS_5arrayI8ap_fixedILi16ELi6EL9ap_q_mode5EL9ap_1242", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "void_pooling2d_buffer_cl_stream_stream_array_ap_fixed_64u_0_line_buffer_9", "Type" : "Memory", "Direction" : "X"},
			{"Name" : "void_pooling2d_buffer_cl_stream_stream_array_ap_fixed_64u_0_line_buffer_8", "Type" : "Memory", "Direction" : "X"},
			{"Name" : "void_pooling2d_buffer_cl_stream_stream_array_ap_fixed_64u_0_line_buffer_7", "Type" : "Memory", "Direction" : "X"},
			{"Name" : "void_pooling2d_buffer_cl_stream_stream_array_ap_fixed_64u_0_line_buffer_6", "Type" : "Memory", "Direction" : "X"},
			{"Name" : "void_pooling2d_buffer_cl_stream_stream_array_ap_fixed_64u_0_line_buffer_5", "Type" : "Memory", "Direction" : "X"},
			{"Name" : "void_pooling2d_buffer_cl_stream_stream_array_ap_fixed_64u_0_line_buffer_4", "Type" : "Memory", "Direction" : "X"},
			{"Name" : "void_pooling2d_buffer_cl_stream_stream_array_ap_fixed_64u_0_line_buffer_3", "Type" : "Memory", "Direction" : "X"},
			{"Name" : "void_pooling2d_buffer_cl_stream_stream_array_ap_fixed_64u_0_line_buffer_2", "Type" : "Memory", "Direction" : "X"},
			{"Name" : "void_pooling2d_buffer_cl_stream_stream_array_ap_fixed_64u_0_line_buffer_1", "Type" : "Memory", "Direction" : "X"},
			{"Name" : "void_pooling2d_buffer_cl_stream_stream_array_ap_fixed_64u_0_line_buffer", "Type" : "Memory", "Direction" : "X"},
			{"Name" : "p_ZZN4nnet19pooling2d_buffer_clINS_5arrayI8ap_fixedILi16ELi6EL9ap_q_mode5EL9ap_o_343", "Type" : "Memory", "Direction" : "X"},
			{"Name" : "p_ZZN4nnet19pooling2d_buffer_clINS_5arrayI8ap_fixedILi16ELi6EL9ap_q_mode5EL9ap_o_344", "Type" : "Memory", "Direction" : "X"},
			{"Name" : "p_ZZN4nnet19pooling2d_buffer_clINS_5arrayI8ap_fixedILi16ELi6EL9ap_q_mode5EL9ap_o_345", "Type" : "Memory", "Direction" : "X"},
			{"Name" : "p_ZZN4nnet19pooling2d_buffer_clINS_5arrayI8ap_fixedILi16ELi6EL9ap_q_mode5EL9ap_o_346", "Type" : "Memory", "Direction" : "X"},
			{"Name" : "p_ZZN4nnet19pooling2d_buffer_clINS_5arrayI8ap_fixedILi16ELi6EL9ap_q_mode5EL9ap_o_347", "Type" : "Memory", "Direction" : "X"},
			{"Name" : "p_ZZN4nnet19pooling2d_buffer_clINS_5arrayI8ap_fixedILi16ELi6EL9ap_q_mode5EL9ap_o_348", "Type" : "Memory", "Direction" : "X"},
			{"Name" : "p_ZZN4nnet19pooling2d_buffer_clINS_5arrayI8ap_fixedILi16ELi6EL9ap_q_mode5EL9ap_o_349", "Type" : "Memory", "Direction" : "X"},
			{"Name" : "p_ZZN4nnet19pooling2d_buffer_clINS_5arrayI8ap_fixedILi16ELi6EL9ap_q_mode5EL9ap_o_350", "Type" : "Memory", "Direction" : "X"},
			{"Name" : "p_ZZN4nnet19pooling2d_buffer_clINS_5arrayI8ap_fixedILi16ELi6EL9ap_q_mode5EL9ap_o_99", "Type" : "Memory", "Direction" : "X"},
			{"Name" : "p_ZZN4nnet19pooling2d_buffer_clINS_5arrayI8ap_fixedILi16ELi6EL9ap_q_mode5EL9ap_o_98", "Type" : "Memory", "Direction" : "X"},
			{"Name" : "p_ZZN4nnet19pooling2d_buffer_clINS_5arrayI8ap_fixedILi16ELi6EL9ap_q_mode5EL9ap_o_97", "Type" : "Memory", "Direction" : "X"},
			{"Name" : "p_ZZN4nnet19pooling2d_buffer_clINS_5arrayI8ap_fixedILi16ELi6EL9ap_q_mode5EL9ap_o_96", "Type" : "Memory", "Direction" : "X"},
			{"Name" : "p_ZZN4nnet19pooling2d_buffer_clINS_5arrayI8ap_fixedILi16ELi6EL9ap_q_mode5EL9ap_o_95", "Type" : "Memory", "Direction" : "X"},
			{"Name" : "p_ZZN4nnet19pooling2d_buffer_clINS_5arrayI8ap_fixedILi16ELi6EL9ap_q_mode5EL9ap_o_94", "Type" : "Memory", "Direction" : "X"},
			{"Name" : "p_ZZN4nnet19pooling2d_buffer_clINS_5arrayI8ap_fixedILi16ELi6EL9ap_q_mode5EL9ap_o_93", "Type" : "Memory", "Direction" : "X"},
			{"Name" : "p_ZZN4nnet19pooling2d_buffer_clINS_5arrayI8ap_fixedILi16ELi6EL9ap_q_mode5EL9ap_o_92", "Type" : "Memory", "Direction" : "X"},
			{"Name" : "p_ZZN4nnet19pooling2d_buffer_clINS_5arrayI8ap_fixedILi16ELi6EL9ap_q_mode5EL9ap_o_91", "Type" : "Memory", "Direction" : "X"},
			{"Name" : "p_ZZN4nnet19pooling2d_buffer_clINS_5arrayI8ap_fixedILi16ELi6EL9ap_q_mode5EL9ap_o_90", "Type" : "Memory", "Direction" : "X"},
			{"Name" : "p_ZZN4nnet19pooling2d_buffer_clINS_5arrayI8ap_fixedILi16ELi6EL9ap_q_mode5EL9ap_o_89", "Type" : "Memory", "Direction" : "X"},
			{"Name" : "p_ZZN4nnet19pooling2d_buffer_clINS_5arrayI8ap_fixedILi16ELi6EL9ap_q_mode5EL9ap_o_88", "Type" : "Memory", "Direction" : "X"},
			{"Name" : "p_ZZN4nnet19pooling2d_buffer_clINS_5arrayI8ap_fixedILi16ELi6EL9ap_q_mode5EL9ap_o_87", "Type" : "Memory", "Direction" : "X"},
			{"Name" : "p_ZZN4nnet19pooling2d_buffer_clINS_5arrayI8ap_fixedILi16ELi6EL9ap_q_mode5EL9ap_o_86", "Type" : "Memory", "Direction" : "X"},
			{"Name" : "p_ZZN4nnet19pooling2d_buffer_clINS_5arrayI8ap_fixedILi16ELi6EL9ap_q_mode5EL9ap_o_85", "Type" : "Memory", "Direction" : "X"},
			{"Name" : "p_ZZN4nnet19pooling2d_buffer_clINS_5arrayI8ap_fixedILi16ELi6EL9ap_q_mode5EL9ap_o_84", "Type" : "Memory", "Direction" : "X"},
			{"Name" : "p_ZZN4nnet19pooling2d_buffer_clINS_5arrayI8ap_fixedILi16ELi6EL9ap_q_mode5EL9ap_o_83", "Type" : "Memory", "Direction" : "X"},
			{"Name" : "p_ZZN4nnet19pooling2d_buffer_clINS_5arrayI8ap_fixedILi16ELi6EL9ap_q_mode5EL9ap_o_82", "Type" : "Memory", "Direction" : "X"},
			{"Name" : "p_ZZN4nnet19pooling2d_buffer_clINS_5arrayI8ap_fixedILi16ELi6EL9ap_q_mode5EL9ap_o_81", "Type" : "Memory", "Direction" : "X"},
			{"Name" : "p_ZZN4nnet19pooling2d_buffer_clINS_5arrayI8ap_fixedILi16ELi6EL9ap_q_mode5EL9ap_o_80", "Type" : "Memory", "Direction" : "X"},
			{"Name" : "p_ZZN4nnet19pooling2d_buffer_clINS_5arrayI8ap_fixedILi16ELi6EL9ap_q_mode5EL9ap_o_79", "Type" : "Memory", "Direction" : "X"},
			{"Name" : "p_ZZN4nnet19pooling2d_buffer_clINS_5arrayI8ap_fixedILi16ELi6EL9ap_q_mode5EL9ap_o_78", "Type" : "Memory", "Direction" : "X"},
			{"Name" : "p_ZZN4nnet19pooling2d_buffer_clINS_5arrayI8ap_fixedILi16ELi6EL9ap_q_mode5EL9ap_o_77", "Type" : "Memory", "Direction" : "X"},
			{"Name" : "p_ZZN4nnet19pooling2d_buffer_clINS_5arrayI8ap_fixedILi16ELi6EL9ap_q_mode5EL9ap_o_76", "Type" : "Memory", "Direction" : "X"},
			{"Name" : "p_ZZN4nnet19pooling2d_buffer_clINS_5arrayI8ap_fixedILi16ELi6EL9ap_q_mode5EL9ap_o_75", "Type" : "Memory", "Direction" : "X"},
			{"Name" : "p_ZZN4nnet19pooling2d_buffer_clINS_5arrayI8ap_fixedILi16ELi6EL9ap_q_mode5EL9ap_o_74", "Type" : "Memory", "Direction" : "X"},
			{"Name" : "p_ZZN4nnet19pooling2d_buffer_clINS_5arrayI8ap_fixedILi16ELi6EL9ap_q_mode5EL9ap_o_73", "Type" : "Memory", "Direction" : "X"},
			{"Name" : "p_ZZN4nnet19pooling2d_buffer_clINS_5arrayI8ap_fixedILi16ELi6EL9ap_q_mode5EL9ap_o_72", "Type" : "Memory", "Direction" : "X"},
			{"Name" : "p_ZZN4nnet19pooling2d_buffer_clINS_5arrayI8ap_fixedILi16ELi6EL9ap_q_mode5EL9ap_o_71", "Type" : "Memory", "Direction" : "X"},
			{"Name" : "p_ZZN4nnet19pooling2d_buffer_clINS_5arrayI8ap_fixedILi16ELi6EL9ap_q_mode5EL9ap_o_70", "Type" : "Memory", "Direction" : "X"},
			{"Name" : "p_ZZN4nnet19pooling2d_buffer_clINS_5arrayI8ap_fixedILi16ELi6EL9ap_q_mode5EL9ap_o_69", "Type" : "Memory", "Direction" : "X"},
			{"Name" : "p_ZZN4nnet19pooling2d_buffer_clINS_5arrayI8ap_fixedILi16ELi6EL9ap_q_mode5EL9ap_o_68", "Type" : "Memory", "Direction" : "X"},
			{"Name" : "p_ZZN4nnet19pooling2d_buffer_clINS_5arrayI8ap_fixedILi16ELi6EL9ap_q_mode5EL9ap_o_67", "Type" : "Memory", "Direction" : "X"},
			{"Name" : "p_ZZN4nnet19pooling2d_buffer_clINS_5arrayI8ap_fixedILi16ELi6EL9ap_q_mode5EL9ap_o_66", "Type" : "Memory", "Direction" : "X"},
			{"Name" : "p_ZZN4nnet19pooling2d_buffer_clINS_5arrayI8ap_fixedILi16ELi6EL9ap_q_mode5EL9ap_o_65", "Type" : "Memory", "Direction" : "X"},
			{"Name" : "p_ZZN4nnet19pooling2d_buffer_clINS_5arrayI8ap_fixedILi16ELi6EL9ap_q_mode5EL9ap_o_64", "Type" : "Memory", "Direction" : "X"},
			{"Name" : "p_ZZN4nnet19pooling2d_buffer_clINS_5arrayI8ap_fixedILi16ELi6EL9ap_q_mode5EL9ap_o_63", "Type" : "Memory", "Direction" : "X"},
			{"Name" : "p_ZZN4nnet19pooling2d_buffer_clINS_5arrayI8ap_fixedILi16ELi6EL9ap_q_mode5EL9ap_o_62", "Type" : "Memory", "Direction" : "X"},
			{"Name" : "p_ZZN4nnet19pooling2d_buffer_clINS_5arrayI8ap_fixedILi16ELi6EL9ap_q_mode5EL9ap_o_61", "Type" : "Memory", "Direction" : "X"},
			{"Name" : "p_ZZN4nnet19pooling2d_buffer_clINS_5arrayI8ap_fixedILi16ELi6EL9ap_q_mode5EL9ap_o_60", "Type" : "Memory", "Direction" : "X"},
			{"Name" : "p_ZZN4nnet19pooling2d_buffer_clINS_5arrayI8ap_fixedILi16ELi6EL9ap_q_mode5EL9ap_o_59", "Type" : "Memory", "Direction" : "X"},
			{"Name" : "p_ZZN4nnet19pooling2d_buffer_clINS_5arrayI8ap_fixedILi16ELi6EL9ap_q_mode5EL9ap_o_58", "Type" : "Memory", "Direction" : "X"},
			{"Name" : "p_ZZN4nnet19pooling2d_buffer_clINS_5arrayI8ap_fixedILi16ELi6EL9ap_q_mode5EL9ap_o_57", "Type" : "Memory", "Direction" : "X"},
			{"Name" : "p_ZZN4nnet19pooling2d_buffer_clINS_5arrayI8ap_fixedILi16ELi6EL9ap_q_mode5EL9ap_o_56", "Type" : "Memory", "Direction" : "X"},
			{"Name" : "p_ZZN4nnet19pooling2d_buffer_clINS_5arrayI8ap_fixedILi16ELi6EL9ap_q_mode5EL9ap_o_55", "Type" : "Memory", "Direction" : "X"},
			{"Name" : "p_ZZN4nnet19pooling2d_buffer_clINS_5arrayI8ap_fixedILi16ELi6EL9ap_q_mode5EL9ap_o_54", "Type" : "Memory", "Direction" : "X"}],
		"Loop" : [
			{"Name" : "ReadInputHeight_ReadInputWidth", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter2", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter2", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "1"}}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.void_pooling2d_buffer_cl_stream_stream_array_ap_fixed_64u_0_line_buffer_9_U", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.void_pooling2d_buffer_cl_stream_stream_array_ap_fixed_64u_0_line_buffer_8_U", "Parent" : "0"},
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.void_pooling2d_buffer_cl_stream_stream_array_ap_fixed_64u_0_line_buffer_7_U", "Parent" : "0"},
	{"ID" : "4", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.void_pooling2d_buffer_cl_stream_stream_array_ap_fixed_64u_0_line_buffer_6_U", "Parent" : "0"},
	{"ID" : "5", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.void_pooling2d_buffer_cl_stream_stream_array_ap_fixed_64u_0_line_buffer_5_U", "Parent" : "0"},
	{"ID" : "6", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.void_pooling2d_buffer_cl_stream_stream_array_ap_fixed_64u_0_line_buffer_4_U", "Parent" : "0"},
	{"ID" : "7", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.void_pooling2d_buffer_cl_stream_stream_array_ap_fixed_64u_0_line_buffer_3_U", "Parent" : "0"},
	{"ID" : "8", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.void_pooling2d_buffer_cl_stream_stream_array_ap_fixed_64u_0_line_buffer_2_U", "Parent" : "0"},
	{"ID" : "9", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.void_pooling2d_buffer_cl_stream_stream_array_ap_fixed_64u_0_line_buffer_1_U", "Parent" : "0"},
	{"ID" : "10", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.void_pooling2d_buffer_cl_stream_stream_array_ap_fixed_64u_0_line_buffer_U", "Parent" : "0"},
	{"ID" : "11", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.p_ZZN4nnet19pooling2d_buffer_clINS_5arrayI8ap_fixedILi16ELi6EL9ap_q_mode5EL9ap_o_343_U", "Parent" : "0"},
	{"ID" : "12", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.p_ZZN4nnet19pooling2d_buffer_clINS_5arrayI8ap_fixedILi16ELi6EL9ap_q_mode5EL9ap_o_344_U", "Parent" : "0"},
	{"ID" : "13", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.p_ZZN4nnet19pooling2d_buffer_clINS_5arrayI8ap_fixedILi16ELi6EL9ap_q_mode5EL9ap_o_345_U", "Parent" : "0"},
	{"ID" : "14", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.p_ZZN4nnet19pooling2d_buffer_clINS_5arrayI8ap_fixedILi16ELi6EL9ap_q_mode5EL9ap_o_346_U", "Parent" : "0"},
	{"ID" : "15", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.p_ZZN4nnet19pooling2d_buffer_clINS_5arrayI8ap_fixedILi16ELi6EL9ap_q_mode5EL9ap_o_347_U", "Parent" : "0"},
	{"ID" : "16", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.p_ZZN4nnet19pooling2d_buffer_clINS_5arrayI8ap_fixedILi16ELi6EL9ap_q_mode5EL9ap_o_348_U", "Parent" : "0"},
	{"ID" : "17", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.p_ZZN4nnet19pooling2d_buffer_clINS_5arrayI8ap_fixedILi16ELi6EL9ap_q_mode5EL9ap_o_349_U", "Parent" : "0"},
	{"ID" : "18", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.p_ZZN4nnet19pooling2d_buffer_clINS_5arrayI8ap_fixedILi16ELi6EL9ap_q_mode5EL9ap_o_350_U", "Parent" : "0"},
	{"ID" : "19", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.p_ZZN4nnet19pooling2d_buffer_clINS_5arrayI8ap_fixedILi16ELi6EL9ap_q_mode5EL9ap_o_99_U", "Parent" : "0"},
	{"ID" : "20", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.p_ZZN4nnet19pooling2d_buffer_clINS_5arrayI8ap_fixedILi16ELi6EL9ap_q_mode5EL9ap_o_98_U", "Parent" : "0"},
	{"ID" : "21", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.p_ZZN4nnet19pooling2d_buffer_clINS_5arrayI8ap_fixedILi16ELi6EL9ap_q_mode5EL9ap_o_97_U", "Parent" : "0"},
	{"ID" : "22", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.p_ZZN4nnet19pooling2d_buffer_clINS_5arrayI8ap_fixedILi16ELi6EL9ap_q_mode5EL9ap_o_96_U", "Parent" : "0"},
	{"ID" : "23", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.p_ZZN4nnet19pooling2d_buffer_clINS_5arrayI8ap_fixedILi16ELi6EL9ap_q_mode5EL9ap_o_95_U", "Parent" : "0"},
	{"ID" : "24", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.p_ZZN4nnet19pooling2d_buffer_clINS_5arrayI8ap_fixedILi16ELi6EL9ap_q_mode5EL9ap_o_94_U", "Parent" : "0"},
	{"ID" : "25", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.p_ZZN4nnet19pooling2d_buffer_clINS_5arrayI8ap_fixedILi16ELi6EL9ap_q_mode5EL9ap_o_93_U", "Parent" : "0"},
	{"ID" : "26", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.p_ZZN4nnet19pooling2d_buffer_clINS_5arrayI8ap_fixedILi16ELi6EL9ap_q_mode5EL9ap_o_92_U", "Parent" : "0"},
	{"ID" : "27", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.p_ZZN4nnet19pooling2d_buffer_clINS_5arrayI8ap_fixedILi16ELi6EL9ap_q_mode5EL9ap_o_91_U", "Parent" : "0"},
	{"ID" : "28", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.p_ZZN4nnet19pooling2d_buffer_clINS_5arrayI8ap_fixedILi16ELi6EL9ap_q_mode5EL9ap_o_90_U", "Parent" : "0"},
	{"ID" : "29", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.p_ZZN4nnet19pooling2d_buffer_clINS_5arrayI8ap_fixedILi16ELi6EL9ap_q_mode5EL9ap_o_89_U", "Parent" : "0"},
	{"ID" : "30", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.p_ZZN4nnet19pooling2d_buffer_clINS_5arrayI8ap_fixedILi16ELi6EL9ap_q_mode5EL9ap_o_88_U", "Parent" : "0"},
	{"ID" : "31", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.p_ZZN4nnet19pooling2d_buffer_clINS_5arrayI8ap_fixedILi16ELi6EL9ap_q_mode5EL9ap_o_87_U", "Parent" : "0"},
	{"ID" : "32", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.p_ZZN4nnet19pooling2d_buffer_clINS_5arrayI8ap_fixedILi16ELi6EL9ap_q_mode5EL9ap_o_86_U", "Parent" : "0"},
	{"ID" : "33", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.p_ZZN4nnet19pooling2d_buffer_clINS_5arrayI8ap_fixedILi16ELi6EL9ap_q_mode5EL9ap_o_85_U", "Parent" : "0"},
	{"ID" : "34", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.p_ZZN4nnet19pooling2d_buffer_clINS_5arrayI8ap_fixedILi16ELi6EL9ap_q_mode5EL9ap_o_84_U", "Parent" : "0"},
	{"ID" : "35", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.p_ZZN4nnet19pooling2d_buffer_clINS_5arrayI8ap_fixedILi16ELi6EL9ap_q_mode5EL9ap_o_83_U", "Parent" : "0"},
	{"ID" : "36", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.p_ZZN4nnet19pooling2d_buffer_clINS_5arrayI8ap_fixedILi16ELi6EL9ap_q_mode5EL9ap_o_82_U", "Parent" : "0"},
	{"ID" : "37", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.p_ZZN4nnet19pooling2d_buffer_clINS_5arrayI8ap_fixedILi16ELi6EL9ap_q_mode5EL9ap_o_81_U", "Parent" : "0"},
	{"ID" : "38", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.p_ZZN4nnet19pooling2d_buffer_clINS_5arrayI8ap_fixedILi16ELi6EL9ap_q_mode5EL9ap_o_80_U", "Parent" : "0"},
	{"ID" : "39", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.p_ZZN4nnet19pooling2d_buffer_clINS_5arrayI8ap_fixedILi16ELi6EL9ap_q_mode5EL9ap_o_79_U", "Parent" : "0"},
	{"ID" : "40", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.p_ZZN4nnet19pooling2d_buffer_clINS_5arrayI8ap_fixedILi16ELi6EL9ap_q_mode5EL9ap_o_78_U", "Parent" : "0"},
	{"ID" : "41", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.p_ZZN4nnet19pooling2d_buffer_clINS_5arrayI8ap_fixedILi16ELi6EL9ap_q_mode5EL9ap_o_77_U", "Parent" : "0"},
	{"ID" : "42", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.p_ZZN4nnet19pooling2d_buffer_clINS_5arrayI8ap_fixedILi16ELi6EL9ap_q_mode5EL9ap_o_76_U", "Parent" : "0"},
	{"ID" : "43", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.p_ZZN4nnet19pooling2d_buffer_clINS_5arrayI8ap_fixedILi16ELi6EL9ap_q_mode5EL9ap_o_75_U", "Parent" : "0"},
	{"ID" : "44", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.p_ZZN4nnet19pooling2d_buffer_clINS_5arrayI8ap_fixedILi16ELi6EL9ap_q_mode5EL9ap_o_74_U", "Parent" : "0"},
	{"ID" : "45", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.p_ZZN4nnet19pooling2d_buffer_clINS_5arrayI8ap_fixedILi16ELi6EL9ap_q_mode5EL9ap_o_73_U", "Parent" : "0"},
	{"ID" : "46", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.p_ZZN4nnet19pooling2d_buffer_clINS_5arrayI8ap_fixedILi16ELi6EL9ap_q_mode5EL9ap_o_72_U", "Parent" : "0"},
	{"ID" : "47", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.p_ZZN4nnet19pooling2d_buffer_clINS_5arrayI8ap_fixedILi16ELi6EL9ap_q_mode5EL9ap_o_71_U", "Parent" : "0"},
	{"ID" : "48", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.p_ZZN4nnet19pooling2d_buffer_clINS_5arrayI8ap_fixedILi16ELi6EL9ap_q_mode5EL9ap_o_70_U", "Parent" : "0"},
	{"ID" : "49", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.p_ZZN4nnet19pooling2d_buffer_clINS_5arrayI8ap_fixedILi16ELi6EL9ap_q_mode5EL9ap_o_69_U", "Parent" : "0"},
	{"ID" : "50", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.p_ZZN4nnet19pooling2d_buffer_clINS_5arrayI8ap_fixedILi16ELi6EL9ap_q_mode5EL9ap_o_68_U", "Parent" : "0"},
	{"ID" : "51", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.p_ZZN4nnet19pooling2d_buffer_clINS_5arrayI8ap_fixedILi16ELi6EL9ap_q_mode5EL9ap_o_67_U", "Parent" : "0"},
	{"ID" : "52", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.p_ZZN4nnet19pooling2d_buffer_clINS_5arrayI8ap_fixedILi16ELi6EL9ap_q_mode5EL9ap_o_66_U", "Parent" : "0"},
	{"ID" : "53", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.p_ZZN4nnet19pooling2d_buffer_clINS_5arrayI8ap_fixedILi16ELi6EL9ap_q_mode5EL9ap_o_65_U", "Parent" : "0"},
	{"ID" : "54", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.p_ZZN4nnet19pooling2d_buffer_clINS_5arrayI8ap_fixedILi16ELi6EL9ap_q_mode5EL9ap_o_64_U", "Parent" : "0"},
	{"ID" : "55", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.p_ZZN4nnet19pooling2d_buffer_clINS_5arrayI8ap_fixedILi16ELi6EL9ap_q_mode5EL9ap_o_63_U", "Parent" : "0"},
	{"ID" : "56", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.p_ZZN4nnet19pooling2d_buffer_clINS_5arrayI8ap_fixedILi16ELi6EL9ap_q_mode5EL9ap_o_62_U", "Parent" : "0"},
	{"ID" : "57", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.p_ZZN4nnet19pooling2d_buffer_clINS_5arrayI8ap_fixedILi16ELi6EL9ap_q_mode5EL9ap_o_61_U", "Parent" : "0"},
	{"ID" : "58", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.p_ZZN4nnet19pooling2d_buffer_clINS_5arrayI8ap_fixedILi16ELi6EL9ap_q_mode5EL9ap_o_60_U", "Parent" : "0"},
	{"ID" : "59", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.p_ZZN4nnet19pooling2d_buffer_clINS_5arrayI8ap_fixedILi16ELi6EL9ap_q_mode5EL9ap_o_59_U", "Parent" : "0"},
	{"ID" : "60", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.p_ZZN4nnet19pooling2d_buffer_clINS_5arrayI8ap_fixedILi16ELi6EL9ap_q_mode5EL9ap_o_58_U", "Parent" : "0"},
	{"ID" : "61", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.p_ZZN4nnet19pooling2d_buffer_clINS_5arrayI8ap_fixedILi16ELi6EL9ap_q_mode5EL9ap_o_57_U", "Parent" : "0"},
	{"ID" : "62", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.p_ZZN4nnet19pooling2d_buffer_clINS_5arrayI8ap_fixedILi16ELi6EL9ap_q_mode5EL9ap_o_56_U", "Parent" : "0"},
	{"ID" : "63", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.p_ZZN4nnet19pooling2d_buffer_clINS_5arrayI8ap_fixedILi16ELi6EL9ap_q_mode5EL9ap_o_55_U", "Parent" : "0"},
	{"ID" : "64", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.p_ZZN4nnet19pooling2d_buffer_clINS_5arrayI8ap_fixedILi16ELi6EL9ap_q_mode5EL9ap_o_54_U", "Parent" : "0"},
	{"ID" : "65", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.flow_control_loop_pipe_U", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	pooling2d_cl_array_array_ap_fixed_16_6_5_3_0_64u_config8_s {
		layer6_out {Type I LastRead 1 FirstWrite -1}
		layer8_out {Type O LastRead -1 FirstWrite 2}
		sY {Type IO LastRead -1 FirstWrite -1}
		pY {Type IO LastRead -1 FirstWrite -1}
		pX {Type IO LastRead -1 FirstWrite -1}
		sX {Type IO LastRead -1 FirstWrite -1}
		p_ZZN4nnet22compute_pool_buffer_2dINS_5arrayI8ap_fixedILi16ELi6EL9ap_q_mode5EL9ap_1243 {Type IO LastRead -1 FirstWrite -1}
		p_ZZN4nnet22compute_pool_buffer_2dINS_5arrayI8ap_fixedILi16ELi6EL9ap_q_mode5EL9ap_1244 {Type IO LastRead -1 FirstWrite -1}
		p_ZZN4nnet22compute_pool_buffer_2dINS_5arrayI8ap_fixedILi16ELi6EL9ap_q_mode5EL9ap_1245 {Type IO LastRead -1 FirstWrite -1}
		p_ZZN4nnet22compute_pool_buffer_2dINS_5arrayI8ap_fixedILi16ELi6EL9ap_q_mode5EL9ap_1246 {Type IO LastRead -1 FirstWrite -1}
		p_ZZN4nnet22compute_pool_buffer_2dINS_5arrayI8ap_fixedILi16ELi6EL9ap_q_mode5EL9ap_1247 {Type IO LastRead -1 FirstWrite -1}
		p_ZZN4nnet22compute_pool_buffer_2dINS_5arrayI8ap_fixedILi16ELi6EL9ap_q_mode5EL9ap_1248 {Type IO LastRead -1 FirstWrite -1}
		p_ZZN4nnet22compute_pool_buffer_2dINS_5arrayI8ap_fixedILi16ELi6EL9ap_q_mode5EL9ap_1249 {Type IO LastRead -1 FirstWrite -1}
		p_ZZN4nnet22compute_pool_buffer_2dINS_5arrayI8ap_fixedILi16ELi6EL9ap_q_mode5EL9ap_1250 {Type IO LastRead -1 FirstWrite -1}
		p_ZZN4nnet22compute_pool_buffer_2dINS_5arrayI8ap_fixedILi16ELi6EL9ap_q_mode5EL9ap_1251 {Type IO LastRead -1 FirstWrite -1}
		p_ZZN4nnet22compute_pool_buffer_2dINS_5arrayI8ap_fixedILi16ELi6EL9ap_q_mode5EL9ap_1252 {Type IO LastRead -1 FirstWrite -1}
		p_ZZN4nnet22compute_pool_buffer_2dINS_5arrayI8ap_fixedILi16ELi6EL9ap_q_mode5EL9ap_1253 {Type IO LastRead -1 FirstWrite -1}
		p_ZZN4nnet22compute_pool_buffer_2dINS_5arrayI8ap_fixedILi16ELi6EL9ap_q_mode5EL9ap_1254 {Type IO LastRead -1 FirstWrite -1}
		p_ZZN4nnet22compute_pool_buffer_2dINS_5arrayI8ap_fixedILi16ELi6EL9ap_q_mode5EL9ap_1255 {Type IO LastRead -1 FirstWrite -1}
		p_ZZN4nnet22compute_pool_buffer_2dINS_5arrayI8ap_fixedILi16ELi6EL9ap_q_mode5EL9ap_1256 {Type IO LastRead -1 FirstWrite -1}
		p_ZZN4nnet22compute_pool_buffer_2dINS_5arrayI8ap_fixedILi16ELi6EL9ap_q_mode5EL9ap_1257 {Type IO LastRead -1 FirstWrite -1}
		p_ZZN4nnet22compute_pool_buffer_2dINS_5arrayI8ap_fixedILi16ELi6EL9ap_q_mode5EL9ap_1258 {Type IO LastRead -1 FirstWrite -1}
		p_ZZN4nnet22compute_pool_buffer_2dINS_5arrayI8ap_fixedILi16ELi6EL9ap_q_mode5EL9ap_1259 {Type IO LastRead -1 FirstWrite -1}
		p_ZZN4nnet22compute_pool_buffer_2dINS_5arrayI8ap_fixedILi16ELi6EL9ap_q_mode5EL9ap_1260 {Type IO LastRead -1 FirstWrite -1}
		p_ZZN4nnet22compute_pool_buffer_2dINS_5arrayI8ap_fixedILi16ELi6EL9ap_q_mode5EL9ap_1261 {Type IO LastRead -1 FirstWrite -1}
		p_ZZN4nnet22compute_pool_buffer_2dINS_5arrayI8ap_fixedILi16ELi6EL9ap_q_mode5EL9ap_1262 {Type IO LastRead -1 FirstWrite -1}
		p_ZZN4nnet22compute_pool_buffer_2dINS_5arrayI8ap_fixedILi16ELi6EL9ap_q_mode5EL9ap_1263 {Type IO LastRead -1 FirstWrite -1}
		p_ZZN4nnet22compute_pool_buffer_2dINS_5arrayI8ap_fixedILi16ELi6EL9ap_q_mode5EL9ap_1264 {Type IO LastRead -1 FirstWrite -1}
		p_ZZN4nnet22compute_pool_buffer_2dINS_5arrayI8ap_fixedILi16ELi6EL9ap_q_mode5EL9ap_1265 {Type IO LastRead -1 FirstWrite -1}
		p_ZZN4nnet22compute_pool_buffer_2dINS_5arrayI8ap_fixedILi16ELi6EL9ap_q_mode5EL9ap_1266 {Type IO LastRead -1 FirstWrite -1}
		p_ZZN4nnet22compute_pool_buffer_2dINS_5arrayI8ap_fixedILi16ELi6EL9ap_q_mode5EL9ap_1267 {Type IO LastRead -1 FirstWrite -1}
		p_ZZN4nnet22compute_pool_buffer_2dINS_5arrayI8ap_fixedILi16ELi6EL9ap_q_mode5EL9ap_1268 {Type IO LastRead -1 FirstWrite -1}
		p_ZZN4nnet22compute_pool_buffer_2dINS_5arrayI8ap_fixedILi16ELi6EL9ap_q_mode5EL9ap_1269 {Type IO LastRead -1 FirstWrite -1}
		p_ZZN4nnet22compute_pool_buffer_2dINS_5arrayI8ap_fixedILi16ELi6EL9ap_q_mode5EL9ap_1270 {Type IO LastRead -1 FirstWrite -1}
		p_ZZN4nnet22compute_pool_buffer_2dINS_5arrayI8ap_fixedILi16ELi6EL9ap_q_mode5EL9ap_1271 {Type IO LastRead -1 FirstWrite -1}
		p_ZZN4nnet22compute_pool_buffer_2dINS_5arrayI8ap_fixedILi16ELi6EL9ap_q_mode5EL9ap_1272 {Type IO LastRead -1 FirstWrite -1}
		p_ZZN4nnet22compute_pool_buffer_2dINS_5arrayI8ap_fixedILi16ELi6EL9ap_q_mode5EL9ap_1273 {Type IO LastRead -1 FirstWrite -1}
		p_ZZN4nnet22compute_pool_buffer_2dINS_5arrayI8ap_fixedILi16ELi6EL9ap_q_mode5EL9ap_1274 {Type IO LastRead -1 FirstWrite -1}
		p_ZZN4nnet22compute_pool_buffer_2dINS_5arrayI8ap_fixedILi16ELi6EL9ap_q_mode5EL9ap_1275 {Type IO LastRead -1 FirstWrite -1}
		p_ZZN4nnet22compute_pool_buffer_2dINS_5arrayI8ap_fixedILi16ELi6EL9ap_q_mode5EL9ap_1276 {Type IO LastRead -1 FirstWrite -1}
		p_ZZN4nnet22compute_pool_buffer_2dINS_5arrayI8ap_fixedILi16ELi6EL9ap_q_mode5EL9ap_1277 {Type IO LastRead -1 FirstWrite -1}
		p_ZZN4nnet22compute_pool_buffer_2dINS_5arrayI8ap_fixedILi16ELi6EL9ap_q_mode5EL9ap_1278 {Type IO LastRead -1 FirstWrite -1}
		p_ZZN4nnet22compute_pool_buffer_2dINS_5arrayI8ap_fixedILi16ELi6EL9ap_q_mode5EL9ap_1151 {Type IO LastRead -1 FirstWrite -1}
		p_ZZN4nnet22compute_pool_buffer_2dINS_5arrayI8ap_fixedILi16ELi6EL9ap_q_mode5EL9ap_1152 {Type IO LastRead -1 FirstWrite -1}
		p_ZZN4nnet22compute_pool_buffer_2dINS_5arrayI8ap_fixedILi16ELi6EL9ap_q_mode5EL9ap_1153 {Type IO LastRead -1 FirstWrite -1}
		p_ZZN4nnet22compute_pool_buffer_2dINS_5arrayI8ap_fixedILi16ELi6EL9ap_q_mode5EL9ap_1154 {Type IO LastRead -1 FirstWrite -1}
		p_ZZN4nnet22compute_pool_buffer_2dINS_5arrayI8ap_fixedILi16ELi6EL9ap_q_mode5EL9ap_1155 {Type IO LastRead -1 FirstWrite -1}
		p_ZZN4nnet22compute_pool_buffer_2dINS_5arrayI8ap_fixedILi16ELi6EL9ap_q_mode5EL9ap_1156 {Type IO LastRead -1 FirstWrite -1}
		p_ZZN4nnet22compute_pool_buffer_2dINS_5arrayI8ap_fixedILi16ELi6EL9ap_q_mode5EL9ap_1157 {Type IO LastRead -1 FirstWrite -1}
		p_ZZN4nnet22compute_pool_buffer_2dINS_5arrayI8ap_fixedILi16ELi6EL9ap_q_mode5EL9ap_1158 {Type IO LastRead -1 FirstWrite -1}
		p_ZZN4nnet22compute_pool_buffer_2dINS_5arrayI8ap_fixedILi16ELi6EL9ap_q_mode5EL9ap_1159 {Type IO LastRead -1 FirstWrite -1}
		p_ZZN4nnet22compute_pool_buffer_2dINS_5arrayI8ap_fixedILi16ELi6EL9ap_q_mode5EL9ap_1160 {Type IO LastRead -1 FirstWrite -1}
		p_ZZN4nnet22compute_pool_buffer_2dINS_5arrayI8ap_fixedILi16ELi6EL9ap_q_mode5EL9ap_1161 {Type IO LastRead -1 FirstWrite -1}
		p_ZZN4nnet22compute_pool_buffer_2dINS_5arrayI8ap_fixedILi16ELi6EL9ap_q_mode5EL9ap_1162 {Type IO LastRead -1 FirstWrite -1}
		p_ZZN4nnet22compute_pool_buffer_2dINS_5arrayI8ap_fixedILi16ELi6EL9ap_q_mode5EL9ap_1163 {Type IO LastRead -1 FirstWrite -1}
		p_ZZN4nnet22compute_pool_buffer_2dINS_5arrayI8ap_fixedILi16ELi6EL9ap_q_mode5EL9ap_1164 {Type IO LastRead -1 FirstWrite -1}
		p_ZZN4nnet22compute_pool_buffer_2dINS_5arrayI8ap_fixedILi16ELi6EL9ap_q_mode5EL9ap_1165 {Type IO LastRead -1 FirstWrite -1}
		p_ZZN4nnet22compute_pool_buffer_2dINS_5arrayI8ap_fixedILi16ELi6EL9ap_q_mode5EL9ap_1166 {Type IO LastRead -1 FirstWrite -1}
		p_ZZN4nnet22compute_pool_buffer_2dINS_5arrayI8ap_fixedILi16ELi6EL9ap_q_mode5EL9ap_1167 {Type IO LastRead -1 FirstWrite -1}
		p_ZZN4nnet22compute_pool_buffer_2dINS_5arrayI8ap_fixedILi16ELi6EL9ap_q_mode5EL9ap_1168 {Type IO LastRead -1 FirstWrite -1}
		p_ZZN4nnet22compute_pool_buffer_2dINS_5arrayI8ap_fixedILi16ELi6EL9ap_q_mode5EL9ap_1169 {Type IO LastRead -1 FirstWrite -1}
		p_ZZN4nnet22compute_pool_buffer_2dINS_5arrayI8ap_fixedILi16ELi6EL9ap_q_mode5EL9ap_1170 {Type IO LastRead -1 FirstWrite -1}
		p_ZZN4nnet22compute_pool_buffer_2dINS_5arrayI8ap_fixedILi16ELi6EL9ap_q_mode5EL9ap_1171 {Type IO LastRead -1 FirstWrite -1}
		p_ZZN4nnet22compute_pool_buffer_2dINS_5arrayI8ap_fixedILi16ELi6EL9ap_q_mode5EL9ap_1172 {Type IO LastRead -1 FirstWrite -1}
		p_ZZN4nnet22compute_pool_buffer_2dINS_5arrayI8ap_fixedILi16ELi6EL9ap_q_mode5EL9ap_1173 {Type IO LastRead -1 FirstWrite -1}
		p_ZZN4nnet22compute_pool_buffer_2dINS_5arrayI8ap_fixedILi16ELi6EL9ap_q_mode5EL9ap_1174 {Type IO LastRead -1 FirstWrite -1}
		p_ZZN4nnet22compute_pool_buffer_2dINS_5arrayI8ap_fixedILi16ELi6EL9ap_q_mode5EL9ap_1175 {Type IO LastRead -1 FirstWrite -1}
		p_ZZN4nnet22compute_pool_buffer_2dINS_5arrayI8ap_fixedILi16ELi6EL9ap_q_mode5EL9ap_1176 {Type IO LastRead -1 FirstWrite -1}
		p_ZZN4nnet22compute_pool_buffer_2dINS_5arrayI8ap_fixedILi16ELi6EL9ap_q_mode5EL9ap_1177 {Type IO LastRead -1 FirstWrite -1}
		p_ZZN4nnet22compute_pool_buffer_2dINS_5arrayI8ap_fixedILi16ELi6EL9ap_q_mode5EL9ap_1178 {Type IO LastRead -1 FirstWrite -1}
		p_ZZN4nnet22compute_pool_buffer_2dINS_5arrayI8ap_fixedILi16ELi6EL9ap_q_mode5EL9ap_1179 {Type IO LastRead -1 FirstWrite -1}
		p_ZZN4nnet22compute_pool_buffer_2dINS_5arrayI8ap_fixedILi16ELi6EL9ap_q_mode5EL9ap_1180 {Type IO LastRead -1 FirstWrite -1}
		p_ZZN4nnet22compute_pool_buffer_2dINS_5arrayI8ap_fixedILi16ELi6EL9ap_q_mode5EL9ap_1181 {Type IO LastRead -1 FirstWrite -1}
		p_ZZN4nnet22compute_pool_buffer_2dINS_5arrayI8ap_fixedILi16ELi6EL9ap_q_mode5EL9ap_1182 {Type IO LastRead -1 FirstWrite -1}
		p_ZZN4nnet22compute_pool_buffer_2dINS_5arrayI8ap_fixedILi16ELi6EL9ap_q_mode5EL9ap_1183 {Type IO LastRead -1 FirstWrite -1}
		p_ZZN4nnet22compute_pool_buffer_2dINS_5arrayI8ap_fixedILi16ELi6EL9ap_q_mode5EL9ap_1184 {Type IO LastRead -1 FirstWrite -1}
		p_ZZN4nnet22compute_pool_buffer_2dINS_5arrayI8ap_fixedILi16ELi6EL9ap_q_mode5EL9ap_1185 {Type IO LastRead -1 FirstWrite -1}
		p_ZZN4nnet22compute_pool_buffer_2dINS_5arrayI8ap_fixedILi16ELi6EL9ap_q_mode5EL9ap_1186 {Type IO LastRead -1 FirstWrite -1}
		p_ZZN4nnet22compute_pool_buffer_2dINS_5arrayI8ap_fixedILi16ELi6EL9ap_q_mode5EL9ap_1187 {Type IO LastRead -1 FirstWrite -1}
		p_ZZN4nnet22compute_pool_buffer_2dINS_5arrayI8ap_fixedILi16ELi6EL9ap_q_mode5EL9ap_1188 {Type IO LastRead -1 FirstWrite -1}
		p_ZZN4nnet22compute_pool_buffer_2dINS_5arrayI8ap_fixedILi16ELi6EL9ap_q_mode5EL9ap_1189 {Type IO LastRead -1 FirstWrite -1}
		p_ZZN4nnet22compute_pool_buffer_2dINS_5arrayI8ap_fixedILi16ELi6EL9ap_q_mode5EL9ap_1190 {Type IO LastRead -1 FirstWrite -1}
		p_ZZN4nnet22compute_pool_buffer_2dINS_5arrayI8ap_fixedILi16ELi6EL9ap_q_mode5EL9ap_1191 {Type IO LastRead -1 FirstWrite -1}
		p_ZZN4nnet22compute_pool_buffer_2dINS_5arrayI8ap_fixedILi16ELi6EL9ap_q_mode5EL9ap_1192 {Type IO LastRead -1 FirstWrite -1}
		p_ZZN4nnet22compute_pool_buffer_2dINS_5arrayI8ap_fixedILi16ELi6EL9ap_q_mode5EL9ap_1193 {Type IO LastRead -1 FirstWrite -1}
		p_ZZN4nnet22compute_pool_buffer_2dINS_5arrayI8ap_fixedILi16ELi6EL9ap_q_mode5EL9ap_1194 {Type IO LastRead -1 FirstWrite -1}
		p_ZZN4nnet22compute_pool_buffer_2dINS_5arrayI8ap_fixedILi16ELi6EL9ap_q_mode5EL9ap_1195 {Type IO LastRead -1 FirstWrite -1}
		p_ZZN4nnet22compute_pool_buffer_2dINS_5arrayI8ap_fixedILi16ELi6EL9ap_q_mode5EL9ap_1196 {Type IO LastRead -1 FirstWrite -1}
		p_ZZN4nnet22compute_pool_buffer_2dINS_5arrayI8ap_fixedILi16ELi6EL9ap_q_mode5EL9ap_1197 {Type IO LastRead -1 FirstWrite -1}
		p_ZZN4nnet22compute_pool_buffer_2dINS_5arrayI8ap_fixedILi16ELi6EL9ap_q_mode5EL9ap_1198 {Type IO LastRead -1 FirstWrite -1}
		p_ZZN4nnet22compute_pool_buffer_2dINS_5arrayI8ap_fixedILi16ELi6EL9ap_q_mode5EL9ap_1199 {Type IO LastRead -1 FirstWrite -1}
		p_ZZN4nnet22compute_pool_buffer_2dINS_5arrayI8ap_fixedILi16ELi6EL9ap_q_mode5EL9ap_1200 {Type IO LastRead -1 FirstWrite -1}
		p_ZZN4nnet22compute_pool_buffer_2dINS_5arrayI8ap_fixedILi16ELi6EL9ap_q_mode5EL9ap_1201 {Type IO LastRead -1 FirstWrite -1}
		p_ZZN4nnet22compute_pool_buffer_2dINS_5arrayI8ap_fixedILi16ELi6EL9ap_q_mode5EL9ap_1202 {Type IO LastRead -1 FirstWrite -1}
		p_ZZN4nnet22compute_pool_buffer_2dINS_5arrayI8ap_fixedILi16ELi6EL9ap_q_mode5EL9ap_1203 {Type IO LastRead -1 FirstWrite -1}
		p_ZZN4nnet22compute_pool_buffer_2dINS_5arrayI8ap_fixedILi16ELi6EL9ap_q_mode5EL9ap_1204 {Type IO LastRead -1 FirstWrite -1}
		p_ZZN4nnet22compute_pool_buffer_2dINS_5arrayI8ap_fixedILi16ELi6EL9ap_q_mode5EL9ap_1205 {Type IO LastRead -1 FirstWrite -1}
		p_ZZN4nnet22compute_pool_buffer_2dINS_5arrayI8ap_fixedILi16ELi6EL9ap_q_mode5EL9ap_1206 {Type IO LastRead -1 FirstWrite -1}
		p_ZZN4nnet22compute_pool_buffer_2dINS_5arrayI8ap_fixedILi16ELi6EL9ap_q_mode5EL9ap_1207 {Type IO LastRead -1 FirstWrite -1}
		p_ZZN4nnet22compute_pool_buffer_2dINS_5arrayI8ap_fixedILi16ELi6EL9ap_q_mode5EL9ap_1208 {Type IO LastRead -1 FirstWrite -1}
		p_ZZN4nnet22compute_pool_buffer_2dINS_5arrayI8ap_fixedILi16ELi6EL9ap_q_mode5EL9ap_1209 {Type IO LastRead -1 FirstWrite -1}
		p_ZZN4nnet22compute_pool_buffer_2dINS_5arrayI8ap_fixedILi16ELi6EL9ap_q_mode5EL9ap_1210 {Type IO LastRead -1 FirstWrite -1}
		p_ZZN4nnet22compute_pool_buffer_2dINS_5arrayI8ap_fixedILi16ELi6EL9ap_q_mode5EL9ap_1211 {Type IO LastRead -1 FirstWrite -1}
		p_ZZN4nnet22compute_pool_buffer_2dINS_5arrayI8ap_fixedILi16ELi6EL9ap_q_mode5EL9ap_1212 {Type IO LastRead -1 FirstWrite -1}
		p_ZZN4nnet22compute_pool_buffer_2dINS_5arrayI8ap_fixedILi16ELi6EL9ap_q_mode5EL9ap_1213 {Type IO LastRead -1 FirstWrite -1}
		p_ZZN4nnet22compute_pool_buffer_2dINS_5arrayI8ap_fixedILi16ELi6EL9ap_q_mode5EL9ap_1214 {Type IO LastRead -1 FirstWrite -1}
		p_ZZN4nnet22compute_pool_buffer_2dINS_5arrayI8ap_fixedILi16ELi6EL9ap_q_mode5EL9ap_1215 {Type IO LastRead -1 FirstWrite -1}
		p_ZZN4nnet22compute_pool_buffer_2dINS_5arrayI8ap_fixedILi16ELi6EL9ap_q_mode5EL9ap_1216 {Type IO LastRead -1 FirstWrite -1}
		p_ZZN4nnet22compute_pool_buffer_2dINS_5arrayI8ap_fixedILi16ELi6EL9ap_q_mode5EL9ap_1217 {Type IO LastRead -1 FirstWrite -1}
		p_ZZN4nnet22compute_pool_buffer_2dINS_5arrayI8ap_fixedILi16ELi6EL9ap_q_mode5EL9ap_1218 {Type IO LastRead -1 FirstWrite -1}
		p_ZZN4nnet22compute_pool_buffer_2dINS_5arrayI8ap_fixedILi16ELi6EL9ap_q_mode5EL9ap_1219 {Type IO LastRead -1 FirstWrite -1}
		p_ZZN4nnet22compute_pool_buffer_2dINS_5arrayI8ap_fixedILi16ELi6EL9ap_q_mode5EL9ap_1220 {Type IO LastRead -1 FirstWrite -1}
		p_ZZN4nnet22compute_pool_buffer_2dINS_5arrayI8ap_fixedILi16ELi6EL9ap_q_mode5EL9ap_1221 {Type IO LastRead -1 FirstWrite -1}
		p_ZZN4nnet22compute_pool_buffer_2dINS_5arrayI8ap_fixedILi16ELi6EL9ap_q_mode5EL9ap_1222 {Type IO LastRead -1 FirstWrite -1}
		p_ZZN4nnet22compute_pool_buffer_2dINS_5arrayI8ap_fixedILi16ELi6EL9ap_q_mode5EL9ap_1223 {Type IO LastRead -1 FirstWrite -1}
		p_ZZN4nnet22compute_pool_buffer_2dINS_5arrayI8ap_fixedILi16ELi6EL9ap_q_mode5EL9ap_1224 {Type IO LastRead -1 FirstWrite -1}
		p_ZZN4nnet22compute_pool_buffer_2dINS_5arrayI8ap_fixedILi16ELi6EL9ap_q_mode5EL9ap_1225 {Type IO LastRead -1 FirstWrite -1}
		p_ZZN4nnet22compute_pool_buffer_2dINS_5arrayI8ap_fixedILi16ELi6EL9ap_q_mode5EL9ap_1226 {Type IO LastRead -1 FirstWrite -1}
		p_ZZN4nnet22compute_pool_buffer_2dINS_5arrayI8ap_fixedILi16ELi6EL9ap_q_mode5EL9ap_1227 {Type IO LastRead -1 FirstWrite -1}
		p_ZZN4nnet22compute_pool_buffer_2dINS_5arrayI8ap_fixedILi16ELi6EL9ap_q_mode5EL9ap_1228 {Type IO LastRead -1 FirstWrite -1}
		p_ZZN4nnet22compute_pool_buffer_2dINS_5arrayI8ap_fixedILi16ELi6EL9ap_q_mode5EL9ap_1229 {Type IO LastRead -1 FirstWrite -1}
		p_ZZN4nnet22compute_pool_buffer_2dINS_5arrayI8ap_fixedILi16ELi6EL9ap_q_mode5EL9ap_1230 {Type IO LastRead -1 FirstWrite -1}
		p_ZZN4nnet22compute_pool_buffer_2dINS_5arrayI8ap_fixedILi16ELi6EL9ap_q_mode5EL9ap_1231 {Type IO LastRead -1 FirstWrite -1}
		p_ZZN4nnet22compute_pool_buffer_2dINS_5arrayI8ap_fixedILi16ELi6EL9ap_q_mode5EL9ap_1232 {Type IO LastRead -1 FirstWrite -1}
		p_ZZN4nnet22compute_pool_buffer_2dINS_5arrayI8ap_fixedILi16ELi6EL9ap_q_mode5EL9ap_1233 {Type IO LastRead -1 FirstWrite -1}
		p_ZZN4nnet22compute_pool_buffer_2dINS_5arrayI8ap_fixedILi16ELi6EL9ap_q_mode5EL9ap_1234 {Type IO LastRead -1 FirstWrite -1}
		p_ZZN4nnet22compute_pool_buffer_2dINS_5arrayI8ap_fixedILi16ELi6EL9ap_q_mode5EL9ap_1235 {Type IO LastRead -1 FirstWrite -1}
		p_ZZN4nnet22compute_pool_buffer_2dINS_5arrayI8ap_fixedILi16ELi6EL9ap_q_mode5EL9ap_1236 {Type IO LastRead -1 FirstWrite -1}
		p_ZZN4nnet22compute_pool_buffer_2dINS_5arrayI8ap_fixedILi16ELi6EL9ap_q_mode5EL9ap_1237 {Type IO LastRead -1 FirstWrite -1}
		p_ZZN4nnet22compute_pool_buffer_2dINS_5arrayI8ap_fixedILi16ELi6EL9ap_q_mode5EL9ap_1238 {Type IO LastRead -1 FirstWrite -1}
		p_ZZN4nnet22compute_pool_buffer_2dINS_5arrayI8ap_fixedILi16ELi6EL9ap_q_mode5EL9ap_1239 {Type IO LastRead -1 FirstWrite -1}
		p_ZZN4nnet22compute_pool_buffer_2dINS_5arrayI8ap_fixedILi16ELi6EL9ap_q_mode5EL9ap_1240 {Type IO LastRead -1 FirstWrite -1}
		p_ZZN4nnet22compute_pool_buffer_2dINS_5arrayI8ap_fixedILi16ELi6EL9ap_q_mode5EL9ap_1241 {Type IO LastRead -1 FirstWrite -1}
		p_ZZN4nnet22compute_pool_buffer_2dINS_5arrayI8ap_fixedILi16ELi6EL9ap_q_mode5EL9ap_1242 {Type IO LastRead -1 FirstWrite -1}
		void_pooling2d_buffer_cl_stream_stream_array_ap_fixed_64u_0_line_buffer_9 {Type X LastRead -1 FirstWrite -1}
		void_pooling2d_buffer_cl_stream_stream_array_ap_fixed_64u_0_line_buffer_8 {Type X LastRead -1 FirstWrite -1}
		void_pooling2d_buffer_cl_stream_stream_array_ap_fixed_64u_0_line_buffer_7 {Type X LastRead -1 FirstWrite -1}
		void_pooling2d_buffer_cl_stream_stream_array_ap_fixed_64u_0_line_buffer_6 {Type X LastRead -1 FirstWrite -1}
		void_pooling2d_buffer_cl_stream_stream_array_ap_fixed_64u_0_line_buffer_5 {Type X LastRead -1 FirstWrite -1}
		void_pooling2d_buffer_cl_stream_stream_array_ap_fixed_64u_0_line_buffer_4 {Type X LastRead -1 FirstWrite -1}
		void_pooling2d_buffer_cl_stream_stream_array_ap_fixed_64u_0_line_buffer_3 {Type X LastRead -1 FirstWrite -1}
		void_pooling2d_buffer_cl_stream_stream_array_ap_fixed_64u_0_line_buffer_2 {Type X LastRead -1 FirstWrite -1}
		void_pooling2d_buffer_cl_stream_stream_array_ap_fixed_64u_0_line_buffer_1 {Type X LastRead -1 FirstWrite -1}
		void_pooling2d_buffer_cl_stream_stream_array_ap_fixed_64u_0_line_buffer {Type X LastRead -1 FirstWrite -1}
		p_ZZN4nnet19pooling2d_buffer_clINS_5arrayI8ap_fixedILi16ELi6EL9ap_q_mode5EL9ap_o_343 {Type X LastRead -1 FirstWrite -1}
		p_ZZN4nnet19pooling2d_buffer_clINS_5arrayI8ap_fixedILi16ELi6EL9ap_q_mode5EL9ap_o_344 {Type X LastRead -1 FirstWrite -1}
		p_ZZN4nnet19pooling2d_buffer_clINS_5arrayI8ap_fixedILi16ELi6EL9ap_q_mode5EL9ap_o_345 {Type X LastRead -1 FirstWrite -1}
		p_ZZN4nnet19pooling2d_buffer_clINS_5arrayI8ap_fixedILi16ELi6EL9ap_q_mode5EL9ap_o_346 {Type X LastRead -1 FirstWrite -1}
		p_ZZN4nnet19pooling2d_buffer_clINS_5arrayI8ap_fixedILi16ELi6EL9ap_q_mode5EL9ap_o_347 {Type X LastRead -1 FirstWrite -1}
		p_ZZN4nnet19pooling2d_buffer_clINS_5arrayI8ap_fixedILi16ELi6EL9ap_q_mode5EL9ap_o_348 {Type X LastRead -1 FirstWrite -1}
		p_ZZN4nnet19pooling2d_buffer_clINS_5arrayI8ap_fixedILi16ELi6EL9ap_q_mode5EL9ap_o_349 {Type X LastRead -1 FirstWrite -1}
		p_ZZN4nnet19pooling2d_buffer_clINS_5arrayI8ap_fixedILi16ELi6EL9ap_q_mode5EL9ap_o_350 {Type X LastRead -1 FirstWrite -1}
		p_ZZN4nnet19pooling2d_buffer_clINS_5arrayI8ap_fixedILi16ELi6EL9ap_q_mode5EL9ap_o_99 {Type X LastRead -1 FirstWrite -1}
		p_ZZN4nnet19pooling2d_buffer_clINS_5arrayI8ap_fixedILi16ELi6EL9ap_q_mode5EL9ap_o_98 {Type X LastRead -1 FirstWrite -1}
		p_ZZN4nnet19pooling2d_buffer_clINS_5arrayI8ap_fixedILi16ELi6EL9ap_q_mode5EL9ap_o_97 {Type X LastRead -1 FirstWrite -1}
		p_ZZN4nnet19pooling2d_buffer_clINS_5arrayI8ap_fixedILi16ELi6EL9ap_q_mode5EL9ap_o_96 {Type X LastRead -1 FirstWrite -1}
		p_ZZN4nnet19pooling2d_buffer_clINS_5arrayI8ap_fixedILi16ELi6EL9ap_q_mode5EL9ap_o_95 {Type X LastRead -1 FirstWrite -1}
		p_ZZN4nnet19pooling2d_buffer_clINS_5arrayI8ap_fixedILi16ELi6EL9ap_q_mode5EL9ap_o_94 {Type X LastRead -1 FirstWrite -1}
		p_ZZN4nnet19pooling2d_buffer_clINS_5arrayI8ap_fixedILi16ELi6EL9ap_q_mode5EL9ap_o_93 {Type X LastRead -1 FirstWrite -1}
		p_ZZN4nnet19pooling2d_buffer_clINS_5arrayI8ap_fixedILi16ELi6EL9ap_q_mode5EL9ap_o_92 {Type X LastRead -1 FirstWrite -1}
		p_ZZN4nnet19pooling2d_buffer_clINS_5arrayI8ap_fixedILi16ELi6EL9ap_q_mode5EL9ap_o_91 {Type X LastRead -1 FirstWrite -1}
		p_ZZN4nnet19pooling2d_buffer_clINS_5arrayI8ap_fixedILi16ELi6EL9ap_q_mode5EL9ap_o_90 {Type X LastRead -1 FirstWrite -1}
		p_ZZN4nnet19pooling2d_buffer_clINS_5arrayI8ap_fixedILi16ELi6EL9ap_q_mode5EL9ap_o_89 {Type X LastRead -1 FirstWrite -1}
		p_ZZN4nnet19pooling2d_buffer_clINS_5arrayI8ap_fixedILi16ELi6EL9ap_q_mode5EL9ap_o_88 {Type X LastRead -1 FirstWrite -1}
		p_ZZN4nnet19pooling2d_buffer_clINS_5arrayI8ap_fixedILi16ELi6EL9ap_q_mode5EL9ap_o_87 {Type X LastRead -1 FirstWrite -1}
		p_ZZN4nnet19pooling2d_buffer_clINS_5arrayI8ap_fixedILi16ELi6EL9ap_q_mode5EL9ap_o_86 {Type X LastRead -1 FirstWrite -1}
		p_ZZN4nnet19pooling2d_buffer_clINS_5arrayI8ap_fixedILi16ELi6EL9ap_q_mode5EL9ap_o_85 {Type X LastRead -1 FirstWrite -1}
		p_ZZN4nnet19pooling2d_buffer_clINS_5arrayI8ap_fixedILi16ELi6EL9ap_q_mode5EL9ap_o_84 {Type X LastRead -1 FirstWrite -1}
		p_ZZN4nnet19pooling2d_buffer_clINS_5arrayI8ap_fixedILi16ELi6EL9ap_q_mode5EL9ap_o_83 {Type X LastRead -1 FirstWrite -1}
		p_ZZN4nnet19pooling2d_buffer_clINS_5arrayI8ap_fixedILi16ELi6EL9ap_q_mode5EL9ap_o_82 {Type X LastRead -1 FirstWrite -1}
		p_ZZN4nnet19pooling2d_buffer_clINS_5arrayI8ap_fixedILi16ELi6EL9ap_q_mode5EL9ap_o_81 {Type X LastRead -1 FirstWrite -1}
		p_ZZN4nnet19pooling2d_buffer_clINS_5arrayI8ap_fixedILi16ELi6EL9ap_q_mode5EL9ap_o_80 {Type X LastRead -1 FirstWrite -1}
		p_ZZN4nnet19pooling2d_buffer_clINS_5arrayI8ap_fixedILi16ELi6EL9ap_q_mode5EL9ap_o_79 {Type X LastRead -1 FirstWrite -1}
		p_ZZN4nnet19pooling2d_buffer_clINS_5arrayI8ap_fixedILi16ELi6EL9ap_q_mode5EL9ap_o_78 {Type X LastRead -1 FirstWrite -1}
		p_ZZN4nnet19pooling2d_buffer_clINS_5arrayI8ap_fixedILi16ELi6EL9ap_q_mode5EL9ap_o_77 {Type X LastRead -1 FirstWrite -1}
		p_ZZN4nnet19pooling2d_buffer_clINS_5arrayI8ap_fixedILi16ELi6EL9ap_q_mode5EL9ap_o_76 {Type X LastRead -1 FirstWrite -1}
		p_ZZN4nnet19pooling2d_buffer_clINS_5arrayI8ap_fixedILi16ELi6EL9ap_q_mode5EL9ap_o_75 {Type X LastRead -1 FirstWrite -1}
		p_ZZN4nnet19pooling2d_buffer_clINS_5arrayI8ap_fixedILi16ELi6EL9ap_q_mode5EL9ap_o_74 {Type X LastRead -1 FirstWrite -1}
		p_ZZN4nnet19pooling2d_buffer_clINS_5arrayI8ap_fixedILi16ELi6EL9ap_q_mode5EL9ap_o_73 {Type X LastRead -1 FirstWrite -1}
		p_ZZN4nnet19pooling2d_buffer_clINS_5arrayI8ap_fixedILi16ELi6EL9ap_q_mode5EL9ap_o_72 {Type X LastRead -1 FirstWrite -1}
		p_ZZN4nnet19pooling2d_buffer_clINS_5arrayI8ap_fixedILi16ELi6EL9ap_q_mode5EL9ap_o_71 {Type X LastRead -1 FirstWrite -1}
		p_ZZN4nnet19pooling2d_buffer_clINS_5arrayI8ap_fixedILi16ELi6EL9ap_q_mode5EL9ap_o_70 {Type X LastRead -1 FirstWrite -1}
		p_ZZN4nnet19pooling2d_buffer_clINS_5arrayI8ap_fixedILi16ELi6EL9ap_q_mode5EL9ap_o_69 {Type X LastRead -1 FirstWrite -1}
		p_ZZN4nnet19pooling2d_buffer_clINS_5arrayI8ap_fixedILi16ELi6EL9ap_q_mode5EL9ap_o_68 {Type X LastRead -1 FirstWrite -1}
		p_ZZN4nnet19pooling2d_buffer_clINS_5arrayI8ap_fixedILi16ELi6EL9ap_q_mode5EL9ap_o_67 {Type X LastRead -1 FirstWrite -1}
		p_ZZN4nnet19pooling2d_buffer_clINS_5arrayI8ap_fixedILi16ELi6EL9ap_q_mode5EL9ap_o_66 {Type X LastRead -1 FirstWrite -1}
		p_ZZN4nnet19pooling2d_buffer_clINS_5arrayI8ap_fixedILi16ELi6EL9ap_q_mode5EL9ap_o_65 {Type X LastRead -1 FirstWrite -1}
		p_ZZN4nnet19pooling2d_buffer_clINS_5arrayI8ap_fixedILi16ELi6EL9ap_q_mode5EL9ap_o_64 {Type X LastRead -1 FirstWrite -1}
		p_ZZN4nnet19pooling2d_buffer_clINS_5arrayI8ap_fixedILi16ELi6EL9ap_q_mode5EL9ap_o_63 {Type X LastRead -1 FirstWrite -1}
		p_ZZN4nnet19pooling2d_buffer_clINS_5arrayI8ap_fixedILi16ELi6EL9ap_q_mode5EL9ap_o_62 {Type X LastRead -1 FirstWrite -1}
		p_ZZN4nnet19pooling2d_buffer_clINS_5arrayI8ap_fixedILi16ELi6EL9ap_q_mode5EL9ap_o_61 {Type X LastRead -1 FirstWrite -1}
		p_ZZN4nnet19pooling2d_buffer_clINS_5arrayI8ap_fixedILi16ELi6EL9ap_q_mode5EL9ap_o_60 {Type X LastRead -1 FirstWrite -1}
		p_ZZN4nnet19pooling2d_buffer_clINS_5arrayI8ap_fixedILi16ELi6EL9ap_q_mode5EL9ap_o_59 {Type X LastRead -1 FirstWrite -1}
		p_ZZN4nnet19pooling2d_buffer_clINS_5arrayI8ap_fixedILi16ELi6EL9ap_q_mode5EL9ap_o_58 {Type X LastRead -1 FirstWrite -1}
		p_ZZN4nnet19pooling2d_buffer_clINS_5arrayI8ap_fixedILi16ELi6EL9ap_q_mode5EL9ap_o_57 {Type X LastRead -1 FirstWrite -1}
		p_ZZN4nnet19pooling2d_buffer_clINS_5arrayI8ap_fixedILi16ELi6EL9ap_q_mode5EL9ap_o_56 {Type X LastRead -1 FirstWrite -1}
		p_ZZN4nnet19pooling2d_buffer_clINS_5arrayI8ap_fixedILi16ELi6EL9ap_q_mode5EL9ap_o_55 {Type X LastRead -1 FirstWrite -1}
		p_ZZN4nnet19pooling2d_buffer_clINS_5arrayI8ap_fixedILi16ELi6EL9ap_q_mode5EL9ap_o_54 {Type X LastRead -1 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "3628", "Max" : "3628"}
	, {"Name" : "Interval", "Min" : "3628", "Max" : "3628"}
]}

set PipelineEnableSignalInfo {[
	{"Pipeline" : "0", "EnableSignal" : "ap_enable_pp0"}
]}

set Spec2ImplPortList { 
	layer6_out { ap_fifo {  { layer6_out_dout fifo_port_we 0 1024 }  { layer6_out_num_data_valid fifo_status_num_data_valid 0 13 }  { layer6_out_fifo_cap fifo_update 0 13 }  { layer6_out_empty_n fifo_status 0 1 }  { layer6_out_read fifo_data 1 1 } } }
	layer8_out { ap_fifo {  { layer8_out_din fifo_port_we 1 1024 }  { layer8_out_num_data_valid fifo_status_num_data_valid 0 11 }  { layer8_out_fifo_cap fifo_update 0 11 }  { layer8_out_full_n fifo_status 0 1 }  { layer8_out_write fifo_data 1 1 } } }
}
