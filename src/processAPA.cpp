// An example of parsing the binary file

// NOTE:  this assumes a little-endian architecture

#include <unistd.h>
#include <fcntl.h>
#include <exception>
#include <iostream>
#include <sstream>
#include <cstdint>
#include <filesystem>
namespace fs = std::filesystem;

#include <boost/program_options.hpp>
namespace po = boost::program_options;

// XRT includes
#include "experimental/xrt_bo.h"
#include "experimental/xrt_device.h"
#include "experimental/xrt_kernel.h"

#include "process_data.h"

constexpr int16_t THRESHOLD = 1000;

// Use a class for file acces for RAII
class fileHelper {
public:
    fileHelper(std::string filename, int oflag, int permission = 0);
    ~fileHelper();
    int fd() { return m_fd; };
private:
    int m_fd;
};

fileHelper::fileHelper(std::string filename, int oflag, int permission) {
    if (permission == 0) {
        m_fd = open(filename.c_str(), oflag);
    } else {
        m_fd = open(filename.c_str(), oflag, permission);
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

int main(int ac, char** av) {

    try {

        std::string infile;
        std::string outfile;
        std::string indir;
        std::string outdir;
        std::string xclbin_file;
        std::string device_index;
        bool usingDirectories = false;

        po::options_description desc("Allowed options");
        desc.add_options()
            ("help,h", "produce help message")
            ("xclbin-file,x", po::value<std::string>(&xclbin_file), "xclbin file")
            ("device,d", po::value<std::string>(&device_index)->default_value("0"), "device index")
            ("input-file,i", po::value<std::string>(&infile), "input file")
            ("input-dir", po::value<std::string>(&indir), "input directory")
            ("output-file,o", po::value<std::string>(&outfile), "output file")
            ("output-dir", po::value<std::string>(&outdir), "output directory")
            ;

        po::positional_options_description p;
        p.add("input-file", -1);
        
        po::variables_map vm;
        po::store(po::command_line_parser(ac, av).
                  options(desc).positional(p).run(), vm);
        po::notify(vm);


        if (vm.count("help")) {
            std::cout << desc << "\n";
            return 0;
        }

        if (vm.count("input-dir")) {
            if (!vm.count("output-dir")) {
                std::cerr << "output directory not given while input directory is given" << std::endl;
                std::cerr << desc << "\n";
                return 1;
            } else {
                usingDirectories = true;
                std::cout << "Input directory is given; ignoring any passed input file" << std::endl;
            }
        } else {

            if (!vm.count("input-file")) {
                std::cerr << "input-file not given." << std::endl;
                std::cerr << desc << "\n";
                return 1;
            }

            if (!vm.count("output-file")) {
                std::cerr << "output-file not given." << std::endl;
                std::cerr << desc << "\n";
                return 1;
            }
        }

        std::cout << "Open the device" << device_index << std::endl;
        auto device = xrt::device(device_index);
        auto device_name = device.get_info<xrt::info::device::name>();

        std::cout << "Load the xclbin " << xclbin_file << std::endl;
        auto uuid = device.load_xclbin(xclbin_file);

        auto krnl = xrt::kernel(device, uuid, "process_data");


        // Now do buffers

        constexpr size_t READBUF_SIZE = INBUF_SIZE * sizeof(uint8_t);
        constexpr size_t WRITEBUF_SIZE = OUTBUF_SIZE * sizeof(writebuf_t);

        std::cout << "READBUF_SIZE = " << std::hex << READBUF_SIZE << ", WRITEBUF_SIZE = " << WRITEBUF_SIZE << std::endl;

        // Allocate Buffer in Global Memory

        xrt::bo::flags flags = xrt::bo::flags::p2p;
        std::cout << "Allocate Buffer in Global Memory\n";
        auto bo_in = xrt::bo(device, READBUF_SIZE, flags, krnl.group_id(0));
        auto bo_out = xrt::bo(device, WRITEBUF_SIZE, flags, krnl.group_id(1));

        // Map the contents of the buffer object into host memory
        auto bo_in_map = bo_in.map<uint8_t*>();
        auto bo_out_map = bo_out.map<writebuf_t*>();
        std::fill(bo_in_map, bo_in_map + INBUF_SIZE, 0);
        std::fill(bo_out_map, bo_out_map + OUTBUF_SIZE, 0);

        if (usingDirectories) {
            fs::path outpath{outdir};

            for (const auto & entry : fs::directory_iterator(indir)) {
                auto infilepath = entry.path();
                auto outfilepath = outpath / infilepath.filename().replace_extension(".out");

                // open files
                fileHelper fhin(infilepath, O_RDONLY | O_DIRECT);
                fileHelper fhout(outfilepath, O_CREAT | O_WRONLY | O_DIRECT, 0644);

                auto numread = pread(fhin.fd(), static_cast<void*>(bo_in_map), READBUF_SIZE, 0);
                // std::cout << "Creating " << outfilepath << ", numread = " << std::hex << numread <<  std::endl;
            
                if (numread % NUM_LINKS != 0) {
                    std::cerr << "numread does not divide evenly by the number of links; exiting." << std::endl;
                    exit(1);
                }
                if (numread != INFILE_SIZE) {
                    std::cerr << "numread = " << numread << ", expected " << INFILE_SIZE << std::endl;
                    exit(1);
                }
                // std::cout << "Execution of the kernel\n";
                //auto run = krnl(bo_in, bo_out, THRESHOLD);
                auto run = krnl(bo_in, bo_out);
                run.wait();


                auto numActuallyWritten = pwrite(fhout.fd(), static_cast<void*>(bo_out_map), WRITEBUF_SIZE, 0);
                if (numActuallyWritten < 0) {
                    std::cerr << "ERR: pwrite failed: "
                              << " error: " << errno << ", " << strerror(errno) << std::endl;
                    exit(EXIT_FAILURE);
                } else {
                    // std::cout << "Amount written:" << numActuallyWritten << "  bytes" << std::endl;
                }
            }
            
        } else {
            // open files
            fileHelper fhin(infile, O_RDONLY | O_DIRECT);
            fileHelper fhout(outfile, O_CREAT | O_WRONLY | O_DIRECT, 0644);


            auto numread = pread(fhin.fd(), static_cast<void*>(bo_in_map), READBUF_SIZE, 0);
            std::cout << "numread = " << std::hex << numread <<  std::endl;

            if (numread % NUM_LINKS != 0) {
                std::cerr << "numread does not divide evenly by the number of links; exiting." << std::endl;
                exit(1);
            }
            if (numread != INFILE_SIZE) {
                std::cerr << "numread = " << numread << ", expected " << INFILE_SIZE << std::endl;
                exit(1);
            }


            std::cout << "Execution of the kernel\n";
            auto run = krnl(bo_in, bo_out);
            run.wait();


            auto numActuallyWritten = pwrite(fhout.fd(), static_cast<void*>(bo_out_map), WRITEBUF_SIZE, 0);
            if (numActuallyWritten < 0) {
                std::cerr << "ERR: pwrite failed: "
                          << " error: " << errno << ", " << strerror(errno) << std::endl;
                exit(EXIT_FAILURE);
            } else {
                std::cout << "Amount written: " << numActuallyWritten << "  bytes" << std::endl;
            }
        }
    }
    catch(std::exception& e) {
        std::cerr << "error: " << e.what() << "\n";
        return 1;
    }

}
