`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   23:04:32 10/15/2018
// Design Name:   Adder
// Module Name:   H:/ISE/counter/Adder_tb.v
// Project Name:  counter
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: Adder
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module Adder_tb;

	// Inputs
	reg [3:0] A;
	reg [3:0] B;
	reg clk;
	reg en;

	// Outputs
	wire [3:0] Sum;
	wire Overflow;

	// Instantiate the Unit Under Test (UUT)
	Adder uut (
		.A(A), 
		.B(B), 
		.clk(clk), 
		.en(en), 
		.Sum(Sum), 
		.Overflow(Overflow)
	);

	initial begin
		// Initialize Inputs
		#0 A = 0;
			B = 0;
			clk = 0;
			en = 0;
		end
		
	always #10 begin
	 clk <= ~ clk;
		 A <= 4'b1001;
	 B <= 4'b1010;
	 end
	always #20	en = ~ en;
		
endmodule

