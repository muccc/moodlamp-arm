package CodeGenerator;

import java.util.*;
import com.ifx.davex.appjetinteract.App2JetInterface;

public class bccuglobal_confc_template
{
  protected static String nl;
  public static synchronized bccuglobal_confc_template create(String lineSeparator)
  {
    nl = lineSeparator;
    bccuglobal_confc_template result = new bccuglobal_confc_template();
    nl = null;
    return result;
  }

  public final String NL = nl == null ? (System.getProperties().getProperty("line.separator")) : nl;
  protected final String TEXT_1 = NL + "/*CODE_BLOCK_BEGIN[BCCUGLOBAL_Conf.c]*/" + NL + "/****************************************************************************" + NL + " * @file     BCCUGLOBAL_Conf.c" + NL + " * @brief    This file has prototypes of APIs for initialization of BCCU global" + NL + " *           register set." + NL + " * @version  V1.0.8" + NL + " * @date     3 Sep 2013" + NL + " *" + NL + " * @note" + NL + " * Copyright (C) 2012-2013 Infineon Technologies AG. All rights reserved." + NL + "" + NL + " *" + NL + " * @par" + NL + " * Infineon Technologies AG (Infineon) is supplying this software for use with" + NL + " * Infineon's microcontrollers." + NL + " *" + NL + " * This file can be freely distributed within development tools that are" + NL + " * supporting such microcontrollers." + NL + " *" + NL + " *" + NL + " * @par" + NL + " * THIS SOFTWARE IS PROVIDED \"AS IS\".  NO WARRANTIES, WHETHER EXPRESS, IMPLIED" + NL + " * OR STATUTORY, INCLUDING, BUT NOT LIMITED TO, IMPLIED WARRANTIES OF" + NL + " * MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE APPLY TO THIS SOFTWARE." + NL + " * INFINEON SHALL NOT, IN ANY CIRCUMSTANCES, BE LIABLE FOR SPECIAL, INCIDENTAL," + NL + " * OR CONSEQUENTIAL DAMAGES, FOR ANY REASON WHATSOEVER." + NL + " *" + NL + " ******************************************************************************/" + NL + "/**************************** Change history ***********************************" + NL + " * V1.0.0,\t14-Feb-13\t Initial Version" + NL + " * V1.0.2,\t3-Apr-13\t Two new UI widgets (\"Longest OFF-time at Modulator" + NL + " *                       Output\", \"Lowest Frequency at Modulator Output\")" + NL + " *                       are added.?" + NL + " * V1.0.4   25-Apr-2013  WDMBN related UI is extended." + NL + " * V1.0.6   6-Aug-2013   Configuration Dependent and Independent codes are" + NL + " *                       separated, MISRA checks are made." + NL + " * V1.0.8   3-Sep-2013  C++ Support extended and New SW IDs added." + NL + " * *************************** Change history *********************************/" + NL + "" + NL + "/** Inclusion of header file */" + NL + "#include \"../../inc/BCCUGLOBAL/BCCUGLOBAL.h\"" + NL;
  protected final String TEXT_2 = NL + NL + "const BCCUGlobal_HandleType BCCUGlobal_Handle";
  protected final String TEXT_3 = " =" + NL + "{" + NL + "    .BCCURegs = BCCU";
  protected final String TEXT_4 = "," + NL + "" + NL + "    .FastClk_PS = (uint16_t)";
  protected final String TEXT_5 = "," + NL;
  protected final String TEXT_6 = NL + "    .BitClk_Div = BCCU_FCLK_DIV_4,";
  protected final String TEXT_7 = NL + "    .BitClk_Div = BCCU_FCLK,";
  protected final String TEXT_8 = NL + NL + "    .DimClk_PS = (uint16_t)";
  protected final String TEXT_9 = "," + NL + "" + NL + "    .TriggerMode = BCCUGLOBAL_TRIGMODE_";
  protected final String TEXT_10 = "," + NL;
  protected final String TEXT_11 = NL + "    .TriggerDelay = BCCUGLOBAL_NO_DELAY,";
  protected final String TEXT_12 = NL + "    .TriggerDelay = BCCUGLOBAL_QUARTER_BIT_DELAY,";
  protected final String TEXT_13 = NL + "    .TriggerDelay = BCCUGLOBAL_HALF_BIT_DELAY,";
  protected final String TEXT_14 = NL + NL + "\t.OutMaxZeroTime = (uint16_t)";
  protected final String TEXT_15 = "," + NL;
  protected final String TEXT_16 = NL + "\t.TrapEdge = BCCUGLOBAL_RISING_EDGE,";
  protected final String TEXT_17 = NL + "\t.TrapEdge = BCCUGLOBAL_FALLING_EDGE,";
  protected final String TEXT_18 = NL + NL + "\t.GlobalDimInitialLevel = (uint16_t)";
  protected final String TEXT_19 = "," + NL;
  protected final String TEXT_20 = NL + "\t.EnableEventIntr = ";
  protected final String TEXT_21 = NL + "\t.EnableEventIntr = BCCUGLOBAL_NONE_INT_EN_DIS";
  protected final String TEXT_22 = NL + NL + "};" + NL + "\t";
  protected final String TEXT_23 = NL + NL + "/*CODE_BLOCK_END*/";
  protected final String TEXT_24 = NL;

