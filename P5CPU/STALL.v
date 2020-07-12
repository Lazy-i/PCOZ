`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    16:42:38 07/04/2019 
// Design Name: 
// Module Name:    STALL 
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
module STALL(
    input [4:0] D_A1,
    input [4:0] D_A2,
    input [4:0] E_A1,
    input [4:0] E_A2,
    input [4:0] M_A2,
	 input [4:0] E_A3,
	 input [4:0] M_A3,
    input [1:0] tuse_rs,
    input [1:0] tuse_rt,
    input [1:0] tnew_e,
    input [1:0] tnew_m,
	 input E_W,
	 input M_W,
	 output stall
    );
		wire stall_rs,stall_rt,stall_rs_e,stall_rs_m,stall_rt_e,stall_rt_m;
	
		assign stall = stall_rs || stall_rt;
		assign stall_rs = stall_rs_e || stall_rs_m;
		assign stall_rt = stall_rt_e || stall_rt_m;
		
		assign stall_rs_e = (D_A1 == E_A3) && (E_W) && (tnew_e != 3) && (tnew_e > tuse_rs);
		assign stall_rs_m = (D_A1 == M_A3) && (M_W) && (tnew_m != 3) && (tnew_m > tuse_rs);
		
		assign stall_rt_e = (D_A2 == E_A3) && (E_W) && (tnew_e != 3) && (tnew_e > tuse_rs);
		assign stall_rt_m = (D_A2 == M_A3) && (M_W) && (tnew_m != 3) && (tnew_m > tuse_rs);
endmodule
