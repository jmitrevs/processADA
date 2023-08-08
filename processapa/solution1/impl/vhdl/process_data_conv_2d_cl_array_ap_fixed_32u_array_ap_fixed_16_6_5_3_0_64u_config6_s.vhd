-- ==============================================================
-- Generated by Vitis HLS v2023.1
-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
-- ==============================================================

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity process_data_conv_2d_cl_array_ap_fixed_32u_array_ap_fixed_16_6_5_3_0_64u_config6_s is
port (
    ap_clk : IN STD_LOGIC;
    ap_rst : IN STD_LOGIC;
    ap_start : IN STD_LOGIC;
    start_full_n : IN STD_LOGIC;
    ap_done : OUT STD_LOGIC;
    ap_continue : IN STD_LOGIC;
    ap_idle : OUT STD_LOGIC;
    ap_ready : OUT STD_LOGIC;
    start_out : OUT STD_LOGIC;
    start_write : OUT STD_LOGIC;
    layer5_out_dout : IN STD_LOGIC_VECTOR (511 downto 0);
    layer5_out_num_data_valid : IN STD_LOGIC_VECTOR (12 downto 0);
    layer5_out_fifo_cap : IN STD_LOGIC_VECTOR (12 downto 0);
    layer5_out_empty_n : IN STD_LOGIC;
    layer5_out_read : OUT STD_LOGIC;
    layer6_out_din : OUT STD_LOGIC_VECTOR (1023 downto 0);
    layer6_out_num_data_valid : IN STD_LOGIC_VECTOR (12 downto 0);
    layer6_out_fifo_cap : IN STD_LOGIC_VECTOR (12 downto 0);
    layer6_out_full_n : IN STD_LOGIC;
    layer6_out_write : OUT STD_LOGIC );
end;


architecture behav of process_data_conv_2d_cl_array_ap_fixed_32u_array_ap_fixed_16_6_5_3_0_64u_config6_s is 
    constant ap_const_logic_1 : STD_LOGIC := '1';
    constant ap_const_logic_0 : STD_LOGIC := '0';
    constant ap_ST_fsm_state1 : STD_LOGIC_VECTOR (2 downto 0) := "001";
    constant ap_ST_fsm_state2 : STD_LOGIC_VECTOR (2 downto 0) := "010";
    constant ap_ST_fsm_state3 : STD_LOGIC_VECTOR (2 downto 0) := "100";
    constant ap_const_lv32_0 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000000";
    constant ap_const_lv32_1 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000001";
    constant ap_const_lv1_0 : STD_LOGIC_VECTOR (0 downto 0) := "0";
    constant ap_const_lv32_2 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000010";
    constant ap_const_lv12_0 : STD_LOGIC_VECTOR (11 downto 0) := "000000000000";
    constant ap_const_lv12_F61 : STD_LOGIC_VECTOR (11 downto 0) := "111101100001";
    constant ap_const_lv12_1 : STD_LOGIC_VECTOR (11 downto 0) := "000000000001";
    constant ap_const_lv32_1E0 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000111100000";
    constant ap_const_lv32_1EF : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000111101111";
    constant ap_const_lv32_1F0 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000111110000";
    constant ap_const_lv32_1FF : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000111111111";
    constant ap_const_lv32_10 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000010000";
    constant ap_const_lv32_1F : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000011111";
    constant ap_const_lv32_20 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000100000";
    constant ap_const_lv32_2F : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000101111";
    constant ap_const_lv32_30 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000110000";
    constant ap_const_lv32_3F : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000111111";
    constant ap_const_lv32_40 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000001000000";
    constant ap_const_lv32_4F : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000001001111";
    constant ap_const_lv32_50 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000001010000";
    constant ap_const_lv32_5F : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000001011111";
    constant ap_const_lv32_60 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000001100000";
    constant ap_const_lv32_6F : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000001101111";
    constant ap_const_lv32_70 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000001110000";
    constant ap_const_lv32_7F : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000001111111";
    constant ap_const_lv32_80 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000010000000";
    constant ap_const_lv32_8F : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000010001111";
    constant ap_const_lv32_90 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000010010000";
    constant ap_const_lv32_9F : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000010011111";
    constant ap_const_lv32_A0 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000010100000";
    constant ap_const_lv32_AF : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000010101111";
    constant ap_const_lv32_B0 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000010110000";
    constant ap_const_lv32_BF : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000010111111";
    constant ap_const_lv32_C0 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000011000000";
    constant ap_const_lv32_CF : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000011001111";
    constant ap_const_lv32_D0 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000011010000";
    constant ap_const_lv32_DF : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000011011111";
    constant ap_const_lv32_E0 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000011100000";
    constant ap_const_lv32_EF : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000011101111";
    constant ap_const_lv32_F0 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000011110000";
    constant ap_const_lv32_FF : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000011111111";
    constant ap_const_lv32_100 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000100000000";
    constant ap_const_lv32_10F : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000100001111";
    constant ap_const_lv32_110 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000100010000";
    constant ap_const_lv32_11F : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000100011111";
    constant ap_const_lv32_120 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000100100000";
    constant ap_const_lv32_12F : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000100101111";
    constant ap_const_lv32_130 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000100110000";
    constant ap_const_lv32_13F : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000100111111";
    constant ap_const_lv32_140 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000101000000";
    constant ap_const_lv32_14F : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000101001111";
    constant ap_const_lv32_150 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000101010000";
    constant ap_const_lv32_15F : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000101011111";
    constant ap_const_lv32_160 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000101100000";
    constant ap_const_lv32_16F : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000101101111";
    constant ap_const_lv32_170 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000101110000";
    constant ap_const_lv32_17F : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000101111111";
    constant ap_const_lv32_180 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000110000000";
    constant ap_const_lv32_18F : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000110001111";
    constant ap_const_lv32_190 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000110010000";
    constant ap_const_lv32_19F : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000110011111";
    constant ap_const_lv32_1A0 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000110100000";
    constant ap_const_lv32_1AF : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000110101111";
    constant ap_const_lv32_1B0 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000110110000";
    constant ap_const_lv32_1BF : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000110111111";
    constant ap_const_lv32_1C0 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000111000000";
    constant ap_const_lv32_1CF : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000111001111";
    constant ap_const_lv32_1D0 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000111010000";
    constant ap_const_lv32_1DF : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000111011111";
    constant ap_const_lv1_1 : STD_LOGIC_VECTOR (0 downto 0) := "1";
    constant ap_const_lv13_0 : STD_LOGIC_VECTOR (12 downto 0) := "0000000000000";
    constant ap_const_boolean_1 : BOOLEAN := true;

