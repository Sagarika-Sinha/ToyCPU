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
// CREATED		"Wed Nov 19 10:22:55 2025"

module \4to1Mux (
	IN_SEL,
	MUX_IN,
	MUXOUT
);


input wire	[1:0] IN_SEL;
input wire	[3:0] MUX_IN;
output wire	MUXOUT;

wire	[3:0] MUXIN;
wire	SYNTHESIZED_WIRE_16;
wire	SYNTHESIZED_WIRE_17;
wire	SYNTHESIZED_WIRE_2;
wire	SYNTHESIZED_WIRE_18;
wire	SYNTHESIZED_WIRE_19;
wire	SYNTHESIZED_WIRE_5;
wire	SYNTHESIZED_WIRE_8;
wire	SYNTHESIZED_WIRE_9;
wire	SYNTHESIZED_WIRE_10;
wire	SYNTHESIZED_WIRE_11;




assign	SYNTHESIZED_WIRE_8 = MUXIN[0] & SYNTHESIZED_WIRE_16 & SYNTHESIZED_WIRE_17;

assign	SYNTHESIZED_WIRE_18 =  ~SYNTHESIZED_WIRE_2;

assign	SYNTHESIZED_WIRE_10 = SYNTHESIZED_WIRE_18 & MUXIN[3] & SYNTHESIZED_WIRE_19;

assign	SYNTHESIZED_WIRE_2 =  ~IN_SEL[1];

assign	SYNTHESIZED_WIRE_19 =  ~SYNTHESIZED_WIRE_5;

assign	SYNTHESIZED_WIRE_5 =  ~IN_SEL[0];

assign	SYNTHESIZED_WIRE_17 =  ~SYNTHESIZED_WIRE_18;

assign	SYNTHESIZED_WIRE_16 =  ~SYNTHESIZED_WIRE_19;

assign	MUXOUT = SYNTHESIZED_WIRE_8 | SYNTHESIZED_WIRE_9 | SYNTHESIZED_WIRE_10 | SYNTHESIZED_WIRE_11;

assign	SYNTHESIZED_WIRE_11 = MUXIN[1] & SYNTHESIZED_WIRE_17 & SYNTHESIZED_WIRE_19;

assign	SYNTHESIZED_WIRE_9 = SYNTHESIZED_WIRE_16 & SYNTHESIZED_WIRE_18 & MUXIN[2];

assign	MUXIN = MUX_IN;

endmodule
