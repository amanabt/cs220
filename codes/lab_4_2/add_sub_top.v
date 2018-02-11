`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   23:39:35 02/11/2018
// Design Name:   seven_bt_ad_sub
// Module Name:   E:/Downloads/cs220-master/cs220-master/codes/lab_4_2/add_sub_top.v
// Project Name:  lab_4_2
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: seven_bt_ad_sub
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module add_sub_top;

	// Inputs
	reg [3:0] x;
	reg rotation_event;

	// Outputs
	wire [6:0] z;
	wire overflow;
	wire [6:0] a;
	wire [6:0] b;
	wire opcode;
	wire [6:0] c;

	// Instantiate the Unit Under Test (UUT)
	seven_bt_ad_sub uut (
		.x(x), 
		.rotation_event(rotation_event), 
		.z(z), 
		.overflow(overflow), 
		.a(a), 
		.b(b), 
		.opcode(opcode), 
		.c(c)
	);

	always @(z or overflow) begin
			 #1
			 $display("time=%d: %b + %b = %b, overflow = %b\n",
				$time, a, b, z, overflow);
	end

	initial begin
		x = 4'b0001;
		#1
		rotation_event = 1'b0;
		#1
		rotation_event = 1'b1;
		#1
		rotation_event = 1'b0;
		#5

		x = 4'b0001;
		#1
		rotation_event = 1'b0;
		#1
		rotation_event = 1'b1;
		#1
		rotation_event = 1'b0;
		#5

		x = 4'b0110;
		#1
		rotation_event = 1'b0;
		#1
		rotation_event = 1'b1;
		#1
		rotation_event = 1'b0;
		#5

		x = 4'b0110;
		#1
		rotation_event = 1'b0;
		#1
		rotation_event = 1'b1;
		#1
		rotation_event = 1'b0;
		#5
		
		x = 4'b0000;
		#1
		rotation_event = 1'b0;
		#1
		rotation_event = 1'b1;
		#1
		rotation_event = 1'b0;
		#5

	$finish;
	end
      
endmodule

