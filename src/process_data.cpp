#include "process_data.h"
#include "hls_stream.h"
#include "defines.h"

#include <iostream>
#include <cmath>

// this is only for collection plane, and it subtracts outs 1600 from the returned vallue
int16_t getOfflineChannel(uint16_t crate, uint8_t slot, uint8_t link, uint16_t wibframechan ) {

    const auto up = static_cast<bool>(crate & 1); // odd number crates are upright
    const auto wib = slot + 1;

    if (208 <= wibframechan && wibframechan < 256) {
        if (!up && wib == 1 && link == 1) {
            return wibframechan + 272;
        } else if (!up && wib == 2 && link == 1) {
            return wibframechan + 368;
        } else if (!up && wib == 1 && link == 0) {
            return wibframechan + 464;
        } else if (!up && wib == 2 && link == 0) {
            return wibframechan + 560;
        } else if (!up && wib == 3 && link == 1) {
            return wibframechan + 656;
        } else if (!up && wib == 4 && link == 1) {
            return 687 - wibframechan;
        } else if (!up && wib == 3 && link == 0) {
            return 591 - wibframechan;
        } else if (!up && wib == 4 && link == 0) {
            return 495 - wibframechan;
        } else if (!up && wib == 5 && link == 1) {
            return 399 - wibframechan;
        } else if (!up && wib == 5 && link == 0) {
            return 303 - wibframechan;
        }

        else if (up && wib == 1 && link == 1) {
            return wibframechan - 208;
        } else if (up && wib == 2 && link == 1) {
            return wibframechan - 112;
        } else if (up && wib == 1 && link == 0) {
            return wibframechan - 16;
        } else if (up && wib == 2 && link == 0) {
            return wibframechan + 80;
        } else if (up && wib == 3 && link == 1) {
            return wibframechan + 176;
        } else if (up && wib == 4 && link == 1) {
            return 1167 - wibframechan;
        } else if (up && wib == 3 && link == 0) {
            return 1071 - wibframechan;
        } else if (up && wib == 4 && link == 0) {
            return 975 - wibframechan;
        } else if (up && wib == 5 && link == 1) {
            return 879 - wibframechan;
        } else if (up && wib == 5 && link == 0) {
            return 783 - wibframechan;
        }


    } else if (80 <= wibframechan && wibframechan < 128) {
        if (!up && wib == 1 && link == 1) {
            return wibframechan + 448;
        } else if (!up && wib == 2 && link == 1) {
            return wibframechan + 544;
        } else if (!up && wib == 1 && link == 0) {
            return wibframechan + 640;
        } else if (!up && wib == 2 && link == 0) {
            return wibframechan + 736;
        } else if (!up && wib == 3 && link == 1) {
            return wibframechan + 832;
        } else if (!up && wib == 4 && link == 1) {
            return 511 - wibframechan;
        } else if (!up && wib == 3 && link == 0) {
            return 415 - wibframechan;
        } else if (!up && wib == 4 && link == 0) {
            return 319 - wibframechan;
        } else if (!up && wib == 5 && link == 1) {
            return 223 - wibframechan;
        } else if (!up && wib == 5 && link == 0) {
            return 127 - wibframechan;
        }

        else if (up && wib == 1 && link == 1) {
            return wibframechan - 32;
        } else if (up && wib == 2 && link == 1) {
            return wibframechan + 64;
        } else if (up && wib == 1 && link == 0) {
            return wibframechan + 160;
        } else if (up && wib == 2 && link == 0) {
            return wibframechan + 256;
        } else if (up && wib == 3 && link == 1) {
            return wibframechan + 352;
        } else if (up && wib == 4 && link == 1) {
            return 991 - wibframechan;
        } else if (up && wib == 3 && link == 0) {
            return 895 - wibframechan;
        } else if (up && wib == 4 && link == 0) {
            return 799 - wibframechan;
        } else if (up && wib == 5 && link == 1) {
            return 703 - wibframechan;
        } else if (up && wib == 5 && link == 0) {
            return 607 - wibframechan;
        }

    } else {
        // not collection plane
        return -1;
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

void calculate_averages(int16_t planes[z_channels][TICK_SIZE], int16_t ave[z_channels]) {

    // find average for ~128 entries for baseline subtraction
    constexpr unsigned int NUM_AVE_TICKS = 128;
    constexpr unsigned int LG_NUM_AVE_TICKS = 7;
ave_loop:
    for (unsigned int chan = 0; chan < z_channels; chan++) {
        int aveval = sum_reduce<int16_t, NUM_AVE_TICKS>(&planes[chan][0]);
        ave[chan] = aveval >> LG_NUM_AVE_TICKS;
    }
}

void process_data(uint8_t infiledata[INBUF_SIZE],
                  writebuf_t outdata[OUTBUF_SIZE])
{

    std::cout << "s_num_channels =  " << dunedaq::detdataformats::wib2::WIB2Frame::s_num_channels << std::endl;

    //Z plane arrays
    static int16_t planes[z_channels][TICK_SIZE];
    static int16_t planes_noped[z_channels][TICK_SIZE];  // these have the pedestal subtracted


    //stores the average value of each channel
    static int16_t ave[z_channels];

    constexpr size_t fragsize = (INFILE_SIZE / NUM_LINKS);  // this will be exact; there's a check in the host

    // calculate range
    constexpr int NUM_CALLS = (n_frames - TICK_SIZE) / SKIP_SIZE + 1;

calls_loop:
    for (int call_num = 0; call_num < NUM_CALLS; call_num++) {
#pragma HLS dataflow

    link_loop:
        for (size_t link = 0; link < NUM_LINKS; link++) {

            std::cout << "link = " << link << std::endl;
            size_t ibegin = link*fragsize;
            dunedaq::daqdataformats::Fragment frag( &infiledata[ibegin], dunedaq::daqdataformats::Fragment::BufferAdoptionMode::kReadOnlyMode);

            const size_t iFrameBegin = call_num*SKIP_SIZE;

        frame_loop:
            for (size_t tick = 0; tick < TICK_SIZE; tick++) {

                const size_t iFrame = tick + iFrameBegin;
                // std::cout << "iFrame = " << iFrame << std::endl;
                auto frame = reinterpret_cast<dunedaq::detdataformats::wib2::WIB2Frame*>(static_cast<uint8_t*>(frag.get_data())
                                                                                         + iFrame*sizeof(dunedaq::detdataformats::wib2::WIB2Frame));

                auto crate = frame->header.crate;
                auto slot = frame->header.slot;
                uint8_t slotloc = slot & 0x7;
                auto link_from_frameheader = frame->header.link;

                //fill adc vectors
            frame_chan_loop:
                for (size_t iChan = 0; iChan < dunedaq::detdataformats::wib2::WIB2Frame::s_num_channels; iChan++) {
#pragma HLS pipeline

                    auto adc = frame->get_adc(iChan);

                    auto offline_chan = getOfflineChannel(crate, slotloc, link_from_frameheader, iChan);

                    if(offline_chan >= 0 && offline_chan < z_channels) {
                        planes[offline_chan][tick] = adc;
                    }
                }
            }
        }

        // find average for ~128 entries for baseline subtraction
        constexpr unsigned int NUM_AVE_TICKS = 128;
        constexpr unsigned int LG_NUM_AVE_TICKS = 7;
    ave_loop:
        for (unsigned int chan = 0; chan < z_channels; chan++) {
            int aveval = sum_reduce<int16_t, NUM_AVE_TICKS>(&planes[chan][0]);
            ave[chan] = aveval >> LG_NUM_AVE_TICKS;
        }

        //calculate_averages(planes, ave);

        for (size_t chan = 0; chan < z_channels; chan++) {
            for (size_t tick = 0; tick < TICK_SIZE; tick++) {
# pragma HLS unroll
                planes_noped[chan][tick] = planes[chan][tick] - ave[chan];
            }
        }


        hls::stream<input_t> zero_padding2d_input("zero_padding2d_input");
#pragma HLS STREAM variable=zero_padding2d_input depth=96000
        hls::stream<result_t> result_out;
#pragma HLS STREAM variable=result_out depth=2


        std::cout << "part 1, call number: " << call_num << std::endl;
        for (size_t chan = 0; chan < z_channels; chan++) {
            for (size_t tick = 0; tick < TICK_SIZE; tick++) {
                input_t pack;
                pack[0] = planes_noped[chan][tick];
                zero_padding2d_input.write(pack);
            }
        }
        //first half of outdata is filled with the first side of z_plane outputs
        cnn2d(zero_padding2d_input, result_out);
        auto cc_prob = result_out.read();
    filling_loop:
        for (int z = 0; z < N_OUT; z++) {
            std::cout << "cc_prob[" << z << "] = " << static_cast<float>(cc_prob[z]) << std::endl;
            outdata[call_num*N_OUT + z] = cc_prob[z];
        }
    }

}
