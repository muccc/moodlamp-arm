package CodeGenerator;

import java.util.*;
import java.text.*;
import com.ifx.davex.appjetinteract.App2JetInterface;

public class bccuch01_externh_template
{
  protected static String nl;
  public static synchronized bccuch01_externh_template create(String lineSeparator)
  {
    nl = lineSeparator;
    bccuch01_externh_template result = new bccuch01_externh_template();
    nl = null;
    return result;
  }

  public final String NL = nl == null ? (System.getProperties().getProperty("line.separator")) : nl;
  protected final String TEXT_1 = NL + "/*CODE_BLOCK_BEGIN[BCCUCH01_Extern.h]*/" + NL + "" + NL + "/*******************************************************************************" + NL + " * @file     BCCUCH01_Extern.h" + NL + " * @brief    This file has prototypes and Configuration constants for BCCUCH01 " + NL + " *           app." + NL + " * @version  V1.0.6" + NL + " * @date     3 Sep 2013" + NL + " *" + NL + " * @note" + NL + " * Copyright (C) 2012-2013 Infineon Technologies AG. All rights reserved." + NL + "" + NL + " *" + NL + " * @par" + NL + " * Infineon Technologies AG (Infineon) is supplying this software for use with " + NL + " * Infineon's microcontrollers." + NL + " *   " + NL + " * This file can be freely distributed within development tools that are " + NL + " * supporting such microcontrollers." + NL + " *  " + NL + " *" + NL + " * @par" + NL + " * THIS SOFTWARE IS PROVIDED \"AS IS\".  NO WARRANTIES, WHETHER EXPRESS, IMPLIED" + NL + " * OR STATUTORY, INCLUDING, BUT NOT LIMITED TO, IMPLIED WARRANTIES OF" + NL + " * MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE APPLY TO THIS SOFTWARE." + NL + " * INFINEON SHALL NOT, IN ANY CIRCUMSTANCES, BE LIABLE FOR SPECIAL, INCIDENTAL," + NL + " * OR CONSEQUENTIAL DAMAGES, FOR ANY REASON WHATSOEVER." + NL + " *" + NL + " ******************************************************************************/" + NL + "/**************************** Change history ***********************************" + NL + " * V1.0.0,\t14-Feb-13\t Initial Version" + NL + " * V1.0.2,\t2-Apr-13\t Enhancement: Initial Target intensity immediately upon " + NL + " *                       initialization and then update the linear walk time " + NL + " *                       (specified in GUI) is fixed" + NL + " * V1.0.4   5-Aug-2013  Configuration and Driver codes are separated." + NL + " * V1.0.6   3-Sep-2013  C++ Support extended and New SW IDs added." + NL + " * V1.0.8   9-Dec-2013  Added software control on BCCU Output control" + NL + " * *************************** Change history *********************************/" + NL + "" + NL + "#ifndef _EXTERNS_BCCUCH01_H_" + NL + "#define _EXTERNS_BCCUCH01_H_" + NL + "" + NL + "#ifdef __cplusplus" + NL + "extern \"C\" {" + NL + "#endif" + NL + "" + NL + "" + NL + "//*****************************************************************************" + NL + "// @Defines" + NL + "//*****************************************************************************" + NL;
  protected final String TEXT_2 = "\t";
  protected final String TEXT_3 = NL + NL + "/**" + NL + " * @ingroup BCCUCH01_datastructures" + NL + " * @{" + NL + " */";
  protected final String TEXT_4 = NL + "extern const BCCUCH01_HandleType BCCUCH01_Handle";
  protected final String TEXT_5 = ";";
  protected final String TEXT_6 = NL + NL + "extern const BCCUCH01_HandleType * BCCUCH01_HandleArr[BCCUCH01_NUM_INSTANCES];" + NL + "" + NL + "" + NL + "/**" + NL + "  * @}" + NL + "  */" + NL + "" + NL + "#ifdef __cplusplus" + NL + "}" + NL + "#endif" + NL + "" + NL + "" + NL + "" + NL + "#endif  " + NL + "/**" + NL + "  * @}" + NL + "  */" + NL + " /*CODE_BLOCK_END*/";
  protected final String TEXT_7 = NL;

  public String generate(Object argument)
  {
    final StringBuffer stringBuffer = new StringBuffer();
     App2JetInterface app = (App2JetInterface) argument; 
     String AppBaseuri = "app/bccuch01/"; 
     String appInst  = null; 
     int instance  = 0; 
    stringBuffer.append(TEXT_1);
     ArrayList<String> appsList = (ArrayList<String>)(app.getApps("app/bccuch01/")); 
     for (String appIns : appsList ) {
   appInst = appIns.substring(appIns.lastIndexOf("/")+1);
    stringBuffer.append(TEXT_2);
     instance++; 
    }
    stringBuffer.append(TEXT_3);
    for (String appIns : appsList ) {
 appInst = appIns.substring(appIns.lastIndexOf("/")+1);
    stringBuffer.append(TEXT_4);
    stringBuffer.append(appInst);
    stringBuffer.append(TEXT_5);
    }
    stringBuffer.append(TEXT_6);
    stringBuffer.append(TEXT_7);
    return stringBuffer.toString();
  }
}
