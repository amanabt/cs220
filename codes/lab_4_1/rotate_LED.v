`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    16:50:27 02/11/2018 
// Design Name: 
// Module Name:    rotate_LED 
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
module rotate_LED(clk, rotation_event, rotation_direction,
						led0, led1, led2, led3, led4, led5, led6, led7);
	input clk;
	input rotation_event;
	input rotation_direction;
	
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

	reg prev_rotation_event = 1;
	
	always @(posedge clk) begin
		prev_rotation_event <= rotation_event;

		if (prev_rotation_event == 0 & rotation_event == 1) begin
			if (rotation_direction == 0) begin
				led0 <= led1;
				led1 <= led2;
				led2 <= led3;
				led3 <= led4;
				led4 <= led5;
				led5 <= led6;
				led6 <= led7;
				led7 <= led0;
			end
			
			if (rotation_direction == 1) begin
				led1 <= led0;
				led2 <= led1;
				led3 <= led2;
				led4 <= led3;
				led5 <= led4;
				led6 <= led5;
				led7 <= led6;
				led0 <= led7;
			end
		end
	end
endmodule
