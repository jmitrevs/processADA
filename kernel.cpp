#include "kernel.h"
#include "hls_stream.h"
#include "defines3.h"

#include <iostream>

void process_data(const int infile_size, char infiledata[28320800],dune::FDHDChannelMapSP& chanmap ,int outdata[276])
{
#pragma HLS INTERFACE m_axi port=infiledata depth=28320800
#pragma HLS INTERFACE m_axi port=infiledata depth=276

	//Create variables

	constexpr unsigned int NUM_LINKS = 10;
	const int z_channels = 480;
	const int n_frames = 6000;

	//Manual Partition
	static int adc_vectors[256][100];
	static int adc_vectors2[256][100];
	static int adc_vectors3[256][100];
	static int adc_vectors4[256][100];
	static int adc_vectors5[256][100];
	static int adc_vectors6[256][100];
	static int adc_vectors7[256][100];
	static int adc_vectors8[256][100];
	static int adc_vectors9[256][100];
	static int adc_vectors10[256][100];
	static int adc_vectors11[256][100];
	static int adc_vectors12[256][100];
	static int adc_vectors13[256][100];
	static int adc_vectors14[256][100];
	static int adc_vectors15[256][100];
	static int adc_vectors16[256][100];
	static int adc_vectors17[256][100];
	static int adc_vectors18[256][100];
	static int adc_vectors19[256][100];
	static int adc_vectors20[256][100];
	static int adc_vectors21[256][100];
	static int adc_vectors22[256][100];
	static int adc_vectors23[256][100];
	static int adc_vectors24[256][100];
	static int adc_vectors25[256][100];
	static int adc_vectors26[256][100];
	static int adc_vectors27[256][100];
	static int adc_vectors28[256][100];
	static int adc_vectors29[256][100];
	static int adc_vectors30[256][100];
	static int adc_vectors31[256][100];
	static int adc_vectors32[256][100];
	static int adc_vectors33[256][100];
	static int adc_vectors34[256][100];
	static int adc_vectors35[256][100];
	static int adc_vectors36[256][100];
	static int adc_vectors37[256][100];
	static int adc_vectors38[256][100];
	static int adc_vectors39[256][100];
	static int adc_vectors40[256][100];
	static int adc_vectors41[256][100];
	static int adc_vectors42[256][100];
	static int adc_vectors43[256][100];
	static int adc_vectors44[256][100];
	static int adc_vectors45[256][100];
	static int adc_vectors46[256][100];
	static int adc_vectors47[256][100];
	static int adc_vectors48[256][100];
	static int adc_vectors49[256][100];
	static int adc_vectors50[256][100];
	static int adc_vectors51[256][100];
	static int adc_vectors52[256][100];
	static int adc_vectors53[256][100];
	static int adc_vectors54[256][100];
	static int adc_vectors55[256][100];
	static int adc_vectors56[256][100];
	static int adc_vectors57[256][100];
	static int adc_vectors58[256][100];
	static int adc_vectors59[256][100];
	static int adc_vectors60[256][100];

#pragma HLS INTERFACE m_axi depth=1536000 port=adc_vectors offset=slave bundle=gmem
#pragma HLS ARRAY_PARTITION variable=adc_vectors type=block factor=60 dim=2


	static int planes[z_channels][n_frames];
	static int planes2[z_channels][n_frames];

	if ( infile_size% NUM_LINKS != 0)
	{
	    return;
	}

	size_t fragsize = (infile_size / NUM_LINKS);

    //Fill z planes and subtract pedestal

    link_loop:
    for (size_t link = 0; link < NUM_LINKS; link++)
    {
    	int ave[dunedaq::detdataformats::wib2::WIB2Frame::s_num_channels];
    	int adc_vect[dunedaq::detdataformats::wib2::WIB2Frame::s_num_channels];

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

				if(iFrame<100)
				{
					adc_vectors[iFrame][iChan] = adc;
				}
                	else if(iFrame < 200)
                {
                	adc_vectors2[iFrame][iChan] = adc;
                }
                	else if(iFrame < 300)
				{
					adc_vectors3[iFrame][iChan] = adc;
				}
                	else if(iFrame < 400)
				{
					adc_vectors4[iFrame][iChan] = adc;
				}
                	else if(iFrame < 500)
				{
					adc_vectors5[iFrame][iChan] = adc;
				}
				else if(iFrame < 600)
				{
					adc_vectors6[iFrame][iChan] = adc;
				}
				else if(iFrame < 700)
				{
				    adc_vectors7[iFrame][iChan] = adc;
				}
				else if(iFrame < 800)
				{
				    adc_vectors8[iFrame][iChan] = adc;
				}
				else if(iFrame < 900)
				{
				    adc_vectors9[iFrame][iChan] = adc;
				}
				else if(iFrame < 1000)
				{
				    adc_vectors10[iFrame][iChan] = adc;
				}
				else if(iFrame < 1100)
				{
				    adc_vectors11[iFrame][iChan] = adc;
				}
				else if(iFrame < 1200)
				{
				    adc_vectors12[iFrame][iChan] = adc;
				}
				else if(iFrame < 1300)
				{
				    adc_vectors13[iFrame][iChan] = adc;
				}
				else if(iFrame < 1400)
				{
				    adc_vectors14[iFrame][iChan] = adc;
				}
				else if(iFrame < 1500)
				{
				    adc_vectors15[iFrame][iChan] = adc;
				}
				else if(iFrame < 1600)
				{
				    adc_vectors16[iFrame][iChan] = adc;
				}
				else if(iFrame < 1700)
				{
				    adc_vectors17[iFrame][iChan] = adc;
				}
				else if(iFrame < 1800)
				{
				    adc_vectors18[iFrame][iChan] = adc;
				}
				else if(iFrame < 1900)
				{
				    adc_vectors19[iFrame][iChan] = adc;
				}
				else if(iFrame < 2000)
				{
				    adc_vectors20[iFrame][iChan] = adc;
				}
				else if(iFrame < 2100)
				{
				    adc_vectors21[iFrame][iChan] = adc;
				}
				else if(iFrame < 2200)
				{
				    adc_vectors22[iFrame][iChan] = adc;
				}
				else if(iFrame < 2300)
				{
				    adc_vectors23[iFrame][iChan] = adc;
				}
				else if(iFrame < 2400)
				{
				    adc_vectors24[iFrame][iChan] = adc;
				}
				else if(iFrame < 2500)
				{
				    adc_vectors25[iFrame][iChan] = adc;
				}
				else if(iFrame < 2600)
				{
				    adc_vectors26[iFrame][iChan] = adc;
				}
				else if(iFrame < 2700)
				{
				    adc_vectors27[iFrame][iChan] = adc;
				}
				else if(iFrame < 2800)
				{
				    adc_vectors28[iFrame][iChan] = adc;
				}
				else if(iFrame < 2900)
				{
				    adc_vectors29[iFrame][iChan] = adc;
				}
				else if(iFrame < 3000)
				{
				    adc_vectors30[iFrame][iChan] = adc;
				}
				else if(iFrame < 3100)
				{
				    adc_vectors31[iFrame][iChan] = adc;
				}
				else if(iFrame < 3200)
				{
				    adc_vectors32[iFrame][iChan] = adc;
				}
				else if(iFrame < 3300)
				{
				    adc_vectors33[iFrame][iChan] = adc;
				}
				else if(iFrame < 3400)
				{
				    adc_vectors34[iFrame][iChan] = adc;
				}
				else if(iFrame < 3500)
				{
				    adc_vectors35[iFrame][iChan] = adc;
				}
				else if(iFrame < 3600)
				{
				    adc_vectors36[iFrame][iChan] = adc;
				}
				else if(iFrame < 3700)
				{
				    adc_vectors37[iFrame][iChan] = adc;
				}
				else if(iFrame < 3800)
				{
				    adc_vectors38[iFrame][iChan] = adc;
				}
				else if(iFrame < 3900)
				{
				    adc_vectors39[iFrame][iChan] = adc;
				}
				else if(iFrame < 4000)
				{
				    adc_vectors40[iFrame][iChan] = adc;
				}
				else if(iFrame < 4100)
				{
				    adc_vectors41[iFrame][iChan] = adc;
				}
				else if(iFrame < 4200)
				{
				    adc_vectors42[iFrame][iChan] = adc;
				}
				else if(iFrame < 4300)
				{
				    adc_vectors43[iFrame][iChan] = adc;
				}
				else if(iFrame < 4400)
				{
				    adc_vectors44[iFrame][iChan] = adc;
				}
				else if(iFrame < 4500)
				{
				    adc_vectors45[iFrame][iChan] = adc;
				}
				else if(iFrame < 4600)
				{
				    adc_vectors46[iFrame][iChan] = adc;
				}
				else if(iFrame < 4700)
				{
				    adc_vectors47[iFrame][iChan] = adc;
				}
				else if(iFrame < 4800)
				{
				    adc_vectors48[iFrame][iChan] = adc;
				}
				else if(iFrame < 4900)
				{
				    adc_vectors49[iFrame][iChan] = adc;
				}
				else if(iFrame < 5000)
				{
				    adc_vectors50[iFrame][iChan] = adc;
				}
				else if(iFrame < 5100)
				{
				    adc_vectors51[iFrame][iChan] = adc;
				}
				else if(iFrame < 5200)
				{
				    adc_vectors52[iFrame][iChan] = adc;
				}
				else if(iFrame < 5300)
				{
				    adc_vectors53[iFrame][iChan] = adc;
				}
				else if(iFrame < 5400)
				{
				    adc_vectors54[iFrame][iChan] = adc;
				}
				else if(iFrame < 5500)
				{
				    adc_vectors55[iFrame][iChan] = adc;
				}
				else if(iFrame < 5600)
				{
				    adc_vectors56[iFrame][iChan] = adc;
				}
				else if(iFrame < 5700)
				{
				    adc_vectors57[iFrame][iChan] = adc;
				}
				else if(iFrame < 5800)
				{
				    adc_vectors58[iFrame][iChan] = adc;
				}
				else if(iFrame < 5900)
				{
				    adc_vectors59[iFrame][iChan] = adc;
				}
				else if(iFrame < 6000)
				{
				    adc_vectors60[iFrame][iChan] = adc;
				}

            }

        }


     	first_chan_loop:
        for (size_t iChan = 0; iChan < dunedaq::detdataformats::wib2::WIB2Frame::s_num_channels; iChan++)
        {
        	int sum = 0;
        	const int AVG_SIZE = 100;

        	first_chan_frame_loop:
        	for (int i =0; i<AVG_SIZE; i++)
        	{
        	      sum += adc_vectors[iChan][i];
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

                		  //std::cout<<offline_chan - CHAN_MIN << std::endl;
                	if(i<100)
                	{
                		planes[offline_chan - CHAN_MIN][i] = adc_vectors[iChan][i]-ave[iChan];
                	}
                	else if(i<200)
                	{
                		planes[offline_chan - CHAN_MIN][i] = adc_vectors2[iChan][i]-ave[iChan];
                	}

                	else if(i<300)
					{
						planes[offline_chan - CHAN_MIN][i] = adc_vectors3[iChan][i]-ave[iChan];
					}
                	else if(i<400)
					{
						planes[offline_chan - CHAN_MIN][i] = adc_vectors4[iChan][i]-ave[iChan];
					}
                	else if(i<500)
					{
						planes[offline_chan - CHAN_MIN][i] = adc_vectors5[iChan][i]-ave[iChan];
					}
                	else if(i<600)
					{
						planes[offline_chan - CHAN_MIN][i] = adc_vectors6[iChan][i]-ave[iChan];
					}
                	else if(i<700)
                	{
                	    planes[offline_chan - CHAN_MIN][i] = adc_vectors7[iChan][i]-ave[iChan];
                	}
                	else if(i<800)
                	{
                	    planes[offline_chan - CHAN_MIN][i] = adc_vectors8[iChan][i]-ave[iChan];
                	}
                	else if(i<900)
                	{
                	    planes[offline_chan - CHAN_MIN][i] = adc_vectors9[iChan][i]-ave[iChan];
                	}
                	else if(i<1000)
                	{
                	    planes[offline_chan - CHAN_MIN][i] = adc_vectors10[iChan][i]-ave[iChan];
                	}
                	else if(i<1100)
                	{
                	    planes[offline_chan - CHAN_MIN][i] = adc_vectors11[iChan][i]-ave[iChan];
                	}
                	else if(i<1200)
                	{
                	    planes[offline_chan - CHAN_MIN][i] = adc_vectors12[iChan][i]-ave[iChan];
                	}
                	else if(i<1300)
                	{
                	    planes[offline_chan - CHAN_MIN][i] = adc_vectors13[iChan][i]-ave[iChan];
                	}
                	else if(i<1400)
                	{
                	    planes[offline_chan - CHAN_MIN][i] = adc_vectors14[iChan][i]-ave[iChan];
                	}
                	else if(i<1500)
                	{
                	    planes[offline_chan - CHAN_MIN][i] = adc_vectors15[iChan][i]-ave[iChan];
                	}
                	else if(i<1600)
                	{
                	    planes[offline_chan - CHAN_MIN][i] = adc_vectors16[iChan][i]-ave[iChan];
                	}
                	else if(i<1700)
                	{
                	    planes[offline_chan - CHAN_MIN][i] = adc_vectors17[iChan][i]-ave[iChan];
                	}
                	else if(i<1800)
                	{
                	    planes[offline_chan - CHAN_MIN][i] = adc_vectors18[iChan][i]-ave[iChan];
                	}
                	else if(i<1900)
                	{
                	    planes[offline_chan - CHAN_MIN][i] = adc_vectors19[iChan][i]-ave[iChan];
                	}
                	else if(i<2000)
                	{
                	    planes[offline_chan - CHAN_MIN][i] = adc_vectors20[iChan][i]-ave[iChan];
                	}
                	else if(i<2100)
                	{
                	    planes[offline_chan - CHAN_MIN][i] = adc_vectors21[iChan][i]-ave[iChan];
                	}
                	else if(i<2200)
                	{
                	    planes[offline_chan - CHAN_MIN][i] = adc_vectors22[iChan][i]-ave[iChan];
                	}
                	else if(i<2300)
                	{
                	    planes[offline_chan - CHAN_MIN][i] = adc_vectors23[iChan][i]-ave[iChan];
                	}
                	else if(i<2400)
                	{
                	    planes[offline_chan - CHAN_MIN][i] = adc_vectors24[iChan][i]-ave[iChan];
                	}
                	else if(i<2500)
                	{
                	    planes[offline_chan - CHAN_MIN][i] = adc_vectors25[iChan][i]-ave[iChan];
                	}
                	else if(i<2600)
                	{
                	    planes[offline_chan - CHAN_MIN][i] = adc_vectors26[iChan][i]-ave[iChan];
                	}
                	else if(i<2700)
                	{
                	    planes[offline_chan - CHAN_MIN][i] = adc_vectors27[iChan][i]-ave[iChan];
                	}
                	else if(i<2800)
                	{
                	    planes[offline_chan - CHAN_MIN][i] = adc_vectors28[iChan][i]-ave[iChan];
                	}
                	else if(i<2900)
                	{
                	    planes[offline_chan - CHAN_MIN][i] = adc_vectors29[iChan][i]-ave[iChan];
                	}
                	else if(i<3000)
                	{
                	    planes[offline_chan - CHAN_MIN][i] = adc_vectors30[iChan][i]-ave[iChan];
                	}
                	else if(i<3100)
                	{
                	    planes[offline_chan - CHAN_MIN][i] = adc_vectors31[iChan][i]-ave[iChan];
                	}
                	else if(i<3200)
                	{
                	    planes[offline_chan - CHAN_MIN][i] = adc_vectors32[iChan][i]-ave[iChan];
                	}
                	else if(i<3300)
                	{
                	    planes[offline_chan - CHAN_MIN][i] = adc_vectors33[iChan][i]-ave[iChan];
                	}
                	else if(i<3400)
                	{
                	    planes[offline_chan - CHAN_MIN][i] = adc_vectors34[iChan][i]-ave[iChan];
                	}
                	else if(i<3500)
                	{
                	    planes[offline_chan - CHAN_MIN][i] = adc_vectors35[iChan][i]-ave[iChan];
                	}
                	else if(i<3600)
                	{
                	    planes[offline_chan - CHAN_MIN][i] = adc_vectors36[iChan][i]-ave[iChan];
                	}
                	else if(i<3700)
                	{
                	    planes[offline_chan - CHAN_MIN][i] = adc_vectors37[iChan][i]-ave[iChan];
                	}
                	else if(i<3800)
                	{
                	    planes[offline_chan - CHAN_MIN][i] = adc_vectors38[iChan][i]-ave[iChan];
                	}
                	else if(i<3900)
                	{
                	    planes[offline_chan - CHAN_MIN][i] = adc_vectors39[iChan][i]-ave[iChan];
                	}
                	else if(i<4000)
                	{
                	    planes[offline_chan - CHAN_MIN][i] = adc_vectors40[iChan][i]-ave[iChan];
                	}
                	else if(i<4100)
                	{
                	    planes[offline_chan - CHAN_MIN][i] = adc_vectors41[iChan][i]-ave[iChan];
                	}
                	else if(i<4200)
                	{
                	    planes[offline_chan - CHAN_MIN][i] = adc_vectors42[iChan][i]-ave[iChan];
                	}
                	else if(i<4300)
                	{
                	    planes[offline_chan - CHAN_MIN][i] = adc_vectors43[iChan][i]-ave[iChan];
                	}
                	else if(i<4400)
                	{
                	    planes[offline_chan - CHAN_MIN][i] = adc_vectors44[iChan][i]-ave[iChan];
                	}
                	else if(i<4500)
                	{
                	    planes[offline_chan - CHAN_MIN][i] = adc_vectors45[iChan][i]-ave[iChan];
                	}
                	else if(i<4600)
                	{
                	    planes[offline_chan - CHAN_MIN][i] = adc_vectors46[iChan][i]-ave[iChan];
                	}
                	else if(i<4700)
                	{
                	    planes[offline_chan - CHAN_MIN][i] = adc_vectors47[iChan][i]-ave[iChan];
                	}
                	else if(i<4800)
                	{
                	    planes[offline_chan - CHAN_MIN][i] = adc_vectors48[iChan][i]-ave[iChan];
                	}
                	else if(i<4900)
                	{
                	    planes[offline_chan - CHAN_MIN][i] = adc_vectors49[iChan][i]-ave[iChan];
                	}
                	else if(i<5000)
                	{
                	    planes[offline_chan - CHAN_MIN][i] = adc_vectors50[iChan][i]-ave[iChan];
                	}
                	else if(i<5100)
                	{
                	    planes[offline_chan - CHAN_MIN][i] = adc_vectors51[iChan][i]-ave[iChan];
                	}
                	else if(i<5200)
                	{
                	    planes[offline_chan - CHAN_MIN][i] = adc_vectors52[iChan][i]-ave[iChan];
                	}
                	else if(i<5300)
                	{
                	    planes[offline_chan - CHAN_MIN][i] = adc_vectors53[iChan][i]-ave[iChan];
                	}
                	else if(i<5400)
                	{
                	    planes[offline_chan - CHAN_MIN][i] = adc_vectors54[iChan][i]-ave[iChan];
                	}
                	else if(i<5500)
                	{
                	    planes[offline_chan - CHAN_MIN][i] = adc_vectors55[iChan][i]-ave[iChan];
                	}
                	else if(i<5600)
                	{
                	    planes[offline_chan - CHAN_MIN][i] = adc_vectors56[iChan][i]-ave[iChan];
                	}
                	else if(i<5700)
                	{
                	    planes[offline_chan - CHAN_MIN][i] = adc_vectors57[iChan][i]-ave[iChan];
                	}
                	else if(i<5800)
                	{
                	    planes[offline_chan - CHAN_MIN][i] = adc_vectors58[iChan][i]-ave[iChan];
                	}
                	else if(i<5900)
                	{
                	    planes[offline_chan - CHAN_MIN][i] = adc_vectors59[iChan][i]-ave[iChan];
                	}
                	else if(i<6000)
                	{
                	    planes[offline_chan - CHAN_MIN][i] = adc_vectors60[iChan][i]-ave[iChan];
                	}

                }
            }

            else if(offline_plane == 2 && offline_chan - CHAN_MIN - z_channels < z_channels)
            {

            	for (int i = 0; i < n_frames; i++)
            	{

            		if(i<100)
            		{
            			planes2[offline_chan - CHAN_MIN - z_channels][i] = adc_vectors[iChan][i]-ave[iChan];
            		}

            		else if(i<200)
                	{
                		planes2[offline_chan - CHAN_MIN - z_channels][i] = adc_vectors2[iChan][i]-ave[iChan];
                	}

            		else if(i<300)
					{
						planes2[offline_chan - CHAN_MIN- z_channels][i] = adc_vectors3[iChan][i]-ave[iChan];
					}
            		else if(i<400)
					{
						planes2[offline_chan - CHAN_MIN- z_channels][i] = adc_vectors4[iChan][i]-ave[iChan];
					}
            		else if(i<500)
					{
						planes2[offline_chan - CHAN_MIN- z_channels][i] = adc_vectors5[iChan][i]-ave[iChan];
					}
            		else if(i<600)
					{
						planes2[offline_chan - CHAN_MIN- z_channels][i] = adc_vectors6[iChan][i]-ave[iChan];
					}
            		else if(i<700)
            		{
            		    planes2[offline_chan - CHAN_MIN- z_channels][i] = adc_vectors7[iChan][i]-ave[iChan];
            		}
            		else if(i<800)
            		{
            		    planes2[offline_chan - CHAN_MIN- z_channels][i] = adc_vectors8[iChan][i]-ave[iChan];
            		}
            		else if(i<900)
            		{
            		    planes2[offline_chan - CHAN_MIN- z_channels][i] = adc_vectors9[iChan][i]-ave[iChan];
            		}
            		else if(i<1000)
            		{
            		    planes2[offline_chan - CHAN_MIN- z_channels][i] = adc_vectors10[iChan][i]-ave[iChan];
            		}
           		else if(i<1100)
            		{
             		    planes2[offline_chan - CHAN_MIN- z_channels][i] = adc_vectors11[iChan][i]-ave[iChan];
            		}
            		else if(i<1200)
            		{
            		    planes2[offline_chan - CHAN_MIN- z_channels][i] = adc_vectors12[iChan][i]-ave[iChan];
            		}
            		else if(i<1300)
            		{
            		    planes2[offline_chan - CHAN_MIN- z_channels][i] = adc_vectors13[iChan][i]-ave[iChan];
            		}
            		else if(i<1400)
            		{
            		    planes2[offline_chan - CHAN_MIN- z_channels][i] = adc_vectors14[iChan][i]-ave[iChan];
            		}
            		else if(i<1500)
            		{
            		    planes2[offline_chan - CHAN_MIN- z_channels][i] = adc_vectors15[iChan][i]-ave[iChan];
            		}
            		else if(i<1600)
            		{
            		    planes2[offline_chan - CHAN_MIN- z_channels][i] = adc_vectors16[iChan][i]-ave[iChan];
            		}
            		else if(i<1700)
            		{
            		    planes2[offline_chan - CHAN_MIN- z_channels][i] = adc_vectors17[iChan][i]-ave[iChan];
            		}
            		else if(i<1800)
            		{
            		    planes2[offline_chan - CHAN_MIN- z_channels][i] = adc_vectors18[iChan][i]-ave[iChan];
            		}
            		else if(i<1900)
            		{
            		    planes2[offline_chan - CHAN_MIN- z_channels][i] = adc_vectors19[iChan][i]-ave[iChan];
            		}
            		else if(i<2000)
            		{
            		    planes2[offline_chan - CHAN_MIN- z_channels][i] = adc_vectors20[iChan][i]-ave[iChan];
            		}
            		else if(i<2100)
            		{
            		    planes2[offline_chan - CHAN_MIN- z_channels][i] = adc_vectors21[iChan][i]-ave[iChan];
            		}
            		else if(i<2200)
            		{
            		    planes2[offline_chan - CHAN_MIN- z_channels][i] = adc_vectors22[iChan][i]-ave[iChan];
            		}
            		else if(i<2300)
            		{
            		    planes2[offline_chan - CHAN_MIN- z_channels][i] = adc_vectors23[iChan][i]-ave[iChan];
            		}
            		else if(i<2400)
            		{
            		    planes2[offline_chan - CHAN_MIN- z_channels][i] = adc_vectors24[iChan][i]-ave[iChan];
            		}
            		else if(i<2500)
            		{
            		    planes2[offline_chan - CHAN_MIN- z_channels][i] = adc_vectors25[iChan][i]-ave[iChan];
            		}
            		else if(i<2600)
            		{
            		    planes2[offline_chan - CHAN_MIN- z_channels][i] = adc_vectors26[iChan][i]-ave[iChan];
            		}
            		else if(i<2700)
            		{
            		    planes2[offline_chan - CHAN_MIN- z_channels][i] = adc_vectors27[iChan][i]-ave[iChan];
            		}
            		else if(i<2800)
            		{
            		    planes2[offline_chan - CHAN_MIN- z_channels][i] = adc_vectors28[iChan][i]-ave[iChan];
            		}
            		else if(i<2900)
            		{
            		    planes2[offline_chan - CHAN_MIN- z_channels][i] = adc_vectors29[iChan][i]-ave[iChan];
            		}
            		else if(i<3000)
            		{
            		    planes2[offline_chan - CHAN_MIN- z_channels][i] = adc_vectors30[iChan][i]-ave[iChan];
            		}
            		else if(i<3100)
            		{
            		    planes2[offline_chan - CHAN_MIN- z_channels][i] = adc_vectors31[iChan][i]-ave[iChan];
            		}
            		else if(i<3200)
            		{
            		    planes2[offline_chan - CHAN_MIN- z_channels][i] = adc_vectors32[iChan][i]-ave[iChan];
            		}
            		else if(i<3300)
            		{
            		    planes2[offline_chan - CHAN_MIN- z_channels][i] = adc_vectors33[iChan][i]-ave[iChan];
            		}
            		else if(i<3400)
            		{
            		    planes2[offline_chan - CHAN_MIN- z_channels][i] = adc_vectors34[iChan][i]-ave[iChan];
            		}
            		else if(i<3500)
            		{
            		    planes2[offline_chan - CHAN_MIN- z_channels][i] = adc_vectors35[iChan][i]-ave[iChan];
            		}
            		else if(i<3600)
            		{
            		    planes2[offline_chan - CHAN_MIN- z_channels][i] = adc_vectors36[iChan][i]-ave[iChan];
            		}
            		else if(i<3700)
            		{
            		    planes2[offline_chan - CHAN_MIN- z_channels][i] = adc_vectors37[iChan][i]-ave[iChan];
            		}
            		else if(i<3800)
            		{
            		    planes2[offline_chan - CHAN_MIN- z_channels][i] = adc_vectors38[iChan][i]-ave[iChan];
            		}
            		else if(i<3900)
            		{
            		    planes2[offline_chan - CHAN_MIN- z_channels][i] = adc_vectors39[iChan][i]-ave[iChan];
            		}
            		else if(i<4000)
            		{
            		    planes2[offline_chan - CHAN_MIN- z_channels][i] = adc_vectors40[iChan][i]-ave[iChan];
            		}
            		else if(i<4100)
            		{
            		    planes2[offline_chan - CHAN_MIN- z_channels][i] = adc_vectors41[iChan][i]-ave[iChan];
            		}
            		else if(i<4200)
            		{
            		    planes2[offline_chan - CHAN_MIN- z_channels][i] = adc_vectors42[iChan][i]-ave[iChan];
            		}
            		else if(i<4300)
            		{
            		    planes2[offline_chan - CHAN_MIN- z_channels][i] = adc_vectors43[iChan][i]-ave[iChan];
            		}
            		else if(i<4400)
            		{
            		    planes2[offline_chan - CHAN_MIN- z_channels][i] = adc_vectors44[iChan][i]-ave[iChan];
            		}
            		else if(i<4500)
            		{
            		    planes2[offline_chan - CHAN_MIN- z_channels][i] = adc_vectors45[iChan][i]-ave[iChan];
            		}
            		else if(i<4600)
            		{
            		    planes2[offline_chan - CHAN_MIN- z_channels][i] = adc_vectors46[iChan][i]-ave[iChan];
            		}
            		else if(i<4700)
            		{
            		    planes2[offline_chan - CHAN_MIN - z_channels][i] = adc_vectors47[iChan][i]-ave[iChan];
            		}
            		else if(i<4800)
            		{
            		    planes2[offline_chan - CHAN_MIN - z_channels][i] = adc_vectors48[iChan][i]-ave[iChan];
            		}
            		else if(i<4900)
            		{
            		    planes2[offline_chan - CHAN_MIN- z_channels][i] = adc_vectors49[iChan][i]-ave[iChan];
            		}
            		else if(i<5000)
            		{
            		    planes2[offline_chan - CHAN_MIN- z_channels][i] = adc_vectors50[iChan][i]-ave[iChan];
            		}
            		else if(i<5100)
            		{
            		    planes2[offline_chan - CHAN_MIN- z_channels][i] = adc_vectors51[iChan][i]-ave[iChan];
            		}
            		else if(i<5200)
            		{
            		    planes2[offline_chan - CHAN_MIN- z_channels][i] = adc_vectors52[iChan][i]-ave[iChan];
            		}
            		else if(i<5300)
            		{
            		    planes2[offline_chan - CHAN_MIN- z_channels][i] = adc_vectors53[iChan][i]-ave[iChan];
            		}
            		else if(i<5400)
            		{
            		    planes2[offline_chan - CHAN_MIN- z_channels][i] = adc_vectors54[iChan][i]-ave[iChan];
            		}
            		else if(i<5500)
            		{
            		    planes2[offline_chan - CHAN_MIN- z_channels][i] = adc_vectors55[iChan][i]-ave[iChan];
            		}
            		else if(i<5600)
            		{
            		    planes2[offline_chan - CHAN_MIN- z_channels][i] = adc_vectors56[iChan][i]-ave[iChan];
            		}
            		else if(i<5700)
            		{
            		    planes2[offline_chan - CHAN_MIN- z_channels][i] = adc_vectors57[iChan][i]-ave[iChan];
            		}
            		else if(i<5800)
            		{
            		    planes2[offline_chan - CHAN_MIN- z_channels][i] = adc_vectors58[iChan][i]-ave[iChan];
            		}
            		else if(i<5900)
            		{
            		    planes2[offline_chan - CHAN_MIN- z_channels][i] = adc_vectors59[iChan][i]-ave[iChan];
            		}
            		else if(i<6000)
            		{
            		    planes2[offline_chan - CHAN_MIN- z_channels][i] = adc_vectors60[iChan][i]-ave[iChan];
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
