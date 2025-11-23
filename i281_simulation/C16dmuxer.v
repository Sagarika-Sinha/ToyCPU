// C16dmuxer.v - Cleaned and fixed 1-to-16 Demultiplexer.
// The original file was corrupted from Quartus generation.
// This implements a standard 1-to-16 Demux where DMUX_SEL[3:0] is the address 
// and DMUX_SEL[4] is the Enable signal (if high, the input 'in' is routed).

module C16dmuxer(
	// Ports:
	in,
	DMUX_SEL,
	DMUXOUT
);

// Demultiplexer Ports:
input wire	in;             // Data input to be routed
input wire	[4:0] DMUX_SEL; // Select lines (Address [3:0], Enable [4])
output reg	[15:0] DMUXOUT; // 16 Output lines

// Define control signals for clarity
wire [3:0] address = DMUX_SEL[3:0];
wire enable = DMUX_SEL[4];

// Initialization is good practice for synthesized designs
initial begin
    DMUXOUT = 16'b0;
end

// Logic to demultiplex the input 'in' to one of the 16 output lines
always @(in or address or enable) begin
    // Default to all zeros if disabled or for the case outside the switch
    DMUXOUT = 16'b0; 
    
    // Check for Enable (DMUX_SEL[4] high)
    if (enable) begin
        // Use a standard case statement based on the 4-bit address
        case (address)
            4'h0: DMUXOUT[0] = in;
            4'h1: DMUXOUT[1] = in;
            4'h2: DMUXOUT[2] = in;
            4'h3: DMUXOUT[3] = in;
            4'h4: DMUXOUT[4] = in;
            4'h5: DMUXOUT[5] = in;
            4'h6: DMUXOUT[6] = in;
            4'h7: DMUXOUT[7] = in;
            4'h8: DMUXOUT[8] = in;
            4'h9: DMUXOUT[9] = in;
            4'hA: DMUXOUT[10] = in;
            4'hB: DMUXOUT[11] = in;
            4'hC: DMUXOUT[12] = in;
            4'hD: DMUXOUT[13] = in;
            4'hE: DMUXOUT[14] = in;
            4'hF: DMUXOUT[15] = in;
            default: DMUXOUT = 16'b0; 
        endcase
    end
end

endmodule