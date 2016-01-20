<?xml version="1.0" encoding="ASCII"?>
<ResourceModel:App xmi:version="2.0" xmlns:xmi="http://www.omg.org/XMI" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xmlns:ResourceModel="http://www.infineon.com/Davex/Resource.ecore" name="DMX512RD01" description="This App provides the user configuration&#xA;for DMX512 Application Stack.&#xA;Note: IO002 App is required to select DMX512&#xA;input as well as Accurate Break Detection input." descriptionURL="/doc/html/group___d_m_x512_r_d01_app.html" URI="http://www.infineon.com/1.0.4/app/dmx512rd01/0">
  <upWardMappingList xsi:type="ResourceModel:ProxyResource" href="../../IO002/1.0.30/io002_6.app#//@consumed.10"/>
  <provided xsi:type="ResourceModel:VirtualSignal" name="Capture Global Signal" URI="http://www.infineon.com/1.0.4/app/dmx512rd01/0/dmx512rd01_globalsignal_vs" requiredSignalResource="capturehw/global_signal" canExpose="false">
    <localValue xsi:type="ResourceModel:StringValue" value="-1"/>
    <globalValue xsi:type="ResourceModel:StringValue" value="-1"/>
  </provided>
  <provided xsi:type="ResourceModel:VirtualSignal" name="Period Capture Event" URI="http://www.infineon.com/1.0.4/app/dmx512rd01/0/capture_periodcapture_interrupt_vs" requiredSignalResource="capturehw/e0as" canExpose="false">
    <localValue xsi:type="ResourceModel:StringValue" value="-1"/>
    <globalValue xsi:type="ResourceModel:StringValue" value="-1"/>
  </provided>
  <provided xsi:type="ResourceModel:VirtualSignal" name="Accurate Break Detection Input" URI="http://www.infineon.com/1.0.4/app/dmx512rd01/0/capture_input_period_signal_vs" requiredSignalResource="capturehw/gp0_unsync">
    <localValue xsi:type="ResourceModel:StringValue" value="-1"/>
    <globalValue xsi:type="ResourceModel:StringValue" value="-1"/>
  </provided>
  <provided xsi:type="ResourceModel:VirtualSignal" name="DMX512 Input" URI="http://www.infineon.com/1.0.4/app/dmx512rd01/0/usic_rx_vs" requiredSignalResource="usic_channhw/dx0ins">
    <localValue xsi:type="ResourceModel:StringValue" value="-1"/>
    <globalValue xsi:type="ResourceModel:StringValue" value="-1"/>
  </provided>
  <provided xsi:type="ResourceModel:VirtualSignal" name="USIC Receive FIFO Buffer Interrupt" URI="http://www.infineon.com/1.0.4/app/dmx512rd01/0/dmx512rd01_usic_srbi_vs" requiredSignalResource="usic_channhw/standard_receive_buffer_int" canExpose="false">
    <localValue xsi:type="ResourceModel:StringValue" value="-1"/>
    <globalValue xsi:type="ResourceModel:StringValue" value="-1"/>
  </provided>
  <provided xsi:type="ResourceModel:EnumerationParameter" name="Enable Accurate Break Detection" evalFunction="&#xD;&#xA;        function ForwardMapping()&#xD;&#xA;        {&#xD;&#xA;        var value = SCM.getIntValue(currentResource);&#xD;&#xA;        var Res = SCM.getResource(&quot;usic_channhw/rbctr_size&quot;);&#xD;&#xA;        SCM.setIntValue(Res,value);        &#xD;&#xA;        }&#xD;&#xA;        function BackwardMapping()&#xD;&#xA;        {&#xD;&#xA;        var Res = SCM.getResource(&quot;usic_channhw/rbctr_size&quot;);&#xD;&#xA;        var value = SCM.getIntValue(Res);&#xD;&#xA;//        SCM.setIntValue(currentResource,value);&#xD;&#xA;      }" URI="http://www.infineon.com/1.0.4/app/dmx512rd01/0/dmx512rd01_accbredetect" downWardmappedList="//@consumed.30" multipleSelections="true">
    <defaultValue xsi:type="ResourceModel:IntegerValue" value="0"/>
    <localValue xsi:type="ResourceModel:StringValue" value="0"/>
    <globalValue xsi:type="ResourceModel:IntegerValue" value="0"/>
    <toolTipHelpDescription>Use CCU4 Slice for accurate break detection (min 92us)</toolTipHelpDescription>
    <item name="Enable Accurate Break Detection" evalFunction="&#xD;&#xA;            function ForwardMapping()&#xD;&#xA;            {&#xD;&#xA;              var value = SCM.getIntValue(currentResource);&#xD;&#xA;              var Res3 = SCM.getResource(&quot;dmx512rd01_dummy_AccBreDetect&quot;);&#xD;&#xA;              var isr = SCM.getResource(&quot;nvicapp2/nvic002_srwuserfunction&quot;); &#xD;&#xA;              SCM.setIntValue(Res3, value);&#xD;&#xA;              if (value == 1 )&#xD;&#xA;              {&#xD;&#xA;                SCM.setStringValue(isr,&quot;DMX512RD01_CaptTmr_isr&quot;);  &#xD;&#xA;              }&#xD;&#xA;              else&#xD;&#xA;              {&#xD;&#xA;                SCM.setIntValue(Res3, 0);&#xD;&#xA;              }&#xD;&#xA;              var dep = &quot;DependentApp&quot;;&#xD;&#xA;              var DepRes1 = SCM.getResource(&quot;capturehw&quot;); &#xD;&#xA;              var DepRes2 = SCM.getResource(&quot;nvicapp2&quot;); &#xD;&#xA;              var DepRes3 = SCM.getResource(&quot;ccu4globalapp&quot;); &#xD;&#xA;              SCM.setStringValue(DepRes1,dep);&#xD;&#xA;              SCM.setStringValue(DepRes2,dep);&#xD;&#xA;              SCM.setStringValue(DepRes3,dep);&#xD;&#xA;            }&#xD;&#xA;            function BackwardMapping()&#xD;&#xA;            {&#xD;&#xA;              var Res3 = SCM.getResource(&quot;dmx512rd01_dummy_AccBreDetect&quot;);&#xD;&#xA;              var value3 = SCM.getIntValue(Res3);&#xD;&#xA;              if (value3 == -1) &#xD;&#xA;              { &#xD;&#xA;                SCM.setIntValue(currentResource,0);&#xD;&#xA;              }&#xD;&#xA;              else&#xD;&#xA;              {&#xD;&#xA;                SCM.setIntValue(currentResource,value3);&#xD;&#xA;              }&#xD;&#xA;            }" URI="http://www.infineon.com/1.0.4/app/dmx512rd01/0/dmx512rd01_accbredetect/0" downWardmappedList="//@consumed.11 //@consumed.3 //@consumed.4 //@consumed.2" maxValue="1" minValue="0">
      <defaultValue xsi:type="ResourceModel:IntegerValue" value="0"/>
      <localValue xsi:type="ResourceModel:StringValue" value="0"/>
      <globalValue xsi:type="ResourceModel:IntegerValue" value="0"/>
      <toolTipHelpDescription>Use CCU4 Slice for accurate break detection (min 92us)</toolTipHelpDescription>
    </item>
  </provided>
  <provided xsi:type="ResourceModel:EnumerationParameter" name="Mode of Reception" URI="http://www.infineon.com/1.0.4/app/dmx512rd01/0/dmx512rd01_mode_rx">
    <defaultValue xsi:type="ResourceModel:IntegerValue" value="1"/>
    <localValue xsi:type="ResourceModel:StringValue" value="1"/>
    <globalValue xsi:type="ResourceModel:StringValue" value="1"/>
    <item name="Using 1 USIC Channel + 1 CCU4 Slice" URI="http://www.infineon.com/1.0.4/app/dmx512rd01/0/dmx512rd01_mode_rx/0" maxValue="1" minValue="0">
      <defaultValue xsi:type="ResourceModel:IntegerValue" value="1"/>
      <localValue xsi:type="ResourceModel:IntegerValue" value="0"/>
      <globalValue xsi:type="ResourceModel:IntegerValue" value="0"/>
      <toolTipHelpDescription>USIC Channel is used to receive the DMX512 Slot data, CCU4 Slice is used to detect a break.</toolTipHelpDescription>
    </item>
    <item name="Using 1 USIC Channel with SBD" URI="http://www.infineon.com/1.0.4/app/dmx512rd01/0/dmx512rd01_mode_rx/1" maxValue="1" minValue="0">
      <defaultValue xsi:type="ResourceModel:IntegerValue" value="1"/>
      <localValue xsi:type="ResourceModel:StringValue" value="1"/>
      <globalValue xsi:type="ResourceModel:StringValue" value="1"/>
      <toolTipHelpDescription>Select to receive DMX512 master's signals with a UART receiver.</toolTipHelpDescription>
    </item>
  </provided>
  <provided xsi:type="ResourceModel:IntegerParameter" name="First Relevant Slot" evalFunction="&#xD;&#xA;                    function ForwardMapping(){ &#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9; var tempRes = SCM.getResource(&quot;dmx512rd01_dummy_slave_num&quot;);&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9; var value = SCM.getIntValue(currentResource); &#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9; SCM.setIntValue(tempRes,value); &#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9; var tempRes1 = SCM.getResource(&quot;dmx512rd01_dummy_num_chnl&quot;);&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9; var value1 = SCM.getIntValue(tempRes1); &#xD;&#xA;                         if(512-(value-1) &lt; value1)&#xD;&#xA;                         {&#xD;&#xA;                            SCM.setIntValue(tempRes1,512-(value-1));&#xD;&#xA;                         }&#xD;&#xA;                         else&#xD;&#xA;                         {&#xD;&#xA;                            SCM.setIntValue(tempRes1, value1);&#xD;&#xA;                         }&#xD;&#xA;&#xD;&#xA;//&#x9;&#x9;&#x9;&#x9;&#x9;&#x9; var tempRes1 = SCM.getResource(&quot;dmx512rd01_num_chnl&quot;);&#xD;&#xA;//&#x9;&#x9;&#x9;&#x9;&#x9;&#x9; var value1 = SCM.getIntValue(tempRes1); &#xD;&#xA;//&#x9;&#x9;&#x9;&#x9;&#x9;&#x9; var value = SCM.getIntValue(currentResource); &#xD;&#xA;//&#x9;&#x9;&#x9;&#x9;&#x9;&#x9; SCM.setIntValue(tempRes,value); &#xD;&#xA;//&#x9;&#x9;&#x9;&#x9;&#x9;&#x9; SCM.setMinMaxValue(currentResource,0,value1,1);&#xD;&#xA;                    }&#xD;&#xA;                    function BackwardMapping(){   &#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9; var tempRes = SCM.getResource(&quot;dmx512rd01_dummy_slave_num&quot;);&#xD;&#xA;              &#x9;&#x9;&#x9; var value = SCM.getIntValue(tempRes);&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#xD;&#xA;&#x9;&#x9;&#x9;   &#x9;&#x9;&#x9; SCM.setIntValue(currentResource,value);&#xD;&#xA;                    }&#xD;&#xA;                    " URI="http://www.infineon.com/1.0.4/app/dmx512rd01/0/dmx512rd01_slave_num" downWardmappedList="//@consumed.9 //@consumed.7" maxValue="200" minValue="1">
    <defaultValue xsi:type="ResourceModel:IntegerValue" value="1"/>
    <localValue xsi:type="ResourceModel:StringValue" value="1"/>
    <globalValue xsi:type="ResourceModel:IntegerValue" value="1"/>
    <toolTipHelpDescription>The Receiving Device ignores the 
