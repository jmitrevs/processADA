-- ==============================================================
-- Generated by Vitis HLS v2023.1
-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
-- ==============================================================

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity process_data_softmax_stable_array_array_ap_fixed_16_6_5_3_0_3u_softmax_config19_s is
port (
    ap_clk : IN STD_LOGIC;
    ap_rst : IN STD_LOGIC;
    ap_start : IN STD_LOGIC;
    ap_done : OUT STD_LOGIC;
    ap_idle : OUT STD_LOGIC;
    ap_ready : OUT STD_LOGIC;
    layer18_out_dout : IN STD_LOGIC_VECTOR (47 downto 0);
    layer18_out_num_data_valid : IN STD_LOGIC_VECTOR (1 downto 0);
    layer18_out_fifo_cap : IN STD_LOGIC_VECTOR (1 downto 0);
    layer18_out_empty_n : IN STD_LOGIC;
    layer18_out_read : OUT STD_LOGIC;
    layer19_out_din : OUT STD_LOGIC_VECTOR (47 downto 0);
    layer19_out_full_n : IN STD_LOGIC;
    layer19_out_write : OUT STD_LOGIC );
end;


architecture behav of process_data_softmax_stable_array_array_ap_fixed_16_6_5_3_0_3u_softmax_config19_s is 
    constant ap_const_logic_1 : STD_LOGIC := '1';
    constant ap_const_logic_0 : STD_LOGIC := '0';
    constant ap_ST_fsm_state1 : STD_LOGIC_VECTOR (5 downto 0) := "000001";
    constant ap_ST_fsm_state2 : STD_LOGIC_VECTOR (5 downto 0) := "000010";
    constant ap_ST_fsm_state3 : STD_LOGIC_VECTOR (5 downto 0) := "000100";
    constant ap_ST_fsm_state4 : STD_LOGIC_VECTOR (5 downto 0) := "001000";
    constant ap_ST_fsm_state5 : STD_LOGIC_VECTOR (5 downto 0) := "010000";
    constant ap_ST_fsm_state6 : STD_LOGIC_VECTOR (5 downto 0) := "100000";
    constant ap_const_boolean_1 : BOOLEAN := true;
    constant ap_const_lv32_0 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000000";
    constant ap_const_lv32_5 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000101";
    constant ap_const_lv32_1 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000001";
    constant ap_const_lv32_2 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000010";
    constant ap_const_lv32_3 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000011";
    constant ap_const_lv32_4 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000100";
    constant ap_const_lv32_A : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000001010";
    constant ap_const_lv32_19 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000011001";
    constant ap_const_lv32_10 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000010000";
    constant ap_const_lv32_1F : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000011111";
    constant ap_const_lv32_20 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000100000";
    constant ap_const_lv32_2F : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000101111";
    constant ap_const_lv1_1 : STD_LOGIC_VECTOR (0 downto 0) := "1";
    constant ap_const_lv32_F : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000001111";
    constant ap_const_lv10_1FF : STD_LOGIC_VECTOR (9 downto 0) := "0111111111";
    constant ap_const_lv10_200 : STD_LOGIC_VECTOR (9 downto 0) := "1000000000";
    constant ap_const_lv32_6 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000110";
    constant ap_const_lv32_11 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000010001";
    constant ap_const_lv17_1FFFF : STD_LOGIC_VECTOR (16 downto 0) := "11111111111111111";
    constant ap_const_lv32_8 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000001000";

