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
static const char *ng0 = "H:/ISE/pj1/string.v";
static int ng1[] = {48, 0};
static int ng2[] = {57, 0};
static unsigned int ng3[] = {1U, 0U};
static int ng4[] = {43, 0};
static int ng5[] = {42, 0};
static unsigned int ng6[] = {2U, 0U};
static unsigned int ng7[] = {0U, 0U};
static int ng8[] = {1, 0};
static unsigned int ng9[] = {3U, 0U};
static int ng10[] = {0, 0};



static void Cont_33_0(char *t0)
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

LAB0:    t1 = (t0 + 3328U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(33, ng0);
    t2 = (t0 + 1928);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    t5 = (t0 + 3992);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    t8 = (t7 + 56U);
    t9 = *((char **)t8);
    memset(t9, 0, 8);
    t10 = 1U;
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
    xsi_driver_vfirst_trans(t5, 0, 0);
    t18 = (t0 + 3896);
    *((int *)t18) = 1;

LAB1:    return;
}

static void Always_35_1(char *t0)
{
    char t6[8];
    char t10[8];
    char t24[8];
    char t28[8];
    char t36[8];
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    char *t5;
    char *t7;
    char *t8;
    char *t9;
    char *t11;
    unsigned int t12;
    unsigned int t13;
    unsigned int t14;
    unsigned int t15;
    unsigned int t16;
    char *t17;
    char *t18;
    unsigned int t19;
    unsigned int t20;
    unsigned int t21;
    char *t22;
    char *t23;
    char *t25;
    char *t26;
    char *t27;
    char *t29;
    unsigned int t30;
    unsigned int t31;
    unsigned int t32;
    unsigned int t33;
    unsigned int t34;
    char *t35;
    unsigned int t37;
    unsigned int t38;
    unsigned int t39;
    char *t40;
    char *t41;
    char *t42;
    unsigned int t43;
    unsigned int t44;
    unsigned int t45;
    unsigned int t46;
    unsigned int t47;
    unsigned int t48;
    unsigned int t49;
    char *t50;
    char *t51;
    unsigned int t52;
    unsigned int t53;
    unsigned int t54;
    unsigned int t55;
    unsigned int t56;
    unsigned int t57;
    unsigned int t58;
    unsigned int t59;
    int t60;
    int t61;
    unsigned int t62;
    unsigned int t63;
    unsigned int t64;
    unsigned int t65;
    unsigned int t66;
    unsigned int t67;
    char *t68;
    unsigned int t69;
    unsigned int t70;
    unsigned int t71;
    unsigned int t72;
    unsigned int t73;
    char *t74;
    char *t75;
    unsigned int t76;
    unsigned int t77;
    unsigned int t78;
    unsigned int t79;
    unsigned int t80;
    unsigned int t81;
    unsigned int t82;
    unsigned int t83;
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
    unsigned int t96;

LAB0:    t1 = (t0 + 3576U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(35, ng0);
    t2 = (t0 + 3912);
    *((int *)t2) = 1;
    t3 = (t0 + 3608);
    *((char **)t3) = t2;
    *((char **)t1) = &&LAB4;

LAB1:    return;
LAB4:    xsi_set_current_line(35, ng0);

LAB5:    xsi_set_current_line(36, ng0);
    t4 = (t0 + 1368U);
    t5 = *((char **)t4);
    t4 = ((char*)((ng1)));
    memset(t6, 0, 8);
    t7 = (t5 + 4);
    if (*((unsigned int *)t7) != 0)
        goto LAB7;

LAB6:    t8 = (t4 + 4);
    if (*((unsigned int *)t8) != 0)
        goto LAB7;

LAB10:    if (*((unsigned int *)t5) < *((unsigned int *)t4))
        goto LAB9;

LAB8:    *((unsigned int *)t6) = 1;

LAB9:    memset(t10, 0, 8);
    t11 = (t6 + 4);
    t12 = *((unsigned int *)t11);
    t13 = (~(t12));
    t14 = *((unsigned int *)t6);
    t15 = (t14 & t13);
    t16 = (t15 & 1U);
    if (t16 != 0)
        goto LAB11;

LAB12:    if (*((unsigned int *)t11) != 0)
        goto LAB13;

LAB14:    t18 = (t10 + 4);
    t19 = *((unsigned int *)t10);
    t20 = *((unsigned int *)t18);
    t21 = (t19 || t20);
    if (t21 > 0)
        goto LAB15;

LAB16:    memcpy(t36, t10, 8);

LAB17:    t68 = (t36 + 4);
    t69 = *((unsigned int *)t68);
    t70 = (~(t69));
    t71 = *((unsigned int *)t36);
    t72 = (t71 & t70);
    t73 = (t72 != 0);
    if (t73 > 0)
        goto LAB30;

LAB31:    xsi_set_current_line(39, ng0);
    t2 = (t0 + 1368U);
    t3 = *((char **)t2);
    t2 = ((char*)((ng4)));
    memset(t6, 0, 8);
    t4 = (t3 + 4);
    t5 = (t2 + 4);
    t12 = *((unsigned int *)t3);
    t13 = *((unsigned int *)t2);
    t14 = (t12 ^ t13);
    t15 = *((unsigned int *)t4);
    t16 = *((unsigned int *)t5);
    t19 = (t15 ^ t16);
    t20 = (t14 | t19);
    t21 = *((unsigned int *)t4);
    t30 = *((unsigned int *)t5);
    t31 = (t21 | t30);
    t32 = (~(t31));
    t33 = (t20 & t32);
    if (t33 != 0)
        goto LAB37;

LAB34:    if (t31 != 0)
        goto LAB36;

LAB35:    *((unsigned int *)t6) = 1;

LAB37:    memset(t10, 0, 8);
    t8 = (t6 + 4);
    t34 = *((unsigned int *)t8);
    t37 = (~(t34));
    t38 = *((unsigned int *)t6);
    t39 = (t38 & t37);
    t43 = (t39 & 1U);
    if (t43 != 0)
        goto LAB38;

LAB39:    if (*((unsigned int *)t8) != 0)
        goto LAB40;

LAB41:    t11 = (t10 + 4);
    t44 = *((unsigned int *)t10);
    t45 = (!(t44));
    t46 = *((unsigned int *)t11);
    t47 = (t45 || t46);
    if (t47 > 0)
        goto LAB42;

LAB43:    memcpy(t36, t10, 8);

LAB44:    t50 = (t36 + 4);
    t92 = *((unsigned int *)t50);
    t93 = (~(t92));
    t94 = *((unsigned int *)t36);
    t95 = (t94 & t93);
    t96 = (t95 != 0);
    if (t96 > 0)
        goto LAB56;

LAB57:    xsi_set_current_line(42, ng0);

LAB60:    xsi_set_current_line(43, ng0);
    t2 = ((char*)((ng7)));
    t3 = (t0 + 2248);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 2);

LAB58:
LAB32:    xsi_set_current_line(45, ng0);
    t2 = (t0 + 2088);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);

