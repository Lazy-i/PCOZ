`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    12:25:14 12/10/2018 
// Design Name: 
// Module Name:    AND 
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
module AND(
    input Op,
    input [5:0] f,
    output addu,
    output subu,
    output ori,
    output lw,
    output sw,
    output beq,
    output lui,
    output jal,
	 output j,
    output jr
    );
	 assign addu = !Op &&  f[5:5] && !f[4:4] && !f[3:3] && !f[2:2] && !f[1:1] &&  f[0:0];
	 assign subu = !Op &&  f[5:5] && !f[4:4] && !f[3:3] && !f[2:2] &&  f[1:1] &&  f[0:0];
	 assign ori  =  Op && !f[5:5] && !f[4:4] &&  f[3:3] &&  f[2:2] && !f[1:1] &&  f[0:0];
	 assign lw   =  Op &&  f[5:5] && !f[4:4] && !f[3:3] && !f[2:2] &&  f[1:1] &&  f[0:0];
	 assign sw   =  Op &&  f[5:5] && !f[4:4] &&  f[3:3] && !f[2:2] &&  f[1:1] &&  f[0:0];
	 assign beq  =  Op && !f[5:5] && !f[4:4] && !f[3:3] &&  f[2:2] && !f[1:1] && !f[0:0];
	 assign lui  =  Op && !f[5:5] && !f[4:4] &&  f[3:3] &&  f[2:2] &&  f[1:1] &&  f[0:0];
	 assign jal  =  Op && !f[5:5] && !f[4:4] && !f[3:3] && !f[2:2] &&  f[1:1] &&  f[0:0];
	 assign jr   = !Op && !f[5:5] && !f[4:4] &&  f[3:3] && !f[2:2] && !f[1:1] && !f[0:0];
	 assign j    =  Op && !f[5:5] && !f[4:4] && !f[3:3] && !f[2:2] &&  f[1:1] && !f[0:0];
endmodule
