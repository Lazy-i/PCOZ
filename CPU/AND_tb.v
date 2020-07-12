`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   20:16:52 12/11/2018
// Design Name:   AND
// Module Name:   H:/ISE/CPU/AND_tb.v
// Project Name:  CPU
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: AND
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module AND_tb;

	// Inputs
	reg Op;
	reg [5:0] f;

	// Outputs
	wire addu;
	wire subu;
	wire ori;
	wire lw;
	wire sw;
	wire beq;
	wire lui;
	wire jal;
	wire jr;

	// Instantiate the Unit Under Test (UUT)
	AND uut (
		.Op(Op), 
		.f(f), 
		.addu(addu), 
		.subu(subu), 
		.ori(ori), 
		.lw(lw), 
		.sw(sw), 
		.beq(beq), 
		.lui(lui), 
		.jal(jal), 
		.jr(jr)
	);

	initial begin
		// Initialize Inputs
		Op = 0;
		f = 6'b100001;
		#10;
		f = 6'b100011;
		#10;
		f = 6'b001101;
		#10;
		f = 6'b001000;
		#5;
		Op = 1;
		#5;
		f = 6'b000011;
		#10;
		f = 6'b100011;
		#10;
		f = 6'b101011;
		#10;
		f = 6'b000100;
		#10;
		f = 6'b001111;

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here

	end
      
endmodule

