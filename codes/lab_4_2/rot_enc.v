`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    23:36:46 02/11/2018 
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
module rot_enc(clk, ROT_A, ROT_B, rotation_event);
	input clk;
	input ROT_A;
	input ROT_B;
	
	output rotation_event;
	
	reg rotation_event;
	
	always @(posedge clk) begin
		if (ROT_A == 1 & ROT_B == 1) begin
			rotation_event <= 1;
		end
		
		if (ROT_A == 0 & ROT_B == 0) begin
			rotation_event <= 0;
		end
		
	end

endmodule