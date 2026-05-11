module clock_logic(
    input clk, reset, pause, adj_sel, adj_en,
    output reg [3:0] m1, m0, s1, s0
);
    reg [26:0] ticker;
    reg [25:0] adj_ticker;
    reg paused = 0;
    reg alr_paused;
    
    wire sec_tick = (ticker == 100_000_000);     // 1Hz
    wire adj_tick = (adj_ticker == 50_000_000);  // 2Hz

    always @(posedge clk) begin
    if (reset) begin
        {m1, m0, s1, s0} <= 16'h0000;
        ticker <= 0;
        adj_ticker <= 0;
        paused <= 0;
        alr_paused <= 0;
    end else begin
        // 1. ALWAYS increment tickers regardless of mode
        // This ensures the "heartbeat" of the system never stops.
        if (ticker >= 100_000_000) ticker <= 0;
        else ticker <= ticker + 1;

        if (adj_ticker >= 50_000_000) adj_ticker <= 0;
        else adj_ticker <= adj_ticker + 1;

        // 2. Handle Adjustment Mode
        if (adj_en) begin
            if (adj_tick) begin
                if (adj_sel) begin // Minutes
                    if (m0 == 9) begin
                        m0 <= 0;
                        m1 <= (m1 == 5) ? 0 : m1 + 1;
                    end else m0 <= m0 + 1;
                end else begin // Seconds
                    if (s0 == 9) begin
                        s0 <= 0;
                        s1 <= (s1 == 5) ? 0 : s1 + 1;
                    end else s0 <= s0 + 1;
                end
            end
        end else begin 
            if (pause && !alr_paused) begin
                paused <= !paused;
                alr_paused <= 1;
            end 
            if (!paused) begin
                alr_paused <= 0;
                // --- Normal Ticking ---
                if (sec_tick) begin
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
                end
            end
        end
    end
    end
endmodule
