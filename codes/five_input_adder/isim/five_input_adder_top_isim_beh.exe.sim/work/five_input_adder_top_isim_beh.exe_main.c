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



int main(int argc, char **argv)
{
    xsi_init_design(argc, argv);
    xsi_register_info(&xsi_info);

    xsi_register_min_prec_unit(-12);
    work_m_07958154198403372893_3190593924_init();
    work_m_09314304270724558574_1698222184_init();
    work_m_02501872507676268707_0898501645_init();
    work_m_17500828864292138553_1485883089_init();
    work_m_16556280237045893833_0456622160_init();
    work_m_09662161045886352340_0205606799_init();
    work_m_16541823861846354283_2073120511_init();


    xsi_register_tops("work_m_09662161045886352340_0205606799");
    xsi_register_tops("work_m_16541823861846354283_2073120511");


    return xsi_run_simulation(argc, argv);

}
