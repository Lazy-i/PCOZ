`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    20:18:37 07/04/2019 
// Design Name: 
// Module Name:    CMP 
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
module CMP(
    input [31:0] RD1,
    input [31:0] RD2,
	 input bgezal,
    output [1:0] equal
    );
	 
	 assign equal = (($signed(RD1) >= 0) && bgezal) ? 2 :
								  ((RD1 == RD2)) ? 1 : 
													  0 ;


endmodule
