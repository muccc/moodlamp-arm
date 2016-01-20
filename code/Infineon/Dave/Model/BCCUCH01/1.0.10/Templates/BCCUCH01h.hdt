/*[BCCUCH01.h]*/
/*******************************************************************************
 * @file     BCCUCH01.h
 * @brief    This file has prototypes of APIs to initialize, configure and 
 *           control the BCCU Channels.
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
 * V1.0.4   5-Aug-2013  Configuration and Driver codes are separated.
 * V1.0.6   3-Sep-2013  C++ Support extended and New SW IDs added.
 * V1.0.8   9-Dec-2013  Added software control on BCCU Output control
 * *************************** Change history *********************************/

 #ifndef BCCUCH01_H_
 #define BCCUCH01_H_
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

#include "../../inc/BCCUGLOBAL/BCCUGLOBAL.h"

/* Include App config file */
#ifdef DAVE_CE
#include "BCCUCH01_Conf.h"
#endif /* Conf.h */
/*******************************************************************************
**                      Global Macro Definitions                              **
*******************************************************************************/

/*******************************************************************************
**                      Global Type Definitions                               **
*******************************************************************************/

/**
 * @ingroup BCCUCH01_enumerations
 * @{
 */
/* Flicker watchdog Enable */
typedef enum {
  BCCUCH01_FLICKER_WDT_DS = 0UL,
  BCCUCH01_FLICKER_WDT_EN = 1UL
}BCCUCH01_WatchdogEnableType;

/* Gating Enable Function */
typedef enum {
  BCCUCH01_GATING_FN_DS = 0UL,
  BCCUCH01_GATING_FN_EN = 1UL
}BCCUCH01_GateEnableType;

/* Dimming Engine Bypass  */
typedef enum {
    BCCUCH01_DE_NOT_BYPASS = 0UL,
    BCCUCH01_DE_BYPASS = 1UL
}BCCUCH01_DimmingBypassType;

/* Enable a Channel at init selection */
typedef enum {
    BCCUCH01_DISABLE_AT_INIT = 0UL,
    BCCUCH01_ENABLE_AT_INIT = 1UL
} BCCUCH01_EnblatInitType;

/* Channel Output Passive Level, modifies CHOCON.CHyOP */
typedef enum{
    BCCUCH01_ACTIVE_HIGH = 0UL,
    BCCUCH01_ACTIVE_LOW = 1UL
}BCCUCH01_OutputPassiveLevelType;

/* Channel Trigger Enable, modifies CHOCON.CHyTPE */
typedef enum{
    BCCUCH01_TRAP_DS = 0UL, /* Disable */
    BCCUCH01_TRAP_EN     = 1UL  /* Enable */
} BCCUCH01_TrapEnableType;

/* Forced Trigger enable mode selection */
typedef enum 
{
    BCCUCH01_FORCED_TRG_DS = 0UL,
    BCCUCH01_FORCED_TRG_EN = 1UL
}BCCUCH01_ForcedTriggerEnableType;

/* Trigger Edge Selection , modifies */
typedef enum
{
    BCCUCH01_TRG_PST_EDG = 0UL,/*0B Channel triggers occur on channel 
        output transition from passive to active level*/
    BCCUCH01_TRG_NGT_EDG = 1UL /*1B Channel triggers occur on channel 
        output transition from active to passive level*/
} BCCUCH01_TriggerEdgeType;

/* Trap Edge Selection, modifies */
typedef enum
{
    BCCU01_TRP_PST_EDG = 0UL, /*Trap occurs (trap flag is set) on rising 
        edge of the BCCU.TRAPL signal*/
    BCCU01_TRP_NGT_EDG = 1UL  /*Trap occurs (trap flag is set) on falling 
        edge of the BCCU.TRAPL signal*/
}BCCUCH01_TrapEdgeType;

/* Trigger Enable, modifies CHTRIG.ETy */
typedef enum{
    BCCUCH01_TRIGGER_DS = 0UL,       /* Disable */
    BCCUCH01_TRIGGER_EN = 1UL        /* Enable */
}BCCUCH01_TriggerEnableType;

/* Trigger Output Select, modifies CHTRIG.TOSy, 
Only used in Trigger Mode 1 (GLOBON.TM=1), otherwise ignored*/
typedef enum {
    BCCUCH01_TRIG_OUT0 = 0UL, /*The channel trigger pulse will appear on BCCU_TRIGOUT0*/
    BCCUCH01_TRIG_OUT1  = 1UL/*1B The channel trigger pulse will appear on BCCU_TRIGOUT1*/
} BCCUCH01_TriggerOutputpSelectType;

