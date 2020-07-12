`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    14:19:45 11/20/2018 
// Design Name: 
// Module Name:    ALU 
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
`include "define.v"
`define ADD 3'b010
`define SUB 3'b110
`define AND 3'b000
`define OR  3'b001
`define LITTLE 3'b011
module ALU(
    input [2:0] ALUop,
    output [31:0] ALU_result,
    output zero,
	 output more0,
    input [31:0] input_1,
    input [31:0] input_2
    );
	 assign ALU_result=
	 (ALUop==`ADD)?(input_1+input_2):
	 (ALUop==`SUB)?(input_1-input_2):
	 (ALUop==`AND)?(input_1&input_2):
	 (ALUop==`OR)?(input_1|input_2):
	 (ALUop==`LITTLE)?(input_1<input_2):
32'h11111111;
	 assign zero=(input_1==input_2);
	 assign more0=(input_1>0);
endmodule
