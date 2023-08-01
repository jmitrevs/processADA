# This script segment is generated automatically by AutoPilot

set axilite_register_dict [dict create]
set port_control {
infile_size { 
	dir I
	width 32
	depth 1
	mode ap_none
	offset 16
	offset_end 23
}
infiledata { 
	dir I
	width 64
	depth 1
	mode ap_none
	offset 24
	offset_end 35
}
chanmap_fNAPAs { 
	dir I
	width 32
	depth 1
	mode ap_none
	offset 36
	offset_end 43
}
chanmap_fNChans { 
	dir I
	width 32
	depth 1
	mode ap_none
	offset 44
	offset_end 51
}
chanmap_fAPANameFromCrate { 
	dir I
	width 64
	depth 1
	mode ap_none
	offset 52
	offset_end 63
}
chanmap_fUprightFromCrate { 
	dir I
	width 64
	depth 1
	mode ap_none
	offset 64
	offset_end 75
}
chanmap_fCrateFromTPCSet { 
	dir I
	width 64
	depth 1
	mode ap_none
	offset 76
	offset_end 87
}
chanmap_fTPCSetFromCrate { 
	dir I
	width 64
	depth 1
	mode ap_none
	offset 88
	offset_end 99
}
chanmap_DetToChanInfo { 
	dir I
	width 64
	depth 1
	mode ap_none
	offset 100
	offset_end 111
}
outdata { 
	dir I
	width 64
	depth 1
	mode ap_none
	offset 112
	offset_end 123
}
ap_start { }
ap_done { }
ap_ready { }
ap_continue { }
ap_idle { }
interrupt {
}
}
dict set axilite_register_dict control $port_control


