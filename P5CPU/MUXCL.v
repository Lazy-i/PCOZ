`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    15:33:01 07/04/2019 
// Design Name: 
// Module Name:    MUXCL 
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
module MUXCL(
    input grfdst,
    input choose_31,
	 input choose_pc8,
    input D2G,
    output [1:0] GRF_A3_sel,
    output [1:0] GRF_WD_sel
    );

		assign GRF_A3_sel = (choose_31 == 1'b1) ? 2 :
									(grfdst == 1'b1) ? 1 :
									2'b00;
		 
		assign GRF_WD_sel = (choose_pc8 == 1'b1) ? 2 :
									(D2G == 1'b1) ? 1 :
									2'b00;


endmodule
