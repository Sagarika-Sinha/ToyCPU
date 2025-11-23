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
// CREATED		"Wed Nov 19 10:28:13 2025"

module Flag_Registers(
	Clock,
	Reset,
	ZeroFlag,
	OverFlowFlag,
	CarryFlag,
	NegativeFlag,
	Write_Enable,
	ZeroFlagOut,
	OverFlowFlagOut,
	CarryFlagOut,
	NegativeFlagOut
);


input wire	Clock;
input wire	Reset;
input wire	ZeroFlag;
input wire	OverFlowFlag;
input wire	CarryFlag;
input wire	NegativeFlag;
input wire	Write_Enable;
output wire	ZeroFlagOut;
output wire	OverFlowFlagOut;
output wire	CarryFlagOut;
output wire	NegativeFlagOut;

wire	SYNTHESIZED_WIRE_12;
wire	SYNTHESIZED_WIRE_1;
wire	SYNTHESIZED_WIRE_13;
reg	DFF_Zero;
reg	DFF_Negative;
reg	DFF_Carry;
reg	DFF_OverFlow;
wire	SYNTHESIZED_WIRE_4;
wire	SYNTHESIZED_WIRE_7;
wire	SYNTHESIZED_WIRE_10;

assign	ZeroFlagOut = DFF_Zero;
assign	OverFlowFlagOut = DFF_OverFlow;
assign	CarryFlagOut = DFF_Carry;
assign	NegativeFlagOut = DFF_Negative;
assign	SYNTHESIZED_WIRE_13 = 1;




always@(posedge Clock or negedge SYNTHESIZED_WIRE_12 or negedge SYNTHESIZED_WIRE_13)
begin
if (!SYNTHESIZED_WIRE_12)
	begin
	DFF_Carry <= 0;
	end
else
if (!SYNTHESIZED_WIRE_13)
	begin
	DFF_Carry <= 1;
	end
else
	begin
	DFF_Carry <= SYNTHESIZED_WIRE_1;
	end
end


assign	SYNTHESIZED_WIRE_12 =  ~Reset;


Block3	b2v_inst257(
	.i0(DFF_Zero),
	.i1(ZeroFlag),
	.sel(Write_Enable),
	.mxout(SYNTHESIZED_WIRE_10));


Block3	b2v_inst4(
	.i0(DFF_Negative),
	.i1(NegativeFlag),
	.sel(Write_Enable),
	.mxout(SYNTHESIZED_WIRE_4));


Block3	b2v_inst5(
	.i0(DFF_Carry),
	.i1(CarryFlag),
	.sel(Write_Enable),
	.mxout(SYNTHESIZED_WIRE_1));


Block3	b2v_inst6(
	.i0(DFF_OverFlow),
	.i1(OverFlowFlag),
	.sel(Write_Enable),
	.mxout(SYNTHESIZED_WIRE_7));


always@(posedge Clock or negedge SYNTHESIZED_WIRE_12 or negedge SYNTHESIZED_WIRE_13)
begin
if (!SYNTHESIZED_WIRE_12)
	begin
	DFF_Negative <= 0;
	end
else
if (!SYNTHESIZED_WIRE_13)
	begin
	DFF_Negative <= 1;
	end
else
	begin
	DFF_Negative <= SYNTHESIZED_WIRE_4;
	end
end


always@(posedge Clock or negedge SYNTHESIZED_WIRE_12 or negedge SYNTHESIZED_WIRE_13)
begin
if (!SYNTHESIZED_WIRE_12)
	begin
	DFF_OverFlow <= 0;
	end
else
if (!SYNTHESIZED_WIRE_13)
	begin
	DFF_OverFlow <= 1;
	end
else
	begin
	DFF_OverFlow <= SYNTHESIZED_WIRE_7;
	end
end


always@(posedge Clock or negedge SYNTHESIZED_WIRE_12 or negedge SYNTHESIZED_WIRE_13)
begin
if (!SYNTHESIZED_WIRE_12)
	begin
	DFF_Zero <= 0;
	end
else
if (!SYNTHESIZED_WIRE_13)
	begin
	DFF_Zero <= 1;
	end
else
	begin
	DFF_Zero <= SYNTHESIZED_WIRE_10;
	end
end


endmodule
