`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    21:09:07 11/24/2018 
// Design Name: 
// Module Name:    decoder 
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
module decoder(
    input [31:0] instruction,
    output [5:0] opcode,
    output [5:0] func,
    output [4:0] rs,
    output [4:0] rt,
    output [4:0] rd,
    output [4:0] shamt,
    output [15:0] imm,
    output [25:0] index
    );
assign opcode=instruction[31:26];
assign func=instruction[5:0];
assign rs=instruction[25:21];
assign rt=instruction[20:16];
assign rd=instruction[15:11];
assign shamt=instruction[10:6];
assign imm=instruction[15:0];
assign index=instruction[25:0];
endmodule
