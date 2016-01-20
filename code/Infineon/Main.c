/*******************************************************************************
 Copyright (c) 2013, Infineon Technologies AG                                 **
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
** PLATFORM : Infineon XMC1200 Series                                         **
**                                                                            **
** AUTHOR : Michelle Chia				                                      **
**                                                                            **
** version 0 (3-channel DCDC LED driver with DMX512)			              **
** version 1 (RGB LED Shield, Arduino)							              **
** version 2 (minor updates)    	 								          **
** version 3 (modified maximum peak-current reference)        	      		  **
** version 4 (added ReadMe and comments)                                      **
** version 5 (DMX512 control is disabled in virgin shields)                   **
** MODIFICATION DATE : 12 Aug 2014	                                          **
**                                                                            **
*******************************************************************************/



#include <DAVE3.h>			//Declarations from DAVE3 Code Generation (includes SFR declaration)
#include "i2c_comm.h"

#define GET_MASK_FOR_1CHANNEL(N1) (1UL<<N1)
#define INTENSITY_RED             (0x11U) //0
#define INTENSITY_GREEN           (0x12U) //1
#define INTENSITY_BLUE			  (0x13U) //2
#define INTENSITY_RGB             (0x14U)
#define CURRENT_RED               (0x21U) //3
#define CURRENT_GREEN             (0x22U) //4
#define CURRENT_BLUE              (0x23U) //5
#define CURRENT_RGB               (0x24U)
#define DMX0FF					  (0x30U) //6
#define DMXON             		  (0x31U)
#define DMXSLOT					  (0x32U) //7
#define DMX8BIT                   (0x33U) //8 9 10 11
#define DMX16BIT                  (0x34U)
#define OFFTIME_RED               (0x41U) //12
#define OFFTIME_GREEN             (0x42U) //13
#define OFFTIME_BLUE		   	  (0x43U) //14
#define WALKTIME                  (0x50U) //15
#define DIMMINGLEVEL              (0x60U) //16
#define FADERATE                  (0x61U) //17
#define CHANGEADDRESS             (0x70U) //18

#define READ_CONFIG               (0x80U)
#define READ_INTENSITY_RED        (0x81U)
#define READ_INTENSITY_GREEN      (0x82U)
#define READ_INTENSITY_BLUE		  (0x83U)
#define READ_CURRENT_RED          (0x84U)
#define READ_CURRENT_GREEN        (0x85U)
#define READ_CURRENT_BLUE         (0x86U)
#define READ_OFFTIME_RED          (0x87U)
#define READ_OFFTIME_GREEN        (0x88U)
#define READ_OFFTIME_BLUE		  (0x89U)
#define READ_WALKTIME             (0x8AU)
#define READ_DIMMINGLEVEL         (0x8BU)
#define READ_FADERATE             (0x8CU)
#define READ_DMX             	  (0x8DU)
#define READ_DMXSLOT			  (0x8EU)
#define READ_DMXBIT               (0x8FU)
#define READ_DMXREDH              (0x94U)
#define READ_DMXREDL              (0x95U)
#define READ_DMXGREENH            (0x96U)
#define READ_DMXGREENL            (0x97U)
#define READ_DMXBLUEH             (0x98U)
#define READ_DMXBLUEL             (0x99U)


#define DIRECTACCESS_READ         (0x90U)
#define DIRECTACCESS_MOVE   	  (0x91U)
#define DIRECTACCESS_AND          (0x92U)
#define DIRECTACCESS_OR           (0x93U)

#define SAVEPARAMETERS            (0xA0U)

COLORLAMP01_ColorHandleType Lamphandle;

// Variables for I2C Command + Data
uint8_t Command = 0x00;
uint8_t DataUpper = 0x00;
uint8_t DataLower = 0x00;
uint16_t DataTotal = 0x00;

// Variables for DMX Control
uint16_t startingSlot = 0x01;
uint16_t dmx_RedL = 0x00;
uint16_t dmx_RedH = 0x00;
uint16_t dmx_GreenL = 0x00;
uint16_t dmx_GreenH = 0x00;
uint16_t dmx_BlueL = 0x00;
uint16_t dmx_BlueH = 0x00;

uint32_t registerAddress = 0x00000000;
uint32_t DataDirect = 0x00000000; // Store data for direct access
uint32_t changeAddress = 0x00000000; // New address to be changed to
uint32_t dimLevel = 0x00000000; // Dimming level
uint32_t temp = 0x00000000;

uint32_t flashAddress=0x10008F00; // Starting Memory Space for Flash
uint32_t *testflashadd = 0;
uint32_t testflash = 0;

uint32_t flashBuffer[23];

int DMXControl = 1;
int DMX_8 = 1;
int DMX_16 = 0;
int byteCount = 0;
int writeToFlash = 0;
int configStatus = 1;


