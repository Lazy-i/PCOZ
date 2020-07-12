`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    14:58:25 10/16/2018 
// Design Name: 
// Module Name:    ttest 
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
module ttest(
    input [3:0] A,
    input [3:0] B,
	 input Cin;
    input Clk,
    input En,
    output [3:0] Sum,
    output Overflow
    );
	 reg [3:0] a, b;
	 reg c;
	 initial begin
	 a = 0;
	 b = 0;
	 c = 0;
	 end
	assign {Overflow, Sum} = a + b + c;
	always @(posedge Clk) begin
		if (En) begin
			a <= A;
			b <= B;
		end
	end
	
endmodule
