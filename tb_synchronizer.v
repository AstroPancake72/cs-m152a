`timescale 1ns / 1ps

module tb_synchronizer();

    // 1. Signals to connect to the synchronizer module
    reg clk;
    reg reset;
    reg raw_button;
    wire synced_button;

    // 2. Instantiate your synchronizer module
    synchronizer uut (
        .clk(clk),
        .reset(reset),
        .raw_button(raw_button),
        .synced_button(synced_button)
    );

    // 3. Generate a 100 MHz clock (10ns total period: 5ns low, 5ns high)
    always begin
        #5 clk = ~clk;
    end

    // 4. The Single Test Sequence
    initial begin
        // --- Step A: Initialize everything ---
        clk = 0;
        reset = 1;
        raw_button = 0;
        #20;             // Wait 2 full clock cycles while holding reset
        reset = 0;       // Release reset
        #10;             // Wait another cycle for stability

        // --- Step B: The Button Press ---
        // We wait for a rising clock edge, then press the button 2ns later.
        // This simulates a real human pressing a button completely out of sync with the clock.
        @(posedge clk);
        #2; 
        $display("[TIME: %0t ns] ---> Physical Button IS PRESSED (raw_button = 1)", $time);
        raw_button = 1;

        // --- Step C: Watch it flow through the clock cycles ---
        @(posedge clk);
        #1; // Check right after the 1st clock edge
        $display("[TIME: %0t ns] Clock Edge 1: stage1_reg caught it, but synced_button is still: %b", $time, synced_button);

        @(posedge clk);
        #1; // Check right after the 2nd clock edge
        $display("[TIME: %0t ns] Clock Edge 2: SUCCESS! The signal stabilized. synced_button is now: %b", $time, synced_button);

        // Keep it pressed for a little bit
        #30;

        // --- Step D: The Button Release ---
        @(posedge clk);
        #2;
        $display("[TIME: %0t ns] ---> Physical Button IS RELEASED (raw_button = 0)", $time);
        raw_button = 0;

        // --- Step E: Watch the release flow through ---
        @(posedge clk);
        #1;
        $display("[TIME: %0t ns] Clock Edge 1 after release: synced_button is still: %b", $time, synced_button);

        @(posedge clk);
        #1;
        $display("[TIME: %0t ns] Clock Edge 2 after release: synced_button is back to: %b", $time, synced_button);

        #20;
        $finish;
    end

endmodule
