`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    13:26:17 10/15/2018 
// Design Name: 
// Module Name:    Fsabc 
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
module Fsabc(
    input A,
    input B,
    input C,
    output F
    );
	assign F = !(!(A&&B)||!(A&&C)||!(B&&C));

endmodule