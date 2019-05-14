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
static const char *ng0 = "/home/mhiri/Documents/git_projects/projet_sys_info/2.RISC_Processor/risc_processor_v1/Multiplexeur.vhd";



static void work_a_0229689514_3212880686_p_0(char *t0)
{
    unsigned char t1;
    unsigned char t2;
    char *t3;
    char *t4;
    unsigned char t6;
    unsigned int t7;
    char *t8;
    char *t9;
    char *t10;
    char *t11;
    char *t12;
    char *t13;
    char *t14;
    char *t15;
    unsigned char t16;
    unsigned char t17;
    char *t18;
    char *t19;
    unsigned char t21;
    unsigned int t22;
    char *t23;
    char *t24;
    char *t25;
    char *t26;
    char *t27;
    char *t28;
    char *t29;
    char *t30;
    unsigned char t31;
    char *t32;
    char *t33;
    char *t34;
    char *t35;
    char *t36;
    char *t37;
    unsigned char t38;
    unsigned char t39;
    char *t40;
    char *t41;
    unsigned char t43;
    unsigned int t44;
    char *t45;
    char *t46;
    char *t47;
    char *t48;
    char *t49;
    char *t50;
    char *t51;
    char *t52;
    unsigned char t53;
    unsigned char t54;
    char *t55;
    char *t56;
    unsigned char t58;
    unsigned int t59;
    char *t60;
    char *t61;
    char *t62;
    char *t63;
    char *t64;
    char *t65;
    char *t66;
    char *t67;
    unsigned char t68;
    unsigned char t69;
    char *t70;
    char *t71;
    unsigned char t73;
    unsigned int t74;
    char *t75;
    char *t76;
    char *t77;
    char *t78;
    char *t79;
    char *t80;
    char *t81;
    char *t82;
    unsigned char t83;
    unsigned char t84;
    char *t85;
    char *t86;
    unsigned char t88;
    unsigned int t89;
    char *t90;
    char *t91;
    char *t92;
    char *t93;
    char *t94;
    char *t95;
    char *t96;
    char *t97;
    char *t98;
    char *t99;
    char *t100;
    char *t101;
    char *t102;
    char *t103;
    char *t104;

LAB0:    xsi_set_current_line(47, ng0);
    t2 = (2 == 1);
    if (t2 == 1)
        goto LAB5;

LAB6:    t1 = (unsigned char)0;

LAB7:    if (t1 != 0)
        goto LAB3;

LAB4:    t17 = (2 == 1);
    if (t17 == 1)
        goto LAB16;

LAB17:    t16 = (unsigned char)0;

LAB18:    if (t16 != 0)
        goto LAB14;

LAB15:    t31 = (2 == 1);
    if (t31 != 0)
        goto LAB25;

LAB26:    t39 = (2 == 2);
    if (t39 == 1)
        goto LAB29;

LAB30:    t38 = (unsigned char)0;

LAB31:    if (t38 != 0)
        goto LAB27;

LAB28:    t54 = (2 == 2);
    if (t54 == 1)
        goto LAB40;

LAB41:    t53 = (unsigned char)0;

LAB42:    if (t53 != 0)
        goto LAB38;

LAB39:    t69 = (2 == 2);
    if (t69 == 1)
        goto LAB51;

LAB52:    t68 = (unsigned char)0;

LAB53:    if (t68 != 0)
        goto LAB49;

LAB50:    t84 = (2 == 2);
    if (t84 == 1)
        goto LAB62;

LAB63:    t83 = (unsigned char)0;

LAB64:    if (t83 != 0)
        goto LAB60;

LAB61:
LAB71:    t98 = (t0 + 1192U);
    t99 = *((char **)t98);
    t98 = (t0 + 3184);
    t100 = (t98 + 56U);
    t101 = *((char **)t100);
    t102 = (t101 + 56U);
    t103 = *((char **)t102);
    memcpy(t103, t99, 8U);
    xsi_driver_first_trans_fast_port(t98);

LAB2:    t104 = (t0 + 3104);
    *((int *)t104) = 1;

LAB1:    return;
LAB3:    t10 = (t0 + 1352U);
    t11 = *((char **)t10);
    t10 = (t0 + 3184);
    t12 = (t10 + 56U);
    t13 = *((char **)t12);
    t14 = (t13 + 56U);
    t15 = *((char **)t14);
    memcpy(t15, t11, 8U);
    xsi_driver_first_trans_fast_port(t10);
    goto LAB2;

LAB5:    t3 = (t0 + 1032U);
    t4 = *((char **)t3);
    t3 = (t0 + 5372);
    t6 = 1;
    if (8U == 8U)
        goto LAB8;

LAB9:    t6 = 0;

LAB10:    t1 = t6;
    goto LAB7;

LAB8:    t7 = 0;

LAB11:    if (t7 < 8U)
        goto LAB12;
    else
        goto LAB10;

LAB12:    t8 = (t4 + t7);
    t9 = (t3 + t7);
    if (*((unsigned char *)t8) != *((unsigned char *)t9))
        goto LAB9;

LAB13:    t7 = (t7 + 1);
    goto LAB11;

LAB14:    t25 = (t0 + 1192U);
    t26 = *((char **)t25);
    t25 = (t0 + 3184);
    t27 = (t25 + 56U);
    t28 = *((char **)t27);
    t29 = (t28 + 56U);
    t30 = *((char **)t29);
    memcpy(t30, t26, 8U);
    xsi_driver_first_trans_fast_port(t25);
    goto LAB2;

LAB16:    t18 = (t0 + 1032U);
    t19 = *((char **)t18);
    t18 = (t0 + 5380);
    t21 = 1;
    if (8U == 8U)
        goto LAB19;

LAB20:    t21 = 0;

LAB21:    t16 = t21;
    goto LAB18;

LAB19:    t22 = 0;

LAB22:    if (t22 < 8U)
        goto LAB23;
    else
        goto LAB21;

LAB23:    t23 = (t19 + t22);
    t24 = (t18 + t22);
    if (*((unsigned char *)t23) != *((unsigned char *)t24))
        goto LAB20;

LAB24:    t22 = (t22 + 1);
    goto LAB22;

LAB25:    t32 = (t0 + 1352U);
    t33 = *((char **)t32);
    t32 = (t0 + 3184);
    t34 = (t32 + 56U);
    t35 = *((char **)t34);
    t36 = (t35 + 56U);
    t37 = *((char **)t36);
    memcpy(t37, t33, 8U);
    xsi_driver_first_trans_fast_port(t32);
    goto LAB2;

LAB27:    t47 = (t0 + 1352U);
    t48 = *((char **)t47);
    t47 = (t0 + 3184);
    t49 = (t47 + 56U);
    t50 = *((char **)t49);
    t51 = (t50 + 56U);
    t52 = *((char **)t51);
    memcpy(t52, t48, 8U);
    xsi_driver_first_trans_fast_port(t47);
    goto LAB2;

LAB29:    t40 = (t0 + 1032U);
    t41 = *((char **)t40);
    t40 = (t0 + 5388);
    t43 = 1;
    if (8U == 8U)
        goto LAB32;

LAB33:    t43 = 0;

LAB34:    t38 = t43;
    goto LAB31;

LAB32:    t44 = 0;

LAB35:    if (t44 < 8U)
        goto LAB36;
    else
        goto LAB34;

LAB36:    t45 = (t41 + t44);
    t46 = (t40 + t44);
    if (*((unsigned char *)t45) != *((unsigned char *)t46))
        goto LAB33;

LAB37:    t44 = (t44 + 1);
    goto LAB35;

LAB38:    t62 = (t0 + 1352U);
    t63 = *((char **)t62);
    t62 = (t0 + 3184);
    t64 = (t62 + 56U);
    t65 = *((char **)t64);
    t66 = (t65 + 56U);
    t67 = *((char **)t66);
    memcpy(t67, t63, 8U);
    xsi_driver_first_trans_fast_port(t62);
    goto LAB2;

LAB40:    t55 = (t0 + 1032U);
    t56 = *((char **)t55);
    t55 = (t0 + 5396);
    t58 = 1;
    if (8U == 8U)
        goto LAB43;

LAB44:    t58 = 0;

LAB45:    t53 = t58;
    goto LAB42;

LAB43:    t59 = 0;

LAB46:    if (t59 < 8U)
        goto LAB47;
    else
        goto LAB45;

LAB47:    t60 = (t56 + t59);
    t61 = (t55 + t59);
    if (*((unsigned char *)t60) != *((unsigned char *)t61))
        goto LAB44;

LAB48:    t59 = (t59 + 1);
    goto LAB46;

LAB49:    t77 = (t0 + 1352U);
    t78 = *((char **)t77);
    t77 = (t0 + 3184);
    t79 = (t77 + 56U);
    t80 = *((char **)t79);
    t81 = (t80 + 56U);
    t82 = *((char **)t81);
    memcpy(t82, t78, 8U);
    xsi_driver_first_trans_fast_port(t77);
    goto LAB2;

LAB51:    t70 = (t0 + 1032U);
    t71 = *((char **)t70);
    t70 = (t0 + 5404);
    t73 = 1;
    if (8U == 8U)
        goto LAB54;

LAB55:    t73 = 0;

LAB56:    t68 = t73;
    goto LAB53;

LAB54:    t74 = 0;

LAB57:    if (t74 < 8U)
        goto LAB58;
    else
        goto LAB56;

LAB58:    t75 = (t71 + t74);
    t76 = (t70 + t74);
    if (*((unsigned char *)t75) != *((unsigned char *)t76))
        goto LAB55;

LAB59:    t74 = (t74 + 1);
    goto LAB57;

LAB60:    t92 = (t0 + 1352U);
    t93 = *((char **)t92);
    t92 = (t0 + 3184);
    t94 = (t92 + 56U);
    t95 = *((char **)t94);
    t96 = (t95 + 56U);
    t97 = *((char **)t96);
    memcpy(t97, t93, 8U);
    xsi_driver_first_trans_fast_port(t92);
    goto LAB2;

LAB62:    t85 = (t0 + 1032U);
    t86 = *((char **)t85);
    t85 = (t0 + 5412);
    t88 = 1;
    if (8U == 8U)
        goto LAB65;

LAB66:    t88 = 0;

LAB67:    t83 = t88;
    goto LAB64;

LAB65:    t89 = 0;

LAB68:    if (t89 < 8U)
        goto LAB69;
    else
        goto LAB67;

LAB69:    t90 = (t86 + t89);
    t91 = (t85 + t89);
    if (*((unsigned char *)t90) != *((unsigned char *)t91))
        goto LAB66;

LAB70:    t89 = (t89 + 1);
    goto LAB68;

LAB72:    goto LAB2;

}


extern void work_a_0229689514_3212880686_init()
{
	static char *pe[] = {(void *)work_a_0229689514_3212880686_p_0};
	xsi_register_didat("work_a_0229689514_3212880686", "isim/Processor_Test_isim_beh.exe.sim/work/a_0229689514_3212880686.didat");
	xsi_register_executes(pe);
}
