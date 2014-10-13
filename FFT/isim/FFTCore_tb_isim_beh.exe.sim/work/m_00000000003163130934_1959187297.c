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
static const char *ng0 = "\t%0x\t\t%0x,\t\t%0x";
static const char *ng1 = "D:/ZedBoard/demo/ISE_project/FFT/FFT/FFTCore_tb.v";
static int ng2[] = {0, 0};
static int ng3[] = {0, 0, 0, 0};
static unsigned int ng4[] = {0U, 0U};
static int ng5[] = {1, 0};
static unsigned int ng6[] = {3U, 0U};
static int ng7[] = {128, 0};
static int ng8[] = {127, 0};
static int ng9[] = {64, 0};
static unsigned int ng10[] = {1065353216U, 0U, 0U, 0U};
static unsigned int ng11[] = {0U, 0U, 0U, 0U};
static const char *ng12 = "\tDecimal Value\t\t\t\t\t\tImaginary Value\t\t\t\tReal Value";

void Monitor_134_2(char *);
void Monitor_134_2(char *);


static void Monitor_134_2_Func(char *t0)
{
    char t4[16];
    char *t1;
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
    char *t13;
    char *t14;
    char *t15;
    char *t16;

LAB0:    t1 = (t0 + 2668);
    t2 = (t1 + 36U);
    t3 = *((char **)t2);
    t5 = (t0 + 2668);
    t6 = (t5 + 44U);
    t7 = *((char **)t6);
    t8 = (t0 + 2668);
    t9 = (t8 + 40U);
    t10 = *((char **)t9);
    t11 = (t0 + 2576);
    t12 = (t11 + 36U);
    t13 = *((char **)t12);
    xsi_vlog_generic_get_array_select_value(t4, 64, t3, t7, t10, 2, 1, t13, 8, 2);
    t14 = (t0 + 1704U);
    t15 = *((char **)t14);
    t14 = (t0 + 1612U);
    t16 = *((char **)t14);
    xsi_vlogfile_write(1, 0, 3, ng0, 4, t0, (char)118, t4, 64, (char)118, t15, 32, (char)118, t16, 32);

LAB1:    return;
}

static void Initial_79_0(char *t0)
{
    char t4[8];
    char *t1;
    char *t2;
    char *t3;
    char *t5;
    char *t6;
    char *t7;
    unsigned int t8;
    unsigned int t9;
    unsigned int t10;
    unsigned int t11;
    unsigned int t12;
    char *t13;
    char *t14;
    char *t15;
    unsigned int t16;
    unsigned int t17;
    unsigned int t18;
    unsigned int t19;
    unsigned int t20;
    unsigned int t21;
    unsigned int t22;
    unsigned int t23;
    char *t24;

LAB0:    t1 = (t0 + 3284U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(79, ng1);

LAB4:    xsi_set_current_line(80, ng1);
    t2 = ((char*)((ng2)));
    t3 = (t0 + 1932);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 1);
    xsi_set_current_line(81, ng1);

LAB5:    xsi_set_current_line(81, ng1);
    t2 = (t0 + 3184);
    xsi_process_wait(t2, 5000LL);
    *((char **)t1) = &&LAB6;

LAB1:    return;
LAB6:    xsi_set_current_line(81, ng1);
    t3 = (t0 + 1932);
    t5 = (t3 + 36U);
    t6 = *((char **)t5);
    memset(t4, 0, 8);
    t7 = (t6 + 4);
    t8 = *((unsigned int *)t7);
    t9 = (~(t8));
    t10 = *((unsigned int *)t6);
    t11 = (t10 & t9);
    t12 = (t11 & 1U);
    if (t12 != 0)
        goto LAB10;

LAB8:    if (*((unsigned int *)t7) == 0)
        goto LAB7;

LAB9:    t13 = (t4 + 4);
    *((unsigned int *)t4) = 1;
    *((unsigned int *)t13) = 1;

LAB10:    t14 = (t4 + 4);
    t15 = (t6 + 4);
    t16 = *((unsigned int *)t6);
    t17 = (~(t16));
    *((unsigned int *)t4) = t17;
    *((unsigned int *)t14) = 0;
    if (*((unsigned int *)t15) != 0)
        goto LAB12;

LAB11:    t22 = *((unsigned int *)t4);
    *((unsigned int *)t4) = (t22 & 1U);
    t23 = *((unsigned int *)t14);
    *((unsigned int *)t14) = (t23 & 1U);
    t24 = (t0 + 1932);
    xsi_vlogvar_assign_value(t24, t4, 0, 0, 1);
    goto LAB5;

LAB7:    *((unsigned int *)t4) = 1;
    goto LAB10;

LAB12:    t18 = *((unsigned int *)t4);
    t19 = *((unsigned int *)t15);
    *((unsigned int *)t4) = (t18 | t19);
    t20 = *((unsigned int *)t14);
    t21 = *((unsigned int *)t15);
    *((unsigned int *)t14) = (t20 | t21);
    goto LAB11;

LAB13:    goto LAB1;

}

