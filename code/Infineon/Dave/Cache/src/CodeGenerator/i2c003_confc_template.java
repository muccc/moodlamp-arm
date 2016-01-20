package CodeGenerator;

import java.util.*;
import com.ifx.davex.appjetinteract.App2JetInterface;

public class i2c003_confc_template
{
  protected static String nl;
  public static synchronized i2c003_confc_template create(String lineSeparator)
  {
    nl = lineSeparator;
    i2c003_confc_template result = new i2c003_confc_template();
    nl = null;
    return result;
  }

  public final String NL = nl == null ? (System.getProperties().getProperty("line.separator")) : nl;
  protected final String TEXT_1 = NL + NL + "/*CODE_BLOCK_BEGIN[I2C003_Conf.h]*/" + NL + "/*******************************************************************************" + NL + " *" + NL + " * Copyright (C) 2014 Infineon Technologies AG. All rights reserved." + NL + " *" + NL + " * Infineon Technologies AG (Infineon) is supplying this software for use with " + NL + " * Infineon's microcontrollers.  " + NL + " * This file can be freely distributed within development tools that are " + NL + " * supporting such microcontrollers. " + NL + " *" + NL + " * THIS SOFTWARE IS PROVIDED \"AS IS\".  NO WARRANTIES, WHETHER EXPRESS, IMPLIED" + NL + " * OR STATUTORY, INCLUDING, BUT NOT LIMITED TO, IMPLIED WARRANTIES OF" + NL + " * MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE APPLY TO THIS SOFTWARE." + NL + " * INFINEON SHALL NOT, IN ANY CIRCUMSTANCES, BE LIABLE FOR SPECIAL, INCIDENTAL, " + NL + " * OR CONSEQUENTIAL DAMAGES, FOR ANY REASON WHATSOEVER." + NL + " *" + NL + "********************************************************************************" + NL + "**                                                                            **" + NL + "** PLATFORM : Infineon XMC4000/XMC1000 Series                                 **" + NL + "**                                                                            **" + NL + "** COMPILER : Compiler Independent                                            **" + NL + "**                                                                            **" + NL + "** AUTHOR   : App Developer                                                   **" + NL + "**                                                                            **" + NL + "** NOTE     : Any Changes made to this file will be overwritten during Code   **" + NL + "**            Generation                                                      **" + NL + "**                                                                            **" + NL + "********************************************************************************" + NL + "** VERSION HISTORY:" + NL + "********************************************************************************" + NL + "** v1.0.4, 17 Feb 2014,  Initial version " + NL + "*******************************************************************************/";
  protected final String TEXT_2 = NL + "/**" + NL + " * @file   I2C003_Conf.c" + NL + " *" + NL + " * @App Version I2C003 <";
  protected final String TEXT_3 = ">" + NL + " *" + NL + " * @brief  Configuration file generated based on UI settings " + NL + " *         of I2C003 App" + NL + " *" + NL + " */" + NL + "/*" + NL + " * Revision History" + NL + " *" + NL + " */" + NL + "" + NL + "/******************************************************************************" + NL + " ** INCLUDE FILES                                                            **" + NL + " *****************************************************************************/" + NL + "#include \"../../inc/I2C003/I2C003.h\"" + NL;
  protected final String TEXT_4 = NL;
  protected final String TEXT_5 = NL;
  protected final String TEXT_6 = NL;
  protected final String TEXT_7 = NL + "const I2C003_HandleType I2C003_Handle";
  protected final String TEXT_8 = " = " + NL + "{" + NL + "   .I2CRegs = USIC";
  protected final String TEXT_9 = "_CH";
  protected final String TEXT_10 = ", /*!< Register Base address */";
  protected final String TEXT_11 = "   ";
  protected final String TEXT_12 = NL + "   .PinHandle.SCL_PortBase = (I2C003_PORTS_TypeDef *) PORT";
  protected final String TEXT_13 = "_BASE," + NL + "   .PinHandle.SCL_Pin = (uint8_t) ";
  protected final String TEXT_14 = ",";
  protected final String TEXT_15 = NL + "   /* SCL PIN instance (no.";
  protected final String TEXT_16 = ") is not mapped to any port pin. */";
  protected final String TEXT_17 = " ";
  protected final String TEXT_18 = " ";
  protected final String TEXT_19 = NL + "   .PinHandle.SDA_PortBase = (I2C003_PORTS_TypeDef *) PORT";
  protected final String TEXT_20 = "_BASE," + NL + "   .PinHandle.SDA_Pin = (uint8_t) ";
  protected final String TEXT_21 = ",";
  protected final String TEXT_22 = NL + "   /* SDA Pin instance (no.";
  protected final String TEXT_23 = ") is not mapped to any port pin. */";
  protected final String TEXT_24 = "   ";
  protected final String TEXT_25 = NL + "   .SlaveAddress = (uint16_t) ";
  protected final String TEXT_26 = ",/*!< I2C Slave Address */" + NL + "   .BitRate = (uint32_t) ";
  protected final String TEXT_27 = ",/*!< Bit Rate */" + NL + "   .TxFifoEn = (bool) ";
  protected final String TEXT_28 = ", /*!<Additional Transmit FIFO buffer capability enable*/" + NL + "   .RxFifoEn = (bool) ";
  protected final String TEXT_29 = ", /*!<Additional Receive FIFO buffer capability enable */" + NL + "   .TxLimit = (uint8_t) ";
  protected final String TEXT_30 = ",/*!< FIFO Trigger Level */" + NL + "   .RxLimit = (uint8_t) ";
  protected final String TEXT_31 = ",/*!< FIFO Trigger Level */" + NL + "   .TxFifoSize = (uint8_t) ";
  protected final String TEXT_32 = ",/*!< Tx FIFO Size */" + NL + "   .RxFifoSize = (uint8_t) ";
  protected final String TEXT_33 = ",/*!< Rx FIFO Size */" + NL + "   .StartCondRecvIntEn = (bool) ";
  protected final String TEXT_34 = ", /*!< Protocol specific interrupt enable */" + NL + "   .RepStartCondRecvIntEn = (bool) ";
  protected final String TEXT_35 = ", /*!< Protocol specific interrupt enable */" + NL + "   .SlaveReadReqIntEn = (bool) ";
  protected final String TEXT_36 = ", /*!< Protocol specific interrupt enable */" + NL + "   .StopCondRecvIntEn = (bool) ";
  protected final String TEXT_37 = ", /*!< Protocol specific interrupt enable */" + NL + "   .ErrorIntEn = (bool) ";
  protected final String TEXT_38 = ", /*!< Protocol specific interrupt enable */ ";
  protected final String TEXT_39 = "\t" + NL + "   .Fdr_StepValue = (uint16_t) 0x";
  protected final String TEXT_40 = ",/*!< Calculated Step value for configured " + NL + "                                              baud rate*/" + NL + "   .Brg_PDivValue = (uint16_t) 0x";
  protected final String TEXT_41 = "/*!< Calculated optimum PDIV value */ " + NL + "" + NL + "};";
  protected final String TEXT_42 = NL + "/* CHANNEL IS NOT MAPPED */";
  protected final String TEXT_43 = NL + "const I2C003_HandleType *I2C003_HandleArray[I2C003_NUM_HANDLES] = " + NL + "{";
  protected final String TEXT_44 = "  \t\t" + NL + "   &I2C003_Handle";
  protected final String TEXT_45 = ",";
  protected final String TEXT_46 = " ";
  protected final String TEXT_47 = NL + "};" + NL;
  protected final String TEXT_48 = NL + "/* CHANNEL IS NOT MAPPED */";
  protected final String TEXT_49 = NL + NL + "/*CODE_BLOCK_END*/ ";
  protected final String TEXT_50 = NL;

