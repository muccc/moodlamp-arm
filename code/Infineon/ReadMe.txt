
DESCRIPTION:
RGB_LED_SHIELD: This project sets up the XMC1202 RGB LED Shield as an I2C slave.I2C is a simple bidirectional 2-wire bus which transmits data in 8-bit format. In this project, data transfer takes place at a rate of 100Kbaud. 1 USIC channel is used to receive and transmit information. P2.11 is used for I2C SCL and P2.10 for I2C SDA. 

REQUIREMENTS:
- J-Link Drivers installed on PC
- J-Link v4.59 or above
- XMC1202 RGB LED Shield
- DMX512 Control (optional)

SETUP:
1.  Connect LEDEngin lamp to shield:
-	Connect led+ to Pin 1 of RGB LED Shield connector X2
-	Connect red channel to Pin 2 of RGB LED Shield connector X2
-	Connect green channel to Pin 3 of RGB LED Shield connector X2
-	Connect blue channel to Pin 4 of RGB LED Shield connector X2
2.  Supply lamp with 24V input voltage
-	Connect Vin- to Pin 1 of RGB LED Shield connector X1
-	Connect Vin+ to Pin 2 of RGB LED Shield connector X1

HOW TO CREATE THE PROJECT:
1) Instantiate the following apps:
 - DMX512
 - COLORLAMP01
 - I2C003 apps
 - NVIC002: NVIC002_0, NVIC002_1
 - ANACMP01: ANACMP01_0, ANACMP01_1 and ANACMP01_2
 - BCCUCH01: BCCUCH01_3, BCCUCH01_4, BCCUCH01_5
 - IO002: IO002_0, IO002_1, IO002_2, IO002_3, IO002_4, IO002_5, IO002_6
 - IO004: IO004_0, IO004_1
 - PWMSP003: PWMSP003_0, PWMSP003_1, PWMSP003_2
 - CCU4GLOBAL
2) In each ANACMP01 app, select “Enable Analog Comparator” and “Hys_OFF”.  
3) In each BCCUCH01 app,
   - Select “Enable at Initialization”
   - Select “Positive Edge” Trigger edge selection
   - Select “Trigger Line 0” Trigger Output Selection
   - Select “Active High” output passive level selection
   - Enable Flicker Watchdog
   - Set “Desired Linear Walk Time’ to 0 ms. 
   - Select the “Output Enable” and “Push Pull” Output configurations under Pin configuration
4) In BCCUCH01/0, BCCUCH01/1, BCCUCH01/2, set the initial channel intensity to 0
5) In BCCUCH01/3 set the initial channel intensity to 21
6) In BCCUCH01/4 set the initial channel intensity to 21
7) In BCCUCH01/5 set the initial channel intensity to 21
8) In PWMSP001/0 set the duty cycle to 91.2%
9) In PWMSP001/1 set the duty cycle to 91%
10) In PWMSP001/2 set the duty cycle to 91.2%
11) In I2C003/0 select the “10 bit” Slave Address mode and set the address to 0x15E. Select “Enable Transmit FIFO Buffer” and “Enable Receive FIFO Buffer”, with size of 2 for both. 
16) In each IO004 instance, select “Output Enable” and Default Output level to be “High”
12) In COLORLAMP01/0, select “Red”, “Green” and “Blue” and “Dimming Engine”
13) In DMX512RD01/0, set “First Relevant Slot” to 1 and “Number of Relevant Slots” to 6. Define “DMX512RD01_CallBack” as user-defined callback function. 
14) In NVIC002/0, define “FIFO_Receive_Int_Handler” as user-defined interrupt handler
15) In NVIC002/1, define “I2C_START” as user-defined interrupt handler 
17) Manual Pin Assignment:
   - I2C003 “I2C SCL” (SCL Line) to P2.11
   - I2C003 “I2C SDA” (SDA Line) to P2.10
   - BCCUCH01/5 “iohw” to P0.6
   - BCCUCH01/4 “iohw” to P0.12
   - BCCUCH01/3 “iohw” to P0.4
   - IO001/0 pin to P2.8
   - IO001/1 pin to P2.9
   - IO001/2 pin to P2.6
   - IO001/3 pin to P2.7
   - IO001/4 pin to P2.2
   - IO001/5 pin to P2.1
   - IO002/0 pin to P0.10
   - IO002/1 pin to P0.9
   - IO002/2 pin to P1.0
   - IO002/3 pin to P0.8
   - IO002/4 pin to P0.5
   - IO002/5 pin to P0.7
   - IO002/6 pin to P2.0
   - PWMSP003/0 pin_directoutput to P1.3
   - PWMSP003/1 pin_directoutput to P1.2
   - PWMSP003/2 pin_directoutput to P1.1
  
18) Signal Connection:
   - I2C003/0 "Standard Receive Buffer Interrupt" --> NVIC002/0 "Interrupt Node" 
   - I2C003/0 "Protocol Specific Interrupt" --> NVIC002/1 "Interrupt Node" 
   - ANACMP01/0 “Out Signal” --> IO002/0 “Pad Signal”
   - ANACMP01/1 “Out Signal” --> IO002/2 “Pad Signal”
   - ANACMP01/2 “Out Signal” --> IO002/4 “Pad Signal”
   - BCCUCH01/0 “PDM Output” --> PWMSP003/0 “Multichannel Mode Input”
   - BCCUCH01/1 “PDM Output” --> PWMSP003/1 “Multichannel Mode Input”
   - BCCUCH01/2 “PDM Output” --> PWMSP003/2 “Multichannel Mode Input”
   - IO002/1 “Pad Signal” --> PWMSP003/0 “External Event 0”
   - IO002/3 “Pad Signal” --> PWMSP003/1 “External Event 0”
   - IO002/5 “Pad Signal” --> PWMSP003/2 “External Event 0”
   - IO002/6 “Pad Signal” --> DMX512RD01/0 “DMX512 Input”

   
OBSERVATIONS:
   - Use an Arduino master (e.g. XMC1100 Boot Kit or Arduino Uno Rev3) to control an LED lamp attached to the shield. 

