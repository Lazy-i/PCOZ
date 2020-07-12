`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    16:15:54 07/04/2019 
// Design Name: 
// Module Name:    Forward 
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
module Forward(
    input [4:0] D_A1,
    input [4:0] D_A2,
    input [4:0] E_A1,
    input [4:0] E_A2,
    input [4:0] M_A2,
	 input [4:0] A3_E,
	 input [4:0] A3_M,
	 input [4:0] A3_W,
    input E_W,
    input M_W,
    input W_W,
    input [1:0] Tnew_E,
    input [1:0] Tnew_M,
	 output [1:0] F_RF_RD1,
	 output [1:0] F_RF_RD2,
	 output [1:0] F_AU_SCA,
	 output [1:0] F_AU_SCB,
	 output F_DM_DMD
    );
//////D
`define E2D_pc4 3
`define M2D_aluo 2
`define W2D_busw 1
///////E
`define M2E_aluo 2
`define W2E_busw 1
//////M
`define W2M_busw 1
//////W
`define SELF 0

		assign F_RF_RD1 = (D_A1 == A3_E) && (Tnew_E == 0) && (E_W) && (A3_E != 0) ? `E2D_pc4:
								(D_A1 == A3_M) && (Tnew_M == 0) && (M_W) && (A3_M != 0) ? `M2D_aluo:
								(D_A1 == A3_W) && (W_W) && (A3_W != 0) ? `W2D_busw : `SELF;
								
		assign F_RF_RD2 = (D_A2 == A3_E) && (Tnew_E == 0) && (E_W) && (A3_E != 0) ? `E2D_pc4:
								(D_A2 == A3_M) && (Tnew_M == 0) && (M_W) && (A3_M != 0) ? `M2D_aluo:
								(D_A2 == A3_W) && (W_W) && (A3_W != 0) ? `W2D_busw : `SELF;
								
		assign F_AU_SCA = (E_A1 == A3_M) && (Tnew_M == 0) && (M_W) && (A3_M != 0) ? `M2E_aluo:
								(E_A1 == A3_W) && (W_W) && (A3_W != 0) ? `W2E_busw : `SELF;
								
		assign F_AU_SCB = (E_A2 == A3_M) && (Tnew_M == 0) && (M_W) && (A3_M != 0) ? `M2E_aluo:
								(E_A2 == A3_W) && (W_W) && (A3_W != 0) ? `W2E_busw : `SELF;
								
		assign F_DM_DMD = (M_A2 == A3_W) && (W_W) && (A3_W != 0) ? `W2M_busw : `SELF;

endmodule
