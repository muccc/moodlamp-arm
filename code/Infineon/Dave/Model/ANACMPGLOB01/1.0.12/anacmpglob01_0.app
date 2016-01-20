<?xml version="1.0" encoding="ASCII"?>
<ResourceModel:App xmi:version="2.0" xmlns:xmi="http://www.omg.org/XMI" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xmlns:ResourceModel="http://www.infineon.com/Davex/Resource.ecore" name="ANACMPGLOB01" description="This app is used to support ANACMP01 app." descriptionURL="/doc/html/group___a_n_a_c_m_p_g_l_o_b01_app.html" mode="SHARABLE" URI="http://www.infineon.com/1.0.12/app/anacmpglob01/0">
  <upWardMappingList xsi:type="ResourceModel:ProxyResource" href="../../ANACMP01/1.0.12/anacmp01_0.app#//@consumed.8"/>
  <upWardMappingList xsi:type="ResourceModel:ProxyResource" href="../../ANACMP01/1.0.12/anacmp01_1.app#//@consumed.8"/>
  <upWardMappingList xsi:type="ResourceModel:ProxyResource" href="../../ANACMP01/1.0.12/anacmp01_2.app#//@consumed.8"/>
  <provided xsi:type="ResourceModel:EnumerationParameter" name="Power Mode Selection" evalFunction="&#xD;&#xA;          function ForwardMapping(){&#xD;&#xA;              var Res = SCM.getResource(&quot;anacmp01_temppowermodesel&quot;);&#xD;&#xA;              var value = SCM.getIntValue(currentResource);&#xD;&#xA;              SCM.setIntValue(Res,value);&#xD;&#xA;          }&#xD;&#xA;          function BackwardMapping(){&#xD;&#xA;              var Res = SCM.getResource(&quot;anacmp01_temppowermodesel&quot;);&#xD;&#xA;              var value = SCM.getIntValue(Res);&#xD;&#xA;              SCM.setIntValue(currentResource,value);&#xD;&#xA;          }&#xD;&#xA;               " URI="http://www.infineon.com/1.0.12/app/anacmpglob01/0/anacmp01_powermodesel" downWardmappedList="//@consumed.0" multipleSelections="true">
    <defaultValue xsi:type="ResourceModel:IntegerValue" value="0"/>
    <localValue xsi:type="ResourceModel:StringValue" value="0"/>
    <globalValue xsi:type="ResourceModel:IntegerValue" value="0"/>
    <toolTipHelpDescription>This allows to select Low power mode</toolTipHelpDescription>
    <item name="Enable Low Power Mode" evalFunction="&#xD;&#xA;          function ForwardMapping(){&#xD;&#xA;              var Res = SCM.getResource(&quot;anacmp01_temppowermodesel&quot;);&#xD;&#xA;              var value = SCM.getIntValue(currentResource);&#xD;&#xA;             if (value == 1 ) {&#xD;&#xA;                SCM.setIntValue(Res,1);&#xD;&#xA;              } else if (value === 0) {&#xD;&#xA;                SCM.setIntValue(Res,0);&#xD;&#xA;              }&#xD;&#xA;          }&#xD;&#xA;          function BackwardMapping(){&#xD;&#xA;              var Res = SCM.getResource(&quot;anacmp01_temppowermodesel&quot;);&#xD;&#xA;              var value = SCM.getIntValue(Res);&#xD;&#xA;              if (value == 1 ) {&#xD;&#xA;                SCM.setIntValue(currentResource,1);&#xD;&#xA;              } else if (value == -1 ){&#xD;&#xA;                SCM.setIntValue(currentResource,0);&#xD;&#xA;              }&#xD;&#xA;              else {&#xD;&#xA;                SCM.setIntValue(currentResource,0);&#xD;&#xA;              }&#xD;&#xA;          }&#xD;&#xA;               " URI="http://www.infineon.com/1.0.12/app/anacmpglob01/0/anacmp01_powermodesel/0" downWardmappedList="//@consumed.0" maxValue="1" minValue="0">
      <defaultValue xsi:type="ResourceModel:IntegerValue" value="0"/>
      <localValue xsi:type="ResourceModel:StringValue" value="0"/>
      <globalValue xsi:type="ResourceModel:IntegerValue" value="0"/>
      <toolTipHelpDescription>This allows to select Low power mode</toolTipHelpDescription>
    </item>
  </provided>
  <provided xsi:type="ResourceModel:API" description="This function initializes the ANACMPGLOB01 with the configured parameters." URI="http://www.infineon.com/1.0.12/app/anacmpglob01/0/anacmpglob01_init" APIName="ANACMPGLOB01_Init">
    <localValue xsi:type="ResourceModel:StringValue" value="-1"/>
    <globalValue xsi:type="ResourceModel:StringValue" value="-1"/>
  </provided>
  <consumed xsi:type="ResourceModel:ProxyResource" URI="http://www.infineon.com/1.0.12/app/anacmpglob01/0/anacmp01_temppowermodesel" upWardMappingList="//@provided.0 //@provided.0/@item.0" isSystemDefined="true">
    <localValue xsi:type="ResourceModel:IntegerValue" value="0"/>
    <globalValue xsi:type="ResourceModel:IntegerValue" value="0"/>
    <requiredResource uriString="" uriType="LOCALTYPE"/>
  </consumed>
  <consumed xsi:type="ResourceModel:ProxyResource" URI="http://www.infineon.com/1.0.12/app/anacmpglob01/0/lowpower">
    <downWardmappedList xsi:type="ResourceModel:ResourceGroup" href="../../SCU/SCU_0.dd#//@provided.17"/>
    <requiredResource uriString="peripheral/scu/0/cmpcu/acmp_powermode" uriType="LOCALTYPE"/>
  </consumed>
  <consumed xsi:type="ResourceModel:ProxyResource" URI="http://www.infineon.com/1.0.12/app/anacmpglob01/0/lowpower/anacmp0_cmp_lpwr" isSystemDefined="true">
    <localValue xsi:type="ResourceModel:IntegerValue" value="0"/>
    <downWardmappedList xsi:type="ResourceModel:BitField" href="../../SCU/SCU_0.dd#//@provided.18"/>
    <globalValue xsi:type="ResourceModel:IntegerValue" value="0"/>
  </consumed>
  <propertyConstants name="uridevice" value="device/"/>
  <categoryDescription description="Peripheral related Apps" name="Peripheral Specific Apps">
    <subCategory description="Analog" name="Analog">
      <subCategory description="Analog Comparator" name="Analog Comparator (ACMP)"/>
    </subCategory>
  </categoryDescription>
  <categoryDescription description="Basic Applications" name="Basic Applications">
    <subCategory description="Acquisition of Analog Signals" name="Acquisition of Analog Signals">
      <subCategory description="Analog Comparator" name="Analog Comparator (ACMP)"/>
    </subCategory>
  </categoryDescription>
  <manifestInfo version="1.0.12">
    <keywords>Analog comparator Global</keywords>
    <keywords>ANACMPGLOB01</keywords>
    <keywords>Comparator Global</keywords>
    <properties xsi:type="ResourceModel:AppProperties_1_0" initProvider="true" singleton="true"/>
  </manifestInfo>
  <datagenerate fileName="ANACMPGLOB01.h" fileType="HFILE" templateFileName="ANACMPGLOB01.hdt" templateEngine="NONE" fileAction="COPY"/>
  <datagenerate fileName="ANACMPGLOB01.c" templateFileName="ANACMPGLOB01.cdt" templateEngine="NONE" fileAction="COPY"/>
  <datagenerate fileName="ANACMPGLOB01_Conf.h" fileType="HFILE" templateFileName="ANACMPGLOB01Conf.hdt" templateEngine="NONE" fileAction="COPY"/>
  <datagenerate fileName="ANACMPGLOB01_Conf.c" templateFileName="ANACMPGLOB01Confc.jet"/>
  <softwareIdList>12.00.7</softwareIdList>
  <softwareIdList>13.02.7</softwareIdList>
  <softwareIdList>12.0100.7</softwareIdList>
  <softwareIdList>13.0102.7</softwareIdList>
  <softwareIdList>12.0102.9</softwareIdList>
  <softwareIdList>12.0102.8</softwareIdList>
  <softwareIdList>13.0101.9</softwareIdList>
  <softwareIdList>13.0101.7</softwareIdList>
  <softwareIdList>12.0102.10</softwareIdList>
  <softwareIdList>12.0102.11</softwareIdList>
  <softwareIdList>13.0101.10</softwareIdList>
  <softwareIdList>13.0101.11</softwareIdList>
  <softwareIdList>13.0102.10</softwareIdList>
  <softwareIdList>13.0102.11</softwareIdList>
  <softwareIdList>13.0102.9</softwareIdList>
</ResourceModel:App>