preceding slots in the packet.</toolTipHelpDescription>
  </provided>
  <provided xsi:type="ResourceModel:IntegerParameter" name="Consumed Apps Configuration (Don't add this)" evalFunction="&#xD;&#xA;                    function ForwardMapping(){ &#x9;&#x9;           &#xD;&#xA;&#x9;&#x9;             var Res4 = SCM.getResource(&quot;nvicapp1/nvic002_erwenableint/0&quot;); &#xD;&#xA;&#x9;&#x9;             SCM.setIntValue(Res4,1);&#xD;&#xA;&#x9;&#x9;             var Res5 = SCM.getResource(&quot;nvicapp1/nvic002_srwuserfunction&quot;); &#xD;&#xA;&#x9;&#x9;             SCM.setStringValue(Res5,&quot;DMX512RD01_UART_isr&quot;);&#xD;&#xA;&#xD;&#xA;&#x9;&#x9;             var Res6 = SCM.getResource(&quot;nvicapp2/nvic002_erwenableint/0&quot;); &#xD;&#xA;&#x9;&#x9;             SCM.setIntValue(Res6,1);&#xD;&#xA;&#x9;&#x9;             var Res7 = SCM.getResource(&quot;nvicapp2/nvic002_srwuserfunction&quot;); &#xD;&#xA;&#x9;&#x9;             SCM.setStringValue(Res7,&quot;DMX512RD01_CaptTmr_isr&quot;);&#xD;&#xA;&#x9;&#x9;             var Res8 = SCM.getResource(&quot;usic_channhw/rbctr_size&quot;); &#xD;&#xA;&#x9;&#x9;             SCM.setIntValue(Res8,1);&#xD;&#xA;&#x9;&#x9;             var Res9 = SCM.getResource(&quot;usic_channhw/rbctr_dptr&quot;); &#xD;&#xA;&#x9;&#x9;             SCM.setIntValue(Res9,0);&#xD;&#xA;&#xD;&#xA;                 }&#xD;&#xA;                    function BackwardMapping(){   &#xD;&#xA;            &#x9;&#x9;SCM.setIntValue(currentResource,0);    &#xD;&#xA;&#x9;&#x9;             var Res = SCM.getResource(&quot;usic_channhw/rbctr_size&quot;);&#xD;&#xA;                     var value = SCM.getIntValue(Res); &#xD;&#xA;&#x9;&#x9;             var Res1 = SCM.getResource(&quot;usic_channhw/rbctr_dptr&quot;); &#xD;&#xA;                     var value1 = SCM.getIntValue(Res1); &#xD;&#xA;                    }&#xD;&#xA;                    " URI="http://www.infineon.com/1.0.4/app/dmx512rd01/0/dmx512rd01_consappsconfig" downWardmappedList="//@consumed.32 //@consumed.33 //@consumed.34 //@consumed.35 //@consumed.30 //@consumed.31" maxValue="0" minValue="0">
    <defaultValue xsi:type="ResourceModel:IntegerValue" value="0"/>
    <localValue xsi:type="ResourceModel:StringValue" value="0"/>
    <globalValue xsi:type="ResourceModel:IntegerValue" value="0"/>
    <toolTipHelpDescription>Don't use this</toolTipHelpDescription>
  </provided>
  <provided xsi:type="ResourceModel:IntegerParameter" name="Number of Relevant Slots" evalFunction="&#xD;&#xA;                    function ForwardMapping(){ &#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9; var tempRes = SCM.getResource(&quot;dmx512rd01_dummy_num_chnl&quot;);&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;  var value = SCM.getIntValue(currentResource); &#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9; SCM.setIntValue(tempRes,value); &#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9; var tempRes1 = SCM.getResource(&quot;dmx512rd01_dummy_slave_num&quot;);&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9; var value1 = SCM.getIntValue(tempRes1);&#xD;&#xA;                         value1 = 512 - (value1-1);&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9; SCM.setMinMaxValue(currentResource,0,value1,1);&#xD;&#xA;                    }&#xD;&#xA;                    function BackwardMapping(){   &#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9; var tempRes = SCM.getResource(&quot;dmx512rd01_dummy_num_chnl&quot;);&#xD;&#xA;              &#x9;&#x9;&#x9; var value = SCM.getIntValue(tempRes);&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#xD;&#xA;&#x9;&#x9;&#x9;   &#x9;&#x9;&#x9; SCM.setIntValue(currentResource,value);&#xD;&#xA;                    }&#xD;&#xA;                    " URI="http://www.infineon.com/1.0.4/app/dmx512rd01/0/dmx512rd01_num_chnl" downWardmappedList="//@consumed.7" maxValue="200" minValue="0">
    <defaultValue xsi:type="ResourceModel:IntegerValue" value="03"/>
    <localValue xsi:type="ResourceModel:StringValue" value="6"/>
    <globalValue xsi:type="ResourceModel:IntegerValue" value="6"/>
    <toolTipHelpDescription>The Receiving Device updates its LEDs 
