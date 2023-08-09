#include "kernel.h"
#include "hls_stream.h"
#include "defines3.h"

void process_data(const int infile_size, char infiledata[28320800],dune::FDHDChannelMapSP& chanmap ,int outdata[276])
{
	#pragma HLS INTERFACE m_axi port=infiledata depth=28320800
	#pragma HLS INTERFACE m_axi port=outdata depth=276

	//Create variables

	constexpr unsigned int NUM_LINKS = 10;
	const int z_channels = 480;
	const int n_frames = 6000;

	static int planes[z_channels][n_frames];
    static int planes2[z_channels][n_frames];

	static int adc_vectors[60][256][100];

	int ave[dunedaq::detdataformats::wib2::WIB2Frame::s_num_channels];

	if ( infile_size% NUM_LINKS != 0)
	{
	    return;
	}

	size_t fragsize = (infile_size / NUM_LINKS);

    //Fill z planes and subtract pedestal

    link_loop:
    for (size_t link = 0; link < NUM_LINKS; link++)
    {
        unsigned int slot = 0, link_from_frameheader = 0, crate = 0;
        size_t ibegin = link*fragsize;
        dunedaq::daqdataformats::Fragment frag( &infiledata[ibegin], dunedaq::daqdataformats::Fragment::BufferAdoptionMode::kReadOnlyMode);

        frame_loop:
        for (size_t iFrame = 0; iFrame < n_frames; iFrame++)
        {
            auto frame = reinterpret_cast<dunedaq::detdataformats::wib2::WIB2Frame*>(static_cast<uint8_t*>(frag.get_data()) + iFrame*sizeof(dunedaq::detdataformats::wib2::WIB2Frame));
            if (iFrame == 0)
            {
                crate = frame->header.crate;
                slot = frame->header.slot;
                link_from_frameheader = frame->header.link;
            }


            frame_chan_loop:
            for (size_t iChan = 0; iChan < dunedaq::detdataformats::wib2::WIB2Frame::s_num_channels; iChan++)
            {
				#pragma HLS pipeline
            	auto adc = frame->get_adc(iChan);
            	int main_array_index = iFrame / 100;
            	int sub_array_index = iFrame % 100;
            	adc_vectors[main_array_index][iChan][sub_array_index] = adc;
            }
     	first_chan_loop:
        for (size_t iChan = 0; iChan < dunedaq::detdataformats::wib2::WIB2Frame::s_num_channels; iChan++)
        {
        	int sum = 0;
        	const int AVG_SIZE = 100;

        	first_chan_frame_loop:
        	for (int i =0; i<AVG_SIZE; i++)
        	{
        	      sum += adc_vectors[1][iChan][i];
        	}

            ave[iChan] = sum / AVG_SIZE;

        }

        second_chan_loop:
        for (size_t iChan = 0; iChan < dunedaq::detdataformats::wib2::WIB2Frame::s_num_channels; iChan++)
        {
            uint32_t slotloc = slot;
            slotloc &= 0x7;

            const int CHAN_MIN = 1600;

            auto hdchaninfo = chanmap.GetChanInfoFromWIBElements (crate, slotloc, link_from_frameheader, iChan);
            unsigned int offline_chan = hdchaninfo.offlchan;
            unsigned int offline_plane = hdchaninfo.plane;

            if(offline_plane == 2 && offline_chan - CHAN_MIN < z_channels)
                            	            {
                for (int i = 0; i < n_frames; i++)
                {

                	if(i<100)
                	{
                	    planes[offline_chan - CHAN_MIN][i] = adc_vectors[0][iChan][i]-ave[iChan];
                	}
                	else if(i<200)
                	{
                	    planes[offline_chan - CHAN_MIN][i] = adc_vectors[1][iChan][i]-ave[iChan];
                	}
                	else if(i<300)
                	{
                	    planes[offline_chan - CHAN_MIN][i] = adc_vectors[2][iChan][i]-ave[iChan];
                	}
                	else if(i<400)
                	{
                	    planes[offline_chan - CHAN_MIN][i] = adc_vectors[3][iChan][i]-ave[iChan];
                	}
                	else if(i<500)
                	{
                	    planes[offline_chan - CHAN_MIN][i] = adc_vectors[4][iChan][i]-ave[iChan];
                	}
                	else if(i<600)
                	{
                	    planes[offline_chan - CHAN_MIN][i] = adc_vectors[5][iChan][i]-ave[iChan];
                	}
                	else if(i<700)
                	{
                	    planes[offline_chan - CHAN_MIN][i] = adc_vectors[6][iChan][i]-ave[iChan];
                	}
                	else if(i<800)
                	{
                	    planes[offline_chan - CHAN_MIN][i] = adc_vectors[7][iChan][i]-ave[iChan];
                	}
                	else if(i<900)
                	{
                	    planes[offline_chan - CHAN_MIN][i] = adc_vectors[8][iChan][i]-ave[iChan];
                	}
                	else if(i<1000)
                	{
                	    planes[offline_chan - CHAN_MIN][i] = adc_vectors[9][iChan][i]-ave[iChan];
                	}
                	else if(i<1100)
                	{
                	    planes[offline_chan - CHAN_MIN][i] = adc_vectors[10][iChan][i]-ave[iChan];
                	}
                	else if(i<1200)
                	{
                	    planes[offline_chan - CHAN_MIN][i] = adc_vectors[11][iChan][i]-ave[iChan];
                	}
                	else if(i<1300)
                	{
                	    planes[offline_chan - CHAN_MIN][i] = adc_vectors[12][iChan][i]-ave[iChan];
                	}
                	else if(i<1400)
                	{
                	    planes[offline_chan - CHAN_MIN][i] = adc_vectors[13][iChan][i]-ave[iChan];
                	}
                	else if(i<1500)
                	{
                	    planes[offline_chan - CHAN_MIN][i] = adc_vectors[14][iChan][i]-ave[iChan];
                	}
                	else if(i<1600)
                	{
                	    planes[offline_chan - CHAN_MIN][i] = adc_vectors[15][iChan][i]-ave[iChan];
                	}
                	else if(i<1700)
                	{
                	    planes[offline_chan - CHAN_MIN][i] = adc_vectors[16][iChan][i]-ave[iChan];
                	}
                	else if(i<1800)
                	{
                	    planes[offline_chan - CHAN_MIN][i] = adc_vectors[17][iChan][i]-ave[iChan];
                	}
                	else if(i<1900)
                	{
                	    planes[offline_chan - CHAN_MIN][i] = adc_vectors[18][iChan][i]-ave[iChan];
                	}
                	else if(i<2000)
                	{
                	    planes[offline_chan - CHAN_MIN][i] = adc_vectors[19][iChan][i]-ave[iChan];
                	}
                	else if(i<2100)
                	{
                	    planes[offline_chan - CHAN_MIN][i] = adc_vectors[20][iChan][i]-ave[iChan];
                	}
                	else if(i<2200)
                	{
                	    planes[offline_chan - CHAN_MIN][i] = adc_vectors[21][iChan][i]-ave[iChan];
                	}
                	else if(i<2300)
                	{
                	    planes[offline_chan - CHAN_MIN][i] = adc_vectors[22][iChan][i]-ave[iChan];
                	}
                	else if(i<2400)
                	{
                	    planes[offline_chan - CHAN_MIN][i] = adc_vectors[23][iChan][i]-ave[iChan];
                	}
                	else if(i<2500)
                	{
                	    planes[offline_chan - CHAN_MIN][i] = adc_vectors[24][iChan][i]-ave[iChan];
                	}
                	else if(i<2600)
                	{
                	    planes[offline_chan - CHAN_MIN][i] = adc_vectors[25][iChan][i]-ave[iChan];
                	}
                	else if(i<2700)
                	{
                	    planes[offline_chan - CHAN_MIN][i] = adc_vectors[26][iChan][i]-ave[iChan];
                	}
                	else if(i<2800)
                	{
                	    planes[offline_chan - CHAN_MIN][i] = adc_vectors[27][iChan][i]-ave[iChan];
                	}
                	else if(i<2900)
                	{
                	    planes[offline_chan - CHAN_MIN][i] = adc_vectors[28][iChan][i]-ave[iChan];
                	}
                	else if(i<3000)
                	{
                	    planes[offline_chan - CHAN_MIN][i] = adc_vectors[29][iChan][i]-ave[iChan];
                	}
                	else if(i<3100)
                	{
                	    planes[offline_chan - CHAN_MIN][i] = adc_vectors[30][iChan][i]-ave[iChan];
                	}
                	else if(i<3200)
                	{
                	    planes[offline_chan - CHAN_MIN][i] = adc_vectors[31][iChan][i]-ave[iChan];
                	}
                	else if(i<3300)
                	{
                	    planes[offline_chan - CHAN_MIN][i] = adc_vectors[32][iChan][i]-ave[iChan];
                	}
                	else if(i<3400)
                	{
                	    planes[offline_chan - CHAN_MIN][i] = adc_vectors[33][iChan][i]-ave[iChan];
                	}
                	else if(i<3500)
                	{
                	    planes[offline_chan - CHAN_MIN][i] = adc_vectors[34][iChan][i]-ave[iChan];
                	}
                	else if(i<3600)
                	{
                	    planes[offline_chan - CHAN_MIN][i] = adc_vectors[35][iChan][i]-ave[iChan];
                	}
                	else if(i<3700)
                	{
                	    planes[offline_chan - CHAN_MIN][i] = adc_vectors[36][iChan][i]-ave[iChan];
                	}
                	else if(i<3800)
                	{
                	    planes[offline_chan - CHAN_MIN][i] = adc_vectors[37][iChan][i]-ave[iChan];
                	}
                	else if(i<3900)
                	{
                	    planes[offline_chan - CHAN_MIN][i] = adc_vectors[38][iChan][i]-ave[iChan];
                	}
                	else if(i<4000)
                	{
                	    planes[offline_chan - CHAN_MIN][i] = adc_vectors[39][iChan][i]-ave[iChan];
                	}
                	else if(i<4100)
                	{
                	    planes[offline_chan - CHAN_MIN][i] = adc_vectors[40][iChan][i]-ave[iChan];
                	}
                	else if(i<4200)
                	{
                	    planes[offline_chan - CHAN_MIN][i] = adc_vectors[41][iChan][i]-ave[iChan];
                	}
                	else if(i<4300)
                	{
                	    planes[offline_chan - CHAN_MIN][i] = adc_vectors[42][iChan][i]-ave[iChan];
                	}
                	else if(i<4400)
                	{
                	    planes[offline_chan - CHAN_MIN][i] = adc_vectors[43][iChan][i]-ave[iChan];
                	}
                	else if(i<4500)
                	{
                	    planes[offline_chan - CHAN_MIN][i] = adc_vectors[44][iChan][i]-ave[iChan];
                	}
                	else if(i<4600)
                	{
                	    planes[offline_chan - CHAN_MIN][i] = adc_vectors[45][iChan][i]-ave[iChan];
                	}
                	else if(i<4700)
                	{
                	    planes[offline_chan - CHAN_MIN][i] = adc_vectors[46][iChan][i]-ave[iChan];
                	}
                	else if(i<4800)
                	{
                	    planes[offline_chan - CHAN_MIN][i] = adc_vectors[47][iChan][i]-ave[iChan];
                	}
                	else if(i<4900)
                	{
                	    planes[offline_chan - CHAN_MIN][i] = adc_vectors[48][iChan][i]-ave[iChan];
                	}
                	else if(i<5000)
                	{
                	    planes[offline_chan - CHAN_MIN][i] = adc_vectors[49][iChan][i]-ave[iChan];
                	}
                	else if(i<5000)
                	{
                	    planes[offline_chan - CHAN_MIN][i] = adc_vectors[49][iChan][i]-ave[iChan];
                	}
                	else if(i<5100)
                	{
                	    planes[offline_chan - CHAN_MIN][i] = adc_vectors[50][iChan][i]-ave[iChan];
                	}
                	else if(i<5200)
                	{
                	    planes[offline_chan - CHAN_MIN][i] = adc_vectors[51][iChan][i]-ave[iChan];
                	}
                	else if(i<5300)
                	{
                	    planes[offline_chan - CHAN_MIN][i] = adc_vectors[52][iChan][i]-ave[iChan];
                	}
                	else if(i<5400)
                	{
                	    planes[offline_chan - CHAN_MIN][i] = adc_vectors[53][iChan][i]-ave[iChan];
                	}
                	else if(i<5500)
                	{
                	    planes[offline_chan - CHAN_MIN][i] = adc_vectors[54][iChan][i]-ave[iChan];
                	}
                	else if(i<5600)
                	{
                	    planes[offline_chan - CHAN_MIN][i] = adc_vectors[55][iChan][i]-ave[iChan];
                	}
                	else if(i<5700)
                	{
                	    planes[offline_chan - CHAN_MIN][i] = adc_vectors[56][iChan][i]-ave[iChan];
                	}
                	else if(i<5800)
                	{
                	    planes[offline_chan - CHAN_MIN][i] = adc_vectors[57][iChan][i]-ave[iChan];
                	}
                	else if(i<5900)
                	{
                	    planes[offline_chan - CHAN_MIN][i] = adc_vectors[58][iChan][i]-ave[iChan];
                	}
                	else if(i<6000)
                	{
                	    planes[offline_chan - CHAN_MIN][i] = adc_vectors[59][iChan][i]-ave[iChan];
                	}
                }
            }

            else if(offline_plane == 2 && offline_chan - CHAN_MIN - z_channels < z_channels)
            {
            	for (int i = 0; i < n_frames; i++)
            	{
            		if(i<100)
            		{
            		    planes2[offline_chan - CHAN_MIN - z_channels][i] = adc_vectors[0][iChan][i]-ave[iChan];
            		}
            		else if(i<200)
            		{
            		    planes2[offline_chan - CHAN_MIN - z_channels][i] = adc_vectors[1][iChan][i]-ave[iChan];
            		}
            		else if(i<300)
            		{
            		    planes2[offline_chan - CHAN_MIN - z_channels][i] = adc_vectors[2][iChan][i]-ave[iChan];
            		}
            		else if(i<400)
            		{
            		    planes2[offline_chan - CHAN_MIN - z_channels][i] = adc_vectors[3][iChan][i]-ave[iChan];
            		}
            		else if(i<500)
            		{
            		    planes2[offline_chan - CHAN_MIN - z_channels][i] = adc_vectors[4][iChan][i]-ave[iChan];
            		}
            		else if(i<600)
            		{
            		    planes2[offline_chan - CHAN_MIN - z_channels][i] = adc_vectors[5][iChan][i]-ave[iChan];
            		}
            		else if(i<700)
            		{
            		    planes2[offline_chan - CHAN_MIN - z_channels][i] = adc_vectors[6][iChan][i]-ave[iChan];
            		}
            		else if(i<800)
            		{
            		    planes2[offline_chan - CHAN_MIN - z_channels][i] = adc_vectors[7][iChan][i]-ave[iChan];
            		}
            		else if(i<900)
            		{
            		    planes2[offline_chan - CHAN_MIN - z_channels][i] = adc_vectors[8][iChan][i]-ave[iChan];
            		}
            		else if(i<1000)
            		{
            		    planes2[offline_chan - CHAN_MIN - z_channels][i] = adc_vectors[9][iChan][i]-ave[iChan];
            		}
            		else if(i<1100)
            		{
            		    planes2[offline_chan - CHAN_MIN - z_channels][i] = adc_vectors[10][iChan][i]-ave[iChan];
            		}
            		else if(i<1200)
            		{
            		    planes2[offline_chan - CHAN_MIN - z_channels][i] = adc_vectors[11][iChan][i]-ave[iChan];
            		}
            		else if(i<1300)
            		{
            		    planes2[offline_chan - CHAN_MIN - z_channels][i] = adc_vectors[12][iChan][i]-ave[iChan];
            		}
            		else if(i<1400)
            		{
            		    planes2[offline_chan - CHAN_MIN - z_channels][i] = adc_vectors[13][iChan][i]-ave[iChan];
            		}
            		else if(i<1500)
            		{
            		    planes2[offline_chan - CHAN_MIN - z_channels][i] = adc_vectors[14][iChan][i]-ave[iChan];
            		}
            		else if(i<1600)
            		{
            		    planes2[offline_chan - CHAN_MIN - z_channels][i] = adc_vectors[15][iChan][i]-ave[iChan];
            		}
            		else if(i<1700)
            		{
            		    planes2[offline_chan - CHAN_MIN - z_channels][i] = adc_vectors[16][iChan][i]-ave[iChan];
            		}
            		else if(i<1800)
            		{
            		    planes2[offline_chan - CHAN_MIN - z_channels][i] = adc_vectors[17][iChan][i]-ave[iChan];
            		}
            		else if(i<1900)
            		{
            		    planes2[offline_chan - CHAN_MIN - z_channels][i] = adc_vectors[18][iChan][i]-ave[iChan];
            		}
            		else if(i<2000)
            		{
            		    planes2[offline_chan - CHAN_MIN - z_channels][i] = adc_vectors[19][iChan][i]-ave[iChan];
            		}
            		else if(i<2100)
            		{
            		    planes2[offline_chan - CHAN_MIN - z_channels][i] = adc_vectors[20][iChan][i]-ave[iChan];
            		}
            		else if(i<2200)
            		{
            		    planes2[offline_chan - CHAN_MIN - z_channels][i] = adc_vectors[21][iChan][i]-ave[iChan];
            		}
            		else if(i<2300)
            		{
            		    planes2[offline_chan - CHAN_MIN - z_channels][i] = adc_vectors[22][iChan][i]-ave[iChan];
            		}
            		else if(i<2400)
            		{
            		    planes2[offline_chan - CHAN_MIN - z_channels][i] = adc_vectors[23][iChan][i]-ave[iChan];
            		}
            		else if(i<2500)
            		{
            		    planes2[offline_chan - CHAN_MIN - z_channels][i] = adc_vectors[24][iChan][i]-ave[iChan];
            		}
            		else if(i<2600)
            		{
            		    planes2[offline_chan - CHAN_MIN - z_channels][i] = adc_vectors[25][iChan][i]-ave[iChan];
            		}
            		else if(i<2700)
            		{
            		    planes2[offline_chan - CHAN_MIN - z_channels][i] = adc_vectors[26][iChan][i]-ave[iChan];
            		}
            		else if(i<2800)
            		{
            		    planes2[offline_chan - CHAN_MIN - z_channels][i] = adc_vectors[27][iChan][i]-ave[iChan];
            		}
            		else if(i<2900)
            		{
            		    planes2[offline_chan - CHAN_MIN - z_channels][i] = adc_vectors[28][iChan][i]-ave[iChan];
            		}
            		else if(i<3000)
            		{
            		    planes2[offline_chan - CHAN_MIN - z_channels][i] = adc_vectors[29][iChan][i]-ave[iChan];
            		}
            		else if(i<3100)
            		{
            		    planes2[offline_chan - CHAN_MIN - z_channels][i] = adc_vectors[30][iChan][i]-ave[iChan];
            		}
            		else if(i<3200)
            		{
            		    planes2[offline_chan - CHAN_MIN - z_channels][i] = adc_vectors[31][iChan][i]-ave[iChan];
            		}
            		else if(i<3300)
            		{
            		    planes2[offline_chan - CHAN_MIN - z_channels][i] = adc_vectors[32][iChan][i]-ave[iChan];
            		}
            		else if(i<3400)
            		{
            		    planes2[offline_chan - CHAN_MIN - z_channels][i] = adc_vectors[33][iChan][i]-ave[iChan];
            		}
            		else if(i<3500)
            		{
            		    planes2[offline_chan - CHAN_MIN - z_channels][i] = adc_vectors[34][iChan][i]-ave[iChan];
            		}
            		else if(i<3600)
            		{
            		    planes2[offline_chan - CHAN_MIN - z_channels][i] = adc_vectors[35][iChan][i]-ave[iChan];
            		}
            		else if(i<3700)
            		{
            		    planes2[offline_chan - CHAN_MIN - z_channels][i] = adc_vectors[36][iChan][i]-ave[iChan];
            		}
            		else if(i<3800)
            		{
            		    planes2[offline_chan - CHAN_MIN - z_channels][i] = adc_vectors[37][iChan][i]-ave[iChan];
            		}
            		else if(i<3900)
            		{
            		    planes2[offline_chan - CHAN_MIN - z_channels][i] = adc_vectors[38][iChan][i]-ave[iChan];
            		}
            		else if(i<4000)
            		{
            		    planes2[offline_chan - CHAN_MIN - z_channels][i] = adc_vectors[39][iChan][i]-ave[iChan];
            		}
            		else if(i<4100)
            		{
            		    planes2[offline_chan - CHAN_MIN - z_channels][i] = adc_vectors[40][iChan][i]-ave[iChan];
            		}
            		else if(i<4200)
            		{
            		    planes2[offline_chan - CHAN_MIN - z_channels][i] = adc_vectors[41][iChan][i]-ave[iChan];
            		}
            		else if(i<4300)
            		{
            		    planes2[offline_chan - CHAN_MIN - z_channels][i] = adc_vectors[42][iChan][i]-ave[iChan];
            		}
            		else if(i<4400)
            		{
            		    planes2[offline_chan - CHAN_MIN - z_channels][i] = adc_vectors[43][iChan][i]-ave[iChan];
            		}
            		else if(i<4500)
            		{
            		    planes2[offline_chan - CHAN_MIN - z_channels][i] = adc_vectors[44][iChan][i]-ave[iChan];
            		}
            		else if(i<4600)
            		{
            		    planes2[offline_chan - CHAN_MIN - z_channels][i] = adc_vectors[45][iChan][i]-ave[iChan];
            		}
            		else if(i<4700)
            		{
            		    planes2[offline_chan - CHAN_MIN - z_channels][i] = adc_vectors[46][iChan][i]-ave[iChan];
            		}
            		else if(i<4800)
            		{
            		    planes2[offline_chan - CHAN_MIN - z_channels][i] = adc_vectors[47][iChan][i]-ave[iChan];
            		}
            		else if(i<4900)
            		{
            		    planes2[offline_chan - CHAN_MIN - z_channels][i] = adc_vectors[48][iChan][i]-ave[iChan];
            		}
            		else if(i<5000)
            		{
            		    planes2[offline_chan - CHAN_MIN - z_channels][i] = adc_vectors[49][iChan][i]-ave[iChan];
            		}
            		else if(i<5100)
            		{
            		    planes2[offline_chan - CHAN_MIN - z_channels][i] = adc_vectors[50][iChan][i]-ave[iChan];
            		}
            		else if(i<5200)
            		{
            		    planes2[offline_chan - CHAN_MIN - z_channels][i] = adc_vectors[51][iChan][i]-ave[iChan];
            		}
            		else if(i<5300)
            		{
            		    planes2[offline_chan - CHAN_MIN - z_channels][i] = adc_vectors[52][iChan][i]-ave[iChan];
            		}
            		else if(i<5400)
            		{
            		    planes2[offline_chan - CHAN_MIN - z_channels][i] = adc_vectors[53][iChan][i]-ave[iChan];
            		}
            		else if(i<5500)
            		{
            		    planes2[offline_chan - CHAN_MIN - z_channels][i] = adc_vectors[54][iChan][i]-ave[iChan];
            		}
            		else if(i<5600)
            		{
            		    planes2[offline_chan - CHAN_MIN - z_channels][i] = adc_vectors[55][iChan][i]-ave[iChan];
            		}
            		else if(i<5700)
            		{
            		    planes2[offline_chan - CHAN_MIN - z_channels][i] = adc_vectors[56][iChan][i]-ave[iChan];
            		}
            		else if(i<5800)
            		{
            		    planes2[offline_chan - CHAN_MIN - z_channels][i] = adc_vectors[57][iChan][i]-ave[iChan];
            		}
            		else if(i<5900)
            		{
            		    planes2[offline_chan - CHAN_MIN - z_channels][i] = adc_vectors[58][iChan][i]-ave[iChan];
            		}
            		else if(i<6000)
            		{
            		    planes2[offline_chan - CHAN_MIN - z_channels][i] = adc_vectors[59][iChan][i]-ave[iChan];
                    }
            	 }
              }
           }
        }
     }


    //Call 2D CNN on both sides of z plane

    const int TICK_SIZE = 128;
    hls::stream<input_t> zero_padding2d_input("zero_padding2d_input");
    input_t pack;
    hls::stream<result_t> layer19_out;

    //only does ticks by 128, there will be some ticks never processed

	for (int i = 0; i < 128; i += TICK_SIZE)
	{
		for(int j = 0; j < z_channels; j++)
		{
			for(int k = 0; k <TICK_SIZE; k++)
			{
				   int fill = planes[j][i+k];
				   pack[0] = typename input_t::value_type(fill);
				   zero_padding2d_input.write(pack);
			}
		}

		myproject(zero_padding2d_input, layer19_out);
		auto cc_prob = layer19_out.read();
		for (int z = 0; z < 3; z++)
		{
			outdata[z+(i/TICK_SIZE)*3] = cc_prob[z];

		}
	}

	//only does ticks by 128, there will be some ticks never processed

	for (int i = 0; i < n_frames; i += TICK_SIZE)
	{
		for(int j = 0; j < z_channels; j++)
		{
			for(int k = 0; k <TICK_SIZE; k++)
			{
				   int fill = planes2[j][i+k];
				   pack[0] = typename input_t::value_type(fill);
				   zero_padding2d_input.write(pack);
			}
		}

		myproject(zero_padding2d_input, layer19_out);
		auto cc_prob = layer19_out.read();
		int side1_data = 138;
		for (int z = 0; z < 3; z++)
		{
			outdata[side1_data+z+(i/TICK_SIZE)*3] = cc_prob[z];
		}
	}



}
