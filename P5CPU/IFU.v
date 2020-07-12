`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    16:25:03 06/26/2019 
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
    input [31:0] IFU_pc_F_i,
    output [31:0] IFU_instr_F_o
    );
	IM IM (
	.IM_pc_F_i(IFU_pc_F_i),
	.IM_instr_F_o(IFU_instr_F_o)
	);

endmodule
