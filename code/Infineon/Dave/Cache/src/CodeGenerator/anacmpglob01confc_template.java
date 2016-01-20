package CodeGenerator;

import java.util.*;
import com.ifx.davex.appjetinteract.App2JetInterface;

public class anacmpglob01confc_template
{
  protected static String nl;
  public static synchronized anacmpglob01confc_template create(String lineSeparator)
  {
    nl = lineSeparator;
    anacmpglob01confc_template result = new anacmpglob01confc_template();
    nl = null;
    return result;
  }

  public final String NL = nl == null ? (System.getProperties().getProperty("line.separator")) : nl;
  protected final String TEXT_1 = "/*CODE_BLOCK_BEGIN[ANACMPGLOB01Conf.c]*/" + NL + "" + NL + "/*******************************************************************************" + NL + " Copyright (c) 2013, Infineon Technologies AG                                 **" + NL + " All rights reserved.                                                         **" + NL + "                                                                              **" + NL + " Redistribution and use in source and binary forms, with or without           **" + NL + " modification,are permitted provided that the following conditions are met:   **" + NL + "                                                                              **" + NL + " *Redistributions of source code must retain the above copyright notice,      **" + NL + " this list of conditions and the following disclaimer.                        **" + NL + " *Redistributions in binary form must reproduce the above copyright notice,   **" + NL + " this list of conditions and the following disclaimer in the documentation    **" + NL + " and/or other materials provided with the distribution.                       **" + NL + " *Neither the name of the copyright holders nor the names of its contributors **" + NL + " may be used to endorse or promote products derived from this software without**" + NL + " specific prior written permission.                                           **" + NL + "                                                                              **" + NL + " THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS \"AS IS\"  **" + NL + " AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE    **" + NL + " IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE   **" + NL + " ARE  DISCLAIMED. IN NO EVENT SHALL THE COPYRIGHT HOLDER OR CONTRIBUTORS BE   **" + NL + " LIABLE  FOR ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR         **" + NL + " CONSEQUENTIAL DAMAGES (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF         **" + NL + " SUBSTITUTE GOODS OR  SERVICES; LOSS OF USE, DATA, OR PROFITS; OR BUSINESS    **" + NL + " INTERRUPTION) HOWEVER CAUSED AND ON ANY THEORY OF LIABILITY, WHETHER IN      **" + NL + " CONTRACT, STRICT LIABILITY,OR TORT (INCLUDING NEGLIGENCE OR OTHERWISE)       **" + NL + " ARISING IN ANY WAY OUT OF THE USE OF THIS SOFTWARE, EVEN IF ADVISED OF THE   **" + NL + " POSSIBILITY OF SUCH DAMAGE.                                                  **" + NL + "                                                                              **" + NL + " To improve the quality of the software, users are encouraged to share        **" + NL + " modifications, enhancements or bug fixes with Infineon Technologies AG       **" + NL + " dave@infineon.com).                                                          **" + NL + "                                                                              **" + NL + "********************************************************************************" + NL + "**                                                                            **" + NL + "**                                                                            **" + NL + "** PLATFORM : Infineon XMC1000 Series                           \t\t\t        **" + NL + "**                                                                            **" + NL + "** COMPILER : Compiler Independent                                            **" + NL + "**                                                                            **" + NL + "** AUTHOR : App Developer                                                     **" + NL + "**                                                                            **" + NL + "** MAY BE CHANGED BY USER [yes/Yes]: Ys                                       **" + NL + "**                                                                            **" + NL + "** MODIFICATION DATE : Sep 10, 2013                                           **" + NL + "**                                                                            **" + NL + "*******************************************************************************/" + NL + "" + NL + "/*******************************************************************************" + NL + "**                       Author(s) Identity                                   **" + NL + "********************************************************************************" + NL + "**                                                                            **" + NL + "** Initials     Name                                                          **" + NL + "** ---------------------------------------------------------------------------**" + NL + "** NL           App Developer                                                 **" + NL + "*******************************************************************************/";
  protected final String TEXT_2 = NL + "/**" + NL + " * @file  ANACMPGLOB01_Conf.c" + NL + " * @App Version ANACMPGLOB01 <";
  protected final String TEXT_3 = ">" + NL + " * @brief This file contains App parameter data as per GUI configurations" + NL + " *" + NL + " * Change History:" + NL + " * Date       version       Details" + NL + " * 25-Mar-13    1.0.6   1. Initial version" + NL + " *                      2. Two IO001 apps consumtion done for two input pins   " + NL + " *                      3. Register structure defined in anacmpglob01 app due" + NL + " *                         to XMC1000 header file update not available and" + NL + " *                         code corrected as per this structure." + NL + " *                      4. Register structure removed and Code is modified to " + NL + " *                         support updated header files." + NL + " *                      5. Help Document updated." + NL + " * 10-Sep-13    1.0.8   1. Added support for the following devices under " + NL + " *                         XMC1200 and XMC1300 Series XMC1201, XMC1202, XMC1301  " + NL + " */" + NL + " " + NL + "#include <DAVE3.h>";
  protected final String TEXT_4 = NL;
  protected final String TEXT_5 = NL + NL + "const ANACMPGLOB01_HandleType ANACMPGLOB01_Handle0 = \t" + NL + "{" + NL + "\t.Powermode =  ";
  protected final String TEXT_6 = " ANACMP01_HIGHPOWERMODE ";
  protected final String TEXT_7 = "ANACMP01_LOWPOWERMODE";
  protected final String TEXT_8 = "," + NL + "\t.ANACMPGlobRegs0Ptr = (COMPARATOR_Type*)COMPARATOR_BASE  " + NL + "};    \t         " + NL + "" + NL + "/**" + NL + " * @endcond" + NL + " */" + NL + "/*CODE_BLOCK_END*/" + NL;
  protected final String TEXT_9 = NL;

  public String generate(Object argument)
  {
    final StringBuffer stringBuffer = new StringBuffer();
     App2JetInterface app = (App2JetInterface) argument; 
    stringBuffer.append(TEXT_1);
     String AppBaseuri = "app/anacmpglob01/"; 
    stringBuffer.append(TEXT_2);
    stringBuffer.append( app.getAppVersion(AppBaseuri));
    stringBuffer.append(TEXT_3);
     String appInst  = null; 
    stringBuffer.append(TEXT_4);
     ArrayList<String> appsList = (ArrayList<String>)(app.getApps("app/anacmpglob01/"));

for (String appIns : appsList ) {
    appInst = appIns.substring(appIns.lastIndexOf("/")+1); }
    stringBuffer.append(TEXT_5);
     if((app.getIntegerValue(AppBaseuri + appInst +"/anacmp01_powermodesel")) == 0) {
    stringBuffer.append(TEXT_6);
    } else { 
    stringBuffer.append(TEXT_7);
    }
    stringBuffer.append(TEXT_8);
    stringBuffer.append(TEXT_9);
    return stringBuffer.toString();
  }
}
