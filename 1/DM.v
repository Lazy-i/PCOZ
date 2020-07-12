`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    15:41:15 11/20/2018 
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
    input clk,
    input reset,
    input MemWrite,
    input [31:0] addr,
	 input [31:0] PC,
    input [31:0] WriteData,
    output [31:0] ReadData
    );
reg[31:0] datamem[1023:0],out;
wire[31:0] address;
integer i=0;
assign address=addr;
assign ReadData=datamem[addr[11:2]]; 
always@(posedge clk) begin
	if(reset) begin
		for(i=0;i<1024;i=i+1)begin
			datamem[i]<=0;
		end
	end
	else begin
		if(MemWrite)begin
			$display("@%h: *%h <= %h",PC,address,WriteData);
			datamem[addr[11:2]]<=WriteData;
		end
	end
end
endmodule
