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
// CREATED		"Wed Nov 19 10:24:11 2025"

module Registers16bit(
	clk,
	Control,
	Reset,
	REG_INPUT,
	REG_OUTPUT
);


input wire	clk;
input wire	Control;
input wire	Reset;
input wire	[15:0] REG_INPUT;
output wire	[15:0] REG_OUTPUT;

reg	[15:0] REG_OUTPUT_ALTERA_SYNTHESIZED;
wire	SYNTHESIZED_WIRE_48;
wire	SYNTHESIZED_WIRE_1;
wire	SYNTHESIZED_WIRE_49;
wire	SYNTHESIZED_WIRE_4;
wire	SYNTHESIZED_WIRE_7;
wire	SYNTHESIZED_WIRE_10;
wire	SYNTHESIZED_WIRE_13;
wire	SYNTHESIZED_WIRE_16;
wire	SYNTHESIZED_WIRE_19;
wire	SYNTHESIZED_WIRE_22;
wire	SYNTHESIZED_WIRE_25;
wire	SYNTHESIZED_WIRE_28;
wire	SYNTHESIZED_WIRE_31;
wire	SYNTHESIZED_WIRE_34;
wire	SYNTHESIZED_WIRE_37;
wire	SYNTHESIZED_WIRE_40;
wire	SYNTHESIZED_WIRE_43;
wire	SYNTHESIZED_WIRE_46;

assign	SYNTHESIZED_WIRE_49 = 1;





always@(posedge clk or negedge SYNTHESIZED_WIRE_48 or negedge SYNTHESIZED_WIRE_49)
begin
if (!SYNTHESIZED_WIRE_48)
	begin
	REG_OUTPUT_ALTERA_SYNTHESIZED[7] <= 0;
	end
else
if (!SYNTHESIZED_WIRE_49)
	begin
	REG_OUTPUT_ALTERA_SYNTHESIZED[7] <= 1;
	end
else
	begin
	REG_OUTPUT_ALTERA_SYNTHESIZED[7] <= SYNTHESIZED_WIRE_1;
	end
end


always@(posedge clk or negedge SYNTHESIZED_WIRE_48 or negedge SYNTHESIZED_WIRE_49)
begin
if (!SYNTHESIZED_WIRE_48)
	begin
	REG_OUTPUT_ALTERA_SYNTHESIZED[8] <= 0;
	end
else
if (!SYNTHESIZED_WIRE_49)
	begin
	REG_OUTPUT_ALTERA_SYNTHESIZED[8] <= 1;
	end
else
	begin
	REG_OUTPUT_ALTERA_SYNTHESIZED[8] <= SYNTHESIZED_WIRE_4;
	end
end


always@(posedge clk or negedge SYNTHESIZED_WIRE_48 or negedge SYNTHESIZED_WIRE_49)
begin
if (!SYNTHESIZED_WIRE_48)
	begin
	REG_OUTPUT_ALTERA_SYNTHESIZED[9] <= 0;
	end
else
if (!SYNTHESIZED_WIRE_49)
	begin
	REG_OUTPUT_ALTERA_SYNTHESIZED[9] <= 1;
	end
else
	begin
	REG_OUTPUT_ALTERA_SYNTHESIZED[9] <= SYNTHESIZED_WIRE_7;
	end
end


always@(posedge clk or negedge SYNTHESIZED_WIRE_48 or negedge SYNTHESIZED_WIRE_49)
begin
if (!SYNTHESIZED_WIRE_48)
	begin
	REG_OUTPUT_ALTERA_SYNTHESIZED[10] <= 0;
	end
else
if (!SYNTHESIZED_WIRE_49)
	begin
	REG_OUTPUT_ALTERA_SYNTHESIZED[10] <= 1;
	end
else
	begin
	REG_OUTPUT_ALTERA_SYNTHESIZED[10] <= SYNTHESIZED_WIRE_10;
	end
end


always@(posedge clk or negedge SYNTHESIZED_WIRE_48 or negedge SYNTHESIZED_WIRE_49)
begin
if (!SYNTHESIZED_WIRE_48)
	begin
	REG_OUTPUT_ALTERA_SYNTHESIZED[11] <= 0;
	end
else
if (!SYNTHESIZED_WIRE_49)
	begin
	REG_OUTPUT_ALTERA_SYNTHESIZED[11] <= 1;
	end
else
	begin
	REG_OUTPUT_ALTERA_SYNTHESIZED[11] <= SYNTHESIZED_WIRE_13;
	end
end


always@(posedge clk or negedge SYNTHESIZED_WIRE_48 or negedge SYNTHESIZED_WIRE_49)
begin
if (!SYNTHESIZED_WIRE_48)
	begin
	REG_OUTPUT_ALTERA_SYNTHESIZED[12] <= 0;
	end
else
if (!SYNTHESIZED_WIRE_49)
	begin
	REG_OUTPUT_ALTERA_SYNTHESIZED[12] <= 1;
	end
else
	begin
	REG_OUTPUT_ALTERA_SYNTHESIZED[12] <= SYNTHESIZED_WIRE_16;
	end
end