attribute shreg_extract : string;
    signal ap_CS_fsm : STD_LOGIC_VECTOR (5 downto 0) := "000001";
    attribute fsm_encoding : string;
    attribute fsm_encoding of ap_CS_fsm : signal is "none";
    signal ap_CS_fsm_state1 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state1 : signal is "none";
    signal exp_table_address0 : STD_LOGIC_VECTOR (9 downto 0);
    signal exp_table_ce0 : STD_LOGIC;
    signal exp_table_q0 : STD_LOGIC_VECTOR (16 downto 0);
    signal exp_table_address1 : STD_LOGIC_VECTOR (9 downto 0);
    signal exp_table_ce1 : STD_LOGIC;
    signal exp_table_q1 : STD_LOGIC_VECTOR (16 downto 0);
    signal exp_table_address2 : STD_LOGIC_VECTOR (9 downto 0);
    signal exp_table_ce2 : STD_LOGIC;
    signal exp_table_q2 : STD_LOGIC_VECTOR (16 downto 0);
    signal invert_table_address0 : STD_LOGIC_VECTOR (9 downto 0);
    signal invert_table_ce0 : STD_LOGIC;
    signal invert_table_q0 : STD_LOGIC_VECTOR (17 downto 0);
    signal layer18_out_blk_n : STD_LOGIC;
    signal layer19_out_blk_n : STD_LOGIC;
    signal ap_CS_fsm_state6 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state6 : signal is "none";
    signal select_ln215_1_fu_390_p3 : STD_LOGIC_VECTOR (9 downto 0);
    signal select_ln215_1_reg_569 : STD_LOGIC_VECTOR (9 downto 0);
    signal select_ln215_3_fu_416_p3 : STD_LOGIC_VECTOR (9 downto 0);
    signal select_ln215_3_reg_574 : STD_LOGIC_VECTOR (9 downto 0);
    signal select_ln215_5_fu_442_p3 : STD_LOGIC_VECTOR (9 downto 0);
    signal select_ln215_5_reg_579 : STD_LOGIC_VECTOR (9 downto 0);
    signal ap_CS_fsm_state2 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state2 : signal is "none";
    signal exp_table_load_reg_599 : STD_LOGIC_VECTOR (16 downto 0);
    signal ap_CS_fsm_state3 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state3 : signal is "none";
    signal exp_table_load_1_reg_604 : STD_LOGIC_VECTOR (16 downto 0);
    signal exp_table_load_2_reg_609 : STD_LOGIC_VECTOR (16 downto 0);
    signal sext_ln244_fu_543_p1 : STD_LOGIC_VECTOR (25 downto 0);
    signal sext_ln244_reg_619 : STD_LOGIC_VECTOR (25 downto 0);
    signal ap_CS_fsm_state4 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state4 : signal is "none";
    signal grp_fu_162_p4 : STD_LOGIC_VECTOR (15 downto 0);
    signal trunc_ln2_reg_624 : STD_LOGIC_VECTOR (15 downto 0);
    signal trunc_ln244_1_reg_629 : STD_LOGIC_VECTOR (15 downto 0);
    signal ap_CS_fsm_state5 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state5 : signal is "none";
    signal zext_ln225_fu_450_p1 : STD_LOGIC_VECTOR (63 downto 0);
    signal zext_ln225_1_fu_454_p1 : STD_LOGIC_VECTOR (63 downto 0);
    signal zext_ln225_2_fu_458_p1 : STD_LOGIC_VECTOR (63 downto 0);
    signal zext_ln235_fu_538_p1 : STD_LOGIC_VECTOR (63 downto 0);
    signal ap_block_state1 : BOOLEAN;
    signal grp_fu_145_p0 : STD_LOGIC_VECTOR (17 downto 0);
    signal grp_fu_145_p1 : STD_LOGIC_VECTOR (16 downto 0);
    signal zext_ln244_fu_548_p1 : STD_LOGIC_VECTOR (25 downto 0);
    signal zext_ln244_1_fu_552_p1 : STD_LOGIC_VECTOR (25 downto 0);
    signal zext_ln244_2_fu_556_p1 : STD_LOGIC_VECTOR (25 downto 0);
    signal grp_fu_145_p2 : STD_LOGIC_VECTOR (25 downto 0);
    signal trunc_ln199_fu_172_p1 : STD_LOGIC_VECTOR (15 downto 0);
    signal trunc_ln199_1_fu_176_p4 : STD_LOGIC_VECTOR (15 downto 0);
    signal icmp_ln65_fu_196_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal xor_ln65_fu_202_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal select_ln65_fu_208_p3 : STD_LOGIC_VECTOR (15 downto 0);
    signal trunc_ln199_2_fu_186_p4 : STD_LOGIC_VECTOR (15 downto 0);
    signal icmp_ln65_1_fu_216_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal xor_ln65_1_fu_222_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal x_max_fu_228_p3 : STD_LOGIC_VECTOR (15 downto 0);
    signal sext_ln215_fu_236_p1 : STD_LOGIC_VECTOR (16 downto 0);
    signal sext_ln215_1_fu_240_p1 : STD_LOGIC_VECTOR (16 downto 0);
    signal sub_ln215_fu_244_p2 : STD_LOGIC_VECTOR (16 downto 0);
    signal tmp_4_fu_250_p3 : STD_LOGIC_VECTOR (0 downto 0);
    signal tmp_5_fu_258_p3 : STD_LOGIC_VECTOR (0 downto 0);
    signal xor_ln215_fu_266_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal sext_ln215_2_fu_284_p1 : STD_LOGIC_VECTOR (16 downto 0);
    signal sub_ln215_1_fu_288_p2 : STD_LOGIC_VECTOR (16 downto 0);
    signal tmp_6_fu_294_p3 : STD_LOGIC_VECTOR (0 downto 0);
    signal tmp_7_fu_302_p3 : STD_LOGIC_VECTOR (0 downto 0);
    signal xor_ln215_2_fu_310_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal sext_ln215_3_fu_328_p1 : STD_LOGIC_VECTOR (16 downto 0);
    signal sub_ln215_2_fu_332_p2 : STD_LOGIC_VECTOR (16 downto 0);
    signal tmp_8_fu_338_p3 : STD_LOGIC_VECTOR (0 downto 0);
    signal tmp_9_fu_346_p3 : STD_LOGIC_VECTOR (0 downto 0);
    signal xor_ln215_4_fu_354_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal and_ln215_fu_272_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal xor_ln215_1_fu_278_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal select_ln215_fu_372_p3 : STD_LOGIC_VECTOR (9 downto 0);
    signal tmp_fu_380_p4 : STD_LOGIC_VECTOR (9 downto 0);
    signal and_ln215_1_fu_316_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal xor_ln215_3_fu_322_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal select_ln215_2_fu_398_p3 : STD_LOGIC_VECTOR (9 downto 0);
    signal tmp_1_fu_406_p4 : STD_LOGIC_VECTOR (9 downto 0);
    signal and_ln215_2_fu_360_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal xor_ln215_5_fu_366_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal select_ln215_4_fu_424_p3 : STD_LOGIC_VECTOR (9 downto 0);
    signal tmp_2_fu_432_p4 : STD_LOGIC_VECTOR (9 downto 0);
    signal exp_table_load_1_cast2_fu_466_p1 : STD_LOGIC_VECTOR (17 downto 0);
    signal exp_table_load_cast1_fu_462_p1 : STD_LOGIC_VECTOR (17 downto 0);
    signal add_ln50_fu_474_p2 : STD_LOGIC_VECTOR (17 downto 0);
    signal tmp_10_fu_486_p3 : STD_LOGIC_VECTOR (0 downto 0);
    signal add_ln50_2_fu_480_p2 : STD_LOGIC_VECTOR (16 downto 0);
    signal select_ln50_fu_494_p3 : STD_LOGIC_VECTOR (16 downto 0);
    signal zext_ln50_fu_502_p1 : STD_LOGIC_VECTOR (17 downto 0);
    signal exp_table_load_2_cast3_fu_470_p1 : STD_LOGIC_VECTOR (17 downto 0);
    signal add_ln50_1_fu_506_p2 : STD_LOGIC_VECTOR (17 downto 0);
    signal tmp_11_fu_512_p3 : STD_LOGIC_VECTOR (0 downto 0);
    signal tmp_3_fu_520_p4 : STD_LOGIC_VECTOR (9 downto 0);
    signal select_ln50_1_fu_530_p3 : STD_LOGIC_VECTOR (9 downto 0);
    signal ap_NS_fsm : STD_LOGIC_VECTOR (5 downto 0);
    signal ap_ST_fsm_state1_blk : STD_LOGIC;
    signal ap_ST_fsm_state2_blk : STD_LOGIC;
    signal ap_ST_fsm_state3_blk : STD_LOGIC;
    signal ap_ST_fsm_state4_blk : STD_LOGIC;
    signal ap_ST_fsm_state5_blk : STD_LOGIC;
    signal ap_ST_fsm_state6_blk : STD_LOGIC;
    signal ap_ce_reg : STD_LOGIC;

    component process_data_mul_18s_17ns_26_1_1 IS
    generic (
        ID : INTEGER;
        NUM_STAGE : INTEGER;
        din0_WIDTH : INTEGER;
        din1_WIDTH : INTEGER;
        dout_WIDTH : INTEGER );
    port (
        din0 : IN STD_LOGIC_VECTOR (17 downto 0);
        din1 : IN STD_LOGIC_VECTOR (16 downto 0);
        dout : OUT STD_LOGIC_VECTOR (25 downto 0) );
    end component;


    component process_data_softmax_stable_array_array_ap_fixed_16_6_5_3_0_3u_softmax_config19_s_exp_tabljBb IS
    generic (
        DataWidth : INTEGER;
        AddressRange : INTEGER;
        AddressWidth : INTEGER );
    port (
        clk : IN STD_LOGIC;
        reset : IN STD_LOGIC;
        address0 : IN STD_LOGIC_VECTOR (9 downto 0);
        ce0 : IN STD_LOGIC;
        q0 : OUT STD_LOGIC_VECTOR (16 downto 0);
        address1 : IN STD_LOGIC_VECTOR (9 downto 0);
        ce1 : IN STD_LOGIC;
        q1 : OUT STD_LOGIC_VECTOR (16 downto 0);
        address2 : IN STD_LOGIC_VECTOR (9 downto 0);
        ce2 : IN STD_LOGIC;
        q2 : OUT STD_LOGIC_VECTOR (16 downto 0) );
    end component;


    component process_data_softmax_stable_array_array_ap_fixed_16_6_5_3_0_3u_softmax_config19_s_invert_tjCb IS
    generic (
        DataWidth : INTEGER;
        AddressRange : INTEGER;
        AddressWidth : INTEGER );
    port (
        clk : IN STD_LOGIC;
        reset : IN STD_LOGIC;
        address0 : IN STD_LOGIC_VECTOR (9 downto 0);
        ce0 : IN STD_LOGIC;
        q0 : OUT STD_LOGIC_VECTOR (17 downto 0) );
    end component;



