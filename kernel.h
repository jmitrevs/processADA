#include <stdio.h>
#include <string>
#include <vector>
#include <iostream>
#include <sstream>
#include <algorithm>
#include <map>
#include <fstream>
#include <array>

#include "FDHDChannelMapSP.h"
#include "Fragment.hpp"
#include "WIB2Frame.hpp"

#include "TFile.h"
#include "TGraph.h"
#include "TH2.h"

constexpr unsigned int NUM_LINKS = 10;

const int total_channels = NUM_LINKS*dunedaq::detdataformats::wib2::WIB2Frame::s_num_channels;
const int input_size = 28320800;

std::array<std::array<int,6000>,total_channels> planes;
std::array<std::array<int,6000>,dunedaq::detdataformats::wib2::WIB2Frame::s_num_channels> adc_vectors;

//std::vector<char>& infiledata
void process_data(std::array<char, input_size>& infiledata,dune::FDHDChannelMapSP& chanmap,std::vector<int>& outdata)
{
    std::cout << "Input file size: " << infiledata.size() << std::endl;
    if ( infiledata.size() % NUM_LINKS != 0)
    {
        std::cout << "Input file size not divisible by " << NUM_LINKS << ". Stopping." << std::endl;
        return;
    }
    size_t fragsize = infiledata.size() / NUM_LINKS;

    auto f = new TFile("output.root", "RECREATE");

    int plane1_length = 0;
    int plane2_length = 0;
    int plane3_length = 0;
    //std::vector<std::vector<int>> plane1;
    //std::map<int,std::vector<int>> plane1;
    //std::map<int,std::vector<int>> plane2;
    //std::map<int,std::vector<int>> plane3;


    std::stringstream histname2;
    histname2 << "U";

    std::stringstream histtitle2;
    histtitle2 << "U" << ";channel;time tick";

    std::stringstream histname3;
    histname3 << "V";

    std::stringstream histtitle3;
    histtitle3 << "V" << ";channel;time tick";

    std::stringstream histname4;
    histname4 << "X";

    std::stringstream histtitle4;
    histtitle4 << "X" << ";channel;time tick";

    const size_t n_frames = (fragsize - sizeof(dunedaq::daqdataformats::FragmentHeader))/sizeof(dunedaq::detdataformats::wib2::WIB2Frame);

    int chan_min = 1000000;

    

    for (size_t link = 0; link < NUM_LINKS; ++link)
    {
        size_t ibegin = link*fragsize;
        dunedaq::daqdataformats::Fragment frag( &infiledata[ibegin], dunedaq::daqdataformats::Fragment::BufferAdoptionMode::kReadOnlyMode);
        const size_t n_frames = (fragsize - sizeof(dunedaq::daqdataformats::FragmentHeader))/sizeof(dunedaq::detdataformats::wib2::WIB2Frame);
        std::cout << "n_frames calc: " << fragsize << " " << sizeof(dunedaq::daqdataformats::FragmentHeader) 
            << " " << sizeof(dunedaq::detdataformats::wib2::WIB2Frame) << " " << n_frames << std::endl;

        
    
        std::vector<int> ticks;
        
        unsigned int slot = 0, link_from_frameheader = 0, crate = 0;

        std::stringstream histname;
        histname << "hist_" << link;


        //TCanvas *c1 = new TCanvas("c1","c1",1600,1000);
        std::stringstream histtitle;
        histtitle << "hist_" << link << ";channel;time tick";

        TH2F *hist = new TH2F(histname.str().c_str(), histtitle.str().c_str(),
            dunedaq::detdataformats::wib2::WIB2Frame::s_num_channels, 0, dunedaq::detdataformats::wib2::WIB2Frame::s_num_channels-1,
            n_frames, 0, n_frames-1);


        std::vector<int> sums(dunedaq::detdataformats::wib2::WIB2Frame::s_num_channels,0);

        for (size_t iFrame = 0; iFrame < n_frames; ++iFrame)
        {
            // dump WIB frames in hex
            //std::cout << "Frame number: " << iFrame << std::endl;
            // size_t wfs32 = sizeof(dunedaq::detdataformats::wib2::WIB2Frame)/4;
            //uint32_t *fdp = reinterpret_cast<uint32_t*>(static_cast<uint8_t*>(frag.get_data()) + iFrame*sizeof(dunedaq::detdataformats::wib2::WIB2Frame));
            //std::cout << std::dec;
            //for (size_t iwdt = 0; iwdt < 1; iwdt++)  // dumps just the first 32 bits.  use wfs32 if you want them all
            //{
            //  std::cout << iwdt << " : 10987654321098765432109876543210" << std::endl;
            //  std::cout << iwdt << " : " << std::bitset<32>{fdp[iwdt]} << std::endl;
            //}
            //std::cout << std::dec;

            ticks.push_back(iFrame);

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
                    auto val = adc_vectors[iChan][iFrame];
                    hist->Fill(iChan, iFrame, static_cast<float>(val));           
                }

            }

        std::cout << " crate, slot, link(HDF5 group), link(WIB Header): "  << crate << ", " << slot << ", " << link << ", " << link_from_frameheader << std::endl;

        //std::vector<int> channel;

        for (size_t iChan = 0; iChan < dunedaq::detdataformats::wib2::WIB2Frame::s_num_channels; ++iChan)
        {
            const auto& v_adc = adc_vectors[iChan];

            uint32_t slotloc = slot;
            slotloc &= 0x7;

        
            auto hdchaninfo = chanmap.GetChanInfoFromWIBElements (crate, slotloc, link_from_frameheader, iChan); 
            unsigned int offline_chan = hdchaninfo.offlchan;
            unsigned int offline_plane = hdchaninfo.plane;

        

            if (hdchaninfo.offlchan < chan_min)
                {
                    chan_min = hdchaninfo.offlchan;
                }

            /*
            if(offline_plane == 0)
            {
                plane1.push_back(adc_vectors[iChan]);
                //plane1[offline_chan] = adc_vectors[iChan];
                //std::cout << offline_chan << std::endl;
            }
            */
           std::vector<int> empty;

           if (offline_plane == 0)
           {
                //plane1.push_back(empty);
                plane1_length++;  //for some reason plane1_length causes segmentation fault
           }
           
            if(offline_plane == 1)
            {
                plane2_length++;
            }
            
            else if(offline_plane == 2)
            {
                plane3_length++;
            }
            //std::cout << "Channel index " << iChan << " is actually Channel: " << offline_chan << " in the hardware; Number of time ticks available: " << v_adc.size() << std::endl;
            // v_adc contains the waveform for this channel

            //channel.push_back(offline_chan);
        }

        /*
        std::sort(channel.begin(),channel.end());

        for(int i = 0; i<channel.size(); i++)
        {
            //std::cout << "Channel index " << i << " is actually Channel: " << channel[i] << " in the hardware" << std::endl;
        }

        // draw the first 
        */
    
        auto g = new TGraph(ticks.size(), ticks.data(), adc_vectors[0].data());
        std::stringstream ss;
        ss << "graph_" << link;
        g->SetNameTitle(ss.str().c_str(), ";time tick;adc counts");
        g->Write();

        //std::cout << "chan min: " << chan_min << std::endl;
    }
    std::cout << "plane1_length: " << plane1_length << std::endl;
    //std::cout <<  "plane1.size(): " << plane1.size() << std::endl;

    //std::array<std::array<int,600>,total_channels> planes; //make same for adc   planes[index] = adc[index]     


    //could make one 2d std array or a bunch of 1 d

    for (size_t link = 0; link < NUM_LINKS; ++link)
    {
        unsigned int slot = 0, link_from_frameheader = 0, crate = 0;
        size_t ibegin = link*fragsize;
        dunedaq::daqdataformats::Fragment frag( &infiledata[ibegin], dunedaq::daqdataformats::Fragment::BufferAdoptionMode::kReadOnlyMode);
        std::vector<int> sums(dunedaq::detdataformats::wib2::WIB2Frame::s_num_channels,0);

        for (size_t iFrame = 0; iFrame < n_frames; ++iFrame)
        {
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
            unsigned int offline_chan = hdchaninfo.offlchan;
            unsigned int offline_plane = hdchaninfo.plane;

            if(offline_plane == 0)
            {
                
                for (int i = 0; i < 6000; i++) //should be adc_vectors[iChan].size()
                {
                    planes[offline_chan-chan_min][i] = adc_vectors[iChan][i];  
                }
                
                
                //plane1[offline_chan-chan_min] = adc_vectors[iChan];
                //plane1[offline_chan] = adc_vectors[iChan];
                //std::cout << offline_chan << std::endl;
            }
            else if(offline_plane == 1)
            {
                for (int i = 0; i < 6000; i++) 
                {
                    planes[offline_chan-chan_min][i] = adc_vectors[iChan][i];  
                }
            }
            else if(offline_plane == 2)
            {
                for (int i = 0; i < 6000; i++) 
                {
                    planes[offline_chan-chan_min][i] = adc_vectors[iChan][i];  
                }
            }
        }
    

    }
    TH2F *hist2 = new TH2F(histname2.str().c_str(), histtitle2.str().c_str(),
            plane1_length, chan_min, plane1_length+chan_min,
            n_frames,0, n_frames-1);
    
    TH2F *hist3 = new TH2F(histname3.str().c_str(), histtitle3.str().c_str(),
            plane2_length, chan_min+plane1_length, plane1_length+plane2_length+chan_min,
            n_frames,0, n_frames-1);
    
    TH2F *hist4 = new TH2F(histname4.str().c_str(), histtitle4.str().c_str(),
            plane3_length, chan_min+plane1_length+plane2_length, plane1_length+plane2_length+plane3_length+chan_min,
            n_frames,0, n_frames-1);

    for (size_t iFrame = 0; iFrame < 6000; ++iFrame)
    {
        for (int i = 0; i < plane1_length; i++) 
        {
            hist2->Fill(i+chan_min, iFrame, planes[i][iFrame]);     
        }   
    }

    for (size_t iFrame = 0; iFrame < 6000; ++iFrame)
    {
        for (int i = 0; i < plane2_length; i++) 
        {
            hist3->Fill(i+chan_min+plane1_length, iFrame, planes[i+plane1_length][iFrame]);     
        }   
    }

    for (size_t iFrame = 0; iFrame < 6000; ++iFrame)
    {
        for (int i = 0; i < plane3_length; i++) 
        {
            hist4->Fill(i+chan_min+plane1_length+plane2_length, iFrame, planes[i+plane1_length+plane2_length][iFrame]);     
        }   
    }
    
    f->Write();

}

