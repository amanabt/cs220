`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    17:09:37 02/11/2018 
// Design Name: 
// Module Name:    ripple_led_top 
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
module ripple_led_top(clk, ROT_A, ROT_B,
							 led0, led1, led2, led3, led4, led5, led6, led7);
	input clk;
	input ROT_A;
	input ROT_B;
	
	output led0;
	reg led0;
	output led1;
	reg led1;
	output led2;
	reg led2;
	output led3;
	reg led3;
	output led4;
	reg led4;
	output led5;
	reg led5;
	output led6;
	reg led6;
	output led7;
	reg led7;
	
	wire rotation_event;
	wire rotation_direction;
	
	rot_enc RE1 (clk, ROT_A, ROT_B, rotation_event, rotation_direction);
	rotate_LED R_LED (clk, rotation_event, rotation_direction,
							led0, led1, led2, led3, led4, led5, led6, led7);

endmodule
