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

/* This file is designed for use with ISim build 0x8ef4fb42 */

#define XSI_HIDE_SYMBOL_SPEC true
#include "xsi.h"
#include <memory.h>
#ifdef __GNUC__
#include <stdlib.h>
#else
#include <malloc.h>
#define alloca _alloca
#endif
static const char *ng0 = "C:/Users/kaskkmar/Documents/IT6pe/Digiloogika/kodut66/digitaalloogika/kodukontroller/testbench.vhdl";
extern char *STD_STANDARD;
extern char *IEEE_P_3499444699;



static void work_a_2948530165_1949178628_p_0(char *t0)
{
    char t8[16];
    char t14[16];
    char t16[16];
    char *t1;
    char *t2;
    char *t3;
    int t4;
    int t5;
    char *t6;
    char *t7;
    char *t9;
    char *t10;
    char *t11;
    char *t12;
    char *t13;
    char *t15;
    char *t17;
    char *t18;
    int t19;
    unsigned int t20;
    unsigned int t21;
    unsigned int t22;
    unsigned char t23;
    int64 t24;

LAB0:    t1 = (t0 + 3092U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(104, ng0);
    t2 = (t0 + 7338);
    *((int *)t2) = 0;
    t3 = (t0 + 7342);
    *((int *)t3) = 127;
    t4 = 0;
    t5 = 127;

LAB4:    if (t4 <= t5)
        goto LAB5;

LAB7:    xsi_set_current_line(116, ng0);

LAB15:    *((char **)t1) = &&LAB16;

LAB1:    return;
LAB5:    xsi_set_current_line(105, ng0);
    t6 = (t0 + 7346);
    t9 = ((STD_STANDARD) + 240);
    t10 = (t0 + 7338);
    t11 = xsi_int_to_mem(*((int *)t10));
    t12 = xsi_string_variable_get_image(t8, t9, t11);
    t15 = ((STD_STANDARD) + 664);
    t17 = (t16 + 0U);
    t18 = (t17 + 0U);
    *((int *)t18) = 1;
    t18 = (t17 + 4U);
    *((int *)t18) = 27;
    t18 = (t17 + 8U);
    *((int *)t18) = 1;
    t19 = (27 - 1);
    t20 = (t19 * 1);
    t20 = (t20 + 1);
    t18 = (t17 + 12U);
    *((unsigned int *)t18) = t20;
    t13 = xsi_base_array_concat(t13, t14, t15, (char)97, t6, t16, (char)97, t12, t8, (char)101);
    t18 = (t8 + 12U);
    t20 = *((unsigned int *)t18);
    t21 = (27U + t20);
    xsi_report(t13, t21, 0);
    xsi_set_current_line(106, ng0);
    t2 = (t0 + 7338);
    t3 = ieee_std_logic_arith_conv_unsigned_integer(IEEE_P_3499444699, t8, *((int *)t2), 7);
    t6 = (t0 + 3324);
    t7 = (t6 + 32U);
    t9 = *((char **)t7);
    t10 = (t9 + 40U);
    t11 = *((char **)t10);
    memcpy(t11, t3, 7U);
    xsi_driver_first_trans_fast(t6);
    xsi_set_current_line(107, ng0);
    t2 = (t0 + 2432U);
    t3 = *((char **)t2);
    t19 = (6 - 6);
    t20 = (t19 * -1);
    t21 = (1U * t20);
    t22 = (0 + t21);
    t2 = (t3 + t22);
    t23 = *((unsigned char *)t2);
    t6 = (t0 + 3360);
    t7 = (t6 + 32U);
    t9 = *((char **)t7);
    t10 = (t9 + 40U);
    t11 = *((char **)t10);
    *((unsigned char *)t11) = t23;
    xsi_driver_first_trans_delta(t6, 0U, 1, 0LL);
    xsi_set_current_line(108, ng0);
    t2 = (t0 + 2432U);
    t3 = *((char **)t2);
    t19 = (5 - 6);
    t20 = (t19 * -1);
    t21 = (1U * t20);
    t22 = (0 + t21);
    t2 = (t3 + t22);
    t23 = *((unsigned char *)t2);
    t6 = (t0 + 3360);
    t7 = (t6 + 32U);
    t9 = *((char **)t7);
    t10 = (t9 + 40U);
    t11 = *((char **)t10);
    *((unsigned char *)t11) = t23;
    xsi_driver_first_trans_delta(t6, 1U, 1, 0LL);
    xsi_set_current_line(109, ng0);
    t2 = (t0 + 2432U);
    t3 = *((char **)t2);
    t19 = (4 - 6);
    t20 = (t19 * -1);
    t21 = (1U * t20);
    t22 = (0 + t21);
    t2 = (t3 + t22);
    t23 = *((unsigned char *)t2);
    t6 = (t0 + 3396);
    t7 = (t6 + 32U);
    t9 = *((char **)t7);
    t10 = (t9 + 40U);
    t11 = *((char **)t10);
    *((unsigned char *)t11) = t23;
    xsi_driver_first_trans_delta(t6, 0U, 1, 0LL);
    xsi_set_current_line(110, ng0);
    t2 = (t0 + 2432U);
    t3 = *((char **)t2);
    t19 = (3 - 6);
    t20 = (t19 * -1);
    t21 = (1U * t20);
    t22 = (0 + t21);
    t2 = (t3 + t22);
    t23 = *((unsigned char *)t2);
    t6 = (t0 + 3396);
    t7 = (t6 + 32U);
    t9 = *((char **)t7);
    t10 = (t9 + 40U);
    t11 = *((char **)t10);
    *((unsigned char *)t11) = t23;
    xsi_driver_first_trans_delta(t6, 1U, 1, 0LL);
    xsi_set_current_line(111, ng0);
    t2 = (t0 + 2432U);
    t3 = *((char **)t2);
    t19 = (2 - 6);
    t20 = (t19 * -1);
    t21 = (1U * t20);
    t22 = (0 + t21);
    t2 = (t3 + t22);
    t23 = *((unsigned char *)t2);
    t6 = (t0 + 3432);
    t7 = (t6 + 32U);
    t9 = *((char **)t7);
    t10 = (t9 + 40U);
    t11 = *((char **)t10);
    *((unsigned char *)t11) = t23;
    xsi_driver_first_trans_delta(t6, 0U, 1, 0LL);
    xsi_set_current_line(112, ng0);
    t2 = (t0 + 2432U);
    t3 = *((char **)t2);
    t19 = (1 - 6);
    t20 = (t19 * -1);
    t21 = (1U * t20);
    t22 = (0 + t21);
    t2 = (t3 + t22);
    t23 = *((unsigned char *)t2);
    t6 = (t0 + 3432);
    t7 = (t6 + 32U);
    t9 = *((char **)t7);
    t10 = (t9 + 40U);
    t11 = *((char **)t10);
    *((unsigned char *)t11) = t23;
    xsi_driver_first_trans_delta(t6, 1U, 1, 0LL);
    xsi_set_current_line(113, ng0);
    t2 = (t0 + 2432U);
    t3 = *((char **)t2);
    t19 = (0 - 6);
    t20 = (t19 * -1);
    t21 = (1U * t20);
    t22 = (0 + t21);
    t2 = (t3 + t22);
    t23 = *((unsigned char *)t2);
    t6 = (t0 + 3468);
    t7 = (t6 + 32U);
    t9 = *((char **)t7);
    t10 = (t9 + 40U);
    t11 = *((char **)t10);
    *((unsigned char *)t11) = t23;
    xsi_driver_first_trans_fast(t6);
    xsi_set_current_line(114, ng0);
    t24 = (10 * 1000LL);
    t2 = (t0 + 2992);
    xsi_process_wait(t2, t24);

LAB10:    *((char **)t1) = &&LAB11;
    goto LAB1;

LAB6:    t2 = (t0 + 7338);
    t4 = *((int *)t2);
    t3 = (t0 + 7342);
    t5 = *((int *)t3);
    if (t4 == t5)
        goto LAB7;

LAB12:    t19 = (t4 + 1);
    t4 = t19;
    t6 = (t0 + 7338);
    *((int *)t6) = t4;
    goto LAB4;

LAB8:    goto LAB6;

LAB9:    goto LAB8;

LAB11:    goto LAB9;

LAB13:    goto LAB2;

LAB14:    goto LAB13;

LAB16:    goto LAB14;

}


extern void work_a_2948530165_1949178628_init()
{
	static char *pe[] = {(void *)work_a_2948530165_1949178628_p_0};
	xsi_register_didat("work_a_2948530165_1949178628", "isim/JUHTAUTOMAAT_TB_isim_beh.exe.sim/work/a_2948530165_1949178628.didat");
	xsi_register_executes(pe);
}
