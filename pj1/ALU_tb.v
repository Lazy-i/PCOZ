`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   10:01:16 10/26/2018
// Design Name:   ALU
// Module Name:   H:/ISE/pj1/ALU_tb.v
// Project Name:  pj1
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: ALU
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module ALU_tb;

	// Inputs
	reg [31:0] A;
	reg [31:0] B;
	reg [2:0] ALUOp;

	// Outputs
	wire [31:0] C;

	// Instantiate the Unit Under Test (UUT)
	ALU uut (
		.A(A), 
		.B(B), 
		.ALUOp(ALUOp), 
		.C(C)
	);

	initial begin
		// Initialize Inputs
		A = 32'b11111111111111111111111111000000;
		B = 32'b00000000000000000000000000000010;
		ALUOp = 3'b000;
		#5
		ALUOp = 3'b001;
		#5
		ALUOp = 3'b010;
		#5
		ALUOp = 3'b011;
		#5
		ALUOp = 3'b100;
		#5
		ALUOp = 3'b101;
		
		

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here

	end
      
endmodule