LAB61:    t5 = ((char*)((ng7)));
    t60 = xsi_vlog_unsigned_case_compare(t4, 2, t5, 2);
    if (t60 == 1)
        goto LAB62;

LAB63:    t2 = ((char*)((ng3)));
    t60 = xsi_vlog_unsigned_case_compare(t4, 2, t2, 2);
    if (t60 == 1)
        goto LAB64;

LAB65:    t2 = ((char*)((ng6)));
    t60 = xsi_vlog_unsigned_case_compare(t4, 2, t2, 2);
    if (t60 == 1)
        goto LAB66;

LAB67:
LAB69:
LAB68:    xsi_set_current_line(68, ng0);
    t2 = ((char*)((ng10)));
    t3 = (t0 + 1928);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 1);

LAB70:    xsi_set_current_line(71, ng0);
    t2 = (t0 + 1208U);
    t3 = *((char **)t2);
    t2 = ((char*)((ng8)));
    memset(t6, 0, 8);
    t5 = (t3 + 4);
    t7 = (t2 + 4);
    t12 = *((unsigned int *)t3);
    t13 = *((unsigned int *)t2);
    t14 = (t12 ^ t13);
    t15 = *((unsigned int *)t5);
    t16 = *((unsigned int *)t7);
    t19 = (t15 ^ t16);
    t20 = (t14 | t19);
    t21 = *((unsigned int *)t5);
    t30 = *((unsigned int *)t7);
    t31 = (t21 | t30);
    t32 = (~(t31));
    t33 = (t20 & t32);
    if (t33 != 0)
        goto LAB101;

