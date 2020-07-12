`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   11:24:00 11/23/2018
// Design Name:   GRF
// Module Name:   E:/first_ise/p4/RF_check.v
// Project Name:  p4
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: GRF
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module RF_check;

	// Inputs
	reg [4:0] RA;
	reg [4:0] RB;
	reg [4:0] RW;
	reg [31:0] busW;
	reg RegWrite;
	reg reset;
	reg clk;
	// Outputs
	reg [31:0] busA;
	reg [31:0] busB;

	// Instantiate the Unit Under Test (UUT)
	GRF uut (
		.clk(clk),
		.RA(RA), 
		.RB(RB), 
		.RW(RW), 
		.busW(busW), 
		.RegWrite(RegWrite), 
		.reset(reset), 
		.busA(busA), 
		.busB(busB)
	);

	initial begin
		// Initialize Inputs
		RA = 0;
		RB = 0;
		RW = 0;
		busW = 0;
		RegWrite = 0;
		reset = 0;
		#1
		RA=0;
		RB=12;
		RW=0;
		busW=1234;
		RegWrite=1;
		#2;
      RA=1;
		RB=13;
		RW=0;
		busW=1234;
		RegWrite=1;
		// Add stimulus here

	end
   always #1 clk=~clk;
endmodule

