`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    15:43:12 07/03/2019 
// Design Name: 
// Module Name:    Wreg 
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
module Wreg(
    input [31:0] Wreg_str_W_i,
    input [31:0] Wreg_pc4_W_i,
    input [31:0] Wreg_alo_W_i,
    input [31:0] Wreg_dmd_W_i,
	 input [1:0] Wreg_eal_W_i,
	 input  Wreg_clk_W_i,
	 input  Wreg_clr_W_i,
    output [31:0] Wreg_str_W_o,
    output [31:0] Wreg_pc4_W_o,
    output [31:0] Wreg_alo_W_o,
    output [31:0] Wreg_dmd_W_o,
	 output [1:0] Wreg_eal_W_o
    );
	 
	 reg [31:0] str, pc4, alo, dmd;
	 reg [1:0] equal;
	 initial begin
		str = 0;
		pc4 = 32'h3000;
		alo = 0;
		dmd = 0;
		equal = 0;
	 end
	 assign Wreg_str_W_o = str;
	 assign Wreg_pc4_W_o = pc4;
	 assign Wreg_alo_W_o = alo;
	 assign Wreg_dmd_W_o = dmd;
	 assign Wreg_eal_W_o = equal;
	 
		always@(posedge Wreg_clk_W_i) begin
		if(Wreg_clr_W_i) begin
			str <= 0;
			pc4 <= 0;
			alo <= 0;
			dmd <= 0;
			equal <= 0;
		end
		else
			begin
				str <= Wreg_str_W_i;
				pc4 <= Wreg_pc4_W_i;
				alo <= Wreg_alo_W_i;
				dmd <= Wreg_dmd_W_i;
				equal <= Wreg_eal_W_i;
			end
		end

endmodule
