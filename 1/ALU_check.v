`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   14:54:51 11/20/2018
// Design Name:   ALU
// Module Name:   E:/first_ise/p4/ALU_check.v
// Project Name:  p4
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

module ALU_check;

	// Inputs
	reg [2:0] ALUop;
	reg [31:0] input_1;
	reg [31:0] input_2;

	// Outputs
	wire [31:0] ALU_result;
	wire zero;

	// Instantiate the Unit Under Test (UUT)
	ALU uut (
		.ALUop(ALUop), 
		.ALU_result(ALU_result), 
		.zero(zero), 
		.input_1(input_1), 
		.input_2(input_2)
	);

	initial begin
		// Initialize Inputs
		ALUop = 3'b001;
		input_1=0;
		input_2=0;
		// Wait 100 ns for global reset to finish
        
		// Add stimulus here

	end
      
endmodule

