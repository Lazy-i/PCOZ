`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    15:07:47 07/04/2019 
// Design Name: 
// Module Name:    BLINK 
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
module BLINK(
    input [1:0] equal,
    input branch,
    input j,
    input jr,
    output [1:0] blinkctrl
    );
	
			assign blinkctrl = jr ? 3:
									j ? 2:
									equal && branch ? 1: 
									0;

endmodule
