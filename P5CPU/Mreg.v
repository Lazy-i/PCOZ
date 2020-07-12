`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    15:18:27 07/03/2019 
// Design Name: 
// Module Name:    Mreg 
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
module Mreg(
    input [31:0] Mreg_str_M_i,
    input [31:0] Mreg_pc4_M_i,
    input [31:0] Mreg_alo_M_i,
    input [31:0] Mreg_rtd_M_i,
	 input [1:0] Mreg_eal_M_i,
	 input Mreg_clk_M_i,
	 input Mreg_clr_M_i,
    output [31:0] Mreg_str_M_o,
    output [31:0] Mreg_pc4_M_o,
    output [31:0] Mreg_alo_M_o,
    output [31:0] Mreg_rtd_M_o,
	 output [1:0] Mreg_eal_M_o
    );
	 
		reg [31:0] str,pc4,alo,rtd;
		reg [1:0] equal;
		initial begin
			str = 0;
			pc4 = 32'h3000;
			alo = 0;
			rtd = 0;
			equal = 0;
		end
		assign Mreg_str_M_o = str;
		assign Mreg_pc4_M_o = pc4;
		assign Mreg_alo_M_o = alo;
		assign Mreg_rtd_M_o = rtd;
		assign Mreg_eal_M_o = equal;
	 
		always@(posedge Mreg_clk_M_i)
		if (Mreg_clr_M_i) begin
			str <= 0;
			pc4 <= 0;
			alo <= 0;
			rtd <= 0;
			equal <= 0;
		end
		else
		begin
			str <= Mreg_str_M_i;
			pc4 <= Mreg_pc4_M_i;
			alo <= Mreg_alo_M_i;
			rtd <= Mreg_rtd_M_i;
			equal <= Mreg_eal_M_i;
		end

endmodule
