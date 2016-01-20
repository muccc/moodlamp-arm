/*CODE_BLOCK_BEGIN[BCCUGlobal.c]*/
/****************************************************************************
 * @file     BCCUGLOBAL.c
 * @brief    This file has Definitions of APIs for initialization of BCCU global
 *           register set.
 * @version  V1.0.8
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
 * V1.0.0,	14-Feb-13	 Initial Version
 * V1.0.2,	3-Apr-13	 Two new UI widgets ("Longest OFF-time at Modulator
 *                       Output", "Lowest Frequency at Modulator Output")
 *                       are added.”
 * V1.0.4   25-Apr-2013  WDMBN related UI is extended.
 * V1.0.6   6-Aug-2013   Configuration Dependent and Independent codes are
 *                       separated, MISRA checks are made.
 * V1.0.8   3-Sep-2013  C++ Support extended and New SW IDs added.
* *************************** Change history *********************************/
/*******************************************************************************
 ** INCLUDE FILES                                                             **
 ******************************************************************************/

/** Inclusion of header file */
#include "../../inc/BCCUGLOBAL/BCCUGLOBAL.h"

/*******************************************************************************
**                      Private Macro Definitions                             **
*******************************************************************************/

/*******************************************************************************
**                      Private Type Definitions                              **
*******************************************************************************/


/*******************************************************************************
**                 Private Function Declarations                              **
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
static void BCCUGLOBAL_lGUIInit(const BCCUGlobal_HandleType* Handle)
{
  BCCU_Type* BCCURegs = Handle->BCCURegs;

  /* Open the lock to write protected bits */
  SCU_GENERAL->PASSWD = 0x000000C0UL;
  /* Disable the BCCU0 clock gating */
  SET_BIT(SCU_CLK->CGATCLR0, SCU_CLK_CGATCLR0_BCCU0_Pos);
  /* Wait for VDDC to stabilise */
  while ((uint32_t)SCU_CLK->CLKCR & (uint32_t)SCU_CLK_CLKCR_VDDC2LOW_Msk)
  {
  	    ;
  }
  /*Close the lock to stop access protected bits */
  SCU_GENERAL->PASSWD = 0x000000C3UL;
  
  /* FCLK, BCLK, DCLK configuration */
  BCCURegs->GLOBCLK = ((Handle->FastClk_PS) | ((uint32_t)(Handle->BitClk_Div) << 
    BCCU_GLOBCLK_BCS_Pos) | ((uint32_t)(Handle->DimClk_PS) << BCCU_GLOBCLK_DCLK_PS_Pos));
  
  /* Trigger & Trap Configuration */
  BCCURegs->GLOBCON |= ((Handle->TriggerMode) | 
    ((uint32_t)(Handle->TriggerDelay) << BCCU_GLOBCON_TRDEL_Pos) | 
    ((uint32_t)(Handle->TrapEdge) << BCCU_GLOBCON_TRAPED_Pos));

  /* Maximum Off-Bits Allowed at Output */
  WR_REG(BCCURegs->GLOBCON, BCCU_GLOBCON_WDMBN_Msk, BCCU_GLOBCON_WDMBN_Pos, 
    Handle->OutMaxZeroTime);

  /* Interrupt Configuration */
  BCCURegs->EVIER = Handle->EnableEventIntr;
  
  /* Global Dimming Level Configuration */
  BCCURegs->GLOBDIM = Handle->GlobalDimInitialLevel;

}
 
/*******************************************************************************
**                      Public Function Definitions                           **
*******************************************************************************/


inline uint32_t GET_CHANNEL_DIM_MASK(uint32_t Number)
{
	return ((uint32_t)1 << (uint32_t)Number);
}


//This function is called by DAVESupport App
void BCCUGLOBAL_Init(void)
{
	BCCUGLOBAL_lGUIInit(&BCCUGlobal_Handle0);
}



uint32_t BCCUGLOBAL_GetLastTrigSrc(const BCCUGlobal_HandleType* Handle)
{
  uint32_t status = 0xFFU;

  BCCU_Type* BCCURegs = Handle->BCCURegs;
  
  /* Trigger Mode: 1*/
  if((BCCURegs->GLOBCON & BCCU_GLOBCON_TM_Msk) == BCCU_GLOBCON_TM_Msk)
  {
    status = ((BCCURegs->GLOBCON & BCCU_GLOBCON_LTRS_Msk) >>
             BCCU_GLOBCON_LTRS_Pos);
  }
  /* Trigger Mode: 0 */
  else
  {/* Status = 0xFFU */
  }

  return status;
}

inline void BCCUGLOBAL_SetDimLevel(const BCCUGlobal_HandleType* Handle,
                            uint32_t Level)
{
  /* Global Dimming Level Configuration */
  WR_REG(Handle->BCCURegs->GLOBDIM, BCCU_GLOBDIM_GLOBDIM_Msk,
              BCCU_GLOBDIM_GLOBDIM_Pos, Level);
}

