package CodeGenerator;

import java.util.*;
import java.text.*;
import com.ifx.davex.appjetinteract.App2JetInterface;

public class bccuch01_confc_template
{
  protected static String nl;
  public static synchronized bccuch01_confc_template create(String lineSeparator)
  {
    nl = lineSeparator;
    bccuch01_confc_template result = new bccuch01_confc_template();
    nl = null;
    return result;
  }

  public final String NL = nl == null ? (System.getProperties().getProperty("line.separator")) : nl;
  protected final String TEXT_1 = NL + "/*CODE_BLOCK_BEGIN[BCCUCH01_Confc.c]*/" + NL + "/*******************************************************************************" + NL + " * @file     BCCUCH01_Conf.c" + NL + " * @brief    This file has configuration codes related to BCCUCH01 App." + NL + " * @version  V1.0.6" + NL + " * @date     3 Sep 2013" + NL + " *" + NL + " * @note" + NL + " * Copyright (C) 2012-2013 Infineon Technologies AG. All rights reserved." + NL + "" + NL + " *" + NL + " * @par" + NL + " * Infineon Technologies AG (Infineon) is supplying this software for use with " + NL + " * Infineon's microcontrollers." + NL + " *   " + NL + " * This file can be freely distributed within development tools that are " + NL + " * supporting such microcontrollers." + NL + " *  " + NL + " *" + NL + " * @par" + NL + " * THIS SOFTWARE IS PROVIDED \"AS IS\".  NO WARRANTIES, WHETHER EXPRESS, IMPLIED" + NL + " * OR STATUTORY, INCLUDING, BUT NOT LIMITED TO, IMPLIED WARRANTIES OF" + NL + " * MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE APPLY TO THIS SOFTWARE." + NL + " * INFINEON SHALL NOT, IN ANY CIRCUMSTANCES, BE LIABLE FOR SPECIAL, INCIDENTAL," + NL + " * OR CONSEQUENTIAL DAMAGES, FOR ANY REASON WHATSOEVER." + NL + " *" + NL + " ******************************************************************************/" + NL + "/**************************** Change history ***********************************" + NL + " * V1.0.0,\t14-Feb-13\t Initial Version" + NL + " * V1.0.2,\t2-Apr-13\t Enhancement: Initial Target intensity immediately upon " + NL + " *                       initialization and then update the linear walk time " + NL + " *                       (specified in GUI) is fixed" + NL + " * V1.0.4   5-Aug-2013  Configuration and Driver codes are separated." + NL + " * V1.0.6   3-Sep-2013  C++ Support extended and New SW IDs added." + NL + " * V1.0.8   9-Dec-2013  Added software control on BCCU Output control" + NL + " * *************************** Change history *********************************/" + NL + "" + NL + "#include \"../../inc/BCCUCH01/BCCUCH01.h\" " + NL;
  protected final String TEXT_2 = " ";
  protected final String TEXT_3 = " " + NL + "\t";
  protected final String TEXT_4 = " " + NL + "\t ";
  protected final String TEXT_5 = " " + NL + "\t ";
  protected final String TEXT_6 = NL + "\t ";
  protected final String TEXT_7 = " " + NL + "\t\t ";
  protected final String TEXT_8 = "\t ";
  protected final String TEXT_9 = NL;
  protected final String TEXT_10 = NL + NL + "    " + NL + "    ";
  protected final String TEXT_11 = NL + "    ";
  protected final String TEXT_12 = NL + "    ";
  protected final String TEXT_13 = NL;
  protected final String TEXT_14 = " ";
  protected final String TEXT_15 = " ";
  protected final String TEXT_16 = " ";
  protected final String TEXT_17 = NL;
  protected final String TEXT_18 = NL + "    ";
  protected final String TEXT_19 = NL + "    " + NL + "const BCCUCH01_HandleType  BCCUCH01_Handle";
  protected final String TEXT_20 = " =" + NL + "{" + NL + "    .BCCURegs = BCCU0,\t" + NL + "    .BCCU_CH = BCCU0_CH";
  protected final String TEXT_21 = ",\t" + NL + "    .ChNum = ";
  protected final String TEXT_22 = "U,\t" + NL + "    .IOCR_ptr = PORT";
  protected final String TEXT_23 = "_BASE,\t/* Location of IOCR Register */" + NL + "    .port_num = ";
  protected final String TEXT_24 = ", /* Port number */" + NL + "    .pin = ";
  protected final String TEXT_25 = ", \t/* Pin Number */" + NL + "    " + NL + "    .IOCR_Val = PORT";
  protected final String TEXT_26 = "_IOCR";
  protected final String TEXT_27 = "_PC";
  protected final String TEXT_28 = "_Pos,  /* Value to be written to IOCR Register */" + NL + "    .op_en =  ";
  protected final String TEXT_29 = "1U ";
  protected final String TEXT_30 = "0U ";
  protected final String TEXT_31 = ", /* Output Enable: 0-Disable, 1-Enable */" + NL + "    .pad_char = ";
  protected final String TEXT_32 = "1U ";
  protected final String TEXT_33 = "0U ";
  protected final String TEXT_34 = ",  /* Pad characteristic; 0-Push pull, 1-OpenDrain */" + NL + "    .IOCR_offset = ";
  protected final String TEXT_35 = "," + NL + "    .LinPres=";
  protected final String TEXT_36 = "U," + NL + "    .InitialIntensity = ";
  protected final String TEXT_37 = "U," + NL + "    .DimmingSrcBypass = ";
  protected final String TEXT_38 = "BCCUCH01_DE_BYPASS,";
  protected final String TEXT_39 = "BCCUCH01_DE_NOT_BYPASS,";
  protected final String TEXT_40 = "\t" + NL + "    .GateEnable = ";
  protected final String TEXT_41 = "BCCUCH01_GATING_FN_EN,";
  protected final String TEXT_42 = "BCCUCH01_GATING_FN_DS,";
  protected final String TEXT_43 = " " + NL + "    .FlickerWDGEnable = ";
  protected final String TEXT_44 = "BCCUCH01_FLICKER_WDT_EN,";
  protected final String TEXT_45 = "BCCUCH01_FLICKER_WDT_DS,";
  protected final String TEXT_46 = NL + "    .EnableAtInit = ";
  protected final String TEXT_47 = "BCCUCH01_ENABLE_AT_INIT,";
  protected final String TEXT_48 = "BCCUCH01_DISABLE_AT_INIT,";
  protected final String TEXT_49 = "\t" + NL + "    .OpPassiveLvl = ";
  protected final String TEXT_50 = "BCCUCH01_ACTIVE_LOW,";
  protected final String TEXT_51 = "BCCUCH01_ACTIVE_HIGH,";
  protected final String TEXT_52 = NL + "    .TrapEnable = ";
  protected final String TEXT_53 = "BCCUCH01_TRAP_EN,";
  protected final String TEXT_54 = "BCCUCH01_TRAP_DS,";
  protected final String TEXT_55 = NL + "    .TrigEnable = ";
  protected final String TEXT_56 = "BCCUCH01_TRIGGER_EN,";
  protected final String TEXT_57 = "BCCUCH01_TRIGGER_DS,";
  protected final String TEXT_58 = "\t" + NL + "    .TrigSel =  ";
  protected final String TEXT_59 = "BCCUCH01_TRIG_OUT1,";
  protected final String TEXT_60 = "BCCUCH01_TRIG_OUT0,";
  protected final String TEXT_61 = NL + "    .TrigEdgeSel = ";
  protected final String TEXT_62 = "BCCUCH01_TRG_NGT_EDG,";
  protected final String TEXT_63 = "BCCUCH01_TRG_PST_EDG,";
  protected final String TEXT_64 = "\t" + NL + "    .ForceTrigger = ";
  protected final String TEXT_65 = "BCCUCH01_FORCED_TRG_DS";
  protected final String TEXT_66 = "BCCUCH01_FORCED_TRG_EN";
  protected final String TEXT_67 = ",";
  protected final String TEXT_68 = "BCCUCH01_FORCED_TRG_DS,";
  protected final String TEXT_69 = " " + NL + "    .PackerEnable =";
  protected final String TEXT_70 = "BCCUCH01_PACKER_EN,";
  protected final String TEXT_71 = "BCCUCH01_PACKER_DS,";
  protected final String TEXT_72 = " " + NL + "    .PackerThreshold = ";
  protected final String TEXT_73 = "U," + NL + "    .PackerONCmpLevel = ";
  protected final String TEXT_74 = "U," + NL + "    .PackerOFFCmpLevel =";
  protected final String TEXT_75 = "U," + NL + "    .PackerONTimeCntrAtInit =";
  protected final String TEXT_76 = "U," + NL + "    .PackerOFFTimeCntrAtInit =";
  protected final String TEXT_77 = "U,\t" + NL + "};";
  protected final String TEXT_78 = NL + NL + NL + "const BCCUCH01_HandleType * BCCUCH01_HandleArr[BCCUCH01_NUM_INSTANCES] =" + NL + "{";
  protected final String TEXT_79 = " ";
  protected final String TEXT_80 = NL + "   &BCCUCH01_Handle";
  protected final String TEXT_81 = ",";
  protected final String TEXT_82 = " ";
  protected final String TEXT_83 = NL + "};" + NL + "" + NL + "" + NL + "/**" + NL + "  * @}" + NL + "  */" + NL + " /*CODE_BLOCK_END*/" + NL + NL + NL + NL + NL + NL + NL + NL + NL + NL + NL + NL + NL + NL + NL + NL + NL + NL + NL;
  protected final String TEXT_84 = NL;

