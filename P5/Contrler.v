`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    18:29:30 07/03/2019 
// Design Name: 
// Module Name:    Contrler 
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
 module Contrler( 
	 input [31:0] instr,
	 input  [1:0] equal,
	 output grfwrite,
	 output grfdst,
	 output alusrc,
	 output [2:0] aluc,
	 output dmwrite,
	 output [1:0] GRF_A3_sel,
	 output [1:0] GRF_WD_sel,
	 output signsrc,
	 output lui,
	 output cjal,
	 output branch,
	 output cbgezal,
	 output [1:0] blinkctrl,
	 output [1:0] tc_trs,
	 output [1:0] tc_trt,
	 output [1:0] tc_te,
	 output [1:0] tc_tm,
	 output [1:0] tc_tw,
	 output [4:0] ctrl_rs,
	 output [4:0] ctrl_rt,
	 output [4:0] ctrl_rd,
	 output [15:0] ct_imm,
	 output [25:0] ct_i26
    );
		
	wire [5:0] wire_op;
	wire [5:0] wire_fun;
	wire [4:0] wire_rs,wire_rt,wire_rd;
	wire [15:0] wire_imm;
	wire [25:0] wire_i26;
	
	wire wire_addu,wire_subu,wire_ori,wire_lw,wire_sw,wire_beq;
	wire wire_lui,wire_jal,wire_jr,wire_j,wire_bgezal;
	
	wire [2:0] wire_aluc;
	wire wire_grfwrite, wire_grfdst, wire_alusrc, wire_brh, wire_d2g;
	wire wire_clui, wire_dmwrite,wire_signsrc,wire_cjal,wire_cjr,wire_cj,wire_cbgezal;
	
	wire [1:0] wire_trs,wire_trt,wire_te,wire_tm,wire_tw;
		
	assign cjal = wire_cjal;	
	assign grfwrite = wire_grfwrite;
	assign grfdst = wire_grfdst;
	assign alusrc = wire_alusrc;
	assign aluc = wire_aluc;
	assign dmwrite = wire_dmwrite;
	assign signsrc = wire_signsrc;
	assign lui = wire_clui;
	assign branch = wire_brh;
	assign cbgezal = wire_cbgezal;
	assign tc_trs = wire_trs;
	assign tc_trt = wire_trt;
	assign tc_te = wire_te;
	assign tc_tm = wire_tm;
	assign tc_tw = wire_tw;
	assign ctrl_rs = wire_rs;
	assign ctrl_rt = wire_rt;
	assign ctrl_rd = wire_rd;
	assign ct_imm = wire_imm;
	assign ct_i26 = wire_i26;
/////////////////SPI////////////////////////////////////////////////////////////////////

		SPI SPI_Contrl(
		.SPI_instr_D_i(instr),
		.SPI_op_D_o(wire_op),
		.SPI_fun_D_o(wire_fun),
		.SPI_rs_D_o(wire_rs),
		.SPI_rt_D_o(wire_rt),
		.SPI_rd_D_o(wire_rd),
		.SPI_imm_D_o(wire_imm),
		.SPI_i26_D_o(wire_i26)
		);
////////////////CTRL///////////////////////////////////////////////////

		wire [5:0] wire_funout;
		wire wire_opout;
		Ctrl Crtl_Contrl(
		.Op(wire_op),
		.Fun(wire_fun),
		.Funout(wire_funout),
		.Opout(wire_opout)
		);
		
//////////////AND//////////////////////////////////////////////////////

		AND AND_Contrl(
		.Op(wire_opout),
		.f(wire_funout),
		.addu(wire_addu),
		.subu(wire_subu),
		.ori(wire_ori),
		.lw(wire_lw),
		.sw(wire_sw),
		.beq(wire_beq),
		.lui(wire_lui),
		.jal(wire_jal),
		.j(wire_j),
		.bgezal(wire_bgezal),
		.jr(wire_jr)
		);
		
/////////////////OR//////////////////////////////////////////////

		OR OR_Contrl(
		.addu(wire_addu),
		.subu(wire_subu),
		.ori(wire_ori),
		.lw(wire_lw),
		.sw(wire_sw),
		.beq(wire_beq),
		.lui(wire_lui),
		.jal(wire_jal),
		.bgezal(wire_bgezal),
		.j(wire_j),
		.jr(wire_jr),
		.GRFWrite(wire_grfwrite),
		.GRFDst(wire_grfdst),
		.ALUSrc(wire_alusrc),
		.ALUC(wire_aluc),
		.Branch(wire_brh),
		.DMtoGRF(wire_d2g),
		.LUI(wire_clui),
		.DMWrite(wire_dmwrite),
		.signSrc(wire_signsrc),
		.Jal(wire_cjal),
		.J(wire_cj),
		.cbgezal(wire_cbgezal),
		.Jr(wire_cjr)
		);
		
		
/////////////////tcode//////////////////////////////////////


		TCODE TCODE_Contrl(
		.addu(wire_addu),
		.subu(wire_subu),
		.ori(wire_ori),
		.lui(wire_lui),
		.lw(wire_lw),
		.sw(wire_sw),
		.beq(wire_beq),
		.jal(wire_jal),
		.jr(wire_jr),
		.j(wire_j),
		.bgezal(wire_bgezal),
		.tuse_rs(wire_trs),
		.tuse_rt(wire_trt),
		.tnew_e(wire_te),
		.tnew_m(wire_tm),
		.tnew_w(wire_tw)
		);
		
///////////////blink//////////////////////////////////////
		
		BLINK BLINK_Contrl(
		.equal(equal),
		.branch(wire_brh),
		.bgezal(wire_cbgezal),
		.j(wire_cj),
		.jr(wire_cjr),
		.blinkctrl(blinkctrl)
		);
		
/////////////MUXCL/////////////////////////////////////

		MUXCL MUXCL_Contrl(
		.grfdst(grfdst),
		.jal(wire_cjal),
		.D2G(wire_d2g),
		.GRF_A3_sel(GRF_A3_sel),
		.GRF_WD_sel(GRF_WD_sel)
		);
endmodule
