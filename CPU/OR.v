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
	 input bgezal,
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
	 output cbgezal,
    output Jal,
	 output J,
	 output Jr
    );
	 assign GRFWrite = addu || subu || ori ||	 lw || lui || jal || bgezal;
	 assign GRFDst = addu || subu;
	 assign ALUSrc = ori || lw || sw || lui;
	 assign ALUC[2:2] = subu;
	 assign ALUC[1:1] = addu || subu || lw || sw ;
	 assign ALUC[0:0] = ori || lui;
	 assign Branch = beq ;
	 assign DMWrite = sw;
	 assign DMtoGRF = lw;
	 assign cbgezal = bgezal;
	 assign LUI = lui;
	 assign signSrc = ori;
	 assign Jal = jal || bgezal;
	 assign J = j || jal;
	 assign Jr = jr ;
endmodule
