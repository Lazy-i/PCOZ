`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    16:53:02 07/03/2019 
// Design Name: 
// Module Name:    MUX_2_32 
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
module MUX_2_32(
    input [31:0] MUX1,
    input [31:0] MUX2,
    input  CTRL,
    output [31:0] ANS
    );

		assign ANS = CTRL ? MUX2:MUX1;
	
endmodule
