`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    17:27:50 11/25/2018 
// Design Name: 
// Module Name:    controller 
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
`define R 000000
`define ADDU 100001
`define SUBU 100011
`define NOP 000000

`define ORI 001101
`define LUI 001111
`define LW 100011
`define SW 101011
`define JAL 000011
`define JR 000010
`define BEQ 000100
module controller(
    input [5:0] opcode,
    input [5:0] func,
	 output RegDst,
	 output RegWrite,
	 output ALUsrc,
	 output Branch,
	 output MemWrite,
	 output MemToReg,
	 output bgtz,
	 output ext_op,
	 output ext_result,
	 output [2:0] ALUop,
	 output Branch_equal,
	 output jal,
	 output Write_PC,
	 output PC_jump,
	 output RegToPC,
	 output read_half
	// output blez,
	// output bne
    );
wire R,ADDU,SUBU,NOP,ORI,LUI,LW,SW,JAL,JR,BEQ,ADDI,J,SLT,JALR,SLTI,BGTZ,LH;
//wire jalr,slt,sltiu,bgtz;
//check R
assign R=(opcode==6'b000000);
assign ADDU=R&&(func==6'b100001);
assign SUBU=R&&(func==6'b100011);
assign NOP=R&&(func==6'b000000);
assign JR=R&&(func==6'b001000);
assign SLT=R&&(func==6'b101010);
assign JALR=R&&(func==6'b001001);
//check !R
assign LH=(opcode==6'b100001);
assign SLTI=(opcode==6'b001010);
assign BGTZ=(opcode==6'b000111);
assign J=(opcode==6'b000010);
assign ADDI=(opcode==6'b001000);
assign ORI=(opcode==6'b001101);
assign LUI=(opcode==6'b001111);
assign LW=(opcode==6'b100011);
assign SW=(opcode==6'b101011);
assign JAL=(opcode==6'b000011);
assign BEQ=(opcode==6'b000100);
//control 1bit
assign RegDst=ADDU||SUBU||SLT||JALR;
assign RegWrite=ADDU||SUBU||ORI||LUI||LW||JAL||ADDI||SLT||JALR||SLTI||LH;
assign ALUsrc=ORI||LUI||LW||SW||ADDI||BGTZ||SLTI||LH;//Òç³ö£¿
assign Branch=BEQ||BGTZ;
assign MemWrite=SW;
assign MemToReg=LW||LH;
assign ext_op=LW||SW||BEQ||ADDI||BGTZ||SLTI||LH;
assign ext_result=LUI;
assign ALUop[2]=SUBU||BEQ;
assign ALUop[1]=ADDU||SUBU||LUI||LW||SW||BEQ||ADDI||SLT||SLTI||LH;
assign ALUop[0]=ORI||SLT||SLTI;
assign Branch_equal=BEQ;
assign bgtz=BGTZ;
assign jal=JAL;
assign Write_PC=JAL||JALR;
assign PC_jump=JAL||JR||J||JALR;
assign RegToPC=JR||JALR;
assign read_half=LH;
//assign blez=;
//assign bne=;
endmodule