static void Initial_84_1(char *t0)
{
    char t4[8];
    char t20[8];
    char t34[8];
    char t50[8];
    char t58[8];
    char *t1;
    char *t2;
    char *t3;
    char *t5;
    char *t6;
    unsigned int t7;
    unsigned int t8;
    unsigned int t9;
    unsigned int t10;
    unsigned int t11;
    unsigned int t12;
    unsigned int t13;
    unsigned int t14;
    unsigned int t15;
    unsigned int t16;
    unsigned int t17;
    unsigned int t18;
    char *t19;
    char *t21;
    unsigned int t22;
    unsigned int t23;
    unsigned int t24;
    unsigned int t25;
    unsigned int t26;
    char *t27;
    char *t28;
    unsigned int t29;
    unsigned int t30;
    unsigned int t31;
    char *t32;
    char *t33;
    char *t35;
    char *t36;
    unsigned int t37;
    unsigned int t38;
    unsigned int t39;
    unsigned int t40;
    unsigned int t41;
    unsigned int t42;
    unsigned int t43;
    unsigned int t44;
    unsigned int t45;
    unsigned int t46;
    unsigned int t47;
    unsigned int t48;
    char *t49;
    char *t51;
    unsigned int t52;
    unsigned int t53;
    unsigned int t54;
    unsigned int t55;
    unsigned int t56;
    char *t57;
    unsigned int t59;
    unsigned int t60;
    unsigned int t61;
    char *t62;
    char *t63;
    char *t64;
    unsigned int t65;
    unsigned int t66;
    unsigned int t67;
    unsigned int t68;
    unsigned int t69;
    unsigned int t70;
    unsigned int t71;
    char *t72;
    char *t73;
    unsigned int t74;
    unsigned int t75;
    unsigned int t76;
    unsigned int t77;
    unsigned int t78;
    unsigned int t79;
    unsigned int t80;
    unsigned int t81;
    int t82;
    int t83;
    unsigned int t84;
    unsigned int t85;
    unsigned int t86;
    unsigned int t87;
    unsigned int t88;
    unsigned int t89;
    char *t90;
    unsigned int t91;
    unsigned int t92;
    unsigned int t93;
    unsigned int t94;
    unsigned int t95;
    char *t96;
    char *t97;
    int t98;
    int t99;
    int t100;

LAB0:    t1 = (t0 + 3428U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(84, ng1);

LAB4:    xsi_set_current_line(86, ng1);
    t2 = ((char*)((ng2)));
    t3 = (t0 + 1932);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 1);
    xsi_set_current_line(88, ng1);
    t2 = ((char*)((ng2)));
    t3 = (t0 + 2024);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 16);
    xsi_set_current_line(89, ng1);
    t2 = ((char*)((ng2)));
    t3 = (t0 + 2116);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 1);
    xsi_set_current_line(90, ng1);
    t2 = ((char*)((ng3)));
    t3 = (t0 + 2208);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 64);
    xsi_set_current_line(91, ng1);
    t2 = ((char*)((ng2)));
    t3 = (t0 + 2300);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 1);
    xsi_set_current_line(92, ng1);
    t2 = ((char*)((ng2)));
    t3 = (t0 + 2392);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 1);
    xsi_set_current_line(93, ng1);
    t2 = ((char*)((ng2)));
    t3 = (t0 + 2484);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 1);
    xsi_set_current_line(94, ng1);
    t2 = ((char*)((ng4)));
    t3 = (t0 + 2576);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 8);
    xsi_set_current_line(97, ng1);
    t2 = (t0 + 3328);
    xsi_process_wait(t2, 50000LL);
    *((char **)t1) = &&LAB5;