LAB98:    if (t31 != 0)
        goto LAB100;

LAB99:    *((unsigned int *)t6) = 1;

LAB101:    t9 = (t6 + 4);
    t34 = *((unsigned int *)t9);
    t37 = (~(t34));
    t38 = *((unsigned int *)t6);
    t39 = (t38 & t37);
    t43 = (t39 != 0);
    if (t43 > 0)
        goto LAB102;

LAB103:
LAB104:    goto LAB2;

LAB7:    t9 = (t6 + 4);
    *((unsigned int *)t6) = 1;
    *((unsigned int *)t9) = 1;
    goto LAB9;

LAB11:    *((unsigned int *)t10) = 1;
    goto LAB14;

LAB13:    t17 = (t10 + 4);
    *((unsigned int *)t10) = 1;
    *((unsigned int *)t17) = 1;
    goto LAB14;

LAB15:    t22 = (t0 + 1368U);
    t23 = *((char **)t22);
    t22 = ((char*)((ng2)));
    memset(t24, 0, 8);
    t25 = (t23 + 4);
    if (*((unsigned int *)t25) != 0)
        goto LAB19;

LAB18:    t26 = (t22 + 4);
    if (*((unsigned int *)t26) != 0)
        goto LAB19;

LAB22:    if (*((unsigned int *)t23) > *((unsigned int *)t22))
        goto LAB21;

LAB20:    *((unsigned int *)t24) = 1;

LAB21:    memset(t28, 0, 8);
    t29 = (t24 + 4);
    t30 = *((unsigned int *)t29);
    t31 = (~(t30));
    t32 = *((unsigned int *)t24);
    t33 = (t32 & t31);
    t34 = (t33 & 1U);
    if (t34 != 0)
        goto LAB23;

LAB24:    if (*((unsigned int *)t29) != 0)
        goto LAB25;

LAB26:    t37 = *((unsigned int *)t10);
    t38 = *((unsigned int *)t28);
    t39 = (t37 & t38);
    *((unsigned int *)t36) = t39;
    t40 = (t10 + 4);
    t41 = (t28 + 4);
    t42 = (t36 + 4);
    t43 = *((unsigned int *)t40);
    t44 = *((unsigned int *)t41);
    t45 = (t43 | t44);
    *((unsigned int *)t42) = t45;
    t46 = *((unsigned int *)t42);
    t47 = (t46 != 0);
    if (t47 == 1)
        goto LAB27;

LAB28:
LAB29:    goto LAB17;

LAB19:    t27 = (t24 + 4);
    *((unsigned int *)t24) = 1;
    *((unsigned int *)t27) = 1;
    goto LAB21;

LAB23:    *((unsigned int *)t28) = 1;
    goto LAB26;

LAB25:    t35 = (t28 + 4);
    *((unsigned int *)t28) = 1;
    *((unsigned int *)t35) = 1;
    goto LAB26;

LAB27:    t48 = *((unsigned int *)t36);
    t49 = *((unsigned int *)t42);
    *((unsigned int *)t36) = (t48 | t49);
    t50 = (t10 + 4);
    t51 = (t28 + 4);
    t52 = *((unsigned int *)t10);
    t53 = (~(t52));
    t54 = *((unsigned int *)t50);
    t55 = (~(t54));
    t56 = *((unsigned int *)t28);
    t57 = (~(t56));
    t58 = *((unsigned int *)t51);
    t59 = (~(t58));
    t60 = (t53 & t55);
    t61 = (t57 & t59);
    t62 = (~(t60));
    t63 = (~(t61));
    t64 = *((unsigned int *)t42);
    *((unsigned int *)t42) = (t64 & t62);
    t65 = *((unsigned int *)t42);
    *((unsigned int *)t42) = (t65 & t63);
    t66 = *((unsigned int *)t36);
    *((unsigned int *)t36) = (t66 & t62);
    t67 = *((unsigned int *)t36);
    *((unsigned int *)t36) = (t67 & t63);
    goto LAB29;

