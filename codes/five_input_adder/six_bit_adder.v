`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    01:25:39 01/29/2018 
// Design Name: 
// Module Name:    six_bit_adder 
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
module six_bit_adder (a, b, cin, z, carry);
	input [5:0] a;
	input [5:0] b;
	input cin;

	output [5:0] z;
	wire [5:0] z;

	output carry;
	wire carry;

	wire [4:0] carry0;

	full_adder FA0 (a[0], b[0], cin      , z[0], carry0[0]);
	full_adder FA1 (a[1], b[1], carry0[0], z[1], carry0[1]);
	full_adder FA2 (a[2], b[2], carry0[1], z[2], carry0[2]);
	full_adder FA3 (a[3], b[3], carry0[2], z[3], carry0[3]);
	full_adder FA4 (a[4], b[4], carry0[3], z[4], carry0[4]);
	full_adder FA5 (a[5], b[5], carry0[4], z[5], carry);

endmodule