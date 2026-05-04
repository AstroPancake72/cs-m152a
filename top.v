module top(
    input clk,
    input btnC,        // Reset
    input btnL,        // Pause
    input [1:0] sw,    // sw[0]: Select (Min/Sec), sw[1]: Adjust Enable
    output [6:0] seg,
    output dp,
    output [3:0] an
);
    assign dp = 1;

    wire rst, pause;
    // Debounce the buttons; switches are generally stable but we'll 
    // debounce the logic for consistency.
    debouncer db_rst(.clk(clk), .noisy_in(btnC), .clean_out(rst));
    debouncer db_ps (.clk(clk), .noisy_in(btnL), .clean_out(pause));

    wire [3:0] m1, m0, s1, s0;

    clock_logic core (
        .clk(clk),
        .reset(rst),
        .pause(pause),
        .adj_sel(sw[0]),
        .adj_en(sw[1]), // Now using the switch directly
        .m1(m1), .m0(m0), .s1(s1), .s0(s0)
    );

    sseg_driver display (
        .clk(clk),
        .d3(m1), .d2(m0), .d1(s1), .d0(s0),
        .seg(seg),
        .an(an)
    );
endmodule