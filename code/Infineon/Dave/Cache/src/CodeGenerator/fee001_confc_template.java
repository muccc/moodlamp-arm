package CodeGenerator;

import java.util.*;
import com.ifx.davex.appjetinteract.App2JetInterface;

public class fee001_confc_template
{
  protected static String nl;
  public static synchronized fee001_confc_template create(String lineSeparator)
  {
    nl = lineSeparator;
    fee001_confc_template result = new fee001_confc_template();
    nl = null;
    return result;
  }

  public final String NL = nl == null ? (System.getProperties().getProperty("line.separator")) : nl;
  protected final String TEXT_1 = "/*CODE_BLOCK_BEGIN[FEE001_Conf.c]*/" + NL + "" + NL + "/*******************************************************************************" + NL + " Copyright (c) 2013, Infineon Technologies AG                                 **" + NL + " All rights reserved.                                                         **" + NL + "                                                                              **" + NL + " Redistribution and use in source and binary forms, with or without           **" + NL + " modification,are permitted provided that the following conditions are met:   **" + NL + "                                                                              **" + NL + " *Redistributions of source code must retain the above copyright notice,      **" + NL + " this list of conditions and the following disclaimer.                        **" + NL + " *Redistributions in binary form must reproduce the above copyright notice,   **" + NL + " this list of conditions and the following disclaimer in the documentation    **" + NL + " and/or other materials provided with the distribution.                       **" + NL + " *Neither the name of the copyright holders nor the names of its contributors **" + NL + " may be used to endorse or promote products derived from this software without** " + NL + " specific prior written permission.                                           **" + NL + "                                                                              **" + NL + " THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS \"AS IS\"  **" + NL + " AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE    **" + NL + " IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE   **" + NL + " ARE  DISCLAIMED. IN NO EVENT SHALL THE COPYRIGHT HOLDER OR CONTRIBUTORS BE   **" + NL + " LIABLE  FOR ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR         **" + NL + " CONSEQUENTIAL DAMAGES (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF         **" + NL + " SUBSTITUTE GOODS OR  SERVICES; LOSS OF USE, DATA, OR PROFITS; OR BUSINESS    **" + NL + " INTERRUPTION) HOWEVER CAUSED AND ON ANY THEORY OF LIABILITY, WHETHER IN      **" + NL + " CONTRACT, STRICT LIABILITY,OR TORT (INCLUDING NEGLIGENCE OR OTHERWISE)       **" + NL + " ARISING IN ANY WAY OUT OF THE USE OF THIS SOFTWARE, EVEN IF ADVISED OF THE   **" + NL + " POSSIBILITY OF SUCH DAMAGE.                                                  **" + NL + "                                                                              **" + NL + " To improve the quality of the software, users are encouraged to share        **" + NL + " modifications, enhancements or bug fixes with Infineon Technologies AG       **" + NL + " dave@infineon.com).                                                          **" + NL + "                                                                              **" + NL + "********************************************************************************" + NL + "**                                                                            **" + NL + "**                                                                            **" + NL + "** PLATFORM : Infineon XMC1000 Series                                         **" + NL + "**                                                                            **" + NL + "** COMPILER : Compiler Independent                                            **" + NL + "**                                                                            **" + NL + "** AUTHOR   : App Developer                                                   **" + NL + "**                                                                            **" + NL + "** MAY BE CHANGED BY USER [Yes/No]: Yes                                       **" + NL + "**                                                                            **" + NL + "** MODIFICATION DATE : Nov  15, 2013                                          **" + NL + "**                                                                            **" + NL + "*******************************************************************************/" + NL + "/* Revision History" + NL + " *****************************************************************************" + NL + "** Date      Version    Dev    Remarks" + NL + "**" + NL + "** V1.0.0    15-11-13   JBT    Initial Version" + NL + "**" + NL + "*******************************************************************************/" + NL + "" + NL + "/**" + NL + " * @file   FEE001_Conf.c" + NL + " * " + NL + " *" + NL + " * @brief  Configuration file generated based on UI settings" + NL + " *         of FEE001 App" + NL + " *" + NL + " */" + NL + "" + NL + "/*******************************************************************************" + NL + " ** INCLUDE FILES                                                             **" + NL + " ******************************************************************************/" + NL + "#include \"../../inc/FEE001/FEE001.h\"" + NL + "" + NL + "/* FEE Global State Data type structure declaration */" + NL + "FEE001_StateDataType  FEE001_StateVar;" + NL;
  protected final String TEXT_2 = NL;
  protected final String TEXT_3 = NL + NL + "/**" + NL + "*  User defined Data Block configurations " + NL + "*/ " + NL + "const FEE001_BlockType FEE001_BlockConfig";
  protected final String TEXT_4 = "[] =" + NL + "{" + NL + "\t";
  protected final String TEXT_5 = NL + "\t{" + NL + "\t\t" + NL + "\t\t ";
  protected final String TEXT_6 = "U,   /* BlockID1 Number*/" + NL + "\t     ";
  protected final String TEXT_7 = "U  /* BlockID1 Size in Bytes*/\t\t" + NL + "\t";
  protected final String TEXT_8 = NL + "\t}," + NL + "\t{" + NL + "\t \t ";
  protected final String TEXT_9 = "U,   /* BlockID2 Number*/" + NL + "\t     ";
  protected final String TEXT_10 = "U  /* BlockID2 Size in Bytes*/" + NL + "\t";
  protected final String TEXT_11 = NL + "\t}," + NL + "\t{" + NL + "\t     ";
  protected final String TEXT_12 = "U,   /* BlockID3 Number*/" + NL + "\t     ";
  protected final String TEXT_13 = "U  /* BlockID3 Size in Bytes*/" + NL + "\t";
  protected final String TEXT_14 = NL + "\t}," + NL + "\t{" + NL + "\t     ";
  protected final String TEXT_15 = "U,   /* BlockID4 Number*/" + NL + "\t     ";
  protected final String TEXT_16 = "U  /* BlockID4 Size in Bytes*/" + NL + "\t";
  protected final String TEXT_17 = NL + " \t}," + NL + " \t{\t" + NL + "\t     ";
  protected final String TEXT_18 = "U,   /* BlockID5 Number*/" + NL + "\t     ";
  protected final String TEXT_19 = "U  /* BlockID5 Size in Bytes*/" + NL + " \t";
  protected final String TEXT_20 = NL + "  \t}," + NL + "  \t{" + NL + "\t     ";
  protected final String TEXT_21 = "U,   /* BlockID6 Number*/" + NL + "\t     ";
  protected final String TEXT_22 = "U  /* BlockID6 Size in Bytes*/" + NL + "\t";
  protected final String TEXT_23 = NL + " \t}," + NL + " \t{" + NL + "\t" + NL + "\t     ";
  protected final String TEXT_24 = "U,   /* BlockID7 Number*/" + NL + "\t     ";
  protected final String TEXT_25 = "U  /* BlockID7 Size in Bytes*/" + NL + "\t";
  protected final String TEXT_26 = NL + " \t}," + NL + " \t{" + NL + "" + NL + "\t     ";
  protected final String TEXT_27 = "U,   /* BlockID8 Number*/" + NL + "\t     ";
  protected final String TEXT_28 = "U  /* BlockID8 Size in Bytes*/" + NL + "\t";
  protected final String TEXT_29 = NL + " \t}," + NL + " \t{" + NL + "" + NL + " \t\t ";
  protected final String TEXT_30 = "U,   /* BlockID9 Number*/" + NL + " \t\t ";
  protected final String TEXT_31 = "U  /* BlockID9 Size in Bytes*/" + NL + "\t";
  protected final String TEXT_32 = NL + " \t}," + NL + " \t{" + NL + " \t\t ";
  protected final String TEXT_33 = "U,   /* BlockID10 Number*/" + NL + " \t\t ";
  protected final String TEXT_34 = "U  /* BlockID10 Size in Bytes*/" + NL + "\t";
  protected final String TEXT_35 = NL + " \t}" + NL + "};" + NL + " " + NL + " /*" + NL + " *  FEE handle structure definition " + NL + " */  " + NL + "const FEE001_HandleType FEE001_Handle";
  protected final String TEXT_36 = "=" + NL + "{" + NL + "     /* Fee State Data Structure  */" + NL + "\t .FeeStatePtr = &FEE001_StateVar," + NL + "\t\t\t " + NL + "     /* Pointer to logical block configurations  */" + NL + "     .FeeBlockConfigPtr = (FEE001_BlockType *)&FEE001_BlockConfig";
  protected final String TEXT_37 = "," + NL + "     " + NL + "     /* Number of blocks configured  */" + NL + "     .FeeBlkCnt = ";
  protected final String TEXT_38 = "U," + NL + "     " + NL + "\t /* EraseAllEnable feature is ON/OFF */" + NL + "     .FeeEraseAllEnable = ";
  protected final String TEXT_39 = "U, " + NL + "\t " + NL + "\t /* Block CRC feature is ON/OFF */" + NL + "     .FeeDataBlockCRCEnable = ";
  protected final String TEXT_40 = "U," + NL + "\t " + NL + "\t /* Disable GC start on Write Request is ON/OFF */" + NL + "     .FeeDisableGCStart = ";
  protected final String TEXT_41 = "U," + NL + "\t " + NL + "\t /* Enable strict compare after every Write operation is ON/OFF */" + NL + "\t .FeeCompareOnWrite = ";
  protected final String TEXT_42 = "U" + NL + "};" + NL + "" + NL + "/* Defining Configuration pointer to the FEE User Handle structure*/ " + NL + "FEE001_HandlePtrType FEE001_CfgPtr = (FEE001_HandlePtrType)&FEE001_Handle";
  protected final String TEXT_43 = "; " + NL + " ";
  protected final String TEXT_44 = " " + NL + " " + NL + "" + NL + "/*CODE_BLOCK_END*/";
  protected final String TEXT_45 = NL;

