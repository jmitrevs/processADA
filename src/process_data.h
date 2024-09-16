#ifndef PROCESS_DATA_H
#define PROCESS_DATA_H

#include <cstdint>

#include "Fragment.hpp"
#include "WIB2Frame.hpp"
#include "cnn2d.h"

//const int INFILE_SIZE = 28320800; // == 0x1b02420  (in bytes)
const int INFILE_SIZE = 3540100;  // changing to 8-byte words
//const int INBUF_SIZE = 0x1b02600;  // aligned  (in bytes)
const int INBUF_SIZE = 3540160;   // in 8-byte words
//const int LOGIC_OUTBUF_SIZE = 276;
//const int OUTBUF_SIZE = 0x200;  // aligned

const int LOGIC_OUTBUF_SIZE = 116;
const int OUTBUF_SIZE = 0x100;  // aligned

constexpr unsigned int NUM_LINKS = 10;

//Create variables
constexpr uint16_t z_channels = 480;
constexpr unsigned int n_frames = 6000;

constexpr size_t TICK_SIZE = 128;
constexpr size_t SKIP_SIZE = 103;
constexpr size_t N_OUT = 2;

constexpr uint16_t NET_SIZE = 128;
constexpr uint16_t NET_SIZE_2 = 128 / 2;
constexpr uint16_t MAX_IDX = z_channels - NET_SIZE;

using readbuf_t = uint64_t;
using writebuf_t = result_t::value_type;

extern "C" {
    void process_data(readbuf_t infiledata[INBUF_SIZE],
                      writebuf_t outdata[OUTBUF_SIZE]);
//         int16_t skip_threshold);
}
#endif
