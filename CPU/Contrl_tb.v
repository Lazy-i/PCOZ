`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   22:13:19 12/11/2018
// Design Name:   Contrl
// Module Name:   H:/ISE/CPU/Contrl_tb.v
// Project Name:  CPU
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: Contrl
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module Contrl_tb;

	// Inputs
	reg [5:0] op;
	reg [5:0] fun;

	// Outputs
	wire GRFWrite;
	wire GRFDst;
	wire ALUSrc;
	wire [2:0] ALUContrl;
	wire Bantrh;
	wire DMWrite;
	wire DMtoGRF;
	wire LUI;
	wire signSrc;
	wire Jal;

	// Instantiate the Unit Under Test (UUT)
	Contrl uut (
		.op(op), 
		.fun(fun), 
		.GRFWrite(GRFWrite), 
		.GRFDst(GRFDst), 
		.ALUSrc(ALUSrc), 
		.ALUContrl(ALUContrl), 
		.Bantrh(Bantrh), 
		.DMWrite(DMWrite), 
		.DMtoGRF(DMtoGRF), 
		.LUI(LUI), 
		.signSrc(signSrc), 
		.Jal(Jal)
	);

	initial begin
		// Initialize Inputs
		op = 0;
		fun = 6'b100001;
		#10;
		fun = 6'b100011;
		#10;
		fun = 6'b001101;
		#10;
		fun = 6'b001000;
		#5;
		fun = 0;
		#5;
		op = 6'b000011;
		#10;
		op = 6'b100011;
		#10;
		op = 6'b101011;
		#10;
		op = 6'b000100;
		#10;
		op = 6'b001111;

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here

	end
      
endmodule

