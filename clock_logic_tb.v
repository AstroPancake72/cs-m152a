`timescale 1ns / 1ps

module clock_logic_tb();
    reg clk, reset, pause, adj_sel, adj_pulse;
    wire [3:0] m1, m0, s1, s0;

    // Instantiate Unit Under Test (UUT)
    clock_logic uut (
        .clk(clk), .reset(reset), .pause(pause), 
        .adj_sel(adj_sel), .adj_pulse(adj_pulse),
        .m1(m1), .m0(m0), .s1(s1), .s0(s0)
    );

    // Generate 100MHz Clock
    always #5 clk = ~clk;

    initial begin
        // Initialize Inputs
        clk = 0; reset = 1; pause = 0; adj_sel = 0; adj_pulse = 0;
        #20 reset = 0; // Release reset

        // Test 1: Normal Ticking (Wait for seconds to increment)
        #200;

        // Test 2: Pause Functionality
        pause = 1;
        #100;
        pause = 0;

        // Test 3: Manual Adjustment (Increment Minutes)
        adj_sel = 1;   // Select Minutes
        #10 adj_pulse = 1; #10 adj_pulse = 0; // One pulse
        #50;
        
        // Test 4: Manual Adjustment (Increment Seconds)
        adj_sel = 0;   // Select Seconds
        #10 adj_pulse = 1; #10 adj_pulse = 0; // One pulse
        #100;

        $finish;
    end
endmodule