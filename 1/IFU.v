`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    21:39:27 11/24/2018 
// Design Name: 
// Module Name:    IFU 
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
module IFU(
	 input clk,
	 input PCsrc,
    input PC_jump,
    input reset,
    input[31:0] PCBranch,
	 input [31:0] reg_toPC,
    output [31:0] instruction,
	 output [31:0] PC
    );
reg[31:0] IM[1023:0];
reg[31:0] pc=32'h00003000;
assign instruction=IM[pc[11:2]];
assign PC=pc;
initial begin
	$readmemh("code.txt",IM);
end
always@(posedge clk)begin
	if(reset)begin
		pc<=32'h00003000;
	end
	else if(clk)begin 
		if(PCsrc)begin
			pc<=pc+4+PCBranch;
		end
		else if(PC_jump)begin
			pc<=reg_toPC;
		end
		else begin
			pc<=pc+4;
		end
	end
end

endmodule
