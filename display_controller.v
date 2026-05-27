`timescale 1ns / 1ps

module display_controller (
    input  wire        clk,                 // 100 MHz system clock
    input  wire        reset,               // System reset
    input  wire        result_active,       // High when FSM is showing post-game results
    input  wire [3:0]  p1_score,            // Player 1 score (0-9)
    input  wire [3:0]  p2_score,            // Player 2 score (0-9)
    input  wire [11:0] fastest_time,        // 3-digit BCD time (e.g., 12'h275 for 275ms)
    output reg  [3:0]  d3, d2, d1, d0,      // Outputs fed directly to sseg_driver
    output reg         result_display_done  // Pulse to tell FSM the 2 seconds are up
);

    // Two seconds at 100 MHz is 200,000,000 cycles (requires a 28-bit counter).
    // For simulation, we shrink this down to just 20 cycles so we don't freeze the simulator.
    `ifdef SIMULATION
        parameter TWO_SECONDS = 28'd20;
    `else
        parameter TWO_SECONDS = 28'd200_000_000;
    `endif

    reg [27:0] timer_counter;
    reg        show_time_mode; // 0 = Showing Scores, 1 = Showing Reaction Time

    // --- 1. Timer Logic ---
    always @(posedge clk or posedge reset) begin
        if (reset) begin
            timer_counter       <= 28'd0;
            show_time_mode      <= 1'b0;
            result_display_done <= 1'b0;
        end else if (result_active) begin
            if (timer_counter < TWO_SECONDS) begin
                timer_counter       <= timer_counter + 1'b1;
                show_time_mode      <= 1'b0; // First phase: show score
                result_display_done <= 1'b0;
            end else if (timer_counter < (TWO_SECONDS * 2)) begin
                timer_counter       <= timer_counter + 1'b1;
                show_time_mode      <= 1'b1; // Second phase: switch to reaction time
                result_display_done <= 1'b0;
            end else begin
                // Finished both phases! Tell the FSM we are done.
                result_display_done <= 1'b1;
            end
        end else begin
            // If results are not active, reset the display timer states
            timer_counter       <= 28'd0;
            show_time_mode      <= 1'b0;
            result_display_done <= 1'b0;
        end
    end

    // --- 2. Data Multiplexer Routing ---
    always @(*) begin
        if (result_active) begin
            if (show_time_mode == 1'b0) begin
                // Mode 0: Display Scores formatted as "P1 0 P2" -> e.g., [P1_Score, 0, 0, P2_Score]
                // To keep it simple, we put P1 on left digits, P2 on right digits: "0X 0Y"
                d3 = 4'h0;
                d2 = p1_score;
                d1 = 4'h0;
                d0 = p2_score;
            end else begin
                // Mode 1: Display Reaction Time from the 12-bit bus (split into 3 hex digits)
                // Example: fastest_time = 12'h275 -> d2=2, d1=7, d0=5. Leftmost digit stays 0.
                d3 = 4'h0;
                d2 = fastest_time[11:8]; // Hundreds place
                d1 = fastest_time[7:4];  // Tens place
                d0 = fastest_time[3:0];  // Ones place
            end
        end else begin
            // Game is active or idle: display blank or zeros
            d3 = 4'h0;
            d2 = 4'h0;
            d1 = 4'h0;
            d0 = 4'h0;
        end
    end

endmodule
