`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    22:09:26 02/11/2018 
// Design Name: 
// Module Name:    seven_bt_ad_sub 
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
module seven_bt_ad_sub( x, rotation_event, z, overflow, a, b, opcode, c);

input [3:0] x;
input rotation_event;

output opcode;
reg opcode;


reg [3:0] counter = 0;

output [6:0] a;
reg [6:0] a;

output [6:0] b;
reg [6:0] b;

output [6:0] c;
wire [6:0] c;

wire [6:0] d;

output [6:0] z;
wire [6:0] z;

output overflow;

wire carry;
wire [19:0] carry0;

always @(posedge rotation_event)begin

	if (counter == 4) begin
			opcode <= x[0];
			counter <= counter + 1;
		end
	else if (counter == 0) begin
			a[3:0]<=x;
			counter <= counter + 1;
		end
	else if (counter == 1) begin
			a[6:4]<=x;
			counter <= counter + 1;
		end
	else if (counter == 2) begin
			b[3:0]<=x;
			counter <= counter + 1;
		end
		else if (counter == 3) begin
			b[6:4]<=x;
			counter <= counter + 1;
		end
	else begin
			counter <= 0;
		end
		
end

		full_adder FA14 (b[0], opcode, 1'b0, d[0], carry0[13]);
		full_adder FA15 (b[1], opcode, 1'b0, d[1], carry0[14]);
		full_adder FA16 (b[2], opcode, 1'b0, d[2], carry0[15]);
		full_adder FA17 (b[3], opcode, 1'b0, d[3], carry0[16]);
		full_adder FA18 (b[4], opcode, 1'b0, d[4], carry0[17]);
		full_adder FA19 (b[5], opcode, 1'b0, d[5], carry0[18]);
		full_adder FA20 (b[6], opcode, 1'b0, d[6], carry0[19]);

		full_adder FA0 (d[0], opcode, 1'b0   , c[0], carry0[0]);
		full_adder FA1 (d[1], 1'b0, carry0[0], c[1], carry0[1]);
		full_adder FA2 (d[2], 1'b0, carry0[1], c[2], carry0[2]);
		full_adder FA3 (d[3], 1'b0, carry0[2], c[3], carry0[3]);
		full_adder FA4 (d[4], 1'b0, carry0[3], c[4], carry0[4]);
		full_adder FA5 (d[5], 1'b0, carry0[4], c[5], carry0[5]);
		full_adder FA6 (d[6], 1'b0, carry0[5], c[6], carry0[6]);

		full_adder FA7 (a[0], c[0], 1'b0     ,   z[0], carry0[7]);
		full_adder FA8 (a[1], c[1], carry0[7],   z[1], carry0[8]);
		full_adder FA9 (a[2], c[2], carry0[8],   z[2], carry0[9]);
		full_adder FA10 (a[3], c[3], carry0[9],  z[3], carry0[10]);
		full_adder FA11 (a[4], c[4], carry0[10], z[4], carry0[11]);
		full_adder FA12 (a[5], c[5], carry0[11], z[5], carry0[12]);
		full_adder FA13 (a[6], c[6], carry0[12], z[6], overflow);
		
endmodule
