// ----------------------------------------------------------------------------
// Smart High-Level Synthesis Tool Version 2021.1.2
// Copyright (c) 2015-2021 Microchip Technology Inc. All Rights Reserved.
// For support, please contact: smarthls@microchip.com
// Date: Tue Nov 16 16:39:41 2021
// ----------------------------------------------------------------------------
`define MEMORY_CONTROLLER_ADDR_SIZE 32
`define MEM_INIT_DIR "../simulation/"
/* synthesis translate_off */
// For Microsemi, the simulation directory is different from
// the synthesis directory for memory initialization files.
`undef MEM_INIT_DIR
`define MEM_INIT_DIR "../mem_init/"
/* synthesis translate_on */

`timescale 1 ns / 1 ns
module sobel_filter_top
(
	clk,
	reset,
	start,
	ready,
	finish,
	in_clken,
	in_read_en_a,
	in_address_a,
	in_read_data_a,
	in_read_en_b,
	in_address_b,
	in_read_data_b,
	out_clken,
	out_write_en_a,
	out_write_data_a,
	out_read_en_a,
	out_address_a,
	out_read_data_a,
	out_write_en_b,
	out_write_data_b,
	out_read_en_b,
	out_address_b,
	out_read_data_b
);

input  clk;
input  reset;
input  start;
output reg  ready;
output reg  finish;
output reg  in_clken;
output reg  in_read_en_a;
output reg [17:0] in_address_a;
input [7:0] in_read_data_a;
output reg  in_read_en_b;
output reg [17:0] in_address_b;
input [7:0] in_read_data_b;
output reg  out_clken;
output reg  out_write_en_a;
output reg [7:0] out_write_data_a;
output reg  out_read_en_a;
output reg [17:0] out_address_a;
input [7:0] out_read_data_a;
output reg  out_write_en_b;
output reg [7:0] out_write_data_b;
output reg  out_read_en_b;
output reg [17:0] out_address_b;
input [7:0] out_read_data_b;
reg  sobel_filter_inst_clk;
reg  sobel_filter_inst_reset;
reg  sobel_filter_inst_start;
wire  sobel_filter_inst_ready;
wire  sobel_filter_inst_finish;
wire  sobel_filter_inst_in_clken;
wire  sobel_filter_inst_in_read_en_a;
wire [17:0] sobel_filter_inst_in_address_a;
reg [7:0] sobel_filter_inst_in_read_data_a;
wire  sobel_filter_inst_in_read_en_b;
wire [17:0] sobel_filter_inst_in_address_b;
reg [7:0] sobel_filter_inst_in_read_data_b;
wire  sobel_filter_inst_out_clken;
wire  sobel_filter_inst_out_write_en_a;
wire [7:0] sobel_filter_inst_out_write_data_a;
wire  sobel_filter_inst_out_read_en_a;
wire [17:0] sobel_filter_inst_out_address_a;
reg [7:0] sobel_filter_inst_out_read_data_a;
wire  sobel_filter_inst_out_write_en_b;
wire [7:0] sobel_filter_inst_out_write_data_b;
wire  sobel_filter_inst_out_read_en_b;
wire [17:0] sobel_filter_inst_out_address_b;
reg [7:0] sobel_filter_inst_out_read_data_b;
reg  sobel_filter_inst_finish_reg;


sobel_filter sobel_filter_inst (
	.clk (sobel_filter_inst_clk),
	.reset (sobel_filter_inst_reset),
	.start (sobel_filter_inst_start),
	.ready (sobel_filter_inst_ready),
	.finish (sobel_filter_inst_finish),
	.in_clken (sobel_filter_inst_in_clken),
	.in_read_en_a (sobel_filter_inst_in_read_en_a),
	.in_address_a (sobel_filter_inst_in_address_a),
	.in_read_data_a (sobel_filter_inst_in_read_data_a),
	.in_read_en_b (sobel_filter_inst_in_read_en_b),
	.in_address_b (sobel_filter_inst_in_address_b),
	.in_read_data_b (sobel_filter_inst_in_read_data_b),
	.out_clken (sobel_filter_inst_out_clken),
	.out_write_en_a (sobel_filter_inst_out_write_en_a),
	.out_write_data_a (sobel_filter_inst_out_write_data_a),
	.out_read_en_a (sobel_filter_inst_out_read_en_a),
	.out_address_a (sobel_filter_inst_out_address_a),
	.out_read_data_a (sobel_filter_inst_out_read_data_a),
	.out_write_en_b (sobel_filter_inst_out_write_en_b),
	.out_write_data_b (sobel_filter_inst_out_write_data_b),
	.out_read_en_b (sobel_filter_inst_out_read_en_b),
	.out_address_b (sobel_filter_inst_out_address_b),
	.out_read_data_b (sobel_filter_inst_out_read_data_b)
);



always @(*) begin
	sobel_filter_inst_clk = clk;
end
always @(*) begin
	sobel_filter_inst_reset = reset;
end
always @(*) begin
	sobel_filter_inst_start = start;
end
always @(*) begin
	sobel_filter_inst_in_read_data_a = in_read_data_a;
end
always @(*) begin
	sobel_filter_inst_in_read_data_b = in_read_data_b;
end
always @(*) begin
	sobel_filter_inst_out_read_data_a = out_read_data_a;
end
always @(*) begin
	sobel_filter_inst_out_read_data_b = out_read_data_b;
end
always @(posedge clk) begin
	if ((reset | sobel_filter_inst_start)) begin
		sobel_filter_inst_finish_reg <= 1'd0;
	end
	if (sobel_filter_inst_finish) begin
		sobel_filter_inst_finish_reg <= 1'd1;
	end
end
always @(*) begin
	ready = sobel_filter_inst_ready;
end
always @(*) begin
	finish = sobel_filter_inst_finish;
end
always @(*) begin
	in_clken = sobel_filter_inst_in_clken;
end
always @(*) begin
	in_read_en_a = sobel_filter_inst_in_read_en_a;
end
always @(*) begin
	in_address_a = sobel_filter_inst_in_address_a;
end
always @(*) begin
	in_read_en_b = sobel_filter_inst_in_read_en_b;
end
always @(*) begin
	in_address_b = sobel_filter_inst_in_address_b;
end
always @(*) begin
	out_clken = sobel_filter_inst_out_clken;
end
always @(*) begin
	out_write_en_a = sobel_filter_inst_out_write_en_a;
end
always @(*) begin
	out_write_data_a = sobel_filter_inst_out_write_data_a;
end
always @(*) begin
	out_read_en_a = sobel_filter_inst_out_read_en_a;
end
always @(*) begin
	out_address_a = sobel_filter_inst_out_address_a;
end
always @(*) begin
	out_write_en_b = sobel_filter_inst_out_write_en_b;
end
always @(*) begin
	out_write_data_b = sobel_filter_inst_out_write_data_b;
end
always @(*) begin
	out_read_en_b = sobel_filter_inst_out_read_en_b;
end
always @(*) begin
	out_address_b = sobel_filter_inst_out_address_b;
end

endmodule
`timescale 1 ns / 1 ns
module sobel_filter
(
	clk,
	reset,
	start,
	ready,
	finish,
	in_clken,
	in_read_en_a,
	in_address_a,
	in_read_data_a,
	in_read_en_b,
	in_address_b,
	in_read_data_b,
	out_clken,
	out_write_en_a,
	out_write_data_a,
	out_read_en_a,
	out_address_a,
	out_read_data_a,
	out_write_en_b,
	out_write_data_b,
	out_read_en_b,
	out_address_b,
	out_read_data_b
);

