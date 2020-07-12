`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   21:00:41 11/24/2018
// Design Name:   ext
// Module Name:   E:/first_ise/p4/ext_check.v
// Project Name:  p4
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: ext
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module ext_check;

	// Inputs
	reg [15:0] imm;
	reg ext_op;
	reg ext_result;

	// Outputs
	wire [31:0] out;

	// Instantiate the Unit Under Test (UUT)
	ext uut (
		.imm(imm), 
		.out(out), 
		.ext_op(ext_op), 
		.ext_result(ext_result)
	);

	initial begin
		// Initialize Inputs
		imm = 16'h1;
		ext_op = 1;
		ext_result = 0;
		// Add stimulus h
		// Add stimulus here

	end
      
endmodule

