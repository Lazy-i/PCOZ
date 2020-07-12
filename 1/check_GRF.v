`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   13:03:19 11/23/2018
// Design Name:   GRF
// Module Name:   E:/first_ise/p4/check_GRF.v
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

module check_GRF;

	// Inputs
	reg clk;
	reg [4:0] RA;
	reg [4:0] RB;
	reg [4:0] RW;
	reg [31:0] busW;
	reg RegWrite;
	reg reset;

	// Outputs
	wire [31:0] busA;
	wire [31:0] busB;

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
		clk=0;
		RA = 0;
		RB = 0;
		RW = 0;
		busW = 0;
		RegWrite = 1;
		reset = 0;
		#1
		reset=0;
		RA=0;
		RB=12;
		RW=1;
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

