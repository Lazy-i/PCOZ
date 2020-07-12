`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    19:48:12 11/07/2018 
// Design Name: 
// Module Name:    string2 
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
module string2(
    input clk,
    input clr,
    input [7:0] in,
    input out
    );
	reg [31:0] sum = 0;
	reg [3;0] state = 0,st = 0;
	always@(posedge clk || posedge clr)
		if(in >= "0" && in <= "9") state = 1;
		else if(in == "(") state = 2;
		else if(in == ")") state = 3;
		else if(in == "+") state = 4;
		else if(in == "*") state = 5;
		else state =6;
		case(st)
			0:
			begin
				if(state == 1 || state == 2) st = 1;
				else st = 0;
			end
			1:
			begin
				if(state == 1) st = 2;
				else if(state == 3) st = 1;
				
endmodule
