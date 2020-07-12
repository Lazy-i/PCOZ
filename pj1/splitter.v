`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    09:20:22 10/26/2018 
// Design Name: 
// Module Name:    splitter 
// Project Name: 
// Target Devices: 
// Tool versions: 
// Description: 
//
// Dependencies: 
//
// Revision: 
// Revision 0.01 - File Created
// Additional Comments: 
//
//////////////////////////////////////////////////////////////////////////////////
module splitter(
    input signed [31:0] A,
    output [7:0] O1,
    output [7:0] O2,
    output [7:0] O3,
    output [7:0] O4
    );
		reg [7:0] temp1 = 0,temp2 = 0,temp3 = 0,temp4 = 0;
		integer i = 0;
		assign O1 = temp1,O2 = temp2,O3 = temp3,O4 = temp4;
		
		always@* begin
		for(i = 0;i < 8;i = i + 1) begin
			temp1[7 - i] = A[31 - i];
		end
		for(i = 0;i < 8;i = i + 1) begin
			temp2[7 - i] = A[23 - i];
		end
		for(i = 0;i < 8;i = i + 1) begin
			temp3[7 - i] = A[15 - i];
		end
		for(i = 0;i < 8;i = i + 1) begin
			temp4[7 - i] = A[7 - i];
		end
		end
endmodule
