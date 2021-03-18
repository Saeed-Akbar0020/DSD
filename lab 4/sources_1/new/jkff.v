`timescale 1ns / 1ps


module jkff(q, clk, j, k,  d, reset, en);
        
        input clk, en, d, reset, j, k;
        output reg q;
        
        always@(posedge clk, posedge reset)
        begin 
        q<=d;
        if(reset)
        q<=1'b0;
        else if (en==1'b0)
        q<=q;
        else if (j==1'b0 & k==1'b1)
        q<=0;
        else if (j==1'b0 & k==1'b0)
                q<=q;
        else if (j==1'b1 & k==1'b0)
                q<=1;
        else if (j==1'b1 & k==1'b1)
                q<=~q  ;  
         
        else
        q<=q;
        end
endmodule
