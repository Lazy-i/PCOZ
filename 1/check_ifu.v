`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   00:30:10 11/26/2018
// Design Name:   IFU
// Module Name:   D:/verilog_project/p4/check_ifu.v
// Project Name:  p4
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: IFU
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module check_ifu;

	// Inputs
	reg clk;
	reg PCsrc;
	reg PC_jump;
	reg reset;
	reg RegToPC;
	reg PCBranch;
	reg [31:0] reg_toPC;

	// Outputs
	wire [31:0] instruction;
	wire [11:2] PC;

	// Instantiate the Unit Under Test (UUT)
	IFU uut (
		.clk(clk), 
		.PCsrc(PCsrc), 
		.PC_jump(PC_jump), 
		.reset(reset), 
		.RegToPC(RegToPC), 
		.PCBranch(PCBranch), 
		.reg_toPC(reg_toPC), 
		.instruction(instruction), 
		.PC(PC)
	);

	initial begin
		// Initialize Inputs
		clk = 0;
		PCsrc = 0;
		PC_jump = 0;
		reset = 0;
		RegToPC = 0;
		PCBranch = 0;
		reg_toPC = 0;

		// Wait 100 ns for global reset to finis
		// Add stimulus here

	end
always #1 clk=~clk; 
endmodule