begin
    exp_table_U : component process_data_softmax_stable_array_array_ap_fixed_16_6_5_3_0_3u_softmax_config19_s_exp_tabljBb
    generic map (
        DataWidth => 17,
        AddressRange => 1024,
        AddressWidth => 10)
    port map (
        clk => ap_clk,
        reset => ap_rst,
        address0 => exp_table_address0,
        ce0 => exp_table_ce0,
        q0 => exp_table_q0,
        address1 => exp_table_address1,
        ce1 => exp_table_ce1,
        q1 => exp_table_q1,
        address2 => exp_table_address2,
        ce2 => exp_table_ce2,
        q2 => exp_table_q2);

    invert_table_U : component process_data_softmax_stable_array_array_ap_fixed_16_6_5_3_0_3u_softmax_config19_s_invert_tjCb
    generic map (
        DataWidth => 18,
        AddressRange => 1024,
        AddressWidth => 10)
    port map (
        clk => ap_clk,
        reset => ap_rst,
        address0 => invert_table_address0,
        ce0 => invert_table_ce0,
        q0 => invert_table_q0);

    mul_18s_17ns_26_1_1_U5477 : component process_data_mul_18s_17ns_26_1_1
    generic map (
        ID => 1,
        NUM_STAGE => 1,
        din0_WIDTH => 18,
        din1_WIDTH => 17,
        dout_WIDTH => 26)
    port map (
        din0 => grp_fu_145_p0,
        din1 => grp_fu_145_p1,
        dout => grp_fu_145_p2);





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

    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if ((ap_const_logic_1 = ap_CS_fsm_state3)) then
                exp_table_load_1_reg_604 <= exp_table_q1;
                exp_table_load_2_reg_609 <= exp_table_q0;
                exp_table_load_reg_599 <= exp_table_q2;
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if ((ap_const_logic_1 = ap_CS_fsm_state1)) then
                select_ln215_1_reg_569 <= select_ln215_1_fu_390_p3;
                select_ln215_3_reg_574 <= select_ln215_3_fu_416_p3;
                select_ln215_5_reg_579 <= select_ln215_5_fu_442_p3;
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if ((ap_const_logic_1 = ap_CS_fsm_state4)) then
                sext_ln244_reg_619 <= sext_ln244_fu_543_p1;
                trunc_ln2_reg_624 <= grp_fu_145_p2(25 downto 10);
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if ((ap_const_logic_1 = ap_CS_fsm_state5)) then
                trunc_ln244_1_reg_629 <= grp_fu_145_p2(25 downto 10);
            end if;
        end if;
    end process;

    ap_NS_fsm_assign_proc : process (ap_start, ap_CS_fsm, ap_CS_fsm_state1, layer18_out_empty_n, layer19_out_full_n, ap_CS_fsm_state6)
    begin
        case ap_CS_fsm is
            when ap_ST_fsm_state1 => 
                if ((not(((layer18_out_empty_n = ap_const_logic_0) or (ap_start = ap_const_logic_0))) and (ap_const_logic_1 = ap_CS_fsm_state1))) then
                    ap_NS_fsm <= ap_ST_fsm_state2;
                else
                    ap_NS_fsm <= ap_ST_fsm_state1;
                end if;
            when ap_ST_fsm_state2 => 
                ap_NS_fsm <= ap_ST_fsm_state3;
            when ap_ST_fsm_state3 => 
                ap_NS_fsm <= ap_ST_fsm_state4;
            when ap_ST_fsm_state4 => 
                ap_NS_fsm <= ap_ST_fsm_state5;
            when ap_ST_fsm_state5 => 
                ap_NS_fsm <= ap_ST_fsm_state6;
            when ap_ST_fsm_state6 => 
                if (((layer19_out_full_n = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_state6))) then
                    ap_NS_fsm <= ap_ST_fsm_state1;
                else
                    ap_NS_fsm <= ap_ST_fsm_state6;
                end if;
            when others =>  
                ap_NS_fsm <= "XXXXXX";
        end case;
    end process;
    add_ln50_1_fu_506_p2 <= std_logic_vector(unsigned(zext_ln50_fu_502_p1) + unsigned(exp_table_load_2_cast3_fu_470_p1));
    add_ln50_2_fu_480_p2 <= std_logic_vector(unsigned(exp_table_q1) + unsigned(exp_table_q2));
    add_ln50_fu_474_p2 <= std_logic_vector(unsigned(exp_table_load_1_cast2_fu_466_p1) + unsigned(exp_table_load_cast1_fu_462_p1));
    and_ln215_1_fu_316_p2 <= (xor_ln215_2_fu_310_p2 and tmp_7_fu_302_p3);
    and_ln215_2_fu_360_p2 <= (xor_ln215_4_fu_354_p2 and tmp_9_fu_346_p3);
    and_ln215_fu_272_p2 <= (xor_ln215_fu_266_p2 and tmp_5_fu_258_p3);
    ap_CS_fsm_state1 <= ap_CS_fsm(0);
    ap_CS_fsm_state2 <= ap_CS_fsm(1);
    ap_CS_fsm_state3 <= ap_CS_fsm(2);
    ap_CS_fsm_state4 <= ap_CS_fsm(3);
    ap_CS_fsm_state5 <= ap_CS_fsm(4);
    ap_CS_fsm_state6 <= ap_CS_fsm(5);

    ap_ST_fsm_state1_blk_assign_proc : process(ap_start, layer18_out_empty_n)
    begin
        if (((layer18_out_empty_n = ap_const_logic_0) or (ap_start = ap_const_logic_0))) then 
            ap_ST_fsm_state1_blk <= ap_const_logic_1;
        else 
            ap_ST_fsm_state1_blk <= ap_const_logic_0;
        end if; 
    end process;

    ap_ST_fsm_state2_blk <= ap_const_logic_0;
    ap_ST_fsm_state3_blk <= ap_const_logic_0;
    ap_ST_fsm_state4_blk <= ap_const_logic_0;
    ap_ST_fsm_state5_blk <= ap_const_logic_0;

    ap_ST_fsm_state6_blk_assign_proc : process(layer19_out_full_n)
    begin
        if ((layer19_out_full_n = ap_const_logic_0)) then 
            ap_ST_fsm_state6_blk <= ap_const_logic_1;
        else 
            ap_ST_fsm_state6_blk <= ap_const_logic_0;
        end if; 
    end process;


    ap_block_state1_assign_proc : process(ap_start, layer18_out_empty_n)
    begin
                ap_block_state1 <= ((layer18_out_empty_n = ap_const_logic_0) or (ap_start = ap_const_logic_0));
    end process;


    ap_done_assign_proc : process(ap_start, ap_CS_fsm_state1, layer19_out_full_n, ap_CS_fsm_state6)
    begin
        if ((((ap_const_logic_1 = ap_CS_fsm_state1) and (ap_start = ap_const_logic_0)) or ((layer19_out_full_n = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_state6)))) then 
            ap_done <= ap_const_logic_1;
        else 
            ap_done <= ap_const_logic_0;
        end if; 
    end process;


    ap_idle_assign_proc : process(ap_start, ap_CS_fsm_state1)
    begin
        if (((ap_const_logic_1 = ap_CS_fsm_state1) and (ap_start = ap_const_logic_0))) then 
            ap_idle <= ap_const_logic_1;
        else 
            ap_idle <= ap_const_logic_0;
        end if; 
    end process;


    ap_ready_assign_proc : process(layer19_out_full_n, ap_CS_fsm_state6)
    begin
        if (((layer19_out_full_n = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_state6))) then 
            ap_ready <= ap_const_logic_1;
        else 
            ap_ready <= ap_const_logic_0;
        end if; 
    end process;

    exp_table_address0 <= zext_ln225_2_fu_458_p1(10 - 1 downto 0);
    exp_table_address1 <= zext_ln225_1_fu_454_p1(10 - 1 downto 0);
    exp_table_address2 <= zext_ln225_fu_450_p1(10 - 1 downto 0);

    exp_table_ce0_assign_proc : process(ap_CS_fsm_state2)
    begin
        if ((ap_const_logic_1 = ap_CS_fsm_state2)) then 
            exp_table_ce0 <= ap_const_logic_1;
        else 
            exp_table_ce0 <= ap_const_logic_0;
        end if; 
    end process;


    exp_table_ce1_assign_proc : process(ap_CS_fsm_state2)
    begin
        if ((ap_const_logic_1 = ap_CS_fsm_state2)) then 
            exp_table_ce1 <= ap_const_logic_1;
        else 
            exp_table_ce1 <= ap_const_logic_0;
        end if; 
    end process;


    exp_table_ce2_assign_proc : process(ap_CS_fsm_state2)
    begin
        if ((ap_const_logic_1 = ap_CS_fsm_state2)) then 
            exp_table_ce2 <= ap_const_logic_1;
        else 
            exp_table_ce2 <= ap_const_logic_0;
        end if; 
    end process;

    exp_table_load_1_cast2_fu_466_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(exp_table_q1),18));
    exp_table_load_2_cast3_fu_470_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(exp_table_q0),18));
    exp_table_load_cast1_fu_462_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(exp_table_q2),18));

    grp_fu_145_p0_assign_proc : process(ap_CS_fsm_state6, sext_ln244_fu_543_p1, sext_ln244_reg_619, ap_CS_fsm_state4, ap_CS_fsm_state5)
    begin
        if (((ap_const_logic_1 = ap_CS_fsm_state6) or (ap_const_logic_1 = ap_CS_fsm_state5))) then 
            grp_fu_145_p0 <= sext_ln244_reg_619(18 - 1 downto 0);
        elsif ((ap_const_logic_1 = ap_CS_fsm_state4)) then 
            grp_fu_145_p0 <= sext_ln244_fu_543_p1(18 - 1 downto 0);
        else 
            grp_fu_145_p0 <= "XXXXXXXXXXXXXXXXXX";
        end if; 
    end process;


    grp_fu_145_p1_assign_proc : process(ap_CS_fsm_state6, ap_CS_fsm_state4, ap_CS_fsm_state5, zext_ln244_fu_548_p1, zext_ln244_1_fu_552_p1, zext_ln244_2_fu_556_p1)
    begin
        if ((ap_const_logic_1 = ap_CS_fsm_state6)) then 
            grp_fu_145_p1 <= zext_ln244_2_fu_556_p1(17 - 1 downto 0);
        elsif ((ap_const_logic_1 = ap_CS_fsm_state5)) then 
            grp_fu_145_p1 <= zext_ln244_1_fu_552_p1(17 - 1 downto 0);
        elsif ((ap_const_logic_1 = ap_CS_fsm_state4)) then 
            grp_fu_145_p1 <= zext_ln244_fu_548_p1(17 - 1 downto 0);
        else 
            grp_fu_145_p1 <= "XXXXXXXXXXXXXXXXX";
        end if; 
    end process;

    grp_fu_162_p4 <= grp_fu_145_p2(25 downto 10);
    icmp_ln65_1_fu_216_p2 <= "1" when (signed(select_ln65_fu_208_p3) < signed(trunc_ln199_2_fu_186_p4)) else "0";
    icmp_ln65_fu_196_p2 <= "1" when (signed(trunc_ln199_fu_172_p1) < signed(trunc_ln199_1_fu_176_p4)) else "0";
    invert_table_address0 <= zext_ln235_fu_538_p1(10 - 1 downto 0);

    invert_table_ce0_assign_proc : process(ap_CS_fsm_state3)
    begin
        if ((ap_const_logic_1 = ap_CS_fsm_state3)) then 
            invert_table_ce0 <= ap_const_logic_1;
        else 
            invert_table_ce0 <= ap_const_logic_0;
        end if; 
    end process;


    layer18_out_blk_n_assign_proc : process(ap_start, ap_CS_fsm_state1, layer18_out_empty_n)
    begin
        if (((ap_const_logic_1 = ap_CS_fsm_state1) and (ap_start = ap_const_logic_1))) then 
            layer18_out_blk_n <= layer18_out_empty_n;
        else 
            layer18_out_blk_n <= ap_const_logic_1;
        end if; 
    end process;


    layer18_out_read_assign_proc : process(ap_start, ap_CS_fsm_state1, layer18_out_empty_n)
    begin
        if ((not(((layer18_out_empty_n = ap_const_logic_0) or (ap_start = ap_const_logic_0))) and (ap_const_logic_1 = ap_CS_fsm_state1))) then 
            layer18_out_read <= ap_const_logic_1;
        else 
            layer18_out_read <= ap_const_logic_0;
        end if; 
    end process;


    layer19_out_blk_n_assign_proc : process(layer19_out_full_n, ap_CS_fsm_state6)
    begin
        if ((ap_const_logic_1 = ap_CS_fsm_state6)) then 
            layer19_out_blk_n <= layer19_out_full_n;
        else 
            layer19_out_blk_n <= ap_const_logic_1;
        end if; 
    end process;

    layer19_out_din <= ((grp_fu_162_p4 & trunc_ln244_1_reg_629) & trunc_ln2_reg_624);

    layer19_out_write_assign_proc : process(layer19_out_full_n, ap_CS_fsm_state6)
    begin
        if (((layer19_out_full_n = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_state6))) then 
            layer19_out_write <= ap_const_logic_1;
        else 
            layer19_out_write <= ap_const_logic_0;
        end if; 
    end process;

    select_ln215_1_fu_390_p3 <= 
        select_ln215_fu_372_p3 when (xor_ln215_1_fu_278_p2(0) = '1') else 
        tmp_fu_380_p4;
    select_ln215_2_fu_398_p3 <= 
        ap_const_lv10_1FF when (and_ln215_1_fu_316_p2(0) = '1') else 
        ap_const_lv10_200;
    select_ln215_3_fu_416_p3 <= 
        select_ln215_2_fu_398_p3 when (xor_ln215_3_fu_322_p2(0) = '1') else 
        tmp_1_fu_406_p4;
    select_ln215_4_fu_424_p3 <= 
        ap_const_lv10_1FF when (and_ln215_2_fu_360_p2(0) = '1') else 
        ap_const_lv10_200;
    select_ln215_5_fu_442_p3 <= 
        select_ln215_4_fu_424_p3 when (xor_ln215_5_fu_366_p2(0) = '1') else 
        tmp_2_fu_432_p4;
    select_ln215_fu_372_p3 <= 
        ap_const_lv10_1FF when (and_ln215_fu_272_p2(0) = '1') else 
        ap_const_lv10_200;
    select_ln50_1_fu_530_p3 <= 
        ap_const_lv10_1FF when (tmp_11_fu_512_p3(0) = '1') else 
        tmp_3_fu_520_p4;
    select_ln50_fu_494_p3 <= 
        ap_const_lv17_1FFFF when (tmp_10_fu_486_p3(0) = '1') else 
        add_ln50_2_fu_480_p2;
    select_ln65_fu_208_p3 <= 
        trunc_ln199_fu_172_p1 when (xor_ln65_fu_202_p2(0) = '1') else 
        trunc_ln199_1_fu_176_p4;
        sext_ln215_1_fu_240_p1 <= std_logic_vector(IEEE.numeric_std.resize(signed(x_max_fu_228_p3),17));

        sext_ln215_2_fu_284_p1 <= std_logic_vector(IEEE.numeric_std.resize(signed(trunc_ln199_1_fu_176_p4),17));

        sext_ln215_3_fu_328_p1 <= std_logic_vector(IEEE.numeric_std.resize(signed(trunc_ln199_2_fu_186_p4),17));

        sext_ln215_fu_236_p1 <= std_logic_vector(IEEE.numeric_std.resize(signed(trunc_ln199_fu_172_p1),17));

        sext_ln244_fu_543_p1 <= std_logic_vector(IEEE.numeric_std.resize(signed(invert_table_q0),26));

    sub_ln215_1_fu_288_p2 <= std_logic_vector(signed(sext_ln215_2_fu_284_p1) - signed(sext_ln215_1_fu_240_p1));
    sub_ln215_2_fu_332_p2 <= std_logic_vector(signed(sext_ln215_3_fu_328_p1) - signed(sext_ln215_1_fu_240_p1));
    sub_ln215_fu_244_p2 <= std_logic_vector(signed(sext_ln215_fu_236_p1) - signed(sext_ln215_1_fu_240_p1));
    tmp_10_fu_486_p3 <= add_ln50_fu_474_p2(17 downto 17);
    tmp_11_fu_512_p3 <= add_ln50_1_fu_506_p2(17 downto 17);
    tmp_1_fu_406_p4 <= sub_ln215_1_fu_288_p2(15 downto 6);
    tmp_2_fu_432_p4 <= sub_ln215_2_fu_332_p2(15 downto 6);
    tmp_3_fu_520_p4 <= add_ln50_1_fu_506_p2(17 downto 8);
    tmp_4_fu_250_p3 <= sub_ln215_fu_244_p2(16 downto 16);
    tmp_5_fu_258_p3 <= sub_ln215_fu_244_p2(15 downto 15);
    tmp_6_fu_294_p3 <= sub_ln215_1_fu_288_p2(16 downto 16);
    tmp_7_fu_302_p3 <= sub_ln215_1_fu_288_p2(15 downto 15);
    tmp_8_fu_338_p3 <= sub_ln215_2_fu_332_p2(16 downto 16);
    tmp_9_fu_346_p3 <= sub_ln215_2_fu_332_p2(15 downto 15);
    tmp_fu_380_p4 <= sub_ln215_fu_244_p2(15 downto 6);
    trunc_ln199_1_fu_176_p4 <= layer18_out_dout(31 downto 16);
    trunc_ln199_2_fu_186_p4 <= layer18_out_dout(47 downto 32);
    trunc_ln199_fu_172_p1 <= layer18_out_dout(16 - 1 downto 0);
    x_max_fu_228_p3 <= 
        select_ln65_fu_208_p3 when (xor_ln65_1_fu_222_p2(0) = '1') else 
        trunc_ln199_2_fu_186_p4;
    xor_ln215_1_fu_278_p2 <= (tmp_5_fu_258_p3 xor tmp_4_fu_250_p3);
    xor_ln215_2_fu_310_p2 <= (tmp_6_fu_294_p3 xor ap_const_lv1_1);
    xor_ln215_3_fu_322_p2 <= (tmp_7_fu_302_p3 xor tmp_6_fu_294_p3);
    xor_ln215_4_fu_354_p2 <= (tmp_8_fu_338_p3 xor ap_const_lv1_1);
    xor_ln215_5_fu_366_p2 <= (tmp_9_fu_346_p3 xor tmp_8_fu_338_p3);
    xor_ln215_fu_266_p2 <= (tmp_4_fu_250_p3 xor ap_const_lv1_1);
    xor_ln65_1_fu_222_p2 <= (icmp_ln65_1_fu_216_p2 xor ap_const_lv1_1);
    xor_ln65_fu_202_p2 <= (icmp_ln65_fu_196_p2 xor ap_const_lv1_1);
    zext_ln225_1_fu_454_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(select_ln215_3_reg_574),64));
    zext_ln225_2_fu_458_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(select_ln215_5_reg_579),64));
    zext_ln225_fu_450_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(select_ln215_1_reg_569),64));
    zext_ln235_fu_538_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(select_ln50_1_fu_530_p3),64));
    zext_ln244_1_fu_552_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(exp_table_load_1_reg_604),26));
    zext_ln244_2_fu_556_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(exp_table_load_2_reg_609),26));
    zext_ln244_fu_548_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(exp_table_load_reg_599),26));
    zext_ln50_fu_502_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(select_ln50_fu_494_p3),18));
end behav;
