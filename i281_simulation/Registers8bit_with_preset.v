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
// CREATED		"Wed Nov 19 10:24:55 2025"

module Registers8bit_with_preset(
	Control,
	Reset,
	Clock,
	PRESET_INPUT,
	REG_INPUT,
	REG_OUTPUT
);


input wire	Control;
input wire	Reset;
input wire	Clock;
input wire	[7:0] PRESET_INPUT;
input wire	[7:0] REG_INPUT;
output wire	[7:0] REG_OUTPUT;

reg	[7:0] REG_OUTPUT_ALTERA_SYNTHESIZED;
wire	SYNTHESIZED_WIRE_24;
wire	SYNTHESIZED_WIRE_1;
wire	SYNTHESIZED_WIRE_2;
wire	SYNTHESIZED_WIRE_4;
wire	SYNTHESIZED_WIRE_5;
wire	SYNTHESIZED_WIRE_7;
wire	SYNTHESIZED_WIRE_8;
wire	SYNTHESIZED_WIRE_10;
wire	SYNTHESIZED_WIRE_11;
wire	SYNTHESIZED_WIRE_13;
wire	SYNTHESIZED_WIRE_14;
wire	SYNTHESIZED_WIRE_16;
wire	SYNTHESIZED_WIRE_17;
wire	SYNTHESIZED_WIRE_19;
wire	SYNTHESIZED_WIRE_20;
wire	SYNTHESIZED_WIRE_22;
wire	SYNTHESIZED_WIRE_23;




assign	SYNTHESIZED_WIRE_5 =  ~PRESET_INPUT[0];


always@(posedge Clock or negedge SYNTHESIZED_WIRE_24 or negedge SYNTHESIZED_WIRE_2)
begin
if (!SYNTHESIZED_WIRE_24)
	begin
	REG_OUTPUT_ALTERA_SYNTHESIZED[7] <= 0;
	end
else
if (!SYNTHESIZED_WIRE_2)
	begin
	REG_OUTPUT_ALTERA_SYNTHESIZED[7] <= 1;
	end
else
	begin
	REG_OUTPUT_ALTERA_SYNTHESIZED[7] <= SYNTHESIZED_WIRE_1;
	end
end

assign	SYNTHESIZED_WIRE_8 =  ~PRESET_INPUT[1];

assign	SYNTHESIZED_WIRE_11 =  ~PRESET_INPUT[2];

assign	SYNTHESIZED_WIRE_14 =  ~PRESET_INPUT[3];

assign	SYNTHESIZED_WIRE_17 =  ~PRESET_INPUT[4];

assign	SYNTHESIZED_WIRE_20 =  ~PRESET_INPUT[5];

assign	SYNTHESIZED_WIRE_23 =  ~PRESET_INPUT[6];

assign	SYNTHESIZED_WIRE_2 =  ~PRESET_INPUT[7];


Block3	b2v_inst18(
	.i0(REG_OUTPUT_ALTERA_SYNTHESIZED[1]),
	.i1(REG_INPUT[1]),
	.sel(Control),
	.mxout(SYNTHESIZED_WIRE_7));

assign	SYNTHESIZED_WIRE_24 =  ~Reset;


Block3	b2v_inst2(
	.i0(REG_OUTPUT_ALTERA_SYNTHESIZED[0]),
	.i1(REG_INPUT[0]),
	.sel(Control),
	.mxout(SYNTHESIZED_WIRE_4));


Block3	b2v_inst20(
	.i0(REG_OUTPUT_ALTERA_SYNTHESIZED[2]),
	.i1(REG_INPUT[2]),
	.sel(Control),
	.mxout(SYNTHESIZED_WIRE_10));


Block3	b2v_inst21(
	.i0(REG_OUTPUT_ALTERA_SYNTHESIZED[3]),
	.i1(REG_INPUT[3]),
	.sel(Control),
	.mxout(SYNTHESIZED_WIRE_13));


Block3	b2v_inst22(
	.i0(REG_OUTPUT_ALTERA_SYNTHESIZED[4]),
	.i1(REG_INPUT[4]),
	.sel(Control),
	.mxout(SYNTHESIZED_WIRE_16));


Block3	b2v_inst23(
	.i0(REG_OUTPUT_ALTERA_SYNTHESIZED[5]),
	.i1(REG_INPUT[5]),
	.sel(Control),
	.mxout(SYNTHESIZED_WIRE_19));


Block3	b2v_inst24(
	.i0(REG_OUTPUT_ALTERA_SYNTHESIZED[6]),
	.i1(REG_INPUT[6]),
	.sel(Control),
	.mxout(SYNTHESIZED_WIRE_22));


