`timescale 1ns / 1ps

module reaction_timer #(
    parameter ONE_MS_LIMIT = 100_000
)(
    input  wire        clk,
    input  wire        reset,
    input  wire        start_timer,
    input  wire        stop_timer,
    output reg  [15:0] current_time
);

    reg [31:0] clk_counter;
    reg        timer_running;
    
    reg [3:0] bcd_thousands;
    reg [3:0] bcd_hundreds;
    reg [3:0] bcd_tens;
    reg [3:0] bcd_ones;

    always @(posedge clk or posedge reset) begin
        if (reset) begin
            timer_running <= 1'b0;
            clk_counter   <= 32'd0;
            
            bcd_thousands <= 4'd0;
            bcd_hundreds  <= 4'd0;
            bcd_tens      <= 4'd0;
            bcd_ones      <= 4'd0;
        end

        else if (start_timer) begin
            // Start a NEW reaction measurement
            timer_running <= 1'b1;
            clk_counter   <= 32'd0;
            
            bcd_thousands <= 4'd0;
            bcd_hundreds  <= 4'd0;
            bcd_tens      <= 4'd0;
            bcd_ones      <= 4'd0;
        end

        else if (stop_timer) begin
            // Freeze the current time
            timer_running <= 1'b0;
            clk_counter   <= 32'd0;
        end

        else if (timer_running) begin
            if (clk_counter < ONE_MS_LIMIT - 1) begin
                clk_counter <= clk_counter + 1'b1;
            end else begin
                clk_counter <= 32'd0;

                if (bcd_ones < 4'd9)
                    bcd_ones <= bcd_ones + 1'b1;
                else begin
                    bcd_ones <= 4'd0;

                    if (bcd_tens < 4'd9)
                        bcd_tens <= bcd_tens + 1'b1;
                    else begin
                        bcd_tens <= 4'd0;

                        if (bcd_hundreds < 4'd9)
                            bcd_hundreds <= bcd_hundreds + 1'b1;
                        else begin
                            bcd_hundreds <= 4'd0;
                            
                            if (bcd_thousands < 4'd9)
                                bcd_thousands <= bcd_thousands + 1'b1;
                            else begin
                                bcd_thousands <= 4'd9;
                                bcd_hundreds <= 4'd9;
                                bcd_tens     <= 4'd9;
                                bcd_ones     <= 4'd9;
                            end
                        end
                    end
                end
            end
        end
    end

    always @(*) begin
        current_time = {bcd_thousands, bcd_hundreds, bcd_tens, bcd_ones};
    end

endmodule
