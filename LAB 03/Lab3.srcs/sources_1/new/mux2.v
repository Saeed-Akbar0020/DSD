`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03/11/2021 12:57:12 PM
// Design Name: 
// Module Name: mux2
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module mux2(out, s0, s1, D0, D1, D2, D3);

output out;
input s0, s1, D0, D1, D2, D3;

    assign out=s1? (s0?D3:D2):s0?D1:D0);
endmodule
module tb();
 reg s0, s1, D0, D1, D2, D3;

       wire out;



   

   initial 

   begin 

   #00 EN=1'b1; A=1'bx;B=1'bx;

   #10 EN=1'b0; A=1'b0;B=1'b0;

   #10 EN=1'b0; A=1'b0;B=1'b1;

   #10 EN=1'b0; A=1'b1;B=1'b0;

   #10 EN=1'b0; A=1'b1;B=1'b1;

   #10 $stop;

   end

   // display on console

   initial 

   $monitor($time, " ns -- EN =%b, A = %b, B = %b -- D =%b", EN, A, B, D);

    

    // instantiation

   Decoder_4_to_1 inst0(A, B, EN, D);

   

endmodule
