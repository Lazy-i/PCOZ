`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   11:18:56 11/26/2018
// Design Name:   decoder
// Module Name:   D:/verilog_project/p4/check_decoder.v
// Project Name:  p4
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: decoder
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module check_decoder;

	// Inputs
	reg [31:0] instruction;

	// Outputs
	wire [5:0] opcode;
	wire [5:0] func;
	wire [4:0] rs;
	wire [4:0] rt;
	wire [4:0] rd;
	wire [4:0] shamt;
	wire [15:0] imm;
	wire [25:0] index;

	// Instantiate the Unit Under Test (UUT)
	decoder uut (
		.instruction(instruction), 
		.opcode(opcode), 
		.func(func), 
		.rs(rs), 
		.rt(rt), 
		.rd(rd), 
		.shamt(shamt), 
		.imm(imm), 
		.index(index)
	);

	initial begin
		// Initialize Inputs
		instruction =32'h34013456;
        
		// Add stimulus here

	end
      
endmodule

