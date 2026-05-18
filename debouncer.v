module debouncer(input clk, noisy_in, output reg clean_out = 0); // Initialize clean_out
    reg [19:0] count = 0;    // Initialize count
    reg sync_0 = 0, sync_1 = 0; // Initialize sync chain
    
    always @(posedge clk) begin
        sync_0 <= noisy_in; 
        sync_1 <= sync_0;
        
        if (sync_1 == clean_out) 
            count <= 0;
        else begin
            count <= count + 1;
            if (count == 1_000_000) 
                clean_out <= sync_1;
        end
    end
endmodule
