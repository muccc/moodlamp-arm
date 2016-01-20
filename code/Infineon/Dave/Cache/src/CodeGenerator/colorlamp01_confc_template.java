package CodeGenerator;

import java.util.*;
import com.ifx.davex.appjetinteract.App2JetInterface;

public class colorlamp01_confc_template
{
  protected static String nl;
  public static synchronized colorlamp01_confc_template create(String lineSeparator)
  {
    nl = lineSeparator;
    colorlamp01_confc_template result = new colorlamp01_confc_template();
    nl = null;
    return result;
  }

  public final String NL = nl == null ? (System.getProperties().getProperty("line.separator")) : nl;
  protected final String TEXT_1 = NL + "/*CODE_BLOCK_BEGIN[COLORLAMP01_Conf.c]*/" + NL + "" + NL + "/*******************************************************************************" + NL + " Copyright (c) 2013, Infineon Technologies AG                                 **" + NL + " All rights reserved.                                                         **" + NL + "                                                                              **" + NL + " Redistribution and use in source and binary forms, with or without           **" + NL + " modification,are permitted provided that the following conditions are met:   **" + NL + "                                                                              **" + NL + " *Redistributions of source code must retain the above copyright notice,      **" + NL + " this list of conditions and the following disclaimer.                        **" + NL + " *Redistributions in binary form must reproduce the above copyright notice,   **" + NL + " this list of conditions and the following disclaimer in the documentation    **" + NL + " and/or other materials provided with the distribution.                       **" + NL + " *Neither the name of the copyright holders nor the names of its contributors **" + NL + " may be used to endorse or promote products derived from this software without**" + NL + " specific prior written permission.                                           **" + NL + "                                                                              **" + NL + " THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS \"AS IS\"  **" + NL + " AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE    **" + NL + " IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE   **" + NL + " ARE  DISCLAIMED. IN NO EVENT SHALL THE COPYRIGHT HOLDER OR CONTRIBUTORS BE   **" + NL + " LIABLE  FOR ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR         **" + NL + " CONSEQUENTIAL DAMAGES (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF         **" + NL + " SUBSTITUTE GOODS OR  SERVICES; LOSS OF USE, DATA, OR PROFITS; OR BUSINESS    **" + NL + " INTERRUPTION) HOWEVER CAUSED AND ON ANY THEORY OF LIABILITY, WHETHER IN      **" + NL + " CONTRACT, STRICT LIABILITY,OR TORT (INCLUDING NEGLIGENCE OR OTHERWISE)       **" + NL + " ARISING IN ANY WAY OUT OF THE USE OF THIS SOFTWARE, EVEN IF ADVISED OF THE   **" + NL + " POSSIBILITY OF SUCH DAMAGE.                                                  **" + NL + "                                                                              **" + NL + " To improve the quality of the software, users are encouraged to share        **" + NL + " modifications, enhancements or bug fixes with Infineon Technologies AG       **" + NL + " dave@infineon.com).                                                          **" + NL + "                                                                              **" + NL + "********************************************************************************" + NL + "**                                                                            **" + NL + "**                                                                            **" + NL + "** PLATFORM : Infineon XMC1000 Series                                         **" + NL + "**                                                                            **" + NL + "** COMPILER : Compiler Independent                                            **" + NL + "**                                                                            **" + NL + "** AUTHOR   : App Developer                                                   **" + NL + "**                                                                            **" + NL + "** MAY BE CHANGED BY USER [yes/no]: Yes                                       **" + NL + "**                                                                            **" + NL + "** MODIFICATION DATE : Dec 06, 2013                                           **" + NL + "**                                                                            **" + NL + "*******************************************************************************/" + NL + "" + NL + "/*******************************************************************************" + NL + "**                       Author(s) Identity                                   **" + NL + "********************************************************************************" + NL + "**                                                                            **" + NL + "** Initials     Name                                                          **" + NL + "** ---------------------------------------------------------------------------**" + NL + "** ES          App Developer                                 \t\t          **" + NL + "*******************************************************************************/" + NL + "/**" + NL + " * @file  COLORLAMP01_Conf.c" + NL + " * @brief This file contains the Handles or the generated configuration for the " + NL + " * App." + NL + " */" + NL + "/*" + NL + " * Revision History" + NL + " * 14 Feb  2013 v1.0.0  Initial Version." + NL + " * 03 Apr  2013 v1.0.2  UTP AI00164659: unable to compile the code w Global " + NL + " *                      Dimming configuration is fixed." + NL + " * 26 Sep  2013 v1.0.4  Added support for XMC1202 device." + NL + " * 06 Dec  2013 v1.0.5  Changes related to LIGHTINGSYS01 has taken care." + NL + " */" + NL + "" + NL + "#include <DAVE3.h>" + NL;
  protected final String TEXT_2 = NL + NL + "const COLORLAMP01_ConfigHandleType  COLORLAMP01_ConfigHandle";
  protected final String TEXT_3 = " =" + NL + "{";
  protected final String TEXT_4 = NL + "  .ChannelRed = &BCCUCH01_Handle";
  protected final String TEXT_5 = ",";
  protected final String TEXT_6 = NL + "  .ChannelRed = NULL,";
  protected final String TEXT_7 = NL + "  .ChannelGreen = &BCCUCH01_Handle";
  protected final String TEXT_8 = ",";
  protected final String TEXT_9 = NL + "  .ChannelGreen = NULL,";
  protected final String TEXT_10 = NL + "  .ChannelBlue = &BCCUCH01_Handle";
  protected final String TEXT_11 = ",";
  protected final String TEXT_12 = NL + "  .ChannelBlue = NULL,";
  protected final String TEXT_13 = NL + "  .ChannelWhite = &BCCUCH01_Handle";
  protected final String TEXT_14 = ",";
  protected final String TEXT_15 = NL + "  .ChannelWhite = NULL,";
  protected final String TEXT_16 = NL + "  .ChannelAmber = &BCCUCH01_Handle";
  protected final String TEXT_17 = ",";
  protected final String TEXT_18 = NL + "  .ChannelAmber = NULL,";
  protected final String TEXT_19 = NL + "  .ChannelFree = &BCCUCH01_Handle";
  protected final String TEXT_20 = ",";
  protected final String TEXT_21 = NL + "  .ChannelFree = NULL,";
  protected final String TEXT_22 = NL + "  .ChannelMask = 0x";
  protected final String TEXT_23 = "UL,";
  protected final String TEXT_24 = NL + "#ifdef DIMAPP_USEDBY_COLORLAMP01";
  protected final String TEXT_25 = NL + "  .DimEngine = &BCCUDIM01_Handle";
  protected final String TEXT_26 = ",";
  protected final String TEXT_27 = NL + "  .DimEngine = NULL,";
  protected final String TEXT_28 = NL + "#endif";
  protected final String TEXT_29 = NL + "  .BCCUGlobal = &BCCUGlobal_Handle";
  protected final String TEXT_30 = NL + "  .BCCUGlobal = NULL,";
  protected final String TEXT_31 = NL + "};" + NL;
  protected final String TEXT_32 = NL + "//INFO: App Instance ";
  protected final String TEXT_33 = " not mapped";
  protected final String TEXT_34 = NL + NL + "/*CODE_BLOCK_END*/";
  protected final String TEXT_35 = NL;

