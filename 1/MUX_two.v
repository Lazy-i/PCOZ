`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    15:40:12 11/25/2018 
// Design Name: 
// Module Name:    MUX_two 
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
module MUX_two_32bit(
    input [31:0] select1,
    input [31:0] select2,
    output [31:0] result,
    input control
    );
assign result=control?select2:select1;

endmodule
