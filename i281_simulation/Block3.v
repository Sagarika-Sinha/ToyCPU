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
// CREATED		"Wed Nov 19 10:31:47 2025"

module Block3(
	i0,
	i1,
	sel,
	mxout
);


input wire	i0;
input wire	i1;
input wire	sel;
output wire	mxout;

wire	SYNTHESIZED_WIRE_0;
wire	SYNTHESIZED_WIRE_1;
wire	SYNTHESIZED_WIRE_2;




assign	SYNTHESIZED_WIRE_1 = i1 & sel;

assign	SYNTHESIZED_WIRE_0 =  ~sel;

assign	SYNTHESIZED_WIRE_2 = i0 & SYNTHESIZED_WIRE_0;

assign	mxout = SYNTHESIZED_WIRE_1 | SYNTHESIZED_WIRE_2;


endmodule
