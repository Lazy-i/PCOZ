`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   21:21:35 10/26/2018
// Design Name:   string
// Module Name:   H:/ISE/pj1/spring_tb.v
// Project Name:  pj1
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: string
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module spring_tb;

	// Inputs
	reg clk;
	reg clr;
	reg [7:0] in;

	// Outputs
	wire out;

	// Instantiate the Unit Under Test (UUT)
	string uut (
		.clk(clk), 
		.clr(clr), 
		.in(in), 
		.out(out)
	);

	initial begin
		// Initialize Inputs
		clr = 0;
		clk = 0;
		in = "1";
		#10
		in = "+";
		#10
		in = "2";
		#10
		in = "*";
		#10
		in = "3";
		#10
		in = "+";
		#10
		in = "4";
		#50
		clr = 1;
		#10
		clr = 0;
		in = "1";
		#10
		in = "+";
		#10
		in = "2";
		#10
		in = "+";
		#10
		in = "3";
		// Wait 100 ns for global reset to finish
		
		
        
		// Add stimulus here

	end
      
		always #5 clk = ~clk;
			
		
endmodule

