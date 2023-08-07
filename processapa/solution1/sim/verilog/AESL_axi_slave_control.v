// ==============================================================
// Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2023.1 (64-bit)
// Tool Version Limit: 2023.05
// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
// 
// ==============================================================

`timescale 1 ns / 1 ps

module AESL_axi_slave_control (
    clk,
    reset,
    TRAN_s_axi_control_AWADDR,
    TRAN_s_axi_control_AWVALID,
    TRAN_s_axi_control_AWREADY,
    TRAN_s_axi_control_WVALID,
    TRAN_s_axi_control_WREADY,
    TRAN_s_axi_control_WDATA,
    TRAN_s_axi_control_WSTRB,
    TRAN_s_axi_control_ARADDR,
    TRAN_s_axi_control_ARVALID,
    TRAN_s_axi_control_ARREADY,
    TRAN_s_axi_control_RVALID,
    TRAN_s_axi_control_RREADY,
    TRAN_s_axi_control_RDATA,
    TRAN_s_axi_control_RRESP,
    TRAN_s_axi_control_BVALID,
    TRAN_s_axi_control_BREADY,
    TRAN_s_axi_control_BRESP,
    TRAN_control_write_data_finish,
    TRAN_control_start_in,
    TRAN_control_idle_out,
    TRAN_control_ready_out,
    TRAN_control_ready_in,
    TRAN_control_done_out,
    TRAN_control_write_start_in   ,
    TRAN_control_write_start_finish,
    TRAN_control_interrupt,
    TRAN_control_transaction_done_in
    );

//------------------------Parameter----------------------
`define TV_IN_infile_size "../tv/cdatafile/c.process_data.autotvin_infile_size.dat"
`define TV_IN_infiledata "../tv/cdatafile/c.process_data.autotvin_infiledata.dat"
`define TV_IN_chanmap_fUprightFromCrate "../tv/cdatafile/c.process_data.autotvin_chanmap_fUprightFromCrate.dat"
`define TV_IN_chanmap_DetToChanInfo "../tv/cdatafile/c.process_data.autotvin_chanmap_DetToChanInfo.dat"
`define TV_IN_outdata "../tv/cdatafile/c.process_data.autotvin_outdata.dat"
parameter ADDR_WIDTH = 7;
parameter DATA_WIDTH = 32;
parameter infile_size_DEPTH = 1;
reg [31 : 0] infile_size_OPERATE_DEPTH = 0;
parameter infile_size_c_bitwidth = 32;
parameter infiledata_DEPTH = 1;
reg [31 : 0] infiledata_OPERATE_DEPTH = 0;
parameter infiledata_c_bitwidth = 64;
parameter chanmap_fUprightFromCrate_DEPTH = 1;
reg [31 : 0] chanmap_fUprightFromCrate_OPERATE_DEPTH = 0;
parameter chanmap_fUprightFromCrate_c_bitwidth = 64;
parameter chanmap_DetToChanInfo_DEPTH = 1;
reg [31 : 0] chanmap_DetToChanInfo_OPERATE_DEPTH = 0;
parameter chanmap_DetToChanInfo_c_bitwidth = 64;
parameter outdata_DEPTH = 1;
reg [31 : 0] outdata_OPERATE_DEPTH = 0;
parameter outdata_c_bitwidth = 64;
parameter START_ADDR = 0;
parameter process_data_continue_addr = 0;
parameter process_data_auto_start_addr = 0;
parameter infile_size_data_in_addr = 16;
parameter infiledata_data_in_addr = 24;
parameter chanmap_fNAPAs_data_in_addr = 36;
parameter chanmap_fNChans_data_in_addr = 44;
parameter chanmap_fAPANameFromCrate_data_in_addr = 52;
parameter chanmap_fUprightFromCrate_data_in_addr = 64;
parameter chanmap_fCrateFromTPCSet_data_in_addr = 76;
parameter chanmap_fTPCSetFromCrate_data_in_addr = 88;
parameter chanmap_DetToChanInfo_data_in_addr = 100;
parameter outdata_data_in_addr = 112;
parameter STATUS_ADDR = 0;

output [ADDR_WIDTH - 1 : 0] TRAN_s_axi_control_AWADDR;
output  TRAN_s_axi_control_AWVALID;
input  TRAN_s_axi_control_AWREADY;
output  TRAN_s_axi_control_WVALID;
input  TRAN_s_axi_control_WREADY;
output [DATA_WIDTH - 1 : 0] TRAN_s_axi_control_WDATA;
output [DATA_WIDTH/8 - 1 : 0] TRAN_s_axi_control_WSTRB;
output [ADDR_WIDTH - 1 : 0] TRAN_s_axi_control_ARADDR;
output  TRAN_s_axi_control_ARVALID;
input  TRAN_s_axi_control_ARREADY;
input  TRAN_s_axi_control_RVALID;
output  TRAN_s_axi_control_RREADY;
input [DATA_WIDTH - 1 : 0] TRAN_s_axi_control_RDATA;
input [2 - 1 : 0] TRAN_s_axi_control_RRESP;
input  TRAN_s_axi_control_BVALID;
output  TRAN_s_axi_control_BREADY;
input [2 - 1 : 0] TRAN_s_axi_control_BRESP;
output TRAN_control_write_data_finish;
input     clk;
input     reset;
input     TRAN_control_start_in;
output    TRAN_control_done_out;
output    TRAN_control_ready_out;
input     TRAN_control_ready_in;
output    TRAN_control_idle_out;
input  TRAN_control_write_start_in   ;
output TRAN_control_write_start_finish;
input     TRAN_control_interrupt;
input     TRAN_control_transaction_done_in;

reg [ADDR_WIDTH - 1 : 0] AWADDR_reg = 0;
reg  AWVALID_reg = 0;
reg  WVALID_reg = 0;
reg [DATA_WIDTH - 1 : 0] WDATA_reg = 0;
reg [DATA_WIDTH/8 - 1 : 0] WSTRB_reg = 0;
reg [ADDR_WIDTH - 1 : 0] ARADDR_reg = 0;
reg  ARVALID_reg = 0;
reg  RREADY_reg = 0;
reg [DATA_WIDTH - 1 : 0] RDATA_reg = 0;
reg  BREADY_reg = 0;
reg [DATA_WIDTH - 1 : 0] mem_infile_size [infile_size_DEPTH - 1 : 0] = '{default : 'h0};
reg [DATA_WIDTH-1 : 0] image_mem_infile_size [ (infile_size_c_bitwidth+DATA_WIDTH-1)/DATA_WIDTH * infile_size_DEPTH -1 : 0] = '{default : 'hz};
reg infile_size_write_data_finish;
reg [infiledata_c_bitwidth - 1 : 0] mem_infiledata [infiledata_DEPTH - 1 : 0] = '{default : 'h0};
reg [DATA_WIDTH-1 : 0] image_mem_infiledata [ (infiledata_c_bitwidth+DATA_WIDTH-1)/DATA_WIDTH * infiledata_DEPTH -1 : 0] = '{default : 'hz};
reg infiledata_write_data_finish;
reg [chanmap_fUprightFromCrate_c_bitwidth - 1 : 0] mem_chanmap_fUprightFromCrate [chanmap_fUprightFromCrate_DEPTH - 1 : 0] = '{default : 'h0};
reg [DATA_WIDTH-1 : 0] image_mem_chanmap_fUprightFromCrate [ (chanmap_fUprightFromCrate_c_bitwidth+DATA_WIDTH-1)/DATA_WIDTH * chanmap_fUprightFromCrate_DEPTH -1 : 0] = '{default : 'hz};
reg chanmap_fUprightFromCrate_write_data_finish;
reg [chanmap_DetToChanInfo_c_bitwidth - 1 : 0] mem_chanmap_DetToChanInfo [chanmap_DetToChanInfo_DEPTH - 1 : 0] = '{default : 'h0};
reg [DATA_WIDTH-1 : 0] image_mem_chanmap_DetToChanInfo [ (chanmap_DetToChanInfo_c_bitwidth+DATA_WIDTH-1)/DATA_WIDTH * chanmap_DetToChanInfo_DEPTH -1 : 0] = '{default : 'hz};
reg chanmap_DetToChanInfo_write_data_finish;
reg [outdata_c_bitwidth - 1 : 0] mem_outdata [outdata_DEPTH - 1 : 0] = '{default : 'h0};
reg [DATA_WIDTH-1 : 0] image_mem_outdata [ (outdata_c_bitwidth+DATA_WIDTH-1)/DATA_WIDTH * outdata_DEPTH -1 : 0] = '{default : 'hz};
reg outdata_write_data_finish;
reg AESL_ready_out_index_reg = 0;
reg AESL_write_start_finish = 0;
reg AESL_ready_reg;
reg ready_initial;
reg AESL_done_index_reg = 0;
reg AESL_idle_index_reg = 0;
reg AESL_auto_restart_index_reg;
reg process_0_finish = 0;
reg process_1_finish = 0;
reg process_2_finish = 0;
reg process_3_finish = 0;
reg process_4_finish = 0;
reg process_5_finish = 0;
reg process_6_finish = 0;
//write infile_size reg
reg [31 : 0] write_infile_size_count = 0;
reg write_infile_size_run_flag = 0;
reg write_one_infile_size_data_done = 0;
//write infiledata reg
reg [31 : 0] write_infiledata_count = 0;
reg write_infiledata_run_flag = 0;
reg write_one_infiledata_data_done = 0;
//write chanmap_fUprightFromCrate reg
reg [31 : 0] write_chanmap_fUprightFromCrate_count = 0;
reg write_chanmap_fUprightFromCrate_run_flag = 0;
reg write_one_chanmap_fUprightFromCrate_data_done = 0;
//write chanmap_DetToChanInfo reg
reg [31 : 0] write_chanmap_DetToChanInfo_count = 0;
reg write_chanmap_DetToChanInfo_run_flag = 0;
reg write_one_chanmap_DetToChanInfo_data_done = 0;
//write outdata reg
reg [31 : 0] write_outdata_count = 0;
reg write_outdata_run_flag = 0;
reg write_one_outdata_data_done = 0;
reg [31 : 0] write_start_count = 0;
reg write_start_run_flag = 0;

