/*CODE_BLOCK_BEGIN[DMX512RD01.c]*/
/******************************************************************************
 * @file     DMX512RD01.c
 * @brief    This file has initialization, ISR and Application stack of DMX512
 * Slave receiver.
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
 * *************************** Change history ********************************
 * V1.0.0, 26 Sep 2013, Initial Version
 * V1.0.2, 20 Jan 2014, CAPCOM dependency is reduced by removing MBTS and 
 * MBB checks
 * V1.0.4, 06 Feb 2014, New feature accurate break detection is provided
 */

/*******************************************************************************
**                  INCLUDE FILES                                             **
******************************************************************************/

#include "../../inc/NVIC002/NVIC002.h" 
#ifdef DMX512RD01_ACC_BREAK_DETECT
#include "../../inc/CCU4GLOBAL/CCU4GLOBAL.h"
#endif
#include "../../inc/DMX512RD01/DMX512RD01.h"


/*******************************************************************************
**                      Private Variables                                      **
*******************************************************************************/
static uint32_t * DMX512RD01_buffer_ptr = DMX512RD01_buffer;

volatile uint32_t ReadByte = 0U;

static uint32_t buf_index = 0U; /* Index for data buffer */

static uint32_t start_slot_num = DMX512RD01_STARTING_SLOT_NUM;


/*******************************************************************************
**                      Public Variables                                      **
*******************************************************************************/
uint32_t DMX512RD01_buffer[DMX512RD01_NUM_SLOTS];/* Uninitialized Array */
/* store DMX512 master's data here*/

/*******************************************************************************
**                 Macro definitions                                          **
*******************************************************************************/

/*******************************************************************************
**                      Private Types                                         **
*******************************************************************************/
/**
 * @brief This function checks for a possible BREAK condition which occurs
 *  from a HIGH to LOW pulse
 *
 * @param[in] period Capture Counter Value
 * @return status DMX512RD01_SUCCESS if its a BREAK condition and DMX512RD01_ERROR
 * otherwise.
 *
 *
 * <b>Reentrant: yes</b><BR>
 *
 *
 * <b>Synchronous: yes</b><BR>
 * @code
 * @endcode
 **/
void DMX512RD01_UART_isr(void);      /* Executes on reception on a byte of data */
#ifdef DMX512RD01_ACC_BREAK_DETECT
static inline DMX512RD01_STAT DMX512RD01_chk_break(uint32_t period);
void DMX512RD01_CaptTmr_isr(void); /* Generated after a RISING edge */
#endif
extern void DMX512RD01_CallBack();
/*******************************************************************************
**                 Function like macro definitions                            **
*******************************************************************************/

/*******************************************************************************
**                      Private Type Definitions                              **
*******************************************************************************/
#ifdef DMX512RD01_ACC_BREAK_DETECT
static inline DMX512RD01_STAT DMX512RD01_chk_break(uint32_t period)
{/* Check for a break */
    DMX512RD01_STAT status = DMX512RD01_ERROR;

    if (period >= DMX512RD01_BREAK_COUNT)/*88uS / 352 counts*/
    {
        status = DMX512RD01_SUCCESS;
    }
    else
    {
        /* Do nothing. MISRA compliance */
    }
    
    return status;
}

/*******************************************************************************
 **	Interrupt Service Routines     				              **
*******************************************************************************/
/**
 * @brief This ISR handles rising edges. It checks if "SPACE for BREAK" has been
 * long enough, resets the slot counter and flushes the UART queue.
 *
 * @param[in] none
 * @return  none
 *
 * @note  This is an Asynchronous, non reentrant function
 **/
void DMX512RD01_CaptTmr_isr(void) /* Generated after a RISING edge */
{
	uint32_t cap_count;

    cap_count  = RD_REG(DMX512RD01_Handle0.CaptureRegPtr->CV[1], CCU4_CC4_CV_CAPTV_Msk,
    CCU4_CC4_CV_CAPTV_Pos); /* clear the CAPTURE Count */

    if(cap_count == 0U) /* Error Condition 1 */
    {
        DMX512RD01_Handle0.CaptureRegPtr->TCSET |= CCU4_CC4_TCSET_TRBS_Msk;
    	/* Restart the Capture Timer as it has overflowed */
    }

    if (DMX512RD01_chk_break(cap_count) == DMX512RD01_SUCCESS)
    {
       buf_index = 0U;
       DMX512RD01_buffer_ptr = DMX512RD01_buffer;

       while((DMX512RD01_Handle0.UsicRegPtr->TRBSR & USIC_CH_TRBSR_REMPTY_Msk) != USIC_CH_TRBSR_REMPTY_Msk)
       {
          ReadByte = DMX512RD01_Handle0.UsicRegPtr->OUTR;
       }
       /* Enable USIC Standard Receive Buffer interrupt */
       DMX512RD01_Handle0.UsicRegPtr->RBCTR |= ((uint32_t)USIC_CH_RBCTR_SRBIEN_Msk);
    }
}
#endif

