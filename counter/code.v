`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    15:10:05 10/16/2018 
// Design Name: 
// Module Name:    code 
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
module code(
    input Clk,
    input Slt,
    input Reset,
    input En,
    output [63:0] Output0,
    output [63:0] Output1
    );
	 reg [63:0] ot0 = 0,ot1 = 0,temp = 0;
	 assign Output0 = ot0,Output1 = ot1;
	 
	always@(posedge Clk) begin
		if(Reset) begin
			ot0 = 0;
			ot1 = 0;
		end
		else begin
			if(En) begin
				if(Slt) begin 
					temp = temp + 1;
					if(temp % 4 == 0) ot1 = ot1 + 1;
				end
				else ot0 = ot0 + 1;
			end
		end
	end
endmodule