LAB1:    return;
LAB5:    xsi_set_current_line(101, ng1);
    t2 = (t0 + 3912);
    *((int *)t2) = 1;
    t3 = (t0 + 3456);
    *((char **)t3) = t2;
    *((char **)t1) = &&LAB6;
    goto LAB1;

LAB6:    xsi_set_current_line(102, ng1);
    t2 = ((char*)((ng5)));
    t3 = (t0 + 2116);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 1);
    xsi_set_current_line(103, ng1);
    t2 = ((char*)((ng6)));
    t3 = (t0 + 2024);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 16);
    xsi_set_current_line(105, ng1);

LAB7:    t2 = (t0 + 692U);
    t3 = *((char **)t2);
    t2 = ((char*)((ng2)));
    memset(t4, 0, 8);
    t5 = (t3 + 4);
    t6 = (t2 + 4);
    t7 = *((unsigned int *)t3);
    t8 = *((unsigned int *)t2);
    t9 = (t7 ^ t8);
    t10 = *((unsigned int *)t5);
    t11 = *((unsigned int *)t6);
    t12 = (t10 ^ t11);
    t13 = (t9 | t12);
    t14 = *((unsigned int *)t5);
    t15 = *((unsigned int *)t6);
    t16 = (t14 | t15);
    t17 = (~(t16));
    t18 = (t13 & t17);
    if (t18 != 0)
        goto LAB11;

LAB8:    if (t16 != 0)
        goto LAB10;

LAB9:    *((unsigned int *)t4) = 1;

LAB11:    memset(t20, 0, 8);
    t21 = (t4 + 4);
    t22 = *((unsigned int *)t21);
    t23 = (~(t22));
    t24 = *((unsigned int *)t4);
    t25 = (t24 & t23);
    t26 = (t25 & 1U);
    if (t26 != 0)
        goto LAB12;

LAB13:    if (*((unsigned int *)t21) != 0)
        goto LAB14;

LAB15:    t28 = (t20 + 4);
    t29 = *((unsigned int *)t20);
    t30 = *((unsigned int *)t28);
    t31 = (t29 || t30);
    if (t31 > 0)
        goto LAB16;

LAB17:    memcpy(t58, t20, 8);

LAB18:    t90 = (t58 + 4);
    t91 = *((unsigned int *)t90);
    t92 = (~(t91));
    t93 = *((unsigned int *)t58);
    t94 = (t93 & t92);
    t95 = (t94 != 0);
    if (t95 > 0)
        goto LAB30;

LAB31:    xsi_set_current_line(109, ng1);
    t2 = ((char*)((ng5)));
    t3 = (t0 + 2300);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 1);
    xsi_set_current_line(110, ng1);
    xsi_set_current_line(110, ng1);
    t2 = ((char*)((ng2)));
    t3 = (t0 + 2576);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 8);

LAB34:    t2 = (t0 + 2576);
    t3 = (t2 + 36U);
    t5 = *((char **)t3);
    t6 = ((char*)((ng7)));
    memset(t4, 0, 8);
    t19 = (t5 + 4);
    if (*((unsigned int *)t19) != 0)
        goto LAB36;

LAB35:    t21 = (t6 + 4);
    if (*((unsigned int *)t21) != 0)
        goto LAB36;

LAB39:    if (*((unsigned int *)t5) < *((unsigned int *)t6))
        goto LAB37;

LAB38:    t28 = (t4 + 4);
    t7 = *((unsigned int *)t28);
    t8 = (~(t7));
    t9 = *((unsigned int *)t4);
    t10 = (t9 & t8);
    t11 = (t10 != 0);
    if (t11 > 0)
        goto LAB40;

