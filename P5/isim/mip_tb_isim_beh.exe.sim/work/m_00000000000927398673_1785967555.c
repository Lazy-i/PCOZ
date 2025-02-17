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
static const char *ng0 = "H:/ISE/P5/EXT.v";
static int ng1[] = {0, 0};
static unsigned int ng2[] = {0U, 0U};
static int ng3[] = {16, 0};



static void Initial_29_0(char *t0)
{
    char *t1;
    char *t2;

LAB0:    xsi_set_current_line(29, ng0);

LAB2:    xsi_set_current_line(30, ng0);
    t1 = ((char*)((ng1)));
    t2 = (t0 + 2088);
    xsi_vlogvar_assign_value(t2, t1, 0, 0, 32);

LAB1:    return;
}

static void Cont_32_1(char *t0)
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

LAB0:    t1 = (t0 + 3256U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(32, ng0);
    t2 = (t0 + 2088);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    t5 = (t0 + 3920);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    t8 = (t7 + 56U);
    t9 = *((char **)t8);
    memcpy(t9, t4, 8);
    xsi_driver_vfirst_trans(t5, 0, 31);
    t10 = (t0 + 3824);
    *((int *)t10) = 1;

LAB1:    return;
}

static void Always_34_2(char *t0)
{
    char t11[8];
    char t15[8];
    char t16[8];
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    char *t5;
    unsigned int t6;
    unsigned int t7;
    unsigned int t8;
    unsigned int t9;
    unsigned int t10;
    char *t12;
    char *t13;
    char *t14;
    unsigned int t17;

LAB0:    t1 = (t0 + 3504U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(34, ng0);
    t2 = (t0 + 3840);
    *((int *)t2) = 1;
    t3 = (t0 + 3536);
    *((char **)t3) = t2;
    *((char **)t1) = &&LAB4;

LAB1:    return;
LAB4:    xsi_set_current_line(35, ng0);

LAB5:    xsi_set_current_line(36, ng0);
    t4 = (t0 + 1368U);
    t5 = *((char **)t4);
    t4 = (t5 + 4);
    t6 = *((unsigned int *)t4);
    t7 = (~(t6));
    t8 = *((unsigned int *)t5);
    t9 = (t8 & t7);
    t10 = (t9 != 0);
    if (t10 > 0)
        goto LAB6;

LAB7:    xsi_set_current_line(39, ng0);
    t2 = (t0 + 1048U);
    t3 = *((char **)t2);
    t2 = ((char*)((ng3)));
    t4 = (t0 + 1048U);
    t5 = *((char **)t4);
    memset(t16, 0, 8);
    t4 = (t16 + 4);
    t12 = (t5 + 4);
    t6 = *((unsigned int *)t5);
    t7 = (t6 >> 15);
    t8 = (t7 & 1);
    *((unsigned int *)t16) = t8;
    t9 = *((unsigned int *)t12);
    t10 = (t9 >> 15);
    t17 = (t10 & 1);
    *((unsigned int *)t4) = t17;
    xsi_vlog_mul_concat(t15, 16, 1, t2, 1U, t16, 1);
    xsi_vlogtype_concat(t11, 32, 32, 2U, t15, 16, t3, 16);
    t13 = (t0 + 2088);
    xsi_vlogvar_wait_assign_value(t13, t11, 0, 0, 32, 0LL);

LAB8:    xsi_set_current_line(40, ng0);
    t2 = (t0 + 1528U);
    t3 = *((char **)t2);
    t2 = (t3 + 4);
    t6 = *((unsigned int *)t2);
    t7 = (~(t6));
    t8 = *((unsigned int *)t3);
    t9 = (t8 & t7);
    t10 = (t9 != 0);
    if (t10 > 0)
        goto LAB9;

LAB10:
LAB11:    goto LAB2;

LAB6:    xsi_set_current_line(37, ng0);
    t12 = (t0 + 1048U);
    t13 = *((char **)t12);
    t12 = ((char*)((ng2)));
    xsi_vlogtype_concat(t11, 32, 32, 2U, t12, 16, t13, 16);
    t14 = (t0 + 2088);
    xsi_vlogvar_wait_assign_value(t14, t11, 0, 0, 32, 0LL);
    goto LAB8;

LAB9:    xsi_set_current_line(41, ng0);
    t4 = ((char*)((ng2)));
    t5 = (t0 + 1048U);
    t12 = *((char **)t5);
    xsi_vlogtype_concat(t11, 32, 32, 2U, t12, 16, t4, 16);
    t5 = (t0 + 2088);
    xsi_vlogvar_wait_assign_value(t5, t11, 0, 0, 32, 0LL);
    goto LAB11;

}


extern void work_m_00000000000927398673_1785967555_init()
{
	static char *pe[] = {(void *)Initial_29_0,(void *)Cont_32_1,(void *)Always_34_2};
	xsi_register_didat("work_m_00000000000927398673_1785967555", "isim/mip_tb_isim_beh.exe.sim/work/m_00000000000927398673_1785967555.didat");
	xsi_register_executes(pe);
}