//===================process control=================
reg [31 : 0] ongoing_process_number = 0;
//process number depends on how much processes needed.
reg process_busy = 0;

//=================== signal connection ==============
assign TRAN_s_axi_control_AWADDR = AWADDR_reg;
assign TRAN_s_axi_control_AWVALID = AWVALID_reg;
assign TRAN_s_axi_control_WVALID = WVALID_reg;
assign TRAN_s_axi_control_WDATA = WDATA_reg;
assign TRAN_s_axi_control_WSTRB = WSTRB_reg;
assign TRAN_s_axi_control_ARADDR = ARADDR_reg;
assign TRAN_s_axi_control_ARVALID = ARVALID_reg;
assign TRAN_s_axi_control_RREADY = RREADY_reg;
assign TRAN_s_axi_control_BREADY = BREADY_reg;
assign TRAN_control_write_start_finish = AESL_write_start_finish;
assign TRAN_control_done_out = AESL_done_index_reg;
assign TRAN_control_ready_out = AESL_ready_out_index_reg;
assign TRAN_control_idle_out = AESL_idle_index_reg;
assign TRAN_control_write_data_finish = 1 & infile_size_write_data_finish & infiledata_write_data_finish & chanmap_fUprightFromCrate_write_data_finish & chanmap_DetToChanInfo_write_data_finish & outdata_write_data_finish;
always @(TRAN_control_ready_in or ready_initial) 
begin
    AESL_ready_reg <= TRAN_control_ready_in | ready_initial;
end

always @(reset or process_0_finish or process_1_finish or process_2_finish or process_3_finish or process_4_finish or process_5_finish or process_6_finish ) begin
    if (reset == 0) begin
        ongoing_process_number <= 0;
    end
    else if (ongoing_process_number == 0 && process_0_finish == 1) begin
            ongoing_process_number <= ongoing_process_number + 1;
    end
    else if (ongoing_process_number == 1 && process_1_finish == 1) begin
            ongoing_process_number <= ongoing_process_number + 1;
    end
    else if (ongoing_process_number == 2 && process_2_finish == 1) begin
            ongoing_process_number <= ongoing_process_number + 1;
    end
    else if (ongoing_process_number == 3 && process_3_finish == 1) begin
            ongoing_process_number <= ongoing_process_number + 1;
    end
    else if (ongoing_process_number == 4 && process_4_finish == 1) begin
            ongoing_process_number <= ongoing_process_number + 1;
    end
    else if (ongoing_process_number == 5 && process_5_finish == 1) begin
            ongoing_process_number <= ongoing_process_number + 1;
    end
    else if (ongoing_process_number == 6 && process_6_finish == 1) begin
            ongoing_process_number <= 0;
    end
end

task count_c_data_four_byte_num_by_bitwidth;
input  integer bitwidth;
output integer num;
integer factor;
integer i;
begin
    factor = 32;
    for (i = 1; i <= 1024; i = i + 1) begin
        if (bitwidth <= factor && bitwidth > factor - 32) begin
            num = i;
        end
        factor = factor + 32;
    end
end    
endtask

function integer ceil_align_to_pow_of_two;
input integer a;
begin
    ceil_align_to_pow_of_two = $pow(2,$clog2(a));
end
endfunction

task count_seperate_factor_by_bitwidth;
input  integer bitwidth;
output integer factor;
begin
    if (bitwidth <= 8) begin
        factor=4;
    end
    if (bitwidth <= 16 & bitwidth > 8 ) begin
        factor=2;
    end
    if (bitwidth <= 32 & bitwidth > 16 ) begin
        factor=1;
    end
    if (bitwidth > 32 ) begin
        factor=1;
    end
end    
endtask

task count_operate_depth_by_bitwidth_and_depth;
input  integer bitwidth;
input  integer depth;
output integer operate_depth;
integer factor;
integer remain;
begin
    count_seperate_factor_by_bitwidth (bitwidth , factor);
    operate_depth = depth / factor;
    remain = depth % factor;
    if (remain > 0) begin
        operate_depth = operate_depth + 1;
    end
end    
endtask

task write; /*{{{*/
    input  reg [ADDR_WIDTH - 1:0] waddr;   // write address
    input  reg [DATA_WIDTH - 1:0] wdata;   // write data
    output reg wresp;
    reg aw_flag;
    reg w_flag;
    reg [DATA_WIDTH/8 - 1:0] wstrb_reg;
    integer i;
begin 
    wresp = 0;
    aw_flag = 0;
    w_flag = 0;
