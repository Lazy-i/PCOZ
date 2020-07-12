`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    16:20:11 06/26/2019 
// Design Name: 
// Module Name:    IM 
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
module IM(
    input [31:0] IM_pc_F_i,
    output [31:0] IM_instr_F_o
    );
		reg [31:0] im [1023:0];
		initial begin
			$readmemh("code.txt",im);
		end
		assign IM_instr_F_o = im[IM_pc_F_i[11:2]];

endmodule
