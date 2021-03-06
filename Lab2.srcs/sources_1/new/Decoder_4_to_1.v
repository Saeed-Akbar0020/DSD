`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03/06/2021 12:01:08 PM
// Design Name: 
// Module Name: Decoder_4_to_1
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


module Decoder_4_to_1(
       input A,
        input B,
        input EN,
        output [3:0] D
    );
    
    assign D[0] = ~(~A & ~B & ~EN);
     assign D[1] = ~(A & ~B & ~EN);
      assign D[2] = ~(~A & B & ~EN);
       assign D[3] = ~(A & B & ~EN);
endmodule
