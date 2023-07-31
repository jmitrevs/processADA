// 0x00 : Control signals
//        bit 0  - ap_start (Read/Write/COH)
//        bit 1  - ap_done (Read)
//        bit 2  - ap_idle (Read)
//        bit 3  - ap_ready (Read/COR)
//        bit 4  - ap_continue (Read/Write/SC)
//        bit 7  - auto_restart (Read/Write)
//        bit 9  - interrupt (Read)
//        others - reserved
// 0x04 : Global Interrupt Enable Register
//        bit 0  - Global Interrupt Enable (Read/Write)
//        others - reserved
// 0x08 : IP Interrupt Enable Register (Read/Write)
//        bit 0 - enable ap_done interrupt (Read/Write)
//        bit 1 - enable ap_ready interrupt (Read/Write)
//        others - reserved
// 0x0c : IP Interrupt Status Register (Read/TOW)
//        bit 0 - ap_done (Read/TOW)
//        bit 1 - ap_ready (Read/TOW)
//        others - reserved
// 0x10 : Data signal of infile_size
//        bit 31~0 - infile_size[31:0] (Read/Write)
// 0x14 : reserved
// 0x18 : Data signal of infiledata
//        bit 31~0 - infiledata[31:0] (Read/Write)
// 0x1c : Data signal of infiledata
//        bit 31~0 - infiledata[63:32] (Read/Write)
// 0x20 : reserved
// 0x24 : Data signal of outdata
//        bit 31~0 - outdata[31:0] (Read/Write)
// 0x28 : Data signal of outdata
//        bit 31~0 - outdata[63:32] (Read/Write)
// 0x2c : reserved
// (SC = Self Clear, COR = Clear on Read, TOW = Toggle on Write, COH = Clear on Handshake)

#define CONTROL_ADDR_AP_CTRL          0x00
#define CONTROL_ADDR_GIE              0x04
#define CONTROL_ADDR_IER              0x08
#define CONTROL_ADDR_ISR              0x0c
#define CONTROL_ADDR_INFILE_SIZE_DATA 0x10
#define CONTROL_BITS_INFILE_SIZE_DATA 32
#define CONTROL_ADDR_INFILEDATA_DATA  0x18
#define CONTROL_BITS_INFILEDATA_DATA  64
#define CONTROL_ADDR_OUTDATA_DATA     0x24
#define CONTROL_BITS_OUTDATA_DATA     64
