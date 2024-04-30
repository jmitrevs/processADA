#include "process_data.h"
#include "hls_stream.h"
#include "defines.h"

#include <iostream>
#include <cmath>

constexpr int16_t skip_threshold = 1024;

constexpr size_t NUM_VALS_Z = 48;
constexpr size_t NUM_BYTES_Z = 84;  // (48*14/8)
//constexpr size_t NUM_WORDS_Z = 21;  // (48*14/32)


// this is only for collection plane, and it subtracts outs 1600 from the returned vallue
// This is for channels 80 - 128 (but wibframechan has 80 subtracted)
int16_t getOfflineChannelZa(uint16_t crate, uint16_t slot, uint16_t link, uint16_t wibframechan ) {

    const auto up = static_cast<bool>(crate & 1); // odd number crates are upright
    const auto wib = slot + 1;

    // std::cout << "up = " << up << ", slot = " << static_cast<unsigned>(slot) << ", wib = " << static_cast<unsigned>(wib) << ", link = " << static_cast<unsigned>(link) << ", frame = " << wibframechan << std::endl;

    if (!up && wib == 1 && link == 1) {
        return wibframechan + 528;
    } else if (!up && wib == 2 && link == 1) {
        return wibframechan + 624;
    } else if (!up && wib == 1 && link == 0) {
        return wibframechan + 720;
    } else if (!up && wib == 2 && link == 0) {
        return wibframechan + 816;
    } else if (!up && wib == 3 && link == 1) {
        return wibframechan + 912;
    } else if (!up && wib == 4 && link == 1) {
        return 431 - wibframechan;
    } else if (!up && wib == 3 && link == 0) {
        return 335 - wibframechan;
    } else if (!up && wib == 4 && link == 0) {
        return 239 - wibframechan;
    } else if (!up && wib == 5 && link == 1) {
        return 143 - wibframechan;
    } else if (!up && wib == 5 && link == 0) {
        return 47 - wibframechan;
    }

    else if (up && wib == 1 && link == 1) {
        return wibframechan + 48;
    } else if (up && wib == 2 && link == 1) {
        return wibframechan + 144;
    } else if (up && wib == 1 && link == 0) {
        return wibframechan + 240;
    } else if (up && wib == 2 && link == 0) {
        return wibframechan + 336;
    } else if (up && wib == 3 && link == 1) {
        return wibframechan + 432;
    } else if (up && wib == 4 && link == 1) {
        return 911 - wibframechan;
    } else if (up && wib == 3 && link == 0) {
        return 815 - wibframechan;
    } else if (up && wib == 4 && link == 0) {
        return 719 - wibframechan;
    } else if (up && wib == 5 && link == 1) {
        return 623 - wibframechan;
    } else if (up && wib == 5 && link == 0) {
        return 527 - wibframechan;
    }

    return -2;
}

// this is only for collection plane, and it subtracts outs 1600 from the returned vallue
// This is for 208-256 (but wibframe has 208 subtracted)
int16_t getOfflineChannelZb(uint16_t crate, uint8_t slot, uint8_t link, uint16_t wibframechan ) {

    const auto up = static_cast<bool>(crate & 1); // odd number crates are upright
    const auto wib = slot + 1;

    if (!up && wib == 1 && link == 1) {
        return wibframechan + 480;
    } else if (!up && wib == 2 && link == 1) {
        return wibframechan + 576;
    } else if (!up && wib == 1 && link == 0) {
        return wibframechan + 672;
    } else if (!up && wib == 2 && link == 0) {
        return wibframechan + 768;
    } else if (!up && wib == 3 && link == 1) {
        return wibframechan + 864;
    } else if (!up && wib == 4 && link == 1) {
        return 479 - wibframechan;
    } else if (!up && wib == 3 && link == 0) {
        return 383 - wibframechan;
    } else if (!up && wib == 4 && link == 0) {
        return 287 - wibframechan;
    } else if (!up && wib == 5 && link == 1) {
        return 191 - wibframechan;
    } else if (!up && wib == 5 && link == 0) {
        return 95 - wibframechan;
    }

    else if (up && wib == 1 && link == 1) {
        return wibframechan;
    } else if (up && wib == 2 && link == 1) {
        return wibframechan + 96;
    } else if (up && wib == 1 && link == 0) {
        return wibframechan + 192;
    } else if (up && wib == 2 && link == 0) {
        return wibframechan + 288;
    } else if (up && wib == 3 && link == 1) {
        return wibframechan + 384;
    } else if (up && wib == 4 && link == 1) {
        return 959 - wibframechan;
    } else if (up && wib == 3 && link == 0) {
        return 863 - wibframechan;
    } else if (up && wib == 4 && link == 0) {
        return 767 - wibframechan;
    } else if (up && wib == 5 && link == 1) {
        return 671 - wibframechan;
    } else if (up && wib == 5 && link == 0) {
        return 575 - wibframechan;
    }

    return -2;
}


