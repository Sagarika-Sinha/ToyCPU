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
// CREATED		"Wed Nov 19 10:34:06 2025"

module \8bitAdder (
	Sub,
	First_Input,
	Second_Input,
	Carry,
	Overflow,
	Adder_Output
);


input wire	Sub;
input wire	[7:0] First_Input;
input wire	[7:0] Second_Input;
output wire	Carry;
output wire	Overflow;
output wire	[7:0] Adder_Output;

wire	[7:0] Adder_Output_ALTERA_SYNTHESIZED;
wire	SYNTHESIZED_WIRE_0;
wire	SYNTHESIZED_WIRE_17;
wire	SYNTHESIZED_WIRE_2;
wire	SYNTHESIZED_WIRE_3;
wire	SYNTHESIZED_WIRE_4;
wire	SYNTHESIZED_WIRE_5;
wire	SYNTHESIZED_WIRE_6;
wire	SYNTHESIZED_WIRE_7;
wire	SYNTHESIZED_WIRE_8;
wire	SYNTHESIZED_WIRE_9;
wire	SYNTHESIZED_WIRE_10;
wire	SYNTHESIZED_WIRE_11;
wire	SYNTHESIZED_WIRE_12;
wire	SYNTHESIZED_WIRE_13;
wire	SYNTHESIZED_WIRE_14;
wire	SYNTHESIZED_WIRE_15;

assign	Carry = SYNTHESIZED_WIRE_0;



assign	Overflow = SYNTHESIZED_WIRE_0 ^ SYNTHESIZED_WIRE_17;

assign	SYNTHESIZED_WIRE_8 = Second_Input[0] ^ Sub;

assign	SYNTHESIZED_WIRE_2 = Second_Input[1] ^ Sub;

assign	SYNTHESIZED_WIRE_4 = Second_Input[2] ^ Sub;

assign	SYNTHESIZED_WIRE_6 = Second_Input[3] ^ Sub;

assign	SYNTHESIZED_WIRE_9 = Second_Input[4] ^ Sub;

assign	SYNTHESIZED_WIRE_11 = Second_Input[5] ^ Sub;

assign	SYNTHESIZED_WIRE_13 = Second_Input[6] ^ Sub;

assign	SYNTHESIZED_WIRE_15 = Second_Input[7] ^ Sub;


FullAdder	b2v_inst25(
	.in1(First_Input[1]),
	.in2(SYNTHESIZED_WIRE_2),
	.Cin(SYNTHESIZED_WIRE_3),
	.S(Adder_Output_ALTERA_SYNTHESIZED[1]),
	.Cout(SYNTHESIZED_WIRE_5));


FullAdder	b2v_inst26(
	.in1(First_Input[2]),
	.in2(SYNTHESIZED_WIRE_4),
	.Cin(SYNTHESIZED_WIRE_5),
	.S(Adder_Output_ALTERA_SYNTHESIZED[2]),
	.Cout(SYNTHESIZED_WIRE_7));


FullAdder	b2v_inst27(
	.in1(First_Input[3]),
	.in2(SYNTHESIZED_WIRE_6),
	.Cin(SYNTHESIZED_WIRE_7),
	.S(Adder_Output_ALTERA_SYNTHESIZED[3]),
	.Cout(SYNTHESIZED_WIRE_10));


FullAdder	b2v_inst28(
	.in1(First_Input[0]),
	.in2(SYNTHESIZED_WIRE_8),
	.Cin(Sub),
	.S(Adder_Output_ALTERA_SYNTHESIZED[0]),
	.Cout(SYNTHESIZED_WIRE_3));


FullAdder	b2v_inst29(
	.in1(First_Input[4]),
	.in2(SYNTHESIZED_WIRE_9),
	.Cin(SYNTHESIZED_WIRE_10),
	.S(Adder_Output_ALTERA_SYNTHESIZED[4]),
	.Cout(SYNTHESIZED_WIRE_12));


FullAdder	b2v_inst30(
	.in1(First_Input[5]),
	.in2(SYNTHESIZED_WIRE_11),
	.Cin(SYNTHESIZED_WIRE_12),
	.S(Adder_Output_ALTERA_SYNTHESIZED[5]),
	.Cout(SYNTHESIZED_WIRE_14));


FullAdder	b2v_inst31(
	.in1(First_Input[6]),
	.in2(SYNTHESIZED_WIRE_13),
	.Cin(SYNTHESIZED_WIRE_14),
	.S(Adder_Output_ALTERA_SYNTHESIZED[6]),
	.Cout(SYNTHESIZED_WIRE_17));


FullAdder	b2v_inst32(
	.in1(First_Input[7]),
	.in2(SYNTHESIZED_WIRE_15),
	.Cin(SYNTHESIZED_WIRE_17),
	.S(Adder_Output_ALTERA_SYNTHESIZED[7]),
	.Cout(SYNTHESIZED_WIRE_0));

assign	Adder_Output = Adder_Output_ALTERA_SYNTHESIZED;

endmodule
