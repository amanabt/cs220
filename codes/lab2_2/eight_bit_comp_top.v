`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   01:01:39 01/29/2018
// Design Name:   eight_bit_comp
// Module Name:   /media/ubermensch/AMAN_14072/cs220/codes/lab2_2/eight_bit_comp_top.v
// Project Name:  lab2_2
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: eight_bit_comp
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module eight_bit_comp_top;

	// Inputs
	reg [3:0] x;
	reg pb1;
	reg pb2;
	reg pb3;
	reg pb4;

	// Outputs
	wire equal;
	wire greater;
	wire lower;
	wire [7:0] a;
	wire [7:0] b;

	// Instantiate the Unit Under Test (UUT)
	eight_bit_comp uut (
		.x(x), 
		.pb1(pb1), 
		.pb2(pb2), 
		.pb3(pb3), 
		.pb4(pb4), 
		.equal(equal), 
		.greater(greater), 
		.lower(lower), 
		.a(a), 
		.b(b)
	);

	always @(a or b) begin
			 #1
			 $display("time=%d: %b comp %b = %b, %b, %b\n",
				$time, a, b, equal, greater, lower);
	end

	initial begin
		x = 4'b1001;
		#1
		pb1 = 1'b0;
		#1
		pb1 = 1'b1;
		#1
		pb1 = 1'b0;
		#5

		x = 4'b1001;
		#1
		pb2 = 1'b0;
		#1
		pb2 = 1'b1;
		#1
		pb2 = 1'b0;
		#5

		x = 4'b1101;
		#1
		pb3 = 1'b0;
		#1
		pb3 = 1'b1;
		#1
		pb3 = 1'b0;
		#5

		x = 4'b1001;
		#1
		pb4 = 1'b0;
		#1
		pb4 = 1'b1;
		#1
		pb4 = 1'b0;
		#5

	$finish;
	end
      
endmodule