attribute shreg_extract : string;
    signal real_start : STD_LOGIC;
    signal start_once_reg : STD_LOGIC := '0';
    signal ap_done_reg : STD_LOGIC := '0';
    signal ap_CS_fsm : STD_LOGIC_VECTOR (2 downto 0) := "001";
    attribute fsm_encoding : string;
    attribute fsm_encoding of ap_CS_fsm : signal is "none";
    signal ap_CS_fsm_state1 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state1 : signal is "none";
    signal internal_ap_ready : STD_LOGIC;
    signal layer5_out_blk_n : STD_LOGIC;
    signal ap_CS_fsm_state2 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state2 : signal is "none";
    signal icmp_ln79_fu_1646_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal trunc_ln87_fu_1658_p1 : STD_LOGIC_VECTOR (15 downto 0);
    signal trunc_ln87_reg_2019 : STD_LOGIC_VECTOR (15 downto 0);
    signal ap_block_state2 : BOOLEAN;
    signal trunc_ln87_s_reg_2024 : STD_LOGIC_VECTOR (15 downto 0);
    signal trunc_ln87_3_reg_2029 : STD_LOGIC_VECTOR (15 downto 0);
    signal ref_tmp_1_i_reg_2034 : STD_LOGIC_VECTOR (15 downto 0);
    signal ref_tmp_2_i_reg_2039 : STD_LOGIC_VECTOR (15 downto 0);
    signal ref_tmp_3_i_reg_2044 : STD_LOGIC_VECTOR (15 downto 0);
    signal ref_tmp_4_i_reg_2049 : STD_LOGIC_VECTOR (15 downto 0);
    signal ref_tmp_5_i_reg_2054 : STD_LOGIC_VECTOR (15 downto 0);
    signal ref_tmp_6_i_reg_2059 : STD_LOGIC_VECTOR (15 downto 0);
    signal ref_tmp_7_i_reg_2064 : STD_LOGIC_VECTOR (15 downto 0);
    signal ref_tmp_8_i_reg_2069 : STD_LOGIC_VECTOR (15 downto 0);
    signal ref_tmp_9_i_reg_2074 : STD_LOGIC_VECTOR (15 downto 0);
    signal ref_tmp_10_i_reg_2079 : STD_LOGIC_VECTOR (15 downto 0);
    signal ref_tmp_11_i_reg_2084 : STD_LOGIC_VECTOR (15 downto 0);
    signal ref_tmp_12_i_reg_2089 : STD_LOGIC_VECTOR (15 downto 0);
    signal ref_tmp_13_i_reg_2094 : STD_LOGIC_VECTOR (15 downto 0);
    signal ref_tmp_14_i_reg_2099 : STD_LOGIC_VECTOR (15 downto 0);
    signal ref_tmp_15_i_reg_2104 : STD_LOGIC_VECTOR (15 downto 0);
    signal ref_tmp_16_i_reg_2109 : STD_LOGIC_VECTOR (15 downto 0);
    signal ref_tmp_17_i_reg_2114 : STD_LOGIC_VECTOR (15 downto 0);
    signal ref_tmp_18_i_reg_2119 : STD_LOGIC_VECTOR (15 downto 0);
    signal ref_tmp_19_i_reg_2124 : STD_LOGIC_VECTOR (15 downto 0);
    signal ref_tmp_20_i_reg_2129 : STD_LOGIC_VECTOR (15 downto 0);
    signal ref_tmp_21_i_reg_2134 : STD_LOGIC_VECTOR (15 downto 0);
    signal ref_tmp_22_i_reg_2139 : STD_LOGIC_VECTOR (15 downto 0);
    signal ref_tmp_23_i_reg_2144 : STD_LOGIC_VECTOR (15 downto 0);
    signal ref_tmp_24_i_reg_2149 : STD_LOGIC_VECTOR (15 downto 0);
    signal ref_tmp_25_i_reg_2154 : STD_LOGIC_VECTOR (15 downto 0);
    signal ref_tmp_26_i_reg_2159 : STD_LOGIC_VECTOR (15 downto 0);
    signal ref_tmp_27_i_reg_2164 : STD_LOGIC_VECTOR (15 downto 0);
    signal ref_tmp_28_i_reg_2169 : STD_LOGIC_VECTOR (15 downto 0);
    signal ref_tmp_29_i_reg_2174 : STD_LOGIC_VECTOR (15 downto 0);
    signal grp_compute_output_buffer_2d_array_array_ap_fixed_16_6_5_3_0_64u_config6_s_fu_886_ap_start : STD_LOGIC;
    signal grp_compute_output_buffer_2d_array_array_ap_fixed_16_6_5_3_0_64u_config6_s_fu_886_ap_done : STD_LOGIC;
    signal grp_compute_output_buffer_2d_array_array_ap_fixed_16_6_5_3_0_64u_config6_s_fu_886_ap_idle : STD_LOGIC;
    signal grp_compute_output_buffer_2d_array_array_ap_fixed_16_6_5_3_0_64u_config6_s_fu_886_ap_ready : STD_LOGIC;
    signal grp_compute_output_buffer_2d_array_array_ap_fixed_16_6_5_3_0_64u_config6_s_fu_886_layer6_out_din : STD_LOGIC_VECTOR (1023 downto 0);
    signal grp_compute_output_buffer_2d_array_array_ap_fixed_16_6_5_3_0_64u_config6_s_fu_886_layer6_out_write : STD_LOGIC;
    signal grp_compute_output_buffer_2d_array_array_ap_fixed_16_6_5_3_0_64u_config6_s_fu_886_ap_start_reg : STD_LOGIC := '0';
    signal ap_block_state2_ignore_call36 : BOOLEAN;
    signal ap_CS_fsm_state3 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state3 : signal is "none";
    signal indvar_flatten_fu_876 : STD_LOGIC_VECTOR (11 downto 0);
    signal add_ln79_fu_1652_p2 : STD_LOGIC_VECTOR (11 downto 0);
    signal ap_block_state1 : BOOLEAN;
    signal ap_NS_fsm : STD_LOGIC_VECTOR (2 downto 0);
    signal ap_ST_fsm_state1_blk : STD_LOGIC;
    signal ap_ST_fsm_state2_blk : STD_LOGIC;
    signal ap_ST_fsm_state3_blk : STD_LOGIC;
    signal ap_ce_reg : STD_LOGIC;

    component process_data_compute_output_buffer_2d_array_array_ap_fixed_16_6_5_3_0_64u_config6_s IS
    port (
        ap_clk : IN STD_LOGIC;
        ap_rst : IN STD_LOGIC;
        ap_start : IN STD_LOGIC;
        ap_done : OUT STD_LOGIC;
        ap_idle : OUT STD_LOGIC;
        ap_ready : OUT STD_LOGIC;
        p_read : IN STD_LOGIC_VECTOR (15 downto 0);
        p_read1 : IN STD_LOGIC_VECTOR (15 downto 0);
        p_read2 : IN STD_LOGIC_VECTOR (15 downto 0);
        p_read3 : IN STD_LOGIC_VECTOR (15 downto 0);
        p_read4 : IN STD_LOGIC_VECTOR (15 downto 0);
        p_read5 : IN STD_LOGIC_VECTOR (15 downto 0);
        p_read6 : IN STD_LOGIC_VECTOR (15 downto 0);
        p_read7 : IN STD_LOGIC_VECTOR (15 downto 0);
        p_read8 : IN STD_LOGIC_VECTOR (15 downto 0);
        p_read9 : IN STD_LOGIC_VECTOR (15 downto 0);
        p_read10 : IN STD_LOGIC_VECTOR (15 downto 0);
        p_read11 : IN STD_LOGIC_VECTOR (15 downto 0);
        p_read12 : IN STD_LOGIC_VECTOR (15 downto 0);
        p_read13 : IN STD_LOGIC_VECTOR (15 downto 0);
        p_read14 : IN STD_LOGIC_VECTOR (15 downto 0);
        p_read15 : IN STD_LOGIC_VECTOR (15 downto 0);
        p_read16 : IN STD_LOGIC_VECTOR (15 downto 0);
        p_read17 : IN STD_LOGIC_VECTOR (15 downto 0);
        p_read18 : IN STD_LOGIC_VECTOR (15 downto 0);
        p_read19 : IN STD_LOGIC_VECTOR (15 downto 0);
        p_read20 : IN STD_LOGIC_VECTOR (15 downto 0);
        p_read21 : IN STD_LOGIC_VECTOR (15 downto 0);
        p_read22 : IN STD_LOGIC_VECTOR (15 downto 0);
        p_read23 : IN STD_LOGIC_VECTOR (15 downto 0);
        p_read24 : IN STD_LOGIC_VECTOR (15 downto 0);
        p_read25 : IN STD_LOGIC_VECTOR (15 downto 0);
        p_read26 : IN STD_LOGIC_VECTOR (15 downto 0);
        p_read27 : IN STD_LOGIC_VECTOR (15 downto 0);
        p_read28 : IN STD_LOGIC_VECTOR (15 downto 0);
        p_read29 : IN STD_LOGIC_VECTOR (15 downto 0);
        p_read30 : IN STD_LOGIC_VECTOR (15 downto 0);
        p_read31 : IN STD_LOGIC_VECTOR (15 downto 0);
        layer6_out_din : OUT STD_LOGIC_VECTOR (1023 downto 0);
        layer6_out_num_data_valid : IN STD_LOGIC_VECTOR (12 downto 0);
        layer6_out_fifo_cap : IN STD_LOGIC_VECTOR (12 downto 0);
        layer6_out_full_n : IN STD_LOGIC;
        layer6_out_write : OUT STD_LOGIC );
    end component;



