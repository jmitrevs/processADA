#include "kernel.h"
#include<iostream>

void process_data(const int infile_size, char infiledata[], dune::FDHDChannelMapSP& chanmap, char outdata[500])
{
	constexpr unsigned int NUM_LINKS = 10;
	const int total_channels = NUM_LINKS*dunedaq::detdataformats::wib2::WIB2Frame::s_num_channels;
	const int n_frames = 6000;

	static int adc_vectors[dunedaq::detdataformats::wib2::WIB2Frame::s_num_channels][n_frames];
	static int planes[total_channels][n_frames];

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

    	std::cout << "processing link " << link << std::endl;
        unsigned int slot = 0, link_from_frameheader = 0, crate = 0;
        size_t ibegin = link*fragsize;
        dunedaq::daqdataformats::Fragment frag( &infiledata[ibegin], dunedaq::daqdataformats::Fragment::BufferAdoptionMode::kReadOnlyMode);

        frame_loop:
        for (size_t iFrame = 0; iFrame < n_frames; ++iFrame)
        {

        	if (iFrame % 1000 == 0)
        		std::cout << "processing frame " << iFrame << std::endl;

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

            auto hdchaninfo = chanmap.GetChanInfoFromWIBElements (crate, slotloc, link_from_frameheader, iChan);
            unsigned int offline_chan = hdchaninfo.offlchan;
            unsigned int offline_plane = hdchaninfo.plane;

            if(offline_plane == 0)
            {
                for (int i = 0; i < n_frames; i++)
                {
                    planes[offline_chan][i] = adc_vectors[iChan][i]-ave[iChan];
                }
            }
            else if(offline_plane == 1)
            {
                for (int i = 0; i < n_frames; i++)
                {
                    planes[offline_chan][i] = adc_vectors[iChan][i]-ave[iChan];
                }
            }
            else
            {
                for (int i = 0; i < n_frames; i++)
                {
                    planes[offline_chan][i] = adc_vectors[iChan][i]-ave[iChan];
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

}
