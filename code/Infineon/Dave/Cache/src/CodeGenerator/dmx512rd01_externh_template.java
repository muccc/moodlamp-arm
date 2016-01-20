package CodeGenerator;

import java.util.*;
import java.text.*;
import com.ifx.davex.appjetinteract.App2JetInterface;

public class dmx512rd01_externh_template
{
  protected static String nl;
  public static synchronized dmx512rd01_externh_template create(String lineSeparator)
  {
    nl = lineSeparator;
    dmx512rd01_externh_template result = new dmx512rd01_externh_template();
    nl = null;
    return result;
  }

  public final String NL = nl == null ? (System.getProperties().getProperty("line.separator")) : nl;
  protected final String TEXT_1 = NL + "/*CODE_BLOCK_BEGIN[DMX512RD01_Extern.h]*/" + NL + "" + NL + "/******************************************************************************" + NL + " * @file     DMX512RD01_Extern.h" + NL + " *" + NL + " * @brief  This defines the dynamic or User defined  objects, enums " + NL + " * and apis of DMX512 APP" + NL + " * @version  V";
  protected final String TEXT_2 = NL + " * @date     26 Sep 2013" + NL + " *" + NL + " * @note" + NL + " * Copyright (C) 2012-2013 Infineon Technologies AG. All rights reserved." + NL + "" + NL + " *" + NL + " * @par" + NL + " * Infineon Technologies AG (Infineon) is supplying this software for use with " + NL + " * Infineon?s microcontrollers." + NL + " *   " + NL + " * This file can be freely distributed within development tools that are " + NL + " * supporting such microcontrollers." + NL + " *  " + NL + " *" + NL + " * @par" + NL + " * THIS SOFTWARE IS PROVIDED \"AS IS\".  NO WARRANTIES, WHETHER EXPRESS, IMPLIED" + NL + " * OR STATUTORY, INCLUDING, BUT NOT LIMITED TO, IMPLIED WARRANTIES OF" + NL + " * MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE APPLY TO THIS SOFTWARE." + NL + " * INFINEON SHALL NOT, IN ANY CIRCUMSTANCES, BE LIABLE FOR SPECIAL, INCIDENTAL," + NL + " * OR CONSEQUENTIAL DAMAGES, FOR ANY REASON WHATSOEVER." + NL + " *" + NL + " ******************************************************************************/" + NL + "/*" + NL + " * *************************** Change history ********************************" + NL + " * *************************** Change history ********************************" + NL + " * V1.0.0, 26 Sep 2013, Initial Version" + NL + " * V1.0.2, 20 Jan 2014, CAPCOM dependency is reduced by removing MBTS and " + NL + " * MBB checks" + NL + " */" + NL + "" + NL + "" + NL + "#ifndef __DMX512RD01_EXTERN__" + NL + "#define __DMX512RD01_EXTERN__" + NL + "" + NL + "#ifdef __cplusplus" + NL + "extern \"C\" {" + NL + "#endif" + NL + "" + NL + "" + NL + "" + NL + "/*******************************************************************************" + NL + "**                      Private Type Definitions                              **" + NL + "*******************************************************************************/" + NL + "" + NL + "" + NL + "/*****************************************************************************" + NL + " *                            Macros                                        **" + NL + " *****************************************************************************/" + NL + "" + NL + "" + NL + "/*******************************************************************************" + NL + "**                 Function like macro definitions                            **" + NL + "*******************************************************************************/" + NL + "" + NL + "/*******************************************************************************" + NL + "**                      Global Variable Definitions                           **" + NL + "*******************************************************************************/" + NL + " /**" + NL + "* @addtogroup DMX512RD01_datastructures" + NL + "* @{" + NL + "*/";
  protected final String TEXT_3 = NL + NL + "extern const DMX512RD01_HandleType DMX512RD01_Handle";
  protected final String TEXT_4 = ";";
  protected final String TEXT_5 = NL + NL + "/**" + NL + " * @}" + NL + " */" + NL + "/*******************************************************************************" + NL + " **FUNCTION PROTOTYPES                                                        **" + NL + "*******************************************************************************/" + NL + "" + NL + "" + NL + "#ifdef __cplusplus" + NL + "}" + NL + "#endif" + NL + "" + NL + "#endif" + NL + "/*CODE_BLOCK_END*/" + NL;
  protected final String TEXT_6 = NL;

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
    stringBuffer.append(TEXT_3);
    stringBuffer.append(appInst);
    stringBuffer.append(TEXT_4);
    }
    stringBuffer.append(TEXT_5);
    stringBuffer.append(TEXT_6);
    return stringBuffer.toString();
  }
}
