`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    17:15:46 07/02/2019 
// Design Name: 
// Module Name:    EXT 
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
module EXT(
    input [15:0] EXT_imm_D_i,
	 input [31:0] EXT_pc4_D_i,
    input EXT_sign_D_i,
	 input EXT_lui_D_i,
    output [31:0] EXT_ext_D_o
    );
		reg [31:0] temp;
		initial begin
		temp = 0;
		end
		assign EXT_ext_D_o = temp;
		
		always@(*)
		begin
			if(EXT_sign_D_i)
				temp <= {16'b0,EXT_imm_D_i};
			else
				temp <= {{16{EXT_imm_D_i[15]}},EXT_imm_D_i};
			if(EXT_lui_D_i)
				temp <= {EXT_imm_D_i,16'b0};
		end

endmodule