int main(void)
{

	// status_t status;		// Declaration of return variable for DAVE3 APIs (toggle comment if required)

	DAVE_Init();			// Initialization of DAVE Apps

	// Stored data format: counter, Red, Green, Blue, Red, Green, Blue, DMXOFFON, DMXSTARING, DMXBIT, DMXRED, DMXGREEN, DMXBLUE, DMXREDL, DMXGREENL, DMXBLUEL, OFFRED, OFFGREEN, OFFBLUE, WALKTIME, DIMMINGLEVEL, FADERATE, ADDRESS
	FLASH003_ClearStatus();
	//FLASH003_ErasePage((unsigned long )0x10004F00);
	FLASH003_ReadBytes(0x10004F80, flashBuffer, 92); // new address = 16 * number of blocks

	if (flashBuffer[0] == 0xFFFFFFFF) // Last saved parameters in first half of page
		FLASH003_ReadBytes(0x10004F00, flashBuffer, 92); // new address = 16 * number of blocks

	if (flashBuffer[1] == 0xFFFFFFFF || flashBuffer[2] == 0xFFFFFFFF || flashBuffer[3] == 0xFFFFFFFF ||
			flashBuffer[4] == 0xFFFFFFFF || flashBuffer[5] == 0xFFFFFFFF || flashBuffer[6] == 0xFFFFFFFF ||
			flashBuffer[7] == 0xFFFFFFFF || flashBuffer[8] == 0xFFFFFFFF || flashBuffer[9] == 0xFFFFFFFF ||
			flashBuffer[10] == 0xFFFFFFFF || flashBuffer[11] == 0xFFFFFFFF || flashBuffer[12] == 0xFFFFFFFF ||
			flashBuffer[13] == 0xFFFFFFFF || flashBuffer[14] == 0xFFFFFFFF || flashBuffer[15] == 0xFFFFFFFF ||
			flashBuffer[16] == 0xFFFFFFFF || flashBuffer[17] == 0xFFFFFFFF || flashBuffer[18] == 0xFFFFFFFF ||
			flashBuffer[19] == 0xFFFFFFFF || flashBuffer[20] == 0xFFFFFFFF || flashBuffer[21] == 0xFFFFFFFF || flashBuffer[22] == 0xFFFFFFFF )
	{
		configStatus = 0;	// virgin device, nothing has been saved in Flash yet
		flashBuffer[0] = 1;
		flashBuffer[1] = 0; // Default Red Intensity
		flashBuffer[2] = 0; // Default Green Intensity
		flashBuffer[3] = 0; // Default Blue Intensity
		flashBuffer[4] = 0x15; // Default Red Current
		flashBuffer[5] = 0x15; // Default Green Current
		flashBuffer[6] = 0x15; // Default Blue Current
		flashBuffer[7] = 0; // Default DMX off
		flashBuffer[8] = 1; // DMX Starting Slot - 1
		flashBuffer[9] = 8; // DMX 8 Bit
		flashBuffer[10] = 0; // Default dmx_RedH = 0 offset
		flashBuffer[11] = 0; // Default DMX_RedL
		flashBuffer[12] = 1; // Default DMX_GreenH = 1 offset
		flashBuffer[13] = 0; // Default dmx_GreenL
		flashBuffer[14] = 2;  // Default DMX_BlueH = 2 offset
		flashBuffer[15] = 0; // Default DMX_BlueL
		flashBuffer[16] = 0x38; // Red Off Time
		flashBuffer[17] = 0x39; // Green Off Time
		flashBuffer[18] = 0x38; // Blue Off Time
		flashBuffer[19] = 0x10; // Walktime
		flashBuffer[20] = 0xFFF; // Dimming Level
		flashBuffer[21] = 0x00; // Fade Rate
		flashBuffer[22] = 0xF25E; // Address
	}


	DMXControl = flashBuffer[7];
	startingSlot = flashBuffer[8];
	if (flashBuffer[9] == 0x8) // 8 bit DMX
	{
		DMX_8 = 1;
		DMX_16 = 0;
		dmx_RedH = flashBuffer[10]; // dmx slot for red colour intensity
		dmx_GreenH = flashBuffer[12]; // dmx slot for green colour intensity
		dmx_BlueH = flashBuffer[14]; // dmx slot for blue colour intensity
	}

	else if (flashBuffer[9] == 0x16) // 16 bit DMX
	{
		DMX_8 = 0;
		DMX_16 = 1;
		dmx_RedH = flashBuffer[10]; // dmx slot for higher bits of red colour intensity
		dmx_GreenH = flashBuffer[12]; // dmx slot for lower 8 bits of red colour intensity
		dmx_BlueH = flashBuffer[14]; // dmx slot for higher bits of green colour intensity
		dmx_RedL = flashBuffer[11]; // dmx slot for lower 8 bits of green colour intensity
		dmx_GreenL = flashBuffer[13]; // dmx slot for higher 8 bits of blue colour intensity
		dmx_BlueL = flashBuffer[15]; // dmx slot for lower 8 bits of blue colour intensity
	}


	// Configure Off Times (compare values)
	PWMSP003_UpdateCompare(&PWMSP003_Handle0, flashBuffer[16], FALSE); // pwm of red channel
	PWMSP003_UpdateCompare(&PWMSP003_Handle1, flashBuffer[17], FALSE); // pwm of green channel
	PWMSP003_UpdateCompare(&PWMSP003_Handle2, flashBuffer[18], FALSE); // pwm of blue channel

	// Configure Current Intensities
	BCCUCH01_SetIntensity(&BCCUCH01_Handle3, flashBuffer[4]); // BCCU for red channel colour intensity
	BCCUCH01_StartLinearWalk(&BCCUCH01_Handle3, GET_MASK_FOR_1CHANNEL(BCCUCH01_Handle3.ChNum));
	BCCUCH01_SetIntensity(&BCCUCH01_Handle4, flashBuffer[5]); // BCCU for green channel colour intensity
	BCCUCH01_StartLinearWalk(&BCCUCH01_Handle4, GET_MASK_FOR_1CHANNEL(BCCUCH01_Handle4.ChNum));
	BCCUCH01_SetIntensity(&BCCUCH01_Handle5, flashBuffer[6]); // BCCU for blue channel colour intensity
	BCCUCH01_StartLinearWalk(&BCCUCH01_Handle5, GET_MASK_FOR_1CHANNEL(BCCUCH01_Handle5.ChNum));

	// Set Fade Rate + Dimming Level
	BCCUDIM01_AbortDimming(&BCCUDIM01_Handle0, GET_CHANNEL_DIM_MASK(BCCUDIM01_Handle0.DE_Num));
	BCCUDIM01_SetDimDiv(&BCCUDIM01_Handle0, flashBuffer[21]); // dimming engine 2
	BCCUDIM01_AbortDimming(&BCCUDIM01_Handle0, GET_CHANNEL_DIM_MASK(BCCUDIM01_Handle0.DE_Num));
	BCCUDIM01_SetDimLvl(&BCCUDIM01_Handle0, flashBuffer[20]);
	BCCUDIM01_StartDimming(&BCCUDIM01_Handle0, GET_CHANNEL_DIM_MASK(BCCUDIM01_Handle0.DE_Num));

	//Configure Color Intensities + Walktime + Faderate + Dimming Level
	Lamphandle.LinearWalkPrescaler = flashBuffer[19];
	Lamphandle.Intensity_Red = flashBuffer[1];
	Lamphandle.Intensity_Green = flashBuffer[2];
	Lamphandle.Intensity_Blue = flashBuffer[3];
	COLORLAMP01_SetColor(&COLORLAMP01_ConfigHandle0, &Lamphandle);


	I2C003_ClearFlag(&I2C003_Handle0, I2C003_FLAG_NACK_RECEIVED);

	// Configure Address 0x15E (10 bit addressing). Address stored in lower 16 bits of register.
	I2C003_Handle0.I2CRegs->PCR_IICMode &= 0xFFFF0000;
	I2C003_Handle0.I2CRegs->PCR_IICMode |= flashBuffer[22];

	while(1)
	{

	}
	return 0;
}

