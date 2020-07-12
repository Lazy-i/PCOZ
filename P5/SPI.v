`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    16:49:42 06/26/2019 
// Design Name: 
// Module Name:    SPI 
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
module SPI(
    input [31:0] SPI_instr_D_i,
    output [5:0] SPI_op_D_o,
    output [5:0] SPI_fun_D_o,
    output [4:0] SPI_rs_D_o,
    output [4:0] SPI_rt_D_o,
    output [4:0] SPI_rd_D_o,
    output [15:0] SPI_imm_D_o,
	 output [25:0] SPI_i26_D_o
    ); 
		
		assign SPI_op_D_o  = SPI_instr_D_i[31:26];
		assign SPI_fun_D_o = SPI_instr_D_i[5:0];
		assign SPI_rs_D_o  = SPI_instr_D_i[25:21];
		assign SPI_rt_D_o  = SPI_instr_D_i[20:16];
		assign SPI_rd_D_o  = SPI_instr_D_i[15:11];
		assign SPI_imm_D_o = SPI_instr_D_i[15:0];
		assign SPI_i26_D_o = SPI_instr_D_i[25:0];

endmodule
