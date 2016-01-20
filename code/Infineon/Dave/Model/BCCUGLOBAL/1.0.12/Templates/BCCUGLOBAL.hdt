/*CODE_BLOCK_BEGIN[BCCUGlobal.h]*/
/****************************************************************************
 * @file     BCCUGLOBAL.h
 * @brief    This file has prototypes of APIs for initialization of BCCU global
 *           register set.
 * @version  V1.0.8
 * @date     8 sep 2013
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

 
 #ifndef BCCUGLOBAL_H_
 #define BCCUGLOBAL_H_
/*******************************************************************************
**                      Include Files                                         **
*******************************************************************************/

#ifdef __cplusplus
extern "C" {
#endif

#include <uc_id.h>
#if (UC_SERIES == XMC13)
#include <XMC1300.h>
#elif (UC_SERIES == XMC12)
#include <XMC1200.h>
#elif (UC_SERIES == XMC11)
#include <XMC1100.h>
#endif

#ifdef DAVE_CE
/* Include App config file */
#include "BCCUGLOBAL_Conf.h"
#endif /* Conf.h */


/*******************************************************************************
**                      Global Macro Definitions                              **
*******************************************************************************/


/*******************************************************************************
**                      Global Type Definitions                               **
*******************************************************************************/
/**
 * @ingroup BCCUGlobal_enumerations
 * @{
 */

/**
 * This enumeration contains Bit Time Clock divider
 */
typedef enum {
	/** 
	 * BCCU trigger on Any Channel Trigger
	 */
	BCCU_FCLK_DIV_4 = 0U,
	/** 
	 * BCCU Trigger on Active channel Trigger
	 */
	BCCU_FCLK = 1U,

}BCCUGLOBAL_BitClkType;

/**
 * This enumeration contains Trigger mode selection
 */
typedef enum {
	/** 
	 * BCCU trigger on Any Channel Trigger
	 */
	BCCUGLOBAL_TRIGMODE_0 = 0U,
	/** 
	 * BCCU Trigger on Active channel Trigger
	 */
	BCCUGLOBAL_TRIGMODE_1 = 1U,
	
}BCCUGLOBAL_TrigModeType;

/**
 * This enumeration contains Trigger mode selection
 */
typedef enum {
	/** 
	 * BCCU trigger on channel trigger(no delay)
	 */
	BCCUGLOBAL_NO_DELAY = 0U,
	/** 
	 * BCCU trigger on quarter-bit time delayed of channel trigger
	 */
	BCCUGLOBAL_QUARTER_BIT_DELAY = 1U,
	/** 
	 * BCCU trigger on half-bit time delayed of channel trigger
	 */
	BCCUGLOBAL_HALF_BIT_DELAY = 2U,
	
}BCCUGLOBAL_TrigDelayType;

/**
 * This enumeration contains Trap edges information
 */
typedef enum {
	/** 
	 * Trap on rising edge of the BCCU.TRAPL signal
	 */
	BCCUGLOBAL_RISING_EDGE = 0U,
	/** 
	 * Trap on falling edge of the BCCU.TRAPL signal
	 */
	BCCUGLOBAL_FALLING_EDGE = 1U,
	
}BCCUGLOBAL_TrapEdgeType;

/**
 * This enumeration contains Event interrupts selection
 */
typedef enum {
	/** 
	 * No Interrupt Enable/Disable
	 */
	BCCUGLOBAL_NONE_INT_EN_DIS = 0x0U,
	/** 
	 * Trigger 0 Interrupt Enable/Disable
	 */
	BCCUGLOBAL_TIMER0INT_EN_DIS = 0x1U,
	/** 
	 * Trigger 1 Interrupt Enabled/Disable
	 */
	BCCUGLOBAL_TIMER1INT_EN_DIS = 0x2U,
	/** 
	 * FIFO Full Interrupt Enabled/Disable
	 */
	BCCUGLOBAL_FIFOFULLINT_EN_DIS = 0x4U,
	/** 
	 * FIFO Empty Interrupt Enabled/Disable
	 */
	BCCUGLOBAL_FIFOEMPTYINT_EN_DIS = 0x8U,
	/** 
	 * Trap Interrupt Enabled/Disable
	 */
	BCCUGLOBAL_TRAPINT_EN_DIS = 0x10U,
	
}BCCUGLOBAL_EventIntrSel;

/**
 * This enumeration contains Event Flag configuration
 */
typedef enum {
	/**
	 * Trigger 0 Event Flag set/clear
	 */
	BCCUGLOBAL_TIMER0EF_SET_CLR = 0x1U,
	/**
	 * Trigger 1 Event Flag set/clear
	 */
	BCCUGLOBAL_TIMER1EF_SET_CLR = 0x2U,
	/**
	 * FIFO Full Event Flag set/clear
	 */
	BCCUGLOBAL_FIFOFULLEF_SET_CLR = 0x4U,
	/**
	 * FIFO Empty Event Flag set/clear
	 */
	BCCUGLOBAL_FIFOEMPTYEF_SET_CLR = 0x8U,
	/**
	 * Trap Event Flag set/clear (Without Trap Set)
	 */
	BCCUGLOBAL_TRAPEF_SET_CLR = 0x10U,
	/**
	 * Trap Set/clear
	 */
	BCCUGLOBAL_TRAP_SET_CLR = 0x40U,

}BCCUGLOBAL_EventFlagSel;

/**
 * This enumeration contains Trap State status
 */
typedef enum {
	/**
	 * BCCU is not in a Trap State
	 */
	BCCUGLOBAL_NOT_TRAP_STATE = 0x0U,
	/**
	 * BCCU is in a Trap State
	 */
	BCCUGLOBAL_TRAP_STATE = 0x1U,

}BCCUGLOBAL_TrapState;

/**
 * This enumeration contains Trap Input Level status
 */
typedef enum {
	/**
	 * BCCU.TRAPL is Low
	 */
	BCCUGLOBAL_LEVEL_LOW = 0x0U,
	/**
	 * BCCU.TRAPL is High
	 */
	BCCUGLOBAL_LEVEL_HIGH = 0x1U,

}BCCUGLOBAL_TrapInLevel;

/**
  * @}
  */
  
/**
 * @ingroup BCCUGlobal_datastructures
 * @{
 */

/**
 * @brief Contents entered via GUI
 * */
typedef struct 
{
	/**
	 * CMSIS defined structure for BCCU module
	 */
	BCCU_Type* const BCCURegs;
	/**
	 * Fast Clock(Converter Trigger Delay Clock) Prescaler (12Bit Value)
	 */
	uint16_t FastClk_PS; /* GLOBCLK.FCLK_PS */
	/**
	 * Bit Time/Sampling Rate Converter Clock (Use BCCU_FCLK_DIV_4 or BCCU_FCLK)
	 */
	BCCUGLOBAL_BitClkType BitClk_Div; /* GLOBCLK.BCS */
	/**
	 * Dimmer Clock Prescaler (12Bit Value)
	 */
	uint16_t DimClk_PS; /* GLOBCLK.DCLK_PS */
	/**
	 * Trigger Mode (Use BCCUGLOBAL_TRIGMODE_0 or BCCUGLOBAL_TRIGMODE_1)
	 */
	BCCUGLOBAL_TrigModeType TriggerMode; /* GLOBCON.TM */
	/**
	 * Trigger Delay (Use BCCUGLOBAL_NO_DELAY or BCCUGLOBAL_QUARTER_BIT_DELAY or 
	 * BCCUGLOBAL_HALF_BIT_DELAY)
	 */
	BCCUGLOBAL_TrigDelayType TriggerDelay; /* GLOBCON.DEL */
	/**
	 * Watchdog Maximum Bitnumber (12Bit Value)
	 */
	uint16_t OutMaxZeroTime; /* GLOBCON.WDMBN */
	/**
	 * Trap Edge (USe BCCUGLOBAL_RISING_EDGE or BCCUGLOBAL_FALLING_EDGE)
	 */
	BCCUGLOBAL_TrapEdgeType TrapEdge; /* GLOBCON.TRAPED */
	/**
	 * Global Dimming Level (12Bit Value)
	 */
	uint16_t GlobalDimInitialLevel; /* GLOBDIM */
	/**
	 * Event Interrupts (Use BCCUGLOBAL_TIMER0INT_EN_DIS and/or
	 * BCCUGLOBAL_TIMER1INT_EN_DIS and/or BCCUGLOBAL_FIFOEMPTYINT_EN_DIS and/or
	 * BCCUGLOBAL_FIFOEMPTYINT_EN_DIS and/or BCCUGLOBAL_TRAPINTRFIFOFULLINT_EN_DIS)
	 */
	BCCUGLOBAL_EventIntrSel EnableEventIntr; /* EVIER.T0IEN to TPIEN */
	
}BCCUGlobal_HandleType;


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
**                     FUNCTION PROTOTYPES                                    **
*******************************************************************************/

/**
 * @ingroup BCCUGlobal_apidoc
 * @{
 */
/**
 * @brief Generate Mask for both Channel and Dimming
 * @param Number Channel Number
 * @return Channel/Dimming Engine Mask
 * */
extern uint32_t GET_CHANNEL_DIM_MASK(uint32_t Number); /* CG Violation 
for Backward compatibility */

/**
* @brief initializes the BCCU Global app.
* */
void BCCUGLOBAL_Init(void);

/**
* @brief Sets the Global Dimming intensity.
*
* @param[in] Handle Instance Handle
* @param[in] Level Intensity level
* @return none
* */
extern void BCCUGLOBAL_SetDimLevel(const BCCUGlobal_HandleType* Handle,
    uint32_t Level);

/**
* @brief Get the source for last trigger.
*
* @param[in] Handle Instance Handle
* @return source for last trigger.
* */
uint32_t BCCUGLOBAL_GetLastTrigSrc(const BCCUGlobal_HandleType* Handle);

/**
* @brief Get the current details of the Event Flags raised, Reads EVFR register.
*
* @param[in] Handle Instance Handle
* @return Event Flags raised
* */
extern uint32_t BCCUGLOBAL_GetIntEvent(const BCCUGlobal_HandleType* Handle);


/**
* @brief Set the current details of the Event Flags raised, Reads EVFR register.
*
* @param[in] Handle Instance Handle
* @param[in] EventMask Event Mask, multiple events can be set with this mask.
*
* @return none
* */
extern void BCCUGLOBAL_SetEventFlag(const BCCUGlobal_HandleType* Handle,
    BCCUGLOBAL_EventFlagSel EventMask);


/**
* @brief Clear the current details of the Event Flags raised, Reads EVFR register.
*
* @param[in] Handle Instance Handle
* @param[in] EventMask Event Mask. Multiple flags can be cleared with this mask.
* @return none
* */
extern void BCCUGLOBAL_ClearEventFlag(const BCCUGlobal_HandleType* Handle,
    BCCUGLOBAL_EventFlagSel EventMask);

/**
* @brief Enable the Interrupts
*
* @param[in] Handle Instance Handle
* @param[in] IntMask Interrupt Mask, multiple interrupts can be enabled with the mask.
* @return none
* */
extern void BCCUGLOBAL_IntEnable(const BCCUGlobal_HandleType* Handle,
    BCCUGLOBAL_EventIntrSel IntMask);


/**
* @brief Disable Interrupt
*
* @param[in] Handle Instance Handle
* @param[in] IntMask Interrupt Mask, multiple interrupts can be disabled with the mask.
* @return none
* */
extern void BCCUGLOBAL_IntDisable(const BCCUGlobal_HandleType* Handle,
    BCCUGLOBAL_EventIntrSel IntMask);

/**
* @brief Generate the Trap Interrupt.
*
* @param[in] Handle Instance Handle
* @return none
* */
extern void BCCUGLOBAL_ForceTrap(const BCCUGlobal_HandleType* Handle);


/**
* @brief Exits the Trap State.
*
* @param[in] Handle Instance Handle
* @return none
* */
extern void BCCUGLOBAL_ExitTrap(const BCCUGlobal_HandleType* Handle);

/**
* @brief Check the current trap state.
*
* @param[in] Handle Instance Handle
* @return BCCUGLOBAL_TrapState Trap state
* */
extern BCCUGLOBAL_TrapState BCCUGLOBAL_GetTrapState(const 
    BCCUGlobal_HandleType* Handle);


/**
* @brief Get the Trap input level.
*
* @param[in] Handle Instance Handle
* @return BCCUGLOBAL_TrapInLevel Trap input level
* */
extern BCCUGLOBAL_TrapInLevel BCCUGLOBAL_GetTrapInputLvl(const 
    BCCUGlobal_HandleType * Handle);

/**
* @brief Dimming Clock Prescalar Configuration
*
* @param[in] Handle Instance Handle
* @param[in] DimClkPS  Dimming Clock prescalar value
* @return none
* */
extern void BCCUGLOBAL_SetDimClkPS(const BCCUGlobal_HandleType* Handle,
    uint32_t DimClkPS);
    

/**
  * @}
  */
#ifdef DAVE_CE
/* Include App config file */
#include "BCCUGLOBAL_Extern.h"
#endif  /* extern.h */

#ifdef __cplusplus
}
#endif


#endif /* BCCUGLOBAL_H_ */
