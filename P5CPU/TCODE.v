`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    00:42:45 07/04/2019 
// Design Name: 
// Module Name:    TCODE 
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
module TCODE(
    input addu,
    input subu,
    input ori,
    input lw,
    input sw,
    input beq,
    input lui,
    input jal,
    input jr,
	 input j,
	 output [1:0] tuse_rs,
	 output [1:0] tuse_rt,
	 output [1:0] tnew_e,
	 output [1:0] tnew_m,
	 output [1:0] tnew_w
    );

	reg [1:0] tp1,tp2;
	reg [1:0] Tnew_e ,Tnew_m,Tnew_w ;
	initial begin 
		tp1 = 0;
		tp2 = 0;
		Tnew_e = 0;
		Tnew_m = 0;
		Tnew_w = 0;
	end
	assign tuse_rs = tp1;
	assign tuse_rt = tp2;
	assign tnew_e = Tnew_e;
	assign tnew_m = Tnew_m;
	assign tnew_w = Tnew_w;
	always@(*) begin
		if(addu)	begin
			tp1 <= 1;
			tp2 <= 1;
		end
		if(subu)	begin
			tp1 <= 1;
			tp2 <= 1;
		end
		if(ori)	begin
			tp1 <= 1;
			tp2 <= 1;
		end
		if(lui)	begin
			tp1 <= 3;
			tp2 <= 3;
		end
		if(lw)	begin
			tp1 <= 1;
			tp2 <= 3;
		end
		if(sw)	begin
			tp1 <= 1;
			tp2 <= 2;
		end
		if(beq)	begin
			tp1 <= 0;
			tp2 <= 0;
		end
		if(jal)	begin
			tp1 <= 3;
			tp2 <= 3;
		end
		if(jr)	begin
			tp1 <= 0;
			tp2 <= 0;
		end
		if(j)		begin
			tp1 <= 3;
			tp2 <= 3;
		end
		
	end
	always@(*)begin
		if(addu || subu || lui || ori) begin
			Tnew_e <= 1;
			Tnew_m <= 0;
			Tnew_w <= 0;
		end
		if(lw)begin
			Tnew_e <= 2;
			Tnew_m <= 1;
			Tnew_w <= 0;
		end
		if (jal)begin
			Tnew_e <= 0;
			Tnew_m <= 0;
			Tnew_w <= 0;
		end
		if(beq || j || jr || sw) begin
			Tnew_e <= 3;
			Tnew_m <= 3;
			Tnew_w <= 3;
		end
	end
endmodule
