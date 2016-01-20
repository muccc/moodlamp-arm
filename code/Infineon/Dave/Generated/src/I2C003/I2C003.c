/*CODE_BLOCK_BEGIN[I2C003.c]*/

/*******************************************************************************
 *
 * Copyright (C) 2014 Infineon Technologies AG. All rights reserved.
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
** PLATFORM : Infineon XMC4000/XMC1000 Series                                 **
**                                                                            **
** COMPILER : Compiler Independent                                            **
**                                                                            **
** AUTHOR   : App Developer                                                   **
**                                                                            **
** NOTE     : Any Changes made to this file will be overwritten during Code   **
**            Generation                                                      **
**                                                                            **
********************************************************************************
** VERSION HISTORY:
********************************************************************************
** v1.0.4, 17 Feb 2014,  Initial version 
*******************************************************************************/

/**
 * @file I2C003.c
 *
 * @brief  I2C003 Slave App provides non reentrant APIs which can be used in 
 *         a Non -RTOS environment to configure the USIC channel as IIC slave. 
 */
/**
 * @cond INTERNAL_DOCS
 */
/*******************************************************************************
 ** INCLUDE FILES                                                             **
 ******************************************************************************/
#ifndef I2C003_H_
#include "../../inc/I2C003/I2C003.h"
#endif
#if ((__TARGET_DEVICE__ == XMC45) || (__TARGET_DEVICE__ == XMC44) || \
     (__TARGET_DEVICE__ == XMC42) || (__TARGET_DEVICE__ == XMC41))
#include "../../inc/RESET001/RESET001.h"
#else
#ifndef CLK002_H_
#include "../../inc/CLK002/CLK002.h"
#endif
#endif
#ifdef _DBG002_H_
#include "../../inc/DBG002/DBG002.h"
#endif          
/*******************************************************************************
**                      Private Macro Definitions                             **
*******************************************************************************/
#define I2C003_SCTR_FLE           0x3FU/* Frame Length : 64 Bits */
#define I2C003_SCTR_WLE           0x07U/* Word Length :  8 Bits */
#define I2C003_BITRATE            100U/* I2C003 Bit rate*/
#define I2C003_SCTR_SDIR          0x01U/* Direction set, msb transmitted or 
                                            received first */
#define I2C_ENABLE                0x4U/* Enable I2C mode */
#define I2C003_IM_STEPVALUE       500.0F/* Intermediate step value to 
                                            calculate Pdiv */
#define I2C003_DCTQ1_VALUE        0x09UL/* 10 timequanta DCTQ value */
#define I2C003_DCTQ2_VALUE        0x18UL/* 25 timequanta DCTQ value */
#define I2C003_MAX_PDIVVAL        1023.0F
#define I2C003_MAX_STEPVALUE      1024.0F
#define I2C003_OPENDRAIN_OUT      0x18U

#define FIRST_NIBBLE              4U
#define SECOND_NIBBLE             8U
#define THIRD_NIBBLE              12U
#define FOURTH_NIBBLE             16U

#define HUNDRADE_KBPS             100000.0F 
#define ONE_MEGA_HZ				  1000000.0F
#define ONE_KBPS				  1000.0F

#define INDICATION_FLG_OFFSET     10U
#define STATUS_FLG_OFFSET         8U

#define SHIFT_ZERO				  0x00U
#define SHIFT_ONE				  0x01U
#define SHIFT_THREE				  0x03U
#define MASK_ONE				  0x01U

/*******************************************************************************
**                      Private Type Definitions                              **
*******************************************************************************/

/*******************************************************************************
**                 Private Function Declarations:
*******************************************************************************/
void I2C003_lInit(const I2C003_HandleType* Handle);
/* Configures SCL pin as Open-drain with General-purpose output */
void I2C003_lConfigSCLPin(const I2C003_HandleType* Handle);
/* Configures SDA pin as Open-drain with General-purpose output */
void I2C003_lConfigSDAPin(const I2C003_HandleType* Handle);
/* Configures IIC Protocol Control Register*/
void I2C003_lConfigPcrReg(const I2C003_HandleType* Handle);
/* Give optimised PDIV and STEP value for the given bit rate */ 
void I2C003_lConfigBitRate(uint32_t BitRate,uint32_t* PDivValue, 
		                   uint32_t* StepValue);
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

/*******************************************************************************
 * @brief This function initialises the USIC Channel with GUI configured values.
 *
 * @param[in]  Handle of type I2C003_HandleType
 *
 * @return  None <BR>
 *
 * <b>Reentrant: No </b><BR>
 ******************************************************************************/