based on these slots (starting with the 
first Relevant Slot).</toolTipHelpDescription>
  </provided>
  <provided xsi:type="ResourceModel:IntegerParameter" name="Number of Slots" evalFunction="&#xD;&#xA;                    function ForwardMapping(){ &#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9; var tempRes = SCM.getResource(&quot;dmx512rd01_dummy_num_slots&quot;);&#xD;&#xA; &#x9;&#x9;&#x9;&#x9;&#x9;&#x9; var tempRes1 = SCM.getResource(&quot;dmx512rd01_num_chnl&quot;);&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9; var value1 = SCM.getIntValue(tempRes1); &#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9; var value = SCM.getIntValue(currentResource); &#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9; SCM.setIntValue(tempRes,value); &#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9; SCM.setMinMaxValue(currentResource,0,value1,1);&#xD;&#xA;                    }&#xD;&#xA;                    function BackwardMapping(){   &#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9; var tempRes = SCM.getResource(&quot;dmx512rd01_dummy_num_slots&quot;);&#xD;&#xA;              &#x9;&#x9;&#x9; var value = SCM.getIntValue(tempRes);&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#xD;&#xA;&#x9;&#x9;&#x9;   &#x9;&#x9;&#x9; SCM.setIntValue(currentResource,value);&#xD;&#xA;                    }&#xD;&#xA;                    " URI="http://www.infineon.com/1.0.4/app/dmx512rd01/0/dmx512rd01_num_slots" downWardmappedList="//@consumed.8" maxValue="3" minValue="0">
    <defaultValue xsi:type="ResourceModel:IntegerValue" value="3"/>
    <localValue xsi:type="ResourceModel:StringValue" value="3"/>
    <globalValue xsi:type="ResourceModel:IntegerValue" value="3"/>
    <toolTipHelpDescription>Select the actual number of slots consumed by this Master.