  public String generate(Object argument)
  {
    final StringBuffer stringBuffer = new StringBuffer();
     App2JetInterface app = (App2JetInterface) argument; 
    stringBuffer.append(TEXT_1);
     String Periuri = "peripheral/bccu/"; 
     String AppBaseuri = "app/bccuglobal/"; 
     String MappedUri = null; 
     String kernelNo = null; 
     String appInst  = null; 
     ArrayList<String> appsList = (ArrayList<String>)(app.getApps("app/bccuglobal/"));
  for (String appIns : appsList ) {
  appInst = appIns.substring(appIns.lastIndexOf("/")+1);
     MappedUri = app.getMappedUri(AppBaseuri + appInst + "/global"); 
     kernelNo = MappedUri.substring(MappedUri.length()-8,MappedUri.indexOf("/global")); 
    stringBuffer.append(TEXT_2);
    stringBuffer.append( appInst);
    stringBuffer.append(TEXT_3);
    stringBuffer.append( kernelNo);
    stringBuffer.append(TEXT_4);
    stringBuffer.append( app.getIntegerValue(AppBaseuri + appInst + "/bccuglobal_fclk_ps"));
    stringBuffer.append(TEXT_5);
     if(app.getIntegerValue(AppBaseuri + appInst + "/global/globclk/bcs") == 0) 
     { 
    stringBuffer.append(TEXT_6);
     } 
     else 
     { 
    stringBuffer.append(TEXT_7);
     } 
    stringBuffer.append(TEXT_8);
    stringBuffer.append( app.getIntegerValue(AppBaseuri + appInst + "/bccuglobal_dclk_ps"));
    stringBuffer.append(TEXT_9);
    stringBuffer.append( app.getIntegerValue(AppBaseuri + appInst + "/trigger/globcon_tm"));
    stringBuffer.append(TEXT_10);
     if(app.getIntegerValue(AppBaseuri + appInst + "/trigger/globcon_trdel") == 0) 
     { 
    stringBuffer.append(TEXT_11);
     } 
     else if(app.getIntegerValue(AppBaseuri + appInst + "/trigger/globcon_trdel") == 1) 
     { 
    stringBuffer.append(TEXT_12);
     } 
     else 
     { 
    stringBuffer.append(TEXT_13);
     } 
    stringBuffer.append(TEXT_14);
    stringBuffer.append( app.getIntegerValue(AppBaseuri + appInst + "/global/globcon/wdmbn"));
    stringBuffer.append(TEXT_15);
     if(app.getIntegerValue(AppBaseuri + appInst + "/trap/globcon_traped") == 0) 
     { 
    stringBuffer.append(TEXT_16);
     } 
     else 
     { 
    stringBuffer.append(TEXT_17);
     } 
    stringBuffer.append(TEXT_18);
    stringBuffer.append( app.getIntegerValue(AppBaseuri + appInst + "/global/globdim/globdim"));
    stringBuffer.append(TEXT_19);
     String EventIntrString = null; 
     String EventIntrAdd = null; 
     if(app.getIntegerValue(AppBaseuri + appInst + "/global/evier/t0ien") == 1) 
     { 
     EventIntrString = "BCCUGLOBAL_TIMER0INT_EN_DIS"; EventIntrAdd = " | ";
     } 
     if(app.getIntegerValue(AppBaseuri + appInst + "/global/evier/t1ien") == 1) 
     { 
     EventIntrString = EventIntrString + EventIntrAdd + "BCCUGLOBAL_TIMER1INT_EN_DIS"; EventIntrAdd = " | ";
     } 
     if(app.getIntegerValue(AppBaseuri + appInst + "/global/evier/fien") == 1) 
     { 
     EventIntrString = EventIntrString + EventIntrAdd + "BCCUGLOBAL_FIFOFULLINT_EN_DIS"; EventIntrAdd = " | ";
     } 
     if(app.getIntegerValue(AppBaseuri + appInst + "/global/evier/eien") == 1) 
     { 
     EventIntrString = EventIntrString + EventIntrAdd + "BCCUGLOBAL_FIFOEMPTYINT_EN_DIS"; EventIntrAdd = " | ";
     } 
     if(app.getIntegerValue(AppBaseuri + appInst + "/global/evier/tpien") == 1) 
     { 
     EventIntrString = EventIntrString + EventIntrAdd + "BCCUGLOBAL_TRAPINT_EN_DIS"; EventIntrAdd = " | ";
     } 
     if (EventIntrString != null) { 
    stringBuffer.append(TEXT_20);
    stringBuffer.append( EventIntrString );
     } 
     else { 
    stringBuffer.append(TEXT_21);
     } 
    stringBuffer.append(TEXT_22);
     } 
    stringBuffer.append(TEXT_23);
    stringBuffer.append(TEXT_24);
    return stringBuffer.toString();
  }
}
