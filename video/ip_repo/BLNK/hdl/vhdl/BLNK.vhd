-- ==============================================================
-- RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
-- Version: 2015.4
-- Copyright (C) 2015 Xilinx Inc. All rights reserved.
-- 
-- ===========================================================

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity BLNK is
port (
    InS_TDATA : IN STD_LOGIC_VECTOR (23 downto 0);
    InS_TKEEP : IN STD_LOGIC_VECTOR (2 downto 0);
    InS_TSTRB : IN STD_LOGIC_VECTOR (2 downto 0);
    InS_TUSER : IN STD_LOGIC_VECTOR (0 downto 0);
    InS_TLAST : IN STD_LOGIC_VECTOR (0 downto 0);
    InS_TID : IN STD_LOGIC_VECTOR (0 downto 0);
    InS_TDEST : IN STD_LOGIC_VECTOR (0 downto 0);
    OutS_TDATA : OUT STD_LOGIC_VECTOR (23 downto 0);
    OutS_TKEEP : OUT STD_LOGIC_VECTOR (2 downto 0);
    OutS_TSTRB : OUT STD_LOGIC_VECTOR (2 downto 0);
    OutS_TUSER : OUT STD_LOGIC_VECTOR (0 downto 0);
    OutS_TLAST : OUT STD_LOGIC_VECTOR (0 downto 0);
    OutS_TID : OUT STD_LOGIC_VECTOR (0 downto 0);
    OutS_TDEST : OUT STD_LOGIC_VECTOR (0 downto 0);
    ap_clk : IN STD_LOGIC;
    ap_rst_n : IN STD_LOGIC;
    InS_TVALID : IN STD_LOGIC;
    InS_TREADY : OUT STD_LOGIC;
    OutS_TVALID : OUT STD_LOGIC;
    OutS_TREADY : IN STD_LOGIC );
end;


