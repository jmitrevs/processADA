set moduleName process_data_Pipeline_first_chan_loop_first_chan_frame_loop
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
set C_modelName {process_data_Pipeline_first_chan_loop_first_chan_frame_loop}
set C_modelType { void 0 }
set C_modelArgList {
	{ ave int 14 regular {array 256 { 0 3 } 0 1 }  }
	{ process_data_int_char_FDHDChannelMapSP_int_adc_vectors int 14 regular {array 192000 { 1 3 } 1 1 } {global 0}  }
	{ process_data_int_char_FDHDChannelMapSP_int_adc_vectors_2 int 14 regular {array 192000 { 1 3 } 1 1 } {global 0}  }
	{ process_data_int_char_FDHDChannelMapSP_int_adc_vectors_3 int 14 regular {array 192000 { 1 3 } 1 1 } {global 0}  }
	{ process_data_int_char_FDHDChannelMapSP_int_adc_vectors_4 int 14 regular {array 192000 { 1 3 } 1 1 } {global 0}  }
	{ process_data_int_char_FDHDChannelMapSP_int_adc_vectors_5 int 14 regular {array 192000 { 1 3 } 1 1 } {global 0}  }
	{ process_data_int_char_FDHDChannelMapSP_int_adc_vectors_6 int 14 regular {array 192000 { 1 3 } 1 1 } {global 0}  }
	{ process_data_int_char_FDHDChannelMapSP_int_adc_vectors_7 int 14 regular {array 192000 { 1 3 } 1 1 } {global 0}  }
	{ process_data_int_char_FDHDChannelMapSP_int_adc_vectors_8 int 14 regular {array 192000 { 1 3 } 1 1 } {global 0}  }
}
set hasAXIMCache 0
set C_modelArgMapList {[ 
	{ "Name" : "ave", "interface" : "memory", "bitwidth" : 14, "direction" : "WRITEONLY"} , 
 	{ "Name" : "process_data_int_char_FDHDChannelMapSP_int_adc_vectors", "interface" : "memory", "bitwidth" : 14, "direction" : "READONLY", "extern" : 0} , 
 	{ "Name" : "process_data_int_char_FDHDChannelMapSP_int_adc_vectors_2", "interface" : "memory", "bitwidth" : 14, "direction" : "READONLY", "extern" : 0} , 
 	{ "Name" : "process_data_int_char_FDHDChannelMapSP_int_adc_vectors_3", "interface" : "memory", "bitwidth" : 14, "direction" : "READONLY", "extern" : 0} , 
 	{ "Name" : "process_data_int_char_FDHDChannelMapSP_int_adc_vectors_4", "interface" : "memory", "bitwidth" : 14, "direction" : "READONLY", "extern" : 0} , 
 	{ "Name" : "process_data_int_char_FDHDChannelMapSP_int_adc_vectors_5", "interface" : "memory", "bitwidth" : 14, "direction" : "READONLY", "extern" : 0} , 
 	{ "Name" : "process_data_int_char_FDHDChannelMapSP_int_adc_vectors_6", "interface" : "memory", "bitwidth" : 14, "direction" : "READONLY", "extern" : 0} , 
 	{ "Name" : "process_data_int_char_FDHDChannelMapSP_int_adc_vectors_7", "interface" : "memory", "bitwidth" : 14, "direction" : "READONLY", "extern" : 0} , 
 	{ "Name" : "process_data_int_char_FDHDChannelMapSP_int_adc_vectors_8", "interface" : "memory", "bitwidth" : 14, "direction" : "READONLY", "extern" : 0} ]}
