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
// CREATED		"Wed Nov 19 10:26:53 2025"

module IMEM_no_preset(
	CLOCK,
	RESET,
	Write_Enable,
	IMEM_INPUT,
	READ_SELECT,
	WRITE_SELECT,
	IMEM_Output
);


input wire	CLOCK;
input wire	RESET;
input wire	Write_Enable;
input wire	[15:0] IMEM_INPUT;
input wire	[3:0] READ_SELECT;
input wire	[3:0] WRITE_SELECT;
output wire	[15:0] IMEM_Output;

wire	[15:0] Running;
wire	[15:0] SELECTED;
wire	[15:0] SYNTHESIZED_WIRE_0;
wire	[15:0] SYNTHESIZED_WIRE_1;
wire	[15:0] SYNTHESIZED_WIRE_2;
wire	[15:0] SYNTHESIZED_WIRE_3;
wire	[15:0] SYNTHESIZED_WIRE_4;
wire	[15:0] SYNTHESIZED_WIRE_5;
wire	[15:0] SYNTHESIZED_WIRE_6;
wire	[15:0] SYNTHESIZED_WIRE_7;
wire	[15:0] SYNTHESIZED_WIRE_8;
wire	[15:0] SYNTHESIZED_WIRE_9;
wire	[15:0] SYNTHESIZED_WIRE_10;
wire	[15:0] SYNTHESIZED_WIRE_11;
wire	[15:0] SYNTHESIZED_WIRE_12;
wire	[15:0] SYNTHESIZED_WIRE_13;
wire	[15:0] SYNTHESIZED_WIRE_14;
wire	[15:0] SYNTHESIZED_WIRE_15;





Registers16bit	b2v_inst(
	.Control(SELECTED[8]),
	.clk(CLOCK),
	.Reset(RESET),
	.REG_INPUT(Running),
	.REG_OUTPUT(SYNTHESIZED_WIRE_11));


Registers16bit	b2v_inst12(
	.Control(SELECTED[10]),
	.clk(CLOCK),
	.Reset(RESET),
	.REG_INPUT(Running),
	.REG_OUTPUT(SYNTHESIZED_WIRE_1));


Registers16bit	b2v_inst1212(
	.Control(SELECTED[0]),
	.clk(CLOCK),
	.Reset(RESET),
	.REG_INPUT(Running),
	.REG_OUTPUT(SYNTHESIZED_WIRE_0));


Registers16bit	b2v_inst13(
	.Control(SELECTED[11]),
	.clk(CLOCK),
	.Reset(RESET),
	.REG_INPUT(Running),
	.REG_OUTPUT(SYNTHESIZED_WIRE_2));


Registers16bit	b2v_inst14(
	.Control(SELECTED[12]),
	.clk(CLOCK),
	.Reset(RESET),
	.REG_INPUT(Running),
	.REG_OUTPUT(SYNTHESIZED_WIRE_3));


Registers16bit	b2v_inst16(
	.Control(SELECTED[13]),
	.clk(CLOCK),
	.Reset(RESET),
	.REG_INPUT(Running),
	.REG_OUTPUT(SYNTHESIZED_WIRE_14));


Registers16bit	b2v_inst17(
	.Control(SELECTED[14]),
	.clk(CLOCK),
	.Reset(RESET),
	.REG_INPUT(Running),
	.REG_OUTPUT(SYNTHESIZED_WIRE_4));


Registers16bit	b2v_inst18(
	.Control(SELECTED[15]),
	.clk(CLOCK),
	.Reset(RESET),
	.REG_INPUT(Running),
	.REG_OUTPUT(SYNTHESIZED_WIRE_5));


Registers16bit	b2v_inst2(
	.Control(SELECTED[1]),
	.clk(CLOCK),
	.Reset(RESET),
	.REG_INPUT(Running),
	.REG_OUTPUT(SYNTHESIZED_WIRE_13));


Registers16bit	b2v_inst3(
	.Control(SELECTED[2]),
	.clk(CLOCK),
	.Reset(RESET),
	.REG_INPUT(Running),
	.REG_OUTPUT(SYNTHESIZED_WIRE_6));


C16to1BusMUX	b2v_inst35(
	.muxinput0(SYNTHESIZED_WIRE_0),
	.muxinput10(SYNTHESIZED_WIRE_1),
	.muxinput11(SYNTHESIZED_WIRE_2),
	.muxinput12(SYNTHESIZED_WIRE_3),
	.muxinput14(SYNTHESIZED_WIRE_4),
	.muxinput15(SYNTHESIZED_WIRE_5),
	.muxinput2(SYNTHESIZED_WIRE_6),
	.muxinput3(SYNTHESIZED_WIRE_7),
	.muxinput4(SYNTHESIZED_WIRE_8),
	.muxinput6(SYNTHESIZED_WIRE_9),
	.muxinput7(SYNTHESIZED_WIRE_10),
	.muxinput8(SYNTHESIZED_WIRE_11),
	.muxinput9(SYNTHESIZED_WIRE_12),
	.muxinputone(SYNTHESIZED_WIRE_13),
	.muxintput13(SYNTHESIZED_WIRE_14),
	.muxintput5(SYNTHESIZED_WIRE_15),
	.Select(READ_SELECT),
	.muxresult(IMEM_Output));


\4to16DecoderWithEnable 	b2v_inst37(
	.Enable(Write_Enable),
	.Decoder_Select(WRITE_SELECT),
	.Decoder_Output(SELECTED));


Registers16bit	b2v_inst4(
	.Control(SELECTED[3]),
	.clk(CLOCK),
	.Reset(RESET),
	.REG_INPUT(Running),
	.REG_OUTPUT(SYNTHESIZED_WIRE_7));


Registers16bit	b2v_inst5(
	.Control(SELECTED[4]),
	.clk(CLOCK),
	.Reset(RESET),
	.REG_INPUT(Running),
	.REG_OUTPUT(SYNTHESIZED_WIRE_8));


Registers16bit	b2v_inst6(
	.Control(SELECTED[5]),
	.clk(CLOCK),
	.Reset(RESET),
	.REG_INPUT(Running),
	.REG_OUTPUT(SYNTHESIZED_WIRE_15));


Registers16bit	b2v_inst7(
	.Control(SELECTED[6]),
	.clk(CLOCK),
	.Reset(RESET),
	.REG_INPUT(Running),
	.REG_OUTPUT(SYNTHESIZED_WIRE_9));


Registers16bit	b2v_inst8(
	.Control(SELECTED[7]),
	.clk(CLOCK),
	.Reset(RESET),
	.REG_INPUT(Running),
	.REG_OUTPUT(SYNTHESIZED_WIRE_10));


Registers16bit	b2v_inst9(
	.Control(SELECTED[9]),
	.clk(CLOCK),
	.Reset(RESET),
	.REG_INPUT(Running),
	.REG_OUTPUT(SYNTHESIZED_WIRE_12));

assign	Running = IMEM_INPUT;

endmodule