LAB30:    xsi_set_current_line(36, ng0);

LAB33:    xsi_set_current_line(37, ng0);
    t74 = ((char*)((ng3)));
    t75 = (t0 + 2248);
    xsi_vlogvar_assign_value(t75, t74, 0, 0, 2);
    goto LAB32;

LAB36:    t7 = (t6 + 4);
    *((unsigned int *)t6) = 1;
    *((unsigned int *)t7) = 1;
    goto LAB37;

LAB38:    *((unsigned int *)t10) = 1;
    goto LAB41;

LAB40:    t9 = (t10 + 4);
    *((unsigned int *)t10) = 1;
    *((unsigned int *)t9) = 1;
    goto LAB41;

LAB42:    t17 = (t0 + 1368U);
    t18 = *((char **)t17);
    t17 = ((char*)((ng5)));
    memset(t24, 0, 8);
    t22 = (t18 + 4);
    t23 = (t17 + 4);
    t48 = *((unsigned int *)t18);
    t49 = *((unsigned int *)t17);
    t52 = (t48 ^ t49);
    t53 = *((unsigned int *)t22);
    t54 = *((unsigned int *)t23);
    t55 = (t53 ^ t54);
    t56 = (t52 | t55);
    t57 = *((unsigned int *)t22);
    t58 = *((unsigned int *)t23);
    t59 = (t57 | t58);
    t62 = (~(t59));
    t63 = (t56 & t62);
    if (t63 != 0)
        goto LAB48;

LAB45:    if (t59 != 0)
        goto LAB47;

LAB46:    *((unsigned int *)t24) = 1;

LAB48:    memset(t28, 0, 8);
    t26 = (t24 + 4);
    t64 = *((unsigned int *)t26);
    t65 = (~(t64));
    t66 = *((unsigned int *)t24);
    t67 = (t66 & t65);
    t69 = (t67 & 1U);
    if (t69 != 0)
        goto LAB49;

LAB50:    if (*((unsigned int *)t26) != 0)
        goto LAB51;

LAB52:    t70 = *((unsigned int *)t10);
    t71 = *((unsigned int *)t28);
    t72 = (t70 | t71);
    *((unsigned int *)t36) = t72;
    t29 = (t10 + 4);
    t35 = (t28 + 4);
    t40 = (t36 + 4);
    t73 = *((unsigned int *)t29);
    t76 = *((unsigned int *)t35);
    t77 = (t73 | t76);
    *((unsigned int *)t40) = t77;
    t78 = *((unsigned int *)t40);
    t79 = (t78 != 0);
    if (t79 == 1)
        goto LAB53;

LAB54:
LAB55:    goto LAB44;

LAB47:    t25 = (t24 + 4);
    *((unsigned int *)t24) = 1;
    *((unsigned int *)t25) = 1;
    goto LAB48;

LAB49:    *((unsigned int *)t28) = 1;
    goto LAB52;

LAB51:    t27 = (t28 + 4);
    *((unsigned int *)t28) = 1;
    *((unsigned int *)t27) = 1;
    goto LAB52;

LAB53:    t80 = *((unsigned int *)t36);
    t81 = *((unsigned int *)t40);
    *((unsigned int *)t36) = (t80 | t81);
    t41 = (t10 + 4);
    t42 = (t28 + 4);
    t82 = *((unsigned int *)t41);
    t83 = (~(t82));
    t84 = *((unsigned int *)t10);
    t60 = (t84 & t83);
    t85 = *((unsigned int *)t42);
    t86 = (~(t85));
    t87 = *((unsigned int *)t28);
    t61 = (t87 & t86);
    t88 = (~(t60));
    t89 = (~(t61));
    t90 = *((unsigned int *)t40);
    *((unsigned int *)t40) = (t90 & t88);
    t91 = *((unsigned int *)t40);
    *((unsigned int *)t40) = (t91 & t89);
    goto LAB55;

