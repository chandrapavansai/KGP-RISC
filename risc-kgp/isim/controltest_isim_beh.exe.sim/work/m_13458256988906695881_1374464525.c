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
static const char *ng0 = "%d RegWrite=%d,MemRead=%d,MemWrite=%d,MemtoReg=%d,regbranch=%d,AluSrc=%d,RegDst=%d ";
static int ng1[] = {10, 0, 0, 0};
static const char *ng2 = "/home/ise/share/prok/risc-kgp/controltest.v";
static int ng3[] = {0, 0};
static unsigned int ng4[] = {0U, 0U};
static unsigned int ng5[] = {1U, 0U};
static unsigned int ng6[] = {2U, 0U};
static unsigned int ng7[] = {3U, 0U};
static unsigned int ng8[] = {4U, 0U};
static unsigned int ng9[] = {5U, 0U};
static unsigned int ng10[] = {6U, 0U};

void Monitor_51_1(char *);
void Monitor_51_1(char *);


static void Monitor_51_1_Func(char *t0)
{
    char t1[16];
    char t4[16];
    char *t2;
    char *t3;
    char *t5;
    char *t6;
    char *t7;
    char *t8;
    char *t9;
    char *t10;
    char *t11;
    char *t12;

LAB0:    t2 = xsi_vlog_time(t1, 1000.0000000000000, 1000.0000000000000);
    t3 = ((char*)((ng1)));
    xsi_vlog_unsigned_divide(t4, 64, t1, 64, t3, 32);
    t5 = (t0 + 1048U);
    t6 = *((char **)t5);
    t5 = (t0 + 1208U);
    t7 = *((char **)t5);
    t5 = (t0 + 1368U);
    t8 = *((char **)t5);
    t5 = (t0 + 1528U);
    t9 = *((char **)t5);
    t5 = (t0 + 1688U);
    t10 = *((char **)t5);
    t5 = (t0 + 1848U);
    t11 = *((char **)t5);
    t5 = (t0 + 2008U);
    t12 = *((char **)t5);
    xsi_vlogfile_write(1, 0, 3, ng0, 9, t0, (char)118, t4, 64, (char)118, t6, 1, (char)118, t7, 1, (char)118, t8, 1, (char)118, t9, 1, (char)118, t10, 1, (char)118, t11, 1, (char)118, t12, 1);

LAB1:    return;
}

static void Initial_50_0(char *t0)
{
    char *t1;
    char *t2;
    char *t3;

LAB0:    t1 = (t0 + 3480U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(50, ng2);

LAB4:    xsi_set_current_line(51, ng2);
    Monitor_51_1(t0);
    xsi_set_current_line(60, ng2);
    t2 = ((char*)((ng3)));
    t3 = (t0 + 2408);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 4);
    xsi_set_current_line(62, ng2);
    t2 = ((char*)((ng4)));
    t3 = (t0 + 2408);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 4);
    xsi_set_current_line(63, ng2);
    t2 = (t0 + 3288);
    xsi_process_wait(t2, 10000LL);
    *((char **)t1) = &&LAB5;

LAB1:    return;
LAB5:    xsi_set_current_line(64, ng2);
    t2 = ((char*)((ng5)));
    t3 = (t0 + 2408);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 4);
    xsi_set_current_line(65, ng2);
    t2 = (t0 + 3288);
    xsi_process_wait(t2, 10000LL);
    *((char **)t1) = &&LAB6;
    goto LAB1;

LAB6:    xsi_set_current_line(66, ng2);
    t2 = ((char*)((ng6)));
    t3 = (t0 + 2408);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 4);
    xsi_set_current_line(67, ng2);
    t2 = (t0 + 3288);
    xsi_process_wait(t2, 10000LL);
    *((char **)t1) = &&LAB7;
    goto LAB1;

LAB7:    xsi_set_current_line(68, ng2);
    t2 = ((char*)((ng7)));
    t3 = (t0 + 2408);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 4);
    xsi_set_current_line(69, ng2);
    t2 = (t0 + 3288);
    xsi_process_wait(t2, 10000LL);
    *((char **)t1) = &&LAB8;
    goto LAB1;

LAB8:    xsi_set_current_line(70, ng2);
    t2 = ((char*)((ng8)));
    t3 = (t0 + 2408);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 4);
    xsi_set_current_line(71, ng2);
    t2 = (t0 + 3288);
    xsi_process_wait(t2, 10000LL);
    *((char **)t1) = &&LAB9;
    goto LAB1;

LAB9:    xsi_set_current_line(72, ng2);
    t2 = ((char*)((ng9)));
    t3 = (t0 + 2408);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 4);
    xsi_set_current_line(73, ng2);
    t2 = (t0 + 3288);
    xsi_process_wait(t2, 10000LL);
    *((char **)t1) = &&LAB10;
    goto LAB1;

LAB10:    xsi_set_current_line(74, ng2);
    t2 = ((char*)((ng10)));
    t3 = (t0 + 2408);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 4);
    xsi_set_current_line(75, ng2);
    t2 = (t0 + 3288);
    xsi_process_wait(t2, 10000LL);
    *((char **)t1) = &&LAB11;
    goto LAB1;

LAB11:    xsi_set_current_line(76, ng2);
    xsi_vlog_finish(1);
    goto LAB1;

}

void Monitor_51_1(char *t0)
{
    char *t1;
    char *t2;

LAB0:    t1 = (t0 + 3536);
    t2 = (t0 + 4296);
    xsi_vlogfile_monitor((void *)Monitor_51_1_Func, t1, t2);

LAB1:    return;
}

static void impl1_execute(char *t0)
{
    char t4[16];
    char t7[16];
    char *t1;
    char *t2;
    char *t3;
    char *t5;
    char *t6;

LAB0:    t1 = (t0 + 3976U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    t2 = (t0 + 4312);
    *((int *)t2) = 1;
    *((char **)t1) = &&LAB4;

LAB1:    return;
LAB4:    t3 = (t0 + 2568);
    t5 = xsi_vlog_time(t4, 1000.0000000000000, 1000.0000000000000);
    t6 = ((char*)((ng1)));
    xsi_vlog_unsigned_divide(t7, 64, t4, 64, t6, 32);
    xsi_vlogimplicitvar_assign_value(t3, t7, 64);
    goto LAB2;

}


extern void work_m_13458256988906695881_1374464525_init()
{
	static char *pe[] = {(void *)Initial_50_0,(void *)Monitor_51_1,(void *)impl1_execute};
	xsi_register_didat("work_m_13458256988906695881_1374464525", "isim/controltest_isim_beh.exe.sim/work/m_13458256988906695881_1374464525.didat");
	xsi_register_executes(pe);
}
