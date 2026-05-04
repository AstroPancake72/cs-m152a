`timescale 1ns / 1ps

module top_tb();
    reg clk;
    reg btnC, btnL;
    reg [1:0] sw;
    wire [6:0] seg;
    wire [3:0] an;

    top uut (
        .clk(clk), .btnC(btnC), .btnL(btnL), 
        .sw(sw), .seg(seg), .an(an)
    );

    always #5 clk = ~clk;

    initial begin
        // Init
        clk = 0; btnC = 0; btnL = 0; sw = 2'b00;

        // Reset
        #20 btnC = 1; #100 btnC = 0;

        // Test Adjustment Switch
        #200 sw[1] = 1; // Flip Adjust Switch ON
        #200 sw[0] = 1; // Select Minutes
        
        // Let it run for a while to see minutes incrementing at 4Hz
        #2000; 
        
        sw[1] = 0; // Flip Adjust Switch OFF (Normal time resumes)
        
        #1000 $finish;
    end
endmodule