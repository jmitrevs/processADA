#include "process_data.h"
#include "hls_stream.h"
#include "defines.h"

#include <iostream>
#include <cmath>


void process_data(uint8_t infiledata[INBUF_SIZE],
                  writebuf_t outdata[OUTBUF_SIZE])
//                  int16_t skip_threshold)
{

#pragma HLS INTERFACE mode=m_axi port=infiledata bundle=indatabun
#pragma HLS INTERFACE mode=m_axi port=outdata bundle=outdatabun

//#pragma HLS ARRAY_PARTITION variable=infiledata type=cyclic factor=16

    for (size_t i = 0; i < INFILE_SIZE; i++) {
        outdata[i] = ~infiledata[i] + 1;
    }
}
