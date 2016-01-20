
/*******************************************************************************
Copyright (c) 2014, Infineon Technologies AG                                  **
All rights reserved.                                                          **
                                                                              **
Redistribution and use in source and binary forms, with or without            **
modification,are permitted provided that the following conditions are met:    **
                                                                              **
*Redistributions of source code must retain the above copyright notice,       **
this list of conditions and the following disclaimer.                         **
*Redistributions in binary form must reproduce the above copyright notice,    **
this list of conditions and the following disclaimer in the documentation     **
and/or other materials provided with the distribution.                        **
*Neither the name of the copyright holders nor the names of its contributors  **
may be used to endorse or promote products derived from this software without **
specific prior written permission.                                            **
                                                                              **
THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS "AS IS"   **
AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE     **
IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE    **
ARE  DISCLAIMED. IN NO EVENT SHALL THE COPYRIGHT HOLDER OR CONTRIBUTORS BE    **
LIABLE  FOR ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR          **
CONSEQUENTIAL DAMAGES (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF          **
SUBSTITUTE GOODS OR  SERVICES; LOSS OF USE, DATA, OR PROFITS; OR BUSINESS     **
INTERRUPTION) HOWEVER CAUSED AND ON ANY THEORY OF LIABILITY, WHETHER IN       **
CONTRACT, STRICT LIABILITY,OR TORT (INCLUDING NEGLIGENCE OR OTHERWISE)        **
ARISING IN ANY WAY OUT OF THE USE OF THIS SOFTWARE, EVEN IF ADVISED OF THE    **
POSSIBILITY OF SUCH DAMAGE.                                                   **
                                                                              **
To improve the quality of the software, users are encouraged to share         **
modifications, enhancements or bug fixes with Infineon Technologies AG        **
dave@infineon.com).                                                           **
                                                                              **
********************************************************************************
**                                                                            **
**                                                                            **
** PLATFORM : Infineon XMC1000 Series                                         **
**                                                                            **
** COMPILER : GCC                                                             **
**                                                                            **
** AUTHOR   : App Developer                                                   **
**                                                                            **
** MAY BE CHANGED BY USER [Yes/No]: Yes                                       **
**                                                                            **
** MODIFICATION DATE : Jan  27, 2014                                          **
**                                                                            **
*******************************************************************************/
/* Revision History
 *****************************************************************************
 * Date           Version     Remarks
 * 28 June 2013   1.0.0      Initial Version
 * 28 Aug  2013   1.0.4		 1.FLASH003_RegisterCallbackEvent,Extra Status Flags
 *                            and FLASH003_InterruptId enum are added to support 
 *                            Asynchronous mode of Operation with interrupts.
 *                           2.Changed the doxy code example for 
 *                            "FLASH003_RegisterCallbackEvent" API
 *                           3.Changed the naming convention of the 
 *                            FLASH003_NVMStatus variable
 *                           4.Added C++ support
 * 27 Jan  2013   1.0.8      1.For FLASH003_RegisterCallbackEvent() api one more 
 *                             argument is added for user callback name.
 *                           2.FLASH003_DynamicHandleType structure is changed 
 *                             to support registration of maximum 5 callbacks to 
 *                             each event
 *                             
 */

/**
 * @file FLASH003.h
 *
 * @brief  FLASH003  App implementation header file.
 *
 **/

#ifndef FLASH003_H_
#define FLASH003_H_

