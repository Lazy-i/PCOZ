`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    11:07:48 12/07/2018 
// Design Name: 
// Module Name:    DM 
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
module DM(
	 input [31:0] nowpc,
    input [31:0] A,
    input [31:0] WD,
    input clk,
    input WE,
    input Rest,
    output [31:0] DMData
    );
		reg [31:0] dm [1024:0];
		integer i;
		assign DMData = dm[A[11:2]];
		initial begin
			for(i = 0; i < 1024;i = i + 1)
				dm[i] <= 0;
		end
		always@(posedge clk)
		begin
			if(Rest)
			begin
				for(i = 0; i < 1024; i = i + 1)
					dm[i] <= 0;
			end
			else if(WE)begin
				dm[A[11:2]] <= WD;
				$display("@%h: *%h <= %h",nowpc, A,WD);
			end
		end

endmodule
