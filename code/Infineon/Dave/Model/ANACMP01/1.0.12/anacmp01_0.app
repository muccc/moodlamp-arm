<?xml version="1.0" encoding="ASCII"?>
<ResourceModel:App xmi:version="2.0" xmlns:xmi="http://www.omg.org/XMI" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xmlns:ResourceModel="http://www.infineon.com/Davex/Resource.ecore" name="ANACMP01" description="This app is used to compare the&#xA; two input signal levels." descriptionURL="/doc/html/group___a_n_a_c_m_p01_app.html" URI="http://www.infineon.com/1.0.12/app/anacmp01/0">
  <provided xsi:type="ResourceModel:VirtualSignal" name="Inp signal" URI="http://www.infineon.com/1.0.12/app/anacmp01/0/acmp0_inp" requiredSignalResource="slice/inp">
    <defaultValue xsi:type="ResourceModel:Blocked" value="Blocked"/>
    <localValue xsi:type="ResourceModel:StringValue" value="Blocked"/>
    <globalValue xsi:type="ResourceModel:StringValue" value="Blocked"/>
  </provided>
  <provided xsi:type="ResourceModel:VirtualSignal" name="Inn signal" URI="http://www.infineon.com/1.0.12/app/anacmp01/0/anacmp0_inn" requiredSignalResource="slice/inn">
    <defaultValue xsi:type="ResourceModel:Blocked" value="Blocked"/>
    <localValue xsi:type="ResourceModel:StringValue" value="Blocked"/>
    <globalValue xsi:type="ResourceModel:StringValue" value="Blocked"/>
  </provided>
  <provided xsi:type="ResourceModel:VirtualSignal" name="Out signal" URI="http://www.infineon.com/1.0.12/app/anacmp01/0/anacmp0_out" requiredSignalResource="slice/out">
    <defaultValue xsi:type="ResourceModel:Blocked" value="Blocked"/>
    <localValue xsi:type="ResourceModel:StringValue" value="Blocked"/>
    <globalValue xsi:type="ResourceModel:StringValue" value="Blocked"/>
  </provided>
  <provided xsi:type="ResourceModel:EnumerationParameter" name="Hysteresis Voltage Control" evalFunction="&#xD;&#xA;          function ForwardMapping(){&#xD;&#xA;              var TempRes = SCM.getResource(&quot;anacmp01_tempHysAdj&quot;);&#xD;&#xA;              var value = SCM.getIntValue(currentResource);&#xD;&#xA;              SCM.setIntValue(TempRes,value);&#xD;&#xA;          }&#xD;&#xA;          function BackwardMapping(){&#xD;&#xA;              var TempRes = SCM.getResource(&quot;anacmp01_tempHysAdj&quot;);&#xD;&#xA;              var value = SCM.getIntValue(TempRes);&#xD;&#xA;              SCM.setIntValue(currentResource,value);&#xD;&#xA;          }&#xD;&#xA;               " URI="http://www.infineon.com/1.0.12/app/anacmp01/0/anacmp01_hysadj" downWardmappedList="//@consumed.1">
    <defaultValue xsi:type="ResourceModel:IntegerValue" value="0"/>
    <localValue xsi:type="ResourceModel:StringValue" value="0"/>
    <globalValue xsi:type="ResourceModel:IntegerValue" value="0"/>
    <toolTipHelpDescription>Select hysteresis voltage to reduce noise sensitivity.</toolTipHelpDescription>
    <item name="Hys_OFF" evalFunction="&#xD;&#xA;          function ForwardMapping(){&#xD;&#xA;              var value = SCM.getIntValue(currentResource);&#xD;&#xA;              var Res = SCM.getResource(&quot;anacmp01_tempHysAdj&quot;);&#xD;&#xA;              if (value == 1 ) {&#xD;&#xA;                SCM.setIntValue(Res,0);&#xD;&#xA;              } else if (value === 0) {&#xD;&#xA;                SCM.setIntValue(Res,0);&#xD;&#xA;              }&#xD;&#xA;          }&#xD;&#xA;          function BackwardMapping(){&#xD;&#xA;              var Res = SCM.getResource(&quot;anacmp01_tempHysAdj&quot;);&#xD;&#xA;              var value = SCM.getIntValue(Res);&#xD;&#xA;              if (value === 0 ) {&#xD;&#xA;                SCM.setIntValue(currentResource,1);&#xD;&#xA;              } else if (value == -1 ){&#xD;&#xA;                SCM.setIntValue(currentResource,1);&#xD;&#xA;              }&#xD;&#xA;              else {&#xD;&#xA;                SCM.setIntValue(currentResource,0);&#xD;&#xA;              }&#xD;&#xA;          }&#xD;&#xA;               " URI="http://www.infineon.com/1.0.12/app/anacmp01/0/anacmp01_hysadj/0" downWardmappedList="//@consumed.1" maxValue="1" minValue="0">
      <defaultValue xsi:type="ResourceModel:IntegerValue" value="1"/>
      <localValue xsi:type="ResourceModel:StringValue" value="1"/>
      <globalValue xsi:type="ResourceModel:IntegerValue" value="1"/>
      <toolTipHelpDescription>Comparator hysteresis is switched off.</toolTipHelpDescription>
    </item>
    <item name="Hys1, Hysteresis_typ = 10mV" evalFunction="&#xD;&#xA;          function ForwardMapping(){&#xD;&#xA;              var value = SCM.getIntValue(currentResource);&#xD;&#xA;              var Res = SCM.getResource(&quot;anacmp01_tempHysAdj&quot;);&#xD;&#xA;              if (value == 1 ) {&#xD;&#xA;                SCM.setIntValue(Res,1);&#xD;&#xA;              } else if (value === 0) {&#xD;&#xA;                SCM.setIntValue(Res,0);&#xD;&#xA;              }&#xD;&#xA;          }&#xD;&#xA;          function BackwardMapping(){&#xD;&#xA;              var Res = SCM.getResource(&quot;anacmp01_tempHysAdj&quot;);&#xD;&#xA;              var value = SCM.getIntValue(Res);&#xD;&#xA;              if (value === 1 ) {&#xD;&#xA;                SCM.setIntValue(currentResource,1);&#xD;&#xA;              } else if (value == -1 ){&#xD;&#xA;                SCM.setIntValue(currentResource,0);&#xD;&#xA;              }&#xD;&#xA;              else {&#xD;&#xA;                SCM.setIntValue(currentResource,0);&#xD;&#xA;              }&#xD;&#xA;          }&#xD;&#xA;               " URI="http://www.infineon.com/1.0.12/app/anacmp01/0/anacmp01_hysadj/1" downWardmappedList="//@consumed.1" maxValue="1" minValue="0">
      <defaultValue xsi:type="ResourceModel:IntegerValue" value="0"/>
      <localValue xsi:type="ResourceModel:StringValue" value="0"/>
      <globalValue xsi:type="ResourceModel:IntegerValue" value="0"/>
      <toolTipHelpDescription>Select 10mv as Hysteresis voltage.</toolTipHelpDescription>
    </item>
    <item name="Hys2, Hysteresis_typ = 15mV" evalFunction="&#xD;&#xA;          function ForwardMapping(){&#xD;&#xA;              var value = SCM.getIntValue(currentResource);&#xD;&#xA;              var Res = SCM.getResource(&quot;anacmp01_tempHysAdj&quot;);&#xD;&#xA;              if (value == 1 ) {&#xD;&#xA;                SCM.setIntValue(Res,2);&#xD;&#xA;              } else if (value === 0) {&#xD;&#xA;                SCM.setIntValue(Res,0);&#xD;&#xA;              }&#xD;&#xA;          }&#xD;&#xA;          function BackwardMapping(){&#xD;&#xA;              var Res = SCM.getResource(&quot;anacmp01_tempHysAdj&quot;);&#xD;&#xA;              var value = SCM.getIntValue(Res);&#xD;&#xA;              if (value === 2 ) {&#xD;&#xA;                SCM.setIntValue(currentResource,1);&#xD;&#xA;              } else if (value == -1 ){&#xD;&#xA;                SCM.setIntValue(currentResource,0);&#xD;&#xA;              }&#xD;&#xA;              else {&#xD;&#xA;                SCM.setIntValue(currentResource,0);&#xD;&#xA;              }&#xD;&#xA;          }&#xD;&#xA;               " URI="http://www.infineon.com/1.0.12/app/anacmp01/0/anacmp01_hysadj/2" downWardmappedList="//@consumed.1" maxValue="1" minValue="0">
      <defaultValue xsi:type="ResourceModel:IntegerValue" value="0"/>
      <localValue xsi:type="ResourceModel:StringValue" value="0"/>
      <globalValue xsi:type="ResourceModel:IntegerValue" value="0"/>
      <toolTipHelpDescription>Select 15mv as Hysteresis voltage.</toolTipHelpDescription>
    </item>
    <item name="Hys3, Hysteresis_typ = 20mV" evalFunction="&#xD;&#xA;          function ForwardMapping(){&#xD;&#xA;              var value = SCM.getIntValue(currentResource);&#xD;&#xA;              var Res = SCM.getResource(&quot;anacmp01_tempHysAdj&quot;);&#xD;&#xA;              if (value == 1 ) {&#xD;&#xA;                SCM.setIntValue(Res,3);&#xD;&#xA;              } else if (value === 0) {&#xD;&#xA;                SCM.setIntValue(Res,0);&#xD;&#xA;              }&#xD;&#xA;          }&#xD;&#xA;          function BackwardMapping(){&#xD;&#xA;              var Res = SCM.getResource(&quot;anacmp01_tempHysAdj&quot;);&#xD;&#xA;              var value = SCM.getIntValue(Res);&#xD;&#xA;              if (value === 3 ) {&#xD;&#xA;                SCM.setIntValue(currentResource,1);&#xD;&#xA;              } else if (value == -1 ){&#xD;&#xA;                SCM.setIntValue(currentResource,0);&#xD;&#xA;              }&#xD;&#xA;              else {&#xD;&#xA;                SCM.setIntValue(currentResource,0);&#xD;&#xA;              }&#xD;&#xA;          }&#xD;&#xA;               " URI="http://www.infineon.com/1.0.12/app/anacmp01/0/anacmp01_hysadj/3" downWardmappedList="//@consumed.1" maxValue="1" minValue="0">
      <defaultValue xsi:type="ResourceModel:IntegerValue" value="0"/>
      <localValue xsi:type="ResourceModel:StringValue" value="0"/>
      <globalValue xsi:type="ResourceModel:IntegerValue" value="0"/>
      <toolTipHelpDescription>Select 20mv as Hysteresis voltage.</toolTipHelpDescription>
    </item>
  </provided>
  <provided xsi:type="ResourceModel:EnumerationParameter" name="Enable Analog Comparator" evalFunction="&#xD;&#xA;          function ForwardMapping(){&#xD;&#xA;              var Res = SCM.getResource(&quot;anacmp01_tempEnable&quot;);&#xD;&#xA;              var value = SCM.getIntValue(currentResource);&#xD;&#xA;              SCM.setIntValue(Res,value);&#xD;&#xA;          }&#xD;&#xA;          function BackwardMapping(){&#xD;&#xA;              var Res = SCM.getResource(&quot;anacmp01_tempEnable&quot;);&#xD;&#xA;              var value = SCM.getIntValue(Res);&#xD;&#xA;              SCM.setIntValue(currentResource,value);&#xD;&#xA;          }&#xD;&#xA;               " URI="http://www.infineon.com/1.0.12/app/anacmp01/0/anacmp01_cmpenenable" downWardmappedList="//@consumed.0" multipleSelections="true">
    <localValue xsi:type="ResourceModel:StringValue" value="-1"/>
    <globalValue xsi:type="ResourceModel:IntegerValue" value="1"/>
    <toolTipHelpDescription>This enables the Analog Comparator.</toolTipHelpDescription>
    <item name="Enable Analog Comparator" evalFunction="&#xD;&#xA;          function ForwardMapping(){&#xD;&#xA;              var Res = SCM.getResource(&quot;anacmp01_tempEnable&quot;);&#xD;&#xA;              var value = SCM.getIntValue(currentResource);&#xD;&#xA;              if(value == 1){&#xD;&#xA;                SCM.setIntValue(Res,1);&#xD;&#xA;              }&#xD;&#xA;              else{&#xD;&#xA;                SCM.setIntValue(Res,0);&#xD;&#xA;              }&#xD;&#xA;&#xD;&#xA;          }&#xD;&#xA;          function BackwardMapping(){&#xD;&#xA;              var Res = SCM.getResource(&quot;anacmp01_tempEnable&quot;);&#xD;&#xA;              var value = SCM.getIntValue(Res);&#xD;&#xA;              if(value == 1){&#xD;&#xA;                SCM.setIntValue(currentResource,1);&#xD;&#xA;              }&#xD;&#xA;              else if(value == -1){&#xD;&#xA;                SCM.setIntValue(currentResource,0);&#xD;&#xA;              }&#xD;&#xA;              else{&#xD;&#xA;                SCM.setIntValue(currentResource,0);&#xD;&#xA;              }&#xD;&#xA;          }&#xD;&#xA;               " URI="http://www.infineon.com/1.0.12/app/anacmp01/0/anacmp01_cmpenenable/0" downWardmappedList="//@consumed.0" maxValue="1" minValue="0">
      <defaultValue xsi:type="ResourceModel:IntegerValue" value="1"/>
      <localValue xsi:type="ResourceModel:StringValue" value="1"/>
      <globalValue xsi:type="ResourceModel:IntegerValue" value="1"/>
      <toolTipHelpDescription>This enables the Analog comparator during initialisation.</toolTipHelpDescription>
    </item>
  </provided>
  <provided xsi:type="ResourceModel:EnumerationParameter" name="Disable Comparator Filter" evalFunction="&#xD;&#xA;          function ForwardMapping(){&#xD;&#xA;              var Res = SCM.getResource(&quot;anacmp01_tempfilterdisable&quot;);&#xD;&#xA;              var value = SCM.getIntValue(currentResource);&#xD;&#xA;              SCM.setIntValue(Res,value);&#xD;&#xA;          }&#xD;&#xA;          function BackwardMapping(){&#xD;&#xA;              var Res = SCM.getResource(&quot;anacmp01_tempfilterdisable&quot;);&#xD;&#xA;              var value = SCM.getIntValue(Res);&#xD;&#xA;              SCM.setIntValue(currentResource,value);&#xD;&#xA;          }&#xD;&#xA;               " URI="http://www.infineon.com/1.0.12/app/anacmp01/0/anacmp01_cmpfltoffdisable" downWardmappedList="//@consumed.4" multipleSelections="true">
    <defaultValue xsi:type="ResourceModel:IntegerValue" value="0"/>
    <localValue xsi:type="ResourceModel:StringValue" value="0"/>
    <globalValue xsi:type="ResourceModel:IntegerValue" value="0"/>
    <toolTipHelpDescription>This allows user to configure whether this app should disable the filter&#xD;
