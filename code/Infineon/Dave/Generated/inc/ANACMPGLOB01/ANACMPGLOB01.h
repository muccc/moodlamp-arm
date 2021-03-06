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
** PLATFORM : Infineon XMC1000 Series                      			          **
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
 * @file ANACMPGLOB01.h

 * @brief  This file contains Macros,local data structures,Enums and
 *         function prototypes for ANACMPGLOB01 APP.
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
 * 29-Jan-2014  1.0.10  1. C++ header support
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

#ifndef ANACMPGLOB01_H_
#define ANACMPGLOB01_H_

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
 * @ingroup ANACMPGLOB01_publicparam
 * @{
 */

/**
 * This enumerates the power mode type
 */
typedef enum ANACMP01_PowermodeType
{
    /**
     * High power mode
     */
  ANACMP01_HIGHPOWERMODE = 0,
  /**
   * Low power mode
   */
  ANACMP01_LOWPOWERMODE
}ANACMP01_PowermodeType;




/**
 * This structure holds all the static configuration parameters of the analog
 * comparator APP.
 */
typedef struct ANACMPGLOB01_HandleType
{
/**
 * This tells whether to use high power mode or low power mode 
 */
const ANACMP01_PowermodeType Powermode;

/**
 * This is the pointer to the slice registers structure of the first anacmp0 slice
 */
COMPARATOR_Type* const ANACMPGlobRegs0Ptr;

}ANACMPGLOB01_HandleType;

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
 *    DAVE_Init(); //ANACMPGLOB01_Init() is called within this function
 *    while(1);
 *    return 0;
 * }
 * @endcode
 */
void ANACMPGLOB01_Init(void);

#include "ANACMPGLOB01_Conf.h"

/* Support for C++ codebase */
#ifdef __cplusplus
}
#endif

/**
 * @}
 */

/*CODE_BLOCK_END*/
#endif /* ANACMPGLOB01_H_ */