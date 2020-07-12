`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    15:10:34 07/03/2019 
// Design Name: 
// Module Name:    ALU 
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
module ALU(
    input [31:0] ALU_srca_E_i,
    input [31:0] ALU_srcb_E_i,
    input [2:0] ALU_ctrl_E_i,
    output [31:0] ALU_out_E_o
    );

		reg [31:0] A;
		
		assign ALU_out_E_o = A;
		
		always@(*)
		begin
			case(ALU_ctrl_E_i)
			3'b000: A <= ALU_srca_E_i & ALU_srcb_E_i;
			3'b001: A <= ALU_srca_E_i | ALU_srcb_E_i;
			3'b010: A <= ALU_srca_E_i + ALU_srcb_E_i;
			3'b011: A <= 0;
			3'b100: A <= ALU_srca_E_i & !(ALU_srcb_E_i);
			3'b101: A <= ALU_srca_E_i | !(ALU_srcb_E_i);
			3'b110: A <= ALU_srca_E_i - ALU_srcb_E_i;
			3'b111: A <= (ALU_srca_E_i << ALU_srcb_E_i);
			endcase
		end

endmodule
