`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   01:20:53 02/05/2018
// Design Name:   ripple_LED
// Module Name:   /home/ubermensch/Academics/sems/sem8/cs220/cs220/codes/lab_3_2/ripple_LED_top.v
// Project Name:  lab_3_2
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: ripple_LED
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module ripple_LED_top;

	// Inputs
	reg clk;

	// Outputs
	wire led0;
	wire led1;
	wire led2;
	wire led3;
	wire led4;
	wire led5;
	wire led6;
	wire led7;

	// Instantiate the Unit Under Test (UUT)
	ripple_LED uut (
		.clk(clk), 
		.led0(led0), 
		.led1(led1), 
		.led2(led2), 
		.led3(led3), 
		.led4(led4), 
		.led5(led5), 
		.led6(led6), 
		.led7(led7)
	);

	initial begin
		// Initialize Inputs
		clk = 0;

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here

	end

	always begin
			 #1 clk = !clk;
	end

endmodule

