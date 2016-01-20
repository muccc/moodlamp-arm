<?xml version="1.0" encoding="ASCII"?>
<ResourceModel:App xmi:version="2.0" xmlns:xmi="http://www.omg.org/XMI" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xmlns:ResourceModel="http://www.infineon.com/Davex/Resource.ecore" name="BCCUGLOBAL" description="This app configures the global registers of the &#xA;Brightness and Color Control Unit (BCCU). &#xA;The configured parameters are clock frequencies, &#xA;trap functionality, triggering, channel passive levels &#xA;and interrupts. The app provides dynamic APIs &#xA;to high level apps such as Event Flag &#xA;configuration, Interrupt configuration and Trap configuration." descriptionURL="/doc/html/group___b_c_c_u_global_app.html" mode="SHARABLE" URI="http://www.infineon.com/1.0.12/app/bccuglobal/0">
  <upWardMappingList xsi:type="ResourceModel:ProxyResource" href="../../COLORLAMP01/1.0.7/colorlamp01_0.app#//@consumed.0"/>
  <upWardMappingList xsi:type="ResourceModel:ProxyResource" href="../../BCCUDIM01/1.0.8/bccudim01_0.app#//@consumed.4"/>
  <upWardMappingList xsi:type="ResourceModel:ProxyResource" href="../../BCCUCH01/1.0.10/bccuch01_0.app#//@consumed.9"/>
  <upWardMappingList xsi:type="ResourceModel:ProxyResource" href="../../BCCUCH01/1.0.10/bccuch01_1.app#//@consumed.9"/>
  <upWardMappingList xsi:type="ResourceModel:ProxyResource" href="../../BCCUCH01/1.0.10/bccuch01_2.app#//@consumed.9"/>
  <upWardMappingList xsi:type="ResourceModel:ProxyResource" href="../../BCCUCH01/1.0.10/bccuch01_3.app#//@consumed.9"/>
  <upWardMappingList xsi:type="ResourceModel:ProxyResource" href="../../BCCUCH01/1.0.10/bccuch01_4.app#//@consumed.9"/>
  <upWardMappingList xsi:type="ResourceModel:ProxyResource" href="../../BCCUCH01/1.0.10/bccuch01_5.app#//@consumed.9"/>
  <provided xsi:type="ResourceModel:VirtualSignal" name="Global Dimming Engine" URI="http://www.infineon.com/1.0.12/app/bccuglobal/0/bccuglobal_globdim_vs" requiredSignalResource="global/globdimout">
    <localValue xsi:type="ResourceModel:StringValue" value="-1"/>
    <globalValue xsi:type="ResourceModel:StringValue" value="-1"/>
  </provided>
  <provided xsi:type="ResourceModel:VirtualSignal" name="BCCU TRAP Input" URI="http://www.infineon.com/1.0.12/app/bccuglobal/0/bccuglobal_trapin_vs" requiredSignalResource="trap/trap_in">
    <localValue xsi:type="ResourceModel:StringValue" value="-1"/>
    <globalValue xsi:type="ResourceModel:StringValue" value="-1"/>
  </provided>
  <provided xsi:type="ResourceModel:VirtualSignal" name="Trap OUT" URI="http://www.infineon.com/1.0.12/app/bccuglobal/0/bccuglobal_trapout_vs" requiredSignalResource="trap/trap_out">
    <localValue xsi:type="ResourceModel:StringValue" value="-1"/>
    <globalValue xsi:type="ResourceModel:StringValue" value="-1"/>
  </provided>
  <provided xsi:type="ResourceModel:VirtualSignal" name="Trigger OUT 0" URI="http://www.infineon.com/1.0.12/app/bccuglobal/0/bccuglobal_triggerout0_vs" requiredSignalResource="trigger/trigger_out0">
    <localValue xsi:type="ResourceModel:StringValue" value="-1"/>
    <globalValue xsi:type="ResourceModel:StringValue" value="-1"/>
  </provided>
  <provided xsi:type="ResourceModel:VirtualSignal" name="Trigger OUT 1" URI="http://www.infineon.com/1.0.12/app/bccuglobal/0/bccuglobal_triggerout1_vs" requiredSignalResource="trigger/trigger_out1">
    <localValue xsi:type="ResourceModel:StringValue" value="-1"/>
    <globalValue xsi:type="ResourceModel:StringValue" value="-1"/>
  </provided>
  <provided xsi:type="ResourceModel:VirtualSignal" name="FIFO Event Full" URI="http://www.infineon.com/1.0.12/app/bccuglobal/0/bccuglobal_eventfull_vs" requiredSignalResource="packer_fifo_event/event_full">
    <localValue xsi:type="ResourceModel:StringValue" value="-1"/>
    <globalValue xsi:type="ResourceModel:StringValue" value="-1"/>
  </provided>
  <provided xsi:type="ResourceModel:VirtualSignal" name="FIFO Event Empty" URI="http://www.infineon.com/1.0.12/app/bccuglobal/0/bccuglobal_eventempty_vs" requiredSignalResource="packer_fifo_event/event_empty">
    <localValue xsi:type="ResourceModel:StringValue" value="-1"/>
    <globalValue xsi:type="ResourceModel:StringValue" value="-1"/>
  </provided>
  <provided xsi:type="ResourceModel:IntegerParameter" name="Consumed Apps Configuration (Don't add this into UI Model)" evalFunction="&#xD;&#xA;                    function ForwardMapping(){ &#xD;&#xA;//&#x9;&#x9;             var Res1 = SCM.getResource(&quot;globalapp/bccuglobal_bclksel&quot;); &#xD;&#xA;//&#x9;&#x9;             SCM.setIntValue(Res1,0);&#xD;&#xA;&#x9;&#x9;             var Res2 = SCM.getResource(&quot;nvicapp/nvic002_srwUserFunction&quot;); &#xD;&#xA;&#x9;&#x9;             SCM.setStringValue(Res2,&quot;BCCU_0_IRQHandler&quot;);&#xD;&#xA;                    }&#xD;&#xA;                    function BackwardMapping(){   &#xD;&#xA;            &#x9;&#x9;SCM.setIntValue(currentResource,0);    &#xD;&#xA;                    }&#xD;&#xA;                    " URI="http://www.infineon.com/1.0.12/app/bccuglobal/0/bccuglobal_consappsconfig" downWardmappedList="//@consumed.40" maxValue="0" minValue="0">
    <defaultValue xsi:type="ResourceModel:IntegerValue" value="0"/>
    <localValue xsi:type="ResourceModel:StringValue" value="0"/>
    <globalValue xsi:type="ResourceModel:IntegerValue" value="0"/>
    <toolTipHelpDescription>Don't use this</toolTipHelpDescription>
  </provided>
  <provided xsi:type="ResourceModel:IntegerParameter" name="Desired Fast Clock Frequency" evalFunction="&#xD;&#xA;        function ForwardMapping()&#xD;&#xA;        {&#xD;&#xA;          var ResPclk = SCM.getResource(&quot;clockapp/clk002_irpclk&quot;);&#xD;&#xA;          var Pclk = SCM.getDoubleValue(ResPclk) * 1000000; &#xD;&#xA;          var Fclk = SCM.getIntValue(currentResource);&#xD;&#xA;          var Fclk_PS = 0;&#xD;&#xA;          Fclk_PS = Math.floor(Pclk / Fclk);&#xD;&#xA;          var ResFclk_PS = SCM.getResource(&quot;global/globclk/fclk_ps&quot;); &#xD;&#xA;          SCM.setIntValue(ResFclk_PS,Fclk_PS);&#xD;&#xA;          var ResFclkDummy = SCM.getResource(&quot;bccuglobal_fclkdummy&quot;);&#xD;&#xA;          SCM.setIntValue(ResFclkDummy,Fclk);&#xD;&#xA;          Fclk = Math.floor(Pclk / Fclk_PS);&#xD;&#xA;          var Resactbit = SCM.getResource(&quot;bccuglobal_actbclktimedummy&quot;);&#xD;&#xA;          var lowfrq =  SCM.getResource(&quot;bccuglobal_lowestfreqdummy&quot;); &#xD;&#xA;          var longoff =  SCM.getResource(&quot;bccuglobal_longestofftimedummy&quot;); &#xD;&#xA;          var minbrightness =  SCM.getResource(&quot;bccuglobal_minbrightnessdummy&quot;); &#xD;&#xA;          var BCSRes = SCM.getResource(&quot;global/globclk/bcs&quot;);&#xD;&#xA;          var BCS =  SCM.getIntValue(BCSRes);&#xD;&#xA;          var WDMBNRes = SCM.getResource(&quot;global/globcon/wdmbn&quot;);&#xD;&#xA;          var WDMBN =  SCM.getIntValue(WDMBNRes);&#xD;&#xA;&#x9;&#x9;  var actbitvalue = 0;&#xD;&#xA;&#x9;&#x9;  if(BCS==0){ &#xD;&#xA;           actbitvalue = Math.floor((4*1000000000)/Fclk);&#xD;&#xA;&#x9;&#x9;  }&#xD;&#xA;&#x9;&#x9;  else {&#xD;&#xA;            actbitvalue = Math.floor((1*1000000000)/Fclk);&#xD;&#xA;&#x9;&#x9;  }&#xD;&#xA;          var dummy = Math.floor((1*1000000000) /( (WDMBN) * actbitvalue ) );&#xD;&#xA;          var dummy1 = Math.floor((WDMBN-1) * actbitvalue);&#xD;&#xA;          var dummy2 = (100) / (WDMBN);&#xD;&#xA;          SCM.setIntValue(Resactbit,actbitvalue);&#xD;&#xA;&#x9;&#x9;  SCM.setIntValue(lowfrq,dummy);&#xD;&#xA;&#x9;&#x9;  SCM.setIntValue(longoff,dummy1);&#xD;&#xA;&#x9;&#x9;  SCM.setDoubleValue(minbrightness,dummy2);&#xD;&#xA;&#xD;&#xA;          var  dummyFclk = Fclk;&#xD;&#xA;          var actbclk = SCM.getResource(&quot;bccuglobal_actbclkfreqdummy&quot;);&#xD;&#xA;          &#xD;&#xA;           if(BCS==0){ &#xD;&#xA;            SCM.setDoubleValue(actbclk,(dummyFclk/4));&#xD;&#xA;&#x9;&#x9;  }&#xD;&#xA;&#x9;&#x9;  else {&#xD;&#xA;            SCM.setDoubleValue(actbclk,(dummyFclk));&#xD;&#xA;&#x9;&#x9;  }&#xD;&#xA;&#xD;&#xA;&#xD;&#xA;        }&#xD;&#xA;        function BackwardMapping()&#xD;&#xA;        {&#xD;&#xA;          var ResFclkDummy = SCM.getResource(&quot;bccuglobal_fclkdummy&quot;); &#xD;&#xA;          var Fclk = SCM.getIntValue(ResFclkDummy); &#xD;&#xA;          var ResPclk = SCM.getResource(&quot;clockapp/clk002_irpclk&quot;);&#xD;&#xA;          var Pclk = SCM.getDoubleValue(ResPclk) * 1000000; &#xD;&#xA;          SCM.setIntValue(currentResource,Fclk);      &#xD;&#xA;          var max = Math.floor(Pclk);&#xD;&#xA;          var min = Math.floor((Pclk/4095));&#x9;//12 bit prescalar 2 ^ 12 = 4096&#xD;&#xA;&#x9;&#x9;  SCM.setMinMaxValue(currentResource, min, max, 1);   &#xD;&#xA;&#xD;&#xA;/////////////////////////////////////////////////////////////////////&#xD;&#xA;&#xD;&#xA;&#xD;&#xA;         &#xD;&#xA;        }       " URI="http://www.infineon.com/1.0.12/app/bccuglobal/0/bccuglobal_reqfclk" downWardmappedList="//@consumed.18 //@consumed.6 //@consumed.11 //@consumed.13 //@consumed.12 //@consumed.14 //@consumed.10" maxValue="3d09000" minValue="3d0c">
    <defaultValue xsi:type="ResourceModel:IntegerValue" value="C3500"/>
    <localValue xsi:type="ResourceModel:StringValue" value="C3500"/>
    <globalValue xsi:type="ResourceModel:IntegerValue" value="c3500"/>
    <toolTipHelpDescription>Enter Desired Fast Clock Frequency</toolTipHelpDescription>
  </provided>
  <provided xsi:type="ResourceModel:IntegerParameter" name="Actual Fast Clock Frequency" evalFunction="&#xD;&#xA;        function ForwardMapping()&#xD;&#xA;        {&#xD;&#xA;          var ResactFclkDummy = SCM.getResource(&quot;bccuglobal_actfclkdummy&quot;);   &#xD;&#xA;          var value = SCM.getIntValue(currentResource);&#xD;&#xA;&#x9;&#x9;      SCM.setIntValue(ResactFclkDummy,value);    &#xD;&#xA;// Dependent Bonding          &#xD;&#xA;          var DepRes0 = SCM.getResource(&quot;bccuglobal_actbclkfreq&quot;);&#xD;&#xA;          var DepRes0Val = SCM.getIntValue(DepRes0);&#xD;&#xA;          var DepRes1 = SCM.getResource(&quot;bccuglobal_actbclktime&quot;);&#xD;&#xA;          var DepRes1Val = SCM.getIntValue(DepRes1);&#xD;&#xA;          var DepRes2 = SCM.getResource(&quot;bccuglobal_longestofftime&quot;);&#xD;&#xA;          var DepRes2Val = SCM.getIntValue(DepRes2);&#xD;&#xA;          var DepRes3 = SCM.getResource(&quot;bccuglobal_lowestfreq&quot;);&#xD;&#xA;          var DepRes3Val = SCM.getIntValue(DepRes3);&#xD;&#xA;        }&#xD;&#xA;        function BackwardMapping()&#xD;&#xA;        {&#xD;&#xA;          var ResPclk = SCM.getResource(&quot;clockapp/clk002_irpclk&quot;);&#xD;&#xA;          var Pclk = SCM.getDoubleValue(ResPclk) * 1000000;&#xD;&#xA;          var ResFclkDummy = SCM.getResource(&quot;bccuglobal_fclkdummy&quot;);   &#xD;&#xA;          var Fclk = SCM.getIntValue(ResFclkDummy);&#xD;&#xA;          var Fclk_PS = Math.round(Pclk/Fclk);&#xD;&#xA;          var ActFclk = Math.round(Pclk/Fclk_PS);&#xD;&#xA;          SCM.setIntValue(currentResource,ActFclk);&#xD;&#xA;          var max = Math.round(Pclk);&#xD;&#xA;          var min = Math.floor((Pclk/4095));&#x9;//12 bit prescalar 2 ^ 12 = 4096&#xD;&#xA;&#x9;&#x9;      SCM.setMinMaxValue(currentResource, min, max, 1);&#xD;&#xA;        }       " URI="http://www.infineon.com/1.0.12/app/bccuglobal/0/bccuglobal_realfclk" downWardmappedList="//@consumed.7" maxValue="3d09000" minValue="3d0c">
    <defaultValue xsi:type="ResourceModel:IntegerValue" value="C3500"/>
    <upWardMappingList xsi:type="ResourceModel:ProxyResource" href="../../BCCUCH01/1.0.10/bccuch01_0.app#//@consumed.38"/>
    <upWardMappingList xsi:type="ResourceModel:ProxyResource" href="../../BCCUCH01/1.0.10/bccuch01_1.app#//@consumed.38"/>
    <upWardMappingList xsi:type="ResourceModel:ProxyResource" href="../../BCCUCH01/1.0.10/bccuch01_2.app#//@consumed.38"/>
    <upWardMappingList xsi:type="ResourceModel:ProxyResource" href="../../BCCUCH01/1.0.10/bccuch01_3.app#//@consumed.38"/>
    <upWardMappingList xsi:type="ResourceModel:ProxyResource" href="../../BCCUCH01/1.0.10/bccuch01_4.app#//@consumed.38"/>
    <upWardMappingList xsi:type="ResourceModel:ProxyResource" href="../../BCCUCH01/1.0.10/bccuch01_5.app#//@consumed.38"/>
    <localValue xsi:type="ResourceModel:IntegerValue" value="c3500"/>
    <globalValue xsi:type="ResourceModel:IntegerValue" value="c3500"/>
    <toolTipHelpDescription>Actual Fast Clock Frequency</toolTipHelpDescription>
  </provided>
  <provided xsi:type="ResourceModel:IntegerParameter" name="Prescaler Factor (FCLK_PS)" evalFunction="&#xD;&#xA;        function ForwardMapping()&#xD;&#xA;        {&#xD;&#xA;          var Res = SCM.getResource(&quot;global/globclk/fclk_ps&quot;); &#xD;&#xA;          var Intvalue = SCM.getIntValue(currentResource); &#xD;&#xA;          SCM.setIntValue(Res,Intvalue);&#xD;&#xA;        }&#xD;&#xA;        function BackwardMapping()&#xD;&#xA;        {&#xD;&#xA;          var ResPclk = SCM.getResource(&quot;clockapp/clk002_irpclk&quot;);&#xD;&#xA;          var Pclk = SCM.getDoubleValue(ResPclk) * 1000000;&#xD;&#xA;          var ResFclkDummy = SCM.getResource(&quot;bccuglobal_fclkdummy&quot;);   &#xD;&#xA;          var Fclk = SCM.getIntValue(ResFclkDummy);&#xD;&#xA;          var Fclk_PS = Math.floor(Pclk/Fclk);&#xD;&#xA;          SCM.setIntValue(currentResource,Fclk_PS);&#xD;&#xA;        }       " URI="http://www.infineon.com/1.0.12/app/bccuglobal/0/bccuglobal_fclk_ps" downWardmappedList="//@consumed.18" maxValue="FFF" minValue="0">
    <defaultValue xsi:type="ResourceModel:IntegerValue" value="c8"/>
    <localValue xsi:type="ResourceModel:StringValue" value="c8"/>
    <globalValue xsi:type="ResourceModel:IntegerValue" value="50"/>
    <toolTipHelpDescription>Prescaler Factor (FCLK_PS)</toolTipHelpDescription>
  </provided>
  <provided xsi:type="ResourceModel:IntegerParameter" name="Desired Dimming Engine Clock Frequency" evalFunction="&#xD;&#xA;        function ForwardMapping()&#xD;&#xA;        {&#xD;&#xA;          var ResPclk = SCM.getResource(&quot;clockapp/clk002_irpclk&quot;);&#xD;&#xA;          var Pclk = SCM.getDoubleValue(ResPclk) * 1000000;&#xD;&#xA;          var Dclk = SCM.getIntValue(currentResource);&#xD;&#xA;          var Dclk_PS = 0;&#xD;&#xA;          Dclk_PS = Math.floor(Pclk / Dclk);&#xD;&#xA;          var ResDclk_PS = SCM.getResource(&quot;global/globclk/dclk_ps&quot;); &#xD;&#xA;          SCM.setIntValue(ResDclk_PS,Dclk_PS);&#xD;&#xA;          var ResDclkDummy = SCM.getResource(&quot;bccuglobal_dclkdummy&quot;);&#xD;&#xA;          SCM.setIntValue(ResDclkDummy,Dclk);&#xD;&#xA;&#xD;&#xA;        }&#xD;&#xA;        function BackwardMapping()&#xD;&#xA;        {&#xD;&#xA;          var ResDclkDummy = SCM.getResource(&quot;bccuglobal_dclkdummy&quot;); &#xD;&#xA;          var Dclk = SCM.getIntValue(ResDclkDummy);           &#xD;&#xA;          var ResPclk = SCM.getResource(&quot;clockapp/clk002_irpclk&quot;);&#xD;&#xA;          var Pclk = SCM.getDoubleValue(ResPclk) * 1000000;&#xD;&#xA;          SCM.setIntValue(currentResource, Dclk);&#xD;&#xA;          var max = Math.floor(Pclk);&#xD;&#xA;          var min = Math.floor((Pclk/4095));&#x9;//12 bit prescalar 2 ^ 12 = 4096&#xD;&#xA;&#x9;&#x9;      SCM.setMinMaxValue(currentResource, min, max, 1);   &#xD;&#xA;&#xD;&#xA;///////////////////////////////////////////////////////////////////&#xD;&#xA;&#xD;&#xA;         &#xD;&#xA;        }  " URI="http://www.infineon.com/1.0.12/app/bccuglobal/0/bccuglobal_reqdclk" downWardmappedList="//@consumed.19 //@consumed.8" maxValue="3d09000" minValue="3d0c">
    <defaultValue xsi:type="ResourceModel:IntegerValue" value="4758D"/>
    <localValue xsi:type="ResourceModel:StringValue" value="4758D"/>
    <globalValue xsi:type="ResourceModel:IntegerValue" value="4758d"/>
    <toolTipHelpDescription>Enter Desired Dimming Engine Clock Frequency</toolTipHelpDescription>
  </provided>
  <provided xsi:type="ResourceModel:IntegerParameter" name="Actual Dimming Engine Clock Frequency" evalFunction="&#xD;&#xA;        function ForwardMapping()&#xD;&#xA;        {&#xD;&#xA;          var ResactdclkDummy = SCM.getResource(&quot;bccuglobal_actdclkdummy&quot;);   &#xD;&#xA;          var value = SCM.getIntValue(currentResource);&#xD;&#xA;    &#x9;  SCM.setIntValue(ResactdclkDummy,value);                              &#xD;&#xA;        }&#xD;&#xA;        function BackwardMapping()&#xD;&#xA;        {&#xD;&#xA;          var ResPclk = SCM.getResource(&quot;clockapp/clk002_irpclk&quot;);&#xD;&#xA;          var Pclk = SCM.getDoubleValue(ResPclk) * 1000000; &#xD;&#xA;          var ResDclkDummy = SCM.getResource(&quot;bccuglobal_dclkdummy&quot;);   &#xD;&#xA;          var Dclk = SCM.getIntValue(ResDclkDummy);&#xD;&#xA;          var Dclk_PS = Math.round(Pclk/Dclk);&#xD;&#xA;          var ActDclk = Math.round(Pclk/Dclk_PS);&#xD;&#xA;          SCM.setIntValue(currentResource,ActDclk);&#xD;&#xA;          var max = Math.floor(Pclk);&#xD;&#xA;          var min = Math.floor((Pclk/4095));&#x9;//12 bit prescalar 2 ^ 12 = 4096&#xD;&#xA;&#x9;&#x9;      SCM.setMinMaxValue(currentResource, min, max, 1);   &#xD;&#xA;          }       " URI="http://www.infineon.com/1.0.12/app/bccuglobal/0/bccuglobal_realdclk" downWardmappedList="//@consumed.9" maxValue="3d09000" minValue="3d0c">
    <defaultValue xsi:type="ResourceModel:IntegerValue" value="4758D"/>
    <upWardMappingList xsi:type="ResourceModel:ProxyResource" href="../../BCCUDIM01/1.0.8/bccudim01_0.app#//@consumed.11"/>
    <localValue xsi:type="ResourceModel:IntegerValue" value="4758d"/>
    <globalValue xsi:type="ResourceModel:IntegerValue" value="4758d"/>
    <toolTipHelpDescription>Actual Dimming Engine Clock Frequency</toolTipHelpDescription>
  </provided>
  <provided xsi:type="ResourceModel:IntegerParameter" name="Prescaler Factor (DCLK_PS)" evalFunction="&#xD;&#xA;        function ForwardMapping()&#xD;&#xA;        {&#xD;&#xA;          var Res = SCM.getResource(&quot;global/globclk/dclk_ps&quot;); &#xD;&#xA;          var Intvalue = SCM.getIntValue(currentResource); &#xD;&#xA;          SCM.setIntValue(Res,Intvalue);&#xD;&#xA;        }&#xD;&#xA;        function BackwardMapping()&#xD;&#xA;        {&#xD;&#xA;          var ResPclk = SCM.getResource(&quot;clockapp/clk002_irpclk&quot;);&#xD;&#xA;          var Pclk = SCM.getDoubleValue(ResPclk) * 1000000; &#xD;&#xA;          var ResDclkDummy = SCM.getResource(&quot;bccuglobal_dclkdummy&quot;);   &#xD;&#xA;          var Dclk = SCM.getIntValue(ResDclkDummy);&#xD;&#xA;          var Dclk_PS = Math.round(Pclk/Dclk);&#xD;&#xA;          SCM.setIntValue(currentResource,Dclk_PS);&#xD;&#xA;        }       " URI="http://www.infineon.com/1.0.12/app/bccuglobal/0/bccuglobal_dclk_ps" downWardmappedList="//@consumed.19" maxValue="FFF" minValue="0">
    <defaultValue xsi:type="ResourceModel:IntegerValue" value="6e"/>
    <localValue xsi:type="ResourceModel:StringValue" value="6e"/>
    <globalValue xsi:type="ResourceModel:IntegerValue" value="db"/>
    <toolTipHelpDescription>Prescaler Factor (DCLK_PS)</toolTipHelpDescription>
  </provided>
  <provided xsi:type="ResourceModel:EnumerationParameter" name="Bit Clock (BCLK)" evalFunction="&#xD;&#xA;        function ForwardMapping()&#xD;&#xA;        {&#xD;&#xA;        var value = SCM.getIntValue(currentResource);&#xD;&#xA;        var Res = SCM.getResource(&quot;global/globclk/bcs&quot;);&#xD;&#xA;        SCM.setIntValue(Res,value);        &#xD;&#xA;        }&#xD;&#xA;        function BackwardMapping()&#xD;&#xA;        {&#xD;&#xA;        var Res = SCM.getResource(&quot;global/globclk/bcs&quot;);&#xD;&#xA;        var value = SCM.getIntValue(Res);&#xD;&#xA;        SCM.setIntValue(currentResource,value);&#xD;&#xA;      }&#xD;&#xA;      " URI="http://www.infineon.com/1.0.12/app/bccuglobal/0/bccuglobal_bclksel" downWardmappedList="//@consumed.20">
    <defaultValue xsi:type="ResourceModel:IntegerValue" value="0"/>
    <upWardMappingList xsi:type="ResourceModel:ProxyResource" href="../../COLORLAMP01/1.0.7/colorlamp01_0.app#//@consumed.72"/>
    <localValue xsi:type="ResourceModel:IntegerValue" value="0"/>
    <globalValue xsi:type="ResourceModel:IntegerValue" value="0"/>
    <toolTipHelpDescription>Bit Clock (BCLK)</toolTipHelpDescription>
    <item name="Normal Mode: (BCLK = FCLK/4)" evalFunction="&#xD;&#xA;            function ForwardMapping()&#xD;&#xA;            { &#xD;&#xA;              var value = SCM.getIntValue(currentResource);&#xD;&#xA;              var Res = SCM.getResource(&quot;global/globclk/bcs&quot;);&#xD;&#xA;              if (value == 1 ) {&#xD;&#xA;                SCM.setIntValue(Res,0);       &#xD;&#xA;              } else if (value === 0) {&#xD;&#xA;                SCM.setIntValue(Res,0);&#xD;&#xA;              } &#xD;&#xA;&#xD;&#xA;         var lowfrq =  SCM.getResource(&quot;bccuglobal_lowestfreqdummy&quot;); &#xD;&#xA;           var longoff =  SCM.getResource(&quot;bccuglobal_longestofftimedummy&quot;); &#xD;&#xA;          var minbrightness =  SCM.getResource(&quot;bccuglobal_minbrightnessdummy&quot;); &#xD;&#xA;          var Resactbit = SCM.getResource(&quot;bccuglobal_actbclktimedummy&quot;);&#xD;&#xA;          var WDMBNRes = SCM.getResource(&quot;global/globcon/wdmbn&quot;);&#xD;&#xA;          var WDMBN =  SCM.getIntValue(WDMBNRes);&#xD;&#xA;&#xD;&#xA;         var ResPclk = SCM.getResource(&quot;clockapp/clk002_irpclk&quot;);&#xD;&#xA;          var Pclk = SCM.getDoubleValue(ResPclk) * 1000000;&#xD;&#xA;          var ResFclkDummy = SCM.getResource(&quot;bccuglobal_fclkdummy&quot;);   &#xD;&#xA;          var Fclk = SCM.getIntValue(ResFclkDummy);&#xD;&#xA;          var Fclk_PS = Math.round(Pclk/Fclk);&#xD;&#xA;          var ActFclk = Math.round(Pclk/Fclk_PS);&#xD;&#xA; var  dummyFclk = Fclk;&#xD;&#xA; var actbclk = SCM.getResource(&quot;bccuglobal_actbclkfreqdummy&quot;);&#xD;&#xA;SCM.setDoubleValue(actbclk,(dummyFclk/4));&#xD;&#xA;        &#xD;&#xA;          var actbitvalue = Math.floor((4*1000000000)/ActFclk);&#xD;&#xA;          var dummy = Math.floor((1*1000000000) /( (WDMBN) * actbitvalue ));&#xD;&#xA;          var dummy1 = ((WDMBN-1) * actbitvalue);&#xD;&#xA;          var dummy2 = (100) / (WDMBN);&#xD;&#xA;&#x9;&#x9;  SCM.setIntValue(Resactbit,actbitvalue);&#xD;&#xA;&#x9;&#x9;  SCM.setIntValue(lowfrq,dummy);&#xD;&#xA;&#x9;&#x9;  SCM.setIntValue(longoff,dummy1);&#xD;&#xA;&#x9;&#x9;  SCM.setDoubleValue(minbrightness,dummy2);&#xD;&#xA;// Dependent Bonding&#xD;&#xA;          var DepRes0 = SCM.getResource(&quot;bccuglobal_actbclkfreq&quot;);&#xD;&#xA;          var DepRes0Val = SCM.getIntValue(DepRes0);&#xD;&#xA;          var DepRes1 = SCM.getResource(&quot;bccuglobal_actbclktime&quot;);&#xD;&#xA;          var DepRes1Val = SCM.getIntValue(DepRes1);&#xD;&#xA;          var DepRes2 = SCM.getResource(&quot;bccuglobal_longestofftime&quot;);&#xD;&#xA;          var DepRes2Val = SCM.getIntValue(DepRes2);&#xD;&#xA;          var DepRes3 = SCM.getResource(&quot;bccuglobal_lowestfreq&quot;);&#xD;&#xA;          var DepRes3Val = SCM.getIntValue(DepRes3);&#xD;&#xA;&#xD;&#xA;            }&#xD;&#xA;            function BackwardMapping()&#xD;&#xA;            {&#xD;&#xA;              var Res = SCM.getResource(&quot;global/globclk/bcs&quot;); &#xD;&#xA;              var value = SCM.getIntValue(Res); &#xD;&#xA;              if (value === 0 ) { &#xD;&#xA;                SCM.setIntValue(currentResource,1);&#xD;&#xA;              } else if (value == -1 ){&#xD;&#xA;                SCM.setIntValue(currentResource,1);&#xD;&#xA;              }&#xD;&#xA;              else {&#xD;&#xA;                SCM.setIntValue(currentResource,0);&#xD;&#xA;              }&#xD;&#xA;            }       &#xD;&#xA;            " URI="http://www.infineon.com/1.0.12/app/bccuglobal/0/bccuglobal_bclksel/0" downWardmappedList="//@consumed.20 //@consumed.10 //@consumed.11 //@consumed.13 //@consumed.12 //@consumed.14" maxValue="1" minValue="0">
      <defaultValue xsi:type="ResourceModel:IntegerValue" value="1"/>
      <localValue xsi:type="ResourceModel:StringValue" value="1"/>
      <globalValue xsi:type="ResourceModel:IntegerValue" value="1"/>
      <toolTipHelpDescription>Normal Mode: BCLK = FCLK/4</toolTipHelpDescription>
    </item>
    <item name="Fast Mode: (BCLK = FCLK)" evalFunction="&#xD;&#xA;            function ForwardMapping()&#xD;&#xA;            { &#xD;&#xA;              var value = SCM.getIntValue(currentResource);&#xD;&#xA;              var Res = SCM.getResource(&quot;global/globclk/bcs&quot;);&#xD;&#xA;              if (value == 1 ) {&#xD;&#xA;                SCM.setIntValue(Res,1);       &#xD;&#xA;              } else if (value === 0) {&#xD;&#xA;                SCM.setIntValue(Res,0);&#xD;&#xA;              } &#xD;&#xA;&#xD;&#xA;&#xD;&#xA;           var lowfrq =  SCM.getResource(&quot;bccuglobal_lowestfreqdummy&quot;); &#xD;&#xA;           var longoff =  SCM.getResource(&quot;bccuglobal_longestofftimedummy&quot;); &#xD;&#xA;          var minbrightness =  SCM.getResource(&quot;bccuglobal_minbrightnessdummy&quot;); &#xD;&#xA;          var Resactbit = SCM.getResource(&quot;bccuglobal_actbclktimedummy&quot;);&#xD;&#xA;          var WDMBNRes = SCM.getResource(&quot;global/globcon/wdmbn&quot;);&#xD;&#xA;          var WDMBN =  SCM.getIntValue(WDMBNRes);&#xD;&#xA;&#xD;&#xA;         var ResPclk = SCM.getResource(&quot;clockapp/clk002_irpclk&quot;);&#xD;&#xA;          var Pclk = SCM.getDoubleValue(ResPclk) * 1000000;&#xD;&#xA;          var ResFclkDummy = SCM.getResource(&quot;bccuglobal_fclkdummy&quot;);   &#xD;&#xA;          var Fclk = SCM.getIntValue(ResFclkDummy);&#xD;&#xA;          var Fclk_PS = Math.round(Pclk/Fclk);&#xD;&#xA;          var ActFclk = Math.round(Pclk/Fclk_PS);&#xD;&#xA; var  dummyFclk = Fclk;&#xD;&#xA; var actbclk = SCM.getResource(&quot;bccuglobal_actbclkfreqdummy&quot;);&#xD;&#xA;SCM.setDoubleValue(actbclk,(dummyFclk));&#xD;&#xA;        &#xD;&#xA;          var actbitvalue = Math.floor((1*1000000000)/ActFclk);&#xD;&#xA;          var dummy = Math.floor((1*1000000000) /( (WDMBN) * actbitvalue ));&#xD;&#xA;          var dummy1 = ((WDMBN-1) * actbitvalue);&#xD;&#xA;          var dummy2 = (100) / (WDMBN);&#xD;&#xA;&#x9;&#x9;  SCM.setIntValue(Resactbit,actbitvalue);&#xD;&#xA;&#x9;&#x9;  SCM.setIntValue(lowfrq,dummy);&#xD;&#xA;&#x9;&#x9;  SCM.setIntValue(longoff,dummy1);&#xD;&#xA;&#x9;&#x9;  SCM.setDoubleValue(minbrightness,dummy2);&#xD;&#xA;&#xD;&#xA;// Dependent Bonding&#xD;&#xA;          var DepRes0 = SCM.getResource(&quot;bccuglobal_actbclkfreq&quot;);&#xD;&#xA;          var DepRes0Val = SCM.getIntValue(DepRes0);&#xD;&#xA;          var DepRes1 = SCM.getResource(&quot;bccuglobal_actbclktime&quot;);&#xD;&#xA;          var DepRes1Val = SCM.getIntValue(DepRes1);&#xD;&#xA;          var DepRes2 = SCM.getResource(&quot;bccuglobal_longestofftime&quot;);&#xD;&#xA;          var DepRes2Val = SCM.getIntValue(DepRes2);&#xD;&#xA;          var DepRes3 = SCM.getResource(&quot;bccuglobal_lowestfreq&quot;);&#xD;&#xA;          var DepRes3Val = SCM.getIntValue(DepRes3);&#xD;&#xA;            }&#xD;&#xA;            function BackwardMapping()&#xD;&#xA;            {&#xD;&#xA;              var Res = SCM.getResource(&quot;global/globclk/bcs&quot;); &#xD;&#xA;              var value = SCM.getIntValue(Res); &#xD;&#xA;              if (value === 1 ) { &#xD;&#xA;                SCM.setIntValue(currentResource,1);&#xD;&#xA;              } else if (value == -1 ){&#xD;&#xA;                SCM.setIntValue(currentResource,0);&#xD;&#xA;              }&#xD;&#xA;              else {&#xD;&#xA;                SCM.setIntValue(currentResource,0);&#xD;&#xA;              }&#xD;&#xA;            }       &#xD;&#xA;            " URI="http://www.infineon.com/1.0.12/app/bccuglobal/0/bccuglobal_bclksel/1" downWardmappedList="//@consumed.20 //@consumed.10 //@consumed.11 //@consumed.13 //@consumed.12 //@consumed.14" maxValue="1" minValue="0">
      <defaultValue xsi:type="ResourceModel:IntegerValue" value="0"/>
      <localValue xsi:type="ResourceModel:StringValue" value="0"/>
      <globalValue xsi:type="ResourceModel:IntegerValue" value="0"/>
      <toolTipHelpDescription>No linear color walk or BCCU trigger generation possible</toolTipHelpDescription>
    </item>
  </provided>
  <provided xsi:type="ResourceModel:IntegerParameter" name="Actual Bit Clock Frequency" evalFunction="&#xD;&#xA;        function ForwardMapping()&#xD;&#xA;        {&#xD;&#xA;          var value = SCM.getIntValue(currentResource);&#xD;&#xA;          var Res = SCM.getResource(&quot;bccuglobal_actbclkfreqdummy&quot;);&#xD;&#xA;          SCM.setIntValue(Res,value);        &#xD;&#xA;// Dependency Bonding&#xD;&#xA;          var DepRes0 = SCM.getResource(&quot;bccuglobal_longestofftime&quot;);&#xD;&#xA;          var DepRes0Val = SCM.getIntValue(DepRes0);&#xD;&#xA;          var DepRes1 = SCM.getResource(&quot;bccuglobal_lowestfreq&quot;);&#xD;&#xA;          var DepRes1Val = SCM.getIntValue(DepRes1);&#xD;&#xA;        }&#xD;&#xA;        function BackwardMapping()&#xD;&#xA;        {&#xD;&#xA;         var Res = SCM.getResource(&quot;bccuglobal_actbclkfreqdummy&quot;);&#xD;&#xA;         var value = SCM.getIntValue(Res);&#xD;&#xA;         SCM.setIntValue(currentResource,value);&#xD;&#xA;         var ResPclk = SCM.getResource(&quot;clockapp/clk002_irpclk&quot;);&#xD;&#xA;         var Pclk = SCM.getDoubleValue(ResPclk) * 1000000;&#xD;&#xA;         var ResBcs = SCM.getResource(&quot;global/globclk/bcs&quot;);&#xD;&#xA;         var ResBcsVal = SCM.getIntValue(ResBcs);&#xD;&#xA;         var max = 0;&#xD;&#xA;         var min = 0;&#xD;&#xA;         if(ResBcsVal == 0) //Normal Mode&#xD;&#xA;         {&#xD;&#xA;          max = Math.floor(Pclk/4);&#xD;&#xA;          min = Math.floor((Pclk/(4095*4)));&#x9;//12 bit prescalar 2 ^ 12 = 4096&#xD;&#xA;         }&#xD;&#xA;         else&#xD;&#xA;         {&#xD;&#xA;          max = Math.floor(Pclk);&#xD;&#xA;          min = Math.floor((Pclk/4095));&#x9;//12 bit prescalar 2 ^ 12 = 4096&#xD;&#xA;         }&#xD;&#xA;&#x9;&#x9;     SCM.setMinMaxValue(currentResource, min, max, 1);   &#xD;&#xA;        }       " URI="http://www.infineon.com/1.0.12/app/bccuglobal/0/bccuglobal_actbclkfreq" downWardmappedList="//@consumed.10" maxValue="f42400" minValue="f43">
    <defaultValue xsi:type="ResourceModel:IntegerValue" value="30D40"/>
    <localValue xsi:type="ResourceModel:StringValue" value="30D40"/>
    <globalValue xsi:type="ResourceModel:IntegerValue" value="30d40"/>
    <toolTipHelpDescription>Actual Fast Clock Frequency</toolTipHelpDescription>
  </provided>
  <provided xsi:type="ResourceModel:IntegerParameter" name="Actual Bit Time" evalFunction="&#xD;&#xA;        function ForwardMapping()&#xD;&#xA;        {&#xD;&#xA;          var value = SCM.getIntValue(currentResource);&#xD;&#xA;          var Res = SCM.getResource(&quot;bccuglobal_actbclktimedummy&quot;);&#xD;&#xA;          SCM.setIntValue(Res,value);        &#xD;&#xA;// Dependency Bonding&#xD;&#xA;          var DepRes0 = SCM.getResource(&quot;bccuglobal_longestofftime&quot;);&#xD;&#xA;          var DepRes0Val = SCM.getIntValue(DepRes0);&#xD;&#xA;          var DepRes1 = SCM.getResource(&quot;bccuglobal_lowestfreq&quot;);&#xD;&#xA;          var DepRes1Val = SCM.getIntValue(DepRes1);&#xD;&#xA;        }&#xD;&#xA;        function BackwardMapping()&#xD;&#xA;        {&#xD;&#xA;&#xD;&#xA;        var Res = SCM.getResource(&quot;bccuglobal_actbclktimedummy&quot;);&#xD;&#xA;        var value = SCM.getIntValue(Res);&#xD;&#xA;        SCM.setIntValue(currentResource,value);&#xD;&#xA;&#xD;&#xA;        var ResPclk = SCM.getResource(&quot;clockapp/clk002_irpclk&quot;);&#xD;&#xA;        var Pclk = SCM.getDoubleValue(ResPclk) * 1000000;&#xD;&#xA;        var ResBcs = SCM.getResource(&quot;global/globclk/bcs&quot;);&#xD;&#xA;        var ResBcsVal = SCM.getIntValue(ResBcs);&#xD;&#xA;        var max = 0;&#xD;&#xA;        var min = 0;&#xD;&#xA;        if(ResBcsVal == 0) //Normal Mode&#xD;&#xA;        {&#xD;&#xA;         min = Math.floor((1000000000*4)/Pclk);&#xD;&#xA;         max = Math.floor((1000000000*4095*4)/Pclk);&#x9;//12 bit prescalar 2 ^ 12 = 4096&#xD;&#xA;        }&#xD;&#xA;        else&#xD;&#xA;        {&#xD;&#xA;         min = Math.floor(1000000000/Pclk);&#xD;&#xA;         max = Math.floor((1000000000*4095)/Pclk);&#x9;//12 bit prescalar 2 ^ 12 = 4096&#xD;&#xA;        }&#xD;&#xA;&#x9;&#x9;    SCM.setMinMaxValue(currentResource, min, max, 1);   &#xD;&#xA;        }       " URI="http://www.infineon.com/1.0.12/app/bccuglobal/0/bccuglobal_actbclktime" downWardmappedList="//@consumed.11" maxValue="3e7c1" minValue="3e">
    <defaultValue xsi:type="ResourceModel:IntegerValue" value="1388"/>
    <localValue xsi:type="ResourceModel:StringValue" value="1388"/>
    <globalValue xsi:type="ResourceModel:IntegerValue" value="1388"/>
    <toolTipHelpDescription>Actual Bit Time</toolTipHelpDescription>
  </provided>
  <provided xsi:type="ResourceModel:EnumerationParameter" name="Mode Selection" evalFunction="&#xD;&#xA;        function ForwardMapping()&#xD;&#xA;        {&#xD;&#xA;        var value = SCM.getIntValue(currentResource);&#xD;&#xA;        var Res = SCM.getResource(&quot;trigger/globcon_tm&quot;);&#xD;&#xA;        SCM.setIntValue(Res,value);        &#xD;&#xA;        }&#xD;&#xA;        function BackwardMapping()&#xD;&#xA;        {&#xD;&#xA;        var Res = SCM.getResource(&quot;trigger/globcon_tm&quot;);&#xD;&#xA;        var value = SCM.getIntValue(Res);&#xD;&#xA;        SCM.setIntValue(currentResource,value);&#xD;&#xA;      }&#xD;&#xA;      " URI="http://www.infineon.com/1.0.12/app/bccuglobal/0/bccuglobal_trigmode" downWardmappedList="//@consumed.30">
    <defaultValue xsi:type="ResourceModel:IntegerValue" value="0"/>
    <localValue xsi:type="ResourceModel:StringValue" value="0"/>
    <globalValue xsi:type="ResourceModel:IntegerValue" value="0"/>
    <toolTipHelpDescription>Select either Trigger Mode 0 or Mode 1</toolTipHelpDescription>
    <item name="Mode 0: Trigger on any channel" evalFunction="&#xD;&#xA;            function ForwardMapping()&#xD;&#xA;            { &#xD;&#xA;              var value = SCM.getIntValue(currentResource);&#xD;&#xA;              var Res = SCM.getResource(&quot;trigger/globcon_tm&quot;);&#xD;&#xA;              if (value == 1 ) {&#xD;&#xA;                SCM.setIntValue(Res,0);       &#xD;&#xA;              } else if (value === 0) {&#xD;&#xA;                SCM.setIntValue(Res,0);&#xD;&#xA;              } &#xD;&#xA;            }&#xD;&#xA;            function BackwardMapping()&#xD;&#xA;            {&#xD;&#xA;              var Res = SCM.getResource(&quot;trigger/globcon_tm&quot;); &#xD;&#xA;              var value = SCM.getIntValue(Res); &#xD;&#xA;              if (value === 0 ) { &#xD;&#xA;                SCM.setIntValue(currentResource,1);&#xD;&#xA;              } else if (value == -1 ){&#xD;&#xA;                SCM.setIntValue(currentResource,1);&#xD;&#xA;              }&#xD;&#xA;              else {&#xD;&#xA;                SCM.setIntValue(currentResource,0);&#xD;&#xA;              }&#xD;&#xA;            }       &#xD;&#xA;            " URI="http://www.infineon.com/1.0.12/app/bccuglobal/0/bccuglobal_trigmode/0" downWardmappedList="//@consumed.30" maxValue="1" minValue="0">
      <defaultValue xsi:type="ResourceModel:IntegerValue" value="1"/>
      <localValue xsi:type="ResourceModel:StringValue" value="1"/>
      <globalValue xsi:type="ResourceModel:IntegerValue" value="1"/>
      <toolTipHelpDescription>Selects Mode 0: Trigger on any channel</toolTipHelpDescription>
    </item>
    <item name="Mode 1: Trigger on active channel" evalFunction="&#xD;&#xA;            function ForwardMapping()&#xD;&#xA;            { &#xD;&#xA;              var value = SCM.getIntValue(currentResource);&#xD;&#xA;              var Res = SCM.getResource(&quot;trigger/globcon_tm&quot;);&#xD;&#xA;              if (value == 1 ) {&#xD;&#xA;                SCM.setIntValue(Res,1);       &#xD;&#xA;              } else if (value === 0) {&#xD;&#xA;                SCM.setIntValue(Res,0);&#xD;&#xA;              } &#xD;&#xA;            }&#xD;&#xA;            function BackwardMapping()&#xD;&#xA;            {&#xD;&#xA;              var Res = SCM.getResource(&quot;trigger/globcon_tm&quot;); &#xD;&#xA;              var value = SCM.getIntValue(Res); &#xD;&#xA;              if (value === 1 ) { &#xD;&#xA;                SCM.setIntValue(currentResource,1);&#xD;&#xA;              } else if (value == -1 ){&#xD;&#xA;                SCM.setIntValue(currentResource,0);&#xD;&#xA;              }&#xD;&#xA;              else {&#xD;&#xA;                SCM.setIntValue(currentResource,0);&#xD;&#xA;              }&#xD;&#xA;            }       &#xD;&#xA;            " URI="http://www.infineon.com/1.0.12/app/bccuglobal/0/bccuglobal_trigmode/1" downWardmappedList="//@consumed.30" maxValue="1" minValue="0">
      <defaultValue xsi:type="ResourceModel:IntegerValue" value="0"/>
      <localValue xsi:type="ResourceModel:StringValue" value="0"/>
      <globalValue xsi:type="ResourceModel:IntegerValue" value="0"/>
      <toolTipHelpDescription>Selects Mode 1: Trigger on active channel, the next trigger-enabled channel will be active following the round robin</toolTipHelpDescription>
    </item>
  </provided>
  <provided xsi:type="ResourceModel:EnumerationParameter" name="Delay Selection" URI="http://www.infineon.com/1.0.12/app/bccuglobal/0/bccuglobal_trigdelay">
    <defaultValue xsi:type="ResourceModel:IntegerValue" value="0"/>
    <localValue xsi:type="ResourceModel:StringValue" value="0"/>
    <globalValue xsi:type="ResourceModel:StringValue" value="0"/>
    <toolTipHelpDescription>Trigger Delay Selection</toolTipHelpDescription>
    <item name="BCCU Trigger on Channel Trigger" evalFunction="&#xD;&#xA;&#x9;&#x9;            function ForwardMapping()&#xD;&#xA;&#x9;&#x9;            { &#xD;&#xA;&#x9;&#x9;              var value = SCM.getIntValue(currentResource);&#xD;&#xA;&#x9;&#x9;              var Res = SCM.getResource(&quot;trigger/globcon_trdel&quot;);&#xD;&#xA;&#x9;&#x9;              if (value == 1 ) {&#xD;&#xA;&#x9;&#x9;                SCM.setIntValue(Res,0);       &#xD;&#xA;&#x9;&#x9;              } else if (value === 0) {&#xD;&#xA;&#x9;&#x9;                SCM.setIntValue(Res,0);&#xD;&#xA;&#x9;&#x9;              } &#xD;&#xA;&#x9;&#x9;            }&#xD;&#xA;&#x9;&#x9;            function BackwardMapping()&#xD;&#xA;&#x9;&#x9;            {&#xD;&#xA;&#x9;&#x9;              var Res = SCM.getResource(&quot;trigger/globcon_trdel&quot;); &#xD;&#xA;&#x9;&#x9;              var value = SCM.getIntValue(Res); &#xD;&#xA;&#x9;&#x9;              if (value === 0 ) { &#xD;&#xA;&#x9;&#x9;                SCM.setIntValue(currentResource,1);&#xD;&#xA;&#x9;&#x9;              } else if (value == -1 ){&#xD;&#xA;&#x9;&#x9;                SCM.setIntValue(currentResource,1);&#xD;&#xA;&#x9;&#x9;              }&#xD;&#xA;&#x9;&#x9;              else {&#xD;&#xA;&#x9;&#x9;                SCM.setIntValue(currentResource,0);&#xD;&#xA;&#x9;&#x9;              }&#xD;&#xA;&#x9;&#x9;            }       &#xD;&#xA;&#x9;&#x9;            " URI="http://www.infineon.com/1.0.12/app/bccuglobal/0/bccuglobal_trigdelay/item_1" downWardmappedList="//@consumed.31" maxValue="1" minValue="0">
      <localValue xsi:type="ResourceModel:StringValue" value="0"/>
      <globalValue xsi:type="ResourceModel:IntegerValue" value="1"/>
      <toolTipHelpDescription>BCCU Trigger on Channel Trigger</toolTipHelpDescription>
    </item>
    <item name="BCCU Trigger Delayed by 1/4 Bit Time" evalFunction="&#xD;&#xA;&#x9;&#x9;            function ForwardMapping()&#xD;&#xA;&#x9;&#x9;            { &#xD;&#xA;&#x9;&#x9;              var value = SCM.getIntValue(currentResource);&#xD;&#xA;&#x9;&#x9;              var Res = SCM.getResource(&quot;trigger/globcon_trdel&quot;);&#xD;&#xA;&#x9;&#x9;              if (value == 1 ) {&#xD;&#xA;&#x9;&#x9;                SCM.setIntValue(Res,1);       &#xD;&#xA;&#x9;&#x9;              } else if (value === 0) {&#xD;&#xA;&#x9;&#x9;                SCM.setIntValue(Res,0);&#xD;&#xA;&#x9;&#x9;              } &#xD;&#xA;&#x9;&#x9;            }&#xD;&#xA;&#x9;&#x9;            function BackwardMapping()&#xD;&#xA;&#x9;&#x9;            {&#xD;&#xA;&#x9;&#x9;              var Res = SCM.getResource(&quot;trigger/globcon_trdel&quot;); &#xD;&#xA;&#x9;&#x9;              var value = SCM.getIntValue(Res); &#xD;&#xA;&#x9;&#x9;              if (value === 1 ) { &#xD;&#xA;&#x9;&#x9;                SCM.setIntValue(currentResource,1);&#xD;&#xA;&#x9;&#x9;              } else if (value == -1 ){&#xD;&#xA;&#x9;&#x9;                SCM.setIntValue(currentResource,0);&#xD;&#xA;&#x9;&#x9;              }&#xD;&#xA;&#x9;&#x9;              else {&#xD;&#xA;&#x9;&#x9;                SCM.setIntValue(currentResource,0);&#xD;&#xA;&#x9;&#x9;              }&#xD;&#xA;&#x9;&#x9;            }       &#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;" URI="http://www.infineon.com/1.0.12/app/bccuglobal/0/bccuglobal_trigdelay/item_2" downWardmappedList="//@consumed.31" maxValue="1" minValue="0">
      <localValue xsi:type="ResourceModel:StringValue" value="0"/>
      <globalValue xsi:type="ResourceModel:IntegerValue" value="0"/>
      <toolTipHelpDescription>BCCU Trigger Delayed by 1/4 Bit Time</toolTipHelpDescription>
    </item>
    <item name="BCCU Trigger Delayed by 1/2 Bit Time" evalFunction="&#xD;&#xA;&#x9;&#x9;            function ForwardMapping()&#xD;&#xA;&#x9;&#x9;            { &#xD;&#xA;&#x9;&#x9;              var value = SCM.getIntValue(currentResource);&#xD;&#xA;&#x9;&#x9;              var Res = SCM.getResource(&quot;trigger/globcon_trdel&quot;);&#xD;&#xA;&#x9;&#x9;              if (value == 1 ) {&#xD;&#xA;&#x9;&#x9;                SCM.setIntValue(Res,2);       &#xD;&#xA;&#x9;&#x9;              } else if (value === 0) {&#xD;&#xA;&#x9;&#x9;                SCM.setIntValue(Res,0);&#xD;&#xA;&#x9;&#x9;              } &#xD;&#xA;&#x9;&#x9;            }&#xD;&#xA;&#x9;&#x9;            function BackwardMapping()&#xD;&#xA;&#x9;&#x9;            {&#xD;&#xA;&#x9;&#x9;              var Res = SCM.getResource(&quot;trigger/globcon_trdel&quot;); &#xD;&#xA;&#x9;&#x9;              var value = SCM.getIntValue(Res); &#xD;&#xA;&#x9;&#x9;              if (value === 2 ) { &#xD;&#xA;&#x9;&#x9;                SCM.setIntValue(currentResource,1);&#xD;&#xA;&#x9;&#x9;              } else if (value == -1 ){&#xD;&#xA;&#x9;&#x9;                SCM.setIntValue(currentResource,0);&#xD;&#xA;&#x9;&#x9;              }&#xD;&#xA;&#x9;&#x9;              else {&#xD;&#xA;&#x9;&#x9;                SCM.setIntValue(currentResource,0);&#xD;&#xA;&#x9;&#x9;              }&#xD;&#xA;&#x9;&#x9;            }       &#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;" URI="http://www.infineon.com/1.0.12/app/bccuglobal/0/bccuglobal_trigdelay/item_3" downWardmappedList="//@consumed.31" maxValue="1" minValue="0">
      <localValue xsi:type="ResourceModel:StringValue" value="0"/>
      <globalValue xsi:type="ResourceModel:IntegerValue" value="0"/>
      <toolTipHelpDescription>BCCU Trigger Delayed by 1/2 Bit Time</toolTipHelpDescription>
    </item>
  </provided>
  <provided xsi:type="ResourceModel:IntegerParameter" name="ON-bit Insertion Threshold" evalFunction="&#xD;&#xA;        function ForwardMapping()&#xD;&#xA;        {&#xD;&#xA;          var Res = SCM.getResource(&quot;global/globcon/wdmbn&quot;); &#xD;&#xA;          var Intvalue = SCM.getIntValue(currentResource); &#xD;&#xA;          SCM.setIntValue(Res,Intvalue);&#xD;&#xA;&#xD;&#xA;          var lowfrq = SCM.getResource(&quot;bccuglobal_lowestfreqdummy&quot;);&#xD;&#xA;          var longoff =  SCM.getResource(&quot;bccuglobal_longestofftimedummy&quot;); &#xD;&#xA;          var minbrightness =  SCM.getResource(&quot;bccuglobal_minbrightnessdummy&quot;); &#xD;&#xA;          var ActBclkRes = SCM.getResource(&quot;bccuglobal_actbclktimedummy&quot;);&#xD;&#xA;          var Bclk =  SCM.getDoubleValue(ActBclkRes);&#xD;&#xA;&#xD;&#xA;          var dummy = Math.floor( (1*1000000000) /( (Intvalue) * Bclk ) );&#xD;&#xA;          var dummy1 = ((Intvalue-1) * Bclk);&#xD;&#xA;          var dummy2 = (100) / (Intvalue);&#xD;&#xA;          SCM.setIntValue(lowfrq,dummy);&#xD;&#xA;          SCM.setIntValue(longoff,dummy1);&#xD;&#xA;&#x9;&#x9;  SCM.setDoubleValue(minbrightness,dummy2);&#xD;&#xA;// Dependent Bonding&#xD;&#xA;          var DepRes0 = SCM.getResource(&quot;bccuglobal_longestofftime&quot;);&#xD;&#xA;          var DepRes0Val = SCM.getIntValue(DepRes0);&#xD;&#xA;          var DepRes1 = SCM.getResource(&quot;bccuglobal_lowestfreq&quot;);&#xD;&#xA;          var DepRes1Val = SCM.getIntValue(DepRes1);&#xD;&#xA;          var DepRes2 = SCM.getResource(&quot;bccuglobal_minbrightness&quot;);&#xD;&#xA;          var DepRes2Val = SCM.getIntValue(DepRes2);&#xD;&#xA;        }&#xD;&#xA;        function BackwardMapping()&#xD;&#xA;        {&#xD;&#xA;          var Res = SCM.getResource(&quot;global/globcon/wdmbn&quot;); &#xD;&#xA;          var Intvalue = SCM.getIntValue(Res); &#xD;&#xA;          SCM.setIntValue(currentResource,Intvalue);&#xD;&#xA;        }       " URI="http://www.infineon.com/1.0.12/app/bccuglobal/0/bccuglobal_maxbitno" downWardmappedList="//@consumed.32 //@consumed.13 //@consumed.12 //@consumed.14" maxValue="FFF" minValue="2">
    <defaultValue xsi:type="ResourceModel:IntegerValue" value="320"/>
    <upWardMappingList xsi:type="ResourceModel:ProxyResource" href="../../BCCUCH01/1.0.10/bccuch01_0.app#//@consumed.39"/>
    <upWardMappingList xsi:type="ResourceModel:ProxyResource" href="../../BCCUCH01/1.0.10/bccuch01_1.app#//@consumed.39"/>
    <upWardMappingList xsi:type="ResourceModel:ProxyResource" href="../../BCCUCH01/1.0.10/bccuch01_2.app#//@consumed.39"/>
    <upWardMappingList xsi:type="ResourceModel:ProxyResource" href="../../BCCUCH01/1.0.10/bccuch01_3.app#//@consumed.39"/>
    <upWardMappingList xsi:type="ResourceModel:ProxyResource" href="../../BCCUCH01/1.0.10/bccuch01_4.app#//@consumed.39"/>
    <upWardMappingList xsi:type="ResourceModel:ProxyResource" href="../../BCCUCH01/1.0.10/bccuch01_5.app#//@consumed.39"/>
    <localValue xsi:type="ResourceModel:IntegerValue" value="c8"/>
    <globalValue xsi:type="ResourceModel:IntegerValue" value="c8"/>
    <toolTipHelpDescription>GLOBCON.WDMBN bitfield.
