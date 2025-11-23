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
// CREATED		"Wed Nov 19 10:22:46 2025"

module \4to16DecoderWithEnable (
	Enable,
	Decoder_Select,
	Decoder_Output
);


input wire	Enable;
input wire	[3:0] Decoder_Select;
output wire	[15:0] Decoder_Output;

wire	[15:0] Decoder_OUT;
wire	[3:0] Decoder_SEL;
wire	SYNTHESIZED_WIRE_88;
wire	SYNTHESIZED_WIRE_89;
wire	SYNTHESIZED_WIRE_90;
wire	SYNTHESIZED_WIRE_91;
wire	SYNTHESIZED_WIRE_92;
wire	SYNTHESIZED_WIRE_93;
wire	SYNTHESIZED_WIRE_94;
wire	SYNTHESIZED_WIRE_11;
wire	SYNTHESIZED_WIRE_12;
wire	SYNTHESIZED_WIRE_13;
wire	SYNTHESIZED_WIRE_22;
wire	SYNTHESIZED_WIRE_95;
wire	SYNTHESIZED_WIRE_72;
wire	SYNTHESIZED_WIRE_73;
wire	SYNTHESIZED_WIRE_74;
wire	SYNTHESIZED_WIRE_75;
wire	SYNTHESIZED_WIRE_76;
wire	SYNTHESIZED_WIRE_77;
wire	SYNTHESIZED_WIRE_78;
wire	SYNTHESIZED_WIRE_79;
wire	SYNTHESIZED_WIRE_80;
wire	SYNTHESIZED_WIRE_81;
wire	SYNTHESIZED_WIRE_82;
wire	SYNTHESIZED_WIRE_83;
wire	SYNTHESIZED_WIRE_84;
wire	SYNTHESIZED_WIRE_85;
wire	SYNTHESIZED_WIRE_86;
wire	SYNTHESIZED_WIRE_87;




assign	SYNTHESIZED_WIRE_94 =  ~SYNTHESIZED_WIRE_88;

assign	SYNTHESIZED_WIRE_92 =  ~SYNTHESIZED_WIRE_89;

assign	SYNTHESIZED_WIRE_91 =  ~SYNTHESIZED_WIRE_90;

assign	SYNTHESIZED_WIRE_80 = SYNTHESIZED_WIRE_91 & SYNTHESIZED_WIRE_92 & SYNTHESIZED_WIRE_88 & SYNTHESIZED_WIRE_93;

assign	SYNTHESIZED_WIRE_83 = SYNTHESIZED_WIRE_90 & SYNTHESIZED_WIRE_94 & SYNTHESIZED_WIRE_89 & SYNTHESIZED_WIRE_93;

assign	SYNTHESIZED_WIRE_90 =  ~SYNTHESIZED_WIRE_11;

assign	SYNTHESIZED_WIRE_12 =  ~Decoder_SEL[1];

assign	SYNTHESIZED_WIRE_89 =  ~SYNTHESIZED_WIRE_12;

assign	SYNTHESIZED_WIRE_13 =  ~Decoder_SEL[2];

assign	SYNTHESIZED_WIRE_88 =  ~SYNTHESIZED_WIRE_13;

assign	SYNTHESIZED_WIRE_82 = SYNTHESIZED_WIRE_91 & SYNTHESIZED_WIRE_89 & SYNTHESIZED_WIRE_94 & SYNTHESIZED_WIRE_93;

assign	SYNTHESIZED_WIRE_22 =  ~Decoder_SEL[3];

assign	SYNTHESIZED_WIRE_84 = SYNTHESIZED_WIRE_90 & SYNTHESIZED_WIRE_92 & SYNTHESIZED_WIRE_94 & SYNTHESIZED_WIRE_93;

assign	SYNTHESIZED_WIRE_93 =  ~SYNTHESIZED_WIRE_22;

assign	SYNTHESIZED_WIRE_85 = SYNTHESIZED_WIRE_91 & SYNTHESIZED_WIRE_92 & SYNTHESIZED_WIRE_94 & SYNTHESIZED_WIRE_93;

assign	SYNTHESIZED_WIRE_81 = SYNTHESIZED_WIRE_90 & SYNTHESIZED_WIRE_92 & SYNTHESIZED_WIRE_88 & SYNTHESIZED_WIRE_93;

