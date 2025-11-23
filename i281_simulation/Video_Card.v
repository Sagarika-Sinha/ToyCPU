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
// CREATED		"Wed Nov 19 10:33:31 2025"

module Video_Card(
	Direct_Video_Map,
	Register_View,
	REG_IN_A,
	REG_IN_B,
	REG_IN_C,
	REG_IN_D,
	Video_Input0,
	Video_Input1,
	Video_Input2,
	Video_Input3,
	Video_Input4,
	Video_Input5,
	Video_Input6,
	Video_Input7,
	Video_Output0,
	Video_Output1,
	Video_Output2,
	Video_Output3,
	Video_Output4,
	Video_Output5,
	Video_Output6,
	Video_Output7
);


input wire	Direct_Video_Map;
input wire	Register_View;
input wire	[7:0] REG_IN_A;
input wire	[7:0] REG_IN_B;
input wire	[7:0] REG_IN_C;
input wire	[7:0] REG_IN_D;
input wire	[7:0] Video_Input0;
input wire	[7:0] Video_Input1;
input wire	[7:0] Video_Input2;
input wire	[7:0] Video_Input3;
input wire	[7:0] Video_Input4;
input wire	[7:0] Video_Input5;
input wire	[7:0] Video_Input6;
input wire	[7:0] Video_Input7;
output wire	[6:0] Video_Output0;
output wire	[6:0] Video_Output1;
output wire	[6:0] Video_Output2;
output wire	[6:0] Video_Output3;
output wire	[6:0] Video_Output4;
output wire	[6:0] Video_Output5;
output wire	[6:0] Video_Output6;
output wire	[6:0] Video_Output7;

wire	[7:0] Seven_Seg0;
wire	[7:0] Seven_Seg1;
wire	[7:0] Seven_Seg2;
wire	[7:0] Seven_Seg3;
wire	[7:0] Seven_Seg4;
wire	[7:0] Seven_Seg5;
wire	[7:0] Seven_Seg6;
wire	[7:0] Seven_Seg7;
wire	[3:0] SYNTHESIZED_WIRE_0;
wire	[3:0] SYNTHESIZED_WIRE_1;
wire	SYNTHESIZED_WIRE_20;
wire	[6:0] SYNTHESIZED_WIRE_3;
wire	[6:0] SYNTHESIZED_WIRE_5;
wire	[6:0] SYNTHESIZED_WIRE_7;
wire	[6:0] SYNTHESIZED_WIRE_9;
wire	[6:0] SYNTHESIZED_WIRE_11;
wire	[6:0] SYNTHESIZED_WIRE_13;
wire	[6:0] SYNTHESIZED_WIRE_15;
wire	[6:0] SYNTHESIZED_WIRE_17;
wire	[3:0] SYNTHESIZED_WIRE_18;
wire	[3:0] SYNTHESIZED_WIRE_19;





seven_seg_decoder_BUSOUT	b2v_inst10(
	.INARR(Seven_Seg4[3:0]),
	.OUTARR(SYNTHESIZED_WIRE_11));


seven_seg_decoder_BUSOUT	b2v_inst11(
	.INARR(Seven_Seg5[3:0]),
	.OUTARR(SYNTHESIZED_WIRE_13));


seven_seg_decoder_BUSOUT	b2v_inst12(
	.INARR(Seven_Seg6[3:0]),
	.OUTARR(SYNTHESIZED_WIRE_15));


seven_seg_decoder_BUSOUT	b2v_inst13(
	.INARR(Seven_Seg7[3:0]),
	.OUTARR(SYNTHESIZED_WIRE_17));


seven_seg_decoder_BUSOUT	b2v_inst2(
	.INARR(SYNTHESIZED_WIRE_0),
	.OUTARR(SYNTHESIZED_WIRE_3));


\4WideBusMux 	b2v_inst26(
	.Control(Register_View),
	.dataAline(Seven_Seg1[3:0]),
	.dataBline(REG_IN_C[3:0]),
	.result(SYNTHESIZED_WIRE_1));


