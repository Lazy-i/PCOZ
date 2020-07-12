`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    10:46:45 12/07/2018 
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
	 input [31:0]nowpc,
    input [4:0] A1,
    input [4:0] A2,
    input [4:0] A3,
    input [31:0] WD3,
    input clk,
    input WE3,
    input RE,
    output [31:0] RD1,
    output [31:0] RD2
    );

	reg [31:0] a[31:0];
	integer i;
	initial begin
	for(i=0;i<32;i=i+1)
		a[i] <= 0;
	end
	assign RD1 = a[A1];
	assign RD2 = a[A2];
	always @(posedge clk)
	begin
		if(RE)
		begin
			for(i=0;i<32;i=i+1)
				a[i] <= 0;
		end
		else if(WE3)begin
			if(A3 != 0)
			begin
				a[A3] <= WD3;
				$display("@%h: $%d <= %h", nowpc, A3,WD3);
			end
		end
	end
endmodule
