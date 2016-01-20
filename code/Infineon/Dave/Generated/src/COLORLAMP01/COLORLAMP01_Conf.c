/*******************************************************************************
**  DAVE App Name : COLORLAMP01       App Version: 1.0.7               
**  This file is generated by DAVE, User modification to this file will be    **
**  overwritten at the next code generation.                                  **
*******************************************************************************/


/*CODE_BLOCK_BEGIN[COLORLAMP01_Conf.c]*/

/*******************************************************************************
 Copyright (c) 2013, Infineon Technologies AG                                 **
 All rights reserved.                                                         **
                                                                              **
 Redistribution and use in source and binary forms, with or without           **
 modification,are permitted provided that the following conditions are met:   **
                                                                              **
 *Redistributions of source code must retain the above copyright notice,      **
 this list of conditions and the following disclaimer.                        **
 *Redistributions in binary form must reproduce the above copyright notice,   **
 this list of conditions and the following disclaimer in the documentation    **
 and/or other materials provided with the distribution.                       **
 *Neither the name of the copyright holders nor the names of its contributors **
 may be used to endorse or promote products derived from this software without**
 specific prior written permission.                                           **
                                                                              **
 THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS "AS IS"  **
 AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE    **
 IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE   **
 ARE  DISCLAIMED. IN NO EVENT SHALL THE COPYRIGHT HOLDER OR CONTRIBUTORS BE   **
 LIABLE  FOR ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR         **
 CONSEQUENTIAL DAMAGES (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF         **
 SUBSTITUTE GOODS OR  SERVICES; LOSS OF USE, DATA, OR PROFITS; OR BUSINESS    **
 INTERRUPTION) HOWEVER CAUSED AND ON ANY THEORY OF LIABILITY, WHETHER IN      **
 CONTRACT, STRICT LIABILITY,OR TORT (INCLUDING NEGLIGENCE OR OTHERWISE)       **
 ARISING IN ANY WAY OUT OF THE USE OF THIS SOFTWARE, EVEN IF ADVISED OF THE   **
 POSSIBILITY OF SUCH DAMAGE.                                                  **
                                                                              **
 To improve the quality of the software, users are encouraged to share        **
 modifications, enhancements or bug fixes with Infineon Technologies AG       **
 dave@infineon.com).                                                          **
                                                                              **
********************************************************************************
**                                                                            **
**                                                                            **
** PLATFORM : Infineon XMC1000 Series                                         **
**                                                                            **
** COMPILER : Compiler Independent                                            **
**                                                                            **
** AUTHOR   : App Developer                                                   **
**                                                                            **
** MAY BE CHANGED BY USER [yes/no]: Yes                                       **
**                                                                            **
** MODIFICATION DATE : Dec 06, 2013                                           **
**                                                                            **
*******************************************************************************/

/*******************************************************************************
**                       Author(s) Identity                                   **
********************************************************************************
**                                                                            **
** Initials     Name                                                          **
** ---------------------------------------------------------------------------**
** ES          App Developer                                 		          **
*******************************************************************************/
/**
 * @file  COLORLAMP01_Conf.c
 * @brief This file contains the Handles or the generated configuration for the 
 * App.
 */
/*
 * Revision History
 * 14 Feb  2013 v1.0.0  Initial Version.
 * 03 Apr  2013 v1.0.2  UTP AI00164659: unable to compile the code w Global 
 *                      Dimming configuration is fixed.
 * 26 Sep  2013 v1.0.4  Added support for XMC1202 device.
 * 06 Dec  2013 v1.0.5  Changes related to LIGHTINGSYS01 has taken care.
 */

#include <DAVE3.h>


const COLORLAMP01_ConfigHandleType  COLORLAMP01_ConfigHandle0 =
{
  .ChannelRed = &BCCUCH01_Handle0,
  .ChannelGreen = &BCCUCH01_Handle1,
  .ChannelBlue = &BCCUCH01_Handle2,
  .ChannelWhite = NULL,
  .ChannelAmber = NULL,
  .ChannelFree = NULL,
  .ChannelMask = 0x38UL,
#ifdef DIMAPP_USEDBY_COLORLAMP01
  .DimEngine = &BCCUDIM01_Handle0,
#endif
  .BCCUGlobal = &BCCUGlobal_Handle0
};


/*CODE_BLOCK_END*/
