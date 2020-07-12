`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    09:53:41 10/26/2018 
// Design Name: 
// Module Name:    ALU 
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
module alu(
    input [31:0] A,
    input [31:0] B,
    input [2:0] ALUOp,
    output [31:0] C
    );
		reg [31:0] temp1 = 0,temp2 = 0,temp3 = 0,temp4 = 0,temp5 = 0,temp6 = 0,_end = 0;
		assign C = _end;
		
		always@* begin
		temp1 = A + B;
		temp2 = A - B;
		temp3 = A & B;
		temp4 = A | B;
		temp5 = A >> B;
		temp6 = $signed(A) >>> B;
			if(ALUOp == 3'b000) _end = temp1;
			else if(ALUOp == 3'b001) _end = temp2;
			else if(ALUOp == 3'b010) _end = temp3;
			else if(ALUOp == 3'b011) _end = temp4;
			else if(ALUOp == 3'b100) _end = temp5;
			else _end = temp6;
		end

endmodule
