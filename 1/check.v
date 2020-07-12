`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   23:33:10 11/25/2018
// Design Name:   mips
// Module Name:   D:/verilog_project/p4/check.v
// Project Name:  p4
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: mips
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module check;

	// Inputs
	reg reset;
	reg clk;

	// Instantiate the Unit Under Test (UUT)
	mips uut (
		.reset(reset), 
		.clk(clk)
	);

	initial begin
		// Initialize Inputs
		reset = 1;
		clk = 1;
		#1
		reset=0;
		// Wait 100 ns for global reset to finis
        
		// Add stimulus here
	end
always #1 clk=~clk; 
endmodule

