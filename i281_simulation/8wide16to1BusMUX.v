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
// CREATED		"Wed Nov 19 10:33:42 2025"

module \8wide16to1BusMUX (
	Control,
	data0in,
	data10in,
	data11in,
	data12in,
	data13in,
	data14in,
	data15in,
	data1in,
	data2in,
	data3in,
	data4in,
	data5in,
	data6in,
	data7in,
	data8in,
	data9in,
	muxresult
);


input wire	[3:0] Control;
input wire	[7:0] data0in;
input wire	[7:0] data10in;
input wire	[7:0] data11in;
input wire	[7:0] data12in;
input wire	[7:0] data13in;
input wire	[7:0] data14in;
input wire	[7:0] data15in;
input wire	[7:0] data1in;
input wire	[7:0] data2in;
input wire	[7:0] data3in;
input wire	[7:0] data4in;
input wire	[7:0] data5in;
input wire	[7:0] data6in;
input wire	[7:0] data7in;
input wire	[7:0] data8in;
input wire	[7:0] data9in;
output wire	[7:0] muxresult;

wire	[7:0] SYNTHESIZED_WIRE_0;
wire	[7:0] SYNTHESIZED_WIRE_1;
wire	[7:0] SYNTHESIZED_WIRE_2;
wire	[7:0] SYNTHESIZED_WIRE_3;
wire	[7:0] SYNTHESIZED_WIRE_4;
wire	[7:0] SYNTHESIZED_WIRE_5;
wire	[7:0] SYNTHESIZED_WIRE_6;
wire	[7:0] SYNTHESIZED_WIRE_7;
wire	[7:0] SYNTHESIZED_WIRE_8;
wire	[7:0] SYNTHESIZED_WIRE_9;
wire	[7:0] SYNTHESIZED_WIRE_10;
wire	[7:0] SYNTHESIZED_WIRE_11;
wire	[7:0] SYNTHESIZED_WIRE_12;
wire	[7:0] SYNTHESIZED_WIRE_13;





\8WidWideBusMux 	b2v_inst(
	.Control(Control[1]),
	.dataa(SYNTHESIZED_WIRE_0),
	.datab(SYNTHESIZED_WIRE_1),
	.result(SYNTHESIZED_WIRE_8));


\8WidWideBusMux 	b2v_inst1(
	.Control(Control[1]),
	.dataa(SYNTHESIZED_WIRE_2),
	.datab(SYNTHESIZED_WIRE_3),
	.result(SYNTHESIZED_WIRE_9));


\8WidWideBusMux 	b2v_inst10(
	.Control(Control[0]),
	.dataa(data6in),
	.datab(data7in),
	.result(SYNTHESIZED_WIRE_3));


\8WidWideBusMux 	b2v_inst11(
	.Control(Control[0]),
	.dataa(data8in),
	.datab(data9in),
	.result(SYNTHESIZED_WIRE_4));


\8WidWideBusMux 	b2v_inst12(
	.Control(Control[0]),
	.dataa(data10in),
	.datab(data11in),
	.result(SYNTHESIZED_WIRE_5));


\8WidWideBusMux 	b2v_inst13(
	.Control(Control[0]),
	.dataa(data12in),
	.datab(data13in),
	.result(SYNTHESIZED_WIRE_6));


\8WidWideBusMux 	b2v_inst14(
	.Control(Control[0]),
	.dataa(data14in),
	.datab(data15in),
	.result(SYNTHESIZED_WIRE_7));


\8WidWideBusMux 	b2v_inst2(
	.Control(Control[1]),
	.dataa(SYNTHESIZED_WIRE_4),
	.datab(SYNTHESIZED_WIRE_5),
	.result(SYNTHESIZED_WIRE_10));


\8WidWideBusMux 	b2v_inst3(
	.Control(Control[1]),
	.dataa(SYNTHESIZED_WIRE_6),
	.datab(SYNTHESIZED_WIRE_7),
	.result(SYNTHESIZED_WIRE_11));


\8WidWideBusMux 	b2v_inst4(
	.Control(Control[2]),
	.dataa(SYNTHESIZED_WIRE_8),
	.datab(SYNTHESIZED_WIRE_9),
	.result(SYNTHESIZED_WIRE_12));


\8WidWideBusMux 	b2v_inst5(
	.Control(Control[2]),
	.dataa(SYNTHESIZED_WIRE_10),
	.datab(SYNTHESIZED_WIRE_11),
	.result(SYNTHESIZED_WIRE_13));


\8WidWideBusMux 	b2v_inst6(
	.Control(Control[3]),
	.dataa(SYNTHESIZED_WIRE_12),
	.datab(SYNTHESIZED_WIRE_13),
	.result(muxresult));


\8WidWideBusMux 	b2v_inst7(
	.Control(Control[0]),
	.dataa(data0in),
	.datab(data1in),
	.result(SYNTHESIZED_WIRE_0));


\8WidWideBusMux 	b2v_inst8(
	.Control(Control[0]),
	.dataa(data2in),
	.datab(data3in),
	.result(SYNTHESIZED_WIRE_1));


\8WidWideBusMux 	b2v_inst9(
	.Control(Control[0]),
	.dataa(data4in),
	.datab(data5in),
	.result(SYNTHESIZED_WIRE_2));


endmodule
