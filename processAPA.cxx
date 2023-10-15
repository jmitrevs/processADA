#include "kernel.h"
#include <string>
#include <iostream>
#include <fstream>
#include <unistd.h>
#include <fcntl.h>


//const int INFILE_SIZE = 28320800; // == 0x1b02420
const int INFILE_SIZE = 0x1b02600;  // aligned
const int LOGIC_OUTFILE_SIZE = 276;
const int OUTFILE_SIZE = 0x200;  // alighed

static char infiledata[INFILE_SIZE];

// num_read_t align(num_read_t unaligned) {
//     const num_read_t alignment = 512;
//     return (unaligned & ~(alignment - 1));
// }

// Use a class for file acces for RAII
class fileHelper {
public:
    fileHelper(char* filename, int oflag, int permission = 0);
    ~fileHelper();
    int fd() { return m_fd; };
private:
    int m_fd;
};

fileHelper::fileHelper(char* filename, int oflag, int permission) {
    if (permission == 0) {
        m_fd = open(filename, oflag);
    } else {
        m_fd = open(filename, oflag, permission);
    }
    if (m_fd < 0) {
        std::stringstream ss;
        ss << "Could not open " << filename;
        throw std::invalid_argument(ss.str());
    }
}

fileHelper::~fileHelper() {
    if (m_fd >= 0) {
        close(m_fd);
    }
}

int main(int argc, char* argv[])
{

    std::cout << "started running" << std::endl;

    if (argc != 3) {
        std::cerr << "Usage:  " << argv[0] << " <input file> <output file> " << std::endl;
        exit(1);
    }

    dune::FDHDChannelMapSP chanmap;
    chanmap.ReadMapFromFiles("FDHDChannelMap_v1_wireends.txt","FDHD_CrateMap_v1.txt");

    // open files
    fileHelper fhin(argv[1], O_RDONLY | O_DIRECT);
    fileHelper fhout(argv[2], O_CREAT | O_WRONLY | O_DIRECT, 0644);

    auto numread = pread(fhin.fd(), infiledata, INFILE_SIZE, 0);

    std::cout << "Number bytes read = " << numread << std::endl;

    int outdata[OUTFILE_SIZE];

    std::cout << "here" << std::endl;

    process_data(numread, infiledata, chanmap, outdata);

    std::cout << "after" << std::endl;

    pwrite(fhout.fd(), outdata, LOGIC_OUTFILE_SIZE, 0);

    return 0;
}
