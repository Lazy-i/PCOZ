`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   23:50:53 12/10/2018
// Design Name:   IFU
// Module Name:   H:/ISE/CPU/ifu_tb.v
// Project Name:  CPU
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: IFU
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module ifu_tb;

	// Inputs
	reg [31:0] pc;

	// Outputs
	wire [4:0] rs;
	wire [5:0] op;
	wire [4:0] rt;
	wire [5:0] fun;
	wire [4:0] rd;
	wire [15:0] sign;

	// Instantiate the Unit Under Test (UUT)
	IFU uut (
		.pc(pc), 
		.rs(rs), 
		.op(op), 
		.rt(rt), 
		.fun(fun), 
		.rd(rd), 
		.sign(sign)
	);

	initial begin
		// Initialize Inputs
		pc = 3000;

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here

	end
      
endmodule