void I2C003_lInit(const I2C003_HandleType* Handle)
{
 
   USIC_CH_TypeDef* I2CRegs = Handle->I2CRegs;

   /** I2C initialisation  */
   /* Disable I2C mode before configuring all USIC registers to avoid 
    * unintended edges */ 
   I2CRegs->CCR &= ~(((uint32_t)(I2C_ENABLE  & USIC_CH_CCR_MODE_Msk)));

   /* Enable the USIC Channel */
   I2CRegs->KSCFG |= ((MASK_ONE & USIC_CH_KSCFG_MODEN_Msk)) | \
                     (((uint32_t)SHIFT_ONE << USIC_CH_KSCFG_BPMODEN_Pos));
   
   /* Configuration of USIC Channel Fractional Divider */
   /* Fractional divider mode selected */
   I2CRegs->FDR |= \
           ((((uint32_t)USIC_FRACTIONAL_DIV_SEL << USIC_CH_FDR_DM_Pos) & \
             USIC_CH_FDR_DM_Msk) | \
            (((uint32_t)Handle->Fdr_StepValue << USIC_CH_FDR_STEP_Pos) & \
            USIC_CH_FDR_STEP_Msk));
             
   if (I2C003_BITRATE >= Handle->BitRate)
   {  
     /* The PreDivider for CTQ, PCTQ = 0  */
     /* The Denominator for CTQ, DCTQ = 9 */
     I2CRegs->BRG |=(((uint32_t)I2C003_DCTQ1_VALUE <<  USIC_CH_BRG_DCTQ_Pos) | \
                    (((uint32_t)Handle->Brg_PDivValue << USIC_CH_BRG_PDIV_Pos) \
					  & USIC_CH_BRG_PDIV_Msk));
   }
   else
   {
     /* The PreDivider for CTQ, PCTQ = 0  */
     /* The Denominator for CTQ, DCTQ = 24 */
     I2CRegs->BRG |= (((uint32_t)I2C003_DCTQ2_VALUE << USIC_CH_BRG_DCTQ_Pos) | \
                     (((uint32_t)Handle->Brg_PDivValue << USIC_CH_BRG_PDIV_Pos)\
					   & USIC_CH_BRG_PDIV_Msk));
   }

   /* Configuration of USIC Shift Control */
   /* Transmit/Receive MSB first is selected  */
   /* Transmission Mode (TRM) = 3  */
   /* Passive Data Level (PDL) = 1 */
   /* Frame Length (FLE) = 63 (3F) */
   /* Word Length (WLE) = 7  */

   I2CRegs->SCTR |=  \
               ((((uint32_t)I2C003_SCTR_SDIR << USIC_CH_SCTR_SDIR_Pos)&  \
                  USIC_CH_SCTR_SDIR_Msk) | \
                 ((uint32_t)SHIFT_ONE << USIC_CH_SCTR_PDL_Pos ) | \
                 ((uint32_t)SHIFT_THREE <<  USIC_CH_SCTR_TRM_Pos) |
                (((uint32_t)I2C003_SCTR_FLE  << USIC_CH_SCTR_FLE_Pos) & \
                  USIC_CH_SCTR_FLE_Msk ) | \
                (((uint32_t)I2C003_SCTR_WLE << USIC_CH_SCTR_WLE_Pos) & \
                  USIC_CH_SCTR_WLE_Msk));

       
   /* Configuration of USIC Transmit Control/Status Register */ 
   /* TBUF Data Enable (TDEN) = 1 */
   /* TBUF Data Single Shot Mode (TDSSM) = 1 */     
   I2CRegs->TCSR |= \
                  ((((uint32_t)SHIFT_ONE << USIC_CH_TCSR_TDEN_Pos) & \
                     USIC_CH_TCSR_TDEN_Msk) | \
                  (((uint32_t)SHIFT_ONE << USIC_CH_TCSR_TDSSM_Pos) & \
				     USIC_CH_TCSR_TDSSM_Msk));

   /* Configuration of Protocol Control Register */
   /* Slave Address */
   /* Symbol timing = 10 time quanta */
   /* The start condition interrupt is enabled */
   /* The repeated start condition interrupt is enabled */
   /* The stop condition interrupt is enabled */
   /* Non-Acknowledge interrupt enabled */
   /* Arbitration Lost interrupt enabled */
   /* Slave read request interrupt enabled */
   /* Error interrupt enabled */
   /* Configuration of Protocol Control Register */ 
   I2C003_lConfigPcrReg(Handle);
   
   /** FIFO Configuration */
   if (Handle->TxFifoEn)
   {
      /* Configuration of Transmitter Buffer Control Register */ 
      /* Limit for transmit FIFO interrupt generation is set based on UI */
      I2CRegs->TBCTR |= \
             ((((uint32_t)Handle->TxLimit << USIC_CH_TBCTR_LIMIT_Pos ) & \
	 			                                   USIC_CH_TBCTR_LIMIT_Msk));
   }
   else
   {
      /* Configuration of Protocol Status Register */
	  /* TBIF is set to simplify polling*/
	  I2CRegs->PSR_IICMode |= \
	                    (((uint32_t)SHIFT_ONE << USIC_CH_PSR_IICMode_TBIF_Pos) \
			              & USIC_CH_PSR_IICMode_TBIF_Msk);
   }
   
   if (Handle->RxFifoEn)
   {
      /* Configuration of Receiver Buffer Control Register */ 
      /* Limit for receive FIFO interrupt generation is set based on UI*/
      /* Filling level mode is selected */
      I2CRegs->RBCTR |= \
              ((((uint32_t)Handle->RxLimit << USIC_CH_RBCTR_LIMIT_Pos) & \
	 			USIC_CH_RBCTR_LIMIT_Msk) | \
                (((uint32_t)SHIFT_ONE << USIC_CH_RBCTR_LOF_Pos) & \
                USIC_CH_RBCTR_LOF_Msk));
   }else{}
   
   I2CRegs->CCR |= ((I2C_ENABLE) & USIC_CH_CCR_MODE_Msk);
}