/**
* @brief Get the current details of the Event Flags raised, Reads EVFR register.
*
* @param[in] Handle Instance Handle
* @return Event Flags raised
* */
inline uint32_t BCCUGLOBAL_GetIntEvent(const BCCUGlobal_HandleType* Handle)
{
  /* Returns status of Event Flags */
  return (Handle->BCCURegs->EVFR & 0x1FU);

}



/**
* @brief Set the current details of the Event Flags raised, Reads EVFR register.
*
* @param[in] Handle Instance Handle
* @param[in] EventMask Event Mask, multiple events can be set with this mask.
*
* @return none
* */
inline void BCCUGLOBAL_SetEventFlag(const BCCUGlobal_HandleType* Handle,
                             BCCUGLOBAL_EventFlagSel EventMask)
{
  /* Set the Event Flags and it generates the interrupt if enabled
  in EVIER register */
    Handle->BCCURegs->EVFSR |= (uint32_t)EventMask;
}


/**
* @brief Clear the current details of the Event Flags raised, Reads EVFR register.
*
* @param[in] Handle Instance Handle
* @param[in] EventMask Event Mask. Multiple flags can be cleared with this mask.
* @return none
* */
inline void BCCUGLOBAL_ClearEventFlag(const BCCUGlobal_HandleType* Handle,
                               BCCUGLOBAL_EventFlagSel EventMask)
{
  /* Clear the Event Flags */
  Handle->BCCURegs->EVFCR |= EventMask;
}


/**
* @brief Enable the Interrupts
*
* @param[in] Handle Instance Handle
* @param[in] IntMask Interrupt Mask, multiple interrupts can be enabled with the mask.
* @return none
* */
inline void BCCUGLOBAL_IntEnable(const BCCUGlobal_HandleType* Handle,
                          BCCUGLOBAL_EventIntrSel IntMask)
{
  /* Enable the Interrupts */
  Handle->BCCURegs->EVIER |= (uint32_t)IntMask;
}


/**
* @brief Disable Interrupt
*
* @param[in] Handle Instance Handle
* @param[in] IntMask Interrupt Mask, multiple interrupts can be disabled with the mask.
* @return none
* */
inline void BCCUGLOBAL_IntDisable(const BCCUGlobal_HandleType* Handle,
                           BCCUGLOBAL_EventIntrSel IntMask)
{
  /* Disable the Interrupts */
  Handle->BCCURegs->EVIER &= ~(uint32_t)IntMask;
}


/**
* @brief Generate the Trap Interrupt.
*
* @param[in] Handle Instance Handle
* @return none
* */
inline void BCCUGLOBAL_ForceTrap(const BCCUGlobal_HandleType* Handle)
{
  /* Generates the Trap Interrupt */
	Handle->BCCURegs->EVFSR |= (uint32_t)BCCU_EVFSR_TPS_Msk;
}


/**
* @brief Exits the Trap State.
*
* @param[in] Handle Instance Handle
* @return none
* */
inline void BCCUGLOBAL_ExitTrap(const BCCUGlobal_HandleType* Handle)
{
  /* Exits the Trap State */
  Handle->BCCURegs->EVFCR |= (uint32_t)BCCU_EVFCR_TPC_Msk;
}

/**
* @brief Check the current trap state.
*
* @param[in] Handle Instance Handle
* @return BCCUGLOBAL_TrapState Trap state
* */
inline BCCUGLOBAL_TrapState BCCUGLOBAL_GetTrapState(const BCCUGlobal_HandleType*
                                             Handle)
{
  return (BCCUGLOBAL_TrapState)((Handle->BCCURegs->EVFR & BCCU_EVFR_TPSF_Msk) >>
                                 BCCU_EVFR_TPSF_Pos);
}


/**
* @brief Get the Trap input level.
*
* @param[in] Handle Instance Handle
* @return BCCUGLOBAL_TrapInLevel Trap input level
* */
inline BCCUGLOBAL_TrapInLevel BCCUGLOBAL_GetTrapInputLvl(const BCCUGlobal_HandleType*
                                                  Handle)
{
  return (BCCUGLOBAL_TrapInLevel)((Handle->BCCURegs->EVFR & BCCU_EVFR_TPINL_Msk) >>
                                   BCCU_EVFR_TPINL_Pos);
}

/**
* @brief Dimming Clock Prescalar Configuration
*
* @param[in] Handle Instance Handle
* @param[in] DimClkPS  Dimming Clock prescalar value
* @return none
* */
inline void BCCUGLOBAL_SetDimClkPS(const BCCUGlobal_HandleType* Handle,
                            uint32_t DimClkPS)
{
  /* Dimming Clock Prescaler Configuration */
  WR_REG(Handle->BCCURegs->GLOBCLK, BCCU_GLOBCLK_DCLK_PS_Msk,
              BCCU_GLOBCLK_DCLK_PS_Pos, DimClkPS);
}


/*CODE_BLOCK_END*/ 


