`timescale 1ns / 1ps


module Decimal_BCD_Encoder(Out, in);

output reg [3:0] Out;
input wire [9:0] in;

always@(*)
begin 
   case(in)
   10'b0000000000 : Out = 4'b0000;
   10'b0000000001 : Out = 4'b0001;`
   10'b0000000010 : Out = 4'b0010;
   10'b0000000011 : Out = 4'b0011;
   10'b0000000100 : Out = 4'b0100;
   10'b0000000101 : Out = 4'b0101;
   10'b0000000110 : Out = 4'b0110;
   10'b0000000111 : Out = 4'b0111;
   10'b0000001000 : Out = 4'b1000;
   10'b0000001001 : Out = 4'b1001;
   default : Out= 4'bzzzz;
   endcase
end
endmodule

    