/*******************************************************************************
 * @brief This function configures IIC Protocol Control Register. 
 *
 * @param[in]  Handle of type I2C003_HandleType
 *
 * @return  None <BR>
 *
 * <b>Reentrant: No </b><BR>
 ******************************************************************************/
void I2C003_lConfigPcrReg(const I2C003_HandleType* Handle)
{
    USIC_CH_TypeDef* I2CRegs = Handle->I2CRegs;

   /* Slave Address */
   I2CRegs->PCR_IICMode |= (uint32_t)Handle->SlaveAddress;

   if (I2C003_BITRATE >= Handle->BitRate)
   {
	   /* Symbol timing = 10 time quanta */
	   I2CRegs->PCR_IICMode |= \
	                 (((uint32_t)SHIFT_ZERO << USIC_CH_PCR_IICMode_STIM_Pos) & \
			                    USIC_CH_PCR_IICMode_STIM_Msk);
   }
   else
   {
	   /* Symbol timing = 25 time quanta */
	 I2CRegs->PCR_IICMode |= \
	                  (((uint32_t)SHIFT_ONE << USIC_CH_PCR_IICMode_STIM_Pos) & \
								USIC_CH_PCR_IICMode_STIM_Msk);
   }
   if (Handle->StartCondRecvIntEn)
   {
	  /* Enable Start Condition Recv Interrupt*/
	 I2CRegs->PCR_IICMode |=(((uint32_t)SHIFT_ONE  << USIC_CH_PCR_CTR18_Pos) & \
							  USIC_CH_PCR_CTR18_Msk);
   }else{}
   if (Handle->RepStartCondRecvIntEn)
   {
		/* Enable Repeated Start Condition Interrupt*/
	  I2CRegs->PCR_IICMode |=(((uint32_t)SHIFT_ONE << USIC_CH_PCR_CTR19_Pos) & \
							  USIC_CH_PCR_CTR19_Msk);
   }else{}
   if (Handle->StopCondRecvIntEn)
   {
		/* Enable Stop Condition Interrupt*/
	  I2CRegs->PCR_IICMode |=(((uint32_t)SHIFT_ONE  << USIC_CH_PCR_CTR20_Pos) & \
							  USIC_CH_PCR_CTR20_Msk);
   }else{}
   if (Handle->SlaveReadReqIntEn)
   {
		/* Enable a slave read request detected interrupt */
	  I2CRegs->PCR_IICMode |=(((uint32_t)SHIFT_ONE  << USIC_CH_PCR_CTR23_Pos) & \
							   USIC_CH_PCR_CTR23_Msk);
   }else{}
   if (Handle->ErrorIntEn)
   {
		/* Enable IIC Error Interrupt */
	  I2CRegs->PCR_IICMode |=(((uint32_t)SHIFT_ONE  << USIC_CH_PCR_CTR24_Pos) & \
						  USIC_CH_PCR_CTR24_Msk);
   }else{}
}

/*******************************************************************************
 * @brief This function gives optimised PDIV and STEP value for the given 
 * baud rate.  
 *
 * @param[in]  Bitrate of type uint32_t
 * @param[in]  PDivValue reference of type uint32_t
 * @param[in]  StepValue reference of type uint32_t
 *
 * @return  None <BR>
 *
 * <b>Reentrant: No </b><BR>
 ******************************************************************************/