parameter [4:0] LEGUP_0 = 5'd0;
parameter [4:0] LEGUP_F_sobel_filter_BB_entry_1 = 5'd1;
parameter [4:0] LEGUP_F_sobel_filter_BB_for_cond1_preheader_2 = 5'd2;
parameter [4:0] LEGUP_F_sobel_filter_BB_for_body3_3 = 5'd3;
parameter [4:0] LEGUP_F_sobel_filter_BB_for_body3_4 = 5'd4;
parameter [4:0] LEGUP_F_sobel_filter_BB_for_body3_for_inc54_crit_edge_5 = 5'd5;
parameter [4:0] LEGUP_F_sobel_filter_BB_for_cond14_preheader_6 = 5'd6;
parameter [4:0] LEGUP_F_sobel_filter_BB_for_cond14_preheader_7 = 5'd7;
parameter [4:0] LEGUP_F_sobel_filter_BB_for_cond14_preheader_8 = 5'd8;
parameter [4:0] LEGUP_F_sobel_filter_BB_for_cond14_preheader_9 = 5'd9;
parameter [4:0] LEGUP_F_sobel_filter_BB_for_cond14_preheader_10 = 5'd10;
parameter [4:0] LEGUP_F_sobel_filter_BB_for_cond14_preheader_11 = 5'd11;
parameter [4:0] LEGUP_F_sobel_filter_BB_for_cond14_preheader_12 = 5'd12;
parameter [4:0] LEGUP_F_sobel_filter_BB_for_cond14_preheader_13 = 5'd13;
parameter [4:0] LEGUP_F_sobel_filter_BB_for_cond14_preheader_14 = 5'd14;
parameter [4:0] LEGUP_F_sobel_filter_BB_for_inc54_15 = 5'd15;
parameter [4:0] LEGUP_F_sobel_filter_BB_for_inc54_16 = 5'd16;
parameter [4:0] LEGUP_F_sobel_filter_BB_for_inc57_17 = 5'd17;
parameter [4:0] LEGUP_F_sobel_filter_BB_for_end59_18 = 5'd18;