Block3	b2v_inst25(
	.i0(REG_OUTPUT_ALTERA_SYNTHESIZED[7]),
	.i1(REG_INPUT[7]),
	.sel(Control),
	.mxout(SYNTHESIZED_WIRE_1));


always@(posedge Clock or negedge SYNTHESIZED_WIRE_24 or negedge SYNTHESIZED_WIRE_5)
begin
if (!SYNTHESIZED_WIRE_24)
	begin
	REG_OUTPUT_ALTERA_SYNTHESIZED[0] <= 0;
	end
else
if (!SYNTHESIZED_WIRE_5)
	begin
	REG_OUTPUT_ALTERA_SYNTHESIZED[0] <= 1;
	end
else
	begin
	REG_OUTPUT_ALTERA_SYNTHESIZED[0] <= SYNTHESIZED_WIRE_4;
	end
end


always@(posedge Clock or negedge SYNTHESIZED_WIRE_24 or negedge SYNTHESIZED_WIRE_8)
begin
if (!SYNTHESIZED_WIRE_24)
	begin
	REG_OUTPUT_ALTERA_SYNTHESIZED[1] <= 0;
	end
else
if (!SYNTHESIZED_WIRE_8)
	begin
	REG_OUTPUT_ALTERA_SYNTHESIZED[1] <= 1;
	end
else
	begin
	REG_OUTPUT_ALTERA_SYNTHESIZED[1] <= SYNTHESIZED_WIRE_7;
	end
end


always@(posedge Clock or negedge SYNTHESIZED_WIRE_24 or negedge SYNTHESIZED_WIRE_11)
begin
if (!SYNTHESIZED_WIRE_24)
	begin
	REG_OUTPUT_ALTERA_SYNTHESIZED[2] <= 0;
	end
else
if (!SYNTHESIZED_WIRE_11)
	begin
	REG_OUTPUT_ALTERA_SYNTHESIZED[2] <= 1;
	end
else
	begin
	REG_OUTPUT_ALTERA_SYNTHESIZED[2] <= SYNTHESIZED_WIRE_10;
	end
end


always@(posedge Clock or negedge SYNTHESIZED_WIRE_24 or negedge SYNTHESIZED_WIRE_14)
begin
if (!SYNTHESIZED_WIRE_24)
	begin
	REG_OUTPUT_ALTERA_SYNTHESIZED[3] <= 0;
	end
else
if (!SYNTHESIZED_WIRE_14)
	begin
	REG_OUTPUT_ALTERA_SYNTHESIZED[3] <= 1;
	end
else
	begin
	REG_OUTPUT_ALTERA_SYNTHESIZED[3] <= SYNTHESIZED_WIRE_13;
	end
end


always@(posedge Clock or negedge SYNTHESIZED_WIRE_24 or negedge SYNTHESIZED_WIRE_17)
begin
if (!SYNTHESIZED_WIRE_24)
	begin
	REG_OUTPUT_ALTERA_SYNTHESIZED[4] <= 0;
	end
else
if (!SYNTHESIZED_WIRE_17)
	begin
	REG_OUTPUT_ALTERA_SYNTHESIZED[4] <= 1;
	end
else
	begin
	REG_OUTPUT_ALTERA_SYNTHESIZED[4] <= SYNTHESIZED_WIRE_16;
	end
end


always@(posedge Clock or negedge SYNTHESIZED_WIRE_24 or negedge SYNTHESIZED_WIRE_20)
begin
if (!SYNTHESIZED_WIRE_24)
	begin
	REG_OUTPUT_ALTERA_SYNTHESIZED[5] <= 0;
	end
else
if (!SYNTHESIZED_WIRE_20)
	begin
	REG_OUTPUT_ALTERA_SYNTHESIZED[5] <= 1;
	end
else
	begin
	REG_OUTPUT_ALTERA_SYNTHESIZED[5] <= SYNTHESIZED_WIRE_19;
	end
end


always@(posedge Clock or negedge SYNTHESIZED_WIRE_24 or negedge SYNTHESIZED_WIRE_23)
begin
if (!SYNTHESIZED_WIRE_24)
	begin
	REG_OUTPUT_ALTERA_SYNTHESIZED[6] <= 0;
	end
else
if (!SYNTHESIZED_WIRE_23)
	begin
	REG_OUTPUT_ALTERA_SYNTHESIZED[6] <= 1;
	end
else
	begin
	REG_OUTPUT_ALTERA_SYNTHESIZED[6] <= SYNTHESIZED_WIRE_22;
	end
end

assign	REG_OUTPUT = REG_OUTPUT_ALTERA_SYNTHESIZED;

endmodule
