`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    15:24:48 07/03/2019 
// Design Name: 
// Module Name:    DM 
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
module DM(
    input [31:0] DM_npc_M_i,
    input [31:0] DM_alo_M_i,
    input [31:0] DM_wtd_M_i,
    input DM_clk_M_i,
    input DM_we_M_i,
    input DM_ret_M_i,
    input [31:0] DM_dmd_M_o
    );

		reg[31:0] dm [1024:0];
		integer i;
		assign DM_dmd_M_o = dm[DM_alo_M_i[11:2]];
		initial begin
			for(i = 0; i < 1024; i = i + 1)
				dm[i] <= 0;
		end
		always@(posedge DM_clk_M_i)
		begin
			if(DM_ret_M_i)
			begin
				for(i = 0; i < 1024; i = i + 1)
					dm[i] <= 0;
			end
			else if(DM_we_M_i) begin
				dm[DM_alo_M_i[11:2]] <= DM_wtd_M_i;
				$display("%d@%h: *%h <= %h", $time, DM_npc_M_i, DM_alo_M_i,DM_wtd_M_i);
			end
		end

endmodule
