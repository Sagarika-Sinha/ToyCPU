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
// CREATED		"Wed Nov 19 10:26:32 2025"

module Opcode_Decoder(
	DEC_INPUT,
	ADD,
	ADDI,
	SUB,
	LOAD,
	NOOP,
	LOADF,
	STORE,
	STOREF,
	INPUTC,
	INPUTD,
	INPUTDF,
	SHIFTL,
	SHIFTR,
	INPUTCF,
	JUMP,
	CMP,
	BRE_BRZ,
	BRNE_BRNZ,
	BRG,
	BRGE,
	MOVE,
	SUBI,
	LOADI_LOADP,
	X,
	Y
);


input wire	[7:0] DEC_INPUT;
output wire	ADD;
output wire	ADDI;
output wire	SUB;
output wire	LOAD;
output wire	NOOP;
output wire	LOADF;
output wire	STORE;
output wire	STOREF;
output wire	INPUTC;
output wire	INPUTD;
output wire	INPUTDF;
output wire	SHIFTL;
output wire	SHIFTR;
output wire	INPUTCF;
output wire	JUMP;
output wire	CMP;
output wire	BRE_BRZ;
output wire	BRNE_BRNZ;
output wire	BRG;
output wire	BRGE;
output wire	MOVE;
output wire	SUBI;
output wire	LOADI_LOADP;
output wire	[1:0] X;
output wire	[1:0] Y;

wire	[3:0] Branch_Decoder_Output;
wire	[7:0] DEC_Input_Split;
wire	[15:0] Decoder_Output;
wire	[3:0] Input_Decoder_Output;
wire	[1:0] Shift_Decoder_Output;
wire	SYNTHESIZED_WIRE_0;

assign	SYNTHESIZED_WIRE_0 = 1;




\4to16DecoderWithEnable 	b2v_inst2(
	.Enable(SYNTHESIZED_WIRE_0),
	.Decoder_Select(DEC_Input_Split[7:4]),
	.Decoder_Output(Decoder_Output));



\2to4DecoderWithEnable 	b2v_inst5(
	.Enable(Decoder_Output[1]),
	.Decoder_Select(DEC_Input_Split[1:0]),
	.Decoder_Output(Input_Decoder_Output));


\1to2DecoderWithEnable 	b2v_inst6(
	.Enable(Decoder_Output[12]),
	.Decoder_Input(DEC_Input_Split[0]),
	.Decoder_Output(Shift_Decoder_Output));


\2to4DecoderWithEnable 	b2v_inst7(
	.Enable(Decoder_Output[15]),
	.Decoder_Select(DEC_Input_Split[1:0]),
	.Decoder_Output(Branch_Decoder_Output));

assign	ADD = Decoder_Output[4];
assign	DEC_Input_Split = DEC_INPUT;
assign	ADDI = Decoder_Output[5];
assign	SUB = Decoder_Output[6];
assign	LOAD = Decoder_Output[8];
assign	NOOP = Decoder_Output[0];
assign	LOADF = Decoder_Output[9];
assign	STORE = Decoder_Output[10];
assign	STOREF = Decoder_Output[11];
assign	INPUTC = Input_Decoder_Output[0];
assign	INPUTD = Input_Decoder_Output[2];
assign	INPUTDF = Input_Decoder_Output[3];
assign	SHIFTL = Shift_Decoder_Output[0];
assign	SHIFTR = Shift_Decoder_Output[1];
assign	INPUTCF = Input_Decoder_Output[1];
assign	JUMP = Decoder_Output[14];
assign	CMP = Decoder_Output[13];
assign	BRE_BRZ = Branch_Decoder_Output[0];
assign	BRNE_BRNZ = Branch_Decoder_Output[1];
assign	BRG = Branch_Decoder_Output[2];
assign	BRGE = Branch_Decoder_Output[3];
assign	MOVE = Decoder_Output[2];
assign	SUBI = Decoder_Output[7];
assign	LOADI_LOADP = Decoder_Output[3];
assign	X[1:0] = DEC_Input_Split[3:2];
assign	Y[1:0] = DEC_Input_Split[1:0];

endmodule
