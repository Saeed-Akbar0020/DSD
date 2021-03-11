`timescale 1ns / 1ps


module Param_Adder(Sum, Count, A, B, Cin );

parameter N = 16;
input Cin;
output reg [N-1:0] Sum;
output reg Count;
always@(*)
begin
{Count, Sum} = A+B+Cin;
end


endmodule