/* Packer Enable, modifies CHCONFIGy.PEN */
typedef enum {
    BCCUCH01_PACKER_DS = 0UL, /* Disabled */
    BCCUCH01_PACKER_EN = 1UL
} BCCUCH01_PackerEnableType;

/* Source of Dimming */
typedef enum {
    /* Dimming Engine 0 */
    BCCUCH01_DIMMING_ENGINE0 = 0UL,
    /* Dimming Engine 1 */
    BCCUCH01_DIMMING_ENGINE1 = 1UL,
    /* Dimming Engine 2 */
    BCCUCH01_DIMMING_ENGINE2 = 2UL,
    /* Global Dimming */
    BCCUCH01_GLOBAL_DIMMING = 7UL
}BCCUCH01_DimmingSourceType;
/**
  * @}
  */
  
/**
 * @ingroup BCCUCH01_datastructures
 * @{
 */
/* Contents of GUI, This is the handle for individual channel configuration */
typedef struct 
{
    /* All registers specific to a channel , defined in xmc1XXX.h */
    BCCU_Type * BCCURegs;   /* BCCU Global Register Pointer */
    BCCU_CH_Type * BCCU_CH; /* Channel specific register set */ 
    uint32_t ChNum;     /* channel Number */

    uint32_t IOCR_ptr;	/* Location of IOCR Register */
    uint32_t port_num; /* Port number */
    uint32_t pin; 	/* Pin Number */
    uint32_t IOCR_Val;  /* Value to be written to IOCR Register */
    uint32_t op_en; /* Output Enable: 0-Disable, 1-Enable */
    uint32_t pad_char;  /* Pad characteristic; 0-Pushpull, 1-OpenDrain */
    uint32_t IOCR_offset;
    
    BCCUCH01_EnblatInitType  EnableAtInit;
    uint32_t LinPres;
    uint32_t InitialIntensity;

    BCCUCH01_DimmingBypassType  DimmingSrcBypass;

    /* Channel datapath */
    BCCUCH01_GateEnableType  GateEnable;
    BCCUCH01_WatchdogEnableType  FlickerWDGEnable;
    BCCUCH01_OutputPassiveLevelType  OpPassiveLvl;
    BCCUCH01_TrapEnableType TrapEnable;

    /* Triggers to ADC and CCU */
    BCCUCH01_TriggerEnableType TrigEnable;
    BCCUCH01_TriggerOutputpSelectType TrigSel; /* TOS bitfield */
    BCCUCH01_TriggerEdgeType TrigEdgeSel; 
        /* 1 = Active to passive, 0 = Passive to Active */
    BCCUCH01_ForcedTriggerEnableType ForceTrigger; 
        /* Only relevant if packer is unused */

    /* Compaction for external drives to reduce power consumption */
    BCCUCH01_PackerEnableType PackerEnable;
    uint32_t  PackerThreshold;  /* CHCONFIGy.PKTH */
    uint32_t  PackerONCmpLevel; /* PKCMPy.ONCMP */
    uint32_t  PackerOFFCmpLevel;    /* PKCMPy.OFFCMP */
    uint32_t  PackerONTimeCntrAtInit;   /* PKCNTRy.ONCNTVAL */
    uint32_t  PackerOFFTimeCntrAtInit;  /* PKCNTRy.OFFCNTVAL*/      
}BCCUCH01_HandleType;
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
 * @ingroup BCCUCH01_apidoc
 * @{
 */

/**
* @brief    Initialises the Channel with the UI parameters
*       entered by user.
*/
void BCCUCH01_Init(void);

/**
* @brief    Enable a channel. Multiple channels can be enabled 
*       by ORing the channels masks
*       Channel1 = 0x01, channel2 = 0x02, channel3 = 0x04, channel4 = 0x08...
*       to enable channels 1,3 and 4, mask = 0x01 | 0x04 | 0x08.
*       Modifies CHEN.ECHy field
*/

extern void BCCUCH01_Enable(const BCCUGlobal_HandleType* handle,
    uint32_t ChannelMask);
    
    

/**
* @brief    Disable a channel. Multiple channels can be disabled by 
*       ORing the channels masks
*       Channel1 = 0x01, channel2 = 0x02, channel3 = 0x04, channel4 = 0x08...
*       to disable channels 1,3 and 4, mask = 0x01 | 0x04 | 0x08
*       Modifies CHEN.ECHy field
*/
extern void BCCUCH01_Disable(const BCCUGlobal_HandleType* handle,
    uint32_t ChannelMask);
    

/**
* @brief    Enable Gating Function.
*       Gating function is enabled, the output gating
*       signal is BCCU.INy
*/
extern void BCCUCH01_GateEnable(const BCCUCH01_HandleType* handle,
    uint32_t ChannelMask);


/**
* @brief    Disable Gating Function.
*       Gating function is disabled, the input signal
*       (BCCU.INy) has no effect
*/
extern void BCCUCH01_GateDisable(const BCCUCH01_HandleType* handle,
    uint32_t ChannelMask);
    
    
/**
* @brief    Start Linear Walk. Multiple Channels can 
*               be enabled by ORing the Channel Masks.
*       Writes to CHSTRCON.CHyS field.
*/
extern void BCCUCH01_StartLinearWalk(const BCCUGlobal_HandleType* handle,
    uint32_t ChannelMask);
    
    
/**
* @brief    Abort Linear Walk. Linear walk on multiple Channels 
*               can be disabled by ORing the Channel Masks.
*       Writes to CHSTRCON.CHyA field.
*/
extern void BCCUCH01_AbortLinearWalk(const BCCUGlobal_HandleType* handle,
    uint32_t ChannelMask);


/**
* @brief    Get the Output value for last trigger. 
*       returns 0 for passive level and 1 for active level
*       reads LTCHOL
*/
extern uint32_t BCCUCH01_GetOpLvlAtLastTrigger(
    const BCCUCH01_HandleType* handle);
    
/**
* @brief    Set intensity to the shadow register.
*       Writes to INTyS.TCHINT field.
*       Can only be written if CHSTRCON.CHyS is not set,
*       otherwise the new value will be ignored
*/
extern void BCCUCH01_SetIntensity(const BCCUCH01_HandleType * handle,
    uint32_t Intensity);    
    

/**
* @brief    Get the current channel/actual intensity level.
*       Reads from INTy.CHINT field
*/
extern uint32_t BCCUCH01_GetIntensity(const BCCUCH01_HandleType * handle);
    
    
/**
* @brief    Set the Linear Transition Time. 
*       Determines how long it takes for the Channel
*       Intensity to reach the Target Channel Intensity after
*       shadow transfer (after CHSTRCON.CHyS is set).
*       Necessary for smooth linear color transitions. If this
*       value is 0, then the intensity level will become the
*       same as the target intensity level on shadow transfer
*       and the linear walker is bypassed.
*       Modifies CHCONFIGy.LINPRES field
*/
extern void BCCUCH01_SetLinearWalkPrescaler(
    const BCCUCH01_HandleType * handle, 
    uint32_t LinearWalkPrescaler);


/**
* @brief    Check if Linear Transition/Walk is in process or not.
*       returns 0 if walk is over and 1 if linear walk is in process
*       Reads CHSTRCON register.
*/
extern uint32_t  BCCUCH01_WalkStatus(const BCCUCH01_HandleType * handle);


/**
* @brief    Wait indefinitely till linear walk is over.
*/
extern void BCCUCH01_AwaitEndOfWalk(const BCCUCH01_HandleType * handle);


/**
* @brief    Enable forced triggering. 
*       The trigger generator generates a trigger if the
*       output of the sigma-delta modulator has not
*       changed state for 256 bit times; only takes
*       effect if the packer is disabled (PEN=0)
*       Modifies CHCONFIGy.ENTF field
*/
extern void BCCUCH01_EnableForcedTrigger(const 
    BCCUCH01_HandleType * handle);
    
    
/**
* @brief    Disable Forced Trigger Function. 
*       Modifies CHCONFIGy.ENTF field
*/
extern void BCCUCH01_DisableForcedTrigger(const 
    BCCUCH01_HandleType * handle);
    
    
/**
* @brief    Configures desired dimming source
*/
extern void BCCUCH01_SetDimmingSource(const BCCUCH01_HandleType * handle,
    BCCUCH01_DimmingSourceType DimmingSource);
    
    
    
#ifdef DAVE_CE
/* Include external references */
#include "BCCUCH01_Extern.h"
#endif   /*Externs.h*/    


#ifdef __cplusplus
}
#endif

#endif /* MODULER_H_ */
/**
  * @}
  */
 /*CODE_BLOCK_END*/