//=======================one single write operate======================
    AWADDR_reg <= waddr;
    AWVALID_reg <= 1;
    WDATA_reg <= wdata;
    WVALID_reg <= 1;
    for (i = 0; i < DATA_WIDTH/8; i = i + 1) begin
        wstrb_reg [i] = 1;
    end    
    WSTRB_reg <= wstrb_reg;
    while (!(aw_flag && w_flag)) begin
        @(posedge clk);
        if (aw_flag != 1)
            aw_flag = TRAN_s_axi_control_AWREADY & AWVALID_reg;
        if (w_flag != 1)
            w_flag = TRAN_s_axi_control_WREADY & WVALID_reg;
        AWVALID_reg <= !aw_flag;
        WVALID_reg <= !w_flag;
    end

    BREADY_reg <= 1;
    while (TRAN_s_axi_control_BVALID != 1) begin
        //wait for response 
        @(posedge clk);
    end
    @(posedge clk);
    BREADY_reg <= 0;
    if (TRAN_s_axi_control_BRESP === 2'b00) begin
        wresp = 1;
        //input success. in fact BRESP is always 2'b00
    end   
//=======================one single write operate======================

end
endtask/*}}}*/

task read (/*{{{*/
    input  [ADDR_WIDTH - 1:0] raddr ,   // write address
    output [DATA_WIDTH - 1:0] RDATA_result ,
    output rresp
);
begin 
    rresp = 0;
//=======================one single read operate======================
    ARADDR_reg <= raddr;
    ARVALID_reg <= 1;
    while (TRAN_s_axi_control_ARREADY !== 1) begin
        @(posedge clk);
    end
    @(posedge clk);
    ARVALID_reg <= 0;
    RREADY_reg <= 1;
    while (TRAN_s_axi_control_RVALID !== 1) begin
        //wait for response 
        @(posedge clk);
    end
    @(posedge clk);
    RDATA_result  <= TRAN_s_axi_control_RDATA;
    RREADY_reg <= 0;
    if (TRAN_s_axi_control_RRESP === 2'b00 ) begin
        rresp <= 1;
        //output success. in fact RRESP is always 2'b00
    end  
    @(posedge clk);

//=======================one single read operate end======================

end
endtask/*}}}*/

initial begin : ready_initial_process
    ready_initial = 0;
    wait(reset === 1);
    @(posedge clk);
    ready_initial = 1;
    @(posedge clk);
    ready_initial = 0;
end

initial begin : update_status
    integer process_num ;
    integer read_status_resp;
    integer write_continue_tmp;
    wait(reset === 1);
    @(posedge clk);
    process_num = 0;
    write_continue_tmp = 0;
    while (1) begin
        process_0_finish = 0;
        AESL_done_index_reg         <= 0;
        AESL_ready_out_index_reg        <= 0;
        if (ongoing_process_number === process_num && process_busy === 0) begin
            process_busy = 1;
            read (STATUS_ADDR, RDATA_reg, read_status_resp);
                AESL_ready_out_index_reg    <= RDATA_reg[1 : 1];
                AESL_idle_index_reg         <= RDATA_reg[2 : 2];
                if (RDATA_reg[1 : 1] == 1) begin
                    @(posedge clk);
                    AESL_ready_out_index_reg    <= 0;
                    write_continue_tmp=0;
                    write_continue_tmp[4 : 4] = 1;
                    write (STATUS_ADDR, write_continue_tmp, read_status_resp);
                    AESL_done_index_reg         <= 1;
                    @(posedge clk);
                    AESL_done_index_reg         <= 0;
                end 
            process_0_finish = 1;
            process_busy = 0;
        end 
        @(posedge clk);
    end
end

always @(reset or posedge clk) begin
    if (reset == 0) begin
        infile_size_write_data_finish <= 0;
        write_infile_size_run_flag <= 0; 
        write_infile_size_count = 0;
        count_operate_depth_by_bitwidth_and_depth (infile_size_c_bitwidth, infile_size_DEPTH, infile_size_OPERATE_DEPTH);
    end
    else begin
        if (TRAN_control_start_in === 1) begin
            infile_size_write_data_finish <= 0;
        end
        if (AESL_ready_reg === 1) begin
            write_infile_size_run_flag <= 1; 
            write_infile_size_count = 0;
        end
        if (write_one_infile_size_data_done === 1) begin
            write_infile_size_count = write_infile_size_count + 1;
            if (write_infile_size_count == infile_size_OPERATE_DEPTH) begin
                write_infile_size_run_flag <= 0; 
                infile_size_write_data_finish <= 1;
            end
        end
    end
end

initial begin : write_infile_size
    integer write_infile_size_resp;
    integer process_num ;
    integer get_ack;
    integer four_byte_num;
    integer ceil_align_to_pow_of_two_four_byte_num;
    integer c_bitwidth;
    integer i;
    integer j;
    reg [31 : 0] infile_size_data_tmp_reg;
    wait(reset === 1);
    @(posedge clk);
    c_bitwidth = infile_size_c_bitwidth;
    process_num = 1;
    count_c_data_four_byte_num_by_bitwidth (c_bitwidth , four_byte_num);
    ceil_align_to_pow_of_two_four_byte_num = ceil_align_to_pow_of_two(four_byte_num);
    while (1) begin
        process_1_finish <= 0;

        if (ongoing_process_number === process_num && process_busy === 0 ) begin
            get_ack = 1;
            if (write_infile_size_run_flag === 1 && get_ack === 1) begin
                process_busy = 1;
                //write infile_size data 
                for (i = 0 ; i < four_byte_num ; i = i+1) begin
                    if (infile_size_c_bitwidth < 32) begin
                        infile_size_data_tmp_reg = mem_infile_size[write_infile_size_count];
                    end
                    else begin
                        for (j=0 ; j<32 ; j = j + 1) begin
                            if (i*32 + j < infile_size_c_bitwidth) begin
                                infile_size_data_tmp_reg[j] = mem_infile_size[write_infile_size_count][i*32 + j];
                            end
                            else begin
                                infile_size_data_tmp_reg[j] = 0;
                            end
                        end
                    end
                    if(image_mem_infile_size[write_infile_size_count * four_byte_num  + i]!==infile_size_data_tmp_reg) begin
                    write (infile_size_data_in_addr + write_infile_size_count * ceil_align_to_pow_of_two_four_byte_num * 4 + i * 4, infile_size_data_tmp_reg, write_infile_size_resp);
                    image_mem_infile_size[write_infile_size_count * four_byte_num + i]=infile_size_data_tmp_reg;
                    end
                end
                process_busy = 0;
                write_one_infile_size_data_done <= 1;
                @(posedge clk);
                write_one_infile_size_data_done <= 0;
            end   
            process_1_finish <= 1;
        end
        @(posedge clk);
    end    
end
always @(reset or posedge clk) begin
    if (reset == 0) begin
        infiledata_write_data_finish <= 0;
        write_infiledata_run_flag <= 0; 
        write_infiledata_count = 0;
        count_operate_depth_by_bitwidth_and_depth (infiledata_c_bitwidth, infiledata_DEPTH, infiledata_OPERATE_DEPTH);
    end
    else begin
        if (TRAN_control_start_in === 1) begin
            infiledata_write_data_finish <= 0;
        end
        if (AESL_ready_reg === 1) begin
            write_infiledata_run_flag <= 1; 
            write_infiledata_count = 0;
        end
        if (write_one_infiledata_data_done === 1) begin
            write_infiledata_count = write_infiledata_count + 1;
            if (write_infiledata_count == infiledata_OPERATE_DEPTH) begin
                write_infiledata_run_flag <= 0; 
                infiledata_write_data_finish <= 1;
            end
        end
    end
end

initial begin : write_infiledata
    integer write_infiledata_resp;
    integer process_num ;
    integer get_ack;
    integer four_byte_num;
    integer ceil_align_to_pow_of_two_four_byte_num;
    integer c_bitwidth;
    integer i;
    integer j;
    reg [31 : 0] infiledata_data_tmp_reg;
    wait(reset === 1);
    @(posedge clk);
    c_bitwidth = infiledata_c_bitwidth;
    process_num = 2;
    count_c_data_four_byte_num_by_bitwidth (c_bitwidth , four_byte_num);
    ceil_align_to_pow_of_two_four_byte_num = ceil_align_to_pow_of_two(four_byte_num);
    while (1) begin
        process_2_finish <= 0;

        if (ongoing_process_number === process_num && process_busy === 0 ) begin
            get_ack = 1;
            if (write_infiledata_run_flag === 1 && get_ack === 1) begin
                process_busy = 1;
                //write infiledata data 
                for (i = 0 ; i < four_byte_num ; i = i+1) begin
                    if (infiledata_c_bitwidth < 32) begin
                        infiledata_data_tmp_reg = mem_infiledata[write_infiledata_count];
                    end
                    else begin
                        for (j=0 ; j<32 ; j = j + 1) begin
                            if (i*32 + j < infiledata_c_bitwidth) begin
                                infiledata_data_tmp_reg[j] = mem_infiledata[write_infiledata_count][i*32 + j];
                            end
                            else begin
                                infiledata_data_tmp_reg[j] = 0;
                            end
                        end
                    end
                    if(image_mem_infiledata[write_infiledata_count * four_byte_num  + i]!==infiledata_data_tmp_reg) begin
                    write (infiledata_data_in_addr + write_infiledata_count * ceil_align_to_pow_of_two_four_byte_num * 4 + i * 4, infiledata_data_tmp_reg, write_infiledata_resp);
                    image_mem_infiledata[write_infiledata_count * four_byte_num + i]=infiledata_data_tmp_reg;
                    end
                end
                process_busy = 0;
                write_one_infiledata_data_done <= 1;
                @(posedge clk);
                write_one_infiledata_data_done <= 0;
            end   
            process_2_finish <= 1;
        end
        @(posedge clk);
    end    
end
always @(reset or posedge clk) begin
    if (reset == 0) begin
        chanmap_fUprightFromCrate_write_data_finish <= 0;
        write_chanmap_fUprightFromCrate_run_flag <= 0; 
        write_chanmap_fUprightFromCrate_count = 0;
        count_operate_depth_by_bitwidth_and_depth (chanmap_fUprightFromCrate_c_bitwidth, chanmap_fUprightFromCrate_DEPTH, chanmap_fUprightFromCrate_OPERATE_DEPTH);
    end
    else begin
        if (TRAN_control_start_in === 1) begin
            chanmap_fUprightFromCrate_write_data_finish <= 0;
        end
        if (AESL_ready_reg === 1) begin
            write_chanmap_fUprightFromCrate_run_flag <= 1; 
            write_chanmap_fUprightFromCrate_count = 0;
        end
        if (write_one_chanmap_fUprightFromCrate_data_done === 1) begin
            write_chanmap_fUprightFromCrate_count = write_chanmap_fUprightFromCrate_count + 1;
            if (write_chanmap_fUprightFromCrate_count == chanmap_fUprightFromCrate_OPERATE_DEPTH) begin
                write_chanmap_fUprightFromCrate_run_flag <= 0; 
                chanmap_fUprightFromCrate_write_data_finish <= 1;
            end
        end
    end
end

initial begin : write_chanmap_fUprightFromCrate
    integer write_chanmap_fUprightFromCrate_resp;
    integer process_num ;
    integer get_ack;
    integer four_byte_num;
    integer ceil_align_to_pow_of_two_four_byte_num;
    integer c_bitwidth;
    integer i;
    integer j;
    reg [31 : 0] chanmap_fUprightFromCrate_data_tmp_reg;
    wait(reset === 1);
    @(posedge clk);
    c_bitwidth = chanmap_fUprightFromCrate_c_bitwidth;
    process_num = 3;
    count_c_data_four_byte_num_by_bitwidth (c_bitwidth , four_byte_num);
    ceil_align_to_pow_of_two_four_byte_num = ceil_align_to_pow_of_two(four_byte_num);
    while (1) begin
        process_3_finish <= 0;

        if (ongoing_process_number === process_num && process_busy === 0 ) begin
            get_ack = 1;
            if (write_chanmap_fUprightFromCrate_run_flag === 1 && get_ack === 1) begin
                process_busy = 1;
                //write chanmap_fUprightFromCrate data 
                for (i = 0 ; i < four_byte_num ; i = i+1) begin
                    if (chanmap_fUprightFromCrate_c_bitwidth < 32) begin
                        chanmap_fUprightFromCrate_data_tmp_reg = mem_chanmap_fUprightFromCrate[write_chanmap_fUprightFromCrate_count];
                    end
                    else begin
                        for (j=0 ; j<32 ; j = j + 1) begin
                            if (i*32 + j < chanmap_fUprightFromCrate_c_bitwidth) begin
                                chanmap_fUprightFromCrate_data_tmp_reg[j] = mem_chanmap_fUprightFromCrate[write_chanmap_fUprightFromCrate_count][i*32 + j];
                            end
                            else begin
                                chanmap_fUprightFromCrate_data_tmp_reg[j] = 0;
                            end
                        end
                    end
                    if(image_mem_chanmap_fUprightFromCrate[write_chanmap_fUprightFromCrate_count * four_byte_num  + i]!==chanmap_fUprightFromCrate_data_tmp_reg) begin
                    write (chanmap_fUprightFromCrate_data_in_addr + write_chanmap_fUprightFromCrate_count * ceil_align_to_pow_of_two_four_byte_num * 4 + i * 4, chanmap_fUprightFromCrate_data_tmp_reg, write_chanmap_fUprightFromCrate_resp);
                    image_mem_chanmap_fUprightFromCrate[write_chanmap_fUprightFromCrate_count * four_byte_num + i]=chanmap_fUprightFromCrate_data_tmp_reg;
                    end
                end
                process_busy = 0;
                write_one_chanmap_fUprightFromCrate_data_done <= 1;
                @(posedge clk);
                write_one_chanmap_fUprightFromCrate_data_done <= 0;
            end   
            process_3_finish <= 1;
        end
        @(posedge clk);
    end    
end
always @(reset or posedge clk) begin
    if (reset == 0) begin
        chanmap_DetToChanInfo_write_data_finish <= 0;
        write_chanmap_DetToChanInfo_run_flag <= 0; 
        write_chanmap_DetToChanInfo_count = 0;
        count_operate_depth_by_bitwidth_and_depth (chanmap_DetToChanInfo_c_bitwidth, chanmap_DetToChanInfo_DEPTH, chanmap_DetToChanInfo_OPERATE_DEPTH);
    end
    else begin
        if (TRAN_control_start_in === 1) begin
            chanmap_DetToChanInfo_write_data_finish <= 0;
        end
        if (AESL_ready_reg === 1) begin
            write_chanmap_DetToChanInfo_run_flag <= 1; 
            write_chanmap_DetToChanInfo_count = 0;
        end
        if (write_one_chanmap_DetToChanInfo_data_done === 1) begin
            write_chanmap_DetToChanInfo_count = write_chanmap_DetToChanInfo_count + 1;
            if (write_chanmap_DetToChanInfo_count == chanmap_DetToChanInfo_OPERATE_DEPTH) begin
                write_chanmap_DetToChanInfo_run_flag <= 0; 
                chanmap_DetToChanInfo_write_data_finish <= 1;
            end
        end
    end
end

initial begin : write_chanmap_DetToChanInfo
    integer write_chanmap_DetToChanInfo_resp;
    integer process_num ;
    integer get_ack;
    integer four_byte_num;
    integer ceil_align_to_pow_of_two_four_byte_num;
    integer c_bitwidth;
    integer i;
    integer j;
    reg [31 : 0] chanmap_DetToChanInfo_data_tmp_reg;
    wait(reset === 1);
    @(posedge clk);
    c_bitwidth = chanmap_DetToChanInfo_c_bitwidth;
    process_num = 4;
    count_c_data_four_byte_num_by_bitwidth (c_bitwidth , four_byte_num);
    ceil_align_to_pow_of_two_four_byte_num = ceil_align_to_pow_of_two(four_byte_num);
    while (1) begin
        process_4_finish <= 0;

        if (ongoing_process_number === process_num && process_busy === 0 ) begin
            get_ack = 1;
            if (write_chanmap_DetToChanInfo_run_flag === 1 && get_ack === 1) begin
                process_busy = 1;
                //write chanmap_DetToChanInfo data 
                for (i = 0 ; i < four_byte_num ; i = i+1) begin
                    if (chanmap_DetToChanInfo_c_bitwidth < 32) begin
                        chanmap_DetToChanInfo_data_tmp_reg = mem_chanmap_DetToChanInfo[write_chanmap_DetToChanInfo_count];
                    end
                    else begin
                        for (j=0 ; j<32 ; j = j + 1) begin
                            if (i*32 + j < chanmap_DetToChanInfo_c_bitwidth) begin
                                chanmap_DetToChanInfo_data_tmp_reg[j] = mem_chanmap_DetToChanInfo[write_chanmap_DetToChanInfo_count][i*32 + j];
                            end
                            else begin
                                chanmap_DetToChanInfo_data_tmp_reg[j] = 0;
                            end
                        end
                    end
                    if(image_mem_chanmap_DetToChanInfo[write_chanmap_DetToChanInfo_count * four_byte_num  + i]!==chanmap_DetToChanInfo_data_tmp_reg) begin
                    write (chanmap_DetToChanInfo_data_in_addr + write_chanmap_DetToChanInfo_count * ceil_align_to_pow_of_two_four_byte_num * 4 + i * 4, chanmap_DetToChanInfo_data_tmp_reg, write_chanmap_DetToChanInfo_resp);
                    image_mem_chanmap_DetToChanInfo[write_chanmap_DetToChanInfo_count * four_byte_num + i]=chanmap_DetToChanInfo_data_tmp_reg;
                    end
                end
                process_busy = 0;
                write_one_chanmap_DetToChanInfo_data_done <= 1;
                @(posedge clk);
                write_one_chanmap_DetToChanInfo_data_done <= 0;
            end   
            process_4_finish <= 1;
        end
        @(posedge clk);
    end    
end
always @(reset or posedge clk) begin
    if (reset == 0) begin
        outdata_write_data_finish <= 0;
        write_outdata_run_flag <= 0; 
        write_outdata_count = 0;
        count_operate_depth_by_bitwidth_and_depth (outdata_c_bitwidth, outdata_DEPTH, outdata_OPERATE_DEPTH);
    end
    else begin
        if (TRAN_control_start_in === 1) begin
            outdata_write_data_finish <= 0;
        end
        if (AESL_ready_reg === 1) begin
            write_outdata_run_flag <= 1; 
            write_outdata_count = 0;
        end
        if (write_one_outdata_data_done === 1) begin
            write_outdata_count = write_outdata_count + 1;
            if (write_outdata_count == outdata_OPERATE_DEPTH) begin
                write_outdata_run_flag <= 0; 
                outdata_write_data_finish <= 1;
            end
        end
    end
end

initial begin : write_outdata
    integer write_outdata_resp;
    integer process_num ;
    integer get_ack;
    integer four_byte_num;
    integer ceil_align_to_pow_of_two_four_byte_num;
    integer c_bitwidth;
    integer i;
    integer j;
    reg [31 : 0] outdata_data_tmp_reg;
    wait(reset === 1);
    @(posedge clk);
    c_bitwidth = outdata_c_bitwidth;
    process_num = 5;
    count_c_data_four_byte_num_by_bitwidth (c_bitwidth , four_byte_num);
    ceil_align_to_pow_of_two_four_byte_num = ceil_align_to_pow_of_two(four_byte_num);
    while (1) begin
        process_5_finish <= 0;

        if (ongoing_process_number === process_num && process_busy === 0 ) begin
            get_ack = 1;
            if (write_outdata_run_flag === 1 && get_ack === 1) begin
                process_busy = 1;
                //write outdata data 
                for (i = 0 ; i < four_byte_num ; i = i+1) begin
                    if (outdata_c_bitwidth < 32) begin
                        outdata_data_tmp_reg = mem_outdata[write_outdata_count];
                    end
                    else begin
                        for (j=0 ; j<32 ; j = j + 1) begin
                            if (i*32 + j < outdata_c_bitwidth) begin
                                outdata_data_tmp_reg[j] = mem_outdata[write_outdata_count][i*32 + j];
                            end
                            else begin
                                outdata_data_tmp_reg[j] = 0;
                            end
                        end
                    end
                    if(image_mem_outdata[write_outdata_count * four_byte_num  + i]!==outdata_data_tmp_reg) begin
                    write (outdata_data_in_addr + write_outdata_count * ceil_align_to_pow_of_two_four_byte_num * 4 + i * 4, outdata_data_tmp_reg, write_outdata_resp);
                    image_mem_outdata[write_outdata_count * four_byte_num + i]=outdata_data_tmp_reg;
                    end
                end
                process_busy = 0;
                write_one_outdata_data_done <= 1;
                @(posedge clk);
                write_one_outdata_data_done <= 0;
            end   
            process_5_finish <= 1;
        end
        @(posedge clk);
    end    
end

always @(reset or posedge clk) begin
    if (reset == 0) begin
        write_start_run_flag <= 0; 
        write_start_count <= 0;
    end
    else begin
        if (write_start_count >= 1) begin
            write_start_run_flag <= 0; 
        end
        else if (TRAN_control_write_start_in === 1) begin
            write_start_run_flag <= 1; 
        end
        if (AESL_write_start_finish === 1) begin
            write_start_count <= write_start_count + 1;
            write_start_run_flag <= 0; 
        end
    end
end

initial begin : write_start
    reg [DATA_WIDTH - 1 : 0] write_start_tmp;
    integer process_num;
    integer write_start_resp;
    wait(reset === 1);
    @(posedge clk);
    process_num = 6;
    while (1) begin
        process_6_finish = 0;
        if (ongoing_process_number === process_num && process_busy === 0 ) begin
            if (write_start_run_flag === 1) begin
                process_busy = 1;
                write_start_tmp=0;
                write_start_tmp[0 : 0] = 1;
                write (START_ADDR, write_start_tmp, write_start_resp);
                process_busy = 0;
                AESL_write_start_finish <= 1;
                @(posedge clk);
                AESL_write_start_finish <= 0;
            end
            process_6_finish <= 1;
        end 
        @(posedge clk);
    end
end

//------------------------Task and function-------------- 
task read_token; 
    input integer fp; 
    output reg [151 : 0] token;
    integer ret;
    begin
        token = "";
        ret = 0;
        ret = $fscanf(fp,"%s",token);
    end 
endtask 
 
//------------------------Read file------------------------ 
 
// Read data from file 
initial begin : read_infile_size_file_process 
  integer fp; 
  integer ret; 
  integer factor; 
  reg [127 : 0] token; 
  reg [127 : 0] token_tmp; 
  //reg [infile_size_c_bitwidth - 1 : 0] token_tmp; 
  reg [DATA_WIDTH - 1 : 0] tmp_cache_mem; 
  reg [ 8*5 : 1] str;
    reg [63:0] trans_depth;
  integer transaction_idx; 
  integer i; 
  transaction_idx = 0; 
  tmp_cache_mem [DATA_WIDTH - 1 : 0] = 0;
  count_seperate_factor_by_bitwidth (infile_size_c_bitwidth , factor);
  fp = $fopen(`TV_IN_infile_size ,"r"); 
  if(fp == 0) begin                               // Failed to open file 
      $display("Failed to open file \"%s\"!", `TV_IN_infile_size); 
      $finish; 
  end 
  read_token(fp, token); 
  if (token != "[[[runtime]]]") begin             // Illegal format 
      $display("ERROR: Simulation using HLS TB failed.");
      $finish; 
  end 
  read_token(fp, token); 
  while (token != "[[[/runtime]]]") begin 
      if (token != "[[transaction]]") begin 
          $display("ERROR: Simulation using HLS TB failed.");
          $finish; 
      end 
      read_token(fp, token);                        // skip transaction number 
      @(posedge clk);
      # 0.2;
      while(AESL_ready_reg !== 1) begin
          @(posedge clk); 
          # 0.2;
      end
      for(i = 0; i < infile_size_DEPTH; i = i + 1) begin 
          read_token(fp, token); 
          ret = $sscanf(token, "0x%x", token_tmp); 
          if (factor == 4) begin
              if (i%factor == 0) begin
                  tmp_cache_mem [7 : 0] = token_tmp;
              end
              if (i%factor == 1) begin
                  tmp_cache_mem [15 : 8] = token_tmp;
              end
              if (i%factor == 2) begin
                  tmp_cache_mem [23 : 16] = token_tmp;
              end
              if (i%factor == 3) begin
                  tmp_cache_mem [31 : 24] = token_tmp;
                  mem_infile_size [i/factor] = tmp_cache_mem;
                  tmp_cache_mem [DATA_WIDTH - 1 : 0] = 0;
              end
          end
          if (factor == 2) begin
              if (i%factor == 0) begin
                  tmp_cache_mem [15 : 0] = token_tmp;
              end
              if (i%factor == 1) begin
                  tmp_cache_mem [31 : 16] = token_tmp;
                  mem_infile_size [i/factor] = tmp_cache_mem;
                  tmp_cache_mem [DATA_WIDTH - 1: 0] = 0;
              end
          end
          if (factor == 1) begin
              mem_infile_size [i] = token_tmp;
          end
      end 
      if (factor == 4) begin
          if (i%factor != 0) begin
              mem_infile_size [i/factor] = tmp_cache_mem;
          end
      end
      if (factor == 2) begin
          if (i%factor != 0) begin
              mem_infile_size [i/factor] = tmp_cache_mem;
          end
      end 
      read_token(fp, token); 
      if(token != "[[/transaction]]") begin 
          $display("ERROR: Simulation using HLS TB failed.");
          $finish; 
      end 
      read_token(fp, token); 
      transaction_idx = transaction_idx + 1; 
  end 
  $fclose(fp); 
end 
 
task write_binary_infile_size;
    input integer fp;
    input reg[64-1:0] in;
    input integer in_bw;
    reg [63:0] tmp_long;
    reg[64-1:0] local_in;
    integer char_num;
    integer long_num;
    integer i;
    integer j;
    begin
        long_num = (in_bw + 63) / 64;
        char_num = ((in_bw - 1) % 64 + 7) / 8;
        for(i=long_num;i>0;i=i-1) begin
             local_in = in;
             tmp_long = local_in >> ((i-1)*64);
             for(j=0;j<64;j=j+1)
                 if (tmp_long[j] === 1'bx)
                     tmp_long[j] = 1'b0;
             if (i == long_num) begin
                 case(char_num)
                     1: $fwrite(fp,"%c",tmp_long[7:0]);
                     2: $fwrite(fp,"%c%c",tmp_long[15:8],tmp_long[7:0]);
                     3: $fwrite(fp,"%c%c%c",tmp_long[23:16],tmp_long[15:8],tmp_long[7:0]);
                     4: $fwrite(fp,"%c%c%c%c",tmp_long[31:24],tmp_long[23:16],tmp_long[15:8],tmp_long[7:0]);
                     5: $fwrite(fp,"%c%c%c%c%c",tmp_long[39:32],tmp_long[31:24],tmp_long[23:16],tmp_long[15:8],tmp_long[7:0]);
                     6: $fwrite(fp,"%c%c%c%c%c%c",tmp_long[47:40],tmp_long[39:32],tmp_long[31:24],tmp_long[23:16],tmp_long[15:8],tmp_long[7:0]);
                     7: $fwrite(fp,"%c%c%c%c%c%c%c",tmp_long[55:48],tmp_long[47:40],tmp_long[39:32],tmp_long[31:24],tmp_long[23:16],tmp_long[15:8],tmp_long[7:0]);
                     8: $fwrite(fp,"%c%c%c%c%c%c%c%c",tmp_long[63:56],tmp_long[55:48],tmp_long[47:40],tmp_long[39:32],tmp_long[31:24],tmp_long[23:16],tmp_long[15:8],tmp_long[7:0]);
                     default: ;
                 endcase
             end
             else begin
                 $fwrite(fp,"%c%c%c%c%c%c%c%c",tmp_long[63:56],tmp_long[55:48],tmp_long[47:40],tmp_long[39:32],tmp_long[31:24],tmp_long[23:16],tmp_long[15:8],tmp_long[7:0]);
             end
        end
    end
endtask;
//------------------------Read file------------------------ 
 
// Read data from file 
initial begin : read_infiledata_file_process 
  integer fp; 
  integer ret; 
  integer factor; 
  reg [151 : 0] token; 
  reg [151 : 0] token_tmp; 
  //reg [infiledata_c_bitwidth - 1 : 0] token_tmp; 
  reg [DATA_WIDTH - 1 : 0] tmp_cache_mem; 
  reg [ 8*5 : 1] str;
    reg [63:0] trans_depth;
  integer transaction_idx; 
  integer i; 
  transaction_idx = 0; 
  tmp_cache_mem [DATA_WIDTH - 1 : 0] = 0;
  count_seperate_factor_by_bitwidth (infiledata_c_bitwidth , factor);
  fp = $fopen(`TV_IN_infiledata ,"r"); 
  if(fp == 0) begin                               // Failed to open file 
      $display("Failed to open file \"%s\"!", `TV_IN_infiledata); 
      $finish; 
  end 
  read_token(fp, token); 
  if (token != "[[[runtime]]]") begin             // Illegal format 
      $display("ERROR: Simulation using HLS TB failed.");
      $finish; 
  end 
  read_token(fp, token); 
  while (token != "[[[/runtime]]]") begin 
      if (token != "[[transaction]]") begin 
          $display("ERROR: Simulation using HLS TB failed.");
          $finish; 
      end 
      read_token(fp, token);                        // skip transaction number 
      @(posedge clk);
      # 0.2;
      while(AESL_ready_reg !== 1) begin
          @(posedge clk); 
          # 0.2;
      end
      for(i = 0; i < infiledata_DEPTH; i = i + 1) begin 
          read_token(fp, token); 
          ret = $sscanf(token, "0x%x", token_tmp); 
          if (factor == 4) begin
              if (i%factor == 0) begin
                  tmp_cache_mem [7 : 0] = token_tmp;
              end
              if (i%factor == 1) begin
                  tmp_cache_mem [15 : 8] = token_tmp;
              end
              if (i%factor == 2) begin
                  tmp_cache_mem [23 : 16] = token_tmp;
              end
              if (i%factor == 3) begin
                  tmp_cache_mem [31 : 24] = token_tmp;
                  mem_infiledata [i/factor] = tmp_cache_mem;
                  tmp_cache_mem [DATA_WIDTH - 1 : 0] = 0;
              end
          end
          if (factor == 2) begin
              if (i%factor == 0) begin
                  tmp_cache_mem [15 : 0] = token_tmp;
              end
              if (i%factor == 1) begin
                  tmp_cache_mem [31 : 16] = token_tmp;
                  mem_infiledata [i/factor] = tmp_cache_mem;
                  tmp_cache_mem [DATA_WIDTH - 1: 0] = 0;
              end
          end
          if (factor == 1) begin
              mem_infiledata [i] = token_tmp;
          end
      end 
      if (factor == 4) begin
          if (i%factor != 0) begin
              mem_infiledata [i/factor] = tmp_cache_mem;
          end
      end
      if (factor == 2) begin
          if (i%factor != 0) begin
              mem_infiledata [i/factor] = tmp_cache_mem;
          end
      end 
      read_token(fp, token); 
      if(token != "[[/transaction]]") begin 
          $display("ERROR: Simulation using HLS TB failed.");
          $finish; 
      end 
      read_token(fp, token); 
      transaction_idx = transaction_idx + 1; 
  end 
  $fclose(fp); 
end 
 
task write_binary_infiledata;
    input integer fp;
    input reg[64-1:0] in;
    input integer in_bw;
    reg [63:0] tmp_long;
    reg[64-1:0] local_in;
    integer char_num;
    integer long_num;
    integer i;
    integer j;
    begin
        long_num = (in_bw + 63) / 64;
        char_num = ((in_bw - 1) % 64 + 7) / 8;
        for(i=long_num;i>0;i=i-1) begin
             local_in = in;
             tmp_long = local_in >> ((i-1)*64);
             for(j=0;j<64;j=j+1)
                 if (tmp_long[j] === 1'bx)
                     tmp_long[j] = 1'b0;
             if (i == long_num) begin
                 case(char_num)
                     1: $fwrite(fp,"%c",tmp_long[7:0]);
                     2: $fwrite(fp,"%c%c",tmp_long[15:8],tmp_long[7:0]);
                     3: $fwrite(fp,"%c%c%c",tmp_long[23:16],tmp_long[15:8],tmp_long[7:0]);
                     4: $fwrite(fp,"%c%c%c%c",tmp_long[31:24],tmp_long[23:16],tmp_long[15:8],tmp_long[7:0]);
                     5: $fwrite(fp,"%c%c%c%c%c",tmp_long[39:32],tmp_long[31:24],tmp_long[23:16],tmp_long[15:8],tmp_long[7:0]);
                     6: $fwrite(fp,"%c%c%c%c%c%c",tmp_long[47:40],tmp_long[39:32],tmp_long[31:24],tmp_long[23:16],tmp_long[15:8],tmp_long[7:0]);
                     7: $fwrite(fp,"%c%c%c%c%c%c%c",tmp_long[55:48],tmp_long[47:40],tmp_long[39:32],tmp_long[31:24],tmp_long[23:16],tmp_long[15:8],tmp_long[7:0]);
                     8: $fwrite(fp,"%c%c%c%c%c%c%c%c",tmp_long[63:56],tmp_long[55:48],tmp_long[47:40],tmp_long[39:32],tmp_long[31:24],tmp_long[23:16],tmp_long[15:8],tmp_long[7:0]);
                     default: ;
                 endcase
             end
             else begin
                 $fwrite(fp,"%c%c%c%c%c%c%c%c",tmp_long[63:56],tmp_long[55:48],tmp_long[47:40],tmp_long[39:32],tmp_long[31:24],tmp_long[23:16],tmp_long[15:8],tmp_long[7:0]);
             end
        end
    end
endtask;
//------------------------Read file------------------------ 
 
// Read data from file 
initial begin : read_chanmap_fUprightFromCrate_file_process 
  integer fp; 
  integer ret; 
  integer factor; 
  reg [151 : 0] token; 
  reg [151 : 0] token_tmp; 
  //reg [chanmap_fUprightFromCrate_c_bitwidth - 1 : 0] token_tmp; 
  reg [DATA_WIDTH - 1 : 0] tmp_cache_mem; 
  reg [ 8*5 : 1] str;
    reg [63:0] trans_depth;
  integer transaction_idx; 
  integer i; 
  transaction_idx = 0; 
  tmp_cache_mem [DATA_WIDTH - 1 : 0] = 0;
  count_seperate_factor_by_bitwidth (chanmap_fUprightFromCrate_c_bitwidth , factor);
  fp = $fopen(`TV_IN_chanmap_fUprightFromCrate ,"r"); 
  if(fp == 0) begin                               // Failed to open file 
      $display("Failed to open file \"%s\"!", `TV_IN_chanmap_fUprightFromCrate); 
      $finish; 
  end 
  read_token(fp, token); 
  if (token != "[[[runtime]]]") begin             // Illegal format 
      $display("ERROR: Simulation using HLS TB failed.");
      $finish; 
  end 
  read_token(fp, token); 
  while (token != "[[[/runtime]]]") begin 
      if (token != "[[transaction]]") begin 
          $display("ERROR: Simulation using HLS TB failed.");
          $finish; 
      end 
      read_token(fp, token);                        // skip transaction number 
      @(posedge clk);
      # 0.2;
      while(AESL_ready_reg !== 1) begin
          @(posedge clk); 
          # 0.2;
      end
      for(i = 0; i < chanmap_fUprightFromCrate_DEPTH; i = i + 1) begin 
          read_token(fp, token); 
          ret = $sscanf(token, "0x%x", token_tmp); 
          if (factor == 4) begin
              if (i%factor == 0) begin
                  tmp_cache_mem [7 : 0] = token_tmp;
              end
              if (i%factor == 1) begin
                  tmp_cache_mem [15 : 8] = token_tmp;
              end
              if (i%factor == 2) begin
                  tmp_cache_mem [23 : 16] = token_tmp;
              end
              if (i%factor == 3) begin
                  tmp_cache_mem [31 : 24] = token_tmp;
                  mem_chanmap_fUprightFromCrate [i/factor] = tmp_cache_mem;
                  tmp_cache_mem [DATA_WIDTH - 1 : 0] = 0;
              end
          end
          if (factor == 2) begin
              if (i%factor == 0) begin
                  tmp_cache_mem [15 : 0] = token_tmp;
              end
              if (i%factor == 1) begin
                  tmp_cache_mem [31 : 16] = token_tmp;
                  mem_chanmap_fUprightFromCrate [i/factor] = tmp_cache_mem;
                  tmp_cache_mem [DATA_WIDTH - 1: 0] = 0;
              end
          end
          if (factor == 1) begin
              mem_chanmap_fUprightFromCrate [i] = token_tmp;
          end
      end 
      if (factor == 4) begin
          if (i%factor != 0) begin
              mem_chanmap_fUprightFromCrate [i/factor] = tmp_cache_mem;
          end
      end
      if (factor == 2) begin
          if (i%factor != 0) begin
              mem_chanmap_fUprightFromCrate [i/factor] = tmp_cache_mem;
          end
      end 
      read_token(fp, token); 
      if(token != "[[/transaction]]") begin 
          $display("ERROR: Simulation using HLS TB failed.");
          $finish; 
      end 
      read_token(fp, token); 
      transaction_idx = transaction_idx + 1; 
  end 
  $fclose(fp); 
end 
 
task write_binary_chanmap_fUprightFromCrate;
    input integer fp;
    input reg[64-1:0] in;
    input integer in_bw;
    reg [63:0] tmp_long;
    reg[64-1:0] local_in;
    integer char_num;
    integer long_num;
    integer i;
    integer j;
    begin
        long_num = (in_bw + 63) / 64;
        char_num = ((in_bw - 1) % 64 + 7) / 8;
        for(i=long_num;i>0;i=i-1) begin
             local_in = in;
             tmp_long = local_in >> ((i-1)*64);
             for(j=0;j<64;j=j+1)
                 if (tmp_long[j] === 1'bx)
                     tmp_long[j] = 1'b0;
             if (i == long_num) begin
                 case(char_num)
                     1: $fwrite(fp,"%c",tmp_long[7:0]);
                     2: $fwrite(fp,"%c%c",tmp_long[15:8],tmp_long[7:0]);
                     3: $fwrite(fp,"%c%c%c",tmp_long[23:16],tmp_long[15:8],tmp_long[7:0]);
                     4: $fwrite(fp,"%c%c%c%c",tmp_long[31:24],tmp_long[23:16],tmp_long[15:8],tmp_long[7:0]);
                     5: $fwrite(fp,"%c%c%c%c%c",tmp_long[39:32],tmp_long[31:24],tmp_long[23:16],tmp_long[15:8],tmp_long[7:0]);
                     6: $fwrite(fp,"%c%c%c%c%c%c",tmp_long[47:40],tmp_long[39:32],tmp_long[31:24],tmp_long[23:16],tmp_long[15:8],tmp_long[7:0]);
                     7: $fwrite(fp,"%c%c%c%c%c%c%c",tmp_long[55:48],tmp_long[47:40],tmp_long[39:32],tmp_long[31:24],tmp_long[23:16],tmp_long[15:8],tmp_long[7:0]);
                     8: $fwrite(fp,"%c%c%c%c%c%c%c%c",tmp_long[63:56],tmp_long[55:48],tmp_long[47:40],tmp_long[39:32],tmp_long[31:24],tmp_long[23:16],tmp_long[15:8],tmp_long[7:0]);
                     default: ;
                 endcase
             end
             else begin
                 $fwrite(fp,"%c%c%c%c%c%c%c%c",tmp_long[63:56],tmp_long[55:48],tmp_long[47:40],tmp_long[39:32],tmp_long[31:24],tmp_long[23:16],tmp_long[15:8],tmp_long[7:0]);
             end
        end
    end
endtask;
//------------------------Read file------------------------ 
 
// Read data from file 
initial begin : read_chanmap_DetToChanInfo_file_process 
  integer fp; 
  integer ret; 
  integer factor; 
  reg [151 : 0] token; 
  reg [151 : 0] token_tmp; 
  //reg [chanmap_DetToChanInfo_c_bitwidth - 1 : 0] token_tmp; 
  reg [DATA_WIDTH - 1 : 0] tmp_cache_mem; 
  reg [ 8*5 : 1] str;
    reg [63:0] trans_depth;
  integer transaction_idx; 
  integer i; 
  transaction_idx = 0; 
  tmp_cache_mem [DATA_WIDTH - 1 : 0] = 0;
  count_seperate_factor_by_bitwidth (chanmap_DetToChanInfo_c_bitwidth , factor);
  fp = $fopen(`TV_IN_chanmap_DetToChanInfo ,"r"); 
  if(fp == 0) begin                               // Failed to open file 
      $display("Failed to open file \"%s\"!", `TV_IN_chanmap_DetToChanInfo); 
      $finish; 
  end 
  read_token(fp, token); 
  if (token != "[[[runtime]]]") begin             // Illegal format 
      $display("ERROR: Simulation using HLS TB failed.");
      $finish; 
  end 
  read_token(fp, token); 
  while (token != "[[[/runtime]]]") begin 
      if (token != "[[transaction]]") begin 
          $display("ERROR: Simulation using HLS TB failed.");
          $finish; 
      end 
      read_token(fp, token);                        // skip transaction number 
      @(posedge clk);
      # 0.2;
      while(AESL_ready_reg !== 1) begin
          @(posedge clk); 
          # 0.2;
      end
      for(i = 0; i < chanmap_DetToChanInfo_DEPTH; i = i + 1) begin 
          read_token(fp, token); 
          ret = $sscanf(token, "0x%x", token_tmp); 
          if (factor == 4) begin
              if (i%factor == 0) begin
                  tmp_cache_mem [7 : 0] = token_tmp;
              end
              if (i%factor == 1) begin
                  tmp_cache_mem [15 : 8] = token_tmp;
              end
              if (i%factor == 2) begin
                  tmp_cache_mem [23 : 16] = token_tmp;
              end
              if (i%factor == 3) begin
                  tmp_cache_mem [31 : 24] = token_tmp;
                  mem_chanmap_DetToChanInfo [i/factor] = tmp_cache_mem;
                  tmp_cache_mem [DATA_WIDTH - 1 : 0] = 0;
              end
          end
          if (factor == 2) begin
              if (i%factor == 0) begin
                  tmp_cache_mem [15 : 0] = token_tmp;
              end
              if (i%factor == 1) begin
                  tmp_cache_mem [31 : 16] = token_tmp;
                  mem_chanmap_DetToChanInfo [i/factor] = tmp_cache_mem;
                  tmp_cache_mem [DATA_WIDTH - 1: 0] = 0;
              end
          end
          if (factor == 1) begin
              mem_chanmap_DetToChanInfo [i] = token_tmp;
          end
      end 
      if (factor == 4) begin
          if (i%factor != 0) begin
              mem_chanmap_DetToChanInfo [i/factor] = tmp_cache_mem;
          end
      end
      if (factor == 2) begin
          if (i%factor != 0) begin
              mem_chanmap_DetToChanInfo [i/factor] = tmp_cache_mem;
          end
      end 
      read_token(fp, token); 
      if(token != "[[/transaction]]") begin 
          $display("ERROR: Simulation using HLS TB failed.");
          $finish; 
      end 
      read_token(fp, token); 
      transaction_idx = transaction_idx + 1; 
  end 
  $fclose(fp); 
end 
 
task write_binary_chanmap_DetToChanInfo;
    input integer fp;
    input reg[64-1:0] in;
    input integer in_bw;
    reg [63:0] tmp_long;
    reg[64-1:0] local_in;
    integer char_num;
    integer long_num;
    integer i;
    integer j;
    begin
        long_num = (in_bw + 63) / 64;
        char_num = ((in_bw - 1) % 64 + 7) / 8;
        for(i=long_num;i>0;i=i-1) begin
             local_in = in;
             tmp_long = local_in >> ((i-1)*64);
             for(j=0;j<64;j=j+1)
                 if (tmp_long[j] === 1'bx)
                     tmp_long[j] = 1'b0;
             if (i == long_num) begin
                 case(char_num)
                     1: $fwrite(fp,"%c",tmp_long[7:0]);
                     2: $fwrite(fp,"%c%c",tmp_long[15:8],tmp_long[7:0]);
                     3: $fwrite(fp,"%c%c%c",tmp_long[23:16],tmp_long[15:8],tmp_long[7:0]);
                     4: $fwrite(fp,"%c%c%c%c",tmp_long[31:24],tmp_long[23:16],tmp_long[15:8],tmp_long[7:0]);
                     5: $fwrite(fp,"%c%c%c%c%c",tmp_long[39:32],tmp_long[31:24],tmp_long[23:16],tmp_long[15:8],tmp_long[7:0]);
                     6: $fwrite(fp,"%c%c%c%c%c%c",tmp_long[47:40],tmp_long[39:32],tmp_long[31:24],tmp_long[23:16],tmp_long[15:8],tmp_long[7:0]);
                     7: $fwrite(fp,"%c%c%c%c%c%c%c",tmp_long[55:48],tmp_long[47:40],tmp_long[39:32],tmp_long[31:24],tmp_long[23:16],tmp_long[15:8],tmp_long[7:0]);
                     8: $fwrite(fp,"%c%c%c%c%c%c%c%c",tmp_long[63:56],tmp_long[55:48],tmp_long[47:40],tmp_long[39:32],tmp_long[31:24],tmp_long[23:16],tmp_long[15:8],tmp_long[7:0]);
                     default: ;
                 endcase
             end
             else begin
                 $fwrite(fp,"%c%c%c%c%c%c%c%c",tmp_long[63:56],tmp_long[55:48],tmp_long[47:40],tmp_long[39:32],tmp_long[31:24],tmp_long[23:16],tmp_long[15:8],tmp_long[7:0]);
             end
        end
    end
endtask;
//------------------------Read file------------------------ 
 
// Read data from file 
initial begin : read_outdata_file_process 
  integer fp; 
  integer ret; 
  integer factor; 
  reg [151 : 0] token; 
  reg [151 : 0] token_tmp; 
  //reg [outdata_c_bitwidth - 1 : 0] token_tmp; 
  reg [DATA_WIDTH - 1 : 0] tmp_cache_mem; 
  reg [ 8*5 : 1] str;
    reg [63:0] trans_depth;
  integer transaction_idx; 
  integer i; 
  transaction_idx = 0; 
  tmp_cache_mem [DATA_WIDTH - 1 : 0] = 0;
  count_seperate_factor_by_bitwidth (outdata_c_bitwidth , factor);
  fp = $fopen(`TV_IN_outdata ,"r"); 
  if(fp == 0) begin                               // Failed to open file 
      $display("Failed to open file \"%s\"!", `TV_IN_outdata); 
      $finish; 
  end 
  read_token(fp, token); 
  if (token != "[[[runtime]]]") begin             // Illegal format 
      $display("ERROR: Simulation using HLS TB failed.");
      $finish; 
  end 
  read_token(fp, token); 
  while (token != "[[[/runtime]]]") begin 
      if (token != "[[transaction]]") begin 
          $display("ERROR: Simulation using HLS TB failed.");
          $finish; 
      end 
      read_token(fp, token);                        // skip transaction number 
      @(posedge clk);
      # 0.2;
      while(AESL_ready_reg !== 1) begin
          @(posedge clk); 
          # 0.2;
      end
      for(i = 0; i < outdata_DEPTH; i = i + 1) begin 
          read_token(fp, token); 
          ret = $sscanf(token, "0x%x", token_tmp); 
          if (factor == 4) begin
              if (i%factor == 0) begin
                  tmp_cache_mem [7 : 0] = token_tmp;
              end
              if (i%factor == 1) begin
                  tmp_cache_mem [15 : 8] = token_tmp;
              end
              if (i%factor == 2) begin
                  tmp_cache_mem [23 : 16] = token_tmp;
              end
              if (i%factor == 3) begin
                  tmp_cache_mem [31 : 24] = token_tmp;
                  mem_outdata [i/factor] = tmp_cache_mem;
                  tmp_cache_mem [DATA_WIDTH - 1 : 0] = 0;
              end
          end
          if (factor == 2) begin
              if (i%factor == 0) begin
                  tmp_cache_mem [15 : 0] = token_tmp;
              end
              if (i%factor == 1) begin
                  tmp_cache_mem [31 : 16] = token_tmp;
                  mem_outdata [i/factor] = tmp_cache_mem;
                  tmp_cache_mem [DATA_WIDTH - 1: 0] = 0;
              end
          end
          if (factor == 1) begin
              mem_outdata [i] = token_tmp;
          end
      end 
      if (factor == 4) begin
          if (i%factor != 0) begin
              mem_outdata [i/factor] = tmp_cache_mem;
          end
      end
      if (factor == 2) begin
          if (i%factor != 0) begin
              mem_outdata [i/factor] = tmp_cache_mem;
          end
      end 
      read_token(fp, token); 
      if(token != "[[/transaction]]") begin 
          $display("ERROR: Simulation using HLS TB failed.");
          $finish; 
      end 
      read_token(fp, token); 
      transaction_idx = transaction_idx + 1; 
  end 
  $fclose(fp); 
end 
 
task write_binary_outdata;
    input integer fp;
    input reg[64-1:0] in;
    input integer in_bw;
    reg [63:0] tmp_long;
    reg[64-1:0] local_in;
    integer char_num;
    integer long_num;
    integer i;
    integer j;
    begin
        long_num = (in_bw + 63) / 64;
        char_num = ((in_bw - 1) % 64 + 7) / 8;
        for(i=long_num;i>0;i=i-1) begin
             local_in = in;
             tmp_long = local_in >> ((i-1)*64);
             for(j=0;j<64;j=j+1)
                 if (tmp_long[j] === 1'bx)
                     tmp_long[j] = 1'b0;
             if (i == long_num) begin
                 case(char_num)
                     1: $fwrite(fp,"%c",tmp_long[7:0]);
                     2: $fwrite(fp,"%c%c",tmp_long[15:8],tmp_long[7:0]);
                     3: $fwrite(fp,"%c%c%c",tmp_long[23:16],tmp_long[15:8],tmp_long[7:0]);
                     4: $fwrite(fp,"%c%c%c%c",tmp_long[31:24],tmp_long[23:16],tmp_long[15:8],tmp_long[7:0]);
                     5: $fwrite(fp,"%c%c%c%c%c",tmp_long[39:32],tmp_long[31:24],tmp_long[23:16],tmp_long[15:8],tmp_long[7:0]);
                     6: $fwrite(fp,"%c%c%c%c%c%c",tmp_long[47:40],tmp_long[39:32],tmp_long[31:24],tmp_long[23:16],tmp_long[15:8],tmp_long[7:0]);
                     7: $fwrite(fp,"%c%c%c%c%c%c%c",tmp_long[55:48],tmp_long[47:40],tmp_long[39:32],tmp_long[31:24],tmp_long[23:16],tmp_long[15:8],tmp_long[7:0]);
                     8: $fwrite(fp,"%c%c%c%c%c%c%c%c",tmp_long[63:56],tmp_long[55:48],tmp_long[47:40],tmp_long[39:32],tmp_long[31:24],tmp_long[23:16],tmp_long[15:8],tmp_long[7:0]);
                     default: ;
                 endcase
             end
             else begin
                 $fwrite(fp,"%c%c%c%c%c%c%c%c",tmp_long[63:56],tmp_long[55:48],tmp_long[47:40],tmp_long[39:32],tmp_long[31:24],tmp_long[23:16],tmp_long[15:8],tmp_long[7:0]);
             end
        end
    end
endtask;
endmodule
