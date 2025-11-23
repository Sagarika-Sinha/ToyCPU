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
// CREATED		"Wed Nov 19 10:27:02 2025"

module IMEM_low(
	CLOCK,
	RESET,
	Write_Enable,
	IMEM_INPUT,
	READ_SELECT,
	WRITE_SELECT,
	IMEM_Output
);


input wire	CLOCK;
input wire	RESET;
input wire	Write_Enable;
input wire	[15:0] IMEM_INPUT;
input wire	[3:0] READ_SELECT;
input wire	[3:0] WRITE_SELECT;
output wire	[15:0] IMEM_Output;

wire	[15:0] Running;
wire	[15:0] SELECTED;
reg	SYNTHESIZED_WIRE_53;
wire	[15:0] SYNTHESIZED_WIRE_0;
wire	[15:0] SYNTHESIZED_WIRE_1;
wire	[15:0] SYNTHESIZED_WIRE_2;
wire	[15:0] SYNTHESIZED_WIRE_3;
wire	[15:0] SYNTHESIZED_WIRE_4;
wire	[15:0] SYNTHESIZED_WIRE_5;
wire	[15:0] SYNTHESIZED_WIRE_6;
wire	[15:0] SYNTHESIZED_WIRE_7;
wire	[15:0] SYNTHESIZED_WIRE_8;
wire	[15:0] SYNTHESIZED_WIRE_9;
wire	[15:0] SYNTHESIZED_WIRE_10;
wire	[15:0] SYNTHESIZED_WIRE_11;
wire	[15:0] SYNTHESIZED_WIRE_12;
wire	[15:0] SYNTHESIZED_WIRE_13;
wire	[15:0] SYNTHESIZED_WIRE_14;
wire	[15:0] SYNTHESIZED_WIRE_15;
wire	[15:0] SYNTHESIZED_WIRE_16;
wire	[15:0] SYNTHESIZED_WIRE_17;
wire	[15:0] SYNTHESIZED_WIRE_18;
wire	[15:0] SYNTHESIZED_WIRE_19;
wire	[15:0] SYNTHESIZED_WIRE_20;
wire	[15:0] SYNTHESIZED_WIRE_21;
wire	[15:0] SYNTHESIZED_WIRE_22;
wire	[15:0] SYNTHESIZED_WIRE_23;
wire	[15:0] SYNTHESIZED_WIRE_24;
wire	[15:0] SYNTHESIZED_WIRE_25;
wire	[15:0] SYNTHESIZED_WIRE_26;
wire	[15:0] SYNTHESIZED_WIRE_27;
wire	[15:0] SYNTHESIZED_WIRE_28;
wire	[15:0] SYNTHESIZED_WIRE_29;
wire	[15:0] SYNTHESIZED_WIRE_30;
wire	[15:0] SYNTHESIZED_WIRE_31;
wire	[15:0] SYNTHESIZED_WIRE_32;
wire	[15:0] SYNTHESIZED_WIRE_33;
wire	[15:0] SYNTHESIZED_WIRE_34;
wire	[15:0] SYNTHESIZED_WIRE_35;
wire	[15:0] SYNTHESIZED_WIRE_36;
wire	[15:0] SYNTHESIZED_WIRE_37;
wire	[15:0] SYNTHESIZED_WIRE_38;
wire	[15:0] SYNTHESIZED_WIRE_39;
wire	[15:0] SYNTHESIZED_WIRE_40;
wire	[15:0] SYNTHESIZED_WIRE_41;
wire	[15:0] SYNTHESIZED_WIRE_42;
wire	[15:0] SYNTHESIZED_WIRE_43;
wire	[15:0] SYNTHESIZED_WIRE_44;
wire	SYNTHESIZED_WIRE_45;
wire	SYNTHESIZED_WIRE_46;
wire	SYNTHESIZED_WIRE_47;
wire	[15:0] SYNTHESIZED_WIRE_48;
wire	[15:0] SYNTHESIZED_WIRE_49;
wire	[15:0] SYNTHESIZED_WIRE_50;
wire	[15:0] SYNTHESIZED_WIRE_51;
wire	[15:0] SYNTHESIZED_WIRE_52;

