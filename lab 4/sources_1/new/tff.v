`timescale 1ns / 1ps

module tff(q, clk, t,  d, reset, en);
        
        input clk, en, d, reset, t;
        output reg q;
        
        always@(posedge clk, posedge reset)
        begin 
        q<=d;
        if(reset)
        q<=1'b0;
        
        else if (en==1'b0)
        q<=q;
        
        else if (t==0)
        q<=q;
        
        else if (t==1)
        q<=~q;
        
        else
        q<=q;
        
        end
endmodule
