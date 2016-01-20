/*******************************************************************************
**  DAVE App Name : DAVESupport       App Version: 1.0.44               
**  This file is generated by DAVE, User modification to this file will be    **
**  overwritten at the next code generation.                                  **
*******************************************************************************/


/*******************************************************************************
 Copyright (c) 2014, Infineon Technologies AG                                 **
 All rights reserved.                                                         **
                                                                              **
 Redistribution and use in source and binary forms, with or without           **
 modification,are permitted provided that the following conditions are met:   **
                                                                              **
 *Redistributions of source code must retain the above copyright notice,      **
 this list of conditions and the following disclaimer.                        **
 *Redistributions in binary form must reproduce the above copyright notice,   **
 this list of conditions and the following disclaimer in the documentation    **
 and/or other materials provided with the distribution.                       **
 *Neither the name of the copyright holders nor the names of its contributors **
 may be used to endorse or promote products derived from this software without**
 specific prior written permission.                                           **
                                                                              **
 THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS "AS IS"  **
 AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE    **
 IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE   **
 ARE  DISCLAIMED. IN NO EVENT SHALL THE COPYRIGHT HOLDER OR CONTRIBUTORS BE   **
 LIABLE  FOR ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR         **
 CONSEQUENTIAL DAMAGES (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF         **
 SUBSTITUTE GOODS OR  SERVICES; LOSS OF USE, DATA, OR PROFITS; OR BUSINESS    **
 INTERRUPTION) HOWEVER CAUSED AND ON ANY THEORY OF LIABILITY, WHETHER IN      **
 CONTRACT, STRICT LIABILITY,OR TORT (INCLUDING NEGLIGENCE OR OTHERWISE)       **
 ARISING IN ANY WAY OUT OF THE USE OF THIS SOFTWARE, EVEN IF ADVISED OF THE   **
 POSSIBILITY OF SUCH DAMAGE.                                                  **
                                                                              **
 To improve the quality of the software, users are encouraged to share        **
 modifications, enhancements or bug fixes with Infineon Technologies AG       **
 dave@infineon.com).                                                          **
                                                                              **
********************************************************************************
**                                                                            **
**                                                                            **
** PLATFORM : Infineon <Microcontroller name, step>                           **
**                                                                            **
** COMPILER : Compiler Independent                                            **
**                                                                            **
** MODIFICATION DATE : April 23, 2014                                     **
**                                                                            **
*******************************************************************************/
/**
 * @file  MULTIPLEXER.c
 *
 * @brief This file contains implementation of DAVE Support function which 
 * uses to configure multiplexer register values.
 * 24 July 2013 v1.0.34 Initial Version
 * 06 sep 2013 v1.0.36  UART001 : Mux : One instruction for output pins 
 *                      initialisation.
 *                      CAN001 & CAN002 : Avoid twice reset of the INIT bit in 
 *                      Can001_lNodeInit & DAVE_MUX_Init.
 *                      WR_REGHIB Macro definition has been changed.
 * 23 April 2014 v1.0.44 HRPWM MUX configuration supported.                      
 *                      
 */

/*******************************************************************************
**                      Include Files                                         **
*******************************************************************************/
#include "../../inc/DAVESupport/DAVE3.h"

/*******************************************************************************
**                 Function declarations                                     **
*******************************************************************************/
/*******************************************************************************
** Syntax           : void DAVE_MUX_Init(void)                                **
**                                                                            **
** Reentrancy       : None                                                    **
**                                                                            **
** Parameters (in)  : void                                                    **
**                                                                            **
** Parameters (out) : none                                                    **
**                                                                            **
** Return value     : none                                                    **
**                                                                            **
** Description      : This is the Mux configuration                           **
**                                                                            **
*******************************************************************************/
           
