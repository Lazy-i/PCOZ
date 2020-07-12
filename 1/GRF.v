`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    14:36:21 11/20/2018 
// Design Name: 
// Module Name:    GRF 
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
module GRF(
	 input clk,
    input [4:0] RA,
    input [4:0] RB,
    input [4:0] RW,
    input [31:0] busW,
    input RegWrite,
    input reset,
	 input[31:0] PC,
    output [31:0] busA,
    output [31:0] busB
    );
reg[31:0] RF[31:0];
integer i=0;
//“Ï≤Ω∏¥Œª
assign busA=(RA==0)?32'h0:RF[RA];
assign busB=(RB==0)?32'h0:RF[RB];
always@(posedge clk) begin
	if(reset)begin
		for(i=1;i<32;i=i+1)begin
			RF[i]<=0;
		end
	end
	else if(RegWrite) begin
			$display("@%h: $%d <= %h",PC,RW,busW);
			RF[RW]<=busW;
	end
end
endmodule
