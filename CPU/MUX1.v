`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    00:53:17 12/11/2018 
// Design Name: 
// Module Name:    MUX1 
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
module MUX1(
    input [4:0] in0,
    input [4:0] in1,
    input Cirl,
    output [4:0] out
    );
	assign out = Cirl ? in0 : in1;

endmodule
