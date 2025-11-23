// Copyright (C) 2018  Intel Corporation. All rights reserved.
// Your use of Intel Corporation's design tools, logic functions 
// and other software and tools, and its AMPP partner logic 
// functions, and any output files from any of the foregoing 
// (including device programming or simulation files), and any 
// associated documentation or information are expressly subject 
// to the terms and conditions of the Intel Program License 
// Subscription Agreement, the Intel Quartus Prime License Agreement,
// the Intel FPGA IP License Agreement, or other applicable license
// agreement, including, without limitation, that your use is for
// the sole purpose of programming logic devices manufactured by
// Intel and sold by Intel or its authorized distributors.  Please
// refer to the applicable agreement for further details.

// PROGRAM		"Quartus Prime"
// VERSION		"Version 18.1.0 Build 625 09/12/2018 SJ Lite Edition"
// CREATED		"Wed Nov 19 10:30:32 2025"

module clock_generator(
	CLK_IN,
	CLK_OUT,
	FAST_CLK,
	native_clock,
	mid_clock
);


input wire	CLK_IN;
output reg	CLK_OUT;
output wire	FAST_CLK;
output wire	native_clock;
output wire	mid_clock;

wire	SYNTHESIZED_WIRE_17;
wire	SYNTHESIZED_WIRE_18;
reg	SYNTHESIZED_WIRE_19;
reg	TFF_inst2;
wire	SYNTHESIZED_WIRE_20;
reg	TFF_inst3;
wire	SYNTHESIZED_WIRE_14;
wire	SYNTHESIZED_WIRE_16;

assign	FAST_CLK = TFF_inst3;
assign	native_clock = SYNTHESIZED_WIRE_18;
assign	mid_clock = SYNTHESIZED_WIRE_19;
assign	SYNTHESIZED_WIRE_17 = 1;




clock_divider_1024	b2v_inst(
	.CLK_IN(CLK_IN),
	.CLK_OUT(SYNTHESIZED_WIRE_16));


always@(posedge SYNTHESIZED_WIRE_18 or negedge SYNTHESIZED_WIRE_17 or negedge SYNTHESIZED_WIRE_17)
begin
if (!SYNTHESIZED_WIRE_17)
	begin
	SYNTHESIZED_WIRE_19 <= 0;
	end
else
if (!SYNTHESIZED_WIRE_17)
	begin
	SYNTHESIZED_WIRE_19 <= 1;
	end
else
	SYNTHESIZED_WIRE_19 <= SYNTHESIZED_WIRE_19 ^ SYNTHESIZED_WIRE_17;
end


assign	SYNTHESIZED_WIRE_20 = SYNTHESIZED_WIRE_19 & TFF_inst2;

assign	SYNTHESIZED_WIRE_14 = SYNTHESIZED_WIRE_20 & TFF_inst3;


always@(posedge SYNTHESIZED_WIRE_18 or negedge SYNTHESIZED_WIRE_17 or negedge SYNTHESIZED_WIRE_17)
begin
if (!SYNTHESIZED_WIRE_17)
	begin
	TFF_inst2 <= 0;
	end
else
if (!SYNTHESIZED_WIRE_17)
	begin
	TFF_inst2 <= 1;
	end
else
	TFF_inst2 <= TFF_inst2 ^ SYNTHESIZED_WIRE_19;
end


always@(posedge SYNTHESIZED_WIRE_18 or negedge SYNTHESIZED_WIRE_17 or negedge SYNTHESIZED_WIRE_17)
begin
if (!SYNTHESIZED_WIRE_17)
	begin
	TFF_inst3 <= 0;
	end
else
if (!SYNTHESIZED_WIRE_17)
	begin
	TFF_inst3 <= 1;
	end
else
	TFF_inst3 <= TFF_inst3 ^ SYNTHESIZED_WIRE_20;
end


always@(posedge SYNTHESIZED_WIRE_18 or negedge SYNTHESIZED_WIRE_17 or negedge SYNTHESIZED_WIRE_17)
begin
if (!SYNTHESIZED_WIRE_17)
	begin
	CLK_OUT <= 0;
	end
else
if (!SYNTHESIZED_WIRE_17)
	begin
	CLK_OUT <= 1;
	end
else
	CLK_OUT <= CLK_OUT ^ SYNTHESIZED_WIRE_14;
end


clock_divider_1024	b2v_inst8(
	.CLK_IN(SYNTHESIZED_WIRE_16),
	.CLK_OUT(SYNTHESIZED_WIRE_18));


endmodule
