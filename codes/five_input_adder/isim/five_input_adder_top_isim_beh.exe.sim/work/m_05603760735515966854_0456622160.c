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

/* This file is designed for use with ISim build 0xfbc00daa */

#define XSI_HIDE_SYMBOL_SPEC true
#include "xsi.h"
#include <memory.h>
#ifdef __GNUC__
#include <stdlib.h>
#else
#include <malloc.h>
#define alloca _alloca
#endif
static const char *ng0 = "/media/ubermensch/AMAN_14072/cs220/codes/five_input_adder/five_input_adder.v";
static int ng1[] = {3, 0};
static int ng2[] = {0, 0};
static unsigned int ng3[] = {0U, 0U};
static int ng4[] = {5, 0};
static int ng5[] = {4, 0};

static void NetReassign_68_5(char *);


static void Always_55_0(char *t0)
{
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    char *t5;

LAB0:    t1 = (t0 + 5080U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(55, ng0);
    t2 = (t0 + 6888);
    *((int *)t2) = 1;
    t3 = (t0 + 5112);
    *((char **)t3) = t2;
    *((char **)t1) = &&LAB4;

LAB1:    return;
LAB4:    xsi_set_current_line(55, ng0);

LAB5:    xsi_set_current_line(56, ng0);
    t4 = (t0 + 1048U);
    t5 = *((char **)t4);
    t4 = (t0 + 2888);
    xsi_vlogvar_wait_assign_value(t4, t5, 0, 0, 4, 0LL);
    goto LAB2;

}

static void Always_58_1(char *t0)
{
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    char *t5;

LAB0:    t1 = (t0 + 5328U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(58, ng0);
    t2 = (t0 + 6904);
    *((int *)t2) = 1;
    t3 = (t0 + 5360);
    *((char **)t3) = t2;
    *((char **)t1) = &&LAB4;

LAB1:    return;
LAB4:    xsi_set_current_line(58, ng0);

LAB5:    xsi_set_current_line(59, ng0);
    t4 = (t0 + 1048U);
    t5 = *((char **)t4);
    t4 = (t0 + 3048);
    xsi_vlogvar_wait_assign_value(t4, t5, 0, 0, 4, 0LL);
    goto LAB2;

}

static void Always_61_2(char *t0)
{
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    char *t5;

LAB0:    t1 = (t0 + 5576U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(61, ng0);
    t2 = (t0 + 6920);
    *((int *)t2) = 1;
    t3 = (t0 + 5608);
    *((char **)t3) = t2;
    *((char **)t1) = &&LAB4;

LAB1:    return;
LAB4:    xsi_set_current_line(61, ng0);

LAB5:    xsi_set_current_line(62, ng0);
    t4 = (t0 + 1048U);
    t5 = *((char **)t4);
    t4 = (t0 + 3208);
    xsi_vlogvar_wait_assign_value(t4, t5, 0, 0, 4, 0LL);
    goto LAB2;

}

static void Always_64_3(char *t0)
{
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    char *t5;

LAB0:    t1 = (t0 + 5824U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(64, ng0);
    t2 = (t0 + 6936);
    *((int *)t2) = 1;
    t3 = (t0 + 5856);
    *((char **)t3) = t2;
    *((char **)t1) = &&LAB4;

LAB1:    return;
LAB4:    xsi_set_current_line(64, ng0);

LAB5:    xsi_set_current_line(65, ng0);
    t4 = (t0 + 1048U);
    t5 = *((char **)t4);
    t4 = (t0 + 3368);
    xsi_vlogvar_wait_assign_value(t4, t5, 0, 0, 4, 0LL);
    goto LAB2;

}

static void Always_67_4(char *t0)
{
    char t6[8];
    char t7[8];
    char t8[8];
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    char *t5;
    char *t9;
    char *t10;
    char *t11;
    char *t12;
    char *t13;
    char *t14;
    unsigned int t15;
    int t16;
    char *t17;
    unsigned int t18;
    int t19;
    int t20;
    char *t21;
    unsigned int t22;
    int t23;
    int t24;
    unsigned int t25;
    int t26;
    unsigned int t27;
    unsigned int t28;
    int t29;
    int t30;

LAB0:    t1 = (t0 + 6072U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(67, ng0);
    t2 = (t0 + 6952);
    *((int *)t2) = 1;
    t3 = (t0 + 6104);
    *((char **)t3) = t2;
    *((char **)t1) = &&LAB4;

LAB1:    return;
LAB4:    xsi_set_current_line(67, ng0);

LAB5:    xsi_set_current_line(68, ng0);
    t4 = (t0 + 3528);
    xsi_set_assignedflag(t4);
    t5 = (t0 + 8872);
    *((int *)t5) = 1;
    NetReassign_68_5(t0);
    xsi_set_current_line(69, ng0);
    t2 = (t0 + 3528);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    t5 = (t0 + 3688);
    t9 = (t0 + 3688);
    t10 = (t9 + 72U);
    t11 = *((char **)t10);
    t12 = ((char*)((ng1)));
    t13 = ((char*)((ng2)));
    xsi_vlog_convert_partindices(t6, t7, t8, ((int*)(t11)), 2, t12, 32, 1, t13, 32, 1);
    t14 = (t6 + 4);
    t15 = *((unsigned int *)t14);
    t16 = (!(t15));
    t17 = (t7 + 4);
    t18 = *((unsigned int *)t17);
    t19 = (!(t18));
    t20 = (t16 && t19);
    t21 = (t8 + 4);
    t22 = *((unsigned int *)t21);
    t23 = (!(t22));
    t24 = (t20 && t23);
    if (t24 == 1)
        goto LAB6;

LAB7:    xsi_set_current_line(70, ng0);
    t2 = ((char*)((ng3)));
    t3 = (t0 + 3688);
    t4 = (t0 + 3688);
    t5 = (t4 + 72U);
    t9 = *((char **)t5);
    t10 = ((char*)((ng4)));
    t11 = ((char*)((ng5)));
    xsi_vlog_convert_partindices(t6, t7, t8, ((int*)(t9)), 2, t10, 32, 1, t11, 32, 1);
    t12 = (t6 + 4);
    t15 = *((unsigned int *)t12);
    t16 = (!(t15));
    t13 = (t7 + 4);
    t18 = *((unsigned int *)t13);
    t19 = (!(t18));
    t20 = (t16 && t19);
    t14 = (t8 + 4);
    t22 = *((unsigned int *)t14);
    t23 = (!(t22));
    t24 = (t20 && t23);
    if (t24 == 1)
        goto LAB8;

LAB9:    goto LAB2;

LAB6:    t25 = *((unsigned int *)t8);
    t26 = (t25 + 0);
    t27 = *((unsigned int *)t6);
    t28 = *((unsigned int *)t7);
    t29 = (t27 - t28);
    t30 = (t29 + 1);
    xsi_vlogvar_assign_value(t5, t4, t26, *((unsigned int *)t7), t30);
    goto LAB7;

LAB8:    t25 = *((unsigned int *)t8);
    t26 = (t25 + 0);
    t27 = *((unsigned int *)t6);
    t28 = *((unsigned int *)t7);
    t29 = (t27 - t28);
    t30 = (t29 + 1);
    xsi_vlogvar_assign_value(t3, t2, t26, *((unsigned int *)t7), t30);
    goto LAB9;

}

static void NetReassign_68_5(char *t0)
{
    char *t1;
    char *t2;
    unsigned int t3;
    char *t4;
    char *t5;
    char *t6;
    char *t7;

LAB0:    t1 = (t0 + 6320U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(68, ng0);
    t3 = 0;
    t2 = (t0 + 1048U);
    t4 = *((char **)t2);
    t2 = (t0 + 8872);
    if (*((int *)t2) > 0)
        goto LAB4;

LAB5:    if (t3 > 0)
        goto LAB6;

LAB7:    t7 = (t0 + 6968);
    *((int *)t7) = 0;

LAB8:
LAB1:    return;
LAB4:    t5 = (t0 + 3528);
    xsi_vlogvar_assignassignvalue(t5, t4, 0, 0, 0, 4, ((int*)(t2)));
    t3 = 1;
    goto LAB5;

LAB6:    t6 = (t0 + 6968);
    *((int *)t6) = 1;
    goto LAB8;

}

static void implSig1_execute(char *t0)
{
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    char *t5;
    char *t6;
    char *t7;
    unsigned int t8;
    unsigned int t9;
    char *t10;
    unsigned int t11;
    unsigned int t12;
    char *t13;
    unsigned int t14;
    unsigned int t15;

LAB0:    t1 = (t0 + 6568U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    t2 = ((char*)((ng3)));
    t3 = (t0 + 7048);
    t4 = (t3 + 56U);
    t5 = *((char **)t4);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    memset(t7, 0, 8);
    t8 = 1U;
    t9 = t8;
    t10 = (t2 + 4);
    t11 = *((unsigned int *)t2);
    t8 = (t8 & t11);
    t12 = *((unsigned int *)t10);
    t9 = (t9 & t12);
    t13 = (t7 + 4);
    t14 = *((unsigned int *)t7);
    *((unsigned int *)t7) = (t14 | t8);
    t15 = *((unsigned int *)t13);
    *((unsigned int *)t13) = (t15 | t9);
    xsi_driver_vfirst_trans(t3, 0, 0);

LAB1:    return;
}


extern void work_m_05603760735515966854_0456622160_init()
{
	static char *pe[] = {(void *)Always_55_0,(void *)Always_58_1,(void *)Always_61_2,(void *)Always_64_3,(void *)Always_67_4,(void *)NetReassign_68_5,(void *)implSig1_execute};
	xsi_register_didat("work_m_05603760735515966854_0456622160", "isim/five_input_adder_top_isim_beh.exe.sim/work/m_05603760735515966854_0456622160.didat");
	xsi_register_executes(pe);
}
