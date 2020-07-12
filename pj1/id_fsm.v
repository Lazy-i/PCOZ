`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    19:23:19 10/17/2018 
// Design Name: 
// Module Name:    id_fsm 
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
module id_fsm(
    input [7:0] char,
    input clk,
    output out
    );
	reg [7:0] tp = 0;
	reg ot = 0;
	reg [1:0] temp = 0,tim = 0;
	
	assign out = ot;
	
	always@(posedge clk) begin
		if(char >= "0" && char <= "9") begin
			temp = 2'b01;
		end
		else if(char >= "a" && char <= "z") begin
			temp = 2'b10;
		end
		else temp = 2'b11;
		case(tim)
			2'b00: begin
				if(temp == 2'b10) tim = 2'b01;
				else tim = 2'b00;
			end
			2'b01: begin
				if(temp == 2'b01) begin
					tim = 2'b10;
					ot = 1;
				end
				else if(temp == 2'b10) tim = 2'b01;
				else tim = 2'b00;
			end
			2'b10: begin
				if(temp == 2'b01) ot = 1;
				else if(temp == 2'b10) begin
					tim = 2'b01;
					ot = 0;
				end
				else begin
					tim = 2'b00;
					ot = 0;
				end
			end
		endcase
	end
	
endmodule
