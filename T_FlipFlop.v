`timescale 1ns / 1ps

module T_FlipFlop(
    input T, clk, reset,
    output reg Q
    );
    
    always @(posedge clk or reset) begin
        if (reset) begin
            Q <= 1'b0;
        end else begin
            Q <= T ^ Q;
        end
    end
endmodule
