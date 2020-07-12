`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    20:31:14 12/11/2018 
// Design Name: 
// Module Name:    OR 
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
module OR(
    input addu,
    input subu,
    input ori,
    input lw,
    input sw,
    input beq,
    input lui,
    input jal,
    input jr,
	 input j,
    output GRFWrite,
    output GRFDst,
    output ALUSrc,
    output [2:0] ALUC,
    output Branch,
    output DMtoGRF,
    output LUI,
	 output DMWrite,
    output signSrc,
    output choose_31,
	 output choose_pc8,
	 output J,
	 output Jr
    );
	 assign GRFWrite = addu || subu || ori ||	 lw || lui || jal;
	 assign GRFDst = addu || subu;
	 assign ALUSrc = ori || lw || sw || lui;
	 assign ALUC[2:2] = subu;
	 assign ALUC[1:1] = addu || subu || lw || sw ;
	 assign ALUC[0:0] = ori || lui;
	 assign Branch = beq ||jal || jr || j;
	 assign DMWrite = sw;
	 assign DMtoGRF = lw;
	 assign LUI = lui;
	 assign signSrc = ori;
	 assign choose_31 = jal;
	 assign choose_pc8 = jal;
	 assign J = j || jal;
	 assign Jr = jr;
endmodule
