`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    00:04:17 10/17/2018 
// Design Name: 
// Module Name:    pipeline 
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
module pipeline(
    input [31:0] A1,
    input [31:0] A2,
    input [31:0] B1,
    input [31:0] B2,
    input clk,
    output reg [31:0] C =0
    );
		reg [31:0] tp[2:1];
		
	 integer i;
	 
	 initial begin
		tp[1] = 0;
		tp[2] = 0;
	  end
	  always @(posedge clk) begin
		tp[1] <= A1 * B1;
	 	tp[2] <= A2 * B2;
		
		C <= tp[1] + tp[2];
		end
		
endmodule
