///////////////////////////////////////////////////////////////////////////////////////////////////
// Class:       FDHDChannelMapSP
// Module type: standalone algorithm
// File:        FDHDChannelMapSP.cxx
// Author:      Tom Junk, August 2022
//
// Implementation of hardware-offline channel mapping reading from two files, one containing
// the channel maps for two APAs (inverted and upright), and one containing the crate numbering
// scheme.
//
// The SP in the class and file name means "Service Provider"
///////////////////////////////////////////////////////////////////////////////////////////////////

#include "FDHDChannelMapSP.h"

#include <iostream>
#include <fstream>
#include <sstream>
#include <stdlib.h>



void dune::FDHDChannelMapSP::ReadMapFromFiles(const std::string &chanmapfile, const std::string &cratemapfile)
{
    std::string APAval[150];
    std::ifstream inFile(chanmapfile, std::ios::in);
    std::string line;

    int i = 0;

    while (std::getline(inFile,line)) {
        std::stringstream linestream(line);

        HDChanInfo_t chanInfo;
        linestream 
            >> chanInfo.offlchan 
            >> chanInfo.upright
            >> chanInfo.wib 
            >> chanInfo.link 
            >> chanInfo.femb_on_link 
            >> chanInfo.cebchan 
            >> chanInfo.plane 
            >> chanInfo.chan_in_plane 
            >> chanInfo.femb 
            >> chanInfo.asic 
            >> chanInfo.asicchan
            >> chanInfo.wibframechan; 

        // internal information lacks crate number and APA name because it is meant to
        // be generic for all APAs.

        chanInfo.crate = 0;

        // fill maps.

        check_offline_channel(chanInfo.offlchan);

        //DetToChanInfo[chanInfo.upright][chanInfo.wib][chanInfo.link][chanInfo.wibframechan] = chanInfo;

        HDChanInfoStruct newEntry;
        newEntry.upright = chanInfo.upright;
        newEntry.wib = chanInfo.wib;
        newEntry.link = chanInfo.link;
        newEntry.wibframechan = chanInfo.wibframechan;
        newEntry.info = chanInfo;

        DetToChanInfo[i] = newEntry;
        i++;


    }
    inFile.close();

    int j = 0;

    std::ifstream inFile2(cratemapfile, std::ios::in);
    while (std::getline(inFile2,line)) {
        std::string apaname;
        unsigned int cratenum;
        std::stringstream linestream(line);
        linestream >> cratenum >> apaname;

        bool found = false;
        for(int i = 0; i < j; ++i) {
            if(fAPANameFromCrate[i] == cratenum) {
                found = true;
                break;
            }
        }

        if(!found) {
            fAPANameFromCrate[j] = cratenum;
            APAval[j] = apaname;
            j++;
        }
    }

    inFile2.close();

    // fill maps of crates and TPCSets

    for (int i = 0; i < 150; ++i)
    {
        unsigned int crate = fAPANameFromCrate[i];
        std::string &aname = APAval[i];

        unsigned int upright=0;
        if (aname.find('U') != std::string::npos)
        {
            upright = 1;
        }
        //fUprightFromCrate[crate] = upright;
        fUprightFromCrate[i].value = upright;
        fUprightFromCrate[i].key = crate;



        unsigned int TPCSet = 0;
        if(aname.size() > 6) {
            std::string columnstring = aname.substr(5,2);
            unsigned int column = atoi(columnstring.c_str());
            unsigned int nms = 0;   //   0=north, 1=middle,  2=south
            if (aname.find('N') != std::string::npos) nms = 0;
            if (aname.find('M') != std::string::npos) nms = 1;
            if (aname.find('S') != std::string::npos) nms = 2;

            TPCSet = 6*(column - 1) + 3*upright + nms;
        }

        for (int i = 0; i < 150; ++i) { //remember to replace all 100000 with actual sizes
            if (fCrateFromTPCSet[i].key == TPCSet) {
                fCrateFromTPCSet[i].value = crate;
                break; // assuming keys are unique, so we can break after finding the match
            }
        }

        // Similarly for fTPCSetFromCrate
        for (int i = 0; i < 150; ++i) {
            if (fTPCSetFromCrate[i].key == crate) {
                fTPCSetFromCrate[i].value = TPCSet;
                break; // assuming keys are unique, so we can break after finding the match
            }
        }
    }

}

