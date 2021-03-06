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
static const char *ng0 = "/home/mhiri/Documents/git_projects/projet_sys_info/TD_vhdl/TD1/compteur.vhd";
extern char *IEEE_P_3620187407;

char *ieee_p_3620187407_sub_2255506239096166994_3965413181(char *, char *, char *, char *, int );
char *ieee_p_3620187407_sub_2255506239096238868_3965413181(char *, char *, char *, char *, int );
unsigned char ieee_p_3620187407_sub_970026082005494013_3965413181(char *, char *, char *, int );
unsigned char ieee_p_3620187407_sub_970026082007865855_3965413181(char *, char *, char *, int );


static void work_a_3695844575_3212880686_p_0(char *t0)
{
    char t25[16];
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
    char *t11;
    char *t12;
    char *t13;
    unsigned char t14;
    unsigned char t15;
    unsigned char t16;
    unsigned char t17;
    int t18;
    int t19;
    unsigned char t20;
    char *t21;
    char *t22;
    char *t23;
    char *t24;
    unsigned int t26;
    unsigned int t27;

LAB0:    t1 = (t0 + 3424U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(53, ng0);

LAB6:    t2 = (t0 + 3992);
    *((int *)t2) = 1;
    *((char **)t1) = &&LAB7;

LAB1:    return;
LAB4:    t6 = (t0 + 3992);
    *((int *)t6) = 0;
    xsi_set_current_line(55, ng0);
    t2 = (t0 + 1192U);
    t4 = *((char **)t2);
    t3 = *((unsigned char *)t4);
    t5 = (t3 == (unsigned char)2);
    if (t5 != 0)
        goto LAB11;

LAB13:    t2 = (t0 + 1352U);
    t4 = *((char **)t2);
    t3 = *((unsigned char *)t4);
    t5 = (t3 == (unsigned char)3);
    if (t5 != 0)
        goto LAB14;

LAB15:    t2 = (t0 + 1352U);
    t4 = *((char **)t2);
    t8 = *((unsigned char *)t4);
    t9 = (t8 == (unsigned char)2);
    if (t9 == 1)
        goto LAB21;

LAB22:    t5 = (unsigned char)0;

LAB23:    if (t5 == 1)
        goto LAB18;

LAB19:    t3 = (unsigned char)0;

LAB20:    if (t3 != 0)
        goto LAB16;

LAB17:    t2 = (t0 + 1352U);
    t4 = *((char **)t2);
    t8 = *((unsigned char *)t4);
    t9 = (t8 == (unsigned char)2);
    if (t9 == 1)
        goto LAB34;

LAB35:    t5 = (unsigned char)0;

LAB36:    if (t5 == 1)
        goto LAB31;

LAB32:    t3 = (unsigned char)0;

LAB33:    if (t3 != 0)
        goto LAB29;

LAB30:
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

LAB11:    xsi_set_current_line(56, ng0);
    t2 = xsi_get_transient_memory(8U);
    memset(t2, 0, 8U);
    t6 = t2;
    memset(t6, (unsigned char)2, 8U);
    t7 = (t0 + 4088);
    t10 = (t7 + 56U);
    t11 = *((char **)t10);
    t12 = (t11 + 56U);
    t13 = *((char **)t12);
    memcpy(t13, t2, 8U);
    xsi_driver_first_trans_fast(t7);
    goto LAB12;

LAB14:    xsi_set_current_line(58, ng0);
    t2 = (t0 + 1832U);
    t6 = *((char **)t2);
    t2 = (t0 + 4088);
    t7 = (t2 + 56U);
    t10 = *((char **)t7);
    t11 = (t10 + 56U);
    t12 = *((char **)t11);
    memcpy(t12, t6, 8U);
    xsi_driver_first_trans_fast(t2);
    goto LAB12;

LAB16:    xsi_set_current_line(60, ng0);
    t2 = (t0 + 2152U);
    t10 = *((char **)t2);
    t2 = (t0 + 6504U);
    t18 = xsi_vhdl_pow(2, 8);
    t19 = (t18 - 1);
    t20 = ieee_p_3620187407_sub_970026082007865855_3965413181(IEEE_P_3620187407, t10, t2, t19);
    if (t20 != 0)
        goto LAB24;

LAB26:    xsi_set_current_line(63, ng0);
    t2 = (t0 + 2152U);
    t4 = *((char **)t2);
    t2 = (t0 + 6504U);
    t6 = ieee_p_3620187407_sub_2255506239096166994_3965413181(IEEE_P_3620187407, t25, t4, t2, 1);
    t7 = (t25 + 12U);
    t26 = *((unsigned int *)t7);
    t27 = (1U * t26);
    t3 = (8U != t27);
    if (t3 == 1)
        goto LAB27;

LAB28:    t10 = (t0 + 4088);
    t11 = (t10 + 56U);
    t12 = *((char **)t11);
    t13 = (t12 + 56U);
    t21 = *((char **)t13);
    memcpy(t21, t6, 8U);
    xsi_driver_first_trans_fast(t10);

LAB25:    goto LAB12;

LAB18:    t2 = (t0 + 1512U);
    t7 = *((char **)t2);
    t16 = *((unsigned char *)t7);
    t17 = (t16 == (unsigned char)3);
    t3 = t17;
    goto LAB20;

LAB21:    t2 = (t0 + 1672U);
    t6 = *((char **)t2);
    t14 = *((unsigned char *)t6);
    t15 = (t14 == (unsigned char)2);
    t5 = t15;
    goto LAB23;

LAB24:    xsi_set_current_line(61, ng0);
    t11 = xsi_get_transient_memory(8U);
    memset(t11, 0, 8U);
    t12 = t11;
    memset(t12, (unsigned char)2, 8U);
    t13 = (t0 + 4088);
    t21 = (t13 + 56U);
    t22 = *((char **)t21);
    t23 = (t22 + 56U);
    t24 = *((char **)t23);
    memcpy(t24, t11, 8U);
    xsi_driver_first_trans_fast(t13);
    goto LAB25;

LAB27:    xsi_size_not_matching(8U, t27, 0);
    goto LAB28;

LAB29:    xsi_set_current_line(66, ng0);
    t2 = (t0 + 2152U);
    t10 = *((char **)t2);
    t2 = (t0 + 6504U);
    t20 = ieee_p_3620187407_sub_970026082005494013_3965413181(IEEE_P_3620187407, t10, t2, 0);
    if (t20 != 0)
        goto LAB37;

LAB39:    xsi_set_current_line(69, ng0);
    t2 = (t0 + 2152U);
    t4 = *((char **)t2);
    t2 = (t0 + 6504U);
    t6 = ieee_p_3620187407_sub_2255506239096238868_3965413181(IEEE_P_3620187407, t25, t4, t2, 1);
    t7 = (t25 + 12U);
    t26 = *((unsigned int *)t7);
    t27 = (1U * t26);
    t3 = (8U != t27);
    if (t3 == 1)
        goto LAB40;

LAB41:    t10 = (t0 + 4088);
    t11 = (t10 + 56U);
    t12 = *((char **)t11);
    t13 = (t12 + 56U);
    t21 = *((char **)t13);
    memcpy(t21, t6, 8U);
    xsi_driver_first_trans_fast(t10);

LAB38:    goto LAB12;

LAB31:    t2 = (t0 + 1512U);
    t7 = *((char **)t2);
    t16 = *((unsigned char *)t7);
    t17 = (t16 == (unsigned char)2);
    t3 = t17;
    goto LAB33;

LAB34:    t2 = (t0 + 1672U);
    t6 = *((char **)t2);
    t14 = *((unsigned char *)t6);
    t15 = (t14 == (unsigned char)2);
    t5 = t15;
    goto LAB36;

LAB37:    xsi_set_current_line(67, ng0);
    t11 = xsi_get_transient_memory(8U);
    memset(t11, 0, 8U);
    t12 = t11;
    memset(t12, (unsigned char)3, 8U);
    t13 = (t0 + 4088);
    t21 = (t13 + 56U);
    t22 = *((char **)t21);
    t23 = (t22 + 56U);
    t24 = *((char **)t23);
    memcpy(t24, t11, 8U);
    xsi_driver_first_trans_fast(t13);
    goto LAB38;

LAB40:    xsi_size_not_matching(8U, t27, 0);
    goto LAB41;

}

static void work_a_3695844575_3212880686_p_1(char *t0)
{
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    char *t5;
    char *t6;
    char *t7;

LAB0:    xsi_set_current_line(73, ng0);

LAB3:    t1 = (t0 + 2152U);
    t2 = *((char **)t1);
    t1 = (t0 + 4152);
    t3 = (t1 + 56U);
    t4 = *((char **)t3);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    memcpy(t6, t2, 8U);
    xsi_driver_first_trans_fast_port(t1);

LAB2:    t7 = (t0 + 4008);
    *((int *)t7) = 1;

LAB1:    return;
LAB4:    goto LAB2;

}


extern void work_a_3695844575_3212880686_init()
{
	static char *pe[] = {(void *)work_a_3695844575_3212880686_p_0,(void *)work_a_3695844575_3212880686_p_1};
	xsi_register_didat("work_a_3695844575_3212880686", "isim/compteur_tb_isim_beh.exe.sim/work/a_3695844575_3212880686.didat");
	xsi_register_executes(pe);
}
