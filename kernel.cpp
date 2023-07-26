#include "kernel.h"
#include "ap_int.h"
#include "hls_stream.h"
#include <iostream>
#include <ap_fixed.h>

void process_data(const int infile_size, char infiledata[], dune::FDHDChannelMapSP& chanmap, char outdata[500])
{
	typedef ap_fixed<15, 15> fixed15_t;
	constexpr unsigned int NUM_LINKS = 10;
	const int total_channels = NUM_LINKS*dunedaq::detdataformats::wib2::WIB2Frame::s_num_channels;
	const int z_channels = 480;
	const int n_frames = 6000;

	static int adc_vectors[dunedaq::detdataformats::wib2::WIB2Frame::s_num_channels][n_frames];
	static fixed15_t planes[z_channels][n_frames];
	static int planes2[z_channels][n_frames];

	if ( infile_size% NUM_LINKS != 0)
	{
	    std::cout << "Input file size not divisible by " << NUM_LINKS << ". Stopping." << std::endl;
	    return;
	}

	size_t fragsize = (infile_size / NUM_LINKS);

    //Fill planes array and subtract pedestal

    link_loop:
    for (size_t link = 0; link < NUM_LINKS; ++link)
    {
    	int ave[dunedaq::detdataformats::wib2::WIB2Frame::s_num_channels];

        unsigned int slot = 0, link_from_frameheader = 0, crate = 0;
        size_t ibegin = link*fragsize;
        dunedaq::daqdataformats::Fragment frag( &infiledata[ibegin], dunedaq::daqdataformats::Fragment::BufferAdoptionMode::kReadOnlyMode);

        frame_loop:
        for (size_t iFrame = 0; iFrame < n_frames; ++iFrame)
        {


            auto frame = reinterpret_cast<dunedaq::detdataformats::wib2::WIB2Frame*>(static_cast<uint8_t*>(frag.get_data()) + iFrame*sizeof(dunedaq::detdataformats::wib2::WIB2Frame));
            if (iFrame == 0)
            {
                crate = frame->header.crate;
                slot = frame->header.slot;
                link_from_frameheader = frame->header.link;
            }
            frame_chan_loop:
            for (size_t iChan = 0; iChan < dunedaq::detdataformats::wib2::WIB2Frame::s_num_channels; ++iChan)
            {
                auto adc = frame->get_adc(iChan);

                adc_vectors[iChan][iFrame] = adc;

            }
        }
     	first_chan_loop:
        for (size_t iChan = 0; iChan < dunedaq::detdataformats::wib2::WIB2Frame::s_num_channels; ++iChan)
        {
        	int sum = 0;
        	const int AVG_SIZE = 100;

        	first_chan_frame_loop:
        	for (int i =0; i<AVG_SIZE; i++)
        	{
        	      sum += adc_vectors[iChan][i];
        	}
            ave[iChan] = sum / AVG_SIZE;
        }

        second_chan_loop:
        for (size_t iChan = 0; iChan < dunedaq::detdataformats::wib2::WIB2Frame::s_num_channels; ++iChan)
        {
            uint32_t slotloc = slot;
            slotloc &= 0x7;

            const int CHAN_MIN = 1600;
            auto hdchaninfo = chanmap.GetChanInfoFromWIBElements (crate, slotloc, link_from_frameheader, iChan);
            unsigned int offline_chan = hdchaninfo.offlchan;
            unsigned int offline_plane = hdchaninfo.plane;

            if(offline_plane == 2 && offline_chan - CHAN_MIN < z_channels)
            {
                for (int i = 0; i < n_frames; i++)
                {
                	//std::cout << "offline chan" << offline_chan << std::endl;
                    planes[offline_chan - CHAN_MIN][i] = adc_vectors[iChan][i]-ave[iChan];
                }
            }
            else if(offline_plane == 2)
            {
            	for (int i = 0; i < n_frames; i++)
            	{
            		planes2[offline_chan - CHAN_MIN - z_channels][i] = adc_vectors[iChan][i]-ave[iChan];
            	}
            }
        }
    }

    //check if planes is filled correctly
/*
    for(int i = 0; i <10; i++)
    {
    	std::cout<<planes[4][i] << std::endl;
    }
*/
    const int TICK_SIZE = 128;

    hls::stream<fixed15_t> input_stream;
    hls::stream<fixed15_t> output_stream;

    for(int i = 0; i < n_frames; i += TICK_SIZE) {
        //fixed15_t chunk[z_channels][TICK_SIZE];


        for(int j = 0; j < z_channels; j++) {
            for(int k = 0; k < TICK_SIZE; k++) {
                if(i+k < n_frames) {
                    //chunk[j][k] = planes[j][i+k];
                	input_stream.write(planes[j][i+k]);
                } else {
                	input_stream.write(0);
                }



            }
        }

        //myproject(input_stream, output_stream);

        //auto cc_prob = output_stream.read();
        //auto nc_prob = output_stream.read();
        //auto back = output_stream.read();
    }


}
