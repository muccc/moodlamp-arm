/*
 * itwoc.h
 *
 *  Created on: Jul 14, 2014
 *      Author: ChiaJiaY
 */

#include <Dave3.h>
#ifndef I2C_COMM_H_
#define I2C_COMM_H_


extern uint8_t Command; //= 0x00;
extern uint8_t DataUpper; //= 0x00;
extern uint8_t DataLower; //= 0x00;
extern uint16_t DataTotal; //= 0x00;

// Variables for DMX Control
extern uint16_t startingSlot; //= 0x01;
extern uint16_t dmx_RedL;// = 0x00;
extern uint16_t dmx_RedH; //= 0x00;
extern uint16_t dmx_GreenL; //= 0x00;
extern uint16_t dmx_GreenH; //= 0x00;
extern uint16_t dmx_BlueL; //= 0x00;
extern uint16_t dmx_BlueH; //= 0x00;

extern uint32_t registerAddress;// = 0x00000000;
extern uint32_t DataDirect;// = 0x00000000; // Store data for direct access
extern uint32_t changeAddress;// = 0x00000000; // New address to be changed to
extern uint32_t dimLevel;// = 0x00000000; // Dimming level
extern uint32_t temp;// = 0x00000000;

extern int DMXControl; // = 1;
extern int DMX_8; // = 1;
extern int DMX_16; // = 0;
extern int byteCount; // = 0;
extern int writeToFlash; // = 0;
extern int configStatus; // = 1;
extern uint32_t flashAddress; //=0x10008F00;
extern uint32_t flashBuffer[23];
extern COLORLAMP01_ColorHandleType Lamphandle;

void FIFO_Receive_Int_Handler(void);
/* This function receives I2C messages and decides which command has been received, and
what to do with the data. This is an interrupt handler and is enabled at initialization */
void I2C_START(void);
/* This function detects a START condition on the I2C bus line and also sends I2C messages as a slave
This is an interrupt handler and is enabled at initialization */


#endif /* ITWOC_H_ */