LAB56:    xsi_set_current_line(39, ng0);

LAB59:    xsi_set_current_line(40, ng0);
    t51 = ((char*)((ng6)));
    t68 = (t0 + 2248);
    xsi_vlogvar_assign_value(t68, t51, 0, 0, 2);
    goto LAB58;

LAB62:    xsi_set_current_line(46, ng0);

LAB71:    xsi_set_current_line(47, ng0);
    t7 = (t0 + 2248);
    t8 = (t7 + 56U);
    t9 = *((char **)t8);
    t11 = ((char*)((ng3)));
    memset(t6, 0, 8);
    t17 = (t9 + 4);
    t18 = (t11 + 4);
    t12 = *((unsigned int *)t9);
    t13 = *((unsigned int *)t11);
    t14 = (t12 ^ t13);
    t15 = *((unsigned int *)t17);
    t16 = *((unsigned int *)t18);
    t19 = (t15 ^ t16);
    t20 = (t14 | t19);
    t21 = *((unsigned int *)t17);
    t30 = *((unsigned int *)t18);
    t31 = (t21 | t30);
    t32 = (~(t31));
    t33 = (t20 & t32);
    if (t33 != 0)
        goto LAB75;

LAB72:    if (t31 != 0)
        goto LAB74;

LAB73:    *((unsigned int *)t6) = 1;

LAB75:    t23 = (t6 + 4);
    t34 = *((unsigned int *)t23);
    t37 = (~(t34));
    t38 = *((unsigned int *)t6);
    t39 = (t38 & t37);
    t43 = (t39 != 0);
    if (t43 > 0)
        goto LAB76;

LAB77:    xsi_set_current_line(51, ng0);
    t2 = ((char*)((ng9)));
    t3 = (t0 + 2088);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 2);

LAB78:    goto LAB70;

LAB64:    xsi_set_current_line(53, ng0);

LAB80:    xsi_set_current_line(54, ng0);
    t3 = (t0 + 2248);
    t5 = (t3 + 56U);
    t7 = *((char **)t5);
    t8 = ((char*)((ng6)));
    memset(t6, 0, 8);
    t9 = (t7 + 4);
    t11 = (t8 + 4);
    t12 = *((unsigned int *)t7);
    t13 = *((unsigned int *)t8);
    t14 = (t12 ^ t13);
    t15 = *((unsigned int *)t9);
    t16 = *((unsigned int *)t11);
    t19 = (t15 ^ t16);
    t20 = (t14 | t19);
    t21 = *((unsigned int *)t9);
    t30 = *((unsigned int *)t11);
    t31 = (t21 | t30);
    t32 = (~(t31));
    t33 = (t20 & t32);
    if (t33 != 0)
        goto LAB84;

LAB81:    if (t31 != 0)
        goto LAB83;

LAB82:    *((unsigned int *)t6) = 1;

LAB84:    t18 = (t6 + 4);
    t34 = *((unsigned int *)t18);
    t37 = (~(t34));
    t38 = *((unsigned int *)t6);
    t39 = (t38 & t37);
    t43 = (t39 != 0);
    if (t43 > 0)
        goto LAB85;

LAB86:    xsi_set_current_line(58, ng0);
    t2 = ((char*)((ng9)));
    t3 = (t0 + 2088);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 2);

LAB87:    xsi_set_current_line(59, ng0);
    t2 = ((char*)((ng10)));
    t3 = (t0 + 1928);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 1);
    goto LAB70;

LAB66:    xsi_set_current_line(61, ng0);