immediately after initialization.</toolTipHelpDescription>
    <item name="Disable Analog Comparator Filter" evalFunction="&#xD;&#xA;          function ForwardMapping(){&#xD;&#xA;              var Res = SCM.getResource(&quot;anacmp01_tempfilterdisable&quot;);&#xD;&#xA;              var value = SCM.getIntValue(currentResource);&#xD;&#xA;              if(value == 1){&#xD;&#xA;                SCM.setIntValue(Res,1);&#xD;&#xA;              }&#xD;&#xA;              else{&#xD;&#xA;                SCM.setIntValue(Res,0);&#xD;&#xA;              }&#xD;&#xA;&#xD;&#xA;          }&#xD;&#xA;          function BackwardMapping(){&#xD;&#xA;              var Res = SCM.getResource(&quot;anacmp01_tempfilterdisable&quot;);&#xD;&#xA;              var value = SCM.getIntValue(Res);&#xD;&#xA;              if(value == 1){&#xD;&#xA;                SCM.setIntValue(currentResource,1);&#xD;&#xA;              }&#xD;&#xA;              else if(value == -1){&#xD;&#xA;                SCM.setIntValue(currentResource,0);&#xD;&#xA;              }&#xD;&#xA;              else{&#xD;&#xA;                SCM.setIntValue(currentResource,0);&#xD;&#xA;              }&#xD;&#xA;          }&#xD;&#xA;               " URI="http://www.infineon.com/1.0.12/app/anacmp01/0/anacmp01_cmpfltoffdisable/0" downWardmappedList="//@consumed.4" maxValue="1" minValue="0">
      <defaultValue xsi:type="ResourceModel:IntegerValue" value="0"/>
      <localValue xsi:type="ResourceModel:StringValue" value="0"/>
      <globalValue xsi:type="ResourceModel:IntegerValue" value="0"/>
      <toolTipHelpDescription>Disable the filter after init sequence.</toolTipHelpDescription>
    </item>
  </provided>
  <provided xsi:type="ResourceModel:EnumerationParameter" name="Invert Comparator Output" evalFunction="&#xD;&#xA;          function ForwardMapping(){&#xD;&#xA;              var Res = SCM.getResource(&quot;anacmp01_tempinvertoutput&quot;);&#xD;&#xA;              var value = SCM.getIntValue(currentResource);&#xD;&#xA;              SCM.setIntValue(Res,value);&#xD;&#xA;          }&#xD;&#xA;          function BackwardMapping(){&#xD;&#xA;              var Res = SCM.getResource(&quot;anacmp01_tempinvertoutput&quot;);&#xD;&#xA;              var value = SCM.getIntValue(Res);&#xD;&#xA;              SCM.setIntValue(currentResource,value);&#xD;&#xA;          }&#xD;&#xA;               " URI="http://www.infineon.com/1.0.12/app/anacmp01/0/anacmp01_cmpinvoutinvert" downWardmappedList="//@consumed.3" multipleSelections="true">
    <defaultValue xsi:type="ResourceModel:IntegerValue" value="0"/>
    <localValue xsi:type="ResourceModel:StringValue" value="0"/>
    <globalValue xsi:type="ResourceModel:IntegerValue" value="0"/>
    <toolTipHelpDescription>This allows user to configure whether this app should invert the output&#xD;
