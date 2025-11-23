

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
