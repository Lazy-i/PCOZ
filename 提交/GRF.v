`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    17:07:57 06/26/2019 
// Design Name: 
// Module Name:    GRF 
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
module GRF(
    input [31:0] GRF_npc_D_i,
    input [4:0] GRF_A1_D_i,
    input [4:0] GRF_A2_D_i,
    input [4:0] GRF_A3_D_i,
    input [31:0] GRF_WD3_D_i,
    input GRF_clk_D_i,
    input GRF_re_D_i,
	 input GRF_we3_D_i,
    output [31:0] GRF_RD1_D_o,
    output [31:0] GRF_RD2_D_o
    );

		reg[31:0] Reg[31:0];
		integer i;
		initial begin
			for(i = 0;i < 32;i = i + 1)
				Reg[i] <= 0;
		end
		assign GRF_RD1_D_o = Reg[GRF_A1_D_i];
		assign GRF_RD2_D_o = Reg[GRF_A2_D_i];
		always @(posedge GRF_clk_D_i)
		begin
			if(GRF_re_D_i)
			begin
				for(i = 0;i < 32;i = i + 1)
				Reg[i] <= 0;
			end
			else if(GRF_we3_D_i)begin
				if(GRF_A3_D_i != 0)
				begin
					Reg[GRF_A3_D_i] <= GRF_WD3_D_i;
					$display("%d@%h: $%d <= %h", $time, GRF_npc_D_i,GRF_A3_D_i,GRF_WD3_D_i);
				end
			end
		end

endmodule