\4WideBusMux 	b2v_inst27(
	.Control(Register_View),
	.dataAline(Seven_Seg2[3:0]),
	.dataBline(REG_IN_B[3:0]),
	.result(SYNTHESIZED_WIRE_18));


\4WideBusMux 	b2v_inst28(
	.Control(Register_View),
	.dataAline(Seven_Seg3[3:0]),
	.dataBline(REG_IN_A[3:0]),
	.result(SYNTHESIZED_WIRE_19));


\4WideBusMux 	b2v_inst37(
	.Control(Register_View),
	.dataAline(Seven_Seg0[3:0]),
	.dataBline(REG_IN_D[3:0]),
	.result(SYNTHESIZED_WIRE_0));


seven_seg_decoder_BUSOUT	b2v_inst4(
	.INARR(SYNTHESIZED_WIRE_1),
	.OUTARR(SYNTHESIZED_WIRE_5));


\7WidWideBusMux 	b2v_inst43(
	.Control(SYNTHESIZED_WIRE_20),
	.dataa(Seven_Seg0[6:0]),
	.datab(SYNTHESIZED_WIRE_3),
	.result(Video_Output0));


\7WidWideBusMux 	b2v_inst44(
	.Control(SYNTHESIZED_WIRE_20),
	.dataa(Seven_Seg1[6:0]),
	.datab(SYNTHESIZED_WIRE_5),
	.result(Video_Output1));


\7WidWideBusMux 	b2v_inst45(
	.Control(SYNTHESIZED_WIRE_20),
	.dataa(Seven_Seg2[6:0]),
	.datab(SYNTHESIZED_WIRE_7),
	.result(Video_Output2));


\7WidWideBusMux 	b2v_inst46(
	.Control(SYNTHESIZED_WIRE_20),
	.dataa(Seven_Seg3[6:0]),
	.datab(SYNTHESIZED_WIRE_9),
	.result(Video_Output3));


\7WidWideBusMux 	b2v_inst47(
	.Control(SYNTHESIZED_WIRE_20),
	.dataa(Seven_Seg4[6:0]),
	.datab(SYNTHESIZED_WIRE_11),
	.result(Video_Output4));


\7WidWideBusMux 	b2v_inst48(
	.Control(SYNTHESIZED_WIRE_20),
	.dataa(Seven_Seg5[6:0]),
	.datab(SYNTHESIZED_WIRE_13),
	.result(Video_Output5));


\7WidWideBusMux 	b2v_inst49(
	.Control(SYNTHESIZED_WIRE_20),
	.dataa(Seven_Seg6[6:0]),
	.datab(SYNTHESIZED_WIRE_15),
	.result(Video_Output6));

assign	SYNTHESIZED_WIRE_20 =  ~Direct_Video_Map;


\7WidWideBusMux 	b2v_inst50(
	.Control(SYNTHESIZED_WIRE_20),
	.dataa(Seven_Seg7[6:0]),
	.datab(SYNTHESIZED_WIRE_17),
	.result(Video_Output7));


seven_seg_decoder_BUSOUT	b2v_inst7(
	.INARR(SYNTHESIZED_WIRE_18),
	.OUTARR(SYNTHESIZED_WIRE_7));


seven_seg_decoder_BUSOUT	b2v_inst8(
	.INARR(SYNTHESIZED_WIRE_19),
	.OUTARR(SYNTHESIZED_WIRE_9));

assign	Seven_Seg0 = Video_Input0;
assign	Seven_Seg1 = Video_Input1;
assign	Seven_Seg2 = Video_Input2;
assign	Seven_Seg3 = Video_Input3;
assign	Seven_Seg4 = Video_Input4;
assign	Seven_Seg5 = Video_Input5;
assign	Seven_Seg6 = Video_Input6;
assign	Seven_Seg7 = Video_Input7;

endmodule
