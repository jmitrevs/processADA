#include "kernel.h"
#include <string>

std::string infilename = "../datfiles/TriggerRecord00001_0000TPCAPA001.dat";


const int infile_size = 28320800;

char infiledata[infile_size];

int main()
{

    // Open input file
    std::ifstream inputFile(infilename);
    if (!inputFile) {
        std::cout << "Error opening input file.\n";
        return 1;  // Terminate the program
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

    char outdata[500];
    
    process_data(infile_size,infiledata, chanmap, outdata);

    return 0;
}