void I2C003_lConfigBitRate(uint32_t BitRate, \
                           uint32_t* PDivValue, \
						   uint32_t* StepValue)
{
  float ratio = 0.0F;
  float TempBitrate;
  float TempPdiv = 0.0F;
  float TempStep = 0.0F;
  
  TempBitrate = ((float)BitRate * ONE_KBPS);
  
  if (HUNDRADE_KBPS >= TempBitrate)
  {
    ratio = ((((I2C003_USIC_CLOCK * ONE_MEGA_HZ)/ \
             ((1.0F + (float)I2C003_DCTQ1_VALUE)*I2C003_MAX_STEPVALUE)) * \
             I2C003_IM_STEPVALUE)/TempBitrate);
  }
  else
  {
    ratio = ((((I2C003_USIC_CLOCK * ONE_MEGA_HZ)/ \
             ((1.0F + (float)I2C003_DCTQ2_VALUE)*I2C003_MAX_STEPVALUE)) * \
             I2C003_IM_STEPVALUE)/TempBitrate);
  }
  /* Calculating optimum PDIV value */
  if (1.0F >= ratio)
  {
    TempPdiv = 0.0F;
  }
  else
  {
    TempPdiv =  ratio - 1.0F;
    if( TempPdiv > I2C003_MAX_PDIVVAL)
    {
  	  TempPdiv = I2C003_MAX_PDIVVAL;
    }else{}
  }
  *PDivValue = (uint32_t)(TempPdiv);
  /* Calculating STEP value */
  if (HUNDRADE_KBPS >= TempBitrate)
  {
    TempStep = ((((TempBitrate * (1.0F + (float)I2C003_DCTQ1_VALUE) * \
                    I2C003_MAX_STEPVALUE)/ ONE_MEGA_HZ) * \
	               (1.0F+ ((float)*PDivValue)))/(I2C003_USIC_CLOCK));
  }
  else
  {
    TempStep = ((((TempBitrate * (1.0F + (float)I2C003_DCTQ2_VALUE) * \
                 I2C003_MAX_STEPVALUE)/ ONE_MEGA_HZ) * \
	             (1.0F+ ((float)*PDivValue)))/(I2C003_USIC_CLOCK));
  }
  if (I2C003_MAX_PDIVVAL < TempStep)
  {
	  TempStep = I2C003_MAX_PDIVVAL;
  }else{}
  *StepValue = (uint32_t)(TempStep);
}

/*******************************************************************************
 * @brief This function configures SCL pin as Open-drain General-purpose
 * output and sets to '1'. 
 *
 * @param[in]  Handle of type I2C003_HandleType
 *
 * @return  None <BR>
 *
 * <b>Reentrant: No </b><BR>
 ******************************************************************************/ 
void I2C003_lConfigSCLPin(const I2C003_HandleType* Handle)
{
	uint32_t TempPortPin;
	
    /* set the SCL port pin to '1' */
    Handle->PinHandle.SCL_PortBase->OMR |= (uint32_t)SHIFT_ONE << \
   		                                      Handle->PinHandle.SCL_Pin;
	 /* Configure SCL port pin as Open-drain General-purpose output */
    TempPortPin = (uint32_t)Handle->PinHandle.SCL_Pin;
    if (FIRST_NIBBLE > TempPortPin)
    {
   	  Handle->PinHandle.SCL_PortBase->IOCR0 |= \
   			                ((uint32_t)I2C003_OPENDRAIN_OUT << (3U + \
							(TempPortPin * 8U)));
    }
    else if ((FIRST_NIBBLE <= TempPortPin) && (SECOND_NIBBLE > TempPortPin))
    {
	  TempPortPin = TempPortPin - 4U;
	  Handle->PinHandle.SCL_PortBase->IOCR4 |= \
			                ((uint32_t)I2C003_OPENDRAIN_OUT << (3U + \
							(TempPortPin * 8U)));
    }
    else if ((SECOND_NIBBLE <= TempPortPin) && (THIRD_NIBBLE > TempPortPin))
    {
 	  TempPortPin = TempPortPin - 8U;
 	  Handle->PinHandle.SCL_PortBase->IOCR8 |= \
 			                ((uint32_t)I2C003_OPENDRAIN_OUT << (3U + \
							(TempPortPin * 8U)));
    }
    else if ((THIRD_NIBBLE <= TempPortPin) && (FOURTH_NIBBLE > TempPortPin))
    {
	  TempPortPin = TempPortPin - 12U;
	  Handle->PinHandle.SCL_PortBase->IOCR12 |= \
			                ((uint32_t)I2C003_OPENDRAIN_OUT << (3U + \
							(TempPortPin * 8U)));
    }
	else
	{}

}

