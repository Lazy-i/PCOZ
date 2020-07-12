`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    00:06:53 12/11/2018 
// Design Name: 
// Module Name:    EXT 
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
module EXT(
   input [15:0] unsign,
	input signSrc,
	input lui,
   output [31:0] sign
   );
	reg [31:0] temp;
	assign sign = temp;
	
	always@(*)
	begin
		if(signSrc)
		temp = {16'b0,unsign};
		else
		temp = {{16{unsign[15]}},unsign};
		if(lui)
		temp =  {unsign,16'b0};
	end
endmodule
