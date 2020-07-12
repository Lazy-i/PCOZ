`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   17:59:51 11/27/2018
// Design Name:   MUX_two_16bit
// Module Name:   E:/first_ise/p4/check_16_mux.v
// Project Name:  p4
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: MUX_two_16bit
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module check_16_mux;

	// Inputs
	reg [15:0] select1;
	reg [15:0] select2;
	reg control;

	// Outputs
	wire [15:0] result;

	// Instantiate the Unit Under Test (UUT)
	MUX_two_16bit uut (
		.select1(select1), 
		.select2(select2), 
		.control(control), 
		.result(result)
	);

	initial begin
		// Initialize Inputs
		select1 = 16'h0;
		select2 = 16'h1;
		control = 0;

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here

	end
      
endmodule