/*******************************************************************************
 * @brief This function configures SDA pin as Open-drain General-purpose
 * output and sets to '1'. 
 *
 * @param[in]  Handle of type I2C003_HandleType
 *
 * @return  None <BR>
 *
 * <b>Reentrant: No </b><BR>
 ******************************************************************************/
void I2C003_lConfigSDAPin(const I2C003_HandleType* Handle)
{
	uint32_t TempPortPin;

    /* Set SDA port pin to '1' */
    Handle->PinHandle.SDA_PortBase->OMR |= (uint32_t)SHIFT_ONE << \
    		                                    Handle->PinHandle.SDA_Pin;
    /* Configure SDA port pin as Open-drain General-purpose output */
    TempPortPin = (uint32_t)Handle->PinHandle.SDA_Pin;
    if (FIRST_NIBBLE > TempPortPin)
    {
      Handle->PinHandle.SDA_PortBase->IOCR0 |= \
    		               ((uint32_t)I2C003_OPENDRAIN_OUT << (3U + \
						   (TempPortPin * 8U)));
    }
    else if ((FIRST_NIBBLE <= TempPortPin) && (SECOND_NIBBLE > TempPortPin))
    {
 	  TempPortPin = TempPortPin - 4U;
 	  Handle->PinHandle.SDA_PortBase->IOCR4 |= \
 			               ((uint32_t)I2C003_OPENDRAIN_OUT << (3U + \
						   (TempPortPin * 8U)));
    }
    else if ((SECOND_NIBBLE <= TempPortPin) && (THIRD_NIBBLE >= TempPortPin))
    {
      TempPortPin = TempPortPin - 8U;
      Handle->PinHandle.SDA_PortBase->IOCR8 |= \
    		               ((uint32_t)I2C003_OPENDRAIN_OUT << (3U + \
						   (TempPortPin * 8U)));
    }
    else if ((THIRD_NIBBLE <= TempPortPin) && (FOURTH_NIBBLE >= TempPortPin))
    {
 	  TempPortPin = TempPortPin - 12U;
 	  Handle->PinHandle.SDA_PortBase->IOCR12 |= \
 			               ((uint32_t)I2C003_OPENDRAIN_OUT << (3U + \
						   (TempPortPin * 8U)));
    }
	else
	{}

}

/*******************************************************************************
**                      Public Function Definitions                           **
*******************************************************************************/

/*******************************************************************************
 * @brief This function initialises the App, based on User provided
 * configuration. 
 * 
 * @param[in]  None
 *
 * @return  None <BR>
 *
 * <b>Reentrant: No </b><BR>
 ******************************************************************************/
void I2C003_Init(void)
{
   uint32_t LoopIndex;
	
#if (__TARGET_DEVICE__ != XMC45)
   
#if ((__TARGET_DEVICE__ == XMC13) || \
     (__TARGET_DEVICE__ == XMC12) || \
     (__TARGET_DEVICE__ == XMC11))
  /* Disable the USIC0/USIC1 clock gating for XMC1000 devices */    
  SCU_GENERAL->PASSWD = 0x000000C0UL;
  WR_REG(SCU_CLK->CLKCR, SCU_CLK_CLKCR_CNTADJ_Msk, \
                                SCU_CLK_CLKCR_CNTADJ_Pos,CLK002_DELAYCNT);

#if defined(I2C003_PER0_USIC0_ENABLED)
  SET_BIT(SCU_CLK->CGATCLR0, SCU_CLK_CGATCLR0_USIC0_Pos);
#endif
#if defined(I2C003_PER1_USIC1_ENABLED)
  SET_BIT(SCU_CLK->CGATCLR1, SCU_CLK_CGATCLR1_USIC1_Pos);
#endif
  while ((SCU_CLK->CLKCR)&(SCU_CLK_CLKCR_VDDC2LOW_Msk))
  {
  	;
  }
  SCU_GENERAL->PASSWD = 0x000000C3UL;
#else
 /* Disable the USIC0/USIC1 clock gating for XMC4400 and XMC4200 devices*/
#if defined(I2C003_PER0_USIC0_ENABLED)
  SET_BIT(SCU_CLK->CGATCLR0, SCU_CLK_CGATCLR0_USIC0_Pos);
#endif
#if defined(I2C003_PER1_USIC1_ENABLED)
  SET_BIT(SCU_CLK->CGATCLR1, SCU_CLK_CGATCLR1_USIC1_Pos);
#endif
#endif
#endif