void DMX512RD01_UART_isr(void) /* Generated after every slot */
{
	if((DMX512RD01_Handle0.UsicRegPtr->TRBSR & USIC_CH_TRBSR_SRBI_Msk) == USIC_CH_TRBSR_SRBI_Msk)
	{ /* Recieve a byte */
		ReadByte = DMX512RD01_Handle0.UsicRegPtr->OUTR;
		DMX512RD01_Handle0.UsicRegPtr->TRBSCR = USIC_CH_TRBSCR_CSRBI_Msk;
	    buf_index++;
	}
#ifndef DMX512RD01_ACC_BREAK_DETECT
	if ((DMX512RD01_Handle0.UsicRegPtr->PSR_ASCMode & USIC_CH_PSR_ASCMode_SBD_Msk) == USIC_CH_PSR_ASCMode_SBD_Msk)
    {/* check if SBD occured */
		DMX512RD01_Handle0.UsicRegPtr->PSCR =  DMX512RD01_USIC_CLR_STATUS;
        buf_index=0;
        DMX512RD01_buffer_ptr = DMX512RD01_buffer;
        while((DMX512RD01_Handle0.UsicRegPtr->TRBSR & USIC_CH_TRBSR_REMPTY_Msk) != USIC_CH_TRBSR_REMPTY_Msk)
        {
           ReadByte = DMX512RD01_Handle0.UsicRegPtr->OUTR;
        }
        /* Enable USIC Standard Receive Buffer interrupt */
        DMX512RD01_Handle0.UsicRegPtr->RBCTR |= ((uint32_t)USIC_CH_RBCTR_SRBIEN_Msk);
    }
#endif
	if ((buf_index-1) >= start_slot_num)
	{
        if ((buf_index-1) < (start_slot_num + DMX512RD01_NUM_SLOTS))
        { /* If its valid byte, store it. */
            *DMX512RD01_buffer_ptr = (ReadByte & 0xFFU);	/* Read only 8 data */
            DMX512RD01_buffer_ptr++;
            if(buf_index == (start_slot_num + DMX512RD01_NUM_SLOTS))
            {
            	/* Disable USIC Standard Receive Buffer interrupt */
            	DMX512RD01_Handle0.UsicRegPtr->RBCTR &= (~(uint32_t)USIC_CH_RBCTR_SRBIEN_Msk);
#ifdef DMX512RD01_CALLBACK_DEFINED
       DMX512RD01_CallBack();
#endif
            }
            else
            {
            	/* Nothing to do */
            }
        }
        else
        {
        	/* Nothing to do */
        }
    }
    else
    {
    	/* Nothing to do */
    }
}


/******************************************************************************
**    Public Functions                                                       **
*******************************************************************************/
DMX512RD01_STAT DMX512RD01_ConfigStartSlotNo(uint32_t slot_num)
{
	DMX512RD01_STAT status = DMX512RD01_ERROR;

	if ((slot_num >= 1) && (slot_num <= 512))
	{
		if ((slot_num + DMX512RD01_NUM_SLOTS) <= 512)
		{
			status = DMX512RD01_SUCCESS;
			start_slot_num = slot_num;
		}
		else
		{	/* MISRA Check */
		}
	}
	else
	{ /* MISRA Check */
	}

	return status;
}

