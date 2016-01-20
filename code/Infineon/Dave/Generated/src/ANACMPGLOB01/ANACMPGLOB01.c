/*CODE_BLOCK_BEGIN[ANACMPGLOB01.c]*/

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
** PLATFORM : Infineon XMC1000 Series                       			      **
**                                                                            **
** COMPILER : Compiler Independent                                            **
**                                                                            **
** AUTHOR : App Developer                                                     **
**                                                                            **
** MAY BE CHANGED BY USER [yes/no]: Yes                                       **
**                                                                            **
** MODIFICATION DATE : Sep 10, 2013                                           **
**                                                                            **
*******************************************************************************/

/**
 * @file ANACMPGLOB01.c
 *
 * @brief
 * This app is used to support anacmp01 app for Analog comparator global configuration.
 *
 * Use case:
 * It supports anacmp01 app. 
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

/******************************************************************************
**                      Author(s) Identity                                   **
*******************************************************************************
**                                                                           **
** Initials     Name                                                         **
** NL           App Developer                                                **
** --------------------------------------------------------------------------**

*******************************************************************************/

/*******************************************************************************
 ** INCLUDE FILES                                                             **
 ******************************************************************************/
#include <DAVE3.h>

/**
 * @cond INTERNAL_DOCS
 */

/*******************************************************************************
**                      Private Type Definitions                              **
*******************************************************************************/

/*******************************************************************************
**                      Global Constant Definitions                           **
*******************************************************************************/

/*******************************************************************************
**                      Global Variable Definitions                           **
*******************************************************************************/

/*******************************************************************************
**                      Private Constant Definitions                          **
*******************************************************************************/

/**
* @}
*/
/*******************************************************************************
**                 Private Function Definitions:
*******************************************************************************/

/**
 * @addtogroup ANACMPGLOB01_PriviteFunctions
 * @{
 */
/**
 * @brief Initialization function which initializes the App internal data
 *  structures to default values.
 *
 * @param [in] None<BR>
 *
 * @return  void<BR>
 *
 * <b>Reentrancy:  Yes</b><BR>
 * <b>Sync/Async:  Synchronous</b><BR>
 */

  void ANACMPGLOB01_Init(void)
  {
      ANACMPGLOB01_Handle0.ANACMPGlobRegs0Ptr->ANACMP0 = \
      ((ANACMPGLOB01_Handle0.ANACMPGlobRegs0Ptr->ANACMP0 & ~COMPARATOR_ANACMP0_CMP_LPWR_Msk) \
     |(ANACMPGLOB01_Handle0.Powermode <<COMPARATOR_ANACMP0_CMP_LPWR_Pos));
  }
   
 /**
 * @endcond
 */
/*CODE_BLOCK_END*/