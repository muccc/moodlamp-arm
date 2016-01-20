package CodeGenerator;

import java.util.*;
import com.ifx.davex.appjetinteract.App2JetInterface;

public class fee001_confh_template
{
  protected static String nl;
  public static synchronized fee001_confh_template create(String lineSeparator)
  {
    nl = lineSeparator;
    fee001_confh_template result = new fee001_confh_template();
    nl = null;
    return result;
  }

  public final String NL = nl == null ? (System.getProperties().getProperty("line.separator")) : nl;
  protected final String TEXT_1 = "/*CODE_BLOCK_BEGIN[FEE001_Conf.h]*/" + NL + "" + NL + "/*******************************************************************************" + NL + " Copyright (c) 2013, Infineon Technologies AG                                 **" + NL + " All rights reserved.                                                         **" + NL + "                                                                              **" + NL + " Redistribution and use in source and binary forms, with or without           **" + NL + " modification,are permitted provided that the following conditions are met:   **" + NL + "                                                                              **" + NL + " *Redistributions of source code must retain the above copyright notice,      **" + NL + " this list of conditions and the following disclaimer.                        **" + NL + " *Redistributions in binary form must reproduce the above copyright notice,   **" + NL + " this list of conditions and the following disclaimer in the documentation    **" + NL + " and/or other materials provided with the distribution.                       **" + NL + " *Neither the name of the copyright holders nor the names of its contributors **" + NL + " may be used to endorse or promote products derived from this software without** " + NL + " specific prior written permission.                                           **" + NL + "                                                                              **" + NL + " THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS \"AS IS\"  **" + NL + " AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE    **" + NL + " IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE   **" + NL + " ARE  DISCLAIMED. IN NO EVENT SHALL THE COPYRIGHT HOLDER OR CONTRIBUTORS BE   **" + NL + " LIABLE  FOR ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR         **" + NL + " CONSEQUENTIAL DAMAGES (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF         **" + NL + " SUBSTITUTE GOODS OR  SERVICES; LOSS OF USE, DATA, OR PROFITS; OR BUSINESS    **" + NL + " INTERRUPTION) HOWEVER CAUSED AND ON ANY THEORY OF LIABILITY, WHETHER IN      **" + NL + " CONTRACT, STRICT LIABILITY,OR TORT (INCLUDING NEGLIGENCE OR OTHERWISE)       **" + NL + " ARISING IN ANY WAY OUT OF THE USE OF THIS SOFTWARE, EVEN IF ADVISED OF THE   **" + NL + " POSSIBILITY OF SUCH DAMAGE.                                                  **" + NL + "                                                                              **" + NL + " To improve the quality of the software, users are encouraged to share        **" + NL + " modifications, enhancements or bug fixes with Infineon Technologies AG       **" + NL + " dave@infineon.com).                                                          **" + NL + "                                                                              **" + NL + "********************************************************************************" + NL + "**                                                                            **" + NL + "**                                                                            **" + NL + "** PLATFORM : Infineon XMC1000 Series                                         **" + NL + "**                                                                            **" + NL + "** COMPILER : Compiler Independent                                            **" + NL + "**                                                                            **" + NL + "** AUTHOR   : App Developer                                                   **" + NL + "**                                                                            **" + NL + "** MAY BE CHANGED BY USER [Yes/No]: Yes                                       **" + NL + "**                                                                            **" + NL + "** MODIFICATION DATE : Nov  15, 2013                                          **" + NL + "**                                                                            **" + NL + "*******************************************************************************/" + NL + "/* Revision History" + NL + " *****************************************************************************" + NL + "** Date      Version    Dev    Remarks" + NL + "**" + NL + "** V1.0.0    15-11-13   JBT    Initial Version" + NL + "**" + NL + "*******************************************************************************/" + NL + "/**" + NL + "** @file   FEE001_Conf.h" + NL + "**" + NL + "** @brief  Configuration file generated based on UI settings " + NL + "**         of FEE001 App" + NL + "**" + NL + "**/" + NL + "#ifndef FEE001_CONF_H_" + NL + "#define FEE001_CONF_H_" + NL + "" + NL + "#ifdef __cplusplus" + NL + "extern \"C\" {" + NL + "#endif" + NL;
  protected final String TEXT_2 = NL + "/*******************************************************************************" + NL + "**                      Global Symbols                                        **" + NL + "*******************************************************************************/" + NL + "/* Number of DFLASH Banks used for FEE*/" + NL + "#define FEE001_FLASH_NUMBER_OF_BANKS    (2U)" + NL + "/* Number of Bytes per Block  */" + NL + "#define FEE001_FLASH_BLOCK_SIZE         (16U)  " + NL + "/* Number of Bytes per Page  */" + NL + "#define FEE001_FLASH_PAGE_SIZE          (256U)" + NL;
  protected final String TEXT_3 = NL + "/* CRC check enabled for blocks  */" + NL + "#define  FEE001_CRC_ENABLE  1U";
  protected final String TEXT_4 = NL + "/* CRC check disabled for blocks  */" + NL + "#define  FEE001_CRC_ENABLE  0U";
  protected final String TEXT_5 = NL;
  protected final String TEXT_6 = NL + "/* Strict read after every write completion is enabled for blocks  */" + NL + "#define  FEE001_COMPARE_ON_WRITE_ENABLE  1U";
  protected final String TEXT_7 = NL + "/* Strict read after every write completion is disabled for blocks  */" + NL + "#define  FEE001_COMPARE_ON_WRITE_ENABLE  0U";
  protected final String TEXT_8 = NL + NL + "/** " + NL + "*  Flash address and Size informations as per user configuration" + NL + "*/" + NL + "#define FEE001_FLASH_TOTAL_SIZE         (";
  protected final String TEXT_9 = "U)" + NL + "#define FEE001_FLASH_BANK_SIZE          (";
  protected final String TEXT_10 = "U)" + NL + "#define FEE001_FLASH_BANK_START_ADDRESS (";
  protected final String TEXT_11 = "U)" + NL + "#define FEE001_FLASH_BANK_END_ADDRESS   (";
  protected final String TEXT_12 = "U)" + NL + "/** " + NL + "*  FEE Bank start and end addresses" + NL + "*/" + NL + "#define FEE001_DFLASH_BANK0_BASE    (0x";
  protected final String TEXT_13 = "U)" + NL + "#define FEE001_DFLASH_BANK0_END     (0x";
  protected final String TEXT_14 = "U)" + NL + "#define FEE001_DFLASH_BANK1_BASE    (0x";
  protected final String TEXT_15 = "U)" + NL + "#define FEE001_DFLASH_BANK1_END     (0x";
  protected final String TEXT_16 = "U)" + NL + "" + NL + "/* Total number of configured Data blocks */" + NL + "#define FEE001_MAX_BLOCK_COUNT      (";
  protected final String TEXT_17 = "U)" + NL + "/** " + NL + "*  Total number of pages per bank, resulting after division of banks" + NL + "*  i.e. FEE_BANK_PAGES = (FLASH_TOTAL_SIZE in Bytes / ((256 Bytes * 2 Banks)) " + NL + "*/" + NL + "#define FEE001_BANK_PAGES           (";
  protected final String TEXT_18 = "U)";
  protected final String TEXT_19 = NL + NL + "#ifdef __cplusplus" + NL + "}" + NL + "#endif" + NL + "" + NL + "#endif /* FLASH001_CONF_H_ */  " + NL + "/* CODE_BLOCK_END */";

