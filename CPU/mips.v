`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    10:44:15 12/07/2018 
// Design Name: 
// Module Name:    mips 
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
module mips(
   input clk,
   input reset
   );
	
//PC
	wire [31:0]pc,npc;
//Contrl	
	wire GRFWrite,GRFDst,ALUSrc,Bantrh,DMWrite,DMtoGRF,LUI,signSrc,Jal,Jr;
	wire [2:0] ALUContrl;
//EXT
	wire [31:0] sign;
//GRF
	wire [4:0]GRFA3,GRFA2;
	wire [31:0]GRFWD3,GRFWD2,GRFWD,SrcA,RD2;
//IFU
	wire [4:0]rs,rt,rd;
	wire [5:0]op,fun;
	wire [15:0] unsign;
	wire [25:0] imm;
//PCA
	wire [31:0] pc_4;
//ALU
	wire [31:0] SrcB,ALURE;
	wire zero;
//DM
	wire [31:0] DMData;
//PC
	PC PC(
	.NPC(npc),
	.clk(clk),
	.reset(reset),
	.PC(pc)
	);
//IFU
	IFU IFU(
	.pc(pc),
	.rs(rs),
	.rd(rd),
	.op(op),
	.rt(rt),
	.fun(fun),
	.imm(imm),
	.sign(unsign)
	);

//GRF
	MUX1 M_Reg_Addr(
	.in1(rt),
	.in0(rd),
	.Cirl(GRFDst),
	.out(GRFA2)
	);
	MUX1 M_Jal_Addr(
	.in1(GRFA2),
	.in0(5'h1f),
	.Cirl(Jal),
	.out(GRFA3)
	);
	MUX2 M_Reg_Data_ALU_DM(
	.in1(ALURE),
	.in0(DMData),
	.Cirl(DMtoGRF),
	.out(GRFWD)
	);
	MUX2 M_Reg_Data_LUI(
	.in1(GRFWD),
	.in0(sign),
	.Cirl(LUI),
	.out(GRFWD2)
	);
	MUX2 M_Reg_Data_Jal(
	.in1(GRFWD2),
 	.in0(pc_4),
	.Cirl(Jal),
	.out(GRFWD3)
	);
	GRF GRF(
	.nowpc(pc),
	.A1(rs),
	.A2(rt),
	.A3(GRFA3),
	.WD3(GRFWD3),
	.clk(clk),
	.WE3(GRFWrite),
	.RE(reset),
	.RD1(SrcA),
	.RD2(RD2)
	);
//EXT
	EXT EXT(
	.unsign(unsign),
	.signSrc(signSrc),
	.lui(LUI),
	.sign(sign)
	);
//CONTIRL
	Contrl Contrl(
	.op(op),
	.fun(fun),
	.GRFWrite(GRFWrite),
	.GRFDst(GRFDst),
	.ALUSrc(ALUSrc),
	.Bantrh(Bantrh),
	.DMWrite(DMWrite),
	.DMtoGRF(DMtoGRF),
	.LUI(LUI),
	.ALUContrl(ALUContrl),
	.signSrc(signSrc),
	.Jal(Jal),
	.Jr(Jr)
	);
//PCA
	PCA pca(
	.nowpc(pc),
	.imm(imm),
	.zero(zero),
	.bantrh(Bantrh),
	.jal(Jal),
	.jr(Jr),
	.jr_reg(SrcA),
	.npc(npc),
	.pc_4(pc_4)
	);
//ALU
	MUX2 M_ALU_SRCB(
	.in1(RD2),
	.in0(sign),
	.Cirl(ALUSrc),
	.out(SrcB)
	);
	ALU ALu(
	.SrcA(SrcA),
	.SrcB(SrcB),
	.ALUOp(ALUContrl),
	.Zero(zero),
	.ALUre(ALURE)
	);
//DM
	DM DM(
	.nowpc(pc),
	.A(ALURE),
	.WD(RD2),
	.clk(clk),
	.WE(DMWrite),
	.Rest(reset),
	.DMData(DMData)
	);
endmodule
