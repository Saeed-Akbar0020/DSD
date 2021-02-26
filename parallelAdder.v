`timescale 1ns / 1ps

module parallelAdder(sum, c_out,a, b);
input[3:0] a,b;

output [3:0] sum;
output c_out;
wire c1, c2, c3;
// logic description
halfAdder HA0(sum[0], c1, a[0], b[0]);  // half adder instantiated
fullAdder FA0(sum[1], c2,a[1], b[1], c1);  // full adder instantiated
fullAdder FA1(sum[2], c3,a[2], b[2], c2);  // full adder instantiated
fullAdder FA2(sum[3], c_out,a[3], b[3], c3);  // full adder instantiated




endmodule
