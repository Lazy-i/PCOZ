`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   00:11:44 10/17/2018
// Design Name:   pipeline
// Module Name:   H:/ISE/counter/pipeline_tb.v
// Project Name:  counter
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: pipeline
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module pipeline_tb;

	// Inputs
	reg [31:0] A1;
	reg [31:0] A2;
	reg [31:0] B1;
	reg [31:0] B2;
	reg clk;


	// Outputs
	wire [31:0] C;

	// Instantiate the Unit Under Test (UUT)
	pipeline uut (
		.A1(A1), 
		.A2(A2), 
		.B1(B1), 
		.B2(B2), 
		.clk(clk), 
		.C(C)
	);

	initial begin
		// Initialize Inputs
		A1 = 0;
		A2 = 0;
		B1 = 0;
		B2 = 0;
		clk = 0;
		// Wait 100 ns for global reset to finish
		#100;
        A1 = 1;
		  B1 = 2;
		  A2 = 3;
		  B2 = 4;
		#10;
		  A1 = 0;
		  B1 = 1;
		  A2 = 0;
		  B2 = 1;
		#10;
			
		
		// Add stimulus here

	end
      always #5 clk = ~clk;
endmodule