always@(posedge clk or negedge SYNTHESIZED_WIRE_48 or negedge SYNTHESIZED_WIRE_49)
begin
if (!SYNTHESIZED_WIRE_48)
	begin
	REG_OUTPUT_ALTERA_SYNTHESIZED[13] <= 0;
	end
else
if (!SYNTHESIZED_WIRE_49)
	begin
	REG_OUTPUT_ALTERA_SYNTHESIZED[13] <= 1;
	end
else
	begin
	REG_OUTPUT_ALTERA_SYNTHESIZED[13] <= SYNTHESIZED_WIRE_19;
	end
end


always@(posedge clk or negedge SYNTHESIZED_WIRE_48 or negedge SYNTHESIZED_WIRE_49)
begin
if (!SYNTHESIZED_WIRE_48)
	begin
	REG_OUTPUT_ALTERA_SYNTHESIZED[14] <= 0;
	end
else
if (!SYNTHESIZED_WIRE_49)
	begin
	REG_OUTPUT_ALTERA_SYNTHESIZED[14] <= 1;
	end
else
	begin
	REG_OUTPUT_ALTERA_SYNTHESIZED[14] <= SYNTHESIZED_WIRE_22;
	end
end


Block3	b2v_inst18(
	.i0(REG_OUTPUT_ALTERA_SYNTHESIZED[1]),
	.i1(REG_INPUT[1]),
	.sel(Control),
	.mxout(SYNTHESIZED_WIRE_31));

assign	SYNTHESIZED_WIRE_48 =  ~Reset;


Block3	b2v_inst2(
	.i0(REG_OUTPUT_ALTERA_SYNTHESIZED[0]),
	.i1(REG_INPUT[0]),
	.sel(Control),
	.mxout(SYNTHESIZED_WIRE_25));


Block3	b2v_inst20(
	.i0(REG_OUTPUT_ALTERA_SYNTHESIZED[2]),
	.i1(REG_INPUT[2]),
	.sel(Control),
	.mxout(SYNTHESIZED_WIRE_34));


Block3	b2v_inst21(
	.i0(REG_OUTPUT_ALTERA_SYNTHESIZED[3]),
	.i1(REG_INPUT[3]),
	.sel(Control),
	.mxout(SYNTHESIZED_WIRE_37));


Block3	b2v_inst22(
	.i0(REG_OUTPUT_ALTERA_SYNTHESIZED[4]),
	.i1(REG_INPUT[4]),
	.sel(Control),
	.mxout(SYNTHESIZED_WIRE_40));


Block3	b2v_inst23(
	.i0(REG_OUTPUT_ALTERA_SYNTHESIZED[5]),
	.i1(REG_INPUT[5]),
	.sel(Control),
	.mxout(SYNTHESIZED_WIRE_43));


Block3	b2v_inst24(
	.i0(REG_OUTPUT_ALTERA_SYNTHESIZED[6]),
	.i1(REG_INPUT[6]),
	.sel(Control),
	.mxout(SYNTHESIZED_WIRE_46));


Block3	b2v_inst25(
	.i0(REG_OUTPUT_ALTERA_SYNTHESIZED[7]),
	.i1(REG_INPUT[7]),
	.sel(Control),
	.mxout(SYNTHESIZED_WIRE_1));


Block3	b2v_inst26(
	.i0(REG_OUTPUT_ALTERA_SYNTHESIZED[8]),
	.i1(REG_INPUT[8]),
	.sel(Control),
	.mxout(SYNTHESIZED_WIRE_4));


Block3	b2v_inst27(
	.i0(REG_OUTPUT_ALTERA_SYNTHESIZED[9]),
	.i1(REG_INPUT[9]),
	.sel(Control),
	.mxout(SYNTHESIZED_WIRE_7));


Block3	b2v_inst28(
	.i0(REG_OUTPUT_ALTERA_SYNTHESIZED[10]),
	.i1(REG_INPUT[10]),
	.sel(Control),
	.mxout(SYNTHESIZED_WIRE_10));


Block3	b2v_inst29(
	.i0(REG_OUTPUT_ALTERA_SYNTHESIZED[11]),
	.i1(REG_INPUT[11]),
	.sel(Control),
	.mxout(SYNTHESIZED_WIRE_13));


always@(posedge clk or negedge SYNTHESIZED_WIRE_48 or negedge SYNTHESIZED_WIRE_49)
begin
if (!SYNTHESIZED_WIRE_48)
	begin
	REG_OUTPUT_ALTERA_SYNTHESIZED[0] <= 0;
	end
else
if (!SYNTHESIZED_WIRE_49)
	begin
	REG_OUTPUT_ALTERA_SYNTHESIZED[0] <= 1;
	end
else
	begin
	REG_OUTPUT_ALTERA_SYNTHESIZED[0] <= SYNTHESIZED_WIRE_25;
	end
end


Block3	b2v_inst30(
	.i0(REG_OUTPUT_ALTERA_SYNTHESIZED[12]),
	.i1(REG_INPUT[12]),
	.sel(Control),
	.mxout(SYNTHESIZED_WIRE_16));


