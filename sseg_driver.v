module sseg_driver(
    input clk,
    input [3:0] d3, d2, d1, d0,
    output reg [6:0] seg,
    output reg [3:0] an // select
);
    reg [17:0] refresh_counter; 
    always @(posedge clk) refresh_counter <= refresh_counter + 1;
    wire [1:0] active_digit = refresh_counter[17:16];

    reg [3:0] bcd;
    always @(*) begin
        case(active_digit)
            2'b00: begin an = 4'b1110; bcd = d0; end
            2'b01: begin an = 4'b1101; bcd = d1; end
            2'b10: begin an = 4'b1011; bcd = d2; end
            2'b11: begin an = 4'b0111; bcd = d3; end
        endcase
    end

    always @(*) begin
        case(bcd) // Active Low segments for Basys 3 (0 is ON)
            4'h0: seg = 7'b1000000; 4'h1: seg = 7'b1111001;
            4'h2: seg = 7'b0100100; 4'h3: seg = 7'b0110000;
            4'h4: seg = 7'b0011001; 4'h5: seg = 7'b0010010;
            4'h6: seg = 7'b0000010; 4'h7: seg = 7'b1111000;
            4'h8: seg = 7'b0000000; 4'h9: seg = 7'b0010000;
            default: seg = 7'b1111111;
        endcase
    end
endmodule
