`timescale 1ns / 1ps

module synchronizer (
    input  wire clk,           // System clock (e.g., 100 MHz on the Basys3)
    input  wire reset,         // System reset
    input  wire raw_button,    // Asynchronous input from the physical button
    output reg  synced_button  // Synchronized output safe for internal FSM logic
);

    // Internal pipeline register
    reg stage1_reg;

    always @(posedge clk or posedge reset) begin
        if (reset) begin
            stage1_reg    <= 1'b0;
            synced_button <= 1'b0;
        end else begin
            stage1_reg    <= raw_button;    // First flip-flop captures the raw input
            synced_button <= stage1_reg;    // Second flip-flop stabilizes the output
        end
    end

endmodule
