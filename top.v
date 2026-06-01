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
    
    // --- Synchronization & Debouncing ---
    wire btnU_sync, btnL_sync, btnR_sync;
    wire rst, p1_stop, p2_stop;

    // 1. Synchronize asynchronous physical inputs
    synchronizer sync_rst (.clk(clk), .reset(1'b0), .raw_button(btnU), .synced_button(btnU_sync));
    synchronizer sync_p1  (.clk(clk), .reset(1'b0), .raw_button(btnL), .synced_button(btnL_sync));
    synchronizer sync_p2  (.clk(clk), .reset(1'b0), .raw_button(btnR), .synced_button(btnR_sync));

    // 2. Debounce the synchronized inputs
    debouncer db_rst (.clk(clk), .noisy_in(btnU_sync), .clean_out(rst));
    debouncer db_p1  (.clk(clk), .noisy_in(btnL_sync), .clean_out(p1_stop));
    debouncer db_p2  (.clk(clk), .noisy_in(btnR_sync), .clean_out(p2_stop));

    // --- Sub-Module Wires & Instantiations ---
    wire [15:0] reaction_bcd;
    wire [3:0] p1_score_val, p2_score_val;
    wire [31:0] rand_out;
    
    reg start_timer_pulse;
    reg stop_timer_pulse;
    reg p1_win_pulse;
    reg p2_win_pulse;
    reg rand_ready;

    // Reaction Timer
    reaction_timer #(.ONE_MS_LIMIT(100_000)) rt_inst (
        .clk(clk),
        .reset(rst),
        .start_timer(start_timer_pulse),
        .stop_timer(stop_timer_pulse),
        .current_time(reaction_bcd)
    );

    // Score Counter
    score_counter sc_inst (
        .clk(clk),
        .reset(rst),
        .p1_win_pulse(p1_win_pulse),
        .p2_win_pulse(p2_win_pulse),
        .p1_score(p1_score_val),
        .p2_score(p2_score_val)
    );

    // Randomizer
    randomizer rand_inst (
        .clk(clk),
        .random_data_ready(rand_ready),
        .random_data_output(rand_out),
        .resetn(~rst) // Active low reset
    );

    // --- Game Logic FSM ---
    localparam S_INIT       = 3'd0;
    localparam S_DELAY      = 3'd1;
    localparam S_ACTIVE     = 3'd2;
    localparam S_SHOW_TIME  = 3'd3;
    localparam S_SHOW_SCORE = 3'd4;
    localparam S_GAME_OVER  = 3'd5;

    // Timing Constants (Assuming 100MHz Clock)
    localparam CLK_FREQ = 100_000_000;
    localparam DELAY_3S = CLK_FREQ * 3;
    localparam DELAY_2S = CLK_FREQ * 2;

    reg [2:0] state;
    reg [31:0] timer;
    reg [31:0] target_delay;

    always @(posedge clk or posedge rst) begin
        if (rst) begin
            state <= S_INIT;
            timer <= 0;
            target_delay <= DELAY_3S;
            start_timer_pulse <= 0;
            stop_timer_pulse <= 0;
            p1_win_pulse <= 0;
            p2_win_pulse <= 0;
            rand_ready <= 0;
        end else begin
            // Default pulse states (auto-clear after 1 cycle)
            start_timer_pulse <= 0;
            stop_timer_pulse <= 0;
            p1_win_pulse <= 0;
            p2_win_pulse <= 0;
            rand_ready <= 0;

            case (state)
                S_INIT: begin
                    timer <= 0;
                    // Base 3 sec delay + up to ~2.6 seconds of random delay (using 28 bits)
                    target_delay <= DELAY_3S + {4'b0, rand_out[27:0]};
                    rand_ready <= 1'b1; // Trigger randomizer to prep next value
                    state <= S_DELAY;
                end
                
                S_DELAY: begin
                    // FALSE START CHECK: If a player presses or holds the button during the delay
                    if (p1_stop || p2_stop) begin
                        timer <= 0;
                        // Award point to the opposing player
                        if (p1_stop) p2_win_pulse <= 1'b1;
                        else if (p2_stop) p1_win_pulse <= 1'b1;
                        
                        // Skip reaction phase and go straight to showing the score
                        state <= S_SHOW_SCORE;
                    end 
                    // Normal delay countdown
                    else if (timer >= target_delay) begin
                        timer <= 0;
                        start_timer_pulse <= 1'b1; // Start reaction clock
                        state <= S_ACTIVE;
                    end else begin
                        timer <= timer + 1;
                    end
                end
                
                S_ACTIVE: begin
                    if (p1_stop || p2_stop) begin
                        stop_timer_pulse <= 1'b1;
                        
                        // Assign point to the player who pressed first
                        if (p1_stop) p1_win_pulse <= 1'b1;
                        else if (p2_stop) p2_win_pulse <= 1'b1;
                        
                        timer <= 0;
                        state <= S_SHOW_TIME;
                    end
                end
                
                S_SHOW_TIME: begin
                    // Show reaction time for 2 seconds
                    if (timer >= DELAY_2S) begin
                        timer <= 0;
                        state <= S_SHOW_SCORE;
                    end else begin
                        timer <= timer + 1;
                    end
                end
                
                S_SHOW_SCORE: begin
                    // Show the updated score for 2 seconds
                    if (timer >= DELAY_2S) begin
                        timer <= 0;
                        if (p1_score_val >= 5 || p2_score_val >= 5) begin
                            state <= S_GAME_OVER; // Someone reached 5 points
                        end else begin
                            // Restart loop for next round
                            target_delay <= DELAY_3S + {4'b0, rand_out[27:0]};
                            rand_ready <= 1'b1; 
                            state <= S_DELAY;
                        end
                    end else begin
                        timer <= timer + 1;
                    end
                end
                
                S_GAME_OVER: begin
                    // Halts here until system reset is pressed
                    timer <= 0;
                end
                
                default: state <= S_INIT;
            endcase
        end
    end

    // --- Display Multiplexer ---
    wire [3:0] d3, d2, d1, d0;
    
    // State classifiers for the display
    wire is_score_state = (state == S_SHOW_SCORE || state == S_GAME_OVER);
    wire is_delay_state = (state == S_INIT || state == S_DELAY);
    
    // If in Show Score or Game Over, display "P1 - P2"
    // If in Delay state, force the display to show "0000"
    // Otherwise (S_ACTIVE, S_SHOW_TIME), display the running/stopped reaction time
    assign d3 = is_score_state ? p1_score_val : (is_delay_state ? 4'h0 : reaction_bcd[15:12]);
    assign d2 = is_score_state ? 4'hF         : (is_delay_state ? 4'h0 : reaction_bcd[11:8]);
    assign d1 = is_score_state ? 4'hF         : (is_delay_state ? 4'h0 : reaction_bcd[7:4]);
    assign d0 = is_score_state ? p2_score_val : (is_delay_state ? 4'h0 : reaction_bcd[3:0]);

    // Seven Segment Driver
    sseg_driver display (
        .clk(clk),
        .d3(d3), .d2(d2), .d1(d1), .d0(d0), 
        .seg(seg),
        .an(an)
    );

endmodule