Block3	b2v_inst31(
	.i0(REG_OUTPUT_ALTERA_SYNTHESIZED[13]),
	.i1(REG_INPUT[13]),
	.sel(Control),
	.mxout(SYNTHESIZED_WIRE_19));


Block3	b2v_inst32(
	.i0(REG_OUTPUT_ALTERA_SYNTHESIZED[14]),
	.i1(REG_INPUT[14]),
	.sel(Control),
	.mxout(SYNTHESIZED_WIRE_22));


always@(posedge clk or negedge SYNTHESIZED_WIRE_48 or negedge SYNTHESIZED_WIRE_49)
begin
if (!SYNTHESIZED_WIRE_48)
	begin
	REG_OUTPUT_ALTERA_SYNTHESIZED[15] <= 0;
	end
else
if (!SYNTHESIZED_WIRE_49)
	begin
	REG_OUTPUT_ALTERA_SYNTHESIZED[15] <= 1;
	end
else
	begin
	REG_OUTPUT_ALTERA_SYNTHESIZED[15] <= SYNTHESIZED_WIRE_28;
	end
end


Block3	b2v_inst34(
	.i0(REG_OUTPUT_ALTERA_SYNTHESIZED[15]),
	.i1(REG_INPUT[15]),
	.sel(Control),
	.mxout(SYNTHESIZED_WIRE_28));


always@(posedge clk or negedge SYNTHESIZED_WIRE_48 or negedge SYNTHESIZED_WIRE_49)
begin
if (!SYNTHESIZED_WIRE_48)
	begin
	REG_OUTPUT_ALTERA_SYNTHESIZED[1] <= 0;
	end
else
if (!SYNTHESIZED_WIRE_49)
	begin
	REG_OUTPUT_ALTERA_SYNTHESIZED[1] <= 1;
	end
else
	begin
	REG_OUTPUT_ALTERA_SYNTHESIZED[1] <= SYNTHESIZED_WIRE_31;
	end
end


always@(posedge clk or negedge SYNTHESIZED_WIRE_48 or negedge SYNTHESIZED_WIRE_49)
begin
if (!SYNTHESIZED_WIRE_48)
	begin
	REG_OUTPUT_ALTERA_SYNTHESIZED[2] <= 0;
	end
else
if (!SYNTHESIZED_WIRE_49)
	begin
	REG_OUTPUT_ALTERA_SYNTHESIZED[2] <= 1;
	end
else
	begin
	REG_OUTPUT_ALTERA_SYNTHESIZED[2] <= SYNTHESIZED_WIRE_34;
	end
end


always@(posedge clk or negedge SYNTHESIZED_WIRE_48 or negedge SYNTHESIZED_WIRE_49)
begin
if (!SYNTHESIZED_WIRE_48)
	begin
	REG_OUTPUT_ALTERA_SYNTHESIZED[3] <= 0;
	end
else
if (!SYNTHESIZED_WIRE_49)
	begin
	REG_OUTPUT_ALTERA_SYNTHESIZED[3] <= 1;
	end
else
	begin
	REG_OUTPUT_ALTERA_SYNTHESIZED[3] <= SYNTHESIZED_WIRE_37;
	end
end


always@(posedge clk or negedge SYNTHESIZED_WIRE_48 or negedge SYNTHESIZED_WIRE_49)
begin
if (!SYNTHESIZED_WIRE_48)
	begin
	REG_OUTPUT_ALTERA_SYNTHESIZED[4] <= 0;
	end
else
if (!SYNTHESIZED_WIRE_49)
	begin
	REG_OUTPUT_ALTERA_SYNTHESIZED[4] <= 1;
	end
else
	begin
	REG_OUTPUT_ALTERA_SYNTHESIZED[4] <= SYNTHESIZED_WIRE_40;
	end
end


always@(posedge clk or negedge SYNTHESIZED_WIRE_48 or negedge SYNTHESIZED_WIRE_49)
begin
if (!SYNTHESIZED_WIRE_48)
	begin
	REG_OUTPUT_ALTERA_SYNTHESIZED[5] <= 0;
	end
else
if (!SYNTHESIZED_WIRE_49)
	begin
	REG_OUTPUT_ALTERA_SYNTHESIZED[5] <= 1;
	end
else
	begin
	REG_OUTPUT_ALTERA_SYNTHESIZED[5] <= SYNTHESIZED_WIRE_43;
	end
end


always@(posedge clk or negedge SYNTHESIZED_WIRE_48 or negedge SYNTHESIZED_WIRE_49)
begin
if (!SYNTHESIZED_WIRE_48)
	begin
	REG_OUTPUT_ALTERA_SYNTHESIZED[6] <= 0;
	end
else
if (!SYNTHESIZED_WIRE_49)
	begin
	REG_OUTPUT_ALTERA_SYNTHESIZED[6] <= 1;
	end
else
	begin
	REG_OUTPUT_ALTERA_SYNTHESIZED[6] <= SYNTHESIZED_WIRE_46;
	end
end

assign	REG_OUTPUT = REG_OUTPUT_ALTERA_SYNTHESIZED;

endmodule
