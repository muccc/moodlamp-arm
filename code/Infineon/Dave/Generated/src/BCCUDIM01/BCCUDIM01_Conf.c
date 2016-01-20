/*******************************************************************************
**  DAVE App Name : BCCUDIM01       App Version: 1.0.8               
**  This file is generated by DAVE, User modification to this file will be    **
**  overwritten at the next code generation.                                  **
*******************************************************************************/


/*CODE_BLOCK_BEGIN[BCCUDIM01_Conf.c]*/
/****************************************************************************
 * @file     BCCUDIM01_Conf.c
 * @brief    Configuration Source file generated based on UI settings 
 *           of BCCUDIM01 App. It contains all handles available to users
 *           generated by UI Configuration.
 * @version  V1.0.6
 * @date     12 Nov 2013
 *
 * @note
 * Copyright (C) 2012-2013 Infineon Technologies AG. All rights reserved.

 *
 * @par
 * Infineon Technologies AG (Infineon) is supplying this software for use with
 * Infineon's microcontrollers.
 *
 * This file can be freely distributed within development tools that are
 * supporting such microcontrollers.
 *
 *
 * @par
 * THIS SOFTWARE IS PROVIDED "AS IS".  NO WARRANTIES, WHETHER EXPRESS, IMPLIED
 * OR STATUTORY, INCLUDING, BUT NOT LIMITED TO, IMPLIED WARRANTIES OF
 * MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE APPLY TO THIS SOFTWARE.
 * INFINEON SHALL NOT, IN ANY CIRCUMSTANCES, BE LIABLE FOR SPECIAL, INCIDENTAL,
 * OR CONSEQUENTIAL DAMAGES, FOR ANY REASON WHATSOEVER.
 *
 ******************************************************************************/
/**************************** Change history ***********************************
 * V1.0.0,	14-Feb-13	 Initial Version
 * V1.0.2,	3-Apr-13	 Initial Target dimming level immediately upon 
 *                       initialization and then update the desired transition 
 *                       time (specified in GUI) is fixed.
 * V1.0.4   4-Oct-13     C++ Support extended and Updated with new Device IDs. 
 * V1.0.6   12-Nov-13    MISRA Checks done, Multiple inclusion of DAVE3.h 
 *                       removed, Extern.h added
 * *************************** Change history *********************************/
#include "../../inc/BCCUDIM01/BCCUDIM01.h"
 
  
   
const BCCUDIM01_HandleType BCCUDIM01_Handle0  = 
{
        .BCCURegs = BCCU0,
        .BCCU_DE_Regs = BCCU0_DE2,
        .DE_Num =2U,
        .EnableAtStart = ENGINE_EN,
        .DimDiv =0U,
        .DitherEnable =DITHER_DS,
        .CurveSel = COARSE_CURVE,
        .InitialLevel = 4095U
};

const BCCUDIM01_HandleType * BCCUDIM01_HandleArr[BCCUDIM01_NUM_INSTANCES] =
{
 
   &BCCUDIM01_Handle0 
};


 /*CODE_BLOCK_END*/

