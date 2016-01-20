<?xml version="1.0" encoding="ASCII"?>
<ResourceModel:App xmi:version="2.0" xmlns:xmi="http://www.omg.org/XMI" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xmlns:ResourceModel="http://www.infineon.com/Davex/Resource.ecore" name="IO001" description="IO001 App used by a higher level&#xA; app to configure an analog pin." descriptionURL="/doc/html/group___i_o___analog___i_o001_app.html" URI="http://www.infineon.com/1.0.16/app/io001/2" userLabel="G_REF">
  <upWardMappingList xsi:type="ResourceModel:ProxyResource" href="../../ANACMP01/1.0.12/anacmp01_1.app#//@consumed.6"/>
  <provided xsi:type="ResourceModel:VirtualSignal" name="Pad Signal" description="The signal of the pin; it can be mapped to input/output signal" evalFunction="&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;function ForwardMapping()&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;{&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;var Res = SCM.getResource(&quot;pin/pad&quot;);&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;}&#x9;&#x9;&#x9;&#x9;&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;function BackwardMapping()&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;{&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;var Res = SCM.getResource(&quot;pin/pad&quot;);&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;}&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;" URI="http://www.infineon.com/1.0.16/app/io001/2/io001_vs" requiredSignalResource="pin/pad">
    <defaultValue xsi:type="ResourceModel:Blocked" value="Blocked"/>
    <localValue xsi:type="ResourceModel:StringValue" value="Blocked"/>
    <globalValue xsi:type="ResourceModel:StringValue" value="Blocked"/>
  </provided>
  <provided xsi:type="ResourceModel:EnumerationParameter" name="Enable Digital Input" evalFunction="&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;function ForwardMapping()&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;{&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;var Res = SCM.getResource(&quot;IO001_DigitalModedummy&quot;); &#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;var value = SCM.getIntValue(currentResource);  &#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;if (value == 1 ) {&#xD;&#xA;                  SCM.setIntValue(Res,1);&#xD;&#xA;              } else if (value === 0 ) {&#xD;&#xA;                SCM.setIntValue(Res,0);&#xD;&#xA;              }&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;}&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;function BackwardMapping()&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;{&#xD;&#xA;              var Res = SCM.getResource(&quot;IO001_DigitalModedummy&quot;); &#xD;&#xA;              var value = SCM.getIntValue(Res); &#xD;&#xA;              if (value == -1) {&#xD;&#xA;                SCM.setIntValue(currentResource,0);&#xD;&#xA;              } else if (value === 1){&#xD;&#xA;                SCM.setIntValue(currentResource,1);               &#xD;&#xA;              }else if (value == 0){&#xD;&#xA;                SCM.setIntValue(currentResource,0);               &#xD;&#xA;              }     &#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;}&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;" URI="http://www.infineon.com/1.0.16/app/io001/2/io001_erwmode" multipleSelections="true">
    <localValue xsi:type="ResourceModel:StringValue" value="-1"/>
    <globalValue xsi:type="ResourceModel:StringValue" value="-1"/>
    <toolTipHelpDescription></toolTipHelpDescription>
    <item name="Enable Digital Input" evalFunction="&#xD;&#xA;            function ForwardMapping()&#xD;&#xA;            {&#xD;&#xA;              var Res = SCM.getResource(&quot;IO001_DigitalModedummy&quot;); &#xD;&#xA;              var value = SCM.getIntValue(currentResource);  &#xD;&#xA;              if (value == 1 ) {&#xD;&#xA;                    SCM.setIntValue(Res,1);&#xD;&#xA;                } else if (value === 0 ) {&#xD;&#xA;                  SCM.setIntValue(Res,0);&#xD;&#xA;                }&#xD;&#xA;            }&#xD;&#xA;            function BackwardMapping()&#xD;&#xA;            {&#xD;&#xA;                var Res = SCM.getResource(&quot;IO001_DigitalModedummy&quot;); &#xD;&#xA;                var value = SCM.getIntValue(Res); &#xD;&#xA;                if (value == -1) {&#xD;&#xA;                  SCM.setIntValue(currentResource,0);&#xD;&#xA;                } else if (value === 1){&#xD;&#xA;                  SCM.setIntValue(currentResource,1);               &#xD;&#xA;                }else if (value == 0){&#xD;&#xA;                  SCM.setIntValue(currentResource,0);               &#xD;&#xA;                }     &#xD;&#xA;            }&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;" URI="http://www.infineon.com/1.0.16/app/io001/2/io001_erwmode/0" downWardmappedList="//@consumed.2" maxValue="1" minValue="0">
      <defaultValue xsi:type="ResourceModel:IntegerValue" value="1"/>
      <localValue xsi:type="ResourceModel:StringValue" value="1"/>
      <globalValue xsi:type="ResourceModel:IntegerValue" value="1"/>
      <toolTipHelpDescription>This selection enables the digital input mode</toolTipHelpDescription>
    </item>
  </provided>
  <provided xsi:type="ResourceModel:EnumerationParameter" name="Input characteristics" evalFunction="&#xD;&#xA;          function ForwardMapping()&#xD;&#xA;          {&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;var Res = SCM.getResource(&quot;IO001_inputchardummy&quot;); &#xD;&#xA;            var value = SCM.getIntValue(currentResource);  &#xD;&#xA;            SCM.setIntValue(Res,value);&#xD;&#xA;          }&#xD;&#xA;          function BackwardMapping()&#xD;&#xA;          {&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;var Res = SCM.getResource(&quot;IO001_inputchardummy&quot;); &#xD;&#xA;            var value = SCM.getIntValue(Res); &#xD;&#xA;            if (value == -1) {&#xD;&#xA;              SCM.setIntValue(currentResource,0);&#xD;&#xA;            } else {&#xD;&#xA;              SCM.setIntValue(currentResource,value);               &#xD;&#xA;            }   &#xD;&#xA;          }&#xD;&#xA;        " URI="http://www.infineon.com/1.0.16/app/io001/2/io001_erwinputchar" downWardmappedList="//@consumed.1">
    <localValue xsi:type="ResourceModel:StringValue" value="-1"/>
    <globalValue xsi:type="ResourceModel:IntegerValue" value="0"/>
    <toolTipHelpDescription>Input characteristics of Pin
