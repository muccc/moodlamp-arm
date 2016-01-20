/*
 * itwoc.c
 *
 *  Created on: Jul 14, 2014
 *      Author: ChiaJiaY
 */


#include "i2c_comm.h"
#include <Dave3.h>


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

I2C003_DataType data1, data2, data3, data4, data5;

/*******************************************************************************
 ** Syntax          :                                                          **
 **                                                                            **
 ** Sync /Async     : Synchronous                                              **
 **                                                                            **
 ** Reentrant       : Non reentrant                                            **
 **                                                                            **
 ** Parameters(IN)  : None                                                     **
 **                                                                            **
 ** Parameters(OUT) : Data received from shield on I2C bus                     **
 **                                                                            **
 ** Return value    : None                                                     **
 **                                                                            **
 ** Description     : This function is the interrupt service routine when the  **
 **                   shield receives data. The received data is stored in     **
 **                   global variable DataReceived and DataTotal. The function **
 **                   checks the received data against the defined command     **
 **                   words                                                    **
 *******************************************************************************/
void FIFO_Receive_Int_Handler(void)
{
	uint8_t DataReceived = 0x00;
	I2C003_ClearFlag(&I2C003_Handle0, I2C003_FLAG_RIF);
	I2C003_Handle0.I2CRegs->TRBSCR |= USIC_CH_TRBSCR_CSRBI_Msk;
	I2C003_ReadData(&I2C003_Handle0,&DataReceived);  // Read receive FIFO buffer, put the data in DataReceive1

	if (byteCount == 0) // Taking in Command
	{
		Command = (DataReceived & 0x00FF);
		DataUpper = 0x00;
		DataLower = 0x00;
		byteCount++;

		if (Command == DMX0FF) // If DMXOFF sent, off the DMX control
		{
			DMXControl = 0;
			byteCount = 0;
			flashBuffer[7] = 0; // writing to buffer maintaining flash parameters
		}

		else if (Command == DMXON)
		{
			DMXControl = 1;
			byteCount = 0;
			flashBuffer[7] = 1;
		}

		else if (Command == 0x80 || Command == 0x81 || Command == 0x82 || Command == 0x83 || Command == 0x84 || Command == 0x85 || Command == 0x86 || Command == 0x87 || Command == 0x88 || Command == 0x89 || Command == 0x8A || Command == 0x8B || Command == 0x8C || Command == 0x8D || Command == 0x8E || Command == 0x8F)
		{

			byteCount = 0;
			// Commands for slave to send back relevant data to master
			// 0x71 0x72 0x73: RGB Intensity
			// 0x74 0x75 0x76: RGB Current
			// 0x77: Walktime
			// 0x78: Dimming
			// 0x79: Fade Rate
		}

		else if (Command == SAVEPARAMETERS)
		{
			byteCount = 0;
			writeToFlash = 1;
		}

	}

	else if (byteCount == 1 || byteCount == 3 || byteCount == 5 || byteCount == 7 || byteCount == 9 || byteCount == 11) // every odd byte is lower 8 bits
	{
		DataUpper = (DataReceived & 0x00FF);
		byteCount++;

	}
	else if (byteCount == 2 || byteCount == 4 || byteCount == 6 || byteCount == 8 || byteCount == 10 || byteCount == 12)
	{
		DataLower = (DataReceived & 0x00FF);
		DataTotal = (uint16_t) (DataUpper << 8 ) | DataLower; // upper 8 bits, shift left by 8 bits
		byteCount ++;

	}

	if (byteCount == 3) // Commands here come with 2 more bytes of data
	{
		if(Command == INTENSITY_RED) // Red Command: Change red color intensity of lamp
		{
			BCCUCH01_AbortLinearWalk(&BCCUCH01_Handle0, GET_MASK_FOR_1CHANNEL(BCCUCH01_Handle0.ChNum)); // end any previous walks. BCCU channel for red colour intensity
			DataTotal &= 0x0FFF;
			BCCUCH01_SetIntensity(&BCCUCH01_Handle0, DataTotal);
			BCCUCH01_StartLinearWalk(&BCCUCH01_Handle0, GET_MASK_FOR_1CHANNEL(BCCUCH01_Handle0.ChNum)); // start changing target intensity
			byteCount = 0;

			flashBuffer[1] = DataTotal; // store into flash buffer
		}

		else if (Command == INTENSITY_GREEN) // Green Command: Change green color intensity of lamp
		{
			BCCUCH01_AbortLinearWalk(&BCCUCH01_Handle1, GET_MASK_FOR_1CHANNEL(BCCUCH01_Handle1.ChNum)); //BCCU channel for green colour intensity
			DataTotal &= 0x0FFF;
			BCCUCH01_SetIntensity(&BCCUCH01_Handle1, DataTotal);
			BCCUCH01_StartLinearWalk(&BCCUCH01_Handle1, GET_MASK_FOR_1CHANNEL(BCCUCH01_Handle1.ChNum));
			byteCount = 0;

			flashBuffer[2] = DataTotal;
		}


		else if (Command == INTENSITY_BLUE) // Blue Command: Change blue color intensity of lamp
		{
			BCCUCH01_AbortLinearWalk(&BCCUCH01_Handle2, GET_MASK_FOR_1CHANNEL(BCCUCH01_Handle2.ChNum)); // BCCU channel for blue colour intensity
			DataTotal &= 0x0FFF;
			BCCUCH01_SetIntensity(&BCCUCH01_Handle2, DataTotal);
			BCCUCH01_StartLinearWalk(&BCCUCH01_Handle2, GET_MASK_FOR_1CHANNEL(BCCUCH01_Handle2.ChNum));
			byteCount = 0;

			flashBuffer[3] = DataTotal;
		}

		else if (Command == INTENSITY_RGB) // RGB Command: Change color intensity of red, green and blue channels
		{
			BCCUCH01_AbortLinearWalk(&BCCUCH01_Handle0, GET_MASK_FOR_1CHANNEL(BCCUCH01_Handle0.ChNum));
			BCCUCH01_AbortLinearWalk(&BCCUCH01_Handle1, GET_MASK_FOR_1CHANNEL(BCCUCH01_Handle1.ChNum));
			BCCUCH01_AbortLinearWalk(&BCCUCH01_Handle2, GET_MASK_FOR_1CHANNEL(BCCUCH01_Handle2.ChNum));
			DataTotal &= 0x0FFF;
			Lamphandle.Intensity_Red = DataTotal;

			flashBuffer[1] = DataTotal;
		}

		else if (Command == CURRENT_RED) // Red Current Command: Change peak current reference of red channel
		{
			BCCUCH01_AbortLinearWalk(&BCCUCH01_Handle3, GET_MASK_FOR_1CHANNEL(BCCUCH01_Handle3.ChNum)); // BCCU channel for red peak current
			if (DataTotal > 0x80) // To ensure current does not exceed limit
				DataTotal = 0x80;
			DataTotal &= 0x00FF;
			BCCUCH01_SetIntensity(&BCCUCH01_Handle3, DataTotal);
			BCCUCH01_StartLinearWalk(&BCCUCH01_Handle3, GET_MASK_FOR_1CHANNEL(BCCUCH01_Handle3.ChNum)); // Setting the new peak current reference
			byteCount = 0;

			flashBuffer[4] = DataTotal;

		}

		else if (Command == CURRENT_GREEN) // Green Current Command: Change peak current reference of green channel
		{
			BCCUCH01_AbortLinearWalk(&BCCUCH01_Handle4, GET_MASK_FOR_1CHANNEL(BCCUCH01_Handle4.ChNum)); // BCCU channel for red peak current
			if (DataTotal > 0x80)
				DataTotal = 0x80;
			DataTotal &= 0x00FF;
			BCCUCH01_SetIntensity(&BCCUCH01_Handle4, DataTotal);
			BCCUCH01_StartLinearWalk(&BCCUCH01_Handle4, GET_MASK_FOR_1CHANNEL(BCCUCH01_Handle4.ChNum));
			byteCount = 0;

			flashBuffer[5] = DataTotal;
		}


		else if (Command == CURRENT_BLUE) // Blue Current Command: Change peak current reference of blue channel
		{

			BCCUCH01_AbortLinearWalk(&BCCUCH01_Handle5, GET_MASK_FOR_1CHANNEL(BCCUCH01_Handle5.ChNum)); // BCCU channel for blue peak current
			if (DataTotal > 0x80)
				DataTotal = 0x80;
			DataTotal &= 0x00FF;
			BCCUCH01_SetIntensity(&BCCUCH01_Handle5, DataTotal);
			BCCUCH01_StartLinearWalk(&BCCUCH01_Handle5, GET_MASK_FOR_1CHANNEL(BCCUCH01_Handle5.ChNum));
			byteCount = 0;

			flashBuffer[6] = DataTotal;
		}


		else if (Command == CURRENT_RGB) // RGB Current Command: Change peak current reference of red green and blue channels
		{
			BCCUCH01_AbortLinearWalk(&BCCUCH01_Handle3, GET_MASK_FOR_1CHANNEL(BCCUCH01_Handle3.ChNum));
			BCCUCH01_AbortLinearWalk(&BCCUCH01_Handle4, GET_MASK_FOR_1CHANNEL(BCCUCH01_Handle4.ChNum));
			BCCUCH01_AbortLinearWalk(&BCCUCH01_Handle5, GET_MASK_FOR_1CHANNEL(BCCUCH01_Handle5.ChNum));
			if (DataTotal > 0x64)
				DataTotal = 0x64;
			DataTotal &= 0x00FF;
			BCCUCH01_SetIntensity(&BCCUCH01_Handle3, DataTotal);
			flashBuffer[4] = DataTotal;
		}

		else if (Command == CHANGEADDRESS) // Change Address of Slave
		{
			I2C003_Handle0.I2CRegs->PCR_IICMode &= 0xFFFF0000; // Clear the address register
			changeAddress = (DataUpper << 8) | DataLower; // Put Address into one variable
			changeAddress &= 0x0000FFFF;
			I2C003_Handle0.I2CRegs->PCR_IICMode |= changeAddress; // write into register
			byteCount = 0;

			flashBuffer[22] = changeAddress;
		}

		else if (Command == OFFTIME_RED) // Change off-time of Red channel
		{
			DataTotal &= 0x00FF;
			PWMSP003_UpdateCompare(&PWMSP003_Handle0, DataTotal, FALSE); // change compare value of pwm of red channel
			byteCount = 0;

			flashBuffer[16] = DataTotal;
		}

		else if (Command == OFFTIME_GREEN) // Change off-time of Green channel
		{

			DataTotal &= 0x00FF;
			PWMSP003_UpdateCompare(&PWMSP003_Handle1, DataTotal, FALSE); // change compare value of pwm of green channel
			byteCount = 0;

			flashBuffer[17] = DataTotal;
		}

		else if (Command == OFFTIME_BLUE) // Change offtime of Blue channel
		{

			DataTotal &= 0x00FF;
			PWMSP003_UpdateCompare(&PWMSP003_Handle2, DataTotal, FALSE); // change compare value of pwm of blue channel
			byteCount = 0;

			flashBuffer[18] = DataTotal;

		}

		else if (Command == WALKTIME) // Change Walk Time
		{
			DataTotal &= 0x03FF; // Mask data. Walktime is 10 bit, not 12 bit information
			if (DataTotal < 0xF)
				DataTotal = 0xF;
			BCCUCH01_SetLinearWalkPrescaler(&BCCUCH01_Handle0, DataTotal); // Red channel
			BCCUCH01_SetLinearWalkPrescaler(&BCCUCH01_Handle1, DataTotal); // Green channel
			BCCUCH01_SetLinearWalkPrescaler(&BCCUCH01_Handle2, DataTotal); // Blue channel
			Lamphandle.LinearWalkPrescaler = DataTotal; // change linear walk in lamphandle enum
			byteCount = 0;

			flashBuffer[19] = DataTotal;
		}

		else if (Command == DIMMINGLEVEL) // Change dimming Level
		{
			BCCUDIM01_AbortDimming(&BCCUDIM01_Handle0, GET_CHANNEL_DIM_MASK(BCCUDIM01_Handle0.DE_Num)); // Abort previous dimming
			DataTotal &= 0x0FFF; // Mask data. Dimming is only 12 bit information, not 16 bits
			BCCUDIM01_SetDimLvl(&BCCUDIM01_Handle0, DataTotal); // dimming engine 2
			BCCUDIM01_StartDimming(&BCCUDIM01_Handle0, GET_CHANNEL_DIM_MASK(BCCUDIM01_Handle0.DE_Num));
			byteCount = 0;

			flashBuffer[20] = DataTotal;
		}

		else if (Command == FADERATE) // Fade Rate
		{
			BCCUDIM01_AbortDimming(&BCCUDIM01_Handle0, GET_CHANNEL_DIM_MASK(BCCUDIM01_Handle0.DE_Num));
			DataTotal &= 0x03FF; // 10bit number
			BCCUDIM01_SetDimDiv(&BCCUDIM01_Handle0, DataTotal); // dimming engine 2
			byteCount = 0;

			flashBuffer[21] = DataTotal;
		}

		else if (Command == DIRECTACCESS_READ || Command == DIRECTACCESS_MOVE || Command == DIRECTACCESS_AND || Command == DIRECTACCESS_OR)
		{
			// Direct Access commands. The first 4 bytes being sent are the register address. Lower 16 bits of address.
			registerAddress = 0;
			registerAddress = DataTotal;
		}

		else if (Command == DMXSLOT) // Starting slot number of DMX
		{
			startingSlot = DataTotal;
			byteCount = 0;

			flashBuffer[8] = DataTotal;
		}

		else if (Command == DMX8BIT) // Configuration for 8 bit DMX
		{
			DMX_8 = 1; // Set status of 8 bit DMX
			DMX_16 = 0; // Clear 16 bit

			dmx_RedH = DataTotal; // First 16 bits contains information for Red Slot
			flashBuffer[9] = 0x8;
			flashBuffer[10] = DataTotal;
		}


		else if (Command == DMX16BIT) // Configuration for 16 bit DMX
		{
			DMX_8 = 0; // Clear status of 8 bit DMX
			DMX_16 = 1; // Set status of 16 bit DMX


			dmx_RedH = DataTotal;
			flashBuffer[9] = 0x16;
			flashBuffer[10] = DataTotal;
		}


	}



	else if (byteCount == 5) // Another 2 bytes of data received
	{

		if (Command == INTENSITY_RGB) // Green color intensity data
		{
			DataTotal &= 0x0FFF;
			Lamphandle.Intensity_Green = DataTotal;
			flashBuffer[2] = DataTotal;
		}

		else if (Command == CURRENT_RGB) // green peak current reference data
		{
			DataTotal &= 0x00FF;
			BCCUCH01_SetIntensity(&BCCUCH01_Handle4, DataTotal);
			flashBuffer[5] = DataTotal;
		}

		else if (Command == DIRECTACCESS_READ || Command == DIRECTACCESS_MOVE || Command == DIRECTACCESS_AND || Command == DIRECTACCESS_OR) // if commands are these, the 4 bytes of data received is the register address
		{
			registerAddress = registerAddress << 16;
			registerAddress |= DataTotal; // get registerAddress;
		}

		else if (Command == DMX8BIT)
		{
			dmx_GreenH = DataTotal; // if 8 bit DMX, dmx slot containing green colour intensity data
			flashBuffer[12] = DataTotal;
		}

		else if (Command == DMX16BIT)
		{

			dmx_RedL = DataTotal; // if 16 bit DMX, dmx slot containing lower red colour intensity data

			flashBuffer[11] = dmx_RedL;

		}

	}

	else if (byteCount == 7) // Another 2 bytes of data received
	{


		if (Command == INTENSITY_RGB) // colour intensity of blue channel
		{
			DataTotal &= 0x0FFF;
			Lamphandle.Intensity_Blue = DataTotal;
			COLORLAMP01_SetColor(&COLORLAMP01_ConfigHandle0, &Lamphandle);
			flashBuffer[3] = DataTotal;
		}

		else if (Command == CURRENT_RGB) // peak current reference of blue channel
		{
			DataTotal &= 0x00FF;
			BCCUCH01_SetIntensity(&BCCUCH01_Handle5, DataTotal);
			BCCUCH01_StartLinearWalk(&BCCUCH01_Handle3, GET_MASK_FOR_1CHANNEL(BCCUCH01_Handle3.ChNum));
			BCCUCH01_StartLinearWalk(&BCCUCH01_Handle4, GET_MASK_FOR_1CHANNEL(BCCUCH01_Handle4.ChNum));
			BCCUCH01_StartLinearWalk(&BCCUCH01_Handle5, GET_MASK_FOR_1CHANNEL(BCCUCH01_Handle5.ChNum));
			flashBuffer[6] = DataTotal;
		}

		else if (Command == DIRECTACCESS_MOVE || Command == DIRECTACCESS_AND  || Command == DIRECTACCESS_OR)
		{
			DataDirect = 0;
			DataDirect = DataTotal;
		}

		else if (Command == DMX8BIT) // if dmx 8 bit, dmx slot of blue data
		{
			dmx_BlueH = DataTotal;
			flashBuffer[14] = DataTotal;
			byteCount = 0;
		}

		else if (Command == DMX16BIT) // if dmx 16 bit, dmx slot containing higher green colour intensity data
		{
			dmx_GreenH = DataTotal;
			flashBuffer[12] = DataTotal;
		}



		//byteCount = 0;
	}

	else if (byteCount == 9)
	{

		if (Command == DIRECTACCESS_MOVE) // direct access commands: this byte will complete the 32 bits of data to be written to the register
		{

			DataDirect = DataDirect << 16;
			DataDirect |= DataTotal;
			uint32_t *access;
			access = registerAddress;
			*access = DataDirect;

		}

		else if (Command == DIRECTACCESS_AND)
		{
			DataDirect = DataDirect << 16;
			DataDirect |= DataTotal;
			uint32_t *access;
			access = registerAddress;
			*access &= DataDirect;
		}

		else if (Command == DIRECTACCESS_OR)
		{
			DataDirect = DataDirect << 16;
			DataDirect |= DataTotal;
			uint32_t *access;
			access = registerAddress;
			*access |= DataDirect;
		}

		else if (Command == DMX16BIT) // if dmx 16 bit, dmx slot containing lower 8 bits of green colour intensity
		{

			dmx_GreenL = DataTotal;
			flashBuffer[13] = DataTotal;
		}


	}

	else if (byteCount == 11)
	{

		if (Command == DMX16BIT) // dmx slot containing higher 8 bits of blue colour intensity
		{

			dmx_BlueH = DataTotal;
			flashBuffer[14] = DataTotal;
		}
	}

	else if (byteCount == 13)
	{

		if (Command == DMX16BIT)
		{
// dmx slot containing lower 8 bits of blue colour intensity
			dmx_BlueL = DataTotal;
			flashBuffer[15] = DataTotal;
		}
	}



}

