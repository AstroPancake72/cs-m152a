`define SIMULATION // Forces the controller to use a super short 20-cycle timer
`timescale 1ns / 1ps

module tb_display_controller();

    // 1. Testbench Signals
    reg        clk;
    reg        reset;
    reg        result_active;
    reg  [3:0] p1_score;
    reg  [3:0] p2_score;
    reg  [11:0] fastest_time;

    wire [3:0] d3, d2, d1, d0;
    wire       result_display_done;

    // 2. Instantiate the Unit Under Test (UUT) - Overriding parameter to 20 cycles
    display_controller #(.TWO_SECONDS(28'd20)) uut (
        .clk(clk),
        .reset(reset),
        .result_active(result_active),
        .p1_score(p1_score),
        .p2_score(p2_score),
        .fastest_time(fastest_time),
        .d3(d3), .d2(d2), .d1(d1), .d0(d0),
        .result_display_done(result_display_done)
    );

    // 3. Clock Generation (100 MHz, 10ns period)
    always begin
        #5 clk = ~clk;
    end

    // 4. Test Sequence
    initial begin
        // Initialize Inputs
        clk = 0;
        reset = 1;
        result_active = 0;
        
        // Setup some mock game data to test
        p1_score     = 4'd3;       // Player 1 has 3 wins
        p2_score     = 4'd5;       // Player 2 has 5 wins
        fastest_time = 12'h629;    // Changed to 629 to match your previous waveform values!
        
        #20;
        reset = 0;                 // Release reset
        #20;

        // --- TEST PHASE 1: Game is running ---
        // result_active is 0, so the display outputs should be all 0s
        #50;

        // --- TEST PHASE 2: Round Ends! Activate Results ---
        $display("Activating results mode...");
        result_active = 1;         // FSM kicks off the display sequence

        // We wait 600ns. This gives the 20-cycle (200ns) score phase 
        // and 20-cycle (200ns) time phase plenty of time to fully execute!
        #600;

        // --- TEST PHASE 3: Turn off results ---
        result_active = 0;
        #50;

        $finish;
    end

endmodule
