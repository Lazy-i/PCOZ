`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    18:46:18 07/04/2019 
// Design Name: 
// Module Name:    mips 
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
module mips(
    input clk,
    input reset
    );
///////////////////wire/////////////////////////
////////////////////NPC////////////////////////	 

		wire [31:0] wire_D_pcbranch;//NPC
		
///////////////FWIRE/////////////////////////////

		wire [31:0] wire_F_pc,wire_F_str;
		
/////////////DCTRL/////////////////////

		wire [1:0] wire_equal,wire_blinkctrl;
		wire [4:0] wire_D_rs,wire_D_rt,wire_D_rd;
		wire [15:0] ct_D_imm;
		wire [25:0] ct_D_i26;
		wire [1:0] tc_D_trs,tc_D_trt;
////////////Dreg///////////////////

		wire [31:0] wire_D_str,wire_D_pc4,wire_D_pc;
		
////////////GRF////////////////////

		wire [4:0] wire_A3_ot;
		wire [31:0] wire_WD_ot,grf_D_RD1,grf_D_RD2;
		
///////////EXT//////////////////////

		wire [31:0] wire_D_ext;
		
///////////Ereg////////////////////

		wire [31:0] wire_E_str,wire_E_pc4,wire_E_rsd,wire_E_rtd,wire_E_ext;
		wire [1:0] wire_E_equal;
/////////////ECTRL////////////////

	wire [2:0] wire_aluc;
	wire wire_alusrc;
	wire [1:0] wire_E_te,wire_E_A3_sel;
	wire [4:0] wire_E_rs,wire_E_rt,wire_E_rd,wire_E_A3_ot;
	wire wire_E_W;
	
////////////ALU///////////////////

	wire [31:0] wire_alusrcb;
	wire [31:0] wire_aluout;
	
//////////Mreg/////////////////////

	wire [31:0] wire_M_str,wire_M_pc4,wire_M_alo,wire_M_rtd;
	wire [4:0] wire_M_rt,wire_M_rd;
	wire [1:0] wire_M_equal;
	
/////////MCTRL/////////////////////

		wire wire_dmwrite,wire_M_cpc8,wire_M_W;
		wire [1:0] wire_M_tm,wire_M_A3_sel;
		wire [4:0] wire_M_A3_ot;
		
/////////DM/////////////////

	wire [31:0] wire_M_dmd;

///////////Wreg/////////////////////

	wire [31:0] wire_W_str,wire_W_pc4,wire_W_alo,wire_W_dmd;
	wire [1:0] wire_W_equal;
	
/////////WCTRL///////////////////

	wire wire_W_W,wire_W_grfdst,wire_W_cpc8;
	wire [1:0] wire_A3_sel,wire_WD_sel;
	wire [4:0] wire_W_rs,wire_W_rt,wire_W_rd;
	wire [4:0] W_A3;

///////////hazard/////////////////

	wire [1:0] F_RF_RD1,F_RF_RD2,F_AU_SCA,F_AU_SCB;
	wire F_DM_DMD;
	wire D_stall,PC_stall,E_clr;
	wire [31:0] MF_RS_D,MF_RT_D,MF_RS_E,MF_RT_E,MF_RT_M;
	
//////////////////datapath//////////////////////////////

/////////////////////////F/////////////////////////////////
//////////////////////Fwire////////////////////////////////
		
		
///////////////////PC//////////////////////////

	 PC PC(
	 .PC_npc_F_i(wire_D_pcbranch),
	 .PC_clk_F_i(clk),
	 .PC_stall_F_i(PC_stall),
	 .PC_reset_F_i(reset),
	 .PC_pc_F_o(wire_F_pc)
	 );
	 
///////////////////////IFU/////////////////////

	IFU IFU(
	.IFU_pc_F_i(wire_F_pc),
   .IFU_instr_F_o(wire_F_str)
	);

////////////////////D///////////////////////////////
/////////////////Dwire////////////////////////

	
/////////////////Dreg///////////////////////

	Dreg Dreg(
	.Dreg_instr_D_i(wire_F_str),
   .Dreg_pc4_D_i(wire_F_pc + 4),
	.Dreg_pc_D_i(wire_F_pc),
   .Dreg_clk_D_i(clk),
	.Dreg_clr_D_i(reset),
	.Dreg_stall_D_i(D_stall),
   .Dreg_instr_D_o(wire_D_str),
   .Dreg_pc4_D_o(wire_D_pc4),
	.Dreg_pc_D_o(wire_D_pc)
	);
	
//////////////////DCTRL////////////////////
	
	Contrler Contrler_D(
	.instr(wire_D_str),
	.equal(wire_equal),
	.grfwrite(wire_grfwrite),
	.grfdst(wire_grfdst),
	.signsrc(wire_signsrc),
	.lui(wire_lui),
	.branch(wire_branch),
	.blinkctrl(wire_blinkctrl),
	.tc_trs(tc_D_trs),
	.tc_trt(tc_D_trt),
	.ctrl_rs(wire_D_rs),
	.ctrl_rt(wire_D_rt),
	.ctrl_rd(wire_D_rd),
	.ct_imm(ct_D_imm),
	.ct_i26(ct_D_i26)
	);
	
/////////////////GRF///////////////////////

	
	GRF GRF(
	.GRF_npc_D_i(wire_W_pc4 - 4),
   .GRF_A1_D_i(wire_D_rs),
   .GRF_A2_D_i(wire_D_rt),
   .GRF_A3_D_i(wire_A3_ot),
   .GRF_WD3_D_i(wire_WD_ot),
   .GRF_clk_D_i(clk),
   .GRF_re_D_i(reset),
	.GRF_we3_D_i(wire_W_W),
   .GRF_RD1_D_o(grf_D_RD1),
   .GRF_RD2_D_o(grf_D_RD2)
	);

//////////////////CMP//////////////////
	CMP CMP(
	.RD1(MF_RS_D),
	.RD2(MF_RT_D),
	.equal(wire_equal)
	);
/////////////////EXT///////////////////
	

	EXT EXT(
	.EXT_imm_D_i(ct_D_imm),
	.EXT_pc4_D_i(wire_D_pc4),
   .EXT_sign_D_i(wire_signsrc),
	.EXT_lui_D_i(wire_lui),
   .EXT_ext_D_o(wire_D_ext)
	);

///////////////NPC/////////////////////
	

	NPC NPC(
	.NPC_i26_D_i(ct_D_i26),
   .NPC_pc4_D_i(wire_D_pc4),
	.NPC_pc4_F_i(wire_F_pc + 4),
   .NPC_rsd_D_i(MF_RS_D),
	.CTL_npc_D_i(wire_blinkctrl),
	.CTL_brh_D_i(wire_branch),
   .NPC_pcb_D_o(wire_D_pcbranch)
	);

///////////////E////////////////////////
	
///////////////Ereg/////////////////////

	Ereg Ereg(
	.Ereg_str_E_i(wire_D_str),
   .Ereg_pc4_E_i(wire_D_pc4),
   .Ereg_rsd_E_i(MF_RS_D),
   .Ereg_rtd_E_i(MF_RT_D),
   .Ereg_ext_E_i(wire_D_ext),
	.Ereg_eal_E_i(wire_equal),
	.Ereg_clr_E_i(reset || E_clr),
	.Ereg_clk_E_i(clk),
   .Ereg_str_E_o(wire_E_str),
   .Ereg_pc4_E_o(wire_E_pc4),
   .Ereg_rsd_E_o(wire_E_rsd),
   .Ereg_rtd_E_o(wire_E_rtd),
   .Ereg_ext_E_o(wire_E_ext),
	.Ereg_eal_E_o(wire_E_equal)
	);
////////////////EContrler//////////////////

	Contrler Contrler_E(
	.instr(wire_E_str),
	.equal(wire_E_equal),
	.alusrc(wire_alusrc),
	.GRF_A3_sel(wire_E_A3_sel),
	.aluc(wire_aluc),
	.ctrl_rs(wire_E_rs),
	.ctrl_rt(wire_E_rt),
	.ctrl_rd(wire_E_rd),
	.tc_te(wire_E_te),
	.grfwrite(wire_E_W)
	);

	MUX_3_5 MUX_E_A3(
	.MUX3(5'd31),
	.MUX2(wire_E_rd),
	.MUX1(wire_E_rt),
	.CTRL(wire_E_A3_sel),
	.ANS(wire_E_A3_ot)
	);
	
//////////////ALUSrcb////////////////////
	
	
	MUX_2_32 MUX_ALU(
	.MUX2(wire_E_ext),
	.MUX1(MF_RT_E),
	.CTRL(wire_alusrc),
	.ANS(wire_alusrcb)
	);
	
//////////////ALU///////////////////////
	
	ALU ALU(
	.ALU_srca_E_i(MF_RS_E),
   .ALU_srcb_E_i(wire_alusrcb),
   .ALU_ctrl_E_i(wire_aluc),
   .ALU_out_E_o(wire_aluout)
	);
	
/////////////M///////////////////////////
	
///////////////Mreg/////////////////////

	Mreg Mreg(
	.Mreg_str_M_i(wire_E_str),
   .Mreg_pc4_M_i(wire_E_pc4),
   .Mreg_alo_M_i(wire_aluout),
   .Mreg_rtd_M_i(MF_RT_E),
	.Mreg_eal_M_i(wire_E_equal),
	.Mreg_clk_M_i(clk),
	.Mreg_clr_M_i(reset),
   .Mreg_str_M_o(wire_M_str),
   .Mreg_pc4_M_o(wire_M_pc4),
   .Mreg_alo_M_o(wire_M_alo),
   .Mreg_rtd_M_o(wire_M_rtd),
	.Mreg_eal_M_o(wire_M_equal)
	); 
	
///////////////MCTRL//////////////////////////////////////
	
	
		Contrler Contrler_M(
		.instr(wire_M_str),
		.equal(wire_M_equal),
	   .dmwrite(wire_dmwrite),
	   .tc_tm(wire_M_tm),
		.c_pc8(wire_M_cpc8),
		.GRF_A3_sel(wire_M_A3_sel),
	   .ctrl_rt(wire_M_rt),
	   .ctrl_rd(wire_M_rd),
		.grfwrite(wire_M_W)
		);
	
	
	MUX_3_5 MUX_M_A3(
	.MUX3(5'd31),
	.MUX2(wire_M_rd),
	.MUX1(wire_M_rt),
	.CTRL(wire_M_A3_sel),
	.ANS(wire_M_A3_ot)
	);
		
////////////////DM//////////////////////////////////

		
	
		DM DM(
	   .DM_npc_M_i(wire_M_pc4 - 4),
      .DM_alo_M_i(wire_M_alo),
      .DM_wtd_M_i(MF_RT_M),
      .DM_clk_M_i(clk),
      .DM_we_M_i(wire_dmwrite),
      .DM_ret_M_i(reset),
      .DM_dmd_M_o(wire_M_dmd)
		);
		
//////////////W//////////////////////////////////

/////////////////Wreg///////////////////////////

	Wreg Wreg(
	.Wreg_str_W_i(wire_M_str),
   .Wreg_pc4_W_i(wire_M_pc4),
   .Wreg_alo_W_i(wire_M_alo),
   .Wreg_dmd_W_i(wire_M_dmd),
	.Wreg_eal_W_i(wire_M_equal),
	.Wreg_clk_W_i(clk),
	.Wreg_clr_W_i(reset),
   .Wreg_str_W_o(wire_W_str),
   .Wreg_pc4_W_o(wire_W_pc4),
   .Wreg_alo_W_o(wire_W_alo),
   .Wreg_dmd_W_o(wire_W_dmd),
	.Wreg_eal_W_o(wire_W_equal)
		);

////////////////WCTRL///////////////////////////


	Contrler Contrler_W(
	.instr(wire_W_str),
	.equal(wire_W_equal),
	.grfwrite(wire_W_W),
	.grfdst(wire_W_grfdst),
	.c_pc8(wire_W_cpc8),
	.GRF_A3_sel(wire_A3_sel),
	.GRF_WD_sel(wire_WD_sel),
	.ctrl_rs(wire_W_rs),
	.ctrl_rt(wire_W_rt),
	.ctrl_rd(wire_W_rd)
	);
	
	
	MUX_2_5 MUX_W_dst(
	.MUX1(wire_W_rt),
	.MUX2(wire_W_rd),
	.CTRL(wire_W_grfdst),
	.ANS(W_A3)
	);

	MUX_3_5 MUX_A3(
	.MUX3(5'd31),
	.MUX2(wire_W_rd),
	.MUX1(wire_W_rt),
	.CTRL(wire_A3_sel),
	.ANS(wire_A3_ot)
	);
	
	MUX_3_32 MUX_WD(
	.MUX3(wire_W_pc4 + 4),
	.MUX2(wire_W_dmd),
	.MUX1(wire_W_alo),
	.CTRL(wire_WD_sel),
	.ANS(wire_WD_ot)
	);
	
//////////////hazard//////////////////	

	hazard hazard(
	.D_A1(wire_D_rs),
   .D_A2(wire_D_rt),
   .E_A1(wire_E_rs),
   .E_A2(wire_E_rt),
   .M_A2(wire_M_rt),
	.A3_E(wire_E_A3_ot),
	.A3_M(wire_M_A3_ot),
	.A3_W(wire_A3_ot),
   .tuse_rs(tc_D_trs),
   .tuse_rt(tc_D_trt),
   .tnew_e(wire_E_te),
   .tnew_m(wire_M_tm),
   .E_W(wire_E_W),
   .M_W(wire_M_W),
   .W_W(wire_W_W),
	.F_RF_RD1(F_RF_RD1),
	.F_RF_RD2(F_RF_RD2),
	.F_AU_SCA(F_AU_SCA),
	.F_AU_SCB(F_AU_SCB),
	.F_DM_DMD(F_DM_DMD),
	.D_stall(D_stall),
	.PC_stall(PC_stall),
	.E_clr(E_clr)
	);
	
/////////////////////////hazardMUX///////////////////
	wire [31:0] wire_M_busw,wire_W_busw;
	
	MUX_2_32 MUX_M_busw(
	.MUX2(wire_M_pc4 + 4),
	.MUX1(wire_M_alo),
	.CTRL(wire_M_cpc8),
	.ANS(wire_M_busw)
	);
	
	MUX_2_32 MUX_W_busw(
	.MUX2(wire_W_pc4 + 4),
	.MUX1(wire_WD_ot),
	.CTRL(wire_W_cpc8),
	.ANS(wire_W_busw)
	);
	
	MUX_4_32 MUX_D_RS(
	.MUX4(wire_E_pc4 + 4),
	.MUX3(wire_M_busw),
	.MUX2(wire_W_busw),
	.MUX1(grf_D_RD1),
	.CTRL(F_RF_RD1),
	.ANS(MF_RS_D)
	);
	
	MUX_4_32 MUX_D_RT(
	.MUX4(wire_E_pc4 + 4),
	.MUX3(wire_M_busw),
	.MUX2(wire_W_busw),
	.MUX1(grf_D_RD2),
	.CTRL(F_RF_RD2),
	.ANS(MF_RT_D)
	);
	
	
	MUX_3_32 MUX_E_RS(
	.MUX3(wire_M_busw),
	.MUX2(wire_W_busw),
	.MUX1(wire_E_rsd),
	.CTRL(F_AU_SCA),
	.ANS(MF_RS_E)
	);
	
	
	MUX_3_32 MUX_E_RT(
	.MUX3(wire_M_busw),
	.MUX2(wire_W_busw),
	.MUX1(wire_E_rtd),
	.CTRL(F_AU_SCB),
	.ANS(MF_RT_E)
	);
	
	MUX_2_32 MUX_M_RT(
	.MUX2(wire_W_busw),
	.MUX1(wire_M_rtd),
	.CTRL(F_DM_DMD),
	.ANS(MF_RT_M)
	);
endmodule
