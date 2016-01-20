package CodeGenerator;

import java.util.*;
import com.ifx.davex.appjetinteract.App2JetInterface;

public class i2c003_confh_template
{
  protected static String nl;
  public static synchronized i2c003_confh_template create(String lineSeparator)
  {
    nl = lineSeparator;
    i2c003_confh_template result = new i2c003_confh_template();
    nl = null;
    return result;
  }

  public final String NL = nl == null ? (System.getProperties().getProperty("line.separator")) : nl;
  protected final String TEXT_1 = NL + "/*CODE_BLOCK_BEGIN[I2C003_Conf.h]*/" + NL + "/*******************************************************************************" + NL + " *" + NL + " * Copyright (C) 2014 Infineon Technologies AG. All rights reserved." + NL + " *" + NL + " * Infineon Technologies AG (Infineon) is supplying this software for use with " + NL + " * Infineon's microcontrollers.  " + NL + " * This file can be freely distributed within development tools that are " + NL + " * supporting such microcontrollers. " + NL + " *" + NL + " * THIS SOFTWARE IS PROVIDED \"AS IS\".  NO WARRANTIES, WHETHER EXPRESS, IMPLIED" + NL + " * OR STATUTORY, INCLUDING, BUT NOT LIMITED TO, IMPLIED WARRANTIES OF" + NL + " * MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE APPLY TO THIS SOFTWARE." + NL + " * INFINEON SHALL NOT, IN ANY CIRCUMSTANCES, BE LIABLE FOR SPECIAL, INCIDENTAL, " + NL + " * OR CONSEQUENTIAL DAMAGES, FOR ANY REASON WHATSOEVER." + NL + " *" + NL + "********************************************************************************" + NL + "**                                                                            **" + NL + "** PLATFORM : Infineon XMC4000/XMC1000 Series                                 **" + NL + "**                                                                            **" + NL + "** COMPILER : Compiler Independent                                            **" + NL + "**                                                                            **" + NL + "** AUTHOR   : App Developer                                                   **" + NL + "**                                                                            **" + NL + "** NOTE     : Any Changes made to this file will be overwritten during Code   **" + NL + "**            Generation                                                      **" + NL + "**                                                                            **" + NL + "********************************************************************************" + NL + "** VERSION HISTORY:" + NL + "********************************************************************************" + NL + "** v1.0.4, 17 Feb 2014,  Initial version " + NL + "*******************************************************************************/";
  protected final String TEXT_2 = NL + "/**" + NL + " * @file   I2C003_Conf.h" + NL + " *" + NL + " * @App Version I2C003 <";
  protected final String TEXT_3 = ">" + NL + " *" + NL + " * @brief  This file contains global macro definitions of I2C003." + NL + " *" + NL + " */" + NL + "" + NL + "#ifndef I2C003_CONF_H_" + NL + "#define I2C003_CONF_H_" + NL + "" + NL + "#ifdef __cplusplus" + NL + "extern \"C\" {" + NL + "#endif" + NL + "" + NL + "/*******************************************************************************" + NL + "** @Defines" + NL + "*******************************************************************************/" + NL;
  protected final String TEXT_4 = "     " + NL;
  protected final String TEXT_5 = NL + "/* System Core clock frequency in MHz */" + NL + "#define I2C003_USIC_CLOCK    ";
  protected final String TEXT_6 = "F ";
  protected final String TEXT_7 = NL + " /*USIC0 peripheral module has been configured */" + NL + "#define I2C003_PER0_USIC";
  protected final String TEXT_8 = "_ENABLED";
  protected final String TEXT_9 = NL + " /*USIC1 peripheral module has been configured */" + NL + "#define I2C003_PER1_USIC";
  protected final String TEXT_10 = "_ENABLED";
  protected final String TEXT_11 = NL + " /*USIC1 peripheral module has been configured */" + NL + "#define I2C003_PER1_USIC";
  protected final String TEXT_12 = "_ENABLED";
  protected final String TEXT_13 = NL + "/* CHANNEL IS NOT MAPPED */";
  protected final String TEXT_14 = NL + "/* Macro specifying the number of I2C003 handles */" + NL + "#define I2C003_NUM_HANDLES   ";
  protected final String TEXT_15 = NL + NL + NL + "#ifdef __cplusplus" + NL + "}" + NL + "#endif                     " + NL + "" + NL + "#endif  /* ifndef I2C003_CONF_H_ */" + NL + "" + NL + "/*CODE_BLOCK_END*/";
  protected final String TEXT_16 = NL;

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
     String appInst  = null; 
     String UnitInst = null; 
     String ChannelInst = null; 
     int NodeNr = 0; 
     int USIC0_Enable = 0; 
     int USIC1_Enable = 0; 
     int USIC2_Enable = 0; 
     int TxFifo_Enable = 0; 
     int RxFifo_Enable = 0; 
     int TxStd_Enable = 0; 
     int RxStd_Enable = 0; 
     double clockfreq = 0; 
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
    stringBuffer.append(TEXT_4);
     if(Is1xDevice == 1){
  clockfreq = app.getDoubleValue (AppBaseuri + 0 + "/clockapp_XMC1000/clk002_irMCLK" );
}else if ((Is45Device==1)||(Is44Device==1)||(Is42Device==1)){
  clockfreq = app.getDoubleValue (AppBaseuri + 0 + "/clockapp_XMC4000/clk001_iroActualFreqPB" );
}
else{}

    stringBuffer.append(TEXT_5);
    stringBuffer.append( clockfreq);
    stringBuffer.append(TEXT_6);
     ArrayList<String> appsList = (ArrayList<String>)(app.getApps("app/i2c003/"));
 for (String appIns : appsList ) {
 appInst = appIns.substring(appIns.lastIndexOf("/")+1);
 MappedUri = app.getMappedUri(AppBaseuri + appInst + "/channel");
 if((MappedUri != null) && (MappedUri != "")) {
 NodeNr++;
 UnitInst = MappedUri.substring(MappedUri .length()-11,MappedUri.indexOf("/channel/")); 
 int Unit = Integer.parseInt(UnitInst); 
     if((Unit == 0) && (USIC0_Enable == 0)) { 
    stringBuffer.append(TEXT_7);
    stringBuffer.append( Unit );
    stringBuffer.append(TEXT_8);
     USIC0_Enable = 1; 
    } else if ((Unit == 1) && (USIC1_Enable == 0)){
    stringBuffer.append(TEXT_9);
    stringBuffer.append( Unit );
    stringBuffer.append(TEXT_10);
     USIC1_Enable = 1; 
     } else if ((Unit == 2) && (USIC2_Enable == 0)){
    stringBuffer.append(TEXT_11);
    stringBuffer.append( Unit );
    stringBuffer.append(TEXT_12);
     USIC2_Enable = 1; 
     }
     }else { 
    stringBuffer.append(TEXT_13);
     } 
    } 
    stringBuffer.append(TEXT_14);
    stringBuffer.append(NodeNr);
    stringBuffer.append(TEXT_15);
    stringBuffer.append(TEXT_16);
    return stringBuffer.toString();
  }
}
