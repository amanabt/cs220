`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    16:39:04 02/11/2018 
// Design Name: 
// Module Name:    rot_enc 
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
module rot_enc(clk, ROT_A, ROT_B, rotation_event, rotation_direction);
	input clk;
	input ROT_A;
	input ROT_B;
	
	output rotation_event;
	output rotation_direction;
	
	reg rotation_event;
	reg rotation_direction;
	
	always @(posedge clk) begin
		if (ROT_A == 1 & ROT_B == 1) begin
			rotation_event <= 1;
		end
		
		if (ROT_A == 0 & ROT_B == 0) begin
			rotation_event <= 0;
		end
		
		if (ROT_A == 0 & ROT_B == 1) begin
			rotation_direction <= 1;
		end
		
		if (ROT_A == 1 & ROT_B == 0) begin
			rotation_direction <= 0;
		end
	end

endmodule
