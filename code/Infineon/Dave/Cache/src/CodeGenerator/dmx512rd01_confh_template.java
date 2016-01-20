package CodeGenerator;

import java.util.*;
import java.text.*;
import com.ifx.davex.appjetinteract.App2JetInterface;

public class dmx512rd01_confh_template
{
  protected static String nl;
  public static synchronized dmx512rd01_confh_template create(String lineSeparator)
  {
    nl = lineSeparator;
    dmx512rd01_confh_template result = new dmx512rd01_confh_template();
    nl = null;
    return result;
  }

  public final String NL = nl == null ? (System.getProperties().getProperty("line.separator")) : nl;
  protected final String TEXT_1 = NL + "/*CODE_BLOCK_BEGIN[DMX512RD01_Conf.h]*/" + NL + "" + NL + "/******************************************************************************" + NL + " * @file     DMX512RD01_Conf.h" + NL + " *" + NL + " * @brief  This defines the dynamic or User defined  objects, enums " + NL + " * and apis of DMX512 APP" + NL + " * @version  V";
  protected final String TEXT_2 = NL + " * @date     06 Feb 2014" + NL + " *" + NL + " * @note" + NL + " * Copyright (C) 2012-2013 Infineon Technologies AG. All rights reserved." + NL + "" + NL + " *" + NL + " * @par" + NL + " * Infineon Technologies AG (Infineon) is supplying this software for use with " + NL + " * Infineon?s microcontrollers." + NL + " *   " + NL + " * This file can be freely distributed within development tools that are " + NL + " * supporting such microcontrollers." + NL + " *  " + NL + " *" + NL + " * @par" + NL + " * THIS SOFTWARE IS PROVIDED \"AS IS\".  NO WARRANTIES, WHETHER EXPRESS, IMPLIED" + NL + " * OR STATUTORY, INCLUDING, BUT NOT LIMITED TO, IMPLIED WARRANTIES OF" + NL + " * MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE APPLY TO THIS SOFTWARE." + NL + " * INFINEON SHALL NOT, IN ANY CIRCUMSTANCES, BE LIABLE FOR SPECIAL, INCIDENTAL," + NL + " * OR CONSEQUENTIAL DAMAGES, FOR ANY REASON WHATSOEVER." + NL + " *" + NL + " ******************************************************************************/" + NL + "/*" + NL + " * *************************** Change history ********************************" + NL + " * *************************** Change history ********************************" + NL + " * V1.0.0, 26 Sep 2013, Initial Version" + NL + " * V1.0.2, 20 Jan 2014, CAPCOM dependency is reduced by removing MBTS and " + NL + " * MBB checks" + NL + " * V1.0.4, 06 Feb 2014, New feature accurate break detection is provided" + NL + " */" + NL + "" + NL + "" + NL + "#ifndef __DMX512RD01_CONF__" + NL + "#define __DMX512RD01_CONF__" + NL + "" + NL + "#ifdef __cplusplus" + NL + "extern \"C\" {" + NL + "#endif" + NL + "" + NL + "" + NL + "" + NL + "/*******************************************************************************" + NL + "**                      Private Type Definitions                              **" + NL + "*******************************************************************************/" + NL + "" + NL + "" + NL + "/*****************************************************************************" + NL + " *                            Macros                                        **" + NL + " *****************************************************************************/" + NL + " /**" + NL + "* @addtogroup DMX512RD01_constants" + NL + "* @{" + NL + "*/";
  protected final String TEXT_3 = NL + NL + "#define DMX512RD01_STARTING_SLOT_NUM (";
  protected final String TEXT_4 = "U)" + NL + "#define DMX512RD01_NUM_SLOTS (";
  protected final String TEXT_5 = "U)" + NL;
  protected final String TEXT_6 = NL + "#define DMX512RD01_ACC_BREAK_DETECT (1U)";
  protected final String TEXT_7 = NL + "/* UART Mode of Reception */" + NL + "#define DMX512RD01_USIC_FRACDIV_MODE (0x2U)" + NL + "#define DMX512RD01_USIC_PASSIVELEV (0x1U)" + NL + "#define DMX512RD01_USIC_DATATRANS_ACTIVE (0x1U)" + NL + "#define DMX512RD01_USIC_FLE_WLE (0x7U)" + NL + "#define DMX512RD01_USIC_3SAMPLES (0x1U)" + NL + "#define DMX512RD01_USIC_2STOPBITS (0x1U)" + NL + "#define DMX512RD01_USIC_RXLIMIT (0x0U)" + NL + "#define DMX512RD01_USIC_LOF (0x1U)" + NL + "#define DMX512RD01_USIC_UART (0x02U)" + NL + "#define DMX512RD01_USIC_NOPARITY (0x0U)" + NL + "#define DMX512RD01_USIC_BGR_STEP 80 //TBC" + NL + "#define DMX512RD01_USIC_BGR_PCTQ 0 //TBC" + NL + "#define DMX512RD01_USIC_BGR_DCTQ 9 //TBC" + NL + "#define DMX512RD01_USIC_BGR_PDIV 0 //TBC" + NL + "#define DMX512RD01_USIC_BGR_SP 6 //TBC" + NL + "#define DMX512RD01_USIC_CLR_STATUS (0x1FFFFU)";
  protected final String TEXT_8 = NL + "#ifdef DMX512RD01_ACC_BREAK_DETECT" + NL + "  #define DMX512RD01_BREAK_COUNT (352) //TBC" + NL + "  #define DMX512RD01_CAPTURE_PRESCALAR (";
  protected final String TEXT_9 = "U)";
  protected final String TEXT_10 = " ";
  protected final String TEXT_11 = NL + "  #define DMX512RD01_SHADOW_MASK CCU4_GCSS_S";
  protected final String TEXT_12 = "SE_Msk" + NL + "  #define DMX512RD01_SHADOW_MASK_BIT_POS CCU4_GCSS_S";
  protected final String TEXT_13 = "SE_Pos" + NL + "  #define DMX512RD01_ILDE_BIT_MASK CCU4_GIDLC_CS";
  protected final String TEXT_14 = "I_Msk" + NL + "  #define DMX512RD01_IDLE_BIT_POS CCU4_GIDLC_CS";
  protected final String TEXT_15 = "I_Pos" + NL + "  #define DMX512RD01_PRS_MASK (";
  protected final String TEXT_16 = "U) /*!< Period Shadow mask*/" + NL + "  #define DMX512RD01_EV0IS (";
  protected final String TEXT_17 = "U)" + NL + "" + NL + "#endif";
  protected final String TEXT_18 = NL;
  protected final String TEXT_19 = " ";
  protected final String TEXT_20 = NL + "#define DMX512RD01_CALLBACK_DEFINED 1" + NL + "#define DMX512RD01_CallBack   ";
  protected final String TEXT_21 = "  /* This is the user callback function */";
  protected final String TEXT_22 = NL + "/**" + NL + " * @}" + NL + " */" + NL + "" + NL + "" + NL + "" + NL + "/*******************************************************************************" + NL + "**                 Function like macro definitions                            **" + NL + "*******************************************************************************/" + NL + "" + NL + "/*******************************************************************************" + NL + "**                      Global Variable Definitions                           **" + NL + "*******************************************************************************/" + NL + "" + NL + "" + NL + "/*******************************************************************************" + NL + " **FUNCTION PROTOTYPES                                                        **" + NL + "*******************************************************************************/" + NL + "" + NL + "" + NL + "#ifdef __cplusplus" + NL + "}" + NL + "#endif" + NL + "" + NL + "#endif" + NL + "/*CODE_BLOCK_END*/" + NL;
  protected final String TEXT_23 = NL;

