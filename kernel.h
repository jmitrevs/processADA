#ifndef KERNEL_H
#define KERNEL_H

#include <stdio.h>
#include <string>
#include <iostream>
#include <sstream>
#include <algorithm>
#include <fstream>
#include <CL/cl.h>

#include "FDHDChannelMapSP.h"
#include "Fragment.hpp"
#include "WIB2Frame.hpp"


void process_data(const int infile_size, char infiledata[], dune::FDHDChannelMapSP& chanmap, char outdata[500]);

#endif
