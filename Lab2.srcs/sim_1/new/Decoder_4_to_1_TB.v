`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03/06/2021 12:02:56 PM
// Design Name: 
// Module Name: Decoder_4_to_1_TB
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


module Decoder_4_to_1_TB(
        reg EN, A, B;
        wire [3:0] D;
        
    );
    
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
    $monitor($time, " ns -- EN =%b, A = %b, B = %b -- D =%b" EN, A, B, D);
     
     // instantiation
    Decoder_4_to_1 inst0(A, B, EN, D);
    
endmodule
