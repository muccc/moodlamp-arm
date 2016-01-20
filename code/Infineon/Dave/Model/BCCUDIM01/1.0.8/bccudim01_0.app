<?xml version="1.0" encoding="ASCII"?>
<ResourceModel:App xmi:version="2.0" xmlns:xmi="http://www.omg.org/XMI" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xmlns:ResourceModel="http://www.infineon.com/Davex/Resource.ecore" name="BCCUDIM01" description="This app configures the Dimming Engine registers &#xA; of the Brightness Color control unit (BCCU) module.&#xA; It also provides dynamic APIs to high level Apps like &#xA; DALI, White Lamp, Color Lamp (RBG, RBGWAF).&#xA;." descriptionURL="/doc/html/group___b_c_c_u_d_i_m01_app.html" mode="SHARABLE" URI="http://www.infineon.com/1.0.8/app/bccudim01/0">
  <upWardMappingList xsi:type="ResourceModel:ProxyResource" href="../../COLORLAMP01/1.0.7/colorlamp01_0.app#//@consumed.1"/>
  <provided xsi:type="ResourceModel:VirtualSignal" name="Channel out pin" URI="http://www.infineon.com/1.0.8/app/bccudim01/0/bccudim01_dimout_vs" requiredSignalResource="bccudimhw/dimout">
    <localValue xsi:type="ResourceModel:StringValue" value="-1"/>
    <globalValue xsi:type="ResourceModel:StringValue" value="-1"/>
  </provided>
  <provided xsi:type="ResourceModel:IntegerParameter" name="Dimming Level" evalFunction="        &#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;function ForwardMapping()&#xD;&#xA;&#x9;&#x9;&#x9;        {&#xD;&#xA;&#x9;&#x9;&#x9;          var lpres = SCM.getResource(&quot;bccudimhw/dls/tdlev&quot;);&#x9; &#xD;&#xA;&#x9;&#x9;&#x9;          var lpresvalue = SCM.getIntValue(currentResource); &#xD;&#xA;&#x9;&#x9;&#x9;          SCM.setIntValue(lpres,lpresvalue);&#xD;&#xA;&#x9;&#x9;&#x9;        }&#xD;&#xA;&#x9;&#x9;&#x9;        function BackwardMapping()&#xD;&#xA;&#x9;&#x9;&#x9;        {&#xD;&#xA;&#x9;&#x9;&#x9;          var lpres = SCM.getResource(&quot;bccudimhw/dls/tdlev&quot;); &#x9;&#xD;&#xA;&#x9;&#x9;&#x9;          var lpresvalue = SCM.getIntValue(lpres); &#xD;&#xA;&#x9;&#x9;&#x9;          SCM.setIntValue(currentResource,lpresvalue);&#xD;&#xA;&#x9;&#x9;&#x9;        }       &#xD;&#xA;&#x9;&#x9;&#x9;&#x9;" URI="http://www.infineon.com/1.0.8/app/bccudim01/0/bccuch_dls_tdlev" downWardmappedList="//@consumed.6" maxValue="FFF" minValue="0">
    <defaultValue xsi:type="ResourceModel:IntegerValue" value="0"/>
    <upWardMappingList xsi:type="ResourceModel:ProxyResource" href="../../COLORLAMP01/1.0.7/colorlamp01_0.app#//@consumed.73"/>
    <localValue xsi:type="ResourceModel:StringValue" value="fff"/>
    <globalValue xsi:type="ResourceModel:IntegerValue" value="fff"/>
    <toolTipHelpDescription>Set the Target Dimming Level value to get desired Dimming</toolTipHelpDescription>
  </provided>
  <provided xsi:type="ResourceModel:IntegerParameter" name="Desired Transition Time from 0% to 100% dimming level" evalFunction="        &#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;function ForwardMapping()&#xD;&#xA;&#x9;&#x9;&#x9;        {&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;var tempRes = SCM.getResource(&quot;bccuch_trans_time_dummy&quot;);&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9; var value = SCM.getIntValue(currentResource);&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;var ResPclk = SCM.getResource(&quot;bccuglobalapp/bccuglobal_realdclk&quot;);&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9; var Dclk = SCM.getIntValue(ResPclk); &#x9;&#x9;&#x9;&#x9;&#x9;&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;  var FADEtime = value;&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;  var DimDivVal = Math.round((FADEtime * Dclk)/(20479 * 1000));&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;  var Resdimdiv = SCM.getResource(&quot;bccudimhw/dtt/dimdiv&quot;);&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;  SCM.setIntValue(Resdimdiv,DimDivVal);&#x9;&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9; SCM.setIntValue(tempRes,value);&#xD;&#xA;// Dependent Bonding          &#xD;&#xA;          var DepRes0 = SCM.getResource(&quot;bccuch_trans_time_act&quot;);&#xD;&#xA;          var DepRes0Val = SCM.getIntValue(DepRes0);&#xD;&#xA;          var DepRes1 = SCM.getResource(&quot;bccuch_dtt_dimdiv&quot;);&#xD;&#xA;          var DepRes1Val = SCM.getIntValue(DepRes1);&#xD;&#xA;&#x9;&#x9;&#x9;        }&#xD;&#xA;&#x9;&#x9;&#x9;        function BackwardMapping()&#xD;&#xA;&#x9;&#x9;&#x9;        {&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9; &#x9;   var tempRes = SCM.getResource(&quot;bccuch_trans_time_dummy&quot;);&#xD;&#xA;               var value = SCM.getIntValue(tempRes);&#xD;&#xA;&#x9;&#x9;&#x9;   &#x9;&#x9;&#x9; SCM.setIntValue(currentResource,value);&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;     var ResPclk = SCM.getResource(&quot;bccuglobalapp/bccuglobal_realdclk&quot;);&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;     var Dclk = SCM.getIntValue(ResPclk); &#x9;&#x9;&#x9;&#x9;&#x9;&#xD;&#xA;               var min = Math.floor((0 * 20479 * 1000)/Dclk);&#xD;&#xA;               var max = Math.floor((1023 * 20479 * 1000)/Dclk);&#xD;&#xA;&#x9;&#x9;           SCM.setMinMaxValue(currentResource, min, max, 1);   &#xD;&#xA;&#x9;&#x9;&#x9;        }       &#xD;&#xA;&#x9;&#x9;&#x9;&#x9;" URI="http://www.infineon.com/1.0.8/app/bccudim01/0/bccuch_trans_time" downWardmappedList="//@consumed.8 //@consumed.0" maxValue="11808" minValue="0">
    <defaultValue xsi:type="ResourceModel:IntegerValue" value="A0"/>
    <localValue xsi:type="ResourceModel:StringValue" value="0"/>
    <globalValue xsi:type="ResourceModel:IntegerValue" value="0"/>
    <toolTipHelpDescription>Set the Dimming Transition Time value to get desired Fade Rate</toolTipHelpDescription>
  </provided>
  <provided xsi:type="ResourceModel:IntegerParameter" name="Actual Transition Time from 0% to 100% dimming level" evalFunction="        &#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;function ForwardMapping()&#xD;&#xA;&#x9;&#x9;&#x9;        {&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;var tempRes = SCM.getResource(&quot;bccuch_trans_time_Actualdummy&quot;);&#x9;&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;var value = SCM.getIntValue(currentResource);&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;SCM.setIntValue(tempRes,value);&#xD;&#xA;&#x9;&#x9;&#x9;        }&#xD;&#xA;&#x9;&#x9;&#x9;        function BackwardMapping()&#xD;&#xA;&#x9;&#x9;&#x9;        {&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9; var tempRes = SCM.getResource(&quot;bccuch_trans_time_dummy&quot;);          &#x9;&#xD;&#xA;                      var DimDivVal = SCM.getIntValue(tempRes);        &#xD;&#xA;                     var ResPclk = SCM.getResource(&quot;bccuglobalapp/bccuglobal_realdclk&quot;);&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;  var Dclk = SCM.getIntValue(ResPclk);&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;  var FADEtime = DimDivVal;&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9; var NewDimDiv =  Math.round((FADEtime * Dclk)/(20479 * 1000));&#x9;&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;  var NewFADE = Math.round((20479 * NewDimDiv *1000)/Dclk);&#x9;&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;  SCM.setIntValue(currentResource,NewFADE);&#x9;&#x9;&#x9;&#x9;&#xD;&#xA;               var min = Math.floor((0 * 20479 * 1000)/Dclk);&#xD;&#xA;               var max = Math.floor((1023 * 20479 * 1000)/Dclk)+1;&#xD;&#xA;&#x9;&#x9;           SCM.setMinMaxValue(currentResource, min, max, 1);   &#xD;&#xA;            }       &#xD;&#xA;&#x9;&#x9;&#x9;&#x9;" URI="http://www.infineon.com/1.0.8/app/bccudim01/0/bccuch_trans_time_act" downWardmappedList="//@consumed.1" maxValue="11809" minValue="0">
    <defaultValue xsi:type="ResourceModel:IntegerValue" value="0"/>
    <localValue xsi:type="ResourceModel:StringValue" value="0"/>
    <globalValue xsi:type="ResourceModel:IntegerValue" value="0"/>
    <toolTipHelpDescription>Set the Dimming Transition Time value to get desired Fade Rate</toolTipHelpDescription>
  </provided>
  <provided xsi:type="ResourceModel:IntegerParameter" name="DIMDIV" evalFunction="        &#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;function ForwardMapping()&#xD;&#xA;&#x9;&#x9;&#x9;        {&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;var tempRes = SCM.getResource(&quot;bccuch_dtt_dimdiv_dummy&quot;);&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;  var value = SCM.getIntValue(currentResource); &#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;  SCM.setIntValue(tempRes,value);&#xD;&#xA;                   &#xD;&#xA;&#x9;&#x9;&#x9;        }&#xD;&#xA;&#x9;&#x9;&#x9;        function BackwardMapping()&#xD;&#xA;&#x9;&#x9;&#x9;        {&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9; var tempRes = SCM.getResource(&quot;bccuch_trans_time_dummy&quot;);          &#x9;&#xD;&#xA;                      var DimDivVal = SCM.getIntValue(tempRes);        &#xD;&#xA;                     var ResPclk = SCM.getResource(&quot;bccuglobalapp/bccuglobal_realdclk&quot;);&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;  var Dclk = SCM.getIntValue(ResPclk);&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;  var FADEtime = DimDivVal;&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9; var DimDivVal1 =  Math.round((FADEtime * Dclk)/(20479 * 1000));&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;  SCM.setIntValue(currentResource,DimDivVal1);&#xD;&#xA;&#xD;&#xA;&#x9;&#x9;&#x9;        }       &#xD;&#xA;&#x9;&#x9;&#x9;&#x9;" URI="http://www.infineon.com/1.0.8/app/bccudim01/0/bccuch_dtt_dimdiv" downWardmappedList="//@consumed.2" maxValue="3FF" minValue="0">
    <defaultValue xsi:type="ResourceModel:IntegerValue" value="0"/>
    <localValue xsi:type="ResourceModel:StringValue" value="0"/>
    <globalValue xsi:type="ResourceModel:IntegerValue" value="0"/>
    <toolTipHelpDescription>Dimming divider value</toolTipHelpDescription>
  </provided>
  <provided xsi:type="ResourceModel:EnumerationParameter" name="Dither Function" evalFunction=" &#xD;&#xA;&#x9;&#x9;&#x9;          function ForwardMapping(){&#xD;&#xA;&#x9;&#x9;&#x9;              var Res = SCM.getResource(&quot;bccudimhw/dtt/dten&quot;); &#xD;&#xA;&#x9;&#x9;&#x9;              var value = SCM.getIntValue(currentResource);&#xD;&#xA;&#x9;&#x9;&#x9;              SCM.setIntValue(Res,value);&#xD;&#xA;&#x9;&#x9;&#x9;          }&#xD;&#xA;&#x9;&#x9;&#x9;          function BackwardMapping(){&#xD;&#xA;&#x9;&#x9;&#x9;              var Res = SCM.getResource(&quot;bccudimhw/dtt/dten&quot;); &#xD;&#xA;&#x9;&#x9;&#x9;              var value = SCM.getIntValue(Res); &#xD;&#xA;&#x9;&#x9;&#x9;              SCM.setIntValue(currentResource,value);&#xD;&#xA;&#x9;&#x9;&#x9;          }&#xD;&#xA;&#x9;&#x9;&#x9;               " URI="http://www.infineon.com/1.0.8/app/bccudim01/0/bccudim_dten" downWardmappedList="//@consumed.9" multipleSelections="true">
    <defaultValue xsi:type="ResourceModel:IntegerValue" value="1"/>
    <localValue xsi:type="ResourceModel:StringValue" value="1"/>
    <globalValue xsi:type="ResourceModel:IntegerValue" value="0"/>
    <toolTipHelpDescription>Click to Enable Dither Function.
 If dithering is enabled (DTEN=1),Curve Select (CSEL) bit is is ignored and the coarse curve is used.</toolTipHelpDescription>
    <item name="Enable" evalFunction="&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;              function ForwardMapping()&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;              {&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;var Res = SCM.getResource(&quot;bccudimhw/dtt/dten&quot;);&#x9;&#x9;&#x9;&#x9;               &#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9; var value = SCM.getIntValue(currentResource);&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;                &#xD;&#xA;&#x9;&#x9;&#x9;&#x9;                if (value == 1 ) {&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;                  SCM.setIntValue(Res,1);       &#xD;&#xA;&#x9;&#x9;&#x9;&#x9;                } else if (value === 0) {&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;                  SCM.setIntValue(Res,0);&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;                }             &#xD;&#xA;&#x9;&#x9;&#x9;&#x9;              }&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;              function BackwardMapping()&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;              {&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;                var Res = SCM.getResource(&quot;bccudimhw/dtt/dten&quot;); &#xD;&#xA;&#x9;&#x9;&#x9;&#x9;                var value = SCM.getIntValue(Res); &#xD;&#xA;&#x9;&#x9;&#x9;&#x9;                if (value === 1 ) { &#xD;&#xA;&#x9;&#x9;&#x9;&#x9;                  SCM.setIntValue(currentResource,1);&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;                } else if (value == -1 ){&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;                  SCM.setIntValue(currentResource,0);&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;                }&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;                else {&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;                  SCM.setIntValue(currentResource,0);&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;                }&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;              }&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;" URI="http://www.infineon.com/1.0.8/app/bccudim01/0/bccudim_dten/0" downWardmappedList="//@consumed.9" maxValue="1" minValue="0">
      <defaultValue xsi:type="ResourceModel:IntegerValue" value="1"/>
      <localValue xsi:type="ResourceModel:StringValue" value="0"/>
      <globalValue xsi:type="ResourceModel:IntegerValue" value="0"/>
      <toolTipHelpDescription>Click to Enable Dither Function.
 If dithering is enabled (DTEN=1),Curve Select (CSEL) bit is is ignored and the coarse curve is used.</toolTipHelpDescription>
    </item>
  </provided>
  <provided xsi:type="ResourceModel:EnumerationParameter" name="Dimming Engine Enable" evalFunction="&#xD;&#xA;            function ForwardMapping()&#xD;&#xA;            {&#xD;&#xA;              var Res0 = SCM.getResource(&quot;bccuch_dummyenable_at_init&quot;); &#xD;&#xA;              var value = SCM.getIntValue(currentResource); &#xD;&#xA;              SCM.setIntValue(Res0,value);&#xD;&#xA;            }&#xD;&#xA;            function BackwardMapping()&#xD;&#xA;            {&#xD;&#xA;              var Res0 = SCM.getResource(&quot;bccuch_dummyenable_at_init&quot;); &#xD;&#xA;              var value0 = SCM.getIntValue(Res0);&#xD;&#xA;              SCM.setIntValue(currentResource,value0);&#xD;&#xA;            }" URI="http://www.infineon.com/1.0.8/app/bccudim01/0/enable_at_init" downWardmappedList="//@consumed.3" multipleSelections="true">
    <defaultValue xsi:type="ResourceModel:IntegerValue" value="0"/>
    <upWardMappingList xsi:type="ResourceModel:ProxyResource" href="../../COLORLAMP01/1.0.7/colorlamp01_0.app#//@consumed.74"/>
    <localValue xsi:type="ResourceModel:IntegerValue" value="0"/>
    <globalValue xsi:type="ResourceModel:IntegerValue" value="1"/>
    <item name="Enable at Initialization" evalFunction="&#xD;&#xA;            function ForwardMapping()&#xD;&#xA;            {&#xD;&#xA;              var Res0 = SCM.getResource(&quot;bccuch_dummyenable_at_init&quot;); &#xD;&#xA;              var value = SCM.getIntValue(currentResource); &#xD;&#xA;              SCM.setIntValue(Res0,value);&#xD;&#xA;            }&#xD;&#xA;            function BackwardMapping()&#xD;&#xA;            {&#xD;&#xA;              var Res0 = SCM.getResource(&quot;bccuch_dummyenable_at_init&quot;); &#xD;&#xA;              var value0 = SCM.getIntValue(Res0);&#xD;&#xA;              SCM.setIntValue(currentResource,value0);&#xD;&#xA;            }" URI="http://www.infineon.com/1.0.8/app/bccudim01/0/enable_at_init/0" downWardmappedList="//@consumed.3" maxValue="1" minValue="0">
      <defaultValue xsi:type="ResourceModel:IntegerValue" value="0"/>
      <localValue xsi:type="ResourceModel:StringValue" value="1"/>
      <globalValue xsi:type="ResourceModel:IntegerValue" value="1"/>
      <toolTipHelpDescription>Select to enable channel at Initialization.</toolTipHelpDescription>
    </item>
  </provided>
  <provided xsi:type="ResourceModel:EnumerationParameter" name="Dimming Curve Selection" evalFunction="&#xD;&#xA;            function ForwardMapping()&#xD;&#xA;            {&#xD;&#xA;              var Res = SCM.getResource(&quot;bccudimhw/dtt/csel&quot;); &#xD;&#xA;              var value = SCM.getIntValue(currentResource);&#xD;&#xA;              SCM.setIntValue(Res,value);&#xD;&#xA;            }&#xD;&#xA;            function BackwardMapping()&#xD;&#xA;            {&#xD;&#xA;              var Res = SCM.getResource(&quot;bccudimhw/dtt/csel&quot;); &#xD;&#xA;              var value = SCM.getIntValue(Res); &#xD;&#xA;              SCM.setIntValue(currentResource,value);&#xD;&#xA;            }" URI="http://www.infineon.com/1.0.8/app/bccudim01/0/bccudim_dtt_csel" downWardmappedList="//@consumed.10">
    <defaultValue xsi:type="ResourceModel:IntegerValue" value="0"/>
    <localValue xsi:type="ResourceModel:StringValue" value="0"/>
    <globalValue xsi:type="ResourceModel:IntegerValue" value="0"/>
    <toolTipHelpDescription>Select the Dimming Curve(Linear/Exponential)</toolTipHelpDescription>
    <item name="Coarse Curve" evalFunction="&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;              function ForwardMapping()&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;              {&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;                var value = SCM.getIntValue(currentResource);&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;                var Res = SCM.getResource(&quot;bccudimhw/dtt/csel&quot;);&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;                if (value == 1 ) {&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;                  SCM.setIntValue(Res,0);       &#xD;&#xA;&#x9;&#x9;&#x9;&#x9;                } else if (value === 0) {&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;                  SCM.setIntValue(Res,1);&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;                }             &#xD;&#xA;&#x9;&#x9;&#x9;&#x9;              }&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;              function BackwardMapping()&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;              {&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;                var Res = SCM.getResource(&quot;bccudimhw/dtt/csel&quot;); &#xD;&#xA;&#x9;&#x9;&#x9;&#x9;                var value = SCM.getIntValue(Res); &#xD;&#xA;&#x9;&#x9;&#x9;&#x9;                if (value === 0 ) { &#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;                  SCM.setIntValue(currentResource,1);&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;                } else if (value == -1 ){&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;                  SCM.setIntValue(currentResource,1);&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;                }&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;                else {&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;var Res1 = SCM.getResource(&quot;bccudim_dten&quot;); &#xD;&#xA;&#x9;&#x9;&#x9;&#x9;                var value1 = SCM.getIntValue(Res1); &#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;if (value1 == 1){&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;                 &#x9;&#x9;&#x9;&#x9; SCM.setIntValue(currentResource,1);&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;                }else{&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;                  SCM.setIntValue(currentResource,0);&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;}&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;                }&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;              }&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;" URI="http://www.infineon.com/1.0.8/app/bccudim01/0/bccudim_dtt_csel/0" downWardmappedList="//@consumed.10" maxValue="1" minValue="0">
      <defaultValue xsi:type="ResourceModel:IntegerValue" value="1"/>
      <localValue xsi:type="ResourceModel:StringValue" value="1"/>
      <globalValue xsi:type="ResourceModel:IntegerValue" value="1"/>
      <toolTipHelpDescription>Click to enable Coarse Curve feature.</toolTipHelpDescription>
    </item>
    <item name="Fine Curve" evalFunction="&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;              function ForwardMapping()&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;              {&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;                var value = SCM.getIntValue(currentResource);&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;                var Res = SCM.getResource(&quot;bccudimhw/dtt/csel&quot;);&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;                if (value == 1 ) {&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;                  SCM.setIntValue(Res,1);       &#xD;&#xA;&#x9;&#x9;&#x9;&#x9;                } else if (value === 0) {&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;                  SCM.setIntValue(Res,0);&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;                }             &#xD;&#xA;&#x9;&#x9;&#x9;&#x9;              }&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;              function BackwardMapping()&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;              {&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;                var Res = SCM.getResource(&quot;bccudimhw/dtt/csel&quot;); &#xD;&#xA;&#x9;&#x9;&#x9;&#x9;                var value = SCM.getIntValue(Res); &#xD;&#xA;&#x9;&#x9;&#x9;&#x9;                if (value === 1 ) { &#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;var Res1 = SCM.getResource(&quot;bccudim_dten&quot;); &#xD;&#xA;&#x9;&#x9;&#x9;&#x9;                var value1 = SCM.getIntValue(Res1); &#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;if (value1 == 1){&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;                 &#x9;&#x9;&#x9;&#x9; SCM.setIntValue(currentResource,0);&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;                }else{&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;                  SCM.setIntValue(currentResource,1);&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;}&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;                } else if (value == -1 ){&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;                  SCM.setIntValue(currentResource,0);&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;                }&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;                else {&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;                  SCM.setIntValue(currentResource,0);&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;                }&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;              }&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;" URI="http://www.infineon.com/1.0.8/app/bccudim01/0/bccudim_dtt_csel/1" downWardmappedList="//@consumed.10" maxValue="1" minValue="0">
      <defaultValue xsi:type="ResourceModel:IntegerValue" value="0"/>
      <localValue xsi:type="ResourceModel:StringValue" value="0"/>
      <globalValue xsi:type="ResourceModel:IntegerValue" value="0"/>
      <toolTipHelpDescription>Fine curve feature selection disable the dither functionality(DTEN=0),
