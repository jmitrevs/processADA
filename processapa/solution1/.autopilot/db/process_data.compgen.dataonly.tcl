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
outdata { 
	dir I
	width 64
	depth 1
	mode ap_none
	offset 36
	offset_end 47
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


