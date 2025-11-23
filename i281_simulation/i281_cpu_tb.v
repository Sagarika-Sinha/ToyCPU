`timescale 1ns / 1ps

module i281_cpu_tb;

    //===========================
    // Clock and Reset
    //===========================
    reg Board_Clock = 0;
    reg Auto_Clock  = 0;
    reg Turbo_Mode  = 0;
    reg Manual_Clock = 0;
    reg Reset_In    = 1; // start with reset
    reg Register_View = 0;
    reg Direct_Video_Map = 0;

    //===========================
    // Switches and Pins
    //===========================
    reg [17:0] Switch_Input = 0;
    reg pin_name1 = 0;
    reg pin_name2 = 0;
    reg pin_name3 = 0;
    reg pin_name4 = 0;
    reg pin_name5 = 0;
    reg pin_name6 = 0;

    //===========================
    // Seven segment outputs
    //===========================
    wire [6:0] Seven_SegOut0;
    wire [6:0] Seven_SegOut1;
    wire [6:0] Seven_SegOut2;
    wire [6:0] Seven_SegOut3;
    wire [6:0] Seven_SegOut4;
    wire [6:0] Seven_SegOut5;
    wire [6:0] Seven_SegOut6;
    wire [6:0] Seven_SegOut7;

    //===========================
    // Other ports (IMMEDVAL, OPCODE, REGx) 
    // Tie unused signals to 0
    //===========================
    wire [7:0] IMMEDVAL0 = 0;
    wire [7:0] IMMEDVAL1 = 0;
    wire [7:0] IMMEDVAL2 = 0;
    wire [7:0] IMMEDVAL3 = 0;
    wire [7:0] IMMEDVAL4 = 0;
    wire [7:0] IMMEDVAL5 = 0;
    wire [7:0] IMMEDVAL6 = 0;
    wire [7:0] IMMEDVAL7 = 0;

    wire OPCODE0 = 0;
    wire OPCODE1 = 0;
    wire OPCODE2 = 0;
    wire OPCODE3 = 0;

    wire REG1_ZERO = 0;
    wire REG1_ONE  = 0;
    wire REG2_ZERO = 0;
    wire REG2_ONE  = 0;

    //===========================
    // Instantiate CPU
    //===========================
    i281_CPU uut (
        .Board_Clock(Board_Clock),
        .Auto_Clock(Auto_Clock),
        .Turbo_Mode(Turbo_Mode),
        .Manual_Clock(Manual_Clock),
        .Reset_In(Reset_In),
        .Register_View(Register_View),
        .Direct_Video_Map(Direct_Video_Map),
        .Switch_Input(Switch_Input),
        .pin_name1(pin_name1),
        .pin_name2(pin_name2),
        .pin_name3(pin_name3),
        .pin_name4(pin_name4),
        .pin_name5(pin_name5),
        .pin_name6(pin_name6),
        .Seven_SegOut0(Seven_SegOut0),
        .Seven_SegOut1(Seven_SegOut1),
        .Seven_SegOut2(Seven_SegOut2),
        .Seven_SegOut3(Seven_SegOut3),
        .Seven_SegOut4(Seven_SegOut4),
        .Seven_SegOut5(Seven_SegOut5),
        .Seven_SegOut6(Seven_SegOut6),
        .Seven_SegOut7(Seven_SegOut7),
        .IMMEDVAL0(IMMEDVAL0),
        .IMMEDVAL1(IMMEDVAL1),
        .IMMEDVAL2(IMMEDVAL2),
        .IMMEDVAL3(IMMEDVAL3),
        .IMMEDVAL4(IMMEDVAL4),
        .IMMEDVAL5(IMMEDVAL5),
        .IMMEDVAL6(IMMEDVAL6),
        .IMMEDVAL7(IMMEDVAL7),
        .OPCODE0(OPCODE0),
        .OPCODE1(OPCODE1),
        .OPCODE2(OPCODE2),
        .OPCODE3(OPCODE3),
        .REG1_ZERO(REG1_ZERO),
        .REG1_ONE(REG1_ONE),
        .REG2_ZERO(REG2_ZERO),
        .REG2_ONE(REG2_ONE)
    );

    //===========================
    // Clock generation (50MHz)
    //===========================
    always #10 Board_Clock = ~Board_Clock;

    //===========================
    // Load memory files
    //===========================
    initial begin
        $readmemb("User_Code_Low.v",  uut.Code_Low);
        $readmemb("User_Code_High.v", uut.Code_High);
        $readmemb("User_Data.v",      uut.Data_Mem);

        // release reset after 20ns
        #20 Reset_In = 0;

        // Enable manual clock (if needed)
        Manual_Clock = 1;
    end

    //===========================
    // Monitor DMEM and Registers
    //===========================
    integer i;
    always @(posedge Board_Clock) begin
        $display("----- Cycle -----");
        $display("Registers: A=%0d B=%0d C=%0d D=%0d",
                  uut.RegA, uut.RegB, uut.RegC, uut.RegD);

        $display("Data Memory [0-7]:");
        for (i=0; i<8; i=i+1) begin
            $write("%0d ", uut.Data_Mem[i]);
        end
        $display("\nSeven Segments (HEX0-HEX7): %b %b %b %b %b %b %b %b",
                  Seven_SegOut0, Seven_SegOut1, Seven_SegOut2, Seven_SegOut3,
                  Seven_SegOut4, Seven_SegOut5, Seven_SegOut6, Seven_SegOut7);
    end

    //===========================
    // Simulation stop
    //===========================
    initial begin
        #2000; // run enough cycles for BubbleSort to finish
        $stop;
    end

endmodule