since dither is applicable only for coarse curve.</toolTipHelpDescription>
    </item>
  </provided>
  <consumed xsi:type="ResourceModel:ProxyResource" URI="http://www.infineon.com/1.0.8/app/bccudim01/0/bccuch_trans_time_dummy" upWardMappingList="//@provided.2 //@provided.3 //@provided.4" isSystemDefined="true">
    <localValue xsi:type="ResourceModel:IntegerValue" value="0"/>
    <globalValue xsi:type="ResourceModel:IntegerValue" value="0"/>
    <requiredResource uriString="" uriType="LOCALTYPE"/>
  </consumed>
  <consumed xsi:type="ResourceModel:ProxyResource" URI="http://www.infineon.com/1.0.8/app/bccudim01/0/bccuch_trans_time_actualdummy" upWardMappingList="//@provided.3" isSystemDefined="true">
    <localValue xsi:type="ResourceModel:IntegerValue" value="0"/>
    <globalValue xsi:type="ResourceModel:IntegerValue" value="0"/>
    <requiredResource uriString="" uriType="LOCALTYPE"/>
  </consumed>
  <consumed xsi:type="ResourceModel:ProxyResource" URI="http://www.infineon.com/1.0.8/app/bccudim01/0/bccuch_dtt_dimdiv_dummy" upWardMappingList="//@provided.4" isSystemDefined="true">
    <localValue xsi:type="ResourceModel:IntegerValue" value="0"/>
    <globalValue xsi:type="ResourceModel:IntegerValue" value="0"/>
    <requiredResource uriString="" uriType="LOCALTYPE"/>
  </consumed>
  <consumed xsi:type="ResourceModel:ProxyResource" URI="http://www.infineon.com/1.0.8/app/bccudim01/0/bccuch_dummyenable_at_init" upWardMappingList="//@provided.6 //@provided.6/@item.0" isSystemDefined="true">
    <localValue xsi:type="ResourceModel:IntegerValue" value="1"/>
    <globalValue xsi:type="ResourceModel:IntegerValue" value="1"/>
    <requiredResource uriString="" uriType="LOCALTYPE"/>
  </consumed>
  <consumed xsi:type="ResourceModel:ProxyResource" URI="http://www.infineon.com/1.0.8/app/bccudim01/0/bccuglobalapp">
    <downWardmappedList xsi:type="ResourceModel:App" href="../../BCCUGLOBAL/1.0.12/bccuglobal_0.app#/"/>
    <requiredResource uriString="app/bccuglobal/*" uriType="LOCALTYPE"/>
  </consumed>
  <consumed xsi:type="ResourceModel:ProxyResource" URI="http://www.infineon.com/1.0.8/app/bccudim01/0/bccudimhw">
    <downWardmappedList xsi:type="ResourceModel:ResourceGroup" href="../../BCCU0/BCCU0_0.dd#//@provided.114"/>
    <requiredResource uriString="peripheral/bccu/0/dimming_engine/*" uriType="LOCALTYPE"/>
  </consumed>
  <consumed xsi:type="ResourceModel:ProxyResource" URI="http://www.infineon.com/1.0.8/app/bccudim01/0/bccudimhw/dls/tdlev" upWardMappingList="//@provided.1" isSystemDefined="true">
    <localValue xsi:type="ResourceModel:IntegerValue" value="fff"/>
    <downWardmappedList xsi:type="ResourceModel:BitField" href="../../BCCU0/BCCU0_0.dd#//@provided.115"/>
    <globalValue xsi:type="ResourceModel:IntegerValue" value="fff"/>
  </consumed>
  <consumed xsi:type="ResourceModel:ProxyResource" URI="http://www.infineon.com/1.0.8/app/bccudim01/0/bccudimhw/dl/dlev" isSystemDefined="true">
    <localValue xsi:type="ResourceModel:IntegerValue" value="0"/>
    <downWardmappedList xsi:type="ResourceModel:BitField" href="../../BCCU0/BCCU0_0.dd#//@provided.116"/>
    <globalValue xsi:type="ResourceModel:IntegerValue" value="0"/>
  </consumed>
  <consumed xsi:type="ResourceModel:ProxyResource" URI="http://www.infineon.com/1.0.8/app/bccudim01/0/bccudimhw/dtt/dimdiv" upWardMappingList="//@provided.2" isSystemDefined="true">
    <localValue xsi:type="ResourceModel:IntegerValue" value="0"/>
    <downWardmappedList xsi:type="ResourceModel:BitField" href="../../BCCU0/BCCU0_0.dd#//@provided.117"/>
    <globalValue xsi:type="ResourceModel:IntegerValue" value="0"/>
  </consumed>
  <consumed xsi:type="ResourceModel:ProxyResource" URI="http://www.infineon.com/1.0.8/app/bccudim01/0/bccudimhw/dtt/dten" upWardMappingList="//@provided.5 //@provided.5/@item.0" isSystemDefined="true">
    <localValue xsi:type="ResourceModel:IntegerValue" value="0"/>
    <downWardmappedList xsi:type="ResourceModel:BitField" href="../../BCCU0/BCCU0_0.dd#//@provided.118"/>
    <globalValue xsi:type="ResourceModel:IntegerValue" value="0"/>
  </consumed>
  <consumed xsi:type="ResourceModel:ProxyResource" URI="http://www.infineon.com/1.0.8/app/bccudim01/0/bccudimhw/dtt/csel" upWardMappingList="//@provided.7 //@provided.7/@item.0 //@provided.7/@item.1" isSystemDefined="true">
    <localValue xsi:type="ResourceModel:IntegerValue" value="0"/>
    <downWardmappedList xsi:type="ResourceModel:BitField" href="../../BCCU0/BCCU0_0.dd#//@provided.119"/>
    <globalValue xsi:type="ResourceModel:IntegerValue" value="0"/>
  </consumed>
  <consumed xsi:type="ResourceModel:ProxyResource" URI="http://www.infineon.com/1.0.8/app/bccudim01/0/bccuglobalapp/bccuglobal_realdclk" upWardMappingList="//@provided.2 //@provided.3 //@provided.4" isSystemDefined="true">
    <localValue xsi:type="ResourceModel:IntegerValue" value="4705d"/>
    <downWardmappedList xsi:type="ResourceModel:IntegerParameter" href="../../BCCUGLOBAL/1.0.12/bccuglobal_0.app#//@provided.12"/>
    <globalValue xsi:type="ResourceModel:IntegerValue" value="4758d"/>
  </consumed>
  <consumed xsi:type="ResourceModel:ProxyResource" URI="http://www.infineon.com/1.0.8/app/bccudim01/0/bccudimhw/dimout" isSystemDefined="true">
    <downWardmappedList xsi:type="ResourceModel:SignalDeclaration" href="../../BCCU0/BCCU0_0.dd#//@provided.120"/>
  </consumed>
  <propertyConstants name="uridevice" value="device/">
    <propertyConstants name="uri_bccuglobal" value="app/bccuglobal/">
      <propertyConstants name="uri_bccudim" value="peripheral/bccu/0/dimming_engine/"/>
    </propertyConstants>
  </propertyConstants>
  <categoryDescription description="This app configures the Dimming Engine registers of the Brightness and Color Control Unit (BCCU). It also provides dynamic APIs to high level apps such as DALI, White Lamp, Color Lamp (RBG, RBGWAF)." name="Dimming Engine Configuration"/>
  <manifestInfo version="1.0.8">
    <keywords>Channel</keywords>
    <keywords>BCCU</keywords>
    <keywords>Lighting</keywords>
    <keywords>Dimming</keywords>
    <properties xsi:type="ResourceModel:AppProperties_1_0" initProvider="true"/>
  </manifestInfo>
  <datagenerate fileName="BCCUDIM01.h" fileType="HFILE" templateFileName="BCCUDIM01h.hdt" templateEngine="NONE" fileAction="COPY"/>
  <datagenerate fileName="BCCUDIM01.c" templateFileName="BCCUDIM01c.cdt" templateEngine="NONE" fileAction="COPY"/>
  <datagenerate fileName="BCCUDIM01_Extern.h" fileType="HFILE" templateFileName="BCCUDIM01_Externh.jet"/>
  <datagenerate fileName="BCCUDIM01_Conf.c" templateFileName="BCCUDIM01_Confc.jet"/>
  <datagenerate fileName="BCCUDIM01_Conf.h" fileType="HFILE" templateFileName="BCCUDIM01_Confh.jet"/>
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
