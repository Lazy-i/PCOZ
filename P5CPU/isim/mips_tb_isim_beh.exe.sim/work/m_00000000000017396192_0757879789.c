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
static const char *ng0 = "H:/ISE/P5CPU/NPC.v";
static unsigned int ng1[] = {12292U, 0U};
static int ng2[] = {2, 0};
static int ng3[] = {3, 0};
static unsigned int ng4[] = {0U, 0U};
static int ng5[] = {1, 0};
static int ng6[] = {0, 0};
static int ng7[] = {4, 0};



static void Initial_33_0(char *t0)
{
    char *t1;
    char *t2;

LAB0:    xsi_set_current_line(33, ng0);

LAB2:    xsi_set_current_line(34, ng0);
    t1 = ((char*)((ng1)));
    t2 = (t0 + 2568);
    xsi_vlogvar_assign_value(t2, t1, 0, 0, 32);

LAB1:    return;
}

static void Cont_36_1(char *t0)
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

LAB0:    t1 = (t0 + 3736U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(36, ng0);
    t2 = (t0 + 2568);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    t5 = (t0 + 4664);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    t8 = (t7 + 56U);
    t9 = *((char **)t8);
    memcpy(t9, t4, 8);
    xsi_driver_vfirst_trans(t5, 0, 31);
    t10 = (t0 + 4552);
    *((int *)t10) = 1;

LAB1:    return;
}

