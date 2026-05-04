module debouncer(input clk, noisy_in, output reg clean_out);
    reg [19:0] count;
    reg sync_0, sync_1;
    always @(posedge clk) begin
        sync_0 <= noisy_in; sync_1 <= sync_0;
        if (sync_1 == clean_out) count <= 0;
        else begin
            count <= count + 1;
            if (count == 1_000_000) clean_out <= sync_1;
        end
    end
endmodule