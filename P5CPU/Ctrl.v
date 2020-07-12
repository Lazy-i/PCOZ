`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    12:15:35 12/10/2018 
// Design Name: 
// Module Name:    Ctrl 
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
module Ctrl(
    input [5:0] Op,
    input [5:0] Fun,
    output [5:0] Funout,
    output Opout
    );
	 reg [5:0] out;
	 initial out = 0;
	 assign Funout = out;
	 assign Opout = Op[5:5] || Op[4:4] || Op [3:3] || Op[2:2] || Op[1:1] || Op[0:0];
	always@(*)
	begin
		if(Op ==0)
		out = Fun;
		else
		out = Op;
	end

endmodule
