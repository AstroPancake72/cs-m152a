`timescale 1ns/1ps

module tb_sseg_driver;

    reg clk;
    reg [3:0] d3, d2, d1, d0;
    wire [6:0] seg;
    wire [3:0] an;

    // DUT
    sseg_driver uut (
        .clk(clk),
        .d3(d3),
        .d2(d2),
        .d1(d1),
        .d0(d0),
        .seg(seg),
        .an(an)
    );

    // 100 MHz clock: 10 ns period
    initial begin
        clk = 0;
        forever #5 clk = ~clk;
    end

    initial begin
        // Test value: display 1234
        d3 = 4'h1;
        d2 = 4'h2;
        d1 = 4'h3;
        d0 = 4'h4;

        // Run long enough to see active_digit change
        #3_000_000;

        // Test value: display 9876
        d3 = 4'h9;
        d2 = 4'h8;
        d1 = 4'h7;
        d0 = 4'h6;

        #3_000_000;

        // Test invalid hex values A B C D
        // seg should go blank because default case = 1111111
        d3 = 4'hA;
        d2 = 4'hB;
        d1 = 4'hC;
        d0 = 4'hD;

        #3_000_000;

        $stop;
    end

endmodule
