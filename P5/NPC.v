`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    16:24:08 07/03/2019 
// Design Name: 
// Module Name:    NPC 
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
module NPC(
    input [25:0] NPC_i26_D_i,
    input [31:0] NPC_pc4_D_i,
    input [31:0] NPC_rsd_D_i,
	 input [31:0] NPC_pc4_F_i,
	 input [1:0] CTL_npc_D_i,
	 input CTL_brh_D_i,
    output [31:0] NPC_pcb_D_o
    );
	 
	 reg [31:0] temp;
	 wire [31:0] temp1;
	 initial begin
	 temp = 32'h3004;
	 end
	 assign NPC_pcb_D_o = temp;
	 assign temp1 = $signed(NPC_i26_D_i[15:0]<<2);
	 always@(*) begin
		case(CTL_npc_D_i)
			3: temp <= NPC_rsd_D_i;
			2: temp <= {NPC_pc4_D_i[31:28],NPC_i26_D_i,2'b0};
			1: temp <= NPC_pc4_D_i + temp1;
			0: temp <= CTL_brh_D_i ? NPC_pc4_D_i + 4 : NPC_pc4_F_i;
		endcase
	end
endmodule