void DMX512RD01_Init(void)
{
	  USIC_CH_TypeDef* UartRegs = DMX512RD01_Handle0.UsicRegPtr;
#ifdef DMX512RD01_ACC_BREAK_DETECT
	  CCU4_GLOBAL_TypeDef* CapBaseReg = DMX512RD01_Handle0.CaptureBasePtr;
	  CCU4_CC4_TypeDef* CapSliceReg = DMX512RD01_Handle0.CaptureRegPtr;
#endif
	 /* USIC Configuration */
	  /* Disable the USIC0 clock gating */
	  SCU_GENERAL->PASSWD = 0x000000C0UL;
	  SET_BIT(SCU_CLK->CGATCLR0, SCU_CLK_CGATCLR0_USIC0_Pos);
	  while ((SCU_CLK->CLKCR)&(SCU_CLK_CLKCR_VDDC2LOW_Msk))
	  {
	    ;
	  }
	  SCU_GENERAL->PASSWD = 0x000000C3UL;
	  /* Disable UART mode before configuring all USIC registers to avoid unintended edges */
	  UartRegs->CCR &= ~( ((uint32_t)(DMX512RD01_USIC_UART  & USIC_CH_CCR_MODE_Msk)));
	  /* Enable the USIC Channel */
	  UartRegs->KSCFG |= ((((uint32_t)USIC_CH_KSCFG_MODEN_Msk)) | \
	     (((uint32_t)USIC_CH_KSCFG_BPMODEN_Msk)));
	  /* Configuration of USIC Channel Fractional Divider */
	  UartRegs->FDR |= (((uint32_t)DMX512RD01_USIC_FRACDIV_MODE << USIC_CH_FDR_DM_Pos) \
	                                                 & USIC_CH_FDR_DM_Msk);
	  /* Step value */
	  UartRegs->FDR |= ((DMX512RD01_USIC_BGR_STEP) & USIC_CH_FDR_STEP_Msk);

	  /* The PreDivider for CTQ, PCTQ = 0  */
	  /* The Denominator for CTQ, DCTQ = 16 */
	  UartRegs->BRG |= \
		  ((((uint32_t)(DMX512RD01_USIC_BGR_PCTQ) << USIC_CH_BRG_PCTQ_Pos) & \
			  	     USIC_CH_BRG_PCTQ_Msk) | \
	      (((uint32_t)(DMX512RD01_USIC_BGR_DCTQ) << USIC_CH_BRG_DCTQ_Pos) & \
		     USIC_CH_BRG_DCTQ_Msk) | \
	      (((uint32_t)(DMX512RD01_USIC_BGR_PDIV) << USIC_CH_BRG_PDIV_Pos) &  \
		     USIC_CH_BRG_PDIV_Msk));

	  /* Configuration of USIC Shift Control */
	  /* Transmit/Receive LSB first is selected  */
	  /* Transmission Mode (TRM) = 1  */
	  /* Passive Data Level (PDL) = 1 */
	  UartRegs->SCTR |= ((((uint32_t)DMX512RD01_USIC_PASSIVELEV << USIC_CH_SCTR_PDL_Pos) & \
	    USIC_CH_SCTR_PDL_Msk ) | \
	    (((uint32_t)DMX512RD01_USIC_DATATRANS_ACTIVE << USIC_CH_SCTR_TRM_Pos ) &   USIC_CH_SCTR_TRM_Msk ));
	  /* Set Word Length (WLE) & Frame Length (FLE) */
	  UartRegs->SCTR |= ((((uint32_t)DMX512RD01_USIC_FLE_WLE  << USIC_CH_SCTR_FLE_Pos) & \
	                      USIC_CH_SCTR_FLE_Msk ) | \
	                     (((uint32_t)DMX512RD01_USIC_FLE_WLE  << USIC_CH_SCTR_WLE_Pos) & \
	                        USIC_CH_SCTR_WLE_Msk));
	  /* Configuration of Protocol Control Register */
	  /* Sample Mode (SMD) = 1 */
	  /* 1 Stop bit is selected */
	  /* Sample Point (SP) as configured */
	  /* Pulse Length (PL) = 0 */
	  UartRegs->PCR_ASCMode |= ((((uint32_t)DMX512RD01_USIC_3SAMPLES & USIC_CH_PCR_ASCMode_SMD_Msk)) |\
	    (((uint32_t)DMX512RD01_USIC_2STOPBITS  << USIC_CH_PCR_ASCMode_STPB_Pos) & \
	    USIC_CH_PCR_ASCMode_STPB_Msk) | \
	    (((uint32_t)(DMX512RD01_USIC_BGR_SP) << USIC_CH_PCR_ASCMode_SP_Pos) & \
	    USIC_CH_PCR_ASCMode_SP_Msk));

	  /* Configuration of Transmitter Buffer Control Register */
	  /* Configuration of Receiver Buffer Control Register */
	  UartRegs->RBCTR |= ((((uint32_t)DMX512RD01_USIC_RXLIMIT  << \
	                       USIC_CH_RBCTR_LIMIT_Pos) & USIC_CH_RBCTR_LIMIT_Msk) | \
		                    (((uint32_t)DMX512RD01_USIC_LOF << USIC_CH_RBCTR_LOF_Pos) & \
	                       USIC_CH_RBCTR_LOF_Msk));

	  /* Configuration of Channel Control Register */
	  /* parity generation is disabled*/
	  UartRegs->CCR |= (((uint32_t)(DMX512RD01_USIC_UART  & USIC_CH_CCR_MODE_Msk)) | \
	                    (((uint32_t)DMX512RD01_USIC_NOPARITY  << USIC_CH_CCR_PM_Pos) & \
	                     USIC_CH_CCR_PM_Msk));

     /* Configuration of Sync. BREAK Detection */
	 /* Enable interrupt at SBD */
	 UartRegs->PCR_ASCMode |=  USIC_CH_PCR_ASCMode_SBIEN_Msk;

#ifdef DMX512RD01_ACC_BREAK_DETECT
 /* Capture Timer Configuration */
    /*Enable Prescaler*/
    WR_REG(CapBaseReg->GIDLC, CCU4_GIDLC_SPRB_Msk, CCU4_GIDLC_SPRB_Pos, 1);

    /*Global Channel Set*/
    /*shadow transfer set enable*/
    WR_REG(CapBaseReg->GCSS, DMX512RD01_SHADOW_MASK,
        DMX512RD01_SHADOW_MASK_BIT_POS, 1);

    /*Input Selector Configuration*/
    /*Event 0 Edge Selection. 01B = Signal active on rising edge*/
    WR_REG(CapSliceReg->INS, CCU4_CC4_INS_EV0EM_Msk,CCU4_CC4_INS_EV0EM_Pos, 1);

    /*Event 1 Edge Selection. 10B = Signal active on falling edge*/
    WR_REG(CapSliceReg->INS, CCU4_CC4_INS_EV1EM_Msk,CCU4_CC4_INS_EV1EM_Pos, 2);

    /*Event1 Signal Selection*/ 
    WR_REG(CapSliceReg->INS, CCU4_CC4_INS_EV1IS_Msk, CCU4_CC4_INS_EV1IS_Pos, DMX512RD01_EV0IS);                   

    /*Connection Matrix Control*/
    /*External Capture 0 Function triggered by Event 0 = 01B*/
    WR_REG(CapSliceReg->CMC, CCU4_CC4_CMC_CAP0S_Msk,CCU4_CC4_CMC_CAP0S_Pos, 1);

    /*External Capture 1 Function triggered by Event 1 = 10B*/
    WR_REG(CapSliceReg->CMC, CCU4_CC4_CMC_CAP1S_Msk,CCU4_CC4_CMC_CAP1S_Pos, 2);

    /*Slice Timer Control Capture Mode*/
    WR_REG(CapSliceReg->TC, CCU4_CC4_TC_CMOD_Msk,CCU4_CC4_TC_CMOD_Pos, 1);

    /*Shadow Transfer on Clear*/
    WR_REG(CapSliceReg->TC, CCU4_CC4_TC_CLST_Msk,CCU4_CC4_TC_CLST_Pos, 1);

    /*Clear on Capture Control: 11B = Timer is always cleared
    in a capture event*/
    WR_REG(CapSliceReg->TC, CCU4_CC4_TC_CAPC_Msk,CCU4_CC4_TC_CAPC_Pos, 3);

    /*Continuous Capture Enable*/
    WR_REG(CapSliceReg->TC, CCU4_CC4_TC_CCS_Msk,CCU4_CC4_TC_CCS_Pos, 1);

    /*Timer Single Shot Mode*/
	 WR_REG(CapSliceReg->TC, CCU4_CC4_TC_TSSM_Msk, CCU4_CC4_TC_TSSM_Pos, 1);

    /*Prescaler Control
    value that is loaded into the prescaler during restart
    120Mhz/4 = 30Mhz -> 1000us = 30k counts, 10B = presc 4*/
    WR_REG(CapSliceReg->PSC, CCU4_CC4_PSC_PSIV_Msk,
        CCU4_CC4_PSC_PSIV_Pos, DMX512RD01_CAPTURE_PRESCALAR);

    /*Interrupt Enable Control Event 0 interrupt enable*/
    WR_REG(CapSliceReg->INTE, CCU4_CC4_INTE_E0AE_Msk,CCU4_CC4_INTE_E0AE_Pos, 1);

    /*Enable Capture Slice (Clear Idle Bit)*/
    WR_REG(CapBaseReg->GIDLC, DMX512RD01_ILDE_BIT_MASK,DMX512RD01_IDLE_BIT_POS, 1);

    /*Slice Timer Run Set Set Timer Run Bit*/
    WR_REG(CapSliceReg->TCSET, CCU4_CC4_TCSET_TRBS_Msk,CCU4_CC4_TCSET_TRBS_Pos, 1);
#endif

}

/*CODE_BLOCK_END*/
