package CodeGenerator;

import java.util.*;
import com.ifx.davex.appjetinteract.App2JetInterface;

public class flash003_confc_template
{
  protected static String nl;
  public static synchronized flash003_confc_template create(String lineSeparator)
  {
    nl = lineSeparator;
    flash003_confc_template result = new flash003_confc_template();
    nl = null;
    return result;
  }

  public final String NL = nl == null ? (System.getProperties().getProperty("line.separator")) : nl;
  protected final String TEXT_1 = "/*CODE_BLOCK_BEGIN[FLASH001_Conf.c]*/" + NL + "" + NL + "/*******************************************************************************" + NL + " Copyright (c) 2014, Infineon Technologies AG                                 **" + NL + " All rights reserved.                                                         **" + NL + "                                                                              **" + NL + " Redistribution and use in source and binary forms, with or without           **" + NL + " modification,are permitted provided that the following conditions are met:   **" + NL + "                                                                              **" + NL + " *Redistributions of source code must retain the above copyright notice,      **" + NL + " this list of conditions and the following disclaimer.                        **" + NL + " *Redistributions in binary form must reproduce the above copyright notice,   **" + NL + " this list of conditions and the following disclaimer in the documentation    **" + NL + " and/or other materials provided with the distribution.                       **" + NL + " *Neither the name of the copyright holders nor the names of its contributors **" + NL + " may be used to endorse or promote products derived from this software without** " + NL + " specific prior written permission.                                           **" + NL + "                                                                              **" + NL + " THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS \"AS IS\"  **" + NL + " AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE    **" + NL + " IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE   **" + NL + " ARE  DISCLAIMED. IN NO EVENT SHALL THE COPYRIGHT HOLDER OR CONTRIBUTORS BE   **" + NL + " LIABLE  FOR ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR         **" + NL + " CONSEQUENTIAL DAMAGES (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF         **" + NL + " SUBSTITUTE GOODS OR  SERVICES; LOSS OF USE, DATA, OR PROFITS; OR BUSINESS    **" + NL + " INTERRUPTION) HOWEVER CAUSED AND ON ANY THEORY OF LIABILITY, WHETHER IN      **" + NL + " CONTRACT, STRICT LIABILITY,OR TORT (INCLUDING NEGLIGENCE OR OTHERWISE)       **" + NL + " ARISING IN ANY WAY OUT OF THE USE OF THIS SOFTWARE, EVEN IF ADVISED OF THE   **" + NL + " POSSIBILITY OF SUCH DAMAGE.                                                  **" + NL + "                                                                              **" + NL + " To improve the quality of the software, users are encouraged to share        **" + NL + " modifications, enhancements or bug fixes with Infineon Technologies AG       **" + NL + " dave@infineon.com).                                                          **" + NL + "                                                                              **" + NL + "********************************************************************************" + NL + "**                                                                            **" + NL + "**                                                                            **" + NL + "** PLATFORM : Infineon XMC1000 Series                                         **" + NL + "**                                                                            **" + NL + "** COMPILER : Compiler Independent                                            **" + NL + "**                                                                            **" + NL + "** AUTHOR   : App Developer                                                   **" + NL + "**                                                                            **" + NL + "** MAY BE CHANGED BY USER [Yes/No]: Yes                                       **" + NL + "**                                                                            **" + NL + "** MODIFICATION DATE : Jan  27, 2014                                          **" + NL + "**                                                                            **" + NL + "*******************************************************************************/" + NL + "/* Revision History" + NL + " *****************************************************************************" + NL + " * Date           Version     Remarks" + NL + " * 28 June 2013   1.0.0      Initial Version" + NL + " * 28 Aug  2013   1.0.4\t\t FLASH003_DynamicHandleType is added for " + NL + " *                           Asynchronous mode of Operation with interrupts." + NL + " * 27 Jan  2014   1.0.8      Changed the code to support registration of 5 " + NL + " *                           callbacks for each event." + NL + " */" + NL + "/**" + NL + " * @file   FLASH001_Conf.c" + NL + " * " + NL + " * @App Version FLASH001 <";
  protected final String TEXT_2 = ">" + NL + " *" + NL + " * @brief  Configuration file generated for App." + NL + " *" + NL + " */" + NL + "" + NL + "/*******************************************************************************" + NL + " ** INCLUDE FILES                                                             **" + NL + " ******************************************************************************/" + NL + "#include <DAVE3.h>";
  protected final String TEXT_3 = NL;
  protected final String TEXT_4 = NL + " " + NL + " FLASH003_DynamicHandleType FLASH003_DynamicHandle";
  protected final String TEXT_5 = " =" + NL + "{" + NL + "\t .FLASH003_global_status = (uint32_t)FLASH003_IDLE," + NL + "\t .FLASH003_Blk_Cnt = (uint32_t)0," + NL + "\t .callback = {{{0,0,0,0,0},{0,0,0,0,0},0},{{0,0,0,0,0},{0,0,0,0,0},0}}" + NL + "}; " + NL + " " + NL + " " + NL + "const FLASH003_HandleType FLASH003_Handle";
  protected final String TEXT_6 = "=" + NL + "{" + NL + "\t .kFlash_Size_Actual = ";
  protected final String TEXT_7 = "U," + NL + "\t .kStart_Address = ";
  protected final String TEXT_8 = "U," + NL + "\t .kEnd_Address = ";
  protected final String TEXT_9 = "U," + NL + "\t .FlashRegsPtr = (NVM_Type*)NVM_BASE,\t " + NL + "};";
  protected final String TEXT_10 = " " + NL + " " + NL + "" + NL + "/*CODE_BLOCK_END*/";
  protected final String TEXT_11 = NL;

  public String generate(Object argument)
  {
    final StringBuffer stringBuffer = new StringBuffer();
     App2JetInterface app = (App2JetInterface) argument; 
     String AppBaseuri = "app/flash003/";
    stringBuffer.append(TEXT_1);
    stringBuffer.append( app.getAppVersion(AppBaseuri));
    stringBuffer.append(TEXT_2);
     String MappedUri = null; 
     String appInst  = null; 
    stringBuffer.append(TEXT_3);
     ArrayList<String> appsList = (ArrayList<String>)(app.getApps("app/flash003/"));
 for (String appIns : appsList ) {
 appInst = appIns.substring(appIns.lastIndexOf("/")+1);
    stringBuffer.append(TEXT_4);
    stringBuffer.append( appInst);
    stringBuffer.append(TEXT_5);
    stringBuffer.append(appInst);
    stringBuffer.append(TEXT_6);
    stringBuffer.append( app.getIntegerValue(AppBaseuri + appInst + "/flash003_erwFlashMemoryActual") );
    stringBuffer.append(TEXT_7);
    stringBuffer.append( app.getIntegerValue(AppBaseuri + appInst + "/flash003_erwStartAddress") );
    stringBuffer.append(TEXT_8);
    stringBuffer.append( app.getIntegerValue(AppBaseuri + appInst + "/flash003_erwEndAddress") );
    stringBuffer.append(TEXT_9);
    } 
    stringBuffer.append(TEXT_10);
    stringBuffer.append(TEXT_11);
    return stringBuffer.toString();
  }
}
