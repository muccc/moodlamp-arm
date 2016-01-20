/*CODE_BLOCK_BEGIN[ANACMP01Confh.h]*/

/**************************************************************************//**
 *
 * Copyright (C) 2013 Infineon Technologies AG. All rights reserved.
 *
 * Infineon Technologies AG (Infineon) is supplying this software for use with
 * Infineon's microcontrollers.
 * This file can be freely distributed within development tools that are
 * supporting such microcontrollers.
 *
 * THIS SOFTWARE IS PROVIDED "AS IS".  NO WARRANTIES, WHETHER EXPRESS, IMPLIED
 * OR STATUTORY, INCLUDING, BUT NOT LIMITED TO, IMPLIED WARRANTIES OF
 * MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE APPLY TO THIS SOFTWARE.
 * INFINEON SHALL NOT, IN ANY CIRCUMSTANCES, BE LIABLE FOR SPECIAL, INCIDENTAL,
 * OR CONSEQUENTIAL DAMAGES, FOR ANY REASON WHATSOEVER.
 *
********************************************************************************
**                                                                            **
**                                                                            **
** PLATFORM : Infineon XMC1000 Series                                 	      **
**                                                                            **
** COMPILER : Compiler Independent                                            **
**                                                                            **
** AUTHOR : App Developer                                                     **
**                                                                            **
** MAY BE CHANGED BY USER [yes/Yes]: Ys                                       **
**                                                                            **
** MODIFICATION DATE : Jan 29, 2014                                           **
**                                                                            **
*******************************************************************************/

/**
 * @file  ANACMPGLOB01_Conf.h
 *
 * @brief This file contains App parameter data as per GUI configurations
 *
 * Change History:
 * Date       version       Details
 * 25-Mar-13    1.0.6   1. Initial version
 *                       2. Two IO001 apps consumtion done for two input pins   
 *                      3. Register structure defined in anacmpglob01 app due
 *                         to XMC1000 header file update not available and
 *                         code corrected as per this structure.
 *                      4. Register structure removed and Code is modified to 
 *                         support updated header files.
 *                      5. Help Document updated.
 * 10-Sep-13    1.0.8   1. Added support for the following devices under 
 *                         XMC1200 and XMC1300 Series XMC1201, XMC1202, XMC1301  
 * 29-Jan-2014  1.0.10  1. C++ header support 
 */
 
/*******************************************************************************
**                       Author(s) Identity                                   **
********************************************************************************
**                                                                            **
** Initials     Name                                                          **
** ---------------------------------------------------------------------------**
**   NL         App Developer                                                 **
**   SSAM       Sridhar Sampath                                               **
*******************************************************************************/
 
#ifndef ANACMPGLOB01CONF_H_
#define ANACMPGLOB01CONF_H_

#ifdef __cplusplus
extern "C" {
#endif

#include<dave3.h>
	
extern const ANACMPGLOB01_HandleType ANACMPGLOB01_Handle0;

#endif /* ANACMPGLOB01CONF_H_ */

/* Support for C++ codebase */
#ifdef __cplusplus
}
#endif

/**
 * @}
 */
 
/*CODE_BLOCK_END*/
