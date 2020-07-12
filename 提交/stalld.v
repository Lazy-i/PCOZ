`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    18:17:15 07/04/2019 
// Design Name: 
// Module Name:    stalld 
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
module stalld(
    input stall,
    output D_en,
    output PC_en,
    output E_clr
    );
		assign D_en = stall;
		assign PC_en = stall;
		assign E_clr = stall;

endmodule
