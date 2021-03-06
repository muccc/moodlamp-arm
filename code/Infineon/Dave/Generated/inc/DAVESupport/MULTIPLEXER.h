/*******************************************************************************
**  DAVE App Name : DAVESupport       App Version: 1.0.44               
**  This file is generated by DAVE, User modification to this file will be    **
**  overwritten at the next code generation.                                  **
*******************************************************************************/


/**************************************************************************//**
 *
 * Copyright (C) 2011 Infineon Technologies AG. All rights reserved.
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
** PLATFORM : Infineon <Microcontroller name, step>                           **
**                                                                            **
** COMPILER : Compiler Independent                                            **
**                                                                            **
** MODIFICATION DATE : Jan 22, 2014                                          **
**                                                                            **
*******************************************************************************/

/**
 * @file  MULTIPLEXER.h
 *
 * @brief This file contains all public data structures,enums and function
 *        prototypes.
 * 06 sep 2013 v1.0.36 Initial Version
 *                     Mirror Register Status check statements are updated.
 * 22 Jan 2014 v1.0.40 C++ macro inserted.
 *
 */

#ifndef _MULTIPLEXER_H_
#define _MULTIPLEXER_H_

#ifdef __cplusplus
extern "C" {
#endif

/* Defines	*/

/* ERU : ERU_xA signals	*/ 
#define SIGNAL_ERU_xA0 0
#define SIGNAL_ERU_xA1 1
#define SIGNAL_ERU_xA2 2
#define SIGNAL_ERU_xA3 3

/* ERU : ERU_xB signals	*/ 
#define SIGNAL_ERU_xB0 0
#define SIGNAL_ERU_xB1 1
#define SIGNAL_ERU_xB2 2
#define SIGNAL_ERU_xB3 3

/* ERU : TR signals	*/ 
#define SIGNAL_TR0 0
#define SIGNAL_TR1 1

/* ERU : TRx signals	*/ 
#define SIGNAL_TRx0 0
#define SIGNAL_TRx1 1
#define SIGNAL_TRx2 2
#define SIGNAL_TRx3 3

/* ERU : ERS_ETL_FL signals	*/ 
#define SIGNAL_ERS_ETL_FL0 0
#define SIGNAL_ERS_ETL_FL1 1
#define SIGNAL_ERS_ETL_FL2 2
#define SIGNAL_ERS_ETL_FL3 3

/* ERU : ERU_OGU_y signals	*/ 
#define SIGNAL_ERU_OGU_y0 0
#define SIGNAL_ERU_OGU_y1 1
#define SIGNAL_ERU_OGU_y2 2
#define SIGNAL_ERU_OGU_y3 3

/****************************************************************************************
 *  PORTS : The IOCR Register bit field PC split into 3 bit fields namely
 *  PCx_PCR, PCx_PO, PCx_PCR to support the Mux/User configuration based on 
 *  the functionality of the bit fields. For more details please refer the 
 *  Port visio file prepared by Infineon Technologies.
 ****************************************************************************************/
/* PORT_IOCR  =  Port x Input/Output Control Register */
#define   PORT_IOCR_PC0_PCR_Pos  	(3U)
#define   PORT_IOCR_PC0_PCR_Msk  	(0x00000007U  << PORT_IOCR_PC0_PCR_Pos)

#define   PORT_IOCR_PC0_PO_Pos   	(6U)
#define   PORT_IOCR_PC0_PO_Msk   	(0x00000001U  << PORT_IOCR_PC0_PO_Pos)

#define   PORT_IOCR_PC0_OE_Pos   	(7U)
#define   PORT_IOCR_PC0_OE_Msk   	(0x00000001U  << PORT_IOCR_PC0_OE_Pos)

#define   PORT_IOCR_PC1_PCR_Pos  	(11U)
#define   PORT_IOCR_PC1_PCR_Msk  	(0x00000007U  << PORT_IOCR_PC1_PCR_Pos)

#define   PORT_IOCR_PC1_PO_Pos   	(14U)
#define   PORT_IOCR_PC1_PO_Msk   	(0x00000001U  << PORT_IOCR_PC1_PO_Pos)

#define   PORT_IOCR_PC1_OE_Pos   	(15U)
#define   PORT_IOCR_PC1_OE_Msk   	(0x00000001U  << PORT_IOCR_PC1_OE_Pos)

#define   PORT_IOCR_PC2_PCR_Pos  	(19U)
#define   PORT_IOCR_PC2_PCR_Msk  	(0x00000007U  << PORT_IOCR_PC2_PCR_Pos)

#define   PORT_IOCR_PC2_PO_Pos   	(22U)
#define   PORT_IOCR_PC2_PO_Msk   	(0x00000001U  << PORT_IOCR_PC2_PO_Pos)

#define   PORT_IOCR_PC2_OE_Pos   	(23U)
#define   PORT_IOCR_PC2_OE_Msk   	(0x00000001U  << PORT_IOCR_PC2_OE_Pos)

#define   PORT_IOCR_PC3_PCR_Pos  	(27U)
#define   PORT_IOCR_PC3_PCR_Msk  	(0x00000007U  << PORT_IOCR_PC3_PCR_Pos)

#define   PORT_IOCR_PC3_PO_Pos   	(30U)
#define   PORT_IOCR_PC3_PO_Msk   	(0x00000001U  << PORT_IOCR_PC3_PO_Pos)

#define   PORT_IOCR_PC3_OE_Pos   	(31U)
#define   PORT_IOCR_PC3_OE_Msk   	(0x00000001U  << PORT_IOCR_PC3_OE_Pos)


// IOCR_OE : INPUT / OUTPUT
#define PORT_IOCR_OE0 0
#define PORT_IOCR_OE1 1

// IOCR_PCR : PULLUP/PULLDOWN / ALT 
#define PORT_IOCR_PCR0 0
#define PORT_IOCR_PCR1 1
#define PORT_IOCR_PCR2 2
#define PORT_IOCR_PCR3 3
#define PORT_IOCR_PCR4 4
#define PORT_IOCR_PCR5 5
#define PORT_IOCR_PCR6 6
#define PORT_IOCR_PCR7 7

// HWSEL_HW : HW0 / HW1
#define PORT_HWSEL_SW 0
#define PORT_HWSEL_HW0 1
#define PORT_HWSEL_HW1 2

// PDISC_PDIS : PDIS0 / PDIS1
#define PORT_PDISC_PDIS0 0
#define PORT_PDISC_PDIS1 1


//POSIF
#define INSIGNAL0 0 //INxA
#define INSIGNAL1 1 //INxB
#define INSIGNAL2 2 //INxC
#define INSIGNAL3 3 //INxD
#define INSIGNAL4 4 //INxE
#define INSIGNAL5 5 //INxF
#define SET_1 1 //enable
#define SET_0 0 //disable
#define SR0 0
#define SR1 1

// CCU4 
// CC4yINS Input Selector Configuration
#define CCU4xINyA  0 // CCU4xINy[A]
#define CCU4xINyB  1 // CCU4xINy[B]
#define CCU4xINyC  2 // CCU4xINy[C]
#define CCU4xINyD  3 // CCU4xINy[D]
#define CCU4xINyE  4 // CCU4xINy[E]
#define CCU4xINyF  5 // CCU4xINy[F]
#define CCU4xINyG  6 // CCU4xINy[G]
#define CCU4xINyH  7 // CCU4xINy[H]
#define CCU4xINyI  8 // CCU4xINy[I]
#define CCU4xINyJ  9 // CCU4xINy[J]
#define CCU4xINyK  10 // CCU4xINy[K]
#define CCU4xINyL  11 // CCU4xINy[L]
#define CCU4xINyM  12 // CCU4xINy[M]
#define CCU4xINyN  13 // CCU4xINy[N]
#define CCU4xINyO  14 // CCU4xINy[O]
#define CCU4xINyP  15 // CCU4xINy[P]

// CCU8 
// CC8yINS Input Selector Configuration
#define CCU8xINyA  0 // CCU8xINy[A]
#define CCU8xINyB  1 // CCU8xINy[B]
#define CCU8xINyC  2 // CCU8xINy[C]
#define CCU8xINyD  3 // CCU8xINy[D]
#define CCU8xINyE  4 // CCU8xINy[E]
#define CCU8xINyF  5 // CCU8xINy[F]
#define CCU8xINyG  6 // CCU8xINy[G]
#define CCU8xINyH  7 // CCU8xINy[H]
#define CCU8xINyI  8 // CCU8xINy[I]
#define CCU8xINyJ  9 // CCU8xINy[J]
#define CCU8xINyK  10 // CCU8xINy[K]
#define CCU8xINyL  11 // CCU8xINy[L]
#define CCU8xINyM  12 // CCU8xST0
#define CCU8xINyN  13 // CCU8xST1
#define CCU8xINyO  14 // CCU8xST2
#define CCU8xINyP  15 // CCU8xST3

// CCUySRS Service Request Selector
#define CCU_SR0  0 // CCU_SR0
#define CCU_SR1  1 // CCU_SR1
#define CCU_SR2  2 // CCU_SR2
#define CCU_SR3  3 // CCU_SR3


// VADC
#define VADC_G_QCTRL0_XTWC_XTSEL_Msk        (0x000000EFU  << VADC_G_QCTRL0_XTSEL_Pos)
#define VADC_G_QCTRL0_GTWC_GTSEL_Msk        (0x0000008FU  << VADC_G_QCTRL0_GTSEL_Pos)
#define VADC_G_ASCTRL_XTWC_XTSEL_Msk        (0x000000EFU  << VADC_G_ASCTRL_XTSEL_Pos)
#define VADC_G_ASCTRL_GTWC_GTSEL_Msk        (0x0000008FU  << VADC_G_ASCTRL_GTSEL_Pos)
#define VADC_BRSCTRL_XTWC_XTSEL_Msk        (0x000000EFU  << VADC_BRSCTRL_XTSEL_Pos)
#define VADC_BRSCTRL_GTWC_GTSEL_Msk        (0x0000008FU  << VADC_BRSCTRL_GTSEL_Pos)


/* USIC : FIFO DPTR & SIZE MASK and POS Values */ 
#define   USIC_CH_TBCTR_DPTRSIZE_Pos  	(0U)
#define   USIC_CH_TBCTR_DPTRSIZE_Msk  	(0x0700003FU << USIC_CH_TBCTR_DPTRSIZE_Pos)

#define   USIC_CH_RBCTR_DPTRSIZE_Pos  	(0U)
#define   USIC_CH_RBCTR_DPTRSIZE_Msk  	(0x0700003FU << USIC_CH_RBCTR_DPTRSIZE_Pos)
    
	

// Initializes Multiplexer configurations
void DAVE_MUX_Init(void);
void DAVE_MUX_PreInit(void);

#ifdef __cplusplus
}
#endif

#endif  // ifndef _MULTIPLEXER_H_

