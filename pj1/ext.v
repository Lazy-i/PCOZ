`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    10:11:17 10/26/2018 
// Design Name: 
// Module Name:    ext 
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
module ext(
    input [15:0] imm,
    input [1:0] EOp,
    output [31:0] ext
    );
		reg[31:0] temp1 = 0,temp2 = 0,temp3 = 0,temp4 = 0,_end = 0;
		reg tp = 0;
		reg[15:0] temp = 0;
		assign ext = _end;
		
		always@* begin
			tp = imm[15];
			temp1 = {{16{tp}},imm};
			temp2 = {temp,imm};
			temp3 = {imm,temp};
			temp4 = temp1 <<< 2;
			if(EOp == 2'b00) _end = temp1;
			else if(EOp == 2'b01) _end = temp2;
			else if(EOp ==  2'b10) _end = temp3;
			else _end = temp4;
		end
endmodule
