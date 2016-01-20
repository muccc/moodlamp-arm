/******************************************************************************
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
** PLATFORM : Infineon XMC1000 Series                                         **
**                                                                            **
** COMPILER : Compiler Independent                                            **
**                                                                            **
** AUTHOR   : App Developer                                                   **
**                                                                            **
** MAY BE CHANGED BY USER [yes/no]: Yes                                       **
**                                                                            **
** MODIFICATION DATE : Jan 29, 2014                                           **
**                                                                            **
*******************************************************************************/

/**
 * @file ANACMP01.h

 * @brief  This file contains Macros,local data structures,Enums and
 *         function prototypes for ANACMP01 APP.
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
 * 10-Sep-13    1.0.8    Added support for the following devices under 
 *                         XMC1200 and XMC1300 Series XMC1201, XMC1202, XMC1301  
 * 29-Jan-2014  1.0.10  1. C++ header support
 *
 */
/*******************************************************************************
**                      Author(s) Identity                                    **
********************************************************************************
**                                                                            **
** Initials     Name                                                          **
**  NL          App Developer                                                 **
**  SSAM        Sridhar Sampath                                               **
** ---------------------------------------------------------------------------**

*******************************************************************************/

#ifndef ANACMP01_H_
#define ANACMP01_H_

#ifdef __cplusplus
extern "C" {
#endif

/*******************************************************************************
 ** INCLUDE FILES                                                             **
 ******************************************************************************/

#include <DAVE3.h>

/*******************************************************************************
**                      Private Type Definitions                              **
*******************************************************************************/


/*****************************************************************************
 *                            Macros                                        **
 *****************************************************************************/

/** Event 0 Mask*/


/*******************************************************************************
**                 Function like macro definitions                            **
*******************************************************************************/

/*******************************************************************************
**                      Global Variable Definitions                           **
*******************************************************************************/

/**
 * @ingroup ANACMP01_publicparam
 * @{
 */

/**
 * This enumerates the Hysteresis mode type
 */
typedef enum ANACMP01_HysmodeType
{
    /**
     * Histerysis is off
     */
  ANACMP01_HYSOFF = 0,
  /**
     * Histerysis mode1 = 10mv
     */
  ANACMP01_HYS1_10mv = 1,
  
  /**
     * Histerysis mode2 = 15mv
     */
  ANACMP01_HYS1_15mv = 2,
  
  /**
     * Histerysis mode3 = 20mv
     */
  ANACMP01_HYS1_20mv = 3  
  
}ANACMP01_HysmodeType;


/**
 * This structure holds all the static configuration parameters of the analog
 * comparator APP.
 */
typedef struct ANACMP01_HandleType
{
/**
 * This decides whether to Enable the analog comparator after initialization
 */      
const uint8_t EnableAnaCmp;
/**
 * This decides whether to Invert output of the analog comparator after initialization
 */      
const uint8_t InvertOutputAnaCmp;
/**
 * This decides whether to disable the filter of the analog comparator after initialization*/      
const uint8_t DisableFilterAnaCmp;

/**
 * This tells whether to use HYS off or HYS1 or HYS2 or HYS3 mode
 */
const ANACMP01_HysmodeType Hysmodesel;

/**
 * This is the pointer to the slice registers structure of the anacmpx- x=0,1,2. 
 */
COMPARATOR_Type* const ANACMPSliceRegs0Ptr;

}ANACMP01_HandleType;

/**
 * @}
 */

/**
 * @ingroup ANACMP01_apidoc
 * @{
 */

/** Function prototypes*/

/**
 * @brief This function initializes the AnaCmp slice with the
 * configured parameters to give output signal for the supplied input signals.
 *
 * <b>Reentrancy:  Yes</b><BR>
 * <b>Sync/Async:  Synchronous</b><BR>
 * 
 *  * @code
 * #include <DAVE3.h>
 * int main(void)
 * {
 *    status_t Status; 
 *    DAVE_Init(); //ANACMP01_Init() is called within this function
 *    while(1);
 *    return 0;
 * }
 * @endcode
 */
void ANACMP01_Init(void);

/**
 * @ brief This function check the output status.
 * @param [in] HandlePtr pointer to the Instance variable<BR>
 * @return  status_t<BR>
 * DAVEApp_SUCCESS: if the function is successful.<BR>
 * <b>Reentrancy:  Yes</b><BR>
 * <b>Sync/Async:  Synchronous</b><BR>
 *
 * @code
 * #include <DAVE3.h>
 * int main(void)
 * {
 *    status_t Status; 
 *    DAVE_Init();
 *    Status = CheckAnacmpOutstatus((ANACMP01_HandleType*)&ANACMP01_Handle0);
 * }
 * @endcode
 */

uint8_t ANACMP01_CheckAnacmpOutstatus
(
    const ANACMP01_HandleType* HandlePtr
);

#include "ANACMP01_Conf.h"

/* Support for C++ codebase */
#ifdef __cplusplus
}
#endif

/**
 * @}
 */
#endif /* ANACMP01_H_ */
