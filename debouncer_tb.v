`timescale 1ns / 1ps

module debouncer_tb();

    // Inputs
    reg clk;
    reg noisy_in;

    // Outputs
    wire clean_out;

    // Instantiate the Unit Under Test (UUT)
    debouncer uut (
        .clk(clk), 
        .noisy_in(noisy_in), 
        .clean_out(clean_out)
    );

    // Clock generation (100MHz -> 10ns period)
    always #5 clk = ~clk;

    initial begin
        // Initialize Inputs
        clk = 0;
        noisy_in = 0;

        // Wait for global reset to settle
        #100;
        
        // --- Simulate Button Press with Noise ---
        $display("Starting noisy press...");
        noisy_in = 1; #20; 
        noisy_in = 0; #10;
        noisy_in = 1; #30;
        noisy_in = 0; #10;
        
        // Settle at high
        noisy_in = 1; 
        
        // We need to wait for > 1,000,000 clock cycles.
        // At 10ns per cycle, that's 10ms.
        #10000000000; 
        
        if (clean_out == 1) 
            $display("Success: Signal debounced to High.");
        else 
            $display("Failure: Signal did not go High.");

        // --- Simulate Button Release with Noise ---
        $display("Starting noisy release...");
        noisy_in = 0; #15;
        noisy_in = 1; #25;
        noisy_in = 0; #10;
        noisy_in = 1; #5;
        
        // Settle at low
        noisy_in = 0;
        
        #100000000;

        if (clean_out == 0) 
            $display("Success: Signal debounced to Low.");
        else 
            $display("Failure: Signal did not go Low.");

        $finish;
    end
      
endmodule
