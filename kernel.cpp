#include "kernel.h"
#include "ap_int.h"
#include "hls_stream.h"
#include "nnet_utils/nnet_helpers.h"
#include <iostream>
#include <ap_fixed.h>
#include "defines3.h"


void process_data(const int infile_size, char infiledata[]/*,dune::FDHDChannelMapSP& chanmap,*/ ,int outdata[3])
{

	/*
	typedef ap_fixed<15, 15> fixed15_t;
	constexpr unsigned int NUM_LINKS = 10;
	const int total_channels = NUM_LINKS*dunedaq::detdataformats::wib2::WIB2Frame::s_num_channels;
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
            /*
            auto hdchaninfo = chanmap.GetChanInfoFromWIBElements (crate, slotloc, link_from_frameheader, iChan);
            unsigned int offline_chan = hdchaninfo.offlchan;
            unsigned int offline_plane = hdchaninfo.plane;
            */

	/*
            unsigned int offline_chan = 2;
            unsigned int offline_plane = iChan+ 1600;


            if(offline_plane == 2 && offline_chan - CHAN_MIN < z_channels)
            {
                for (int i = 0; i < n_frames; i++)
                {
                	//std::cout << "offline chan" << offline_chan << std::endl;
                	//std::cout << "pedestal: " << ave[iChan] << std::endl;
                    planes[offline_chan - CHAN_MIN][i] = adc_vectors[iChan][i]-ave[iChan];
                }
            }
            else if(offline_plane == 2)
            {
            	for (int i = 0; i < n_frames; i++)
            	{
            		//std::cout << "pedestal: " << ave[iChan] << std::endl;
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
    //Call 2D CNN

/*
    const int TICK_SIZE = 128;
    hls::stream<input_t> input_stream;

    hls::stream<result_t> output_stream;



        nnet::array<ap_fixed<15,15>, 1> ad;
        input_t zero = {0};
//works with no chanmap!



/*
        for (int i = 0; i < TICK_SIZE; i += TICK_SIZE)
        {
            for(int j = 0; j < z_channels; j++) {

                for(int k = 0; k <TICK_SIZE; k++) {
                   if(i+k < n_frames)
                	{
                	   int fill = planes[j][i+k];
                	    const nnet::array<ap_fixed<15,15>, 1> ad = {fill};
                	    //ad[0] = planes[j][i+k]; // this line prevents synthesis

                    	input_stream.write(ad); // this works with zero!
                    	auto rv = input_stream.read(); // allows input stream write
                    } else {
                    	input_stream.write(zero);
                    }

                }

            }
            */

	/*
        input_stream.write(zero); // this works with zero!
        auto rv = input_stream.read(); // allows input stream write

//works with no chanmap in function call

            myproject(input_stream, output_stream); //problem when calling this
/*
                    auto cc_prob = output_stream.read();

                    for (int i = 0; i < 3; i++)

                    	outdata[i] = cc_prob[i];
                    }
                    */

        //}


	  //float in[1];
	  //in[0] = 0;
	  //std::vector<float> in;
	  hls::stream<input_t> zero_padding2d_input("zero_padding2d_input");
	  input_t pack;
	  pack[0] = typename input_t::value_type(4);
	  zero_padding2d_input.write(pack);
	  //nnet::copy_data<float, input_t, 0, N_INPUT_1_1*N_INPUT_2_1*N_INPUT_3_1>(in, zero_padding2d_input);
	  hls::stream<result_t> layer19_out;

	  myproject(zero_padding2d_input,layer19_out );

	  auto cc_prob = layer19_out.read();

	                      for (int i = 0; i < 3; i++)
	                      {
	                      	outdata[i] = cc_prob[i];
	                      }



}
