#include "kernel.h"
#include "ap_int.h"
#include "hls_stream.h"
#include "nnet_utils/nnet_helpers.h"
#include <iostream>
#include <ap_fixed.h>
#include "defines3.h"

void process_data(const int infile_size, char infiledata[],dune::FDHDChannelMapSP& chanmap ,int outdata[276])
{
	//Create variables

	constexpr unsigned int NUM_LINKS = 10;
	const int z_channels = 480;
	const int n_frames = 6000;

	static int adc_vectors[dunedaq::detdataformats::wib2::WIB2Frame::s_num_channels][n_frames];
	static int planes[z_channels][n_frames];
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

    //Call 2D CNN

    const int TICK_SIZE = 128;
    hls::stream<input_t> zero_padding2d_input("zero_padding2d_input");
    input_t pack;
    hls::stream<result_t> layer19_out;

    for (int i = 0; i < TICK_SIZE; i += TICK_SIZE)
    {
        for(int j = 0; j < z_channels; j++) {

            for(int k = 0; k <TICK_SIZE; k++) {
               if(i+k < n_frames)
            	{
            	   int fill = planes[j][i+k];
            	   pack[0] = typename input_t::value_type(fill);
            	   zero_padding2d_input.write(pack);
                } else {
                	pack[0] = typename input_t::value_type(0);
                	zero_padding2d_input.write(pack);
                }

            }

        }

        myproject(zero_padding2d_input, layer19_out);

                auto cc_prob = layer19_out.read();

                for (int i = 0; i < 3; i++)

                	outdata[i] = cc_prob[i];
                }

    //only does ticks by 128, there will be some ticks never processed

	for (int i = 0; i < 128; i += TICK_SIZE)
	{
		for(int j = 0; j < z_channels; j++)
		{
			for(int k = 0; k <TICK_SIZE; k++)
			{
				   int fill = planes[j][i+k];
				   pack[0] = typename input_t::value_type(fill);
				   zero_padding2d_input.write(pack);
			}
		}

		myproject(zero_padding2d_input, layer19_out);
		auto cc_prob = layer19_out.read();
		for (int z = 0; z < 3; z++)
		{
			outdata[z+(i/TICK_SIZE)*3] = cc_prob[z];

		}
	}


	for (int i = 0; i < n_frames; i += TICK_SIZE)
	{
		for(int j = 0; j < z_channels; j++)
		{
			for(int k = 0; k <TICK_SIZE; k++)
			{
				   int fill = planes2[j][i+k];
				   pack[0] = typename input_t::value_type(fill);
				   zero_padding2d_input.write(pack);
			}
		}

		myproject(zero_padding2d_input, layer19_out);
		auto cc_prob = layer19_out.read();
		int side1_data = 138;
		for (int z = 0; z < 3; z++)
		{
			outdata[side1_data+z+(i/TICK_SIZE)*3] = cc_prob[z];
		}
	}


}

