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
static const char *ng0 = "H:/ISE/P5/ALU.v";
static unsigned int ng1[] = {0U, 0U};
static unsigned int ng2[] = {1U, 0U};
static unsigned int ng3[] = {2U, 0U};
static unsigned int ng4[] = {3U, 0U};
static int ng5[] = {0, 0};
static unsigned int ng6[] = {4U, 0U};
static unsigned int ng7[] = {5U, 0U};
static unsigned int ng8[] = {6U, 0U};
static unsigned int ng9[] = {7U, 0U};



static void Cont_30_0(char *t0)
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
    char *t10;

LAB0:    t1 = (t0 + 2848U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(30, ng0);
    t2 = (t0 + 1928);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    t5 = (t0 + 3512);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    t8 = (t7 + 56U);
    t9 = *((char **)t8);
    memcpy(t9, t4, 8);
    xsi_driver_vfirst_trans(t5, 0, 31);
    t10 = (t0 + 3416);
    *((int *)t10) = 1;

LAB1:    return;
}

static void Always_32_1(char *t0)
{
    char t10[8];
    char t42[8];
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    char *t5;
    int t6;
    char *t7;
    char *t8;
    char *t9;
    unsigned int t11;
    unsigned int t12;
    unsigned int t13;
    char *t14;
    char *t15;
    unsigned int t16;
    unsigned int t17;
    unsigned int t18;
    unsigned int t19;
    unsigned int t20;
    unsigned int t21;
    unsigned int t22;
    char *t23;
    char *t24;
    unsigned int t25;
    unsigned int t26;
    unsigned int t27;
    unsigned int t28;
    unsigned int t29;
    unsigned int t30;
    unsigned int t31;
    unsigned int t32;
    int t33;
    int t34;
    unsigned int t35;
    unsigned int t36;
    unsigned int t37;
    unsigned int t38;
    unsigned int t39;
    unsigned int t40;
    char *t41;
    unsigned int t43;
    unsigned int t44;
    unsigned int t45;
    unsigned int t46;
    unsigned int t47;

LAB0:    t1 = (t0 + 3096U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(32, ng0);
    t2 = (t0 + 3432);
    *((int *)t2) = 1;
    t3 = (t0 + 3128);
    *((char **)t3) = t2;
    *((char **)t1) = &&LAB4;

LAB1:    return;
LAB4:    xsi_set_current_line(33, ng0);

LAB5:    xsi_set_current_line(34, ng0);
    t4 = (t0 + 1368U);
    t5 = *((char **)t4);

LAB6:    t4 = ((char*)((ng1)));
    t6 = xsi_vlog_unsigned_case_compare(t5, 3, t4, 3);
    if (t6 == 1)
        goto LAB7;

LAB8:    t2 = ((char*)((ng2)));
    t6 = xsi_vlog_unsigned_case_compare(t5, 3, t2, 3);
    if (t6 == 1)
        goto LAB9;

LAB10:    t2 = ((char*)((ng3)));
    t6 = xsi_vlog_unsigned_case_compare(t5, 3, t2, 3);
    if (t6 == 1)
        goto LAB11;

LAB12:    t2 = ((char*)((ng4)));
    t6 = xsi_vlog_unsigned_case_compare(t5, 3, t2, 3);
    if (t6 == 1)
        goto LAB13;

LAB14:    t2 = ((char*)((ng6)));
    t6 = xsi_vlog_unsigned_case_compare(t5, 3, t2, 3);
    if (t6 == 1)
        goto LAB15;

LAB16:    t2 = ((char*)((ng7)));
    t6 = xsi_vlog_unsigned_case_compare(t5, 3, t2, 3);
    if (t6 == 1)
        goto LAB17;

LAB18:    t2 = ((char*)((ng8)));
    t6 = xsi_vlog_unsigned_case_compare(t5, 3, t2, 3);
    if (t6 == 1)
        goto LAB19;

LAB20:    t2 = ((char*)((ng9)));
    t6 = xsi_vlog_unsigned_case_compare(t5, 3, t2, 3);
    if (t6 == 1)
        goto LAB21;

LAB22:
LAB23:    goto LAB2;

LAB7:    xsi_set_current_line(35, ng0);
    t7 = (t0 + 1048U);
    t8 = *((char **)t7);
    t7 = (t0 + 1208U);
    t9 = *((char **)t7);
    t11 = *((unsigned int *)t8);
    t12 = *((unsigned int *)t9);
    t13 = (t11 & t12);
    *((unsigned int *)t10) = t13;
    t7 = (t8 + 4);
    t14 = (t9 + 4);
    t15 = (t10 + 4);
    t16 = *((unsigned int *)t7);
    t17 = *((unsigned int *)t14);
    t18 = (t16 | t17);
    *((unsigned int *)t15) = t18;
    t19 = *((unsigned int *)t15);
    t20 = (t19 != 0);
    if (t20 == 1)
        goto LAB24;

LAB25:
LAB26:    t41 = (t0 + 1928);
    xsi_vlogvar_wait_assign_value(t41, t10, 0, 0, 32, 0LL);
    goto LAB23;

LAB9:    xsi_set_current_line(36, ng0);
    t3 = (t0 + 1048U);
    t4 = *((char **)t3);
    t3 = (t0 + 1208U);
    t7 = *((char **)t3);
    t11 = *((unsigned int *)t4);
    t12 = *((unsigned int *)t7);
    t13 = (t11 | t12);
    *((unsigned int *)t10) = t13;
    t3 = (t4 + 4);
    t8 = (t7 + 4);
    t9 = (t10 + 4);
    t16 = *((unsigned int *)t3);
    t17 = *((unsigned int *)t8);
    t18 = (t16 | t17);
    *((unsigned int *)t9) = t18;
    t19 = *((unsigned int *)t9);
    t20 = (t19 != 0);
    if (t20 == 1)
        goto LAB27;

LAB28:
LAB29:    t23 = (t0 + 1928);
    xsi_vlogvar_wait_assign_value(t23, t10, 0, 0, 32, 0LL);
    goto LAB23;

LAB11:    xsi_set_current_line(37, ng0);
    t3 = (t0 + 1048U);
    t4 = *((char **)t3);
    t3 = (t0 + 1208U);
    t7 = *((char **)t3);
    memset(t10, 0, 8);
    xsi_vlog_unsigned_add(t10, 32, t4, 32, t7, 32);
    t3 = (t0 + 1928);
    xsi_vlogvar_wait_assign_value(t3, t10, 0, 0, 32, 0LL);
    goto LAB23;

LAB13:    xsi_set_current_line(38, ng0);
    t3 = ((char*)((ng5)));
    t4 = (t0 + 1928);
    xsi_vlogvar_wait_assign_value(t4, t3, 0, 0, 32, 0LL);
    goto LAB23;

LAB15:    xsi_set_current_line(39, ng0);
    t3 = (t0 + 1048U);
    t4 = *((char **)t3);
    t3 = (t0 + 1208U);
    t7 = *((char **)t3);
    memset(t10, 0, 8);
    t3 = (t7 + 4);
    t11 = *((unsigned int *)t3);
    t12 = (~(t11));
    t13 = *((unsigned int *)t7);
    t16 = (t13 & t12);
    t17 = (t16 & 4294967295U);
    if (t17 != 0)
        goto LAB33;

LAB31:    if (*((unsigned int *)t3) == 0)
        goto LAB30;

LAB32:    t8 = (t10 + 4);
    *((unsigned int *)t10) = 1;
    *((unsigned int *)t8) = 1;

LAB33:    t18 = *((unsigned int *)t4);
    t19 = *((unsigned int *)t10);
    t20 = (t18 & t19);
    *((unsigned int *)t42) = t20;
    t9 = (t4 + 4);
    t14 = (t10 + 4);
    t15 = (t42 + 4);
    t21 = *((unsigned int *)t9);
    t22 = *((unsigned int *)t14);
    t25 = (t21 | t22);
    *((unsigned int *)t15) = t25;
    t26 = *((unsigned int *)t15);
    t27 = (t26 != 0);
    if (t27 == 1)
        goto LAB34;

LAB35:
LAB36:    t41 = (t0 + 1928);
    xsi_vlogvar_wait_assign_value(t41, t42, 0, 0, 32, 0LL);
    goto LAB23;

LAB17:    xsi_set_current_line(40, ng0);
    t3 = (t0 + 1048U);
    t4 = *((char **)t3);
    t3 = (t0 + 1208U);
    t7 = *((char **)t3);
    memset(t10, 0, 8);
    t3 = (t7 + 4);
    t11 = *((unsigned int *)t3);
    t12 = (~(t11));
    t13 = *((unsigned int *)t7);
    t16 = (t13 & t12);
    t17 = (t16 & 4294967295U);
    if (t17 != 0)
        goto LAB40;

LAB38:    if (*((unsigned int *)t3) == 0)
        goto LAB37;

LAB39:    t8 = (t10 + 4);
    *((unsigned int *)t10) = 1;
    *((unsigned int *)t8) = 1;

LAB40:    t18 = *((unsigned int *)t4);
    t19 = *((unsigned int *)t10);
    t20 = (t18 | t19);
    *((unsigned int *)t42) = t20;
    t9 = (t4 + 4);
    t14 = (t10 + 4);
    t15 = (t42 + 4);
    t21 = *((unsigned int *)t9);
    t22 = *((unsigned int *)t14);
    t25 = (t21 | t22);
    *((unsigned int *)t15) = t25;
    t26 = *((unsigned int *)t15);
    t27 = (t26 != 0);
    if (t27 == 1)
        goto LAB41;

LAB42:
LAB43:    t41 = (t0 + 1928);
    xsi_vlogvar_wait_assign_value(t41, t42, 0, 0, 32, 0LL);
    goto LAB23;

LAB19:    xsi_set_current_line(41, ng0);
    t3 = (t0 + 1048U);
    t4 = *((char **)t3);
    t3 = (t0 + 1208U);
    t7 = *((char **)t3);
    memset(t10, 0, 8);
    xsi_vlog_unsigned_minus(t10, 32, t4, 32, t7, 32);
    t3 = (t0 + 1928);
    xsi_vlogvar_wait_assign_value(t3, t10, 0, 0, 32, 0LL);
    goto LAB23;

LAB21:    xsi_set_current_line(42, ng0);
    t3 = (t0 + 1048U);
    t4 = *((char **)t3);
    t3 = (t0 + 1208U);
    t7 = *((char **)t3);
    memset(t10, 0, 8);
    xsi_vlog_unsigned_lshift(t10, 32, t4, 32, t7, 32);
    t3 = (t0 + 1928);
    xsi_vlogvar_wait_assign_value(t3, t10, 0, 0, 32, 0LL);
    goto LAB23;

LAB24:    t21 = *((unsigned int *)t10);
    t22 = *((unsigned int *)t15);
    *((unsigned int *)t10) = (t21 | t22);
    t23 = (t8 + 4);
    t24 = (t9 + 4);
    t25 = *((unsigned int *)t8);
    t26 = (~(t25));
    t27 = *((unsigned int *)t23);
    t28 = (~(t27));
    t29 = *((unsigned int *)t9);
    t30 = (~(t29));
    t31 = *((unsigned int *)t24);
    t32 = (~(t31));
    t33 = (t26 & t28);
    t34 = (t30 & t32);
    t35 = (~(t33));
    t36 = (~(t34));
    t37 = *((unsigned int *)t15);
    *((unsigned int *)t15) = (t37 & t35);
    t38 = *((unsigned int *)t15);
    *((unsigned int *)t15) = (t38 & t36);
    t39 = *((unsigned int *)t10);
    *((unsigned int *)t10) = (t39 & t35);
    t40 = *((unsigned int *)t10);
    *((unsigned int *)t10) = (t40 & t36);
    goto LAB26;

LAB27:    t21 = *((unsigned int *)t10);
    t22 = *((unsigned int *)t9);
    *((unsigned int *)t10) = (t21 | t22);
    t14 = (t4 + 4);
    t15 = (t7 + 4);
    t25 = *((unsigned int *)t14);
    t26 = (~(t25));
    t27 = *((unsigned int *)t4);
    t33 = (t27 & t26);
    t28 = *((unsigned int *)t15);
    t29 = (~(t28));
    t30 = *((unsigned int *)t7);
    t34 = (t30 & t29);
    t31 = (~(t33));
    t32 = (~(t34));
    t35 = *((unsigned int *)t9);
    *((unsigned int *)t9) = (t35 & t31);
    t36 = *((unsigned int *)t9);
    *((unsigned int *)t9) = (t36 & t32);
    goto LAB29;

LAB30:    *((unsigned int *)t10) = 1;
    goto LAB33;

LAB34:    t28 = *((unsigned int *)t42);
    t29 = *((unsigned int *)t15);
    *((unsigned int *)t42) = (t28 | t29);
    t23 = (t4 + 4);
    t24 = (t10 + 4);
    t30 = *((unsigned int *)t4);
    t31 = (~(t30));
    t32 = *((unsigned int *)t23);
    t35 = (~(t32));
    t36 = *((unsigned int *)t10);
    t37 = (~(t36));
    t38 = *((unsigned int *)t24);
    t39 = (~(t38));
    t33 = (t31 & t35);
    t34 = (t37 & t39);
    t40 = (~(t33));
    t43 = (~(t34));
    t44 = *((unsigned int *)t15);
    *((unsigned int *)t15) = (t44 & t40);
    t45 = *((unsigned int *)t15);
    *((unsigned int *)t15) = (t45 & t43);
    t46 = *((unsigned int *)t42);
    *((unsigned int *)t42) = (t46 & t40);
    t47 = *((unsigned int *)t42);
    *((unsigned int *)t42) = (t47 & t43);
    goto LAB36;

LAB37:    *((unsigned int *)t10) = 1;
    goto LAB40;

LAB41:    t28 = *((unsigned int *)t42);
    t29 = *((unsigned int *)t15);
    *((unsigned int *)t42) = (t28 | t29);
    t23 = (t4 + 4);
    t24 = (t10 + 4);
    t30 = *((unsigned int *)t23);
    t31 = (~(t30));
    t32 = *((unsigned int *)t4);
    t33 = (t32 & t31);
    t35 = *((unsigned int *)t24);
    t36 = (~(t35));
    t37 = *((unsigned int *)t10);
    t34 = (t37 & t36);
    t38 = (~(t33));
    t39 = (~(t34));
    t40 = *((unsigned int *)t15);
    *((unsigned int *)t15) = (t40 & t38);
    t43 = *((unsigned int *)t15);
    *((unsigned int *)t15) = (t43 & t39);
    goto LAB43;

}


extern void work_m_00000000003243925583_0886308060_init()
{
	static char *pe[] = {(void *)Cont_30_0,(void *)Always_32_1};
	xsi_register_didat("work_m_00000000003243925583_0886308060", "isim/mip_tb_isim_beh.exe.sim/work/m_00000000003243925583_0886308060.didat");
	xsi_register_executes(pe);
}
