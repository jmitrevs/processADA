#include "process_data.h"
#include "hls_stream.h"
#include "defines.h"
#include "remap.h"

#include <iostream>
#include <cmath>

constexpr int16_t skip_threshold = 1024;

constexpr size_t NUM_VALS_Z = 48;
//constexpr size_t NUM_BYTES_Z = 84;  // (48*14/8)
constexpr size_t NUM_WORDS_Z = 11;  // ceil(48*14/64)

using dunedaq::detdataformats::wib2::s_bits_per_adc;


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


void separate_helper5(const uint64_t *words, ap_uint<14> *vals, unsigned int offset) {
    constexpr uint64_t mask = 0x3FFF;

    const int from_next = 8 - offset;

    vals[0] = (words[0] >> offset) & mask;
    vals[1] = (words[0] >> s_bits_per_adc + offset) & mask;
    vals[2] = (words[0] >> 2*s_bits_per_adc + offset) & mask;
    vals[3] = (words[0] >> 3*s_bits_per_adc + offset) & mask;
    vals[4] = (words[0] >> 4*s_bits_per_adc + offset) & mask | (words[1] << from_next) & mask;
}

void separate_helper4(const uint64_t *words, ap_uint<14> *vals, unsigned int offset) {
    constexpr uint64_t mask = 0x3FFF;

    const int from_next = 22 - offset;

    vals[0] = (words[0] >> offset) & mask;
    vals[1] = (words[0] >> s_bits_per_adc + offset) & mask;
    vals[2] = (words[0] >> 2*s_bits_per_adc + offset) & mask;
    vals[3] = (words[0] >> 3*s_bits_per_adc + offset) & mask | (words[1] << from_next) & mask;
}
   
void separate_helper2(const uint64_t *words, ap_uint<14> *vals, unsigned int offset) {
    constexpr uint64_t mask = 0x3FFF;

    vals[0] = (words[0] >> offset) & mask;
    vals[1] = (words[0] >> s_bits_per_adc + offset) & mask;
}    


void separate_data(const uint64_t wordsa[NUM_WORDS_Z],
                   const uint64_t wordsb[NUM_WORDS_Z],
                   ap_uint<14> valsa[NUM_VALS_Z],
                   ap_uint<14> valsb[NUM_VALS_Z]) {

    separate_helper5(&wordsa[0], &valsa[0], 0);
    separate_helper5(&wordsb[0], &valsb[0], 0);

    separate_helper5(&wordsa[1], &valsa[5], 6);
    separate_helper5(&wordsb[1], &valsb[5], 6);

    separate_helper4(&wordsa[2], &valsa[10], 12);
    separate_helper4(&wordsb[2], &valsb[10], 12);

    separate_helper5(&wordsa[3], &valsa[14], 4);
    separate_helper5(&wordsb[3], &valsb[14], 4);

    separate_helper4(&wordsa[4], &valsa[19], 10);
    separate_helper4(&wordsb[4], &valsb[19], 10);

    separate_helper5(&wordsa[5], &valsa[23], 2);
    separate_helper5(&wordsb[5], &valsb[23], 2);

    separate_helper4(&wordsa[6], &valsa[28], 8);
    separate_helper4(&wordsb[6], &valsb[28], 8);

    // pattern repeats
    separate_helper5(&wordsa[7], &valsa[32], 0);
    separate_helper5(&wordsb[7], &valsb[32], 0);

    separate_helper5(&wordsa[8], &valsa[37], 6);
    separate_helper5(&wordsb[8], &valsb[37], 6);

    separate_helper4(&wordsa[9], &valsa[42], 12);
    separate_helper4(&wordsb[9], &valsb[42], 12);

    separate_helper2(&wordsa[10], &valsa[46], 4);
    separate_helper2(&wordsb[10], &valsb[46], 4);
}

void fill_words(const readbuf_t *infiledata, readbuf_t* z_plane_wordsa, size_t offseta, readbuf_t* z_plane_wordsb, size_t offsetb) {
fill_words_loop:
    for (size_t iWord = 0; iWord < NUM_WORDS_Z; iWord++) {
#pragma HLS pipeline ii=2
        z_plane_wordsa[iWord] = infiledata[offseta + iWord];
        z_plane_wordsb[iWord] = infiledata[offsetb + iWord];
        // std::cout << std::dec << "iWord " << iWord << std::hex << ", worda = " << z_plane_wordsa[iWord]
        //          << ", wordb = " << z_plane_wordsb[iWord] << std::endl;
    }
}

void fill_planes(const ap_uint<14> valsa[NUM_VALS_Z],
                 const ap_uint<14> valsb[NUM_VALS_Z],
                 ap_uint<14> planes[TICK_SIZE][z_channels],
                 size_t tick,
                 uint16_t crate,
                 uint16_t slot,
                 uint16_t link_from_frameheader) {

fill_planes_loop:
    for (size_t iVal = 0; iVal < NUM_VALS_Z; iVal++) {

//#pragma HLS pipeline ii=3

        #pragma HLS unroll factor=4

#pragma HLS dependence variable=planes type=inter false
#pragma HLS dependence variable=planes type=intra false

        auto offline_chana = getOfflineChannelZa(crate, slot, link_from_frameheader, iVal);

        // should be easy to add the other Z-channel
        if (offline_chana < z_channels) {
            planes[tick][offline_chana] = valsa[iVal];
        }

        auto offline_chanb = getOfflineChannelZb(crate, slot, link_from_frameheader, iVal);
        // should be easy to add the other Z-channel
        if (offline_chanb < z_channels) {
            planes[tick][offline_chanb] = valsb[iVal];
        }
    }
}