Depends on the &quot;Number of Channels&quot; Field.
RGB = 3, RGBWAF = 6, Red LED = 1 etc.</toolTipHelpDescription>
  </provided>
  <provided xsi:type="ResourceModel:IntegerParameter" name="Signal Tolerance" URI="http://www.infineon.com/1.0.4/app/dmx512rd01/0/dmx512rd01_tolerance" maxValue="64" minValue="1">
    <defaultValue xsi:type="ResourceModel:IntegerValue" value="0A"/>
    <localValue xsi:type="ResourceModel:StringValue" value="0A"/>
    <globalValue xsi:type="ResourceModel:StringValue" value="0A"/>
    <toolTipHelpDescription>Tolerance of error acceptable(%) on bit time.</toolTipHelpDescription>
  </provided>
  <provided xsi:type="ResourceModel:IntegerParameter" name="Capture Prescalar" evalFunction="&#xD;&#xA;&#x9;&#x9;        function ForwardMapping(){&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;         var value = SCM.getIntValue(currentResource); &#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9; var presc = SCM.getResource(&quot;dmx512rd01_dummy_pres&quot;);&#xD;&#xA;                                         SCM.setIntValue(presc, value);&#xD;&#xA;&#xD;&#xA;&#x9;&#x9;&#x9;        }&#xD;&#xA;                function BackwardMapping(){   &#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9; var Res2 = SCM.getResource(&quot;ccu4globalapp/ccu4global_irclock&quot;); &#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9; var Clock = SCM.getDoubleValue(Res2);&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9; var temp = 0;&#xD;&#xA;&#xD;&#xA;&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;  temp = Clock/4;&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;  temp = Math.floor( Math.log(temp) / Math.log( 2 ));&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;  SCM.setIntValue(currentResource, temp);&#xD;&#xA;&#xD;&#xA;//PCLK ranges from 4-80 MHz.&#xD;&#xA;//if pclk > 4Mhz and &lt; 16 Mhz, Res = PCLK/4&#xD;&#xA;//if PCLK> 16MHz and &lt; 64, Res = PCLK/16&#xD;&#xA;//if Pclk> 64 and less than 80(Max range), Res = PCLK/32&#xD;&#xA;//RULE is Res must range between 1-4 MHz.&#xD;&#xA;&#xD;&#xA;//&#xD;&#xA;//                           if (Clock &lt; 4)&#xD;&#xA;//&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;  {&#xD;&#xA;//&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;  &#x9; temp = 0;//2^0 = 1&#xD;&#xA;//&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;  }&#xD;&#xA;//&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;  else if (Clock &lt; 16)&#xD;&#xA;//&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;  {&#xD;&#xA;//&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;  &#x9; temp = 2;//2^2 = 4&#xD;&#xA;//&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;  }&#xD;&#xA;//&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;  else if (Clock &lt; 64)&#xD;&#xA;//&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;  {&#xD;&#xA;//&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;     temp = 4;//2^4 = 16&#xD;&#xA;//&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;  }&#xD;&#xA;//&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;  else //for clock > 64 and less than 80Mhz&#xD;&#xA;//&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;  {&#xD;&#xA;//&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;     temp = 5;&#x9;//2^5 = 32&#xD;&#xA;//&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;  }&#xD;&#xA;//&#x9;&#x9;&#x9;   &#x9;&#x9;&#x9; SCM.setIntValue(currentResource, temp);                                                 &#xD;&#xA;                    }&#xD;&#xA;                    " URI="http://www.infineon.com/1.0.4/app/dmx512rd01/0/dmx512rd01_capture_prescalar" downWardmappedList="//@consumed.18" maxValue="F" minValue="0">
    <defaultValue xsi:type="ResourceModel:IntegerValue" value="0"/>
    <localValue xsi:type="ResourceModel:StringValue" value="0"/>
    <globalValue xsi:type="ResourceModel:IntegerValue" value="0"/>
    <toolTipHelpDescription>Define the Resolution of the Capture Counter.</toolTipHelpDescription>
  </provided>
  <provided xsi:type="ResourceModel:IntegerParameter" name="Real Capture Clock Frequency" URI="http://www.infineon.com/1.0.4/app/dmx512rd01/0/dmx512rd01_capture_freq" maxValue="ffffffff" minValue="0">
    <defaultValue xsi:type="ResourceModel:IntegerValue" value="0"/>
    <localValue xsi:type="ResourceModel:StringValue" value="0"/>
    <globalValue xsi:type="ResourceModel:StringValue" value="0"/>
    <toolTipHelpDescription>Define the Resolution of the Capture Counter.</toolTipHelpDescription>
  </provided>
  <provided xsi:type="ResourceModel:IntegerParameter" name="Real Capture Resolution" URI="http://www.infineon.com/1.0.4/app/dmx512rd01/0/dmx512rd01_capture_resolution" maxValue="ffffffff" minValue="0">
    <defaultValue xsi:type="ResourceModel:IntegerValue" value="0"/>
    <localValue xsi:type="ResourceModel:StringValue" value="0"/>
    <globalValue xsi:type="ResourceModel:StringValue" value="0"/>
    <toolTipHelpDescription>Resolution of the Capture Counter.</toolTipHelpDescription>
  </provided>
  <provided xsi:type="ResourceModel:StringParameter" name="User Defined CallBack" evalFunction="" URI="http://www.infineon.com/1.0.4/app/dmx512rd01/0/dmx512rd01_user_call_back">
    <defaultValue xsi:type="ResourceModel:StringValue" value=""/>
    <localValue xsi:type="ResourceModel:StringValue" value="DMX512RD01_CallBack"/>
    <globalValue xsi:type="ResourceModel:StringValue" value="DMX512RD01_CallBack"/>
    <toolTipHelpDescription>To define function as void MyInterrupt(void), 