// constexpr int floorlog2(int x) { return (x < 2) ? 0 : 1 + floorlog2(x / 2); }
// replace with template metaprogramming
template <int n> struct floorlog2 {
    enum { val = 1 + floorlog2<(n / 2)>::val };
};

template <> struct floorlog2<1> {
    enum { val = 0 };
};

template <> struct floorlog2<0> {
    enum { val = 0 };
};

// constexpr int pow2(int x) { return x == 0 ? 1 : 2 * pow2(x - 1); }
// replace with template metaprogramming
template <int n> struct pow2 {
    enum { val = 2 * pow2<(n - 1)>::val };
};

template <> struct pow2<0> {
    enum { val = 1 };
};

template <class T, int N> int sum_reduce(const T *x) {
    static constexpr int leftN = pow2<floorlog2<N - 1>::val>::val > 0 ? pow2<floorlog2<N - 1>::val>::val : 0;
    static constexpr int rightN = N - leftN > 0 ? N - leftN : 0;
    if constexpr (N == 1) {
        return static_cast<int>(x[0]);
    } else if constexpr (N == 2) {
        return static_cast<int>(x[0]) + static_cast<int>(x[1]);
    } else {
        return sum_reduce<T, leftN>(x) + sum_reduce<T, rightN>(x + leftN);
    }
}

template <int N> bool or_reduce(bool *x) {
    static constexpr int leftN = pow2<floorlog2<N - 1>::val>::val > 0 ? pow2<floorlog2<N - 1>::val>::val : 0;
    static constexpr int rightN = N - leftN > 0 ? N - leftN : 0;
    if constexpr (N == 1) {
        return x[0];
    } else if constexpr (N == 2) {
        return x[0] || x[1];
    } else {
        return or_reduce<leftN>(x) || or_reduce<rightN>(x + leftN);
    }
}


void separate_helper(const uint8_t *bytes, ap_uint<14> *vals) {
    // NOTE:  this assumes little-endian

    uint8_t buf[3]; // where data is buffered

    size_t bytes_idx;

    for (bytes_idx = 0; bytes_idx < 3; bytes_idx++) {
        #pragma HLS unroll
        buf[bytes_idx] = bytes[bytes_idx];
    }

    // evaluate 0
    {
        unsigned int temp0 = buf[0];
        unsigned int temp1 = buf[1];
        temp1 &= 0x3F;

        vals[0] = temp0 | (temp1 << 8);
    }

    // shift values
    buf[0] = buf[1];
    buf[1] = buf[2];
    buf[2] = bytes[bytes_idx++];

    // evaluate 1
    {
        unsigned int temp0 = buf[0];
        temp0 >>= 6;
        unsigned int temp1 = buf[1];
        temp1 <<= 2;
        unsigned int temp2 = buf[2];
        temp2 &= 0xF;

        vals[1] = temp0 | temp1 | (temp2 << 10);
    }

    // shift values
    buf[0] = buf[1];
    buf[1] = buf[2];
    buf[2] = bytes[bytes_idx++];

    // shift values
    buf[0] = buf[1];
    buf[1] = buf[2];
    buf[2] = bytes[bytes_idx++];

    // evaluate 2
    {
        unsigned int temp0 = buf[0];
        temp0 >>= 4;
        unsigned int temp1 = buf[1];
        temp1 <<= 4;
        unsigned int temp2 = buf[2];
        temp2 &= 0x3;

        vals[2] = temp0 | temp1 | (temp2 << 12);
    }

    // shift values
    buf[0] = buf[1];
    buf[1] = buf[2];
    buf[2] = bytes[bytes_idx++];

    // evaluate 3
    {
        unsigned int temp1 = buf[1];
        temp1 >>= 2;
        unsigned int temp2 = buf[2];

        vals[2] = temp1 | (temp2 << 6);
    }
}