# RTL Port declarations: 
set portNum 34
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ ave_address0 sc_out sc_lv 8 signal 0 } 
	{ ave_ce0 sc_out sc_logic 1 signal 0 } 
	{ ave_we0 sc_out sc_logic 1 signal 0 } 
	{ ave_d0 sc_out sc_lv 14 signal 0 } 
	{ process_data_int_char_FDHDChannelMapSP_int_adc_vectors_address0 sc_out sc_lv 18 signal 1 } 
	{ process_data_int_char_FDHDChannelMapSP_int_adc_vectors_ce0 sc_out sc_logic 1 signal 1 } 
	{ process_data_int_char_FDHDChannelMapSP_int_adc_vectors_q0 sc_in sc_lv 14 signal 1 } 
	{ process_data_int_char_FDHDChannelMapSP_int_adc_vectors_2_address0 sc_out sc_lv 18 signal 2 } 
	{ process_data_int_char_FDHDChannelMapSP_int_adc_vectors_2_ce0 sc_out sc_logic 1 signal 2 } 
	{ process_data_int_char_FDHDChannelMapSP_int_adc_vectors_2_q0 sc_in sc_lv 14 signal 2 } 
	{ process_data_int_char_FDHDChannelMapSP_int_adc_vectors_3_address0 sc_out sc_lv 18 signal 3 } 
	{ process_data_int_char_FDHDChannelMapSP_int_adc_vectors_3_ce0 sc_out sc_logic 1 signal 3 } 
	{ process_data_int_char_FDHDChannelMapSP_int_adc_vectors_3_q0 sc_in sc_lv 14 signal 3 } 
	{ process_data_int_char_FDHDChannelMapSP_int_adc_vectors_4_address0 sc_out sc_lv 18 signal 4 } 
	{ process_data_int_char_FDHDChannelMapSP_int_adc_vectors_4_ce0 sc_out sc_logic 1 signal 4 } 
	{ process_data_int_char_FDHDChannelMapSP_int_adc_vectors_4_q0 sc_in sc_lv 14 signal 4 } 
	{ process_data_int_char_FDHDChannelMapSP_int_adc_vectors_5_address0 sc_out sc_lv 18 signal 5 } 
	{ process_data_int_char_FDHDChannelMapSP_int_adc_vectors_5_ce0 sc_out sc_logic 1 signal 5 } 
	{ process_data_int_char_FDHDChannelMapSP_int_adc_vectors_5_q0 sc_in sc_lv 14 signal 5 } 
	{ process_data_int_char_FDHDChannelMapSP_int_adc_vectors_6_address0 sc_out sc_lv 18 signal 6 } 
	{ process_data_int_char_FDHDChannelMapSP_int_adc_vectors_6_ce0 sc_out sc_logic 1 signal 6 } 
	{ process_data_int_char_FDHDChannelMapSP_int_adc_vectors_6_q0 sc_in sc_lv 14 signal 6 } 
	{ process_data_int_char_FDHDChannelMapSP_int_adc_vectors_7_address0 sc_out sc_lv 18 signal 7 } 
	{ process_data_int_char_FDHDChannelMapSP_int_adc_vectors_7_ce0 sc_out sc_logic 1 signal 7 } 
	{ process_data_int_char_FDHDChannelMapSP_int_adc_vectors_7_q0 sc_in sc_lv 14 signal 7 } 
	{ process_data_int_char_FDHDChannelMapSP_int_adc_vectors_8_address0 sc_out sc_lv 18 signal 8 } 
	{ process_data_int_char_FDHDChannelMapSP_int_adc_vectors_8_ce0 sc_out sc_logic 1 signal 8 } 
	{ process_data_int_char_FDHDChannelMapSP_int_adc_vectors_8_q0 sc_in sc_lv 14 signal 8 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "ave_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "ave", "role": "address0" }} , 
 	{ "name": "ave_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "ave", "role": "ce0" }} , 
 	{ "name": "ave_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "ave", "role": "we0" }} , 
 	{ "name": "ave_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":14, "type": "signal", "bundle":{"name": "ave", "role": "d0" }} , 
 	{ "name": "process_data_int_char_FDHDChannelMapSP_int_adc_vectors_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":18, "type": "signal", "bundle":{"name": "process_data_int_char_FDHDChannelMapSP_int_adc_vectors", "role": "address0" }} , 
 	{ "name": "process_data_int_char_FDHDChannelMapSP_int_adc_vectors_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "process_data_int_char_FDHDChannelMapSP_int_adc_vectors", "role": "ce0" }} , 
 	{ "name": "process_data_int_char_FDHDChannelMapSP_int_adc_vectors_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":14, "type": "signal", "bundle":{"name": "process_data_int_char_FDHDChannelMapSP_int_adc_vectors", "role": "q0" }} , 
 	{ "name": "process_data_int_char_FDHDChannelMapSP_int_adc_vectors_2_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":18, "type": "signal", "bundle":{"name": "process_data_int_char_FDHDChannelMapSP_int_adc_vectors_2", "role": "address0" }} , 
 	{ "name": "process_data_int_char_FDHDChannelMapSP_int_adc_vectors_2_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "process_data_int_char_FDHDChannelMapSP_int_adc_vectors_2", "role": "ce0" }} , 
 	{ "name": "process_data_int_char_FDHDChannelMapSP_int_adc_vectors_2_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":14, "type": "signal", "bundle":{"name": "process_data_int_char_FDHDChannelMapSP_int_adc_vectors_2", "role": "q0" }} , 
 	{ "name": "process_data_int_char_FDHDChannelMapSP_int_adc_vectors_3_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":18, "type": "signal", "bundle":{"name": "process_data_int_char_FDHDChannelMapSP_int_adc_vectors_3", "role": "address0" }} , 
 	{ "name": "process_data_int_char_FDHDChannelMapSP_int_adc_vectors_3_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "process_data_int_char_FDHDChannelMapSP_int_adc_vectors_3", "role": "ce0" }} , 
 	{ "name": "process_data_int_char_FDHDChannelMapSP_int_adc_vectors_3_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":14, "type": "signal", "bundle":{"name": "process_data_int_char_FDHDChannelMapSP_int_adc_vectors_3", "role": "q0" }} , 
 	{ "name": "process_data_int_char_FDHDChannelMapSP_int_adc_vectors_4_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":18, "type": "signal", "bundle":{"name": "process_data_int_char_FDHDChannelMapSP_int_adc_vectors_4", "role": "address0" }} , 
 	{ "name": "process_data_int_char_FDHDChannelMapSP_int_adc_vectors_4_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "process_data_int_char_FDHDChannelMapSP_int_adc_vectors_4", "role": "ce0" }} , 
 	{ "name": "process_data_int_char_FDHDChannelMapSP_int_adc_vectors_4_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":14, "type": "signal", "bundle":{"name": "process_data_int_char_FDHDChannelMapSP_int_adc_vectors_4", "role": "q0" }} , 
 	{ "name": "process_data_int_char_FDHDChannelMapSP_int_adc_vectors_5_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":18, "type": "signal", "bundle":{"name": "process_data_int_char_FDHDChannelMapSP_int_adc_vectors_5", "role": "address0" }} , 
 	{ "name": "process_data_int_char_FDHDChannelMapSP_int_adc_vectors_5_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "process_data_int_char_FDHDChannelMapSP_int_adc_vectors_5", "role": "ce0" }} , 
 	{ "name": "process_data_int_char_FDHDChannelMapSP_int_adc_vectors_5_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":14, "type": "signal", "bundle":{"name": "process_data_int_char_FDHDChannelMapSP_int_adc_vectors_5", "role": "q0" }} , 
 	{ "name": "process_data_int_char_FDHDChannelMapSP_int_adc_vectors_6_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":18, "type": "signal", "bundle":{"name": "process_data_int_char_FDHDChannelMapSP_int_adc_vectors_6", "role": "address0" }} , 
 	{ "name": "process_data_int_char_FDHDChannelMapSP_int_adc_vectors_6_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "process_data_int_char_FDHDChannelMapSP_int_adc_vectors_6", "role": "ce0" }} , 
 	{ "name": "process_data_int_char_FDHDChannelMapSP_int_adc_vectors_6_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":14, "type": "signal", "bundle":{"name": "process_data_int_char_FDHDChannelMapSP_int_adc_vectors_6", "role": "q0" }} , 
 	{ "name": "process_data_int_char_FDHDChannelMapSP_int_adc_vectors_7_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":18, "type": "signal", "bundle":{"name": "process_data_int_char_FDHDChannelMapSP_int_adc_vectors_7", "role": "address0" }} , 
 	{ "name": "process_data_int_char_FDHDChannelMapSP_int_adc_vectors_7_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "process_data_int_char_FDHDChannelMapSP_int_adc_vectors_7", "role": "ce0" }} , 
 	{ "name": "process_data_int_char_FDHDChannelMapSP_int_adc_vectors_7_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":14, "type": "signal", "bundle":{"name": "process_data_int_char_FDHDChannelMapSP_int_adc_vectors_7", "role": "q0" }} , 
 	{ "name": "process_data_int_char_FDHDChannelMapSP_int_adc_vectors_8_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":18, "type": "signal", "bundle":{"name": "process_data_int_char_FDHDChannelMapSP_int_adc_vectors_8", "role": "address0" }} , 
 	{ "name": "process_data_int_char_FDHDChannelMapSP_int_adc_vectors_8_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "process_data_int_char_FDHDChannelMapSP_int_adc_vectors_8", "role": "ce0" }} , 
 	{ "name": "process_data_int_char_FDHDChannelMapSP_int_adc_vectors_8_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":14, "type": "signal", "bundle":{"name": "process_data_int_char_FDHDChannelMapSP_int_adc_vectors_8", "role": "q0" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "3", "4"],
		"CDFG" : "process_data_Pipeline_first_chan_loop_first_chan_frame_loop",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "25606", "EstimateLatencyMax" : "25606",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "ave", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "process_data_int_char_FDHDChannelMapSP_int_adc_vectors", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "process_data_int_char_FDHDChannelMapSP_int_adc_vectors_2", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "process_data_int_char_FDHDChannelMapSP_int_adc_vectors_3", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "process_data_int_char_FDHDChannelMapSP_int_adc_vectors_4", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "process_data_int_char_FDHDChannelMapSP_int_adc_vectors_5", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "process_data_int_char_FDHDChannelMapSP_int_adc_vectors_6", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "process_data_int_char_FDHDChannelMapSP_int_adc_vectors_7", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "process_data_int_char_FDHDChannelMapSP_int_adc_vectors_8", "Type" : "Memory", "Direction" : "I"}],
		"Loop" : [
			{"Name" : "first_chan_loop_first_chan_frame_loop", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter5", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter5", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_21ns_23ns_43_1_1_U11", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mux_8_3_14_1_1_U12", "Parent" : "0"},
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_9ns_10ns_4ns_18_4_1_U13", "Parent" : "0"},
	{"ID" : "4", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.flow_control_loop_pipe_sequential_init_U", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	process_data_Pipeline_first_chan_loop_first_chan_frame_loop {
		ave {Type O LastRead -1 FirstWrite 5}
		process_data_int_char_FDHDChannelMapSP_int_adc_vectors {Type I LastRead 3 FirstWrite -1}
		process_data_int_char_FDHDChannelMapSP_int_adc_vectors_2 {Type I LastRead 3 FirstWrite -1}
		process_data_int_char_FDHDChannelMapSP_int_adc_vectors_3 {Type I LastRead 3 FirstWrite -1}
		process_data_int_char_FDHDChannelMapSP_int_adc_vectors_4 {Type I LastRead 3 FirstWrite -1}
		process_data_int_char_FDHDChannelMapSP_int_adc_vectors_5 {Type I LastRead 3 FirstWrite -1}
		process_data_int_char_FDHDChannelMapSP_int_adc_vectors_6 {Type I LastRead 3 FirstWrite -1}
		process_data_int_char_FDHDChannelMapSP_int_adc_vectors_7 {Type I LastRead 3 FirstWrite -1}
		process_data_int_char_FDHDChannelMapSP_int_adc_vectors_8 {Type I LastRead 3 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "25606", "Max" : "25606"}
	, {"Name" : "Interval", "Min" : "25606", "Max" : "25606"}
]}

set PipelineEnableSignalInfo {[
	{"Pipeline" : "0", "EnableSignal" : "ap_enable_pp0"}
]}

set Spec2ImplPortList { 
	ave { ap_memory {  { ave_address0 mem_address 1 8 }  { ave_ce0 mem_ce 1 1 }  { ave_we0 mem_we 1 1 }  { ave_d0 mem_din 1 14 } } }
	process_data_int_char_FDHDChannelMapSP_int_adc_vectors { ap_memory {  { process_data_int_char_FDHDChannelMapSP_int_adc_vectors_address0 mem_address 1 18 }  { process_data_int_char_FDHDChannelMapSP_int_adc_vectors_ce0 mem_ce 1 1 }  { process_data_int_char_FDHDChannelMapSP_int_adc_vectors_q0 mem_dout 0 14 } } }
	process_data_int_char_FDHDChannelMapSP_int_adc_vectors_2 { ap_memory {  { process_data_int_char_FDHDChannelMapSP_int_adc_vectors_2_address0 mem_address 1 18 }  { process_data_int_char_FDHDChannelMapSP_int_adc_vectors_2_ce0 mem_ce 1 1 }  { process_data_int_char_FDHDChannelMapSP_int_adc_vectors_2_q0 mem_dout 0 14 } } }
	process_data_int_char_FDHDChannelMapSP_int_adc_vectors_3 { ap_memory {  { process_data_int_char_FDHDChannelMapSP_int_adc_vectors_3_address0 mem_address 1 18 }  { process_data_int_char_FDHDChannelMapSP_int_adc_vectors_3_ce0 mem_ce 1 1 }  { process_data_int_char_FDHDChannelMapSP_int_adc_vectors_3_q0 mem_dout 0 14 } } }
	process_data_int_char_FDHDChannelMapSP_int_adc_vectors_4 { ap_memory {  { process_data_int_char_FDHDChannelMapSP_int_adc_vectors_4_address0 mem_address 1 18 }  { process_data_int_char_FDHDChannelMapSP_int_adc_vectors_4_ce0 mem_ce 1 1 }  { process_data_int_char_FDHDChannelMapSP_int_adc_vectors_4_q0 mem_dout 0 14 } } }
	process_data_int_char_FDHDChannelMapSP_int_adc_vectors_5 { ap_memory {  { process_data_int_char_FDHDChannelMapSP_int_adc_vectors_5_address0 mem_address 1 18 }  { process_data_int_char_FDHDChannelMapSP_int_adc_vectors_5_ce0 mem_ce 1 1 }  { process_data_int_char_FDHDChannelMapSP_int_adc_vectors_5_q0 mem_dout 0 14 } } }
	process_data_int_char_FDHDChannelMapSP_int_adc_vectors_6 { ap_memory {  { process_data_int_char_FDHDChannelMapSP_int_adc_vectors_6_address0 mem_address 1 18 }  { process_data_int_char_FDHDChannelMapSP_int_adc_vectors_6_ce0 mem_ce 1 1 }  { process_data_int_char_FDHDChannelMapSP_int_adc_vectors_6_q0 mem_dout 0 14 } } }
	process_data_int_char_FDHDChannelMapSP_int_adc_vectors_7 { ap_memory {  { process_data_int_char_FDHDChannelMapSP_int_adc_vectors_7_address0 mem_address 1 18 }  { process_data_int_char_FDHDChannelMapSP_int_adc_vectors_7_ce0 mem_ce 1 1 }  { process_data_int_char_FDHDChannelMapSP_int_adc_vectors_7_q0 mem_dout 0 14 } } }
	process_data_int_char_FDHDChannelMapSP_int_adc_vectors_8 { ap_memory {  { process_data_int_char_FDHDChannelMapSP_int_adc_vectors_8_address0 mem_address 1 18 }  { process_data_int_char_FDHDChannelMapSP_int_adc_vectors_8_ce0 mem_ce 1 1 }  { process_data_int_char_FDHDChannelMapSP_int_adc_vectors_8_q0 mem_dout 0 14 } } }
}