  public String generate(Object argument)
  {
    final StringBuffer stringBuffer = new StringBuffer();
     App2JetInterface app = (App2JetInterface) argument; 
     String AppBaseuri = "app/fee001/";
    stringBuffer.append(TEXT_1);
     String MappedUri = null; 
     String appInst  = null; 
    stringBuffer.append(TEXT_2);
     ArrayList<String> appsList = (ArrayList<String>)(app.getApps("app/fee001/"));
 for (String appIns : appsList ) {
 appInst = appIns.substring(appIns.lastIndexOf("/")+1);
    stringBuffer.append(TEXT_3);
    stringBuffer.append(appInst);
    stringBuffer.append(TEXT_4);
    if( app.getIntegerValue(AppBaseuri + appInst + "/fee001_erwMaximumBlocksRequired") >0){
    stringBuffer.append(TEXT_5);
    stringBuffer.append( app.getIntegerValue(AppBaseuri + appInst + "/fee001_erwBlockId1") );
    stringBuffer.append(TEXT_6);
    stringBuffer.append( app.getIntegerValue(AppBaseuri + appInst + "/fee001_erwBlockSize1") );
    stringBuffer.append(TEXT_7);
    if( app.getIntegerValue(AppBaseuri + appInst + "/fee001_erwMaximumBlocksRequired") >1){
    stringBuffer.append(TEXT_8);
    stringBuffer.append( app.getIntegerValue(AppBaseuri + appInst + "/fee001_erwBlockId2") );
    stringBuffer.append(TEXT_9);
    stringBuffer.append( app.getIntegerValue(AppBaseuri + appInst + "/fee001_erwBlockSize2") );
    stringBuffer.append(TEXT_10);
    if( app.getIntegerValue(AppBaseuri + appInst + "/fee001_erwMaximumBlocksRequired") >2){
    stringBuffer.append(TEXT_11);
    stringBuffer.append( app.getIntegerValue(AppBaseuri + appInst + "/fee001_erwBlockId3") );
    stringBuffer.append(TEXT_12);
    stringBuffer.append( app.getIntegerValue(AppBaseuri + appInst + "/fee001_erwBlockSize3") );
    stringBuffer.append(TEXT_13);
    if( app.getIntegerValue(AppBaseuri + appInst + "/fee001_erwMaximumBlocksRequired") >3){
    stringBuffer.append(TEXT_14);
    stringBuffer.append( app.getIntegerValue(AppBaseuri + appInst + "/fee001_erwBlockId4") );
    stringBuffer.append(TEXT_15);
    stringBuffer.append( app.getIntegerValue(AppBaseuri + appInst + "/fee001_erwBlockSize4") );
    stringBuffer.append(TEXT_16);
    if( app.getIntegerValue(AppBaseuri + appInst + "/fee001_erwMaximumBlocksRequired") >4){
    stringBuffer.append(TEXT_17);
    stringBuffer.append( app.getIntegerValue(AppBaseuri + appInst + "/fee001_erwBlockId5") );
    stringBuffer.append(TEXT_18);
    stringBuffer.append( app.getIntegerValue(AppBaseuri + appInst + "/fee001_erwBlockSize5") );
    stringBuffer.append(TEXT_19);
    if( app.getIntegerValue(AppBaseuri + appInst + "/fee001_erwMaximumBlocksRequired") >5){
    stringBuffer.append(TEXT_20);
    stringBuffer.append( app.getIntegerValue(AppBaseuri + appInst + "/fee001_erwBlockId6") );
    stringBuffer.append(TEXT_21);
    stringBuffer.append( app.getIntegerValue(AppBaseuri + appInst + "/fee001_erwBlockSize6") );
    stringBuffer.append(TEXT_22);
    if( app.getIntegerValue(AppBaseuri + appInst + "/fee001_erwMaximumBlocksRequired") >6){
    stringBuffer.append(TEXT_23);
    stringBuffer.append( app.getIntegerValue(AppBaseuri + appInst + "/fee001_erwBlockId7") );
    stringBuffer.append(TEXT_24);
    stringBuffer.append( app.getIntegerValue(AppBaseuri + appInst + "/fee001_erwBlockSize7") );
    stringBuffer.append(TEXT_25);
    if( app.getIntegerValue(AppBaseuri + appInst + "/fee001_erwMaximumBlocksRequired") >7){
    stringBuffer.append(TEXT_26);
    stringBuffer.append( app.getIntegerValue(AppBaseuri + appInst + "/fee001_erwBlockId8") );
    stringBuffer.append(TEXT_27);
    stringBuffer.append( app.getIntegerValue(AppBaseuri + appInst + "/fee001_erwBlockSize8") );
    stringBuffer.append(TEXT_28);
    if( app.getIntegerValue(AppBaseuri + appInst + "/fee001_erwMaximumBlocksRequired") >8){
    stringBuffer.append(TEXT_29);
    stringBuffer.append( app.getIntegerValue(AppBaseuri + appInst + "/fee001_erwBlockId9") );
    stringBuffer.append(TEXT_30);
    stringBuffer.append( app.getIntegerValue(AppBaseuri + appInst + "/fee001_erwBlockSize9") );
    stringBuffer.append(TEXT_31);
    if( app.getIntegerValue(AppBaseuri + appInst + "/fee001_erwMaximumBlocksRequired") >9){
    stringBuffer.append(TEXT_32);
    stringBuffer.append( app.getIntegerValue(AppBaseuri + appInst + "/fee001_erwBlockId10") );
    stringBuffer.append(TEXT_33);
    stringBuffer.append( app.getIntegerValue(AppBaseuri + appInst + "/fee001_erwBlockSize10") );
    stringBuffer.append(TEXT_34);
    }}}}}}}}}}
    stringBuffer.append(TEXT_35);
    stringBuffer.append(appInst);
    stringBuffer.append(TEXT_36);
    stringBuffer.append(appInst);
    stringBuffer.append(TEXT_37);
    stringBuffer.append( app.getIntegerValue(AppBaseuri + appInst + "/fee001_erwMaximumBlocksRequired") );
    stringBuffer.append(TEXT_38);
    stringBuffer.append( app.getIntegerValue(AppBaseuri + appInst + "/fee001_erwEraseAllEnable/0") );
    stringBuffer.append(TEXT_39);
    stringBuffer.append( app.getIntegerValue(AppBaseuri + appInst + "/fee001_erwBlockCRCEnable/0") );
    stringBuffer.append(TEXT_40);
    stringBuffer.append( app.getIntegerValue(AppBaseuri + appInst + "/fee001_erwDisableGCStart/0") );
    stringBuffer.append(TEXT_41);
    stringBuffer.append( app.getIntegerValue(AppBaseuri + appInst + "/fee001_erwEnableStrictWriteCompare/0") );
    stringBuffer.append(TEXT_42);
    stringBuffer.append(appInst);
    stringBuffer.append(TEXT_43);
    } 
    stringBuffer.append(TEXT_44);
    stringBuffer.append(TEXT_45);
    return stringBuffer.toString();
  }
}
