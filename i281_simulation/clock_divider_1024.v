module clock_divider_1024 (
    input wire CLK_IN,    // The input clock
    output wire CLK_OUT  // The output clock divided by 1024
);

// We need a division factor of 1024.
// A 10-bit counter (0 to 1023) is required to count 1024 clock cycles.
reg [9:0] counter = 10'd0;

// Register to hold the state of the output clock
reg CLK_OUT_reg = 1'b0;

// Output assignment
assign CLK_OUT = CLK_OUT_reg;

// The division logic. It toggles the output clock every 512 input clock cycles
// (512 cycles HIGH, 512 cycles LOW = 1024 cycle period).
always @(posedge CLK_IN) begin
    // Check if the counter has reached the count for half the period (512 - 1 = 511)
    if (counter == 10'd511) begin
        // Toggle the output clock
        CLK_OUT_reg <= ~CLK_OUT_reg;
        // Reset the counter to start a new cycle
        counter <= 10'd0;
    end
    else begin
        // Increment the counter
        counter <= counter + 10'd1;
    end
end

endmodule
