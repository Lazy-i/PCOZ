`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   20:56:39 10/17/2018
// Design Name:   id_fsm
// Module Name:   H:/ISE/pj1/id_tb.v
// Project Name:  pj1
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: id_fsm
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module id_tb;

	// Inputs
	reg [7:0] char;
	reg clk;

	// Outputs
	wire out;

	// Instantiate the Unit Under Test (UUT)
	id_fsm uut (
		.char(char), 
		.clk(clk), 
		.out(out)
	);

	initial begin
		// Initialize Inputs
		char = 0;
		clk = 0;

		// Wait 100 ns for global reset to finish
		#50;
		
		#10 char = 1100001;
		#10 char = 1100010;
		#10 char = 1100011;
		#10 char = 1100100;
		#10 char = 110001;
		#10 char = 110010;
      #10 char = 110011;
		#10 char = 110100;
		#10 char = 101111;
		// Add stimulus here

	end
	always #10 clk = ~clk;
      
endmodule