#if ((__TARGET_DEVICE__ == XMC45) || \
     (__TARGET_DEVICE__ == XMC44) || \
     (__TARGET_DEVICE__ == XMC42))
  /* Reset the Peripheral*/
#if defined(I2C003_PER0_USIC0_ENABLED)
  RESET001_DeassertReset(PER0_USIC0);
#endif
#if defined(I2C003_PER1_USIC1_ENABLED)
  RESET001_DeassertReset(PER1_USIC1); 
#endif
#if defined(I2C003_PER1_USIC2_ENABLED)
  RESET001_DeassertReset(PER1_USIC2); 
#endif 
#endif  
  
  for (LoopIndex = (uint32_t)0; LoopIndex < (uint32_t)I2C003_NUM_HANDLES; \
                           LoopIndex++)
  {
	I2C003_lConfigSCLPin(I2C003_HandleArray[LoopIndex]);
	I2C003_lConfigSDAPin(I2C003_HandleArray[LoopIndex]);
    I2C003_lInit(I2C003_HandleArray[LoopIndex]);
  }
  
}

/*******************************************************************************
 * @brief This function de-initialises the USIC channel configurations.
 * 
 * @param[in]  Handle of type I2C003_HandleType
 *
 * @return  None <BR>
 *
 * <b>Reentrant: No </b><BR>
 ******************************************************************************/
void I2C003_DeInit(const I2C003_HandleType* Handle)
{
  USIC_CH_TypeDef* I2CRegs = Handle->I2CRegs;
  
  /* Enable Stop mode 1 */
  I2CRegs->KSCFG |= (((uint32_t)SHIFT_THREE  << USIC_CH_KSCFG_NOMCFG_Pos) & \
                      USIC_CH_KSCFG_NOMCFG_Msk);                 
  /* Reset registers */    
  I2CRegs->FDR   = USIC_REG_RESET;
  I2CRegs->BRG   = USIC_REG_RESET;
  I2CRegs->SCTR  = USIC_REG_RESET;
  I2CRegs->TCSR  = USIC_REG_RESET;
  I2CRegs->PCR_IICMode = USIC_REG_RESET;
  I2CRegs->PSR_IICMode = USIC_REG_RESET;
  I2CRegs->TBCTR = USIC_REG_RESET;
  I2CRegs->RBCTR = USIC_REG_RESET;
  I2CRegs->CCR   = USIC_REG_RESET;
  I2CRegs->KSCFG = USIC_REG_RESET;
  
}

/*******************************************************************************
 * @brief This function allows the user to configure the baud rate at run time.
 * The user has to pass the baud rate value in terms of Kbaud (Eg: 400)
 *
 * @param[in]  Handle of type I2C003_HandleType
 * @param[in]  BitRate Desired Baud Rate of type uint32_t
 *
 * @return     None <br>
 *
 * <b>Reentrant: NO </b><BR>
 ******************************************************************************/
void I2C003_Configure(const I2C003_HandleType* Handle,uint32_t BitRate)
{
  uint32_t Brg_PDivValue;
  uint32_t Fdr_StepValue;
  USIC_CH_TypeDef* I2CRegs;

  Brg_PDivValue = 0x00U;
  Fdr_StepValue = 0x00U;
  I2CRegs = Handle->I2CRegs;
   
  /* Disable I2C mode before configuring all USIC registers to avoid 
   * unintended edges */ 
  I2CRegs->CCR &= ~( ((uint32_t)(I2C_ENABLE  & USIC_CH_CCR_MODE_Msk)));

  /* Configuration of USIC Channel Fractional Divider */
  /* Get the optimum PDIV and STEP value for the given bit rate */
  I2C003_lConfigBitRate(BitRate, &Brg_PDivValue, &Fdr_StepValue);    
      
  /* Fractional divider mode selected */
  I2CRegs->FDR &= ~(USIC_CH_FDR_STEP_Msk);
  I2CRegs->FDR |= (Fdr_StepValue & USIC_CH_FDR_STEP_Msk);
              
  /* Configure BitRate */
  I2CRegs->BRG &= ~(USIC_CH_BRG_PDIV_Msk | USIC_CH_BRG_DCTQ_Msk | \
	                    USIC_CH_BRG_PCTQ_Msk);
    		                           
  if (I2C003_BITRATE >= BitRate)
  {  
     /* The PreDivider for CTQ, PCTQ = 0  */
     /* The Denominator for CTQ, DCTQ = 9 */
     I2CRegs->BRG |= ((I2C003_DCTQ1_VALUE <<  USIC_CH_BRG_DCTQ_Pos) | \
      (((uint32_t)Brg_PDivValue  <<  USIC_CH_BRG_PDIV_Pos) & \
       USIC_CH_BRG_PDIV_Msk)); 
  }
  else
  {
     /* The PreDivider for CTQ, PCTQ = 0  */
     /* The Denominator for CTQ, DCTQ = 24 */
     I2CRegs->BRG |= ((I2C003_DCTQ2_VALUE <<  USIC_CH_BRG_DCTQ_Pos) | \
      (((uint32_t)Brg_PDivValue  <<  USIC_CH_BRG_PDIV_Pos) & \
        USIC_CH_BRG_PDIV_Msk));
  }
      	 
  I2CRegs->PCR_IICMode &= ~(USIC_CH_PCR_IICMode_STIM_Msk);    
  /* Configuration of Protocol Control Register */ 
  if (I2C003_BITRATE >= BitRate)
  {
     /* Symbol timing = 10 time quanta */
     I2CRegs->PCR_IICMode |= \
              (((((uint32_t)SHIFT_ZERO << USIC_CH_PCR_IICMode_STIM_Pos)) & \
                                           USIC_CH_PCR_IICMode_STIM_Msk)); 
  }
  else
  {
     /* Symbol timing = 25 time quanta */
     I2CRegs->PCR_IICMode |= \
                 (((((uint32_t)SHIFT_ONE << USIC_CH_PCR_IICMode_STIM_Pos)) & \
                                           USIC_CH_PCR_IICMode_STIM_Msk));  
  }
      	                            
  /* Enable I2C mode */
  I2CRegs->CCR |= ((I2C_ENABLE) & USIC_CH_CCR_MODE_Msk);

}

