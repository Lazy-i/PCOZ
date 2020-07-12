`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    17:01:28 07/03/2019 
// Design Name: 
// Module Name:    MUX_3_5 
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
module MUX_3_5(
    input [4:0] MUX1,
    input [4:0] MUX2,
    input [4:0] MUX3,
    input [1:0] CTRL,
    output [4:0] ANS
    );
		assign ANS = (CTRL == 2'b10) ? MUX3 :
						 (CTRL == 2'b01) ? MUX2 :
						 MUX1;


endmodule
