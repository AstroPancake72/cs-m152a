// Module: score_counter
// Description: Keeps track of Player 1 and Player 2 scores for an FPGA reaction-time game.
//              Scores increment by 1 on the rising edge of the clock when a win pulse is detected.
module score_counter (
    input wire clk,             // System clock
    input wire reset,           // Active-high synchronous reset
    input wire p1_win_pulse,    // High for 1 cycle when Player 1 wins a round
    input wire p2_win_pulse,    // High for 1 cycle when Player 2 wins a round
    output reg [3:0] p1_score,  // 4-bit score for Player 1 (counts from 0 to 15)
    output reg [3:0] p2_score   // 4-bit score for Player 2 (counts from 0 to 15)
);

    // Sequential logic block triggered on the rising edge of the clock
    always @(posedge clk) begin
        if (reset) begin
            // On reset, clear both scores back to 0
            p1_score <= 4'b0000;
            p2_score <= 4'b0000;
        end else begin
            // Check for Player 1 win pulse
            if (p1_win_pulse) begin
                p1_score <= p1_score + 1'b1; // Increment P1 score using nonblocking assignment
            end
            
            // Check for Player 2 win pulse
            if (p2_win_pulse) begin
                p2_score <= p2_score + 1'b1; // Increment P2 score using nonblocking assignment
            end
        end
    end

endmodule
