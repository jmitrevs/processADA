#include "kernel.h"

constexpr unsigned int NUM_LINKS = 10;

const int num_ticks = 6000;
const int total_channels = NUM_LINKS*dunedaq::detdataformats::wib2::WIB2Frame::s_num_channels;
const int input_size = 28320800;

int planes[total_channels][num_ticks];
int adc_vectors[dunedaq::detdataformats::wib2::WIB2Frame::s_num_channels][num_ticks];


void process_data(char infiledata[input_size],dune::FDHDChannelMapSP& chanmap,char outdata[500], const int infile_size)
{
    if ( infile_size% NUM_LINKS != 0)
    {
        std::cout << "Input file size not divisible by " << NUM_LINKS << ". Stopping." << std::endl;
        return;
    }
    size_t fragsize = (infile_size / NUM_LINKS);

    int plane1_length = 0;
    int plane2_length = 0;
    int plane3_length = 0;

    const size_t n_frames = (fragsize - sizeof(dunedaq::daqdataformats::FragmentHeader))/sizeof(dunedaq::detdataformats::wib2::WIB2Frame);

    int chan_min = 1000000;

    for (size_t link = 0; link < NUM_LINKS; ++link)
    {
        size_t ibegin = link*fragsize;
        dunedaq::daqdataformats::Fragment frag( &infiledata[ibegin], dunedaq::daqdataformats::Fragment::BufferAdoptionMode::kReadOnlyMode);
        const size_t n_frames = (fragsize - sizeof(dunedaq::daqdataformats::FragmentHeader))/sizeof(dunedaq::detdataformats::wib2::WIB2Frame);
        
        int ticks[num_ticks];
        
        unsigned int slot = 0, link_from_frameheader = 0, crate = 0;
        
        for (size_t iFrame = 0; iFrame < n_frames; ++iFrame)
        {
            ticks[iFrame] = iFrame;

            auto frame = reinterpret_cast<dunedaq::detdataformats::wib2::WIB2Frame*>(static_cast<uint8_t*>(frag.get_data()) + iFrame*sizeof(dunedaq::detdataformats::wib2::WIB2Frame));
              
            if (iFrame == 0)
            {
                crate = frame->header.crate;
                slot = frame->header.slot;
                link_from_frameheader = frame->header.link;
            }
        }

        for (size_t iChan = 0; iChan < dunedaq::detdataformats::wib2::WIB2Frame::s_num_channels; ++iChan)
        {
            uint32_t slotloc = slot;
            slotloc &= 0x7;

            auto hdchaninfo = chanmap.GetChanInfoFromWIBElements (crate, slotloc, link_from_frameheader, iChan); 
            int offline_chan = hdchaninfo.offlchan;
            unsigned int offline_plane = hdchaninfo.plane;
    
            if (offline_chan < chan_min)
            {
                chan_min = hdchaninfo.offlchan;
            }

            if (offline_plane == 0)
            {
                 plane1_length++;  
            }
           
             if(offline_plane == 1)
             {
                 plane2_length++;
             }
            
             else if(offline_plane == 2)
             {
                 plane3_length++;
             }
        }
    }

    for (size_t link = 0; link < NUM_LINKS; ++link)
    {
        unsigned int slot = 0, link_from_frameheader = 0, crate = 0;
        size_t ibegin = link*fragsize;
        dunedaq::daqdataformats::Fragment frag( &infiledata[ibegin], dunedaq::daqdataformats::Fragment::BufferAdoptionMode::kReadOnlyMode);
        int sums[dunedaq::detdataformats::wib2::WIB2Frame::s_num_channels] = {0};

        for (size_t iFrame = 0; iFrame < n_frames; ++iFrame)
        {
            auto frame = reinterpret_cast<dunedaq::detdataformats::wib2::WIB2Frame*>(static_cast<uint8_t*>(frag.get_data()) + iFrame*sizeof(dunedaq::detdataformats::wib2::WIB2Frame));
            if (iFrame == 0)
            {
                crate = frame->header.crate;
                slot = frame->header.slot;
                link_from_frameheader = frame->header.link;
            }
            for (size_t iChan = 0; iChan < dunedaq::detdataformats::wib2::WIB2Frame::s_num_channels; ++iChan)
            {
                auto adc = frame->get_adc(iChan);
                adc_vectors[iChan][iFrame] = adc;

                sums[iChan] += adc;
            }

        }
        for (size_t iFrame = 0; iFrame < n_frames; ++iFrame)
            {

            for (size_t iChan = 0; iChan < dunedaq::detdataformats::wib2::WIB2Frame::s_num_channels; ++iChan)
                {
                    auto ave = sums[iChan] / n_frames;
                    adc_vectors[iChan][iFrame] -= ave;
                }

            }
        for (size_t iChan = 0; iChan < dunedaq::detdataformats::wib2::WIB2Frame::s_num_channels; ++iChan)
        {
            uint32_t slotloc = slot;
            slotloc &= 0x7;
        
            auto hdchaninfo = chanmap.GetChanInfoFromWIBElements (crate, slotloc, link_from_frameheader, iChan); 
            unsigned int offline_chan = hdchaninfo.offlchan;
            unsigned int offline_plane = hdchaninfo.plane;

            if(offline_plane == 0)
            {
                for (int i = 0; i < num_ticks; i++)
                {
                    planes[offline_chan-chan_min][i] = adc_vectors[iChan][i]; 
                } 
            }
            else if(offline_plane == 1)
            {
                for (int i = 0; i < num_ticks; i++)
                {
                    planes[offline_chan-chan_min][i] = adc_vectors[iChan][i]; 
                } 
            }
            else if(offline_plane == 2)
            {
                for (int i = 0; i < num_ticks; i++)
                {
                    planes[offline_chan-chan_min][i] = adc_vectors[iChan][i]; 
                } 
            }
        }
    
    }

}

