#include "kernel.h"
#include<iostream>

constexpr unsigned int NUM_LINKS = 10;

const int num_ticks = 6000;
const int total_channels = NUM_LINKS*dunedaq::detdataformats::wib2::WIB2Frame::s_num_channels;

int adc_vectors[dunedaq::detdataformats::wib2::WIB2Frame::s_num_channels][num_ticks];
int planes[total_channels][num_ticks];


void process_data(const int infile_size, char infiledata[], dune::FDHDChannelMapSP& chanmap, char outdata[500])
{

    if ( infile_size% NUM_LINKS != 0)
    {
        std::cout << "Input file size not divisible by " << NUM_LINKS << ". Stopping." << std::endl;
        return;
    }
    size_t fragsize = (infile_size / NUM_LINKS);

    const size_t n_frames = (fragsize - sizeof(dunedaq::daqdataformats::FragmentHeader))/sizeof(dunedaq::detdataformats::wib2::WIB2Frame);

    int chan_min = 1000000;

//    //Get absolute minimum channel for mapping
//
//    link_loop:
//    for (size_t link = 0; link < NUM_LINKS; ++link)
//    {
//
//        size_t ibegin = link*fragsize;
//        dunedaq::daqdataformats::Fragment frag( &infiledata[ibegin], dunedaq::daqdataformats::Fragment::BufferAdoptionMode::kReadOnlyMode);
//        const size_t n_frames = (fragsize - sizeof(dunedaq::daqdataformats::FragmentHeader))/sizeof(dunedaq::detdataformats::wib2::WIB2Frame);
//
//        unsigned int slot = 0, link_from_frameheader = 0, crate = 0;
//
//        auto frame = reinterpret_cast<dunedaq::detdataformats::wib2::WIB2Frame*>(static_cast<uint8_t*>(frag.get_data()) );
//
//        crate = frame->header.crate;
//        slot = frame->header.slot;
//        link_from_frameheader = frame->header.link;
//
//
//        link_chan_loop:
//        for (size_t iChan = 0; iChan < dunedaq::detdataformats::wib2::WIB2Frame::s_num_channels; ++iChan)
//        {
//            uint32_t slotloc = slot;
//            slotloc &= 0x7;
//
//            auto hdchaninfo = chanmap.GetChanInfoFromWIBElements (crate, slotloc, link_from_frameheader, iChan);
//            int offline_chan = hdchaninfo.offlchan;
//
//            if (offline_chan < chan_min)
//            {
//                chan_min = hdchaninfo.offlchan;
//            }
//
//        }
//    }
//    std::cout << "chan min: " << chan_min << std::endl;

    //Fill planes array and subtract pedestal

    second_link_loop:
    for (size_t link = 0; link < NUM_LINKS; ++link)
    {
    	int ave[dunedaq::detdataformats::wib2::WIB2Frame::s_num_channels];

    	std::cout << "processing link " << link << std::endl;
        unsigned int slot = 0, link_from_frameheader = 0, crate = 0;
        size_t ibegin = link*fragsize;
        dunedaq::daqdataformats::Fragment frag( &infiledata[ibegin], dunedaq::daqdataformats::Fragment::BufferAdoptionMode::kReadOnlyMode);

        int sums[dunedaq::detdataformats::wib2::WIB2Frame::s_num_channels] = {0};

        second_link_frame_loop:
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
            second_link_frame_chan_loop:
            for (size_t iChan = 0; iChan < dunedaq::detdataformats::wib2::WIB2Frame::s_num_channels; ++iChan)
            {

                auto adc = frame->get_adc(iChan);

                //sums[iChan] += adc;

                adc_vectors[iChan][iFrame] = adc;

            }
        }
     	secon_link_second_frame_chan_loop:
          for (size_t iChan = 0; iChan < dunedaq::detdataformats::wib2::WIB2Frame::s_num_channels; ++iChan)
            {
        	  int sum = 0;
        	  	  for (int i =0; i<100; i++)
        	  	  {
        	  		  sum += adc_vectors[iChan][i];
        	  	  }
                 ave[iChan] = sum / 100;

            }


        second_link_third_chan_loop:
        for (size_t iChan = 0; iChan < dunedaq::detdataformats::wib2::WIB2Frame::s_num_channels; ++iChan)
        {
            uint32_t slotloc = slot;
            slotloc &= 0x7;

            auto hdchaninfo = chanmap.GetChanInfoFromWIBElements (crate, slotloc, link_from_frameheader, iChan);
            unsigned int offline_chan = hdchaninfo.offlchan;
            unsigned int offline_plane = hdchaninfo.plane;


            if(offline_plane == 0)
            {
            	//std::cout << "chanel: " << (hdchaninfo.femb-1) * 40 + hdchaninfo.chan_in_plane << std::endl;
            	//std::cout << "offline chan: " << offline_chan << std::endl;
                for (int i = 0; i < num_ticks; i++)
                {
                    planes[offline_chan][i] = adc_vectors[iChan][i]-ave[iChan];
                }
            }
            else if(offline_plane == 1)
            {
            	//td::cout << "offline chan: " << offline_chan << std::endl;
            	//std::cout << "chanel: " << (hdchaninfo.femb-1) * 40 + hdchaninfo.chan_in_plane << std::endl;
                for (int i = 0; i < num_ticks; i++)
                {
                    planes[offline_chan][i] = adc_vectors[iChan][i]-ave[iChan];
                }
            }
            else if(offline_plane == 2)
            {
            	//std::cout << "offline chan: " << offline_chan << std::endl;
            	//std::cout << "chanel: " << (hdchaninfo.femb-1) * 48 + hdchaninfo.chan_in_plane << std::endl;
                for (int i = 0; i < num_ticks; i++)
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
