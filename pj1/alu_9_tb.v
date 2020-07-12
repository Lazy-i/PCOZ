`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   16:54:09 11/07/2018
// Design Name:   alu_9
// Module Name:   H:/ISE/pj1/alu_9_tb.v
// Project Name:  pj1
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: alu_9
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module alu_9_tb;

	// Inputs
	reg [31:0] A;
	reg [31:0] B;
	reg [3:0] Op;

	// Outputs
	wire [31:0] C;

	// Instantiate the Unit Under Test (UUT)
	alu_9 uut (
		.A(A), 
		.B(B), 
		.Op(Op), 
		.C(C)
	);

	initial begin
		// Initialize Inputs
		A = 5;
		B = 1;
		Op = 0;

		// Wait 100 ns for global reset to finish
		#10;
      Op = Op + 1;
		#10;
      Op = Op + 1;
		#10;
      Op = Op + 1;
		#10;
      Op = Op + 1;
		#10;
      Op = Op + 1;
		#10;
      Op = Op + 1;
		#10;
      Op = Op + 1;
		#10;
      Op = Op + 1;
		#10;
      Op = Op + 1;
		// Add stimulus here

	end
      
endmodule