immediately after initialization.</toolTipHelpDescription>
    <item name="Invert Comparator Output" evalFunction="&#xD;&#xA;          function ForwardMapping(){&#xD;&#xA;              var Res = SCM.getResource(&quot;anacmp01_tempinvertoutput&quot;);&#xD;&#xA;              var value = SCM.getIntValue(currentResource);&#xD;&#xA;              if(value == 1){&#xD;&#xA;                SCM.setIntValue(Res,1);&#xD;&#xA;              }&#xD;&#xA;              else{&#xD;&#xA;                SCM.setIntValue(Res,0);&#xD;&#xA;              }&#xD;&#xA;&#xD;&#xA;          }&#xD;&#xA;          function BackwardMapping(){&#xD;&#xA;              var Res = SCM.getResource(&quot;anacmp01_tempinvertoutput&quot;);&#xD;&#xA;              var value = SCM.getIntValue(Res);&#xD;&#xA;              if(value == 1){&#xD;&#xA;                SCM.setIntValue(currentResource,1);&#xD;&#xA;              }&#xD;&#xA;              else if(value == -1){&#xD;&#xA;                SCM.setIntValue(currentResource,0);&#xD;&#xA;              }&#xD;&#xA;              else{&#xD;&#xA;                SCM.setIntValue(currentResource,0);&#xD;&#xA;              }&#xD;&#xA;          }&#xD;&#xA;               " URI="http://www.infineon.com/1.0.12/app/anacmp01/0/anacmp01_cmpinvoutinvert/0" downWardmappedList="//@consumed.3" maxValue="1" minValue="0">
      <defaultValue xsi:type="ResourceModel:IntegerValue" value="0"/>
      <localValue xsi:type="ResourceModel:StringValue" value="0"/>
      <globalValue xsi:type="ResourceModel:IntegerValue" value="0"/>
      <toolTipHelpDescription>Inverts the analog comparator output after init sequence.</toolTipHelpDescription>
    </item>
  </provided>
  <provided xsi:type="ResourceModel:API" description="This function initializes the ANACMPx slice with the configured parameters to give output for the corresponding inpts given." URI="http://www.infineon.com/1.0.12/app/anacmp01/0/anacmp01_init" APIName="ANACMP01_Init">
    <localValue xsi:type="ResourceModel:StringValue" value="-1"/>
    <globalValue xsi:type="ResourceModel:StringValue" value="-1"/>
  </provided>
  <provided xsi:type="ResourceModel:API" description="This function will return the staus of the comparator output." URI="http://www.infineon.com/1.0.12/app/anacmp01/0/anacmp01_checkanacmpoutstatus" APIName="ANACMP01_CheckAnacmpOutstatus">
    <localValue xsi:type="ResourceModel:StringValue" value="-1"/>
    <globalValue xsi:type="ResourceModel:StringValue" value="-1"/>
  </provided>
  <consumed xsi:type="ResourceModel:ProxyResource" URI="http://www.infineon.com/1.0.12/app/anacmp01/0/anacmp01_tempenable" upWardMappingList="//@provided.4 //@provided.4/@item.0" isSystemDefined="true">
    <localValue xsi:type="ResourceModel:IntegerValue" value="1"/>
    <globalValue xsi:type="ResourceModel:IntegerValue" value="1"/>
    <requiredResource uriString="" uriType="LOCALTYPE"/>
  </consumed>
  <consumed xsi:type="ResourceModel:ProxyResource" URI="http://www.infineon.com/1.0.12/app/anacmp01/0/anacmp01_temphysadj" upWardMappingList="//@provided.3 //@provided.3/@item.0 //@provided.3/@item.1 //@provided.3/@item.2 //@provided.3/@item.3" isSystemDefined="true">
    <localValue xsi:type="ResourceModel:IntegerValue" value="0"/>
    <globalValue xsi:type="ResourceModel:IntegerValue" value="0"/>
    <requiredResource uriString="" uriType="LOCALTYPE"/>
  </consumed>
  <consumed xsi:type="ResourceModel:ProxyResource" URI="http://www.infineon.com/1.0.12/app/anacmp01/0/anacmp01_tempacmpsel" isSystemDefined="true">
    <requiredResource uriString="" uriType="LOCALTYPE"/>
  </consumed>
  <consumed xsi:type="ResourceModel:ProxyResource" URI="http://www.infineon.com/1.0.12/app/anacmp01/0/anacmp01_tempinvertoutput" upWardMappingList="//@provided.6 //@provided.6/@item.0" isSystemDefined="true">
    <localValue xsi:type="ResourceModel:IntegerValue" value="0"/>
    <globalValue xsi:type="ResourceModel:IntegerValue" value="0"/>
    <requiredResource uriString="" uriType="LOCALTYPE"/>
  </consumed>
  <consumed xsi:type="ResourceModel:ProxyResource" URI="http://www.infineon.com/1.0.12/app/anacmp01/0/anacmp01_tempfilterdisable" upWardMappingList="//@provided.5 //@provided.5/@item.0" isSystemDefined="true">
    <localValue xsi:type="ResourceModel:IntegerValue" value="0"/>
    <globalValue xsi:type="ResourceModel:IntegerValue" value="0"/>
    <requiredResource uriString="" uriType="LOCALTYPE"/>
  </consumed>
  <consumed xsi:type="ResourceModel:ProxyResource" URI="http://www.infineon.com/1.0.12/app/anacmp01/0/slice">
    <downWardmappedList xsi:type="ResourceModel:ResourceGroup" href="../../SCU/SCU_0.dd#//@provided.0"/>
    <requiredResource uriString="peripheral/scu/0/cmpcu/anacmp/*" uriType="LOCALTYPE"/>
  </consumed>
  <consumed xsi:type="ResourceModel:ProxyResource" URI="http://www.infineon.com/1.0.12/app/anacmp01/0/io001app_inn">
    <downWardmappedList xsi:type="ResourceModel:App" href="../../IO001/1.0.16/io001_0.app#/"/>
    <requiredResource uriString="app/io001/*" uriType="LOCALTYPE"/>
  </consumed>
  <consumed xsi:type="ResourceModel:ProxyResource" URI="http://www.infineon.com/1.0.12/app/anacmp01/0/io001app_inp">
    <downWardmappedList xsi:type="ResourceModel:App" href="../../IO001/1.0.16/io001_1.app#/"/>
    <requiredResource uriString="app/io001/*" uriType="LOCALTYPE"/>
  </consumed>
  <consumed xsi:type="ResourceModel:ProxyResource" URI="http://www.infineon.com/1.0.12/app/anacmp01/0/anacmpglob001">
    <downWardmappedList xsi:type="ResourceModel:App" href="../../ANACMPGLOB01/1.0.12/anacmpglob01_0.app#/"/>
    <requiredResource uriString="app/anacmpglob01/0" uriType="LOCALTYPE"/>
  </consumed>
  <consumed xsi:type="ResourceModel:ProxyResource" URI="http://www.infineon.com/1.0.12/app/anacmp01/0/slice/inn" isSystemDefined="true">
    <downWardmappedList xsi:type="ResourceModel:SignalDeclaration" href="../../SCU/SCU_0.dd#//@provided.1"/>
  </consumed>
  <consumed xsi:type="ResourceModel:ProxyResource" URI="http://www.infineon.com/1.0.12/app/anacmp01/0/slice/anacmp" isSystemDefined="true">
    <localValue xsi:type="ResourceModel:IntegerValue" value="0020"/>
    <downWardmappedList xsi:type="ResourceModel:RegisterParameter" href="../../SCU/SCU_0.dd#//@provided.2"/>
    <globalValue xsi:type="ResourceModel:IntegerValue" value="0020"/>
  </consumed>
  <consumed xsi:type="ResourceModel:ProxyResource" URI="http://www.infineon.com/1.0.12/app/anacmp01/0/slice/acmp_sel" isSystemDefined="true">
    <localValue xsi:type="ResourceModel:IntegerValue" value="0"/>
    <downWardmappedList xsi:type="ResourceModel:BitField" href="../../SCU/SCU_0.dd#//@provided.3"/>
    <globalValue xsi:type="ResourceModel:IntegerValue" value="0"/>
  </consumed>
  <consumed xsi:type="ResourceModel:ProxyResource" URI="http://www.infineon.com/1.0.12/app/anacmp01/0/slice/out" isSystemDefined="true">
    <downWardmappedList xsi:type="ResourceModel:SignalDeclaration" href="../../SCU/SCU_0.dd#//@provided.4"/>
  </consumed>
  <consumed xsi:type="ResourceModel:ProxyResource" URI="http://www.infineon.com/1.0.12/app/anacmp01/0/slice/inp" isSystemDefined="true">
    <downWardmappedList xsi:type="ResourceModel:SignalDeclaration" href="../../SCU/SCU_0.dd#//@provided.5"/>
  </consumed>
  <consumed xsi:type="ResourceModel:ProxyResource" URI="http://www.infineon.com/1.0.12/app/anacmp01/0/SignalConfigurator_1649509524" bindingMode="READ" isSystemDefined="true">
    <downWardmappedList xsi:type="ResourceModel:App" href="../../IO002/1.0.30/io002_0.app#/"/>
    <requiredResource uriString="app/io002/0" uriType="LOCALTYPE"/>
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
    <keywords>Analog comparator</keywords>
    <keywords>ANACMP01</keywords>
    <keywords>Comparator</keywords>
    <properties xsi:type="ResourceModel:AppProperties_1_0" initProvider="true"/>
  </manifestInfo>
  <datagenerate fileName="ANACMP01.h" fileType="HFILE" templateFileName="ANACMP01.hdt" templateEngine="NONE" fileAction="COPY"/>
  <datagenerate fileName="ANACMP01.c" templateFileName="ANACMP01c.jet"/>
  <datagenerate fileName="ANACMP01_Conf.h" fileType="HFILE" templateFileName="ANACMP01Confh.jet"/>
  <datagenerate fileName="ANACMP01_Conf.c" templateFileName="ANACMP01Confc.jet"/>
  <connections sourceSignal="app/anacmp01/0/io001app_inp/io001_vs" targetSignal="app/anacmp01/0/acmp0_inp"/>
  <connections sourceSignal="app/anacmp01/0/io001app_inn/io001_vs" targetSignal="app/anacmp01/0/anacmp0_inn"/>
  <connections sourceSignal="app/anacmp01/0/anacmp0_out" targetSignal="SignalConfigurator_1649509524/io002_vs" isSystemDefined="false"/>
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
