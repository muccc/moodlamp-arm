/*******************************************************************************
**  DAVE App Name : DMX512RD01       App Version: 1.0.4               
**  This file is generated by DAVE, User modification to this file will be    **
**  overwritten at the next code generation.                                  **
*******************************************************************************/




/*CODE_BLOCK_BEGIN[DMX512RD01_Conf.h]*/

/******************************************************************************
 * @file     DMX512RD01_Conf.c
 *
 * @brief  This defines the dynamic or User defined  objects, enums 
 * and APIs of DMX512 APP
 * @version  V1.0.4
 * @date     06 Feb 2014
 *
 * @note
 * Copyright (C) 2012-2013 Infineon Technologies AG. All rights reserved.

 *
 * @par
 * Infineon Technologies AG (Infineon) is supplying this software for use with 
 * Infineon?s microcontrollers.
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
/*
 * *************************** Change history ********************************
 * *************************** Change history ********************************
 * V1.0.0, 26 Sep 2013, Initial Version
 * V1.0.2, 20 Jan 2014, CAPCOM dependency is reduced by removing MBTS and 
 * MBB checks
 * V1.0.4, 06 Feb 2014, New feature accurate break detection is provided
 */

 /*******************************************************************************
 ** INCLUDE FILES                                                             **
 ******************************************************************************/
#include "../../inc/DMX512RD01/DMX512RD01.h"
#include "stddef.h"

const DMX512RD01_HandleType DMX512RD01_Handle0 =
{
    /** CMSIS defined structure for USIC module */
    .UsicRegPtr = USIC0_CH0,
	/* Capture Hardware related Variables */
	.CaptureBasePtr = NULL, /* <! Capture Base Register pointer */
	.CaptureRegPtr = NULL, /* <! Capture Channel Register Pointer */
};

/*CODE_BLOCK_END*/

