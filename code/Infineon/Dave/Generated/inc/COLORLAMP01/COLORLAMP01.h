/*******************************************************************************
**  DAVE App Name : COLORLAMP01       App Version: 1.0.7               
**  This file is generated by DAVE, User modification to this file will be    **
**  overwritten at the next code generation.                                  **
*******************************************************************************/

  
/*CODE_BLOCK_BEGIN[COLORLAMP01.h]*/

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
** PLATFORM : Infineon XMC4000 Series                                         **
**                                                                            **
** COMPILER : Compiler Independent                                            **
**                                                                            **
** AUTHOR   : App Developer                                                   **
**                                                                            **
** MAY BE CHANGED BY USER [Yes/No]: Yes                                       **
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
** ES          App Developer                                                  **
*******************************************************************************/

/**
 * @file COLORLAMP01.h
 *
 * @brief  Header file for COLORLAMP01 App
 */
/*
 * Revision History
 * 14 Feb  2013 v1.0.0  Initial Version.
 * 03 Apr  2013 v1.0.2  UTP AI00164659: unable to compile the code w Global 
 *                      Dimming configuration is fixed.
 * 26 Sep  2013 v1.0.4  Added support for XMC1202 device.
 * 06 Dec  2013 v1.0.5  Changes related to LIGHTINGSYS01 has taken care.
 */

#ifndef _COLORLAMP01_H_
#define _COLORLAMP01_H_

