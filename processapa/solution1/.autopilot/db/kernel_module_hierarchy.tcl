set ModuleHierarchy {[{
"Name" : "process_data","ID" : "0","Type" : "sequential",
"SubInsts" : [
	{"Name" : "grp_process_data_Pipeline_VITIS_LOOP_203_4_VITIS_LOOP_205_5_fu_6207","ID" : "1","Type" : "sequential",
		"SubLoops" : [
		{"Name" : "VITIS_LOOP_203_4_VITIS_LOOP_205_5","ID" : "2","Type" : "pipeline"},]},
	{"Name" : "grp_myproject_fu_6335","ID" : "3","Type" : "dataflow",
		"SubInsts" : [
		{"Name" : "zeropad2d_cl_array_ap_fixed_1u_array_ap_fixed_16_6_5_3_0_1u_config2_U0","ID" : "4","Type" : "sequential",
			"SubInsts" : [
			{"Name" : "grp_zeropad2d_cl_array_array_ap_fixed_1u_config2_Pipeline_PadTop_PadTopWidth_fu_22","ID" : "5","Type" : "sequential",
				"SubLoops" : [
				{"Name" : "PadTop_PadTopWidth","ID" : "6","Type" : "pipeline"},]},
			{"Name" : "grp_zeropad2d_cl_array_array_ap_fixed_1u_config2_Pipeline_PadMain_CopyMain_fu_28","ID" : "7","Type" : "sequential",
				"SubLoops" : [
				{"Name" : "PadMain_CopyMain","ID" : "8","Type" : "pipeline"},]},
			{"Name" : "grp_zeropad2d_cl_array_array_ap_fixed_1u_config2_Pipeline_PadBottom_PadBottomWidth_fu_36","ID" : "9","Type" : "sequential",
				"SubLoops" : [
				{"Name" : "PadBottom_PadBottomWidth","ID" : "10","Type" : "pipeline"},]},]},
		{"Name" : "conv_2d_cl_array_ap_fixed_1u_array_ap_fixed_16_6_5_3_0_32u_config3_U0","ID" : "11","Type" : "sequential",
			"SubLoops" : [
			{"Name" : "ReadInputHeight_ReadInputWidth","ID" : "12","Type" : "no",
			"SubInsts" : [
			{"Name" : "grp_compute_output_buffer_2d_array_array_ap_fixed_16_6_5_3_0_32u_config3_s_fu_80","ID" : "13","Type" : "sequential",
					"SubInsts" : [
					{"Name" : "call_ln286_shift_line_buffer_array_ap_fixed_16_6_5_3_0_1u_config3_s_fu_95","ID" : "14","Type" : "pipeline"},
					{"Name" : "grp_dense_resource_ap_fixed_16_6_5_3_0_ap_fixed_16_6_5_3_0_config3_mult_s_fu_123","ID" : "15","Type" : "pipeline",
						"SubLoops" : [
						{"Name" : "ReuseLoop","ID" : "16","Type" : "pipeline"},]},]},]},]},
		{"Name" : "pooling2d_cl_array_array_ap_fixed_16_6_5_3_0_32u_config5_U0","ID" : "17","Type" : "sequential",
			"SubLoops" : [
			{"Name" : "ReadInputHeight_ReadInputWidth","ID" : "18","Type" : "pipeline"},]},
		{"Name" : "conv_2d_cl_array_ap_fixed_32u_array_ap_fixed_16_6_5_3_0_64u_config6_U0","ID" : "19","Type" : "sequential",
			"SubLoops" : [
			{"Name" : "ReadInputHeight_ReadInputWidth","ID" : "20","Type" : "no",
			"SubInsts" : [
			{"Name" : "grp_compute_output_buffer_2d_array_array_ap_fixed_16_6_5_3_0_64u_config6_s_fu_886","ID" : "21","Type" : "sequential",
					"SubInsts" : [
					{"Name" : "call_ln286_shift_line_buffer_array_ap_fixed_16_6_5_3_0_32u_config6_s_fu_1021","ID" : "22","Type" : "pipeline"},
					{"Name" : "grp_dense_resource_ap_fixed_16_6_5_3_0_ap_fixed_16_6_5_3_0_config6_mult_s_fu_1793","ID" : "23","Type" : "pipeline",
						"SubLoops" : [
						{"Name" : "ReuseLoop","ID" : "24","Type" : "pipeline"},]},]},]},]},
		{"Name" : "pooling2d_cl_array_array_ap_fixed_16_6_5_3_0_64u_config8_U0","ID" : "25","Type" : "sequential",
			"SubLoops" : [
			{"Name" : "ReadInputHeight_ReadInputWidth","ID" : "26","Type" : "pipeline"},]},
		{"Name" : "conv_2d_cl_array_ap_fixed_64u_array_ap_fixed_16_6_5_3_0_64u_config9_U0","ID" : "27","Type" : "sequential",
			"SubLoops" : [
			{"Name" : "ReadInputHeight_ReadInputWidth","ID" : "28","Type" : "no",
			"SubInsts" : [
			{"Name" : "grp_compute_output_buffer_2d_array_array_ap_fixed_16_6_5_3_0_64u_config9_s_fu_1718","ID" : "29","Type" : "sequential",
					"SubInsts" : [
					{"Name" : "call_ln286_shift_line_buffer_array_ap_fixed_16_6_5_3_0_64u_config9_s_fu_1983","ID" : "30","Type" : "pipeline"},
					{"Name" : "grp_dense_resource_ap_fixed_16_6_5_3_0_ap_fixed_16_6_5_3_0_config9_mult_s_fu_3523","ID" : "31","Type" : "pipeline",
						"SubLoops" : [
						{"Name" : "ReuseLoop","ID" : "32","Type" : "pipeline"},]},]},]},]},
		{"Name" : "pooling2d_cl_array_array_ap_fixed_16_6_5_3_0_64u_config11_U0","ID" : "33","Type" : "sequential",
			"SubLoops" : [
			{"Name" : "ReadInputHeight_ReadInputWidth","ID" : "34","Type" : "pipeline"},]},
		{"Name" : "conv_2d_cl_array_ap_fixed_64u_array_ap_fixed_16_6_5_3_0_32u_config12_U0","ID" : "35","Type" : "sequential",
			"SubLoops" : [
			{"Name" : "ReadInputHeight_ReadInputWidth","ID" : "36","Type" : "no",
			"SubInsts" : [
			{"Name" : "grp_compute_output_buffer_2d_array_array_ap_fixed_16_6_5_3_0_32u_config12_s_fu_1718","ID" : "37","Type" : "sequential",
					"SubInsts" : [
					{"Name" : "call_ln286_shift_line_buffer_array_ap_fixed_16_6_5_3_0_64u_config12_s_fu_1983","ID" : "38","Type" : "pipeline"},
					{"Name" : "grp_dense_resource_ap_fixed_ap_fixed_16_6_5_3_0_config12_mult_s_fu_3523","ID" : "39","Type" : "pipeline",
						"SubLoops" : [
						{"Name" : "ReuseLoop","ID" : "40","Type" : "pipeline"},]},]},]},]},
		{"Name" : "pooling2d_cl_array_array_ap_fixed_16_6_5_3_0_32u_config14_U0","ID" : "41","Type" : "sequential",
			"SubLoops" : [
			{"Name" : "ReadInputHeight_ReadInputWidth","ID" : "42","Type" : "pipeline"},]},
		{"Name" : "dense_array_ap_fixed_32u_array_ap_fixed_16_6_5_3_0_8u_config16_U0","ID" : "43","Type" : "sequential",
			"SubInsts" : [
			{"Name" : "grp_dense_wrapper_ap_fixed_16_6_5_3_0_ap_fixed_16_6_5_3_0_config16_s_fu_3817","ID" : "44","Type" : "pipeline",
				"SubLoops" : [
				{"Name" : "ReuseLoop","ID" : "45","Type" : "pipeline"},]},],
			"SubLoops" : [
			{"Name" : "DataPrepare","ID" : "46","Type" : "no"},]},
		{"Name" : "dense_array_ap_fixed_8u_array_ap_fixed_16_6_5_3_0_3u_config18_U0","ID" : "47","Type" : "sequential",
			"SubInsts" : [
			{"Name" : "grp_dense_wrapper_ap_fixed_16_6_5_3_0_ap_fixed_16_6_5_3_0_config18_s_fu_67","ID" : "48","Type" : "pipeline",
				"SubLoops" : [
				{"Name" : "ReuseLoop","ID" : "49","Type" : "pipeline"},]},]},
		{"Name" : "softmax_array_array_ap_fixed_16_6_5_3_0_3u_softmax_config19_U0","ID" : "50","Type" : "sequential",
			"SubInsts" : [
			{"Name" : "grp_softmax_stable_array_array_ap_fixed_16_6_5_3_0_3u_softmax_config19_s_fu_20","ID" : "51","Type" : "sequential"},]},]},
	{"Name" : "grp_process_data_Pipeline_VITIS_LOOP_215_6_fu_11885","ID" : "52","Type" : "sequential",
		"SubLoops" : [
		{"Name" : "VITIS_LOOP_215_6","ID" : "53","Type" : "pipeline"},]},],
"SubLoops" : [
	{"Name" : "link_loop","ID" : "54","Type" : "no",
	"SubInsts" : [
	{"Name" : "grp_process_data_Pipeline_first_chan_loop_first_chan_frame_loop_fu_6214","ID" : "55","Type" : "sequential",
			"SubLoops" : [
			{"Name" : "first_chan_loop_first_chan_frame_loop","ID" : "56","Type" : "pipeline"},]},],
	"SubLoops" : [
	{"Name" : "frame_loop","ID" : "57","Type" : "no",
		"SubInsts" : [
		{"Name" : "grp_process_data_Pipeline_frame_chan_loop_fu_6235","ID" : "58","Type" : "sequential",
				"SubLoops" : [
				{"Name" : "frame_chan_loop","ID" : "59","Type" : "pipeline"},]},]},
	{"Name" : "second_chan_loop","ID" : "60","Type" : "no",
		"SubInsts" : [
		{"Name" : "grp_process_data_Pipeline_VITIS_LOOP_169_1_fu_6256","ID" : "61","Type" : "sequential",
				"SubLoops" : [
				{"Name" : "VITIS_LOOP_169_1","ID" : "62","Type" : "pipeline"},]},
		{"Name" : "grp_process_data_Pipeline_4_fu_6266","ID" : "63","Type" : "sequential",
				"SubLoops" : [
				{"Name" : "Loop 1","ID" : "64","Type" : "pipeline"},]},
		{"Name" : "grp_process_data_Pipeline_VITIS_LOOP_160_2_fu_6281","ID" : "65","Type" : "sequential",
				"SubLoops" : [
				{"Name" : "VITIS_LOOP_160_2","ID" : "66","Type" : "pipeline"},]},
		{"Name" : "grp_process_data_Pipeline_VITIS_LOOP_131_1_fu_6308","ID" : "67","Type" : "sequential",
				"SubLoops" : [
				{"Name" : "VITIS_LOOP_131_1","ID" : "68","Type" : "pipeline"},]},]},]},
	{"Name" : "VITIS_LOOP_224_7","ID" : "69","Type" : "no",
	"SubInsts" : [
	{"Name" : "grp_process_data_Pipeline_VITIS_LOOP_226_8_VITIS_LOOP_228_9_fu_11894","ID" : "70","Type" : "sequential",
			"SubLoops" : [
			{"Name" : "VITIS_LOOP_226_8_VITIS_LOOP_228_9","ID" : "71","Type" : "pipeline"},]},
	{"Name" : "grp_process_data_Pipeline_VITIS_LOOP_239_10_fu_11902","ID" : "72","Type" : "sequential",
			"SubLoops" : [
			{"Name" : "VITIS_LOOP_239_10","ID" : "73","Type" : "pipeline"},]},]},]
}]}