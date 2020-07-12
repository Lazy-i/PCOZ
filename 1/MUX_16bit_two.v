`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    17:38:38 11/27/2018 
// Design Name: 
// Module Name:    MUX_16bit_two 
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
module MUX_two_16bit(
    input [15:0] select1,
    input [15:0] select2,
    input control,
    output [15:0] result
    );
assign result=control?select2:select1;

endmodule
