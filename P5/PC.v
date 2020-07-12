`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    16:03:27 06/26/2019 
// Design Name: 
// Module Name:    PC 
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
module PC(
    input [31:0] PC_npc_F_i,
    input PC_clk_F_i,
    input PC_reset_F_i,
	 input PC_stall_F_i,
    output [31:0] PC_pc_F_o
    );
		reg [31:0] regpc;
		initial begin
			regpc = 32'h3000;
		end
		assign PC_pc_F_o = regpc;
		always @(posedge PC_clk_F_i)
		begin
			if(PC_reset_F_i)
				begin
					regpc <= 32'h3000;
				end
			else if (PC_stall_F_i != 1)
				begin
					regpc <= PC_npc_F_i;
				end
		end
		
endmodule