LAB41:    xsi_set_current_line(119, ng1);
    t2 = (t0 + 3936);
    *((int *)t2) = 1;
    t3 = (t0 + 3456);
    *((char **)t3) = t2;
    *((char **)t1) = &&LAB59;
    goto LAB1;

LAB10:    t19 = (t4 + 4);
    *((unsigned int *)t4) = 1;
    *((unsigned int *)t19) = 1;
    goto LAB11;

LAB12:    *((unsigned int *)t20) = 1;
    goto LAB15;

LAB14:    t27 = (t20 + 4);
    *((unsigned int *)t20) = 1;
    *((unsigned int *)t27) = 1;
    goto LAB15;

LAB16:    t32 = (t0 + 600U);
    t33 = *((char **)t32);
    t32 = ((char*)((ng2)));
    memset(t34, 0, 8);
    t35 = (t33 + 4);
    t36 = (t32 + 4);
    t37 = *((unsigned int *)t33);
    t38 = *((unsigned int *)t32);
    t39 = (t37 ^ t38);
    t40 = *((unsigned int *)t35);
    t41 = *((unsigned int *)t36);
    t42 = (t40 ^ t41);
    t43 = (t39 | t42);
    t44 = *((unsigned int *)t35);
    t45 = *((unsigned int *)t36);
    t46 = (t44 | t45);
    t47 = (~(t46));
    t48 = (t43 & t47);
    if (t48 != 0)
        goto LAB22;

LAB19:    if (t46 != 0)
        goto LAB21;

LAB20:    *((unsigned int *)t34) = 1;

LAB22:    memset(t50, 0, 8);
    t51 = (t34 + 4);
    t52 = *((unsigned int *)t51);
    t53 = (~(t52));
    t54 = *((unsigned int *)t34);
    t55 = (t54 & t53);
    t56 = (t55 & 1U);
    if (t56 != 0)
        goto LAB23;

LAB24:    if (*((unsigned int *)t51) != 0)
        goto LAB25;

LAB26:    t59 = *((unsigned int *)t20);
    t60 = *((unsigned int *)t50);
    t61 = (t59 & t60);
    *((unsigned int *)t58) = t61;
    t62 = (t20 + 4);
    t63 = (t50 + 4);
    t64 = (t58 + 4);
    t65 = *((unsigned int *)t62);
    t66 = *((unsigned int *)t63);
    t67 = (t65 | t66);
    *((unsigned int *)t64) = t67;
    t68 = *((unsigned int *)t64);
    t69 = (t68 != 0);
    if (t69 == 1)
        goto LAB27;

LAB28:
LAB29:    goto LAB18;

LAB21:    t49 = (t34 + 4);
    *((unsigned int *)t34) = 1;
    *((unsigned int *)t49) = 1;
    goto LAB22;

LAB23:    *((unsigned int *)t50) = 1;
    goto LAB26;

LAB25:    t57 = (t50 + 4);
    *((unsigned int *)t50) = 1;
    *((unsigned int *)t57) = 1;
    goto LAB26;

LAB27:    t70 = *((unsigned int *)t58);
    t71 = *((unsigned int *)t64);
    *((unsigned int *)t58) = (t70 | t71);
    t72 = (t20 + 4);
    t73 = (t50 + 4);
    t74 = *((unsigned int *)t20);
    t75 = (~(t74));
    t76 = *((unsigned int *)t72);
    t77 = (~(t76));
    t78 = *((unsigned int *)t50);
    t79 = (~(t78));
    t80 = *((unsigned int *)t73);
    t81 = (~(t80));
    t82 = (t75 & t77);
    t83 = (t79 & t81);
    t84 = (~(t82));
    t85 = (~(t83));
    t86 = *((unsigned int *)t64);
    *((unsigned int *)t64) = (t86 & t84);
    t87 = *((unsigned int *)t64);
    *((unsigned int *)t64) = (t87 & t85);
    t88 = *((unsigned int *)t58);
    *((unsigned int *)t58) = (t88 & t84);
    t89 = *((unsigned int *)t58);
    *((unsigned int *)t58) = (t89 & t85);
    goto LAB29;

