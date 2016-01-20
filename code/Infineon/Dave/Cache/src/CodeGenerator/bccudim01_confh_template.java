package CodeGenerator;

import java.util.*;
import java.text.*;
import com.ifx.davex.appjetinteract.App2JetInterface;

public class bccudim01_confh_template
{
  protected static String nl;
  public static synchronized bccudim01_confh_template create(String lineSeparator)
  {
    nl = lineSeparator;
    bccudim01_confh_template result = new bccudim01_confh_template();
    nl = null;
    return result;
  }

  public final String NL = nl == null ? (System.getProperties().getProperty("line.separator")) : nl;
  protected final String TEXT_1 = "/*CODE_BLOCK_BEGIN[BCCUDIM01_Conf.h]*/" + NL + "/****************************************************************************" + NL + " * @file     BCCUDIM01_Conf.h" + NL + " * @brief    Configuration header file generated based on UI settings " + NL + " *           of BCCUDIM01 App. It contains all Constants generated by UI configs." + NL + " * @version  V1.0.8" + NL + " * @date     12-Nov-13" + NL + " *" + NL + " * @note" + NL + " * Copyright (C) 2012-2013 Infineon Technologies AG. All rights reserved." + NL + "" + NL + " *" + NL + " * @par" + NL + " * Infineon Technologies AG (Infineon) is supplying this software for use with" + NL + " * Infineon's microcontrollers." + NL + " *" + NL + " * This file can be freely distributed within development tools that are" + NL + " * supporting such microcontrollers." + NL + " *" + NL + " *" + NL + " * @par" + NL + " * THIS SOFTWARE IS PROVIDED \"AS IS\".  NO WARRANTIES, WHETHER EXPRESS, IMPLIED" + NL + " * OR STATUTORY, INCLUDING, BUT NOT LIMITED TO, IMPLIED WARRANTIES OF" + NL + " * MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE APPLY TO THIS SOFTWARE." + NL + " * INFINEON SHALL NOT, IN ANY CIRCUMSTANCES, BE LIABLE FOR SPECIAL, INCIDENTAL," + NL + " * OR CONSEQUENTIAL DAMAGES, FOR ANY REASON WHATSOEVER." + NL + " *" + NL + " ******************************************************************************/" + NL + "/**************************** Change history ***********************************" + NL + " * V1.0.0,\t14-Feb-13\t Initial Version" + NL + " * V1.0.2,\t3-Apr-13\t Initial Target dimming level immediately upon " + NL + " *                       initialization and then update the desired transition " + NL + " *                       time (specified in GUI) is fixed." + NL + " * V1.0.4   4-Oct-13     C++ Support extended and Updated with new Device IDs. " + NL + " * V1.0.6   12-Nov-13     MISRA Checks done, Multiple inclusion of DAVE3.h " + NL + " *                       removed, Extern.h added" + NL + " * *************************** Change history *********************************/" + NL + "" + NL + "#ifndef _CONF_BCCUDIM01_H_" + NL + "#define _CONF_BCCUDIM01_H_" + NL + "" + NL + "#ifdef __cplusplus" + NL + "extern \"C\" {" + NL + "#endif" + NL + "/**" + NL + " * @ingroup BCCUDIM01_constants" + NL + " * @{" + NL + " */" + NL;
  protected final String TEXT_2 = NL + NL + "#define BCCUDIM01_NUM_INSTANCES (";
  protected final String TEXT_3 = "U)" + NL + "" + NL + "/**" + NL + "* @}" + NL + "*/" + NL + "" + NL + "#ifdef __cplusplus" + NL + "}" + NL + "#endif /*  C++*/" + NL + "" + NL + "" + NL + "#endif //_CONF_BCCUDIM01_H_" + NL + "" + NL + "/**" + NL + "  * @}" + NL + "  */" + NL + " /*CODE_BLOCK_END*/";
  protected final String TEXT_4 = NL;

  public String generate(Object argument)
  {
    final StringBuffer stringBuffer = new StringBuffer();
     App2JetInterface app = (App2JetInterface) argument; 
     String AppBaseuri = "app/bccudim01/"; 
     String appInst  = null; 
     int instance = 0; 
    stringBuffer.append(TEXT_1);
     ArrayList<String> appsList = (ArrayList<String>)(app.getApps("app/bccudim01/"));
for (String appIns : appsList ) {
 appInst = appIns.substring(appIns.lastIndexOf("/")+1);
    instance++;
    }
    stringBuffer.append(TEXT_2);
    stringBuffer.append( instance);
    stringBuffer.append(TEXT_3);
    stringBuffer.append(TEXT_4);
    return stringBuffer.toString();
  }
}