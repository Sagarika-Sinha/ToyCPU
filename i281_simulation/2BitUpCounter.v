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
// CREATED		"Wed Nov 19 10:23:15 2025"

module \2BitUpCounter (
	Clock,
	Clear,
	Q0,
	Q1
);


input wire	Clock;
input wire	Clear;
output wire	Q0;
output reg	Q1;

wire	SYNTHESIZED_WIRE_5;
wire	SYNTHESIZED_WIRE_6;
reg	TFF_inst;

assign	Q0 = TFF_inst;
assign	SYNTHESIZED_WIRE_5 = 1;




always@(posedge Clock or negedge SYNTHESIZED_WIRE_6 or negedge SYNTHESIZED_WIRE_5)
begin
if (!SYNTHESIZED_WIRE_6)
	begin
	TFF_inst <= 0;
	end
else
if (!SYNTHESIZED_WIRE_5)
	begin
	TFF_inst <= 1;
	end
else
	TFF_inst <= TFF_inst ^ SYNTHESIZED_WIRE_5;
end


always@(posedge Clock or negedge SYNTHESIZED_WIRE_6 or negedge SYNTHESIZED_WIRE_5)
begin
if (!SYNTHESIZED_WIRE_6)
	begin
	Q1 <= 0;
	end
else
if (!SYNTHESIZED_WIRE_5)
	begin
	Q1 <= 1;
	end
else
	Q1 <= Q1 ^ TFF_inst;
end

assign	SYNTHESIZED_WIRE_6 =  ~Clear;



endmodule