/*******************************************************************************
 * @brief When fifo buffer is enabled, this function writes out a word 
 * to the USIC FIFO transmit buffer register. Returns true if the FIFO is not
 * full else otherwise.
 * But when fifo buffer is disabled, this function writes a word to the USIC 
 * standard transmit buffer register. Returns true in case if the TDV bit is not
 * set else otherwise.
 *
 * @param[in]  Handle of type I2C003_HandleType
 * @param[out] Data Pointer to data of type I2C003_DataType
 *
 * @return     bool <BR>
 *             TRUE   : if FIFO is not full or if TDV bit is not Set.<BR>
 *             FALSE  : if FIFO is full or if TDV bit is Set.<BR>
 *
 * <b>Reentrant: NO </b><BR>
 ******************************************************************************/
bool I2C003_WriteData(const I2C003_HandleType* Handle, \
                          const I2C003_DataType* Data)
{
   bool Result = (bool)FALSE;
   USIC_CH_TypeDef* I2CRegs;
  
   I2CRegs = Handle->I2CRegs;  

   if (!(USIC_CH_PSR_IICMode_WTDF_Msk & I2CRegs->PSR_IICMode))
   {
	   if(Handle->TxFifoEn)
	   {
		   if(!USIC_IsTxFIFOfull(I2CRegs))
		   {
			 I2CRegs->IN[0] = \
						(((uint32_t)Data->TDF_Type << 8) | Data->Payload);
			 Result = (bool)TRUE;    
		   }
	   }else if(!(USIC_CH_TCSR_TDV_Msk & I2CRegs->TCSR))
	   {
	       I2CRegs->TBUF[0] = (((uint32_t)Data->TDF_Type << 8) | Data->Payload);	
	       Result = (bool)TRUE;   
	   }
   }
   
   return Result;
}

/*******************************************************************************
 * @brief When receive FIFO buffer is enabled, this function reads out the 
 * content of the USIC receive FIFO Buffer. Returns true in case FIFO is not 
 * empty else otherwise.
 * But when receive FIFO buffer is disabled, this function reads out  the 
 * content of the USIC receive standard Buffer.
 *
 * @param[in]  Handle of type I2C003_HandleType
 * @param[out] Buffer reference of type uint16_t
 *
 * @return     bool<BR>
 *             TRUE   : if FIFO is not empty & data is read.<BR>
 *             FALSE  : if FIFO is empty.<BR>
 *
 * <b>Reentrant: NO </b><BR>
 ******************************************************************************/
bool I2C003_ReadData(const I2C003_HandleType* Handle, uint8_t* Buffer)
{ 
  bool Result = (bool)FALSE;
  USIC_CH_TypeDef* I2CRegs;
  
  I2CRegs = Handle->I2CRegs;  

  if(Handle->RxFifoEn)
  {
	  if (!USIC_ubIsRxFIFOempty(I2CRegs))
	  {
		*Buffer = (uint8_t)I2CRegs->OUTR;
		Result = (bool)TRUE;
	  }
  }else
  {
	  *Buffer = (uint8_t)I2CRegs->RBUF;
	  Result = (bool)TRUE;
  }
  return Result;
}

