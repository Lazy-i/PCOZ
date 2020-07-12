`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    15:15:14 11/25/2018 
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
    input reset,
    input clk
    );
//IFU
wire PCsrc;
wire[31:0] PCBranch;
wire[31:0] reg_toPC,ra_toPC;
wire[31:0] PC,busPC;
wire[31:0] instruction;
//decoder
wire[15:0] imm;
wire[5:0] opcode,func;
wire[4:0] rs,rt,rd,shamt;
wire[25:0] index;
//controller
wire read_half,bgtz,RegDst,ALUsrc,RegWrite,Branch,MemWrite,MemtoReg,ext_op,ext_result,Branch_equal,jal,Write_PC,PC_jump,RegToPC;
wire[2:0] ALUop;
//GRF
wire [4:0] RA,RB,RW,RW_may;
wire [31:0] RegData,busW,busA,busB;
//ALU
wire [31:0]ALU_input2,ALU_result;
wire zero,more0;
//ext
wire [31:0]ext_out;
//DM
wire [31:0]Mem_result,lh_ext_result,Mem_result_1;
wire [15:0]lh_result;
//IFU
IFU ifu(
	.clk(clk),
	.reset(reset),
	.PCsrc(PCsrc),
	.PC_jump(PC_jump),
	.PCBranch(PCBranch),
	.reg_toPC(busPC),
	.instruction(instruction),
	.PC(PC)
	);
assign ra_toPC={{6{0}},index[25:0]}<<2;
MUX_two_32bit choose_PC(//跳转指令目标地址选择
	.select1(ra_toPC),//jal
	.select2(busA),//jr/jalr
	.control(RegToPC),
	.result(busPC)
);
//decoder
decoder Decoder(
	.instruction(instruction),
	.imm(imm),
	.opcode(opcode),
	.func(func),
	.rs(rs),
	.rd(rd),
	.rt(rt),
	.shamt(shamt),
	.index(index)
);
//controller
controller p4_control(
	.opcode(opcode),
	.func(func),
	.RegDst(RegDst),//写入寄存器rt rd的选择 ->GRF
	.ALUsrc(ALUsrc),//busB与ext(imm)的选择 ->ALU
	.Branch(Branch),//是否是分支指令
	.RegWrite(RegWrite),//寄存器写使能
	.MemWrite(MemWrite),//存储器写使能
	.MemToReg(MemToReg),//输入reg的值 从alu_result与mem_result中选择
	.ext_op(ext_op),//拓展方式 0为无符号拓展 1为符号拓展
	.ext_result(ext_result),//0为拓展 1为lui
	.ALUop(ALUop),
	.Branch_equal(Branch_equal),//beq
	.jal(jal),//选择31号寄存器作为RW还是RegDst的选择结果
	.Write_PC(Write_PC),//将是否将PC+4的值存入GRF
	.RegToPC(RegToPC),//对跳转指令写入PC值得选择 jal与jr/jalr之间
	.PC_jump(PC_jump),//是否为一条跳转指令
	.bgtz(bgtz),//bgtz
	.read_half(read_half)//lh
);
//GRF
MUX_two_5bit choose_write_reg_number(
	.select1(rt),
	.select2(rd),
	.control(RegDst),
	.result(RW_may)
);
MUX_two_5bit choose_write_reg_jal(
	.select1(RW_may),
	.select2(5'b11111),
	.control(jal),
	.result(RW)
);
MUX_two_32bit choose_write_reg_data(
	.select1(RegData),
	.select2(PC+4),
	.control(Write_PC),
	.result(busW)
);
assign RA=rs;
assign RB=rt;
GRF grf(
	.clk(clk),
	.reset(reset),
	.RA(RA),
	.RB(RB),
	.RW(RW),
	.RegWrite(RegWrite),
	.PC(PC),
	.busA(busA),
	.busB(busB),
	.busW(busW)
);
//ALU
assign PCsrc=Branch&&((Branch_equal&&zero)||(bgtz&&more0));
MUX_two_32bit choose_alu_input2(
	.select1(busB),
	.select2(ext_out),
	.control(ALUsrc),
	.result(ALU_input2)
);
ALU alu(
	.ALUop(ALUop),
	.input_1(busA),
	.input_2(ALU_input2),
	.zero(zero),
	.more0(more0),
	.ALU_result(ALU_result)
);
//ext
assign PCBranch=(ext_out)<<2;
ext e(
	.imm(imm),
	.ext_op(ext_op),
	.ext_result(ext_result),
	.out(ext_out)
);
//DM
DM dm(
	.clk(clk),
	.MemWrite(MemWrite),
	.addr(ALU_result),//read address
	.reset(reset),
	.PC(PC),
	.WriteData(busB),
	.ReadData(Mem_result)
);
MUX_two_16bit lh_choose(
	.select1(Mem_result[15:0]),
	.select2(Mem_result[31:16]),
	.control(ALU_result[1]),
	.result(lh_result)
);
ext lh_ext(
	.imm(lh_result),
	.ext_op(1'b1),
	.ext_result(1'b0),
	.out(lh_ext_result)
);
MUX_two_32bit choose_select_with_ALUresult(
	.select1(Mem_result),
	.select2(lh_ext_result),
	.control(read_half),
	.result(Mem_result_1)
);
MUX_two_32bit choose_RegData(
	.select1(ALU_result),
	.select2(Mem_result_1),
	.control(MemToReg),
	.result(RegData)
);
endmodule
