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
// CREATED		"Wed Nov 19 10:30:58 2025"

module C16to1BusMUX(
	muxinput0,
	muxinput10,
	muxinput11,
	muxinput12,
	muxinput14,
	muxinput15,
	muxinput2,
	muxinput3,
	muxinput4,
	muxinput6,
	muxinput7,
	muxinput8,
	muxinput9,
	muxinputone,
	muxintput13,
	muxintput5,
	Select,
	muxresult
);


input wire	[15:0] muxinput0;
input wire	[15:0] muxinput10;
input wire	[15:0] muxinput11;
input wire	[15:0] muxinput12;
input wire	[15:0] muxinput14;
input wire	[15:0] muxinput15;
input wire	[15:0] muxinput2;
input wire	[15:0] muxinput3;
input wire	[15:0] muxinput4;
input wire	[15:0] muxinput6;
input wire	[15:0] muxinput7;
input wire	[15:0] muxinput8;
input wire	[15:0] muxinput9;
input wire	[15:0] muxinputone;
input wire	[15:0] muxintput13;
input wire	[15:0] muxintput5;
input wire	[3:0] Select;
output wire	[15:0] muxresult;

wire	[15:0] result10;
wire	[15:0] result11;
wire	[15:0] result12;
wire	[15:0] result13;
wire	[15:0] result14;
wire	[15:0] result15;
wire	[15:0] result2;
wire	[15:0] result3;
wire	[15:0] result4;
wire	[15:0] result5;
wire	[15:0] result6;
wire	[15:0] result7;
wire	[15:0] result8;
wire	[15:0] result9;





SixteenWideBusMux	b2v_inst10(
	.Control(Select[3]),
	.dataa(result3),
	.datab(result2),
	.result(muxresult));


SixteenWideBusMux	b2v_inst11(
	.Control(Select[0]),
	.dataa(muxinput2),
	.datab(muxinput3),
	.result(result14));


SixteenWideBusMux	b2v_inst12(
	.Control(Select[0]),
	.dataa(muxinput4),
	.datab(muxintput5),
	.result(result13));


SixteenWideBusMux	b2v_inst13(
	.Control(Select[0]),
	.dataa(muxinput6),
	.datab(muxinput7),
	.result(result12));


SixteenWideBusMux	b2v_inst14(
	.Control(Select[0]),
	.dataa(muxinput8),
	.datab(muxinput9),
	.result(result11));


SixteenWideBusMux	b2v_inst15(
	.Control(Select[0]),
	.dataa(muxinput10),
	.datab(muxinput11),
	.result(result10));


SixteenWideBusMux	b2v_inst16(
	.Control(Select[0]),
	.dataa(muxinput12),
	.datab(muxintput13),
	.result(result9));


SixteenWideBusMux	b2v_inst17(
	.Control(Select[0]),
	.dataa(muxinput14),
	.datab(muxinput15),
	.result(result8));


SixteenWideBusMux	b2v_inst18(
	.Control(Select[0]),
	.dataa(muxinput0),
	.datab(muxinputone),
	.result(result15));


SixteenWideBusMux	b2v_inst4(
	.Control(Select[2]),
	.dataa(result7),
	.datab(result6),
	.result(result3));


SixteenWideBusMux	b2v_inst5(
	.Control(Select[2]),
	.dataa(result5),
	.datab(result4),
	.result(result2));


SixteenWideBusMux	b2v_inst6(
	.Control(Select[1]),
	.dataa(result15),
	.datab(result14),
	.result(result7));


SixteenWideBusMux	b2v_inst7(
	.Control(Select[1]),
	.dataa(result13),
	.datab(result12),
	.result(result6));


SixteenWideBusMux	b2v_inst8(
	.Control(Select[1]),
	.dataa(result11),
	.datab(result10),
	.result(result5));


SixteenWideBusMux	b2v_inst9(
	.Control(Select[1]),
	.dataa(result9),
	.datab(result8),
	.result(result4));


endmodule
