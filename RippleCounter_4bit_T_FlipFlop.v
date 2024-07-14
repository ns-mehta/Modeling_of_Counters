`timescale 1ns / 1ps

module RippleCounter_4bit_T_FlipFlop(
    output reg [3:0] Q,
    input clk
    );
    
    T_FlipFlop T0(.T(1'b1), .clk(clk), .reset(1'b0), .Q(Q[0]));
    T_FlipFlop T1(.T(1'b1), .clk(!Q[0]), .reset(1'b0), .Q(Q[1]));
    T_FlipFlop T2(.T(1'b1), .clk(!Q[1]), .reset(1'b0), .Q(Q[2]));
    T_FlipFlop T3(.T(1'b1), .clk(!Q[2]), .reset(1'b0), .Q(Q[3]));
endmodule