/*******************************************************************************
 * @brief The function is used to get the flag status. It returns I2C003_SET
 * if the corresponding flag is set else it returns I2C003_RESET.
 * The user has to pass the Flag to be checked as a parameter in this Api.
 *
 * @param[in]  Handle of type I2C003_HandleType
 * @param[in]  Flag which needs to be checked of type I2C003_FlagStatusType
 *
 * @return     status_t <BR>
 *             I2C003_SET    : indicates Flag is set.<BR>
 *             I2C003_RESET  : indicates Flag is reset.<BR>
 *
 * <b>Reentrant: NO </b><BR>
 ******************************************************************************/
status_t I2C003_GetFlagStatus(const I2C003_HandleType* Handle, \
                                    I2C003_FlagStatusType Flag)
{
  status_t Status;
  uint32_t TempValue = 0x00U;
  USIC_CH_TypeDef* I2CRegs;
  
  Status = (status_t)I2C003_RESET;
  I2CRegs = Handle->I2CRegs;

  if (I2C003_FLAG_RIF >= Flag)
  {
    TempValue = I2CRegs->PSR_IICMode;
    TempValue &= \
	          ((uint32_t)SHIFT_ONE << ((uint32_t)Flag + INDICATION_FLG_OFFSET));
  }
  else if (I2C003_FLAG_NACK_RECEIVED == Flag)
  {
    TempValue = I2CRegs->PSR_IICMode;
    TempValue &= ((uint32_t)SHIFT_ONE << (uint32_t)I2C003_FLAG_WRONG_TDF);
  }
  else if (I2C003_FLAG_WRONG_TDF == Flag)
  {
    TempValue = I2CRegs->PSR_IICMode;
    TempValue &= ((uint32_t)SHIFT_ONE << (uint32_t)I2C003_FLAG_DLIF);	
  }
  else if (I2C003_FLAG_RBERI >= Flag)
  {
    TempValue = I2CRegs->TRBSR;
    TempValue &= ((uint32_t)SHIFT_ONE << ((uint32_t)Flag - \
                 (uint32_t)I2C003_FLAG_SRBI));
  }
  else
  {
    TempValue = I2CRegs->TRBSR;
    TempValue &= ((uint32_t)SHIFT_ONE << (((uint32_t)Flag - \
                 (uint32_t)I2C003_FLAG_STBI) + STATUS_FLG_OFFSET));
  }
  if (TempValue)
  {
    Status = (status_t)I2C003_SET;
  }else{}
   return Status;
}

/*******************************************************************************
 * @brief The function is used to clear the flag status. The user can pass the
 * flag to be cleared as a parameter of this function. The function does not 
 * return any value and the user entered flag is cleared.
 *
 * @param[in]  Handle of type I2C003_HandleType
 * @param[in]  Flag which needs to be checked of type I2C003_FlagStatusType
 *
 * @return    None <BR>
 *
 * <b>Reentrant: NO </b><BR>
 ******************************************************************************/
void I2C003_ClearFlag(const I2C003_HandleType* Handle, \
                            I2C003_FlagStatusType Flag)
{
  USIC_CH_TypeDef* I2CRegs;
  
  I2CRegs = Handle->I2CRegs;

  if (I2C003_FLAG_RIF >= Flag)
  {
    I2CRegs->PSCR = ((uint32_t)SHIFT_ONE << (((uint32_t)Flag - \
                    (uint32_t)I2C003_FLAG_RSIF) + INDICATION_FLG_OFFSET));
  }
  else if (I2C003_FLAG_NACK_RECEIVED == Flag)
  {
    I2CRegs->PSCR = ((uint32_t)SHIFT_ONE << (uint32_t)I2C003_FLAG_WRONG_TDF);
  }
  else if (I2C003_FLAG_WRONG_TDF == Flag)
  {
    I2CRegs->PSCR = ((uint32_t)SHIFT_ONE << (uint32_t)I2C003_FLAG_DLIF);	
  }
  else if (I2C003_FLAG_RBERI >= Flag)
  {
    I2CRegs->PSCR = \
	     ((uint32_t)SHIFT_ONE << ((uint32_t)Flag - (uint32_t)I2C003_FLAG_SRBI));
  }
  else
  {
    I2CRegs->PSCR = ((uint32_t)SHIFT_ONE << (((uint32_t)Flag - \
                    (uint32_t)I2C003_FLAG_STBI) + STATUS_FLG_OFFSET));
  }
}
/**
 * @endcond
 */
/*CODE_BLOCK_END*/ 
