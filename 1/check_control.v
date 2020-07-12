`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   11:08:15 11/26/2018
// Design Name:   controller
// Module Name:   D:/verilog_project/p4/check_control.v
// Project Name:  p4
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: controller
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module check_control;

	// Inputs
	reg [5:0] opcode;
	reg [5:0] func;

	// Outputs
	wire RegDst;
	wire RegWrite;
	wire ALUsrc;
	wire Branch;
	wire MemWrite;
	wire MemToReg;
	wire ext_op;
	wire ext_result;
	wire [2:0] ALUop;
	wire Branch_equal;
	wire jal;
	wire Write_PC;
	wire PC_jump;
	wire RegToPC;

	// Instantiate the Unit Under Test (UUT)
	controller uut (
		.opcode(opcode), 
		.func(func), 
		.RegDst(RegDst), 
		.RegWrite(RegWrite), 
		.ALUsrc(ALUsrc), 
		.Branch(Branch), 
		.MemWrite(MemWrite), 
		.MemToReg(MemToReg), 
		.ext_op(ext_op), 
		.ext_result(ext_result), 
		.ALUop(ALUop), 
		.Branch_equal(Branch_equal), 
		.jal(jal), 
		.Write_PC(Write_PC), 
		.PC_jump(PC_jump), 
		.RegToPC(RegToPC),
		.bgtz(bgtz),
		.read_half(read_half)
	);

	initial begin
		// Initialize Inputs
		opcode = 6'b100001;
		func = 6'b100001;

		// Wait 100 ns for global reset to finish
        
		// Add stimulus here

	end
      
endmodule