static void Cont_37_2(char *t0)
{
    char t3[8];
    char t4[8];
    char t14[8];
    char *t1;
    char *t2;
    char *t5;
    char *t6;
    unsigned int t7;
    unsigned int t8;
    unsigned int t9;
    unsigned int t10;
    unsigned int t11;
    unsigned int t12;
    char *t13;
    char *t15;
    char *t16;
    char *t17;
    char *t18;
    char *t19;
    char *t20;

LAB0:    t1 = (t0 + 3984U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(37, ng0);
    t2 = (t0 + 1048U);
    t5 = *((char **)t2);
    memset(t4, 0, 8);
    t2 = (t4 + 4);
    t6 = (t5 + 4);
    t7 = *((unsigned int *)t5);
    t8 = (t7 >> 0);
    *((unsigned int *)t4) = t8;
    t9 = *((unsigned int *)t6);
    t10 = (t9 >> 0);
    *((unsigned int *)t2) = t10;
    t11 = *((unsigned int *)t4);
    *((unsigned int *)t4) = (t11 & 65535U);
    t12 = *((unsigned int *)t2);
    *((unsigned int *)t2) = (t12 & 65535U);
    t13 = ((char*)((ng2)));
    memset(t14, 0, 8);
    xsi_vlog_unsigned_lshift(t14, 16, t4, 16, t13, 32);
    xsi_vlogtype_sign_extend(t3, 32, t14, 16);
    t15 = (t0 + 4728);
    t16 = (t15 + 56U);
    t17 = *((char **)t16);
    t18 = (t17 + 56U);
    t19 = *((char **)t18);
    memcpy(t19, t3, 8);
    xsi_driver_vfirst_trans(t15, 0, 31);
    t20 = (t0 + 4568);
    *((int *)t20) = 1;

LAB1:    return;
}

static void Always_38_3(char *t0)
{
    char t9[8];
    char t10[8];
    char t21[8];
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    char *t5;
    int t6;
    char *t7;
    char *t8;
    char *t11;
    unsigned int t12;
    unsigned int t13;
    unsigned int t14;
    unsigned int t15;
    unsigned int t16;
    unsigned int t17;
    char *t18;
    unsigned int t19;
    unsigned int t20;
    unsigned int t22;
    unsigned int t23;
    unsigned int t24;
    unsigned int t25;
    char *t26;
    char *t27;

LAB0:    t1 = (t0 + 4232U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(38, ng0);
    t2 = (t0 + 4584);
    *((int *)t2) = 1;
    t3 = (t0 + 4264);
    *((char **)t3) = t2;
    *((char **)t1) = &&LAB4;

LAB1:    return;
LAB4:    xsi_set_current_line(38, ng0);

LAB5:    xsi_set_current_line(39, ng0);
    t4 = (t0 + 1688U);
    t5 = *((char **)t4);

LAB6:    t4 = ((char*)((ng3)));
    t6 = xsi_vlog_unsigned_case_compare(t5, 2, t4, 32);
    if (t6 == 1)
        goto LAB7;

LAB8:    t2 = ((char*)((ng2)));
    t6 = xsi_vlog_unsigned_case_compare(t5, 2, t2, 32);
    if (t6 == 1)
        goto LAB9;

LAB10:    t2 = ((char*)((ng5)));
    t6 = xsi_vlog_unsigned_case_compare(t5, 2, t2, 32);
    if (t6 == 1)
        goto LAB11;

LAB12:    t2 = ((char*)((ng6)));
    t6 = xsi_vlog_unsigned_case_compare(t5, 2, t2, 32);
    if (t6 == 1)
        goto LAB13;

LAB14:
LAB15:    goto LAB2;

LAB7:    xsi_set_current_line(40, ng0);
    t7 = (t0 + 1368U);
    t8 = *((char **)t7);
    t7 = (t0 + 2568);
    xsi_vlogvar_wait_assign_value(t7, t8, 0, 0, 32, 0LL);
    goto LAB15;

LAB9:    xsi_set_current_line(41, ng0);
    t3 = ((char*)((ng4)));
    t4 = (t0 + 1048U);
    t7 = *((char **)t4);
    t4 = (t0 + 1208U);
    t8 = *((char **)t4);
    memset(t10, 0, 8);
    t4 = (t10 + 4);
    t11 = (t8 + 4);
    t12 = *((unsigned int *)t8);
    t13 = (t12 >> 28);
    *((unsigned int *)t10) = t13;
    t14 = *((unsigned int *)t11);
    t15 = (t14 >> 28);
    *((unsigned int *)t4) = t15;
    t16 = *((unsigned int *)t10);
    *((unsigned int *)t10) = (t16 & 15U);
    t17 = *((unsigned int *)t4);
    *((unsigned int *)t4) = (t17 & 15U);
    xsi_vlogtype_concat(t9, 32, 32, 3U, t10, 4, t7, 26, t3, 2);
    t18 = (t0 + 2568);
    xsi_vlogvar_wait_assign_value(t18, t9, 0, 0, 32, 0LL);
    goto LAB15;

LAB11:    xsi_set_current_line(42, ng0);
    t3 = (t0 + 1208U);
    t4 = *((char **)t3);
    t3 = (t0 + 2168U);
    t7 = *((char **)t3);
    memset(t9, 0, 8);
    xsi_vlog_unsigned_add(t9, 32, t4, 32, t7, 32);
    t3 = (t0 + 2568);
    xsi_vlogvar_wait_assign_value(t3, t9, 0, 0, 32, 0LL);
    goto LAB15;

LAB13:    xsi_set_current_line(43, ng0);
    t3 = (t0 + 1848U);
    t4 = *((char **)t3);
    memset(t10, 0, 8);
    t3 = (t4 + 4);
    t12 = *((unsigned int *)t3);
    t13 = (~(t12));
    t14 = *((unsigned int *)t4);
    t15 = (t14 & t13);
    t16 = (t15 & 1U);
    if (t16 != 0)
        goto LAB16;

LAB17:    if (*((unsigned int *)t3) != 0)
        goto LAB18;

LAB19:    t8 = (t10 + 4);
    t17 = *((unsigned int *)t10);
    t19 = *((unsigned int *)t8);
    t20 = (t17 || t19);
    if (t20 > 0)
        goto LAB20;

LAB21:    t22 = *((unsigned int *)t10);
    t23 = (~(t22));
    t24 = *((unsigned int *)t8);
    t25 = (t23 || t24);
    if (t25 > 0)
        goto LAB22;

LAB23:    if (*((unsigned int *)t8) > 0)
        goto LAB24;

LAB25:    if (*((unsigned int *)t10) > 0)
        goto LAB26;

LAB27:    memcpy(t9, t27, 8);

LAB28:    t26 = (t0 + 2568);
    xsi_vlogvar_wait_assign_value(t26, t9, 0, 0, 32, 0LL);
    goto LAB15;

LAB16:    *((unsigned int *)t10) = 1;
    goto LAB19;

LAB18:    t7 = (t10 + 4);
    *((unsigned int *)t10) = 1;
    *((unsigned int *)t7) = 1;
    goto LAB19;

LAB20:    t11 = (t0 + 1208U);
    t18 = *((char **)t11);
    t11 = ((char*)((ng7)));
    memset(t21, 0, 8);
    xsi_vlog_unsigned_add(t21, 32, t18, 32, t11, 32);
    goto LAB21;

LAB22:    t26 = (t0 + 1528U);
    t27 = *((char **)t26);
    goto LAB23;

LAB24:    xsi_vlog_unsigned_bit_combine(t9, 32, t21, 32, t27, 32);
    goto LAB28;

LAB26:    memcpy(t9, t21, 8);
    goto LAB28;

}


extern void work_m_00000000000017396192_0757879789_init()
{
	static char *pe[] = {(void *)Initial_33_0,(void *)Cont_36_1,(void *)Cont_37_2,(void *)Always_38_3};
	xsi_register_didat("work_m_00000000000017396192_0757879789", "isim/mips_tb_isim_beh.exe.sim/work/m_00000000000017396192_0757879789.didat");
	xsi_register_executes(pe);
}
