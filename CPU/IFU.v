`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    11:31:29 12/07/2018 
// Design Name: 
// Module Name:    IFU 
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
module IFU(
    input [31:0] pc,
    output [4:0] rs,
    output [5:0] op,
    output [4:0] rt,
    output [5:0] fun,
    output [4:0] rd,
	 output [25:0] imm,
    output [15:0] sign
    );
	wire [31:0]zhil;
	IM IM (
	.PC(pc),
	.instr(zhil)
	);
	spi spi(
	zhil,
	rs,
	op,
	rt,
	fun,
	rd,
	sign);
	assign imm = zhil[25:0];
endmodule
