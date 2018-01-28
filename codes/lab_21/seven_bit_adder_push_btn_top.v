`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   23:43:41 01/28/2018
// Design Name:   seven_bt_adder
// Module Name:   /media/ubermensch/AMAN_14072/cs220/codes/lab_21/seven_bit_adder_push_btn_top.v
// Project Name:  lab_21
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: seven_bt_adder
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module seven_bit_adder_push_btn_top;

	// Inputs
	reg [3:0] x;
	reg pb1;
	reg pb2;
	reg pb3;
	reg pb4;

	// Outputs
	wire [6:0] z;
	wire carry;
	wire [6:0] a;
	wire [6:0] b;

	// Instantiate the Unit Under Test (UUT)
	seven_bt_adder uut (
		.x(x), 
		.pb1(pb1), 
		.pb2(pb2), 
		.pb3(pb3), 
		.pb4(pb4), 
		.z(z), 
		.carry(carry), 
		.a(a), 
		.b(b)
	);

	always @(z or carry) begin
			 #1
			 $display("time=%d: %b + %b = %b, carry = %b\n",
				$time, a, b, z, carry);
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

