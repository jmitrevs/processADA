#ifndef PROCESS_DATA_H
#define PROCESS_DATA_H

//#include <stdio.h>
//#include <string>
//#include <iostream>
//#include <sstream>
//#include <algorithm>
//#include <fstream>
//#include <CL/cl.h>

#include "Fragment.hpp"
#include "WIB2Frame.hpp"
#include "cnn2d.h"

const int INFILE_SIZE = 28320800; // == 0x1b02420
const int INBUF_SIZE = 0x1b02600;  // aligned
const int LOGIC_OUTBUF_SIZE = 276;
const int OUTBUF_SIZE = 0x200;  // alighed

constexpr unsigned int NUM_LINKS = 10;

using writebuf_t = result_t::value_type;

extern "C" {
    void process_data(uint8_t infiledata[INBUF_SIZE],
         writebuf_t outdata[OUTBUF_SIZE]);
}
#endif
