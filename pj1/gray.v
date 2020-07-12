`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    10:34:18 10/26/2018 
// Design Name: 
// Module Name:    gray 
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
module gray(
    input Clk,
    input Reset,
    input En,
    output [2:0] Output,
    output Overflow
    );
		
	 reg [2:0]temp = 0;
	 reg tp = 0;
	 integer i = 0;
	 assign Output = temp, Overflow = tp;
	 
	 always@(posedge Clk) begin
		if(Reset == 1) begin
			for(i = 0;i < 3;i = i + 1) begin
				temp[i] = 0;
			end
			tp = 0;
		end
		else if(En == 1) begin
			case(temp) 
				3'b000 :temp = 3'b001;
				3'b001 :temp = 3'b011;
				3'b011 :temp = 3'b010;
				3'b010 :temp = 3'b110;
				3'b110 :temp = 3'b111;
				3'b111 :temp = 3'b101;
				3'b101 :temp = 3'b100;
				3'b100 :
					begin
					temp = 3'b000;
					tp = 1;
					end
			endcase
		end
	 end
endmodule
