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
// CREATED		"Wed Nov 19 10:27:37 2025"

module IMEM(
	IMEM_WRITE_ENABLE,
	Clock,
	Reset,
	IMEM_INPUT,
	IMEM_READ_SELECT,
	IMEM_WRITE_SELECT,
	IMEM_READ_OUTPUT
);


input wire	IMEM_WRITE_ENABLE;
input wire	Clock;
input wire	Reset;
input wire	[15:0] IMEM_INPUT;
input wire	[5:0] IMEM_READ_SELECT;
input wire	[5:0] IMEM_WRITE_SELECT;
output wire	[15:0] IMEM_READ_OUTPUT;

wire	[3:0] Decoder_Output;
wire	[5:0] IMEM_READ_SELECTA;
wire	SYNTHESIZED_WIRE_0;
wire	SYNTHESIZED_WIRE_1;
wire	SYNTHESIZED_WIRE_2;
wire	[15:0] SYNTHESIZED_WIRE_3;
wire	[15:0] SYNTHESIZED_WIRE_4;
wire	[15:0] SYNTHESIZED_WIRE_5;
wire	[15:0] SYNTHESIZED_WIRE_6;
wire	SYNTHESIZED_WIRE_7;

assign	SYNTHESIZED_WIRE_0 = 0;
assign	SYNTHESIZED_WIRE_7 = 0;





IMEM_high	b2v_inst1(
	.Write_Enable(Decoder_Output[3]),
	.CLOCK(Clock),
	.RESET(Reset),
	.IMEM_INPUT(IMEM_INPUT),
	.READ_SELECT(IMEM_READ_SELECTA[3:0]),
	.WRITE_SELECT(IMEM_WRITE_SELECT[3:0]),
	.IMEM_Output(SYNTHESIZED_WIRE_6));

assign	SYNTHESIZED_WIRE_2 = SYNTHESIZED_WIRE_0 & Decoder_Output[1];


ReadOnly_16x16_Register_File_Low	b2v_inst2(
	.Write_Enable(SYNTHESIZED_WIRE_1),
	.CLOCK(Clock),
	.RESET(Reset),
	.IMEM_INPUT(IMEM_INPUT),
	.READ_SELECT(IMEM_READ_SELECTA[3:0]),
	.WRITE_SELECT(IMEM_WRITE_SELECT[3:0]),
	.IMEM_Output(SYNTHESIZED_WIRE_3));


ReadOnly_16x16_Register_File_High	b2v_inst251(
	.Write_Enable(SYNTHESIZED_WIRE_2),
	.CLOCK(Clock),
	.RESET(Reset),
	.IMEM_INPUT(IMEM_INPUT),
	.READ_SELECT(IMEM_READ_SELECTA[3:0]),
	.WRITE_SELECT(IMEM_WRITE_SELECT[3:0]),
	.IMEM_Output(SYNTHESIZED_WIRE_4));


\16Wide4To1BusMux 	b2v_inst252(
	.data0in(SYNTHESIZED_WIRE_3),
	.data1in(SYNTHESIZED_WIRE_4),
	.data2in(SYNTHESIZED_WIRE_5),
	.data3in(SYNTHESIZED_WIRE_6),
	.Select(IMEM_READ_SELECTA[5:4]),
	.muxresult(IMEM_READ_OUTPUT));

assign	SYNTHESIZED_WIRE_1 = SYNTHESIZED_WIRE_7 & Decoder_Output[0];


IMEM_low	b2v_inst5(
	.Write_Enable(Decoder_Output[2]),
	.CLOCK(Clock),
	.RESET(Reset),
	.IMEM_INPUT(IMEM_INPUT),
	.READ_SELECT(IMEM_READ_SELECTA[3:0]),
	.WRITE_SELECT(IMEM_WRITE_SELECT[3:0]),
	.IMEM_Output(SYNTHESIZED_WIRE_5));


\2to4DecoderWithEnable 	b2v_inst7(
	.Enable(IMEM_WRITE_ENABLE),
	.Decoder_Select(IMEM_WRITE_SELECT[5:4]),
	.Decoder_Output(Decoder_Output));


assign	IMEM_READ_SELECTA = IMEM_READ_SELECT;

endmodule
