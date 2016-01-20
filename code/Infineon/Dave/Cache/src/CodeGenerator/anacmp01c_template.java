package CodeGenerator;

import java.util.*;
import com.ifx.davex.appjetinteract.App2JetInterface;

public class anacmp01c_template
{
  protected static String nl;
  public static synchronized anacmp01c_template create(String lineSeparator)
  {
    nl = lineSeparator;
    anacmp01c_template result = new anacmp01c_template();
    nl = null;
    return result;
  }

  public final String NL = nl == null ? (System.getProperties().getProperty("line.separator")) : nl;
  protected final String TEXT_1 = "/*CODE_BLOCK_BEGIN[ANACMP01.c]*/" + NL + "" + NL + "/*******************************************************************************" + NL + " Copyright (c) 2013, Infineon Technologies AG                                 **" + NL + " All rights reserved.                                                         **" + NL + "                                                                              **" + NL + " Redistribution and use in source and binary forms, with or without           **" + NL + " modification,are permitted provided that the following conditions are met:   **" + NL + "                                                                              **" + NL + " *Redistributions of source code must retain the above copyright notice,      **" + NL + " this list of conditions and the following disclaimer.                        **" + NL + " *Redistributions in binary form must reproduce the above copyright notice,   **" + NL + " this list of conditions and the following disclaimer in the documentation    **" + NL + " and/or other materials provided with the distribution.                       **" + NL + " *Neither the name of the copyright holders nor the names of its contributors **" + NL + " may be used to endorse or promote products derived from this software without**" + NL + " specific prior written permission.                                           **" + NL + "                                                                              **" + NL + " THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS \"AS IS\"  **" + NL + " AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE    **" + NL + " IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE   **" + NL + " ARE  DISCLAIMED. IN NO EVENT SHALL THE COPYRIGHT HOLDER OR CONTRIBUTORS BE   **" + NL + " LIABLE  FOR ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR         **" + NL + " CONSEQUENTIAL DAMAGES (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF         **" + NL + " SUBSTITUTE GOODS OR  SERVICES; LOSS OF USE, DATA, OR PROFITS; OR BUSINESS    **" + NL + " INTERRUPTION) HOWEVER CAUSED AND ON ANY THEORY OF LIABILITY, WHETHER IN      **" + NL + " CONTRACT, STRICT LIABILITY,OR TORT (INCLUDING NEGLIGENCE OR OTHERWISE)       **" + NL + " ARISING IN ANY WAY OUT OF THE USE OF THIS SOFTWARE, EVEN IF ADVISED OF THE   **" + NL + " POSSIBILITY OF SUCH DAMAGE.                                                  **" + NL + "                                                                              **" + NL + " To improve the quality of the software, users are encouraged to share        **" + NL + " modifications, enhancements or bug fixes with Infineon Technologies AG       **" + NL + " dave@infineon.com).                                                          **" + NL + "                                                                              **" + NL + "********************************************************************************" + NL + "**                                                                            **" + NL + "**                                                                            **" + NL + "** PLATFORM : Infineon XMC1000 Series                           \t\t\t  **" + NL + "**                                                                            **" + NL + "** COMPILER : Compiler Independent                                            **" + NL + "**                                                                            **" + NL + "** AUTHOR : App Developer                                                     **" + NL + "**                                                                            **" + NL + "** MAY BE CHANGED BY USER [yes/no]: Yes                                       **" + NL + "**                                                                            **" + NL + "** MODIFICATION DATE : Aug 29, 2013                                           **" + NL + "**                                                                            **" + NL + "*******************************************************************************/" + NL + "" + NL + "/**" + NL + " * @file ANACMP01.c" + NL + " *" + NL + " * @brief" + NL + " * This app is used for Analog comparator initialisation and check the status " + NL + " * of the output." + NL + " *" + NL + " * Use case:" + NL + " * To compare the two input voltages and check the status which input voltage" + NL + " * is bigger. " + NL + " *" + NL + " * Change History:" + NL + " * Date       version       Details " + NL + " * 25-Mar-13    1.0.6   1. Initial version" + NL + " *                       2. Two IO001 apps consumtion done for two input pins   " + NL + " *                      3. Register structure defined in anacmpglob01 app due" + NL + " *                         to XMC1000 header file update not available and" + NL + " *                         code corrected as per this structure." + NL + " *                      4. Register structure removed and Code is modified to " + NL + " *                         support updated header files." + NL + " *                      5. Help Document updated." + NL + " * 10-Sep-13    1.0.8   1. Added support for the following devices under " + NL + " *                         XMC1200 and XMC1300 Series XMC1201, XMC1202, XMC1301  " + NL + " *" + NL + " */" + NL + "" + NL + "/******************************************************************************" + NL + "**                      Author(s) Identity                                   **" + NL + "*******************************************************************************" + NL + "**                                                                           **" + NL + "** Initials     Name                                                         **" + NL + "** NL           App Developer                                                **" + NL + "** --------------------------------------------------------------------------**" + NL + "" + NL + "*******************************************************************************/" + NL + "" + NL + "/*******************************************************************************" + NL + " ** INCLUDE FILES                                                             **" + NL + " ******************************************************************************/" + NL + "#include <DAVE3.h>" + NL + "" + NL + "/**" + NL + " * @cond INTERNAL_DOCS" + NL + " */" + NL + "" + NL + "/*******************************************************************************" + NL + "**                      Private Type Definitions                              **" + NL + "*******************************************************************************/" + NL + "" + NL + "/*******************************************************************************" + NL + "**                      Global Constant Definitions                           **" + NL + "*******************************************************************************/" + NL + "" + NL + "/*******************************************************************************" + NL + "**                      Global Variable Definitions                           **" + NL + "*******************************************************************************/" + NL + "" + NL + "/*******************************************************************************" + NL + "**                      Private Constant Definitions                          **" + NL + "*******************************************************************************/" + NL + "" + NL + "/**" + NL + "* @}" + NL + "*/" + NL + "/*******************************************************************************" + NL + "**                 Private Function Definitions:" + NL + "*******************************************************************************/" + NL + "/**" + NL + " * @brief This function initializes the app." + NL + " *" + NL + " * @param [in] HandlePtr pointer to the Instance variable<BR>" + NL + " *" + NL + " * @return  NOne <BR>" + NL + " *" + NL + " * <b>Reentrancy:  Yes</b><BR>" + NL + " * <b>Sync/Async:  Synchronous</b><BR>" + NL + " */" + NL + "" + NL + "void ANACMP01_lInit(const ANACMP01_HandleType *HandlePtr );" + NL + "" + NL + "/**" + NL + " * @addtogroup ANACMP01_PriviteFunctions" + NL + " * @{" + NL + " */" + NL + "/**" + NL + " * @brief Initialization function which initializes the App internal data" + NL + " *  structures to default values." + NL + " *" + NL + " * @param [in] None<BR>" + NL + " *" + NL + " * @return  void<BR>" + NL + " *" + NL + " * <b>Reentrancy:  Yes</b><BR>" + NL + " * <b>Sync/Async:  Synchronous</b><BR>" + NL + " */";
  protected final String TEXT_2 = NL + "  void ANACMP01_Init(void)" + NL + "  {";
  protected final String TEXT_3 = NL + "     /* Call the local function with the handle pointer for each instance */" + NL + "     ANACMP01_lInit(&ANACMP01_Handle";
  protected final String TEXT_4 = ");";
  protected final String TEXT_5 = NL + "           ";
  protected final String TEXT_6 = "\t" + NL + "  WR_REG(COMPARATOR->ANACMP0, COMPARATOR_ANACMP0_ACMP0_SEL_Msk, COMPARATOR_ANACMP0_ACMP0_SEL_Pos,1);                /*    COMPARATOR->ANACMP0_ACMP0_SEL */";
  protected final String TEXT_7 = "\t" + NL + "  WR_REG(COMPARATOR->ANACMP1, COMPARATOR_ANACMP1_REF_DIV_EN_Msk, COMPARATOR_ANACMP1_REF_DIV_EN_Pos, 1);                /*    COMPARATOR->ANACMP1_REF_DIV_EN */";
  protected final String TEXT_8 = "\t" + NL + "  WR_REG(COMPARATOR->ANACMP2, COMPARATOR_ANACMP2_ACMP2_SEL_Msk, COMPARATOR_ANACMP2_ACMP2_SEL_Pos, 1);                /*    COMPARATOR->ANACMP2_ACMP2_SEL */";
  protected final String TEXT_9 = NL + "  }" + NL + "   " + NL + " /**" + NL + " * @brief This function initialises the  ANACMPx slice with the configured " + NL + " * parameters to compare the two input signal levels." + NL + " *" + NL + " * @param [in] const ANACMP01_HandleType* HandlePtr<BR>" + NL + " *" + NL + " * @return  void<BR>" + NL + " *" + NL + " * <b>Reentrancy:  Yes</b><BR>" + NL + " * <b>Sync/Async:  Synchronous</b><BR>" + NL + " */" + NL + "  void ANACMP01_lInit(const ANACMP01_HandleType* HandlePtr)" + NL + "  {" + NL + "\t  COMPARATOR_Type* ANACMPRegsPtr = HandlePtr->ANACMPSliceRegs0Ptr;" + NL + "" + NL + "      /* Enable AnalogComparator" + NL + "       * Disable Filter selection" + NL + "       * Invert the output" + NL + "       * Selecting the Hysteresis mode selection." + NL + "       * */" + NL + "\t  ";
  protected final String TEXT_10 = NL + "      if((HandlePtr) == (&ANACMP01_Handle";
  protected final String TEXT_11 = "))" + NL + "      {\t    " + NL + "\t    ANACMPRegsPtr->ANACMP";
  protected final String TEXT_12 = " = (ANACMPRegsPtr->ANACMP";
  protected final String TEXT_13 = " & ~COMPARATOR_ANACMP0_CMP_EN_Msk) | HandlePtr->EnableAnaCmp;" + NL + "\t               " + NL + "\t    ANACMPRegsPtr->ANACMP";
  protected final String TEXT_14 = " = ((ANACMPRegsPtr->ANACMP";
  protected final String TEXT_15 = " & ~COMPARATOR_ANACMP0_CMP_FLT_OFF_Msk) \\" + NL + "\t                                          | (HandlePtr->DisableFilterAnaCmp<<COMPARATOR_ANACMP0_CMP_FLT_OFF_Pos));" + NL + "\t    ANACMPRegsPtr->ANACMP";
  protected final String TEXT_16 = " = ((ANACMPRegsPtr->ANACMP";
  protected final String TEXT_17 = " & ~COMPARATOR_ANACMP0_CMP_INV_OUT_Msk) \\" + NL + "\t    \t\t                              | (HandlePtr->InvertOutputAnaCmp<< COMPARATOR_ANACMP0_CMP_INV_OUT_Pos));" + NL + "\t    ANACMPRegsPtr->ANACMP";
  protected final String TEXT_18 = " = ((ANACMPRegsPtr->ANACMP";
  protected final String TEXT_19 = " & ~COMPARATOR_ANACMP0_CMP_HYST_ADJ_Msk) \\" + NL + "\t    \t\t\t\t\t\t              | (HandlePtr->Hysmodesel << COMPARATOR_ANACMP0_CMP_HYST_ADJ_Pos));" + NL + "       }" + NL + "\t  ";
  protected final String TEXT_20 = NL + "\t  " + NL + "\t  " + NL + "  }" + NL + "" + NL + " /*******************************************************************************" + NL + "  **                      Public Function Definitions                          **" + NL + "  *******************************************************************************/" + NL + "  /**" + NL + "   * @addtogroup ANACMP01_PublicFunctions" + NL + "   * @{" + NL + "   */" + NL + "" + NL + " /**" + NL + " * @brief This api checks the output status." + NL + " *" + NL + " * @param [in] const ANACMP01_HandleType* HandlePtr<BR>" + NL + " *" + NL + " * @return  void<BR>" + NL + " *" + NL + " * <b>Reentrancy:  Yes</b><BR>" + NL + " * <b>Sync/Async:  Synchronous</b><BR>" + NL + " */" + NL + "" + NL + "  uint8_t ANACMP01_CheckAnacmpOutstatus(const ANACMP01_HandleType* HandlePtr)" + NL + "  {" + NL + "\t  uint8_t OutputStatus=0;" + NL + "\t  COMPARATOR_Type* ANACMPRegsPtr = HandlePtr->ANACMPSliceRegs0Ptr;" + NL + "\t  ";
  protected final String TEXT_21 = NL + "\t  if((HandlePtr) == (&ANACMP01_Handle";
  protected final String TEXT_22 = "))" + NL + "\t  {\t    " + NL + "\t     OutputStatus = (ANACMPRegsPtr->ANACMP";
  protected final String TEXT_23 = " >> 15);" + NL + "\t  }" + NL + "\t  ";
  protected final String TEXT_24 = NL + "\t  return OutputStatus;\t  " + NL + "  }" + NL + " /**" + NL + " * @endcond" + NL + " */ " + NL + "/*CODE_BLOCK_END*/";

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
      String uriSCU_CMPCU = null;
     ArrayList<String> appsList = (ArrayList<String>)(app.getApps("app/anacmp01/"));
    stringBuffer.append(TEXT_2);
     for (String appIns : appsList ) {
          appInst = appIns.substring(appIns.lastIndexOf("/")+1);  
     ConfigUri = app.getMappedUri(AppBaseuri + appInst +"/slice"); 
     if ((ConfigUri != null) && (ConfigUri.trim() != "")) { 
     kernelUri = ConfigUri.substring(ConfigUri.length()-1,ConfigUri.indexOf("anacmp")+8); 
     InstanceNo = kernelUri.substring(kernelUri.length() -1); 
    stringBuffer.append(TEXT_3);
    stringBuffer.append( InstanceNo);
    stringBuffer.append(TEXT_4);
    }}
    stringBuffer.append(TEXT_5);
     uriSCU_CMPCU = "peripheral/scu/0/cmpcu/anacmp/0/acmp_sel"; 
     if ((app.getIntegerValue(uriSCU_CMPCU) == 1)) {
    stringBuffer.append(TEXT_6);
     }
                uriSCU_CMPCU = "peripheral/scu/0/cmpcu/anacmp/1/ref_div_en";
  if (app.getIntegerValue(uriSCU_CMPCU) == 1) {
    stringBuffer.append(TEXT_7);
     }
                uriSCU_CMPCU = "peripheral/scu/0/cmpcu/anacmp/2/acmp_sel";
                 if ((app.getIntegerValue(uriSCU_CMPCU) == 1)) {
    stringBuffer.append(TEXT_8);
     }
    stringBuffer.append(TEXT_9);
     for (String appIns : appsList ) { appInst = appIns.substring(appIns.lastIndexOf("/")+1);  
	             ConfigUri = app.getMappedUri(AppBaseuri + appInst +"/slice"); 
	             if ((ConfigUri != null) && (ConfigUri.trim() != "")) { 
	                 kernelUri = ConfigUri.substring(ConfigUri.length()-1,ConfigUri.indexOf("anacmp")+8); 
	                 InstanceNo = kernelUri.substring(kernelUri.length() -1); 
    stringBuffer.append(TEXT_10);
    stringBuffer.append( InstanceNo);
    stringBuffer.append(TEXT_11);
    stringBuffer.append(InstanceNo);
    stringBuffer.append(TEXT_12);
    stringBuffer.append(InstanceNo);
    stringBuffer.append(TEXT_13);
    stringBuffer.append(InstanceNo);
    stringBuffer.append(TEXT_14);
    stringBuffer.append(InstanceNo);
    stringBuffer.append(TEXT_15);
    stringBuffer.append(InstanceNo);
    stringBuffer.append(TEXT_16);
    stringBuffer.append(InstanceNo);
    stringBuffer.append(TEXT_17);
    stringBuffer.append(InstanceNo);
    stringBuffer.append(TEXT_18);
    stringBuffer.append(InstanceNo);
    stringBuffer.append(TEXT_19);
    }}
    stringBuffer.append(TEXT_20);
     for (String appIns : appsList ) { appInst = appIns.substring(appIns.lastIndexOf("/")+1);  
	 	             ConfigUri = app.getMappedUri(AppBaseuri + appInst +"/slice"); 
	 	             if ((ConfigUri != null) && (ConfigUri.trim() != "")) { 
	 	                 kernelUri = ConfigUri.substring(ConfigUri.length()-1,ConfigUri.indexOf("anacmp")+8); 
	 	                 InstanceNo = kernelUri.substring(kernelUri.length() -1); 
    stringBuffer.append(TEXT_21);
    stringBuffer.append( InstanceNo);
    stringBuffer.append(TEXT_22);
    stringBuffer.append( InstanceNo);
    stringBuffer.append(TEXT_23);
    }}
    stringBuffer.append(TEXT_24);
    return stringBuffer.toString();
  }
}
