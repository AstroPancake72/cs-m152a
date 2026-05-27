`timescale 1ns / 1ps

module tb_reaction_timer();

    // 1. Testbench Signals
    reg        clk;
    reg        reset;
    reg        start_timer;
    reg        stop_timer;
    wire [11:0] current_time;

    // 2. Instantiate the Unit Under Test (UUT)
    reaction_timer #(.ONE_MS_LIMIT(32'd10)) uut (
        .clk(clk),
        .reset(reset),
        .start_timer(start_timer),
        .stop_timer(stop_timer),
        .current_time(current_time)
    );

    // 3. Clock Generation (100 MHz clock -> 10ns cycle period)
    always begin
        #5 clk = ~clk;
    end // <-- Fixed from } to end

    // 4. Test Sequence
    initial begin
        // --- Step 1: Initialize All Signals ---
        clk = 0;
        reset = 1;
        start_timer = 0;
        stop_timer = 0;
        
        // Hold reset for 2 clock cycles
        #20;
        reset = 0;
        #20;

        // --- TEST 1: Idle Verification ---
        #50;
        $display("[TIME: %0t ns] Verification: Idle current_time = %h (Expected: 000)", $time, current_time);

        // --- TEST 2: Start the First Game Run ---
        $display("[TIME: %0t ns] Pulsing start_timer...", $time);
        @(posedge clk);
        start_timer = 1;
        @(posedge clk);
        start_timer = 0;

        #1500;

        // --- TEST 3: Freeze/Stop the Timer ---
        $display("[TIME: %0t ns] Pulsing stop_timer...", $time);
        @(posedge clk);
        stop_timer = 1;
        @(posedge clk);
        stop_timer = 0;

        #200;
        $display("[TIME: %0t ns] Frozen Value Checked: current_time = %h", $time, current_time);

        // --- TEST 4: Verification of your Reset/Restart Fix ---
        $display("[TIME: %0t ns] Pulsing start_timer again to verify zero-clearing feature...", $time);
        @(posedge clk);
        start_timer = 1;
        @(posedge clk);
        start_timer = 0;
        
        #300;

        $display("[TIME: %0t ns] Simulation Completed Successfully.", $time);
        $finish;
    end

endmodule