  public String generate(Object argument)
  {
    final StringBuffer stringBuffer = new StringBuffer();
     App2JetInterface app = (App2JetInterface) argument; 
    stringBuffer.append(TEXT_1);
     String AppBaseuri = "app/fee001/";
     String MappedUri = null; 
     String appInst  = null; 
     ArrayList<String> appsList = (ArrayList<String>)(app.getApps("app/fee001/"));
for (String appIns : appsList ) {
appInst = appIns.substring(appIns.lastIndexOf("/")+1); 
    stringBuffer.append(TEXT_2);
    if((app.getIntegerValue(AppBaseuri + appInst + "/fee001_erwBlockCRCEnable/0")==1)){
    stringBuffer.append(TEXT_3);
    }else{
    stringBuffer.append(TEXT_4);
    }
    stringBuffer.append(TEXT_5);
    if((app.getIntegerValue(AppBaseuri + appInst + "/fee001_erwEnableStrictWriteCompare/0")==1)){
    stringBuffer.append(TEXT_6);
    }else{
    stringBuffer.append(TEXT_7);
    }
    stringBuffer.append(TEXT_8);
    stringBuffer.append( app.getIntegerValue(AppBaseuri + appInst + "/fee001_erwFlashMemoryActual") );
    stringBuffer.append(TEXT_9);
    stringBuffer.append( (app.getIntegerValue(AppBaseuri + appInst + "/fee001_erwFlashMemoryActual")/ 2) );
    stringBuffer.append(TEXT_10);
    stringBuffer.append( app.getIntegerValue(AppBaseuri + appInst + "/fee001_erwBank0StartAddress") );
    stringBuffer.append(TEXT_11);
    stringBuffer.append( app.getIntegerValue(AppBaseuri + appInst + "/fee001_erwBank1EndAddress") );
    stringBuffer.append(TEXT_12);
    stringBuffer.append( app.getHexValue(AppBaseuri + appInst + "/fee001_erwBank0StartAddress") );
    stringBuffer.append(TEXT_13);
    stringBuffer.append( app.getHexValue(AppBaseuri + appInst + "/fee001_erwBank0EndAddress") );
    stringBuffer.append(TEXT_14);
    stringBuffer.append( app.getHexValue(AppBaseuri + appInst + "/fee001_erwBank1StartAddress") );
    stringBuffer.append(TEXT_15);
    stringBuffer.append( app.getHexValue(AppBaseuri + appInst + "/fee001_erwBank1EndAddress") );
    stringBuffer.append(TEXT_16);
    stringBuffer.append( app.getIntegerValue(AppBaseuri + appInst + "/fee001_erwMaximumBlocksRequired") );
    stringBuffer.append(TEXT_17);
    stringBuffer.append( (app.getIntegerValue(AppBaseuri + appInst + "/fee001_erwFlashMemoryActual")/ 512) );
    stringBuffer.append(TEXT_18);
    } 
    stringBuffer.append(TEXT_19);
    return stringBuffer.toString();
  }
}
