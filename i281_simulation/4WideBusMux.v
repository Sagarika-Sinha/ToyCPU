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
// CREATED		"Wed Nov 19 10:22:29 2025"

module \4WideBusMux (
	Control,
	dataAline,
	dataBline,
	result
);


input wire	Control;
input wire	[3:0] dataAline;
input wire	[3:0] dataBline;
output wire	[3:0] result;

wire	[3:0] dataOutput;





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

assign	result = dataOutput;

endmodule
