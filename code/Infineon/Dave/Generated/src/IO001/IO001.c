/*******************************************************************************
**  DAVE App Name : IO001       App Version: 1.0.16               
**  This file is generated by DAVE, User modification to this file will be    **
**  overwritten at the next code generation.                                  **
*******************************************************************************/

/*CODE_BLOCK_BEGIN[IO001.c]*/
/*******************************************************************************
 Copyright (c) 2012, Infineon Technologies AG                                 **
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
** PLATFORM : Infineon XMC4000/XMC1000 Series                                 **
**                                                                            **
** COMPILER : Compiler Independent                                            **
**                                                                            **
** AUTHOR   : App Developer                                                   **
**                                                                            **
** MAY BE CHANGED BY USER [yes/no]: Yes                                       **
**                                                                            **
** MODIFICATION DATE : Feb 07, 2013                                           **
**                                                                            **
*******************************************************************************/
/*******************************************************************************
**                      Author(s) Identity                                    **
********************************************************************************
**                                                                            **
** Initials     Name                                                          **
** ---------------------------------------------------------------------------**
** PAE        App Developer                                                   **
*******************************************************************************/
/**
 * @file   IO001.c
 *
 * @brief  IO_Analog_IO001 App
 */
/* Revision History - 
 * 7 Feb 2013 v1.0.6  Replaced "/pin/iocr_pcr" resource with 
 *                    "/IO001_inputchardummy" resource to get the IOCR_PCR value.
 *
 */
/*******************************************************************************
 ** INCLUDE FILES                                                             **
 ******************************************************************************/

/** Inclusion of header file */
#include <DAVE3.h>

/*******************************************************************************
**                      Private Macro Definitions                             **
*******************************************************************************/

/*******************************************************************************
**                      Private Type Definitions                              **
*******************************************************************************/

/*******************************************************************************
**                 Private Function Declarations:
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

/*******************************************************************************
**                 Function like macro definitions                            **
*******************************************************************************/
/*******************************************************************************
**                      Private Function Definitions                          **
*******************************************************************************/

/*******************************************************************************
**                      Public Function Definitions                           **
*******************************************************************************/


/** @ingroup IO001_Func
 * @{
 */

void IO001_Init(void)
{
   /* <<<DD_IO001_API_1>>> */

  /* Configuration of Port 2 Pin 8 based on User configuration */
  /* Enable Digital Pad Input*/
  IO001_Handle0.PortRegs->PDISC  &= (~((uint32_t)0x1U << 8));
  /*configure the Digital Input characteristics in IOCR register*/
  IO001_Handle0.PortRegs->IOCR8 |= (0U << 3);
  /* Configuration of Port 2 Pin 9 based on User configuration */
  /* Enable Digital Pad Input*/
  IO001_Handle1.PortRegs->PDISC  &= (~((uint32_t)0x1U << 9));
  /*configure the Digital Input characteristics in IOCR register*/
  IO001_Handle1.PortRegs->IOCR8 |= (0U << 11);
  /* Configuration of Port 2 Pin 6 based on User configuration */
  /* Enable Digital Pad Input*/
  IO001_Handle2.PortRegs->PDISC  &= (~((uint32_t)0x1U << 6));
  /*configure the Digital Input characteristics in IOCR register*/
  IO001_Handle2.PortRegs->IOCR4 |= (0U << 19);
  /* Configuration of Port 2 Pin 7 based on User configuration */
  /* Enable Digital Pad Input*/
  IO001_Handle3.PortRegs->PDISC  &= (~((uint32_t)0x1U << 7));
  /*configure the Digital Input characteristics in IOCR register*/
  IO001_Handle3.PortRegs->IOCR4 |= (0U << 27);
  /* Configuration of Port 2 Pin 2 based on User configuration */
  /* Enable Digital Pad Input*/
  IO001_Handle4.PortRegs->PDISC  &= (~((uint32_t)0x1U << 2));
  /*configure the Digital Input characteristics in IOCR register*/
  IO001_Handle4.PortRegs->IOCR0 |= (0U << 19);
  /* Configuration of Port 2 Pin 1 based on User configuration */
  /* Enable Digital Pad Input*/
  IO001_Handle5.PortRegs->PDISC  &= (~((uint32_t)0x1U << 1));
  /*configure the Digital Input characteristics in IOCR register*/
  IO001_Handle5.PortRegs->IOCR0 |= (0U << 11);
}

void IO001_EnableDigitalInput(const IO001_HandleType* Handle,IO001_InputModeType Mode)
{
  uint8_t Pin = Handle->PortPin;
  /* <<<DD_IO001_API_2>>> */
     
  /* Enable Digital Mode */
  Handle->PortRegs->PDISC  =  (uint32_t)(Handle->PortRegs->PDISC & ~(1UL << (Pin)));
  if(Pin < 4U)
  {
    Handle->PortRegs->IOCR0  =  (uint32_t)(Handle->PortRegs->IOCR0 & ~(0x0000001FUL << (3U+(Pin*8U))));
    Handle->PortRegs->IOCR0 |= (uint32_t)(((uint32_t)Mode & 0x1FUL) << (3U+(Pin*8U)));
  } else if ((Pin >= 4U) && (Pin <= 7U))
  {
    Pin = Pin - 4U;
    Handle->PortRegs->IOCR4  =  (uint32_t)(Handle->PortRegs->IOCR4 & ~(0x0000001FUL << (3U+(Pin*8U))));
    Handle->PortRegs->IOCR4 |=  (uint32_t)(((uint32_t)Mode & 0x1FUL) << (3U+(Pin*8U)));
  } else if ((Pin >= 8U) && (Pin <= 11U))
  {
    Pin = Pin - 8U;
    Handle->PortRegs->IOCR8  =  (uint32_t)(Handle->PortRegs->IOCR8 & ~(0x0000001FUL << (3U+(Pin*8U))));
    Handle->PortRegs->IOCR8 |=  (uint32_t)(((uint32_t)Mode & 0x1FUL) << (3U+(Pin*8U)));
  } else if ((Pin >= 12U) && (Pin <= 15U))
  {
    Pin = Pin - 12U;
    Handle->PortRegs->IOCR12  =  (uint32_t)(Handle->PortRegs->IOCR12 & ~(0x0000001FUL << (3U+(Pin*8U))));
    Handle->PortRegs->IOCR12 |=  (uint32_t)(((uint32_t)Mode & 0x1FUL) << (3U+(Pin*8U)));
  }
  else
  {
   /*Not supposed to be here */
  }
}

void IO001_DisableDigitalInput(const IO001_HandleType* Handle)
{
  /* <<<DD_IO001_API_3>>> */
  /* Disable Digital Mode */
  Handle->PortRegs->PDISC  |=  (uint32_t)(1UL << Handle->PortPin);
}


/**
*@}
*/  

/*CODE_BLOCK_END*/


