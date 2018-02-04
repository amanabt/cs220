`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    00:44:44 02/05/2018 
// Design Name: 
// Module Name:    blink_LED 
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

`define ON_TIME 50000000
`define OFF_TIME 25000000

module blink(clk, ledpin);
	input clk;
	
	output ledpin;
	reg ledpin = 0;

	//Set Counter Variable
	reg [25:0] counter = 25_000_000;	// 26 bit variable

	always @(posedge clk) begin
		if (counter == 0) begin
			counter <= 25_000_000;
			ledpin <= !ledpin;
		end
		else begin
			counter <= counter - 1;
		end
	end

endmodule