#ifdef __cplusplus
extern "C" {
#endif

/*******************************************************************************
**                           Include Files                                    **
*******************************************************************************/

#include "../../inc/BCCUDIM01/BCCUDIM01.h" 
#include <DAVE3.h>

/*******************************************************************************
**                      Global Macro Definitions                              **
*******************************************************************************/
/**
 * @ingroup COLORLAMP01_apidoc
 * @{
 */
/**
 * @brief This macro defines any one of COLORLAMP01 App instance uses BCCUDIM01
 * App. This is used in COLORLAMP01_ConfigHandleType data structure and 
 * COLORLAMP01_SetDimLevelExponential API.
 */
#define DIMAPP_USEDBY_COLORLAMP01 1U    

/**
 * @}
 */
/*******************************************************************************
**                      Global Type Definitions                               **
*******************************************************************************/
/**
 * @ingroup COLORLAMP01_publicparam
 * @{
 */

/**
 * @brief This data type describes COLORLAMP01 App instance configuration 
 * handle details
 */
typedef struct COLORLAMP01_Config
{
	/**
	 * Pointer to Red Color Channel handle
	 */
  const BCCUCH01_HandleType *ChannelRed;
	/**
	 * Pointer to Green Color Channel handle
	 */
  const BCCUCH01_HandleType *ChannelGreen;
	/**
	 * Pointer to Blue Color Channel handle
	 */
  const BCCUCH01_HandleType *ChannelBlue;
	/**
	 * Pointer to White Color Channel handle
	 */
  const BCCUCH01_HandleType *ChannelWhite;
	/**
	 * Pointer to Amber Color Channel handle
	 */
  const BCCUCH01_HandleType *ChannelAmber;
	/**
	 * Pointer to Free Color Channel handle
	 */
  const BCCUCH01_HandleType *ChannelFree;
	/**
	 * Channel Mask for Mapped Channels by Solver
	 */
  const uint32_t ChannelMask;
	/**
	 * Pointer to Dimming Engine handle
	 */
#ifdef DIMAPP_USEDBY_COLORLAMP01
  const BCCUDIM01_HandleType   *DimEngine;
#endif
	/**
	 * Pointer to BCCU Global handle
	 */
  const BCCUGlobal_HandleType  *BCCUGlobal;

}COLORLAMP01_ConfigHandleType;

/**
 * @brief This data type describes COLORLAMP01 App instance Color Intensity 
 * handle details
 */
typedef struct COLORLAMP01_Color
{
	/**
	 * Target Intensity to Red Color Channel
	 */
  uint32_t Intensity_Red;
	/**
	 * Target Intensity to Green Color Channel
	 */
  uint32_t Intensity_Green;
	/**
	 * Target Intensity to Blue Color Channel
	 */
  uint32_t Intensity_Blue;
	/**
	 * Target Intensity to White Color Channel
	 */
  uint32_t Intensity_White;
	/**
	 * Target Intensity to Amber Color Channel
	 */
  uint32_t Intensity_Amber;
	/**
	 * Target Intensity to Free Color Channel
	 */
  uint32_t Intensity_Free;
	/**
	 * Target Liner Walk Time Prescaler Value to All Mapped Channels
	 */
  uint32_t LinearWalkPrescaler;

} COLORLAMP01_ColorHandleType;
/**
 * @}
 */

/*******************************************************************************
**                      Global Constant Declarations                          **
*******************************************************************************/

/*******************************************************************************
**                      Extern Variables                                      **
*******************************************************************************/

/*******************************************************************************
** FUNCTION PROTOTYPES                                                        **
*******************************************************************************/
/**
 * @ingroup COLORLAMP01_apidoc
 * @{
 */
/**
 * @brief
 *
 * @return     None
 *
 * <b>Reentrant: NO </b><BR>
 * <b>Sync/Async:  Synchronous</b>
 * <BR><P ALIGN="LEFT"><B>Example:</B>
 * <BR><I><b>COLORLAMP01_ConfigHandle0</b></I> is a global structure of type
 * COLORLAMP01_ConfigHandleType which will be configured in COLORLAMP01_Conf.c file
 * using UI parameters.
 * @code
 *  #include <DAVE3.h>
 *
 *  int main(void)
 *  {
 *	  // ... Initializes Apps configurations ...
 *    DAVE_Init(); // COLORLAMP01_Init() will be called inside DAVE_Init()
 *    while(1)
 *    {
 *
 *    }
 * }
 * @endcode<BR> </p>
 *
 */
void COLORLAMP01_Init(void);

/**
 * @brief Function which enables the mapped channels by solver at run time.
 *
 *
 * @param[in]  Handle COLORLAMP01 Config handle
 *
 * @return     None
 *
 * <b>Reentrant: NO </b><BR>
 *
 * <BR><P ALIGN="LEFT"><B>Example:</B>
 * <BR><I><b>COLORLAMP01_ConfigHandle0</b></I> is a global configuration
 * structure of type COLORLAMP01_ConfigHandleType which will be configured 
 * based on mapped channel instances by solver
 * @code
 *  #include <DAVE3.h>
 *
 *  int main(void)
 *  {
 *    // ... Initializes Apps configurations ...
 *    DAVE_Init();
 *    // ... Enables Mapped Channels by Solver ... 
 *    COLORLAMP01_Enable(&COLORLAMP01_ConfigHandle0);
 *    // ... infinite loop ...
 *    while(1)
 *    {
 *
 *    }
 *  }
 * @endcode<BR> </p>
 *
 */
void COLORLAMP01_Enable(const COLORLAMP01_ConfigHandleType *Handle);

/**
 * @brief Function which disables the mapped channels by solver at run time.
 *
 *
 * @param[in]  Handle COLORLAMP01 Config handle
 *
 * @return     None
 *
 * <b>Reentrant: NO </b><BR>
 *
 * <BR><P ALIGN="LEFT"><B>Example:</B>
 * <BR><I><b>COLORLAMP01_ConfigHandle0</b></I> is a global configuration
 * structure of type COLORLAMP01_ConfigHandleType which will be configured 
 * based on mapped channel instances by solver
 * @code
 *  #include <DAVE3.h>
 *
 *  int main(void)
 *  {
 *    // ... Initializes Apps configurations ...
 *    DAVE_Init();
 *    // ... Enables Mapped Channels by Solver ... 
 *    COLORLAMP01_Enable(&COLORLAMP01_ConfigHandle0);
 *    // ... Add User's Application Code ...
 *    // ... Disables Mapped Channels by Solver ... 
 *    COLORLAMP01_Disable(&COLORLAMP01_ConfigHandle0);
 *    // ... infinite loop ...
 *    while(1)
 *    {
 *
 *    }
 *  }
 * @endcode<BR> </p>
 *
 */
void COLORLAMP01_Disable(const COLORLAMP01_ConfigHandleType *Handle);

/**
 * @brief Function which configures desired color for mapped channels by solver at run time.
 *
 *
 * @param[in]  Handle COLORLAMP01 Config handle
 * @param[in]  HandleColor COLORLAMP01 Color Intensity handle
 *
 * @return     None
 *
 * <b>Reentrant: NO </b><BR>
 *
 * <BR><P ALIGN="LEFT"><B>Example:</B>
 * <BR><I><b>COLORLAMP01_ConfigHandle0</b></I> is a global configuration
 * structure of type COLORLAMP01_ConfigHandleType which will be configured 
 * based on mapped channel instances by solver
 * @code
 *  #include <DAVE3.h>
 *
 *  #define MAX_INTENSITY_DIMLVL 0x07FFUL
 *  #define MIN_INTENSITY_DIMLVL 0x0UL
 *
 *  int main(void)
 *  {
 *    COLORLAMP01_ColorHandleType COLORLAMP01_ColorHandle0;
 *    // ... Initializes Apps configurations ...
 *    DAVE_Init();
 *    // ... Desired Color Intensity Configuration ... 
 *    COLORLAMP01_ColorHandle0.Intensity_Red = MAX_INTENSITY_DIMLVL;
 *    COLORLAMP01_ColorHandle0.Intensity_Green = MIN_INTENSITY_DIMLVL;
 *    COLORLAMP01_ColorHandle0.Intensity_Blue = MIN_INTENSITY_DIMLVL;
 *    // ... Enables Mapped Channels by Solver ... 
 *    COLORLAMP01_Enable(&COLORLAMP01_ConfigHandle0);
 *    // ... Configures the Desired Color for Mapped Channels by Solver
 *    COLORLAMP01_SetColor(&COLORLAMP01_ConfigHandle0, 
 *                         &COLORLAMP01_ColorHandle0);
 *    // ... infinite loop ...
 *    while(1)
 *    {
 *
 *    }
 *  }
 * @endcode<BR> </p>
 *
 */
void COLORLAMP01_SetColor(const COLORLAMP01_ConfigHandleType *Handle, 
                          COLORLAMP01_ColorHandleType *HandleColor);

/**
 * @brief Function which aborts color change for mapped channels by solver at run time.
 *
 *
 * @param[in]  Handle COLORLAMP01 Config handle
 * @param[in]  HandleColor COLORLAMP01 Color Intensity handle
 *
 * @return     None
 *
 * <b>Reentrant: NO </b><BR>
 *
 * <BR><P ALIGN="LEFT"><B>Example:</B>
 * <BR><I><b>COLORLAMP01_ConfigHandle0</b></I> is a global configuration
 * structure of type COLORLAMP01_ConfigHandleType which will be configured 
 * based on mapped channel instances by solver
 * @code
 *  #include <DAVE3.h>
 *
 *  #define MAX_INTENSITY_DIMLVL 0x07FFUL
 *  #define MIN_INTENSITY_DIMLVL 0x0UL
 *
 *  int main(void)
 *  {
 *    COLORLAMP01_ColorHandleType COLORLAMP01_ColorHandle0;
 *    // ... Initializes Apps configurations ...
 *    DAVE_Init();
 *    // ... Desired Color Intensity Configuration ... 
 *    COLORLAMP01_ColorHandle0.Intensity_Red = MAX_INTENSITY_DIMLVL;
 *    COLORLAMP01_ColorHandle0.Intensity_Green = MIN_INTENSITY_DIMLVL;
 *    COLORLAMP01_ColorHandle0.Intensity_Blue = MIN_INTENSITY_DIMLVL;
 *    // ... Configures Linear Walk Time Prescalaer ... 
 *    COLORLAMP01_ColorHandle0.LinearWalkPrescaler = 0x3FFUL;
 *    // ... Enables Mapped Channels by Solver ... 
 *    COLORLAMP01_Enable(&COLORLAMP01_ConfigHandle0);
 *    // ... Configures the Desired Color for Mapped Channels by Solver
 *    COLORLAMP01_SetColor(&COLORLAMP01_ConfigHandle0, &COLORLAMP01_ColorHandle0);
 *    // ... Aborts the Color change for all Mapped Channels
 *    COLORLAMP01_AbortColorChange(&COLORLAMP01_ConfigHandle0, &COLORLAMP01_ColorHandle0);
 *    // ... infinite loop ...
 *    while(1)
 *    {
 *
 *    }
 *  }
 * @endcode<BR> </p>
 *
 */
void COLORLAMP01_AbortColorChange(const COLORLAMP01_ConfigHandleType *Handle,
                          COLORLAMP01_ColorHandleType *HandleColor);

/**
 * @brief Function which configures target dimming level, dimming clock divider
 * and dimming engine clock (dclk) prescaler values for mapped dimming engine 
 * at run time.
 *
 *
 * @param[in]  Handle COLORLAMP01 Config Handle
 * @param[in]  DimLevel Target Dimming Level
 * @param[in]  DimDiv Target Dimming Clock Divider Value
 * @param[in]  DimPs Target Dimming Engine Clock (dclk) Prescaler Value
 *
 * @return     None
 *
 * <b>Reentrant: NO </b><BR>
 *
 * <BR><P ALIGN="LEFT"><B>Example:</B>
 * <BR><I><b>COLORLAMP01_ConfigHandle0</b></I> is a global configuration
 * structure of type COLORLAMP01_ConfigHandleType which will be configured 
 * based on mapped channel instances by solver
 * @code
 *  #include <DAVE3.h>
 *
 *  #define MAX_INTENSITY_DIMLVL 0x07FFUL
 *  #define MIN_INTENSITY_DIMLVL 0x0UL
 *  //Fade Time: 7sec - 100, 14sec - 200, 21Sec - 300 @ 290.909KHz DClk
 *  #define DIM_DIVIDER 100
 *  #define DIM_PS 219UL //290.909KHz @ 64MHz
 *
 *  int main(void)
 *  {
 *    COLORLAMP01_ColorHandleType COLORLAMP01_ColorHandle0;
 *    // ... Initializes Apps configurations ...
 *    DAVE_Init();
 *    // ... Desired Color Intensity Configuration ... 
 *    COLORLAMP01_ColorHandle0.Intensity_Red = MAX_INTENSITY_DIMLVL;
 *    COLORLAMP01_ColorHandle0.Intensity_Green = MIN_INTENSITY_DIMLVL;
 *    COLORLAMP01_ColorHandle0.Intensity_Blue = MIN_INTENSITY_DIMLVL;
 *    // ... Configures Linear Walk Time Prescalaer ... 
 *    COLORLAMP01_ColorHandle0.LinearWalkPrescaler = 0x3FFUL;
 *    // ... Enables Mapped Channels by Solver ... 
 *    COLORLAMP01_Enable(&COLORLAMP01_ConfigHandle0);
 *    // ... Configures the Desired Color for Mapped Channels by Solver
 *    COLORLAMP01_SetColor(&COLORLAMP01_ConfigHandle0, &COLORLAMP01_ColorHandle0);
 *    // ... infinite loop ...
 *    while(1)
 *    {
 *      // ... Configures Dimming Level, Dimming Clock Divider and Dimming Engine
 *      //     Clock (dclk) Prescaler. ....
 *      COLORLAMP01_SetDimLevelExponential(&COLORLAMP01_ConfigHandle0, MIN_INTENSITY_DIMLVL, DIM_DIVIDER, DIM_PS);
 *      // ... Wait for Dimming Update Completion
 *      BCCUDIM01_AwaitFadeCompletion(&BCCUDIM01_Handle0);
 *
 *      COLORLAMP01_SetDimLevelExponential(&COLORLAMP01_ConfigHandle0, MAX_INTENSITY_DIMLVL, DIM_DIVIDER, DIM_PS);
 *      // ... Wait for Dimming Update Completion
 *      BCCUDIM01_AwaitFadeCompletion(&BCCUDIM01_Handle0);
 *
 *    }
 *  }
 * @endcode<BR> </p>
 *
 */
#ifdef DIMAPP_USEDBY_COLORLAMP01
void COLORLAMP01_SetDimLevelExponential(const COLORLAMP01_ConfigHandleType 
                                        *Handle,
                                        uint32_t DimLevel,
                                        uint32_t DimDiv,
                                        uint32_t DimPs);
#endif
                    
/**
 * @brief Function which controls dimming of the lamp by manually (i.e., Software Controlled dimming) at run time.
 *
 *
 * @param[in]  Handle COLORLAMP01 Config Handle
 * @param[in]  DimLevel Target Dimming Level
 *
 * @return     None
 *
 * <b>Reentrant: NO </b><BR>
 *
 * <BR><P ALIGN="LEFT"><B>Example:</B>
 * <BR><I><b>COLORLAMP01_ConfigHandle0</b></I> is a global configuration
 * structure of type COLORLAMP01_ConfigHandleType which will be configured 
 * based on mapped channel instances by solver
 * @code
 *  #include <DAVE3.h>
 *
 *  #define MAX_INTENSITY_DIMLVL 0x07FFUL
 *  #define MIN_INTENSITY_DIMLVL 0x0UL
 *
 *  int main(void)
 *  {
 *    uint32_t DimLevel = 0;
 *    COLORLAMP01_ColorHandleType COLORLAMP01_ColorHandle0;
 *    // ... Initializes Apps configurations ...
 *    DAVE_Init();
 *    // ... Desired Color Intensity Configuration ... 
 *    COLORLAMP01_ColorHandle0.Intensity_Red = MAX_INTENSITY_DIMLVL;
 *    COLORLAMP01_ColorHandle0.Intensity_Green = MIN_INTENSITY_DIMLVL;
 *    COLORLAMP01_ColorHandle0.Intensity_Blue = MIN_INTENSITY_DIMLVL;
 *    // ... Configures Linear Walk Time Prescalaer ... 
 *    COLORLAMP01_ColorHandle0.LinearWalkPrescaler = 0x3FFUL;
 *    // ... Enables Mapped Channels by Solver ... 
 *    COLORLAMP01_Enable(&COLORLAMP01_ConfigHandle0);
 *    // ... Configures the Desired Color for Mapped Channels by Solver
 *    COLORLAMP01_SetColor(&COLORLAMP01_ConfigHandle0, &COLORLAMP01_ColorHandle0);
 *    // ... infinite loop ...
 *    while(1)
 *    {
 *      // ... Configures Dimming Level ......
 *      COLORLAMP01_SetDimLevelManual(&COLORLAMP01_ConfigHandle0, DimLevel);
 *      //Delay(1); //User Specific Teime Delay in msec
 * 	    DimLevel = (DimLevel < MAX_INTENSITY_DIMLVL)?(DimLevel+1):0;
 *
 *    }
 *  }
 * @endcode<BR> </p>
 *
 */
void COLORLAMP01_SetDimLevelManual(const COLORLAMP01_ConfigHandleType *Handle,
                                                            uint32_t DimLevel);

/**
 *@}
 */

/* Include App config file */
#include "COLORLAMP01_Conf.h"

#ifdef __cplusplus
}
#endif

#endif /* _COLORLAMP01_H_ */


/*CODE_BLOCK_END*/ 


