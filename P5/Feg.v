`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    16:34:18 06/26/2019 
// Design Name: 
// Module Name:    Freg 
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
module Dreg(
    input [31:0] Dreg_instr_D_i,
    input [31:0] Dreg_pc4_D_i,
	 input [31:0] Dreg_pc_D_i,
    input Dreg_clk_D_i,
	 input Dreg_clr_D_i,
	 input Dreg_stall_D_i,
    output [31:0] Dreg_instr_D_o,
    output [31:0] Dreg_pc4_D_o,
	 output [31:0] Dreg_pc_D_o
    );
		reg [31:0] instr;
		reg [31:0] pc4;
		reg [31:0] pc;
		
		initial begin
		instr = 0;
		pc4 = 32'h3004;
		pc = 32'h3000;
		end
		assign Dreg_instr_D_o = instr;
		assign Dreg_pc4_D_o = pc4;
		assign Dreg_pc_D_o = pc;
		
		always @(posedge Dreg_clk_D_i)
		begin
			if(Dreg_clr_D_i) begin
				pc <= 32'h3000;
				instr <= 0;
				pc4 <=32'h3004;
			end
			else if(Dreg_stall_D_i != 1) begin
				pc <= Dreg_pc_D_i;
				instr <= Dreg_instr_D_i;
				pc4 <= Dreg_pc4_D_i;
			end
		end

endmodule
