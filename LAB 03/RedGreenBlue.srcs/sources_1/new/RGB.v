//Auther Saeed Akbar Khan

`timescale 1ns / 1ps

module RGB(out, in);

input wire [5 : 0] in;
output reg [5:0] out;

always@(*)
begin
  out[0] = in[0];
  out[1] = in[1];
  out[2] = in[2];
  out[3] = in[3];
  out[4] = in[4];
  out[5] = in[5];

end


endmodule
