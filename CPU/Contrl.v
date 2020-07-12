`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    21:34:16 12/11/2018 
// Design Name: 
// Module Name:    Contrl 
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
module Contrl(
    input [5:0] op,
    input [5:0] fun,
    output GRFWrite,
    output GRFDst,
    output ALUSrc,
    output [2:0] ALUContrl,
    output Bantrh,
    output DMWrite,
    output DMtoGRF,
    output LUI,
    output signSrc,
    output Jal,
	 output Jr
    );
	 //Ct
	 wire [5:0]fout;
	 wire oout;
	 Ctrl ctrl(
	 .Op(op),
	 .Fun(fun),
	 .Funout(fout),
	 .Opout(oout)
	 );
	 //and
	 wire addu,subu,ori,lw,sw,lui,beq,jal,jr;
	 AND And(
	 .Op(oout),
	 .f(fout),
	 .addu(addu),
	 .subu(subu),
	 .ori(ori),
	 .lw(lw),
	 .sw(sw),
	 .lui(lui),
	 .beq(beq),
	 .jal(jal),
	 .jr(jr)
	 );
	 //or
	 OR Or(
	 .addu(addu),
	 .subu(subu),
	 .ori(ori),
	 .lw(lw),
	 .sw(sw),
	 .lui(lui),
	 .beq(beq),
	 .jal(jal),
	 .jr(jr),
	 .GRFWrite(GRFWrite),
	 .GRFDst(GRFDst),
	 .ALUSrc(ALUSrc),
	 .Branch(Bantrh),
	 .DMtoGRF(DMtoGRF),
	 .LUI(LUI),
	 .signSrc(signSrc),
	 .Jal(Jal),
	 .Jr(Jr),
	 .DMWrite(DMWrite),
	 .ALUC(ALUContrl)
	 );
endmodule
