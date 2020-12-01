// File: blinker_hierarchy.v
// Generated by MyHDL 0.11
// Date: Thu Nov 26 22:34:03 2020


`timescale 1ns/10ps

module blinker_hierarchy (
    clk_i,
    led_o
);


input clk_i;
output led_o;
wire led_o;

wire [21:0] cnt;
wire [21:0] chunk_insts_1_one;
wire [21:0] chunk_insts_1_next_cnt;
reg chunk_insts_1_chunk_insts_0_chunk_insts_12_q_o;
reg chunk_insts_1_chunk_insts_0_chunk_insts_11_q_o;
reg chunk_insts_1_chunk_insts_0_chunk_insts_10_q_o;
reg chunk_insts_1_chunk_insts_0_chunk_insts_9_q_o;
reg chunk_insts_1_chunk_insts_0_chunk_insts_4_q_o;
reg chunk_insts_1_chunk_insts_0_chunk_insts_15_q_o;
reg chunk_insts_1_chunk_insts_0_chunk_insts_8_q_o;
reg chunk_insts_1_chunk_insts_0_chunk_insts_7_q_o;
reg chunk_insts_1_chunk_insts_0_chunk_insts_6_q_o;
reg chunk_insts_1_chunk_insts_0_chunk_insts_5_q_o;
reg chunk_insts_1_chunk_insts_0_chunk_insts_3_q_o;
reg chunk_insts_1_chunk_insts_0_chunk_insts_2_q_o;
reg chunk_insts_1_chunk_insts_0_chunk_insts_1_q_o;
reg chunk_insts_1_chunk_insts_0_chunk_insts_0_q_o;
reg chunk_insts_1_chunk_insts_0_chunk_insts_21_q_o;
reg chunk_insts_1_chunk_insts_0_chunk_insts_20_q_o;
reg chunk_insts_1_chunk_insts_0_chunk_insts_19_q_o;
reg chunk_insts_1_chunk_insts_0_chunk_insts_18_q_o;
reg chunk_insts_1_chunk_insts_0_chunk_insts_17_q_o;
reg chunk_insts_1_chunk_insts_0_chunk_insts_16_q_o;
reg chunk_insts_1_chunk_insts_0_chunk_insts_14_q_o;
reg chunk_insts_1_chunk_insts_0_chunk_insts_13_q_o;
wire [21:0] chunk_insts_1_chunk_insts_0_chunk_insts_13_chunk_insts_22_a;
wire [22:0] chunk_insts_1_chunk_insts_1_c;
wire chunk_insts_1_chunk_insts_1_chunk_insts_11_c_o;
wire chunk_insts_1_chunk_insts_1_chunk_insts_11_s_o;
wire chunk_insts_1_chunk_insts_1_chunk_insts_10_c_o;
wire chunk_insts_1_chunk_insts_1_chunk_insts_10_s_o;
wire chunk_insts_1_chunk_insts_1_chunk_insts_9_c_o;
wire chunk_insts_1_chunk_insts_1_chunk_insts_9_s_o;
wire chunk_insts_1_chunk_insts_1_chunk_insts_8_c_o;
wire chunk_insts_1_chunk_insts_1_chunk_insts_8_s_o;
wire chunk_insts_1_chunk_insts_1_chunk_insts_7_c_o;
wire chunk_insts_1_chunk_insts_1_chunk_insts_7_s_o;
wire chunk_insts_1_chunk_insts_1_chunk_insts_22_c_o;
wire chunk_insts_1_chunk_insts_1_chunk_insts_22_s_o;
wire chunk_insts_1_chunk_insts_1_chunk_insts_6_c_o;
wire chunk_insts_1_chunk_insts_1_chunk_insts_6_s_o;
wire chunk_insts_1_chunk_insts_1_chunk_insts_5_c_o;
wire chunk_insts_1_chunk_insts_1_chunk_insts_5_s_o;
wire chunk_insts_1_chunk_insts_1_chunk_insts_2_c_o;
wire chunk_insts_1_chunk_insts_1_chunk_insts_2_s_o;
wire chunk_insts_1_chunk_insts_1_chunk_insts_1_c_o;
wire chunk_insts_1_chunk_insts_1_chunk_insts_1_s_o;
wire chunk_insts_1_chunk_insts_1_chunk_insts_0_c_o;
wire chunk_insts_1_chunk_insts_1_chunk_insts_0_s_o;
wire chunk_insts_1_chunk_insts_1_chunk_insts_4_c_o;
wire chunk_insts_1_chunk_insts_1_chunk_insts_4_s_o;
wire chunk_insts_1_chunk_insts_1_chunk_insts_3_c_o;
wire chunk_insts_1_chunk_insts_1_chunk_insts_3_s_o;
wire chunk_insts_1_chunk_insts_1_chunk_insts_21_c_o;
wire chunk_insts_1_chunk_insts_1_chunk_insts_21_s_o;
wire chunk_insts_1_chunk_insts_1_chunk_insts_20_c_o;
wire chunk_insts_1_chunk_insts_1_chunk_insts_20_s_o;
wire chunk_insts_1_chunk_insts_1_chunk_insts_19_c_o;
wire chunk_insts_1_chunk_insts_1_chunk_insts_19_s_o;
wire chunk_insts_1_chunk_insts_1_chunk_insts_18_c_o;
wire chunk_insts_1_chunk_insts_1_chunk_insts_18_s_o;
wire chunk_insts_1_chunk_insts_1_chunk_insts_15_c_o;
wire chunk_insts_1_chunk_insts_1_chunk_insts_15_s_o;
wire chunk_insts_1_chunk_insts_1_chunk_insts_14_c_o;
wire chunk_insts_1_chunk_insts_1_chunk_insts_14_s_o;
wire chunk_insts_1_chunk_insts_1_chunk_insts_17_c_o;
wire chunk_insts_1_chunk_insts_1_chunk_insts_17_s_o;
wire chunk_insts_1_chunk_insts_1_chunk_insts_16_c_o;
wire chunk_insts_1_chunk_insts_1_chunk_insts_16_s_o;
wire chunk_insts_1_chunk_insts_1_chunk_insts_13_c_o;
wire chunk_insts_1_chunk_insts_1_chunk_insts_13_s_o;
wire [21:0] chunk_insts_1_chunk_insts_1_chunk_insts_13_chunk_insts_12_a;
wire [22:0] chunk_insts_1_chunk_insts_1_chunk_insts_13_chunk_insts_23_a;

assign chunk_insts_1_one = 22'd1;
assign chunk_insts_1_chunk_insts_0_chunk_insts_13_chunk_insts_22_a[21] = chunk_insts_1_chunk_insts_0_chunk_insts_12_q_o;
assign chunk_insts_1_chunk_insts_0_chunk_insts_13_chunk_insts_22_a[20] = chunk_insts_1_chunk_insts_0_chunk_insts_11_q_o;
assign chunk_insts_1_chunk_insts_0_chunk_insts_13_chunk_insts_22_a[19] = chunk_insts_1_chunk_insts_0_chunk_insts_10_q_o;
assign chunk_insts_1_chunk_insts_0_chunk_insts_13_chunk_insts_22_a[18] = chunk_insts_1_chunk_insts_0_chunk_insts_9_q_o;
assign chunk_insts_1_chunk_insts_0_chunk_insts_13_chunk_insts_22_a[17] = chunk_insts_1_chunk_insts_0_chunk_insts_4_q_o;
assign chunk_insts_1_chunk_insts_0_chunk_insts_13_chunk_insts_22_a[16] = chunk_insts_1_chunk_insts_0_chunk_insts_15_q_o;
assign chunk_insts_1_chunk_insts_0_chunk_insts_13_chunk_insts_22_a[15] = chunk_insts_1_chunk_insts_0_chunk_insts_8_q_o;
assign chunk_insts_1_chunk_insts_0_chunk_insts_13_chunk_insts_22_a[14] = chunk_insts_1_chunk_insts_0_chunk_insts_7_q_o;
assign chunk_insts_1_chunk_insts_0_chunk_insts_13_chunk_insts_22_a[13] = chunk_insts_1_chunk_insts_0_chunk_insts_6_q_o;
assign chunk_insts_1_chunk_insts_0_chunk_insts_13_chunk_insts_22_a[12] = chunk_insts_1_chunk_insts_0_chunk_insts_5_q_o;
assign chunk_insts_1_chunk_insts_0_chunk_insts_13_chunk_insts_22_a[11] = chunk_insts_1_chunk_insts_0_chunk_insts_3_q_o;
assign chunk_insts_1_chunk_insts_0_chunk_insts_13_chunk_insts_22_a[10] = chunk_insts_1_chunk_insts_0_chunk_insts_2_q_o;
assign chunk_insts_1_chunk_insts_0_chunk_insts_13_chunk_insts_22_a[9] = chunk_insts_1_chunk_insts_0_chunk_insts_1_q_o;
assign chunk_insts_1_chunk_insts_0_chunk_insts_13_chunk_insts_22_a[8] = chunk_insts_1_chunk_insts_0_chunk_insts_0_q_o;
assign chunk_insts_1_chunk_insts_0_chunk_insts_13_chunk_insts_22_a[7] = chunk_insts_1_chunk_insts_0_chunk_insts_21_q_o;
assign chunk_insts_1_chunk_insts_0_chunk_insts_13_chunk_insts_22_a[6] = chunk_insts_1_chunk_insts_0_chunk_insts_20_q_o;
assign chunk_insts_1_chunk_insts_0_chunk_insts_13_chunk_insts_22_a[5] = chunk_insts_1_chunk_insts_0_chunk_insts_19_q_o;
assign chunk_insts_1_chunk_insts_0_chunk_insts_13_chunk_insts_22_a[4] = chunk_insts_1_chunk_insts_0_chunk_insts_18_q_o;
assign chunk_insts_1_chunk_insts_0_chunk_insts_13_chunk_insts_22_a[3] = chunk_insts_1_chunk_insts_0_chunk_insts_17_q_o;
assign chunk_insts_1_chunk_insts_0_chunk_insts_13_chunk_insts_22_a[2] = chunk_insts_1_chunk_insts_0_chunk_insts_16_q_o;
assign chunk_insts_1_chunk_insts_0_chunk_insts_13_chunk_insts_22_a[1] = chunk_insts_1_chunk_insts_0_chunk_insts_14_q_o;
assign chunk_insts_1_chunk_insts_0_chunk_insts_13_chunk_insts_22_a[0] = chunk_insts_1_chunk_insts_0_chunk_insts_13_q_o;
assign chunk_insts_1_chunk_insts_1_chunk_insts_13_chunk_insts_12_a[21] = chunk_insts_1_chunk_insts_1_chunk_insts_11_s_o;
assign chunk_insts_1_chunk_insts_1_chunk_insts_13_chunk_insts_12_a[20] = chunk_insts_1_chunk_insts_1_chunk_insts_10_s_o;
assign chunk_insts_1_chunk_insts_1_chunk_insts_13_chunk_insts_12_a[19] = chunk_insts_1_chunk_insts_1_chunk_insts_9_s_o;
assign chunk_insts_1_chunk_insts_1_chunk_insts_13_chunk_insts_12_a[18] = chunk_insts_1_chunk_insts_1_chunk_insts_8_s_o;
assign chunk_insts_1_chunk_insts_1_chunk_insts_13_chunk_insts_12_a[17] = chunk_insts_1_chunk_insts_1_chunk_insts_7_s_o;
assign chunk_insts_1_chunk_insts_1_chunk_insts_13_chunk_insts_12_a[16] = chunk_insts_1_chunk_insts_1_chunk_insts_22_s_o;
assign chunk_insts_1_chunk_insts_1_chunk_insts_13_chunk_insts_12_a[15] = chunk_insts_1_chunk_insts_1_chunk_insts_6_s_o;
assign chunk_insts_1_chunk_insts_1_chunk_insts_13_chunk_insts_12_a[14] = chunk_insts_1_chunk_insts_1_chunk_insts_5_s_o;
assign chunk_insts_1_chunk_insts_1_chunk_insts_13_chunk_insts_12_a[13] = chunk_insts_1_chunk_insts_1_chunk_insts_2_s_o;
assign chunk_insts_1_chunk_insts_1_chunk_insts_13_chunk_insts_12_a[12] = chunk_insts_1_chunk_insts_1_chunk_insts_1_s_o;
assign chunk_insts_1_chunk_insts_1_chunk_insts_13_chunk_insts_12_a[11] = chunk_insts_1_chunk_insts_1_chunk_insts_0_s_o;
assign chunk_insts_1_chunk_insts_1_chunk_insts_13_chunk_insts_12_a[10] = chunk_insts_1_chunk_insts_1_chunk_insts_4_s_o;
assign chunk_insts_1_chunk_insts_1_chunk_insts_13_chunk_insts_12_a[9] = chunk_insts_1_chunk_insts_1_chunk_insts_3_s_o;
assign chunk_insts_1_chunk_insts_1_chunk_insts_13_chunk_insts_12_a[8] = chunk_insts_1_chunk_insts_1_chunk_insts_21_s_o;
assign chunk_insts_1_chunk_insts_1_chunk_insts_13_chunk_insts_12_a[7] = chunk_insts_1_chunk_insts_1_chunk_insts_20_s_o;
assign chunk_insts_1_chunk_insts_1_chunk_insts_13_chunk_insts_12_a[6] = chunk_insts_1_chunk_insts_1_chunk_insts_19_s_o;
assign chunk_insts_1_chunk_insts_1_chunk_insts_13_chunk_insts_12_a[5] = chunk_insts_1_chunk_insts_1_chunk_insts_18_s_o;
assign chunk_insts_1_chunk_insts_1_chunk_insts_13_chunk_insts_12_a[4] = chunk_insts_1_chunk_insts_1_chunk_insts_15_s_o;
assign chunk_insts_1_chunk_insts_1_chunk_insts_13_chunk_insts_12_a[3] = chunk_insts_1_chunk_insts_1_chunk_insts_14_s_o;
assign chunk_insts_1_chunk_insts_1_chunk_insts_13_chunk_insts_12_a[2] = chunk_insts_1_chunk_insts_1_chunk_insts_17_s_o;
assign chunk_insts_1_chunk_insts_1_chunk_insts_13_chunk_insts_12_a[1] = chunk_insts_1_chunk_insts_1_chunk_insts_16_s_o;
assign chunk_insts_1_chunk_insts_1_chunk_insts_13_chunk_insts_12_a[0] = chunk_insts_1_chunk_insts_1_chunk_insts_13_s_o;
assign chunk_insts_1_chunk_insts_1_chunk_insts_13_chunk_insts_23_a[22] = chunk_insts_1_chunk_insts_1_chunk_insts_11_c_o;
assign chunk_insts_1_chunk_insts_1_chunk_insts_13_chunk_insts_23_a[21] = chunk_insts_1_chunk_insts_1_chunk_insts_10_c_o;
assign chunk_insts_1_chunk_insts_1_chunk_insts_13_chunk_insts_23_a[20] = chunk_insts_1_chunk_insts_1_chunk_insts_9_c_o;
assign chunk_insts_1_chunk_insts_1_chunk_insts_13_chunk_insts_23_a[19] = chunk_insts_1_chunk_insts_1_chunk_insts_8_c_o;
assign chunk_insts_1_chunk_insts_1_chunk_insts_13_chunk_insts_23_a[18] = chunk_insts_1_chunk_insts_1_chunk_insts_7_c_o;
assign chunk_insts_1_chunk_insts_1_chunk_insts_13_chunk_insts_23_a[17] = chunk_insts_1_chunk_insts_1_chunk_insts_22_c_o;
assign chunk_insts_1_chunk_insts_1_chunk_insts_13_chunk_insts_23_a[16] = chunk_insts_1_chunk_insts_1_chunk_insts_6_c_o;
assign chunk_insts_1_chunk_insts_1_chunk_insts_13_chunk_insts_23_a[15] = chunk_insts_1_chunk_insts_1_chunk_insts_5_c_o;
assign chunk_insts_1_chunk_insts_1_chunk_insts_13_chunk_insts_23_a[14] = chunk_insts_1_chunk_insts_1_chunk_insts_2_c_o;
assign chunk_insts_1_chunk_insts_1_chunk_insts_13_chunk_insts_23_a[13] = chunk_insts_1_chunk_insts_1_chunk_insts_1_c_o;
assign chunk_insts_1_chunk_insts_1_chunk_insts_13_chunk_insts_23_a[12] = chunk_insts_1_chunk_insts_1_chunk_insts_0_c_o;
assign chunk_insts_1_chunk_insts_1_chunk_insts_13_chunk_insts_23_a[11] = chunk_insts_1_chunk_insts_1_chunk_insts_4_c_o;
assign chunk_insts_1_chunk_insts_1_chunk_insts_13_chunk_insts_23_a[10] = chunk_insts_1_chunk_insts_1_chunk_insts_3_c_o;
assign chunk_insts_1_chunk_insts_1_chunk_insts_13_chunk_insts_23_a[9] = chunk_insts_1_chunk_insts_1_chunk_insts_21_c_o;
assign chunk_insts_1_chunk_insts_1_chunk_insts_13_chunk_insts_23_a[8] = chunk_insts_1_chunk_insts_1_chunk_insts_20_c_o;
assign chunk_insts_1_chunk_insts_1_chunk_insts_13_chunk_insts_23_a[7] = chunk_insts_1_chunk_insts_1_chunk_insts_19_c_o;
assign chunk_insts_1_chunk_insts_1_chunk_insts_13_chunk_insts_23_a[6] = chunk_insts_1_chunk_insts_1_chunk_insts_18_c_o;
assign chunk_insts_1_chunk_insts_1_chunk_insts_13_chunk_insts_23_a[5] = chunk_insts_1_chunk_insts_1_chunk_insts_15_c_o;
assign chunk_insts_1_chunk_insts_1_chunk_insts_13_chunk_insts_23_a[4] = chunk_insts_1_chunk_insts_1_chunk_insts_14_c_o;
assign chunk_insts_1_chunk_insts_1_chunk_insts_13_chunk_insts_23_a[3] = chunk_insts_1_chunk_insts_1_chunk_insts_17_c_o;
assign chunk_insts_1_chunk_insts_1_chunk_insts_13_chunk_insts_23_a[2] = chunk_insts_1_chunk_insts_1_chunk_insts_16_c_o;
assign chunk_insts_1_chunk_insts_1_chunk_insts_13_chunk_insts_23_a[1] = chunk_insts_1_chunk_insts_1_chunk_insts_13_c_o;
assign chunk_insts_1_chunk_insts_1_chunk_insts_13_chunk_insts_23_a[0] = None;



assign led_o = cnt[(22 - 1)];


always @(posedge clk_i) begin: BLINKER_HIERARCHY_LOC_INSTS_CHUNK_INSTS_1_LOC_INSTS_CHUNK_INSTS_0_LOC_INSTS_CHUNK_INSTS_0_LOC_INSTS_CHUNK_INSTS_0
    chunk_insts_1_chunk_insts_0_chunk_insts_0_q_o <= chunk_insts_1_next_cnt[8];
end


always @(posedge clk_i) begin: BLINKER_HIERARCHY_LOC_INSTS_CHUNK_INSTS_1_LOC_INSTS_CHUNK_INSTS_0_LOC_INSTS_CHUNK_INSTS_1_LOC_INSTS_CHUNK_INSTS_0
    chunk_insts_1_chunk_insts_0_chunk_insts_1_q_o <= chunk_insts_1_next_cnt[9];
end


always @(posedge clk_i) begin: BLINKER_HIERARCHY_LOC_INSTS_CHUNK_INSTS_1_LOC_INSTS_CHUNK_INSTS_0_LOC_INSTS_CHUNK_INSTS_2_LOC_INSTS_CHUNK_INSTS_0
    chunk_insts_1_chunk_insts_0_chunk_insts_2_q_o <= chunk_insts_1_next_cnt[10];
end


always @(posedge clk_i) begin: BLINKER_HIERARCHY_LOC_INSTS_CHUNK_INSTS_1_LOC_INSTS_CHUNK_INSTS_0_LOC_INSTS_CHUNK_INSTS_3_LOC_INSTS_CHUNK_INSTS_0
    chunk_insts_1_chunk_insts_0_chunk_insts_3_q_o <= chunk_insts_1_next_cnt[11];
end


always @(posedge clk_i) begin: BLINKER_HIERARCHY_LOC_INSTS_CHUNK_INSTS_1_LOC_INSTS_CHUNK_INSTS_0_LOC_INSTS_CHUNK_INSTS_4_LOC_INSTS_CHUNK_INSTS_0
    chunk_insts_1_chunk_insts_0_chunk_insts_4_q_o <= chunk_insts_1_next_cnt[17];
end


always @(posedge clk_i) begin: BLINKER_HIERARCHY_LOC_INSTS_CHUNK_INSTS_1_LOC_INSTS_CHUNK_INSTS_0_LOC_INSTS_CHUNK_INSTS_5_LOC_INSTS_CHUNK_INSTS_0
    chunk_insts_1_chunk_insts_0_chunk_insts_5_q_o <= chunk_insts_1_next_cnt[12];
end


always @(posedge clk_i) begin: BLINKER_HIERARCHY_LOC_INSTS_CHUNK_INSTS_1_LOC_INSTS_CHUNK_INSTS_0_LOC_INSTS_CHUNK_INSTS_6_LOC_INSTS_CHUNK_INSTS_0
    chunk_insts_1_chunk_insts_0_chunk_insts_6_q_o <= chunk_insts_1_next_cnt[13];
end


always @(posedge clk_i) begin: BLINKER_HIERARCHY_LOC_INSTS_CHUNK_INSTS_1_LOC_INSTS_CHUNK_INSTS_0_LOC_INSTS_CHUNK_INSTS_7_LOC_INSTS_CHUNK_INSTS_0
    chunk_insts_1_chunk_insts_0_chunk_insts_7_q_o <= chunk_insts_1_next_cnt[14];
end


always @(posedge clk_i) begin: BLINKER_HIERARCHY_LOC_INSTS_CHUNK_INSTS_1_LOC_INSTS_CHUNK_INSTS_0_LOC_INSTS_CHUNK_INSTS_8_LOC_INSTS_CHUNK_INSTS_0
    chunk_insts_1_chunk_insts_0_chunk_insts_8_q_o <= chunk_insts_1_next_cnt[15];
end


always @(posedge clk_i) begin: BLINKER_HIERARCHY_LOC_INSTS_CHUNK_INSTS_1_LOC_INSTS_CHUNK_INSTS_0_LOC_INSTS_CHUNK_INSTS_9_LOC_INSTS_CHUNK_INSTS_0
    chunk_insts_1_chunk_insts_0_chunk_insts_9_q_o <= chunk_insts_1_next_cnt[18];
end


always @(posedge clk_i) begin: BLINKER_HIERARCHY_LOC_INSTS_CHUNK_INSTS_1_LOC_INSTS_CHUNK_INSTS_0_LOC_INSTS_CHUNK_INSTS_10_LOC_INSTS_CHUNK_INSTS_0
    chunk_insts_1_chunk_insts_0_chunk_insts_10_q_o <= chunk_insts_1_next_cnt[19];
end


always @(posedge clk_i) begin: BLINKER_HIERARCHY_LOC_INSTS_CHUNK_INSTS_1_LOC_INSTS_CHUNK_INSTS_0_LOC_INSTS_CHUNK_INSTS_11_LOC_INSTS_CHUNK_INSTS_0
    chunk_insts_1_chunk_insts_0_chunk_insts_11_q_o <= chunk_insts_1_next_cnt[20];
end


always @(posedge clk_i) begin: BLINKER_HIERARCHY_LOC_INSTS_CHUNK_INSTS_1_LOC_INSTS_CHUNK_INSTS_0_LOC_INSTS_CHUNK_INSTS_12_LOC_INSTS_CHUNK_INSTS_0
    chunk_insts_1_chunk_insts_0_chunk_insts_12_q_o <= chunk_insts_1_next_cnt[21];
end


always @(posedge clk_i) begin: BLINKER_HIERARCHY_LOC_INSTS_CHUNK_INSTS_1_LOC_INSTS_CHUNK_INSTS_0_LOC_INSTS_CHUNK_INSTS_13_LOC_INSTS_CHUNK_INSTS_0
    chunk_insts_1_chunk_insts_0_chunk_insts_13_q_o <= chunk_insts_1_next_cnt[0];
end


always @(posedge clk_i) begin: BLINKER_HIERARCHY_LOC_INSTS_CHUNK_INSTS_1_LOC_INSTS_CHUNK_INSTS_0_LOC_INSTS_CHUNK_INSTS_14_LOC_INSTS_CHUNK_INSTS_0
    chunk_insts_1_chunk_insts_0_chunk_insts_14_q_o <= chunk_insts_1_next_cnt[1];
end


always @(posedge clk_i) begin: BLINKER_HIERARCHY_LOC_INSTS_CHUNK_INSTS_1_LOC_INSTS_CHUNK_INSTS_0_LOC_INSTS_CHUNK_INSTS_15_LOC_INSTS_CHUNK_INSTS_0
    chunk_insts_1_chunk_insts_0_chunk_insts_15_q_o <= chunk_insts_1_next_cnt[16];
end


always @(posedge clk_i) begin: BLINKER_HIERARCHY_LOC_INSTS_CHUNK_INSTS_1_LOC_INSTS_CHUNK_INSTS_0_LOC_INSTS_CHUNK_INSTS_16_LOC_INSTS_CHUNK_INSTS_0
    chunk_insts_1_chunk_insts_0_chunk_insts_16_q_o <= chunk_insts_1_next_cnt[2];
end


always @(posedge clk_i) begin: BLINKER_HIERARCHY_LOC_INSTS_CHUNK_INSTS_1_LOC_INSTS_CHUNK_INSTS_0_LOC_INSTS_CHUNK_INSTS_17_LOC_INSTS_CHUNK_INSTS_0
    chunk_insts_1_chunk_insts_0_chunk_insts_17_q_o <= chunk_insts_1_next_cnt[3];
end


always @(posedge clk_i) begin: BLINKER_HIERARCHY_LOC_INSTS_CHUNK_INSTS_1_LOC_INSTS_CHUNK_INSTS_0_LOC_INSTS_CHUNK_INSTS_18_LOC_INSTS_CHUNK_INSTS_0
    chunk_insts_1_chunk_insts_0_chunk_insts_18_q_o <= chunk_insts_1_next_cnt[4];
end


always @(posedge clk_i) begin: BLINKER_HIERARCHY_LOC_INSTS_CHUNK_INSTS_1_LOC_INSTS_CHUNK_INSTS_0_LOC_INSTS_CHUNK_INSTS_19_LOC_INSTS_CHUNK_INSTS_0
    chunk_insts_1_chunk_insts_0_chunk_insts_19_q_o <= chunk_insts_1_next_cnt[5];
end


always @(posedge clk_i) begin: BLINKER_HIERARCHY_LOC_INSTS_CHUNK_INSTS_1_LOC_INSTS_CHUNK_INSTS_0_LOC_INSTS_CHUNK_INSTS_20_LOC_INSTS_CHUNK_INSTS_0
    chunk_insts_1_chunk_insts_0_chunk_insts_20_q_o <= chunk_insts_1_next_cnt[6];
end


always @(posedge clk_i) begin: BLINKER_HIERARCHY_LOC_INSTS_CHUNK_INSTS_1_LOC_INSTS_CHUNK_INSTS_0_LOC_INSTS_CHUNK_INSTS_21_LOC_INSTS_CHUNK_INSTS_0
    chunk_insts_1_chunk_insts_0_chunk_insts_21_q_o <= chunk_insts_1_next_cnt[7];
end



assign cnt = chunk_insts_1_chunk_insts_0_chunk_insts_13_chunk_insts_22_a;



assign chunk_insts_1_chunk_insts_1_chunk_insts_0_s_o = ((chunk_insts_1_one[11] ^ cnt[11]) ^ chunk_insts_1_chunk_insts_1_c[11]);
assign chunk_insts_1_chunk_insts_1_chunk_insts_0_c_o = (((chunk_insts_1_one[11] & cnt[11]) | (chunk_insts_1_one[11] & chunk_insts_1_chunk_insts_1_c[11])) | (cnt[11] & chunk_insts_1_chunk_insts_1_c[11]));



assign chunk_insts_1_chunk_insts_1_chunk_insts_1_s_o = ((chunk_insts_1_one[12] ^ cnt[12]) ^ chunk_insts_1_chunk_insts_1_c[12]);
assign chunk_insts_1_chunk_insts_1_chunk_insts_1_c_o = (((chunk_insts_1_one[12] & cnt[12]) | (chunk_insts_1_one[12] & chunk_insts_1_chunk_insts_1_c[12])) | (cnt[12] & chunk_insts_1_chunk_insts_1_c[12]));



assign chunk_insts_1_chunk_insts_1_chunk_insts_2_s_o = ((chunk_insts_1_one[13] ^ cnt[13]) ^ chunk_insts_1_chunk_insts_1_c[13]);
assign chunk_insts_1_chunk_insts_1_chunk_insts_2_c_o = (((chunk_insts_1_one[13] & cnt[13]) | (chunk_insts_1_one[13] & chunk_insts_1_chunk_insts_1_c[13])) | (cnt[13] & chunk_insts_1_chunk_insts_1_c[13]));



assign chunk_insts_1_chunk_insts_1_chunk_insts_3_s_o = ((chunk_insts_1_one[9] ^ cnt[9]) ^ chunk_insts_1_chunk_insts_1_c[9]);
assign chunk_insts_1_chunk_insts_1_chunk_insts_3_c_o = (((chunk_insts_1_one[9] & cnt[9]) | (chunk_insts_1_one[9] & chunk_insts_1_chunk_insts_1_c[9])) | (cnt[9] & chunk_insts_1_chunk_insts_1_c[9]));



assign chunk_insts_1_chunk_insts_1_chunk_insts_4_s_o = ((chunk_insts_1_one[10] ^ cnt[10]) ^ chunk_insts_1_chunk_insts_1_c[10]);
assign chunk_insts_1_chunk_insts_1_chunk_insts_4_c_o = (((chunk_insts_1_one[10] & cnt[10]) | (chunk_insts_1_one[10] & chunk_insts_1_chunk_insts_1_c[10])) | (cnt[10] & chunk_insts_1_chunk_insts_1_c[10]));



assign chunk_insts_1_chunk_insts_1_chunk_insts_5_s_o = ((chunk_insts_1_one[14] ^ cnt[14]) ^ chunk_insts_1_chunk_insts_1_c[14]);
assign chunk_insts_1_chunk_insts_1_chunk_insts_5_c_o = (((chunk_insts_1_one[14] & cnt[14]) | (chunk_insts_1_one[14] & chunk_insts_1_chunk_insts_1_c[14])) | (cnt[14] & chunk_insts_1_chunk_insts_1_c[14]));



assign chunk_insts_1_chunk_insts_1_chunk_insts_6_s_o = ((chunk_insts_1_one[15] ^ cnt[15]) ^ chunk_insts_1_chunk_insts_1_c[15]);
assign chunk_insts_1_chunk_insts_1_chunk_insts_6_c_o = (((chunk_insts_1_one[15] & cnt[15]) | (chunk_insts_1_one[15] & chunk_insts_1_chunk_insts_1_c[15])) | (cnt[15] & chunk_insts_1_chunk_insts_1_c[15]));



assign chunk_insts_1_chunk_insts_1_chunk_insts_7_s_o = ((chunk_insts_1_one[17] ^ cnt[17]) ^ chunk_insts_1_chunk_insts_1_c[17]);
assign chunk_insts_1_chunk_insts_1_chunk_insts_7_c_o = (((chunk_insts_1_one[17] & cnt[17]) | (chunk_insts_1_one[17] & chunk_insts_1_chunk_insts_1_c[17])) | (cnt[17] & chunk_insts_1_chunk_insts_1_c[17]));



assign chunk_insts_1_chunk_insts_1_chunk_insts_8_s_o = ((chunk_insts_1_one[18] ^ cnt[18]) ^ chunk_insts_1_chunk_insts_1_c[18]);
assign chunk_insts_1_chunk_insts_1_chunk_insts_8_c_o = (((chunk_insts_1_one[18] & cnt[18]) | (chunk_insts_1_one[18] & chunk_insts_1_chunk_insts_1_c[18])) | (cnt[18] & chunk_insts_1_chunk_insts_1_c[18]));



assign chunk_insts_1_chunk_insts_1_chunk_insts_9_s_o = ((chunk_insts_1_one[19] ^ cnt[19]) ^ chunk_insts_1_chunk_insts_1_c[19]);
assign chunk_insts_1_chunk_insts_1_chunk_insts_9_c_o = (((chunk_insts_1_one[19] & cnt[19]) | (chunk_insts_1_one[19] & chunk_insts_1_chunk_insts_1_c[19])) | (cnt[19] & chunk_insts_1_chunk_insts_1_c[19]));



assign chunk_insts_1_chunk_insts_1_chunk_insts_10_s_o = ((chunk_insts_1_one[20] ^ cnt[20]) ^ chunk_insts_1_chunk_insts_1_c[20]);
assign chunk_insts_1_chunk_insts_1_chunk_insts_10_c_o = (((chunk_insts_1_one[20] & cnt[20]) | (chunk_insts_1_one[20] & chunk_insts_1_chunk_insts_1_c[20])) | (cnt[20] & chunk_insts_1_chunk_insts_1_c[20]));



assign chunk_insts_1_chunk_insts_1_chunk_insts_11_s_o = ((chunk_insts_1_one[21] ^ cnt[21]) ^ chunk_insts_1_chunk_insts_1_c[21]);
assign chunk_insts_1_chunk_insts_1_chunk_insts_11_c_o = (((chunk_insts_1_one[21] & cnt[21]) | (chunk_insts_1_one[21] & chunk_insts_1_chunk_insts_1_c[21])) | (cnt[21] & chunk_insts_1_chunk_insts_1_c[21]));



assign chunk_insts_1_next_cnt = chunk_insts_1_chunk_insts_1_chunk_insts_13_chunk_insts_12_a;



assign chunk_insts_1_chunk_insts_1_chunk_insts_13_s_o = ((chunk_insts_1_one[0] ^ cnt[0]) ^ chunk_insts_1_chunk_insts_1_c[0]);
assign chunk_insts_1_chunk_insts_1_chunk_insts_13_c_o = (((chunk_insts_1_one[0] & cnt[0]) | (chunk_insts_1_one[0] & chunk_insts_1_chunk_insts_1_c[0])) | (cnt[0] & chunk_insts_1_chunk_insts_1_c[0]));



assign chunk_insts_1_chunk_insts_1_chunk_insts_14_s_o = ((chunk_insts_1_one[3] ^ cnt[3]) ^ chunk_insts_1_chunk_insts_1_c[3]);
assign chunk_insts_1_chunk_insts_1_chunk_insts_14_c_o = (((chunk_insts_1_one[3] & cnt[3]) | (chunk_insts_1_one[3] & chunk_insts_1_chunk_insts_1_c[3])) | (cnt[3] & chunk_insts_1_chunk_insts_1_c[3]));



assign chunk_insts_1_chunk_insts_1_chunk_insts_15_s_o = ((chunk_insts_1_one[4] ^ cnt[4]) ^ chunk_insts_1_chunk_insts_1_c[4]);
assign chunk_insts_1_chunk_insts_1_chunk_insts_15_c_o = (((chunk_insts_1_one[4] & cnt[4]) | (chunk_insts_1_one[4] & chunk_insts_1_chunk_insts_1_c[4])) | (cnt[4] & chunk_insts_1_chunk_insts_1_c[4]));



assign chunk_insts_1_chunk_insts_1_chunk_insts_16_s_o = ((chunk_insts_1_one[1] ^ cnt[1]) ^ chunk_insts_1_chunk_insts_1_c[1]);
assign chunk_insts_1_chunk_insts_1_chunk_insts_16_c_o = (((chunk_insts_1_one[1] & cnt[1]) | (chunk_insts_1_one[1] & chunk_insts_1_chunk_insts_1_c[1])) | (cnt[1] & chunk_insts_1_chunk_insts_1_c[1]));



assign chunk_insts_1_chunk_insts_1_chunk_insts_17_s_o = ((chunk_insts_1_one[2] ^ cnt[2]) ^ chunk_insts_1_chunk_insts_1_c[2]);
assign chunk_insts_1_chunk_insts_1_chunk_insts_17_c_o = (((chunk_insts_1_one[2] & cnt[2]) | (chunk_insts_1_one[2] & chunk_insts_1_chunk_insts_1_c[2])) | (cnt[2] & chunk_insts_1_chunk_insts_1_c[2]));



assign chunk_insts_1_chunk_insts_1_chunk_insts_18_s_o = ((chunk_insts_1_one[5] ^ cnt[5]) ^ chunk_insts_1_chunk_insts_1_c[5]);
assign chunk_insts_1_chunk_insts_1_chunk_insts_18_c_o = (((chunk_insts_1_one[5] & cnt[5]) | (chunk_insts_1_one[5] & chunk_insts_1_chunk_insts_1_c[5])) | (cnt[5] & chunk_insts_1_chunk_insts_1_c[5]));



assign chunk_insts_1_chunk_insts_1_chunk_insts_19_s_o = ((chunk_insts_1_one[6] ^ cnt[6]) ^ chunk_insts_1_chunk_insts_1_c[6]);
assign chunk_insts_1_chunk_insts_1_chunk_insts_19_c_o = (((chunk_insts_1_one[6] & cnt[6]) | (chunk_insts_1_one[6] & chunk_insts_1_chunk_insts_1_c[6])) | (cnt[6] & chunk_insts_1_chunk_insts_1_c[6]));



assign chunk_insts_1_chunk_insts_1_chunk_insts_20_s_o = ((chunk_insts_1_one[7] ^ cnt[7]) ^ chunk_insts_1_chunk_insts_1_c[7]);
assign chunk_insts_1_chunk_insts_1_chunk_insts_20_c_o = (((chunk_insts_1_one[7] & cnt[7]) | (chunk_insts_1_one[7] & chunk_insts_1_chunk_insts_1_c[7])) | (cnt[7] & chunk_insts_1_chunk_insts_1_c[7]));



assign chunk_insts_1_chunk_insts_1_chunk_insts_21_s_o = ((chunk_insts_1_one[8] ^ cnt[8]) ^ chunk_insts_1_chunk_insts_1_c[8]);
assign chunk_insts_1_chunk_insts_1_chunk_insts_21_c_o = (((chunk_insts_1_one[8] & cnt[8]) | (chunk_insts_1_one[8] & chunk_insts_1_chunk_insts_1_c[8])) | (cnt[8] & chunk_insts_1_chunk_insts_1_c[8]));



assign chunk_insts_1_chunk_insts_1_chunk_insts_22_s_o = ((chunk_insts_1_one[16] ^ cnt[16]) ^ chunk_insts_1_chunk_insts_1_c[16]);
assign chunk_insts_1_chunk_insts_1_chunk_insts_22_c_o = (((chunk_insts_1_one[16] & cnt[16]) | (chunk_insts_1_one[16] & chunk_insts_1_chunk_insts_1_c[16])) | (cnt[16] & chunk_insts_1_chunk_insts_1_c[16]));



assign chunk_insts_1_chunk_insts_1_c = chunk_insts_1_chunk_insts_1_chunk_insts_13_chunk_insts_23_a;

endmodule