LAB30:    xsi_set_current_line(105, ng1);

LAB32:    xsi_set_current_line(106, ng1);
    t96 = (t0 + 3920);
    *((int *)t96) = 1;
    t97 = (t0 + 3456);
    *((char **)t97) = t96;
    *((char **)t1) = &&LAB33;
    goto LAB1;

LAB33:    goto LAB7;

LAB36:    t27 = (t4 + 4);
    *((unsigned int *)t4) = 1;
    *((unsigned int *)t27) = 1;
    goto LAB38;

LAB37:    *((unsigned int *)t4) = 1;
    goto LAB38;

LAB40:    xsi_set_current_line(110, ng1);

LAB42:    xsi_set_current_line(112, ng1);
    t32 = (t0 + 2576);
    t33 = (t32 + 36U);
    t35 = *((char **)t33);
    t36 = ((char*)((ng8)));
    memset(t20, 0, 8);
    t49 = (t35 + 4);
    t51 = (t36 + 4);
    t12 = *((unsigned int *)t35);
    t13 = *((unsigned int *)t36);
    t14 = (t12 ^ t13);
    t15 = *((unsigned int *)t49);
    t16 = *((unsigned int *)t51);
    t17 = (t15 ^ t16);
    t18 = (t14 | t17);
    t22 = *((unsigned int *)t49);
    t23 = *((unsigned int *)t51);
    t24 = (t22 | t23);
    t25 = (~(t24));
    t26 = (t18 & t25);
    if (t26 != 0)
        goto LAB46;

LAB43:    if (t24 != 0)
        goto LAB45;

LAB44:    *((unsigned int *)t20) = 1;

LAB46:    t62 = (t20 + 4);
    t29 = *((unsigned int *)t62);
    t30 = (~(t29));
    t31 = *((unsigned int *)t20);
    t37 = (t31 & t30);
    t38 = (t37 != 0);
    if (t38 > 0)
        goto LAB47;

LAB48:    xsi_set_current_line(113, ng1);
    t2 = (t0 + 2576);
    t3 = (t2 + 36U);
    t5 = *((char **)t3);
    t6 = ((char*)((ng9)));
    memset(t4, 0, 8);
    t19 = (t5 + 4);
    if (*((unsigned int *)t19) != 0)
        goto LAB51;

LAB50:    t21 = (t6 + 4);
    if (*((unsigned int *)t21) != 0)
        goto LAB51;

LAB54:    if (*((unsigned int *)t5) < *((unsigned int *)t6))
        goto LAB52;

LAB53:    t28 = (t4 + 4);
    t7 = *((unsigned int *)t28);
    t8 = (~(t7));
    t9 = *((unsigned int *)t4);
    t10 = (t9 & t8);
    t11 = (t10 != 0);
    if (t11 > 0)
        goto LAB55;

LAB56:    xsi_set_current_line(114, ng1);
    t2 = ((char*)((ng11)));
    t3 = (t0 + 2208);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 64);

LAB57:
LAB49:    xsi_set_current_line(115, ng1);
    t2 = (t0 + 3928);
    *((int *)t2) = 1;
    t3 = (t0 + 3456);
    *((char **)t3) = t2;
    *((char **)t1) = &&LAB58;
    goto LAB1;

LAB45:    t57 = (t20 + 4);
    *((unsigned int *)t20) = 1;
    *((unsigned int *)t57) = 1;
    goto LAB46;

LAB47:    xsi_set_current_line(112, ng1);
    t63 = ((char*)((ng5)));
    t64 = (t0 + 2392);
    xsi_vlogvar_assign_value(t64, t63, 0, 0, 1);
    goto LAB49;

LAB51:    t27 = (t4 + 4);
    *((unsigned int *)t4) = 1;
    *((unsigned int *)t27) = 1;
    goto LAB53;

LAB52:    *((unsigned int *)t4) = 1;
    goto LAB53;

