`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    23:52:54 12/11/2018 
// Design Name: 
// Module Name:    PCA 
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
module PCA(
    input [31:0] nowpc,
    input [25:0] imm,
    output [31:0] npc,
    output [31:0] pc_4,
    input zero,
    input bantrh,
    input jal,
	 input jr,
    input [31:0] jr_reg
    );
	 
	 wire [31:0] temp,temp1;
	 assign pc_4 = nowpc + 4;
	 assign temp1 = {nowpc[31:28],imm,2'b0};
	 assign temp = $signed(imm[15:0]<<2);
	 assign npc = zero && bantrh ? temp + nowpc + 4 :
							jal ? temp1 : 
								jr ? jr_reg : pc_4;
								
	 
endmodule
