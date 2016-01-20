package CodeGenerator;

import java.util.*;
import com.ifx.davex.appjetinteract.App2JetInterface;

public class anacmp01confh_template
{
  protected static String nl;
  public static synchronized anacmp01confh_template create(String lineSeparator)
  {
    nl = lineSeparator;
    anacmp01confh_template result = new anacmp01confh_template();
    nl = null;
    return result;
  }

  public final String NL = nl == null ? (System.getProperties().getProperty("line.separator")) : nl;
  protected final String TEXT_1 = "/*CODE_BLOCK_BEGIN[ANACMP01Confh.h]*/" + NL + "" + NL + "/**************************************************************************//**" + NL + " *" + NL + " * Copyright (C) 2013 Infineon Technologies AG. All rights reserved." + NL + " *" + NL + " * Infineon Technologies AG (Infineon) is supplying this software for use with" + NL + " * Infineon's microcontrollers." + NL + " * This file can be freely distributed within development tools that are" + NL + " * supporting such microcontrollers." + NL + " *" + NL + " * THIS SOFTWARE IS PROVIDED \"AS IS\".  NO WARRANTIES, WHETHER EXPRESS, IMPLIED" + NL + " * OR STATUTORY, INCLUDING, BUT NOT LIMITED TO, IMPLIED WARRANTIES OF" + NL + " * MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE APPLY TO THIS SOFTWARE." + NL + " * INFINEON SHALL NOT, IN ANY CIRCUMSTANCES, BE LIABLE FOR SPECIAL, INCIDENTAL," + NL + " * OR CONSEQUENTIAL DAMAGES, FOR ANY REASON WHATSOEVER." + NL + " *" + NL + "********************************************************************************" + NL + "**                                                                            **" + NL + "**                                                                            **" + NL + "** PLATFORM : Infineon XMC1000 Series                                 \t\t  **" + NL + "**                                                                            **" + NL + "** COMPILER : Compiler Independent                                            **" + NL + "**                                                                            **" + NL + "** AUTHOR : App Developer                                                     **" + NL + "**                                                                            **" + NL + "** MAY BE CHANGED BY USER [yes/Yes]: Ys                                       **" + NL + "**                                                                            **" + NL + "** MODIFICATION DATE : Jan 29, 2014                                           **" + NL + "**                                                                            **" + NL + "*******************************************************************************/" + NL + "" + NL + "/**" + NL + " * @file  ANACMP01_Conf.h" + NL + " *" + NL + " * @brief This file contains App parameter data as per GUI configurations" + NL + " *" + NL + " * Change History:" + NL + " * Date       version       Details " + NL + " * 25-Mar-13    1.0.6   1. Initial version" + NL + " *                       2. Two IO001 apps consumtion done for two input pins   " + NL + " *                      3. Register structure defined in anacmpglob01 app due" + NL + " *                         to XMC1000 header file update not available and" + NL + " *                         code corrected as per this structure." + NL + " *                      4. Register structure removed and Code is modified to " + NL + " *                         support updated header files." + NL + " *                      5. Help Document updated." + NL + " * 10-Sep-13    1.0.8   1. Added support for the following devices under " + NL + " *                         XMC1200 and XMC1300 Series XMC1201, XMC1202, XMC1301  " + NL + " * 29-Jan-2014  1.0.10  1. C++ header support" + NL + " */" + NL + " " + NL + "/*******************************************************************************" + NL + "**                       Author(s) Identity                                   **" + NL + "********************************************************************************" + NL + "**                                                                            **" + NL + "** Initials     Name                                                          **" + NL + "** ---------------------------------------------------------------------------**" + NL + "**  NL          App Developer                                                 **" + NL + "**  SSAM        Sridhar Sampath                                               **" + NL + "*******************************************************************************/" + NL + " " + NL + "#ifndef ANACMP01CONF_H_" + NL + "#define ANACMP01CONF_H_" + NL + "" + NL + "#ifdef __cplusplus" + NL + "extern \"C\" {" + NL + "#endif" + NL + "" + NL + "#include<dave3.h>";
  protected final String TEXT_2 = "\t" + NL + "extern const ANACMP01_HandleType ANACMP01_Handle";
  protected final String TEXT_3 = ";";
  protected final String TEXT_4 = NL + NL + "#endif /* ANACMP01CONF_H_ */" + NL + "" + NL + "/* Support for C++ codebase */" + NL + "#ifdef __cplusplus" + NL + "}" + NL + "#endif" + NL + "" + NL + "/**" + NL + " * @}" + NL + " */" + NL + " " + NL + "/*CODE_BLOCK_END*/";
  protected final String TEXT_5 = NL;

  public String generate(Object argument)
  {
    final StringBuffer stringBuffer = new StringBuffer();
     App2JetInterface app = (App2JetInterface) argument; 
    stringBuffer.append(TEXT_1);
     String AppBaseuri = "app/anacmp01/"; 
     String appInst  = null; 
     String ConfigUri = null; 
     String kernelUri = null; 
     String InstanceNo = null; 
     ArrayList<String> appsList = (ArrayList<String>)(app.getApps("app/anacmp01/"));

for (String appIns : appsList ) {
    appInst = appIns.substring(appIns.lastIndexOf("/")+1); 

       	             ConfigUri = app.getMappedUri(AppBaseuri + appInst +"/slice"); 
       	             if ((ConfigUri != null) && (ConfigUri.trim() != "")) { 
       	                 kernelUri = ConfigUri.substring(ConfigUri.length()-1,ConfigUri.indexOf("anacmp")+8); 
       	                 InstanceNo = kernelUri.substring(kernelUri.length() -1); 
    stringBuffer.append(TEXT_2);
    stringBuffer.append( InstanceNo);
    stringBuffer.append(TEXT_3);
    }}
    stringBuffer.append(TEXT_4);
    stringBuffer.append(TEXT_5);
    return stringBuffer.toString();
  }
}
