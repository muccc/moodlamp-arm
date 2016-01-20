<?xml version="1.0" encoding="ASCII"?>
<ResourceModel:App xmi:version="2.0" xmlns:xmi="http://www.omg.org/XMI" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xmlns:ResourceModel="http://www.infineon.com/Davex/Resource.ecore" name="FLASH003" description="FLASH003 App supports operations and configurations&#xA;of the internal flash. It provides APIs for&#xA;Programming, Erase and Read operations" descriptionURL="/doc/html/group___f_l_a_s_h003_app.html" mode="SHARABLE" URI="http://www.infineon.com/1.0.10/app/flash003/0">
  <provided xsi:type="ResourceModel:VirtualSignal" name="FLASH Interrupt" URI="http://www.infineon.com/1.0.10/app/flash003/0/flash_interrupt" requiredSignalResource="nvm/sr">
    <localValue xsi:type="ResourceModel:StringValue" value="-1"/>
    <globalValue xsi:type="ResourceModel:StringValue" value="-1"/>
  </provided>
  <provided xsi:type="ResourceModel:EnumerationParameter" name="Interrupts for Seq" URI="http://www.infineon.com/1.0.10/app/flash003/0/flash003_erwcompletionofsequence" multipleSelections="true">
    <defaultValue xsi:type="ResourceModel:IntegerValue" value="0"/>
    <localValue xsi:type="ResourceModel:StringValue" value="0"/>
    <globalValue xsi:type="ResourceModel:StringValue" value="0"/>
    <toolTipHelpDescription></toolTipHelpDescription>
    <item name="Completion of Sequence" evalFunction="&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;function ForwardMapping()&#xD;&#xA;&#x9;&#x9;&#x9;    {&#xD;&#xA;&#x9;&#x9;&#x9;    var value = SCM.getIntValue(currentResource);&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;var Res = SCM.getResource(&quot;flash003_tempSeqEventtrigger&quot;);&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;var Res1 = SCM.getResource(&quot;flash003_tempECCEventtrigger&quot;);&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;var Res1_Value = SCM.getIntValue(Res1);&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;var dep1 = &quot;DependentApp&quot;;&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;var NvicRes1 = SCM.getResource(&quot;nvic_sr001&quot;);&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;SCM.setStringValue(NvicRes1,dep1);&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;var Interrupt_Enable = SCM.getResource(&quot;nvic_sr001/NVIC_SR001_erwEnableInt/0&quot;);&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;var Opr_Interrupt_Enable = SCM.getResource(&quot;nvic_sr001/NVIC_SR001_erwFlashOperationEventEnableInt/0&quot;);&#xD;&#xA; &#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;if(value == 1)&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;{&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;SCM.setIntValue(Res,value);&#xD;&#xA;&#x9;&#x9;&#x9;  &#x9;&#x9;&#x9;SCM.setIntValue(Interrupt_Enable,1);&#xD;&#xA;&#x9;&#x9;&#x9;  &#x9;&#x9;&#x9;SCM.setIntValue(Opr_Interrupt_Enable,1);&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;}&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;else&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;{&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;SCM.setIntValue(Res,0);&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;if(Res1_Value==0)&#xD;&#xA;                        {&#xD;&#xA;&#x9;&#x9;&#x9;  &#x9;&#x9;&#x9;SCM.setIntValue(Interrupt_Enable,0);&#x9;&#xD;&#xA;                        }&#x9;&#x9;  &#x9;&#x9;&#x9;&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;SCM.setIntValue(Opr_Interrupt_Enable,0);&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;}&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;}        &#xD;&#xA;&#x9;&#x9;&#x9;    function BackwardMapping()&#xD;&#xA;&#x9;&#x9;&#x9;    {&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;var Res = SCM.getResource(&quot;flash003_tempSeqEventtrigger&quot;);&#xD;&#xA;&#x9;&#x9;&#x9;    &#x9;var Intvalue = SCM.getIntValue(Res);&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;if (Intvalue == -1) {&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;SCM.setIntValue(currentResource,0);&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;} else if (Intvalue === 0) {&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;SCM.setIntValue(currentResource,0);&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;}else if(Intvalue ==1){&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;SCM.setIntValue(currentResource,1);&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;} &#xD;&#xA;&#x9;&#x9;&#x9;   &#x9;}&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;" URI="http://www.infineon.com/1.0.10/app/flash003/0/flash003_erwcompletionofsequence/0" downWardmappedList="//@consumed.8 //@consumed.5 //@consumed.12" maxValue="1" minValue="0">
      <defaultValue xsi:type="ResourceModel:IntegerValue" value="0"/>
      <localValue xsi:type="ResourceModel:StringValue" value="0"/>
      <globalValue xsi:type="ResourceModel:IntegerValue" value="0"/>
      <toolTipHelpDescription>When enabled, the completion of a sequence started by 
