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
// CREATED		"Wed Nov 19 10:28:19 2025"

module EightWideBusMux(
	Control,
	dataa,
	datab,
	result
);


input wire	Control;
input wire	[7:0] dataa;
input wire	[7:0] datab;
output wire	[7:0] result;

wire	[7:0] dataAline;
wire	[7:0] dataBline;
wire	[7:0] dataOutput;





Block3	b2v_inst(
	.i0(dataAline[0]),
	.i1(dataBline[0]),
	.sel(Control),
	.mxout(dataOutput[0]));


Block3	b2v_inst2(
	.i0(dataAline[1]),
	.i1(dataBline[1]),
	.sel(Control),
	.mxout(dataOutput[1]));


Block3	b2v_inst3(
	.i0(dataAline[2]),
	.i1(dataBline[2]),
	.sel(Control),
	.mxout(dataOutput[2]));


Block3	b2v_inst4(
	.i0(dataAline[3]),
	.i1(dataBline[3]),
	.sel(Control),
	.mxout(dataOutput[3]));


Block3	b2v_inst5(
	.i0(dataAline[4]),
	.i1(dataBline[4]),
	.sel(Control),
	.mxout(dataOutput[4]));


Block3	b2v_inst6(
	.i0(dataAline[5]),
	.i1(dataBline[5]),
	.sel(Control),
	.mxout(dataOutput[5]));


Block3	b2v_inst7(
	.i0(dataAline[6]),
	.i1(dataBline[6]),
	.sel(Control),
	.mxout(dataOutput[6]));


Block3	b2v_inst8(
	.i0(dataAline[7]),
	.i1(dataBline[7]),
	.sel(Control),
	.mxout(dataOutput[7]));

assign	result = dataOutput;
assign	dataAline = dataa;
assign	dataBline = datab;

endmodule