  public String generate(Object argument)
  {
    final StringBuffer stringBuffer = new StringBuffer();
     App2JetInterface app = (App2JetInterface) argument; 
     String AppBaseuri = "app/dmx512rd01/"; 
     String appInst  = null; 
    stringBuffer.append(TEXT_1);
    stringBuffer.append( app.getAppVersion(AppBaseuri));
    stringBuffer.append(TEXT_2);
     ArrayList<String> appsList = (ArrayList<String>)(app.getApps("app/dmx512rd01/"));
for (String appIns : appsList ) {
    appInst = appIns.substring(appIns.lastIndexOf("/")+1);
    }
    stringBuffer.append(TEXT_3);
    stringBuffer.append(app.getIntegerValue (AppBaseuri + appInst + "/dmx512rd01_slave_num" ));
    stringBuffer.append(TEXT_4);
    stringBuffer.append(app.getIntegerValue (AppBaseuri + appInst + "/dmx512rd01_num_chnl" ));
    stringBuffer.append(TEXT_5);
    int AccBrkDet = app.getIntegerValue (AppBaseuri + appInst + "/dmx512rd01_dummy_AccBreDetect" ); 
     if(AccBrkDet==1) {
    stringBuffer.append(TEXT_6);
    }
    stringBuffer.append(TEXT_7);
    int prescalar = app.getIntegerValue(AppBaseuri + appInst + "/dmx512rd01_capture_prescalar");
     String SliceUri = app.getMappedUri(AppBaseuri + appInst + "/capturehw"); 
    if(SliceUri != null){
    stringBuffer.append(TEXT_8);
    stringBuffer.append(prescalar);
    stringBuffer.append(TEXT_9);
    String Channel =SliceUri.substring(SliceUri.indexOf("/cc4/")+5,SliceUri.length());
    stringBuffer.append(TEXT_10);
    String kernelNo =SliceUri.substring(SliceUri.indexOf("peripheral/ccu4/")+16,SliceUri.indexOf("/cc4/"));
    stringBuffer.append(TEXT_11);
    stringBuffer.append( Channel);
    stringBuffer.append(TEXT_12);
    stringBuffer.append( Channel);
    stringBuffer.append(TEXT_13);
    stringBuffer.append( Channel);
    stringBuffer.append(TEXT_14);
    stringBuffer.append( Channel);
    stringBuffer.append(TEXT_15);
    stringBuffer.append((((32 + ((prescalar - 3)* 32) ) * 4) - 1));
    stringBuffer.append(TEXT_16);
    stringBuffer.append(app.getMuxValue ("peripheral/ccu4/" + kernelNo + "/cc4/" + Channel + "/cc4" + Channel + "ins_ev0is" ));
    stringBuffer.append(TEXT_17);
    }
    stringBuffer.append(TEXT_18);
     String callBack = app.getStringValue(AppBaseuri + appInst +"/dmx512rd01_user_call_back"); 
    stringBuffer.append(TEXT_19);
    if(!(callBack.equals(null) || (callBack.equals("")) )){
    stringBuffer.append(TEXT_20);
    stringBuffer.append(callBack);
    stringBuffer.append(TEXT_21);
    }
    stringBuffer.append(TEXT_22);
    stringBuffer.append(TEXT_23);
    return stringBuffer.toString();
  }
}
