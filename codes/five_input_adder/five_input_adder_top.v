`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   01:51:53 01/29/2018
// Design Name:   five_input_adder
// Module Name:   /media/ubermensch/AMAN_14072/cs220/codes/five_input_adder/five_input_adder_top.v
// Project Name:  five_input_adder
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: five_input_adder
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module five_input_adder_top;

	// Inputs
	reg [3:0] x;
	reg pb1;
	reg pb2;
	reg pb3;
	reg pb4;
	reg pbr;

	// Outputs
	wire [5:0] z;
	wire carry;
	wire [3:0] a;
	wire [3:0] b;
	wire [3:0] c;
	wire [3:0] d;
	wire [3:0] e;

	// Instantiate the Unit Under Test (UUT)
	five_input_adder uut (
		.x(x), 
		.pb1(pb1), 
		.pb2(pb2), 
		.pb3(pb3), 
		.pb4(pb4), 
		.pbr(pbr), 
		.z(z), 
		.carry(carry), 
		.a(a), 
		.b(b), 
		.c(c), 
		.d(d), 
		.e(e)
	);

	always @(z or carry) begin
			 #1
			 $display("time=%d: %b + %b + %b + %b + %b = %b, carry = %b\n",
						  $time, a, b, c, d, e, z, carry);
	end

	initial begin
		x = 4'b0000;
		#1
		pb1 = 1'b0;
		#1
		pb1 = 1'b1;
		#1
		pb1 = 1'b0;
		#5

		x = 4'b0000;
		#1
		pb2 = 1'b0;
		#1
		pb2 = 1'b1;
		#1
		pb2 = 1'b0;
		#5

		x = 4'b0000;
		#1
		pb3 = 1'b0;
		#1
		pb3 = 1'b1;
		#1
		pb3 = 1'b0;
		#5

		x = 4'b0000;
		#1
		pb4 = 1'b0;
		#1
		pb4 = 1'b1;
		#1
		pb4 = 1'b0;
		#5

		x = 4'b0000;
		#1
		pbr = 1'b0;
		#1
		pbr = 1'b1;
		#1
		pbr = 1'b0;
		#5

////////////////////////////////////////////////////////////////

		x = 4'b1001;
		#1
		pb1 = 1'b0;
		#1
		pb1 = 1'b1;
		#1
		pb1 = 1'b0;
		#5

		x = 4'b0101;
		#1
		pb2 = 1'b0;
		#1
		pb2 = 1'b1;
		#1
		pb2 = 1'b0;
		#5

		x = 4'b0011;
		#1
		pb3 = 1'b0;
		#1
		pb3 = 1'b1;
		#1
		pb3 = 1'b0;
		#5

		x = 4'b1011;
		#1
		pb4 = 1'b0;
		#1
		pb4 = 1'b1;
		#1
		pb4 = 1'b0;
		#5

		x = 4'b1111;
		#1
		pbr = 1'b0;
		#1
		pbr = 1'b1;
		#1
		pbr = 1'b0;
		#5

	$finish;
	end
      
endmodule

