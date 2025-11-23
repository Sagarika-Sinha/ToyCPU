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
// CREATED		"Wed Nov 19 10:21:29 2025"

module \16Wide4To1BusMux (
	data0in,
	data1in,
	data2in,
	data3in,
	Select,
	muxresult
);


input wire	[15:0] data0in;
input wire	[15:0] data1in;
input wire	[15:0] data2in;
input wire	[15:0] data3in;
input wire	[1:0] Select;
output wire	[15:0] muxresult;

wire	[15:0] result2;
wire	[15:0] result3;





SixteenWideBusMux	b2v_inst10(
	.Control(Select[1]),
	.dataa(result3),
	.datab(result2),
	.result(muxresult));


SixteenWideBusMux	b2v_inst4(
	.Control(Select[0]),
	.dataa(data0in),
	.datab(data1in),
	.result(result3));


SixteenWideBusMux	b2v_inst5(
	.Control(Select[0]),
	.dataa(data2in),
	.datab(data3in),
	.result(result2));


endmodule
