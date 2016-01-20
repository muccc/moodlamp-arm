/*CODE_BLOCK_BEGIN[I2C003.h]*/
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
 * @file I2C003.h
 *
 * @brief  This file contains Enumerations, Structure definitions and function 
 * prototypes of I2C003 App.
 *
 */
#ifndef I2C003_H_
#define I2C003_H_

#ifdef __cplusplus
extern "C" {
#endif


/*******************************************************************************
**                      Include Files                                         **
*******************************************************************************/
#include "Usic.h"
#include "types.h"
#include "I2C003_Conf.h"
/*******************************************************************************
**                      Global Macro Definitions                              **
*******************************************************************************/
/**
 * @ingroup I2C003_constants
 * @{
 */
/** @brief  TDF code used when Slave transmits data. The slave only has to send
 *  data if it has been asked by the master. The slave sends its data
 *  byte (TBUF[7:0]) plus the acknowledge bit as a 1 */
#define I2C003_TDF_STXDATA 	(0x1U)

/**
 * @}
 */
/*******************************************************************************
**                      Global Type Definitions                               **
*******************************************************************************/
/**
  * @ingroup I2C003_enumerations
  * @{
  */
/**
 * @brief  This data type is to describe the FlagStatus types used in I2C003 
 * App. Most of the flags are common for USIC module except some protocol 
 * specific flags which depends on the specific protocol
 */
typedef enum I2C003_FlagStatusType
{
  /** 
   *  Flag depicts the Receiver start event to indicate that a data word 
   *  reception has started 
   */
  I2C003_FLAG_RSIF,
  /** 
   *  Flag depicts the Data lost event to indicate a loss of the oldest 
   *  received data word 
   */
  I2C003_FLAG_DLIF,
  /** 
   *  Flag indicates that the Transmit Shift event occurred with the last
   *  shift clock edge 
   */
  I2C003_FLAG_TSIF,
  /** 
   *  Flag indicates that the Transmit Buffer event for data word 
   * transmission has started 
   */
  I2C003_FLAG_TBIF,
  /** 
   *  Flag depicts the Receive event to indicate that a data word has 
   *  been received 
   */
  I2C003_FLAG_RIF,
  /** Flag indicates that a Wrong transmit code (error in frame sequence) 
   *  has been passed, This can be <BR>
   *  		: TDF slave code in master mode <BR>
   *  		: TDF master code in slave mode <BR>
   *  		: When Reserved TDF code is found <BR>
   *  		: Start condition code during a running frame in master mode <BR>
   *  		: Data byte transmission code after transfer direction <BR>
   *  		  has been changed to reception(master read) in master mode <BR> 
   */
  I2C003_FLAG_WRONG_TDF,
  /** Flag indicates that a Non-Acknowledge has been received */
  I2C003_FLAG_NACK_RECEIVED,
  /**
   *  Flag indicates that the receive buffer fill level exceeds or falls below
   *  the programmed limit 
   */
  I2C003_FLAG_SRBI,
  /** Flag indicates that a Receive Buffer Error Event has been detected */
  I2C003_FLAG_RBERI,
  /** 
   *  Flag indicates that the transmit buffer fill level exceeds or falls below
   *  the programmed limit 
   */
  I2C003_FLAG_STBI,
  /** Flag indicates that a transmit buffer error event has been detected */
  I2C003_FLAG_TBERI
}I2C003_FlagStatusType;

/**
 * @brief  This data type describes the available I2C Status flags
 * which can be used to check different status conditions.
 */
typedef enum I2C003_StatusType
{
  /**
   * Status indicates that the current operation is not allowed
   */
  /**
   * @cond INTERNAL_DOCS
   * @param MODULENAME I2C003
   * @endcond
  */
  /**
   * @cond INTERNAL_DOCS
   * @param ERRCODESTRING1 I2C003_OPER_NOT_ALLOWED
   * @param STRCODESTRING1 Operation is not allowed
   * @endcond
  */
  I2C003_OPER_NOT_ALLOWED = 1,
  /**
   * Status indicates that the corresponding flag has not been set
   */
  /**
   * @cond INTERNAL_DOCS
   * @param ERRCODESTRING2 I2C003_RESET
   * @param STRCODESTRING2 Flag is Reset
   * @endcond
  */
  I2C003_RESET,
  /**
   * Status indicates that the corresponding flag has been set
   */
  /**
   * @cond INTERNAL_DOCS
   * @param ERRCODESTRING3 I2C003_SET
   * @param STRCODESTRING3 Flag is set
   * @endcond
  */
  I2C003_SET,
  /**
   * Status indicates the protocol failure
   */
  /**
   * @cond INTERNAL_DOCS
   * @param ERRCODESTRING4 I2C003_FAIL
   * @param STRCODESTRING4 Fail condition
   * @endcond
  */
  I2C003_FAIL,
  /**
   * Status indicates the Function Entry
   */
  /**
   * @cond INTERNAL_DOCS
   * @param ERRCODESTRING5 I2C003_FUN_ENTRY
   * @param STRCODESTRING5 Entered function \%s
   * @endcond
   *
  */
  I2C003_FUN_ENTRY,
  /**
   * Status indicates the Function Exit
   */
   /**
    * @cond INTERNAL_DOCS
    * @param ERRCODESTRING6 I2C003_FUN_EXIT
    * @param STRCODESTRING6 Exited function %s
    * @endcond
    *
    */
  I2C003_FUN_EXIT
}I2C003_StatusType;
/**
 * @}
 */
/**
* @ingroup I2C003_datastructures
* @{
*/
/**
 * @brief  This data type is to describe the I/O Port registers
 */
typedef struct {
__IO uint32_t   OUT; /*!< Port Output Register Offset 0x00000000 */
__O  uint32_t   OMR; /*!< Port Output Modification Register Offset 0x00000004 */
__I  uint32_t   RESERVED1[2];
__IO uint32_t   IOCR0; /*!< Port Input/Output Control Register 0 Offset 
                                                                  0x00000010 */
__IO uint32_t   IOCR4; /*!< Port Input/Output Control Register 4 Offset 
                                                                  0x00000014 */
__IO uint32_t   IOCR8; /*!< Port Input/Output Control Register 8 Offset 
                                                                  0x00000018 */
__IO uint32_t   IOCR12;  /*!< Port Input/Output Control Register 12 Offset
                                                                  0x0000001C */
__I  uint32_t   RESERVED2[1];
__I  uint32_t   IN;           /*!< Port Input Register Offset  0x00000024 */
__I  uint32_t   RESERVED3[6];
__IO uint32_t   PDR0; /*!< Port Pad Driver Mode 0 Register Offset  0x00000040 */
__IO uint32_t   PDR1; /*!< Port Pad Driver Mode 1 Register Offset  0x00000044 */
__I  uint32_t   RESERVED4[6];
__IO uint32_t   PDISC; /*!< Port Pin Function Decision Control Register Offset  
                                                                  0x00000060 */
__I  uint32_t   RESERVED5[3];
__IO uint32_t   PPS;  /*!< Port Pin Power Safe Register Offset  0x00000070 */
__IO uint32_t   HWSEL; /*!< Port Pin Hardware Select Register Offset 
                                                                  0x00000074 */
}I2C003_PORTS_TypeDef;

/**
 * @brief  This data type is to describe the I2C Port pin's(SCL & SDA) 
 * base address & pin no.
 */
typedef struct I2C003_PinHandleType{
  I2C003_PORTS_TypeDef* SCL_PortBase;/*!< SCL Port address */
  uint8_t SCL_Pin; /*!< SCL Pin Number */
  I2C003_PORTS_TypeDef* SDA_PortBase; /*!< SDA Port address */  
  uint8_t SDA_Pin;/*!< SDA Pin Number */
}I2C003_PinHandleType;

/**
 * @brief  This data type is to describe the I2C Data type. The structure 
 * contains two elements of 8 bit each- one for the TDF command and the other 
 * for the payload.
 */
typedef struct I2C003_DataType{
  uint8_t Payload;/*!< Data */
  uint8_t TDF_Type;/*!< TDF type */
}I2C003_DataType;

/**
 * @brief  This data type describes the I2C handle.
 * The handler allows user to configure the I2C parameters selected by the user 
 * through ui options.
 * It also allows to configure the interrupts related to I2C.
 */
typedef struct I2C003_HandleType{
  USIC_CH_TypeDef* I2CRegs; /*!< CMSIS defined structure for USIC module */
  I2C003_PinHandleType PinHandle; /*!< User selected SDA & SCL Port pins */
  uint16_t SlaveAddress;/*!< I2C Slave Address configuration*/
  uint32_t BitRate; /*!< Bit rate for I2C configuration */
  bool TxFifoEn; /*!< Enable additional Transmit FIFO buffer capability */
  bool RxFifoEn;  /*!< Enable additional Receive FIFO buffer capability */
  uint8_t TxLimit; /*!< TX FIFO Trigger limit value */
  uint8_t RxLimit; /*!< RX FIFO Trigger limit value */
  uint8_t TxFifoSize; /*!< TX FIFO Size */
  uint8_t RxFifoSize; /*!< RX FIFO Size */
  bool StartCondRecvIntEn;/*!< Enable start condition received interrupt */ 
  bool RepStartCondRecvIntEn;/*!< Enable repeated start condition 
                                                       received interrupt */
  bool SlaveReadReqIntEn;/*!< Enable a slave read request detected interrupt*/
  bool StopCondRecvIntEn;/*!< Enable stop condition transferred interrupt */
  bool ErrorIntEn;/*!< Enable IIC Error Interrupt */
  uint16_t Fdr_StepValue;/*!< Calculated Step value for configured baud rate*/
  uint16_t Brg_PDivValue;/*!< Calculated optimum PDIV value */ 
}I2C003_HandleType;

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
**                      FUNCTION PROTOTYPES                                   **
*******************************************************************************/
/**
 * @ingroup I2C003_apidoc
 * @{
 */

/**
 * @brief This function initialises the App, based on User provided 
 * configuration. 
 * 
 * @param[in] None
 *
 * @return  None <BR>
 *
 * <b>Reentrant: Yes </b><BR>
 *
 * <BR><P ALIGN="LEFT"><B>Example:</B>
 * @code
 * #include <DAVE3.h>
 * int main(void)
 * {
 *   // Initialises all App configurations ...
 *   DAVE_Init(); // I2C003_Init() will be called from DAVE_Init()
 * }
 * 
 * @endcode<BR> </p>
 *
 */
void I2C003_Init(void);

/**
 * @brief This function de-initialises the USIC channel configurations.
 * 
 * @param[in]  Handle of type I2C003_HandleType
 *
 * @return  None <BR>
 *
 * <b>Reentrant: Yes </b><BR>
 *
 * <BR><P ALIGN="LEFT"><B>Example:</B>
 * @code
 * #include <DAVE3.h>
 * int main(void)
 * {
 *   DAVE_Init();
 *   I2C003_DeInit(&I2C003_Handle0);
 * }
 * 
 * @endcode<BR> </p>
 *
 */
void I2C003_DeInit(const I2C003_HandleType* Handle);

/**
 * @brief This function allows the user to configure the baud rate at run time.
 * The user has to pass the baud rate value in terms of Kbaud (Eg: 400)
 *
 * @param[in]  Handle of type I2C003_HandleType
 * @param[in]  BitRate Desired Baud Rate of type uint32_t
 *
 * @return     None <br>
 *
 * <b>Reentrant: NO </b><BR>
 *
 * <BR><P ALIGN="LEFT"><B>Example:</B>
 * <BR><I><b>I2C003_Handle0</b></I> is a global structure of type
 * I2C003_HandleType which will be configured in I2C003_Conf.c file using
 * UI parameters.
 * @code
 * #include <DAVE3.h>
 * int main(void)
 * {
 *   // Initialising the modules and the multiplexer
 *   DAVE_Init();
 *   // Configuring a different baud rate, pass the baud value in terms of kbaud
 *   I2C003_Configure(&I2C003_Handle0,400);
 *   while(1)
 *   {}
 *   return 0;
 * }
 * @endcode<BR> </p>
 *
 */
void I2C003_Configure
(
	const I2C003_HandleType* Handle,
	uint32_t BitRate
);

/**
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
 *
 * <BR><P ALIGN="LEFT"><B>Example:</B>
 * <BR><I><b>I2C003_Handle0</b></I> is a global structure of type
 * I2C003_HandleType which will be configured in I2C003_Conf.c file using
 * UI parameters.
 * @code
 * //Configure USIC channel as IIC slave by using I2C003 App. 
 * #include <DAVE3.h> 
 * int main(void)
 * {
 *  status_t status;
 *  I2C003_DataType SlaveTxData;
 *  // ... Initializes Apps configurations ...
 *  DAVE_Init();
 *  // Configure message data & TDF
 *  SlaveTxData.TDF_Type = I2C003_TDF_STXDATA;
 *  SlaveTxData.Payload = 0xC8;    
 *  // write data to tbuf depending on transmit mode
 *  status = I2C003_WriteData(&I2C003_Handle0,&SlaveTxData));
 *  if(status)
 *  {
 *  	//data is transmitted
 *  }
 *  // ... infinite loop ...
 *  while(1)
 *  {}
 *  return 0;
 * }
 * 
 * // Receive event handler registered with NVIC002 App 
 * void Slave_Receive_handler(void)
 * {
 *   uint16_t DataReceive = 0x0000;
 *   // Read receive buffer, put the data in DataReceive1 
 *   I2C001_ReadData(&I2C001_Handle0,&DataReceive);
 * }
 * 
 * @endcode<BR> </p>
 *
 */
bool I2C003_WriteData
(
   const I2C003_HandleType* Handle, 
   const I2C003_DataType* Data
);


/**
 * @brief When receive FIFO buffer is enabled, this function reads out the 
 * content of the USIC receive FIFO Buffer. Returns true in case FIFO is not 
 * empty else otherwise.
 * But when receive FIFO buffer is disabled, this function reads out  the 
 * content of the USIC receive standard Buffer.
 * 
 * @param[in]  Handle of type I2C003_HandleType
 * @param[out] Buffer reference of type uint8_t
 *
 * @return     bool<BR>
 *             TRUE   : if FIFO is not empty & data is read. <BR>
 *             FALSE  : if FIFO is empty. <BR>
 *
 * <b>Reentrant: NO </b><BR>
 *
 * <BR><P ALIGN="LEFT"><B>Example:</B>
 * <BR><I><b>I2C003_Handle0</b></I> is a global structure of type
 * I2C003_HandleType which will be configured in I2C003_Conf.c file using
 * UI parameters.
 * @code
 * //Configure USIC channel as IIC slave by using I2C003 App. 
 * #include <DAVE3.h>
 * int main(void)
 * {
 *  status_t status;
 *  uint8_t ReadData = 0;
 *  // ... Initializes Apps configurations ...
 *  DAVE_Init();
 *  //wait till standard receive buffer event is occurred
 *  while((I2C003_GetFlagStatus(&I2C003_Handle0,\
 *         I2C003_FLAG_RIF))!= I2C003_SET)
 *  {}
 *  //Read data
 *  status = I2C003_ReadData(&I2C003_Handle0,&ReadData);
 *  if(status)
 *  {
 *   // Data is read
 *  }
 *  // ... infinite loop ... 
 *   while(1)
 *   {}
 *   return 0;
 * }
 * @endcode<BR> </p>
 *
 */
bool I2C003_ReadData
(
   const I2C003_HandleType* Handle, 
   uint8_t* Buffer
);


/**
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
 *
 * <BR><P ALIGN="LEFT"><B>Example:</B>
 * <BR><I><b>I2C003_Handle0</b></I> is a global structure of type
 * I2C003_HandleType which will be configured in I2C003_Conf.c file using
 * UI parameters.
 * @code
 * #include <DAVE3.h>
 * int main(void)
 * {
 *   // Declaration of return variable for DAVE3 APIs
 *   status_t status;
 *   // Initialising the modules and the multiplexer
 *   DAVE_Init();
 *
 *   // Reading flag status
 *   status = I2C003_GetFlagStatus(&I2C003_Handle0, I2C003_FLAG_RIF);
 *   if (status) 
 *   {
 *   	//Flag is set
 *   }
 *   while(1)
 *   {}
 *   return 0;
 * }
 * @endcode<BR> </p>
 *
 */
status_t I2C003_GetFlagStatus
(
   const I2C003_HandleType* Handle,
   I2C003_FlagStatusType Flag
);

/**
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
 *
 * <BR><P ALIGN="LEFT"><B>Example:</B>
 * <BR><I><b>I2C003_Handle0</b></I> is a global structure of type
 * I2C003_HandleType which will be configured in I2C003_Conf.c file using
 * UI parameters.
 * @code
 * #include <DAVE3.h>
 * int main(void)
 * {
 *   // Initialising the modules and the multiplexer
 *   DAVE_Init();
 *   // Clearing flag status
 *   I2C003_ClearFlag(&I2C003_Handle0, I2C003_FLAG_RIF);
 *   while(1)
 *   {}
 *   return 0;
 * }
 * @endcode<BR> </p>
 *
 */
void I2C003_ClearFlag
(
   const I2C003_HandleType* Handle,
   I2C003_FlagStatusType Flag
);

/**
 *@}
 */
 
/** Include App extern declaration file */
#include "I2C003_Extern.h"


#ifdef __cplusplus
}
#endif                     

#endif /* I2C003_H_ */

