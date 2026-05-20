`timescale 1ns / 1ps

module randomizer(
    input clk,
    input random_data_ready,
    output reg [31:0] random_data_output = 32'h0, // Fixed: Added packed range [31:0]
    input resetn
);
    
    (* dont_touch = "true" *) wire [4:0] ring_bits5;
    (* dont_touch = "true" *) wire [2:0] ring_bits3; // Fixed: Changed from [4:0] to [2:0] to match usage
    
    wire random_bit5; // Fixed: Declared missing wire
    wire random_bit3; // Fixed: Declared missing wire

    // 5-Stage Ring Oscillator with Simulation Delays
    assign ring_bits5[0] = ~ring_bits5[4];
    assign ring_bits5[1] = ~ring_bits5[0];
    assign ring_bits5[2] = ~ring_bits5[1];
    assign ring_bits5[3] = ~ring_bits5[2];
    assign ring_bits5[4] = ~ring_bits5[3];

    assign random_bit5 = ring_bits5[4]; 
    
    // 3-Stage Ring Oscillator with Simulation Delays
    assign ring_bits3[0] = ~ring_bits3[2];
    assign ring_bits3[1] = ~ring_bits3[0];
    assign ring_bits3[2] = ~ring_bits3[1];
    
    assign random_bit3 = ring_bits3[2];
    
    reg [31:0] random_data_reg; // Fixed: Changed from unpacked array to 32-bit packed register
    (* mark_debug = "true" *) reg [31:0] random_data_output;
    reg [5:0]  bit_count = 6'd0; // Fixed: Explicitly sized the reg declaration range
    reg        random_data_valid = 0;

    always @(posedge clk) begin
        if (!resetn) begin
            random_data_reg    <= 32'h0;
            bit_count          <= 6'd0;
            random_data_valid  <= 1'b0;
            random_data_output <= 32'h0; // Flush output on reset
        end else begin
            if (bit_count == 6'd32) begin
                random_data_valid <= 1'b1; // Indicate that random data is ready
                random_data_output <= random_data_reg; // Output the generated random data
                
                if (random_data_ready) begin
                    bit_count <= 6'd0; // Reset bit count only when downstream is ready to read
                    random_data_valid <= 1'b0;
                end
            end else begin
                random_data_reg   <= {random_data_reg[30:0], random_bit3 ^ random_bit5}; // Shift in new random bit
                bit_count         <= bit_count + 6'd1;
                random_data_valid <= 1'b0; 
            end 
        end
    end
    
    ila_0 your_ila_instance_name (
        .clk(clk),                      // The ILA needs the same clock to sample data
        .probe0(random_data_output)   // Probe 0: Monitors your 32-bit output word
    );
endmodule
