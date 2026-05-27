`timescale 1ns / 1ps

module top(
    input clk,
    input btnL,        // Left Player button
    input btnR,        // Right Player button
    input btnU,        // System Reset / Reset Game
    output [6:0] seg,
    output dp,
    output [3:0] an
);
    assign dp = 1'b1; // Turn off decimal point (active low)
    
    // Cleaned up signals from debouncers
    wire rst;
    wire p1_stop;
    wire p2_stop;
    
    // Debounce the physical inputs to prevent double-triggers
    debouncer db_rst(.clk(clk), .noisy_in(btnU), .clean_out(rst));
    debouncer db_p1 (.clk(clk), .noisy_in(btnL), .clean_out(p1_stop));
    debouncer db_p2 (.clk(clk), .noisy_in(btnR), .clean_out(p2_stop));

    // Game state tracking logic
    reg  game_active;
    wire start_pulse;
    wire stop_pulse;
    
    // If either player presses their button and the game is active, stop the clock
    assign stop_pulse = (p1_stop || p2_stop) && game_active;
    
    // Automatically trigger the start pulse right as Reset is released
    // (You can also map this to another button combination if you choose)
    assign start_pulse = ~rst && !game_active && (clk_counter_init == 0);

    reg [1:0] clk_counter_init; // Simple state tracker to initiate start on release of reset

    always @(posedge clk or posedge rst) begin
        if (rst) begin
            game_active <= 1'b0;
            clk_counter_init <= 2'b0;
        end else begin
            if (start_pulse) begin
                game_active <= 1'b1;
                clk_counter_init <= 2'b1;
            end else if (stop_pulse) begin
                game_active <= 1'b0;
            end
        end
    end

    // Connection wire from reaction timer to display
    wire [15:0] reaction_bcd;

    // Instantiate your Reaction Timer module
    // Assuming a standard 100MHz clock, ONE_MS_LIMIT = 100,000 cycles per ms
    reaction_timer #(
        .ONE_MS_LIMIT(100_000)
    ) rt_inst (
        .clk(clk),
        .reset(rst),
        .start_timer(start_pulse),
        .stop_timer(stop_pulse),
        .current_time(reaction_bcd)
    );

    // Split the BCD output from the reaction timer to drive the segments
    wire [3:0] d3, d2, d1, d0;
    assign d3 = reaction_bcd[15:12]; // Thousands place
    assign d2 = reaction_bcd[11:8]; // Hundreds place
    assign d1 = reaction_bcd[7:4];  // Tens place
    assign d0 = reaction_bcd[3:0];  // Ones place

    // Instantiate your Seven Segment Driver
    sseg_driver display (
        .clk(clk),
        .d3(d3), .d2(d2), .d1(d1), .d0(d0), 
        .seg(seg),
        .an(an)
    );

endmodule
