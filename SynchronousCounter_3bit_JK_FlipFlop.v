`timescale 1ns / 1ps
module SynchronousCounter_3bit_JK_FlipFlop(
    input clk,
    output reg [2:0] Q
    );
    
    JK_FlipFlop JK0(.J(1'b1), .K(1'b1), .clk(clk), .reset(1'b0), .Q(Q[0]));
    JK_FlipFlop JK1(.J(Q[0]), .K(Q[0]), .clk(clk), .reset(1'b0), .Q(Q[1]));
    JK_FlipFlop JK2(.J(Q[1] & Q[0]), .K(Q[1] & Q[0]), .clk(clk), .reset(1'b0), .Q(Q[3]));
    
endmodule
