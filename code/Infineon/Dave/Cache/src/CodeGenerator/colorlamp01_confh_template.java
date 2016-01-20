package CodeGenerator;

import java.util.*;
import com.ifx.davex.appjetinteract.App2JetInterface;

public class colorlamp01_confh_template
{
  protected static String nl;
  public static synchronized colorlamp01_confh_template create(String lineSeparator)
  {
    nl = lineSeparator;
    colorlamp01_confh_template result = new colorlamp01_confh_template();
    nl = null;
    return result;
  }

  public final String NL = nl == null ? (System.getProperties().getProperty("line.separator")) : nl;
  protected final String TEXT_1 = NL + "/*CODE_BLOCK_BEGIN[COLORLAMP01_Conf.h]*/" + NL + "" + NL + "/*******************************************************************************" + NL + " Copyright (c) 2013, Infineon Technologies AG                                 **" + NL + " All rights reserved.                                                         **" + NL + "                                                                              **" + NL + " Redistribution and use in source and binary forms, with or without           **" + NL + " modification,are permitted provided that the following conditions are met:   **" + NL + "                                                                              **" + NL + " *Redistributions of source code must retain the above copyright notice,      **" + NL + " this list of conditions and the following disclaimer.                        **" + NL + " *Redistributions in binary form must reproduce the above copyright notice,   **" + NL + " this list of conditions and the following disclaimer in the documentation    **" + NL + " and/or other materials provided with the distribution.                       **" + NL + " *Neither the name of the copyright holders nor the names of its contributors **" + NL + " may be used to endorse or promote products derived from this software without**" + NL + " specific prior written permission.                                           **" + NL + "                                                                              **" + NL + " THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS \"AS IS\"  **" + NL + " AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE    **" + NL + " IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE   **" + NL + " ARE  DISCLAIMED. IN NO EVENT SHALL THE COPYRIGHT HOLDER OR CONTRIBUTORS BE   **" + NL + " LIABLE  FOR ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR         **" + NL + " CONSEQUENTIAL DAMAGES (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF         **" + NL + " SUBSTITUTE GOODS OR  SERVICES; LOSS OF USE, DATA, OR PROFITS; OR BUSINESS    **" + NL + " INTERRUPTION) HOWEVER CAUSED AND ON ANY THEORY OF LIABILITY, WHETHER IN      **" + NL + " CONTRACT, STRICT LIABILITY,OR TORT (INCLUDING NEGLIGENCE OR OTHERWISE)       **" + NL + " ARISING IN ANY WAY OUT OF THE USE OF THIS SOFTWARE, EVEN IF ADVISED OF THE   **" + NL + " POSSIBILITY OF SUCH DAMAGE.                                                  **" + NL + "                                                                              **" + NL + " To improve the quality of the software, users are encouraged to share        **" + NL + " modifications, enhancements or bug fixes with Infineon Technologies AG       **" + NL + " dave@infineon.com).                                                          **" + NL + "                                                                              **" + NL + "********************************************************************************" + NL + "**                                                                            **" + NL + "**                                                                            **" + NL + "** PLATFORM : Infineon XMC1000 Series                                         **" + NL + "**                                                                            **" + NL + "** COMPILER : Compiler Independent                                            **" + NL + "**                                                                            **" + NL + "** AUTHOR   : App Developer                                                   **" + NL + "**                                                                            **" + NL + "** MAY BE CHANGED BY USER [yes/no]: Yes                                       **" + NL + "**                                                                            **" + NL + "** MODIFICATION DATE : Dec 06, 2013                                           **" + NL + "**                                                                            **" + NL + "*******************************************************************************/" + NL + "" + NL + "/*******************************************************************************" + NL + "**                       Author(s) Identity                                   **" + NL + "********************************************************************************" + NL + "**                                                                            **" + NL + "** Initials     Name                                                          **" + NL + "** ---------------------------------------------------------------------------**" + NL + "** ES           App Developer       \t\t\t                              **" + NL + "*******************************************************************************/" + NL + "/**" + NL + " * @file  COLORLAMP01_Conf.h" + NL + " * @brief This file contains the Handles or the generated configuration for the " + NL + " * App." + NL + " */" + NL + "/*" + NL + " * Revision History" + NL + " * 14 Feb  2013 v1.0.0  Initial Version." + NL + " * 03 Apr  2013 v1.0.2  UTP AI00164659: unable to compile the code w Global " + NL + " *                      Dimming configuration is fixed." + NL + " * 26 Sep  2013 v1.0.4  Added support for XMC1202 device." + NL + " * 06 Dec  2013 v1.0.5  Changes related to LIGHTINGSYS01 has taken care." + NL + " */" + NL + "" + NL + "#ifndef _COLORLAMP01_CONF_H_" + NL + "#define _COLORLAMP01_CONF_H_" + NL + "" + NL + "#ifdef __cplusplus" + NL + "extern \"C\" {" + NL + "#endif" + NL + "" + NL + "#include <DAVE3.h>" + NL;
  protected final String TEXT_2 = NL;
  protected final String TEXT_3 = NL + "extern const COLORLAMP01_ConfigHandleType COLORLAMP01_ConfigHandle";
  protected final String TEXT_4 = ";";
  protected final String TEXT_5 = NL + "//INFO: App Instance ";
  protected final String TEXT_6 = " not mapped";
  protected final String TEXT_7 = NL + NL + NL + "#ifdef __cplusplus" + NL + "}" + NL + "#endif" + NL + "" + NL + "#endif" + NL + "" + NL + "/*CODE_BLOCK_END*/" + NL + NL;
  protected final String TEXT_8 = NL;

  public String generate(Object argument)
  {
    final StringBuffer stringBuffer = new StringBuffer();
     App2JetInterface app = (App2JetInterface) argument; 
    stringBuffer.append(TEXT_1);
     String AppBaseuri = "app/colorlamp01/";
     String MappedUri = null; 
     String appInst  = null; 
    stringBuffer.append(TEXT_2);
     ArrayList<String> appsList = (ArrayList<String>)(app.getApps("app/colorlamp01/"));
 for (String appIns : appsList ) { 
     appInst = appIns.substring(appIns.lastIndexOf("/")+1);
     if((appInst != null) && (appInst != "")) { 
    stringBuffer.append(TEXT_3);
    stringBuffer.append(appInst);
    stringBuffer.append(TEXT_4);
     } 
     else { 
    stringBuffer.append(TEXT_5);
    stringBuffer.append(appInst);
    stringBuffer.append(TEXT_6);
     } 
    }
    stringBuffer.append(TEXT_7);
    stringBuffer.append(TEXT_8);
    return stringBuffer.toString();
  }
}
