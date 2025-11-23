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
// CREATED		"Wed Nov 19 10:32:03 2025"

module ALU_Flag_Calculator(
	REG_INPUT,
	Zero,
	Negative
);


input wire	[7:0] REG_INPUT;
output wire	Zero;
output wire	Negative;





assign	Zero = ~(REG_INPUT[7] | REG_INPUT[5] | REG_INPUT[6] | REG_INPUT[4] | REG_INPUT[2] | REG_INPUT[3] | REG_INPUT[1] | REG_INPUT[0]);

assign	Negative = REG_INPUT[7];

endmodule
