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
static const char *ng0 = "/home/mhiri/Documents/git_projects/projet_sys_info/2.RISC_Processor/risc_processor_v1/RegistersBank.vhd";
extern char *IEEE_P_1242562249;

int ieee_p_1242562249_sub_17802405650254020620_1035706684(char *, char *, char *);


static void work_a_3352975108_3212880686_p_0(char *t0)
{
    char *t1;
    char *t2;
    unsigned char t3;
    char *t4;
    unsigned char t5;
    char *t6;
    char *t7;
    unsigned char t8;
    unsigned char t9;
    char *t10;
    unsigned int t11;
    char *t12;
    char *t13;
    char *t14;
    char *t15;
    char *t16;
    int t17;
    int t18;
    unsigned int t19;
    unsigned int t20;

LAB0:    t1 = (t0 + 3624U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(57, ng0);

LAB6:    t2 = (t0 + 3944);
    *((int *)t2) = 1;
    *((char **)t1) = &&LAB7;

LAB1:    return;
LAB4:    t6 = (t0 + 3944);
    *((int *)t6) = 0;
    xsi_set_current_line(59, ng0);
    t2 = (t0 + 1192U);
    t4 = *((char **)t2);
    t3 = *((unsigned char *)t4);
    t5 = (t3 == (unsigned char)2);
    if (t5 != 0)
        goto LAB11;

LAB13:    t2 = (t0 + 1352U);
    t4 = *((char **)t2);
    t3 = *((unsigned char *)t4);
    t5 = (t3 == (unsigned char)2);
    if (t5 != 0)
        goto LAB16;

LAB17:    xsi_set_current_line(69, ng0);
    t2 = (t0 + 1992U);
    t4 = *((char **)t2);
    t2 = (t0 + 1832U);
    t6 = *((char **)t2);
    t2 = (t0 + 7096U);
    t17 = ieee_p_1242562249_sub_17802405650254020620_1035706684(IEEE_P_1242562249, t6, t2);
    t18 = (t17 - 15);
    t11 = (t18 * -1);
    t19 = (8U * t11);
    t20 = (0U + t19);
    t7 = (t0 + 4024);
    t10 = (t7 + 56U);
    t12 = *((char **)t10);
    t13 = (t12 + 56U);
    t14 = *((char **)t13);
    memcpy(t14, t4, 8U);
    xsi_driver_first_trans_delta(t7, t20, 8U, 0LL);
    xsi_set_current_line(70, ng0);
    t2 = (t0 + 2472U);
    t4 = *((char **)t2);
    t2 = (t0 + 1512U);
    t6 = *((char **)t2);
    t2 = (t0 + 7064U);
    t17 = ieee_p_1242562249_sub_17802405650254020620_1035706684(IEEE_P_1242562249, t6, t2);
    t18 = (t17 - 15);
    t11 = (t18 * -1);
    xsi_vhdl_check_range_of_index(15, 0, -1, t17);
    t19 = (8U * t11);
    t20 = (0 + t19);
    t7 = (t4 + t20);
    t10 = (t0 + 4088);
    t12 = (t10 + 56U);
    t13 = *((char **)t12);
    t14 = (t13 + 56U);
    t15 = *((char **)t14);
    memcpy(t15, t7, 8U);
    xsi_driver_first_trans_fast_port(t10);
    xsi_set_current_line(71, ng0);
    t2 = (t0 + 2472U);
    t4 = *((char **)t2);
    t2 = (t0 + 1672U);
    t6 = *((char **)t2);
    t2 = (t0 + 7080U);
    t17 = ieee_p_1242562249_sub_17802405650254020620_1035706684(IEEE_P_1242562249, t6, t2);
    t18 = (t17 - 15);
    t11 = (t18 * -1);
    xsi_vhdl_check_range_of_index(15, 0, -1, t17);
    t19 = (8U * t11);
    t20 = (0 + t19);
    t7 = (t4 + t20);
    t10 = (t0 + 4152);
    t12 = (t10 + 56U);
    t13 = *((char **)t12);
    t14 = (t13 + 56U);
    t15 = *((char **)t14);
    memcpy(t15, t7, 8U);
    xsi_driver_first_trans_fast_port(t10);

LAB12:    goto LAB2;

LAB5:    t4 = (t0 + 992U);
    t5 = xsi_signal_has_event(t4);
    if (t5 == 1)
        goto LAB8;

LAB9:    t3 = (unsigned char)0;

LAB10:    if (t3 == 1)
        goto LAB4;
    else
        goto LAB6;

LAB7:    goto LAB5;

LAB8:    t6 = (t0 + 1032U);
    t7 = *((char **)t6);
    t8 = *((unsigned char *)t7);
    t9 = (t8 == (unsigned char)3);
    t3 = t9;
    goto LAB10;

LAB11:    xsi_set_current_line(60, ng0);
    t2 = xsi_get_transient_memory(128U);
    memset(t2, 0, 128U);
    t6 = t2;
    t7 = (t0 + 7351);
    t8 = (8U != 0);
    if (t8 == 1)
        goto LAB14;

LAB15:    t12 = (t0 + 4024);
    t13 = (t12 + 56U);
    t14 = *((char **)t13);
    t15 = (t14 + 56U);
    t16 = *((char **)t15);
    memcpy(t16, t2, 128U);
    xsi_driver_first_trans_fast(t12);
    goto LAB12;

LAB14:    t11 = (128U / 8U);
    xsi_mem_set_data(t6, t7, 8U, t11);
    goto LAB15;

LAB16:    xsi_set_current_line(63, ng0);
    t2 = (t0 + 2472U);
    t6 = *((char **)t2);
    t2 = (t0 + 1512U);
    t7 = *((char **)t2);
    t2 = (t0 + 7064U);
    t17 = ieee_p_1242562249_sub_17802405650254020620_1035706684(IEEE_P_1242562249, t7, t2);
    t18 = (t17 - 15);
    t11 = (t18 * -1);
    xsi_vhdl_check_range_of_index(15, 0, -1, t17);
    t19 = (8U * t11);
    t20 = (0 + t19);
    t10 = (t6 + t20);
    t12 = (t0 + 4088);
    t13 = (t12 + 56U);
    t14 = *((char **)t13);
    t15 = (t14 + 56U);
    t16 = *((char **)t15);
    memcpy(t16, t10, 8U);
    xsi_driver_first_trans_fast_port(t12);
    xsi_set_current_line(64, ng0);
    t2 = (t0 + 2472U);
    t4 = *((char **)t2);
    t2 = (t0 + 1672U);
    t6 = *((char **)t2);
    t2 = (t0 + 7080U);
    t17 = ieee_p_1242562249_sub_17802405650254020620_1035706684(IEEE_P_1242562249, t6, t2);
    t18 = (t17 - 15);
    t11 = (t18 * -1);
    xsi_vhdl_check_range_of_index(15, 0, -1, t17);
    t19 = (8U * t11);
    t20 = (0 + t19);
    t7 = (t4 + t20);
    t10 = (t0 + 4152);
    t12 = (t10 + 56U);
    t13 = *((char **)t12);
    t14 = (t13 + 56U);
    t15 = *((char **)t14);
    memcpy(t15, t7, 8U);
    xsi_driver_first_trans_fast_port(t10);
    goto LAB12;

}


extern void work_a_3352975108_3212880686_init()
{
	static char *pe[] = {(void *)work_a_3352975108_3212880686_p_0};
	xsi_register_didat("work_a_3352975108_3212880686", "isim/Processor_isim_beh.exe.sim/work/a_3352975108_3212880686.didat");
	xsi_register_executes(pe);
}