void make_planes(int call_num, readbuf_t infiledata[INBUF_SIZE], ap_uint<14> planes[TICK_SIZE][z_channels]) {
    // note, fragsize is in readbuf_t size (64 bit words)
    constexpr size_t fragsize = (INFILE_SIZE / NUM_LINKS);  // this will be exact; there's a check in the host

    constexpr size_t OFFSETA = 18; // 80*14/64 + 0.5
    constexpr size_t OFFSETB = 46; // (128 + 80)*14/64 + 0.5

    constexpr auto fragHeaderWords = sizeof(dunedaq::daqdataformats::FragmentHeader) / sizeof(readbuf_t);  // divides evenly

    constexpr auto wibHeaderSizeBytes = sizeof(dunedaq::detdataformats::wib2::WIB2Frame::Header);
    
    constexpr auto wibHeaderWordsFloor = wibHeaderSizeBytes / sizeof(readbuf_t);  // floor division
    constexpr auto wibHeaderWordsCeil = (wibHeaderSizeBytes + sizeof(readbuf_t) - 1) / sizeof(readbuf_t);  // ceil division

    constexpr auto wibFrameSize = sizeof(dunedaq::detdataformats::wib2::WIB2Frame);  // this includes the header

    // std::cout << "fragment header size = " << std::dec << fragHeadSize << std::endl;
    // std::cout << "fragment size = " << fragSize << std::endl;

    // std::cout << "wib header size = " << std::dec << wibHeaderSize << std::endl;
    // std::cout << "wib size = " << wibFrameSize << std::endl;


link_loop:
    for (size_t link = 0; link < NUM_LINKS; link++) {

        const size_t ibegin = link*fragsize;

        // uint8_t fragdata[fragsize];
        // for (size_t data_index = 0; data_index < fragsize; data_index++) {
        //     fragdata[i] = infiledata[

        // std::cout << "link = " << link << std::endl;
        // dunedaq::daqdataformats::Fragment frag( &infiledata[ibegin], dunedaq::daqdataformats::Fragment::BufferAdoptionMode::kReadOnlyMode);

        // in 64-bit words
        const auto wibFrameStart = ibegin + fragHeaderWords;
        // let's first find the WIB header
        readbuf_t wib_header_buf[wibHeaderWordsCeil];
//#pragma HLS ARRAY_PARTITION variable=wib_header_buf type=complete

    header_loop:
        for (size_t i = 0; i < wibHeaderWordsCeil; i++) {
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

        const auto wibDataStart = wibFrameStart + wibHeaderWordsFloor;


    frame_loop:
        for (size_t tick = 0; tick < TICK_SIZE; tick++) {

            #pragma HLS dataflow

            // these are from the given link  -- NOTE: assumes readbuf_t = uint64_t;
            readbuf_t z_plane_wordsa[NUM_WORDS_Z];
            readbuf_t z_plane_wordsb[NUM_WORDS_Z];
            #pragma HLS array_partition variable=z_plane_wordsa type=complete
            #pragma HLS array_partition variable=z_plane_wordsb type=complete

            // these are from the given link
            ap_uint<14> z_plane_valsa[NUM_VALS_Z];
            ap_uint<14> z_plane_valsb[NUM_VALS_Z];

            #pragma HLS array_partition variable=z_plane_valsa type=complete
            #pragma HLS array_partition variable=z_plane_valsb type=complete

            const size_t iFrame = tick + iWindowBegin;

            const auto data_begin = wibDataStart + iFrame * wibFrameSize;  // note that the first 32 bits are not actually used

            //fill adc vectors
            fill_words(infiledata, z_plane_wordsa, data_begin + OFFSETA, z_plane_wordsb, data_begin + OFFSETB);

            // create the vals
            separate_data(z_plane_wordsa, z_plane_wordsb, z_plane_valsa, z_plane_valsb);

            // for (size_t iVal = 0; iVal < NUM_VALS_Z; iVal++) {
            //     std::cout << std::dec << "iVal = " << iVal << std::hex << ", vala = " << z_plane_valsa[iVal] 
            //               << ", valb = " << z_plane_valsb[iVal] << std::endl;
            // } 

            fill_planes(z_plane_valsa, z_plane_valsb, planes, tick, crate, slot, link_from_frameheader);
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
        uint32_t sum = 0;
        for (size_t tick = 0; tick < NUM_AVE_TICKS; tick++) {
            sum += planes[tick][chan];
        }

        auto ave = sum >> LG_NUM_AVE_TICKS;
        // std::cout << "ave = " << std::dec << ave << std::endl;
        // std::cout << "chan = " << chan << ", sum = " << sum << std::endl;

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

// readbuf_t changed to uint64_t
void process_data(readbuf_t infiledata[INBUF_SIZE],
                  writebuf_t outdata[OUTBUF_SIZE])
//                  int16_t skip_threshold)
{

#pragma HLS INTERFACE mode=m_axi port=infiledata bundle=indatabun
#pragma HLS INTERFACE mode=m_axi port=outdata bundle=outdatabun

//#pragma HLS ARRAY_PARTITION variable=infiledata type=cyclic factor=16

    // std::cout << "s_num_channels =  " << dunedaq::detdataformats::wib2::WIB2Frame::s_num_channels << std::endl;


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