setting NVMPROG.ACTION (write, erase or verify-only 
sequence) will be indicated by NVM interrupt. The same is 
true for the wake-up sequence.</toolTipHelpDescription>
    </item>
  </provided>
  <provided xsi:type="ResourceModel:EnumerationParameter" name="Interrupts for ECC" URI="http://www.infineon.com/1.0.10/app/flash003/0/flash003_erwdoublebiteccevent" multipleSelections="true">
    <defaultValue xsi:type="ResourceModel:IntegerValue" value="0"/>
    <localValue xsi:type="ResourceModel:StringValue" value="0"/>
    <globalValue xsi:type="ResourceModel:StringValue" value="0"/>
    <toolTipHelpDescription></toolTipHelpDescription>
    <item name="Double Bit ECC Event" evalFunction="&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;function ForwardMapping()&#xD;&#xA;&#x9;&#x9;&#x9;    {&#xD;&#xA;&#x9;&#x9;&#x9;    var value = SCM.getIntValue(currentResource);&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;var Res = SCM.getResource(&quot;flash003_tempECCEventtrigger&quot;);&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;var Res1 = SCM.getResource(&quot;flash003_tempSeqEventtrigger&quot;);&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;var Res1_Value = SCM.getIntValue(Res1);&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;var dep1 = &quot;DependentApp&quot;;&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;var NvicRes1 = SCM.getResource(&quot;nvic_sr001&quot;);&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;SCM.setStringValue(NvicRes1,dep1);&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;var Interrupt_Enable = SCM.getResource(&quot;nvic_sr001/NVIC_SR001_erwEnableInt/0&quot;);&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;var Opr_Interrupt_Enable = SCM.getResource(&quot;nvic_sr001/NVIC_SR001_erwFlashDoubleEventEnableInt/0&quot;);&#xD;&#xA; &#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;if(value == 1)&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;{&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;SCM.setIntValue(Res,value);&#xD;&#xA;&#x9;&#x9;&#x9;  &#x9;&#x9;&#x9;SCM.setIntValue(Interrupt_Enable,1);&#xD;&#xA;&#x9;&#x9;&#x9;  &#x9;&#x9;&#x9;SCM.setIntValue(Opr_Interrupt_Enable,1);&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;}&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;else&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;{&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;SCM.setIntValue(Res,0);&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;if(Res1_Value == 0)&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;{&#xD;&#xA;&#x9;&#x9;&#x9;  &#x9;&#x9;&#x9;SCM.setIntValue(Interrupt_Enable,0);&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;}&#x9;&#x9;&#x9;  &#x9;&#x9;&#x9;&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;SCM.setIntValue(Opr_Interrupt_Enable,0);&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;}&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;}        &#xD;&#xA;&#x9;&#x9;&#x9;    function BackwardMapping()&#xD;&#xA;&#x9;&#x9;&#x9;    {&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;var Res = SCM.getResource(&quot;flash003_tempECCEventtrigger&quot;);&#xD;&#xA;&#x9;&#x9;&#x9;    &#x9;var Intvalue = SCM.getIntValue(Res);&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;if (Intvalue == -1) {&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;SCM.setIntValue(currentResource,0);&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;} else if (Intvalue === 0) {&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;SCM.setIntValue(currentResource,0);&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;}else if(Intvalue ==1){&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;SCM.setIntValue(currentResource,1);&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;} &#xD;&#xA;&#x9;&#x9;&#x9;   &#x9;}&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;" URI="http://www.infineon.com/1.0.10/app/flash003/0/flash003_erwdoublebiteccevent/0" downWardmappedList="//@consumed.8 //@consumed.6 //@consumed.11 //@consumed.13" maxValue="1" minValue="0">
      <defaultValue xsi:type="ResourceModel:IntegerValue" value="0"/>
      <localValue xsi:type="ResourceModel:StringValue" value="0"/>
      <globalValue xsi:type="ResourceModel:IntegerValue" value="0"/>
      <toolTipHelpDescription>When enabled, the if any Double bit Ecc error occurs 