LAB55:    xsi_set_current_line(113, ng1);
    t32 = ((char*)((ng10)));
    t33 = (t0 + 2208);
    xsi_vlogvar_assign_value(t33, t32, 0, 0, 64);
    goto LAB57;

LAB58:    xsi_set_current_line(110, ng1);
    t2 = (t0 + 2576);
    t3 = (t2 + 36U);
    t5 = *((char **)t3);
    t6 = ((char*)((ng5)));
    memset(t4, 0, 8);
    xsi_vlog_unsigned_add(t4, 32, t5, 8, t6, 32);
    t19 = (t0 + 2576);
    xsi_vlogvar_assign_value(t19, t4, 0, 0, 8);
    goto LAB34;

LAB59:    xsi_set_current_line(120, ng1);
    t2 = ((char*)((ng2)));
    t3 = (t0 + 2116);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 1);
    xsi_set_current_line(121, ng1);
    t2 = ((char*)((ng2)));
    t3 = (t0 + 2392);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 1);
    xsi_set_current_line(122, ng1);
    t2 = ((char*)((ng2)));
    t3 = (t0 + 2300);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 1);
    xsi_set_current_line(124, ng1);

LAB60:    t2 = (t0 + 876U);
    t3 = *((char **)t2);
    t2 = ((char*)((ng2)));
    memset(t4, 0, 8);
    t5 = (t3 + 4);
    t6 = (t2 + 4);
    t7 = *((unsigned int *)t3);
    t8 = *((unsigned int *)t2);
    t9 = (t7 ^ t8);
    t10 = *((unsigned int *)t5);
    t11 = *((unsigned int *)t6);
    t12 = (t10 ^ t11);
    t13 = (t9 | t12);
    t14 = *((unsigned int *)t5);
    t15 = *((unsigned int *)t6);
    t16 = (t14 | t15);
    t17 = (~(t16));
    t18 = (t13 & t17);
    if (t18 != 0)
        goto LAB64;

LAB61:    if (t16 != 0)
        goto LAB63;

LAB62:    *((unsigned int *)t4) = 1;

LAB64:    t21 = (t4 + 4);
    t22 = *((unsigned int *)t21);
    t23 = (~(t22));
    t24 = *((unsigned int *)t4);
    t25 = (t24 & t23);
    t26 = (t25 != 0);
    if (t26 > 0)
        goto LAB65;

LAB66:    xsi_set_current_line(128, ng1);
    t2 = ((char*)((ng5)));
    t3 = (t0 + 2484);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 1);
    xsi_set_current_line(130, ng1);

LAB69:    t2 = (t0 + 876U);
    t3 = *((char **)t2);
    t2 = ((char*)((ng5)));
    memset(t4, 0, 8);
    t5 = (t3 + 4);
    t6 = (t2 + 4);
    t7 = *((unsigned int *)t3);
    t8 = *((unsigned int *)t2);
    t9 = (t7 ^ t8);
    t10 = *((unsigned int *)t5);
    t11 = *((unsigned int *)t6);
    t12 = (t10 ^ t11);
    t13 = (t9 | t12);
    t14 = *((unsigned int *)t5);
    t15 = *((unsigned int *)t6);
    t16 = (t14 | t15);
    t17 = (~(t16));
    t18 = (t13 & t17);
    if (t18 != 0)
        goto LAB73;

LAB70:    if (t16 != 0)
        goto LAB72;

LAB71:    *((unsigned int *)t4) = 1;

LAB73:    t21 = (t4 + 4);
    t22 = *((unsigned int *)t21);
    t23 = (~(t22));
    t24 = *((unsigned int *)t4);
    t25 = (t24 & t23);
    t26 = (t25 != 0);
    if (t26 > 0)
        goto LAB74;

LAB75:    xsi_set_current_line(140, ng1);
    t2 = (t0 + 3952);
    *((int *)t2) = 1;
    t3 = (t0 + 3456);
    *((char **)t3) = t2;
    *((char **)t1) = &&LAB92;
    goto LAB1;

LAB63:    t19 = (t4 + 4);
    *((unsigned int *)t4) = 1;
    *((unsigned int *)t19) = 1;
    goto LAB64;

