set moduleName process_data_Pipeline_VITIS_LOOP_941_8_VITIS_LOOP_943_9
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
set C_modelName {process_data_Pipeline_VITIS_LOOP_941_8_VITIS_LOOP_943_9}
set C_modelType { void 0 }
set C_modelArgList {
	{ i int 13 regular  }
	{ zero_padding2d_input int 15 regular {fifo 1 volatile }  }
	{ planes2 int 15 regular {array 2880000 { 1 3 } 1 1 } {global 0}  }
}
set hasAXIMCache 0
set C_modelArgMapList {[ 
	{ "Name" : "i", "interface" : "wire", "bitwidth" : 13, "direction" : "READONLY"} , 
 	{ "Name" : "zero_padding2d_input", "interface" : "fifo", "bitwidth" : 15, "direction" : "WRITEONLY"} , 
 	{ "Name" : "planes2", "interface" : "memory", "bitwidth" : 15, "direction" : "READONLY", "extern" : 0} ]}
# RTL Port declarations: 
set portNum 13
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ zero_padding2d_input_din sc_out sc_lv 15 signal 1 } 
	{ zero_padding2d_input_full_n sc_in sc_logic 1 signal 1 } 
	{ zero_padding2d_input_write sc_out sc_logic 1 signal 1 } 
	{ i sc_in sc_lv 13 signal 0 } 
	{ planes2_address0 sc_out sc_lv 22 signal 2 } 
	{ planes2_ce0 sc_out sc_logic 1 signal 2 } 
	{ planes2_q0 sc_in sc_lv 15 signal 2 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "zero_padding2d_input_din", "direction": "out", "datatype": "sc_lv", "bitwidth":15, "type": "signal", "bundle":{"name": "zero_padding2d_input", "role": "din" }} , 
 	{ "name": "zero_padding2d_input_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "zero_padding2d_input", "role": "full_n" }} , 
 	{ "name": "zero_padding2d_input_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "zero_padding2d_input", "role": "write" }} , 
 	{ "name": "i", "direction": "in", "datatype": "sc_lv", "bitwidth":13, "type": "signal", "bundle":{"name": "i", "role": "default" }} , 
 	{ "name": "planes2_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":22, "type": "signal", "bundle":{"name": "planes2", "role": "address0" }} , 
 	{ "name": "planes2_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "planes2", "role": "ce0" }} , 
 	{ "name": "planes2_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":15, "type": "signal", "bundle":{"name": "planes2", "role": "q0" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2"],
		"CDFG" : "process_data_Pipeline_VITIS_LOOP_941_8_VITIS_LOOP_943_9",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "61445", "EstimateLatencyMax" : "61445",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "i", "Type" : "None", "Direction" : "I"},
			{"Name" : "zero_padding2d_input", "Type" : "Fifo", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "zero_padding2d_input_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "planes2", "Type" : "Memory", "Direction" : "I"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_941_8_VITIS_LOOP_943_9", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter1", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter5", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter5", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_9ns_13ns_13ns_22_4_1_U5089", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.flow_control_loop_pipe_sequential_init_U", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	process_data_Pipeline_VITIS_LOOP_941_8_VITIS_LOOP_943_9 {
		i {Type I LastRead 0 FirstWrite -1}
		zero_padding2d_input {Type O LastRead -1 FirstWrite 5}
		planes2 {Type I LastRead 4 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "61445", "Max" : "61445"}
	, {"Name" : "Interval", "Min" : "61445", "Max" : "61445"}
]}

set PipelineEnableSignalInfo {[
	{"Pipeline" : "0", "EnableSignal" : "ap_enable_pp0"}
]}

set Spec2ImplPortList { 
	i { ap_none {  { i in_data 0 13 } } }
	zero_padding2d_input { ap_fifo {  { zero_padding2d_input_din fifo_port_we 1 15 }  { zero_padding2d_input_full_n fifo_status 0 1 }  { zero_padding2d_input_write fifo_data 1 1 } } }
	planes2 { ap_memory {  { planes2_address0 mem_address 1 22 }  { planes2_ce0 mem_ce 1 1 }  { planes2_q0 in_data 0 15 } } }
}
