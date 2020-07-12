`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    17:07:45 07/04/2019 
// Design Name: 
// Module Name:    hazard 
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
module hazard(
    input [4:0] D_A1,
    input [4:0] D_A2,
    input [4:0] E_A1,
    input [4:0] E_A2,
    input [4:0] M_A2,
	 input [4:0] A3_E,
	 input [4:0] A3_M,
	 input [4:0] A3_W,
    input [1:0] tuse_rs,
    input [1:0] tuse_rt,
    input [1:0] tnew_e,
    input [1:0] tnew_m,
    input E_W,
    input M_W,
    input W_W,
	 output [1:0] F_RF_RD1,
	 output [1:0] F_RF_RD2,
	 output [1:0] F_AU_SCA,
	 output [1:0] F_AU_SCB,
	 output F_DM_DMD,
	 output D_stall,
	 output PC_stall,
	 output E_clr
    );
	 
	 wire wire_stall;
	
/////////////Forward//////////

		Forward Forward_hazard(
		.D_A1(D_A1),
		.D_A2(D_A2),
		.E_A1(E_A1),
		.E_A2(E_A2),
		.M_A2(M_A2),
		.A3_E(A3_E),
		.A3_M(A3_M),
		.A3_W(A3_W),
		.E_W(E_W),
		.M_W(M_W),
		.W_W(W_W),
		.Tnew_E(tnew_e),
		.Tnew_M(tnew_m),
		.F_RF_RD1(F_RF_RD1),
		.F_RF_RD2(F_RF_RD2),
		.F_AU_SCA(F_AU_SCA),
		.F_AU_SCB(F_AU_SCB),
		.F_DM_DMD(F_DM_DMD)
		);
		
/////////////STALL/////////////

		STALL STALL_hazard(
		.D_A1(D_A1),
		.D_A2(D_A2),
		.E_A1(E_A1),
		.E_A2(E_A2),
		.M_A2(M_A2),
		.E_A3(A3_E),
		.M_A3(A3_M),
		.tuse_rs(tuse_rs),
		.tuse_rt(tuse_rt),
		.tnew_e(tnew_e),
		.tnew_m(tnew_m),
		.E_W(E_W),
		.M_W(M_W),
		.stall(wire_stall)
		);
		
////////////stalld////////
		stalld Stall_hazard(
		.stall(wire_stall),
		.D_en(D_stall),
		.PC_en(PC_stall),
		.E_clr(E_clr)
		);
///////////////////////
endmodule
