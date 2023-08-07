set moduleName process_data_Pipeline_frame_chan_loop
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
set C_modelName {process_data_Pipeline_frame_chan_loop}
set C_modelType { void 0 }
set C_modelArgList {
	{ phi_mul int 18 regular  }
	{ process_data_int_char_FDHDChannelMapSP_int_adc_vectors int 14 regular {array 192000 { 0 3 } 0 1 } {global 1}  }
	{ process_data_int_char_FDHDChannelMapSP_int_adc_vectors_2 int 14 regular {array 192000 { 0 3 } 0 1 } {global 1}  }
	{ process_data_int_char_FDHDChannelMapSP_int_adc_vectors_3 int 14 regular {array 192000 { 0 3 } 0 1 } {global 1}  }
	{ process_data_int_char_FDHDChannelMapSP_int_adc_vectors_4 int 14 regular {array 192000 { 0 3 } 0 1 } {global 1}  }
	{ process_data_int_char_FDHDChannelMapSP_int_adc_vectors_5 int 14 regular {array 192000 { 0 3 } 0 1 } {global 1}  }
	{ process_data_int_char_FDHDChannelMapSP_int_adc_vectors_6 int 14 regular {array 192000 { 0 3 } 0 1 } {global 1}  }
	{ process_data_int_char_FDHDChannelMapSP_int_adc_vectors_7 int 14 regular {array 192000 { 0 3 } 0 1 } {global 1}  }
	{ process_data_int_char_FDHDChannelMapSP_int_adc_vectors_8 int 14 regular {array 192000 { 0 3 } 0 1 } {global 1}  }
}
set hasAXIMCache 0
set C_modelArgMapList {[ 
	{ "Name" : "phi_mul", "interface" : "wire", "bitwidth" : 18, "direction" : "READONLY"} , 
 	{ "Name" : "process_data_int_char_FDHDChannelMapSP_int_adc_vectors", "interface" : "memory", "bitwidth" : 14, "direction" : "WRITEONLY", "extern" : 0} , 
 	{ "Name" : "process_data_int_char_FDHDChannelMapSP_int_adc_vectors_2", "interface" : "memory", "bitwidth" : 14, "direction" : "WRITEONLY", "extern" : 0} , 
 	{ "Name" : "process_data_int_char_FDHDChannelMapSP_int_adc_vectors_3", "interface" : "memory", "bitwidth" : 14, "direction" : "WRITEONLY", "extern" : 0} , 
 	{ "Name" : "process_data_int_char_FDHDChannelMapSP_int_adc_vectors_4", "interface" : "memory", "bitwidth" : 14, "direction" : "WRITEONLY", "extern" : 0} , 
 	{ "Name" : "process_data_int_char_FDHDChannelMapSP_int_adc_vectors_5", "interface" : "memory", "bitwidth" : 14, "direction" : "WRITEONLY", "extern" : 0} , 
 	{ "Name" : "process_data_int_char_FDHDChannelMapSP_int_adc_vectors_6", "interface" : "memory", "bitwidth" : 14, "direction" : "WRITEONLY", "extern" : 0} , 
 	{ "Name" : "process_data_int_char_FDHDChannelMapSP_int_adc_vectors_7", "interface" : "memory", "bitwidth" : 14, "direction" : "WRITEONLY", "extern" : 0} , 
 	{ "Name" : "process_data_int_char_FDHDChannelMapSP_int_adc_vectors_8", "interface" : "memory", "bitwidth" : 14, "direction" : "WRITEONLY", "extern" : 0} ]}
