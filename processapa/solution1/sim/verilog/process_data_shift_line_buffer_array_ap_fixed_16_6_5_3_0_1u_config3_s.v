// ==============================================================
// Generated by Vitis HLS v2023.1
// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
// ==============================================================

`timescale 1 ns / 1 ps 

module process_data_shift_line_buffer_array_ap_fixed_16_6_5_3_0_1u_config3_s (
        ap_clk,
        ap_rst,
        ap_start,
        ap_done,
        ap_idle,
        ap_ready,
        in_elem_0_0_0_0_0_val,
        void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_31_i,
        void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_31_o,
        void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_31_o_ap_vld,
        void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_34_i,
        void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_34_o,
        void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_34_o_ap_vld,
        void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_37_i,
        void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_37_o,
        void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_37_o_ap_vld,
        void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_32_i,
        void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_32_o,
        void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_32_o_ap_vld,
        void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_35_i,
        void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_35_o,
        void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_35_o_ap_vld,
        void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_38_i,
        void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_38_o,
        void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_38_o_ap_vld,
        void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_30,
        void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_30_ap_vld,
        void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_33,
        void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_33_ap_vld,
        void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_36,
        void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_36_ap_vld
);

parameter    ap_ST_fsm_state1 = 1'd1;

input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
input  [15:0] in_elem_0_0_0_0_0_val;
input  [15:0] void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_31_i;
output  [15:0] void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_31_o;
output   void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_31_o_ap_vld;
input  [15:0] void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_34_i;
output  [15:0] void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_34_o;
output   void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_34_o_ap_vld;
input  [15:0] void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_37_i;
output  [15:0] void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_37_o;
output   void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_37_o_ap_vld;
input  [15:0] void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_32_i;
output  [15:0] void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_32_o;
output   void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_32_o_ap_vld;
input  [15:0] void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_35_i;
output  [15:0] void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_35_o;
output   void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_35_o_ap_vld;
input  [15:0] void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_38_i;
output  [15:0] void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_38_o;
output   void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_38_o_ap_vld;
output  [15:0] void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_30;
output   void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_30_ap_vld;
output  [15:0] void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_33;
output   void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_33_ap_vld;
output  [15:0] void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_36;
output   void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_36_ap_vld;

reg ap_done;
reg ap_idle;
reg ap_ready;
reg[15:0] void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_31_o;
reg void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_31_o_ap_vld;
reg[15:0] void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_34_o;
reg void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_34_o_ap_vld;
reg[15:0] void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_37_o;
reg void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_37_o_ap_vld;
reg[15:0] void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_32_o;
reg void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_32_o_ap_vld;
reg[15:0] void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_35_o;
reg void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_35_o_ap_vld;
reg[15:0] void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_38_o;
reg void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_38_o_ap_vld;
reg void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_30_ap_vld;
reg void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_33_ap_vld;
reg void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_36_ap_vld;

(* fsm_encoding = "none" *) reg   [0:0] ap_CS_fsm;
wire    ap_CS_fsm_state1;
reg    void_conv_2d_buffer_cl_stream_stream_weight_t_bias_t_line_buffer_ce0;
reg    void_conv_2d_buffer_cl_stream_stream_weight_t_bias_t_line_buffer_we0;
wire   [15:0] void_conv_2d_buffer_cl_stream_stream_weight_t_bias_t_line_buffer_q0;
reg    void_conv_2d_buffer_cl_stream_stream_weight_t_bias_t_line_buffer_1_ce0;
reg    void_conv_2d_buffer_cl_stream_stream_weight_t_bias_t_line_buffer_1_we0;
wire   [15:0] void_conv_2d_buffer_cl_stream_stream_weight_t_bias_t_line_buffer_1_q0;
reg   [0:0] ap_NS_fsm;
reg    ap_ST_fsm_state1_blk;
wire    ap_ce_reg;

// power-on initialization
initial begin
#0 ap_CS_fsm = 1'd1;
end

process_data_shift_line_buffer_array_ap_fixed_16_6_5_3_0_1u_config3_s_void_conv_2d_buffer_lbW #(
    .DataWidth( 16 ),
    .AddressRange( 128 ),
    .AddressWidth( 7 ))
void_conv_2d_buffer_cl_stream_stream_weight_t_bias_t_line_buffer_U(
    .clk(ap_clk),
    .reset(ap_rst),
    .address0(7'd127),
    .ce0(void_conv_2d_buffer_cl_stream_stream_weight_t_bias_t_line_buffer_ce0),
    .we0(void_conv_2d_buffer_cl_stream_stream_weight_t_bias_t_line_buffer_we0),
    .d0(in_elem_0_0_0_0_0_val),
    .q0(void_conv_2d_buffer_cl_stream_stream_weight_t_bias_t_line_buffer_q0)
);

process_data_shift_line_buffer_array_ap_fixed_16_6_5_3_0_1u_config3_s_void_conv_2d_buffer_lbW #(
    .DataWidth( 16 ),
    .AddressRange( 128 ),
    .AddressWidth( 7 ))
void_conv_2d_buffer_cl_stream_stream_weight_t_bias_t_line_buffer_1_U(
    .clk(ap_clk),
    .reset(ap_rst),
    .address0(7'd127),
    .ce0(void_conv_2d_buffer_cl_stream_stream_weight_t_bias_t_line_buffer_1_ce0),
    .we0(void_conv_2d_buffer_cl_stream_stream_weight_t_bias_t_line_buffer_1_we0),
    .d0(void_conv_2d_buffer_cl_stream_stream_weight_t_bias_t_line_buffer_q0),
    .q0(void_conv_2d_buffer_cl_stream_stream_weight_t_bias_t_line_buffer_1_q0)
);

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_CS_fsm <= ap_ST_fsm_state1;
    end else begin
        ap_CS_fsm <= ap_NS_fsm;
    end
end

always @ (*) begin
    if ((ap_start == 1'b0)) begin
        ap_ST_fsm_state1_blk = 1'b1;
    end else begin
        ap_ST_fsm_state1_blk = 1'b0;
    end
end

always @ (*) begin
    if ((((ap_start == 1'b0) & (1'b1 == ap_CS_fsm_state1)) | ((ap_start == 1'b1) & (1'b1 == ap_CS_fsm_state1)))) begin
        ap_done = 1'b1;
    end else begin
        ap_done = 1'b0;
    end
end

always @ (*) begin
    if (((ap_start == 1'b0) & (1'b1 == ap_CS_fsm_state1))) begin
        ap_idle = 1'b1;
    end else begin
        ap_idle = 1'b0;
    end
end

always @ (*) begin
    if (((ap_start == 1'b1) & (1'b1 == ap_CS_fsm_state1))) begin
        ap_ready = 1'b1;
    end else begin
        ap_ready = 1'b0;
    end
end

always @ (*) begin
    if (((ap_start == 1'b1) & (1'b1 == ap_CS_fsm_state1))) begin
        void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_30_ap_vld = 1'b1;
    end else begin
        void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_30_ap_vld = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state1)) begin
        void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_31_o = void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_32_i;
    end else begin
        void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_31_o = void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_31_i;
    end
end

always @ (*) begin
    if (((ap_start == 1'b1) & (1'b1 == ap_CS_fsm_state1))) begin
        void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_31_o_ap_vld = 1'b1;
    end else begin
        void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_31_o_ap_vld = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state1)) begin
        void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_32_o = void_conv_2d_buffer_cl_stream_stream_weight_t_bias_t_line_buffer_1_q0;
    end else begin
        void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_32_o = void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_32_i;
    end
end

always @ (*) begin
    if (((ap_start == 1'b1) & (1'b1 == ap_CS_fsm_state1))) begin
        void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_32_o_ap_vld = 1'b1;
    end else begin
        void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_32_o_ap_vld = 1'b0;
    end
end

always @ (*) begin
    if (((ap_start == 1'b1) & (1'b1 == ap_CS_fsm_state1))) begin
        void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_33_ap_vld = 1'b1;
    end else begin
        void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_33_ap_vld = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state1)) begin
        void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_34_o = void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_35_i;
    end else begin
        void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_34_o = void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_34_i;
    end
end

always @ (*) begin
    if (((ap_start == 1'b1) & (1'b1 == ap_CS_fsm_state1))) begin
        void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_34_o_ap_vld = 1'b1;
    end else begin
        void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_34_o_ap_vld = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state1)) begin
        void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_35_o = void_conv_2d_buffer_cl_stream_stream_weight_t_bias_t_line_buffer_q0;
    end else begin
        void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_35_o = void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_35_i;
    end
end

always @ (*) begin
    if (((ap_start == 1'b1) & (1'b1 == ap_CS_fsm_state1))) begin
        void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_35_o_ap_vld = 1'b1;
    end else begin
        void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_35_o_ap_vld = 1'b0;
    end
end

always @ (*) begin
    if (((ap_start == 1'b1) & (1'b1 == ap_CS_fsm_state1))) begin
        void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_36_ap_vld = 1'b1;
    end else begin
        void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_36_ap_vld = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state1)) begin
        void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_37_o = void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_38_i;
    end else begin
        void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_37_o = void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_37_i;
    end
end

always @ (*) begin
    if (((ap_start == 1'b1) & (1'b1 == ap_CS_fsm_state1))) begin
        void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_37_o_ap_vld = 1'b1;
    end else begin
        void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_37_o_ap_vld = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state1)) begin
        void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_38_o = in_elem_0_0_0_0_0_val;
    end else begin
        void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_38_o = void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_38_i;
    end
end

always @ (*) begin
    if (((ap_start == 1'b1) & (1'b1 == ap_CS_fsm_state1))) begin
        void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_38_o_ap_vld = 1'b1;
    end else begin
        void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_38_o_ap_vld = 1'b0;
    end
end

always @ (*) begin
    if (((ap_start == 1'b1) & (1'b1 == ap_CS_fsm_state1))) begin
        void_conv_2d_buffer_cl_stream_stream_weight_t_bias_t_line_buffer_1_ce0 = 1'd1;
    end else begin
        void_conv_2d_buffer_cl_stream_stream_weight_t_bias_t_line_buffer_1_ce0 = 1'b0;
    end
end

always @ (*) begin
    if (((ap_start == 1'b1) & (1'b1 == ap_CS_fsm_state1))) begin
        void_conv_2d_buffer_cl_stream_stream_weight_t_bias_t_line_buffer_1_we0 = 1'd1;
    end else begin
        void_conv_2d_buffer_cl_stream_stream_weight_t_bias_t_line_buffer_1_we0 = 1'b0;
    end
end

always @ (*) begin
    if (((ap_start == 1'b1) & (1'b1 == ap_CS_fsm_state1))) begin
        void_conv_2d_buffer_cl_stream_stream_weight_t_bias_t_line_buffer_ce0 = 1'd1;
    end else begin
        void_conv_2d_buffer_cl_stream_stream_weight_t_bias_t_line_buffer_ce0 = 1'b0;
    end
end

always @ (*) begin
    if (((ap_start == 1'b1) & (1'b1 == ap_CS_fsm_state1))) begin
        void_conv_2d_buffer_cl_stream_stream_weight_t_bias_t_line_buffer_we0 = 1'd1;
    end else begin
        void_conv_2d_buffer_cl_stream_stream_weight_t_bias_t_line_buffer_we0 = 1'b0;
    end
end

always @ (*) begin
    case (ap_CS_fsm)
        ap_ST_fsm_state1 : begin
            ap_NS_fsm = ap_ST_fsm_state1;
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end

assign ap_CS_fsm_state1 = ap_CS_fsm[32'd0];

assign void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_30 = void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_31_i;

assign void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_33 = void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_34_i;

assign void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_36 = void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_37_i;

endmodule //process_data_shift_line_buffer_array_ap_fixed_16_6_5_3_0_1u_config3_s