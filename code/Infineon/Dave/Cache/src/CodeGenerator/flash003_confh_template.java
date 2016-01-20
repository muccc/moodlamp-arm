package CodeGenerator;

import java.util.*;
import com.ifx.davex.appjetinteract.App2JetInterface;

public class flash003_confh_template
{
  protected static String nl;
  public static synchronized flash003_confh_template create(String lineSeparator)
  {
    nl = lineSeparator;
    flash003_confh_template result = new flash003_confh_template();
    nl = null;
    return result;
  }

  public final String NL = nl == null ? (System.getProperties().getProperty("line.separator")) : nl;
  protected final String TEXT_1 = "/*CODE_BLOCK_BEGIN[FLASH003_Conf.h]*/" + NL + "" + NL + "/*******************************************************************************" + NL + " Copyright (c) 2014, Infineon Technologies AG                                 **" + NL + " All rights reserved.                                                         **" + NL + "                                                                              **" + NL + " Redistribution and use in source and binary forms, with or without           **" + NL + " modification,are permitted provided that the following conditions are met:   **" + NL + "                                                                              **" + NL + " *Redistributions of source code must retain the above copyright notice,      **" + NL + " this list of conditions and the following disclaimer.                        **" + NL + " *Redistributions in binary form must reproduce the above copyright notice,   **" + NL + " this list of conditions and the following disclaimer in the documentation    **" + NL + " and/or other materials provided with the distribution.                       **" + NL + " *Neither the name of the copyright holders nor the names of its contributors **" + NL + " may be used to endorse or promote products derived from this software without** " + NL + " specific prior written permission.                                           **" + NL + "                                                                              **" + NL + " THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS \"AS IS\"  **" + NL + " AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE    **" + NL + " IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE   **" + NL + " ARE  DISCLAIMED. IN NO EVENT SHALL THE COPYRIGHT HOLDER OR CONTRIBUTORS BE   **" + NL + " LIABLE  FOR ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR         **" + NL + " CONSEQUENTIAL DAMAGES (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF         **" + NL + " SUBSTITUTE GOODS OR  SERVICES; LOSS OF USE, DATA, OR PROFITS; OR BUSINESS    **" + NL + " INTERRUPTION) HOWEVER CAUSED AND ON ANY THEORY OF LIABILITY, WHETHER IN      **" + NL + " CONTRACT, STRICT LIABILITY,OR TORT (INCLUDING NEGLIGENCE OR OTHERWISE)       **" + NL + " ARISING IN ANY WAY OUT OF THE USE OF THIS SOFTWARE, EVEN IF ADVISED OF THE   **" + NL + " POSSIBILITY OF SUCH DAMAGE.                                                  **" + NL + "                                                                              **" + NL + " To improve the quality of the software, users are encouraged to share        **" + NL + " modifications, enhancements or bug fixes with Infineon Technologies AG       **" + NL + " dave@infineon.com).                                                          **" + NL + "                                                                              **" + NL + "********************************************************************************" + NL + "**                                                                            **" + NL + "**                                                                            **" + NL + "** PLATFORM : Infineon XMC1000 Series                                         **" + NL + "**                                                                            **" + NL + "** COMPILER : Compiler Independent                                            **" + NL + "**                                                                            **" + NL + "** AUTHOR   : App Developer                                                   **" + NL + "**                                                                            **" + NL + "** MAY BE CHANGED BY USER [Yes/No]: Yes                                       **" + NL + "**                                                                            **" + NL + "** MODIFICATION DATE : Jan 27, 2014                                           **" + NL + "**                                                                            **" + NL + "*******************************************************************************/" + NL + "/* Revision History" + NL + " *****************************************************************************" + NL + " * Date           Version     Remarks" + NL + " * 28 June 2013   1.0.0      Initial Version" + NL + " * 28 Aug  2013   1.0.4\t\t Event Macros and User Event Definitions are " + NL + " *                           generated based on UI configuration" + NL + " * 30 Sep  2013   1.0.6\t\t Added C++ support" + NL + " * 27 Jan  2014   1.0.8      Naming convention of the macros changed." + NL + " */" + NL + "/**" + NL + " * @file   FLASH003_Conf.h" + NL + " *" + NL + " * @brief  Configuration file generated based on UI settings " + NL + " *         of FLASH003 App" + NL + " *" + NL + " */" + NL + "#ifndef FLASH003_CONF_H_" + NL + "#define FLASH003_CONF_H_" + NL + "" + NL + "#ifdef __cplusplus" + NL + "extern \"C\" {" + NL + "#endif" + NL + "" + NL + "#include <DAVE3.h>" + NL;
  protected final String TEXT_2 = NL + "/*Status of Double bit ECC interrupt*/" + NL + "#define FLASH003_ECC_INTERRUPT ";
  protected final String TEXT_3 = "U" + NL + "/*Status of End of Sequence interrupt*/" + NL + "#define FLASH003_SEQ_INTERRUPT ";
  protected final String TEXT_4 = "U" + NL + "/*Event1 handler name*/" + NL + "#define FLASH003_SEQ_EVENT ";
  protected final String TEXT_5 = " NULL ";
  protected final String TEXT_6 = NL + "/*Event2 handler name*/" + NL + "#define FLASH003_ECC_EVENT ";
  protected final String TEXT_7 = " NULL ";
  protected final String TEXT_8 = NL + "/*User defined Event Handler function for Seq Error */  " + NL + "extern void ";
  protected final String TEXT_9 = "(uint32_t CbArgs);";
  protected final String TEXT_10 = NL + "/*User defined Event Handler function for ECC Error */  " + NL + "extern void ";
  protected final String TEXT_11 = "(uint32_t CbArgs);";
  protected final String TEXT_12 = NL + NL + "extern const FLASH003_HandleType FLASH003_Handle";
  protected final String TEXT_13 = ";" + NL + "extern FLASH003_DynamicHandleType FLASH003_DynamicHandle";
  protected final String TEXT_14 = ";";
  protected final String TEXT_15 = NL + NL + "#ifdef __cplusplus" + NL + "}" + NL + "#endif" + NL + "" + NL + "#endif /* FLASH001_CONF_H_ */  " + NL + "/*CODE_BLOCK_END*/";
  protected final String TEXT_16 = NL;

