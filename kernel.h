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

void process_data(char infiledata[input_size], dune::FDHDChannelMapSP& chanmap, char outdata[500], const int infile_size);

#endif
