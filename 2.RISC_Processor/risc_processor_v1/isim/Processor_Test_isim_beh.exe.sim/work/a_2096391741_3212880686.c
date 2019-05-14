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

/* This file is designed for use with ISim build 0x8ddf5b5d */

#define XSI_HIDE_SYMBOL_SPEC true
#include "xsi.h"
#include <memory.h>
#ifdef __GNUC__
#include <stdlib.h>
#else
#include <malloc.h>
#define alloca _alloca
#endif
static const char *ng0 = "/home/mhiri/Documents/git_projects/projet_sys_info/2.RISC_Processor/risc_processor_v1/ControlUnit.vhd";



static void work_a_2096391741_3212880686_p_0(char *t0)
{
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    int t5;
    char *t6;
    char *t7;
    int t8;
    char *t9;
    char *t10;
    int t11;
    char *t12;
    int t14;
    char *t15;
    int t17;
    char *t18;
    int t20;
    char *t21;
    char *t22;
    char *t23;
    char *t24;
    char *t25;
    char *t26;
    char *t27;

LAB0:    t1 = (t0 + 2344U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(44, ng0);
    t2 = (t0 + 1032U);
    t3 = *((char **)t2);
    t2 = (t0 + 4560);
    t5 = xsi_mem_cmp(t2, t3, 8U);
    if (t5 == 1)
        goto LAB5;

LAB12:    t6 = (t0 + 4568);
    t8 = xsi_mem_cmp(t6, t3, 8U);
    if (t8 == 1)
        goto LAB6;

LAB13:    t9 = (t0 + 4576);
    t11 = xsi_mem_cmp(t9, t3, 8U);
    if (t11 == 1)
        goto LAB7;

LAB14:    t12 = (t0 + 4584);
    t14 = xsi_mem_cmp(t12, t3, 8U);
    if (t14 == 1)
        goto LAB8;

LAB15:    t15 = (t0 + 4592);
    t17 = xsi_mem_cmp(t15, t3, 8U);
    if (t17 == 1)
        goto LAB9;

LAB16:    t18 = (t0 + 4600);
    t20 = xsi_mem_cmp(t18, t3, 8U);
    if (t20 == 1)
        goto LAB10;

LAB17:
LAB11:    xsi_set_current_line(45, ng0);
    t2 = xsi_get_transient_memory(4U);
    memset(t2, 0, 4U);
    t3 = t2;
    memset(t3, (unsigned char)2, 4U);
    t4 = (t0 + 2744);
    t6 = (t4 + 56U);
    t7 = *((char **)t6);
    t9 = (t7 + 56U);
    t10 = *((char **)t9);
    memcpy(t10, t2, 4U);
    xsi_driver_first_trans_fast_port(t4);

LAB4:    xsi_set_current_line(44, ng0);

LAB21:    t2 = (t0 + 2664);
    *((int *)t2) = 1;
    *((char **)t1) = &&LAB22;

LAB1:    return;
LAB5:    xsi_set_current_line(45, ng0);
    t21 = xsi_get_transient_memory(4U);
    memset(t21, 0, 4U);
    t22 = t21;
    *((unsigned char *)t22) = (unsigned char)2;
    t22 = (t22 + 1U);
    *((unsigned char *)t22) = (unsigned char)2;
    t22 = (t22 + 1U);
    *((unsigned char *)t22) = (unsigned char)2;
    t22 = (t22 + 1U);
    *((unsigned char *)t22) = (unsigned char)3;
    t23 = (t0 + 2744);
    t24 = (t23 + 56U);
    t25 = *((char **)t24);
    t26 = (t25 + 56U);
    t27 = *((char **)t26);
    memcpy(t27, t21, 4U);
    xsi_driver_first_trans_fast_port(t23);
    goto LAB4;

LAB6:    xsi_set_current_line(45, ng0);
    t2 = xsi_get_transient_memory(4U);
    memset(t2, 0, 4U);
    t3 = t2;
    *((unsigned char *)t3) = (unsigned char)2;
    t3 = (t3 + 1U);
    *((unsigned char *)t3) = (unsigned char)2;
    t3 = (t3 + 1U);
    *((unsigned char *)t3) = (unsigned char)2;
    t3 = (t3 + 1U);
    *((unsigned char *)t3) = (unsigned char)3;
    t4 = (t0 + 2744);
    t6 = (t4 + 56U);
    t7 = *((char **)t6);
    t9 = (t7 + 56U);
    t10 = *((char **)t9);
    memcpy(t10, t2, 4U);
    xsi_driver_first_trans_fast_port(t4);
    goto LAB4;

LAB7:    xsi_set_current_line(45, ng0);
    t2 = xsi_get_transient_memory(4U);
    memset(t2, 0, 4U);
    t3 = t2;
    *((unsigned char *)t3) = (unsigned char)2;
    t3 = (t3 + 1U);
    *((unsigned char *)t3) = (unsigned char)2;
    t3 = (t3 + 1U);
    *((unsigned char *)t3) = (unsigned char)2;
    t3 = (t3 + 1U);
    *((unsigned char *)t3) = (unsigned char)3;
    t4 = (t0 + 2744);
    t6 = (t4 + 56U);
    t7 = *((char **)t6);
    t9 = (t7 + 56U);
    t10 = *((char **)t9);
    memcpy(t10, t2, 4U);
    xsi_driver_first_trans_fast_port(t4);
    goto LAB4;

LAB8:    xsi_set_current_line(45, ng0);
    t2 = xsi_get_transient_memory(4U);
    memset(t2, 0, 4U);
    t3 = t2;
    *((unsigned char *)t3) = (unsigned char)2;
    t3 = (t3 + 1U);
    *((unsigned char *)t3) = (unsigned char)3;
    t3 = (t3 + 1U);
    *((unsigned char *)t3) = (unsigned char)2;
    t3 = (t3 + 1U);
    *((unsigned char *)t3) = (unsigned char)3;
    t4 = (t0 + 2744);
    t6 = (t4 + 56U);
    t7 = *((char **)t6);
    t9 = (t7 + 56U);
    t10 = *((char **)t9);
    memcpy(t10, t2, 4U);
    xsi_driver_first_trans_fast_port(t4);
    goto LAB4;

LAB9:    xsi_set_current_line(45, ng0);
    t2 = xsi_get_transient_memory(4U);
    memset(t2, 0, 4U);
    t3 = t2;
    *((unsigned char *)t3) = (unsigned char)2;
    t3 = (t3 + 1U);
    *((unsigned char *)t3) = (unsigned char)2;
    t3 = (t3 + 1U);
    *((unsigned char *)t3) = (unsigned char)3;
    t3 = (t3 + 1U);
    *((unsigned char *)t3) = (unsigned char)3;
    t4 = (t0 + 2744);
    t6 = (t4 + 56U);
    t7 = *((char **)t6);
    t9 = (t7 + 56U);
    t10 = *((char **)t9);
    memcpy(t10, t2, 4U);
    xsi_driver_first_trans_fast_port(t4);
    goto LAB4;

LAB10:    xsi_set_current_line(45, ng0);
    t2 = xsi_get_transient_memory(4U);
    memset(t2, 0, 4U);
    t3 = t2;
    *((unsigned char *)t3) = (unsigned char)2;
    t3 = (t3 + 1U);
    *((unsigned char *)t3) = (unsigned char)3;
    t3 = (t3 + 1U);
    *((unsigned char *)t3) = (unsigned char)3;
    t3 = (t3 + 1U);
    *((unsigned char *)t3) = (unsigned char)3;
    t4 = (t0 + 2744);
    t6 = (t4 + 56U);
    t7 = *((char **)t6);
    t9 = (t7 + 56U);
    t10 = *((char **)t9);
    memcpy(t10, t2, 4U);
    xsi_driver_first_trans_fast_port(t4);
    goto LAB4;

LAB18:;
LAB19:    t3 = (t0 + 2664);
    *((int *)t3) = 0;
    goto LAB2;

LAB20:    goto LAB19;

LAB22:    goto LAB20;

}


extern void work_a_2096391741_3212880686_init()
{
	static char *pe[] = {(void *)work_a_2096391741_3212880686_p_0};
	xsi_register_didat("work_a_2096391741_3212880686", "isim/Processor_Test_isim_beh.exe.sim/work/a_2096391741_3212880686.didat");
	xsi_register_executes(pe);
}