  public String generate(Object argument)
  {
    final StringBuffer stringBuffer = new StringBuffer();
     App2JetInterface app = (App2JetInterface) argument; 
    stringBuffer.append(TEXT_1);
     String AppBaseuri = "app/i2c003/";
    stringBuffer.append(TEXT_2);
    stringBuffer.append(app.getAppVersion(AppBaseuri) );
    stringBuffer.append(TEXT_3);
     String MappedUri = null; 
     String UnitInst = null; 
     String ChannelInst = null; 
     String appInst  = null; 
    stringBuffer.append(TEXT_4);
     int I2C_Configured= 0; 
     int NodeNr = 0; 
     int loopcount = 0; 
     int loopcount1 = 0; 
     int loopcount2 = 0; 
     double clockfreq = 0; 
    stringBuffer.append(TEXT_5);
     int Is44Device = -1; 
     int Is42Device = -1; 
     int Is45Device = -1; 
     int Is1xDevice = -1; 
     String deviceId = null; 
     deviceId = app.getSoftwareId(); 
     if (deviceId != null)
{      
   Is44Device = ((deviceId.substring(0,2).compareTo("44")==0)?1:0);
   Is42Device = ((deviceId.substring(0,2).compareTo("42")==0)?1:0);
   Is45Device = ((deviceId.substring(0,2).compareTo("45")==0)?1:0);
   Is1xDevice = ((deviceId.substring(0,1).compareTo("1")==0)?1:0); 	
}
    stringBuffer.append(TEXT_6);
     if(Is1xDevice == 1){
  clockfreq = app.getDoubleValue (AppBaseuri + 0 + "/clockapp_XMC1000/clk002_irMCLK");
}else if ((Is45Device==1)||(Is44Device==1)||(Is42Device==1)){
  clockfreq = app.getDoubleValue (AppBaseuri + 0 + "/clockapp_XMC4000/clk001_iroActualFreqPB");
}
else{}

     ArrayList<String> appsList = (ArrayList<String>)(app.getApps("app/i2c003/"));
 for (String appIns : appsList ) {
 appInst = appIns.substring(appIns.lastIndexOf("/")+1);
     MappedUri = app.getMappedUri(AppBaseuri + appInst + "/channel"); 
     if((MappedUri != null) && (MappedUri != "")) { 
     UnitInst = MappedUri.substring(MappedUri .length()-11,MappedUri.indexOf("/channel/")); 
     ChannelInst = MappedUri.substring(MappedUri.length()-1); 
     NodeNr++; 
     I2C_Configured = 1; 
    stringBuffer.append(TEXT_7);
    stringBuffer.append(appInst);
    stringBuffer.append(TEXT_8);
    stringBuffer.append(UnitInst);
    stringBuffer.append(TEXT_9);
    stringBuffer.append(ChannelInst);
    stringBuffer.append(TEXT_10);
     String pinUri = app.getMappedUri(AppBaseuri + appInst +"/i2c_scl"); 
     if ((pinUri != null) && (pinUri.trim() != "")) { 
     String portNo = pinUri.substring(pinUri.indexOf("port/p/")+7,pinUri.indexOf("/pad/")); 
     String pinNo = pinUri.substring(pinUri.indexOf("/pad/")+5,pinUri.length()); 
    stringBuffer.append(TEXT_11);
     int Pin = Integer.parseInt(pinNo);
    stringBuffer.append(TEXT_12);
    stringBuffer.append(portNo);
    stringBuffer.append(TEXT_13);
    stringBuffer.append( Pin );
    stringBuffer.append(TEXT_14);
    } else { 
    stringBuffer.append(TEXT_15);
    stringBuffer.append( appInst );
    stringBuffer.append(TEXT_16);
    } 
    stringBuffer.append(TEXT_17);
     String pinUri2 = app.getMappedUri(AppBaseuri + appInst +"/i2c_sda"); 
     if ((pinUri2 != null) && (pinUri2.trim() != "")) { 
     String portNo2 = pinUri2.substring(pinUri.indexOf("port/p/")+7,pinUri2.indexOf("/pad/")); 
     String pinNo2 = pinUri2.substring(pinUri.indexOf("/pad/")+5,pinUri2.length());
    stringBuffer.append(TEXT_18);
     int Pin2 = Integer.parseInt(pinNo2);
    stringBuffer.append(TEXT_19);
    stringBuffer.append(portNo2);
    stringBuffer.append(TEXT_20);
    stringBuffer.append( Pin2 );
    stringBuffer.append(TEXT_21);
    } else { 
    stringBuffer.append(TEXT_22);
    stringBuffer.append( appInst );
    stringBuffer.append(TEXT_23);
    } 
    stringBuffer.append(TEXT_24);
     int AddrMode = app.getIntegerValue(AppBaseuri + appInst +"/I2C003_erwAddressMode/0");
	  int TempSlaveAddr = 0;
	  if(AddrMode == 1){
	  TempSlaveAddr = app.getIntegerValue(AppBaseuri + appInst +"/I2C003_irwSlaveAddress")<<9;
	  } else {   
	  TempSlaveAddr  = 30720 | app.getIntegerValue(AppBaseuri + appInst +"/I2C003_irwSlaveAddress");
   } 
    stringBuffer.append(TEXT_25);
    stringBuffer.append( TempSlaveAddr );
    stringBuffer.append(TEXT_26);
    stringBuffer.append( app.getIntegerValue(AppBaseuri + appInst +"/I2C003_irwbitrate") );
    stringBuffer.append(TEXT_27);
    stringBuffer.append( app.getIntegerValue(AppBaseuri + appInst +"/I2C003_erwEnbleTxFIFO/0") );
    stringBuffer.append(TEXT_28);
    stringBuffer.append( app.getIntegerValue(AppBaseuri + appInst +"/I2C003_erwEnbleRxFIFO/0") );
    stringBuffer.append(TEXT_29);
    stringBuffer.append( app.getIntegerValue(AppBaseuri + appInst +"/channel/tbctr/limit") );
    stringBuffer.append(TEXT_30);
    stringBuffer.append( app.getIntegerValue(AppBaseuri + appInst +"/channel/rbctr/limit") );
    stringBuffer.append(TEXT_31);
    stringBuffer.append( app.getIntegerValue(AppBaseuri + appInst +"/channel/tbctr_size") );
    stringBuffer.append(TEXT_32);
    stringBuffer.append( app.getIntegerValue(AppBaseuri + appInst +"/channel/rbctr_size") );
    stringBuffer.append(TEXT_33);
    stringBuffer.append( app.getIntegerValue(AppBaseuri + appInst +"/I2C003_erwStartCondRecvInt/0") );
    stringBuffer.append(TEXT_34);
    stringBuffer.append( app.getIntegerValue(AppBaseuri + appInst +"/I2C003_erwRepStartCondRecvInt/0") );
    stringBuffer.append(TEXT_35);
    stringBuffer.append( app.getIntegerValue(AppBaseuri + appInst +"/I2C003_erwSlaveReadReqInt/0") );
    stringBuffer.append(TEXT_36);
    stringBuffer.append( app.getIntegerValue(AppBaseuri + appInst +"/I2C003_erwStopCondRecvInt/0") );
    stringBuffer.append(TEXT_37);
    stringBuffer.append( app.getIntegerValue(AppBaseuri + appInst +"/I2C003_erwErrorInt/0") );
    stringBuffer.append(TEXT_38);
     double ratio = 0;
	double TempBitrate = 0;
	double TempPdiv = 0;
	double TempStep = 0;
	long PDivValue = 0;
	int PDivValue1 = 0;
	long StepValue = 0;
	double tempbitrate1 = app.getIntegerValue(AppBaseuri + appInst +"/I2C003_irwbitrate");
	TempBitrate = (tempbitrate1 * 1000);
	if(TempBitrate <= 100000)
	{
	ratio = ((((clockfreq * 1000000)/(10*1024)) * 500)/TempBitrate);
	} else {
	ratio = ((((clockfreq * 1000000)/(25*1024)) * 500)/TempBitrate);
	}
	 /* Calculating optimum PDIV value */
	if( ratio <= 1)
	{
	 TempPdiv = 0;
	}else{
	 TempPdiv =  ratio - 1;
	 if( TempPdiv > 1023)
	 {
		 TempPdiv = 1023;
	 }
	}
	PDivValue = Math.round(TempPdiv);
	 /* Calculating STEP value */
	if(TempBitrate <= 100000)
	{
	 TempStep = Math.floor((((((TempBitrate * 10 * 512)/ 1000000) * 2 ) * (1+ ((double)PDivValue)))/(clockfreq)));
	} else {
	 TempStep = (((((TempBitrate * 25 * 512)/ 1000000) * 2 ) * (1+ ((double)PDivValue)))/(clockfreq));
	}
	if(TempStep > 1023)
	{
	 TempStep = 1023;
	}
	StepValue = Math.round(TempStep);
	PDivValue1 = (int)PDivValue;
    stringBuffer.append(TEXT_39);
    stringBuffer.append(Integer.toHexString((int)StepValue));
    stringBuffer.append(TEXT_40);
    stringBuffer.append(Integer.toHexString(PDivValue1));
    stringBuffer.append(TEXT_41);
     } 
     else { 
    stringBuffer.append(TEXT_42);
     } 
     } 
     if(I2C_Configured == 1) { 
    stringBuffer.append(TEXT_43);
     for (String appIns : appsList ) {
	appInst = appIns.substring(appIns.lastIndexOf("/")+1);
     MappedUri = app.getMappedUri(AppBaseuri + appInst + "/channel"); 
     if((MappedUri != null) && (MappedUri != "")) { 
    stringBuffer.append(TEXT_44);
    stringBuffer.append(appInst);
     loopcount++; 
     if(loopcount != NodeNr) { 
    stringBuffer.append(TEXT_45);
     } 
     } 
    stringBuffer.append(TEXT_46);
    } 
    stringBuffer.append(TEXT_47);
     } 
     else { 
    stringBuffer.append(TEXT_48);
     } 
    stringBuffer.append(TEXT_49);
    stringBuffer.append(TEXT_50);
    return stringBuffer.toString();
  }
}