# RTL Port declarations: 
set portNum 39
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ phi_mul sc_in sc_lv 18 signal 0 } 
	{ process_data_int_char_FDHDChannelMapSP_int_adc_vectors_address0 sc_out sc_lv 18 signal 1 } 
	{ process_data_int_char_FDHDChannelMapSP_int_adc_vectors_ce0 sc_out sc_logic 1 signal 1 } 
	{ process_data_int_char_FDHDChannelMapSP_int_adc_vectors_we0 sc_out sc_logic 1 signal 1 } 
	{ process_data_int_char_FDHDChannelMapSP_int_adc_vectors_d0 sc_out sc_lv 14 signal 1 } 
	{ process_data_int_char_FDHDChannelMapSP_int_adc_vectors_2_address0 sc_out sc_lv 18 signal 2 } 
	{ process_data_int_char_FDHDChannelMapSP_int_adc_vectors_2_ce0 sc_out sc_logic 1 signal 2 } 
	{ process_data_int_char_FDHDChannelMapSP_int_adc_vectors_2_we0 sc_out sc_logic 1 signal 2 } 
	{ process_data_int_char_FDHDChannelMapSP_int_adc_vectors_2_d0 sc_out sc_lv 14 signal 2 } 
	{ process_data_int_char_FDHDChannelMapSP_int_adc_vectors_3_address0 sc_out sc_lv 18 signal 3 } 
	{ process_data_int_char_FDHDChannelMapSP_int_adc_vectors_3_ce0 sc_out sc_logic 1 signal 3 } 
	{ process_data_int_char_FDHDChannelMapSP_int_adc_vectors_3_we0 sc_out sc_logic 1 signal 3 } 
	{ process_data_int_char_FDHDChannelMapSP_int_adc_vectors_3_d0 sc_out sc_lv 14 signal 3 } 
	{ process_data_int_char_FDHDChannelMapSP_int_adc_vectors_4_address0 sc_out sc_lv 18 signal 4 } 
	{ process_data_int_char_FDHDChannelMapSP_int_adc_vectors_4_ce0 sc_out sc_logic 1 signal 4 } 
	{ process_data_int_char_FDHDChannelMapSP_int_adc_vectors_4_we0 sc_out sc_logic 1 signal 4 } 
	{ process_data_int_char_FDHDChannelMapSP_int_adc_vectors_4_d0 sc_out sc_lv 14 signal 4 } 
	{ process_data_int_char_FDHDChannelMapSP_int_adc_vectors_5_address0 sc_out sc_lv 18 signal 5 } 
	{ process_data_int_char_FDHDChannelMapSP_int_adc_vectors_5_ce0 sc_out sc_logic 1 signal 5 } 
	{ process_data_int_char_FDHDChannelMapSP_int_adc_vectors_5_we0 sc_out sc_logic 1 signal 5 } 
	{ process_data_int_char_FDHDChannelMapSP_int_adc_vectors_5_d0 sc_out sc_lv 14 signal 5 } 
	{ process_data_int_char_FDHDChannelMapSP_int_adc_vectors_6_address0 sc_out sc_lv 18 signal 6 } 
	{ process_data_int_char_FDHDChannelMapSP_int_adc_vectors_6_ce0 sc_out sc_logic 1 signal 6 } 
	{ process_data_int_char_FDHDChannelMapSP_int_adc_vectors_6_we0 sc_out sc_logic 1 signal 6 } 
	{ process_data_int_char_FDHDChannelMapSP_int_adc_vectors_6_d0 sc_out sc_lv 14 signal 6 } 
	{ process_data_int_char_FDHDChannelMapSP_int_adc_vectors_7_address0 sc_out sc_lv 18 signal 7 } 
	{ process_data_int_char_FDHDChannelMapSP_int_adc_vectors_7_ce0 sc_out sc_logic 1 signal 7 } 
	{ process_data_int_char_FDHDChannelMapSP_int_adc_vectors_7_we0 sc_out sc_logic 1 signal 7 } 
	{ process_data_int_char_FDHDChannelMapSP_int_adc_vectors_7_d0 sc_out sc_lv 14 signal 7 } 
	{ process_data_int_char_FDHDChannelMapSP_int_adc_vectors_8_address0 sc_out sc_lv 18 signal 8 } 
	{ process_data_int_char_FDHDChannelMapSP_int_adc_vectors_8_ce0 sc_out sc_logic 1 signal 8 } 
	{ process_data_int_char_FDHDChannelMapSP_int_adc_vectors_8_we0 sc_out sc_logic 1 signal 8 } 
	{ process_data_int_char_FDHDChannelMapSP_int_adc_vectors_8_d0 sc_out sc_lv 14 signal 8 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "phi_mul", "direction": "in", "datatype": "sc_lv", "bitwidth":18, "type": "signal", "bundle":{"name": "phi_mul", "role": "default" }} , 
 	{ "name": "process_data_int_char_FDHDChannelMapSP_int_adc_vectors_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":18, "type": "signal", "bundle":{"name": "process_data_int_char_FDHDChannelMapSP_int_adc_vectors", "role": "address0" }} , 
 	{ "name": "process_data_int_char_FDHDChannelMapSP_int_adc_vectors_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "process_data_int_char_FDHDChannelMapSP_int_adc_vectors", "role": "ce0" }} , 
 	{ "name": "process_data_int_char_FDHDChannelMapSP_int_adc_vectors_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "process_data_int_char_FDHDChannelMapSP_int_adc_vectors", "role": "we0" }} , 
 	{ "name": "process_data_int_char_FDHDChannelMapSP_int_adc_vectors_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":14, "type": "signal", "bundle":{"name": "process_data_int_char_FDHDChannelMapSP_int_adc_vectors", "role": "d0" }} , 
 	{ "name": "process_data_int_char_FDHDChannelMapSP_int_adc_vectors_2_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":18, "type": "signal", "bundle":{"name": "process_data_int_char_FDHDChannelMapSP_int_adc_vectors_2", "role": "address0" }} , 
 	{ "name": "process_data_int_char_FDHDChannelMapSP_int_adc_vectors_2_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "process_data_int_char_FDHDChannelMapSP_int_adc_vectors_2", "role": "ce0" }} , 
 	{ "name": "process_data_int_char_FDHDChannelMapSP_int_adc_vectors_2_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "process_data_int_char_FDHDChannelMapSP_int_adc_vectors_2", "role": "we0" }} , 
 	{ "name": "process_data_int_char_FDHDChannelMapSP_int_adc_vectors_2_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":14, "type": "signal", "bundle":{"name": "process_data_int_char_FDHDChannelMapSP_int_adc_vectors_2", "role": "d0" }} , 
 	{ "name": "process_data_int_char_FDHDChannelMapSP_int_adc_vectors_3_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":18, "type": "signal", "bundle":{"name": "process_data_int_char_FDHDChannelMapSP_int_adc_vectors_3", "role": "address0" }} , 
 	{ "name": "process_data_int_char_FDHDChannelMapSP_int_adc_vectors_3_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "process_data_int_char_FDHDChannelMapSP_int_adc_vectors_3", "role": "ce0" }} , 
 	{ "name": "process_data_int_char_FDHDChannelMapSP_int_adc_vectors_3_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "process_data_int_char_FDHDChannelMapSP_int_adc_vectors_3", "role": "we0" }} , 
 	{ "name": "process_data_int_char_FDHDChannelMapSP_int_adc_vectors_3_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":14, "type": "signal", "bundle":{"name": "process_data_int_char_FDHDChannelMapSP_int_adc_vectors_3", "role": "d0" }} , 
 	{ "name": "process_data_int_char_FDHDChannelMapSP_int_adc_vectors_4_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":18, "type": "signal", "bundle":{"name": "process_data_int_char_FDHDChannelMapSP_int_adc_vectors_4", "role": "address0" }} , 
 	{ "name": "process_data_int_char_FDHDChannelMapSP_int_adc_vectors_4_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "process_data_int_char_FDHDChannelMapSP_int_adc_vectors_4", "role": "ce0" }} , 
 	{ "name": "process_data_int_char_FDHDChannelMapSP_int_adc_vectors_4_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "process_data_int_char_FDHDChannelMapSP_int_adc_vectors_4", "role": "we0" }} , 
 	{ "name": "process_data_int_char_FDHDChannelMapSP_int_adc_vectors_4_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":14, "type": "signal", "bundle":{"name": "process_data_int_char_FDHDChannelMapSP_int_adc_vectors_4", "role": "d0" }} , 
 	{ "name": "process_data_int_char_FDHDChannelMapSP_int_adc_vectors_5_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":18, "type": "signal", "bundle":{"name": "process_data_int_char_FDHDChannelMapSP_int_adc_vectors_5", "role": "address0" }} , 
 	{ "name": "process_data_int_char_FDHDChannelMapSP_int_adc_vectors_5_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "process_data_int_char_FDHDChannelMapSP_int_adc_vectors_5", "role": "ce0" }} , 
 	{ "name": "process_data_int_char_FDHDChannelMapSP_int_adc_vectors_5_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "process_data_int_char_FDHDChannelMapSP_int_adc_vectors_5", "role": "we0" }} , 
 	{ "name": "process_data_int_char_FDHDChannelMapSP_int_adc_vectors_5_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":14, "type": "signal", "bundle":{"name": "process_data_int_char_FDHDChannelMapSP_int_adc_vectors_5", "role": "d0" }} , 
 	{ "name": "process_data_int_char_FDHDChannelMapSP_int_adc_vectors_6_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":18, "type": "signal", "bundle":{"name": "process_data_int_char_FDHDChannelMapSP_int_adc_vectors_6", "role": "address0" }} , 
 	{ "name": "process_data_int_char_FDHDChannelMapSP_int_adc_vectors_6_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "process_data_int_char_FDHDChannelMapSP_int_adc_vectors_6", "role": "ce0" }} , 
 	{ "name": "process_data_int_char_FDHDChannelMapSP_int_adc_vectors_6_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "process_data_int_char_FDHDChannelMapSP_int_adc_vectors_6", "role": "we0" }} , 
 	{ "name": "process_data_int_char_FDHDChannelMapSP_int_adc_vectors_6_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":14, "type": "signal", "bundle":{"name": "process_data_int_char_FDHDChannelMapSP_int_adc_vectors_6", "role": "d0" }} , 
 	{ "name": "process_data_int_char_FDHDChannelMapSP_int_adc_vectors_7_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":18, "type": "signal", "bundle":{"name": "process_data_int_char_FDHDChannelMapSP_int_adc_vectors_7", "role": "address0" }} , 
 	{ "name": "process_data_int_char_FDHDChannelMapSP_int_adc_vectors_7_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "process_data_int_char_FDHDChannelMapSP_int_adc_vectors_7", "role": "ce0" }} , 
 	{ "name": "process_data_int_char_FDHDChannelMapSP_int_adc_vectors_7_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "process_data_int_char_FDHDChannelMapSP_int_adc_vectors_7", "role": "we0" }} , 
 	{ "name": "process_data_int_char_FDHDChannelMapSP_int_adc_vectors_7_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":14, "type": "signal", "bundle":{"name": "process_data_int_char_FDHDChannelMapSP_int_adc_vectors_7", "role": "d0" }} , 
 	{ "name": "process_data_int_char_FDHDChannelMapSP_int_adc_vectors_8_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":18, "type": "signal", "bundle":{"name": "process_data_int_char_FDHDChannelMapSP_int_adc_vectors_8", "role": "address0" }} , 
 	{ "name": "process_data_int_char_FDHDChannelMapSP_int_adc_vectors_8_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "process_data_int_char_FDHDChannelMapSP_int_adc_vectors_8", "role": "ce0" }} , 
 	{ "name": "process_data_int_char_FDHDChannelMapSP_int_adc_vectors_8_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "process_data_int_char_FDHDChannelMapSP_int_adc_vectors_8", "role": "we0" }} , 
 	{ "name": "process_data_int_char_FDHDChannelMapSP_int_adc_vectors_8_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":14, "type": "signal", "bundle":{"name": "process_data_int_char_FDHDChannelMapSP_int_adc_vectors_8", "role": "d0" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2"],
		"CDFG" : "process_data_Pipeline_frame_chan_loop",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "258", "EstimateLatencyMax" : "258",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "phi_mul", "Type" : "None", "Direction" : "I"},
			{"Name" : "process_data_int_char_FDHDChannelMapSP_int_adc_vectors", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "process_data_int_char_FDHDChannelMapSP_int_adc_vectors_2", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "process_data_int_char_FDHDChannelMapSP_int_adc_vectors_3", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "process_data_int_char_FDHDChannelMapSP_int_adc_vectors_4", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "process_data_int_char_FDHDChannelMapSP_int_adc_vectors_5", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "process_data_int_char_FDHDChannelMapSP_int_adc_vectors_6", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "process_data_int_char_FDHDChannelMapSP_int_adc_vectors_7", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "process_data_int_char_FDHDChannelMapSP_int_adc_vectors_8", "Type" : "Memory", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "frame_chan_loop", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.adc_words_U", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.flow_control_loop_pipe_sequential_init_U", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	process_data_Pipeline_frame_chan_loop {
		phi_mul {Type I LastRead 0 FirstWrite -1}
		process_data_int_char_FDHDChannelMapSP_int_adc_vectors {Type O LastRead -1 FirstWrite 1}
		process_data_int_char_FDHDChannelMapSP_int_adc_vectors_2 {Type O LastRead -1 FirstWrite 1}
		process_data_int_char_FDHDChannelMapSP_int_adc_vectors_3 {Type O LastRead -1 FirstWrite 1}
		process_data_int_char_FDHDChannelMapSP_int_adc_vectors_4 {Type O LastRead -1 FirstWrite 1}
		process_data_int_char_FDHDChannelMapSP_int_adc_vectors_5 {Type O LastRead -1 FirstWrite 1}
		process_data_int_char_FDHDChannelMapSP_int_adc_vectors_6 {Type O LastRead -1 FirstWrite 1}
		process_data_int_char_FDHDChannelMapSP_int_adc_vectors_7 {Type O LastRead -1 FirstWrite 1}
		process_data_int_char_FDHDChannelMapSP_int_adc_vectors_8 {Type O LastRead -1 FirstWrite 1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "258", "Max" : "258"}
	, {"Name" : "Interval", "Min" : "258", "Max" : "258"}
]}

set PipelineEnableSignalInfo {[
	{"Pipeline" : "0", "EnableSignal" : "ap_enable_pp0"}
]}

set Spec2ImplPortList { 
	phi_mul { ap_none {  { phi_mul in_data 0 18 } } }
	process_data_int_char_FDHDChannelMapSP_int_adc_vectors { ap_memory {  { process_data_int_char_FDHDChannelMapSP_int_adc_vectors_address0 mem_address 1 18 }  { process_data_int_char_FDHDChannelMapSP_int_adc_vectors_ce0 mem_ce 1 1 }  { process_data_int_char_FDHDChannelMapSP_int_adc_vectors_we0 mem_we 1 1 }  { process_data_int_char_FDHDChannelMapSP_int_adc_vectors_d0 mem_din 1 14 } } }
	process_data_int_char_FDHDChannelMapSP_int_adc_vectors_2 { ap_memory {  { process_data_int_char_FDHDChannelMapSP_int_adc_vectors_2_address0 mem_address 1 18 }  { process_data_int_char_FDHDChannelMapSP_int_adc_vectors_2_ce0 mem_ce 1 1 }  { process_data_int_char_FDHDChannelMapSP_int_adc_vectors_2_we0 mem_we 1 1 }  { process_data_int_char_FDHDChannelMapSP_int_adc_vectors_2_d0 mem_din 1 14 } } }
	process_data_int_char_FDHDChannelMapSP_int_adc_vectors_3 { ap_memory {  { process_data_int_char_FDHDChannelMapSP_int_adc_vectors_3_address0 mem_address 1 18 }  { process_data_int_char_FDHDChannelMapSP_int_adc_vectors_3_ce0 mem_ce 1 1 }  { process_data_int_char_FDHDChannelMapSP_int_adc_vectors_3_we0 mem_we 1 1 }  { process_data_int_char_FDHDChannelMapSP_int_adc_vectors_3_d0 mem_din 1 14 } } }
	process_data_int_char_FDHDChannelMapSP_int_adc_vectors_4 { ap_memory {  { process_data_int_char_FDHDChannelMapSP_int_adc_vectors_4_address0 mem_address 1 18 }  { process_data_int_char_FDHDChannelMapSP_int_adc_vectors_4_ce0 mem_ce 1 1 }  { process_data_int_char_FDHDChannelMapSP_int_adc_vectors_4_we0 mem_we 1 1 }  { process_data_int_char_FDHDChannelMapSP_int_adc_vectors_4_d0 mem_din 1 14 } } }
	process_data_int_char_FDHDChannelMapSP_int_adc_vectors_5 { ap_memory {  { process_data_int_char_FDHDChannelMapSP_int_adc_vectors_5_address0 mem_address 1 18 }  { process_data_int_char_FDHDChannelMapSP_int_adc_vectors_5_ce0 mem_ce 1 1 }  { process_data_int_char_FDHDChannelMapSP_int_adc_vectors_5_we0 mem_we 1 1 }  { process_data_int_char_FDHDChannelMapSP_int_adc_vectors_5_d0 mem_din 1 14 } } }
	process_data_int_char_FDHDChannelMapSP_int_adc_vectors_6 { ap_memory {  { process_data_int_char_FDHDChannelMapSP_int_adc_vectors_6_address0 mem_address 1 18 }  { process_data_int_char_FDHDChannelMapSP_int_adc_vectors_6_ce0 mem_ce 1 1 }  { process_data_int_char_FDHDChannelMapSP_int_adc_vectors_6_we0 mem_we 1 1 }  { process_data_int_char_FDHDChannelMapSP_int_adc_vectors_6_d0 mem_din 1 14 } } }
	process_data_int_char_FDHDChannelMapSP_int_adc_vectors_7 { ap_memory {  { process_data_int_char_FDHDChannelMapSP_int_adc_vectors_7_address0 mem_address 1 18 }  { process_data_int_char_FDHDChannelMapSP_int_adc_vectors_7_ce0 mem_ce 1 1 }  { process_data_int_char_FDHDChannelMapSP_int_adc_vectors_7_we0 mem_we 1 1 }  { process_data_int_char_FDHDChannelMapSP_int_adc_vectors_7_d0 mem_din 1 14 } } }
	process_data_int_char_FDHDChannelMapSP_int_adc_vectors_8 { ap_memory {  { process_data_int_char_FDHDChannelMapSP_int_adc_vectors_8_address0 mem_address 1 18 }  { process_data_int_char_FDHDChannelMapSP_int_adc_vectors_8_ce0 mem_ce 1 1 }  { process_data_int_char_FDHDChannelMapSP_int_adc_vectors_8_we0 mem_we 1 1 }  { process_data_int_char_FDHDChannelMapSP_int_adc_vectors_8_d0 mem_din 1 14 } } }
}