architecture behav of BLNK is 
    attribute CORE_GENERATION_INFO : STRING;
    attribute CORE_GENERATION_INFO of behav : architecture is
    "BLNK,hls_ip_2015_4,{HLS_INPUT_TYPE=cxx,HLS_INPUT_FLOAT=0,HLS_INPUT_FIXED=0,HLS_INPUT_PART=xc7a35tcpg236-1,HLS_INPUT_CLOCK=10.000000,HLS_INPUT_ARCH=dataflow,HLS_SYN_CLOCK=5.745000,HLS_SYN_LAT=309124,HLS_SYN_TPT=309124,HLS_SYN_MEM=0,HLS_SYN_DSP=0,HLS_SYN_FF=326,HLS_SYN_LUT=447}";
    constant ap_const_lv24_0 : STD_LOGIC_VECTOR (23 downto 0) := "000000000000000000000000";
    constant ap_const_lv3_0 : STD_LOGIC_VECTOR (2 downto 0) := "000";
    constant ap_const_lv1_0 : STD_LOGIC_VECTOR (0 downto 0) := "0";
    constant ap_const_logic_1 : STD_LOGIC := '1';
    constant ap_const_logic_0 : STD_LOGIC := '0';
    constant ap_true : BOOLEAN := true;

    signal ap_rst_n_inv : STD_LOGIC;
    signal BLNK_AXIvideo2Mat_24_480_640_32_U0_ap_start : STD_LOGIC;
    signal BLNK_AXIvideo2Mat_24_480_640_32_U0_ap_done : STD_LOGIC;
    signal BLNK_AXIvideo2Mat_24_480_640_32_U0_ap_continue : STD_LOGIC;
    signal BLNK_AXIvideo2Mat_24_480_640_32_U0_ap_idle : STD_LOGIC;
    signal BLNK_AXIvideo2Mat_24_480_640_32_U0_ap_ready : STD_LOGIC;
    signal BLNK_AXIvideo2Mat_24_480_640_32_U0_InS_TDATA : STD_LOGIC_VECTOR (23 downto 0);
    signal BLNK_AXIvideo2Mat_24_480_640_32_U0_InS_TVALID : STD_LOGIC;
    signal BLNK_AXIvideo2Mat_24_480_640_32_U0_InS_TREADY : STD_LOGIC;
    signal BLNK_AXIvideo2Mat_24_480_640_32_U0_InS_TKEEP : STD_LOGIC_VECTOR (2 downto 0);
    signal BLNK_AXIvideo2Mat_24_480_640_32_U0_InS_TSTRB : STD_LOGIC_VECTOR (2 downto 0);
    signal BLNK_AXIvideo2Mat_24_480_640_32_U0_InS_TUSER : STD_LOGIC_VECTOR (0 downto 0);
    signal BLNK_AXIvideo2Mat_24_480_640_32_U0_InS_TLAST : STD_LOGIC_VECTOR (0 downto 0);
    signal BLNK_AXIvideo2Mat_24_480_640_32_U0_InS_TID : STD_LOGIC_VECTOR (0 downto 0);
    signal BLNK_AXIvideo2Mat_24_480_640_32_U0_InS_TDEST : STD_LOGIC_VECTOR (0 downto 0);
    signal BLNK_AXIvideo2Mat_24_480_640_32_U0_img_data_stream_0_V_din : STD_LOGIC_VECTOR (7 downto 0);
    signal BLNK_AXIvideo2Mat_24_480_640_32_U0_img_data_stream_0_V_full_n : STD_LOGIC;
    signal BLNK_AXIvideo2Mat_24_480_640_32_U0_img_data_stream_0_V_write : STD_LOGIC;
    signal BLNK_AXIvideo2Mat_24_480_640_32_U0_img_data_stream_1_V_din : STD_LOGIC_VECTOR (7 downto 0);
    signal BLNK_AXIvideo2Mat_24_480_640_32_U0_img_data_stream_1_V_full_n : STD_LOGIC;
    signal BLNK_AXIvideo2Mat_24_480_640_32_U0_img_data_stream_1_V_write : STD_LOGIC;
    signal BLNK_AXIvideo2Mat_24_480_640_32_U0_img_data_stream_2_V_din : STD_LOGIC_VECTOR (7 downto 0);
    signal BLNK_AXIvideo2Mat_24_480_640_32_U0_img_data_stream_2_V_full_n : STD_LOGIC;
    signal BLNK_AXIvideo2Mat_24_480_640_32_U0_img_data_stream_2_V_write : STD_LOGIC;
    signal BLNK_Loop_1_proc_U0_ap_start : STD_LOGIC := '0';
    signal BLNK_Loop_1_proc_U0_ap_done : STD_LOGIC;
    signal BLNK_Loop_1_proc_U0_ap_continue : STD_LOGIC;
    signal BLNK_Loop_1_proc_U0_ap_idle : STD_LOGIC;
    signal BLNK_Loop_1_proc_U0_ap_ready : STD_LOGIC;
    signal BLNK_Loop_1_proc_U0_img_0_data_stream_0_V_dout : STD_LOGIC_VECTOR (7 downto 0);
    signal BLNK_Loop_1_proc_U0_img_0_data_stream_0_V_empty_n : STD_LOGIC;
    signal BLNK_Loop_1_proc_U0_img_0_data_stream_0_V_read : STD_LOGIC;
    signal BLNK_Loop_1_proc_U0_img_0_data_stream_1_V_dout : STD_LOGIC_VECTOR (7 downto 0);
    signal BLNK_Loop_1_proc_U0_img_0_data_stream_1_V_empty_n : STD_LOGIC;
    signal BLNK_Loop_1_proc_U0_img_0_data_stream_1_V_read : STD_LOGIC;
    signal BLNK_Loop_1_proc_U0_img_0_data_stream_2_V_dout : STD_LOGIC_VECTOR (7 downto 0);
    signal BLNK_Loop_1_proc_U0_img_0_data_stream_2_V_empty_n : STD_LOGIC;
    signal BLNK_Loop_1_proc_U0_img_0_data_stream_2_V_read : STD_LOGIC;
    signal BLNK_Loop_1_proc_U0_img_1_data_stream_0_V_din : STD_LOGIC_VECTOR (7 downto 0);
    signal BLNK_Loop_1_proc_U0_img_1_data_stream_0_V_full_n : STD_LOGIC;
    signal BLNK_Loop_1_proc_U0_img_1_data_stream_0_V_write : STD_LOGIC;
    signal BLNK_Loop_1_proc_U0_img_1_data_stream_1_V_din : STD_LOGIC_VECTOR (7 downto 0);
    signal BLNK_Loop_1_proc_U0_img_1_data_stream_1_V_full_n : STD_LOGIC;
    signal BLNK_Loop_1_proc_U0_img_1_data_stream_1_V_write : STD_LOGIC;
    signal BLNK_Loop_1_proc_U0_img_1_data_stream_2_V_din : STD_LOGIC_VECTOR (7 downto 0);
    signal BLNK_Loop_1_proc_U0_img_1_data_stream_2_V_full_n : STD_LOGIC;
    signal BLNK_Loop_1_proc_U0_img_1_data_stream_2_V_write : STD_LOGIC;
    signal BLNK_Mat2AXIvideo_24_480_640_32_U0_ap_start : STD_LOGIC := '0';
    signal BLNK_Mat2AXIvideo_24_480_640_32_U0_ap_done : STD_LOGIC;
    signal BLNK_Mat2AXIvideo_24_480_640_32_U0_ap_continue : STD_LOGIC;
    signal BLNK_Mat2AXIvideo_24_480_640_32_U0_ap_idle : STD_LOGIC;
    signal BLNK_Mat2AXIvideo_24_480_640_32_U0_ap_ready : STD_LOGIC;
    signal BLNK_Mat2AXIvideo_24_480_640_32_U0_img_data_stream_0_V_dout : STD_LOGIC_VECTOR (7 downto 0);
    signal BLNK_Mat2AXIvideo_24_480_640_32_U0_img_data_stream_0_V_empty_n : STD_LOGIC;
    signal BLNK_Mat2AXIvideo_24_480_640_32_U0_img_data_stream_0_V_read : STD_LOGIC;
    signal BLNK_Mat2AXIvideo_24_480_640_32_U0_img_data_stream_1_V_dout : STD_LOGIC_VECTOR (7 downto 0);
    signal BLNK_Mat2AXIvideo_24_480_640_32_U0_img_data_stream_1_V_empty_n : STD_LOGIC;
    signal BLNK_Mat2AXIvideo_24_480_640_32_U0_img_data_stream_1_V_read : STD_LOGIC;
    signal BLNK_Mat2AXIvideo_24_480_640_32_U0_img_data_stream_2_V_dout : STD_LOGIC_VECTOR (7 downto 0);
    signal BLNK_Mat2AXIvideo_24_480_640_32_U0_img_data_stream_2_V_empty_n : STD_LOGIC;
    signal BLNK_Mat2AXIvideo_24_480_640_32_U0_img_data_stream_2_V_read : STD_LOGIC;
    signal BLNK_Mat2AXIvideo_24_480_640_32_U0_OutS_TDATA : STD_LOGIC_VECTOR (23 downto 0);
    signal BLNK_Mat2AXIvideo_24_480_640_32_U0_OutS_TVALID : STD_LOGIC;
    signal BLNK_Mat2AXIvideo_24_480_640_32_U0_OutS_TREADY : STD_LOGIC;
    signal BLNK_Mat2AXIvideo_24_480_640_32_U0_OutS_TKEEP : STD_LOGIC_VECTOR (2 downto 0);
    signal BLNK_Mat2AXIvideo_24_480_640_32_U0_OutS_TSTRB : STD_LOGIC_VECTOR (2 downto 0);
    signal BLNK_Mat2AXIvideo_24_480_640_32_U0_OutS_TUSER : STD_LOGIC_VECTOR (0 downto 0);
    signal BLNK_Mat2AXIvideo_24_480_640_32_U0_OutS_TLAST : STD_LOGIC_VECTOR (0 downto 0);
    signal BLNK_Mat2AXIvideo_24_480_640_32_U0_OutS_TID : STD_LOGIC_VECTOR (0 downto 0);
    signal BLNK_Mat2AXIvideo_24_480_640_32_U0_OutS_TDEST : STD_LOGIC_VECTOR (0 downto 0);
    signal ap_sig_hs_continue : STD_LOGIC;
    signal img_0_data_stream_0_V_U_ap_dummy_ce : STD_LOGIC;
    signal img_0_data_stream_0_V_din : STD_LOGIC_VECTOR (7 downto 0);
    signal img_0_data_stream_0_V_full_n : STD_LOGIC;
    signal img_0_data_stream_0_V_write : STD_LOGIC;
    signal img_0_data_stream_0_V_dout : STD_LOGIC_VECTOR (7 downto 0);
    signal img_0_data_stream_0_V_empty_n : STD_LOGIC;
    signal img_0_data_stream_0_V_read : STD_LOGIC;
    signal img_0_data_stream_1_V_U_ap_dummy_ce : STD_LOGIC;
    signal img_0_data_stream_1_V_din : STD_LOGIC_VECTOR (7 downto 0);
    signal img_0_data_stream_1_V_full_n : STD_LOGIC;
    signal img_0_data_stream_1_V_write : STD_LOGIC;
    signal img_0_data_stream_1_V_dout : STD_LOGIC_VECTOR (7 downto 0);
    signal img_0_data_stream_1_V_empty_n : STD_LOGIC;
    signal img_0_data_stream_1_V_read : STD_LOGIC;
    signal img_0_data_stream_2_V_U_ap_dummy_ce : STD_LOGIC;
    signal img_0_data_stream_2_V_din : STD_LOGIC_VECTOR (7 downto 0);
    signal img_0_data_stream_2_V_full_n : STD_LOGIC;
    signal img_0_data_stream_2_V_write : STD_LOGIC;
    signal img_0_data_stream_2_V_dout : STD_LOGIC_VECTOR (7 downto 0);
    signal img_0_data_stream_2_V_empty_n : STD_LOGIC;
    signal img_0_data_stream_2_V_read : STD_LOGIC;
    signal img_1_data_stream_0_V_U_ap_dummy_ce : STD_LOGIC;
    signal img_1_data_stream_0_V_din : STD_LOGIC_VECTOR (7 downto 0);
    signal img_1_data_stream_0_V_full_n : STD_LOGIC;
    signal img_1_data_stream_0_V_write : STD_LOGIC;
    signal img_1_data_stream_0_V_dout : STD_LOGIC_VECTOR (7 downto 0);
    signal img_1_data_stream_0_V_empty_n : STD_LOGIC;
    signal img_1_data_stream_0_V_read : STD_LOGIC;
    signal img_1_data_stream_1_V_U_ap_dummy_ce : STD_LOGIC;
    signal img_1_data_stream_1_V_din : STD_LOGIC_VECTOR (7 downto 0);
    signal img_1_data_stream_1_V_full_n : STD_LOGIC;
    signal img_1_data_stream_1_V_write : STD_LOGIC;
    signal img_1_data_stream_1_V_dout : STD_LOGIC_VECTOR (7 downto 0);
    signal img_1_data_stream_1_V_empty_n : STD_LOGIC;
    signal img_1_data_stream_1_V_read : STD_LOGIC;
    signal img_1_data_stream_2_V_U_ap_dummy_ce : STD_LOGIC;
    signal img_1_data_stream_2_V_din : STD_LOGIC_VECTOR (7 downto 0);
    signal img_1_data_stream_2_V_full_n : STD_LOGIC;
    signal img_1_data_stream_2_V_write : STD_LOGIC;
    signal img_1_data_stream_2_V_dout : STD_LOGIC_VECTOR (7 downto 0);
    signal img_1_data_stream_2_V_empty_n : STD_LOGIC;
    signal img_1_data_stream_2_V_read : STD_LOGIC;
    signal ap_CS : STD_LOGIC;
    signal ap_sig_hs_done : STD_LOGIC;

    component BLNK_AXIvideo2Mat_24_480_640_32_s IS
    port (
        ap_clk : IN STD_LOGIC;
        ap_rst : IN STD_LOGIC;
        ap_start : IN STD_LOGIC;
        ap_done : OUT STD_LOGIC;
        ap_continue : IN STD_LOGIC;
        ap_idle : OUT STD_LOGIC;
        ap_ready : OUT STD_LOGIC;
        InS_TDATA : IN STD_LOGIC_VECTOR (23 downto 0);
        InS_TVALID : IN STD_LOGIC;
        InS_TREADY : OUT STD_LOGIC;
        InS_TKEEP : IN STD_LOGIC_VECTOR (2 downto 0);
        InS_TSTRB : IN STD_LOGIC_VECTOR (2 downto 0);
        InS_TUSER : IN STD_LOGIC_VECTOR (0 downto 0);
        InS_TLAST : IN STD_LOGIC_VECTOR (0 downto 0);
        InS_TID : IN STD_LOGIC_VECTOR (0 downto 0);
        InS_TDEST : IN STD_LOGIC_VECTOR (0 downto 0);
        img_data_stream_0_V_din : OUT STD_LOGIC_VECTOR (7 downto 0);
        img_data_stream_0_V_full_n : IN STD_LOGIC;
        img_data_stream_0_V_write : OUT STD_LOGIC;
        img_data_stream_1_V_din : OUT STD_LOGIC_VECTOR (7 downto 0);
        img_data_stream_1_V_full_n : IN STD_LOGIC;
        img_data_stream_1_V_write : OUT STD_LOGIC;
        img_data_stream_2_V_din : OUT STD_LOGIC_VECTOR (7 downto 0);
        img_data_stream_2_V_full_n : IN STD_LOGIC;
        img_data_stream_2_V_write : OUT STD_LOGIC );
    end component;


    component BLNK_Loop_1_proc IS
    port (
        ap_clk : IN STD_LOGIC;
        ap_rst : IN STD_LOGIC;
        ap_start : IN STD_LOGIC;
        ap_done : OUT STD_LOGIC;
        ap_continue : IN STD_LOGIC;
        ap_idle : OUT STD_LOGIC;
        ap_ready : OUT STD_LOGIC;
        img_0_data_stream_0_V_dout : IN STD_LOGIC_VECTOR (7 downto 0);
        img_0_data_stream_0_V_empty_n : IN STD_LOGIC;
        img_0_data_stream_0_V_read : OUT STD_LOGIC;
        img_0_data_stream_1_V_dout : IN STD_LOGIC_VECTOR (7 downto 0);
        img_0_data_stream_1_V_empty_n : IN STD_LOGIC;
        img_0_data_stream_1_V_read : OUT STD_LOGIC;
        img_0_data_stream_2_V_dout : IN STD_LOGIC_VECTOR (7 downto 0);
        img_0_data_stream_2_V_empty_n : IN STD_LOGIC;
        img_0_data_stream_2_V_read : OUT STD_LOGIC;
        img_1_data_stream_0_V_din : OUT STD_LOGIC_VECTOR (7 downto 0);
        img_1_data_stream_0_V_full_n : IN STD_LOGIC;
        img_1_data_stream_0_V_write : OUT STD_LOGIC;
        img_1_data_stream_1_V_din : OUT STD_LOGIC_VECTOR (7 downto 0);
        img_1_data_stream_1_V_full_n : IN STD_LOGIC;
        img_1_data_stream_1_V_write : OUT STD_LOGIC;
        img_1_data_stream_2_V_din : OUT STD_LOGIC_VECTOR (7 downto 0);
        img_1_data_stream_2_V_full_n : IN STD_LOGIC;
        img_1_data_stream_2_V_write : OUT STD_LOGIC );
    end component;


    component BLNK_Mat2AXIvideo_24_480_640_32_s IS
    port (
        ap_clk : IN STD_LOGIC;
        ap_rst : IN STD_LOGIC;
        ap_start : IN STD_LOGIC;
        ap_done : OUT STD_LOGIC;
        ap_continue : IN STD_LOGIC;
        ap_idle : OUT STD_LOGIC;
        ap_ready : OUT STD_LOGIC;
        img_data_stream_0_V_dout : IN STD_LOGIC_VECTOR (7 downto 0);
        img_data_stream_0_V_empty_n : IN STD_LOGIC;
        img_data_stream_0_V_read : OUT STD_LOGIC;
        img_data_stream_1_V_dout : IN STD_LOGIC_VECTOR (7 downto 0);
        img_data_stream_1_V_empty_n : IN STD_LOGIC;
        img_data_stream_1_V_read : OUT STD_LOGIC;
        img_data_stream_2_V_dout : IN STD_LOGIC_VECTOR (7 downto 0);
        img_data_stream_2_V_empty_n : IN STD_LOGIC;
        img_data_stream_2_V_read : OUT STD_LOGIC;
        OutS_TDATA : OUT STD_LOGIC_VECTOR (23 downto 0);
        OutS_TVALID : OUT STD_LOGIC;
        OutS_TREADY : IN STD_LOGIC;
        OutS_TKEEP : OUT STD_LOGIC_VECTOR (2 downto 0);
        OutS_TSTRB : OUT STD_LOGIC_VECTOR (2 downto 0);
        OutS_TUSER : OUT STD_LOGIC_VECTOR (0 downto 0);
        OutS_TLAST : OUT STD_LOGIC_VECTOR (0 downto 0);
        OutS_TID : OUT STD_LOGIC_VECTOR (0 downto 0);
        OutS_TDEST : OUT STD_LOGIC_VECTOR (0 downto 0) );
    end component;


    component FIFO_BLNK_img_0_data_stream_0_V IS
    port (
        clk : IN STD_LOGIC;
        reset : IN STD_LOGIC;
        if_read_ce : IN STD_LOGIC;
        if_write_ce : IN STD_LOGIC;
        if_din : IN STD_LOGIC_VECTOR (7 downto 0);
        if_full_n : OUT STD_LOGIC;
        if_write : IN STD_LOGIC;
        if_dout : OUT STD_LOGIC_VECTOR (7 downto 0);
        if_empty_n : OUT STD_LOGIC;
        if_read : IN STD_LOGIC );
    end component;


    component FIFO_BLNK_img_0_data_stream_1_V IS
    port (
        clk : IN STD_LOGIC;
        reset : IN STD_LOGIC;
        if_read_ce : IN STD_LOGIC;
        if_write_ce : IN STD_LOGIC;
        if_din : IN STD_LOGIC_VECTOR (7 downto 0);
        if_full_n : OUT STD_LOGIC;
        if_write : IN STD_LOGIC;
        if_dout : OUT STD_LOGIC_VECTOR (7 downto 0);
        if_empty_n : OUT STD_LOGIC;
        if_read : IN STD_LOGIC );
    end component;


    component FIFO_BLNK_img_0_data_stream_2_V IS
    port (
        clk : IN STD_LOGIC;
        reset : IN STD_LOGIC;
        if_read_ce : IN STD_LOGIC;
        if_write_ce : IN STD_LOGIC;
        if_din : IN STD_LOGIC_VECTOR (7 downto 0);
        if_full_n : OUT STD_LOGIC;
        if_write : IN STD_LOGIC;
        if_dout : OUT STD_LOGIC_VECTOR (7 downto 0);
        if_empty_n : OUT STD_LOGIC;
        if_read : IN STD_LOGIC );
    end component;


    component FIFO_BLNK_img_1_data_stream_0_V IS
    port (
        clk : IN STD_LOGIC;
        reset : IN STD_LOGIC;
        if_read_ce : IN STD_LOGIC;
        if_write_ce : IN STD_LOGIC;
        if_din : IN STD_LOGIC_VECTOR (7 downto 0);
        if_full_n : OUT STD_LOGIC;
        if_write : IN STD_LOGIC;
        if_dout : OUT STD_LOGIC_VECTOR (7 downto 0);
        if_empty_n : OUT STD_LOGIC;
        if_read : IN STD_LOGIC );
    end component;


    component FIFO_BLNK_img_1_data_stream_1_V IS
    port (
        clk : IN STD_LOGIC;
        reset : IN STD_LOGIC;
        if_read_ce : IN STD_LOGIC;
        if_write_ce : IN STD_LOGIC;
        if_din : IN STD_LOGIC_VECTOR (7 downto 0);
        if_full_n : OUT STD_LOGIC;
        if_write : IN STD_LOGIC;
        if_dout : OUT STD_LOGIC_VECTOR (7 downto 0);
        if_empty_n : OUT STD_LOGIC;
        if_read : IN STD_LOGIC );
    end component;


    component FIFO_BLNK_img_1_data_stream_2_V IS
    port (
        clk : IN STD_LOGIC;
        reset : IN STD_LOGIC;
        if_read_ce : IN STD_LOGIC;
        if_write_ce : IN STD_LOGIC;
        if_din : IN STD_LOGIC_VECTOR (7 downto 0);
        if_full_n : OUT STD_LOGIC;
        if_write : IN STD_LOGIC;
        if_dout : OUT STD_LOGIC_VECTOR (7 downto 0);
        if_empty_n : OUT STD_LOGIC;
        if_read : IN STD_LOGIC );
    end component;



