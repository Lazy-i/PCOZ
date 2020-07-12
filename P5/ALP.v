`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    15:07:25 07/03/2019 
// Design Name: 
// Module Name:    ALP 
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
module ALP(
    input [31:0] ALP_pc4_D_i,
    input [31:0] ALP_ext_D_i,
    output [31:0] ALP_npc_D_o
    );
	
	assign ALP_npc_D_o = ALP_pc4_D_i + ALP_ext_D_i;

endmodule
