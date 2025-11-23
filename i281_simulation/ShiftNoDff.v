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
// CREATED		"Wed Nov 19 10:24:01 2025"

module ShiftNoDff(
	LRSelect,
	ShifterInput,
	Shift_Out_Bit,
	ShifterOutput
);


input wire	LRSelect;
input wire	[7:0] ShifterInput;
output wire	Shift_Out_Bit;
output wire	[7:0] ShifterOutput;

wire	[7:0] ShifterOutput_ALTERA_SYNTHESIZED;
wire	SYNTHESIZED_WIRE_0;
wire	SYNTHESIZED_WIRE_1;

assign	SYNTHESIZED_WIRE_0 = 0;
assign	SYNTHESIZED_WIRE_1 = 0;






Block3	b2v_inst2(
	.i0(ShifterInput[7]),
	.i1(ShifterInput[0]),
	.sel(LRSelect),
	.mxout(Shift_Out_Bit));


Block3	b2v_inst21(
	.i0(SYNTHESIZED_WIRE_0),
	.i1(ShifterInput[1]),
	.sel(LRSelect),
	.mxout(ShifterOutput_ALTERA_SYNTHESIZED[0]));


Block3	b2v_inst22(
	.i0(ShifterInput[0]),
	.i1(ShifterInput[2]),
	.sel(LRSelect),
	.mxout(ShifterOutput_ALTERA_SYNTHESIZED[1]));


Block3	b2v_inst24(
	.i0(ShifterInput[1]),
	.i1(ShifterInput[3]),
	.sel(LRSelect),
	.mxout(ShifterOutput_ALTERA_SYNTHESIZED[2]));


Block3	b2v_inst25(
	.i0(ShifterInput[2]),
	.i1(ShifterInput[4]),
	.sel(LRSelect),
	.mxout(ShifterOutput_ALTERA_SYNTHESIZED[3]));


Block3	b2v_inst26(
	.i0(ShifterInput[3]),
	.i1(ShifterInput[5]),
	.sel(LRSelect),
	.mxout(ShifterOutput_ALTERA_SYNTHESIZED[4]));


Block3	b2v_inst27(
	.i0(ShifterInput[4]),
	.i1(ShifterInput[6]),
	.sel(LRSelect),
	.mxout(ShifterOutput_ALTERA_SYNTHESIZED[5]));


Block3	b2v_inst28(
	.i0(ShifterInput[5]),
	.i1(ShifterInput[7]),
	.sel(LRSelect),
	.mxout(ShifterOutput_ALTERA_SYNTHESIZED[6]));


Block3	b2v_inst29(
	.i0(ShifterInput[6]),
	.i1(SYNTHESIZED_WIRE_1),
	.sel(LRSelect),
	.mxout(ShifterOutput_ALTERA_SYNTHESIZED[7]));

assign	ShifterOutput = ShifterOutput_ALTERA_SYNTHESIZED;

endmodule
