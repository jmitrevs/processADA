#include "kernel.h"
#include "hls_stream.h"
#include "defines3.h"

void process_data(const int infile_size, char infiledata[28320800],dune::FDHDChannelMapSP& chanmap ,int outdata[276])
{
#pragma HLS INTERFACE m_axi depth=28320800 port=infiledata offset=slave bundle=gmem
#pragma HLS INTERFACE m_axi depth=276 port=outdata offset=slave bundle=gmem

	int a;
	//Create variables

	constexpr unsigned int NUM_LINKS = 10;
	const int z_channels = 480;
	const int n_frames = 6000;

	//seems to work for 256/500 array not for 256/3000
	//small array seems to work for csim, still gives violations though
	static int adc_vectors[256][6000];
//	static int adc_vectors2[256][1000];
//	static int adc_vectors3[256][1000];
//	static int adc_vectors4[256][1000];
//	static int adc_vectors5[256][1000];
//	static int adc_vectors6[256][1000];
//#pragma HLS INTERFACE m_axi depth=1536000 port=adc_vectors offset=slave bundle=gmem
#pragma HLS ARRAY_PARTITION variable=adc_vectors type=cyclic factor=8 dim=2
	//pass up to here

	static int planes[z_channels][n_frames];
	static int planes2[z_channels][n_frames];

	if ( infile_size% NUM_LINKS != 0)
	{
	    return;
	}

	size_t fragsize = (infile_size / NUM_LINKS);
	//pass up to here

    //Fill z planes and subtract pedestal

    link_loop:
    for (size_t link = 0; link < NUM_LINKS; link++)
    {
    	int ave[dunedaq::detdataformats::wib2::WIB2Frame::s_num_channels];
    	int adc_vect[dunedaq::detdataformats::wib2::WIB2Frame::s_num_channels];

        unsigned int slot = 0, link_from_frameheader = 0, crate = 0;
        size_t ibegin = link*fragsize;
        dunedaq::daqdataformats::Fragment frag( &infiledata[ibegin], dunedaq::daqdataformats::Fragment::BufferAdoptionMode::kReadOnlyMode);
    //pass up to here

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
//#pragma HLS pipeline II=1

                auto adc = frame->get_adc(iChan);

               // a += adc; //throws violation
                adc_vectors[iFrame][iChan] = adc; //fails cosim

//                if(iFrame < 2000)
//				{
//					adc_vectors2[iFrame][iChan] = adc; // throws violation AND fails cosim
//				}
//                if(iFrame < 3000)
//			  {
//				adc_vectors3[iFrame][iChan] = adc; // throws violation AND fails cosim
//			  }
//				  if(iFrame < 4000)
//				{
//					adc_vectors4[iFrame][iChan] = adc; // throws violation AND fails cosim
//				}
//				  if(iFrame < 5000)
//				{
//					adc_vectors5[iFrame][iChan] = adc; // throws violation AND fails cosim
//				}
//				if(iFrame < 6000)
//				{
//					adc_vectors6[iFrame][iChan] = adc; // throws violation AND fails cosim
//				}



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

                		planes[offline_chan - CHAN_MIN][i] = adc_vectors[iChan][i]-ave[iChan];
/*
                	if(i<2000)
					{
						//planes[offline_chan - CHAN_MIN][i] = adc_vectors2[iChan][i]-ave[iChan];
					}
                	if(i<3000)
					{
						//planes[offline_chan - CHAN_MIN][i] = adc_vectors3[iChan][i]-ave[iChan];
					}
                	if(i<4000)
					{
						//planes[offline_chan - CHAN_MIN][i] = adc_vectors4[iChan][i]-ave[iChan];
					}
                	if(i<5000)
					{
						//planes[offline_chan - CHAN_MIN][i] = adc_vectors5[iChan][i]-ave[iChan];
					}
                	if(i<6000)
					{
						//planes[offline_chan - CHAN_MIN][i] = adc_vectors6[iChan][i]-ave[iChan];
					}
					*/
                }
            }
            else if(offline_plane == 2)
            {
            	for (int i = 0; i < n_frames; i++)
            	{

						planes2[offline_chan - CHAN_MIN][i] = adc_vectors[iChan][i]-ave[iChan];
/*
					if(i<2000)
					{
						//planes2[offline_chan - CHAN_MIN][i] = adc_vectors2[iChan][i]-ave[iChan];
					}
					if(i<3000)
					{
						//planes2[offline_chan - CHAN_MIN][i] = adc_vectors3[iChan][i]-ave[iChan];
					}
					if(i<4000)
					{
						//planes2[offline_chan - CHAN_MIN][i] = adc_vectors4[iChan][i]-ave[iChan];
					}
					if(i<5000)
					{
						//planes2[offline_chan - CHAN_MIN][i] = adc_vectors5[iChan][i]-ave[iChan];
					}
					if(i<6000)
					{
						//planes2[offline_chan - CHAN_MIN][i] = adc_vectors6[iChan][i]-ave[iChan];
					}
					*/
            	}
            }
        }
    }


    //Call 2D CNN on both sides of z plane

    const int TICK_SIZE = 128;
    hls::stream<input_t> zero_padding2d_input("zero_padding2d_input");
    input_t pack;
    hls::stream<result_t> layer19_out;
//#pragma HLS_STREAM variable=layer19_out size=2

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
			outdata[z+(i/TICK_SIZE)*3] = cc_prob[z]+a;

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

