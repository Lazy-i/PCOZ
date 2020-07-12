`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    20:54:56 11/24/2018 
// Design Name: 
// Module Name:    ext 
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
module ext(
    input [15:0] imm,
    output [31:0] out,
    input ext_op,
    input ext_result
    );
assign out=ext_result?{{16{0}},imm}<<16:
				ext_op?{{16{imm[15]}},imm}:{{16{0}},imm};
endmodule
