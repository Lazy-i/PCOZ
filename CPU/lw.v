`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    11:39:02 12/07/2018 
// Design Name: 
// Module Name:    lw 
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
module spi(
    input [31:0] im,
    output [4:0] rs,
    output [5:0] op,
    output [4:0] rt,
    output [5:0] fun,
    output [4:0] rd,
    output [15:0] sign
    );
	assign rs = im[25:21];
	assign op = im[31:26];
	assign rt = im[20:16];
	assign fun = im[5:0];
	assign rd = im[15:11];
	assign sign = im[15:0];

endmodule
