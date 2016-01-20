package CodeGenerator;

import java.util.*;
import java.text.*;
import com.ifx.davex.appjetinteract.App2JetInterface;

public class dmx512rd01_confc_template
{
  protected static String nl;
  public static synchronized dmx512rd01_confc_template create(String lineSeparator)
  {
    nl = lineSeparator;
    dmx512rd01_confc_template result = new dmx512rd01_confc_template();
    nl = null;
    return result;
  }

  public final String NL = nl == null ? (System.getProperties().getProperty("line.separator")) : nl;
  protected final String TEXT_1 = "";
  protected final String TEXT_2 = NL;
  protected final String TEXT_3 = " ";
  protected final String TEXT_4 = NL + NL + "/*CODE_BLOCK_BEGIN[DMX512RD01_Conf.h]*/" + NL + "" + NL + "/******************************************************************************" + NL + " * @file     DMX512RD01_Conf.c" + NL + " *" + NL + " * @brief  This defines the dynamic or User defined  objects, enums " + NL + " * and APIs of DMX512 APP" + NL + " * @version  V";
  protected final String TEXT_5 = NL + " * @date     06 Feb 2014" + NL + " *" + NL + " * @note" + NL + " * Copyright (C) 2012-2013 Infineon Technologies AG. All rights reserved." + NL + "" + NL + " *" + NL + " * @par" + NL + " * Infineon Technologies AG (Infineon) is supplying this software for use with " + NL + " * Infineon?s microcontrollers." + NL + " *   " + NL + " * This file can be freely distributed within development tools that are " + NL + " * supporting such microcontrollers." + NL + " *  " + NL + " *" + NL + " * @par" + NL + " * THIS SOFTWARE IS PROVIDED \"AS IS\".  NO WARRANTIES, WHETHER EXPRESS, IMPLIED" + NL + " * OR STATUTORY, INCLUDING, BUT NOT LIMITED TO, IMPLIED WARRANTIES OF" + NL + " * MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE APPLY TO THIS SOFTWARE." + NL + " * INFINEON SHALL NOT, IN ANY CIRCUMSTANCES, BE LIABLE FOR SPECIAL, INCIDENTAL," + NL + " * OR CONSEQUENTIAL DAMAGES, FOR ANY REASON WHATSOEVER." + NL + " *" + NL + " ******************************************************************************/" + NL + "/*" + NL + " * *************************** Change history ********************************" + NL + " * *************************** Change history ********************************" + NL + " * V1.0.0, 26 Sep 2013, Initial Version" + NL + " * V1.0.2, 20 Jan 2014, CAPCOM dependency is reduced by removing MBTS and " + NL + " * MBB checks" + NL + " * V1.0.4, 06 Feb 2014, New feature accurate break detection is provided" + NL + " */" + NL + "" + NL + " /*******************************************************************************" + NL + " ** INCLUDE FILES                                                             **" + NL + " ******************************************************************************/" + NL + "#include \"../../inc/DMX512RD01/DMX512RD01.h\"" + NL + "#include \"stddef.h\"" + NL + "" + NL + "const DMX512RD01_HandleType DMX512RD01_Handle";
  protected final String TEXT_6 = " =" + NL + "{" + NL + "    /** CMSIS defined structure for USIC module */" + NL + "    .UsicRegPtr = USIC";
  protected final String TEXT_7 = "_CH";
  protected final String TEXT_8 = "," + NL + "\t/* Capture Hardware related Variables */";
  protected final String TEXT_9 = NL + "\t.CaptureBasePtr = (CCU4_GLOBAL_TypeDef *)CCU4";
  protected final String TEXT_10 = ", /* <! Capture Base Register pointer */" + NL + "\t.CaptureRegPtr = (CCU4_CC4_TypeDef * )CCU4";
  protected final String TEXT_11 = "_CC4";
  protected final String TEXT_12 = ", /* <! Capture Channel Register Pointer */";
  protected final String TEXT_13 = NL + "\t.CaptureBasePtr = NULL, /* <! Capture Base Register pointer */" + NL + "\t.CaptureRegPtr = NULL, /* <! Capture Channel Register Pointer */";
  protected final String TEXT_14 = NL + "};" + NL + "" + NL + "/*CODE_BLOCK_END*/";
  protected final String TEXT_15 = NL;

  public String generate(Object argument)
  {
    final StringBuffer stringBuffer = new StringBuffer();
     App2JetInterface app = (App2JetInterface) argument; 
     String AppBaseuri = "app/dmx512rd01/"; 
     String appInst = null; 
    stringBuffer.append(TEXT_1);
     ArrayList<String> appsList = (ArrayList<String>)(app.getApps("app/dmx512rd01/"));
for (String appIns : appsList ) {
    appInst = appIns.substring(appIns.lastIndexOf("/")+1);
    }
    stringBuffer.append(TEXT_2);
     String SliceUri = app.getMappedUri(AppBaseuri + appInst + "/capturehw"); 
    String kernelNo = null; 
    String Channel = null; 
     if(SliceUri != null) {
    kernelNo =SliceUri.substring(SliceUri.indexOf("peripheral/ccu4/")+16,SliceUri.indexOf("/cc4/"));
    Channel =SliceUri.substring(SliceUri.indexOf("/cc4/")+5,SliceUri.length());
    stringBuffer.append(TEXT_3);
    }
     String UnitInst = null; 
     String ChannelInst = null; 
     String MappedUri = app.getMappedUri(AppBaseuri + appInst + "/usic_channhw"); 
     UnitInst = MappedUri.substring(MappedUri .length()-11,MappedUri.indexOf("/channel/")); 
     ChannelInst = MappedUri.substring(MappedUri.length()-1); 
    stringBuffer.append(TEXT_4);
    stringBuffer.append( app.getAppVersion(AppBaseuri));
    stringBuffer.append(TEXT_5);
    stringBuffer.append(appInst);
    stringBuffer.append(TEXT_6);
    stringBuffer.append( UnitInst );
    stringBuffer.append(TEXT_7);
    stringBuffer.append( ChannelInst );
    stringBuffer.append(TEXT_8);
     if(SliceUri != null) {
    stringBuffer.append(TEXT_9);
    stringBuffer.append( kernelNo);
    stringBuffer.append(TEXT_10);
    stringBuffer.append( kernelNo);
    stringBuffer.append(TEXT_11);
    stringBuffer.append( Channel);
    stringBuffer.append(TEXT_12);
    }
     else {
    stringBuffer.append(TEXT_13);
    }
    stringBuffer.append(TEXT_14);
    stringBuffer.append(TEXT_15);
    return stringBuffer.toString();
  }
}