begin
    BLNK_AXIvideo2Mat_24_480_640_32_U0 : component BLNK_AXIvideo2Mat_24_480_640_32_s
    port map (
        ap_clk => ap_clk,
        ap_rst => ap_rst_n_inv,
        ap_start => BLNK_AXIvideo2Mat_24_480_640_32_U0_ap_start,
        ap_done => BLNK_AXIvideo2Mat_24_480_640_32_U0_ap_done,
        ap_continue => BLNK_AXIvideo2Mat_24_480_640_32_U0_ap_continue,
        ap_idle => BLNK_AXIvideo2Mat_24_480_640_32_U0_ap_idle,
        ap_ready => BLNK_AXIvideo2Mat_24_480_640_32_U0_ap_ready,
        InS_TDATA => BLNK_AXIvideo2Mat_24_480_640_32_U0_InS_TDATA,
        InS_TVALID => BLNK_AXIvideo2Mat_24_480_640_32_U0_InS_TVALID,
        InS_TREADY => BLNK_AXIvideo2Mat_24_480_640_32_U0_InS_TREADY,
        InS_TKEEP => BLNK_AXIvideo2Mat_24_480_640_32_U0_InS_TKEEP,
        InS_TSTRB => BLNK_AXIvideo2Mat_24_480_640_32_U0_InS_TSTRB,
        InS_TUSER => BLNK_AXIvideo2Mat_24_480_640_32_U0_InS_TUSER,
        InS_TLAST => BLNK_AXIvideo2Mat_24_480_640_32_U0_InS_TLAST,
        InS_TID => BLNK_AXIvideo2Mat_24_480_640_32_U0_InS_TID,
        InS_TDEST => BLNK_AXIvideo2Mat_24_480_640_32_U0_InS_TDEST,
        img_data_stream_0_V_din => BLNK_AXIvideo2Mat_24_480_640_32_U0_img_data_stream_0_V_din,
        img_data_stream_0_V_full_n => BLNK_AXIvideo2Mat_24_480_640_32_U0_img_data_stream_0_V_full_n,
        img_data_stream_0_V_write => BLNK_AXIvideo2Mat_24_480_640_32_U0_img_data_stream_0_V_write,
        img_data_stream_1_V_din => BLNK_AXIvideo2Mat_24_480_640_32_U0_img_data_stream_1_V_din,
        img_data_stream_1_V_full_n => BLNK_AXIvideo2Mat_24_480_640_32_U0_img_data_stream_1_V_full_n,
        img_data_stream_1_V_write => BLNK_AXIvideo2Mat_24_480_640_32_U0_img_data_stream_1_V_write,
        img_data_stream_2_V_din => BLNK_AXIvideo2Mat_24_480_640_32_U0_img_data_stream_2_V_din,
        img_data_stream_2_V_full_n => BLNK_AXIvideo2Mat_24_480_640_32_U0_img_data_stream_2_V_full_n,
        img_data_stream_2_V_write => BLNK_AXIvideo2Mat_24_480_640_32_U0_img_data_stream_2_V_write);

    BLNK_Loop_1_proc_U0 : component BLNK_Loop_1_proc
    port map (
        ap_clk => ap_clk,
        ap_rst => ap_rst_n_inv,
        ap_start => BLNK_Loop_1_proc_U0_ap_start,
        ap_done => BLNK_Loop_1_proc_U0_ap_done,
        ap_continue => BLNK_Loop_1_proc_U0_ap_continue,
        ap_idle => BLNK_Loop_1_proc_U0_ap_idle,
        ap_ready => BLNK_Loop_1_proc_U0_ap_ready,
        img_0_data_stream_0_V_dout => BLNK_Loop_1_proc_U0_img_0_data_stream_0_V_dout,
        img_0_data_stream_0_V_empty_n => BLNK_Loop_1_proc_U0_img_0_data_stream_0_V_empty_n,
        img_0_data_stream_0_V_read => BLNK_Loop_1_proc_U0_img_0_data_stream_0_V_read,
        img_0_data_stream_1_V_dout => BLNK_Loop_1_proc_U0_img_0_data_stream_1_V_dout,
        img_0_data_stream_1_V_empty_n => BLNK_Loop_1_proc_U0_img_0_data_stream_1_V_empty_n,
        img_0_data_stream_1_V_read => BLNK_Loop_1_proc_U0_img_0_data_stream_1_V_read,
        img_0_data_stream_2_V_dout => BLNK_Loop_1_proc_U0_img_0_data_stream_2_V_dout,
        img_0_data_stream_2_V_empty_n => BLNK_Loop_1_proc_U0_img_0_data_stream_2_V_empty_n,
        img_0_data_stream_2_V_read => BLNK_Loop_1_proc_U0_img_0_data_stream_2_V_read,
        img_1_data_stream_0_V_din => BLNK_Loop_1_proc_U0_img_1_data_stream_0_V_din,
        img_1_data_stream_0_V_full_n => BLNK_Loop_1_proc_U0_img_1_data_stream_0_V_full_n,
        img_1_data_stream_0_V_write => BLNK_Loop_1_proc_U0_img_1_data_stream_0_V_write,
        img_1_data_stream_1_V_din => BLNK_Loop_1_proc_U0_img_1_data_stream_1_V_din,
        img_1_data_stream_1_V_full_n => BLNK_Loop_1_proc_U0_img_1_data_stream_1_V_full_n,
        img_1_data_stream_1_V_write => BLNK_Loop_1_proc_U0_img_1_data_stream_1_V_write,
        img_1_data_stream_2_V_din => BLNK_Loop_1_proc_U0_img_1_data_stream_2_V_din,
        img_1_data_stream_2_V_full_n => BLNK_Loop_1_proc_U0_img_1_data_stream_2_V_full_n,
        img_1_data_stream_2_V_write => BLNK_Loop_1_proc_U0_img_1_data_stream_2_V_write);

    BLNK_Mat2AXIvideo_24_480_640_32_U0 : component BLNK_Mat2AXIvideo_24_480_640_32_s
    port map (
        ap_clk => ap_clk,
        ap_rst => ap_rst_n_inv,
        ap_start => BLNK_Mat2AXIvideo_24_480_640_32_U0_ap_start,
        ap_done => BLNK_Mat2AXIvideo_24_480_640_32_U0_ap_done,
        ap_continue => BLNK_Mat2AXIvideo_24_480_640_32_U0_ap_continue,
        ap_idle => BLNK_Mat2AXIvideo_24_480_640_32_U0_ap_idle,
        ap_ready => BLNK_Mat2AXIvideo_24_480_640_32_U0_ap_ready,
        img_data_stream_0_V_dout => BLNK_Mat2AXIvideo_24_480_640_32_U0_img_data_stream_0_V_dout,
        img_data_stream_0_V_empty_n => BLNK_Mat2AXIvideo_24_480_640_32_U0_img_data_stream_0_V_empty_n,
        img_data_stream_0_V_read => BLNK_Mat2AXIvideo_24_480_640_32_U0_img_data_stream_0_V_read,
        img_data_stream_1_V_dout => BLNK_Mat2AXIvideo_24_480_640_32_U0_img_data_stream_1_V_dout,
        img_data_stream_1_V_empty_n => BLNK_Mat2AXIvideo_24_480_640_32_U0_img_data_stream_1_V_empty_n,
        img_data_stream_1_V_read => BLNK_Mat2AXIvideo_24_480_640_32_U0_img_data_stream_1_V_read,
        img_data_stream_2_V_dout => BLNK_Mat2AXIvideo_24_480_640_32_U0_img_data_stream_2_V_dout,
        img_data_stream_2_V_empty_n => BLNK_Mat2AXIvideo_24_480_640_32_U0_img_data_stream_2_V_empty_n,
        img_data_stream_2_V_read => BLNK_Mat2AXIvideo_24_480_640_32_U0_img_data_stream_2_V_read,
        OutS_TDATA => BLNK_Mat2AXIvideo_24_480_640_32_U0_OutS_TDATA,
        OutS_TVALID => BLNK_Mat2AXIvideo_24_480_640_32_U0_OutS_TVALID,
        OutS_TREADY => BLNK_Mat2AXIvideo_24_480_640_32_U0_OutS_TREADY,
        OutS_TKEEP => BLNK_Mat2AXIvideo_24_480_640_32_U0_OutS_TKEEP,
        OutS_TSTRB => BLNK_Mat2AXIvideo_24_480_640_32_U0_OutS_TSTRB,
        OutS_TUSER => BLNK_Mat2AXIvideo_24_480_640_32_U0_OutS_TUSER,
        OutS_TLAST => BLNK_Mat2AXIvideo_24_480_640_32_U0_OutS_TLAST,
        OutS_TID => BLNK_Mat2AXIvideo_24_480_640_32_U0_OutS_TID,
        OutS_TDEST => BLNK_Mat2AXIvideo_24_480_640_32_U0_OutS_TDEST);

    img_0_data_stream_0_V_U : component FIFO_BLNK_img_0_data_stream_0_V
    port map (
        clk => ap_clk,
        reset => ap_rst_n_inv,
        if_read_ce => img_0_data_stream_0_V_U_ap_dummy_ce,
        if_write_ce => img_0_data_stream_0_V_U_ap_dummy_ce,
        if_din => img_0_data_stream_0_V_din,
        if_full_n => img_0_data_stream_0_V_full_n,
        if_write => img_0_data_stream_0_V_write,
        if_dout => img_0_data_stream_0_V_dout,
        if_empty_n => img_0_data_stream_0_V_empty_n,
        if_read => img_0_data_stream_0_V_read);

    img_0_data_stream_1_V_U : component FIFO_BLNK_img_0_data_stream_1_V
    port map (
        clk => ap_clk,
        reset => ap_rst_n_inv,
        if_read_ce => img_0_data_stream_1_V_U_ap_dummy_ce,
        if_write_ce => img_0_data_stream_1_V_U_ap_dummy_ce,
        if_din => img_0_data_stream_1_V_din,
        if_full_n => img_0_data_stream_1_V_full_n,
        if_write => img_0_data_stream_1_V_write,
        if_dout => img_0_data_stream_1_V_dout,
        if_empty_n => img_0_data_stream_1_V_empty_n,
        if_read => img_0_data_stream_1_V_read);

    img_0_data_stream_2_V_U : component FIFO_BLNK_img_0_data_stream_2_V
    port map (
        clk => ap_clk,
        reset => ap_rst_n_inv,
        if_read_ce => img_0_data_stream_2_V_U_ap_dummy_ce,
        if_write_ce => img_0_data_stream_2_V_U_ap_dummy_ce,
        if_din => img_0_data_stream_2_V_din,
        if_full_n => img_0_data_stream_2_V_full_n,
        if_write => img_0_data_stream_2_V_write,
        if_dout => img_0_data_stream_2_V_dout,
        if_empty_n => img_0_data_stream_2_V_empty_n,
        if_read => img_0_data_stream_2_V_read);

    img_1_data_stream_0_V_U : component FIFO_BLNK_img_1_data_stream_0_V
    port map (
        clk => ap_clk,
        reset => ap_rst_n_inv,
        if_read_ce => img_1_data_stream_0_V_U_ap_dummy_ce,
        if_write_ce => img_1_data_stream_0_V_U_ap_dummy_ce,
        if_din => img_1_data_stream_0_V_din,
        if_full_n => img_1_data_stream_0_V_full_n,
        if_write => img_1_data_stream_0_V_write,
        if_dout => img_1_data_stream_0_V_dout,
        if_empty_n => img_1_data_stream_0_V_empty_n,
        if_read => img_1_data_stream_0_V_read);

    img_1_data_stream_1_V_U : component FIFO_BLNK_img_1_data_stream_1_V
    port map (
        clk => ap_clk,
        reset => ap_rst_n_inv,
        if_read_ce => img_1_data_stream_1_V_U_ap_dummy_ce,
        if_write_ce => img_1_data_stream_1_V_U_ap_dummy_ce,
        if_din => img_1_data_stream_1_V_din,
        if_full_n => img_1_data_stream_1_V_full_n,
        if_write => img_1_data_stream_1_V_write,
        if_dout => img_1_data_stream_1_V_dout,
        if_empty_n => img_1_data_stream_1_V_empty_n,
        if_read => img_1_data_stream_1_V_read);

    img_1_data_stream_2_V_U : component FIFO_BLNK_img_1_data_stream_2_V
    port map (
        clk => ap_clk,
        reset => ap_rst_n_inv,
        if_read_ce => img_1_data_stream_2_V_U_ap_dummy_ce,
        if_write_ce => img_1_data_stream_2_V_U_ap_dummy_ce,
        if_din => img_1_data_stream_2_V_din,
        if_full_n => img_1_data_stream_2_V_full_n,
        if_write => img_1_data_stream_2_V_write,
        if_dout => img_1_data_stream_2_V_dout,
        if_empty_n => img_1_data_stream_2_V_empty_n,
        if_read => img_1_data_stream_2_V_read);





    -- BLNK_Loop_1_proc_U0_ap_start assign process. --
    BLNK_Loop_1_proc_U0_ap_start_assign_proc : process(ap_clk)
    begin
        if (ap_clk'event and ap_clk =  '1') then
            if (ap_rst_n_inv = '1') then
                BLNK_Loop_1_proc_U0_ap_start <= ap_const_logic_0;
            else
                BLNK_Loop_1_proc_U0_ap_start <= ap_const_logic_1;
            end if;
        end if;
    end process;


    -- BLNK_Mat2AXIvideo_24_480_640_32_U0_ap_start assign process. --
    BLNK_Mat2AXIvideo_24_480_640_32_U0_ap_start_assign_proc : process(ap_clk)
    begin
        if (ap_clk'event and ap_clk =  '1') then
            if (ap_rst_n_inv = '1') then
                BLNK_Mat2AXIvideo_24_480_640_32_U0_ap_start <= ap_const_logic_0;
            else
                BLNK_Mat2AXIvideo_24_480_640_32_U0_ap_start <= ap_const_logic_1;
            end if;
        end if;
    end process;


    -- ap_CS assign process. --
    ap_CS_assign_proc : process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            ap_CS <= ap_const_logic_0;
        end if;
    end process;
    BLNK_AXIvideo2Mat_24_480_640_32_U0_InS_TDATA <= InS_TDATA;
    BLNK_AXIvideo2Mat_24_480_640_32_U0_InS_TDEST <= InS_TDEST;
    BLNK_AXIvideo2Mat_24_480_640_32_U0_InS_TID <= InS_TID;
    BLNK_AXIvideo2Mat_24_480_640_32_U0_InS_TKEEP <= InS_TKEEP;
    BLNK_AXIvideo2Mat_24_480_640_32_U0_InS_TLAST <= InS_TLAST;
    BLNK_AXIvideo2Mat_24_480_640_32_U0_InS_TSTRB <= InS_TSTRB;
    BLNK_AXIvideo2Mat_24_480_640_32_U0_InS_TUSER <= InS_TUSER;
    BLNK_AXIvideo2Mat_24_480_640_32_U0_InS_TVALID <= InS_TVALID;
    BLNK_AXIvideo2Mat_24_480_640_32_U0_ap_continue <= ap_const_logic_1;
    BLNK_AXIvideo2Mat_24_480_640_32_U0_ap_start <= ap_const_logic_1;
    BLNK_AXIvideo2Mat_24_480_640_32_U0_img_data_stream_0_V_full_n <= img_0_data_stream_0_V_full_n;
    BLNK_AXIvideo2Mat_24_480_640_32_U0_img_data_stream_1_V_full_n <= img_0_data_stream_1_V_full_n;
    BLNK_AXIvideo2Mat_24_480_640_32_U0_img_data_stream_2_V_full_n <= img_0_data_stream_2_V_full_n;
    BLNK_Loop_1_proc_U0_ap_continue <= ap_const_logic_1;
    BLNK_Loop_1_proc_U0_img_0_data_stream_0_V_dout <= img_0_data_stream_0_V_dout;
    BLNK_Loop_1_proc_U0_img_0_data_stream_0_V_empty_n <= img_0_data_stream_0_V_empty_n;
    BLNK_Loop_1_proc_U0_img_0_data_stream_1_V_dout <= img_0_data_stream_1_V_dout;
    BLNK_Loop_1_proc_U0_img_0_data_stream_1_V_empty_n <= img_0_data_stream_1_V_empty_n;
    BLNK_Loop_1_proc_U0_img_0_data_stream_2_V_dout <= img_0_data_stream_2_V_dout;
    BLNK_Loop_1_proc_U0_img_0_data_stream_2_V_empty_n <= img_0_data_stream_2_V_empty_n;
    BLNK_Loop_1_proc_U0_img_1_data_stream_0_V_full_n <= img_1_data_stream_0_V_full_n;
    BLNK_Loop_1_proc_U0_img_1_data_stream_1_V_full_n <= img_1_data_stream_1_V_full_n;
    BLNK_Loop_1_proc_U0_img_1_data_stream_2_V_full_n <= img_1_data_stream_2_V_full_n;
    BLNK_Mat2AXIvideo_24_480_640_32_U0_OutS_TREADY <= OutS_TREADY;
    BLNK_Mat2AXIvideo_24_480_640_32_U0_ap_continue <= ap_const_logic_1;
    BLNK_Mat2AXIvideo_24_480_640_32_U0_img_data_stream_0_V_dout <= img_1_data_stream_0_V_dout;
    BLNK_Mat2AXIvideo_24_480_640_32_U0_img_data_stream_0_V_empty_n <= img_1_data_stream_0_V_empty_n;
    BLNK_Mat2AXIvideo_24_480_640_32_U0_img_data_stream_1_V_dout <= img_1_data_stream_1_V_dout;
    BLNK_Mat2AXIvideo_24_480_640_32_U0_img_data_stream_1_V_empty_n <= img_1_data_stream_1_V_empty_n;
    BLNK_Mat2AXIvideo_24_480_640_32_U0_img_data_stream_2_V_dout <= img_1_data_stream_2_V_dout;
    BLNK_Mat2AXIvideo_24_480_640_32_U0_img_data_stream_2_V_empty_n <= img_1_data_stream_2_V_empty_n;
    InS_TREADY <= BLNK_AXIvideo2Mat_24_480_640_32_U0_InS_TREADY;
    OutS_TDATA <= BLNK_Mat2AXIvideo_24_480_640_32_U0_OutS_TDATA;
    OutS_TDEST <= BLNK_Mat2AXIvideo_24_480_640_32_U0_OutS_TDEST;
    OutS_TID <= BLNK_Mat2AXIvideo_24_480_640_32_U0_OutS_TID;
    OutS_TKEEP <= BLNK_Mat2AXIvideo_24_480_640_32_U0_OutS_TKEEP;
    OutS_TLAST <= BLNK_Mat2AXIvideo_24_480_640_32_U0_OutS_TLAST;
    OutS_TSTRB <= BLNK_Mat2AXIvideo_24_480_640_32_U0_OutS_TSTRB;
    OutS_TUSER <= BLNK_Mat2AXIvideo_24_480_640_32_U0_OutS_TUSER;
    OutS_TVALID <= BLNK_Mat2AXIvideo_24_480_640_32_U0_OutS_TVALID;

    -- ap_rst_n_inv assign process. --
    ap_rst_n_inv_assign_proc : process(ap_rst_n)
    begin
                ap_rst_n_inv <= not(ap_rst_n);
    end process;

    ap_sig_hs_continue <= ap_const_logic_0;

    -- ap_sig_hs_done assign process. --
    ap_sig_hs_done_assign_proc : process(BLNK_Mat2AXIvideo_24_480_640_32_U0_ap_done)
    begin
        if ((ap_const_logic_1 = BLNK_Mat2AXIvideo_24_480_640_32_U0_ap_done)) then 
            ap_sig_hs_done <= ap_const_logic_1;
        else 
            ap_sig_hs_done <= ap_const_logic_0;
        end if; 
    end process;

    img_0_data_stream_0_V_U_ap_dummy_ce <= ap_const_logic_1;
    img_0_data_stream_0_V_din <= BLNK_AXIvideo2Mat_24_480_640_32_U0_img_data_stream_0_V_din;
    img_0_data_stream_0_V_read <= BLNK_Loop_1_proc_U0_img_0_data_stream_0_V_read;
    img_0_data_stream_0_V_write <= BLNK_AXIvideo2Mat_24_480_640_32_U0_img_data_stream_0_V_write;
    img_0_data_stream_1_V_U_ap_dummy_ce <= ap_const_logic_1;
    img_0_data_stream_1_V_din <= BLNK_AXIvideo2Mat_24_480_640_32_U0_img_data_stream_1_V_din;
    img_0_data_stream_1_V_read <= BLNK_Loop_1_proc_U0_img_0_data_stream_1_V_read;
    img_0_data_stream_1_V_write <= BLNK_AXIvideo2Mat_24_480_640_32_U0_img_data_stream_1_V_write;
    img_0_data_stream_2_V_U_ap_dummy_ce <= ap_const_logic_1;
    img_0_data_stream_2_V_din <= BLNK_AXIvideo2Mat_24_480_640_32_U0_img_data_stream_2_V_din;
    img_0_data_stream_2_V_read <= BLNK_Loop_1_proc_U0_img_0_data_stream_2_V_read;
    img_0_data_stream_2_V_write <= BLNK_AXIvideo2Mat_24_480_640_32_U0_img_data_stream_2_V_write;
    img_1_data_stream_0_V_U_ap_dummy_ce <= ap_const_logic_1;
    img_1_data_stream_0_V_din <= BLNK_Loop_1_proc_U0_img_1_data_stream_0_V_din;
    img_1_data_stream_0_V_read <= BLNK_Mat2AXIvideo_24_480_640_32_U0_img_data_stream_0_V_read;
    img_1_data_stream_0_V_write <= BLNK_Loop_1_proc_U0_img_1_data_stream_0_V_write;
    img_1_data_stream_1_V_U_ap_dummy_ce <= ap_const_logic_1;
    img_1_data_stream_1_V_din <= BLNK_Loop_1_proc_U0_img_1_data_stream_1_V_din;
    img_1_data_stream_1_V_read <= BLNK_Mat2AXIvideo_24_480_640_32_U0_img_data_stream_1_V_read;
    img_1_data_stream_1_V_write <= BLNK_Loop_1_proc_U0_img_1_data_stream_1_V_write;
    img_1_data_stream_2_V_U_ap_dummy_ce <= ap_const_logic_1;
    img_1_data_stream_2_V_din <= BLNK_Loop_1_proc_U0_img_1_data_stream_2_V_din;
    img_1_data_stream_2_V_read <= BLNK_Mat2AXIvideo_24_480_640_32_U0_img_data_stream_2_V_read;
    img_1_data_stream_2_V_write <= BLNK_Loop_1_proc_U0_img_1_data_stream_2_V_write;
end behav;
