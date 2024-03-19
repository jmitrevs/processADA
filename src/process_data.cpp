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

void process_data(uint8_t infiledata[INBUF_SIZE],
                  writebuf_t outdata[OUTBUF_SIZE])
{

    //Create variables
    constexpr unsigned int z_channels = 480;
    constexpr unsigned int n_frames = 6000;

    std::cout << "s_num_channels =  " << dunedaq::detdataformats::wib2::WIB2Frame::s_num_channels << std::endl;

    //Z plane arrays for both sides
    static int16_t planes[z_channels][n_frames];
    // static int16_t planes2[z_channels][n_frames];

    //array to track adc values link by link. Is essentially 60 2D arrays that are 256 channels by 100 ticks
    //static uint16_t adc_vectors[dunedaq::detdataformats::wib2::WIB2Frame::s_num_channels][n_frames];


    //stores the average value of each channel
    static int ave[z_channels];
    // static int ave2[z_channels];

    // //stores the average sq value of each channel
    // static int avesq[z_channels];
    // static int avesq2[z_channels];

    constexpr size_t fragsize = (INFILE_SIZE / NUM_LINKS);  // this will be exact; there's a check in the host

link_loop:
    for (size_t link = 0; link < NUM_LINKS; link++)
    {

        std::cout << "link = " << link << std::endl;
        uint16_t crate;
        uint8_t slot;
        uint8_t link_from_frameheader;
        uint8_t slotloc; // = slot & 0x7;
        size_t ibegin = link*fragsize;
        dunedaq::daqdataformats::Fragment frag( &infiledata[ibegin], dunedaq::daqdataformats::Fragment::BufferAdoptionMode::kReadOnlyMode);

    frame_loop:
        for (size_t iFrame = 0; iFrame < n_frames; iFrame++) {
            // std::cout << "iFrame = " << iFrame << std::endl;
            auto frame = reinterpret_cast<dunedaq::detdataformats::wib2::WIB2Frame*>(static_cast<uint8_t*>(frag.get_data()) + iFrame*sizeof(dunedaq::detdataformats::wib2::WIB2Frame));
            if (iFrame == 0)
            {
                crate = frame->header.crate;
                slot = frame->header.slot;
                slotloc = slot & 0x7;
                link_from_frameheader = frame->header.link;
            }

            //fill adc vectors
        frame_chan_loop:
            for (size_t iChan = 0; iChan < dunedaq::detdataformats::wib2::WIB2Frame::s_num_channels; iChan++) {
                #pragma HLS pipeline
                //std::cout << "iChan = " << iChan << std::endl;
                auto adc = frame->get_adc(iChan); //get adc causes a violation, can be rewritten

                auto offline_chan = getOfflineChannel(crate, slotloc, link_from_frameheader, iChan);

                if(offline_chan >= 0 && offline_chan < z_channels) {
                    planes[offline_chan][iFrame] = adc;
                // } else if(offline_chan >= 0 && offline_chan - z_channels < z_channels) {
                //     planes2[offline_chan - z_channels][iFrame] = adc;
                }
            }
        }
    }

    std::cout << "about to calculate averages" << std::endl;

    // find average for ~128 entries for baseline subtraction
    const unsigned int NUM_AVE_TICKS = 128;
    const unsigned int LG_NUM_AVE_TICKS = 7;
ave_loop:
    for (unsigned int chan; chan < z_channels; chan++) {
        ave[chan] = 0;
        //ave2[chan] = 0;
        for (int i = 0; i < NUM_AVE_TICKS; i++) {
            ave[chan] += planes[chan][i];
            //ave2[chan] += planes2[chan][i];
        }
        ave[chan] >>= LG_NUM_AVE_TICKS;
        //ave2[chan] >>= LG_NUM_AVE_TICKS;
    }

    // // find averages2 for ~128 entries for baseline subtraction
    // for (unsigned int chan; chan < z_channels; chan++) {
    //     avesq[chan] = 0;
    //     avesq2[chan] = 0;
    //     for (int i = 0; i < NUM_AVE_TICKS; i++) {
    //         avesq[chan] += planes[chan][i] * planes[chan][i];
    //         avesq2[chan] += planes2[chan][i] * planes2[chan][i];
    //     }
    //     avesq[chan] >>= LG_NUM_AVE_TICKS;
    //     avesq2[chan] >>= LG_NUM_AVE_TICKS;
    //     std::cout << "chan " << chan << " is " << ave[chan] << " +- " << std::sqrt(avesq[chan] - ave[chan] * ave[chan]) << std::endl;
    //     std::cout << "chan' " << chan << " is " << ave2[chan] << " +- " << std::sqrt(avesq2[chan] - ave2[chan] * ave2[chan]) << std::endl;
    // }

    std::cout << "averages calculated" << std::endl;

    //Call 2D CNN on both sides of z plane

    constexpr int TICK_SIZE = 200;
    constexpr int N_OUT = 3;

    hls::stream<input_t> zero_padding2d_input("zero_padding2d_input");
    #pragma HLS STREAM variable=zero_padding2d_input depth=61500
    // hls::stream<input_t> zero_padding2d_input2("zero_padding2d_input2");
    // #pragma HLS STREAM variable=zero_padding2d_input2 depth=61500
    // input_t pack;  // array of size 1
    hls::stream<result_t> result_out;
    #pragma HLS STREAM variable=result_out depth=2
    // hls::stream<result_t> result_out2;
    // #pragma HLS STREAM variable=result_out2 depth=2

    //only does ticks by 128, there will be some ticks never processed

    // calculate range
    constexpr int NUM_CALLS = n_frames / TICK_SIZE;

calls_loop:
    for (int i = 0; i < NUM_CALLS; i++) {
        std::cout << "part 1, call number: " << i << std::endl;
        for(int j = 0; j < z_channels; j++) {
            for(int k = 0; k <TICK_SIZE; k++) {
                auto fill = planes[j][i*TICK_SIZE + k] - ave[j];
                input_t pack;  // array of size 1
                pack[0] = fill;
                zero_padding2d_input.write(pack);
            }
        }
        //first half of outdata is filled with the first side of z_plane outputs
        cnn2d(zero_padding2d_input, result_out);
        auto cc_prob = result_out.read();
    filling_loop:
        for (int z = 0; z < N_OUT; z++) {
            outdata[i*N_OUT + z] = cc_prob[z];
        }
    }

    // //only does ticks by 128, there will be some ticks never processed

//     const int OUTPUT_OFFSET = N_OUT * NUM_CALLS;
// calls_loop2:
//     for (int i = 0; i < NUM_CALLS; i++) {
//         std::cout << "part 2, call number: " << i << std::endl;
//         for(int j = 0; j < z_channels; j++) {
//             for(int k = 0; k <TICK_SIZE; k++) {
//                 auto fill = planes2[j][i*TICK_SIZE + k] - ave2[j];
//                 input_t pack;  // array of size 1
//                 pack[0] = fill;
//                 zero_padding2d_input2.write(pack);
//             }
//         }
//         cnn2d(zero_padding2d_input2, result_out2);
//         auto cc_prob = result_out2.read();
//         for (int z = 0; z < N_OUT; z++) {
//             outdata[OUTPUT_OFFSET + i*N_OUT + z] = cc_prob[z];
//         }
//     }
}