  public String generate(Object argument)
  {
    final StringBuffer stringBuffer = new StringBuffer();
     App2JetInterface app = (App2JetInterface) argument; 
    stringBuffer.append(TEXT_1);
     String AppBaseuri = "app/flash003/";
     String MappedUri = null; 
     String appInst  = null; 
     String flash003_Handler  = null; 
     String flash003_Handler2  = null; 
     int ECC_INTERRUPT = app.getIntegerValue(AppBaseuri + "0/flash003_erwdoublebiteccevent/0"); 
     int SEQ_INTERRUPT = app.getIntegerValue(AppBaseuri + "0/flash003_erwCompletionofSequence/0"); 
     flash003_Handler = app.getStringValue(AppBaseuri + "0/flash003_irwCallbackFunc"); 
     flash003_Handler2 = app.getStringValue(AppBaseuri + "0/flash003_irwCallbackFunc2"); 
     ArrayList<String> appsList = (ArrayList<String>)(app.getApps("app/flash003/"));
for (String appIns : appsList ) {
appInst = appIns.substring(appIns.lastIndexOf("/")+1); 
    stringBuffer.append(TEXT_2);
    stringBuffer.append( ECC_INTERRUPT);
    stringBuffer.append(TEXT_3);
    stringBuffer.append( SEQ_INTERRUPT);
    stringBuffer.append(TEXT_4);
    if((flash003_Handler != null) && (flash003_Handler != "")){
    stringBuffer.append( flash003_Handler);
    }else{
    stringBuffer.append(TEXT_5);
    }
    stringBuffer.append(TEXT_6);
    if((flash003_Handler2 != null) && (flash003_Handler2 != "")){
    stringBuffer.append( flash003_Handler2);
    }else{
    stringBuffer.append(TEXT_7);
    }
     if (SEQ_INTERRUPT == 1){
     if((flash003_Handler != null) && (flash003_Handler != "")) { 
    stringBuffer.append(TEXT_8);
    stringBuffer.append(flash003_Handler);
    stringBuffer.append(TEXT_9);
     }} 
     if (ECC_INTERRUPT == 1){
     if((flash003_Handler2 != null) && (flash003_Handler2 != "")) { 
    stringBuffer.append(TEXT_10);
    stringBuffer.append(flash003_Handler2);
    stringBuffer.append(TEXT_11);
     }} 
    stringBuffer.append(TEXT_12);
    stringBuffer.append(appInst);
    stringBuffer.append(TEXT_13);
    stringBuffer.append(appInst);
    stringBuffer.append(TEXT_14);
    } 
    stringBuffer.append(TEXT_15);
    stringBuffer.append(TEXT_16);
    return stringBuffer.toString();
  }
}