LAB65:    xsi_set_current_line(124, ng1);

LAB67:    xsi_set_current_line(125, ng1);
    t27 = (t0 + 3328);
    xsi_process_wait(t27, 1000LL);
    *((char **)t1) = &&LAB68;
    goto LAB1;

LAB68:    goto LAB60;

LAB72:    t19 = (t4 + 4);
    *((unsigned int *)t4) = 1;
    *((unsigned int *)t19) = 1;
    goto LAB73;

LAB74:    xsi_set_current_line(130, ng1);

LAB76:    xsi_set_current_line(131, ng1);
    xsi_set_current_line(131, ng1);
    t27 = ((char*)((ng2)));
    t28 = (t0 + 2576);
    xsi_vlogvar_assign_value(t28, t27, 0, 0, 8);

LAB77:    t2 = ((char*)((ng5)));
    t3 = ((char*)((ng7)));
    memset(t4, 0, 8);
    xsi_vlog_signed_less(t4, 32, t2, 32, t3, 32);
    t5 = (t4 + 4);
    t7 = *((unsigned int *)t5);
    t8 = (~(t7));
    t9 = *((unsigned int *)t4);
    t10 = (t9 & t8);
    t11 = (t10 != 0);
    if (t11 > 0)
        goto LAB78;

LAB79:    goto LAB69;

LAB78:    xsi_set_current_line(131, ng1);

LAB80:    xsi_set_current_line(132, ng1);
    t6 = (t0 + 784U);
    t19 = *((char **)t6);
    t6 = (t0 + 2668);
    t21 = (t0 + 2668);
    t27 = (t21 + 44U);
    t28 = *((char **)t27);
    t32 = (t0 + 2668);
    t33 = (t32 + 40U);
    t35 = *((char **)t33);
    t36 = (t0 + 2576);
    t49 = (t36 + 36U);
    t51 = *((char **)t49);
    xsi_vlog_generic_convert_array_indices(t20, t34, t28, t35, 2, 1, t51, 8, 2);
    t57 = (t20 + 4);
    t12 = *((unsigned int *)t57);
    t82 = (!(t12));
    t62 = (t34 + 4);
    t13 = *((unsigned int *)t62);
    t83 = (!(t13));
    t98 = (t82 && t83);
    if (t98 == 1)
        goto LAB81;

LAB82:    xsi_set_current_line(133, ng1);
    xsi_vlogfile_write(1, 0, 0, ng12, 1, t0);
    xsi_set_current_line(134, ng1);
    Monitor_134_2(t0);
    xsi_set_current_line(135, ng1);
    t2 = (t0 + 3944);
    *((int *)t2) = 1;
    t3 = (t0 + 3456);
    *((char **)t3) = t2;
    *((char **)t1) = &&LAB83;
    goto LAB1;

LAB81:    t14 = *((unsigned int *)t20);
    t15 = *((unsigned int *)t34);
    t99 = (t14 - t15);
    t100 = (t99 + 1);
    xsi_vlogvar_assign_value(t6, t19, 0, *((unsigned int *)t34), t100);
    goto LAB82;

LAB83:    xsi_set_current_line(136, ng1);
    t2 = (t0 + 2576);
    t3 = (t2 + 36U);
    t5 = *((char **)t3);
    t6 = ((char*)((ng5)));
    memset(t4, 0, 8);
    t19 = (t5 + 4);
    t21 = (t6 + 4);
    t7 = *((unsigned int *)t5);
    t8 = *((unsigned int *)t6);
    t9 = (t7 ^ t8);
    t10 = *((unsigned int *)t19);
    t11 = *((unsigned int *)t21);
    t12 = (t10 ^ t11);
    t13 = (t9 | t12);
    t14 = *((unsigned int *)t19);
    t15 = *((unsigned int *)t21);
    t16 = (t14 | t15);
    t17 = (~(t16));
    t18 = (t13 & t17);
    if (t18 != 0)
        goto LAB87;

LAB84:    if (t16 != 0)
        goto LAB86;