assign	SYNTHESIZED_WIRE_46 = 1;
assign	SYNTHESIZED_WIRE_47 = 1;




ONES	b2v_inst1(
	.ONE_OUTPUT(SYNTHESIZED_WIRE_10));


SixteenWideBusMux	b2v_inst10(
	.Control(SYNTHESIZED_WIRE_53),
	.dataa(SYNTHESIZED_WIRE_0),
	.datab(Running),
	.result(SYNTHESIZED_WIRE_18));


SixteenWideBusMux	b2v_inst11(
	.Control(SYNTHESIZED_WIRE_53),
	.dataa(SYNTHESIZED_WIRE_1),
	.datab(Running),
	.result(SYNTHESIZED_WIRE_19));


SixteenWideBusMux	b2v_inst12(
	.Control(SYNTHESIZED_WIRE_53),
	.dataa(SYNTHESIZED_WIRE_2),
	.datab(Running),
	.result(SYNTHESIZED_WIRE_20));


SixteenWideBusMux	b2v_inst13(
	.Control(SYNTHESIZED_WIRE_53),
	.dataa(SYNTHESIZED_WIRE_3),
	.datab(Running),
	.result(SYNTHESIZED_WIRE_21));


SixteenWideBusMux	b2v_inst14(
	.Control(SYNTHESIZED_WIRE_53),
	.dataa(SYNTHESIZED_WIRE_4),
	.datab(Running),
	.result(SYNTHESIZED_WIRE_22));


SixteenWideBusMux	b2v_inst15(
	.Control(SYNTHESIZED_WIRE_53),
	.dataa(SYNTHESIZED_WIRE_5),
	.datab(Running),
	.result(SYNTHESIZED_WIRE_23));


SixteenWideBusMux	b2v_inst16(
	.Control(SYNTHESIZED_WIRE_53),
	.dataa(SYNTHESIZED_WIRE_6),
	.datab(Running),
	.result(SYNTHESIZED_WIRE_24));


SixteenWideBusMux	b2v_inst17(
	.Control(SYNTHESIZED_WIRE_53),
	.dataa(SYNTHESIZED_WIRE_7),
	.datab(Running),
	.result(SYNTHESIZED_WIRE_25));


SixteenWideBusMux	b2v_inst18(
	.Control(SYNTHESIZED_WIRE_53),
	.dataa(SYNTHESIZED_WIRE_8),
	.datab(Running),
	.result(SYNTHESIZED_WIRE_26));


SixteenWideBusMux	b2v_inst19(
	.Control(SYNTHESIZED_WIRE_53),
	.dataa(SYNTHESIZED_WIRE_9),
	.datab(Running),
	.result(SYNTHESIZED_WIRE_43));


SixteenWideBusMux	b2v_inst2(
	.Control(SYNTHESIZED_WIRE_53),
	.dataa(SYNTHESIZED_WIRE_10),
	.datab(SYNTHESIZED_WIRE_11),
	.result(SELECTED));


SixteenWideBusMux	b2v_inst20(
	.Control(SYNTHESIZED_WIRE_53),
	.dataa(SYNTHESIZED_WIRE_12),
	.datab(Running),
	.result(SYNTHESIZED_WIRE_44));


Registers16bit	b2v_inst21(
	.Control(SELECTED[0]),
	.clk(CLOCK),
	.Reset(RESET),
	.REG_INPUT(SYNTHESIZED_WIRE_13),
	.REG_OUTPUT(SYNTHESIZED_WIRE_27));


Registers16bit	b2v_inst22(
	.Control(SELECTED[1]),
	.clk(CLOCK),
	.Reset(RESET),
	.REG_INPUT(SYNTHESIZED_WIRE_14),
	.REG_OUTPUT(SYNTHESIZED_WIRE_40));


Registers16bit	b2v_inst23(
	.Control(SELECTED[2]),
	.clk(CLOCK),
	.Reset(RESET),
	.REG_INPUT(SYNTHESIZED_WIRE_15),
	.REG_OUTPUT(SYNTHESIZED_WIRE_33));