/*******************************************************************************
**                      Include Files                                         **
*******************************************************************************/
#ifdef __cplusplus
extern "C" {
#endif

/* Inclusion of Platform specific file */
#include <DAVE3.h>

/*******************************************************************************
**                      Global Macro Definitions                              **
*******************************************************************************/
/**
 * @ingroup FLASH003_publicparam
 * @{
 */

/** Base address of non-user-readable part of Sector-0*/
#define FLASH003_SECTOR0_NONUSRREAD_BASE  0x10000000U
/** Base address of user-readable part of Sector-0*/
#define FLASH003_SECTOR0_USREAD_BASE (FLASH003_SECTOR0_NONUSRREAD_BASE + 0XE00U)
/** Base address of Sector-1(This is the start of the actual flash used to
    store the Data and Code)*/
#define FLASH003_SECTOR1_BASE   (FLASH003_SECTOR0_NONUSRREAD_BASE + 0x1000U)
/** Size of one Flash Sector*/
#define FLASH003_SECTOR_SIZE    0x1000U
/** Size of one Flash page*/
#define FLASH003_PAGE_SIZE      0x100U
/** Size of one Flash Block*/
#define FLASH003_BLOCK_SIZE     0x10U
/** Size of one Flash Word*/
#define FLASH003_WORD_SIZE      0x4U
/** function Pointer for Event Handler*/
typedef void (*FLASH003_CALLBACKEventHandler)(uint32_t CbArgs);
/*Max number of callbacks allowed by flash api*/
#define FLASH003_MAX_CALLBACKS 5U
/*******************************************************************************
**                      Global Type Definitions                               **
*******************************************************************************/
/**
 * @brief   Callback function prototype
 */
typedef void (*FLASH003_CallbackType)(uint32_t CbArg);

/**
 * This enumeration defines error codes for FLASH003 app
 */
typedef enum FLASH003Status_Type
{
	/** FLASH003 Successful completion of operation*/
	FLASH003_COMPLETE = 0,
	/** FLASH003 Invalid Parameter */
	FLASH003_INVALID_ADDRESS = 1,
	/** FLASH003 Error */
	FLASH003_ERROR = 2,
	/** FLASH003 Operation in Progress*/
	FLASH003_IN_PROGRESS = 3,
	/** FLASH003 App is IDLE*/
	FLASH003_IDLE = 4,
}FLASH003Status_Type;
/**
 * This Enumeration is used for selecting the
 * defining events.
 *
 */
typedef enum FLASH003_InterruptId{
	/**
	 * Flash Double Bit ECC Event
	 */
	FLASH003_FLECC2I = 0,
	/**
	 * Flash Operation Complete Event
	 */
	FLASH003_FLCMPLTI = 1,
 }FLASH003_InterruptId;
/**
 * This structure defines the flash parameter.
 */ 
typedef struct FLASH003_HandleType
{
	/**
	* This parameter tells actual flash size allocated to the user. 
	*/
	const uint32_t kFlash_Size_Actual;
	/**
	* This parameter gives the Start address of the flash which user can use
	*/
	const uint32_t kStart_Address;
	/**
	* This parameter gives the End address of the flash.
	*/
	const uint32_t kEnd_Address;  
	/**
	* This is pointer to the CMSIS NVM register structure.
	*/
	NVM_Type* const FlashRegsPtr;
} FLASH003_HandleType;


/**
 * @brief Data structure which has the User call back Configuration options.
 *
 */
typedef struct FLASH003_IntParamType
{
   /**
    * Callback listener
    */
	FLASH003_CallbackType CbListener[FLASH003_MAX_CALLBACKS]; 
   /**
    * Callback arguments
    */
   uint32_t CbArg[FLASH003_MAX_CALLBACKS];
   /**
    * No.of Call backs registered
    */
   uint32_t FLASH003_CallBacks;
}FLASH003_IntParamType;


/**
 * This is for Asynchronous mode of operation of the flash
 */
typedef struct FLASH003_DynamicHandleType
{
   /**
	* This is the global status variable used when interrupts are enabled
	*/
	FLASH003Status_Type FLASH003_global_status;
	/**
	* This is to enable the interrupt after particular no.of blocks
	*/
	uint32_t FLASH003_Blk_Cnt;
	/**
	 * This is callback registration
	 */
	FLASH003_IntParamType callback[2];
}FLASH003_DynamicHandleType;
/**
 *@}
 */
/*
 * This enumeration defines NVM Rom APIs return values for FLASH003 app
 */
typedef enum FLASH003_NVMStatus
{
	/*the function succeeded*/
	FLASH003_NVM_PASS               = (int32_t) 0x00010000,
	/*generic error code*/
	FLASH003_NVM_E_FAIL             = (int32_t) 0x80010001, 
	/*source data not in RAM*/
	FLASH003_NVM_E_SRC_AREA_EXCCEED = (int32_t) 0x80010003,  
	/*source data is not 4 byte aligned*/
	FLASH003_NVM_E_SRC_ALIGNMENT    = (int32_t) 0x80010004,   
	/*NVM module cannot be physically accessed*/
	FLASH003_NVM_E_NVM_FAIL         = (int32_t) 0x80010005,  
	 /*verification of written page not successful*/
	FLASH003_NVM_E_VERIFY           = (int32_t) 0x80010006,  
	/*destination data is not (completely) located in NVM*/
	FLASH003_NVM_E_DST_AREA_EXCEED  = (int32_t) 0x80010009,  
	/*destination data is not properly aligned*/
	FLASH003_NVM_E_DST_ALIGNMENT    = (int32_t) 0x80010010,   
} FLASH003_NVM_STATUS;
 
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
 * @ingroup FLASH003_apidoc
 * @{
 */

/** 
 * This function configures a few parameters based on UI settings.
 * It also clears the Error Status bits in the Flash Status Register
 *
 * @return     void
 *             
 *             
 * <b>Reentrant: NO </b><BR>
 * <BR><P ALIGN="LEFT"><B>Example:</B>
 * @code
 *  #include <DAVE3.h>
 *  int main(void)
 *  {
 *    // Initialize
 *    DAVE_Init(); // FLASH003_Init() will be called within DAVE_Init()
 *    // ... infinite loop ...
 *    while(1)
 *    {
 *
 *    }
 *  }
 * @endcode<BR> </p>
 */
void FLASH003_Init (void);
/** 
 *  This function executes a 'Clear Status' Command.
 *  A clear status command clears all error flags in the 
 *  Flash Status Register.
 *
 * @return     void
 *             
 *             
 * <b>Reentrant: NO </b><BR>
 * <BR><P ALIGN="LEFT"><B>Example:</B>
 * @code
 *  #include <DAVE3.h>
 *  int main(void)
 *  {
 *    // Initialize
 *    DAVE_Init(); // FLASH003_Init() will be called within DAVE_Init()
 *    //Do some flash operation here
 *    //....
 *    //then clear status
 *    FLASH003_ClearStatus();
 *    // ... infinite loop ...
 *    while(1)
 *    {
 *
 *    }
 *  }
 * @endcode<BR> </p>
 */
void FLASH003_ClearStatus(void);
/** 
 *  The function programs one Block of the Flash using Write Block command.
 *  This function returns only once the programming is completed or
 *  once the programming has resulted in error condition.
 *
 *  NOTE: While the programming operation is in progress, the flash array
 *  will be busy and no access to flash can happen. Hence this function shall
 *  be executed from RAM.
 *
 *
 * @param[in] Address Start address of the page
 * @param[in] pBuf[] Buffer with data to be programmed
 *
 * @return     status_t<BR>
 *             FLASH003_COMPLETE       : if Block write was successful<BR>
 *             FLASH003_INVALID_PARAM  : If invalid address entered<BR>
 *             FLASH003_ERROR          : If error occurred while Writing
 *                                                                 the block<BR>
 *             
 *             
 * <b>Reentrant: NO </b><BR>
 * <BR><P ALIGN="LEFT"><B>Example:</B>
 * @code
 *  #include <DAVE3.h>
 *  int main(void)
 *  {
 *    uint32_t gBuffer[]={20,21,22,23};
 *    status_t status;
 *    uint32_t address=0x1000B000U;
 *    
 *    DAVE_Init(); // FLASH003_Init() will be called within DAVE_Init()
 *     
 *    FLASH003_ClearStatus();
 *    status = FLASH003_ErasePage((unsigned long )address);
 *    status = FLASH003_WriteBlock(address,gBuffer);
 *
 *    while(1)
 *    {
 *
 *    }
 *  }
 * @endcode<BR> </p>
 */
status_t FLASH003_WriteBlock ( uint32_t Address, const uint32_t pBuf[] );
/** 
 *  The function programs multiple Blocks of the Flash using Write Multiple
 *  Blocks command.
 *  This function returns only once the programming is completed or
 *  once the programming has resulted in error condition.
 *
 *  NOTE: While the programming operation is in progress, the flash array
 *  will be busy and no access to flash can happen. Hence this function shall
 *  be executed from RAM.
 *
 *
 * @param[in] Address Start address of the page
 * @param[in] pBuf[] Buffer with data to be programmed
 * @param[in] No_of_Blocks total number of blocks to be written
 *
 * @return     status_t<BR>
 *             FLASH003_COMPLETE       : if Block write was successful<BR>
 *             FLASH003_INVALID_PARAM  : If invalid address entered<BR>
 *             FLASH003_ERROR          : If error occurred while writing
 *                                                                the blocks<BR>
 *             
 *             
 * <b>Reentrant: NO </b><BR>
 * <BR><P ALIGN="LEFT"><B>Example:</B>
 * @code
 *  #include <DAVE3.h>
 *  int main(void)
 *  {
 *    uint32_t gBuffer[]={20,21,22,23,24,25,26,27,28,29,30,31,32,33,34,35,36};
 *    status_t status;
 *    uint32_t address=0x1000B000U;
 *    
 *    DAVE_Init(); // FLASH003_Init() will be called within DAVE_Init()

 *    FLASH003_ClearStatus();
 *    status = FLASH003_ErasePage((unsigned long )address);
 *    status = FLASH003_WriteMultipleBlocks(address,gBuffer,4U);
 *    
 *
 *    while(1)
 *    {
 *
 *    }
 *  }
 * @endcode<BR> </p>
 */
status_t FLASH003_WriteMultipleBlocks 
( uint32_t Address, const uint32_t pBuf[], uint32_t No_of_Blocks );
/** 
 * This function erases the Page indicated by the Page start address.
 * This function returns only once the erase operation is completed or
 * once the erase operation has resulted in error condition.
 *
 *  NOTE: While the erase operation is in progress, the flash array
 *  will be busy and no access to flash can happen. Hence this function may
 *  be executed from RAM.
 *
 * @param[in] Address Start address of the Page to be erased
 *
 * @return     status_t<BR>
 *             FLASH003_COMPLETE        : if page write was successful<BR>
 *             FLASH003_INVALID_PARAM   : If invalid address entered<BR>
 *             FLASH003_ERROR           : If error occurred while erasing<BR>
 *             
 *             
 *
 * <b>Reentrant: NO </b><BR>
 * <BR><P ALIGN="LEFT"><B>Example:</B>
 * @code
 *  #include <DAVE3.h>
 *  int main(void)
 *  {
 *    uint32_t status;
 *    uint32_t address=0x1000B000U;
 *    // Initialize
 *    DAVE_Init(); // FLASH003_Init() will be called within DAVE_Init()
 *    status = 	FLASH003_ErasePage((unsigned long )address);
 *    while(1)
 *    {
 *    }
 *  }
 * @endcode<BR> </p>
*/
status_t FLASH003_ErasePage ( uint32_t Address);
/** 
 * This function Erases,Write and Verify the Page indicated by the 
 * Page start address.
 * This function returns only once the erase operation is completed or
 * once the erase operation has resulted in error condition.
 *
 *  NOTE: While the erase operation is in progress, the flash array
 *  will be busy and no access to flash can happen. Hence this function may
 *  be executed from RAM.
 *
 * @param[in] Address Start address of the Page to be erased
 * @param[in] pBuf[] Source Data address
 *
 * @return     status_t<BR>
 *             FLASH003_COMPLETE        : if page write was successful<BR>
 *             FLASH003_INVALID_PARAM   : If invalid address entered<BR>
 *             FLASH003_ERROR           : If error occurred while Programming
 *                                                                  the page<BR>
 *             
 *             
 *
 * <b>Reentrant: NO </b><BR>
 * <BR><P ALIGN="LEFT"><B>Example:</B>
 * @code
 *  #include <DAVE3.h>
 *  int main(void)
 *  {
 *    uint32_t status,i;
 *    uint32_t address=0x1000B000U;
 *    uint32_t pBuffer[64];
 *    pBuffer[0]=0;
 *    pBuffer[1]=1;
 *    for(i=2;i<62;i++)
 *      pBuffer[i] = pBuffer[i-1]+pBuffer[i-2];
 *    // Initialize
 *    DAVE_Init(); // FLASH003_Init() will be called within DAVE_Init()
 *    status =  FLASH003_ProgVerifyPage(address,&pBuffer[0]);
 *    while(1)
 *    {
 *    }
 *  }
 * @endcode<BR> </p>
 */
status_t FLASH003_ProgVerifyPage ( uint32_t Address, const uint32_t pBuf[] );
/** 
 * This function Reads one Word from the indicated address.
 *
 *  NOTE: if the flash is busy this will not be processed.
 *        It will check for ECC errors and if any errors present 
 *        it will return error.
 *
 * @param[in] Address of the word to be read
 * @param[in] pBuf Address of the Buffer from where data has to be copied
 *
 * @return     status_t<BR>
 *             FLASH003_COMPLETE        : if page write was successful<BR>
 *             FLASH003_INVALID_PARAM   : If invalid address entered<BR>
 *             FLASH003_ERROR           : If error occurred while Reading or
 *                                                    any ECC error occurred<BR>
 *             
 *             
 *
 * <b>Reentrant: NO </b><BR>
 * <BR><P ALIGN="LEFT"><B>Example:</B>
 * @code
 *  #include <DAVE3.h>
 *  int main(void)
 *  {
 *    uint32_t status,i;
 *    uint32_t address=0x1000B000U;
 *    uint32_t pBuffer[64];
 *    uint32_t tbuffer;
 *    pBuffer[0]=0;
 *    pBuffer[1]=1;
 *    for(i=2;i<62;i++)
 *      pBuffer[i] = pBuffer[i-1]+pBuffer[i-2];
 *    // Initialize
 *    DAVE_Init(); // FLASH003_Init() will be called within DAVE_Init()
 *    status =  FLASH003_ProgVerifyPage(address,&pBuffer[0]);
 *    status =  FLASH003_ReadWord(address,&tbuffer);
 *    
 *    while(1)
 *    {
 *    }
 *  }
 * @endcode<BR> </p>
 */
status_t FLASH003_ReadWord(uint32_t Address, uint32_t* pBuf);
/** 
 * This function Reads one Block from the indicated address.
 *
 *  NOTE: if the flash is busy this will not be processed.
 *        It will check for ECC errors and if any errors present 
 *        it will return error.
 *        
 * @param[in] Address Start address of the Block to be read
 * @param[in] pBuf[] Name of Buffer where data has to be copied
 *
 * @return     status_t<BR>
 *             FLASH003_COMPLETE        : if page write was successful<BR>
 *             FLASH003_INVALID_PARAM   : If invalid address entered<BR>
 *             FLASH003_ERROR           : If error occurred while Reading or any
 *                                        ECC error occurred<BR>
 *             
 *             
 *
 * <b>Reentrant: NO </b><BR>
 * <BR><P ALIGN="LEFT"><B>Example:</B>
 * @code
 *  #include <DAVE3.h>
 *  int main(void)
 *  {
 *    uint32_t gBuffer[]={20,21,22,23},rBuffer[4];
 *    status_t status;
 *    uint32_t address=0x1000B000U;
 *    
 *    DAVE_Init(); // FLASH003_Init() will be called within DAVE_Init()
 *     
 *    FLASH003_ClearStatus();
 *    status = FLASH003_ErasePage((unsigned long )address);
 *    status = FLASH003_WriteBlock(address,gBuffer);
 *    status =  FLASH003_ReadBlock(address,rBuffer);
 *    
 *    while(1)
 *    {
 *    }
 *  }
 * @endcode<BR> </p>
 */
status_t FLASH003_ReadBlock(uint32_t Address, uint32_t pBuf[]);
/** 
 * This function Reads the number of bytes indicated from the specified address.
 *
 *  NOTE: if the flash is busy this will not be processed.
 *        It will check for ECC errors and if any errors present 
 *        it will return error.
 *        
 * @param[in] Address Start address of the Block to be read
 * @param[in] pBuf[] Name of Buffer where data has to be copied
 * @param[in] No_of_bytes Number of Bytes to be read
 *
 * @return     status_t<BR>
 *             FLASH003_COMPLETE        : if page write was successful<BR>
 *             FLASH003_INVALID_PARAM   : If invalid address entered<BR>
 *             FLASH003_ERROR           : If error occurred while Reading or
 *                                                    any ECC error occurred<BR>
 *             
 *             
 *
 * <b>Reentrant: NO </b><BR>
 * <BR><P ALIGN="LEFT"><B>Example:</B>
 * @code
 *  #include <DAVE3.h>
 *  int main(void)
 *  {
 *	status_t status;
 *	uint32_t bytes;
 *	uint8_t rBuffer[16];
 *	uint32_t address;
 *	uint32_t gBuffer[]={0xF0F0F0F0,0xF0F0F0F0,0xF0F0F0F0,0xF0F0F0F0};
 *	address=0x10032F00U;
 *	bytes=16;
 *
 *	DAVE_Init();  // FLASH003_Init() will be called within DAVE_Init()
 *
 *	FLASH003_ClearStatus();
 *	status = FLASH003_ErasePage((unsigned long )address);
 *	status = FLASH003_WriteBlock(address,gBuffer);
 *	status = FLASH003_ReadBytes(address,rBuffer,bytes);
 *    
 *    while(1)
 *    {
 *    }
 *  }
 * @endcode<BR> </p>
 */
status_t FLASH003_ReadBytes(uint32_t Address, uint8_t pBuf[],\
		                                                  uint32_t No_of_bytes);
/** 
 * @brief  Function to register event handler functions for a specific NVM 
 *         Module. The user registers the callback function and if the event 
 *         is unmasked,the Interrupt handler will service the Event.
 *        
 * @param[in] InterruptID this is passed to register the interrupt handler
 * @param[in] userFunction this is callback function name.
 * @param[in] CbArgs call back arguments for Event Handlers
 *
 * @return  status_t<BR>
 *           FLASH003_COMPLETE        : if registration of the event is 
 *                                                                successful<BR>
 *           FLASH003_INVALID_PARAM   : If invalid interruptID is given<BR>
 *           FLASH003_ERROR           : If error occurred while registration of
 *                                                                 the event<BR>
 *
 * <b>Reentrant: NO </b><BR>
 * <BR><P ALIGN="LEFT"><B>Example:</B>
 * @code
 *  #include <DAVE3.h>
 *  
 *  void Handler1(uint32_t CbArgs1)
 *  {
 *   //This is the call back handler, Name is defined in UI
 *   //Whenever any interrupt sequence completion interrupt occured this will 
 *   //be executed
 *  }
 *  
 *  int main(void)
 *  {
 *	status_t status;
 *	uint32_t address;
 *	uint32_t gBuffer[]={0xF0F0F0F0,0xF0F0F0F0,0xF0F0F0F0,0xF0F0F0F0};
 *	address=0x10032F00U;
 *
 *	DAVE_Init();  // FLASH003_Init() will be called within DAVE_Init()
 *	
 *	status = FLASH003_RegisterCallbackEvent(FLASH003_FLCMPLTI,Handler1,0U);
 *
 *	FLASH003_ClearStatus();
 *	status = FLASH003_ErasePage((unsigned long )address);
 *  if(status == FLASH003_COMPLETE &&
			FLASH003_DynamicHandle0.FLASH003_global_status == FLASH003_IDLE )
	{
 *	  status = FLASH003_WriteBlock(address,gBuffer);
 *  }
 *  else
 *	{
 *	  while(1);//if any error occurred execution will stop here
 *  }
 *    
 *    while(1)
 *    {
 *    }
 *  }
 *  
 * @endcode<BR> </p>
 */
status_t FLASH003_RegisterCallbackEvent(FLASH003_InterruptId InterruptID,\
		                    FLASH003_CallbackType userFunction,uint32_t CbArgs);

#include "FLASH003_Conf.h"
/**
 *@}
 */
#ifdef __cplusplus
}
#endif

#endif /* FLASH003_H_ */