void separate_data(const uint8_t bytes[NUM_BYTES_Z], ap_uint<14> vals[NUM_VALS_Z]) {

    // 4*14 = 7*8; For every 7 bytes taken in, we produce 4
    constexpr size_t pat_values = 4;
    constexpr size_t pat_bytes = 7;

    for (size_t val_count = 0, byte_count = 0; byte_count < NUM_BYTES_Z; val_count += pat_values, byte_count += pat_bytes) {
        // std::cout << "byte_count = " << byte_count << ", val_count = " << val_count << std::endl;
        separate_helper(&bytes[byte_count], &vals[val_count]);
    }
}



void make_planes(int call_num, uint8_t infiledata[INBUF_SIZE], ap_uint<14> planes[TICK_SIZE][z_channels]) {
    constexpr size_t fragsize = (INFILE_SIZE / NUM_LINKS);  // this will be exact; there's a check in the host

    constexpr size_t OFFSETA = 140; // 80*14/8
    constexpr size_t OFFSETB = 364; // (128 + 80)*14/8

    constexpr auto fragHeadSize = sizeof(dunedaq::daqdataformats::FragmentHeader);
    constexpr auto fragSize = sizeof(dunedaq::daqdataformats::Fragment);

    constexpr auto wibHeaderSize = sizeof(dunedaq::detdataformats::wib2::WIB2Frame::Header);
    constexpr auto wibFrameSize = sizeof(dunedaq::detdataformats::wib2::WIB2Frame);  // this includes the header

    // std::cout << "fragment header size = " << std::dec << fragHeadSize << std::endl;
    // std::cout << "fragment size = " << fragSize << std::endl;

link_loop:
    for (size_t link = 0; link < NUM_LINKS; link++) {

        const size_t ibegin = link*fragsize;

        // uint8_t fragdata[fragsize];
        // for (size_t data_index = 0; data_index < fragsize; data_index++) {
        //     fragdata[i] = infiledata[

        // std::cout << "link = " << link << std::endl;
        // dunedaq::daqdataformats::Fragment frag( &infiledata[ibegin], dunedaq::daqdataformats::Fragment::BufferAdoptionMode::kReadOnlyMode);


        const auto wibFrameStart = ibegin + sizeof(dunedaq::daqdataformats::FragmentHeader);
        // let's first find the WIB header
        uint8_t wib_header_buf[wibHeaderSize];
//#pragma HLS ARRAY_PARTITION variable=wib_header_buf type=complete

    header_loop:
        for (size_t i = 0; i < wibHeaderSize; i++) {
            wib_header_buf[i] = infiledata[wibFrameStart + i];
        }

        const auto wib_header = reinterpret_cast<dunedaq::detdataformats::wib2::WIB2Frame::Header*>(wib_header_buf);

        const uint16_t crate = wib_header->crate;
        const uint16_t slot = wib_header->slot;
        const uint16_t link_from_frameheader = wib_header->link;

        // std::cout << "link = " << link << ", crate = " << crate << ", slot = " << slot << ", link from frame = " << link_from_frameheader << std::endl;
        // call_num is the window number we are currently processing
        const size_t iWindowBegin = call_num*SKIP_SIZE;

        //std::cout << "data pointer diff = " << static_cast<uint8_t*>(frag.get_data()) - &infiledata[ibegin] << std::endl;
        //std::cout << "header pointer diff = " << reinterpret_cast<uint8_t*>(frag.header_()) - &infiledata[ibegin] << std::endl;

        const auto wibDataStart = wibFrameStart + wibHeaderSize;


    frame_loop:
        for (size_t tick = 0; tick < TICK_SIZE; tick++) {

            //#pragma HLS dataflow

            // these are from the given link
            uint8_t z_plane_bytesa[NUM_BYTES_Z];
            uint8_t z_plane_bytesb[NUM_BYTES_Z];
            #pragma HLS array_partition variable=z_plane_bytesa type=complete
            #pragma HLS array_partition variable=z_plane_bytesb type=complete

            // these are from the given link
            ap_uint<14> z_plane_valsa[NUM_VALS_Z];
            ap_uint<14> z_plane_valsb[NUM_VALS_Z];

            #pragma HLS array_partition variable=z_plane_valsa type=complete
            #pragma HLS array_partition variable=z_plane_valsb type=complete

            const size_t iFrame = tick + iWindowBegin;

            const auto data_begin = wibDataStart + iFrame * wibFrameSize;

            //fill adc vectors
        frame_chan_loopa:
            for (size_t iByte = 0; iByte < NUM_BYTES_Z; iByte++) {
                z_plane_bytesa[iByte] = infiledata[data_begin + OFFSETA + iByte];
            }

        frame_chan_loopb:
            for (size_t iByte = 0; iByte < NUM_BYTES_Z; iByte++) {
                z_plane_bytesb[iByte] = infiledata[data_begin + OFFSETB + iByte];
            }

            // std::cout << "here link = " << link << ", crate = " << crate << ", slot = " << slot << ", link from frame = " << link_from_frameheader << std::endl;

            // create the vals
            separate_data(z_plane_bytesa, z_plane_valsa);
            separate_data(z_plane_bytesb, z_plane_valsb);

        fill_planes:
            for (size_t iVal = 0; iVal < NUM_VALS_Z; iVal++) {

                #pragma HLS dependence variable=planes type=inter false
                #pragma HLS dependence variable=planes type=intra false


                // std::cout << "before call: link = " << link << ", crate = " << crate << ", slot = " << slot << ", link from frame = " << link_from_frameheader << std::endl;

                auto offline_chana = getOfflineChannelZa(crate, slot, link_from_frameheader, iVal);

                // std::cout << "offline_chana = " << offline_chana << std::endl;

                // should be easy to add the other Z-channel
                if (offline_chana < z_channels) {
                    planes[tick][offline_chana] = z_plane_valsa[iVal];
                }
                auto offline_chanb = getOfflineChannelZb(crate, slot, link_from_frameheader, iVal);

                // std::cout << "offline_chanb = " << offline_chanb << std::endl;

                // should be easy to add the other Z-channel
                if (offline_chanb < z_channels) {
                    planes[tick][offline_chanb] = z_plane_valsb[iVal];
                }
            }
        }
    }
}