void DAVE_MUX_Init(void)
{  
   	 
            	         
                                     
       /*        SCU Macro definitions     */                  
   	 
            	         
                                                     
   	 
      
//********* MODULE USIC CONFIGURATIONS *************************	        
        
           
   /* Disable mode before configuring all USIC registers to avoid unintended edges */   
      /* Variable to store the CCR_MODE values for various USIC channels */ 
      uint32_t UsicCcrMode[6] = {0};
           
    UsicCcrMode[0] |= (uint32_t) RD_REG(USIC0_CH0->CCR, USIC_CH_CCR_MODE_Msk, USIC_CH_CCR_MODE_Pos);
    WR_REG(USIC0_CH0->CCR, USIC_CH_CCR_MODE_Msk, USIC_CH_CCR_MODE_Pos,0);  
                        
    UsicCcrMode[1] |= (uint32_t) RD_REG(USIC0_CH1->CCR, USIC_CH_CCR_MODE_Msk, USIC_CH_CCR_MODE_Pos); 
    WR_REG(USIC0_CH1->CCR, USIC_CH_CCR_MODE_Msk, USIC_CH_CCR_MODE_Pos,0);   
                 
      
    						
   /*USIC 0 Channel 0 Mux Related SFR/Bitfields Configurations*/ 						         
 WR_REG(USIC0_CH0->DX0CR, USIC_CH_DX0CR_DSEL_Msk, USIC_CH_DX0CR_DSEL_Pos,4); 
  			  					 				 				 		       				              				  					    					 					   				  					 				 				       				  					    
 //Standard receive buffer event is enabled.                 
 WR_REG(USIC0_CH0->RBCTR, USIC_CH_RBCTR_SRBIEN_Msk, USIC_CH_RBCTR_SRBIEN_Pos,1);  
 					 									 					 					  									      					              					  						    					      
                 
   // Data Pointer & Buffer Size for Transmitter Buffer Control  
 WR_REG(USIC0_CH0->TBCTR, USIC_CH_TBCTR_DPTRSIZE_Msk, USIC_CH_TBCTR_DPTRSIZE_Pos,0x01000006);		/*    DPTR = 6,  SIZE = 1 */ 
           
  // Data Pointer & Buffer Size for Receiver Buffer Control  
 WR_REG(USIC0_CH0->RBCTR, USIC_CH_RBCTR_DPTRSIZE_Msk, USIC_CH_RBCTR_DPTRSIZE_Pos,0x01000004);		/*    DPTR = 4,  SIZE = 1 */ 
 						
   /*USIC 0 Channel 1 Mux Related SFR/Bitfields Configurations*/ 						         
 WR_REG(USIC0_CH1->DX0CR, USIC_CH_DX0CR_DSEL_Msk, USIC_CH_DX0CR_DSEL_Pos,5); 
  			                  
 WR_REG(USIC0_CH1->DX1CR, USIC_CH_DX1CR_DSEL_Msk, USIC_CH_DX1CR_DSEL_Pos,4);  
  					 				 				 		       				              				  					    					 					   				  					 				 				       				  					    
 //Standard receive buffer event is enabled.                 
 WR_REG(USIC0_CH1->RBCTR, USIC_CH_RBCTR_SRBIEN_Msk, USIC_CH_RBCTR_SRBIEN_Pos,1);  
 					 									 					 					  									         
 //Interrupt node 2 is selected for Protocol specific event             
 WR_REG(USIC0_CH1->INPR, USIC_CH_INPR_PINP_Msk, USIC_CH_INPR_PINP_Pos,2);  
 					              					  						       
 //Interrupt node 1 is selected for Standard receive buffer event                 
 WR_REG(USIC0_CH1->RBCTR, USIC_CH_RBCTR_SRBINP_Msk, USIC_CH_RBCTR_SRBINP_Pos,1);  
 					      
                 
   // Data Pointer & Buffer Size for Transmitter Buffer Control  
 WR_REG(USIC0_CH1->TBCTR, USIC_CH_TBCTR_DPTRSIZE_Msk, USIC_CH_TBCTR_DPTRSIZE_Pos,0x01000002);		/*    DPTR = 2,  SIZE = 1 */ 
         
  // Data Pointer & Buffer Size for Receiver Buffer Control  
 WR_REG(USIC0_CH1->RBCTR, USIC_CH_RBCTR_DPTRSIZE_Msk, USIC_CH_RBCTR_DPTRSIZE_Pos,0x01000000);		/*    DPTR = 0,  SIZE = 1 */ 
   						
   /*USIC 1 Channel 0 Mux Related SFR/Bitfields Configurations*/ 									  					 				 				 		       				              				  					    					 					   				  					 				 				       				  										 									 					 					  									      					              					  						    					      
       						
   /*USIC 1 Channel 1 Mux Related SFR/Bitfields Configurations*/ 									  					 				 				 		       				              				  					    					 					   				  					 				 				       				  										 									 					 					  									      					              					  						    					      
         						
   /*USIC 2 Channel 0 Mux Related SFR/Bitfields Configurations*/ 									  					 				 				 		       				              				  					    					 					   				  					 				 				       				  										 									 					 					  									      					              					  						    					      
       						
   /*USIC 2 Channel 1 Mux Related SFR/Bitfields Configurations*/ 									  					 				 				 		       				              				  					    					 					   				  					 				 				       				  										 									 					 					  									      					              					  						    					      
         
  
  /* Enable mode after configuring all USIC registers to avoid unintended edges */  
            
   WR_REG(USIC0_CH0->CCR, USIC_CH_CCR_MODE_Msk, USIC_CH_CCR_MODE_Pos,UsicCcrMode[0]); 
         
   WR_REG(USIC0_CH1->CCR, USIC_CH_CCR_MODE_Msk, USIC_CH_CCR_MODE_Pos,UsicCcrMode[1]);   
                       	         
                                                     
        //********* Capture/Compare Unit 4 (CAPCOM4) CONFIGURATIONS ************************* 
                       
    // Configuring CCU40 CC41INS - Input Selector Configuration

    WR_REG(CCU40_CC41->INS, CCU4_CC4_INS_EV0IS_Msk, CCU4_CC4_INS_EV0IS_Pos, CCU4xINyB);                   

    WR_REG(CCU40_CC41->INS, CCU4_CC4_INS_EV1IS_Msk, CCU4_CC4_INS_EV1IS_Pos, CCU4xINyB);                   
                       
    // Configuring CCU40 CC42INS - Input Selector Configuration

    WR_REG(CCU40_CC42->INS, CCU4_CC4_INS_EV0IS_Msk, CCU4_CC4_INS_EV0IS_Pos, CCU4xINyB);                   

    WR_REG(CCU40_CC42->INS, CCU4_CC4_INS_EV1IS_Msk, CCU4_CC4_INS_EV1IS_Pos, CCU4xINyB);                   
                       
    // Configuring CCU40 CC43INS - Input Selector Configuration

    WR_REG(CCU40_CC43->INS, CCU4_CC4_INS_EV0IS_Msk, CCU4_CC4_INS_EV0IS_Pos, CCU4xINyB);                   

    WR_REG(CCU40_CC43->INS, CCU4_CC4_INS_EV1IS_Msk, CCU4_CC4_INS_EV1IS_Pos, CCU4xINyB);                   
   	 
            	         
                                                     
   	 
            	         
                                                     
   	 
            	         
                                                 

/*        PORT Macro definitions for IOCR_OE, IOCR_PCR & HWSEL_HW     */                                      
  WR_REG(PORT0->IOCR0, PORT_IOCR_PC0_OE_Msk, PORT_IOCR_PC0_OE_Pos, PORT_IOCR_OE1);                /*    P0.0 : PORT0_IOCR0_PC0_OE */					   
					                         
  WR_REG(PORT0->IOCR4, 0xb8U, PORT_IOCR_PC0_PCR_Pos, 0x11U);                /*P0.4 : PORT0_IOCR4_PC4_PCR and PORT0_IOCR4_PC4_OE */					   
					                         
  WR_REG(PORT0->IOCR4, 0xb800U, PORT_IOCR_PC1_PCR_Pos, 0x16U);                /*P0.5 : PORT0_IOCR4_PC5_PCR and PORT0_IOCR4_PC5_OE */					   
					                         
  WR_REG(PORT0->IOCR4, 0xb80000U, PORT_IOCR_PC2_PCR_Pos, 0x11U);                /*P0.6 : PORT0_IOCR4_PC6_PCR and PORT0_IOCR4_PC6_OE */					   
					                         
  WR_REG(PORT0->IOCR8, 0xb80000U, PORT_IOCR_PC2_PCR_Pos, 0x14U);                /*P0.10 : PORT0_IOCR8_PC10_PCR and PORT0_IOCR8_PC10_OE */					   
					                         
  WR_REG(PORT0->IOCR12, 0xb8U, PORT_IOCR_PC0_PCR_Pos, 0x11U);                /*P0.12 : PORT0_IOCR12_PC12_PCR and PORT0_IOCR12_PC12_OE */					   
					                         
  WR_REG(PORT0->IOCR12, PORT_IOCR_PC1_OE_Msk, PORT_IOCR_PC1_OE_Pos, PORT_IOCR_OE1);                /*    P0.13 : PORT0_IOCR12_PC13_OE */					   
					                         
  WR_REG(PORT1->IOCR0, 0xb8U, PORT_IOCR_PC0_PCR_Pos, 0x16U);                /*P1.0 : PORT1_IOCR0_PC0_PCR and PORT1_IOCR0_PC0_OE */					   
					                         
  WR_REG(PORT1->IOCR0, 0xb800U, PORT_IOCR_PC1_PCR_Pos, 0x12U);                /*P1.1 : PORT1_IOCR0_PC1_PCR and PORT1_IOCR0_PC1_OE */					   
					                         
  WR_REG(PORT1->IOCR0, 0xb80000U, PORT_IOCR_PC2_PCR_Pos, 0x12U);                /*P1.2 : PORT1_IOCR0_PC2_PCR and PORT1_IOCR0_PC2_OE */					   
					                         
  WR_REG(PORT1->IOCR0, 0xb8000000U, PORT_IOCR_PC3_PCR_Pos, 0x12U);                /*P1.3 : PORT1_IOCR0_PC3_PCR and PORT1_IOCR0_PC3_OE */					   
					  
           
  WR_REG(PORT2->PDISC, PORT2_PDISC_PDIS10_Msk, PORT2_PDISC_PDIS10_Pos, PORT_PDISC_PDIS0);            /*    P2.10 : PORT2_PDISC_PDIS10 */                       
  WR_REG(PORT2->IOCR8, 0xb80000U, PORT_IOCR_PC2_PCR_Pos, 0x17U);                /*P2.10 : PORT2_IOCR8_PC10_PCR and PORT2_IOCR8_PC10_OE */					   
					  
           
  WR_REG(PORT2->PDISC, PORT2_PDISC_PDIS11_Msk, PORT2_PDISC_PDIS11_Pos, PORT_PDISC_PDIS0);            /*    P2.11 : PORT2_PDISC_PDIS11 */                       
  WR_REG(PORT2->IOCR8, 0xb8000000U, PORT_IOCR_PC3_PCR_Pos, 0x16U);                /*P2.11 : PORT2_IOCR8_PC11_PCR and PORT2_IOCR8_PC11_OE */					   
					      
   	 
            	         
                                             
/*        BCCU Macro definitions:         */ 

  WR_REG(BCCU0_CH0->CHCONFIG, BCCU_CH_CHCONFIG_DSEL_Msk, BCCU_CH_CHCONFIG_DSEL_Pos, 7);                /*    BCCU_CHCONFIG0_DSEL */

  WR_REG(BCCU0_CH2->CHCONFIG, BCCU_CH_CHCONFIG_DSEL_Msk, BCCU_CH_CHCONFIG_DSEL_Pos, 7);                /*    BCCU_CHCONFIG2_DSEL */

  WR_REG(BCCU0_CH3->CHCONFIG, BCCU_CH_CHCONFIG_DSEL_Msk, BCCU_CH_CHCONFIG_DSEL_Pos, 2);                /*    BCCU_CHCONFIG3_DSEL */

  WR_REG(BCCU0_CH4->CHCONFIG, BCCU_CH_CHCONFIG_DSEL_Msk, BCCU_CH_CHCONFIG_DSEL_Pos, 2);                /*    BCCU_CHCONFIG4_DSEL */

  WR_REG(BCCU0_CH5->CHCONFIG, BCCU_CH_CHCONFIG_DSEL_Msk, BCCU_CH_CHCONFIG_DSEL_Pos, 2);                /*    BCCU_CHCONFIG5_DSEL */

  WR_REG(BCCU0_CH6->CHCONFIG, BCCU_CH_CHCONFIG_DSEL_Msk, BCCU_CH_CHCONFIG_DSEL_Pos, 7);                /*    BCCU_CHCONFIG6_DSEL */        
}


/*******************************************************************************
** Syntax           : void DAVE_MUX_PreInit(void)                             **
**                                                                            **
** Reentrancy       : None                                                    **
**                                                                            **
** Parameters (in)  : void                                                    **
**                                                                            **
** Parameters (out) : none                                                    **
**                                                                            **
** Return value     : none                                                    **
**                                                                            **
** Description      : This is the Mux configuration                           **
**                                                                            **
*******************************************************************************/
 
void DAVE_MUX_PreInit(void)
{                    

/*        PORT Macro definitions for IOCR_OE, IOCR_PCR & HWSEL_HW     */               
           
  WR_REG(PORT2->PDISC, PORT2_PDISC_PDIS0_Msk, PORT2_PDISC_PDIS0_Pos, PORT_PDISC_PDIS0);            /*    P2.0 : PORT2_PDISC_PDIS0 */        
}

