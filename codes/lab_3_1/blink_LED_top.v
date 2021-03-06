`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   00:50:56 02/05/2018
// Design Name:   blink
// Module Name:   /home/ubermensch/Academics/sems/sem8/cs220/cs220/codes/lab_3_1/blink_LED_top.v
// Project Name:  lab_3_1
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: blink
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module blink_LED_top;

	// Inputs
	reg clk;

	// Outputs
	wire ledpin;

	// Instantiate the Unit Under Test (UUT)
	blink uut (
		.clk(clk), 
		.ledpin(ledpin)
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

