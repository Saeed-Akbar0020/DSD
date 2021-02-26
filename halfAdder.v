`timescale 1ns / 1ps


module halfAdder(sum, c_out, a, b);
input a, b;
output sum, c_out;
and and1(c_out, a, b);
xor xor1(sum, a, b);

endmodule
