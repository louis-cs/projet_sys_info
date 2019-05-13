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

#include "xsi.h"

struct XSI_INFO xsi_info;

char *IEEE_P_2592010699;
char *STD_STANDARD;
char *STD_TEXTIO;
char *IEEE_P_3564397177;
char *WORK_P_2152918356;
char *IEEE_P_1242562249;
char *WORK_P_2188849903;


int main(int argc, char **argv)
{
    xsi_init_design(argc, argv);
    xsi_register_info(&xsi_info);

    xsi_register_min_prec_unit(-12);
    ieee_p_2592010699_init();
    work_p_2152918356_init();
    ieee_p_1242562249_init();
    std_textio_init();
    ieee_p_3564397177_init();
    work_p_2188849903_init();
    work_a_0854387488_0318166943_init();
    work_a_3650175700_3212880686_init();
    work_a_3352975108_3212880686_init();
    work_a_4125276718_3212880686_init();
    work_a_2096391741_3212880686_init();
    work_a_0832606739_3212880686_init();
    work_a_1299497303_3212880686_init();
    work_a_1667949733_3708392848_init();


    xsi_register_tops("work_a_1667949733_3708392848");

    IEEE_P_2592010699 = xsi_get_engine_memory("ieee_p_2592010699");
    xsi_register_ieee_std_logic_1164(IEEE_P_2592010699);
    STD_STANDARD = xsi_get_engine_memory("std_standard");
    STD_TEXTIO = xsi_get_engine_memory("std_textio");
    IEEE_P_3564397177 = xsi_get_engine_memory("ieee_p_3564397177");
    WORK_P_2152918356 = xsi_get_engine_memory("work_p_2152918356");
    IEEE_P_1242562249 = xsi_get_engine_memory("ieee_p_1242562249");
    WORK_P_2188849903 = xsi_get_engine_memory("work_p_2188849903");

    return xsi_run_simulation(argc, argv);

}
