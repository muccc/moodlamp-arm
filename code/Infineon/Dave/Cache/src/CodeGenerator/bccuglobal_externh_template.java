package CodeGenerator;

import java.util.*;
import com.ifx.davex.appjetinteract.App2JetInterface;

public class bccuglobal_externh_template
{
  protected static String nl;
  public static synchronized bccuglobal_externh_template create(String lineSeparator)
  {
    nl = lineSeparator;
    bccuglobal_externh_template result = new bccuglobal_externh_template();
    nl = null;
    return result;
  }

  public final String NL = nl == null ? (System.getProperties().getProperty("line.separator")) : nl;
  protected final String TEXT_1 = NL + "/*CODE_BLOCK_BEGIN[BCCUGLOBAL_Externs.h]*/" + NL + "" + NL + "/****************************************************************************" + NL + " * @file     BCCUGLOBAL_Externs.h" + NL + " * @brief    This file has prototypes of APIs for initialization of BCCU global" + NL + " *           register set." + NL + " * @version  V1.0.8" + NL + " * @date     3 Sep 2013" + NL + " *" + NL + " * @note" + NL + " * Copyright (C) 2012-2013 Infineon Technologies AG. All rights reserved." + NL + "" + NL + " *" + NL + " * @par" + NL + " * Infineon Technologies AG (Infineon) is supplying this software for use with" + NL + " * Infineon's microcontrollers." + NL + " *" + NL + " * This file can be freely distributed within development tools that are" + NL + " * supporting such microcontrollers." + NL + " *" + NL + " *" + NL + " * @par" + NL + " * THIS SOFTWARE IS PROVIDED \"AS IS\".  NO WARRANTIES, WHETHER EXPRESS, IMPLIED" + NL + " * OR STATUTORY, INCLUDING, BUT NOT LIMITED TO, IMPLIED WARRANTIES OF" + NL + " * MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE APPLY TO THIS SOFTWARE." + NL + " * INFINEON SHALL NOT, IN ANY CIRCUMSTANCES, BE LIABLE FOR SPECIAL, INCIDENTAL," + NL + " * OR CONSEQUENTIAL DAMAGES, FOR ANY REASON WHATSOEVER." + NL + " *" + NL + " ******************************************************************************/" + NL + "/**************************** Change history ***********************************" + NL + " * V1.0.0,\t14-Feb-13\t Initial Version" + NL + " * V1.0.2,\t3-Apr-13\t Two new UI widgets (\"Longest OFF-time at Modulator" + NL + " *                       Output\", \"Lowest Frequency at Modulator Output\")" + NL + " *                       are added." + NL + " * V1.0.4   25-Apr-2013  WDMBN related UI is extended." + NL + " * V1.0.6   6-Aug-2013   Configuration Dependent and Independent codes are" + NL + " *                       separated, MISRA checks are made." + NL + " * V1.0.8   3-Sep-2013  C++ Support extended and New SW IDs added." + NL + " * *************************** Change history *********************************/" + NL + "" + NL + " " + NL + "#ifndef BCCUGLOBAL_EXTERNS_H_" + NL + "#define BCCUGLOBAL_EXTERNS_H_" + NL + "" + NL + "#ifdef __cplusplus" + NL + "extern \"C\" {" + NL + "#endif" + NL + NL;
  protected final String TEXT_2 = NL;
  protected final String TEXT_3 = NL + NL + "extern const BCCUGlobal_HandleType BCCUGlobal_Handle";
  protected final String TEXT_4 = ";" + NL + NL;
  protected final String TEXT_5 = NL + NL + "#ifdef __cplusplus" + NL + "}" + NL + "#endif /* C++ */" + NL + "" + NL + "" + NL + "#endif /* BCCUGLOBAL_CONF_H_ */" + NL + "" + NL + "/*CODE_BLOCK_END*/";
  protected final String TEXT_6 = NL;

  public String generate(Object argument)
  {
    final StringBuffer stringBuffer = new StringBuffer();
     App2JetInterface app = (App2JetInterface) argument; 
    stringBuffer.append(TEXT_1);
     String AppBaseuri = "app/bccuglobal/"; 
     String appInst  = null; 
    stringBuffer.append(TEXT_2);
     ArrayList<String> appsList = (ArrayList<String>)(app.getApps("app/bccuglobal/"));
     for (String appIns : appsList ) 
     { 
     appInst = appIns.substring(appIns.lastIndexOf("/")+1);
    stringBuffer.append(TEXT_3);
    stringBuffer.append( appInst);
    stringBuffer.append(TEXT_4);
    }
    stringBuffer.append(TEXT_5);
    stringBuffer.append(TEXT_6);
    return stringBuffer.toString();
  }
}
