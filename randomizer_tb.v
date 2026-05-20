`timescale 1ns / 1ps

module randomizer_tb;

    // Inputs
    reg clk;
    reg random_data_ready;
    reg resetn;

    // Outputs
    wire [31:0] random_data_output;

    // Instantiate the Unit Under Test (UUT)
    randomizer uut (
        .clk(clk),
        .random_data_ready(random_data_ready),
        .random_data_output(random_data_output),
        .resetn(resetn)
    );

    // Clock generation (50 MHz -> 20ns period)
    always #10 clk = ~clk;

    initial begin
        // Initialize Inputs
        clk = 0;
        resetn = 0;
        random_data_ready = 0;

        // --- SIMULATION WORKAROUND FOR RING OSCILLATORS ---
        // Pure combinatorial loops sit in an undefined (X) state in simulation.
        // We force an initial state to kickstart the oscillation simulation.
        force uut.ring_bits5 = 5'b01010;
        force uut.ring_bits3 = 3'b010;
        #1;
        release uut.ring_bits5;
        release uut.ring_bits3;
        // --------------------------------------------------

        // Hold reset for 40ns
        #40;
        resetn = 1;
        $display("[TB] Reset released. Beginning random data collection...");

        // Wait for the randomizer to gather 32 bits of data
        // This should take 32 clock cycles (approx 640ns)
        #700;

        // Check if data is ready, then pulse 'random_data_ready' to accept it
        $display("[TB] Reading Random Word 1: 32'h%h", random_data_output);
        random_data_ready = 1;
        @(posedge clk);
        random_data_ready = 0;

        // Wait for a second 32-bit random word to build up
        #700;
        $display("[TB] Reading Random Word 2: 32'h%h", random_data_output);
        random_data_ready = 1;
        @(posedge clk);
        random_data_ready = 0;

        // Let it run a bit more, then stop simulation
        #100;
        $display("[TB] Simulation Finished.");
        $finish;
    end
      
endmodule
