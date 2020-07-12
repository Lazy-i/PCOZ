`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    19:33:07 07/02/2019 
// Design Name: 
// Module Name:    Ereg 
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
module Ereg(
    input [31:0] Ereg_str_E_i,
    input [31:0] Ereg_pc4_E_i,
    input [31:0] Ereg_rsd_E_i,
    input [31:0] Ereg_rtd_E_i,
    input [31:0] Ereg_ext_E_i,
	 input [1:0] Ereg_eal_E_i,
	 input Ereg_clr_E_i,
	 input Ereg_clk_E_i,
    output [31:0] Ereg_str_E_o,
    output [31:0] Ereg_pc4_E_o,
    output [31:0] Ereg_rsd_E_o,
    output [31:0] Ereg_rtd_E_o,
    output [31:0] Ereg_ext_E_o,
	 output [1:0] Ereg_eal_E_o
    );
		reg [31:0] instr,pc4,rsd,rtd,ext;
		reg [1:0] equal;
		assign Ereg_str_E_o = instr;
		assign Ereg_pc4_E_o = pc4;
		assign Ereg_rsd_E_o = rsd;
		assign Ereg_rtd_E_o = rtd;
		assign Ereg_ext_E_o = ext;
		assign Ereg_eal_E_o = equal;
		initial begin
			instr = 0;
			pc4 = 32'h3000;
			rsd = 0;
			rtd = 0;
			ext = 0;
			equal = 0;
		end
		always@(posedge Ereg_clk_E_i)
		begin
			if(Ereg_clr_E_i) begin
				instr <= 0;
				pc4 	<= 32'h3000;
				rsd	<= 0;
				rtd	<= 0;
				ext	<= 0; 	
				equal <= 0;
			end
			else begin 
				instr <= Ereg_str_E_i;
				pc4 	<= Ereg_pc4_E_i;
				rsd	<= Ereg_rsd_E_i;
				rtd	<= Ereg_rtd_E_i;
				ext	<= Ereg_ext_E_i; 
				equal <= Ereg_eal_E_i;
			end
		end

endmodule
