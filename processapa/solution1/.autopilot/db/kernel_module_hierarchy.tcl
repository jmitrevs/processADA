set ModuleHierarchy {[{
"Name" : "process_data","ID" : "0","Type" : "sequential",
"SubInsts" : [
	{"Name" : "grp_process_data_Pipeline_VITIS_LOOP_143_4_VITIS_LOOP_145_5_fu_5720","ID" : "1","Type" : "sequential",
		"SubLoops" : [
		{"Name" : "VITIS_LOOP_143_4_VITIS_LOOP_145_5","ID" : "2","Type" : "pipeline"},]},
	{"Name" : "grp_myproject_fu_5725","ID" : "3","Type" : "dataflow",
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
			{"Name" : "grp_dense_array_array_ap_fixed_16_6_5_3_0_8u_config16_Pipeline_DataPrepare_fu_3619","ID" : "44","Type" : "sequential",
				"SubLoops" : [
				{"Name" : "DataPrepare","ID" : "45","Type" : "pipeline"},]},
			{"Name" : "grp_dense_wrapper_ap_fixed_16_6_5_3_0_ap_fixed_16_6_5_3_0_config16_s_fu_4521","ID" : "46","Type" : "pipeline",
				"SubLoops" : [
				{"Name" : "ReuseLoop","ID" : "47","Type" : "pipeline"},]},]},
		{"Name" : "dense_array_ap_fixed_8u_array_ap_fixed_16_6_5_3_0_3u_config18_U0","ID" : "48","Type" : "sequential",
			"SubInsts" : [
			{"Name" : "grp_dense_wrapper_ap_fixed_16_6_5_3_0_ap_fixed_16_6_5_3_0_config18_s_fu_67","ID" : "49","Type" : "pipeline",
				"SubLoops" : [
				{"Name" : "ReuseLoop","ID" : "50","Type" : "pipeline"},]},]},
		{"Name" : "softmax_array_array_ap_fixed_16_6_5_3_0_3u_softmax_config19_U0","ID" : "51","Type" : "sequential",
			"SubInsts" : [
			{"Name" : "grp_softmax_stable_array_array_ap_fixed_16_6_5_3_0_3u_softmax_config19_s_fu_20","ID" : "52","Type" : "sequential"},]},]},
	{"Name" : "grp_process_data_Pipeline_VITIS_LOOP_164_6_fu_11275","ID" : "53","Type" : "sequential",
		"SubLoops" : [
		{"Name" : "VITIS_LOOP_164_6","ID" : "54","Type" : "pipeline"},]},]
}]}