LAB89:    xsi_set_current_line(62, ng0);
    t3 = (t0 + 2248);
    t5 = (t3 + 56U);
    t7 = *((char **)t5);
    t8 = ((char*)((ng3)));
    memset(t6, 0, 8);
    t9 = (t7 + 4);
    t11 = (t8 + 4);
    t12 = *((unsigned int *)t7);
    t13 = *((unsigned int *)t8);
    t14 = (t12 ^ t13);
    t15 = *((unsigned int *)t9);
    t16 = *((unsigned int *)t11);
    t19 = (t15 ^ t16);
    t20 = (t14 | t19);
    t21 = *((unsigned int *)t9);
    t30 = *((unsigned int *)t11);
    t31 = (t21 | t30);
    t32 = (~(t31));
    t33 = (t20 & t32);
    if (t33 != 0)
        goto LAB93;

LAB90:    if (t31 != 0)
        goto LAB92;

LAB91:    *((unsigned int *)t6) = 1;

LAB93:    t18 = (t6 + 4);
    t34 = *((unsigned int *)t18);
    t37 = (~(t34));
    t38 = *((unsigned int *)t6);
    t39 = (t38 & t37);
    t43 = (t39 != 0);
    if (t43 > 0)
        goto LAB94;

LAB95:    xsi_set_current_line(66, ng0);
    t2 = ((char*)((ng9)));
    t3 = (t0 + 2088);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 2);

LAB96:    goto LAB70;

LAB74:    t22 = (t6 + 4);
    *((unsigned int *)t6) = 1;
    *((unsigned int *)t22) = 1;
    goto LAB75;

LAB76:    xsi_set_current_line(47, ng0);

LAB79:    xsi_set_current_line(48, ng0);
    t25 = ((char*)((ng3)));
    t26 = (t0 + 2088);
    xsi_vlogvar_assign_value(t26, t25, 0, 0, 2);
    xsi_set_current_line(49, ng0);
    t2 = ((char*)((ng8)));
    t3 = (t0 + 1928);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 1);
    goto LAB78;

LAB83:    t17 = (t6 + 4);
    *((unsigned int *)t6) = 1;
    *((unsigned int *)t17) = 1;
    goto LAB84;

LAB85:    xsi_set_current_line(54, ng0);

LAB88:    xsi_set_current_line(55, ng0);
    t22 = ((char*)((ng6)));
    t23 = (t0 + 2088);
    xsi_vlogvar_assign_value(t23, t22, 0, 0, 2);
    xsi_set_current_line(56, ng0);
    t2 = ((char*)((ng10)));
    t3 = (t0 + 1928);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 1);
    goto LAB87;

LAB92:    t17 = (t6 + 4);
    *((unsigned int *)t6) = 1;
    *((unsigned int *)t17) = 1;
    goto LAB93;

LAB94:    xsi_set_current_line(62, ng0);

LAB97:    xsi_set_current_line(63, ng0);
    t22 = ((char*)((ng3)));
    t23 = (t0 + 2088);
    xsi_vlogvar_assign_value(t23, t22, 0, 0, 2);
    xsi_set_current_line(64, ng0);
    t2 = ((char*)((ng8)));
    t3 = (t0 + 1928);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 1);
    goto LAB96;

LAB100:    t8 = (t6 + 4);
    *((unsigned int *)t6) = 1;
    *((unsigned int *)t8) = 1;
    goto LAB101;

LAB102:    xsi_set_current_line(71, ng0);

LAB105:    xsi_set_current_line(72, ng0);
    t11 = ((char*)((ng7)));
    t17 = (t0 + 2088);
    xsi_vlogvar_assign_value(t17, t11, 0, 0, 2);
    xsi_set_current_line(73, ng0);
    t2 = ((char*)((ng10)));
    t3 = (t0 + 1928);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 1);
    goto LAB104;

}


extern void work_m_00000000001820522573_4180013079_init()
{
	static char *pe[] = {(void *)Cont_33_0,(void *)Always_35_1};
	xsi_register_didat("work_m_00000000001820522573_4180013079", "isim/spring_tb_isim_beh.exe.sim/work/m_00000000001820522573_4180013079.didat");
	xsi_register_executes(pe);
}