Registers16bit	b2v_inst24(
	.Control(SELECTED[3]),
	.clk(CLOCK),
	.Reset(RESET),
	.REG_INPUT(SYNTHESIZED_WIRE_16),
	.REG_OUTPUT(SYNTHESIZED_WIRE_34));


Registers16bit	b2v_inst25(
	.Control(SELECTED[4]),
	.clk(CLOCK),
	.Reset(RESET),
	.REG_INPUT(SYNTHESIZED_WIRE_17),
	.REG_OUTPUT(SYNTHESIZED_WIRE_35));


Registers16bit	b2v_inst26(
	.Control(SELECTED[5]),
	.clk(CLOCK),
	.Reset(RESET),
	.REG_INPUT(SYNTHESIZED_WIRE_18),
	.REG_OUTPUT(SYNTHESIZED_WIRE_42));


Registers16bit	b2v_inst27(
	.Control(SELECTED[6]),
	.clk(CLOCK),
	.Reset(RESET),
	.REG_INPUT(SYNTHESIZED_WIRE_19),
	.REG_OUTPUT(SYNTHESIZED_WIRE_36));


Registers16bit	b2v_inst28(
	.Control(SELECTED[7]),
	.clk(CLOCK),
	.Reset(RESET),
	.REG_INPUT(SYNTHESIZED_WIRE_20),
	.REG_OUTPUT(SYNTHESIZED_WIRE_37));


Registers16bit	b2v_inst29(
	.Control(SELECTED[8]),
	.clk(CLOCK),
	.Reset(RESET),
	.REG_INPUT(SYNTHESIZED_WIRE_21),
	.REG_OUTPUT(SYNTHESIZED_WIRE_38));


User_Code_Low	b2v_inst3(
	.b0I(SYNTHESIZED_WIRE_48),
	.b10I(SYNTHESIZED_WIRE_5),
	.b11I(SYNTHESIZED_WIRE_6),
	.b12I(SYNTHESIZED_WIRE_7),
	.b13I(SYNTHESIZED_WIRE_8),
	.b14I(SYNTHESIZED_WIRE_9),
	.b15I(SYNTHESIZED_WIRE_12),
	.b1I(SYNTHESIZED_WIRE_49),
	.b2I(SYNTHESIZED_WIRE_50),
	.b3I(SYNTHESIZED_WIRE_51),
	.b4I(SYNTHESIZED_WIRE_52),
	.b5I(SYNTHESIZED_WIRE_0),
	.b6I(SYNTHESIZED_WIRE_1),
	.b7I(SYNTHESIZED_WIRE_2),
	.b8I(SYNTHESIZED_WIRE_3),
	.b9I(SYNTHESIZED_WIRE_4));


Registers16bit	b2v_inst30(
	.Control(SELECTED[9]),
	.clk(CLOCK),
	.Reset(RESET),
	.REG_INPUT(SYNTHESIZED_WIRE_22),
	.REG_OUTPUT(SYNTHESIZED_WIRE_39));


Registers16bit	b2v_inst31(
	.Control(SELECTED[10]),
	.clk(CLOCK),
	.Reset(RESET),
	.REG_INPUT(SYNTHESIZED_WIRE_23),
	.REG_OUTPUT(SYNTHESIZED_WIRE_28));


Registers16bit	b2v_inst32(
	.Control(SELECTED[11]),
	.clk(CLOCK),
	.Reset(RESET),
	.REG_INPUT(SYNTHESIZED_WIRE_24),
	.REG_OUTPUT(SYNTHESIZED_WIRE_29));


Registers16bit	b2v_inst33(
	.Control(SELECTED[12]),
	.clk(CLOCK),
	.Reset(RESET),
	.REG_INPUT(SYNTHESIZED_WIRE_25),
	.REG_OUTPUT(SYNTHESIZED_WIRE_30));


