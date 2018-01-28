`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    00:00:56 01/29/2018 
// Design Name: 
// Module Name:    one_bit_comp 
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
module one_bit_comp ( a ,b ,equali ,greateri ,
							 loweri,equalo ,greatero ,lowero);
	input equali ;
	input greateri ;
	input loweri ;
	
	input a ;
	input b ;

	output equalo ;
	output greatero ;
	output lowero ;
	wire equalo ;
	wire greatero ;
	wire lowero ;
	
	assign equalo = (a ~^ b) & equali;
	assign lowero = (((~a) & b) & equali) | loweri;
	assign greatero = ((a & (~b)) & equali) | greateri;

endmodule