If the number of OFF-bits at the modulator 
output reaches this threshold, an ON-bit is 
inserted and the modulator is reset.</toolTipHelpDescription>
  </provided>
  <provided xsi:type="ResourceModel:IntegerParameter" name="Longest OFF-time at Modulator Output" evalFunction="&#xD;&#xA;        function ForwardMapping()&#xD;&#xA;        {&#xD;&#xA;          var Res = SCM.getResource(&quot;bccuglobal_longestofftimedummy&quot;); &#xD;&#xA;          var Intvalue = SCM.getIntValue(currentResource);&#xD;&#xA;          SCM.setIntValue(Res,Intvalue);&#xD;&#xA;        }&#xD;&#xA;       function BackwardMapping()&#xD;&#xA;        {&#xD;&#xA;          var Res = SCM.getResource(&quot;bccuglobal_longestofftimedummy&quot;); &#xD;&#xA;          var Intvalue = SCM.getIntValue(Res); &#xD;&#xA;          SCM.setIntValue(currentResource,Intvalue);        &#xD;&#xA;&#xD;&#xA;          var Res1 = SCM.getResource(&quot;bccuglobal_actbclktime&quot;); &#xD;&#xA;          var ActBitTime = SCM.getIntValue(Res1); &#xD;&#xA;          var Res2 = SCM.getResource(&quot;bccuglobal_maxbitno&quot;); &#xD;&#xA;          var WDMBN = SCM.getIntValue(Res2); &#xD;&#xA;          var min = Math.floor(1 * ActBitTime);&#xD;&#xA;          var max = Math.floor(4094 * ActBitTime);&#x9;//12 bit prescalar 2 ^ 12 = 4096&#xD;&#xA;&#x9;&#x9;      SCM.setMinMaxValue(currentResource, min, max, 1);   &#xD;&#xA;        }       " URI="http://www.infineon.com/1.0.12/app/bccuglobal/0/bccuglobal_longestofftime" downWardmappedList="//@consumed.12" maxValue="13858f0" minValue="1388">
    <defaultValue xsi:type="ResourceModel:IntegerValue" value="3D0900"/>
    <localValue xsi:type="ResourceModel:StringValue" value="3D0900"/>
    <globalValue xsi:type="ResourceModel:IntegerValue" value="f2eb8"/>
    <toolTipHelpDescription>Longest OFF-time at Modulator Output = WDMBN * actual bit time</toolTipHelpDescription>
  </provided>
  <provided xsi:type="ResourceModel:IntegerParameter" name="Lowest Frequency at Modulator Output" evalFunction="&#xD;&#xA;        function ForwardMapping()&#xD;&#xA;        {&#xD;&#xA;          var Res = SCM.getResource(&quot;bccuglobal_lowestfreqdummy&quot;); &#xD;&#xA;          var Intvalue = SCM.getIntValue(currentResource);&#xD;&#xA;          SCM.setIntValue(Res,Intvalue);&#xD;&#xA;        }&#xD;&#xA;        function BackwardMapping()&#xD;&#xA;        {&#xD;&#xA;          var Res = SCM.getResource(&quot;bccuglobal_lowestfreqdummy&quot;); &#xD;&#xA;          var Intvalue = SCM.getIntValue(Res); &#xD;&#xA;          SCM.setIntValue(currentResource,Intvalue);&#xD;&#xA;&#xD;&#xA;          var Res1 = SCM.getResource(&quot;bccuglobal_actbclktime&quot;); &#xD;&#xA;          var ActBitTime = SCM.getIntValue(Res1); &#xD;&#xA;          var Res2 = SCM.getResource(&quot;bccuglobal_maxbitno&quot;); &#xD;&#xA;          var WDMBN = SCM.getIntValue(Res2); &#xD;&#xA;          var max = Math.floor((1 * 1000000000) /(2 * ActBitTime));&#xD;&#xA;          var min = Math.floor((1 * 1000000000) /(4095 * ActBitTime));&#x9;//12 bit prescalar 2 ^ 12 = 4096&#xD;&#xA;&#x9;&#x9;      SCM.setMinMaxValue(currentResource, min, max, 1);   &#xD;&#xA;&#xD;&#xA;        }       " URI="http://www.infineon.com/1.0.12/app/bccuglobal/0/bccuglobal_lowestfreq" downWardmappedList="//@consumed.13" maxValue="186a0" minValue="30">
    <defaultValue xsi:type="ResourceModel:IntegerValue" value="FA"/>
    <localValue xsi:type="ResourceModel:StringValue" value="FA"/>
    <globalValue xsi:type="ResourceModel:IntegerValue" value="3e8"/>
    <toolTipHelpDescription>Lowest Frequency at Modulator Output = 1 / ((1+WDMBN)*actual bit time)</toolTipHelpDescription>
  </provided>
  <provided xsi:type="ResourceModel:IntegerParameter" name="Minimum Brightness" evalFunction="&#xD;&#xA;        function ForwardMapping()&#xD;&#xA;        {&#xD;&#xA;          var Res = SCM.getResource(&quot;bccuglobal_minbrightnessdummy&quot;); &#xD;&#xA;          var Intvalue = SCM.getIntValue(Res); &#xD;&#xA;          SCM.setDoubleValue(currentResource,Intvalue);&#xD;&#xA;        }&#xD;&#xA;       function BackwardMapping()&#xD;&#xA;        {&#xD;&#xA;          var Res = SCM.getResource(&quot;bccuglobal_minbrightnessdummy&quot;); &#xD;&#xA;          var Intvalue = SCM.getIntValue(Res); &#xD;&#xA;          SCM.setDoubleValue(currentResource,Intvalue);&#xD;&#xA;        }       " URI="http://www.infineon.com/1.0.12/app/bccuglobal/0/bccuglobal_minbrightness" maxValue="64" minValue="0">
    <defaultValue xsi:type="ResourceModel:IntegerValue" value="50"/>
    <localValue xsi:type="ResourceModel:IntegerValue" value="3fbfffffffffffec"/>
    <globalValue xsi:type="ResourceModel:IntegerValue" value="3fdffffffffffff4"/>
    <toolTipHelpDescription>Longest OFF-time at Modulator Output = WDMBN * actual bit time</toolTipHelpDescription>
  </provided>
  <provided xsi:type="ResourceModel:EnumerationParameter" name="Edge Selection" evalFunction="&#xD;&#xA;        function ForwardMapping()&#xD;&#xA;        {&#xD;&#xA;        var value = SCM.getIntValue(currentResource);&#xD;&#xA;        var Res = SCM.getResource(&quot;trap/globcon_traped&quot;);&#xD;&#xA;        SCM.setIntValue(Res,value);        &#xD;&#xA;        }&#xD;&#xA;        function BackwardMapping()&#xD;&#xA;        {&#xD;&#xA;        var Res = SCM.getResource(&quot;trap/globcon_traped&quot;);&#xD;&#xA;        var value = SCM.getIntValue(Res);&#xD;&#xA;        SCM.setIntValue(currentResource,value);&#xD;&#xA;      }&#xD;&#xA;      " URI="http://www.infineon.com/1.0.12/app/bccuglobal/0/bccuglobal_trapedge" downWardmappedList="//@consumed.33">
    <defaultValue xsi:type="ResourceModel:IntegerValue" value="0"/>
    <localValue xsi:type="ResourceModel:StringValue" value="0"/>
    <globalValue xsi:type="ResourceModel:IntegerValue" value="0"/>
    <toolTipHelpDescription>Select Trap occurs on rising edge or falling edge of TRAPL signal</toolTipHelpDescription>
    <item name="Rising edge" evalFunction="&#xD;&#xA;            function ForwardMapping()&#xD;&#xA;            { &#xD;&#xA;              var value = SCM.getIntValue(currentResource);&#xD;&#xA;              var Res = SCM.getResource(&quot;trap/globcon_traped&quot;);&#xD;&#xA;              if (value == 1 ) {&#xD;&#xA;                SCM.setIntValue(Res,0);       &#xD;&#xA;              } else if (value === 0) {&#xD;&#xA;                SCM.setIntValue(Res,0);&#xD;&#xA;              } &#xD;&#xA;            }&#xD;&#xA;            function BackwardMapping()&#xD;&#xA;            {&#xD;&#xA;              var Res = SCM.getResource(&quot;trap/globcon_traped&quot;); &#xD;&#xA;              var value = SCM.getIntValue(Res); &#xD;&#xA;              if (value === 0 ) { &#xD;&#xA;                SCM.setIntValue(currentResource,1);&#xD;&#xA;              } else if (value == -1 ){&#xD;&#xA;                SCM.setIntValue(currentResource,1);&#xD;&#xA;              }&#xD;&#xA;              else {&#xD;&#xA;                SCM.setIntValue(currentResource,0);&#xD;&#xA;              }&#xD;&#xA;            }       &#xD;&#xA;            " URI="http://www.infineon.com/1.0.12/app/bccuglobal/0/bccuglobal_trapedge/0" downWardmappedList="//@consumed.33" maxValue="1" minValue="0">
      <defaultValue xsi:type="ResourceModel:IntegerValue" value="1"/>
      <localValue xsi:type="ResourceModel:StringValue" value="1"/>
      <globalValue xsi:type="ResourceModel:IntegerValue" value="1"/>
      <toolTipHelpDescription>Selects trap on rising edge of TRAPL signal</toolTipHelpDescription>
    </item>
    <item name="Falling edge" evalFunction="&#xD;&#xA;            function ForwardMapping()&#xD;&#xA;            { &#xD;&#xA;              var value = SCM.getIntValue(currentResource);&#xD;&#xA;              var Res = SCM.getResource(&quot;trap/globcon_traped&quot;);&#xD;&#xA;              if (value == 1 ) {&#xD;&#xA;                SCM.setIntValue(Res,1);       &#xD;&#xA;              } else if (value === 0) {&#xD;&#xA;                SCM.setIntValue(Res,0);&#xD;&#xA;              } &#xD;&#xA;            }&#xD;&#xA;            function BackwardMapping()&#xD;&#xA;            {&#xD;&#xA;              var Res = SCM.getResource(&quot;trap/globcon_traped&quot;); &#xD;&#xA;              var value = SCM.getIntValue(Res); &#xD;&#xA;              if (value === 1 ) { &#xD;&#xA;                SCM.setIntValue(currentResource,1);&#xD;&#xA;              } else if (value == -1 ){&#xD;&#xA;                SCM.setIntValue(currentResource,0);&#xD;&#xA;              }&#xD;&#xA;              else {&#xD;&#xA;                SCM.setIntValue(currentResource,0);&#xD;&#xA;              }&#xD;&#xA;            }       &#xD;&#xA;            " URI="http://www.infineon.com/1.0.12/app/bccuglobal/0/bccuglobal_trapedge/1" downWardmappedList="//@consumed.33" maxValue="1" minValue="0">
      <defaultValue xsi:type="ResourceModel:IntegerValue" value="0"/>
      <localValue xsi:type="ResourceModel:StringValue" value="0"/>
      <globalValue xsi:type="ResourceModel:IntegerValue" value="0"/>
      <toolTipHelpDescription>Selects trap on falling edge of TRAPL signal</toolTipHelpDescription>
    </item>
  </provided>
  <provided xsi:type="ResourceModel:IntegerParameter" name="Initial Global Dimming Level" evalFunction="&#xD;&#xA;        function ForwardMapping()&#xD;&#xA;        {&#xD;&#xA;          var Res = SCM.getResource(&quot;global/globdim/globdim&quot;); &#xD;&#xA;          var Intvalue = SCM.getIntValue(currentResource); &#xD;&#xA;          SCM.setIntValue(Res,Intvalue);&#xD;&#xA;        }&#xD;&#xA;        function BackwardMapping()&#xD;&#xA;        {&#xD;&#xA;          var Res = SCM.getResource(&quot;global/globdim/globdim&quot;); &#xD;&#xA;          var Intvalue = SCM.getIntValue(Res); &#xD;&#xA;          SCM.setIntValue(currentResource,Intvalue);&#xD;&#xA;        }       " URI="http://www.infineon.com/1.0.12/app/bccuglobal/0/bccuglobal_glob_dimlevel" downWardmappedList="//@consumed.34" maxValue="FFF" minValue="0">
    <defaultValue xsi:type="ResourceModel:IntegerValue" value="0"/>
    <localValue xsi:type="ResourceModel:StringValue" value="0"/>
    <globalValue xsi:type="ResourceModel:IntegerValue" value="0"/>
    <toolTipHelpDescription>Enter Initial Global Dimming Level</toolTipHelpDescription>
  </provided>
  <provided xsi:type="ResourceModel:EnumerationParameter" name="Trigger 0 Interrupt Selection" evalFunction="&#xD;&#xA;            function ForwardMapping()&#xD;&#xA;            {&#xD;&#xA;              var Res0 = SCM.getResource(&quot;global/evier/t0ien&quot;); &#xD;&#xA;              var value = SCM.getIntValue(currentResource); &#xD;&#xA;              SCM.setIntValue(Res0,value);&#xD;&#xA;            }&#xD;&#xA;            function BackwardMapping()&#xD;&#xA;            {&#xD;&#xA;              var Res0 = SCM.getResource(&quot;global/evier/t0ien&quot;); &#xD;&#xA;              var value0 = SCM.getIntValue(Res0);&#xD;&#xA;              SCM.setIntValue(currentResource,value0);&#xD;&#xA;            }" URI="http://www.infineon.com/1.0.12/app/bccuglobal/0/bccuglobal_trig0int_en" downWardmappedList="//@consumed.35" multipleSelections="true">
    <defaultValue xsi:type="ResourceModel:IntegerValue" value="0"/>
    <localValue xsi:type="ResourceModel:StringValue" value="0"/>
    <globalValue xsi:type="ResourceModel:IntegerValue" value="0"/>
    <item name="Enable Trigger 0 Interrupt" evalFunction="&#xD;&#xA;            function ForwardMapping()&#xD;&#xA;            {&#xD;&#xA;              var Res0 = SCM.getResource(&quot;global/evier/t0ien&quot;); &#xD;&#xA;              var value = SCM.getIntValue(currentResource); &#xD;&#xA;              SCM.setIntValue(Res0,value);&#xD;&#xA;            }&#xD;&#xA;            function BackwardMapping()&#xD;&#xA;            {&#xD;&#xA;              var Res0 = SCM.getResource(&quot;global/evier/t0ien&quot;); &#xD;&#xA;              var value0 = SCM.getIntValue(Res0);&#xD;&#xA;              SCM.setIntValue(currentResource,value0);&#xD;&#xA;            }" URI="http://www.infineon.com/1.0.12/app/bccuglobal/0/bccuglobal_trig0int_en/0" downWardmappedList="//@consumed.35" maxValue="1" minValue="0">
      <defaultValue xsi:type="ResourceModel:IntegerValue" value="0"/>
      <localValue xsi:type="ResourceModel:StringValue" value="0"/>
      <globalValue xsi:type="ResourceModel:IntegerValue" value="0"/>
      <toolTipHelpDescription>Enable Trigger 0 Interrupt</toolTipHelpDescription>
    </item>
  </provided>
  <provided xsi:type="ResourceModel:EnumerationParameter" name="Trigger 1 Interrupt Selection" evalFunction="&#xD;&#xA;            function ForwardMapping()&#xD;&#xA;            {&#xD;&#xA;              var Res0 = SCM.getResource(&quot;global/evier/t1ien&quot;); &#xD;&#xA;              var value = SCM.getIntValue(currentResource); &#xD;&#xA;              SCM.setIntValue(Res0,value);&#xD;&#xA;            }&#xD;&#xA;            function BackwardMapping()&#xD;&#xA;            {&#xD;&#xA;              var Res0 = SCM.getResource(&quot;global/evier/t1ien&quot;); &#xD;&#xA;              var value0 = SCM.getIntValue(Res0);&#xD;&#xA;              SCM.setIntValue(currentResource,value0);&#xD;&#xA;            }" URI="http://www.infineon.com/1.0.12/app/bccuglobal/0/bccuglobal_trig1int_en" downWardmappedList="//@consumed.36" multipleSelections="true">
    <defaultValue xsi:type="ResourceModel:IntegerValue" value="0"/>
    <localValue xsi:type="ResourceModel:StringValue" value="0"/>
    <globalValue xsi:type="ResourceModel:IntegerValue" value="0"/>
    <item name="Enable Trigger 1 Interrupt" evalFunction="&#xD;&#xA;            function ForwardMapping()&#xD;&#xA;            {&#xD;&#xA;              var Res0 = SCM.getResource(&quot;global/evier/t1ien&quot;); &#xD;&#xA;              var value = SCM.getIntValue(currentResource); &#xD;&#xA;              SCM.setIntValue(Res0,value);&#xD;&#xA;            }&#xD;&#xA;            function BackwardMapping()&#xD;&#xA;            {&#xD;&#xA;              var Res0 = SCM.getResource(&quot;global/evier/t1ien&quot;); &#xD;&#xA;              var value0 = SCM.getIntValue(Res0);&#xD;&#xA;              SCM.setIntValue(currentResource,value0);&#xD;&#xA;            }" URI="http://www.infineon.com/1.0.12/app/bccuglobal/0/bccuglobal_trig1int_en/0" downWardmappedList="//@consumed.36" maxValue="1" minValue="0">
      <defaultValue xsi:type="ResourceModel:IntegerValue" value="0"/>
      <localValue xsi:type="ResourceModel:StringValue" value="0"/>
      <globalValue xsi:type="ResourceModel:IntegerValue" value="0"/>
      <toolTipHelpDescription>Enable Trigger 1 Interrupt</toolTipHelpDescription>
    </item>
  </provided>
  <provided xsi:type="ResourceModel:EnumerationParameter" name="FIFO Full Interrupt Selection" evalFunction="&#xD;&#xA;            function ForwardMapping()&#xD;&#xA;            {&#xD;&#xA;              var Res0 = SCM.getResource(&quot;global/evier/fien&quot;); &#xD;&#xA;              var value = SCM.getIntValue(currentResource); &#xD;&#xA;              SCM.setIntValue(Res0,value);&#xD;&#xA;            }&#xD;&#xA;            function BackwardMapping()&#xD;&#xA;            {&#xD;&#xA;              var Res0 = SCM.getResource(&quot;global/evier/fien&quot;); &#xD;&#xA;              var value0 = SCM.getIntValue(Res0);&#xD;&#xA;              SCM.setIntValue(currentResource,value0);&#xD;&#xA;            }" URI="http://www.infineon.com/1.0.12/app/bccuglobal/0/bccuglobal_fifofullint_en" downWardmappedList="//@consumed.37" multipleSelections="true">
    <defaultValue xsi:type="ResourceModel:IntegerValue" value="0"/>
    <localValue xsi:type="ResourceModel:StringValue" value="0"/>
    <globalValue xsi:type="ResourceModel:IntegerValue" value="0"/>
    <item name="Enable FIFO Full Interrupt" evalFunction="&#xD;&#xA;            function ForwardMapping()&#xD;&#xA;            {&#xD;&#xA;              var Res0 = SCM.getResource(&quot;global/evier/fien&quot;); &#xD;&#xA;              var value = SCM.getIntValue(currentResource); &#xD;&#xA;              SCM.setIntValue(Res0,value);&#xD;&#xA;            }&#xD;&#xA;            function BackwardMapping()&#xD;&#xA;            {&#xD;&#xA;              var Res0 = SCM.getResource(&quot;global/evier/fien&quot;); &#xD;&#xA;              var value0 = SCM.getIntValue(Res0);&#xD;&#xA;              SCM.setIntValue(currentResource,value0);&#xD;&#xA;            }" URI="http://www.infineon.com/1.0.12/app/bccuglobal/0/bccuglobal_fifofullint_en/0" downWardmappedList="//@consumed.37" maxValue="1" minValue="0">
      <defaultValue xsi:type="ResourceModel:IntegerValue" value="0"/>
      <localValue xsi:type="ResourceModel:StringValue" value="0"/>
      <globalValue xsi:type="ResourceModel:IntegerValue" value="0"/>
      <toolTipHelpDescription>Enable FIFO Full Interrupt</toolTipHelpDescription>
    </item>
  </provided>
  <provided xsi:type="ResourceModel:EnumerationParameter" name="FIFO Empty Interrupt Selection" evalFunction="&#xD;&#xA;            function ForwardMapping()&#xD;&#xA;            {&#xD;&#xA;              var Res0 = SCM.getResource(&quot;global/evier/eien&quot;); &#xD;&#xA;              var value = SCM.getIntValue(currentResource); &#xD;&#xA;              SCM.setIntValue(Res0,value);&#xD;&#xA;            }&#xD;&#xA;            function BackwardMapping()&#xD;&#xA;            {&#xD;&#xA;              var Res0 = SCM.getResource(&quot;global/evier/eien&quot;); &#xD;&#xA;              var value0 = SCM.getIntValue(Res0);&#xD;&#xA;              SCM.setIntValue(currentResource,value0);&#xD;&#xA;            }" URI="http://www.infineon.com/1.0.12/app/bccuglobal/0/bccuglobal_fifoemptint_en" downWardmappedList="//@consumed.38" multipleSelections="true">
    <defaultValue xsi:type="ResourceModel:IntegerValue" value="0"/>
    <localValue xsi:type="ResourceModel:StringValue" value="0"/>
    <globalValue xsi:type="ResourceModel:IntegerValue" value="0"/>
    <item name="Enable FIFO Empty Interrupt" evalFunction="&#xD;&#xA;            function ForwardMapping()&#xD;&#xA;            {&#xD;&#xA;              var Res0 = SCM.getResource(&quot;global/evier/eien&quot;); &#xD;&#xA;              var value = SCM.getIntValue(currentResource); &#xD;&#xA;              SCM.setIntValue(Res0,value);&#xD;&#xA;            }&#xD;&#xA;            function BackwardMapping()&#xD;&#xA;            {&#xD;&#xA;              var Res0 = SCM.getResource(&quot;global/evier/eien&quot;); &#xD;&#xA;              var value0 = SCM.getIntValue(Res0);&#xD;&#xA;              SCM.setIntValue(currentResource,value0);&#xD;&#xA;            }" URI="http://www.infineon.com/1.0.12/app/bccuglobal/0/bccuglobal_fifoemptint_en/0" downWardmappedList="//@consumed.38" maxValue="1" minValue="0">
      <defaultValue xsi:type="ResourceModel:IntegerValue" value="0"/>
      <localValue xsi:type="ResourceModel:StringValue" value="0"/>
      <globalValue xsi:type="ResourceModel:IntegerValue" value="0"/>
      <toolTipHelpDescription>Enable FIFO Empty Interrupt</toolTipHelpDescription>
    </item>
  </provided>
  <provided xsi:type="ResourceModel:EnumerationParameter" name="Trap Interrupt Selection" evalFunction="&#xD;&#xA;            function ForwardMapping()&#xD;&#xA;            {&#xD;&#xA;              var Res0 = SCM.getResource(&quot;global/evier/tpien&quot;); &#xD;&#xA;              var value = SCM.getIntValue(currentResource); &#xD;&#xA;              SCM.setIntValue(Res0,value);&#xD;&#xA;            }&#xD;&#xA;            function BackwardMapping()&#xD;&#xA;            {&#xD;&#xA;              var Res0 = SCM.getResource(&quot;global/evier/tpien&quot;); &#xD;&#xA;              var value0 = SCM.getIntValue(Res0);&#xD;&#xA;              SCM.setIntValue(currentResource,value0);&#xD;&#xA;            }" URI="http://www.infineon.com/1.0.12/app/bccuglobal/0/bccuglobal_trapint_en" downWardmappedList="//@consumed.39" multipleSelections="true">
    <defaultValue xsi:type="ResourceModel:IntegerValue" value="0"/>
    <localValue xsi:type="ResourceModel:StringValue" value="0"/>
    <globalValue xsi:type="ResourceModel:IntegerValue" value="0"/>
    <item name="Enable Trap Interrupt" evalFunction="&#xD;&#xA;            function ForwardMapping()&#xD;&#xA;            {&#xD;&#xA;              var Res0 = SCM.getResource(&quot;global/evier/tpien&quot;); &#xD;&#xA;              var value = SCM.getIntValue(currentResource); &#xD;&#xA;              SCM.setIntValue(Res0,value);&#xD;&#xA;            }&#xD;&#xA;            function BackwardMapping()&#xD;&#xA;            {&#xD;&#xA;              var Res0 = SCM.getResource(&quot;global/evier/tpien&quot;); &#xD;&#xA;              var value0 = SCM.getIntValue(Res0);&#xD;&#xA;              SCM.setIntValue(currentResource,value0);&#xD;&#xA;            }" URI="http://www.infineon.com/1.0.12/app/bccuglobal/0/bccuglobal_trapint_en/0" downWardmappedList="//@consumed.39" maxValue="1" minValue="0">
      <defaultValue xsi:type="ResourceModel:IntegerValue" value="0"/>
      <localValue xsi:type="ResourceModel:StringValue" value="0"/>
      <globalValue xsi:type="ResourceModel:IntegerValue" value="0"/>
      <toolTipHelpDescription>Enable Trap Interrupt</toolTipHelpDescription>
    </item>
  </provided>
  <consumed xsi:type="ResourceModel:ProxyResource" URI="http://www.infineon.com/1.0.12/app/bccuglobal/0/clockapp">
    <downWardmappedList xsi:type="ResourceModel:App" href="../../CLK002/1.0.8/clk002_0.app#/"/>
    <requiredResource uriString="app/clk002/*" uriType="LOCALTYPE"/>
  </consumed>
  <consumed xsi:type="ResourceModel:ProxyResource" URI="http://www.infineon.com/1.0.12/app/bccuglobal/0/global">
    <downWardmappedList xsi:type="ResourceModel:ResourceGroup" href="../../BCCU0/BCCU0_0.dd#//@provided.121"/>
    <requiredResource uriString="peripheral/bccu/*/global" uriType="LOCALTYPE"/>
  </consumed>
  <consumed xsi:type="ResourceModel:ProxyResource" URI="http://www.infineon.com/1.0.12/app/bccuglobal/0/trap">
    <downWardmappedList xsi:type="ResourceModel:ResourceGroup" href="../../BCCU0/BCCU0_0.dd#//@provided.127"/>
    <requiredResource uriString="peripheral/bccu/*/trap" uriType="LOCALTYPE"/>
  </consumed>
  <consumed xsi:type="ResourceModel:ProxyResource" URI="http://www.infineon.com/1.0.12/app/bccuglobal/0/trigger">
    <downWardmappedList xsi:type="ResourceModel:ResourceGroup" href="../../BCCU0/BCCU0_0.dd#//@provided.131"/>
    <requiredResource uriString="peripheral/bccu/*/trigger" uriType="LOCALTYPE"/>
  </consumed>
  <consumed xsi:type="ResourceModel:ProxyResource" URI="http://www.infineon.com/1.0.12/app/bccuglobal/0/packer_fifo_event">
    <downWardmappedList xsi:type="ResourceModel:ResourceGroup" href="../../BCCU0/BCCU0_0.dd#//@provided.135"/>
    <requiredResource uriString="peripheral/bccu/*/packer_fifo_event" uriType="LOCALTYPE"/>
  </consumed>
  <consumed xsi:type="ResourceModel:ProxyResource" URI="http://www.infineon.com/1.0.12/app/bccuglobal/0/bcuuglobal_trigmodedummy" isSystemDefined="true">
    <requiredResource uriString="" uriType="LOCALTYPE"/>
  </consumed>
  <consumed xsi:type="ResourceModel:ProxyResource" URI="http://www.infineon.com/1.0.12/app/bccuglobal/0/bccuglobal_fclkdummy" upWardMappingList="//@provided.8 //@provided.9 //@provided.10 //@provided.14/@item.0 //@provided.14/@item.1" isSystemDefined="true">
    <localValue xsi:type="ResourceModel:IntegerValue" value="c3500"/>
    <globalValue xsi:type="ResourceModel:IntegerValue" value="c3500"/>
    <requiredResource uriString="" uriType="LOCALTYPE"/>
  </consumed>
  <consumed xsi:type="ResourceModel:ProxyResource" URI="http://www.infineon.com/1.0.12/app/bccuglobal/0/bccuglobal_actfclkdummy" upWardMappingList="//@provided.9" isSystemDefined="true">
    <localValue xsi:type="ResourceModel:IntegerValue" value="c3500"/>
    <globalValue xsi:type="ResourceModel:IntegerValue" value="c3500"/>
    <requiredResource uriString="" uriType="LOCALTYPE"/>
  </consumed>
  <consumed xsi:type="ResourceModel:ProxyResource" URI="http://www.infineon.com/1.0.12/app/bccuglobal/0/bccuglobal_dclkdummy" upWardMappingList="//@provided.11 //@provided.12 //@provided.13" isSystemDefined="true">
    <localValue xsi:type="ResourceModel:IntegerValue" value="4758d"/>
    <globalValue xsi:type="ResourceModel:IntegerValue" value="4758d"/>
    <requiredResource uriString="" uriType="LOCALTYPE"/>
  </consumed>
  <consumed xsi:type="ResourceModel:ProxyResource" URI="http://www.infineon.com/1.0.12/app/bccuglobal/0/bccuglobal_actdclkdummy" upWardMappingList="//@provided.12" isSystemDefined="true">
    <localValue xsi:type="ResourceModel:IntegerValue" value="4758d"/>
    <globalValue xsi:type="ResourceModel:IntegerValue" value="4758d"/>
    <requiredResource uriString="" uriType="LOCALTYPE"/>
  </consumed>
  <consumed xsi:type="ResourceModel:ProxyResource" URI="http://www.infineon.com/1.0.12/app/bccuglobal/0/bccuglobal_actbclkfreqdummy" upWardMappingList="//@provided.8 //@provided.14/@item.0 //@provided.14/@item.1 //@provided.15" isSystemDefined="true">
    <localValue xsi:type="ResourceModel:IntegerValue" value="30d40"/>
    <globalValue xsi:type="ResourceModel:IntegerValue" value="30d40"/>
    <requiredResource uriString="" uriType="LOCALTYPE"/>
  </consumed>
  <consumed xsi:type="ResourceModel:ProxyResource" URI="http://www.infineon.com/1.0.12/app/bccuglobal/0/bccuglobal_actbclktimedummy" upWardMappingList="//@provided.8 //@provided.14/@item.0 //@provided.14/@item.1 //@provided.16 //@provided.19" isSystemDefined="true">
    <localValue xsi:type="ResourceModel:IntegerValue" value="1388"/>
    <globalValue xsi:type="ResourceModel:IntegerValue" value="1388"/>
    <requiredResource uriString="" uriType="LOCALTYPE"/>
  </consumed>
  <consumed xsi:type="ResourceModel:ProxyResource" URI="http://www.infineon.com/1.0.12/app/bccuglobal/0/bccuglobal_longestofftimedummy" upWardMappingList="//@provided.8 //@provided.14/@item.0 //@provided.14/@item.1 //@provided.19 //@provided.20" isSystemDefined="true">
    <localValue xsi:type="ResourceModel:IntegerValue" value="f2eb8"/>
    <globalValue xsi:type="ResourceModel:IntegerValue" value="f2eb8"/>
    <requiredResource uriString="" uriType="LOCALTYPE"/>
  </consumed>
  <consumed xsi:type="ResourceModel:ProxyResource" URI="http://www.infineon.com/1.0.12/app/bccuglobal/0/bccuglobal_lowestfreqdummy" upWardMappingList="//@provided.8 //@provided.14/@item.0 //@provided.14/@item.1 //@provided.19 //@provided.21" isSystemDefined="true">
    <localValue xsi:type="ResourceModel:IntegerValue" value="3e8"/>
    <globalValue xsi:type="ResourceModel:IntegerValue" value="3e8"/>
    <requiredResource uriString="" uriType="LOCALTYPE"/>
  </consumed>
  <consumed xsi:type="ResourceModel:ProxyResource" URI="http://www.infineon.com/1.0.12/app/bccuglobal/0/bccuglobal_minbrightnessdummy" upWardMappingList="//@provided.8 //@provided.14/@item.0 //@provided.14/@item.1 //@provided.19 //@provided.22" isSystemDefined="true">
    <localValue xsi:type="ResourceModel:IntegerValue" value="3fe0000000000000"/>
    <globalValue xsi:type="ResourceModel:IntegerValue" value="3fe0000000000000"/>
    <requiredResource uriString="" uriType="LOCALTYPE"/>
  </consumed>
  <consumed xsi:type="ResourceModel:ProxyResource" URI="http://www.infineon.com/1.0.12/app/bccuglobal/0/packer_fifo_event/event_empty" isSystemDefined="true">
    <downWardmappedList xsi:type="ResourceModel:SignalDeclaration" href="../../BCCU0/BCCU0_0.dd#//@provided.136"/>
  </consumed>
  <consumed xsi:type="ResourceModel:ProxyResource" URI="http://www.infineon.com/1.0.12/app/bccuglobal/0/packer_fifo_event/event_full" isSystemDefined="true">
    <downWardmappedList xsi:type="ResourceModel:SignalDeclaration" href="../../BCCU0/BCCU0_0.dd#//@provided.137"/>
  </consumed>
  <consumed xsi:type="ResourceModel:ProxyResource" URI="http://www.infineon.com/1.0.12/app/bccuglobal/0/clockapp/clk002_irpclk" upWardMappingList="//@provided.8 //@provided.9 //@provided.10 //@provided.11 //@provided.12 //@provided.13 //@provided.14/@item.0 //@provided.14/@item.1 //@provided.15 //@provided.16" isSystemDefined="true">
    <localValue xsi:type="ResourceModel:StringValue" value="20"/>
    <downWardmappedList xsi:type="ResourceModel:IntegerParameter" href="../../CLK002/1.0.8/clk002_0.app#//@provided.4"/>
    <globalValue xsi:type="ResourceModel:IntegerValue" value="40"/>
  </consumed>
  <consumed xsi:type="ResourceModel:ProxyResource" URI="http://www.infineon.com/1.0.12/app/bccuglobal/0/global/globclk/fclk_ps" upWardMappingList="//@provided.8 //@provided.10" isSystemDefined="true">
    <localValue xsi:type="ResourceModel:IntegerValue" value="c8"/>
    <downWardmappedList xsi:type="ResourceModel:BitField" href="../../BCCU0/BCCU0_0.dd#//@provided.122"/>
    <globalValue xsi:type="ResourceModel:IntegerValue" value="c8"/>
  </consumed>
  <consumed xsi:type="ResourceModel:ProxyResource" URI="http://www.infineon.com/1.0.12/app/bccuglobal/0/global/globclk/dclk_ps" upWardMappingList="//@provided.11 //@provided.13" isSystemDefined="true">
    <localValue xsi:type="ResourceModel:IntegerValue" value="6e"/>
    <downWardmappedList xsi:type="ResourceModel:BitField" href="../../BCCU0/BCCU0_0.dd#//@provided.123"/>
    <globalValue xsi:type="ResourceModel:IntegerValue" value="6e"/>
  </consumed>
  <consumed xsi:type="ResourceModel:ProxyResource" URI="http://www.infineon.com/1.0.12/app/bccuglobal/0/global/globclk/bcs" upWardMappingList="//@provided.8 //@provided.14 //@provided.14/@item.0 //@provided.14/@item.1 //@provided.15 //@provided.16" isSystemDefined="true">
    <localValue xsi:type="ResourceModel:IntegerValue" value="0"/>
    <downWardmappedList xsi:type="ResourceModel:BitField" href="../../BCCU0/BCCU0_0.dd#//@provided.124"/>
    <globalValue xsi:type="ResourceModel:IntegerValue" value="0"/>
  </consumed>
  <consumed xsi:type="ResourceModel:ProxyResource" URI="http://www.infineon.com/1.0.12/app/bccuglobal/0/global/chocon/ch0op" isSystemDefined="true"/>
  <consumed xsi:type="ResourceModel:ProxyResource" URI="http://www.infineon.com/1.0.12/app/bccuglobal/0/global/chocon/ch1op" isSystemDefined="true"/>
  <consumed xsi:type="ResourceModel:ProxyResource" URI="http://www.infineon.com/1.0.12/app/bccuglobal/0/global/chocon/ch2op" isSystemDefined="true"/>
  <consumed xsi:type="ResourceModel:ProxyResource" URI="http://www.infineon.com/1.0.12/app/bccuglobal/0/global/chocon/ch3op" isSystemDefined="true"/>
  <consumed xsi:type="ResourceModel:ProxyResource" URI="http://www.infineon.com/1.0.12/app/bccuglobal/0/global/chocon/ch4op" isSystemDefined="true"/>
  <consumed xsi:type="ResourceModel:ProxyResource" URI="http://www.infineon.com/1.0.12/app/bccuglobal/0/global/chocon/ch5op" isSystemDefined="true"/>
  <consumed xsi:type="ResourceModel:ProxyResource" URI="http://www.infineon.com/1.0.12/app/bccuglobal/0/global/chocon/ch6op" isSystemDefined="true"/>
  <consumed xsi:type="ResourceModel:ProxyResource" URI="http://www.infineon.com/1.0.12/app/bccuglobal/0/global/chocon/ch7op" isSystemDefined="true"/>
  <consumed xsi:type="ResourceModel:ProxyResource" URI="http://www.infineon.com/1.0.12/app/bccuglobal/0/global/chocon/ch8op" isSystemDefined="true"/>
  <consumed xsi:type="ResourceModel:ProxyResource" URI="http://www.infineon.com/1.0.12/app/bccuglobal/0/trigger/globcon_tm" upWardMappingList="//@provided.17 //@provided.17/@item.0 //@provided.17/@item.1" isSystemDefined="true">
    <localValue xsi:type="ResourceModel:IntegerValue" value="0"/>
    <downWardmappedList xsi:type="ResourceModel:BitField" href="../../BCCU0/BCCU0_0.dd#//@provided.132"/>
    <globalValue xsi:type="ResourceModel:IntegerValue" value="0"/>
  </consumed>
  <consumed xsi:type="ResourceModel:ProxyResource" URI="http://www.infineon.com/1.0.12/app/bccuglobal/0/trigger/globcon_trdel" upWardMappingList="//@provided.18/@item.0 //@provided.18/@item.1 //@provided.18/@item.2" isSystemDefined="true">
    <localValue xsi:type="ResourceModel:IntegerValue" value="0"/>
    <globalValue xsi:type="ResourceModel:IntegerValue" value="0"/>
  </consumed>
  <consumed xsi:type="ResourceModel:ProxyResource" URI="http://www.infineon.com/1.0.12/app/bccuglobal/0/global/globcon/wdmbn" upWardMappingList="//@provided.8 //@provided.14/@item.0 //@provided.14/@item.1 //@provided.19" isSystemDefined="true">
    <localValue xsi:type="ResourceModel:IntegerValue" value="c8"/>
    <globalValue xsi:type="ResourceModel:IntegerValue" value="c8"/>
  </consumed>
  <consumed xsi:type="ResourceModel:ProxyResource" URI="http://www.infineon.com/1.0.12/app/bccuglobal/0/trap/globcon_traped" upWardMappingList="//@provided.23 //@provided.23/@item.0 //@provided.23/@item.1" isSystemDefined="true">
    <localValue xsi:type="ResourceModel:IntegerValue" value="0"/>
    <downWardmappedList xsi:type="ResourceModel:BitField" href="../../BCCU0/BCCU0_0.dd#//@provided.128"/>
    <globalValue xsi:type="ResourceModel:IntegerValue" value="0"/>
  </consumed>
  <consumed xsi:type="ResourceModel:ProxyResource" URI="http://www.infineon.com/1.0.12/app/bccuglobal/0/global/globdim/globdim" upWardMappingList="//@provided.24" isSystemDefined="true">
    <localValue xsi:type="ResourceModel:IntegerValue" value="0"/>
    <downWardmappedList xsi:type="ResourceModel:BitField" href="../../BCCU0/BCCU0_0.dd#//@provided.125"/>
    <globalValue xsi:type="ResourceModel:IntegerValue" value="0"/>
  </consumed>
  <consumed xsi:type="ResourceModel:ProxyResource" URI="http://www.infineon.com/1.0.12/app/bccuglobal/0/global/evier/t0ien" upWardMappingList="//@provided.25 //@provided.25/@item.0" isSystemDefined="true">
    <localValue xsi:type="ResourceModel:IntegerValue" value="0"/>
    <globalValue xsi:type="ResourceModel:IntegerValue" value="0"/>
  </consumed>
  <consumed xsi:type="ResourceModel:ProxyResource" URI="http://www.infineon.com/1.0.12/app/bccuglobal/0/global/evier/t1ien" upWardMappingList="//@provided.26 //@provided.26/@item.0" isSystemDefined="true">
    <localValue xsi:type="ResourceModel:IntegerValue" value="0"/>
    <globalValue xsi:type="ResourceModel:IntegerValue" value="0"/>
  </consumed>
  <consumed xsi:type="ResourceModel:ProxyResource" URI="http://www.infineon.com/1.0.12/app/bccuglobal/0/global/evier/fien" upWardMappingList="//@provided.27 //@provided.27/@item.0" isSystemDefined="true">
    <localValue xsi:type="ResourceModel:IntegerValue" value="0"/>
    <globalValue xsi:type="ResourceModel:IntegerValue" value="0"/>
  </consumed>
  <consumed xsi:type="ResourceModel:ProxyResource" URI="http://www.infineon.com/1.0.12/app/bccuglobal/0/global/evier/eien" upWardMappingList="//@provided.28 //@provided.28/@item.0" isSystemDefined="true">
    <localValue xsi:type="ResourceModel:IntegerValue" value="0"/>
    <globalValue xsi:type="ResourceModel:IntegerValue" value="0"/>
  </consumed>
  <consumed xsi:type="ResourceModel:ProxyResource" URI="http://www.infineon.com/1.0.12/app/bccuglobal/0/global/evier/tpien" upWardMappingList="//@provided.29 //@provided.29/@item.0" isSystemDefined="true">
    <localValue xsi:type="ResourceModel:IntegerValue" value="0"/>
    <globalValue xsi:type="ResourceModel:IntegerValue" value="0"/>
  </consumed>
  <consumed xsi:type="ResourceModel:ProxyResource" URI="http://www.infineon.com/1.0.12/app/bccuglobal/0/nvicapp/nvic002_srwuserfunction" upWardMappingList="//@provided.7" isSystemDefined="true">
    <localValue xsi:type="ResourceModel:StringValue" value="BCCU_0_IRQHandler"/>
    <globalValue xsi:type="ResourceModel:StringValue" value="BCCU_0_IRQHandler"/>
  </consumed>
  <consumed xsi:type="ResourceModel:ProxyResource" URI="http://www.infineon.com/1.0.12/app/bccuglobal/0/global/globdimout" isSystemDefined="true">
    <downWardmappedList xsi:type="ResourceModel:SignalDeclaration" href="../../BCCU0/BCCU0_0.dd#//@provided.126"/>
  </consumed>
  <consumed xsi:type="ResourceModel:ProxyResource" URI="http://www.infineon.com/1.0.12/app/bccuglobal/0/trap/trap_in" isSystemDefined="true">
    <downWardmappedList xsi:type="ResourceModel:SignalDeclaration" href="../../BCCU0/BCCU0_0.dd#//@provided.129"/>
  </consumed>
  <consumed xsi:type="ResourceModel:ProxyResource" URI="http://www.infineon.com/1.0.12/app/bccuglobal/0/trap/trap_out" isSystemDefined="true">
    <downWardmappedList xsi:type="ResourceModel:SignalDeclaration" href="../../BCCU0/BCCU0_0.dd#//@provided.130"/>
  </consumed>
  <consumed xsi:type="ResourceModel:ProxyResource" URI="http://www.infineon.com/1.0.12/app/bccuglobal/0/trigger/trigger_out1" isSystemDefined="true">
    <downWardmappedList xsi:type="ResourceModel:SignalDeclaration" href="../../BCCU0/BCCU0_0.dd#//@provided.133"/>
  </consumed>
  <consumed xsi:type="ResourceModel:ProxyResource" URI="http://www.infineon.com/1.0.12/app/bccuglobal/0/trigger/trigger_out0" isSystemDefined="true">
    <downWardmappedList xsi:type="ResourceModel:SignalDeclaration" href="../../BCCU0/BCCU0_0.dd#//@provided.134"/>
  </consumed>
  <propertyConstants name="uridevice" value="device/">
    <propertyConstants name="uri_clockapp" value="app/clk002/">
      <propertyConstants name="uri_nvicapp" value="app/nvic002/"/>
    </propertyConstants>
  </propertyConstants>
  <categoryDescription description="Peripheral Specific Apps" name="Peripheral Specific Apps">
    <subCategory description="Industrial Control" name="Industrial Control">
      <subCategory description="Brightness and Color Control Unit (BCCU)" name="BCCU (Brightness and Color Control Unit)"/>
    </subCategory>
  </categoryDescription>
  <categoryDescription description="Lighting Applications" name="Lighting Applications">
    <subCategory description="Industrial Control" name="Industrial Control">
      <subCategory description="BCCU" name="BCCU"/>
    </subCategory>
  </categoryDescription>
  <manifestInfo version="1.0.12">
    <keywords>Channel</keywords>
    <keywords>BCCU</keywords>
    <keywords>Lighting</keywords>
    <keywords>Dimming</keywords>
    <properties xsi:type="ResourceModel:AppProperties_1_0" initProvider="true" singleton="true"/>
  </manifestInfo>
  <datagenerate fileName="BCCUGLOBAL.h" fileType="HFILE" templateFileName="BCCUGLOBAL.hdt" templateEngine="NONE" fileAction="COPY"/>
  <datagenerate fileName="BCCUGLOBAL.c" templateFileName="BCCUGLOBALc.cdt" fileAction="COPY"/>
  <datagenerate fileName="BCCUGLOBAL_Conf.c" templateFileName="BCCUGLOBAL_Confc.jet"/>
  <datagenerate fileName="BCCUGLOBAL_Conf.h" fileType="HFILE" templateFileName="BCCUGLOBAL_Confh.jet"/>
  <datagenerate fileName="BCCUGLOBAL_Extern.h" fileType="HFILE" templateFileName="BCCUGLOBAL_Externh.jet"/>
  <softwareIdList>12.00.7</softwareIdList>
  <softwareIdList>12.0100.7</softwareIdList>
  <softwareIdList>12.0102.8</softwareIdList>
  <softwareIdList>12.0102.9</softwareIdList>
  <softwareIdList>13.02.7</softwareIdList>
  <softwareIdList>13.0102.7</softwareIdList>
  <softwareIdList>12.0102.10</softwareIdList>
  <softwareIdList>12.0102.11</softwareIdList>
  <softwareIdList>13.0102.10</softwareIdList>
  <softwareIdList>13.0102.11</softwareIdList>
  <softwareIdList>13.0102.9</softwareIdList>
</ResourceModel:App>