assign	SYNTHESIZED_WIRE_73 = SYNTHESIZED_WIRE_91 & SYNTHESIZED_WIRE_89 & SYNTHESIZED_WIRE_88 & SYNTHESIZED_WIRE_93;

assign	SYNTHESIZED_WIRE_72 = SYNTHESIZED_WIRE_90 & SYNTHESIZED_WIRE_89 & SYNTHESIZED_WIRE_88 & SYNTHESIZED_WIRE_93;

assign	SYNTHESIZED_WIRE_86 = SYNTHESIZED_WIRE_90 & SYNTHESIZED_WIRE_89 & SYNTHESIZED_WIRE_88 & SYNTHESIZED_WIRE_95;

assign	SYNTHESIZED_WIRE_87 = SYNTHESIZED_WIRE_91 & SYNTHESIZED_WIRE_89 & SYNTHESIZED_WIRE_88 & SYNTHESIZED_WIRE_95;

assign	SYNTHESIZED_WIRE_74 = SYNTHESIZED_WIRE_90 & SYNTHESIZED_WIRE_92 & SYNTHESIZED_WIRE_88 & SYNTHESIZED_WIRE_95;

assign	SYNTHESIZED_WIRE_75 = SYNTHESIZED_WIRE_91 & SYNTHESIZED_WIRE_92 & SYNTHESIZED_WIRE_88 & SYNTHESIZED_WIRE_95;

assign	SYNTHESIZED_WIRE_76 = SYNTHESIZED_WIRE_90 & SYNTHESIZED_WIRE_89 & SYNTHESIZED_WIRE_94 & SYNTHESIZED_WIRE_95;

assign	SYNTHESIZED_WIRE_77 = SYNTHESIZED_WIRE_91 & SYNTHESIZED_WIRE_89 & SYNTHESIZED_WIRE_94 & SYNTHESIZED_WIRE_95;

assign	SYNTHESIZED_WIRE_78 = SYNTHESIZED_WIRE_90 & SYNTHESIZED_WIRE_92 & SYNTHESIZED_WIRE_94 & SYNTHESIZED_WIRE_95;

assign	SYNTHESIZED_WIRE_79 = SYNTHESIZED_WIRE_91 & SYNTHESIZED_WIRE_92 & SYNTHESIZED_WIRE_94 & SYNTHESIZED_WIRE_95;

assign	SYNTHESIZED_WIRE_95 =  ~SYNTHESIZED_WIRE_93;

assign	SYNTHESIZED_WIRE_11 =  ~Decoder_SEL[0];

assign	Decoder_OUT[15] = SYNTHESIZED_WIRE_72 & Enable;

assign	Decoder_OUT[14] = SYNTHESIZED_WIRE_73 & Enable;

assign	Decoder_OUT[5] = SYNTHESIZED_WIRE_74 & Enable;

assign	Decoder_OUT[4] = SYNTHESIZED_WIRE_75 & Enable;

assign	Decoder_OUT[3] = SYNTHESIZED_WIRE_76 & Enable;

assign	Decoder_OUT[2] = SYNTHESIZED_WIRE_77 & Enable;

assign	Decoder_OUT[1] = SYNTHESIZED_WIRE_78 & Enable;

assign	Decoder_OUT[0] = SYNTHESIZED_WIRE_79 & Enable;

assign	Decoder_OUT[12] = SYNTHESIZED_WIRE_80 & Enable;

assign	Decoder_OUT[13] = SYNTHESIZED_WIRE_81 & Enable;

assign	Decoder_OUT[10] = SYNTHESIZED_WIRE_82 & Enable;

assign	Decoder_OUT[11] = SYNTHESIZED_WIRE_83 & Enable;

assign	Decoder_OUT[9] = SYNTHESIZED_WIRE_84 & Enable;

assign	Decoder_OUT[8] = SYNTHESIZED_WIRE_85 & Enable;

assign	Decoder_OUT[7] = SYNTHESIZED_WIRE_86 & Enable;

assign	Decoder_OUT[6] = SYNTHESIZED_WIRE_87 & Enable;

assign	Decoder_Output = Decoder_OUT;
assign	Decoder_SEL = Decoder_Select;

endmodule
