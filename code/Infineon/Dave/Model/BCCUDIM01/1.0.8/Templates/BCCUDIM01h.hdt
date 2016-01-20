/*CODE_BLOCK_BEGIN[BCCUDIM01.h]*/
/****************************************************************************
 * @file     BCCUDIM01.h
 * @brief    Configuration header file generated based on UI settings 
 *           of BCCUDIM01 App. It contains prototypes to all Dimming Engine 
 *           related drivers.
 * @version  V1.0.6
 * @date     12-Nov-13
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
 * V1.0.6   12-Nov-13     MISRA Checks done, Multiple inclusion of DAVE3.h 
 *                       removed, Extern.h added
 * *************************** Change history *********************************/


#ifndef _BCCUDIM01_
#define _BCCUDIM01_

#ifdef __cplusplus
extern "C" {
#endif

/*******************************************************************************
**                           Include Files                                    **
*******************************************************************************/
#include <uc_id.h>
#if (UC_SERIES == XMC13)
#include <XMC1300.h>
#elif (UC_SERIES == XMC12)
#include <XMC1200.h>
#elif (UC_SERIES == XMC11)
#include <XMC1100.h>
#endif

#include "../../inc/BCCUGLOBAL/BCCUGLOBAL.h"

/* Include App config file */
#ifdef DAVE_CE
#include "BCCUDIM01_Conf.h"
#endif /* Conf.h */

/*******************************************************************************
**                      Global Macro Definitions                              **
*******************************************************************************/

/*******************************************************************************
**                      Global Macro Definitions                              **
*******************************************************************************/

/*******************************************************************************
**                      Global Type Definitions                               **
*******************************************************************************/

/**
 * @ingroup BCCUDIM01_enumerations
 * @{
 */
typedef enum {
	BCCUDIM01_ENGINE0 = 0U, 
	BCCUDIM01_ENGINE1 = 1U,
	BCCUDIM01_ENGINE2 = 2U,
	BCCUDIM01_GLOBAL_ENGINE = 7U
} BCCUDIM01_NumType;

typedef enum {
	ENGINE_DS = 0U,	/* DISABLE */
	ENGINE_EN = 1U
} BCCUDIM01_EnableAtInitType;
 
typedef enum {
	DITHER_DS = 0U,
	DITHER_EN = 1U	/*Dithering is added to every dimming step 
                        if the dimming level is below 128; the coarse 
                        curve is used for the entire dimming range*/
}BCCUDIM01_DitherEnableType; 

typedef enum {
	COARSE_CURVE = 0U,
	FINE_CURVE = 1U
}BCCUDIM01_CurveSelectType;
 
/**
  * @}
  */
  
/**
 * @ingroup BCCUDIM01_datastructures
 * @{
 */
 
/* Data structure used during initialization - Contents received via GUI */
typedef struct DimEngineConfig{
	BCCU_Type * BCCURegs;	/* BCCU Global Register Pointer */
	BCCU_DE_Type * BCCU_DE_Regs;	/* Dimming Engine specific reisters */
	BCCUDIM01_NumType   DE_Num;	/* Dimming Engine number */
	BCCUDIM01_EnableAtInitType EnableAtStart;
	uint32_t DimDiv;	/* 9-bit entity , modifies DTTy.dimdiv*/
	BCCUDIM01_DitherEnableType DitherEnable; 
                /* When this is set to 1, curve is 
                automatically set to Fine, modifies DTTy.DTEN */
	BCCUDIM01_CurveSelectType CurveSel; /* modifies DTTy.CSEL */
	uint32_t  InitialLevel;	/* modifies DLyZ.TDLEV. Init 
                routine shall program DIMDIV to 0 for instant change*/
}BCCUDIM01_HandleType;
/**
  * @}
  */

/*******************************************************************************
** FUNCTION PROTOTYPES                                                        **
*******************************************************************************/
/**
 * @ingroup BCCUDIM01_apidoc
 * @{
 */
/** 
*@brief		Initiates the Dimming Engine by writing to the DEEN register.
*
* @return none.
* <BR><b>Reentrant: yes</b><BR>
* <b>Synchronous: yes</b><BR>
* @code
int main(void)
{

        uint32_t mask;


        DAVE_Init();			// BCCUDIM01_Enable() called by DAVE_Init()

        while(1)
        {
        }
}
* @endcode
*/
void BCCUDIM01_Init(void);

/**
* @brief	Enable dimming Engine. 
*           Multiple engines can be started by ORing the Engine masks
*		    00000 => None, 00001 => DE0, 00010 => DE2, 00100=> DE3.
*		    eg: to enable DE0 and DE3 mask= 00101
*		    modifies DESTRCON.DEEN 
* @param[in] handle Instance object handle       
* @param[in] EngineMask channel mask
* @return none.<BR>
* <BR><b>Reentrant: yes</b><BR>
* <b>Synchronous: yes</b><BR>
* @code
*
int main(void)
{

        uint32_t mask;


        DAVE_Init();			// Initialization of DAVE Apps


        mask = ( GET_CHANNEL_DIM_MASK(3)
                        | GET_CHANNEL_DIM_MASK(4)
                        | GET_CHANNEL_DIM_MASK(5)
                        | GET_CHANNEL_DIM_MASK(6)
                        | GET_CHANNEL_DIM_MASK(1)
                        | GET_CHANNEL_DIM_MASK(2)
                );

        Lamphandle.LinearWalkPrescaler = 0;

        BCCUCH01_Disable(&BCCUGlobal_Handle0, mask); // Disable unused channels

        while(1)
        {
        }
}
*
* @endcode
*/
extern void BCCUDIM01_Enable(const BCCUDIM01_HandleType * handle, 
    uint32_t EngineMask);

    
/**
* @brief	Disable dimming Engine. 
*           Multiple engines can be started by ORing the Engine masks
*		    00000 => None, 00001 => DE0, 00010 => DE2, 00100=> DE3.
*		    eg: to enable DE0 and DE3 mask= 00101
*		    modifies DESTRCON.DEEN 
* @param[in] handle Instance object handle       
* @param[in] EngineMask channel mask
* @return none
* <BR><b>Reentrant: yes</b><BR>
* <b>Synchronous: yes</b><BR>
* @code
int main(void)
{

        uint32_t mask;

        COLORLAMP01_ColorHandleType Lamphandle;

        DAVE_Init();			// Initialization of DAVE Apps


        mask = ( GET_CHANNEL_DIM_MASK(3)
                        | GET_CHANNEL_DIM_MASK(4)
                        | GET_CHANNEL_DIM_MASK(5)
                        | GET_CHANNEL_DIM_MASK(6)
                        | GET_CHANNEL_DIM_MASK(1)
                        | GET_CHANNEL_DIM_MASK(2)
                );

        Lamphandle.LinearWalkPrescaler = 0;

        BCCUCH01_Disable(&BCCUGlobal_Handle0, mask); // Disable unused channels 

        while(1)
        {
        }
}
*
* @endcode
*/
extern void BCCUDIM01_Disable(const BCCUDIM01_HandleType * handle, 
    uint32_t EngineMask);
/**
* @brief	Starts dimming. 
*               Multiple engines can be started by ORing the Engine masks
*		00000 => None, 00001 => DE0, 00010 => DE2, 00100=> DE3.
*		eg: to enable DE0 and DE3 mask= 00101
*		modifies DESTRCON.DEzS 
* @param[in] handle Instance object handle       
* @param[in] EngineMask channel mask
* @return none
* <BR><b>Reentrant: yes</b><BR>
* <b>Synchronous: yes</b><BR>
* @code
#define LINEAR_WALK_PRESCALER 684
int main(void)
{
	DAVE_Init();			// Initialization of DAVE Apps

    //  Linear Walk Time: 7sec
    BCCUCH01_SetLinearWalkPrescaler(&BCCUCH01_Handle0, LINEAR_WALK_PRESCALER);
 
	while(1)
	{
        // Set Target Level 12.5%
        BCCUDIM01_SetDimLvl(&BCCUDIM01_Handle0, 512);
        // Start Dimming
        BCCUDIM01_StartDimming(&BCCUDIM01_Handle0,
            GET_CHANNEL_DIM_MASK(BCCUDIM01_Handle0.DE_Num));
        // Wait for Completion
        BCCUDIM01_AwaitFadeCompletion(&BCCUDIM01_Handle0);

        // Change Color to Red
        BCCUCH01_SetIntensity(&BCCUCH01_Handle0, 4095);
        BCCUCH01_StartLinearWalk(&BCCUGlobal_Handle0, 
            GET_CHANNEL_DIM_MASK(BCCUDIM01_Handle0.DE_Num));
        // Wait for All Channels to Complete Linear Walk
        BCCUCH01_AwaitEndOfWalk(&BCCUCH01_Handle0);
        // Wait for All Channels to Complete Linear Walk
        BCCUCH01_AwaitEndOfWalk(&BCCUCH01_Handle0);

        // Set Target Level to 0%
        BCCUDIM01_SetDimLvl(&BCCUDIM01_Handle0, 0);
        // Start Dimming
        BCCUDIM01_StartDimming(&BCCUDIM01_Handle0, GET_CHANNEL_DIM_MASK(BCCUDIM01_Handle0.DE_Num));
        // Wait for Completion
        BCCUDIM01_AwaitFadeCompletion(&BCCUDIM01_Handle0);

        BCCUDIM01_AbortDimming(&BCCUDIM01_Handle0, GET_CHANNEL_DIM_MASK(BCCUDIM01_Handle0.DE_Num));
	}
	return 0;
}
* @endcode
*/

extern void BCCUDIM01_StartDimming(const BCCUDIM01_HandleType * handle, 
    uint32_t EngineMask);

/**
* @brief	Aborts dimming. 
*               Multiple engines can be Aborted by ORing the Engine masks
*		00000 => None, 00001 => DE0, 00010 => DE2, 00100=> DE3.
*		eg: to stop DE0 and DE3, mask= 00101
*		modifies DESTRCON.DEzA 
* @param[in] handle Instance object handle       
* @param[in] EngineMask channel mask
* @return none
* <BR><b>Reentrant: yes</b><BR>
* <b>Synchronous: yes</b><BR>
* @code

#define LINEAR_WALK_PRESCALER 684
int main(void)
{
	DAVE_Init();			// Initialization of DAVE Apps

    //  Linear Walk Time: 7sec
    BCCUCH01_SetLinearWalkPrescaler(&BCCUCH01_Handle0, LINEAR_WALK_PRESCALER);
 
	while(1)
	{
        // Set Target Level 12.5%
        BCCUDIM01_SetDimLvl(&BCCUDIM01_Handle0, 512);
        // Start Dimming
        BCCUDIM01_StartDimming(&BCCUDIM01_Handle0,
            GET_CHANNEL_DIM_MASK(BCCUDIM01_Handle0.DE_Num));
        // Wait for Completion
        BCCUDIM01_AwaitFadeCompletion(&BCCUDIM01_Handle0);

        // Change Color to Red
        BCCUCH01_SetIntensity(&BCCUCH01_Handle0, 4095);
        BCCUCH01_StartLinearWalk(&BCCUGlobal_Handle0, 
            GET_CHANNEL_DIM_MASK(BCCUDIM01_Handle0.DE_Num));
        // Wait for All Channels to Complete Linear Walk
        BCCUCH01_AwaitEndOfWalk(&BCCUCH01_Handle0);
        // Wait for All Channels to Complete Linear Walk
        BCCUCH01_AwaitEndOfWalk(&BCCUCH01_Handle0);

        // Set Target Level to 0%
        BCCUDIM01_SetDimLvl(&BCCUDIM01_Handle0, 0);
        // Start Dimming
        BCCUDIM01_StartDimming(&BCCUDIM01_Handle0, GET_CHANNEL_DIM_MASK(BCCUDIM01_Handle0.DE_Num));
        // Wait for Completion
        BCCUDIM01_AwaitFadeCompletion(&BCCUDIM01_Handle0);

        BCCUDIM01_AbortDimming(&BCCUDIM01_Handle0, GET_CHANNEL_DIM_MASK(BCCUDIM01_Handle0.DE_Num));
	}
	return 0;
}
* @endcode
*/
extern void BCCUDIM01_AbortDimming(const BCCUDIM01_HandleType * handle, 
    uint32_t EngineMask);

/**
* @brief 	Set the target dimming level. write to shadow register
*		modifies DLzS.DLS
* @param[in] handle Instance object handle       
* @param[in] DimLevel The integer value to which Dimming level has to be set to after Shadow transfer.
* @return none
* <BR><b>Reentrant: yes</b><BR>
* <b>Synchronous: yes</b><BR>
* @code
#define LINEAR_WALK_PRESCALER 684
int main(void)
{
	DAVE_Init();			// Initialization of DAVE Apps

    //  Linear Walk Time: 7sec
    BCCUCH01_SetLinearWalkPrescaler(&BCCUCH01_Handle0, LINEAR_WALK_PRESCALER);
 
	while(1)
	{
        // Set Target Level 12.5%
        BCCUDIM01_SetDimLvl(&BCCUDIM01_Handle0, 512);
        // Start Dimming
        BCCUDIM01_StartDimming(&BCCUDIM01_Handle0,
            GET_CHANNEL_DIM_MASK(BCCUDIM01_Handle0.DE_Num));
        // Wait for Completion
        BCCUDIM01_AwaitFadeCompletion(&BCCUDIM01_Handle0);

        // Change Color to Red
        BCCUCH01_SetIntensity(&BCCUCH01_Handle0, 4095);
        BCCUCH01_StartLinearWalk(&BCCUGlobal_Handle0, 
            GET_CHANNEL_DIM_MASK(BCCUDIM01_Handle0.DE_Num));
        // Wait for All Channels to Complete Linear Walk
        BCCUCH01_AwaitEndOfWalk(&BCCUCH01_Handle0);
        // Wait for All Channels to Complete Linear Walk
        BCCUCH01_AwaitEndOfWalk(&BCCUCH01_Handle0);

        // Set Target Level to 0%
        BCCUDIM01_SetDimLvl(&BCCUDIM01_Handle0, 0);
        // Start Dimming
        BCCUDIM01_StartDimming(&BCCUDIM01_Handle0, GET_CHANNEL_DIM_MASK(BCCUDIM01_Handle0.DE_Num));
        // Wait for Completion
        BCCUDIM01_AwaitFadeCompletion(&BCCUDIM01_Handle0);

        BCCUDIM01_AbortDimming(&BCCUDIM01_Handle0, GET_CHANNEL_DIM_MASK(BCCUDIM01_Handle0.DE_Num));
	}
	return 0;
}
* @endcode
*/
extern void BCCUDIM01_SetDimLvl(const BCCUDIM01_HandleType * handle, uint32_t DimLevel);

/**
* @brief 	Read the Current dimming level. 
*		Reads DLz.DL
* @param[in] handle Instance object handle       
* @return Current dimming level of dimming engine.
* <BR><b>Reentrant: yes</b><BR>
* <b>Synchronous: yes</b><BR>
* @code
#define LINEAR_WALK_PRESCALER 684
int main(void)
{
    uint32_t perv_dim_lvl = 0;  //previous dimming level
	DAVE_Init();			// Initialization of DAVE Apps

    //  Linear Walk Time: 7sec
    BCCUCH01_SetLinearWalkPrescaler(&BCCUCH01_Handle0, LINEAR_WALK_PRESCALER);
 
	while(1)
	{
        // Set Target Level 12.5%
        BCCUDIM01_SetDimLvl(&BCCUDIM01_Handle0, 512);
        // Start Dimming
        BCCUDIM01_StartDimming(&BCCUDIM01_Handle0,
            GET_CHANNEL_DIM_MASK(BCCUDIM01_Handle0.DE_Num));
        // Wait for Completion
        BCCUDIM01_AwaitFadeCompletion(&BCCUDIM01_Handle0);

        // Change Color to Red
        BCCUCH01_SetIntensity(&BCCUCH01_Handle0, 4095);
        BCCUCH01_StartLinearWalk(&BCCUGlobal_Handle0, 
            GET_CHANNEL_DIM_MASK(BCCUDIM01_Handle0.DE_Num));
        // Wait for All Channels to Complete Linear Walk
        BCCUCH01_AwaitEndOfWalk(&BCCUCH01_Handle0);
        // Wait for All Channels to Complete Linear Walk
        BCCUCH01_AwaitEndOfWalk(&BCCUCH01_Handle0);

        // Set Target Level to 0%
        BCCUDIM01_SetDimLvl(&BCCUDIM01_Handle0, 0);
        // Start Dimming
        BCCUDIM01_StartDimming(&BCCUDIM01_Handle0, GET_CHANNEL_DIM_MASK(BCCUDIM01_Handle0.DE_Num));
        // Wait for Completion
        BCCUDIM01_AwaitFadeCompletion(&BCCUDIM01_Handle0);
        perv_dim_lvl = BCCUDIM01_GetDimLvl(&BCCUDIM01_Handle0);
        BCCUDIM01_AbortDimming(&BCCUDIM01_Handle0, GET_CHANNEL_DIM_MASK(BCCUDIM01_Handle0.DE_Num));
	}
	return 0;
}
* @endcode
*/
extern uint32_t BCCUDIM01_GetDimLvl(const BCCUDIM01_HandleType * handle);

/**
* @brief    Get the Dimming Curve selected. Reads DTT.DTT, returns 0 for coarse 
*           curve and 1 for fine curve
* @param[in] handle Instance object handle       
* @return Current dimming level of dimming engine.
* <BR><b>Reentrant: yes</b><BR>
* <b>Synchronous: yes</b><BR>
* @code
#define LINEAR_WALK_PRESCALER 684
int main(void)
{
    uint32_t curve = 0;  //curve selected

	DAVE_Init();			// Initialization of DAVE Apps

//      Linear Walk Time: 7sec
    BCCUCH01_SetLinearWalkPrescaler(&BCCUCH01_Handle0, LINEAR_WALK_PRESCALER); 
	while(1)
	{
        // Set Target Level 12.5%
        BCCUDIM01_SetDimLvl(&BCCUDIM01_Handle0, 512);
        // Start Dimming
        BCCUDIM01_StartDimming(&BCCUDIM01_Handle0,
            GET_CHANNEL_DIM_MASK(BCCUDIM01_Handle0.DE_Num));
        // Wait for Completion
        BCCUDIM01_AwaitFadeCompletion(&BCCUDIM01_Handle0);        
        
        curve = BCCUDIM01_GetDimCurve(&BCCUCH01_Handle0);
        switch (curve)
        {   //changing curves...
        case COARSE_CURVE:
            BCCUDIM01_SetDimCurve(&BCCUCH01_Handle0, FINE_CURVE);
            break;
            
        case FINE_CURVE:
            BCCUDIM01_SetDimCurve(&BCCUCH01_Handle0, COARSE_CURVE);
            break;
        }       
        
        BCCUDIM01_SetDimLvl(&BCCUDIM01_Handle0, 512);
        // Start Dimming
        BCCUDIM01_StartDimming(&BCCUDIM01_Handle0,
            GET_CHANNEL_DIM_MASK(BCCUDIM01_Handle0.DE_Num));
        // Wait for Completion
        BCCUDIM01_AwaitFadeCompletion(&BCCUDIM01_Handle0);        
        
    }
	return 0;
}
* @endcode
*/
extern uint32_t  BCCUDIM01_GetDimCurve(const BCCUDIM01_HandleType * handle);

/**
* @brief Change the Current dimming Curve Selection. Writes DLz.DTT
* @param[in] handle Instance object handle       
* @param[in] Curve Selected
* @return Current dimming level of dimming engine.
* <BR><b>Reentrant: yes</b><BR>
* <b>Synchronous: yes</b><BR>
* @code
#define LINEAR_WALK_PRESCALER 684
int main(void)
{
    uint32_t curve = 0;  //curve selected

	DAVE_Init();			// Initialization of DAVE Apps

//      Linear Walk Time: 7sec
    BCCUCH01_SetLinearWalkPrescaler(&BCCUCH01_Handle0, LINEAR_WALK_PRESCALER); 
	while(1)
	{
        // Set Target Level 12.5%
        BCCUDIM01_SetDimLvl(&BCCUDIM01_Handle0, 512);
        // Start Dimming
        BCCUDIM01_StartDimming(&BCCUDIM01_Handle0,
            GET_CHANNEL_DIM_MASK(BCCUDIM01_Handle0.DE_Num));
        // Wait for Completion
        BCCUDIM01_AwaitFadeCompletion(&BCCUDIM01_Handle0);        
        
        curve = BCCUDIM01_GetDimCurve(&BCCUCH01_Handle0);
        switch (curve)
        {   //changing curves...
        case COARSE_CURVE:
            BCCUDIM01_SetDimCurve(&BCCUCH01_Handle0, FINE_CURVE);
            break;
            
        case FINE_CURVE:
            BCCUDIM01_SetDimCurve(&BCCUCH01_Handle0, COARSE_CURVE);
            break;
        }       
        
        BCCUDIM01_SetDimLvl(&BCCUDIM01_Handle0, 512);
        // Start Dimming
        BCCUDIM01_StartDimming(&BCCUDIM01_Handle0,
            GET_CHANNEL_DIM_MASK(BCCUDIM01_Handle0.DE_Num));
        // Wait for Completion
        BCCUDIM01_AwaitFadeCompletion(&BCCUDIM01_Handle0);        
        
    }
	return 0;
}
* @endcode
*/
extern void BCCUDIM01_SetDimCurve(const BCCUDIM01_HandleType * handle, uint32_t Curve);
        
/**
* @brief 	Enables the Dithering Function 
*		Writes to DTTz.DTEN. when dither is enabled,
*		Dithering is added to every dimming step if the
*		dimming level is below 128; the coarse curve is
*		used for the entire dimming range
* @param[in] handle Instance object handle
* @return Current dimming level of dimming engine.
* <BR><b>Reentrant: yes</b><BR>
* <b>Synchronous: yes</b><BR>
* @code
#define LINEAR_WALK_PRESCALER 684
int main(void)
{
    uint32_t dit = 0;  //dither selection

	DAVE_Init();			// Initialization of DAVE Apps

    //  Linear Walk Time: 7sec
    BCCUCH01_SetLinearWalkPrescaler(&BCCUCH01_Handle0, LINEAR_WALK_PRESCALER);
	while(1)
	{
      //   Set Target Level 12.5%
        BCCUDIM01_SetDimLvl(&BCCUDIM01_Handle0, 512);
         //Start Dimming
        BCCUDIM01_StartDimming(&BCCUDIM01_Handle0,
            GET_CHANNEL_DIM_MASK(BCCUDIM01_Handle0.DE_Num));
        // Wait for Completion
        BCCUDIM01_AwaitFadeCompletion(&BCCUDIM01_Handle0);

        dit = BCCUDIM01_GetDimCurve(&BCCUCH01_Handle0);
        switch (dit)
        {   //Toggling dither function...
        case DITHER_DS:
            BCCUDIM01_DitherEnable(&BCCUCH01_Handle0);
            break;

        case DITHER_EN:
            BCCUDIM01_DitherDisable(&BCCUCH01_Handle0);
            break;
        }

        BCCUDIM01_SetDimLvl(&BCCUDIM01_Handle0, 512);
         //Start Dimming
        BCCUDIM01_StartDimming(&BCCUDIM01_Handle0,
            GET_CHANNEL_DIM_MASK(BCCUDIM01_Handle0.DE_Num));
        // Wait for Completion
        BCCUDIM01_AwaitFadeCompletion(&BCCUDIM01_Handle0);
    }
	return 0;
}
* @endcode
* */
extern void BCCUDIM01_DitherEnable(const BCCUDIM01_HandleType * handle);

/**
* @brief 	Disables the Dithering Function 
*		Writes to DTTz.DTEN.
* @param[in] handle Instance object handle
* @return Current dimming level of dimming engine.
* <BR><b>Reentrant: yes</b><BR>
* <b>Synchronous: yes</b><BR>
* @code
#define LINEAR_WALK_PRESCALER 684
int main(void)
{
    uint32_t dit = 0;  //dither selection

	DAVE_Init();			// Initialization of DAVE Apps

    //  Linear Walk Time: 7sec
    BCCUCH01_SetLinearWalkPrescaler(&BCCUCH01_Handle0, LINEAR_WALK_PRESCALER);
	while(1)
	{
      //   Set Target Level 12.5%
        BCCUDIM01_SetDimLvl(&BCCUDIM01_Handle0, 512);
         //Start Dimming
        BCCUDIM01_StartDimming(&BCCUDIM01_Handle0,
            GET_CHANNEL_DIM_MASK(BCCUDIM01_Handle0.DE_Num));
        // Wait for Completion
        BCCUDIM01_AwaitFadeCompletion(&BCCUDIM01_Handle0);

        dit = BCCUDIM01_GetDimCurve(&BCCUCH01_Handle0);
        switch (dit)
        {   //Toggling dither function...
        case DITHER_DS:
            BCCUDIM01_DitherEnable(&BCCUCH01_Handle0);
            break;

        case DITHER_EN:
            BCCUDIM01_DitherDisable(&BCCUCH01_Handle0);
            break;
        }

        BCCUDIM01_SetDimLvl(&BCCUDIM01_Handle0, 512);
         //Start Dimming
        BCCUDIM01_StartDimming(&BCCUDIM01_Handle0,
            GET_CHANNEL_DIM_MASK(BCCUDIM01_Handle0.DE_Num));
        // Wait for Completion
        BCCUDIM01_AwaitFadeCompletion(&BCCUDIM01_Handle0);
    }
	return 0;
}
* @endcode
* */
extern void BCCUDIM01_DitherDisable(const BCCUDIM01_HandleType * handle);

/**
* @brief 	Read the status of DESTRCON.DEzs 
*		returns 1 if transition is in process.
*		returns 0 if transition is complete. 
*		Hardware clears the bit when dimming process completes.
* @param[in] handle Instance object handle
* @return Current dimming level of dimming engine.
* <BR><b>Reentrant: yes</b><BR>
* <b>Synchronous: yes</b><BR>
* @code
#define LINEAR_WALK_PRESCALER 684
int main(void)
{
    uint32_t dit = 0;  //dither selection

	DAVE_Init();			// Initialization of DAVE Apps

    //  Linear Walk Time: 7sec
    BCCUCH01_SetLinearWalkPrescaler(&BCCUCH01_Handle0, LINEAR_WALK_PRESCALER);
	while(1)
	{
      //   Set Target Level 12.5%
        BCCUDIM01_SetDimLvl(&BCCUDIM01_Handle0, 512);
         //Start Dimming
        BCCUDIM01_StartDimming(&BCCUDIM01_Handle0,
            GET_CHANNEL_DIM_MASK(BCCUDIM01_Handle0.DE_Num));
        // Wait for Completion
        BCCUDIM01_AwaitFadeCompletion(&BCCUDIM01_Handle0);

        dit = BCCUDIM01_GetDimCurve(&BCCUCH01_Handle0);
        switch (dit)
        {   //Toggling dither function...
        case DITHER_DS:
            BCCUDIM01_DitherEnable(&BCCUCH01_Handle0);
            break;

        case DITHER_EN:
            BCCUDIM01_DitherDisable(&BCCUCH01_Handle0);
            break;
        }

        BCCUDIM01_SetDimLvl(&BCCUDIM01_Handle0, 512);
         //Start Dimming
        BCCUDIM01_StartDimming(&BCCUDIM01_Handle0,
            GET_CHANNEL_DIM_MASK(BCCUDIM01_Handle0.DE_Num));
        // Wait for Completion
        BCCUDIM01_AwaitFadeCompletion(&BCCUDIM01_Handle0);//calls BCCUDIM01_FadeCompletionStatus internally
    }
	return 0;
}
* @endcode
*/
extern uint32_t BCCUDIM01_FadeCompletionStatus(const BCCUDIM01_HandleType * handle);

/**
* @brief 	Polls for DESTRCON.DEzs to clear, i.e. 
*               completion of dimming process
*		returns after Dimming is complete
* @param[in] handle Instance object handle
* @return Current dimming level of dimming engine.
* <BR><b>Reentrant: yes</b><BR>
* <b>Synchronous: yes</b><BR>
* @code
#define LINEAR_WALK_PRESCALER 684
int main(void)
{
    uint32_t dit = 0;  //dither selection

	DAVE_Init();			// Initialization of DAVE Apps

    //  Linear Walk Time: 7sec
    BCCUCH01_SetLinearWalkPrescaler(&BCCUCH01_Handle0, LINEAR_WALK_PRESCALER);
	while(1)
	{
      //   Set Target Level 12.5%
        BCCUDIM01_SetDimLvl(&BCCUDIM01_Handle0, 512);
         //Start Dimming
        BCCUDIM01_StartDimming(&BCCUDIM01_Handle0,
            GET_CHANNEL_DIM_MASK(BCCUDIM01_Handle0.DE_Num));
        // Wait for Completion
        BCCUDIM01_AwaitFadeCompletion(&BCCUDIM01_Handle0);

        dit = BCCUDIM01_GetDimCurve(&BCCUCH01_Handle0);
        switch (dit)
        {   //Toggling dither function...
        case DITHER_DS:
            BCCUDIM01_DitherEnable(&BCCUCH01_Handle0);
            break;

        case DITHER_EN:
            BCCUDIM01_DitherDisable(&BCCUCH01_Handle0);
            break;
        }

        BCCUDIM01_SetDimLvl(&BCCUDIM01_Handle0, 512);
         //Start Dimming
        BCCUDIM01_StartDimming(&BCCUDIM01_Handle0,
            GET_CHANNEL_DIM_MASK(BCCUDIM01_Handle0.DE_Num));
        // Wait for Completion
        BCCUDIM01_AwaitFadeCompletion(&BCCUDIM01_Handle0);//calls BCCUDIM01_FadeCompletionStatus internally
    }
	return 0;
}
* @endcode
*/
extern void BCCUDIM01_AwaitFadeCompletion(const BCCUDIM01_HandleType * handle);

/**
*@brief 	Writes to DTTz.DIVDIV field which divides the DCLK.
*		BCCU_dclk is prescaled according to this value to
*		generate the dimming clock; this value can be used
*		to adjust the fade rate of the dimming engine. If this
*		value is 0, then the dimming level will become the
*		same as the target dimming level on shadow transfer
*		and the dimming engine is bypassed.
* @param[in] handle Instance object handle
* @param[in] DimDiv integer Value of the DCLK divider
* @return None.
* <BR><b>Reentrant: yes</b><BR>
* <b>Synchronous: yes</b><BR>
* @code
* @endcode
*/
extern void BCCUDIM01_SetDimDiv(const BCCUDIM01_HandleType * handle, uint32_t DimDiv);

/**
* @brief 	Reads from DTTz.DIVDIV field
*		BCCU_dclk is prescaled according to this value to
*		generate the dimming clock; this value is used
*		to adjust the fade rate of the dimming engine. If this
*		value is 0, then the dimming level will become the
*		same as the target dimming level on shadow transfer
*		and the dimming engine is bypassed.
*
* @param[in] handle Instance object handle
* @return DimDiv integer Value of the DCLK divider
* <BR><b>Reentrant: yes</b><BR>
* <b>Synchronous: yes</b><BR>
* @code
* @endcode
*/
extern uint32_t BCCUDIM01_GetDimDiv(const BCCUDIM01_HandleType * handle);



#ifdef DAVE_CE
/* Include external references */
#include "BCCUDIM01_Extern.h"
#endif   /*Externs.h*/


#ifdef __cplusplus
}
#endif /*  C++*/


#endif /* _BCCUDIM01_ */
/**
  * @}
  */
 /*CODE_BLOCK_END*/
