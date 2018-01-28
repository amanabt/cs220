`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   23:02:06 01/28/2018
// Design Name:   seven_bit_adder
// Module Name:   /media/ubermensch/AMAN_14072/cs220/codes/lab_21/seven_bit_adder_top.v
// Project Name:  lab_21
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: seven_bit_adder
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module seven_bit_adder_top;

	// Inputs
	reg [6:0] x;
	reg [6:0] y;

	// Outputs
	wire [6:0] z;
	wire carry;

	// Instantiate the Unit Under Test (UUT)
	seven_bit_adder uut (
		.x(x), 
		.y(y), 
		.z(z), 
		.carry(carry)
	);

	always @(z or carry) begin
			 #1
			 $display("time=%d: %b + %b = %b, carry = %b\n", $time, a, b, z, carry);
	end

	initial begin
		x = 4'b0001;
		#1
		pb1 = 1'b0;
		#1
		pb1 = 1'b1;
		#1
		pb1 = 1'b0;
		#5

		x = 4'b0001;
		#1
		pb2 = 1'b0;
		#1
		pb2 = 1'b1;
		#1
		pb2 = 1'b0;
		#5

		x = 4'b0001;
		#1
		pb3 = 1'b0;
		#1
		pb3 = 1'b1;
		#1
		pb3 = 1'b0;
		#5

		x = 4'b0001;
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

