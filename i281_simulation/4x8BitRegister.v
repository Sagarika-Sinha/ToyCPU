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
// CREATED		"Wed Nov 19 10:22:20 2025"

module \4x8BitRegister (
	Reset,
	Clock,
	READ_SELECT0,
	READ_SELECT1,
	REG_INPUT,
	WRITE_SELECT,
	REG_OUTPUT0,
	REG_OUTPUT1
);


input wire	Reset;
input wire	Clock;
input wire	[1:0] READ_SELECT0;
input wire	[1:0] READ_SELECT1;
input wire	[7:0] REG_INPUT;
input wire	[3:0] WRITE_SELECT;
output wire	[7:0] REG_OUTPUT0;
output wire	[7:0] REG_OUTPUT1;

wire	[3:0] DMUXOUT;
wire	[7:0] SYNTHESIZED_WIRE_8;
wire	[7:0] SYNTHESIZED_WIRE_9;
wire	[7:0] SYNTHESIZED_WIRE_10;
wire	[7:0] SYNTHESIZED_WIRE_11;





Registers8bit	b2v_A(
	.Control(DMUXOUT[0]),
	.Clock(Clock),
	.Reset(Reset),
	.REG_INPUT(REG_INPUT),
	.REG_OUTPUT(SYNTHESIZED_WIRE_8));


Registers8bit	b2v_B(
	.Control(DMUXOUT[1]),
	.Clock(Clock),
	.Reset(Reset),
	.REG_INPUT(REG_INPUT),
	.REG_OUTPUT(SYNTHESIZED_WIRE_9));


Registers8bit	b2v_C(
	.Control(DMUXOUT[2]),
	.Clock(Clock),
	.Reset(Reset),
	.REG_INPUT(REG_INPUT),
	.REG_OUTPUT(SYNTHESIZED_WIRE_10));


Registers8bit	b2v_D(
	.Control(DMUXOUT[3]),
	.Clock(Clock),
	.Reset(Reset),
	.REG_INPUT(REG_INPUT),
	.REG_OUTPUT(SYNTHESIZED_WIRE_11));


\8wide4to1BusMUX 	b2v_inst5(
	.Control(READ_SELECT0),
	.data0in(SYNTHESIZED_WIRE_8),
	.data1in(SYNTHESIZED_WIRE_9),
	.data2in(SYNTHESIZED_WIRE_10),
	.data3in(SYNTHESIZED_WIRE_11),
	.muxresult(REG_OUTPUT0));


\8wide4to1BusMUX 	b2v_inst6(
	.Control(READ_SELECT1),
	.data0in(SYNTHESIZED_WIRE_8),
	.data1in(SYNTHESIZED_WIRE_9),
	.data2in(SYNTHESIZED_WIRE_10),
	.data3in(SYNTHESIZED_WIRE_11),
	.muxresult(REG_OUTPUT1));

assign	DMUXOUT = WRITE_SELECT;

endmodule
