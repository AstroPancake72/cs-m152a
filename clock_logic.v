module clock_logic(
    input clk, reset, pause, adj_sel, adj_en,
    output reg [3:0] m1, m0, s1, s0
);
    reg [26:0] ticker;
    reg [23:0] adj_ticker;
    reg paused;
    
    wire sec_tick = (ticker == 100_000_000);     // 1Hz
    wire adj_tick = (adj_ticker == 25_000_000);  // 4Hz (Adjustment speed)

    always @(posedge clk) begin
        if (reset) begin
            {m1, m0, s1, s0} <= 16'h0000;
            ticker <= 0;
            adj_ticker <= 0;
            paused <= 1;
        end else begin
            // --- Adjustment Logic (Switch is ON) ---
            if (adj_en) begin
                if (adj_tick) begin
                    adj_ticker <= 0;
                    if (adj_sel) begin // Adjust Minutes
                        if (m1 == 5 && m0 == 9) {m1, m0} <= 8'h00;
                        else if (m0 == 9) begin m0 <= 0; m1 <= m1 + 1; end
                        else m0 <= m0 + 1;
                    end else begin // Adjust Seconds
                        if (s1 == 5 && s0 == 9) {s1, s0} <= 8'h00;
                        else if (s0 == 9) begin s0 <= 0; s1 <= s1 + 1; end
                        else s0 <= s0 + 1;
                    end
                end else adj_ticker <= adj_ticker + 1;
            end 
            
            // --- Normal Ticking (Adjust is OFF) ---
            if (pause) begin
                paused = !paused;
                end
            else if (!paused) begin
                if (sec_tick) begin
                    ticker <= 0;
                    if (s0 == 9) begin
                        s0 <= 0;
                        if (s1 == 5) begin
                            s1 <= 0;
                            if (m0 == 9) begin
                                m0 <= 0;
                                if (m1 == 5) m1 <= 0;
                                else m1 <= m1 + 1;
                            end else m0 <= m0 + 1;
                        end else s1 <= s1 + 1;
                    end else s0 <= s0 + 1;
                end else ticker <= ticker + 1;
            end
        end
    end
endmodule