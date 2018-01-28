`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    01:34:27 01/29/2018 
// Design Name: 
// Module Name:    four_bit_adder 
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
module four_bit_adder(a, b, cin, z, carry
    );

	input [3:0] a;
	input [3:0] b;
	input cin;
	
	output [3:0] z;
	wire [3:0] z;

	output carry;
	wire carry;

	wire [2:0] carry0;

	full_adder FA0 (a[0], b[0], cin      , z[0], carry0[0]);
	full_adder FA1 (a[1], b[1], carry0[0], z[1], carry0[1]);
	full_adder FA2 (a[2], b[2], carry0[1], z[2], carry0[2]);
	full_adder FA3 (a[3], b[3], carry0[2], z[3], carry);

endmodule