// void calculate_averages(int16_t planes[z_channels][TICK_SIZE], int16_t ave[z_channels]) {

//     // find average for ~128 entries for baseline subtraction
//     constexpr unsigned int NUM_AVE_TICKS = 128;
//     constexpr unsigned int LG_NUM_AVE_TICKS = 7;
// ave_loop:
//     for (unsigned int chan = 0; chan < z_channels; chan++) {
//         int aveval = sum_reduce<int16_t, NUM_AVE_TICKS>(&planes[chan][0]);
//         ave[chan] = aveval >> LG_NUM_AVE_TICKS;
//     }
// }

// void subtract_ave(int16_t planes[z_channels][TICK_SIZE], int16_t ave[z_channels], int16_t planes_noped[z_channels][TICK_SIZE]) {
// subtract_pipe:
//     for (size_t chan = 0; chan < z_channels; chan++) {
//         for (size_t tick = 0; tick < TICK_SIZE; tick++) {
// # pragm aHLS unroll
//             planes_noped[chan][tick] = planes[chan][tick] - ave[chan];
//         }
//     }
// }



//bool subtract_pedestal(int16_t skip_threshold, int16_t planes[z_channels][TICK_SIZE], int16_t planes_noped[z_channels][TICK_SIZE])
bool subtract_pedestal(ap_uint<14> planes[TICK_SIZE][z_channels], ap_int<15> planes_noped[TICK_SIZE][z_channels]) {
    // find average for ~128 entries for baseline subtraction
    constexpr unsigned int NUM_AVE_TICKS = 128;
    constexpr unsigned int LG_NUM_AVE_TICKS = 7;

    bool keep = false;


pedestal_pipe:
    for (size_t chan = 0; chan < z_channels; chan++) {

//         bool keep_arr[TICK_SIZE];
// //#pragma HLS ARRAY_PARTITION variable=keep_arr complete
//         int16_t sum = 0;
//         for (size_t tick = 0; tick < NUM_AVE_TICKS; tick++) {
//             sum += planes[tick][chan];
//         }

//         auto ave = sum >> LG_NUM_AVE_TICKS;

        for (size_t tick = 0; tick < TICK_SIZE; tick++) {
// //#pragma HLS unroll
//             auto val = planes[tick][chan] - ave;
            auto val = planes[tick][chan];
//             planes_noped[tick][chan] = val;
//             keep_arr[tick] = (val > skip_threshold || val < - skip_threshold);
            if (val > skip_threshold || val < - skip_threshold) {
                keep = true;
            }
        }
//        keep |= or_reduce<TICK_SIZE>(keep_arr);
    }
    return keep;
}