  public String generate(Object argument)
  {
    final StringBuffer stringBuffer = new StringBuffer();
     App2JetInterface app = (App2JetInterface) argument; 
     String AppBaseuri = "app/bccuch01/"; 
     String appInst  = null; 
    stringBuffer.append(TEXT_1);
     ArrayList<String> appsList = (ArrayList<String>)(app.getApps("app/bccuch01/"));
for (String appIns : appsList ) {
 appInst = appIns.substring(appIns.lastIndexOf("/")+1);
    stringBuffer.append(TEXT_2);
     String bccuchannelnumuri = null; 
     String channelNo = null; 
     String bccudimappuri = null; 
     String bccudimengineappuri = null; 
     String dimengineNo = null; 
     bccuchannelnumuri = app.getMappedUri(AppBaseuri + appInst + "/bccuchannelhw"); 
     channelNo = bccuchannelnumuri.substring(bccuchannelnumuri.lastIndexOf("/")+1); 
     int dummy = 0; 
     int dummy1 = 0; 
    if((app.getIntegerValue(AppBaseuri + appInst +"/bccuch_de_slelect")) == 1){
    stringBuffer.append(TEXT_3);
     bccudimappuri = app.getMappedUri(AppBaseuri + appInst + "/bccudimapp"); 
    stringBuffer.append(TEXT_4);
     bccudimengineappuri=app.getMappedUri (bccudimappuri+ "/bccudimhw");
    stringBuffer.append(TEXT_5);
     dimengineNo = bccudimengineappuri.substring(bccudimengineappuri.lastIndexOf("/")+1); 
    stringBuffer.append(TEXT_6);
    dummy=1;
    } else{
    dummy=0;
    }
    if((app.getIntegerValue(AppBaseuri + appInst +"/bccuch_pen")) == 1){
    stringBuffer.append(TEXT_7);
    dummy1=1;
    } else{
    dummy1=0;
    }
    stringBuffer.append(TEXT_8);
    String port_string = null; 
    String PORT = "0"; 
    String PIN = "0"; 
    stringBuffer.append(TEXT_9);
     int pin = 0; 
     int offset = 0; 
     int pc = 0; 
    stringBuffer.append(TEXT_10);
    if((app.getIntegerValue(AppBaseuri + appInst +"/bccuch01_erwdirectoutputpadenable")) == 1 ){
    stringBuffer.append(TEXT_11);
     port_string = app.getMappedUri(AppBaseuri + appInst + "/iohw"); 
     PORT = port_string.substring(port_string.indexOf("port/p/") + 7,port_string.indexOf("/pad/")); 
     PIN = port_string.substring(port_string.lastIndexOf("/")+1); 
    stringBuffer.append(TEXT_12);
     pin = Integer.parseInt(PIN); 
     offset = 0; 
     pc = 0; 
    stringBuffer.append(TEXT_13);
     if(pin < 4) 
     { offset = 0x00000010; pc = 0; 
    stringBuffer.append(TEXT_14);
     } else  if(pin < 8){ offset = 0x00000014; pc = 4; 
     } else  if(pin < 12){ offset = 0x00000018; pc = 8;
    stringBuffer.append(TEXT_15);
     } else  { offset = 0x00000018; pc = 12;
    stringBuffer.append(TEXT_16);
     } 
    stringBuffer.append(TEXT_17);
    }
    else
    {
    stringBuffer.append(TEXT_18);
    }
    stringBuffer.append(TEXT_19);
    stringBuffer.append(appInst);
    stringBuffer.append(TEXT_20);
    stringBuffer.append(channelNo);
    stringBuffer.append(TEXT_21);
    stringBuffer.append(channelNo);
    stringBuffer.append(TEXT_22);
    stringBuffer.append( PORT);
    stringBuffer.append(TEXT_23);
    stringBuffer.append( PORT );
    stringBuffer.append(TEXT_24);
    stringBuffer.append( PIN );
    stringBuffer.append(TEXT_25);
    stringBuffer.append(PORT);
    stringBuffer.append(TEXT_26);
    stringBuffer.append(pc);
    stringBuffer.append(TEXT_27);
    stringBuffer.append(pin);
    stringBuffer.append(TEXT_28);
    if((app.getIntegerValue(AppBaseuri + appInst +"/bccuch01_erwdirectoutputpadenable")) == 1 ){
    stringBuffer.append(TEXT_29);
    } else{
    stringBuffer.append(TEXT_30);
    }
    stringBuffer.append(TEXT_31);
    if((app.getIntegerValue(AppBaseuri + appInst +"/bccuch01_erwdirectoutputpadchar")) == 1 ){
    stringBuffer.append(TEXT_32);
    } else{
    stringBuffer.append(TEXT_33);
    }
    stringBuffer.append(TEXT_34);
    stringBuffer.append( offset );
    stringBuffer.append(TEXT_35);
    stringBuffer.append(app.getIntegerValue (AppBaseuri + appInst + "/bccuchannelhw/chconfig/linpres" ));
    stringBuffer.append(TEXT_36);
    stringBuffer.append(app.getIntegerValue (AppBaseuri + appInst + "/bccuch_ints_tchint" ));
    stringBuffer.append(TEXT_37);
    if((app.getIntegerValue(AppBaseuri + appInst +"/bccuch_dbp")) == 1){
    stringBuffer.append(TEXT_38);
    } else{
    stringBuffer.append(TEXT_39);
    }
    stringBuffer.append(TEXT_40);
    if((app.getIntegerValue(AppBaseuri + appInst +"/bccuch_gen")) == 1){
    stringBuffer.append(TEXT_41);
    } else{
    stringBuffer.append(TEXT_42);
    }
    stringBuffer.append(TEXT_43);
    if((app.getIntegerValue(AppBaseuri + appInst +"/bccuch_wen")) == 1){
    stringBuffer.append(TEXT_44);
    } else{
    stringBuffer.append(TEXT_45);
    }
    stringBuffer.append(TEXT_46);
    if((app.getIntegerValue(AppBaseuri + appInst +"/enable_at_init")) == 1){
    stringBuffer.append(TEXT_47);
    } else{
    stringBuffer.append(TEXT_48);
    }
    stringBuffer.append(TEXT_49);
    if((app.getIntegerValue(AppBaseuri + appInst +"/bccuch_chop_slelect")) == 1){
    stringBuffer.append(TEXT_50);
    } else{
    stringBuffer.append(TEXT_51);
    }
    stringBuffer.append(TEXT_52);
    if((app.getIntegerValue(AppBaseuri + appInst +"/bccuch_chocon_chtpe")) == 1){
    stringBuffer.append(TEXT_53);
    } else{
    stringBuffer.append(TEXT_54);
    }
    stringBuffer.append(TEXT_55);
    if((app.getIntegerValue(AppBaseuri + appInst +"/bccuch_chtrig_ety")) == 1){
    stringBuffer.append(TEXT_56);
    } else{
    stringBuffer.append(TEXT_57);
    }
    stringBuffer.append(TEXT_58);
    if((app.getIntegerValue(AppBaseuri + appInst +"/bccuch_chtrig_tos")) == 1){
    stringBuffer.append(TEXT_59);
    } else{
    stringBuffer.append(TEXT_60);
    }
    stringBuffer.append(TEXT_61);
    if((app.getIntegerValue(AppBaseuri + appInst +"/bccuch_tred_slelect")) == 1){
    stringBuffer.append(TEXT_62);
    } else{
    stringBuffer.append(TEXT_63);
    }
    stringBuffer.append(TEXT_64);
    if((app.getIntegerValue(AppBaseuri + appInst +"/bccuch_enft")) == 1){
    if(dummy1 == 1){
    stringBuffer.append(TEXT_65);
    } else{
    stringBuffer.append(TEXT_66);
    }
    stringBuffer.append(TEXT_67);
    } else{
    stringBuffer.append(TEXT_68);
    }
    stringBuffer.append(TEXT_69);
    if((app.getIntegerValue(AppBaseuri + appInst +"/bccuch_pen")) == 1){
    stringBuffer.append(TEXT_70);
    } else{
    stringBuffer.append(TEXT_71);
    }
    stringBuffer.append(TEXT_72);
    stringBuffer.append(app.getIntegerValue (AppBaseuri + appInst + "/bccuch_chconfig_pkth" ));
    stringBuffer.append(TEXT_73);
    stringBuffer.append(app.getIntegerValue (AppBaseuri + appInst + "/bccuch_pkcmp_oncmp" ));
    stringBuffer.append(TEXT_74);
    stringBuffer.append(app.getIntegerValue (AppBaseuri + appInst + "/bccuch_pkcmp_offcmp" ));
    stringBuffer.append(TEXT_75);
    stringBuffer.append(app.getIntegerValue (AppBaseuri + appInst + "/bccuch_pkcmp_oncntval" ));
    stringBuffer.append(TEXT_76);
    stringBuffer.append(app.getIntegerValue (AppBaseuri + appInst + "/bccuch_pkcmp_offcntval" ));
    stringBuffer.append(TEXT_77);
    }
    stringBuffer.append(TEXT_78);
     int instance = 0; 
     for (String appIns : appsList ) { 
     appInst = appIns.substring(appIns.lastIndexOf("/")+1);
     instance++; 
    stringBuffer.append(TEXT_79);
    }
     String lastAppInstance = null; 
     for (int index = 0;  index < (instance); index++) {  
    stringBuffer.append(TEXT_80);
    stringBuffer.append(index);
     if(index+1 != (instance)) {
    stringBuffer.append(TEXT_81);
    } 
    stringBuffer.append(TEXT_82);
    }
    stringBuffer.append(TEXT_83);
    stringBuffer.append(TEXT_84);
    return stringBuffer.toString();
  }
}
