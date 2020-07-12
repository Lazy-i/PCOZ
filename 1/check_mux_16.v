`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   18:14:00 11/27/2018
// Design Name:   MUX_two_16bit
// Module Name:   E:/first_ise/p4/check_mux_16.v
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

module check_mux_16;

	// Inputs
	reg [15:0] select1;
	reg [15:0] select2;
	reg control;

	// Outputs
	wire [15:0] result;

	// Instantiate the Unit Under Test (UUT)
	MUX_16bit_two uut (
		.select1(select1), 
		.select2(select2), 
		.control(control), 
		.result(result)
	);
	reg[31:0] con=32'h12345678;
	initial begin
		// Initialize Inputs
		select1 = con[15:0];
		select2 = con[31:16];
		control = con[1];

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here

	end
      
endmodule

