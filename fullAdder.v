`timescale 1ns / 1ps


module fullAdder(sum, c_out,a, b, c_in);
input wire a, b, c_in;
output wire sum, c_out;
wire s1, c1, s2;
xor xor1(s1, a, b);
xor xor2(sum, s1, c_in);
and and1(c1, a, b);
and and2(s2,s1,c_in);
xor xor3(c_out, c1, s2);

endmodule
