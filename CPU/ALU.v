`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    11:15:05 12/07/2018 
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
/////////////////////////////////////////////////////////////////////////////////module ALU(
    input [31:0] SrcA,
    input [31:0] SrcB,
    input [2:0] ALUOp,
    output Zero,
    output [31:0] ALUre
    );
	 reg [31:0] A = 0;
	 assign Zero = SrcA == SrcB;
	 assign ALUre = A;
	 always@(*)
	 begin
		case(ALUOp)
		0: A <= SrcA & SrcB;
		1: A <= SrcA | SrcB;
		2: A <= SrcA + SrcB;
		3: A <= 0;
		4: A <= SrcA & !(SrcB);
		5: A <= SrcA | !(SrcB);
		6: A <= SrcA - SrcB;
		7: A = (SrcA <= SrcB);
		endcase

	 end

endmodule
