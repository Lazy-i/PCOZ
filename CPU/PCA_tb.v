`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   00:16:28 12/12/2018
// Design Name:   PCA
// Module Name:   H:/ISE/CPU/PCA_tb.v
// Project Name:  CPU
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: PCA
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module PCA_tb;

	// Inputs
	reg [31:0] nowpc;
	reg [25:0] imm;
	reg zero;
	reg bantrh;
	reg jal;
	reg jr;
	reg [31:0] jr_reg;

	// Outputs
	wire [31:0] npc;
	wire [31:0] pc_4;

	// Instantiate the Unit Under Test (UUT)
	PCA uut (
		.nowpc(nowpc), 
		.imm(imm), 
		.npc(npc), 
		.pc_4(pc_4), 
		.zero(zero), 
		.bantrh(bantrh), 
		.jal(jal), 
		.jr(jr), 
		.jr_reg(jr_reg)
	);

	initial begin
		// Initialize Inputs

		nowpc = 3000;
		imm = 3000;
		zero = 0;
		bantrh = 0;
		jal = 0;
		jr = 0;
		jr_reg = 12368;
		#10;
		zero = 1;
		#10;
		zero = 0;
		bantrh = 1;
		#10;
		zero = 0;
		bantrh = 0;
		jal = 1;
		#10
		jal = 0;
		jr = 1;
		#10
		zero = 1;
		bantrh = 1;
		jr = 0;

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here

	end
      
endmodule

