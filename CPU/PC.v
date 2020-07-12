`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    10:55:04 12/07/2018 
// Design Name: 
// Module Name:    PC 
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
module PC(
    input [31:0] NPC,
    input clk,
    input reset,
    output [31:0] PC
    );
		reg [31:0] regpc;
		initial begin
		regpc = 32'h3000;
		end
		assign PC = regpc;
		always @(posedge clk)
		begin
			if(reset)
			begin
				regpc <= 32'h3000;
			end
			else
				regpc <= NPC;
		end
endmodule
