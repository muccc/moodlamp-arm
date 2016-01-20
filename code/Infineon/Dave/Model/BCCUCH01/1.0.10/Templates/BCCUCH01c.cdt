/*[BCCUCH01.c]*/
/*******************************************************************************
 * @file     BCCUCH01.c
 * @brief    This file defines the codes to initialize, configure and control
 *           the BCCU Channels.
 * @version  V1.0.6
 * @date     3 Sep 2013
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
 * V1.0.0,  14-Feb-13    Initial Version
 * V1.0.2,  2-Apr-13     Enhancement: Initial Target intensity immediately upon 
 *                       initialization and then update the linear walk time 
 *                       (specified in GUI) is fixed
 * V1.0.4   5-Aug-2013  Configuration and Driver codes are separated. MISRA 
 *                      Checks are fixed
 * V1.0.6   3-Sep-2013  C++ Support extended and New SW IDs added.
 * V1.0.8   9-Dec-2013  Added software control on BCCU Output control
 * *************************** Change history *********************************/

 
/*******************************************************************************
 ** INCLUDE FILES                                                             **
 ******************************************************************************/

/** Inclusion of header file */
#include "../../inc/BCCUCH01/BCCUCH01.h"

/*******************************************************************************
**                      Private Macro Definitions                             **
*******************************************************************************/
/*#define GET_CHANNEL_DIM_MASK(x) (1UL << x)  This is moved to BCCUGLOBAL.h*/
/*******************************************************************************
**                      Private Type Definitions                              **
*******************************************************************************/


/*******************************************************************************
**                 Private Function Declarations                              **
*******************************************************************************/
static void BCCUCH01_lGUIInit(const BCCUCH01_HandleType * handle);

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
static void BCCUCH01_lGUIInit(const BCCUCH01_HandleType * handle)
{
  /* Pointer Declaration of type BCCU_Type for accessing BCCU
  * global registers */
  BCCU_Type * BCCURegs = handle->BCCURegs;

  /* Pointer Declaration of type BCCU_CH_Type for accessing BCCU
  * channel registers */
  BCCU_CH_Type * BCCUCh = handle->BCCU_CH;

  /* Channel Output ControlRegister */
  BCCURegs->CHOCON |= (
    /* Channel Output Passive Level */
    ((uint32_t)(handle->OpPassiveLvl) << (handle->ChNum)) |
    /* Trap enable */
    (((uint32_t)(handle->TrapEnable) << (handle->ChNum))
        << BCCU_CHOCON_CH0TPE_Pos)
  );

  /* Channel Trigger Register */
  BCCURegs->CHTRIG |= (
      /* Channel Trigger Enable */
      ((uint32_t)(handle->TrigEnable) << (handle->ChNum))
  );

  /*Channel ConfigurationRegister*/
  BCCUCh->CHCONFIG |= (
    /* forced Trigger enable */
    ((uint32_t)(handle->ForceTrigger) << BCCU_CH_CHCONFIG_ENFT_Pos)|
    /* Trigger Edge */
    ((uint32_t)(handle->TrigEdgeSel) << BCCU_CH_CHCONFIG_TRED_Pos) |
    /* Flicker Watchdog Enable */
    ((uint32_t)(handle->FlickerWDGEnable) << BCCU_CH_CHCONFIG_WEN_Pos) |
    /* Gating Enable */
    ((uint32_t)(handle->GateEnable) << BCCU_CH_CHCONFIG_GEN_Pos)|
    /* dimming source bypass*/
    ((uint32_t)(handle->DimmingSrcBypass) <<  BCCU_CH_CHCONFIG_DBP_Pos) |
    /* Packer Enable */
    ((uint32_t)(handle->PackerEnable) << BCCU_CH_CHCONFIG_PEN_Pos)
  );

  /*   Packer Threshold */
  WR_REG_SIZE(BCCUCh->CHCONFIG, BCCU_CH_CHCONFIG_PKTH_Msk,
      BCCU_CH_CHCONFIG_PKTH_Pos, handle->PackerThreshold, 32);

  /* Packer Compare Register */
  BCCUCh->PKCMP = (
    /* Packer On-Time Compare Level */
    ((uint32_t)(handle->PackerONCmpLevel) << BCCU_CH_PKCMP_ONCMP_Pos) |
    /* Packer Off-Time Compare Level */
    ((uint32_t)(handle->PackerOFFCmpLevel) << BCCU_CH_PKCMP_OFFCMP_Pos)
  );
  /* Packer Counter Register */
  BCCUCh->PKCNTR |= (
    /* On-Time Counter Value */
    ((uint32_t)(handle->PackerONTimeCntrAtInit)
        << BCCU_CH_PKCNTR_ONCNTVAL_Pos) |
    /*Off-Time Counter Value */
    ((uint32_t)(handle->PackerOFFTimeCntrAtInit)
        << BCCU_CH_PKCNTR_OFFCNTVAL_Pos)
  );

 if (handle->op_en == 1)
    *((uint32_t *)(handle->IOCR_ptr)) |= 
           (uint32_t)(handle->pad_char 
	             << (handle->IOCR_Val + handle->IOCR_offset));
  /* Global Control Register */

  /*Channel Enable*/
  if (BCCUCH01_ENABLE_AT_INIT == handle->EnableAtInit)
  {
      BCCURegs->CHEN |=  ((uint32_t)(handle->EnableAtInit) << (handle->ChNum));
  }

  /* Configures Initial Target Intensity */
  BCCUCh->INTS = handle->InitialIntensity;

  /* Enable the Shadow Transfer with Initial Channel Intensity */
  BCCURegs->CHSTRCON |= GET_CHANNEL_DIM_MASK(handle->ChNum);

  /*Channel Configuration Register*/
  BCCUCh->CHCONFIG |= (
    /*Linear Walker Clock Prescaler (LINPRES) */
    ((uint32_t)(handle->LinPres) << BCCU_CH_CHCONFIG_LINPRES_Pos)
  );
}


