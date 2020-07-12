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
static const char *ng0 = "H:/ISE/P5/CMP.v";
static int ng1[] = {0, 0};
static int ng2[] = {2, 0};
static int ng3[] = {1, 0};



static void Cont_28_0(char *t0)
{
    char t3[8];
    char t4[8];
    char t7[8];
    char t8[8];
    char t22[8];
    char t29[8];
    char t77[8];
    char t78[8];
    char t82[8];
    char *t1;
    char *t2;
    char *t6;
    char *t9;
    unsigned int t10;
    unsigned int t11;
    unsigned int t12;
    unsigned int t13;
    unsigned int t14;
    char *t15;
    char *t16;
    unsigned int t17;
    unsigned int t18;
    unsigned int t19;
    char *t20;
    char *t21;
    unsigned int t23;
    unsigned int t24;
    unsigned int t25;
    unsigned int t26;
    unsigned int t27;
    char *t28;
    unsigned int t30;
    unsigned int t31;
    unsigned int t32;
    char *t33;
    char *t34;
    char *t35;
    unsigned int t36;
    unsigned int t37;
    unsigned int t38;
    unsigned int t39;
    unsigned int t40;
    unsigned int t41;
    unsigned int t42;
    char *t43;
    char *t44;
    unsigned int t45;
    unsigned int t46;
    unsigned int t47;
    unsigned int t48;
    unsigned int t49;
    unsigned int t50;
    unsigned int t51;
    unsigned int t52;
    int t53;
    int t54;
    unsigned int t55;
    unsigned int t56;
    unsigned int t57;
    unsigned int t58;
    unsigned int t59;
    unsigned int t60;
    char *t61;
    unsigned int t62;
    unsigned int t63;
    unsigned int t64;
    unsigned int t65;
    unsigned int t66;
    char *t67;
    char *t68;
    unsigned int t69;
    unsigned int t70;
    unsigned int t71;
    char *t72;
    unsigned int t73;
    unsigned int t74;
    unsigned int t75;
    unsigned int t76;
    char *t79;
    char *t80;
    char *t81;
    char *t83;
    unsigned int t84;
    unsigned int t85;
    unsigned int t86;
    unsigned int t87;
    unsigned int t88;
    unsigned int t89;
    unsigned int t90;
    unsigned int t91;
    unsigned int t92;
    unsigned int t93;
    unsigned int t94;
    unsigned int t95;
    char *t96;
    char *t97;
    unsigned int t98;
    unsigned int t99;
    unsigned int t100;
    unsigned int t101;
    unsigned int t102;
    char *t103;
    char *t104;
    unsigned int t105;
    unsigned int t106;
    unsigned int t107;
    char *t108;
    unsigned int t109;
    unsigned int t110;
    unsigned int t111;
    unsigned int t112;
    char *t113;
    char *t114;
    char *t115;
    char *t116;
    char *t117;
    char *t118;
    unsigned int t119;
    unsigned int t120;
    char *t121;
    unsigned int t122;
    unsigned int t123;
    char *t124;
    unsigned int t125;
    unsigned int t126;
    char *t127;

LAB0:    t1 = (t0 + 2688U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(28, ng0);
    t2 = (t0 + 1048U);
    t6 = *((char **)t2);
    t2 = ((char*)((ng1)));
    memset(t7, 0, 8);
    xsi_vlog_signed_greatereq(t7, 32, t6, 32, t2, 32);
    memset(t8, 0, 8);
    t9 = (t7 + 4);
    t10 = *((unsigned int *)t9);
    t11 = (~(t10));
    t12 = *((unsigned int *)t7);
    t13 = (t12 & t11);
    t14 = (t13 & 1U);
    if (t14 != 0)
        goto LAB4;

LAB5:    if (*((unsigned int *)t9) != 0)
        goto LAB6;

LAB7:    t16 = (t8 + 4);
    t17 = *((unsigned int *)t8);
    t18 = *((unsigned int *)t16);
    t19 = (t17 || t18);
    if (t19 > 0)
        goto LAB8;

LAB9:    memcpy(t29, t8, 8);

LAB10:    memset(t4, 0, 8);
    t61 = (t29 + 4);
    t62 = *((unsigned int *)t61);
    t63 = (~(t62));
    t64 = *((unsigned int *)t29);
    t65 = (t64 & t63);
    t66 = (t65 & 1U);
    if (t66 != 0)
        goto LAB18;

LAB19:    if (*((unsigned int *)t61) != 0)
        goto LAB20;

LAB21:    t68 = (t4 + 4);
    t69 = *((unsigned int *)t4);
    t70 = *((unsigned int *)t68);
    t71 = (t69 || t70);
    if (t71 > 0)
        goto LAB22;

LAB23:    t73 = *((unsigned int *)t4);
    t74 = (~(t73));
    t75 = *((unsigned int *)t68);
    t76 = (t74 || t75);
    if (t76 > 0)
        goto LAB24;

LAB25:    if (*((unsigned int *)t68) > 0)
        goto LAB26;

LAB27:    if (*((unsigned int *)t4) > 0)
        goto LAB28;

LAB29:    memcpy(t3, t77, 8);

LAB30:    t114 = (t0 + 3088);
    t115 = (t114 + 56U);
    t116 = *((char **)t115);
    t117 = (t116 + 56U);
    t118 = *((char **)t117);
    memset(t118, 0, 8);
    t119 = 3U;
    t120 = t119;
    t121 = (t3 + 4);
    t122 = *((unsigned int *)t3);
    t119 = (t119 & t122);
    t123 = *((unsigned int *)t121);
    t120 = (t120 & t123);
    t124 = (t118 + 4);
    t125 = *((unsigned int *)t118);
    *((unsigned int *)t118) = (t125 | t119);
    t126 = *((unsigned int *)t124);
    *((unsigned int *)t124) = (t126 | t120);
    xsi_driver_vfirst_trans(t114, 0, 1);
    t127 = (t0 + 3008);
    *((int *)t127) = 1;

LAB1:    return;
LAB4:    *((unsigned int *)t8) = 1;
    goto LAB7;

LAB6:    t15 = (t8 + 4);
    *((unsigned int *)t8) = 1;
    *((unsigned int *)t15) = 1;
    goto LAB7;

LAB8:    t20 = (t0 + 1368U);
    t21 = *((char **)t20);
    memset(t22, 0, 8);
    t20 = (t21 + 4);
    t23 = *((unsigned int *)t20);
    t24 = (~(t23));
    t25 = *((unsigned int *)t21);
    t26 = (t25 & t24);
    t27 = (t26 & 1U);
    if (t27 != 0)
        goto LAB11;

LAB12:    if (*((unsigned int *)t20) != 0)
        goto LAB13;

LAB14:    t30 = *((unsigned int *)t8);
    t31 = *((unsigned int *)t22);
    t32 = (t30 & t31);
    *((unsigned int *)t29) = t32;
    t33 = (t8 + 4);
    t34 = (t22 + 4);
    t35 = (t29 + 4);
    t36 = *((unsigned int *)t33);
    t37 = *((unsigned int *)t34);
    t38 = (t36 | t37);
    *((unsigned int *)t35) = t38;
    t39 = *((unsigned int *)t35);
    t40 = (t39 != 0);
    if (t40 == 1)
        goto LAB15;

LAB16:
LAB17:    goto LAB10;

LAB11:    *((unsigned int *)t22) = 1;
    goto LAB14;

LAB13:    t28 = (t22 + 4);
    *((unsigned int *)t22) = 1;
    *((unsigned int *)t28) = 1;
    goto LAB14;

LAB15:    t41 = *((unsigned int *)t29);
    t42 = *((unsigned int *)t35);
    *((unsigned int *)t29) = (t41 | t42);
    t43 = (t8 + 4);
    t44 = (t22 + 4);
    t45 = *((unsigned int *)t8);
    t46 = (~(t45));
    t47 = *((unsigned int *)t43);
    t48 = (~(t47));
    t49 = *((unsigned int *)t22);
    t50 = (~(t49));
    t51 = *((unsigned int *)t44);
    t52 = (~(t51));
    t53 = (t46 & t48);
    t54 = (t50 & t52);
    t55 = (~(t53));
    t56 = (~(t54));
    t57 = *((unsigned int *)t35);
    *((unsigned int *)t35) = (t57 & t55);
    t58 = *((unsigned int *)t35);
    *((unsigned int *)t35) = (t58 & t56);
    t59 = *((unsigned int *)t29);
    *((unsigned int *)t29) = (t59 & t55);
    t60 = *((unsigned int *)t29);
    *((unsigned int *)t29) = (t60 & t56);
    goto LAB17;

LAB18:    *((unsigned int *)t4) = 1;
    goto LAB21;

LAB20:    t67 = (t4 + 4);
    *((unsigned int *)t4) = 1;
    *((unsigned int *)t67) = 1;
    goto LAB21;

LAB22:    t72 = ((char*)((ng2)));
    goto LAB23;

LAB24:    t79 = (t0 + 1048U);
    t80 = *((char **)t79);
    t79 = (t0 + 1208U);
    t81 = *((char **)t79);
    memset(t82, 0, 8);
    t79 = (t80 + 4);
    t83 = (t81 + 4);
    t84 = *((unsigned int *)t80);
    t85 = *((unsigned int *)t81);
    t86 = (t84 ^ t85);
    t87 = *((unsigned int *)t79);
    t88 = *((unsigned int *)t83);
    t89 = (t87 ^ t88);
    t90 = (t86 | t89);
    t91 = *((unsigned int *)t79);
    t92 = *((unsigned int *)t83);
    t93 = (t91 | t92);
    t94 = (~(t93));
    t95 = (t90 & t94);
    if (t95 != 0)
        goto LAB34;

LAB31:    if (t93 != 0)
        goto LAB33;

LAB32:    *((unsigned int *)t82) = 1;

LAB34:    memset(t78, 0, 8);
    t97 = (t82 + 4);
    t98 = *((unsigned int *)t97);
    t99 = (~(t98));
    t100 = *((unsigned int *)t82);
    t101 = (t100 & t99);
    t102 = (t101 & 1U);
    if (t102 != 0)
        goto LAB35;

LAB36:    if (*((unsigned int *)t97) != 0)
        goto LAB37;

LAB38:    t104 = (t78 + 4);
    t105 = *((unsigned int *)t78);
    t106 = *((unsigned int *)t104);
    t107 = (t105 || t106);
    if (t107 > 0)
        goto LAB39;

LAB40:    t109 = *((unsigned int *)t78);
    t110 = (~(t109));
    t111 = *((unsigned int *)t104);
    t112 = (t110 || t111);
    if (t112 > 0)
        goto LAB41;

LAB42:    if (*((unsigned int *)t104) > 0)
        goto LAB43;

LAB44:    if (*((unsigned int *)t78) > 0)
        goto LAB45;

LAB46:    memcpy(t77, t113, 8);

LAB47:    goto LAB25;

LAB26:    xsi_vlog_unsigned_bit_combine(t3, 32, t72, 32, t77, 32);
    goto LAB30;

LAB28:    memcpy(t3, t72, 8);
    goto LAB30;

LAB33:    t96 = (t82 + 4);
    *((unsigned int *)t82) = 1;
    *((unsigned int *)t96) = 1;
    goto LAB34;

LAB35:    *((unsigned int *)t78) = 1;
    goto LAB38;

LAB37:    t103 = (t78 + 4);
    *((unsigned int *)t78) = 1;
    *((unsigned int *)t103) = 1;
    goto LAB38;

LAB39:    t108 = ((char*)((ng3)));
    goto LAB40;

LAB41:    t113 = ((char*)((ng1)));
    goto LAB42;

LAB43:    xsi_vlog_unsigned_bit_combine(t77, 32, t108, 32, t113, 32);
    goto LAB47;

LAB45:    memcpy(t77, t108, 8);
    goto LAB47;

}


extern void work_m_00000000001559990826_1579609468_init()
{
	static char *pe[] = {(void *)Cont_28_0};
	xsi_register_didat("work_m_00000000001559990826_1579609468", "isim/mip_tb_isim_beh.exe.sim/work/m_00000000001559990826_1579609468.didat");
	xsi_register_executes(pe);
}