begin
    grp_compute_output_buffer_2d_array_array_ap_fixed_16_6_5_3_0_64u_config6_s_fu_886 : component process_data_compute_output_buffer_2d_array_array_ap_fixed_16_6_5_3_0_64u_config6_s
    port map (
        ap_clk => ap_clk,
        ap_rst => ap_rst,
        ap_start => grp_compute_output_buffer_2d_array_array_ap_fixed_16_6_5_3_0_64u_config6_s_fu_886_ap_start,
        ap_done => grp_compute_output_buffer_2d_array_array_ap_fixed_16_6_5_3_0_64u_config6_s_fu_886_ap_done,
        ap_idle => grp_compute_output_buffer_2d_array_array_ap_fixed_16_6_5_3_0_64u_config6_s_fu_886_ap_idle,
        ap_ready => grp_compute_output_buffer_2d_array_array_ap_fixed_16_6_5_3_0_64u_config6_s_fu_886_ap_ready,
        p_read => trunc_ln87_reg_2019,
        p_read1 => ref_tmp_1_i_reg_2034,
        p_read2 => ref_tmp_2_i_reg_2039,
        p_read3 => ref_tmp_3_i_reg_2044,
        p_read4 => ref_tmp_4_i_reg_2049,
        p_read5 => ref_tmp_5_i_reg_2054,
        p_read6 => ref_tmp_6_i_reg_2059,
        p_read7 => ref_tmp_7_i_reg_2064,
        p_read8 => ref_tmp_8_i_reg_2069,
        p_read9 => ref_tmp_9_i_reg_2074,
        p_read10 => ref_tmp_10_i_reg_2079,
        p_read11 => ref_tmp_11_i_reg_2084,
        p_read12 => ref_tmp_12_i_reg_2089,
        p_read13 => ref_tmp_13_i_reg_2094,
        p_read14 => ref_tmp_14_i_reg_2099,
        p_read15 => ref_tmp_15_i_reg_2104,
        p_read16 => ref_tmp_16_i_reg_2109,
        p_read17 => ref_tmp_17_i_reg_2114,
        p_read18 => ref_tmp_18_i_reg_2119,
        p_read19 => ref_tmp_19_i_reg_2124,
        p_read20 => ref_tmp_20_i_reg_2129,
        p_read21 => ref_tmp_21_i_reg_2134,
        p_read22 => ref_tmp_22_i_reg_2139,
        p_read23 => ref_tmp_23_i_reg_2144,
        p_read24 => ref_tmp_24_i_reg_2149,
        p_read25 => ref_tmp_25_i_reg_2154,
        p_read26 => ref_tmp_26_i_reg_2159,
        p_read27 => ref_tmp_27_i_reg_2164,
        p_read28 => ref_tmp_28_i_reg_2169,
        p_read29 => ref_tmp_29_i_reg_2174,
        p_read30 => trunc_ln87_s_reg_2024,
        p_read31 => trunc_ln87_3_reg_2029,
        layer6_out_din => grp_compute_output_buffer_2d_array_array_ap_fixed_16_6_5_3_0_64u_config6_s_fu_886_layer6_out_din,
        layer6_out_num_data_valid => ap_const_lv13_0,
        layer6_out_fifo_cap => ap_const_lv13_0,
        layer6_out_full_n => layer6_out_full_n,
        layer6_out_write => grp_compute_output_buffer_2d_array_array_ap_fixed_16_6_5_3_0_64u_config6_s_fu_886_layer6_out_write);





    ap_CS_fsm_assign_proc : process(ap_clk)
    begin
        if (ap_clk'event and ap_clk =  '1') then
            if (ap_rst = '1') then
                ap_CS_fsm <= ap_ST_fsm_state1;
            else
                ap_CS_fsm <= ap_NS_fsm;
            end if;
        end if;
    end process;


    ap_done_reg_assign_proc : process(ap_clk)
    begin
        if (ap_clk'event and ap_clk =  '1') then
            if (ap_rst = '1') then
                ap_done_reg <= ap_const_logic_0;
            else
                if ((ap_continue = ap_const_logic_1)) then 
                    ap_done_reg <= ap_const_logic_0;
                elsif ((not(((icmp_ln79_fu_1646_p2 = ap_const_lv1_0) and (layer5_out_empty_n = ap_const_logic_0))) and (icmp_ln79_fu_1646_p2 = ap_const_lv1_1) and (ap_const_logic_1 = ap_CS_fsm_state2))) then 
                    ap_done_reg <= ap_const_logic_1;
                end if; 
            end if;
        end if;
    end process;


    grp_compute_output_buffer_2d_array_array_ap_fixed_16_6_5_3_0_64u_config6_s_fu_886_ap_start_reg_assign_proc : process(ap_clk)
    begin
        if (ap_clk'event and ap_clk =  '1') then
            if (ap_rst = '1') then
                grp_compute_output_buffer_2d_array_array_ap_fixed_16_6_5_3_0_64u_config6_s_fu_886_ap_start_reg <= ap_const_logic_0;
            else
                if ((not(((icmp_ln79_fu_1646_p2 = ap_const_lv1_0) and (layer5_out_empty_n = ap_const_logic_0))) and (icmp_ln79_fu_1646_p2 = ap_const_lv1_0) and (ap_const_logic_1 = ap_CS_fsm_state2))) then 
                    grp_compute_output_buffer_2d_array_array_ap_fixed_16_6_5_3_0_64u_config6_s_fu_886_ap_start_reg <= ap_const_logic_1;
                elsif ((grp_compute_output_buffer_2d_array_array_ap_fixed_16_6_5_3_0_64u_config6_s_fu_886_ap_ready = ap_const_logic_1)) then 
                    grp_compute_output_buffer_2d_array_array_ap_fixed_16_6_5_3_0_64u_config6_s_fu_886_ap_start_reg <= ap_const_logic_0;
                end if; 
            end if;
        end if;
    end process;


    start_once_reg_assign_proc : process(ap_clk)
    begin
        if (ap_clk'event and ap_clk =  '1') then
            if (ap_rst = '1') then
                start_once_reg <= ap_const_logic_0;
            else
                if (((real_start = ap_const_logic_1) and (internal_ap_ready = ap_const_logic_0))) then 
                    start_once_reg <= ap_const_logic_1;
                elsif ((internal_ap_ready = ap_const_logic_1)) then 
                    start_once_reg <= ap_const_logic_0;
                end if; 
            end if;
        end if;
    end process;


    indvar_flatten_fu_876_assign_proc : process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if ((not(((real_start = ap_const_logic_0) or (ap_done_reg = ap_const_logic_1))) and (ap_const_logic_1 = ap_CS_fsm_state1))) then 
                indvar_flatten_fu_876 <= ap_const_lv12_0;
            elsif ((not(((icmp_ln79_fu_1646_p2 = ap_const_lv1_0) and (layer5_out_empty_n = ap_const_logic_0))) and (icmp_ln79_fu_1646_p2 = ap_const_lv1_0) and (ap_const_logic_1 = ap_CS_fsm_state2))) then 
                indvar_flatten_fu_876 <= add_ln79_fu_1652_p2;
            end if; 
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if ((not(((icmp_ln79_fu_1646_p2 = ap_const_lv1_0) and (layer5_out_empty_n = ap_const_logic_0))) and (icmp_ln79_fu_1646_p2 = ap_const_lv1_0) and (ap_const_logic_1 = ap_CS_fsm_state2))) then
                ref_tmp_10_i_reg_2079 <= layer5_out_dout(175 downto 160);
                ref_tmp_11_i_reg_2084 <= layer5_out_dout(191 downto 176);
                ref_tmp_12_i_reg_2089 <= layer5_out_dout(207 downto 192);
                ref_tmp_13_i_reg_2094 <= layer5_out_dout(223 downto 208);
                ref_tmp_14_i_reg_2099 <= layer5_out_dout(239 downto 224);
                ref_tmp_15_i_reg_2104 <= layer5_out_dout(255 downto 240);
                ref_tmp_16_i_reg_2109 <= layer5_out_dout(271 downto 256);
                ref_tmp_17_i_reg_2114 <= layer5_out_dout(287 downto 272);
                ref_tmp_18_i_reg_2119 <= layer5_out_dout(303 downto 288);
                ref_tmp_19_i_reg_2124 <= layer5_out_dout(319 downto 304);
                ref_tmp_1_i_reg_2034 <= layer5_out_dout(31 downto 16);
                ref_tmp_20_i_reg_2129 <= layer5_out_dout(335 downto 320);
                ref_tmp_21_i_reg_2134 <= layer5_out_dout(351 downto 336);
                ref_tmp_22_i_reg_2139 <= layer5_out_dout(367 downto 352);
                ref_tmp_23_i_reg_2144 <= layer5_out_dout(383 downto 368);
                ref_tmp_24_i_reg_2149 <= layer5_out_dout(399 downto 384);
                ref_tmp_25_i_reg_2154 <= layer5_out_dout(415 downto 400);
                ref_tmp_26_i_reg_2159 <= layer5_out_dout(431 downto 416);
                ref_tmp_27_i_reg_2164 <= layer5_out_dout(447 downto 432);
                ref_tmp_28_i_reg_2169 <= layer5_out_dout(463 downto 448);
                ref_tmp_29_i_reg_2174 <= layer5_out_dout(479 downto 464);
                ref_tmp_2_i_reg_2039 <= layer5_out_dout(47 downto 32);
                ref_tmp_3_i_reg_2044 <= layer5_out_dout(63 downto 48);
                ref_tmp_4_i_reg_2049 <= layer5_out_dout(79 downto 64);
                ref_tmp_5_i_reg_2054 <= layer5_out_dout(95 downto 80);
                ref_tmp_6_i_reg_2059 <= layer5_out_dout(111 downto 96);
                ref_tmp_7_i_reg_2064 <= layer5_out_dout(127 downto 112);
                ref_tmp_8_i_reg_2069 <= layer5_out_dout(143 downto 128);
                ref_tmp_9_i_reg_2074 <= layer5_out_dout(159 downto 144);
                trunc_ln87_3_reg_2029 <= layer5_out_dout(511 downto 496);
                trunc_ln87_reg_2019 <= trunc_ln87_fu_1658_p1;
                trunc_ln87_s_reg_2024 <= layer5_out_dout(495 downto 480);
            end if;
        end if;
    end process;

    ap_NS_fsm_assign_proc : process (real_start, ap_done_reg, ap_CS_fsm, ap_CS_fsm_state1, layer5_out_empty_n, ap_CS_fsm_state2, icmp_ln79_fu_1646_p2, grp_compute_output_buffer_2d_array_array_ap_fixed_16_6_5_3_0_64u_config6_s_fu_886_ap_done, ap_CS_fsm_state3)
    begin
        case ap_CS_fsm is
            when ap_ST_fsm_state1 => 
                if ((not(((real_start = ap_const_logic_0) or (ap_done_reg = ap_const_logic_1))) and (ap_const_logic_1 = ap_CS_fsm_state1))) then
                    ap_NS_fsm <= ap_ST_fsm_state2;
                else
                    ap_NS_fsm <= ap_ST_fsm_state1;
                end if;
            when ap_ST_fsm_state2 => 
                if ((not(((icmp_ln79_fu_1646_p2 = ap_const_lv1_0) and (layer5_out_empty_n = ap_const_logic_0))) and (icmp_ln79_fu_1646_p2 = ap_const_lv1_1) and (ap_const_logic_1 = ap_CS_fsm_state2))) then
                    ap_NS_fsm <= ap_ST_fsm_state1;
                elsif ((not(((icmp_ln79_fu_1646_p2 = ap_const_lv1_0) and (layer5_out_empty_n = ap_const_logic_0))) and (icmp_ln79_fu_1646_p2 = ap_const_lv1_0) and (ap_const_logic_1 = ap_CS_fsm_state2))) then
                    ap_NS_fsm <= ap_ST_fsm_state3;
                else
                    ap_NS_fsm <= ap_ST_fsm_state2;
                end if;
            when ap_ST_fsm_state3 => 
                if (((ap_const_logic_1 = ap_CS_fsm_state3) and (grp_compute_output_buffer_2d_array_array_ap_fixed_16_6_5_3_0_64u_config6_s_fu_886_ap_done = ap_const_logic_1))) then
                    ap_NS_fsm <= ap_ST_fsm_state2;
                else
                    ap_NS_fsm <= ap_ST_fsm_state3;
                end if;
            when others =>  
                ap_NS_fsm <= "XXX";
        end case;
    end process;
    add_ln79_fu_1652_p2 <= std_logic_vector(unsigned(indvar_flatten_fu_876) + unsigned(ap_const_lv12_1));
    ap_CS_fsm_state1 <= ap_CS_fsm(0);
    ap_CS_fsm_state2 <= ap_CS_fsm(1);
    ap_CS_fsm_state3 <= ap_CS_fsm(2);

    ap_ST_fsm_state1_blk_assign_proc : process(real_start, ap_done_reg)
    begin
        if (((real_start = ap_const_logic_0) or (ap_done_reg = ap_const_logic_1))) then 
            ap_ST_fsm_state1_blk <= ap_const_logic_1;
        else 
            ap_ST_fsm_state1_blk <= ap_const_logic_0;
        end if; 
    end process;


    ap_ST_fsm_state2_blk_assign_proc : process(layer5_out_empty_n, icmp_ln79_fu_1646_p2)
    begin
        if (((icmp_ln79_fu_1646_p2 = ap_const_lv1_0) and (layer5_out_empty_n = ap_const_logic_0))) then 
            ap_ST_fsm_state2_blk <= ap_const_logic_1;
        else 
            ap_ST_fsm_state2_blk <= ap_const_logic_0;
        end if; 
    end process;


    ap_ST_fsm_state3_blk_assign_proc : process(grp_compute_output_buffer_2d_array_array_ap_fixed_16_6_5_3_0_64u_config6_s_fu_886_ap_done)
    begin
        if ((grp_compute_output_buffer_2d_array_array_ap_fixed_16_6_5_3_0_64u_config6_s_fu_886_ap_done = ap_const_logic_0)) then 
            ap_ST_fsm_state3_blk <= ap_const_logic_1;
        else 
            ap_ST_fsm_state3_blk <= ap_const_logic_0;
        end if; 
    end process;


    ap_block_state1_assign_proc : process(real_start, ap_done_reg)
    begin
                ap_block_state1 <= ((real_start = ap_const_logic_0) or (ap_done_reg = ap_const_logic_1));
    end process;


    ap_block_state2_assign_proc : process(layer5_out_empty_n, icmp_ln79_fu_1646_p2)
    begin
                ap_block_state2 <= ((icmp_ln79_fu_1646_p2 = ap_const_lv1_0) and (layer5_out_empty_n = ap_const_logic_0));
    end process;


    ap_block_state2_ignore_call36_assign_proc : process(layer5_out_empty_n, icmp_ln79_fu_1646_p2)
    begin
                ap_block_state2_ignore_call36 <= ((icmp_ln79_fu_1646_p2 = ap_const_lv1_0) and (layer5_out_empty_n = ap_const_logic_0));
    end process;


    ap_done_assign_proc : process(ap_done_reg, layer5_out_empty_n, ap_CS_fsm_state2, icmp_ln79_fu_1646_p2)
    begin
        if ((not(((icmp_ln79_fu_1646_p2 = ap_const_lv1_0) and (layer5_out_empty_n = ap_const_logic_0))) and (icmp_ln79_fu_1646_p2 = ap_const_lv1_1) and (ap_const_logic_1 = ap_CS_fsm_state2))) then 
            ap_done <= ap_const_logic_1;
        else 
            ap_done <= ap_done_reg;
        end if; 
    end process;


    ap_idle_assign_proc : process(real_start, ap_CS_fsm_state1)
    begin
        if (((real_start = ap_const_logic_0) and (ap_const_logic_1 = ap_CS_fsm_state1))) then 
            ap_idle <= ap_const_logic_1;
        else 
            ap_idle <= ap_const_logic_0;
        end if; 
    end process;

    ap_ready <= internal_ap_ready;
    grp_compute_output_buffer_2d_array_array_ap_fixed_16_6_5_3_0_64u_config6_s_fu_886_ap_start <= grp_compute_output_buffer_2d_array_array_ap_fixed_16_6_5_3_0_64u_config6_s_fu_886_ap_start_reg;
    icmp_ln79_fu_1646_p2 <= "1" when (indvar_flatten_fu_876 = ap_const_lv12_F61) else "0";

    internal_ap_ready_assign_proc : process(layer5_out_empty_n, ap_CS_fsm_state2, icmp_ln79_fu_1646_p2)
    begin
        if ((not(((icmp_ln79_fu_1646_p2 = ap_const_lv1_0) and (layer5_out_empty_n = ap_const_logic_0))) and (icmp_ln79_fu_1646_p2 = ap_const_lv1_1) and (ap_const_logic_1 = ap_CS_fsm_state2))) then 
            internal_ap_ready <= ap_const_logic_1;
        else 
            internal_ap_ready <= ap_const_logic_0;
        end if; 
    end process;


    layer5_out_blk_n_assign_proc : process(layer5_out_empty_n, ap_CS_fsm_state2, icmp_ln79_fu_1646_p2)
    begin
        if (((icmp_ln79_fu_1646_p2 = ap_const_lv1_0) and (ap_const_logic_1 = ap_CS_fsm_state2))) then 
            layer5_out_blk_n <= layer5_out_empty_n;
        else 
            layer5_out_blk_n <= ap_const_logic_1;
        end if; 
    end process;


    layer5_out_read_assign_proc : process(layer5_out_empty_n, ap_CS_fsm_state2, icmp_ln79_fu_1646_p2)
    begin
        if ((not(((icmp_ln79_fu_1646_p2 = ap_const_lv1_0) and (layer5_out_empty_n = ap_const_logic_0))) and (icmp_ln79_fu_1646_p2 = ap_const_lv1_0) and (ap_const_logic_1 = ap_CS_fsm_state2))) then 
            layer5_out_read <= ap_const_logic_1;
        else 
            layer5_out_read <= ap_const_logic_0;
        end if; 
    end process;

    layer6_out_din <= grp_compute_output_buffer_2d_array_array_ap_fixed_16_6_5_3_0_64u_config6_s_fu_886_layer6_out_din;

    layer6_out_write_assign_proc : process(grp_compute_output_buffer_2d_array_array_ap_fixed_16_6_5_3_0_64u_config6_s_fu_886_layer6_out_write, ap_CS_fsm_state3)
    begin
        if ((ap_const_logic_1 = ap_CS_fsm_state3)) then 
            layer6_out_write <= grp_compute_output_buffer_2d_array_array_ap_fixed_16_6_5_3_0_64u_config6_s_fu_886_layer6_out_write;
        else 
            layer6_out_write <= ap_const_logic_0;
        end if; 
    end process;


    real_start_assign_proc : process(ap_start, start_full_n, start_once_reg)
    begin
        if (((start_once_reg = ap_const_logic_0) and (start_full_n = ap_const_logic_0))) then 
            real_start <= ap_const_logic_0;
        else 
            real_start <= ap_start;
        end if; 
    end process;

    start_out <= real_start;

    start_write_assign_proc : process(real_start, start_once_reg)
    begin
        if (((real_start = ap_const_logic_1) and (start_once_reg = ap_const_logic_0))) then 
            start_write <= ap_const_logic_1;
        else 
            start_write <= ap_const_logic_0;
        end if; 
    end process;

    trunc_ln87_fu_1658_p1 <= layer5_out_dout(16 - 1 downto 0);
end behav;