while reading will be indicated by the interrupt</toolTipHelpDescription>
    </item>
  </provided>
  <provided xsi:type="ResourceModel:StringParameter" name="User defined Event Handler" URI="http://www.infineon.com/1.0.10/app/flash003/0/flash003_irwcallbackfunc">
    <defaultValue xsi:type="ResourceModel:StringValue" value=""/>
    <localValue xsi:type="ResourceModel:StringValue" value=""/>
    <globalValue xsi:type="ResourceModel:StringValue" value=""/>
    <toolTipHelpDescription>User defined callback function for End of Seq 
eg:handler1</toolTipHelpDescription>
  </provided>
  <provided xsi:type="ResourceModel:StringParameter" name="User defined Event Handler for ECC Error" URI="http://www.infineon.com/1.0.10/app/flash003/0/flash003_irwcallbackfunc2">
    <defaultValue xsi:type="ResourceModel:StringValue" value=""/>
    <localValue xsi:type="ResourceModel:StringValue" value=""/>
    <globalValue xsi:type="ResourceModel:StringValue" value=""/>
    <toolTipHelpDescription>User defined callback function for Double bit ECC 
eg:handler2</toolTipHelpDescription>
  </provided>
  <provided xsi:type="ResourceModel:IntegerParameter" name="Flash Memory Required" evalFunction="&#xD;&#xA;&#x9;&#x9;        function ForwardMapping(){&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;var Intvalue = SCM.getIntValue(currentResource);&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;var Res = SCM.getResource(&quot;flash003_tempflssize&quot;);&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;var StaAdd = SCM.getResource(&quot;flash003_tempStartAddress&quot;); &#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;var Actfls = SCM.getResource(&quot;flash003_tempflssizeactual&quot;); &#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;var EndAdd = SCM.getResource(&quot;flash003_tempEndAdderess&quot;);&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;var EndAddVal= SCM.getIntValue(EndAdd);&#xD;&#xA;&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;var tr1=Math.ceil(Intvalue / 256);&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;var Actual_flash= tr1*256;&#xD;&#xA;&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;var fls_start=0;&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;if(Actual_flash==0)&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;fls_start=EndAddVal;&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;else&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;fls_start=(EndAddVal-Actual_flash)+1;&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;SCM.setIntValue(Res,Intvalue);&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;SCM.setIntValue(Actfls,Actual_flash);&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;SCM.setIntValue(StaAdd,fls_start);&#xD;&#xA;&#x9;&#x9;         }&#xD;&#xA;&#x9;&#x9;        function BackwardMapping(){&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;var device_name=SCM.getDeviceName().toLowerCase();&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;var ab_type = device_name.lastIndexOf(&quot;-&quot;);&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;var f_type = device_name.lastIndexOf(&quot;f&quot;);&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;var flash_size=0;&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;var Res = SCM.getResource(&quot;flash003_tempflssize&quot;); &#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;var value = SCM.getIntValue(Res);&#xD;&#xA;                    SCM.setIntValue(currentResource,value);&#xD;&#xA;&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;if(ab_type>7)&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;flash_size = parseInt(device_name.substring(device_name.lastIndexOf(&quot;x&quot;)+1,device_name.lastIndexOf(&quot;-&quot;)),10);&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;else if(f_type>8)&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;flash_size = parseInt(device_name.substring(device_name.lastIndexOf(&quot;f&quot;)+1),10);&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;else&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;flash_size = parseInt(device_name.substring(device_name.lastIndexOf(&quot;x&quot;)+1),10);&#xD;&#xA;&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;var fls_max=flash_size*1024;//flash size is fetched&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;var fls_min=1;//0KB&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;SCM.setMinMaxValue(currentResource,fls_min,fls_max,1); &#xD;&#xA;&#x9;&#x9;        }" URI="http://www.infineon.com/1.0.10/app/flash003/0/flash003_erwflashmemoryreq" downWardmappedList="//@consumed.1 //@consumed.2 //@consumed.3" maxValue="32000" minValue="1">
    <defaultValue xsi:type="ResourceModel:IntegerValue" value="100"/>
    <localValue xsi:type="ResourceModel:StringValue" value="100"/>
    <globalValue xsi:type="ResourceModel:IntegerValue" value="100"/>
    <toolTipHelpDescription>This field defines the required Flash Size going to be Used </toolTipHelpDescription>
  </provided>
  <provided xsi:type="ResourceModel:IntegerParameter" name="Actual Flash Memory allocated" evalFunction="&#xD;&#xA;&#x9;&#x9;        function ForwardMapping(){&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;var Intvalue = SCM.getIntValue(currentResource);&#x9;&#x9;&#x9;&#x9;&#x9;&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;var Res2 = SCM.getResource(&quot;flash003_tempflssizeactual&quot;);&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;SCM.setIntValue(Res2, Intvalue);&#xD;&#xA;&#x9;&#x9;         }&#xD;&#xA;&#x9;&#x9;        function BackwardMapping(){&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;var Res = SCM.getResource(&quot;flash003_tempflssizeactual&quot;);&#xD;&#xA;           &#x9;&#x9;&#x9;var Actual_flash = SCM.getIntValue(Res);  &#xD;&#xA;&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;if(Actual_flash==204801){&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;var Res = SCM.getResource(&quot;flash003_tempflssize&quot;);&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;var Resvalue = SCM.getIntValue(Res);&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;var tr1=Math.ceil(Resvalue / 256);&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;var Actual_flash= tr1*256;&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;}    &#xD;&#xA;&#xD;&#xA;              &#x9;&#x9;SCM.setIntValue(currentResource, Actual_flash);&#xD;&#xA;&#x9;&#x9;        }" URI="http://www.infineon.com/1.0.10/app/flash003/0/flash003_erwflashmemoryactual" downWardmappedList="//@consumed.2" maxValue="32000" minValue="0">
    <defaultValue xsi:type="ResourceModel:IntegerValue" value="32001"/>
    <localValue xsi:type="ResourceModel:StringValue" value="32001"/>
    <globalValue xsi:type="ResourceModel:IntegerValue" value="100"/>
    <toolTipHelpDescription>This field defines the required Flash Size going to be Used </toolTipHelpDescription>
  </provided>
  <provided xsi:type="ResourceModel:IntegerParameter" name="Starting Address of the Flash" evalFunction="  &#xD;&#xA;&#x9;&#x9;        function ForwardMapping(){&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;var Intvalue = SCM.getIntValue(currentResource);&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;var Res2 = SCM.getResource(&quot;flash003_tempStartAddress&quot;);          &#x9;&#x9;&#x9;&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;SCM.setIntValue(Res2, Intvalue);&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;     &#xD;&#xA;&#x9;&#x9;         }&#xD;&#xA;&#x9;&#x9;        function BackwardMapping(){&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;var Res = SCM.getResource(&quot;flash003_tempStartAddress&quot;);&#xD;&#xA;           &#x9;&#x9;&#x9;var Intvalue = SCM.getIntValue(Res); &#xD;&#xA;&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9; if(Intvalue==268644352)&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9; {&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;var Res = SCM.getResource(&quot;flash003_tempflssize&quot;);&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;var Resvalue = SCM.getIntValue(Res);&#xD;&#xA;&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;var tr1=Math.ceil(Resvalue / 256);&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;var Actual_flash= tr1*256;&#xD;&#xA;&#x9;&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;var EndAdd = SCM.getResource(&quot;flash003_tempEndAdderess&quot;);&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;var EndAddVal= SCM.getIntValue(EndAdd);&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;if(Actual_flash==0)&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;{&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;  Intvalue=EndAddVal;&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;} else {&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;  Intvalue=(EndAddVal-Actual_flash)+1;&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;    }&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;    }    &#xD;&#xA;              &#x9;&#x9;SCM.setIntValue(currentResource, Intvalue);&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;}" URI="http://www.infineon.com/1.0.10/app/flash003/0/flash003_erwstartaddress" downWardmappedList="//@consumed.3" maxValue="10032FFF" minValue="0">
    <defaultValue xsi:type="ResourceModel:IntegerValue" value="10033000"/>
    <localValue xsi:type="ResourceModel:StringValue" value="10033000"/>
    <globalValue xsi:type="ResourceModel:IntegerValue" value="10032f00"/>
    <toolTipHelpDescription>This field defines the Start address of the flash based on User entered flash Size.</toolTipHelpDescription>
  </provided>
  <provided xsi:type="ResourceModel:IntegerParameter" name="End Address of the Flash" evalFunction="  &#xD;&#xA;&#x9;&#x9;        function ForwardMapping(){&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;var Intvalue = SCM.getIntValue(currentResource);&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;var Res2 = SCM.getResource(&quot;flash003_tempEndAdderess&quot;);&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;var device_name=SCM.getDeviceName().toLowerCase();&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;var ab_type = device_name.lastIndexOf(&quot;-&quot;);&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;var f_type = device_name.lastIndexOf(&quot;f&quot;);&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;var flash_size=0;&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;var fls_start=268439552;&#xD;&#xA;&#x9;&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;if(ab_type>7)&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;flash_size = parseInt(device_name.substring(device_name.lastIndexOf(&quot;x&quot;)+1,device_name.lastIndexOf(&quot;-&quot;)),10);&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;else if(f_type>8)&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;flash_size = parseInt(device_name.substring(device_name.lastIndexOf(&quot;f&quot;)+1),10);&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;else&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;flash_size = parseInt(device_name.substring(device_name.lastIndexOf(&quot;x&quot;)+1),10);&#xD;&#xA;&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;var fls_end=(fls_start+(1024*flash_size))-1;&#xD;&#xA;&#x9;        &#x9;&#x9;SCM.setIntValue(Res2, fls_end);&#xD;&#xA;&#x9;&#x9;         }&#xD;&#xA;&#x9;&#x9;        function BackwardMapping(){&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;var res = SCM.getResource(&quot;flash003_tempEndAdderess&quot;);&#xD;&#xA;              &#x9;&#x9;var fls_end = SCM.getIntValue(res);&#xD;&#xA;              &#x9;&#x9;SCM.setIntValue(currentResource, fls_end);&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;}" URI="http://www.infineon.com/1.0.10/app/flash003/0/flash003_erwendaddress" downWardmappedList="//@consumed.4" maxValue="10032FFF" minValue="0">
    <defaultValue xsi:type="ResourceModel:IntegerValue" value="0"/>
    <localValue xsi:type="ResourceModel:StringValue" value="0"/>
    <globalValue xsi:type="ResourceModel:IntegerValue" value="10032fff"/>
    <toolTipHelpDescription>This field defines the End address of the flash based on User entered flash Size.</toolTipHelpDescription>
  </provided>
  <consumed xsi:type="ResourceModel:ProxyResource" URI="http://www.infineon.com/1.0.10/app/flash003/0/nvm" constraintType="GLOBAL_RESOURCE">
    <downWardmappedList xsi:type="ResourceModel:ResourceGroup" href="../../NVM/NVM_0.dd#//@provided.0"/>
    <requiredResource uriString="peripheral/nvm/0/nvm" uriType="LOCALTYPE"/>
  </consumed>
  <consumed xsi:type="ResourceModel:ProxyResource" URI="http://www.infineon.com/1.0.10/app/flash003/0/flash003_tempflssize" upWardMappingList="//@provided.5 //@provided.6 //@provided.7" isSystemDefined="true">
    <localValue xsi:type="ResourceModel:IntegerValue" value="100"/>
    <globalValue xsi:type="ResourceModel:IntegerValue" value="100"/>
    <requiredResource uriString="" uriType="LOCALTYPE"/>
  </consumed>
  <consumed xsi:type="ResourceModel:ProxyResource" URI="http://www.infineon.com/1.0.10/app/flash003/0/flash003_tempflssizeactual" upWardMappingList="//@provided.5 //@provided.6" isSystemDefined="true">
    <localValue xsi:type="ResourceModel:IntegerValue" value="32001"/>
    <globalValue xsi:type="ResourceModel:IntegerValue" value="32001"/>
    <requiredResource uriString="" uriType="LOCALTYPE"/>
  </consumed>
  <consumed xsi:type="ResourceModel:ProxyResource" URI="http://www.infineon.com/1.0.10/app/flash003/0/flash003_tempstartaddress" upWardMappingList="//@provided.5 //@provided.7" isSystemDefined="true">
    <localValue xsi:type="ResourceModel:IntegerValue" value="10033000"/>
    <globalValue xsi:type="ResourceModel:IntegerValue" value="10033000"/>
    <requiredResource uriString="" uriType="LOCALTYPE"/>
  </consumed>
  <consumed xsi:type="ResourceModel:ProxyResource" URI="http://www.infineon.com/1.0.10/app/flash003/0/flash003_tempendadderess" upWardMappingList="//@provided.5 //@provided.7 //@provided.8" isSystemDefined="true">
    <localValue xsi:type="ResourceModel:IntegerValue" value="10032fff"/>
    <globalValue xsi:type="ResourceModel:IntegerValue" value="10032fff"/>
    <requiredResource uriString="" uriType="LOCALTYPE"/>
  </consumed>
  <consumed xsi:type="ResourceModel:ProxyResource" URI="http://www.infineon.com/1.0.10/app/flash003/0/flash003_tempseqeventtrigger" upWardMappingList="//@provided.1/@item.0 //@provided.2/@item.0" isSystemDefined="true">
    <localValue xsi:type="ResourceModel:IntegerValue" value="0"/>
    <globalValue xsi:type="ResourceModel:IntegerValue" value="0"/>
    <requiredResource uriString="" uriType="LOCALTYPE"/>
  </consumed>
  <consumed xsi:type="ResourceModel:ProxyResource" URI="http://www.infineon.com/1.0.10/app/flash003/0/flash003_tempecceventtrigger" upWardMappingList="//@provided.1/@item.0 //@provided.2/@item.0" isSystemDefined="true">
    <localValue xsi:type="ResourceModel:IntegerValue" value="0"/>
    <globalValue xsi:type="ResourceModel:IntegerValue" value="0"/>
    <requiredResource uriString="" uriType="LOCALTYPE"/>
  </consumed>
  <consumed xsi:type="ResourceModel:ProxyResource" URI="http://www.infineon.com/1.0.10/app/flash003/0/flash003_tempeventdisable" isSystemDefined="true">
    <requiredResource uriString="" uriType="LOCALTYPE"/>
  </consumed>
  <consumed xsi:type="ResourceModel:ProxyResource" evalFunction="function resourceCondition() {&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;  var Res = Solver.getResource(&quot;flash003_tempSeqEventtrigger&quot;);&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;  var Res2 = Solver.getResource(&quot;flash003_tempECCEventtrigger&quot;);&#xD;&#xA;&#x9;&#x9;&#x9;          var value = Solver.getIntValue(Res);&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;  var value2 = Solver.getIntValue(Res2);&#xD;&#xA;&#x9;&#x9;&#x9;          if ((value > 0)||(value2 > 0))&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;   {&#xD;&#xA;&#x9;&#x9;&#x9;            return true;&#xD;&#xA; &#x9;&#x9;&#x9;&#x9;&#x9;&#x9;}&#xD;&#xA;&#x9;&#x9;&#x9;          return false;&#xD;&#xA;&#x9;&#x9;&#x9;        }" URI="http://www.infineon.com/1.0.10/app/flash003/0/nvic_sr001" upWardMappingList="//@provided.1/@item.0 //@provided.2/@item.0">
    <localValue xsi:type="ResourceModel:StringValue" value="DependentApp"/>
    <globalValue xsi:type="ResourceModel:StringValue" value="DependentApp"/>
    <requiredResource uriString="app/nvic_sr001/0" uriType="LOCALTYPE"/>
  </consumed>
  <consumed xsi:type="ResourceModel:ProxyResource" URI="http://www.infineon.com/1.0.10/app/flash003/0/nvm/sr" isSystemDefined="true">
    <downWardmappedList xsi:type="ResourceModel:SignalDeclaration" href="../../NVM/NVM_0.dd#//@provided.1"/>
  </consumed>
  <consumed xsi:type="ResourceModel:ProxyResource" URI="http://www.infineon.com/1.0.10/app/flash003/0/nvm/conf" isSystemDefined="true">
    <localValue xsi:type="ResourceModel:IntegerValue" value="9000"/>
    <downWardmappedList xsi:type="ResourceModel:RegisterParameter" href="../../NVM/NVM_0.dd#//@provided.2"/>
    <globalValue xsi:type="ResourceModel:IntegerValue" value="9000"/>
  </consumed>
  <consumed xsi:type="ResourceModel:ProxyResource" URI="http://www.infineon.com/1.0.10/app/flash003/0/nvic_sr001/nvic_sr001_erwenableint/0" upWardMappingList="//@provided.2/@item.0" isSystemDefined="true">
    <localValue xsi:type="ResourceModel:IntegerValue" value="0"/>
    <globalValue xsi:type="ResourceModel:IntegerValue" value="0"/>
  </consumed>
  <consumed xsi:type="ResourceModel:ProxyResource" URI="http://www.infineon.com/1.0.10/app/flash003/0/nvic_sr001/nvic_sr001_erwflashoperationeventenableint/0" upWardMappingList="//@provided.1/@item.0" isSystemDefined="true">
    <localValue xsi:type="ResourceModel:IntegerValue" value="0"/>
    <globalValue xsi:type="ResourceModel:IntegerValue" value="0"/>
  </consumed>
  <consumed xsi:type="ResourceModel:ProxyResource" URI="http://www.infineon.com/1.0.10/app/flash003/0/nvic_sr001/nvic_sr001_erwflashdoubleeventenableint/0" upWardMappingList="//@provided.2/@item.0" isSystemDefined="true">
    <localValue xsi:type="ResourceModel:IntegerValue" value="0"/>
    <globalValue xsi:type="ResourceModel:IntegerValue" value="0"/>
  </consumed>
  <propertyConstants name="uriDevice" value="device/"/>
  <categoryDescription description="Peripheral Specific Apps" name="Peripheral Specific Apps">
    <subCategory description="Flash Unit" name="Flash Unit"/>
  </categoryDescription>
  <categoryDescription description="Basic Applications" name="Basic Applications">
    <subCategory description="Flash Programming" name="Flash Programming"/>
  </categoryDescription>
  <manifestInfo version="1.0.10">
    <keywords>Flash</keywords>
    <keywords>Internal Flash</keywords>
    <properties xsi:type="ResourceModel:AppProperties_1_0" initProvider="true" singleton="true"/>
  </manifestInfo>
  <datagenerate fileName="FLASH003.h" fileType="HFILE" templateFileName="FLASH003.hdt" templateEngine="NONE" fileAction="COPY"/>
  <datagenerate fileName="FLASH003.c" templateFileName="FLASH003c.jet"/>
  <datagenerate fileName="FLASH003_Conf.c" templateFileName="FLASH003_Confc.jet"/>
  <datagenerate fileName="FLASH003_Conf.h" fileType="HFILE" templateFileName="FLASH003_Confh.jet"/>
  <softwareIdList>11.0100.7</softwareIdList>
  <softwareIdList>11.0100.9</softwareIdList>
  <softwareIdList>12.0100.7</softwareIdList>
  <softwareIdList>12.0101.7</softwareIdList>
  <softwareIdList>12.0102.9</softwareIdList>
  <softwareIdList>12.0102.8</softwareIdList>
  <softwareIdList>13.0102.7</softwareIdList>
  <softwareIdList>13.0101.9</softwareIdList>
  <softwareIdList>13.0101.7</softwareIdList>
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