void DMX512RD01_CallBack(void)
{
	DMX512RD01_ConfigStartSlotNo(1);

	if (DMXControl == 1 && DMX_8 == 1)
	{
		Lamphandle.Intensity_Red = DMX512RD01_buffer[dmx_RedH]<<4;				// 8-bit information in Slot 1
		Lamphandle.Intensity_Green = DMX512RD01_buffer[dmx_GreenH]<<4;			// 8-bit information in Slot 2
		Lamphandle.Intensity_Blue = DMX512RD01_buffer[dmx_BlueH]<<4;			// 8-bit information in Slot 3
		COLORLAMP01_SetColor(&COLORLAMP01_ConfigHandle0, &Lamphandle);	// set LED channel intensities
	}

	else if (DMXControl == 1 && DMX_16 == 1)
	{
		Lamphandle.Intensity_Red = (DMX512RD01_buffer[dmx_RedH]<<4) + (DMX512RD01_buffer[dmx_RedL]>>4);			// 8-bit information in Slot 1
		Lamphandle.Intensity_Green = (DMX512RD01_buffer[dmx_GreenH]<<4) + (DMX512RD01_buffer[dmx_GreenL]>>4);			// 8-bit information in Slot 2
		Lamphandle.Intensity_Blue = (DMX512RD01_buffer[dmx_BlueH]<<4) + (DMX512RD01_buffer[dmx_BlueL]>>4);			// 8-bit information in Slot 3

		COLORLAMP01_SetColor(&COLORLAMP01_ConfigHandle0, &Lamphandle);	// set LED channel intensities
	}


	else
	{}
}

