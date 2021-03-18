`timescale 1ns / 1ps

module dff_2(q, clk, s, r,  d, reset, en);
        
        input clk, en, d, reset, s, r;
        output reg q;
        
        always@(posedge clk, posedge reset)
        begin 
        q<=d;
        if(reset)
        q<=1'b0;
        else if (en==1'b0)
        q<=q;
        else if (s==1'b0 & r==1'b1)
        q<=0;
        else if (s==1'b0 & r==1'b0)
                q<=q;
        else if (s==1'b1 & r==1'b0)
                q<=1;
        else if (s==1'b1 & r==1'b1)
                q<=1'bx;        
         
        else
        q<=d;
        end
        
        
//endmodule
    
//    reg clk, d, reset, en;
//    wire q;
    
//    module dff_tb();
//    dff_2 newone(q, clk, d, reset, en);
    
//    initial
//    begin
    
//    #00 d=0; clk=0; reset=0; en=0;
//    #10 d=1; clk=1; reset=0; en=1;
//    #10 d=0; clk=0; reset=0; en=1;
//    #10 d=0; clk=1; reset=0; en=1;  
//    #10 d=1; clk=0; reset=0; en=1;
//    #10 d=1; clk=1; reset=0; en=1;
//    #10 d=1; clk=1; reset=0; en=1;
//    #10 d=0; clk=1; reset=0; en=1;  
//    #10 d=1; clk=0; reset=0; en=1;     
    
    
//    #10 $stop;
//    end
    
    
    endmodule
    
