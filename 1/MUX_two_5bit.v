`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    21:52:12 11/25/2018 
// Design Name: 
// Module Name:    MUX_two_5bit 
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
module MUX_two_5bit(
    input [4:0] select1,
    input [4:0] select2,
    output [4:0] result,
    input control
    );
assign result=control?select2:select1;
endmodule
