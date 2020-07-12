/**********************************************************************/
/*   ____  ____                                                       */
/*  /   /\/   /                                                       */
/* /___/  \  /                                                        */
/* \   \   \/                                                       */
/*  \   \        Copyright (c) 2003-2009 Xilinx, Inc.                */
/*  /   /          All Right Reserved.                                 */
/* /---/   /\                                                         */
/* \   \  /  \                                                      */
/*  \___\/\___\                                                    */
/***********************************************************************/

/* This file is designed for use with ISim build 0x7708f090 */

#define XSI_HIDE_SYMBOL_SPEC true
#include "xsi.h"
#include <memory.h>
#ifdef __GNUC__
#include <stdlib.h>
#else
#include <malloc.h>
#define alloca _alloca
#endif
static const char *ng0 = "H:/ISE/P5CPU/Ctrl.v";
static int ng1[] = {0, 0};



static void Initial_28_0(char *t0)
{
    char *t1;
    char *t2;

LAB0:    xsi_set_current_line(28, ng0);
    t1 = ((char*)((ng1)));
    t2 = (t0 + 1928);
    xsi_vlogvar_assign_value(t2, t1, 0, 0, 6);

LAB1:    return;
}

static void Cont_29_1(char *t0)
{
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    char *t5;
    char *t6;
    char *t7;
    char *t8;
    char *t9;
    unsigned int t10;
    unsigned int t11;
    char *t12;
    unsigned int t13;
    unsigned int t14;
    char *t15;
    unsigned int t16;
    unsigned int t17;
    char *t18;

LAB0:    t1 = (t0 + 3096U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(29, ng0);
    t2 = (t0 + 1928);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    t5 = (t0 + 4024);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    t8 = (t7 + 56U);
    t9 = *((char **)t8);
    memset(t9, 0, 8);
    t10 = 63U;
    t11 = t10;
    t12 = (t4 + 4);
    t13 = *((unsigned int *)t4);
    t10 = (t10 & t13);
    t14 = *((unsigned int *)t12);
    t11 = (t11 & t14);
    t15 = (t9 + 4);
    t16 = *((unsigned int *)t9);
    *((unsigned int *)t9) = (t16 | t10);
    t17 = *((unsigned int *)t15);
    *((unsigned int *)t15) = (t17 | t11);
    xsi_driver_vfirst_trans(t5, 0, 5);
    t18 = (t0 + 3912);
    *((int *)t18) = 1;

LAB1:    return;
}

static void Cont_30_2(char *t0)
{
    char t3[8];
    char t12[8];
    char t25[8];
    char t35[8];
    char t43[8];
    char t71[8];
    char t84[8];
    char t94[8];
    char t102[8];
    char t130[8];
    char t143[8];
    char t153[8];
    char t161[8];
    char t189[8];
    char t202[8];
    char t212[8];
    char t220[8];
    char t248[8];
    char t261[8];
    char t271[8];
    char t279[8];
    char *t1;
    char *t2;
    char *t4;
    char *t5;
    unsigned int t6;
    unsigned int t7;
    unsigned int t8;
    unsigned int t9;
    unsigned int t10;
    unsigned int t11;
    char *t13;
    unsigned int t14;
    unsigned int t15;
    unsigned int t16;
    unsigned int t17;
    unsigned int t18;
    char *t19;
    char *t20;
    unsigned int t21;
    unsigned int t22;
    unsigned int t23;
    unsigned int t24;
    char *t26;
    char *t27;
    char *t28;
    unsigned int t29;
    unsigned int t30;
    unsigned int t31;
    unsigned int t32;
    unsigned int t33;
    unsigned int t34;
    char *t36;
    unsigned int t37;
    unsigned int t38;
    unsigned int t39;
    unsigned int t40;
    unsigned int t41;
    char *t42;
    unsigned int t44;
    unsigned int t45;
    unsigned int t46;
    char *t47;
    char *t48;
    char *t49;
    unsigned int t50;
    unsigned int t51;
    unsigned int t52;
    unsigned int t53;
    unsigned int t54;
    unsigned int t55;
    unsigned int t56;
    char *t57;
    char *t58;
    unsigned int t59;
    unsigned int t60;
    unsigned int t61;
    int t62;
    unsigned int t63;
    unsigned int t64;
    unsigned int t65;
    int t66;
    unsigned int t67;
    unsigned int t68;
    unsigned int t69;
    unsigned int t70;
    char *t72;
    unsigned int t73;
    unsigned int t74;
    unsigned int t75;
    unsigned int t76;
    unsigned int t77;
    char *t78;
    char *t79;
    unsigned int t80;
    unsigned int t81;
    unsigned int t82;
    unsigned int t83;
    char *t85;
    char *t86;
    char *t87;
    unsigned int t88;
    unsigned int t89;
    unsigned int t90;
    unsigned int t91;
    unsigned int t92;
    unsigned int t93;
    char *t95;
    unsigned int t96;
    unsigned int t97;
    unsigned int t98;
    unsigned int t99;
    unsigned int t100;
    char *t101;
    unsigned int t103;
    unsigned int t104;
    unsigned int t105;
    char *t106;
    char *t107;
    char *t108;
    unsigned int t109;
    unsigned int t110;
    unsigned int t111;
    unsigned int t112;
    unsigned int t113;
    unsigned int t114;
    unsigned int t115;
    char *t116;
    char *t117;
    unsigned int t118;
    unsigned int t119;
    unsigned int t120;
    int t121;
    unsigned int t122;
    unsigned int t123;
    unsigned int t124;
    int t125;
    unsigned int t126;
    unsigned int t127;
    unsigned int t128;
    unsigned int t129;
    char *t131;
    unsigned int t132;
    unsigned int t133;
    unsigned int t134;
    unsigned int t135;
    unsigned int t136;
    char *t137;
    char *t138;
    unsigned int t139;
    unsigned int t140;
    unsigned int t141;
    unsigned int t142;
    char *t144;
    char *t145;
    char *t146;
    unsigned int t147;
    unsigned int t148;
    unsigned int t149;
    unsigned int t150;
    unsigned int t151;
    unsigned int t152;
    char *t154;
    unsigned int t155;
    unsigned int t156;
    unsigned int t157;
    unsigned int t158;
    unsigned int t159;
    char *t160;
    unsigned int t162;
    unsigned int t163;
    unsigned int t164;
    char *t165;
    char *t166;
    char *t167;
    unsigned int t168;
    unsigned int t169;
    unsigned int t170;
    unsigned int t171;
    unsigned int t172;
    unsigned int t173;
    unsigned int t174;
    char *t175;
    char *t176;
    unsigned int t177;
    unsigned int t178;
    unsigned int t179;
    int t180;
    unsigned int t181;
    unsigned int t182;
    unsigned int t183;
    int t184;
    unsigned int t185;
    unsigned int t186;
    unsigned int t187;
    unsigned int t188;
    char *t190;
    unsigned int t191;
    unsigned int t192;
    unsigned int t193;
    unsigned int t194;
    unsigned int t195;
    char *t196;
    char *t197;
    unsigned int t198;
    unsigned int t199;
    unsigned int t200;
    unsigned int t201;
    char *t203;
    char *t204;
    char *t205;
    unsigned int t206;
    unsigned int t207;
    unsigned int t208;
    unsigned int t209;
    unsigned int t210;
    unsigned int t211;
    char *t213;
    unsigned int t214;
    unsigned int t215;
    unsigned int t216;
    unsigned int t217;
    unsigned int t218;
    char *t219;
    unsigned int t221;
    unsigned int t222;
    unsigned int t223;
    char *t224;
    char *t225;
    char *t226;
    unsigned int t227;
    unsigned int t228;
    unsigned int t229;
    unsigned int t230;
    unsigned int t231;
    unsigned int t232;
    unsigned int t233;
    char *t234;
    char *t235;
    unsigned int t236;
    unsigned int t237;
    unsigned int t238;
    int t239;
    unsigned int t240;
    unsigned int t241;
    unsigned int t242;
    int t243;
    unsigned int t244;
    unsigned int t245;
    unsigned int t246;
    unsigned int t247;
    char *t249;
    unsigned int t250;
    unsigned int t251;
    unsigned int t252;
    unsigned int t253;
    unsigned int t254;
    char *t255;
    char *t256;
    unsigned int t257;
    unsigned int t258;
    unsigned int t259;
    unsigned int t260;
    char *t262;
    char *t263;
    char *t264;
    unsigned int t265;
    unsigned int t266;
    unsigned int t267;
    unsigned int t268;
    unsigned int t269;
    unsigned int t270;
    char *t272;
    unsigned int t273;
    unsigned int t274;
    unsigned int t275;
    unsigned int t276;
    unsigned int t277;
    char *t278;
    unsigned int t280;
    unsigned int t281;
    unsigned int t282;
    char *t283;
    char *t284;
    char *t285;
    unsigned int t286;
    unsigned int t287;
    unsigned int t288;
    unsigned int t289;
    unsigned int t290;
    unsigned int t291;
    unsigned int t292;
    char *t293;
    char *t294;
    unsigned int t295;
    unsigned int t296;
    unsigned int t297;
    int t298;
    unsigned int t299;
    unsigned int t300;
    unsigned int t301;
    int t302;
    unsigned int t303;
    unsigned int t304;
    unsigned int t305;
    unsigned int t306;
    char *t307;
    char *t308;
    char *t309;
    char *t310;
    char *t311;
    unsigned int t312;
    unsigned int t313;
    char *t314;
    unsigned int t315;
    unsigned int t316;
    char *t317;
    unsigned int t318;
    unsigned int t319;
    char *t320;

LAB0:    t1 = (t0 + 3344U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(30, ng0);
    t2 = (t0 + 1048U);
    t4 = *((char **)t2);
    memset(t3, 0, 8);
    t2 = (t3 + 4);
    t5 = (t4 + 4);
    t6 = *((unsigned int *)t4);
    t7 = (t6 >> 5);
    *((unsigned int *)t3) = t7;
    t8 = *((unsigned int *)t5);
    t9 = (t8 >> 5);
    *((unsigned int *)t2) = t9;
    t10 = *((unsigned int *)t3);
    *((unsigned int *)t3) = (t10 & 1U);
    t11 = *((unsigned int *)t2);
    *((unsigned int *)t2) = (t11 & 1U);
    memset(t12, 0, 8);
    t13 = (t3 + 4);
    t14 = *((unsigned int *)t13);
    t15 = (~(t14));
    t16 = *((unsigned int *)t3);
    t17 = (t16 & t15);
    t18 = (t17 & 1U);
    if (t18 != 0)
        goto LAB4;

LAB5:    if (*((unsigned int *)t13) != 0)
        goto LAB6;

LAB7:    t20 = (t12 + 4);
    t21 = *((unsigned int *)t12);
    t22 = (!(t21));
    t23 = *((unsigned int *)t20);
    t24 = (t22 || t23);
    if (t24 > 0)
        goto LAB8;

LAB9:    memcpy(t43, t12, 8);

LAB10:    memset(t71, 0, 8);
    t72 = (t43 + 4);
    t73 = *((unsigned int *)t72);
    t74 = (~(t73));
    t75 = *((unsigned int *)t43);
    t76 = (t75 & t74);
    t77 = (t76 & 1U);
    if (t77 != 0)
        goto LAB18;

LAB19:    if (*((unsigned int *)t72) != 0)
        goto LAB20;

LAB21:    t79 = (t71 + 4);
    t80 = *((unsigned int *)t71);
    t81 = (!(t80));
    t82 = *((unsigned int *)t79);
    t83 = (t81 || t82);
    if (t83 > 0)
        goto LAB22;

LAB23:    memcpy(t102, t71, 8);

LAB24:    memset(t130, 0, 8);
    t131 = (t102 + 4);
    t132 = *((unsigned int *)t131);
    t133 = (~(t132));
    t134 = *((unsigned int *)t102);
    t135 = (t134 & t133);
    t136 = (t135 & 1U);
    if (t136 != 0)
        goto LAB32;

LAB33:    if (*((unsigned int *)t131) != 0)
        goto LAB34;

LAB35:    t138 = (t130 + 4);
    t139 = *((unsigned int *)t130);
    t140 = (!(t139));
    t141 = *((unsigned int *)t138);
    t142 = (t140 || t141);
    if (t142 > 0)
        goto LAB36;

LAB37:    memcpy(t161, t130, 8);

LAB38:    memset(t189, 0, 8);
    t190 = (t161 + 4);
    t191 = *((unsigned int *)t190);
    t192 = (~(t191));
    t193 = *((unsigned int *)t161);
    t194 = (t193 & t192);
    t195 = (t194 & 1U);
    if (t195 != 0)
        goto LAB46;

LAB47:    if (*((unsigned int *)t190) != 0)
        goto LAB48;

LAB49:    t197 = (t189 + 4);
    t198 = *((unsigned int *)t189);
    t199 = (!(t198));
    t200 = *((unsigned int *)t197);
    t201 = (t199 || t200);
    if (t201 > 0)
        goto LAB50;

LAB51:    memcpy(t220, t189, 8);

LAB52:    memset(t248, 0, 8);
    t249 = (t220 + 4);
    t250 = *((unsigned int *)t249);
    t251 = (~(t250));
    t252 = *((unsigned int *)t220);
    t253 = (t252 & t251);
    t254 = (t253 & 1U);
    if (t254 != 0)
        goto LAB60;

LAB61:    if (*((unsigned int *)t249) != 0)
        goto LAB62;

LAB63:    t256 = (t248 + 4);
    t257 = *((unsigned int *)t248);
    t258 = (!(t257));
    t259 = *((unsigned int *)t256);
    t260 = (t258 || t259);
    if (t260 > 0)
        goto LAB64;

LAB65:    memcpy(t279, t248, 8);

LAB66:    t307 = (t0 + 4088);
    t308 = (t307 + 56U);
    t309 = *((char **)t308);
    t310 = (t309 + 56U);
    t311 = *((char **)t310);
    memset(t311, 0, 8);
    t312 = 1U;
    t313 = t312;
    t314 = (t279 + 4);
    t315 = *((unsigned int *)t279);
    t312 = (t312 & t315);
    t316 = *((unsigned int *)t314);
    t313 = (t313 & t316);
    t317 = (t311 + 4);
    t318 = *((unsigned int *)t311);
    *((unsigned int *)t311) = (t318 | t312);
    t319 = *((unsigned int *)t317);
    *((unsigned int *)t317) = (t319 | t313);
    xsi_driver_vfirst_trans(t307, 0, 0);
    t320 = (t0 + 3928);
    *((int *)t320) = 1;

LAB1:    return;
LAB4:    *((unsigned int *)t12) = 1;
    goto LAB7;

LAB6:    t19 = (t12 + 4);
    *((unsigned int *)t12) = 1;
    *((unsigned int *)t19) = 1;
    goto LAB7;

LAB8:    t26 = (t0 + 1048U);
    t27 = *((char **)t26);
    memset(t25, 0, 8);
    t26 = (t25 + 4);
    t28 = (t27 + 4);
    t29 = *((unsigned int *)t27);
    t30 = (t29 >> 4);
    *((unsigned int *)t25) = t30;
    t31 = *((unsigned int *)t28);
    t32 = (t31 >> 4);
    *((unsigned int *)t26) = t32;
    t33 = *((unsigned int *)t25);
    *((unsigned int *)t25) = (t33 & 1U);
    t34 = *((unsigned int *)t26);
    *((unsigned int *)t26) = (t34 & 1U);
    memset(t35, 0, 8);
    t36 = (t25 + 4);
    t37 = *((unsigned int *)t36);
    t38 = (~(t37));
    t39 = *((unsigned int *)t25);
    t40 = (t39 & t38);
    t41 = (t40 & 1U);
    if (t41 != 0)
        goto LAB11;

LAB12:    if (*((unsigned int *)t36) != 0)
        goto LAB13;

LAB14:    t44 = *((unsigned int *)t12);
    t45 = *((unsigned int *)t35);
    t46 = (t44 | t45);
    *((unsigned int *)t43) = t46;
    t47 = (t12 + 4);
    t48 = (t35 + 4);
    t49 = (t43 + 4);
    t50 = *((unsigned int *)t47);
    t51 = *((unsigned int *)t48);
    t52 = (t50 | t51);
    *((unsigned int *)t49) = t52;
    t53 = *((unsigned int *)t49);
    t54 = (t53 != 0);
    if (t54 == 1)
        goto LAB15;

LAB16:
LAB17:    goto LAB10;

LAB11:    *((unsigned int *)t35) = 1;
    goto LAB14;

LAB13:    t42 = (t35 + 4);
    *((unsigned int *)t35) = 1;
    *((unsigned int *)t42) = 1;
    goto LAB14;

LAB15:    t55 = *((unsigned int *)t43);
    t56 = *((unsigned int *)t49);
    *((unsigned int *)t43) = (t55 | t56);
    t57 = (t12 + 4);
    t58 = (t35 + 4);
    t59 = *((unsigned int *)t57);
    t60 = (~(t59));
    t61 = *((unsigned int *)t12);
    t62 = (t61 & t60);
    t63 = *((unsigned int *)t58);
    t64 = (~(t63));
    t65 = *((unsigned int *)t35);
    t66 = (t65 & t64);
    t67 = (~(t62));
    t68 = (~(t66));
    t69 = *((unsigned int *)t49);
    *((unsigned int *)t49) = (t69 & t67);
    t70 = *((unsigned int *)t49);
    *((unsigned int *)t49) = (t70 & t68);
    goto LAB17;

LAB18:    *((unsigned int *)t71) = 1;
    goto LAB21;

LAB20:    t78 = (t71 + 4);
    *((unsigned int *)t71) = 1;
    *((unsigned int *)t78) = 1;
    goto LAB21;

LAB22:    t85 = (t0 + 1048U);
    t86 = *((char **)t85);
    memset(t84, 0, 8);
    t85 = (t84 + 4);
    t87 = (t86 + 4);
    t88 = *((unsigned int *)t86);
    t89 = (t88 >> 3);
    *((unsigned int *)t84) = t89;
    t90 = *((unsigned int *)t87);
    t91 = (t90 >> 3);
    *((unsigned int *)t85) = t91;
    t92 = *((unsigned int *)t84);
    *((unsigned int *)t84) = (t92 & 1U);
    t93 = *((unsigned int *)t85);
    *((unsigned int *)t85) = (t93 & 1U);
    memset(t94, 0, 8);
    t95 = (t84 + 4);
    t96 = *((unsigned int *)t95);
    t97 = (~(t96));
    t98 = *((unsigned int *)t84);
    t99 = (t98 & t97);
    t100 = (t99 & 1U);
    if (t100 != 0)
        goto LAB25;

LAB26:    if (*((unsigned int *)t95) != 0)
        goto LAB27;

LAB28:    t103 = *((unsigned int *)t71);
    t104 = *((unsigned int *)t94);
    t105 = (t103 | t104);
    *((unsigned int *)t102) = t105;
    t106 = (t71 + 4);
    t107 = (t94 + 4);
    t108 = (t102 + 4);
    t109 = *((unsigned int *)t106);
    t110 = *((unsigned int *)t107);
    t111 = (t109 | t110);
    *((unsigned int *)t108) = t111;
    t112 = *((unsigned int *)t108);
    t113 = (t112 != 0);
    if (t113 == 1)
        goto LAB29;

LAB30:
LAB31:    goto LAB24;

LAB25:    *((unsigned int *)t94) = 1;
    goto LAB28;

LAB27:    t101 = (t94 + 4);
    *((unsigned int *)t94) = 1;
    *((unsigned int *)t101) = 1;
    goto LAB28;

LAB29:    t114 = *((unsigned int *)t102);
    t115 = *((unsigned int *)t108);
    *((unsigned int *)t102) = (t114 | t115);
    t116 = (t71 + 4);
    t117 = (t94 + 4);
    t118 = *((unsigned int *)t116);
    t119 = (~(t118));
    t120 = *((unsigned int *)t71);
    t121 = (t120 & t119);
    t122 = *((unsigned int *)t117);
    t123 = (~(t122));
    t124 = *((unsigned int *)t94);
    t125 = (t124 & t123);
    t126 = (~(t121));
    t127 = (~(t125));
    t128 = *((unsigned int *)t108);
    *((unsigned int *)t108) = (t128 & t126);
    t129 = *((unsigned int *)t108);
    *((unsigned int *)t108) = (t129 & t127);
    goto LAB31;

LAB32:    *((unsigned int *)t130) = 1;
    goto LAB35;

LAB34:    t137 = (t130 + 4);
    *((unsigned int *)t130) = 1;
    *((unsigned int *)t137) = 1;
    goto LAB35;

LAB36:    t144 = (t0 + 1048U);
    t145 = *((char **)t144);
    memset(t143, 0, 8);
    t144 = (t143 + 4);
    t146 = (t145 + 4);
    t147 = *((unsigned int *)t145);
    t148 = (t147 >> 2);
    *((unsigned int *)t143) = t148;
    t149 = *((unsigned int *)t146);
    t150 = (t149 >> 2);
    *((unsigned int *)t144) = t150;
    t151 = *((unsigned int *)t143);
    *((unsigned int *)t143) = (t151 & 1U);
    t152 = *((unsigned int *)t144);
    *((unsigned int *)t144) = (t152 & 1U);
    memset(t153, 0, 8);
    t154 = (t143 + 4);
    t155 = *((unsigned int *)t154);
    t156 = (~(t155));
    t157 = *((unsigned int *)t143);
    t158 = (t157 & t156);
    t159 = (t158 & 1U);
    if (t159 != 0)
        goto LAB39;

LAB40:    if (*((unsigned int *)t154) != 0)
        goto LAB41;

LAB42:    t162 = *((unsigned int *)t130);
    t163 = *((unsigned int *)t153);
    t164 = (t162 | t163);
    *((unsigned int *)t161) = t164;
    t165 = (t130 + 4);
    t166 = (t153 + 4);
    t167 = (t161 + 4);
    t168 = *((unsigned int *)t165);
    t169 = *((unsigned int *)t166);
    t170 = (t168 | t169);
    *((unsigned int *)t167) = t170;
    t171 = *((unsigned int *)t167);
    t172 = (t171 != 0);
    if (t172 == 1)
        goto LAB43;

LAB44:
LAB45:    goto LAB38;

LAB39:    *((unsigned int *)t153) = 1;
    goto LAB42;

LAB41:    t160 = (t153 + 4);
    *((unsigned int *)t153) = 1;
    *((unsigned int *)t160) = 1;
    goto LAB42;

LAB43:    t173 = *((unsigned int *)t161);
    t174 = *((unsigned int *)t167);
    *((unsigned int *)t161) = (t173 | t174);
    t175 = (t130 + 4);
    t176 = (t153 + 4);
    t177 = *((unsigned int *)t175);
    t178 = (~(t177));
    t179 = *((unsigned int *)t130);
    t180 = (t179 & t178);
    t181 = *((unsigned int *)t176);
    t182 = (~(t181));
    t183 = *((unsigned int *)t153);
    t184 = (t183 & t182);
    t185 = (~(t180));
    t186 = (~(t184));
    t187 = *((unsigned int *)t167);
    *((unsigned int *)t167) = (t187 & t185);
    t188 = *((unsigned int *)t167);
    *((unsigned int *)t167) = (t188 & t186);
    goto LAB45;

LAB46:    *((unsigned int *)t189) = 1;
    goto LAB49;

LAB48:    t196 = (t189 + 4);
    *((unsigned int *)t189) = 1;
    *((unsigned int *)t196) = 1;
    goto LAB49;

LAB50:    t203 = (t0 + 1048U);
    t204 = *((char **)t203);
    memset(t202, 0, 8);
    t203 = (t202 + 4);
    t205 = (t204 + 4);
    t206 = *((unsigned int *)t204);
    t207 = (t206 >> 1);
    *((unsigned int *)t202) = t207;
    t208 = *((unsigned int *)t205);
    t209 = (t208 >> 1);
    *((unsigned int *)t203) = t209;
    t210 = *((unsigned int *)t202);
    *((unsigned int *)t202) = (t210 & 1U);
    t211 = *((unsigned int *)t203);
    *((unsigned int *)t203) = (t211 & 1U);
    memset(t212, 0, 8);
    t213 = (t202 + 4);
    t214 = *((unsigned int *)t213);
    t215 = (~(t214));
    t216 = *((unsigned int *)t202);
    t217 = (t216 & t215);
    t218 = (t217 & 1U);
    if (t218 != 0)
        goto LAB53;

LAB54:    if (*((unsigned int *)t213) != 0)
        goto LAB55;

LAB56:    t221 = *((unsigned int *)t189);
    t222 = *((unsigned int *)t212);
    t223 = (t221 | t222);
    *((unsigned int *)t220) = t223;
    t224 = (t189 + 4);
    t225 = (t212 + 4);
    t226 = (t220 + 4);
    t227 = *((unsigned int *)t224);
    t228 = *((unsigned int *)t225);
    t229 = (t227 | t228);
    *((unsigned int *)t226) = t229;
    t230 = *((unsigned int *)t226);
    t231 = (t230 != 0);
    if (t231 == 1)
        goto LAB57;

LAB58:
LAB59:    goto LAB52;

LAB53:    *((unsigned int *)t212) = 1;
    goto LAB56;

LAB55:    t219 = (t212 + 4);
    *((unsigned int *)t212) = 1;
    *((unsigned int *)t219) = 1;
    goto LAB56;

LAB57:    t232 = *((unsigned int *)t220);
    t233 = *((unsigned int *)t226);
    *((unsigned int *)t220) = (t232 | t233);
    t234 = (t189 + 4);
    t235 = (t212 + 4);
    t236 = *((unsigned int *)t234);
    t237 = (~(t236));
    t238 = *((unsigned int *)t189);
    t239 = (t238 & t237);
    t240 = *((unsigned int *)t235);
    t241 = (~(t240));
    t242 = *((unsigned int *)t212);
    t243 = (t242 & t241);
    t244 = (~(t239));
    t245 = (~(t243));
    t246 = *((unsigned int *)t226);
    *((unsigned int *)t226) = (t246 & t244);
    t247 = *((unsigned int *)t226);
    *((unsigned int *)t226) = (t247 & t245);
    goto LAB59;

LAB60:    *((unsigned int *)t248) = 1;
    goto LAB63;

LAB62:    t255 = (t248 + 4);
    *((unsigned int *)t248) = 1;
    *((unsigned int *)t255) = 1;
    goto LAB63;

LAB64:    t262 = (t0 + 1048U);
    t263 = *((char **)t262);
    memset(t261, 0, 8);
    t262 = (t261 + 4);
    t264 = (t263 + 4);
    t265 = *((unsigned int *)t263);
    t266 = (t265 >> 0);
    *((unsigned int *)t261) = t266;
    t267 = *((unsigned int *)t264);
    t268 = (t267 >> 0);
    *((unsigned int *)t262) = t268;
    t269 = *((unsigned int *)t261);
    *((unsigned int *)t261) = (t269 & 1U);
    t270 = *((unsigned int *)t262);
    *((unsigned int *)t262) = (t270 & 1U);
    memset(t271, 0, 8);
    t272 = (t261 + 4);
    t273 = *((unsigned int *)t272);
    t274 = (~(t273));
    t275 = *((unsigned int *)t261);
    t276 = (t275 & t274);
    t277 = (t276 & 1U);
    if (t277 != 0)
        goto LAB67;

LAB68:    if (*((unsigned int *)t272) != 0)
        goto LAB69;

LAB70:    t280 = *((unsigned int *)t248);
    t281 = *((unsigned int *)t271);
    t282 = (t280 | t281);
    *((unsigned int *)t279) = t282;
    t283 = (t248 + 4);
    t284 = (t271 + 4);
    t285 = (t279 + 4);
    t286 = *((unsigned int *)t283);
    t287 = *((unsigned int *)t284);
    t288 = (t286 | t287);
    *((unsigned int *)t285) = t288;
    t289 = *((unsigned int *)t285);
    t290 = (t289 != 0);
    if (t290 == 1)
        goto LAB71;

LAB72:
LAB73:    goto LAB66;

LAB67:    *((unsigned int *)t271) = 1;
    goto LAB70;

LAB69:    t278 = (t271 + 4);
    *((unsigned int *)t271) = 1;
    *((unsigned int *)t278) = 1;
    goto LAB70;

LAB71:    t291 = *((unsigned int *)t279);
    t292 = *((unsigned int *)t285);
    *((unsigned int *)t279) = (t291 | t292);
    t293 = (t248 + 4);
    t294 = (t271 + 4);
    t295 = *((unsigned int *)t293);
    t296 = (~(t295));
    t297 = *((unsigned int *)t248);
    t298 = (t297 & t296);
    t299 = *((unsigned int *)t294);
    t300 = (~(t299));
    t301 = *((unsigned int *)t271);
    t302 = (t301 & t300);
    t303 = (~(t298));
    t304 = (~(t302));
    t305 = *((unsigned int *)t285);
    *((unsigned int *)t285) = (t305 & t303);
    t306 = *((unsigned int *)t285);
    *((unsigned int *)t285) = (t306 & t304);
    goto LAB73;

}

static void Always_31_3(char *t0)
{
    char t6[8];
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    char *t5;
    char *t7;
    char *t8;
    unsigned int t9;
    unsigned int t10;
    unsigned int t11;
    unsigned int t12;
    unsigned int t13;
    unsigned int t14;
    unsigned int t15;
    unsigned int t16;
    unsigned int t17;
    unsigned int t18;
    unsigned int t19;
    unsigned int t20;
    char *t21;
    char *t22;
    unsigned int t23;
    unsigned int t24;
    unsigned int t25;
    unsigned int t26;
    unsigned int t27;
    char *t28;
    char *t29;

LAB0:    t1 = (t0 + 3592U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(31, ng0);
    t2 = (t0 + 3944);
    *((int *)t2) = 1;
    t3 = (t0 + 3624);
    *((char **)t3) = t2;
    *((char **)t1) = &&LAB4;

LAB1:    return;
LAB4:    xsi_set_current_line(32, ng0);

LAB5:    xsi_set_current_line(33, ng0);
    t4 = (t0 + 1048U);
    t5 = *((char **)t4);
    t4 = ((char*)((ng1)));
    memset(t6, 0, 8);
    t7 = (t5 + 4);
    t8 = (t4 + 4);
    t9 = *((unsigned int *)t5);
    t10 = *((unsigned int *)t4);
    t11 = (t9 ^ t10);
    t12 = *((unsigned int *)t7);
    t13 = *((unsigned int *)t8);
    t14 = (t12 ^ t13);
    t15 = (t11 | t14);
    t16 = *((unsigned int *)t7);
    t17 = *((unsigned int *)t8);
    t18 = (t16 | t17);
    t19 = (~(t18));
    t20 = (t15 & t19);
    if (t20 != 0)
        goto LAB9;

LAB6:    if (t18 != 0)
        goto LAB8;

LAB7:    *((unsigned int *)t6) = 1;

LAB9:    t22 = (t6 + 4);
    t23 = *((unsigned int *)t22);
    t24 = (~(t23));
    t25 = *((unsigned int *)t6);
    t26 = (t25 & t24);
    t27 = (t26 != 0);
    if (t27 > 0)
        goto LAB10;

LAB11:    xsi_set_current_line(36, ng0);
    t2 = (t0 + 1048U);
    t3 = *((char **)t2);
    t2 = (t0 + 1928);
    xsi_vlogvar_assign_value(t2, t3, 0, 0, 6);

LAB12:    goto LAB2;

LAB8:    t21 = (t6 + 4);
    *((unsigned int *)t6) = 1;
    *((unsigned int *)t21) = 1;
    goto LAB9;

LAB10:    xsi_set_current_line(34, ng0);
    t28 = (t0 + 1208U);
    t29 = *((char **)t28);
    t28 = (t0 + 1928);
    xsi_vlogvar_assign_value(t28, t29, 0, 0, 6);
    goto LAB12;

}


extern void work_m_00000000001089651002_0204903951_init()
{
	static char *pe[] = {(void *)Initial_28_0,(void *)Cont_29_1,(void *)Cont_30_2,(void *)Always_31_3};
	xsi_register_didat("work_m_00000000001089651002_0204903951", "isim/mips_tb_isim_beh.exe.sim/work/m_00000000001089651002_0204903951.didat");
	xsi_register_executes(pe);
}
