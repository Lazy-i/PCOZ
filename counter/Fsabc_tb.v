`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   13:34:02 10/15/2018
// Design Name:   Fsabc
// Module Name:   H:/ISE/counter/Fsabc_tb.v
// Project Name:  counter
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: Fsabc
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module Fsabc_tb;

	// Inputs
	reg A;
	reg B;
	reg C;

	// Outputs
	wire F;

	// Instantiate the Unit Under Test (UUT)
	Fsabc uut (
		.A(A), 
		.B(B), 
		.C(C), 
		.F(F)
	);

	initial begin
		// Initialize Inputs
		A = 0;
		B = 0;
		C = 0;

		// Wait 100 ns for global reset to finish
		#10;
       
		// Add stimulus here

	end
	always@#100
	begin
		if(!A)
		begin
			if(!B) 
			begin
			#10;
			C = 1;
			#10;
			B = 1;
			#10;
			C = 0;
			end
		A = 1;
			if(!B) 
			begin
				#10;
				C = 1;
				#10;
				B = 1;
				#10;
				C = 0;
				end
		end
	end
endmodule