void call_cnn2d(int call_num, bool keep, ap_int<15> planes_noped[TICK_SIZE][z_channels], writebuf_t outdata[OUTBUF_SIZE]) {
    if (keep) {
        // std::cout << "keep is true" << std::endl;
        outdata[call_num*N_OUT] = 0;
        outdata[call_num*N_OUT+1] = 1;
    } else {
        // std::cout << "keep is false" << std::endl;
        outdata[call_num*N_OUT] = 1;
        outdata[call_num*N_OUT+1] = 0;
    }
}

void process_data(uint8_t infiledata[INBUF_SIZE],
                  writebuf_t outdata[OUTBUF_SIZE])
//                  int16_t skip_threshold)
{

#pragma HLS INTERFACE mode=m_axi port=infiledata bundle=indatabun
#pragma HLS INTERFACE mode=m_axi port=outdata bundle=outdatabun

//#pragma HLS ARRAY_PARTITION variable=infiledata type=cyclic factor=16

    std::cout << "s_num_channels =  " << dunedaq::detdataformats::wib2::WIB2Frame::s_num_channels << std::endl;


    // calculate range
    constexpr int NUM_CALLS = (n_frames - TICK_SIZE) / SKIP_SIZE + 1;

calls_loop:
    for (int call_num = 0; call_num < NUM_CALLS; call_num++) {
#pragma HLS dataflow

    //Z plane arrays
        ap_uint<14> planes[TICK_SIZE][z_channels];
//#pragma HLS array_partition variable=planes type=cyclic dim=2 factor=32
        ap_int<15> planes_noped[TICK_SIZE][z_channels];  // these have the pedestal subtracted
//#pragma HLS array_partition variable=planes_noped type=cyclic dim=2 factor=32

        make_planes(call_num, infiledata, planes);

        auto keep = subtract_pedestal(planes, planes_noped);

        // call_cnn2d(call_num, true, planes_noped, outdata);
        call_cnn2d(call_num, keep, planes_noped, outdata);
    }
}
