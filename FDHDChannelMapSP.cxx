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

// so far, nothing needs to be done in the constructor

dune::FDHDChannelMapSP::FDHDChannelMapSP()
{
}

void dune::FDHDChannelMapSP::ReadMapFromFiles(const std::string &chanmapfile, const std::string &cratemapfile)
{

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
    } //can just make seperate data structure for the name and try it out

    if(!found) {
        fAPANameFromCrate[j] = cratenum;
        APAval[j] = apaname;
        j++;
    }
  }
  inFile2.close();

  // fill maps of crates and TPCSets

  for (int i = 0; i < 10000; ++i)
  {
      unsigned int crate = fAPANameFromCrate[i];
      std::string &aname = APAval[i];

      unsigned int upright=0;
      if (aname.find('U') != std::string::npos)
      {
          upright = 1;
      }
      bool found = false;
      for (int j = 0; j < 10000; ++j) {
          if (fUprightFromCrate[j].key == crate) {
              fUprightFromCrate[j].value = upright;
              found = true;
              break;
          }
      }

      // If not found, add new KeyValuePair to the array
      // Here, we assume the last position in the array is always available for new insertions.
      if (!found) {
          fUprightFromCrate[10000 - 1].key = crate;
          fUprightFromCrate[10000 - 1].value = upright;
      }

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

      for (int i = 0; i < 10000; ++i) { //remember to replace all 100000 with actual sizes
          if (fCrateFromTPCSet[i].key == TPCSet) {
              fCrateFromTPCSet[i].value = crate;
              break; // assuming keys are unique, so we can break after finding the match
          }
      }

      // Similarly for fTPCSetFromCrate
      for (int i = 0; i < 10000; ++i) {
          if (fTPCSetFromCrate[i].key == crate) {
              fTPCSetFromCrate[i].value = TPCSet;
              break; // assuming keys are unique, so we can break after finding the match
          }
      }
  }

}

dune::FDHDChannelMapSP::HDChanInfo_t dune::FDHDChannelMapSP::GetChanInfoFromWIBElements(
    unsigned int crate,
    unsigned int slot,
    unsigned int link,
    unsigned int wibframechan ) {

  unsigned int wib = slot + 1;

  HDChanInfo_t badInfo = {};
  badInfo.valid = false;

// ununderstood crates are mapped to the first crate in the APA name map

  auto scrate = crate;   // substitute crate

  unsigned int upright = 0;
  for (int i = 0; i < 10000; ++i) {
      if (fUprightFromCrate[i].key == crate) {
          upright = fUprightFromCrate[i].value;
          break;
      }
  }
  if (upright == 0) {
      scrate = fAPANameFromCrate[0];
  }
  auto TPCSi = 0;

  for (int i = 0; i < 10000; ++i) {
      if (fTPCSetFromCrate[i].key == scrate) {
          TPCSi = fTPCSetFromCrate[i].value;
          break;
      }
  }


  if (TPCSi == 0) {

  }

  auto tpcset = TPCSi;



     HDChanInfoStruct* fm4 = nullptr;
          for(int i = 0; i < 10000; i++) {
              if (DetToChanInfo[i].wibframechan == wibframechan && DetToChanInfo[i].upright == upright
            		&&  DetToChanInfo[i].link == link && DetToChanInfo[i].wib == wib) {
                  fm4 = &DetToChanInfo[i];
                  break;
              }
          }
          auto& m4 = fm4->wibframechan;

  auto outputinfo = fm4->info;
  outputinfo.offlchan += tpcset * 2560;
  outputinfo.crate = scrate;

  //outputinfo.APAName = aci->value;
  outputinfo.upright = upright;

  return outputinfo;
}

/*
dune::FDHDChannelMapSP::HDChanInfo_t dune::FDHDChannelMapSP::GetChanInfoFromOfflChan(unsigned int offlineChannel) const {

  check_offline_channel(offlineChannel);

  HDChanInfo_t outputinfo;
  HDChanInfo_t internalinfo;

  unsigned int tpcset = offlineChannel / 2560;
  auto ci = fCrateFromTPCSet.find(tpcset);
  unsigned int crate = ci->second;
  auto ui = fUprightFromCrate.find(crate);
  unsigned int upright = ui->second;
  if (upright)
    {
       auto ci = OfflToChanInfo_Upright.find(offlineChannel % 2560);
       internalinfo = ci->second;
    }
  else
    {
       auto ci = OfflToChanInfo_Inverted.find(offlineChannel % 2560);
       internalinfo = ci->second;
    }

  outputinfo.offlchan = offlineChannel;
  outputinfo.crate = crate;
  auto aci = fAPANameFromCrate.find(crate);
  outputinfo.APAName = aci->second;
  outputinfo.upright = upright;
  outputinfo.wib = internalinfo.wib;
  outputinfo.link = internalinfo.link;
  outputinfo.femb_on_link = internalinfo.femb_on_link;
  outputinfo.cebchan = internalinfo.cebchan;
  outputinfo.plane = internalinfo.plane;
  outputinfo.chan_in_plane = internalinfo.chan_in_plane;
  outputinfo.femb = internalinfo.femb;
  outputinfo.asic = internalinfo.asic;
  outputinfo.asicchan = internalinfo.asicchan;
  outputinfo.wibframechan = internalinfo.wibframechan;
  outputinfo.valid = true;

  return outputinfo;

}
*/