input  clk;
input  reset;
input  start;
output reg  ready;
output reg  finish;
output reg  in_clken;
output reg  in_read_en_a;
output reg [17:0] in_address_a;
input [7:0] in_read_data_a;
output reg  in_read_en_b;
output reg [17:0] in_address_b;
input [7:0] in_read_data_b;
output reg  out_clken;
output reg  out_write_en_a;
output reg [7:0] out_write_data_a;
output  out_read_en_a;
output reg [17:0] out_address_a;
input [7:0] out_read_data_a;
output  out_write_en_b;
output [7:0] out_write_data_b;
output  out_read_en_b;
output [17:0] out_address_b;
input [7:0] out_read_data_b;
reg [4:0] cur_state/* synthesis syn_encoding="onehot" */;
reg [4:0] next_state;
wire  fsm_stall;
reg [9:0] sobel_filter_cond1_preheader_i_097;
reg [9:0] sobel_filter_cond1_preheader_i_097_reg;
reg [10:0] sobel_filter_cond1_preheader_0;
reg [10:0] sobel_filter_cond1_preheader_0_reg;
reg [11:0] sobel_filter_cond1_preheader_i_0_off;
reg [11:0] sobel_filter_cond1_preheader_i_0_off_reg;
reg  sobel_filter_cond1_preheader_1;
reg [31:0] sobel_filter_cond1_preheader_bit_concat16;
reg [31:0] sobel_filter_cond1_preheader_bit_concat16_reg;
reg [31:0] sobel_filter_for_body3_j_095;
reg [31:0] sobel_filter_for_body3_j_095_reg;
reg  sobel_filter_for_body3_cmp7;
reg [31:0] sobel_filter_for_body3_bit_concat15;
reg [31:0] sobel_filter_for_body3_or9;
reg [31:0] sobel_filter_for_body3_or9_reg;
reg  sobel_filter_for_body3_cmp10;
reg [31:0] sobel_filter_for_body3_bit_concat14;
reg [31:0] sobel_filter_for_body3_bit_concat14_reg;
reg [31:0] sobel_filter_for_body3_or12;
reg  sobel_filter_for_body3_tobool;
reg [31:0] sobel_filter_inc54_crit_edge_inc55_prephi_prephi_p;
reg [31:0] sobel_filter_ond14_preheader_scevgep18_sum;
reg [31:0] sobel_filter_ond14_preheader_scevgep18_sum_reg;
reg [`MEMORY_CONTROLLER_ADDR_SIZE-1:0] sobel_filter_ond14_preheader_arrayidx22;
reg [7:0] sobel_filter_ond14_preheader_2;
reg [31:0] sobel_filter_ond14_preheader_bit_concat13;
reg [`MEMORY_CONTROLLER_ADDR_SIZE-1:0] sobel_filter_ond14_preheader_arrayidx22_1;
reg [`MEMORY_CONTROLLER_ADDR_SIZE-1:0] sobel_filter_ond14_preheader_arrayidx22_1_reg;
reg [7:0] sobel_filter_ond14_preheader_3;
reg [31:0] sobel_filter_ond14_preheader_bit_concat12;
reg [31:0] sobel_filter_ond14_preheader_bit_concat12_reg;
reg [31:0] sobel_filter_ond14_preheader_scevgep10_sum;
reg [31:0] sobel_filter_ond14_preheader_scevgep10_sum_reg;
reg [`MEMORY_CONTROLLER_ADDR_SIZE-1:0] sobel_filter_ond14_preheader_arrayidx22_2;
reg [7:0] sobel_filter_ond14_preheader_4;
reg [31:0] sobel_filter_ond14_preheader_bit_concat11;
reg [`MEMORY_CONTROLLER_ADDR_SIZE-1:0] sobel_filter_ond14_preheader_arrayidx22_198;
reg [`MEMORY_CONTROLLER_ADDR_SIZE-1:0] sobel_filter_ond14_preheader_arrayidx22_198_reg;
reg [7:0] sobel_filter_ond14_preheader_5;
reg [31:0] sobel_filter_ond14_preheader_bit_concat10;
reg [31:0] sobel_filter_ond14_preheader_bit_concat10_reg;
reg [31:0] sobel_filter_ond14_preheader_scevgep6_sum;
reg [31:0] sobel_filter_ond14_preheader_scevgep6_sum_reg;
reg [`MEMORY_CONTROLLER_ADDR_SIZE-1:0] sobel_filter_ond14_preheader_arrayidx22_2_1;
reg [`MEMORY_CONTROLLER_ADDR_SIZE-1:0] sobel_filter_ond14_preheader_arrayidx22_2_1_reg;
reg [7:0] sobel_filter_ond14_preheader_6;
reg [31:0] sobel_filter_ond14_preheader_bit_concat9;
reg [31:0] sobel_filter_ond14_preheader_scevgep4_sum;
reg [31:0] sobel_filter_ond14_preheader_scevgep4_sum_reg;
reg [`MEMORY_CONTROLLER_ADDR_SIZE-1:0] sobel_filter_ond14_preheader_arrayidx22_2106;
reg [`MEMORY_CONTROLLER_ADDR_SIZE-1:0] sobel_filter_ond14_preheader_arrayidx22_2106_reg;
reg [7:0] sobel_filter_ond14_preheader_7;
reg [31:0] sobel_filter_ond14_preheader_bit_concat8;
reg [`MEMORY_CONTROLLER_ADDR_SIZE-1:0] sobel_filter_ond14_preheader_arrayidx22_1_2;
reg [`MEMORY_CONTROLLER_ADDR_SIZE-1:0] sobel_filter_ond14_preheader_arrayidx22_1_2_reg;
reg [7:0] sobel_filter_ond14_preheader_8;
reg [31:0] sobel_filter_ond14_preheader_bit_concat7;
reg [`MEMORY_CONTROLLER_ADDR_SIZE-1:0] sobel_filter_ond14_preheader_arrayidx22_2_2;
reg [`MEMORY_CONTROLLER_ADDR_SIZE-1:0] sobel_filter_ond14_preheader_arrayidx22_2_2_reg;
reg [7:0] sobel_filter_ond14_preheader_9;
reg [31:0] sobel_filter_ond14_preheader_bit_concat6;
reg [31:0] sobel_filter_ond14_preheader_tmp;
reg [30:0] sobel_filter_ond14_preheader_bit_select4;
reg [31:0] sobel_filter_ond14_preheader_bit_concat5;
reg [31:0] sobel_filter_ond14_preheader_bit_concat5_reg;
reg [31:0] sobel_filter_ond14_preheader_add28_1102;
reg [31:0] sobel_filter_ond14_preheader_add28_1102_reg;
reg [31:0] sobel_filter_ond14_preheader_add28_2_1;
reg [31:0] sobel_filter_ond14_preheader_add28_2_1_reg;
reg [31:0] sobel_filter_ond14_preheader_add28_2110;
reg [31:0] sobel_filter_ond14_preheader_add28_2_2;
reg [31:0] sobel_filter_ond14_preheader_add28_2_2_reg;
reg  sobel_filter_ond14_preheader_bit_select2;
reg  sobel_filter_ond14_preheader_bit_select2_reg;
reg [31:0] sobel_filter_ond14_preheader_tmp3;
reg [30:0] sobel_filter_ond14_preheader_bit_select3;
reg [31:0] sobel_filter_ond14_preheader_bit_concat;
reg [31:0] sobel_filter_ond14_preheader_add34_2;
reg [31:0] sobel_filter_ond14_preheader_add34_2_reg;
reg [31:0] sobel_filter_ond14_preheader_add34_2113;
reg [31:0] sobel_filter_ond14_preheader_add34_2113_reg;
reg [31:0] sobel_filter_ond14_preheader_add34_1_2;
reg [31:0] sobel_filter_ond14_preheader_add34_2_2;
reg [31:0] sobel_filter_ond14_preheader_add34_2_2_reg;
reg  sobel_filter_ond14_preheader_bit_select1;
reg  sobel_filter_ond14_preheader_bit_select1_reg;
reg [31:0] sobel_filter_ond14_preheader_sub;
reg [31:0] sobel_filter_ond14_preheader_cond;
reg [31:0] sobel_filter_ond14_preheader_cond_reg;
reg [31:0] sobel_filter_ond14_preheader_sub41;
reg [31:0] sobel_filter_ond14_preheader_cond44;
reg [31:0] sobel_filter_ond14_preheader_cond44_reg;
reg [31:0] sobel_filter_ond14_preheader_add45;
reg [7:0] sobel_filter_ond14_preheader_bit_select;
reg [7:0] sobel_filter_ond14_preheader_bit_select_reg;
reg  sobel_filter_ond14_preheader_cmp46;
reg  sobel_filter_ond14_preheader_cmp46_reg;
reg [7:0] sobel_filter_ond14_preheader_conv51;
reg [31:0] sobel_filter_for_inc54_inc55_prephi_prephi_prephi_;
reg [31:0] sobel_filter_for_inc54_inc55_prephi_prephi_prephi__reg;
reg [7:0] sobel_filter_for_inc54_conv51_sink;
reg [7:0] sobel_filter_for_inc54_conv51_sink_reg;
reg [`MEMORY_CONTROLLER_ADDR_SIZE-1:0] sobel_filter_for_inc54_scevgep2;
reg  sobel_filter_for_inc54_exitcond;
reg  sobel_filter_for_inc54_exitcond_reg;
reg  sobel_filter_for_inc57_exitcond2;
wire [30:0] sobel_filter_cond1_preheader_bit_concat16_bit_select_operand_0;
wire [2:0] sobel_filter_for_body3_cmp7_op1_temp;
wire [30:0] sobel_filter_for_body3_bit_concat15_bit_select_operand_0;
wire [10:0] sobel_filter_for_body3_cmp10_op1_temp;
wire [30:0] sobel_filter_for_body3_bit_concat14_bit_select_operand_0;
reg [7:0] in_read_data_wire_a;
reg  in_clken_sequential_cond;
reg [7:0] in_read_data_wire_b;
wire [23:0] sobel_filter_ond14_preheader_bit_concat13_bit_select_operand_0;
wire [23:0] sobel_filter_ond14_preheader_bit_concat11_bit_select_operand_0;
wire [23:0] sobel_filter_ond14_preheader_bit_concat12_bit_select_operand_0;
wire [23:0] sobel_filter_ond14_preheader_bit_concat10_bit_select_operand_0;
wire [23:0] sobel_filter_ond14_preheader_bit_concat9_bit_select_operand_0;
wire [23:0] sobel_filter_ond14_preheader_bit_concat8_bit_select_operand_0;
wire  sobel_filter_ond14_preheader_bit_concat5_bit_select_operand_2;
wire [23:0] sobel_filter_ond14_preheader_bit_concat7_bit_select_operand_0;
wire [23:0] sobel_filter_ond14_preheader_bit_concat6_bit_select_operand_0;
wire  sobel_filter_ond14_preheader_bit_concat_bit_select_operand_2;
wire [9:0] sobel_filter_ond14_preheader_cmp46_op1_temp;
reg  out_clken_sequential_cond;


always @(posedge clk) begin
if (reset == 1'b1)
	cur_state <= LEGUP_0;
else if (!fsm_stall)
	cur_state <= next_state;
end

always @(*)
begin
next_state = cur_state;
case(cur_state)  /* synthesis parallel_case */
LEGUP_0:
	if ((fsm_stall == 1'd0) && (start == 1'd1))
		next_state = LEGUP_F_sobel_filter_BB_entry_1;
LEGUP_F_sobel_filter_BB_entry_1:
		next_state = LEGUP_F_sobel_filter_BB_for_cond1_preheader_2;
LEGUP_F_sobel_filter_BB_for_body3_3:
		next_state = LEGUP_F_sobel_filter_BB_for_body3_4;
LEGUP_F_sobel_filter_BB_for_body3_4:
	if ((fsm_stall == 1'd0) && (sobel_filter_for_body3_tobool == 1'd1))
		next_state = LEGUP_F_sobel_filter_BB_for_cond14_preheader_6;
	else if ((fsm_stall == 1'd0) && (sobel_filter_for_body3_tobool == 1'd0))
		next_state = LEGUP_F_sobel_filter_BB_for_body3_for_inc54_crit_edge_5;
LEGUP_F_sobel_filter_BB_for_body3_for_inc54_crit_edge_5:
		next_state = LEGUP_F_sobel_filter_BB_for_inc54_15;
LEGUP_F_sobel_filter_BB_for_cond14_preheader_10:
		next_state = LEGUP_F_sobel_filter_BB_for_cond14_preheader_11;
LEGUP_F_sobel_filter_BB_for_cond14_preheader_11:
		next_state = LEGUP_F_sobel_filter_BB_for_cond14_preheader_12;
LEGUP_F_sobel_filter_BB_for_cond14_preheader_12:
		next_state = LEGUP_F_sobel_filter_BB_for_cond14_preheader_13;
LEGUP_F_sobel_filter_BB_for_cond14_preheader_13:
		next_state = LEGUP_F_sobel_filter_BB_for_cond14_preheader_14;
LEGUP_F_sobel_filter_BB_for_cond14_preheader_14:
		next_state = LEGUP_F_sobel_filter_BB_for_inc54_15;
LEGUP_F_sobel_filter_BB_for_cond14_preheader_6:
		next_state = LEGUP_F_sobel_filter_BB_for_cond14_preheader_7;
LEGUP_F_sobel_filter_BB_for_cond14_preheader_7:
		next_state = LEGUP_F_sobel_filter_BB_for_cond14_preheader_8;
LEGUP_F_sobel_filter_BB_for_cond14_preheader_8:
		next_state = LEGUP_F_sobel_filter_BB_for_cond14_preheader_9;
LEGUP_F_sobel_filter_BB_for_cond14_preheader_9:
		next_state = LEGUP_F_sobel_filter_BB_for_cond14_preheader_10;
LEGUP_F_sobel_filter_BB_for_cond1_preheader_2:
		next_state = LEGUP_F_sobel_filter_BB_for_body3_3;
LEGUP_F_sobel_filter_BB_for_end59_18:
		next_state = LEGUP_0;
LEGUP_F_sobel_filter_BB_for_inc54_15:
		next_state = LEGUP_F_sobel_filter_BB_for_inc54_16;
LEGUP_F_sobel_filter_BB_for_inc54_16:
	if ((fsm_stall == 1'd0) && (sobel_filter_for_inc54_exitcond_reg == 1'd1))
		next_state = LEGUP_F_sobel_filter_BB_for_inc57_17;
	else if ((fsm_stall == 1'd0) && (sobel_filter_for_inc54_exitcond_reg == 1'd0))
		next_state = LEGUP_F_sobel_filter_BB_for_body3_3;
LEGUP_F_sobel_filter_BB_for_inc57_17:
	if ((fsm_stall == 1'd0) && (sobel_filter_for_inc57_exitcond2 == 1'd1))
		next_state = LEGUP_F_sobel_filter_BB_for_end59_18;
	else if ((fsm_stall == 1'd0) && (sobel_filter_for_inc57_exitcond2 == 1'd0))
		next_state = LEGUP_F_sobel_filter_BB_for_cond1_preheader_2;
default:
	next_state = cur_state;
endcase

end
assign fsm_stall = 1'd0;
always @(*) begin
	if (((cur_state == LEGUP_F_sobel_filter_BB_entry_1) & (fsm_stall == 1'd0))) begin
		sobel_filter_cond1_preheader_i_097 = 32'd0;
	end
	else /* if ((((cur_state == LEGUP_F_sobel_filter_BB_for_inc57_17) & (fsm_stall == 1'd0)) & (sobel_filter_for_inc57_exitcond2 == 1'd0))) */ begin
		sobel_filter_cond1_preheader_i_097 = sobel_filter_cond1_preheader_0_reg;
	end
end
always @(posedge clk) begin
	if (((cur_state == LEGUP_F_sobel_filter_BB_entry_1) & (fsm_stall == 1'd0))) begin
		sobel_filter_cond1_preheader_i_097_reg <= sobel_filter_cond1_preheader_i_097;
	end
	if ((((cur_state == LEGUP_F_sobel_filter_BB_for_inc57_17) & (fsm_stall == 1'd0)) & (sobel_filter_for_inc57_exitcond2 == 1'd0))) begin
		sobel_filter_cond1_preheader_i_097_reg <= sobel_filter_cond1_preheader_i_097;
	end
end
always @(*) begin
		sobel_filter_cond1_preheader_0 = ({1'd0,sobel_filter_cond1_preheader_i_097_reg} + 32'd1);
end
always @(posedge clk) begin
	if ((cur_state == LEGUP_F_sobel_filter_BB_for_cond1_preheader_2)) begin
		sobel_filter_cond1_preheader_0_reg <= sobel_filter_cond1_preheader_0;
	end
end
always @(*) begin
		sobel_filter_cond1_preheader_i_0_off = ({2'd0,sobel_filter_cond1_preheader_i_097_reg} + -32'd1);
end
always @(posedge clk) begin
	if ((cur_state == LEGUP_F_sobel_filter_BB_for_cond1_preheader_2)) begin
		sobel_filter_cond1_preheader_i_0_off_reg <= sobel_filter_cond1_preheader_i_0_off;
	end
end
always @(*) begin
		sobel_filter_cond1_preheader_1 = ($signed(sobel_filter_cond1_preheader_i_0_off) > 32'd509);
end
always @(*) begin
		sobel_filter_cond1_preheader_bit_concat16 = {sobel_filter_cond1_preheader_bit_concat16_bit_select_operand_0[30:0], sobel_filter_cond1_preheader_1};
end
always @(posedge clk) begin
	if ((cur_state == LEGUP_F_sobel_filter_BB_for_cond1_preheader_2)) begin
		sobel_filter_cond1_preheader_bit_concat16_reg <= sobel_filter_cond1_preheader_bit_concat16;
	end
end
always @(*) begin
	if (((cur_state == LEGUP_F_sobel_filter_BB_for_cond1_preheader_2) & (fsm_stall == 1'd0))) begin
		sobel_filter_for_body3_j_095 = 32'd0;
	end
	else /* if ((((cur_state == LEGUP_F_sobel_filter_BB_for_inc54_16) & (fsm_stall == 1'd0)) & (sobel_filter_for_inc54_exitcond_reg == 1'd0))) */ begin
		sobel_filter_for_body3_j_095 = sobel_filter_for_inc54_inc55_prephi_prephi_prephi__reg;
	end
end
always @(posedge clk) begin
	if (((cur_state == LEGUP_F_sobel_filter_BB_for_cond1_preheader_2) & (fsm_stall == 1'd0))) begin
		sobel_filter_for_body3_j_095_reg <= sobel_filter_for_body3_j_095;
	end
	if ((((cur_state == LEGUP_F_sobel_filter_BB_for_inc54_16) & (fsm_stall == 1'd0)) & (sobel_filter_for_inc54_exitcond_reg == 1'd0))) begin
		sobel_filter_for_body3_j_095_reg <= sobel_filter_for_body3_j_095;
	end
end
always @(*) begin
		sobel_filter_for_body3_cmp7 = ($signed(sobel_filter_for_body3_j_095_reg) < $signed({29'd0,sobel_filter_for_body3_cmp7_op1_temp}));
end
always @(*) begin
		sobel_filter_for_body3_bit_concat15 = {sobel_filter_for_body3_bit_concat15_bit_select_operand_0[30:0], sobel_filter_for_body3_cmp7};
end
always @(*) begin
		sobel_filter_for_body3_or9 = (sobel_filter_for_body3_bit_concat15 | sobel_filter_cond1_preheader_bit_concat16_reg);
end
always @(posedge clk) begin
	if ((cur_state == LEGUP_F_sobel_filter_BB_for_body3_3)) begin
		sobel_filter_for_body3_or9_reg <= sobel_filter_for_body3_or9;
	end
end
always @(*) begin
		sobel_filter_for_body3_cmp10 = ($signed(sobel_filter_for_body3_j_095_reg) > $signed({21'd0,sobel_filter_for_body3_cmp10_op1_temp}));
end
always @(*) begin
		sobel_filter_for_body3_bit_concat14 = {sobel_filter_for_body3_bit_concat14_bit_select_operand_0[30:0], sobel_filter_for_body3_cmp10};
end
always @(posedge clk) begin
	if ((cur_state == LEGUP_F_sobel_filter_BB_for_body3_3)) begin
		sobel_filter_for_body3_bit_concat14_reg <= sobel_filter_for_body3_bit_concat14;
	end
end
always @(*) begin
		sobel_filter_for_body3_or12 = (sobel_filter_for_body3_or9_reg | sobel_filter_for_body3_bit_concat14_reg);
end
always @(*) begin
		sobel_filter_for_body3_tobool = (sobel_filter_for_body3_or12 == 32'd0);
end
always @(*) begin
		sobel_filter_inc54_crit_edge_inc55_prephi_prephi_p = (sobel_filter_for_body3_j_095_reg + 32'd1);
end
always @(*) begin
		sobel_filter_ond14_preheader_scevgep18_sum = (sobel_filter_for_body3_j_095_reg + -32'd1);
end
always @(posedge clk) begin
	if ((cur_state == LEGUP_F_sobel_filter_BB_for_cond14_preheader_6)) begin
		sobel_filter_ond14_preheader_scevgep18_sum_reg <= sobel_filter_ond14_preheader_scevgep18_sum;
	end
end
always @(*) begin
		sobel_filter_ond14_preheader_arrayidx22 = (0 + ((512 * $signed({{20{sobel_filter_cond1_preheader_i_0_off_reg[11]}},sobel_filter_cond1_preheader_i_0_off_reg})) + (1 * sobel_filter_ond14_preheader_scevgep18_sum_reg)));
end
always @(*) begin
		sobel_filter_ond14_preheader_2 = in_read_data_wire_a;
end
always @(*) begin
		sobel_filter_ond14_preheader_bit_concat13 = {sobel_filter_ond14_preheader_bit_concat13_bit_select_operand_0[23:0], sobel_filter_ond14_preheader_2[7:0]};
end
always @(*) begin
		sobel_filter_ond14_preheader_arrayidx22_1 = (0 + ((512 * $signed({{20{sobel_filter_cond1_preheader_i_0_off_reg[11]}},sobel_filter_cond1_preheader_i_0_off_reg})) + (1 * sobel_filter_for_body3_j_095_reg)));
end
always @(posedge clk) begin
	if ((cur_state == LEGUP_F_sobel_filter_BB_for_cond14_preheader_6)) begin
		sobel_filter_ond14_preheader_arrayidx22_1_reg <= sobel_filter_ond14_preheader_arrayidx22_1;
	end
end
always @(*) begin
		sobel_filter_ond14_preheader_3 = in_read_data_wire_a;
end
always @(*) begin
		sobel_filter_ond14_preheader_bit_concat12 = {sobel_filter_ond14_preheader_bit_concat12_bit_select_operand_0[23:0], sobel_filter_ond14_preheader_3[7:0]};
end
always @(posedge clk) begin
	if ((cur_state == LEGUP_F_sobel_filter_BB_for_cond14_preheader_9)) begin
		sobel_filter_ond14_preheader_bit_concat12_reg <= sobel_filter_ond14_preheader_bit_concat12;
	end
end
always @(*) begin
		sobel_filter_ond14_preheader_scevgep10_sum = (sobel_filter_for_body3_j_095_reg + -32'd511);
end
always @(posedge clk) begin
	if ((cur_state == LEGUP_F_sobel_filter_BB_for_cond14_preheader_6)) begin
		sobel_filter_ond14_preheader_scevgep10_sum_reg <= sobel_filter_ond14_preheader_scevgep10_sum;
	end
end
always @(*) begin
		sobel_filter_ond14_preheader_arrayidx22_2 = (0 + ((512 * {22'd0,sobel_filter_cond1_preheader_i_097_reg}) + (1 * sobel_filter_ond14_preheader_scevgep10_sum_reg)));
end
always @(*) begin
		sobel_filter_ond14_preheader_4 = in_read_data_wire_b;
end
always @(*) begin
		sobel_filter_ond14_preheader_bit_concat11 = {sobel_filter_ond14_preheader_bit_concat11_bit_select_operand_0[23:0], sobel_filter_ond14_preheader_4[7:0]};
end
always @(*) begin
		sobel_filter_ond14_preheader_arrayidx22_198 = (0 + ((512 * {22'd0,sobel_filter_cond1_preheader_i_097_reg}) + (1 * sobel_filter_ond14_preheader_scevgep18_sum_reg)));
end
always @(posedge clk) begin
	if ((cur_state == LEGUP_F_sobel_filter_BB_for_cond14_preheader_7)) begin
		sobel_filter_ond14_preheader_arrayidx22_198_reg <= sobel_filter_ond14_preheader_arrayidx22_198;
	end
end
always @(*) begin
		sobel_filter_ond14_preheader_5 = in_read_data_wire_b;
end
always @(*) begin
		sobel_filter_ond14_preheader_bit_concat10 = {sobel_filter_ond14_preheader_bit_concat10_bit_select_operand_0[23:0], sobel_filter_ond14_preheader_5[7:0]};
end
always @(posedge clk) begin
	if ((cur_state == LEGUP_F_sobel_filter_BB_for_cond14_preheader_9)) begin
		sobel_filter_ond14_preheader_bit_concat10_reg <= sobel_filter_ond14_preheader_bit_concat10;
	end
end
always @(*) begin
		sobel_filter_ond14_preheader_scevgep6_sum = (sobel_filter_for_body3_j_095_reg + 32'd1);
end
always @(posedge clk) begin
	if ((cur_state == LEGUP_F_sobel_filter_BB_for_cond14_preheader_6)) begin
		sobel_filter_ond14_preheader_scevgep6_sum_reg <= sobel_filter_ond14_preheader_scevgep6_sum;
	end
end
always @(*) begin
		sobel_filter_ond14_preheader_arrayidx22_2_1 = (0 + ((512 * {22'd0,sobel_filter_cond1_preheader_i_097_reg}) + (1 * sobel_filter_ond14_preheader_scevgep6_sum_reg)));
end
always @(posedge clk) begin
	if ((cur_state == LEGUP_F_sobel_filter_BB_for_cond14_preheader_7)) begin
		sobel_filter_ond14_preheader_arrayidx22_2_1_reg <= sobel_filter_ond14_preheader_arrayidx22_2_1;
	end
end
always @(*) begin
		sobel_filter_ond14_preheader_6 = in_read_data_wire_a;
end
always @(*) begin
		sobel_filter_ond14_preheader_bit_concat9 = {sobel_filter_ond14_preheader_bit_concat9_bit_select_operand_0[23:0], sobel_filter_ond14_preheader_6[7:0]};
end
always @(*) begin
		sobel_filter_ond14_preheader_scevgep4_sum = (sobel_filter_for_body3_j_095_reg + 32'd511);
end
always @(posedge clk) begin
	if ((cur_state == LEGUP_F_sobel_filter_BB_for_cond14_preheader_6)) begin
		sobel_filter_ond14_preheader_scevgep4_sum_reg <= sobel_filter_ond14_preheader_scevgep4_sum;
	end
end
always @(*) begin
		sobel_filter_ond14_preheader_arrayidx22_2106 = (0 + ((512 * {22'd0,sobel_filter_cond1_preheader_i_097_reg}) + (1 * sobel_filter_ond14_preheader_scevgep4_sum_reg)));
end
always @(posedge clk) begin
	if ((cur_state == LEGUP_F_sobel_filter_BB_for_cond14_preheader_7)) begin
		sobel_filter_ond14_preheader_arrayidx22_2106_reg <= sobel_filter_ond14_preheader_arrayidx22_2106;
	end
end
always @(*) begin
		sobel_filter_ond14_preheader_7 = in_read_data_wire_b;
end
always @(*) begin
		sobel_filter_ond14_preheader_bit_concat8 = {sobel_filter_ond14_preheader_bit_concat8_bit_select_operand_0[23:0], sobel_filter_ond14_preheader_7[7:0]};
end
always @(*) begin
		sobel_filter_ond14_preheader_arrayidx22_1_2 = (0 + ((512 * {21'd0,sobel_filter_cond1_preheader_0_reg}) + (1 * sobel_filter_for_body3_j_095_reg)));
end
always @(posedge clk) begin
	if ((cur_state == LEGUP_F_sobel_filter_BB_for_cond14_preheader_6)) begin
		sobel_filter_ond14_preheader_arrayidx22_1_2_reg <= sobel_filter_ond14_preheader_arrayidx22_1_2;
	end
end
always @(*) begin
		sobel_filter_ond14_preheader_8 = in_read_data_wire_a;
end
always @(*) begin
		sobel_filter_ond14_preheader_bit_concat7 = {sobel_filter_ond14_preheader_bit_concat7_bit_select_operand_0[23:0], sobel_filter_ond14_preheader_8[7:0]};
end
always @(*) begin
		sobel_filter_ond14_preheader_arrayidx22_2_2 = (0 + ((512 * {21'd0,sobel_filter_cond1_preheader_0_reg}) + (1 * sobel_filter_ond14_preheader_scevgep6_sum_reg)));
end
always @(posedge clk) begin
	if ((cur_state == LEGUP_F_sobel_filter_BB_for_cond14_preheader_7)) begin
		sobel_filter_ond14_preheader_arrayidx22_2_2_reg <= sobel_filter_ond14_preheader_arrayidx22_2_2;
	end
end
always @(*) begin
		sobel_filter_ond14_preheader_9 = in_read_data_wire_b;
end
always @(*) begin
		sobel_filter_ond14_preheader_bit_concat6 = {sobel_filter_ond14_preheader_bit_concat6_bit_select_operand_0[23:0], sobel_filter_ond14_preheader_9[7:0]};
end
always @(*) begin
		sobel_filter_ond14_preheader_tmp = (sobel_filter_ond14_preheader_bit_concat9 - sobel_filter_ond14_preheader_bit_concat10_reg);
end
always @(*) begin
		sobel_filter_ond14_preheader_bit_select4 = sobel_filter_ond14_preheader_tmp[30:0];
end
always @(*) begin
		sobel_filter_ond14_preheader_bit_concat5 = {sobel_filter_ond14_preheader_bit_select4[30:0], sobel_filter_ond14_preheader_bit_concat5_bit_select_operand_2};
end
always @(posedge clk) begin
	if ((cur_state == LEGUP_F_sobel_filter_BB_for_cond14_preheader_10)) begin
		sobel_filter_ond14_preheader_bit_concat5_reg <= sobel_filter_ond14_preheader_bit_concat5;
	end
end
always @(*) begin
		sobel_filter_ond14_preheader_add28_1102 = (sobel_filter_ond14_preheader_bit_concat11 - sobel_filter_ond14_preheader_bit_concat13);
end
always @(posedge clk) begin
	if ((cur_state == LEGUP_F_sobel_filter_BB_for_cond14_preheader_8)) begin
		sobel_filter_ond14_preheader_add28_1102_reg <= sobel_filter_ond14_preheader_add28_1102;
	end
end
always @(*) begin
		sobel_filter_ond14_preheader_add28_2_1 = (sobel_filter_ond14_preheader_add28_1102_reg - sobel_filter_ond14_preheader_bit_concat8);
end
always @(posedge clk) begin
	if ((cur_state == LEGUP_F_sobel_filter_BB_for_cond14_preheader_10)) begin
		sobel_filter_ond14_preheader_add28_2_1_reg <= sobel_filter_ond14_preheader_add28_2_1;
	end
end
always @(*) begin
		sobel_filter_ond14_preheader_add28_2110 = (sobel_filter_ond14_preheader_add28_2_1_reg + sobel_filter_ond14_preheader_bit_concat6);
end
always @(*) begin
		sobel_filter_ond14_preheader_add28_2_2 = (sobel_filter_ond14_preheader_add28_2110 + sobel_filter_ond14_preheader_bit_concat5_reg);
end
always @(posedge clk) begin
	if ((cur_state == LEGUP_F_sobel_filter_BB_for_cond14_preheader_11)) begin
		sobel_filter_ond14_preheader_add28_2_2_reg <= sobel_filter_ond14_preheader_add28_2_2;
	end
end
always @(*) begin
		sobel_filter_ond14_preheader_bit_select2 = sobel_filter_ond14_preheader_add28_2_2[31];
end
always @(posedge clk) begin
	if ((cur_state == LEGUP_F_sobel_filter_BB_for_cond14_preheader_11)) begin
		sobel_filter_ond14_preheader_bit_select2_reg <= sobel_filter_ond14_preheader_bit_select2;
	end
end
always @(*) begin
		sobel_filter_ond14_preheader_tmp3 = (sobel_filter_ond14_preheader_bit_concat12_reg - sobel_filter_ond14_preheader_bit_concat7);
end
always @(*) begin
		sobel_filter_ond14_preheader_bit_select3 = sobel_filter_ond14_preheader_tmp3[30:0];
end
always @(*) begin
		sobel_filter_ond14_preheader_bit_concat = {sobel_filter_ond14_preheader_bit_select3[30:0], sobel_filter_ond14_preheader_bit_concat_bit_select_operand_2};
end
always @(*) begin
		sobel_filter_ond14_preheader_add34_2 = (sobel_filter_ond14_preheader_bit_concat11 + sobel_filter_ond14_preheader_bit_concat13);
end
always @(posedge clk) begin
	if ((cur_state == LEGUP_F_sobel_filter_BB_for_cond14_preheader_8)) begin
		sobel_filter_ond14_preheader_add34_2_reg <= sobel_filter_ond14_preheader_add34_2;
	end
end
always @(*) begin
		sobel_filter_ond14_preheader_add34_2113 = (sobel_filter_ond14_preheader_add34_2_reg - sobel_filter_ond14_preheader_bit_concat8);
end
always @(posedge clk) begin
	if ((cur_state == LEGUP_F_sobel_filter_BB_for_cond14_preheader_10)) begin
		sobel_filter_ond14_preheader_add34_2113_reg <= sobel_filter_ond14_preheader_add34_2113;
	end
end
always @(*) begin
		sobel_filter_ond14_preheader_add34_1_2 = (sobel_filter_ond14_preheader_add34_2113_reg - sobel_filter_ond14_preheader_bit_concat6);
end
always @(*) begin
		sobel_filter_ond14_preheader_add34_2_2 = (sobel_filter_ond14_preheader_add34_1_2 + sobel_filter_ond14_preheader_bit_concat);
end
always @(posedge clk) begin
	if ((cur_state == LEGUP_F_sobel_filter_BB_for_cond14_preheader_11)) begin
		sobel_filter_ond14_preheader_add34_2_2_reg <= sobel_filter_ond14_preheader_add34_2_2;
	end
end
always @(*) begin
		sobel_filter_ond14_preheader_bit_select1 = sobel_filter_ond14_preheader_add34_2_2[31];
end
always @(posedge clk) begin
	if ((cur_state == LEGUP_F_sobel_filter_BB_for_cond14_preheader_11)) begin
		sobel_filter_ond14_preheader_bit_select1_reg <= sobel_filter_ond14_preheader_bit_select1;
	end
end
always @(*) begin
		sobel_filter_ond14_preheader_sub = (32'd0 - sobel_filter_ond14_preheader_add28_2_2_reg);
end
always @(*) begin
		sobel_filter_ond14_preheader_cond = (sobel_filter_ond14_preheader_bit_select2_reg ? sobel_filter_ond14_preheader_sub : sobel_filter_ond14_preheader_add28_2_2_reg);
end
always @(posedge clk) begin
	if ((cur_state == LEGUP_F_sobel_filter_BB_for_cond14_preheader_12)) begin
		sobel_filter_ond14_preheader_cond_reg <= sobel_filter_ond14_preheader_cond;
	end
end
always @(*) begin
		sobel_filter_ond14_preheader_sub41 = (32'd0 - sobel_filter_ond14_preheader_add34_2_2_reg);
end
always @(*) begin
		sobel_filter_ond14_preheader_cond44 = (sobel_filter_ond14_preheader_bit_select1_reg ? sobel_filter_ond14_preheader_sub41 : sobel_filter_ond14_preheader_add34_2_2_reg);
end
always @(posedge clk) begin
	if ((cur_state == LEGUP_F_sobel_filter_BB_for_cond14_preheader_12)) begin
		sobel_filter_ond14_preheader_cond44_reg <= sobel_filter_ond14_preheader_cond44;
	end
end
always @(*) begin
		sobel_filter_ond14_preheader_add45 = (sobel_filter_ond14_preheader_cond44_reg + sobel_filter_ond14_preheader_cond_reg);
end
always @(*) begin
		sobel_filter_ond14_preheader_bit_select = sobel_filter_ond14_preheader_add45[7:0];
end
always @(posedge clk) begin
	if ((cur_state == LEGUP_F_sobel_filter_BB_for_cond14_preheader_13)) begin
		sobel_filter_ond14_preheader_bit_select_reg <= sobel_filter_ond14_preheader_bit_select;
	end
end
always @(*) begin
		sobel_filter_ond14_preheader_cmp46 = ($signed(sobel_filter_ond14_preheader_add45) > $signed({22'd0,sobel_filter_ond14_preheader_cmp46_op1_temp}));
end
always @(posedge clk) begin
	if ((cur_state == LEGUP_F_sobel_filter_BB_for_cond14_preheader_13)) begin
		sobel_filter_ond14_preheader_cmp46_reg <= sobel_filter_ond14_preheader_cmp46;
	end
end
always @(*) begin
		sobel_filter_ond14_preheader_conv51 = (sobel_filter_ond14_preheader_cmp46_reg ? -8'd1 : sobel_filter_ond14_preheader_bit_select_reg);
end
always @(*) begin
	if (((cur_state == LEGUP_F_sobel_filter_BB_for_body3_for_inc54_crit_edge_5) & (fsm_stall == 1'd0))) begin
		sobel_filter_for_inc54_inc55_prephi_prephi_prephi_ = sobel_filter_inc54_crit_edge_inc55_prephi_prephi_p;
	end
	else /* if (((cur_state == LEGUP_F_sobel_filter_BB_for_cond14_preheader_14) & (fsm_stall == 1'd0))) */ begin
		sobel_filter_for_inc54_inc55_prephi_prephi_prephi_ = sobel_filter_ond14_preheader_scevgep6_sum_reg;
	end
end
always @(posedge clk) begin
	if (((cur_state == LEGUP_F_sobel_filter_BB_for_body3_for_inc54_crit_edge_5) & (fsm_stall == 1'd0))) begin
		sobel_filter_for_inc54_inc55_prephi_prephi_prephi__reg <= sobel_filter_for_inc54_inc55_prephi_prephi_prephi_;
	end
	if (((cur_state == LEGUP_F_sobel_filter_BB_for_cond14_preheader_14) & (fsm_stall == 1'd0))) begin
		sobel_filter_for_inc54_inc55_prephi_prephi_prephi__reg <= sobel_filter_for_inc54_inc55_prephi_prephi_prephi_;
	end
end
always @(*) begin
	if (((cur_state == LEGUP_F_sobel_filter_BB_for_body3_for_inc54_crit_edge_5) & (fsm_stall == 1'd0))) begin
		sobel_filter_for_inc54_conv51_sink = 8'd0;
	end
	else /* if (((cur_state == LEGUP_F_sobel_filter_BB_for_cond14_preheader_14) & (fsm_stall == 1'd0))) */ begin
		sobel_filter_for_inc54_conv51_sink = sobel_filter_ond14_preheader_conv51;
	end
end
always @(posedge clk) begin
	if (((cur_state == LEGUP_F_sobel_filter_BB_for_body3_for_inc54_crit_edge_5) & (fsm_stall == 1'd0))) begin
		sobel_filter_for_inc54_conv51_sink_reg <= sobel_filter_for_inc54_conv51_sink;
	end
	if (((cur_state == LEGUP_F_sobel_filter_BB_for_cond14_preheader_14) & (fsm_stall == 1'd0))) begin
		sobel_filter_for_inc54_conv51_sink_reg <= sobel_filter_for_inc54_conv51_sink;
	end
end
always @(*) begin
		sobel_filter_for_inc54_scevgep2 = (0 + ((512 * {22'd0,sobel_filter_cond1_preheader_i_097_reg}) + (1 * sobel_filter_for_body3_j_095_reg)));
end
always @(*) begin
		sobel_filter_for_inc54_exitcond = (sobel_filter_for_inc54_inc55_prephi_prephi_prephi__reg == 32'd512);
end
always @(posedge clk) begin
	if ((cur_state == LEGUP_F_sobel_filter_BB_for_inc54_15)) begin
		sobel_filter_for_inc54_exitcond_reg <= sobel_filter_for_inc54_exitcond;
	end
end
always @(*) begin
		sobel_filter_for_inc57_exitcond2 = (sobel_filter_cond1_preheader_0_reg == 32'd512);
end
assign sobel_filter_cond1_preheader_bit_concat16_bit_select_operand_0 = 31'd0;
assign sobel_filter_for_body3_cmp7_op1_temp = 32'd1;
assign sobel_filter_for_body3_bit_concat15_bit_select_operand_0 = 31'd0;
assign sobel_filter_for_body3_cmp10_op1_temp = 32'd510;
assign sobel_filter_for_body3_bit_concat14_bit_select_operand_0 = 31'd0;
always @(*) begin
	in_read_data_wire_a = in_read_data_a;
end
always @(*) begin
	in_clken_sequential_cond = (~(fsm_stall) & (cur_state != LEGUP_0));
end
always @(*) begin
	in_read_data_wire_b = in_read_data_b;
end
assign sobel_filter_ond14_preheader_bit_concat13_bit_select_operand_0 = 24'd0;
assign sobel_filter_ond14_preheader_bit_concat11_bit_select_operand_0 = 24'd0;
assign sobel_filter_ond14_preheader_bit_concat12_bit_select_operand_0 = 24'd0;
assign sobel_filter_ond14_preheader_bit_concat10_bit_select_operand_0 = 24'd0;
assign sobel_filter_ond14_preheader_bit_concat9_bit_select_operand_0 = 24'd0;
assign sobel_filter_ond14_preheader_bit_concat8_bit_select_operand_0 = 24'd0;
assign sobel_filter_ond14_preheader_bit_concat5_bit_select_operand_2 = 1'd0;
assign sobel_filter_ond14_preheader_bit_concat7_bit_select_operand_0 = 24'd0;
assign sobel_filter_ond14_preheader_bit_concat6_bit_select_operand_0 = 24'd0;
assign sobel_filter_ond14_preheader_bit_concat_bit_select_operand_2 = 1'd0;
assign sobel_filter_ond14_preheader_cmp46_op1_temp = 32'd255;
always @(*) begin
	out_clken_sequential_cond = (~(fsm_stall) & (cur_state != LEGUP_0));
end
always @(*) begin
	ready = (cur_state == LEGUP_0);
end
always @(posedge clk) begin
	if ((cur_state == LEGUP_0)) begin
		finish <= 1'd0;
	end
	if ((cur_state == LEGUP_F_sobel_filter_BB_for_end59_18)) begin
		finish <= (fsm_stall == 1'd0);
	end
end
always @(*) begin
	in_clken = in_clken_sequential_cond;
end
always @(*) begin
	in_read_en_a = 1'd0;
	if ((cur_state == LEGUP_F_sobel_filter_BB_for_cond14_preheader_7)) begin
		in_read_en_a = 1'd1;
	end
	if ((cur_state == LEGUP_F_sobel_filter_BB_for_cond14_preheader_8)) begin
		in_read_en_a = 1'd1;
	end
	if ((cur_state == LEGUP_F_sobel_filter_BB_for_cond14_preheader_9)) begin
		in_read_en_a = 1'd1;
	end
	if ((cur_state == LEGUP_F_sobel_filter_BB_for_cond14_preheader_10)) begin
		in_read_en_a = 1'd1;
	end
end
always @(*) begin
	in_address_a = 18'd0;
	if ((cur_state == LEGUP_F_sobel_filter_BB_for_cond14_preheader_7)) begin
		in_address_a = (sobel_filter_ond14_preheader_arrayidx22 >>> 1'd0);
	end
	if ((cur_state == LEGUP_F_sobel_filter_BB_for_cond14_preheader_8)) begin
		in_address_a = (sobel_filter_ond14_preheader_arrayidx22_1_reg >>> 1'd0);
	end
	if ((cur_state == LEGUP_F_sobel_filter_BB_for_cond14_preheader_9)) begin
		in_address_a = (sobel_filter_ond14_preheader_arrayidx22_2_1_reg >>> 1'd0);
	end
	if ((cur_state == LEGUP_F_sobel_filter_BB_for_cond14_preheader_10)) begin
		in_address_a = (sobel_filter_ond14_preheader_arrayidx22_1_2_reg >>> 1'd0);
	end
end
always @(*) begin
	in_read_en_b = 1'd0;
	if ((cur_state == LEGUP_F_sobel_filter_BB_for_cond14_preheader_7)) begin
		in_read_en_b = 1'd1;
	end
	if ((cur_state == LEGUP_F_sobel_filter_BB_for_cond14_preheader_8)) begin
		in_read_en_b = 1'd1;
	end
	if ((cur_state == LEGUP_F_sobel_filter_BB_for_cond14_preheader_9)) begin
		in_read_en_b = 1'd1;
	end
	if ((cur_state == LEGUP_F_sobel_filter_BB_for_cond14_preheader_10)) begin
		in_read_en_b = 1'd1;
	end
end
always @(*) begin
	in_address_b = 18'd0;
	if ((cur_state == LEGUP_F_sobel_filter_BB_for_cond14_preheader_7)) begin
		in_address_b = (sobel_filter_ond14_preheader_arrayidx22_2 >>> 1'd0);
	end
	if ((cur_state == LEGUP_F_sobel_filter_BB_for_cond14_preheader_8)) begin
		in_address_b = (sobel_filter_ond14_preheader_arrayidx22_198_reg >>> 1'd0);
	end
	if ((cur_state == LEGUP_F_sobel_filter_BB_for_cond14_preheader_9)) begin
		in_address_b = (sobel_filter_ond14_preheader_arrayidx22_2106_reg >>> 1'd0);
	end
	if ((cur_state == LEGUP_F_sobel_filter_BB_for_cond14_preheader_10)) begin
		in_address_b = (sobel_filter_ond14_preheader_arrayidx22_2_2_reg >>> 1'd0);
	end
end
always @(*) begin
	out_clken = out_clken_sequential_cond;
end
always @(*) begin
	out_write_en_a = 1'd0;
	if ((cur_state == LEGUP_F_sobel_filter_BB_for_inc54_15)) begin
		out_write_en_a = 1'd1;
	end
end
always @(*) begin
	out_write_data_a = 8'd0;
	if ((cur_state == LEGUP_F_sobel_filter_BB_for_inc54_15)) begin
		out_write_data_a = sobel_filter_for_inc54_conv51_sink_reg;
	end
end
assign out_read_en_a = 1'd0;
always @(*) begin
	out_address_a = 18'd0;
	if ((cur_state == LEGUP_F_sobel_filter_BB_for_inc54_15)) begin
		out_address_a = (sobel_filter_for_inc54_scevgep2 >>> 1'd0);
	end
end
assign out_write_en_b = 1'd0;
assign out_write_data_b = 8'd0;
assign out_read_en_b = 1'd0;
assign out_address_b = 18'd0;

endmodule