/*******************************************************************************
 ** Syntax          :                                                          **
 **                                                                            **
 ** Sync /Async     : Synchronous                                              **
 **                                                                            **
 ** Reentrant       : Non reentrant                                            **
 **                                                                            **
 ** Parameters(IN)  : None                                                     **
 **                                                                            **
 ** Parameters(OUT) : Data to be sent to master board via I2C                  **
 **                                                                            **
 ** Return value    : None                                                     **
 **                                                                            **
 ** Description     : This function is the interrupt service routine when the  **
 **                   shield receives a request for data and when a start      **
 **                   condition is received.                                   **
 *******************************************************************************/
void I2C_START(void)
{

	byteCount = 0;
	uint8_t send = 0x00;
	I2C003_Handle0.I2CRegs->TRBSCR |= 0x8000;
	I2C003_Handle0.I2CRegs->FMR = 0x00000002U  << USIC_CH_FMR_MTDV_Pos;	// clear TDV and TE
	I2C003_Handle0.I2CRegs->TRBSCR = USIC_CH_TRBSCR_FLUSHTB_Msk;			// flush FIFO transmit buffer
	I2C003_Handle0.I2CRegs->PSCR |= USIC_CH_PSCR_CST5_Msk;
	I2C003_Handle0.I2CRegs->PSCR |= USIC_CH_PSCR_CST2_Msk;

	temp = I2C003_Handle0.I2CRegs->PSR_IICMode;
	temp &= 0x00000080;
	if (temp == 0x00000080) // slave read request event occured
	{

		if (Command == READ_INTENSITY_RED) // request for red colour intensity
		{
			data2.TDF_Type = I2C003_TDF_STXDATA; // transfer data code
			temp = BCCUCH01_GetIntensity(&BCCUCH01_Handle0); // BCCU Channel for red channel colour intensity
			temp &= 0x00000FFF;

			send = temp; // send lower 8 bits of data
			data2.Payload = send;
			I2C003_WriteData(&I2C003_Handle0,&data2);


			send = temp >> 8; // send upper 8 bits of data
			data2.Payload = send;
			I2C003_WriteData(&I2C003_Handle0,&data2);
		}

		else if (Command == READ_INTENSITY_GREEN) // request for green colour intensity
		{
			data2.TDF_Type = I2C003_TDF_STXDATA;
			temp = BCCUCH01_GetIntensity(&BCCUCH01_Handle1); // BCCU Channel for green channel colour intensity
			temp &= 0x00000FFF;

			send = temp;
			data2.Payload = send;
			I2C003_WriteData(&I2C003_Handle0,&data2);

			send = temp >> 8;
			data2.Payload = send;
			I2C003_WriteData(&I2C003_Handle0,&data2);
		}

		else if (Command == READ_INTENSITY_BLUE) // request for blue colour intensity
		{
			data2.TDF_Type = I2C003_TDF_STXDATA;
			temp = BCCUCH01_GetIntensity(&BCCUCH01_Handle2); // BCCU Channel for blue channel colour intensity
			temp &= 0x00000FFF;

			send = temp;
			data2.Payload = send;
			I2C003_WriteData(&I2C003_Handle0,&data2);

			send = temp >> 8;
			data2.Payload = send;
			I2C003_WriteData(&I2C003_Handle0,&data2);
		}


		else if (Command == READ_CURRENT_RED) // request for peak current reference of red channel
		{
			data2.TDF_Type = I2C003_TDF_STXDATA;
			temp = BCCUCH01_GetIntensity(&BCCUCH01_Handle3); // BCCU channel for red channel
			temp &= 0x00000FFF;

			send = temp;
			data2.Payload = send;
			I2C003_WriteData(&I2C003_Handle0,&data2);

			send = temp >> 8;
			data2.Payload = send;
			I2C003_WriteData(&I2C003_Handle0,&data2);
		}

		else if (Command == READ_CURRENT_GREEN) // request for peak current reference of green channel
		{
			data2.TDF_Type = I2C003_TDF_STXDATA;
			temp = BCCUCH01_GetIntensity(&BCCUCH01_Handle4); // BCCU Channel for green channel
			temp &= 0x00000FFF;

			send = temp;
			data2.Payload = send;
			I2C003_WriteData(&I2C003_Handle0,&data2);

			send = temp >> 8;
			data2.Payload = send;
			I2C003_WriteData(&I2C003_Handle0,&data2);
		}

		else if (Command == READ_CURRENT_BLUE) // request for peak current reference of blue channel
		{
			data2.TDF_Type = I2C003_TDF_STXDATA;
			temp = BCCUCH01_GetIntensity(&BCCUCH01_Handle5); // BCCU Channel for blue channel
			temp &= 0x00000FFF;

			send = temp;
			data2.Payload = send;
			I2C003_WriteData(&I2C003_Handle0,&data2);

			send = temp >> 8;
			data2.Payload = send;
			I2C003_WriteData(&I2C003_Handle0,&data2);
		}

		else if (Command == READ_WALKTIME) // request for walk-time
		{
			data2.TDF_Type = I2C003_TDF_STXDATA;
			temp = Lamphandle.LinearWalkPrescaler; // variable containing walk-time
			temp &= 0x00003FF;
			//send = temp >> 8;
			send = temp;
			data2.Payload = send;
			I2C003_WriteData(&I2C003_Handle0,&data2);

			send = temp >> 8;
			data2.Payload = send;
			I2C003_WriteData(&I2C003_Handle0,&data2);
		}

		else if (Command == READ_DIMMINGLEVEL) // request for dimming level
		{

			data2.TDF_Type = I2C003_TDF_STXDATA;
			temp = BCCUDIM01_GetDimLvl(&BCCUDIM01_Handle0); // BCCU Channel for dimming engine
			temp &= 0x0000FFF;
			//send = temp >> 8;
			send = temp;
			data2.Payload = send;
			I2C003_WriteData(&I2C003_Handle0,&data2);

			send = temp >> 8;
			data2.Payload = send;
			I2C003_WriteData(&I2C003_Handle0,&data2);
		}

		else if (Command == READ_FADERATE) // request for fade rate
		{
			data2.TDF_Type = I2C003_TDF_STXDATA;
			temp = BCCUDIM01_GetDimDiv(&BCCUDIM01_Handle0); // dimming engine
			temp &= 0x00003FF;

			send = temp;
			data2.Payload = send;
			I2C003_WriteData(&I2C003_Handle0,&data2);

			send = temp >> 8;
			data2.Payload = send;
			I2C003_WriteData(&I2C003_Handle0,&data2);
		}

		else if (Command == READ_OFFTIME_RED) // request for off-time of red channel
		{
			data2.TDF_Type = I2C003_TDF_STXDATA;
			temp = PWMSP003_Handle0.CC4yRegsPtr->CRS; // compare value of red channel PWM
			temp &= 0x00003FF;

			send = temp;
			data2.Payload = send;
			I2C003_WriteData(&I2C003_Handle0,&data2);

			send = temp >> 8;
			data2.Payload = send;
			I2C003_WriteData(&I2C003_Handle0,&data2);
		}

		else if (Command == READ_OFFTIME_GREEN) // request for off-time of green channel
		{
			data2.TDF_Type = I2C003_TDF_STXDATA;
			temp = PWMSP003_Handle1.CC4yRegsPtr->CRS; // compare value of green channel
			temp &= 0x00003FF;

			send = temp;
			data2.Payload = send;
			I2C003_WriteData(&I2C003_Handle0,&data2);

			send = temp >> 8;
			data2.Payload = send;
			I2C003_WriteData(&I2C003_Handle0,&data2);
		}
		else if (Command == READ_OFFTIME_BLUE) // request for off-time of blue channel
		{
			data2.TDF_Type = I2C003_TDF_STXDATA;
			temp = PWMSP003_Handle2.CC4yRegsPtr->CRS; // compare value of blue channel pwm
			temp &= 0x00003FF;

			send = temp;
			data2.Payload = send;
			I2C003_WriteData(&I2C003_Handle0,&data2);

			send = temp >> 8;
			data2.Payload = send;
			I2C003_WriteData(&I2C003_Handle0,&data2);
		}

		else if (Command == READ_DMX) // read dmx enable control
		{
			data2.TDF_Type = I2C003_TDF_STXDATA;
			temp = DMXControl;

			send = temp;
			data2.Payload = send;
			I2C003_WriteData(&I2C003_Handle0,&data2);

			send = temp >> 8;
			data2.Payload = send;
			I2C003_WriteData(&I2C003_Handle0,&data2);
		}

		else if (Command == READ_DMXSLOT) // request for first dmx relevant slot
		{
			data2.TDF_Type = I2C003_TDF_STXDATA;
			temp = startingSlot; // first relevant slot

			send = temp;
			data2.Payload = send;
			I2C003_WriteData(&I2C003_Handle0,&data2);

			send = temp >> 8;
			data2.Payload = send;
			I2C003_WriteData(&I2C003_Handle0,&data2);
		}

		else if (Command == READ_DMXBIT) // request 8 or 16 bit dmx
		{
			data2.TDF_Type = I2C003_TDF_STXDATA;
			if (DMX_8 == 1) // 8 bit
				temp = 8;
			else if (DMX_16 == 1) // 16 bit
				temp = 16;

			send = temp;
			data2.Payload = send;
			I2C003_WriteData(&I2C003_Handle0,&data2);

			send = temp >> 8;
			data2.Payload = send;
			I2C003_WriteData(&I2C003_Handle0,&data2);
		}

		else if (Command == READ_DMXREDH) // request for higher 8 bits of red colour intensity from dmx
		{
			data2.TDF_Type = I2C003_TDF_STXDATA; // TDF_Ack0

			temp = dmx_RedH;
			send = temp;
			data2.Payload = send;
			I2C003_WriteData(&I2C003_Handle0,&data2);

			send = temp >> 8;
			data2.Payload = send;
			I2C003_WriteData(&I2C003_Handle0,&data2);
		}

		else if (Command == READ_DMXREDL) // request for lower 8 bits of red colour intensity from dmx. invalid if 8 bit dmx only.
		{
			data2.TDF_Type = I2C003_TDF_STXDATA;

			if (DMX_8 == 1)
				temp = 0x00;
			else if (DMX_16 == 1)
				temp = dmx_RedL;

			send = temp;
			data2.Payload = send;
			I2C003_WriteData(&I2C003_Handle0,&data2);

			send = temp >> 8;
			data2.Payload = send;
			I2C003_WriteData(&I2C003_Handle0,&data2);
		}

		else if (Command == READ_DMXGREENH) // request for higher 8 bits of green colour intensity from dmx.
		{
			data2.TDF_Type = I2C003_TDF_STXDATA;

			temp = dmx_GreenH;
			send = temp;
			data2.Payload = send;
			I2C003_WriteData(&I2C003_Handle0,&data2);

			send = temp >> 8;
			data2.Payload = send;
			I2C003_WriteData(&I2C003_Handle0,&data2);
		}

		else if (Command == READ_DMXGREENL) // request for lower 8 bits of green colour intensity from dmx. if 8 bit, invalid.
		{
			data2.TDF_Type = I2C003_TDF_STXDATA;

			if (DMX_8 == 1)
				temp = 0x00;
			else if (DMX_16 == 1)
				temp = dmx_GreenL;

			send = temp;
			data2.Payload = send;
			I2C003_WriteData(&I2C003_Handle0,&data2);

			send = temp >> 8;
			data2.Payload = send;
			I2C003_WriteData(&I2C003_Handle0,&data2);
		}

		else if (Command == READ_DMXBLUEH) // request for higher 8 bits of blue colour intensity.
		{
			data2.TDF_Type = I2C003_TDF_STXDATA;

			temp = dmx_BlueH;
			send = temp;
			data2.Payload = send;
			I2C003_WriteData(&I2C003_Handle0,&data2);

			send = temp >> 8;
			data2.Payload = send;
			I2C003_WriteData(&I2C003_Handle0,&data2);
		}

		else if (Command == READ_DMXBLUEL) //request for lower 8 bits of blue colour intensity
		{
			data2.TDF_Type = I2C003_TDF_STXDATA;

			if (DMX_8 == 1)
				temp = 0x00;
			else if (DMX_16 == 1)
				temp = dmx_BlueL;

			send = temp;
			data2.Payload = send;
			I2C003_WriteData(&I2C003_Handle0,&data2);

			send = temp >> 8;
			data2.Payload = send;
			I2C003_WriteData(&I2C003_Handle0,&data2);
		}





		else if (Command == DIRECTACCESS_READ) // request for data in a register
		{
			uint32_t *access;
			access = registerAddress;
			temp = *access;


			data2.TDF_Type = I2C003_TDF_STXDATA;

			send = (uint8_t) (temp);
			data2.Payload = send;
			I2C003_WriteData(&I2C003_Handle0,&data2);

			send = temp >> 8;
			data2.Payload = send;
			I2C003_WriteData(&I2C003_Handle0,&data2);

			send = temp >> 16;
			data2.Payload = send;
			I2C003_WriteData(&I2C003_Handle0,&data2);

			send = temp >> 24;
			data2.Payload = send;
			I2C003_WriteData(&I2C003_Handle0,&data2);


		}

		else if (writeToFlash == 1) // request to save prameters to flash
		{
			flashBuffer[0] ++;

			status_t status;
			FLASH003_ClearStatus();
			if ( ! (flashBuffer[0] % 2 )) // if odd number in first element in buffer, store in first half of flash page starting from 0x10004F00
			{
				flashAddress = 0x10004F00;
				while ( FLASH003_ErasePage((unsigned long )flashAddress) != FLASH003_COMPLETE ); // erase page
			}

			else if (flashBuffer[0] %2) // if even number, store in second half of page. Address is 0x10004F80. Second half of page already erased before.
				flashAddress = 0x10004F80;


			FLASH003_WriteMultipleBlocks(flashAddress, flashBuffer, 6U); // write to flash
			FLASH003_ReadBytes(flashAddress, flashBuffer, 92); // update array containing variables

			data2.TDF_Type = I2C003_TDF_STXDATA;

			send = 0x11;
			data2.Payload = send;
			I2C003_WriteData(&I2C003_Handle0,&data2); // send data back to master to indicate write operation finished

			send = 0x12;
			data2.Payload = send;
			I2C003_WriteData(&I2C003_Handle0,&data2);

			writeToFlash = 0;
			configStatus = 1;
		}

		else if (Command == READ_CONFIG) // request for configuration status
		{

			data2.TDF_Type = I2C003_TDF_STXDATA;

			send = (uint8_t) (configStatus);
			data2.Payload = send;
			I2C003_WriteData(&I2C003_Handle0,&data2);

			I2C003_WriteData(&I2C003_Handle0,&data2);

			send = temp >> 16;

		}


	}
	byteCount = 0;

}
