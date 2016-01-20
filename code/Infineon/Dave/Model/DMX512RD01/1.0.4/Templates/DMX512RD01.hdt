/*CODE_BLOCK_BEGIN[DMX512RD01.h]*/
/******************************************************************************
 * @file     DMX512RD01.h
 * @brief    This file has prototypes, variable definitions for DMX512 stack
 * 
 * @version  V1.0.4
 * @date     06 Feb 2014
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
/*
 * *************************** Change history ********************************
 * V1.0.0, 26 Sep 2013, Initial Version
 * V1.0.2, 20 Jan 2014, CAPCOM dependency is reduced by removing MBTS and 
 * MBB checks
 * V1.0.4, 06 Feb 2014, New feature accurate break detection is provided
 */
 
 
 

#ifndef __DMX512RD01__
#define __DMX512RD01__

#ifdef __cplusplus
extern "C" {
#endif


#include <uc_id.h>

#if (__TARGET_DEVICE__ == XMC45)
#include <XMC4500.h>
#elif (__TARGET_DEVICE__ == XMC44)
#include <XMC4400.h>
#elif (__TARGET_DEVICE__ == XMC42)
#include <XMC4200.h>
#elif (__TARGET_DEVICE__ == XMC11)
#include <XMC1100.h>
#elif (__TARGET_DEVICE__ == XMC12)
#include <XMC1200.h>
#elif (__TARGET_DEVICE__ == XMC13)
#include <XMC1300.h>
#else
#error "Unsupported XMC family"
#endif


#ifdef DAVE_CE
#include "DMX512RD01_Conf.h"
#endif



/*******************************************************************************
**                      Private Type Definitions                              **
*******************************************************************************/

/*******************************************************************************
**                 Function like macro definitions                            **
*******************************************************************************/


/*****************************************************************************
 *                            Macros                                        **
 *****************************************************************************/


/*******************************************************************************
**                      Global Variable Definitions                           **
*******************************************************************************/
/**
* @ingroup DMX512RD01_datastructures
* @{
**/
/**
 * @brief This is a buffer containing DMX512 Data.
 * Size of array is based on the Number of Channels
 * */
extern uint32_t DMX512RD01_buffer[];
/**@}*/

/**
* @ingroup DMX512RD01_enumerations
* @{
**/
typedef enum{
	/**
	 * @brief DMX status Flags
	 * */
	DMX512RD01_SUCCESS = 0U,	 /*!<  No error */
    DMX512RD01_ERROR =  0xFFFFFFFFU, /*!<  Error */

}DMX512RD01_STAT;
/**@}*/


/**
* @ingroup DMX512RD01_datastructures
* @{
**/
/**
 * @brief References to Capture, Timer Base and Channel specific register set.
 * */
typedef struct {
	/** CMSIS defined structure for USIC module */
	USIC_CH_TypeDef* UsicRegPtr;
	/* CMSIS defined structure for Capture module */
	CCU4_GLOBAL_TypeDef * CaptureBasePtr; /* <! Capture Base Register pointer */
	CCU4_CC4_TypeDef * CaptureRegPtr; /* <! Capture Channel Register Pointer */
}DMX512RD01_HandleType;

/**@}*/
/*******************************************************************************
 **FUNCTION PROTOTYPES                                                        **
*******************************************************************************/
/**
* @ingroup DMX512RD01_apidoc
* @{
*/

/**
 * @brief This function initiates all hardware configurations needed to initiate
 * DMX512 slave reception. 
 *
 * @param[in] none
 * @return none
 *
 * <b>Reentrant: yes</b><BR>
 *
 * <b>Synchronous: yes</b><BR>
 * @code
 * @endcode
 **/
void DMX512RD01_Init(void);

#ifdef DMX512RD01_CALLBACK_DEFINED
/**
 * @brief This is a user defined function which is called after every BREAK detection.
 * User has to consider the timing constraints while using this API.
 *
 * @param[in] none
 * @return none
 *
 * <b>Reentrant: User Defined</b><BR>
 *
 * <b>Synchronous: NO</b><BR>
 * @code
 * @endcode
 **/
void DMX512RD01_CallBack(void);

#endif
/**
 * @brief A function to change the starting slot number from its default configuration.
 * This is a user defined function which should be called ONLY during BREAK condition.
 * User can include this call in user call Back . <b>DMX512RD01_callBack</b>.
 *
 * @param[in] none
 * @return none
 *
 * <b>Reentrant: User Defined</b><BR>
 *
 * <b>Synchronous: NO</b><BR>
 * @code
 * @endcode
 **/
DMX512RD01_STAT DMX512RD01_ConfigStartSlotNo(uint32_t slot_num);

#ifdef DAVE_CE
/* Include external references */
#include "DMX512RD01_Extern.h"
#endif   /*Externs.h*/


/**
 * @}
 */


#ifdef __cplusplus
}
#endif


 
#endif


/*CODE_BLOCK_END*/
