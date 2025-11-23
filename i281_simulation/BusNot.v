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
// CREATED		"Wed Nov 19 10:31:22 2025"

module BusNot(
	InputByte,
	OutputByte
);


input wire	[6:0] InputByte;
output wire	[6:0] OutputByte;

wire	[6:0] InputBits;
wire	[6:0] OutputBits;




assign	OutputBits[0] =  ~InputBits[0];

assign	OutputBits[1] =  ~InputBits[1];

assign	OutputBits[2] =  ~InputBits[2];

assign	OutputBits[3] =  ~InputBits[3];

assign	OutputBits[4] =  ~InputBits[4];

assign	OutputBits[5] =  ~InputBits[5];

assign	OutputBits[6] =  ~InputBits[6];

assign	OutputByte = OutputBits;
assign	InputBits = InputByte;

endmodule
