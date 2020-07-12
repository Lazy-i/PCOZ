`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    17:02:44 07/03/2019 
// Design Name: 
// Module Name:    MUX_3_32 
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
module MUX_3_32(
    input [31:0] MUX1,
    input [31:0] MUX2,
    input [31:0] MUX3,
    input [1:0] CTRL,
    output [31:0] ANS
    );
		reg [31:0] tp;
		assign ANS = tp;
		always@(*)begin
		case(CTRL)
			2:tp <= MUX3;
			1:tp <= MUX2;
			0:tp <= MUX1;
		endcase
		end

endmodule