Registers16bit	b2v_inst34(
	.Control(SELECTED[13]),
	.clk(CLOCK),
	.Reset(RESET),
	.REG_INPUT(SYNTHESIZED_WIRE_26),
	.REG_OUTPUT(SYNTHESIZED_WIRE_41));


C16to1BusMUX	b2v_inst35(
	.muxinput0(SYNTHESIZED_WIRE_27),
	.muxinput10(SYNTHESIZED_WIRE_28),
	.muxinput11(SYNTHESIZED_WIRE_29),
	.muxinput12(SYNTHESIZED_WIRE_30),
	.muxinput14(SYNTHESIZED_WIRE_31),
	.muxinput15(SYNTHESIZED_WIRE_32),
	.muxinput2(SYNTHESIZED_WIRE_33),
	.muxinput3(SYNTHESIZED_WIRE_34),
	.muxinput4(SYNTHESIZED_WIRE_35),
	.muxinput6(SYNTHESIZED_WIRE_36),
	.muxinput7(SYNTHESIZED_WIRE_37),
	.muxinput8(SYNTHESIZED_WIRE_38),
	.muxinput9(SYNTHESIZED_WIRE_39),
	.muxinputone(SYNTHESIZED_WIRE_40),
	.muxintput13(SYNTHESIZED_WIRE_41),
	.muxintput5(SYNTHESIZED_WIRE_42),
	.Select(READ_SELECT),
	.muxresult(IMEM_Output));


Registers16bit	b2v_inst36(
	.Control(SELECTED[14]),
	.clk(CLOCK),
	.Reset(RESET),
	.REG_INPUT(SYNTHESIZED_WIRE_43),
	.REG_OUTPUT(SYNTHESIZED_WIRE_31));


\4to16DecoderWithEnable 	b2v_inst37(
	.Enable(Write_Enable),
	.Decoder_Select(WRITE_SELECT),
	.Decoder_Output(SYNTHESIZED_WIRE_11));


Registers16bit	b2v_inst38(
	.Control(SELECTED[15]),
	.clk(CLOCK),
	.Reset(RESET),
	.REG_INPUT(SYNTHESIZED_WIRE_44),
	.REG_OUTPUT(SYNTHESIZED_WIRE_32));


always@(posedge CLOCK or negedge SYNTHESIZED_WIRE_45 or negedge SYNTHESIZED_WIRE_47)
begin
if (!SYNTHESIZED_WIRE_45)
	begin
	SYNTHESIZED_WIRE_53 <= 0;
	end
else
if (!SYNTHESIZED_WIRE_47)
	begin
	SYNTHESIZED_WIRE_53 <= 1;
	end
else
	begin
	SYNTHESIZED_WIRE_53 <= SYNTHESIZED_WIRE_46;
	end
end

assign	SYNTHESIZED_WIRE_45 =  ~RESET;




SixteenWideBusMux	b2v_inst5(
	.Control(SYNTHESIZED_WIRE_53),
	.dataa(SYNTHESIZED_WIRE_48),
	.datab(Running),
	.result(SYNTHESIZED_WIRE_13));


SixteenWideBusMux	b2v_inst6(
	.Control(SYNTHESIZED_WIRE_53),
	.dataa(SYNTHESIZED_WIRE_49),
	.datab(Running),
	.result(SYNTHESIZED_WIRE_14));


SixteenWideBusMux	b2v_inst7(
	.Control(SYNTHESIZED_WIRE_53),
	.dataa(SYNTHESIZED_WIRE_50),
	.datab(Running),
	.result(SYNTHESIZED_WIRE_15));


SixteenWideBusMux	b2v_inst8(
	.Control(SYNTHESIZED_WIRE_53),
	.dataa(SYNTHESIZED_WIRE_51),
	.datab(Running),
	.result(SYNTHESIZED_WIRE_16));


SixteenWideBusMux	b2v_inst9(
	.Control(SYNTHESIZED_WIRE_53),
	.dataa(SYNTHESIZED_WIRE_52),
	.datab(Running),
	.result(SYNTHESIZED_WIRE_17));

assign	Running = IMEM_INPUT;

endmodule
