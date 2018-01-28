`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    00:03:07 01/29/2018 
// Design Name: 
// Module Name:    eight_bit_comp 
// Project Name: 
// Target Devices: 
// Tool versions: 
// Description: 
//
// Dependencies: 
//
// Revision: 
// Revision 0.01 - File Created
// Additional Comments: 
//
//////////////////////////////////////////////////////////////////////////////////
module eight_bit_comp (x, pb1, pb2, pb3, pb4,
							  equal, greater, lower, a, b);
input [3:0] x;
input pb1;
input pb2;
input pb3;
input pb4;

output equal;
wire equal;

output greater;
wire greater;

output lower;
wire lower;

output [7:0] a;
reg [7:0] a;

output [7:0] b;
reg [7:0] b;

always @(posedge pb1)begin
a[3:0]<=x;
end
always @(posedge pb2)begin
a[7:4]<=x;
end
always @(posedge pb3)begin
b[3:0]<=x;
end
always @(posedge pb4)begin
b[7:4]<=x;
end

wire [6:0] equal0;
wire [6:0] greater0;
wire [6:0] lower0;


one_bit_comp OB0 (a[7], b[7], 1'b1, 1'b0, 1'b0, equal0[0], greater0[0], lower0[0]);
one_bit_comp OB1 (a[6], b[6], equal0[0], greater0[0], lower0[0], equal0[1], greater0[1], lower0[1]);
one_bit_comp OB2 (a[5], b[5], equal0[1], greater0[1], lower0[1], equal0[2], greater0[2], lower0[2]);
one_bit_comp OB3 (a[4], b[4], equal0[2], greater0[2], lower0[2], equal0[3], greater0[3], lower0[3]);
one_bit_comp OB4 (a[3], b[3], equal0[3], greater0[3], lower0[3], equal0[4], greater0[4], lower0[4]);
one_bit_comp OB5 (a[2], b[2], equal0[4], greater0[4], lower0[4], equal0[5], greater0[5], lower0[5]);
one_bit_comp OB6 (a[1], b[1], equal0[5], greater0[5], lower0[5], equal0[6], greater0[6], lower0[6]);
one_bit_comp OB7 (a[0], b[0], equal0[6], greater0[6], lower0[6], equal, greater, lower);

endmodule