type MyInterrupt in field.
This call back will execute during the BREAK state.</toolTipHelpDescription>
  </provided>
  <consumed xsi:type="ResourceModel:ProxyResource" evalFunction="function resourceCondition() {&#xD;&#xA;&#x9;&#x9;&#x9;  var value = Solver.getSoftwareId();&#xD;&#xA;&#x9;&#x9;&#x9;  if (value == &quot;45.0.2&quot;) {&#xD;&#xA;&#x9;&#x9;var constr = &quot;reserved([peripheral,usic,UU,channel,_],chres1) \n uri_element_range(UU,[0,1]) \n register_value(chres1,rbctr_size,-1) \n register_value(chres1,tbctr_size,-1)&quot;;&#xD;&#xA;&#x9;&#x9;Solver.setConstraintString(constr);&#xD;&#xA;&#x9;&#x9;} else {&#xD;&#xA;&#x9;&#x9;var constr = &quot;reserved([peripheral,usic,UU,channel,_],chres1) \n uri_element_range(UU,[0,1,2]) \n register_value(chres1,rbctr_size,1) \n register_value(chres1,tbctr_size,1)&quot;;&#xD;&#xA;&#x9;&#x9;Solver.setConstraintString(constr);&#xD;&#xA;&#x9;&#x9;} &#xD;&#xA;&#x9;&#x9;&#x9;  return true;&#xD;&#xA;&#x9;&#x9;&#x9;}" URI="http://www.infineon.com/1.0.4/app/dmx512rd01/0/usic_channhw" constraintFunction="reserved([peripheral,usic,_,channel,_],chres1)&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;register_value(chres1,rbctr_size,1)&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;register_value(chres1,tbctr_size,1)">
    <downWardmappedList xsi:type="ResourceModel:ResourceGroup" href="../../USIC0/USIC0_0.dd#//@provided.0"/>
    <requiredResource uriString="peripheral/usic/*/channel/*" uriType="LOCALTYPE"/>
  </consumed>
  <consumed xsi:type="ResourceModel:ProxyResource" URI="http://www.infineon.com/1.0.4/app/dmx512rd01/0/nvicapp1">
    <downWardmappedList xsi:type="ResourceModel:App" href="../../NVIC002/1.0.26/nvic002_0.app#/"/>
    <requiredResource uriString="app/nvic002/*" uriType="LOCALTYPE"/>
  </consumed>
  <consumed xsi:type="ResourceModel:ProxyResource" evalFunction="function resourceCondition() {&#xD;&#xA;          var Res = Solver.getResource(&quot;dmx512rd01_dummy_AccBreDetect&quot;);&#xD;&#xA;          var value = Solver.getIntValue(Res);&#xD;&#xA;          if (value == 1) {&#xD;&#xA;            return true; &#xD;&#xA;          } &#xD;&#xA;          return false;&#xD;&#xA;        }" URI="http://www.infineon.com/1.0.4/app/dmx512rd01/0/ccu4globalapp" upWardMappingList="//@provided.5/@item.0">
    <localValue xsi:type="ResourceModel:StringValue" value="DependentApp"/>
    <globalValue xsi:type="ResourceModel:StringValue" value="DependentApp"/>
    <requiredResource uriString="app/ccu4global/*" uriType="LOCALTYPE"/>
  </consumed>
  <consumed xsi:type="ResourceModel:ProxyResource" evalFunction="function resourceCondition() {&#xD;&#xA;          var Res = Solver.getResource(&quot;dmx512rd01_dummy_AccBreDetect&quot;);&#xD;&#xA;          var value = Solver.getIntValue(Res);&#xD;&#xA;          if (value == 1) {&#xD;&#xA;            return true; &#xD;&#xA;          } &#xD;&#xA;          return false;&#xD;&#xA;        }" URI="http://www.infineon.com/1.0.4/app/dmx512rd01/0/capturehw" upWardMappingList="//@provided.5/@item.0">
    <localValue xsi:type="ResourceModel:StringValue" value="DependentApp"/>
    <globalValue xsi:type="ResourceModel:StringValue" value="DependentApp"/>
    <requiredResource uriString="peripheral/ccu4/*/cc4/*" uriType="LOCALTYPE"/>
  </consumed>
  <consumed xsi:type="ResourceModel:ProxyResource" evalFunction="function resourceCondition() {&#xD;&#xA;          var Res = Solver.getResource(&quot;dmx512rd01_dummy_AccBreDetect&quot;);&#xD;&#xA;          var value = Solver.getIntValue(Res);&#xD;&#xA;          if (value == 1) {&#xD;&#xA;            return true; &#xD;&#xA;          } &#xD;&#xA;          return false;&#xD;&#xA;        }" URI="http://www.infineon.com/1.0.4/app/dmx512rd01/0/nvicapp2" upWardMappingList="//@provided.5/@item.0">
    <localValue xsi:type="ResourceModel:StringValue" value="DependentApp"/>
    <globalValue xsi:type="ResourceModel:StringValue" value="DependentApp"/>
    <requiredResource uriString="app/nvic002/*" uriType="LOCALTYPE"/>
  </consumed>
  <consumed xsi:type="ResourceModel:ProxyResource" URI="http://www.infineon.com/1.0.4/app/dmx512rd01/0/clockapp">
    <downWardmappedList xsi:type="ResourceModel:App" href="../../CLK002/1.0.8/clk002_0.app#/"/>
    <requiredResource uriString="app/clk002/*" uriType="LOCALTYPE"/>
  </consumed>
  <consumed xsi:type="ResourceModel:ProxyResource" URI="http://www.infineon.com/1.0.4/app/dmx512rd01/0/dmx512rd01_dummy_recpt_mode" isSystemDefined="true">
    <requiredResource uriString="" uriType="LOCALTYPE"/>
  </consumed>
  <consumed xsi:type="ResourceModel:ProxyResource" URI="http://www.infineon.com/1.0.4/app/dmx512rd01/0/dmx512rd01_dummy_num_chnl" upWardMappingList="//@provided.7 //@provided.9" isSystemDefined="true">
    <localValue xsi:type="ResourceModel:IntegerValue" value="6"/>
    <globalValue xsi:type="ResourceModel:IntegerValue" value="6"/>
    <requiredResource uriString="" uriType="LOCALTYPE"/>
  </consumed>
  <consumed xsi:type="ResourceModel:ProxyResource" URI="http://www.infineon.com/1.0.4/app/dmx512rd01/0/dmx512rd01_dummy_num_slots" upWardMappingList="//@provided.10" isSystemDefined="true">
    <localValue xsi:type="ResourceModel:IntegerValue" value="3"/>
    <globalValue xsi:type="ResourceModel:IntegerValue" value="3"/>
    <requiredResource uriString="" uriType="LOCALTYPE"/>
  </consumed>
  <consumed xsi:type="ResourceModel:ProxyResource" URI="http://www.infineon.com/1.0.4/app/dmx512rd01/0/dmx512rd01_dummy_slave_num" upWardMappingList="//@provided.7 //@provided.9" isSystemDefined="true">
    <localValue xsi:type="ResourceModel:IntegerValue" value="1"/>
    <globalValue xsi:type="ResourceModel:IntegerValue" value="1"/>
    <requiredResource uriString="" uriType="LOCALTYPE"/>
  </consumed>
  <consumed xsi:type="ResourceModel:ProxyResource" URI="http://www.infineon.com/1.0.4/app/dmx512rd01/0/dmx512rd01_dummy_rx_mode" isSystemDefined="true">
    <requiredResource uriString="" uriType="LOCALTYPE"/>
  </consumed>
  <consumed xsi:type="ResourceModel:ProxyResource" URI="http://www.infineon.com/1.0.4/app/dmx512rd01/0/dmx512rd01_dummy_accbredetect" upWardMappingList="//@provided.5/@item.0" isSystemDefined="true">
    <localValue xsi:type="ResourceModel:IntegerValue" value="0"/>
    <globalValue xsi:type="ResourceModel:IntegerValue" value="0"/>
    <requiredResource uriString="" uriType="LOCALTYPE"/>
  </consumed>
  <consumed xsi:type="ResourceModel:ProxyResource" URI="http://www.infineon.com/1.0.4/app/dmx512rd01/0/dmx512rd01_dummy_mtbp_dur" isSystemDefined="true">
    <requiredResource uriString="" uriType="LOCALTYPE"/>
  </consumed>
  <consumed xsi:type="ResourceModel:ProxyResource" URI="http://www.infineon.com/1.0.4/app/dmx512rd01/0/dmx512rd01_dummy_break_dur" isSystemDefined="true">
    <requiredResource uriString="" uriType="LOCALTYPE"/>
  </consumed>
  <consumed xsi:type="ResourceModel:ProxyResource" URI="http://www.infineon.com/1.0.4/app/dmx512rd01/0/dmx512rd01_dummy_mab_dur" isSystemDefined="true">
    <requiredResource uriString="" uriType="LOCALTYPE"/>
  </consumed>
  <consumed xsi:type="ResourceModel:ProxyResource" URI="http://www.infineon.com/1.0.4/app/dmx512rd01/0/dmx512rd01_dummy_mtbf_dur" isSystemDefined="true">
    <requiredResource uriString="" uriType="LOCALTYPE"/>
  </consumed>
  <consumed xsi:type="ResourceModel:ProxyResource" URI="http://www.infineon.com/1.0.4/app/dmx512rd01/0/dmx512rd01_dummy_break2break_dur" isSystemDefined="true">
    <requiredResource uriString="" uriType="LOCALTYPE"/>
  </consumed>
  <consumed xsi:type="ResourceModel:ProxyResource" URI="http://www.infineon.com/1.0.4/app/dmx512rd01/0/dmx512rd01_dummy_res" isSystemDefined="true">
    <requiredResource uriString="" uriType="LOCALTYPE"/>
  </consumed>
  <consumed xsi:type="ResourceModel:ProxyResource" URI="http://www.infineon.com/1.0.4/app/dmx512rd01/0/dmx512rd01_dummy_pres" upWardMappingList="//@provided.12" isSystemDefined="true">
    <localValue xsi:type="ResourceModel:IntegerValue" value="0"/>
    <globalValue xsi:type="ResourceModel:IntegerValue" value="0"/>
    <requiredResource uriString="" uriType="LOCALTYPE"/>
  </consumed>
  <consumed xsi:type="ResourceModel:ProxyResource" URI="http://www.infineon.com/1.0.4/app/dmx512rd01/0/dmx512rd01_dummy_cclk_freq" isSystemDefined="true">
    <requiredResource uriString="" uriType="LOCALTYPE"/>
  </consumed>
  <consumed xsi:type="ResourceModel:ProxyResource" URI="http://www.infineon.com/1.0.4/app/dmx512rd01/0/dummy_dmx512rd01_capture_resolution" isSystemDefined="true">
    <requiredResource uriString="" uriType="LOCALTYPE"/>
  </consumed>
  <consumed xsi:type="ResourceModel:ProxyResource" URI="http://www.infineon.com/1.0.4/app/dmx512rd01/0/dmx512rd01_dummy_user_call_back" isSystemDefined="true">
    <requiredResource uriString="" uriType="LOCALTYPE"/>
  </consumed>
  <consumed xsi:type="ResourceModel:ProxyResource" URI="http://www.infineon.com/1.0.4/app/dmx512rd01/0/dmx512rd01_dummy_bit_period" isSystemDefined="true">
    <requiredResource uriString="" uriType="LOCALTYPE"/>
  </consumed>
  <consumed xsi:type="ResourceModel:ProxyResource" URI="http://www.infineon.com/1.0.4/app/dmx512rd01/0/usic_channhw/standard_receive_buffer_int" isSystemDefined="true">
    <downWardmappedList xsi:type="ResourceModel:SignalDeclaration" href="../../USIC0/USIC0_0.dd#//@provided.1"/>
  </consumed>
  <consumed xsi:type="ResourceModel:ProxyResource" URI="http://www.infineon.com/1.0.4/app/dmx512rd01/0/usic_channhw/dx0ins" isSystemDefined="true">
    <downWardmappedList xsi:type="ResourceModel:SignalDeclaration" href="../../USIC0/USIC0_0.dd#//@provided.2"/>
  </consumed>
  <consumed xsi:type="ResourceModel:ProxyResource" URI="http://www.infineon.com/1.0.4/app/dmx512rd01/0/capturehw/gp0_unsync" isSystemDefined="true"/>
  <consumed xsi:type="ResourceModel:ProxyResource" URI="http://www.infineon.com/1.0.4/app/dmx512rd01/0/capturehw/e0as" isSystemDefined="true"/>
  <consumed xsi:type="ResourceModel:ProxyResource" URI="http://www.infineon.com/1.0.4/app/dmx512rd01/0/capturehw/global_signal" isSystemDefined="true"/>
  <consumed xsi:type="ResourceModel:ProxyResource" URI="http://www.infineon.com/1.0.4/app/dmx512rd01/0/clockapp/clk002_irpclk" isSystemDefined="true">
    <localValue xsi:type="ResourceModel:IntegerValue" value="40"/>
    <downWardmappedList xsi:type="ResourceModel:IntegerParameter" href="../../CLK002/1.0.8/clk002_0.app#//@provided.4"/>
    <globalValue xsi:type="ResourceModel:IntegerValue" value="40"/>
  </consumed>
  <consumed xsi:type="ResourceModel:ProxyResource" URI="http://www.infineon.com/1.0.4/app/dmx512rd01/0/clockapp/clk002_irmclk" isSystemDefined="true">
    <localValue xsi:type="ResourceModel:IntegerValue" value="20"/>
    <downWardmappedList xsi:type="ResourceModel:IntegerParameter" href="../../CLK002/1.0.8/clk002_0.app#//@provided.6"/>
    <globalValue xsi:type="ResourceModel:IntegerValue" value="20"/>
  </consumed>
  <consumed xsi:type="ResourceModel:ProxyResource" URI="http://www.infineon.com/1.0.4/app/dmx512rd01/0/usic_channhw/rbctr_size" upWardMappingList="//@provided.5 //@provided.8" isSystemDefined="true">
    <localValue xsi:type="ResourceModel:IntegerValue" value="1"/>
    <downWardmappedList xsi:type="ResourceModel:BitField" href="../../USIC0/USIC0_0.dd#//@provided.3"/>
    <globalValue xsi:type="ResourceModel:IntegerValue" value="1"/>
  </consumed>
  <consumed xsi:type="ResourceModel:ProxyResource" URI="http://www.infineon.com/1.0.4/app/dmx512rd01/0/usic_channhw/rbctr_dptr" upWardMappingList="//@provided.8" isSystemDefined="true">
    <localValue xsi:type="ResourceModel:IntegerValue" value="0"/>
    <downWardmappedList xsi:type="ResourceModel:BitField" href="../../USIC0/USIC0_0.dd#//@provided.4"/>
    <globalValue xsi:type="ResourceModel:IntegerValue" value="4"/>
  </consumed>
  <consumed xsi:type="ResourceModel:ProxyResource" URI="http://www.infineon.com/1.0.4/app/dmx512rd01/0/nvicapp1/nvic002_erwenableint/0" upWardMappingList="//@provided.8" isSystemDefined="true">
    <localValue xsi:type="ResourceModel:IntegerValue" value="1"/>
    <downWardmappedList xsi:type="ResourceModel:EnumItem" href="../../NVIC002/1.0.26/nvic002_0.app#//@provided.4/@item.0"/>
    <globalValue xsi:type="ResourceModel:IntegerValue" value="1"/>
  </consumed>
  <consumed xsi:type="ResourceModel:ProxyResource" URI="http://www.infineon.com/1.0.4/app/dmx512rd01/0/nvicapp1/nvic002_srwuserfunction" upWardMappingList="//@provided.8" isSystemDefined="true">
    <localValue xsi:type="ResourceModel:StringValue" value="DMX512RD01_UART_isr"/>
    <downWardmappedList xsi:type="ResourceModel:StringParameter" href="../../NVIC002/1.0.26/nvic002_0.app#//@provided.5"/>
    <globalValue xsi:type="ResourceModel:StringValue" value="DMX512RD01_UART_isr"/>
  </consumed>
  <consumed xsi:type="ResourceModel:ProxyResource" URI="http://www.infineon.com/1.0.4/app/dmx512rd01/0/nvicapp2/nvic002_erwenableint/0" upWardMappingList="//@provided.8" isSystemDefined="true">
    <localValue xsi:type="ResourceModel:IntegerValue" value="1"/>
    <globalValue xsi:type="ResourceModel:IntegerValue" value="1"/>
  </consumed>
  <consumed xsi:type="ResourceModel:ProxyResource" URI="http://www.infineon.com/1.0.4/app/dmx512rd01/0/nvicapp2/nvic002_srwuserfunction" upWardMappingList="//@provided.8" isSystemDefined="true">
    <localValue xsi:type="ResourceModel:StringValue" value="DMX512RD01_CaptTmr_isr"/>
    <globalValue xsi:type="ResourceModel:StringValue" value="DMX512RD01_CaptTmr_isr"/>
  </consumed>
  <consumed xsi:type="ResourceModel:ProxyResource" URI="http://www.infineon.com/1.0.4/app/dmx512rd01/0/ccu4globalapp/ccu4global_irclock" upWardMappingList="//@provided.12" isSystemDefined="true"/>
  <propertyConstants name="uridevice" value="device/">
    <propertyConstants name="uri_nvicapp1" value="app/nvic002/">
      <propertyConstants name="uri_nvicapp2" value="app/nvic002/">
        <propertyConstants name="uri_ccu4globalapp" value="app/ccu4global/"/>
      </propertyConstants>
    </propertyConstants>
  </propertyConstants>
  <categoryDescription description="Industrial Specific Apps" name="Industrial Specific Apps">
    <subCategory description="Communication" name="Communication">
      <subCategory description="DMX512 Lighting Apps" name="Lighting"/>
    </subCategory>
  </categoryDescription>
  <categoryDescription description="Lighting Applications" name="Lighting Applications">
    <subCategory description="Industrial Control" name="Industrial Control">
      <subCategory description="DMX512 Lighting Apps" name="Lighting"/>
    </subCategory>
  </categoryDescription>
  <manifestInfo version="1.0.4">
    <keywords>Communication</keywords>
    <keywords>Industrial</keywords>
    <keywords>Lighting</keywords>
    <keywords>UART</keywords>
    <keywords>Serial</keywords>
    <keywords>Capture</keywords>
    <keywords>BCCU</keywords>
    <keywords>DMX512</keywords>
    <properties xsi:type="ResourceModel:AppProperties_1_0" initProvider="true" singleton="true" isIOApp="true"/>
  </manifestInfo>
  <datagenerate fileName="DMX512RD01.h" fileType="HFILE" templateFileName="DMX512RD01.hdt" templateEngine="NONE" fileAction="COPY"/>
  <datagenerate fileName="DMX512RD01.c" templateFileName="DMX512RD01.cdt" templateEngine="NONE" fileAction="COPY"/>
  <datagenerate fileName="DMX512RD01_Conf.c" templateFileName="DMX512RD01_Confc.jet"/>
  <datagenerate fileName="DMX512RD01_Conf.h" fileType="HFILE" templateFileName="DMX512RD01_Confh.jet"/>
  <datagenerate fileName="DMX512RD01_Extern.h" fileType="HFILE" templateFileName="DMX512RD01_Externh.jet"/>
  <connections sourceSignal="app/dmx512rd01/0/ccu4globalapp/ccu4global_globalsignal_vs" targetSignal="app/dmx512rd01/0/dmx512rd01_globalsignal_vs"/>
  <connections sourceSignal="app/dmx512rd01/0/capture_periodcapture_interrupt_vs" targetSignal="app/dmx512rd01/0/nvicapp2/nvic002_vs"/>
  <connections sourceSignal="app/dmx512rd01/0/dmx512rd01_usic_srbi_vs" targetSignal="app/dmx512rd01/0/nvicapp1/nvic002_vs"/>
  <softwareIdList>11.0100.9</softwareIdList>
  <softwareIdList>11.0100.7</softwareIdList>
  <softwareIdList>11.00.7</softwareIdList>
  <softwareIdList>11.00.9</softwareIdList>
  <softwareIdList>12.00.7</softwareIdList>
  <softwareIdList>12.0100.7</softwareIdList>
  <softwareIdList>12.0101.7</softwareIdList>
  <softwareIdList>12.0102.9</softwareIdList>
  <softwareIdList>12.0102.8</softwareIdList>
  <softwareIdList>13.02.7</softwareIdList>
  <softwareIdList>13.0101.9</softwareIdList>
  <softwareIdList>13.0101.7</softwareIdList>
  <softwareIdList>13.0102.7</softwareIdList>
  <softwareIdList>11.0100.10</softwareIdList>
  <softwareIdList>11.0100.11</softwareIdList>
  <softwareIdList>12.0102.10</softwareIdList>
  <softwareIdList>12.0102.11</softwareIdList>
  <softwareIdList>13.0102.10</softwareIdList>
  <softwareIdList>13.0102.11</softwareIdList>
  <softwareIdList>13.0102.9</softwareIdList>
</ResourceModel:App>
