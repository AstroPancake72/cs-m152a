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
    reg [25:0] blink_ticker;
    reg blink_state;
    
    wire rst, pause;
    // Debounce the buttons; switches are generally stable but we'll 
    // debounce the logic for consistency.
    debouncer db_rst(.clk(clk), .noisy_in(btnC), .clean_out(rst));
    debouncer db_ps (.clk(clk), .noisy_in(btnL), .clean_out(pause));

    wire [3:0] m1, m0, s1, s0;
    
    wire [3:0] disp_m1, disp_m0, disp_s1, disp_s0;

    // If adjusting minutes AND blink_state is 0, show 'blank' (hex F), else show actual value
    assign disp_m1 = (sw[1] && sw[0] && !blink_state) ? 4'hF : m1;
    assign disp_m0 = (sw[1] && sw[0] && !blink_state) ? 4'hF : m0;

    // If adjusting seconds AND blink_state is 0, show 'blank', else show actual value
    assign disp_s1 = (sw[1] && !sw[0] && !blink_state) ? 4'hF : s1;
    assign disp_s0 = (sw[1] && !sw[0] && !blink_state) ? 4'hF : s0;

    clock_logic core (
        .clk(clk),
        .reset(rst),
        .pause(pause),
        .adj_sel(sw[0]),
        .adj_en(sw[1]),
        .m1(m1), .m0(m0), .s1(s1), .s0(s0)
    );

    sseg_driver display (
        .clk(clk),
        .d3(disp_m1), .d2(disp_m0), .d1(disp_s1), .d0(disp_s0), // Use masked values
        .seg(seg),
        .an(an)
    );
    
    always @(posedge clk) begin
    if (!sw[1]) begin
        blink_ticker <= 0;
        blink_state <= 1;
    end else begin
        if (blink_ticker >= 16_666_667) begin // Half-period for 3Hz (approx 1/6th of a second)
            blink_ticker <= 0;
            blink_state <= !blink_state;
        end else begin
            blink_ticker <= blink_ticker + 1;
        end
    end
end
endmodule