/*******************************************************************************
**                      Public Function Definitions                           **
*******************************************************************************/
void BCCUCH01_Init(void)
{
  uint32_t i;

  for (i = 0; i < BCCUCH01_NUM_INSTANCES; i++)
  {
      BCCUCH01_lGUIInit(BCCUCH01_HandleArr[i]);
  }
}


inline void BCCUCH01_Enable(const BCCUGlobal_HandleType* handle,
    uint32_t ChannelMask)
{
  handle->BCCURegs->CHEN |= ChannelMask;
}


inline void BCCUCH01_Disable(const BCCUGlobal_HandleType* handle,
    uint32_t ChannelMask)
{
  handle->BCCURegs->CHEN &= ~ChannelMask;
}

inline void BCCUCH01_GateEnable(const BCCUCH01_HandleType* handle,
    uint32_t ChannelMask)
{
  handle->BCCU_CH->CHCONFIG |= BCCU_CH_CHCONFIG_GEN_Msk;
}

inline void BCCUCH01_GateDisable(const BCCUCH01_HandleType* handle,
    uint32_t ChannelMask)
{
  handle->BCCU_CH->CHCONFIG &= (~BCCU_CH_CHCONFIG_GEN_Msk);
}


inline void BCCUCH01_StartLinearWalk(const BCCUGlobal_HandleType* handle,
    uint32_t ChannelMask)
{
  handle->BCCURegs->CHSTRCON |= ChannelMask;
}


inline void BCCUCH01_AbortLinearWalk(const BCCUGlobal_HandleType* handle,
    uint32_t ChannelMask)
{
  handle->BCCURegs->CHSTRCON |= ((ChannelMask) << BCCU_CHSTRCON_CH0A_Pos);
}


inline uint32_t BCCUCH01_GetOpLvlAtLastTrigger(
    const BCCUCH01_HandleType* handle)
{
  return ((handle->BCCURegs->LTCHOL & GET_CHANNEL_DIM_MASK(handle->ChNum))
      >> handle->ChNum);
}

inline void BCCUCH01_SetIntensity(const BCCUCH01_HandleType * handle,
    uint32_t Intensity)
{
  handle->BCCU_CH->INTS = Intensity;
}

inline uint32_t BCCUCH01_GetIntensity(const BCCUCH01_HandleType * handle)
{
  return (handle->BCCU_CH->INT);
}

inline void BCCUCH01_SetLinearWalkPrescaler(
    const BCCUCH01_HandleType * handle, 
    uint32_t LinearWalkPrescaler)
{
  WR_REG_SIZE(handle->BCCU_CH->CHCONFIG, BCCU_CH_CHCONFIG_LINPRES_Msk,
      BCCU_CH_CHCONFIG_LINPRES_Pos, LinearWalkPrescaler, 32);
}

inline uint32_t  BCCUCH01_WalkStatus(const BCCUCH01_HandleType * handle)
{
  return ((handle->BCCURegs->CHSTRCON & GET_CHANNEL_DIM_MASK(handle->ChNum))
      >> handle->ChNum);
}


/**
* @brief    Wait indefinitely till linear walk is over.
*/
inline void BCCUCH01_AwaitEndOfWalk(const BCCUCH01_HandleType * handle)
{
  while (1 == BCCUCH01_WalkStatus(handle));
}

/**
* @brief    Enable forced triggering. 
*       The trigger generator generates a trigger if the
*       output of the sigma-delta modulator hasn’t
*       changed state for 256 bit times; only takes
*       effect if the packer is disabled (PEN=0)
*       Modifies CHCONFIGy.ENTF field
*/
inline void BCCUCH01_EnableForcedTrigger(const 
    BCCUCH01_HandleType * handle)
{
  handle->BCCURegs->CHTRIG |= GET_CHANNEL_DIM_MASK(handle->ChNum);
}


/**
* @brief    Disable Forced Trigger Function. 
*       Modifies CHCONFIGy.ENTF field
*/
inline void BCCUCH01_DisableForcedTrigger(const 
    BCCUCH01_HandleType * handle)
{
  handle->BCCURegs->CHTRIG &= ~GET_CHANNEL_DIM_MASK(handle->ChNum);
}

/**
* @brief    Configures desired dimming source
*/
inline void BCCUCH01_SetDimmingSource(const BCCUCH01_HandleType * handle,
    BCCUCH01_DimmingSourceType DimmingSource)
{
  WR_REG_SIZE(handle->BCCU_CH->CHCONFIG, BCCU_CH_CHCONFIG_DSEL_Msk,
      BCCU_CH_CHCONFIG_DSEL_Pos, DimmingSource, 32);
}



/**
  * @}
  */
 /*CODE_BLOCK_END*/