  public String generate(Object argument)
  {
    final StringBuffer stringBuffer = new StringBuffer();
     App2JetInterface app = (App2JetInterface) argument; 
    stringBuffer.append(TEXT_1);
     String AppBaseuri = "app/colorlamp01/";
     String MappedUri = null; 
     String appInst  = null; 
     String ChanURIForDim = null; 
     String ChanMappedUri = null; 
     int ChannelMask = 0; 
     ArrayList<String> appsList = (ArrayList<String>)(app.getApps("app/colorlamp01/"));
 for (String appIns : appsList ) { 
     appInst = appIns.substring(appIns.lastIndexOf("/")+1);
     if((appInst != null) && (appInst != "")) { 
     ChannelMask = 0; 
    stringBuffer.append(TEXT_2);
    stringBuffer.append(appInst);
    stringBuffer.append(TEXT_3);
     MappedUri = app.getMappedUri(AppBaseuri + appInst + "/redlmpchapp"); 
     if((MappedUri != null) && (MappedUri != "")) { 
    stringBuffer.append(TEXT_4);
    stringBuffer.append(MappedUri.substring(MappedUri.lastIndexOf("/")+1));
    stringBuffer.append(TEXT_5);
    ChanURIForDim = MappedUri; 
    ChanMappedUri= app.getMappedUri(MappedUri + "/bccuchannelhw");
    ChannelMask |= (1 << Integer.parseInt(ChanMappedUri.substring(ChanMappedUri.lastIndexOf("/")+1))); 
     } else {
    stringBuffer.append(TEXT_6);
     }
     MappedUri = app.getMappedUri(AppBaseuri + appInst + "/greenlmpchapp"); 
     if((MappedUri != null) && (MappedUri != "")) { 
    stringBuffer.append(TEXT_7);
    stringBuffer.append(MappedUri.substring(MappedUri.lastIndexOf("/")+1));
    stringBuffer.append(TEXT_8);
    ChanURIForDim = MappedUri; 
    ChanMappedUri= app.getMappedUri(MappedUri + "/bccuchannelhw");
    ChannelMask |= (1 << Integer.parseInt(ChanMappedUri.substring(ChanMappedUri.lastIndexOf("/")+1))); 
     } else {
    stringBuffer.append(TEXT_9);
     }
     MappedUri = app.getMappedUri(AppBaseuri + appInst + "/bluelmpchapp"); 
     if((MappedUri != null) && (MappedUri != "")) { 
    stringBuffer.append(TEXT_10);
    stringBuffer.append(MappedUri.substring(MappedUri.lastIndexOf("/")+1));
    stringBuffer.append(TEXT_11);
    ChanURIForDim = MappedUri; 
    ChanMappedUri= app.getMappedUri(MappedUri + "/bccuchannelhw");
    ChannelMask |= (1 << Integer.parseInt(ChanMappedUri.substring(ChanMappedUri.lastIndexOf("/")+1))); 
     } else {
    stringBuffer.append(TEXT_12);
     }
     MappedUri = app.getMappedUri(AppBaseuri + appInst + "/whitelmpchapp"); 
     if((MappedUri != null) && (MappedUri != "")) { 
    stringBuffer.append(TEXT_13);
    stringBuffer.append(MappedUri.substring(MappedUri.lastIndexOf("/")+1));
    stringBuffer.append(TEXT_14);
    ChanURIForDim = MappedUri; 
    ChanMappedUri= app.getMappedUri(MappedUri + "/bccuchannelhw");
    ChannelMask |= (1 << Integer.parseInt(ChanMappedUri.substring(ChanMappedUri.lastIndexOf("/")+1))); 
     } else {
    stringBuffer.append(TEXT_15);
     }
     MappedUri = app.getMappedUri(AppBaseuri + appInst + "/amberlmpchapp"); 
     if((MappedUri != null) && (MappedUri != "")) { 
    stringBuffer.append(TEXT_16);
    stringBuffer.append(MappedUri.substring(MappedUri.lastIndexOf("/")+1));
    stringBuffer.append(TEXT_17);
    ChanURIForDim = MappedUri; 
    ChanMappedUri= app.getMappedUri(MappedUri + "/bccuchannelhw");
    ChannelMask |= (1 << Integer.parseInt(ChanMappedUri.substring(ChanMappedUri.lastIndexOf("/")+1))); 
     } else {
    stringBuffer.append(TEXT_18);
     }
     MappedUri = app.getMappedUri(AppBaseuri + appInst + "/freelmpchapp"); 
     if((MappedUri != null) && (MappedUri != "")) { 
    stringBuffer.append(TEXT_19);
    stringBuffer.append(MappedUri.substring(MappedUri.lastIndexOf("/")+1));
    stringBuffer.append(TEXT_20);
    ChanURIForDim = MappedUri; 
    ChanMappedUri= app.getMappedUri(MappedUri + "/bccuchannelhw");
    ChannelMask |= (1 << Integer.parseInt(ChanMappedUri.substring(ChanMappedUri.lastIndexOf("/")+1))); 
     } else {
    stringBuffer.append(TEXT_21);
     }
    stringBuffer.append(TEXT_22);
    stringBuffer.append(Integer.toHexString(ChannelMask));
    stringBuffer.append(TEXT_23);
     MappedUri = app.getMappedUri(AppBaseuri + appInst + "/dimapp"); 
    stringBuffer.append(TEXT_24);
     if((MappedUri != null) && (MappedUri != "")) { 
    stringBuffer.append(TEXT_25);
    stringBuffer.append(MappedUri.substring(MappedUri.lastIndexOf("/")+1));
    stringBuffer.append(TEXT_26);
     } else {
    stringBuffer.append(TEXT_27);
     }
    stringBuffer.append(TEXT_28);
     MappedUri = app.getMappedUri(AppBaseuri + appInst + "/globalapp"); 
     if((MappedUri != null) && (MappedUri != "")) { 
    stringBuffer.append(TEXT_29);
    stringBuffer.append(MappedUri.substring(MappedUri.lastIndexOf("/")+1));
     } else {
    stringBuffer.append(TEXT_30);
     }
    stringBuffer.append(TEXT_31);
     } 
     else { 
    stringBuffer.append(TEXT_32);
    stringBuffer.append(appInst);
    stringBuffer.append(TEXT_33);
     } 
    }
    stringBuffer.append(TEXT_34);
    stringBuffer.append(TEXT_35);
    return stringBuffer.toString();
  }
}