(Tristate, Pull up, Pull Down etc) </toolTipHelpDescription>
    <item name="Tristate" evalFunction="&#xD;&#xA;            function ForwardMapping()&#xD;&#xA;            {&#xD;&#xA;              var value = SCM.getIntValue(currentResource);&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;var Res = SCM.getResource(&quot;IO001_inputchardummy&quot;);&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#xD;&#xA;              if (value == 1 ) {&#xD;&#xA;                SCM.setIntValue(Res,0);       //0x000&#xD;&#xA;              } else if (value === 0) {&#xD;&#xA;                SCM.setIntValue(Res,0);&#xD;&#xA;              }&#xD;&#xA;            }&#xD;&#xA;            function BackwardMapping()&#xD;&#xA;            {&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;var Res = SCM.getResource(&quot;IO001_inputchardummy&quot;); &#xD;&#xA;              var value = SCM.getIntValue(Res);&#xD;&#xA;              if (value === 0 ) { &#xD;&#xA;                SCM.setIntValue(currentResource,1);&#xD;&#xA;              } else if (value == -1) {&#xD;&#xA;                SCM.setIntValue(currentResource,1);&#xD;&#xA;              } else {&#xD;&#xA;                SCM.setIntValue(currentResource,0);&#xD;&#xA;              }&#xD;&#xA;            }&#xD;&#xA;            " URI="http://www.infineon.com/1.0.16/app/io001/2/io001_erwinputchar/0" downWardmappedList="//@consumed.1" maxValue="1" minValue="0">
      <defaultValue xsi:type="ResourceModel:IntegerValue" value="1"/>
      <localValue xsi:type="ResourceModel:IntegerValue" value="0"/>
      <globalValue xsi:type="ResourceModel:IntegerValue" value="1"/>
      <toolTipHelpDescription>No input pull device selected</toolTipHelpDescription>
    </item>
    <item name="Pull down device" evalFunction="&#xD;&#xA;            function ForwardMapping()&#xD;&#xA;            {&#xD;&#xA;              var value = SCM.getIntValue(currentResource);&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;var Res = SCM.getResource(&quot;IO001_inputchardummy&quot;);&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#xD;&#xA;              if (value == 1 ) {&#xD;&#xA;                SCM.setIntValue(Res,1);       //0x001&#xD;&#xA;              } else if (value === 0) {&#xD;&#xA;                SCM.setIntValue(Res,0);&#xD;&#xA;              }&#xD;&#xA;            }&#xD;&#xA;            function BackwardMapping()&#xD;&#xA;            {&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;var Res = SCM.getResource(&quot;IO001_inputchardummy&quot;); &#xD;&#xA;              var value = SCM.getIntValue(Res); &#xD;&#xA;              if (value == 1 ) { &#xD;&#xA;                SCM.setIntValue(currentResource,1);&#xD;&#xA;              } else {&#xD;&#xA;                SCM.setIntValue(currentResource,0);&#xD;&#xA;              }&#xD;&#xA;            }&#xD;&#xA;            " URI="http://www.infineon.com/1.0.16/app/io001/2/io001_erwinputchar/1" downWardmappedList="//@consumed.1" maxValue="1" minValue="0">
      <defaultValue xsi:type="ResourceModel:IntegerValue" value="0"/>
      <localValue xsi:type="ResourceModel:StringValue" value="0"/>
      <globalValue xsi:type="ResourceModel:IntegerValue" value="0"/>
      <toolTipHelpDescription>Input pull-down device selected</toolTipHelpDescription>
    </item>
    <item name="Pull up device" evalFunction="&#xD;&#xA;            function ForwardMapping()&#xD;&#xA;            {&#xD;&#xA;              var value = SCM.getIntValue(currentResource);&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;var Res = SCM.getResource(&quot;IO001_inputchardummy&quot;);&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#xD;&#xA;              if (value == 1 ) {&#xD;&#xA;                SCM.setIntValue(Res,2);       //0x010&#xD;&#xA;              } else if (value === 0) {&#xD;&#xA;                SCM.setIntValue(Res,0);&#xD;&#xA;              }&#xD;&#xA;            }&#xD;&#xA;            function BackwardMapping()&#xD;&#xA;            {&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;var Res = SCM.getResource(&quot;IO001_inputchardummy&quot;); &#xD;&#xA;              var value = SCM.getIntValue(Res); &#xD;&#xA;              if (value == 2 ) { &#xD;&#xA;                SCM.setIntValue(currentResource,1);&#xD;&#xA;              } else {&#xD;&#xA;                SCM.setIntValue(currentResource,0);&#xD;&#xA;              }&#xD;&#xA;            }&#xD;&#xA;            " URI="http://www.infineon.com/1.0.16/app/io001/2/io001_erwinputchar/2" downWardmappedList="//@consumed.1" maxValue="1" minValue="0">
      <defaultValue xsi:type="ResourceModel:IntegerValue" value="0"/>
      <localValue xsi:type="ResourceModel:StringValue" value="0"/>
      <globalValue xsi:type="ResourceModel:IntegerValue" value="0"/>
      <toolTipHelpDescription>Input pull-up device selected</toolTipHelpDescription>
    </item>
    <item name="Continuous polling mode" evalFunction="&#xD;&#xA;            function ForwardMapping()&#xD;&#xA;            {&#xD;&#xA;              var value = SCM.getIntValue(currentResource);&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;var Res = SCM.getResource(&quot;IO001_inputchardummy&quot;);&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#xD;&#xA;              if (value == 1 ) {&#xD;&#xA;                SCM.setIntValue(Res,3);       //0x011&#xD;&#xA;              } else if (value === 0) {&#xD;&#xA;                SCM.setIntValue(Res,0);&#xD;&#xA;              }&#xD;&#xA;            }&#xD;&#xA;            function BackwardMapping()&#xD;&#xA;            {&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;var Res = SCM.getResource(&quot;IO001_inputchardummy&quot;); &#xD;&#xA;              var value = SCM.getIntValue(Res); &#xD;&#xA;              if (value == 3 ) { &#xD;&#xA;                SCM.setIntValue(currentResource,1);&#xD;&#xA;              } else {&#xD;&#xA;                SCM.setIntValue(currentResource,0);&#xD;&#xA;              }&#xD;&#xA;            }&#xD;&#xA;            " URI="http://www.infineon.com/1.0.16/app/io001/2/io001_erwinputchar/3" downWardmappedList="//@consumed.1" maxValue="1" minValue="0">
      <defaultValue xsi:type="ResourceModel:IntegerValue" value="0"/>
      <localValue xsi:type="ResourceModel:StringValue" value="0"/>
      <globalValue xsi:type="ResourceModel:IntegerValue" value="0"/>
      <toolTipHelpDescription>Input pull-up device selected</toolTipHelpDescription>
    </item>
    <item name="InvertedTristate" evalFunction="&#xD;&#xA;            function ForwardMapping()&#xD;&#xA;            {&#xD;&#xA;              var value = SCM.getIntValue(currentResource);&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;var Res = SCM.getResource(&quot;IO001_inputchardummy&quot;);&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#xD;&#xA;              if (value == 1 ) {&#xD;&#xA;                SCM.setIntValue(Res,4);       //0x100&#xD;&#xA;              } else if (value === 0) {&#xD;&#xA;                SCM.setIntValue(Res,0);&#xD;&#xA;              }&#xD;&#xA;            }&#xD;&#xA;            function BackwardMapping()&#xD;&#xA;            {&#xD;&#xA;&#x9;      var Res = SCM.getResource(&quot;IO001_inputchardummy&quot;); &#xD;&#xA;              var value = SCM.getIntValue(Res);&#xD;&#xA;              if (value == 4 ) { &#xD;&#xA;                SCM.setIntValue(currentResource,1);&#xD;&#xA;              }else {&#xD;&#xA;                SCM.setIntValue(currentResource,0);&#xD;&#xA;              }&#xD;&#xA;            }&#xD;&#xA;            " URI="http://www.infineon.com/1.0.16/app/io001/2/io001_erwinputchar/4" downWardmappedList="//@consumed.1" maxValue="1" minValue="0">
      <defaultValue xsi:type="ResourceModel:IntegerValue" value="1"/>
      <localValue xsi:type="ResourceModel:StringValue" value="1"/>
      <globalValue xsi:type="ResourceModel:IntegerValue" value="0"/>
      <toolTipHelpDescription>No input pull device selected</toolTipHelpDescription>
    </item>
    <item name="Inverted Pull down device" evalFunction="&#xD;&#xA;            function ForwardMapping()&#xD;&#xA;            {&#xD;&#xA;              var value = SCM.getIntValue(currentResource);&#xD;&#xA;&#x9;      var Res = SCM.getResource(&quot;IO001_inputchardummy&quot;);&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#xD;&#xA;              if (value == 1 ) {&#xD;&#xA;                SCM.setIntValue(Res,5);       //0x101&#xD;&#xA;              } else if (value === 0) {&#xD;&#xA;                SCM.setIntValue(Res,0);&#xD;&#xA;              }&#xD;&#xA;            }&#xD;&#xA;            function BackwardMapping()&#xD;&#xA;            {&#xD;&#xA;&#x9;      var Res = SCM.getResource(&quot;IO001_inputchardummy&quot;); &#xD;&#xA;              var value = SCM.getIntValue(Res); &#xD;&#xA;              if (value == 5 ) { &#xD;&#xA;                SCM.setIntValue(currentResource,1);&#xD;&#xA;              } else {&#xD;&#xA;                SCM.setIntValue(currentResource,0);&#xD;&#xA;              }&#xD;&#xA;            }&#xD;&#xA;            " URI="http://www.infineon.com/1.0.16/app/io001/2/io001_erwinputchar/5" downWardmappedList="//@consumed.1" maxValue="1" minValue="0">
      <defaultValue xsi:type="ResourceModel:IntegerValue" value="0"/>
      <localValue xsi:type="ResourceModel:StringValue" value="0"/>
      <globalValue xsi:type="ResourceModel:IntegerValue" value="0"/>
      <toolTipHelpDescription>Input pull-down device selected</toolTipHelpDescription>
    </item>
    <item name="Inverted Pull up device" evalFunction="&#xD;&#xA;            function ForwardMapping()&#xD;&#xA;            {&#xD;&#xA;              var value = SCM.getIntValue(currentResource);&#xD;&#xA;&#x9;      var Res = SCM.getResource(&quot;IO001_inputchardummy&quot;);&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#xD;&#xA;              if (value == 1 ) {&#xD;&#xA;                SCM.setIntValue(Res,6);       //0x110&#xD;&#xA;              } else if (value === 0) {&#xD;&#xA;                SCM.setIntValue(Res,0);&#xD;&#xA;              }&#xD;&#xA;            }&#xD;&#xA;            function BackwardMapping()&#xD;&#xA;            {&#xD;&#xA;&#x9;      var Res = SCM.getResource(&quot;IO001_inputchardummy&quot;); &#xD;&#xA;              var value = SCM.getIntValue(Res); &#xD;&#xA;              if (value == 6 ) { &#xD;&#xA;                SCM.setIntValue(currentResource,1);&#xD;&#xA;              } else {&#xD;&#xA;                SCM.setIntValue(currentResource,0);&#xD;&#xA;              }&#xD;&#xA;            }&#xD;&#xA;            " URI="http://www.infineon.com/1.0.16/app/io001/2/io001_erwinputchar/6" downWardmappedList="//@consumed.1" maxValue="1" minValue="0">
      <defaultValue xsi:type="ResourceModel:IntegerValue" value="0"/>
      <localValue xsi:type="ResourceModel:StringValue" value="0"/>
      <globalValue xsi:type="ResourceModel:IntegerValue" value="0"/>
      <toolTipHelpDescription>Input pull-up device selected</toolTipHelpDescription>
    </item>
    <item name="Inverted Continuous polling mode" evalFunction="&#xD;&#xA;            function ForwardMapping()&#xD;&#xA;            {&#xD;&#xA;              var value = SCM.getIntValue(currentResource);&#xD;&#xA;&#x9;      var Res = SCM.getResource(&quot;IO001_inputchardummy&quot;);&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#xD;&#xA;              if (value == 1 ) {&#xD;&#xA;                SCM.setIntValue(Res,7);       //0x0111&#xD;&#xA;              } else if (value === 0) {&#xD;&#xA;                SCM.setIntValue(Res,0);&#xD;&#xA;              }&#xD;&#xA;            }&#xD;&#xA;            function BackwardMapping()&#xD;&#xA;            {&#xD;&#xA;&#x9;      var Res = SCM.getResource(&quot;IO001_inputchardummy&quot;); &#xD;&#xA;              var value = SCM.getIntValue(Res); &#xD;&#xA;              if (value == 7 ) { &#xD;&#xA;                SCM.setIntValue(currentResource,1);&#xD;&#xA;              } else {&#xD;&#xA;                SCM.setIntValue(currentResource,0);&#xD;&#xA;              }&#xD;&#xA;            }&#xD;&#xA;            " URI="http://www.infineon.com/1.0.16/app/io001/2/io001_erwinputchar/7" downWardmappedList="//@consumed.1" maxValue="1" minValue="0">
      <defaultValue xsi:type="ResourceModel:IntegerValue" value="0"/>
      <localValue xsi:type="ResourceModel:StringValue" value="0"/>
      <globalValue xsi:type="ResourceModel:IntegerValue" value="0"/>
      <toolTipHelpDescription>Input pull-up device selected</toolTipHelpDescription>
    </item>
  </provided>
  <consumed xsi:type="ResourceModel:ProxyResource" evalFunction="function resourceCondition() {&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;var value = Solver.getSoftwareId().substring(0,1).compareTo(&quot;1&quot;);&#x9;&#x9;&#x9;&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;var constr = &quot;&quot;;&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;if (value == 0) {&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;constr=&quot;reserved([port,p,AA,pad,_],app_pin) \n uri_element_range(AA,[2])&quot;;&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;} else {&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;constr=&quot;reserved([port,p,AA,pad,_],app_pin) \n uri_element_range(AA,[14,15])&quot;;&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;}&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;Solver.setConstraintString(constr);&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;return true;&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;}" URI="http://www.infineon.com/1.0.16/app/io001/2/pin">
    <downWardmappedList xsi:type="ResourceModel:ResourceGroup" href="../../P2/P2_2.dd#//@provided.8"/>
    <requiredResource uriString="port/p/2/pad/6" uriType="LOCALTYPE"/>
  </consumed>
  <consumed xsi:type="ResourceModel:ProxyResource" URI="http://www.infineon.com/1.0.16/app/io001/2/io001_inputchardummy" upWardMappingList="//@provided.2 //@provided.2/@item.0 //@provided.2/@item.1 //@provided.2/@item.2 //@provided.2/@item.3 //@provided.2/@item.4 //@provided.2/@item.5 //@provided.2/@item.6 //@provided.2/@item.7" isSystemDefined="true">
    <localValue xsi:type="ResourceModel:IntegerValue" value="0"/>
    <globalValue xsi:type="ResourceModel:IntegerValue" value="0"/>
    <requiredResource uriString="" uriType="LOCALTYPE"/>
  </consumed>
  <consumed xsi:type="ResourceModel:ProxyResource" URI="http://www.infineon.com/1.0.16/app/io001/2/io001_digitalmodedummy" upWardMappingList="//@provided.1/@item.0" isSystemDefined="true">
    <localValue xsi:type="ResourceModel:IntegerValue" value="1"/>
    <globalValue xsi:type="ResourceModel:IntegerValue" value="1"/>
    <requiredResource uriString="" uriType="LOCALTYPE"/>
  </consumed>
  <consumed xsi:type="ResourceModel:ProxyResource" URI="http://www.infineon.com/1.0.16/app/io001/2/pin/pad" isSystemDefined="true">
    <downWardmappedList xsi:type="ResourceModel:SignalDeclaration" href="../../P2/P2_2.dd#//@provided.9"/>
  </consumed>
  <consumed xsi:type="ResourceModel:ProxyResource" URI="http://www.infineon.com/1.0.16/app/io001/2/pin/pdisc_pdis" isSystemDefined="true">
    <localValue xsi:type="ResourceModel:IntegerValue" value="1"/>
    <downWardmappedList xsi:type="ResourceModel:BitField" href="../../P2/P2_2.dd#//@provided.10"/>
    <globalValue xsi:type="ResourceModel:IntegerValue" value="1"/>
  </consumed>
  <consumed xsi:type="ResourceModel:ProxyResource" URI="http://www.infineon.com/1.0.16/app/io001/2/pin/iocr_pcr" isSystemDefined="true">
    <localValue xsi:type="ResourceModel:IntegerValue" value="0"/>
    <downWardmappedList xsi:type="ResourceModel:BitField" href="../../P2/P2_2.dd#//@provided.11"/>
    <globalValue xsi:type="ResourceModel:IntegerValue" value="0"/>
  </consumed>
  <categoryDescription description="Peripheral Specific Apps" name="Peripheral Specific Apps">
    <subCategory description="I/O Ports" name="I/O Ports">
      <subCategory description="Analog IO App" name="Analog IO App"/>
    </subCategory>
  </categoryDescription>
  <categoryDescription description="Basic Applications" name="Basic Applications">
    <subCategory description="Input/Output Signals" name="Input/Output Signals">
      <subCategory description="Analog IO App" name="Analog IO App"/>
    </subCategory>
  </categoryDescription>
  <manifestInfo version="1.0.16">
    <keywords>PORT</keywords>
    <keywords>GPIO</keywords>
    <keywords>IO</keywords>
    <keywords>IO001</keywords>
    <keywords>Pad</keywords>
    <properties xsi:type="ResourceModel:AppProperties_1_0" initProvider="true" isIOApp="true"/>
  </manifestInfo>
  <datagenerate fileName="IO001.h" fileType="HFILE" templateFileName="IO001.hdt" templateEngine="NONE" fileAction="COPY"/>
  <datagenerate fileName="IO001.c" templateFileName="IO001c.jet"/>
  <datagenerate fileName="IO001_Conf.c" templateFileName="IO001_Confc.jet"/>
  <datagenerate fileName="IO001_Conf.h" fileType="HFILE" templateFileName="IO001_Confh.jet"/>
  <softwareIdList>45.0.1</softwareIdList>
  <softwareIdList>45.0.2</softwareIdList>
  <softwareIdList>45.0.3</softwareIdList>
  <softwareIdList>45.2.3</softwareIdList>
  <softwareIdList>45.4.2</softwareIdList>
  <softwareIdList>45.4.3</softwareIdList>
  <softwareIdList>45.0200.1</softwareIdList>
  <softwareIdList>45.0200.2</softwareIdList>
  <softwareIdList>45.0200.3</softwareIdList>
  <softwareIdList>45.0202.3</softwareIdList>
  <softwareIdList>45.0204.3</softwareIdList>
  <softwareIdList>45.0204.2</softwareIdList>
  <softwareIdList>44.0.3</softwareIdList>
  <softwareIdList>44.00.5</softwareIdList>
  <softwareIdList>44.02.3</softwareIdList>
  <softwareIdList>44.02.5</softwareIdList>
  <softwareIdList>42.00.5</softwareIdList>
  <softwareIdList>42.0.6</softwareIdList>
  <softwareIdList>42.04.5</softwareIdList>
  <softwareIdList>42.04.6</softwareIdList>
  <softwareIdList>11.0100.7</softwareIdList>
  <softwareIdList>11.0100.9</softwareIdList>
  <softwareIdList>12.0100.7</softwareIdList>
  <softwareIdList>13.0102.7</softwareIdList>
  <softwareIdList>12.0101.7</softwareIdList>
  <softwareIdList>12.0102.8</softwareIdList>
  <softwareIdList>12.0102.9</softwareIdList>
  <softwareIdList>13.0101.7</softwareIdList>
  <softwareIdList>13.0101.9</softwareIdList>
  <softwareIdList>42.0200.5</softwareIdList>
  <softwareIdList>42.0204.5</softwareIdList>
  <softwareIdList>42.0204.6</softwareIdList>
  <softwareIdList>42.0200.6</softwareIdList>
  <softwareIdList>42.0208.6</softwareIdList>
  <softwareIdList>44.0200.5</softwareIdList>
  <softwareIdList>44.0202.3</softwareIdList>
  <softwareIdList>44.0202.5</softwareIdList>
  <softwareIdList>44.0200.3</softwareIdList>
  <softwareIdList>45.0300.1</softwareIdList>
  <softwareIdList>45.0300.3</softwareIdList>
  <softwareIdList>45.0302.3</softwareIdList>
  <softwareIdList>45.0304.2</softwareIdList>
  <softwareIdList>45.0300.2</softwareIdList>
  <softwareIdList>45.0304.3</softwareIdList>
  <softwareIdList>11.0100.10</softwareIdList>
  <softwareIdList>11.0100.11</softwareIdList>
  <softwareIdList>12.0101.11</softwareIdList>
  <softwareIdList>12.0102.10</softwareIdList>
  <softwareIdList>12.0102.11</softwareIdList>
  <softwareIdList>13.0101.10</softwareIdList>
  <softwareIdList>13.0101.11</softwareIdList>
  <softwareIdList>13.0102.10</softwareIdList>
  <softwareIdList>13.0102.11</softwareIdList>
  <softwareIdList>13.0102.9</softwareIdList>
</ResourceModel:App>
