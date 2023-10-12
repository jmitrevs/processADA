#include "kernel.h"
#include <string>
#include <iostream>
#include <fstream>

std::string infilename = "TriggerRecord00001_0000TPCAPA003.dat";

//const int infile_size = 28320800;

const int infile_size = 28320800;

char infiledata[infile_size];

int main()
{

	std::cout << "started running" << std::endl;
    // Open input file
    std::ifstream inputFile(infilename);
    if (!inputFile) {
        std::cout << "Error opening input file.\n";
        return 0;  // Terminate the program
    }

    dune::FDHDChannelMapSP chanmap;
    chanmap.ReadMapFromFiles("FDHDChannelMap_v1_wireends.txt","FDHD_CrateMap_v1.txt");
    FILE *infile = fopen(infilename.data(),"r");

    int i = 0;

    while (1)
    {
        char c=fgetc(infile);
        if (feof(infile)) break;
        infiledata[i]=c;
        i++;
    }
    fclose(infile);

    int outdata[276];

    std::cout << "here" << std::endl;

    process_data(infile_size,infiledata, chanmap, outdata);

    std::cout << "after" << std::endl;

    return 0;
}
