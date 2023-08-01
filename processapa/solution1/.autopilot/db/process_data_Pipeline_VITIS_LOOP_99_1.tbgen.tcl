set moduleName process_data_Pipeline_VITIS_LOOP_99_1
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
set C_modelName {process_data_Pipeline_VITIS_LOOP_99_1}
set C_modelType { void 0 }
set C_modelArgList {
	{ phi_mul23 int 21 regular  }
	{ mul_ln103_1 int 22 regular  }
	{ ave_load_cast int 14 regular  }
	{ adc_vectors int 14 regular {array 1536000 { 1 3 } 1 1 } {global 0}  }
	{ planes int 15 regular {array 2880000 { 0 3 } 0 1 } {global 1}  }
}
set hasAXIMCache 0
set C_modelArgMapList {[ 
	{ "Name" : "phi_mul23", "interface" : "wire", "bitwidth" : 21, "direction" : "READONLY"} , 
 	{ "Name" : "mul_ln103_1", "interface" : "wire", "bitwidth" : 22, "direction" : "READONLY"} , 
 	{ "Name" : "ave_load_cast", "interface" : "wire", "bitwidth" : 14, "direction" : "READONLY"} , 
 	{ "Name" : "adc_vectors", "interface" : "memory", "bitwidth" : 14, "direction" : "READONLY", "extern" : 0} , 
 	{ "Name" : "planes", "interface" : "memory", "bitwidth" : 15, "direction" : "WRITEONLY", "extern" : 0} ]}
# RTL Port declarations: 
set portNum 16
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ phi_mul23 sc_in sc_lv 21 signal 0 } 
	{ mul_ln103_1 sc_in sc_lv 22 signal 1 } 
	{ ave_load_cast sc_in sc_lv 14 signal 2 } 
	{ adc_vectors_address0 sc_out sc_lv 21 signal 3 } 
	{ adc_vectors_ce0 sc_out sc_logic 1 signal 3 } 
	{ adc_vectors_q0 sc_in sc_lv 14 signal 3 } 
	{ planes_address0 sc_out sc_lv 22 signal 4 } 
	{ planes_ce0 sc_out sc_logic 1 signal 4 } 
	{ planes_we0 sc_out sc_logic 1 signal 4 } 
	{ planes_d0 sc_out sc_lv 15 signal 4 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "phi_mul23", "direction": "in", "datatype": "sc_lv", "bitwidth":21, "type": "signal", "bundle":{"name": "phi_mul23", "role": "default" }} , 
 	{ "name": "mul_ln103_1", "direction": "in", "datatype": "sc_lv", "bitwidth":22, "type": "signal", "bundle":{"name": "mul_ln103_1", "role": "default" }} , 
 	{ "name": "ave_load_cast", "direction": "in", "datatype": "sc_lv", "bitwidth":14, "type": "signal", "bundle":{"name": "ave_load_cast", "role": "default" }} , 
 	{ "name": "adc_vectors_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":21, "type": "signal", "bundle":{"name": "adc_vectors", "role": "address0" }} , 
 	{ "name": "adc_vectors_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "adc_vectors", "role": "ce0" }} , 
 	{ "name": "adc_vectors_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":14, "type": "signal", "bundle":{"name": "adc_vectors", "role": "q0" }} , 
 	{ "name": "planes_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":22, "type": "signal", "bundle":{"name": "planes", "role": "address0" }} , 
 	{ "name": "planes_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "planes", "role": "ce0" }} , 
 	{ "name": "planes_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "planes", "role": "we0" }} , 
 	{ "name": "planes_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":15, "type": "signal", "bundle":{"name": "planes", "role": "d0" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1"],
		"CDFG" : "process_data_Pipeline_VITIS_LOOP_99_1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "6002", "EstimateLatencyMax" : "6002",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "phi_mul23", "Type" : "None", "Direction" : "I"},
			{"Name" : "mul_ln103_1", "Type" : "None", "Direction" : "I"},
			{"Name" : "ave_load_cast", "Type" : "None", "Direction" : "I"},
			{"Name" : "adc_vectors", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "planes", "Type" : "Memory", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_99_1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.flow_control_loop_pipe_sequential_init_U", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	process_data_Pipeline_VITIS_LOOP_99_1 {
		phi_mul23 {Type I LastRead 0 FirstWrite -1}
		mul_ln103_1 {Type I LastRead 0 FirstWrite -1}
		ave_load_cast {Type I LastRead 0 FirstWrite -1}
		adc_vectors {Type I LastRead 0 FirstWrite -1}
		planes {Type O LastRead -1 FirstWrite 1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "6002", "Max" : "6002"}
	, {"Name" : "Interval", "Min" : "6002", "Max" : "6002"}
]}

set PipelineEnableSignalInfo {[
	{"Pipeline" : "0", "EnableSignal" : "ap_enable_pp0"}
]}

set Spec2ImplPortList { 
	phi_mul23 { ap_none {  { phi_mul23 in_data 0 21 } } }
	mul_ln103_1 { ap_none {  { mul_ln103_1 in_data 0 22 } } }
	ave_load_cast { ap_none {  { ave_load_cast in_data 0 14 } } }
	adc_vectors { ap_memory {  { adc_vectors_address0 mem_address 1 21 }  { adc_vectors_ce0 mem_ce 1 1 }  { adc_vectors_q0 in_data 0 14 } } }
	planes { ap_memory {  { planes_address0 mem_address 1 22 }  { planes_ce0 mem_ce 1 1 }  { planes_we0 mem_we 1 1 }  { planes_d0 mem_din 1 15 } } }
}