LAB85:    *((unsigned int *)t4) = 1;

LAB87:    t28 = (t4 + 4);
    t22 = *((unsigned int *)t28);
    t23 = (~(t22));
    t24 = *((unsigned int *)t4);
    t25 = (t24 & t23);
    t26 = (t25 != 0);
    if (t26 > 0)
        goto LAB88;

LAB89:
LAB90:    xsi_set_current_line(131, ng1);
    t2 = (t0 + 2576);
    t3 = (t2 + 36U);
    t5 = *((char **)t3);
    t6 = ((char*)((ng5)));
    memset(t4, 0, 8);
    xsi_vlog_unsigned_add(t4, 32, t5, 8, t6, 32);
    t19 = (t0 + 2576);
    xsi_vlogvar_assign_value(t19, t4, 0, 0, 8);
    goto LAB77;

LAB86:    t27 = (t4 + 4);
    *((unsigned int *)t4) = 1;
    *((unsigned int *)t27) = 1;
    goto LAB87;

LAB88:    xsi_set_current_line(136, ng1);
    t32 = (t0 + 3328);
    xsi_process_wait(t32, 1000LL);
    *((char **)t1) = &&LAB91;
    goto LAB1;

LAB91:    goto LAB90;

LAB92:    xsi_set_current_line(140, ng1);
    t2 = (t0 + 3960);
    *((int *)t2) = 1;
    t3 = (t0 + 3456);
    *((char **)t3) = t2;
    *((char **)t1) = &&LAB93;
    goto LAB1;

LAB93:    xsi_set_current_line(140, ng1);
    t2 = (t0 + 3968);
    *((int *)t2) = 1;
    t3 = (t0 + 3456);
    *((char **)t3) = t2;
    *((char **)t1) = &&LAB94;
    goto LAB1;

LAB94:    xsi_set_current_line(140, ng1);
    t2 = (t0 + 3976);
    *((int *)t2) = 1;
    t3 = (t0 + 3456);
    *((char **)t3) = t2;
    *((char **)t1) = &&LAB95;
    goto LAB1;

LAB95:    xsi_set_current_line(140, ng1);
    xsi_vlog_finish(1);
    goto LAB1;

}

void Monitor_134_2(char *t0)
{
    char *t1;
    char *t2;

LAB0:    t1 = (t0 + 3472);
    t2 = (t0 + 3984);
    xsi_vlogfile_monitor((void *)Monitor_134_2_Func, t1, t2);

LAB1:    return;
}

static void impl1_execute(char *t0)
{
    char t7[16];
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    char *t5;
    char *t6;
    char *t8;
    char *t9;
    char *t10;
    char *t11;
    char *t12;
    char *t13;
    char *t14;
    char *t15;
    char *t16;

LAB0:    t1 = (t0 + 3716U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    t2 = (t0 + 3992);
    *((int *)t2) = 1;
    *((char **)t1) = &&LAB4;

LAB1:    return;
LAB4:    t3 = (t0 + 2760);
    t4 = (t0 + 2668);
    t5 = (t4 + 36U);
    t6 = *((char **)t5);
    t8 = (t0 + 2668);
    t9 = (t8 + 44U);
    t10 = *((char **)t9);
    t11 = (t0 + 2668);
    t12 = (t11 + 40U);
    t13 = *((char **)t12);
    t14 = (t0 + 2576);
    t15 = (t14 + 36U);
    t16 = *((char **)t15);
    xsi_vlog_generic_get_array_select_value(t7, 64, t6, t10, t13, 2, 1, t16, 8, 2);
    xsi_vlogimplicitvar_assign_value(t3, t7, 64);
    goto LAB2;

}


extern void work_m_00000000003163130934_1959187297_init()
{
	static char *pe[] = {(void *)Initial_79_0,(void *)Initial_84_1,(void *)Monitor_134_2,(void *)impl1_execute};
	xsi_register_didat("work_m_00000000003163130934_1959187297", "isim/FFTCore_tb_isim_beh.exe.sim/work/m_00000000003163130934_1959187297.didat");
	xsi_register_executes(pe);
}
