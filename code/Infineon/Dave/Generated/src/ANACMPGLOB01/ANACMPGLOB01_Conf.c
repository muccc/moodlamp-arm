/*******************************************************************************
**  DAVE App Name : ANACMPGLOB01       App Version: 1.0.12               
**  This file is generated by DAVE, User modification to this file will be    **
**  overwritten at the next code generation.                                  **
*******************************************************************************/

/*CODE_BLOCK_BEGIN[ANACMPGLOB01Conf.c]*/

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
** PLATFORM : Infineon XMC1000 Series                           			        **
**                                                                            **
** COMPILER : Compiler Independent                                            **
**                                                                            **
** AUTHOR : App Developer                                                     **
**                                                                            **
** MAY BE CHANGED BY USER [yes/Yes]: Ys                                       **
**                                                                            **
** MODIFICATION DATE : Sep 10, 2013                                           **
**                                                                            **
*******************************************************************************/

/*******************************************************************************
**                       Author(s) Identity                                   **
********************************************************************************
**                                                                            **
** Initials     Name                                                          **
** ---------------------------------------------------------------------------**
** NL           App Developer                                                 **
*******************************************************************************/
/**
 * @file  ANACMPGLOB01_Conf.c
 * @App Version ANACMPGLOB01 <1.0.12>
 * @brief This file contains App parameter data as per GUI configurations
 *
 * Change History:
 * Date       version       Details
 * 25-Mar-13    1.0.6   1. Initial version
 *                      2. Two IO001 apps consumtion done for two input pins   
 *                      3. Register structure defined in anacmpglob01 app due
 *                         to XMC1000 header file update not available and
 *                         code corrected as per this structure.
 *                      4. Register structure removed and Code is modified to 
 *                         support updated header files.
 *                      5. Help Document updated.
 * 10-Sep-13    1.0.8   1. Added support for the following devices under 
 *                         XMC1200 and XMC1300 Series XMC1201, XMC1202, XMC1301  
 */
 
#include <DAVE3.h>


const ANACMPGLOB01_HandleType ANACMPGLOB01_Handle0 = 	
{
	.Powermode =   ANACMP01_HIGHPOWERMODE ,
	.ANACMPGlobRegs0Ptr = (COMPARATOR_Type*)COMPARATOR_BASE  
};    	         

/**
 * @endcond
 */
/*CODE_BLOCK_END*/


