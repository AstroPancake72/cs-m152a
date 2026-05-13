// ============================================================
// Testbench for debouncer module
// File: tb_debouncer.v
// ============================================================

`timescale 1ns/1ps

module tb_debouncer;

    // --------------------------------------------------------
    // Testbench signals
    // --------------------------------------------------------
    reg clk;
    reg noisy_in;
    wire clean_out;

    // --------------------------------------------------------
    // Instantiate DUT (Device Under Test)
    // --------------------------------------------------------
    debouncer uut (
        .clk(clk),
        .noisy_in(noisy_in),
        .clean_out(clean_out)
    );

    // --------------------------------------------------------
    // Clock generation
    // 10ns period = 100 MHz
    // --------------------------------------------------------
    initial begin
        clk = 0;
        forever #5 clk = ~clk;
    end

    // --------------------------------------------------------
    // Test sequence
    // --------------------------------------------------------
    initial begin

        // --------------------------------------------
        // Initial values
        // --------------------------------------------
        noisy_in = 0;

        // Wait a little
        #100;

        // ============================================
        // TEST 1:
        // Quick noisy bounce
        // clean_out should NOT change
        // ============================================
        $display("TEST 1: Noise bouncing");

        noisy_in = 1;
        #20;

        noisy_in = 0;
        #20;

        noisy_in = 1;
        #20;

        noisy_in = 0;
        #20;

        // ============================================
        // TEST 2:
        // Hold signal HIGH long enough
        // clean_out SHOULD become 1
        // ============================================
        $display("TEST 2: Stable HIGH input");

        noisy_in = 1;

        // Wait enough clock cycles
        // 1_000_000 cycles * 10ns = 10ms
        #(10_000_000);

        // ============================================
        // TEST 3:
        // More bouncing while HIGH
        // clean_out should remain stable
        // ============================================
        $display("TEST 3: Noise while HIGH");

        noisy_in = 0;
        #30;

        noisy_in = 1;
        #30;

        noisy_in = 0;
        #30;

        noisy_in = 1;
        #30;

        // ============================================
        // TEST 4:
        // Hold LOW long enough
        // clean_out SHOULD become 0
        // ============================================
        $display("TEST 4: Stable LOW input");

        noisy_in = 0;

        #(10_000_000);

        // ============================================
        // Finish simulation
        // ============================================
        $display("Simulation Finished");
        $stop;
    end

endmodule
