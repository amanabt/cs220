`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    01:35:59 01/29/2018 
// Design Name: 
// Module Name:    five_input_adder 
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
module five_input_adder(x, pb1, pb2, pb3, pb4, pbr,
								z, carry, a, b, c, d, e);

input [3:0] x;
input pb1;
input pb2;
input pb3;
input pb4;
input pbr;

output [5:0] z;
wire [5:0] z;
output carry;
wire carry;

output [3:0] a;
reg [3:0] a;

output [3:0] b;
reg [3:0] b;

output [3:0] c;
reg [3:0] c;

output [3:0] d;
reg [3:0] d;

output [3:0] e;
reg [3:0] e;

wire [5:0] carry0;

reg [5:0] six_bit_typecast_e;

always @(posedge pb1)begin
a <= x;
end
always @(posedge pb2)begin
b <= x;
end
always @(posedge pb3)begin
c <= x;
end
always @(posedge pb4)begin
d <= x;
end
always @(posedge pbr)begin
assign e = x;
six_bit_typecast_e[3:0] = e;
six_bit_typecast_e[5:4] = 2'b00;
end

wire [4:0] five_bit_out_x;
wire [4:0] five_bit_out_y;
wire [5:0] six_bit_out_xy;

four_bit_adder FrB0(a, b, 1'b0, five_bit_out_x[3:0], five_bit_out_x[4]);
four_bit_adder FrB1(c, d, 1'b0, five_bit_out_y[3:0], five_bit_out_y[4]);

five_bit_adder FvB1(five_bit_out_x, five_bit_out_y, 1'b0,
 						  six_bit_out_xy[4:0], six_bit_out_xy[5]);

six_bit_adder SB(six_bit_typecast_e, six_bit_out_xy, 1'b0, z, carry);

endmodule
