`timescale 1ns / 1ps  // Set the time unit to 1 nanosecond and precision to 1 picosecond

module score_counter_tb;

    // 1. Inputs to the Device Under Test (DUT) are declared as 'reg' 
    //    because we will manually drive their values in an initial block.
    reg clk;
    reg reset;
    reg p1_win_pulse;
    reg p2_win_pulse;

    // 2. Outputs from the DUT are declared as 'wire' 
    //    because we are just observing them.
    wire [3:0] p1_score;
    wire [3:0] p2_score;

    // 3. Instantiate the Device Under Test (DUT)
    //    This connects our testbench signals to your actual score_counter module.
    score_counter uut (
        .clk(clk),
        .reset(reset),
        .p1_win_pulse(p1_win_pulse),
        .p2_win_pulse(p2_win_pulse),
        .p1_score(p1_score),
        .p2_score(p2_score)
    );

    // 4. Clock Generation Logic
    //    This creates a continuous clock signal. 
    //    #5 means toggle every 5 nanoseconds, creating a 10ns clock cycle (100 MHz).
    always begin
        #5 clk = ~clk;
    end

    // 5. Stimulus Block (The actual test sequence)
    initial begin
        // Initialize all inputs to a known starting state
        clk = 0;
        reset = 0;
        p1_win_pulse = 0;
        p2_win_pulse = 0;

        // Wait 10ns, then apply reset
        #10;
        reset = 1;
        
        // Hold reset for 20ns (2 clock cycles), then turn it off
        #20;
        reset = 0;
        #10; // Wait a cycle

        // --- Test Case 1: Player 1 scores a point ---
        p1_win_pulse = 1; // Turn pulse ON
        #10;              // Wait exactly 1 clock cycle
        p1_win_pulse = 0; // Turn pulse OFF
        #20;              // Wait 2 cycles to observe the score change

        // --- Test Case 2: Player 2 scores two points back-to-back ---
        p2_win_pulse = 1; 
        #10;
        p2_win_pulse = 0; 
        #10;              // Idle for a cycle
        p2_win_pulse = 1; 
        #10;
        p2_win_pulse = 0; 
        #20;

        // --- Test Case 3: Both pulse at the exact same time ---
        p1_win_pulse = 1;
        p2_win_pulse = 1;
        #10;
        p1_win_pulse = 0;
        p2_win_pulse = 0;
        #30;

        // --- Test Case 4: Reset the game mid-play ---
        reset = 1;
        #10;
        reset = 0;
        #20;

        // End the simulation
        $display("Simulation complete! Check the waveform to verify scores.");
        $finish;
    end

endmodule
