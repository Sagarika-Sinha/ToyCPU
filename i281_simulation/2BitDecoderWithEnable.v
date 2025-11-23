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
// CREATED		"Wed Nov 19 10:23:26 2025"

module \2BitDecoderWithEnable (
	Enable,
	Decoder_Select,
	Decoder_Output
);


input wire	Enable;
input wire	[1:0] Decoder_Select;
output wire	[3:0] Decoder_Output;

wire	[3:0] Decoder_OUT;
wire	[1:0] Decoder_SEL;
wire	SYNTHESIZED_WIRE_16;
wire	SYNTHESIZED_WIRE_17;
wire	SYNTHESIZED_WIRE_2;
wire	SYNTHESIZED_WIRE_3;
wire	SYNTHESIZED_WIRE_4;
wire	SYNTHESIZED_WIRE_5;
wire	SYNTHESIZED_WIRE_6;
wire	SYNTHESIZED_WIRE_8;
wire	SYNTHESIZED_WIRE_18;
wire	SYNTHESIZED_WIRE_19;




assign	SYNTHESIZED_WIRE_5 = SYNTHESIZED_WIRE_16 & SYNTHESIZED_WIRE_17;

assign	SYNTHESIZED_WIRE_6 =  ~Decoder_SEL[0];

assign	Decoder_OUT[0] = SYNTHESIZED_WIRE_2 & Enable;

assign	Decoder_OUT[1] = SYNTHESIZED_WIRE_3 & Enable;

assign	Decoder_OUT[2] = SYNTHESIZED_WIRE_4 & Enable;

assign	Decoder_OUT[3] = SYNTHESIZED_WIRE_5 & Enable;

assign	SYNTHESIZED_WIRE_16 =  ~SYNTHESIZED_WIRE_6;

assign	SYNTHESIZED_WIRE_18 =  ~SYNTHESIZED_WIRE_16;

assign	SYNTHESIZED_WIRE_8 =  ~Decoder_SEL[1];

assign	SYNTHESIZED_WIRE_17 =  ~SYNTHESIZED_WIRE_8;

assign	SYNTHESIZED_WIRE_19 =  ~SYNTHESIZED_WIRE_17;

assign	SYNTHESIZED_WIRE_4 = SYNTHESIZED_WIRE_17 & SYNTHESIZED_WIRE_18;

assign	SYNTHESIZED_WIRE_3 = SYNTHESIZED_WIRE_19 & SYNTHESIZED_WIRE_16;

assign	SYNTHESIZED_WIRE_2 = SYNTHESIZED_WIRE_19 & SYNTHESIZED_WIRE_18;

assign	Decoder_Output = Decoder_OUT;
assign	Decoder_SEL = Decoder_Select;

endmodule
