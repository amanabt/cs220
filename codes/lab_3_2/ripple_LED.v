`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    01:07:02 02/05/2018 
// Design Name: 
// Module Name:    ripple_LED 
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
`define SHIFT_TIME 50_000_000

module ripple_LED(clk, led0, led1, led2,
						led3, led4, led5, led6,
						led7);
	input clk;

	output led0;
	reg led0 = 1;
	output led1;
	reg led1 = 0;
	output led2;
	reg led2 = 0;
	output led3;
	reg led3 = 0;
	output led4;
	reg led4 = 0;
	output led5;
	reg led5 = 0;
	output led6;
	reg led6 = 0;
	output led7;
	reg led7 = 0;

	//Set Counter Variable
	reg [25:0] counter = 50_000_000;        // 26 bit variable

	always @(posedge clk) begin
		if (counter == 0) begin
			counter <= 50_000_000;
			led1 <= led0;
			led2 <= led1;
			led3 <= led2;
			led4 <= led3;
			led5 <= led4;
			led6 <= led5;
			led7 <= led6;
			led0 <= led7;
		end
		else begin
				counter <= counter - 1;
		end
	end

endmodule
