`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   15:21:14 10/16/2018
// Design Name:   code
// Module Name:   H:/ISE/counter/code_td.v
// Project Name:  counter
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: code
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module code_td;

	// Inputs
	reg Clk;
	reg Slt;
	reg Reset;
	reg En;

	// Outputs
	wire [63:0] Output0;
	wire [63:0] Output1;

	// Instantiate the Unit Under Test (UUT)
	code uut (
		.Clk(Clk), 
		.Slt(Slt), 
		.Reset(Reset), 
		.En(En), 
		.Output0(Output0), 
		.Output1(Output1)
	);

	initial begin
		// Initialize Inputs
		Clk = 0;
		Slt = 0;
		Reset = 0;
		En = 0;
		#200 En = 1;
		#500 Reset = 1;
		end
		always #10 Clk = ~ Clk;
      always@(posedge Clk) Slt = ~ Slt;
endmodule

