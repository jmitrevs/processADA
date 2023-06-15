#include <stdio.h>
#include <string>
#include <vector>
#include <iostream>
#include <sstream>
#include <algorithm>
#include <map>

#include "FDHDChannelMapSP.h"
#include "Fragment.hpp"
#include "WIB2Frame.hpp"

#include "TFile.h"
#include "TGraph.h"
#include "TH2.h"

constexpr unsigned int NUM_LINKS = 10;

int main(int argc, char **argv)
{

    dune::FDHDChannelMapSP chanmap;
    chanmap.ReadMapFromFiles("FDHDChannelMap_v1_wireends.txt","FDHD_CrateMap_v1.txt");
    std::string infilename = "../datfiles/TriggerRecord00001_0000TPCAPA001.dat";
    FILE *infile = fopen(infilename.data(),"r");

    std::vector<char> infiledata;

    while (1)
    {
        char c=fgetc(infile);
        if (feof(infile)) break;
        infiledata.push_back(c);
    }
    fclose(infile);

    // assume there are ten links worth of data.  Each one has a fragment in it and they
    // have simply been concatenated.  This is what mcsplit.sh does (arbitrary)
  
    // std::cout << "s_channels_per_femb = " << dunedaq::detdataformats::wib2::WIB2Frame::s_channels_per_femb << std::endl;
    // std::cout << "s_fembs_per_frame = " << dunedaq::detdataformats::wib2::WIB2Frame::s_fembs_per_frame << std::endl;
    // std::cout << "s_num_channels = " << dunedaq::detdataformats::wib2::WIB2Frame::s_num_channels << std::endl;
    // std::cout << "s_num_adc_words = " << dunedaq::detdataformats::wib2::WIB2Frame::s_num_adc_words << std::endl;
    // std::cout << "s_num_ch_per_frame = " << dunedaq::detdataformats::wib2::WIB2Frame::s_num_ch_per_frame << std::endl;

    std::cout << "Input file size: " << infiledata.size() << std::endl;
    if ( infiledata.size() % NUM_LINKS != 0)
    {
        std::cout << "Input file size not divisible by " << NUM_LINKS << ". Stopping." << std::endl;
        return 1;
    }
    size_t fragsize = infiledata.size() / NUM_LINKS;

    auto f = new TFile("output.root", "RECREATE");

    std::map<int,std::vector<int>> plane1;
    std::map<int,std::vector<int>> plane2;
    std::map<int,std::vector<int>> plane3;

    for (size_t link = 0; link < NUM_LINKS; ++link)
    {
        size_t ibegin = link*fragsize;
        dunedaq::daqdataformats::Fragment frag( &infiledata[ibegin], dunedaq::daqdataformats::Fragment::BufferAdoptionMode::kReadOnlyMode);
        const size_t n_frames = (fragsize - sizeof(dunedaq::daqdataformats::FragmentHeader))/sizeof(dunedaq::detdataformats::wib2::WIB2Frame);
        std::cout << "n_frames calc: " << fragsize << " " << sizeof(dunedaq::daqdataformats::FragmentHeader) 
            << " " << sizeof(dunedaq::detdataformats::wib2::WIB2Frame) << " " << n_frames << std::endl;

        std::vector<std::vector<int> > adc_vectors(dunedaq::detdataformats::wib2::WIB2Frame::s_num_channels);
        std::vector<int> ticks;
        
        unsigned int slot = 0, link_from_frameheader = 0, crate = 0;

        std::stringstream histname;
        histname << "hist_" << link;

        std::stringstream histname2;
        histname2 << "hist2_" << link;

        //TCanvas *c1 = new TCanvas("c1","c1",1600,1000);
        std::stringstream histtitle;
        histtitle << "hist_" << link << ";channel;time tick";

        std::stringstream histtitle2;
        histtitle2 << "hist2_" << link << ";channel;time tick";

        TH2F *hist = new TH2F(histname.str().c_str(), histtitle.str().c_str(),
            dunedaq::detdataformats::wib2::WIB2Frame::s_num_channels, 0, dunedaq::detdataformats::wib2::WIB2Frame::s_num_channels-1,
            n_frames, 0, n_frames-1);

        TH2F *hist2 = new TH2F(histname2.str().c_str(), histtitle2.str().c_str(),
            dunedaq::detdataformats::wib2::WIB2Frame::s_num_channels, 0, dunedaq::detdataformats::wib2::WIB2Frame::s_num_channels-1,
            n_frames, 0, n_frames-1);

        int averageadc = 0;

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

            

            for (size_t iChan = 0; iChan < dunedaq::detdataformats::wib2::WIB2Frame::s_num_channels; ++iChan)
            {
                auto adc = frame->get_adc(iChan);
                adc_vectors[iChan].push_back(adc);
                //hist->Fill(iChan, iFrame, adc);
                //adc_size++;
                //std::cout << "adc:" << adc;
                
                sums[iChan] += adc;
            }

              
            if (iFrame == 0)
            {
                crate = frame->header.crate;
                slot = frame->header.slot;
                link_from_frameheader = frame->header.link;
            }
        }

        for (size_t iFrame = 0; iFrame < n_frames; ++iFrame)
            {
        
            //auto frame = reinterpret_cast<dunedaq::detdataformats::wib2::WIB2Frame*>(static_cast<uint8_t*>(frag.get_data()) + iFrame*sizeof(dunedaq::detdataformats::wib2::WIB2Frame));

            

            for (size_t iChan = 0; iChan < dunedaq::detdataformats::wib2::WIB2Frame::s_num_channels; ++iChan)
                {
                    //auto adc = frame->get_adc(iChan);
                    auto ave = sums[iChan] / n_frames;
                    adc_vectors[iChan][iFrame] -= ave;
                    auto val = adc_vectors[iChan][iFrame];
                    hist->Fill(iChan, iFrame, static_cast<float>(val));
               
                    //std::cout << sums[iChan]/n_frames << std::endl;
                    //std::cout<<adc<<std::endl;
              
                }

            }

        std::cout << " crate, slot, link(HDF5 group), link(WIB Header): "  << crate << ", " << slot << ", " << link << ", " << link_from_frameheader << std::endl;

        std::vector<int> channel;


        
        for (size_t iChan = 0; iChan < dunedaq::detdataformats::wib2::WIB2Frame::s_num_channels; ++iChan)
        {
            const auto& v_adc = adc_vectors[iChan];

            uint32_t slotloc = slot;
            slotloc &= 0x7;

            

            auto hdchaninfo = chanmap.GetChanInfoFromWIBElements (crate, slotloc, link_from_frameheader, iChan); 
            unsigned int offline_chan = hdchaninfo.offlchan;
            unsigned int offline_plane = hdchaninfo.plane;

            std::vector<int> chans;

            for (int i = 0; i<ticks.size(); i++)
                chans.push_back(ticks[i]);

            if(offline_plane == 0)
            {
                plane1[offline_chan] = chans;
            }
            else if(offline_plane == 1)
            {
                plane2[offline_chan] = chans;
            }
            else
            {
                plane3[offline_chan] = chans;
            }
            //std::cout << "Channel index " << iChan << " is actually Channel: " << offline_chan << " in the hardware; Number of time ticks available: " << v_adc.size() << std::endl;
            // v_adc contains the waveform for this channel

            channel.push_back(offline_chan);
        }


        std::sort(channel.begin(),channel.end());

        for(int i = 0; i<channel.size(); i++)
        {
            //std::cout << "Channel index " << i << " is actually Channel: " << channel[i] << " in the hardware" << std::endl;
        }

        // draw the first 
    
        auto g = new TGraph(ticks.size(), ticks.data(), adc_vectors[0].data());
        std::stringstream ss;
        ss << "graph_" << link;
        g->SetNameTitle(ss.str().c_str(), ";time tick;adc counts");
        g->Write();

    }
    for (const auto& entry : plane1) {
        std::cout << entry.first << std::endl;
            }

  
    f->Write();

    return 0;
}
