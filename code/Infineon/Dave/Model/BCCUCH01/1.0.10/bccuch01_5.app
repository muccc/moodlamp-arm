<?xml version="1.0" encoding="ASCII"?>
<ResourceModel:App xmi:version="2.0" xmlns:xmi="http://www.omg.org/XMI" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xmlns:ResourceModel="http://www.infineon.com/Davex/Resource.ecore" name="BCCUCH01" description="This app configures the Channel registers of the &#xA; Brightness Color control unit (BCCU) module. &#xA; It also provides dynamic APIs to high level Apps &#xA; like DALI, White Lamp, Color Lamp (RBG, RBGWAF) etc.&#xA;." descriptionURL="/doc/html/group___b_c_c_u_c_h01_app.html" URI="http://www.infineon.com/1.0.10/app/bccuch01/5" userLabel="B_DAC">
  <provided xsi:type="ResourceModel:VirtualSignal" name="PDM Output" URI="http://www.infineon.com/1.0.10/app/bccuch01/5/bccuch01_out_vs" requiredSignalResource="bccuchannelhw/out">
    <localValue xsi:type="ResourceModel:StringValue" value="-1"/>
    <globalValue xsi:type="ResourceModel:StringValue" value="-1"/>
  </provided>
  <provided xsi:type="ResourceModel:VirtualSignal" name="BCCU Channel Output Pin" URI="http://www.infineon.com/1.0.10/app/bccuch01/5/bccuch01_pad_vs" requiredSignalResource="iohw/pad" canExpose="false">
    <localValue xsi:type="ResourceModel:StringValue" value="-1"/>
    <globalValue xsi:type="ResourceModel:StringValue" value="-1"/>
  </provided>
  <provided xsi:type="ResourceModel:VirtualSignal" name="BCCU Dimming Engine Output" URI="http://www.infineon.com/1.0.10/app/bccuch01/5/bccuch01_dimin_vs" requiredSignalResource="bccuchannelhw/dimin" canExpose="false">
    <localValue xsi:type="ResourceModel:StringValue" value="-1"/>
    <globalValue xsi:type="ResourceModel:StringValue" value="-1"/>
  </provided>
  <provided xsi:type="ResourceModel:VirtualSignal" name="BCCU Channel Gating Input" URI="http://www.infineon.com/1.0.10/app/bccuch01/5/bccuch01_in_vs" requiredSignalResource="bccuchannelhw/in">
    <localValue xsi:type="ResourceModel:StringValue" value="-1"/>
    <globalValue xsi:type="ResourceModel:StringValue" value="-1"/>
  </provided>
  <provided xsi:type="ResourceModel:Parameter" name="To Control low level apps from upper level apps." evalFunction="        &#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;function ForwardMapping()&#xD;&#xA;&#x9;&#x9;&#x9;        {&#xD;&#xA;&#x9;                    &#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;var holdvalue = SCM.getIntValue(currentResource);&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;if (holdvalue == 1)&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;{&#x9;              &#xD;&#xA;           &#x9;      &#xD;&#xA;&#x9;&#x9;&#x9;&#x9;    var Resdimlvl=SCM.getResource(&quot;bccudimapp/bccuch_dls_tdlev&quot;);&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;var Resdimena=SCM.getResource(&quot;bccudimapp/enable_at_init&quot;);&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;SCM.setIntValue(Resdimlvl,2047); &#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;SCM.setIntValue(Resdimena,1);&#xD;&#xA;    &#xD;&#xA;                  &#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;}else &#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;{&#xD;&#xA;  &#x9;&#x9;&#x9;&#x9;&#x9;   var Resdimlvl=SCM.getResource(&quot;bccudimapp/bccuch_dls_tdlev&quot;);&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;var Resdimena=SCM.getResource(&quot;bccudimapp/enable_at_init&quot;);&#xD;&#xA;&#x9;&#x9;&#x9;            }&#xD;&#xA;                    }&#xD;&#xA;&#x9;&#x9;&#x9;        function BackwardMapping()&#xD;&#xA;&#x9;&#x9;&#x9;        {&#xD;&#xA;   &#x9;&#x9;&#x9;        var Resdimlvl=SCM.getResource(&quot;bccudimapp/bccuch_dls_tdlev&quot;);&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;var Resdimena=SCM.getResource(&quot;bccudimapp/enable_at_init&quot;);&#x9;          &#xD;&#xA;&#x9;             &#xD;&#xA;&#x9;&#x9;&#x9;        }    &#xD;&#xA;&#x9;&#x9;&#x9;&#x9;" URI="http://www.infineon.com/1.0.10/app/bccuch01/5/bccuch01_bccudim_uiconfig_bytoplevelapp_dummy">
    <defaultValue xsi:type="ResourceModel:IntegerValue" value="0"/>
    <localValue xsi:type="ResourceModel:StringValue" value="0"/>
    <globalValue xsi:type="ResourceModel:StringValue" value="0"/>
  </provided>
  <provided xsi:type="ResourceModel:IntegerParameter" name="Desired Linear Walk Time" evalFunction="        &#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;function ForwardMapping()&#xD;&#xA;&#x9;&#x9;&#x9;        {&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#xD;&#xA; &#x9;&#x9;&#x9;&#x9;&#x9;&#x9;var Fclk_res = SCM.getResource(&quot;bccuglobalapp/bccuglobal_realfclk&quot;);&#xD;&#xA;                        var Fclk = SCM.getIntValue(Fclk_res); &#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;var tempRes = SCM.getResource(&quot;bccuch_lin_walk_time_dummy&quot;);&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;var value = SCM.getIntValue(currentResource);&#xD;&#xA;                        &#xD;&#xA;&#x9;                    var Linwalktime = value;&#x9;&#x9;&#x9;&#x9;  &#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;var LINPRESVal =  Math.round((Linwalktime * Fclk)/(8192 * 1000));&#x9;&#x9;&#x9;&#x9;&#x9; &#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;var Reslinpres = SCM.getResource(&quot;bccuchannelhw/chconfig/linpres&quot;);&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;SCM.setIntValue(Reslinpres,LINPRESVal);&#x9;             &#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;SCM.setIntValue(tempRes,value);&#xD;&#xA;&#x9;&#x9;&#x9;        }&#xD;&#xA;&#x9;&#x9;&#x9;        function BackwardMapping()&#xD;&#xA;&#x9;&#x9;&#x9;        {&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9; &#x9; var tempRes = SCM.getResource(&quot;bccuch_lin_walk_time_dummy&quot;);&#xD;&#xA;&#x9;          &#x9;&#x9;&#x9; var value = SCM.getIntValue(tempRes);&#xD;&#xA;&#x9;&#x9;&#x9;   &#x9;&#x9;&#x9; SCM.setIntValue(currentResource,value);&#xD;&#xA;&#xD;&#xA;&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9; var Fclk_res = SCM.getResource(&quot;bccuglobalapp/bccuglobal_realfclk&quot;);&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9; var fclk = SCM.getIntValue(Fclk_res);&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9; var max = Math.round( (8192 * 1024 * 1000) / fclk);&#xD;&#xA;//&#x9;&#x9;&#x9;&#x9;&#x9;&#x9; var min = Math.round( (8192 * 1000) / fclk);&#x9;&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9; SCM.setMinMaxValue(currentResource, 0, max, 1);//0 is possible Linear Bypass is needed.&#xD;&#xA;&#x9;&#x9;&#x9;        }     &#xD;&#xA;&#x9;&#x9;&#x9;&#x9;" URI="http://www.infineon.com/1.0.10/app/bccuch01/5/bccuch_linear_walk_config_linpres" downWardmappedList="//@consumed.27 //@consumed.1" maxValue="28f6" minValue="0">
    <defaultValue xsi:type="ResourceModel:IntegerValue" value="0"/>
    <localValue xsi:type="ResourceModel:StringValue" value="0"/>
    <globalValue xsi:type="ResourceModel:IntegerValue" value="0"/>
    <toolTipHelpDescription>Set the Prescaler value to get desired Linear Walk Transition time.</toolTipHelpDescription>
  </provided>
  <provided xsi:type="ResourceModel:IntegerParameter" name="Actual Linear Walk Time" evalFunction="        &#xD;&#xA;&#x9;&#x9;&#x9;&#x9; function ForwardMapping(){&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;var tempRes = SCM.getResource(&quot;bccuch_lin_walk_time_Actualdummy&quot;);&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;  var value = SCM.getIntValue(currentResource); &#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;SCM.setIntValue(tempRes,value);                              &#xD;&#xA;&#xD;&#xA;                    }&#xD;&#xA;                    function BackwardMapping(){   &#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9; var tempRes = SCM.getResource(&quot;bccuch_lin_walk_time_dummy&quot;);          &#x9;&#xD;&#xA;&#x9;                     var Linwalktime = SCM.getIntValue(tempRes);        &#xD;&#xA;&#x9;                     var ResPclk = SCM.getResource(&quot;bccuglobalapp/bccuglobal_realfclk&quot;);&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9; var Fclk = SCM.getIntValue(ResPclk);&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9; var LINPRESVal = Math.round((Linwalktime * Fclk)/(8192 * 1000));&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9; LINWalkTime=  Math.round((LINPRESVal * 8192 * 1000)/Fclk);&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;SCM.setIntValue(currentResource,LINWalkTime);&#xD;&#xA;                     }    &#xD;&#xA;&#x9;&#x9;&#x9;&#x9;" URI="http://www.infineon.com/1.0.10/app/bccuch01/5/bccuch_linear_walk_actual" downWardmappedList="//@consumed.3" maxValue="F4240" minValue="0">
    <defaultValue xsi:type="ResourceModel:IntegerValue" value="0"/>
    <localValue xsi:type="ResourceModel:StringValue" value="0"/>
    <globalValue xsi:type="ResourceModel:IntegerValue" value="0"/>
    <toolTipHelpDescription>Actual Linear Walk Transition time.</toolTipHelpDescription>
  </provided>
  <provided xsi:type="ResourceModel:IntegerParameter" name="LINPRES" evalFunction="        &#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;function ForwardMapping()&#xD;&#xA;&#x9;&#x9;&#x9;        {&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;  var tempRes = SCM.getResource(&quot;bccuch_chconfig_linpres_dummy&quot;);&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;  var value = SCM.getIntValue(currentResource); &#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;  SCM.setIntValue(tempRes,value);&#xD;&#xA;                   &#xD;&#xA;&#x9;&#x9;&#x9;        }&#xD;&#xA;&#x9;&#x9;&#x9;        function BackwardMapping()&#xD;&#xA;&#x9;&#x9;&#x9;        {&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9; var tempRes = SCM.getResource(&quot;bccuch_lin_walk_time_dummy&quot;);          &#x9;&#xD;&#xA;&#x9;                     var Linwalktime = SCM.getIntValue(tempRes);        &#xD;&#xA;&#x9;                     var ResPclk = SCM.getResource(&quot;bccuglobalapp/bccuglobal_realfclk&quot;);&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9; var Fclk = SCM.getIntValue(ResPclk);&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9; var LINPRESVal =  Math.round((Linwalktime * Fclk)/(8192* 1000));&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9; SCM.setIntValue(currentResource,LINPRESVal);&#xD;&#xA;&#xD;&#xA;&#x9;&#x9;&#x9;        }        &#xD;&#xA;&#x9;&#x9;&#x9;&#x9;" URI="http://www.infineon.com/1.0.10/app/bccuch01/5/bccuch_chconfig_linpres" downWardmappedList="//@consumed.4" maxValue="3FF" minValue="0">
    <defaultValue xsi:type="ResourceModel:IntegerValue" value="0"/>
    <localValue xsi:type="ResourceModel:StringValue" value="0"/>
    <globalValue xsi:type="ResourceModel:IntegerValue" value="0"/>
    <toolTipHelpDescription>Linear Walker Clock Prescaler value.</toolTipHelpDescription>
  </provided>
  <provided xsi:type="ResourceModel:IntegerParameter" name="Channel Intensity" evalFunction="        &#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;function ForwardMapping()&#xD;&#xA;&#x9;&#x9;&#x9;        {&#xD;&#xA;&#x9;&#x9;&#x9;          var lpres = SCM.getResource(&quot;bccuchannelhw/ints/tchint&quot;);&#x9; &#xD;&#xA;&#x9;&#x9;&#x9;          var lpresvalue = SCM.getIntValue(currentResource); &#xD;&#xA;&#x9;&#x9;&#x9;          SCM.setIntValue(lpres,lpresvalue);&#xD;&#xA;&#x9;&#x9;&#x9;        }&#xD;&#xA;&#x9;&#x9;&#x9;        function BackwardMapping()&#xD;&#xA;&#x9;&#x9;&#x9;        {&#xD;&#xA;&#x9;&#x9;&#x9;          var lpres = SCM.getResource(&quot;bccuchannelhw/ints/tchint&quot;); &#xD;&#xA;&#x9;&#x9;&#x9;          var lpresvalue = SCM.getIntValue(lpres); &#xD;&#xA;&#x9;&#x9;&#x9;          SCM.setIntValue(currentResource,lpresvalue);&#xD;&#xA;&#x9;&#x9;&#x9;        }       &#xD;&#xA;&#x9;&#x9;&#x9;&#x9;" URI="http://www.infineon.com/1.0.10/app/bccuch01/5/bccuch_ints_tchint" downWardmappedList="//@consumed.17" maxValue="FFF" minValue="0">
    <defaultValue xsi:type="ResourceModel:IntegerValue" value="0"/>
    <localValue xsi:type="ResourceModel:StringValue" value="15"/>
    <globalValue xsi:type="ResourceModel:IntegerValue" value="15"/>
    <toolTipHelpDescription>Set the Target Channel Intensity value to get desired Intensity during initialization.</toolTipHelpDescription>
  </provided>
  <provided xsi:type="ResourceModel:IntegerParameter" name="Number of on-bits grouped together" evalFunction="        &#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;function ForwardMapping()&#xD;&#xA;&#x9;&#x9;&#x9;        {&#xD;&#xA;&#x9;&#x9;&#x9;          var lpres = SCM.getResource(&quot;bccuchannelhw/pkcmp/oncmp&quot;);&#x9; &#xD;&#xA;&#x9;&#x9;&#x9;          var lpresvalue = SCM.getIntValue(currentResource); &#xD;&#xA;&#x9;&#x9;&#x9;          SCM.setIntValue(lpres,lpresvalue);&#xD;&#xA;&#x9;&#x9;&#x9;        }&#xD;&#xA;&#x9;&#x9;&#x9;        function BackwardMapping()&#xD;&#xA;&#x9;&#x9;&#x9;        {&#xD;&#xA;&#x9;&#x9;&#x9;          var lpres = SCM.getResource(&quot;bccuchannelhw/pkcmp/oncmp&quot;); &#xD;&#xA;&#x9;&#x9;&#x9;          var lpresvalue = SCM.getIntValue(lpres); &#xD;&#xA;&#x9;&#x9;&#x9;          SCM.setIntValue(currentResource,lpresvalue);&#xD;&#xA;&#x9;&#x9;&#x9;        }       &#xD;&#xA;&#x9;&#x9;&#x9;&#x9;" URI="http://www.infineon.com/1.0.10/app/bccuch01/5/bccuch_pkcmp_oncmp" downWardmappedList="//@consumed.32" maxValue="FF" minValue="0">
    <defaultValue xsi:type="ResourceModel:IntegerValue" value="27"/>
    <localValue xsi:type="ResourceModel:StringValue" value="27"/>
    <globalValue xsi:type="ResourceModel:IntegerValue" value="27"/>
    <toolTipHelpDescription>Set the ON-Time Packer Compare Value.</toolTipHelpDescription>
  </provided>
  <provided xsi:type="ResourceModel:IntegerParameter" name="Number of off-bits grouped together" evalFunction="        &#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;function ForwardMapping()&#xD;&#xA;&#x9;&#x9;&#x9;        {&#xD;&#xA;&#x9;&#x9;&#x9;          var lpres = SCM.getResource(&quot;bccuchannelhw/pkcmp/offcmp&quot;);&#x9; &#xD;&#xA;&#x9;&#x9;&#x9;          var lpresvalue = SCM.getIntValue(currentResource); &#xD;&#xA;&#x9;&#x9;&#x9;          SCM.setIntValue(lpres,lpresvalue);&#xD;&#xA;&#x9;&#x9;&#x9;        }&#xD;&#xA;&#x9;&#x9;&#x9;        function BackwardMapping()&#xD;&#xA;&#x9;&#x9;&#x9;        {&#xD;&#xA;&#x9;&#x9;&#x9;          var lpres = SCM.getResource(&quot;bccuchannelhw/pkcmp/offcmp&quot;); &#xD;&#xA;&#x9;&#x9;&#x9;          var lpresvalue = SCM.getIntValue(lpres); &#xD;&#xA;&#x9;&#x9;&#x9;          SCM.setIntValue(currentResource,lpresvalue);&#xD;&#xA;&#x9;&#x9;&#x9;        }       &#xD;&#xA;&#x9;&#x9;&#x9;&#x9;" URI="http://www.infineon.com/1.0.10/app/bccuch01/5/bccuch_pkcmp_offcmp" downWardmappedList="//@consumed.33" maxValue="FF" minValue="0">
    <defaultValue xsi:type="ResourceModel:IntegerValue" value="FF"/>
    <localValue xsi:type="ResourceModel:StringValue" value="FF"/>
    <globalValue xsi:type="ResourceModel:IntegerValue" value="ff"/>
    <toolTipHelpDescription>Set the OFF-Time Packer Compare Value.</toolTipHelpDescription>
  </provided>
  <provided xsi:type="ResourceModel:IntegerParameter" name="Packer FIFO Depth" evalFunction="        &#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;function ForwardMapping()&#xD;&#xA;&#x9;&#x9;&#x9;        {&#xD;&#xA;&#x9;&#x9;&#x9;          var lpres = SCM.getResource(&quot;bccuchannelhw/chconfig/pkth&quot;);&#x9; &#xD;&#xA;&#x9;&#x9;&#x9;          var lpresvalue = SCM.getIntValue(currentResource); &#xD;&#xA;&#x9;&#x9;&#x9;          SCM.setIntValue(lpres,lpresvalue);&#xD;&#xA;&#x9;&#x9;&#x9;        }&#xD;&#xA;&#x9;&#x9;&#x9;        function BackwardMapping()&#xD;&#xA;&#x9;&#x9;&#x9;        {&#xD;&#xA;&#x9;&#x9;&#x9;          var lpres = SCM.getResource(&quot;bccuchannelhw/chconfig/pkth&quot;); &#xD;&#xA;&#x9;&#x9;&#x9;          var lpresvalue = SCM.getIntValue(lpres); &#xD;&#xA;&#x9;&#x9;&#x9;          SCM.setIntValue(currentResource,lpresvalue);&#xD;&#xA;&#x9;&#x9;&#x9;        }       &#xD;&#xA;&#x9;&#x9;&#x9;&#x9;" URI="http://www.infineon.com/1.0.10/app/bccuch01/5/bccuch_chconfig_pkth" downWardmappedList="//@consumed.19" maxValue="7" minValue="0">
    <defaultValue xsi:type="ResourceModel:IntegerValue" value="2"/>
    <localValue xsi:type="ResourceModel:StringValue" value="2"/>
    <globalValue xsi:type="ResourceModel:IntegerValue" value="2"/>
    <toolTipHelpDescription>Set a threshold  value for Packer.
The packer will start generating the output based on the values stored in the FIFO(queue)
 once the number of full stages reaches this threshold .</toolTipHelpDescription>
  </provided>
  <provided xsi:type="ResourceModel:IntegerParameter" name="Initial on-bit counter value" evalFunction="        &#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;function ForwardMapping()&#xD;&#xA;&#x9;&#x9;&#x9;        {&#xD;&#xA;&#x9;&#x9;&#x9;          var lpres = SCM.getResource(&quot;bccuchannelhw/pkcmp/oncntval&quot;);&#x9; &#xD;&#xA;&#x9;&#x9;&#x9;          var lpresvalue = SCM.getIntValue(currentResource); &#xD;&#xA;&#x9;&#x9;&#x9;          SCM.setIntValue(lpres,lpresvalue);&#xD;&#xA;&#x9;&#x9;&#x9;        }&#xD;&#xA;&#x9;&#x9;&#x9;        function BackwardMapping()&#xD;&#xA;&#x9;&#x9;&#x9;        {&#xD;&#xA;&#x9;&#x9;&#x9;          var lpres = SCM.getResource(&quot;bccuchannelhw/pkcmp/oncntval&quot;); &#xD;&#xA;&#x9;&#x9;&#x9;          var lpresvalue = SCM.getIntValue(lpres); &#xD;&#xA;&#x9;&#x9;&#x9;          SCM.setIntValue(currentResource,lpresvalue);&#xD;&#xA;&#x9;&#x9;&#x9;        }       &#xD;&#xA;&#x9;&#x9;&#x9;&#x9;" URI="http://www.infineon.com/1.0.10/app/bccuch01/5/bccuch_pkcmp_oncntval" maxValue="FF" minValue="0">
    <defaultValue xsi:type="ResourceModel:IntegerValue" value="0"/>
    <localValue xsi:type="ResourceModel:StringValue" value="0"/>
    <globalValue xsi:type="ResourceModel:StringValue" value="0"/>
    <toolTipHelpDescription>On-Time Counter Value at startup; can be changed to create phase shift between channels.</toolTipHelpDescription>
  </provided>
  <provided xsi:type="ResourceModel:IntegerParameter" name="Initial off-bit counter value" evalFunction="        &#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;function ForwardMapping()&#xD;&#xA;&#x9;&#x9;&#x9;        {&#xD;&#xA;&#x9;&#x9;&#x9;          var lpres = SCM.getResource(&quot;bccuchannelhw/pkcmp/offcntval&quot;);&#x9; &#xD;&#xA;&#x9;&#x9;&#x9;          var lpresvalue = SCM.getIntValue(currentResource); &#xD;&#xA;&#x9;&#x9;&#x9;          SCM.setIntValue(lpres,lpresvalue);&#xD;&#xA;&#x9;&#x9;&#x9;        }&#xD;&#xA;&#x9;&#x9;&#x9;        function BackwardMapping()&#xD;&#xA;&#x9;&#x9;&#x9;        {&#xD;&#xA;&#x9;&#x9;&#x9;          var lpres = SCM.getResource(&quot;bccuchannelhw/pkcmp/offcntval&quot;); &#xD;&#xA;&#x9;&#x9;&#x9;          var lpresvalue = SCM.getIntValue(lpres); &#xD;&#xA;&#x9;&#x9;&#x9;          SCM.setIntValue(currentResource,lpresvalue);&#xD;&#xA;&#x9;&#x9;&#x9;        }       &#xD;&#xA;&#x9;&#x9;&#x9;&#x9;" URI="http://www.infineon.com/1.0.10/app/bccuch01/5/bccuch_pkcmp_offcntval" maxValue="FF" minValue="0">
    <defaultValue xsi:type="ResourceModel:IntegerValue" value="0"/>
    <localValue xsi:type="ResourceModel:StringValue" value="0"/>
    <globalValue xsi:type="ResourceModel:StringValue" value="0"/>
    <toolTipHelpDescription>Off-Time Counter Value at startup; can be changed to create phase shift between channels.</toolTipHelpDescription>
  </provided>
  <provided xsi:type="ResourceModel:EnumerationParameter" name="Source of Dimming" evalFunction="&#x9;&#x9;&#x9;&#x9;&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;    function ForwardMapping()&#xD;&#xA;&#x9;&#x9;&#x9;            {&#xD;&#xA;&#x9;&#x9;&#x9;              var Res0 = SCM.getResource(&quot;bccuch_de_slelectdummy&quot;); &#xD;&#xA;&#x9;&#x9;&#x9;              var value = SCM.getIntValue(currentResource); &#xD;&#xA;&#x9;&#x9;&#x9;              SCM.setIntValue(Res0,value);&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;var dep = &quot;DependentApp&quot;;&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;var DepRes0 = SCM.getResource(&quot;bccudimapp&quot;); &#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;SCM.setStringValue(DepRes0,dep);&#xD;&#xA;&#x9;&#x9;&#x9;            }&#xD;&#xA;&#x9;&#x9;&#x9;            function BackwardMapping()&#xD;&#xA;&#x9;&#x9;&#x9;            {&#xD;&#xA;&#x9;&#x9;&#x9;              var Res0 = SCM.getResource(&quot;bccuch_de_slelectdummy&quot;); &#xD;&#xA;&#x9;&#x9;&#x9;              var value0 = SCM.getIntValue(Res0);&#xD;&#xA;&#x9;&#x9;&#x9;              SCM.setIntValue(currentResource,value0);&#xD;&#xA;&#x9;&#x9;&#x9;            }&#x9;&#x9;&#x9;&#x9;&#x9;&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;" URI="http://www.infineon.com/1.0.10/app/bccuch01/5/bccuch_de_slelect" downWardmappedList="//@consumed.12 //@consumed.10">
    <defaultValue xsi:type="ResourceModel:IntegerValue" value="1"/>
    <localValue xsi:type="ResourceModel:StringValue" value="1"/>
    <globalValue xsi:type="ResourceModel:IntegerValue" value="2"/>
    <toolTipHelpDescription>Dimming Engine Selection.</toolTipHelpDescription>
    <item name="None" evalFunction="&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;              function ForwardMapping()&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;              {&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;                var value = SCM.getIntValue(currentResource);&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;                var Res = SCM.getResource(&quot;bccuch_de_slelectdummy&quot;);&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;                if (value == 1 ) {&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;                  SCM.setIntValue(Res,0);       &#xD;&#xA;&#x9;&#x9;&#x9;&#x9;                }             &#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;    var dep = &quot;DependentApp&quot;;&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;var DepRes0 = SCM.getResource(&quot;bccudimapp&quot;); &#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;SCM.setStringValue(DepRes0,dep);&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;              }&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;              function BackwardMapping()&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;              {&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;                var Res = SCM.getResource(&quot;bccuch_de_slelectdummy&quot;); &#xD;&#xA;&#x9;&#x9;&#x9;&#x9;                var value = SCM.getIntValue(Res);&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;                var Res1 = SCM.getResource(&quot;bccuch_dimsel_bytoplevelapp_dummy&quot;); &#xD;&#xA;&#x9;&#x9;&#x9;&#x9;                var value1 = SCM.getIntValue(Res1);&#xD;&#xA;&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;if (value1 != 1 ) { &#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;var reserved = SCM.getReserverd();&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;SCM.setValue(currentResource,reserved);&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;                }&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;else if (value === 0 ) { &#xD;&#xA;&#x9;&#x9;&#x9;&#x9;                  SCM.setIntValue(currentResource,1);&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;                } else if (value == -1 ){&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;                  SCM.setIntValue(currentResource,0);&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;                }&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;                else {&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;                  SCM.setIntValue(currentResource,0);&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;                }&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;              }&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;            " URI="http://www.infineon.com/1.0.10/app/bccuch01/5/bccuch_de_slelect/0" downWardmappedList="//@consumed.10" maxValue="1" minValue="0">
      <defaultValue xsi:type="ResourceModel:IntegerValue" value="0"/>
      <localValue xsi:type="ResourceModel:StringValue" value="0"/>
      <globalValue xsi:type="ResourceModel:Reserved" value="Reserved"/>
      <toolTipHelpDescription>This option is widely used by Top-level Apps</toolTipHelpDescription>
    </item>
    <item name="Dimming Engine" evalFunction="&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;              function ForwardMapping()&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;              {&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;                var value = SCM.getIntValue(currentResource);&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;                var Res = SCM.getResource(&quot;bccuch_de_slelectdummy&quot;);&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;                if (value == 1 ) {&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;                  SCM.setIntValue(Res,1);       &#xD;&#xA;&#x9;&#x9;&#x9;&#x9;                } else if (value === 0) {&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;                  SCM.setIntValue(Res,0);&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;                }             &#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;    var dep = &quot;DependentApp&quot;;&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;var DepRes0 = SCM.getResource(&quot;bccudimapp&quot;); &#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;SCM.setStringValue(DepRes0,dep);&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;              }&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;              function BackwardMapping()&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;              {&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;                var Res = SCM.getResource(&quot;bccuch_de_slelectdummy&quot;); &#xD;&#xA;&#x9;&#x9;&#x9;&#x9;                var value = SCM.getIntValue(Res); &#xD;&#xA;&#x9;&#x9;&#x9;&#x9;                if (value === 1 ) { &#xD;&#xA;&#x9;&#x9;&#x9;&#x9;                  SCM.setIntValue(currentResource,1);&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;                } else if (value == -1 ){&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;                  SCM.setIntValue(currentResource,0);&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;                }&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;                else {&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;                  SCM.setIntValue(currentResource,0);&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;                }&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;              }&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;            " URI="http://www.infineon.com/1.0.10/app/bccuch01/5/bccuch_de_slelect/1" downWardmappedList="//@consumed.12 //@consumed.10" maxValue="1" minValue="0">
      <defaultValue xsi:type="ResourceModel:IntegerValue" value="1"/>
      <localValue xsi:type="ResourceModel:IntegerValue" value="0"/>
      <globalValue xsi:type="ResourceModel:IntegerValue" value="0"/>
      <toolTipHelpDescription>Click to select Dimming Engine.</toolTipHelpDescription>
    </item>
    <item name="Global Dimming" evalFunction="&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;              function ForwardMapping()&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;              {&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;                var value = SCM.getIntValue(currentResource);&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;                var Res = SCM.getResource(&quot;bccuch_de_slelectdummy&quot;);&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;                if (value == 1 ) {&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;                  SCM.setIntValue(Res,2);       &#xD;&#xA;&#x9;&#x9;&#x9;&#x9;                } else if (value === 0) {&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;                  SCM.setIntValue(Res,1);&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;                }             &#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;    var dep = &quot;DependentApp&quot;;&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;var DepRes0 = SCM.getResource(&quot;bccudimapp&quot;); &#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;SCM.setStringValue(DepRes0,dep);&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;              }&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;              function BackwardMapping()&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;              {&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;                var Res = SCM.getResource(&quot;bccuch_de_slelectdummy&quot;); &#xD;&#xA;&#x9;&#x9;&#x9;&#x9;                var value = SCM.getIntValue(Res); &#xD;&#xA;&#x9;&#x9;&#x9;&#x9;                if (value === 2 ) { &#xD;&#xA;&#x9;&#x9;&#x9;&#x9;                  SCM.setIntValue(currentResource,1);&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;                } else if (value == -1 ){&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;                  SCM.setIntValue(currentResource,0);&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;                }&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;                else {&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;                  SCM.setIntValue(currentResource,0);&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;                }&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;              }&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;  " URI="http://www.infineon.com/1.0.10/app/bccuch01/5/bccuch_de_slelect/2" downWardmappedList="//@consumed.12 //@consumed.10" maxValue="1" minValue="0">
      <defaultValue xsi:type="ResourceModel:IntegerValue" value="0"/>
      <localValue xsi:type="ResourceModel:StringValue" value="1"/>
      <globalValue xsi:type="ResourceModel:IntegerValue" value="1"/>
      <toolTipHelpDescription>Click to select Global Dimming Engine.</toolTipHelpDescription>
    </item>
  </provided>
  <provided xsi:type="ResourceModel:EnumerationParameter" name="Trigger Edge Selection" evalFunction="&#x9;&#x9;&#x9;&#x9;&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;              function ForwardMapping()&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;              {&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9; var Res = SCM.getResource(&quot;bccuchannelhw/chconfig/tred&quot;); &#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;              var value = SCM.getIntValue(currentResource);&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;              SCM.setIntValue(Res,value);&#x9;&#x9;&#x9;&#x9;                &#xD;&#xA;      &#xD;&#xA;&#x9;&#x9;&#x9;&#x9;              }&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;              function BackwardMapping()&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;              {&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;               var Res = SCM.getResource(&quot;bccuchannelhw/chconfig/tred&quot;); &#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;           var value = SCM.getIntValue(Res); &#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;           SCM.setIntValue(currentResource,value);&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;              }&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;" URI="http://www.infineon.com/1.0.10/app/bccuch01/5/bccuch_tred_slelect" downWardmappedList="//@consumed.25">
    <defaultValue xsi:type="ResourceModel:IntegerValue" value="0"/>
    <localValue xsi:type="ResourceModel:StringValue" value="0"/>
    <globalValue xsi:type="ResourceModel:IntegerValue" value="0"/>
    <toolTipHelpDescription>Click to select the transtion on which trigger occurs.</toolTipHelpDescription>
    <item name="Positive Edge" evalFunction="&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;              function ForwardMapping()&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;              {&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;var Res = SCM.getResource(&quot;bccuchannelhw/chconfig/tred&quot;);&#x9;&#x9;&#x9;&#x9;                &#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;var value = SCM.getIntValue(currentResource);&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;                &#xD;&#xA;&#x9;&#x9;&#x9;&#x9;                if (value == 1 ) {&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;                  SCM.setIntValue(Res,0);       &#xD;&#xA;&#x9;&#x9;&#x9;&#x9;                } else if (value === 0) {&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;                  SCM.setIntValue(Res,1);&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;                }             &#xD;&#xA;&#x9;&#x9;&#x9;&#x9;              }&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;              function BackwardMapping()&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;              {&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;                var Res = SCM.getResource(&quot;bccuchannelhw/chconfig/tred&quot;); &#xD;&#xA;&#x9;&#x9;&#x9;&#x9;                var value = SCM.getIntValue(Res); &#xD;&#xA;&#x9;&#x9;&#x9;&#x9;                if (value === 0 ) { &#xD;&#xA;&#x9;&#x9;&#x9;&#x9;                  SCM.setIntValue(currentResource,1);&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;                } else if (value == -1 ){&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;                  SCM.setIntValue(currentResource,1);&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;                }&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;                else {&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;                  SCM.setIntValue(currentResource,0);&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;                }&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;              }&#xD;&#xA;" URI="http://www.infineon.com/1.0.10/app/bccuch01/5/bccuch_tred_slelect/0" downWardmappedList="//@consumed.25" maxValue="1" minValue="0">
      <defaultValue xsi:type="ResourceModel:IntegerValue" value="1"/>
      <localValue xsi:type="ResourceModel:StringValue" value="1"/>
      <globalValue xsi:type="ResourceModel:IntegerValue" value="1"/>
      <toolTipHelpDescription>Passive to Active Transition.</toolTipHelpDescription>
    </item>
    <item name="Negative Edge" evalFunction="&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;              function ForwardMapping()&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;              {&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;                var value = SCM.getIntValue(currentResource);&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;                var Res = SCM.getResource(&quot;bccuchannelhw/chconfig/tred&quot;);&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;                if (value == 1 ) {&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;                  SCM.setIntValue(Res,1);       &#xD;&#xA;&#x9;&#x9;&#x9;&#x9;                } else if (value === 0) {&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;                  SCM.setIntValue(Res,0);&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;                }             &#xD;&#xA;&#x9;&#x9;&#x9;&#x9;              }&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;              function BackwardMapping()&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;              {&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;                var Res = SCM.getResource(&quot;bccuchannelhw/chconfig/tred&quot;); &#xD;&#xA;&#x9;&#x9;&#x9;&#x9;                var value = SCM.getIntValue(Res); &#xD;&#xA;&#x9;&#x9;&#x9;&#x9;                if (value === 1 ) { &#xD;&#xA;&#x9;&#x9;&#x9;&#x9;                  SCM.setIntValue(currentResource,1);&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;                } else if (value == -1 ){&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;                  SCM.setIntValue(currentResource,0);&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;                }&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;                else {&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;                  SCM.setIntValue(currentResource,0);&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;                }&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;              }&#xD;&#xA;" URI="http://www.infineon.com/1.0.10/app/bccuch01/5/bccuch_tred_slelect/1" downWardmappedList="//@consumed.25" maxValue="1" minValue="0">
      <defaultValue xsi:type="ResourceModel:IntegerValue" value="0"/>
      <localValue xsi:type="ResourceModel:StringValue" value="0"/>
      <globalValue xsi:type="ResourceModel:IntegerValue" value="0"/>
      <toolTipHelpDescription>Active to Passive Transition.</toolTipHelpDescription>
    </item>
  </provided>
  <provided xsi:type="ResourceModel:EnumerationParameter" name="Output Passive Level Selection" evalFunction="&#x9;&#x9;&#x9;&#x9;&#xD;&#xA;&#x9;&#x9;&#x9;&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;              function ForwardMapping()&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;              {&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9; var Res = SCM.getResource(&quot;bccuchannelhw/chocon/chop&quot;); &#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;              var value = SCM.getIntValue(currentResource);&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;              SCM.setIntValue(Res,value);&#x9;&#x9;&#x9;&#x9;                &#xD;&#xA;      &#xD;&#xA;&#x9;&#x9;&#x9;&#x9;              }&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;              function BackwardMapping()&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;              {&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;               var Res = SCM.getResource(&quot;bccuchannelhw/chocon/chop&quot;); &#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;           var value = SCM.getIntValue(Res); &#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;           SCM.setIntValue(currentResource,value);&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;              }&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;" URI="http://www.infineon.com/1.0.10/app/bccuch01/5/bccuch_chop_slelect" downWardmappedList="//@consumed.28">
    <defaultValue xsi:type="ResourceModel:IntegerValue" value="0"/>
    <localValue xsi:type="ResourceModel:StringValue" value="0"/>
    <globalValue xsi:type="ResourceModel:IntegerValue" value="0"/>
    <toolTipHelpDescription>Click to select the Channel Output Passive Level.</toolTipHelpDescription>
    <item name="Active High" evalFunction="&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;              function ForwardMapping()&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;              {&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;                var value = SCM.getIntValue(currentResource);&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;                var Res = SCM.getResource(&quot;bccuchannelhw/chocon/chop&quot;);&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;                if (value == 1 ) {&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;                  SCM.setIntValue(Res,0);       &#xD;&#xA;&#x9;&#x9;&#x9;&#x9;                } else if (value === 0) {&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;                  SCM.setIntValue(Res,1);&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;                }             &#xD;&#xA;&#x9;&#x9;&#x9;&#x9;              }&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;              function BackwardMapping()&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;              {&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;                var Res = SCM.getResource(&quot;bccuchannelhw/chocon/chop&quot;); &#xD;&#xA;&#x9;&#x9;&#x9;&#x9;                var value = SCM.getIntValue(Res); &#xD;&#xA;&#x9;&#x9;&#x9;&#x9;                if (value === 0 ) { &#xD;&#xA;&#x9;&#x9;&#x9;&#x9;                  SCM.setIntValue(currentResource,1);&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;                } else if (value == -1 ){&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;                  SCM.setIntValue(currentResource,1);&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;                }&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;                else {&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;                  SCM.setIntValue(currentResource,0);&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;                }&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;              }&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;" URI="http://www.infineon.com/1.0.10/app/bccuch01/5/bccuch_chop_slelect/0" downWardmappedList="//@consumed.28" maxValue="1" minValue="0">
      <defaultValue xsi:type="ResourceModel:IntegerValue" value="1"/>
      <localValue xsi:type="ResourceModel:StringValue" value="1"/>
      <globalValue xsi:type="ResourceModel:IntegerValue" value="1"/>
      <toolTipHelpDescription>Select to make the Channel Output Passive Level as a Active High.</toolTipHelpDescription>
    </item>
    <item name="Active Low" evalFunction="&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;              function ForwardMapping()&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;              {&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;                var value = SCM.getIntValue(currentResource);&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;                var Res = SCM.getResource(&quot;bccuchannelhw/chocon/chop&quot;);&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;                if (value == 1 ) {&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;                  SCM.setIntValue(Res,1);       &#xD;&#xA;&#x9;&#x9;&#x9;&#x9;                } else if (value === 0) {&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;                  SCM.setIntValue(Res,0);&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;                }             &#xD;&#xA;&#x9;&#x9;&#x9;&#x9;              }&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;              function BackwardMapping()&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;              {&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;                var Res = SCM.getResource(&quot;bccuchannelhw/chocon/chop&quot;); &#xD;&#xA;&#x9;&#x9;&#x9;&#x9;                var value = SCM.getIntValue(Res); &#xD;&#xA;&#x9;&#x9;&#x9;&#x9;                if (value === 1 ) { &#xD;&#xA;&#x9;&#x9;&#x9;&#x9;                  SCM.setIntValue(currentResource,1);&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;                } else if (value == -1 ){&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;                  SCM.setIntValue(currentResource,0);&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;                }&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;                else {&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;                  SCM.setIntValue(currentResource,0);&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;                }&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;              }&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;" URI="http://www.infineon.com/1.0.10/app/bccuch01/5/bccuch_chop_slelect/1" downWardmappedList="//@consumed.28" maxValue="1" minValue="0">
      <defaultValue xsi:type="ResourceModel:IntegerValue" value="0"/>
      <localValue xsi:type="ResourceModel:StringValue" value="0"/>
      <globalValue xsi:type="ResourceModel:IntegerValue" value="0"/>
      <toolTipHelpDescription>Select to make the Channel Output Passive Level as a Active Low.</toolTipHelpDescription>
    </item>
  </provided>
  <provided xsi:type="ResourceModel:EnumerationParameter" name="Packer Selection" evalFunction=" &#xD;&#xA;          function ForwardMapping(){&#xD;&#xA;              var Res = SCM.getResource(&quot;bccuchannelhw/chconfig/pen&quot;); &#xD;&#xA;              var value = SCM.getIntValue(currentResource);&#xD;&#xA;              SCM.setIntValue(Res,value);&#xD;&#xA;          }&#xD;&#xA;          function BackwardMapping(){&#xD;&#xA;              var Res = SCM.getResource(&quot;bccuchannelhw/chconfig/pen&quot;); &#xD;&#xA;              var value = SCM.getIntValue(Res); &#xD;&#xA;              SCM.setIntValue(currentResource,value);&#xD;&#xA;          }&#xD;&#xA;               " URI="http://www.infineon.com/1.0.10/app/bccuch01/5/bccuch_pen" downWardmappedList="//@consumed.20" multipleSelections="true">
    <defaultValue xsi:type="ResourceModel:IntegerValue" value="0"/>
    <localValue xsi:type="ResourceModel:StringValue" value="0"/>
    <globalValue xsi:type="ResourceModel:IntegerValue" value="0"/>
    <toolTipHelpDescription>Select to Enable Packer.
 If Packer is enabled (PEN=1),Force Trigger feature is disabled.</toolTipHelpDescription>
    <item name="Enable" evalFunction="&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;              function ForwardMapping()&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;              {&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;var Res = SCM.getResource(&quot;bccuchannelhw/chconfig/pen&quot;);&#x9;&#x9;&#x9;&#x9;                &#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;var value = SCM.getIntValue(currentResource);&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;                &#xD;&#xA;&#x9;&#x9;&#x9;&#x9;                if (value == 1 ) {&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;                  SCM.setIntValue(Res,1);       &#xD;&#xA;&#x9;&#x9;&#x9;&#x9;                } else if (value === 0) {&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;                  SCM.setIntValue(Res,0);&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;                }             &#xD;&#xA;&#x9;&#x9;&#x9;&#x9;              }&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;              function BackwardMapping()&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;              {&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;                var Res = SCM.getResource(&quot;bccuchannelhw/chconfig/pen&quot;); &#xD;&#xA;&#x9;&#x9;&#x9;&#x9;                var value = SCM.getIntValue(Res); &#xD;&#xA;&#x9;&#x9;&#x9;&#x9;                if (value === 1 ) { &#xD;&#xA;&#x9;&#x9;&#x9;&#x9;                  SCM.setIntValue(currentResource,1);&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;                } else if (value == -1 ){&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;                  SCM.setIntValue(currentResource,0);&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;                }&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;                else {&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;                  SCM.setIntValue(currentResource,0);&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;                }&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;              }&#xD;&#xA;&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;" URI="http://www.infineon.com/1.0.10/app/bccuch01/5/bccuch_pen/0" downWardmappedList="//@consumed.20" maxValue="1" minValue="0">
      <defaultValue xsi:type="ResourceModel:IntegerValue" value="0"/>
      <localValue xsi:type="ResourceModel:StringValue" value="0"/>
      <globalValue xsi:type="ResourceModel:IntegerValue" value="0"/>
      <toolTipHelpDescription>Select to Enable Packer.
 If dithering is enabled (PEN=1),Force Trigger feature is disabled.</toolTipHelpDescription>
    </item>
  </provided>
  <provided xsi:type="ResourceModel:EnumerationParameter" name="Trap Enable" evalFunction=" &#xD;&#xA;          function ForwardMapping(){&#xD;&#xA;              var Res = SCM.getResource(&quot;bccuchannelhw/chocon/chtpe&quot;); &#xD;&#xA;              var value = SCM.getIntValue(currentResource);&#xD;&#xA;              SCM.setIntValue(Res,value);&#xD;&#xA;          }&#xD;&#xA;          function BackwardMapping(){&#xD;&#xA;              var Res = SCM.getResource(&quot;bccuchannelhw/chocon/chtpe&quot;); &#xD;&#xA;              var value = SCM.getIntValue(Res); &#xD;&#xA;              SCM.setIntValue(currentResource,value);&#xD;&#xA;          }&#xD;&#xA;               " URI="http://www.infineon.com/1.0.10/app/bccuch01/5/bccuch_chocon_chtpe" downWardmappedList="//@consumed.29" multipleSelections="true">
    <defaultValue xsi:type="ResourceModel:IntegerValue" value="0"/>
    <localValue xsi:type="ResourceModel:StringValue" value="0"/>
    <globalValue xsi:type="ResourceModel:IntegerValue" value="0"/>
    <toolTipHelpDescription>Select To enable channel trap.</toolTipHelpDescription>
    <item name="Enable" evalFunction="&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;              function ForwardMapping()&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;              {&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;var Res = SCM.getResource(&quot;bccuchannelhw/chocon/chtpe&quot;);&#x9;&#x9;&#x9;&#x9;                &#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;var value = SCM.getIntValue(currentResource);&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;                &#xD;&#xA;&#x9;&#x9;&#x9;&#x9;                if (value == 1 ) {&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;                  SCM.setIntValue(Res,1);       &#xD;&#xA;&#x9;&#x9;&#x9;&#x9;                } else if (value === 0) {&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;                  SCM.setIntValue(Res,0);&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;                }             &#xD;&#xA;&#x9;&#x9;&#x9;&#x9;              }&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;              function BackwardMapping()&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;              {&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;                var Res = SCM.getResource(&quot;bccuchannelhw/chocon/chtpe&quot;); &#xD;&#xA;&#x9;&#x9;&#x9;&#x9;                var value = SCM.getIntValue(Res); &#xD;&#xA;&#x9;&#x9;&#x9;&#x9;                if (value === 1 ) { &#xD;&#xA;&#x9;&#x9;&#x9;&#x9;                  SCM.setIntValue(currentResource,1);&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;                } else if (value == -1 ){&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;                  SCM.setIntValue(currentResource,0);&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;                }&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;                else {&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;                  SCM.setIntValue(currentResource,0);&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;                }&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;              }&#xD;&#xA;&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;" URI="http://www.infineon.com/1.0.10/app/bccuch01/5/bccuch_chocon_chtpe/0" downWardmappedList="//@consumed.29" maxValue="1" minValue="0">
      <defaultValue xsi:type="ResourceModel:IntegerValue" value="0"/>
      <localValue xsi:type="ResourceModel:StringValue" value="0"/>
      <globalValue xsi:type="ResourceModel:IntegerValue" value="0"/>
      <toolTipHelpDescription>Select To enable channel trap.</toolTipHelpDescription>
    </item>
  </provided>
  <provided xsi:type="ResourceModel:EnumerationParameter" name="Trigger Enable" evalFunction=" &#xD;&#xA;          function ForwardMapping(){&#xD;&#xA;              var Res = SCM.getResource(&quot;bccuchannelhw/chtrig/chte&quot;); &#xD;&#xA;              var value = SCM.getIntValue(currentResource);&#xD;&#xA;              SCM.setIntValue(Res,value);&#xD;&#xA;          }&#xD;&#xA;          function BackwardMapping(){&#xD;&#xA;              var Res = SCM.getResource(&quot;bccuchannelhw/chtrig/chte&quot;); &#xD;&#xA;              var value = SCM.getIntValue(Res); &#xD;&#xA;              SCM.setIntValue(currentResource,value);&#xD;&#xA;          }&#xD;&#xA;               " URI="http://www.infineon.com/1.0.10/app/bccuch01/5/bccuch_chtrig_ety" downWardmappedList="//@consumed.31" multipleSelections="true">
    <defaultValue xsi:type="ResourceModel:IntegerValue" value="0"/>
    <localValue xsi:type="ResourceModel:StringValue" value="0"/>
    <globalValue xsi:type="ResourceModel:IntegerValue" value="0"/>
    <toolTipHelpDescription>Select To enable channel trigger.</toolTipHelpDescription>
    <item name="Enable" evalFunction="&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;              function ForwardMapping()&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;              {&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;var Res = SCM.getResource(&quot;bccuchannelhw/chtrig/chte&quot;);&#x9;&#x9;&#x9;&#x9;                &#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;var value = SCM.getIntValue(currentResource);&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;                &#xD;&#xA;&#x9;&#x9;&#x9;&#x9;                if (value == 1 ) {&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;                  SCM.setIntValue(Res,1);       &#xD;&#xA;&#x9;&#x9;&#x9;&#x9;                } else if (value === 0) {&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;                  SCM.setIntValue(Res,0);&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;                }             &#xD;&#xA;&#x9;&#x9;&#x9;&#x9;              }&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;              function BackwardMapping()&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;              {&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;                var Res = SCM.getResource(&quot;bccuchannelhw/chtrig/chte&quot;); &#xD;&#xA;&#x9;&#x9;&#x9;&#x9;                var value = SCM.getIntValue(Res); &#xD;&#xA;&#x9;&#x9;&#x9;&#x9;                if (value === 1 ) { &#xD;&#xA;&#x9;&#x9;&#x9;&#x9;                  SCM.setIntValue(currentResource,1);&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;                } else if (value == -1 ){&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;                  SCM.setIntValue(currentResource,0);&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;                }&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;                else {&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;                  SCM.setIntValue(currentResource,0);&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;                }&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;              }&#xD;&#xA;&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;" URI="http://www.infineon.com/1.0.10/app/bccuch01/5/bccuch_chtrig_ety/0" downWardmappedList="//@consumed.31" maxValue="1" minValue="0">
      <defaultValue xsi:type="ResourceModel:IntegerValue" value="0"/>
      <localValue xsi:type="ResourceModel:StringValue" value="0"/>
      <globalValue xsi:type="ResourceModel:IntegerValue" value="0"/>
      <toolTipHelpDescription>Select To enable channel trigger.</toolTipHelpDescription>
    </item>
  </provided>
  <provided xsi:type="ResourceModel:EnumerationParameter" name="Trigger Output Selection" evalFunction=" &#xD;&#xA;          function ForwardMapping(){&#xD;&#xA;              var Res = SCM.getResource(&quot;bccuchannelhw/chtrig/tos&quot;); &#xD;&#xA;              var value = SCM.getIntValue(currentResource);&#xD;&#xA;              SCM.setIntValue(Res,value);&#xD;&#xA;          }&#xD;&#xA;          function BackwardMapping(){&#xD;&#xA;              var Res = SCM.getResource(&quot;bccuchannelhw/chtrig/tos&quot;); &#xD;&#xA;              var value = SCM.getIntValue(Res); &#xD;&#xA;              SCM.setIntValue(currentResource,value);&#xD;&#xA;          }&#xD;&#xA;               " URI="http://www.infineon.com/1.0.10/app/bccuch01/5/bccuch_chtrig_tos" downWardmappedList="//@consumed.30">
    <defaultValue xsi:type="ResourceModel:IntegerValue" value="0"/>
    <localValue xsi:type="ResourceModel:StringValue" value="0"/>
    <globalValue xsi:type="ResourceModel:IntegerValue" value="0"/>
    <toolTipHelpDescription>Select which trigger line the channel trigger appears on. Only takes effect in Trigger Mode 1.</toolTipHelpDescription>
    <item name="Trigger Line 0" evalFunction="&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;              function ForwardMapping()&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;              {&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;                var value = SCM.getIntValue(currentResource);&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;                var Res = SCM.getResource(&quot;bccuchannelhw/chtrig/tos&quot;);&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;                if (value == 1 ) {&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;                  SCM.setIntValue(Res,0);       &#xD;&#xA;&#x9;&#x9;&#x9;&#x9;                } else if (value === 0) {&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;                  SCM.setIntValue(Res,1);&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;                }             &#xD;&#xA;&#x9;&#x9;&#x9;&#x9;              }&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;              function BackwardMapping()&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;              {&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;                var Res = SCM.getResource(&quot;bccuchannelhw/chtrig/tos&quot;); &#xD;&#xA;&#x9;&#x9;&#x9;&#x9;                var value = SCM.getIntValue(Res); &#xD;&#xA;&#x9;&#x9;&#x9;&#x9;                if (value === 0 ) { &#xD;&#xA;&#x9;&#x9;&#x9;&#x9;                  SCM.setIntValue(currentResource,1);&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;                } else if (value == -1 ){&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;                  SCM.setIntValue(currentResource,1);&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;                }&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;                else {&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;                  SCM.setIntValue(currentResource,0);&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;                }&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;              }&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;" URI="http://www.infineon.com/1.0.10/app/bccuch01/5/bccuch_chtrig_tos/0" downWardmappedList="//@consumed.30" maxValue="1" minValue="0">
      <defaultValue xsi:type="ResourceModel:IntegerValue" value="1"/>
      <localValue xsi:type="ResourceModel:StringValue" value="1"/>
      <globalValue xsi:type="ResourceModel:IntegerValue" value="1"/>
      <toolTipHelpDescription>Channel Trigger pulse appears on Trigger Line 0 (BCCU_TRIGOUT0)</toolTipHelpDescription>
    </item>
    <item name="Trigger Line 1" evalFunction="&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;              function ForwardMapping()&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;              {&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;                var value = SCM.getIntValue(currentResource);&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;                var Res = SCM.getResource(&quot;bccuchannelhw/chtrig/tos&quot;);&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;                if (value == 1 ) {&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;                  SCM.setIntValue(Res,1);       &#xD;&#xA;&#x9;&#x9;&#x9;&#x9;                } else if (value === 0) {&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;                  SCM.setIntValue(Res,0);&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;                }             &#xD;&#xA;&#x9;&#x9;&#x9;&#x9;              }&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;              function BackwardMapping()&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;              {&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;                var Res = SCM.getResource(&quot;bccuchannelhw/chtrig/tos&quot;); &#xD;&#xA;&#x9;&#x9;&#x9;&#x9;                var value = SCM.getIntValue(Res); &#xD;&#xA;&#x9;&#x9;&#x9;&#x9;                if (value === 1 ) { &#xD;&#xA;&#x9;&#x9;&#x9;&#x9;                  SCM.setIntValue(currentResource,1);&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;                } else if (value == -1 ){&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;                  SCM.setIntValue(currentResource,0);&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;                }&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;                else {&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;                  SCM.setIntValue(currentResource,0);&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;                }&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;              }&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;" URI="http://www.infineon.com/1.0.10/app/bccuch01/5/bccuch_chtrig_tos/1" downWardmappedList="//@consumed.30" maxValue="1" minValue="0">
      <defaultValue xsi:type="ResourceModel:IntegerValue" value="0"/>
      <localValue xsi:type="ResourceModel:StringValue" value="0"/>
      <globalValue xsi:type="ResourceModel:IntegerValue" value="0"/>
      <toolTipHelpDescription>Channel Trigger pulse appears on Trigger Line 1 (BCCU_TRIGOUT1)</toolTipHelpDescription>
    </item>
  </provided>
  <provided xsi:type="ResourceModel:EnumerationParameter" name="Channel Enable" evalFunction="&#xD;&#xA;            function ForwardMapping()&#xD;&#xA;            {&#xD;&#xA;              var Res0 = SCM.getResource(&quot;bccuch01_dummyenable_at_init&quot;); &#xD;&#xA;              var value = SCM.getIntValue(currentResource); &#xD;&#xA;              SCM.setIntValue(Res0,value);&#xD;&#xA;            }&#xD;&#xA;            function BackwardMapping()&#xD;&#xA;            {&#xD;&#xA;              var Res0 = SCM.getResource(&quot;bccuch01_dummyenable_at_init&quot;); &#xD;&#xA;              var value0 = SCM.getIntValue(Res0);&#xD;&#xA;              SCM.setIntValue(currentResource,value0);&#xD;&#xA;            }" URI="http://www.infineon.com/1.0.10/app/bccuch01/5/enable_at_init" downWardmappedList="//@consumed.5" multipleSelections="true">
    <defaultValue xsi:type="ResourceModel:IntegerValue" value="0"/>
    <localValue xsi:type="ResourceModel:StringValue" value="0"/>
    <globalValue xsi:type="ResourceModel:IntegerValue" value="1"/>
    <item name="Enable at Initialization" evalFunction="&#xD;&#xA;            function ForwardMapping()&#xD;&#xA;            {&#xD;&#xA;              var Res0 = SCM.getResource(&quot;bccuch01_dummyenable_at_init&quot;); &#xD;&#xA;              var value = SCM.getIntValue(currentResource); &#xD;&#xA;              SCM.setIntValue(Res0,value);&#xD;&#xA;            }&#xD;&#xA;            function BackwardMapping()&#xD;&#xA;            {&#xD;&#xA;              var Res0 = SCM.getResource(&quot;bccuch01_dummyenable_at_init&quot;); &#xD;&#xA;              var value0 = SCM.getIntValue(Res0);&#xD;&#xA;              SCM.setIntValue(currentResource,value0);&#xD;&#xA;            }" URI="http://www.infineon.com/1.0.10/app/bccuch01/5/enable_at_init/0" downWardmappedList="//@consumed.5" maxValue="1" minValue="0">
      <defaultValue xsi:type="ResourceModel:IntegerValue" value="0"/>
      <localValue xsi:type="ResourceModel:StringValue" value="1"/>
      <globalValue xsi:type="ResourceModel:IntegerValue" value="1"/>
      <toolTipHelpDescription>Select to enable channel at Initialization.</toolTipHelpDescription>
    </item>
  </provided>
  <provided xsi:type="ResourceModel:EnumerationParameter" name="Dimming Input Bypass" evalFunction=" &#xD;&#xA;          function ForwardMapping(){&#xD;&#xA;              var Res = SCM.getResource(&quot;bccuchannelhw/chconfig/dbp&quot;); &#xD;&#xA;              var value = SCM.getIntValue(currentResource);&#xD;&#xA;              SCM.setIntValue(Res,value);&#xD;&#xA;          }&#xD;&#xA;          function BackwardMapping(){&#xD;&#xA;              var Res = SCM.getResource(&quot;bccuchannelhw/chconfig/dbp&quot;); &#xD;&#xA;              var value = SCM.getIntValue(Res); &#xD;&#xA;              SCM.setIntValue(currentResource,value);&#xD;&#xA;          }&#xD;&#xA;               " URI="http://www.infineon.com/1.0.10/app/bccuch01/5/bccuch_dbp" downWardmappedList="//@consumed.22" multipleSelections="true">
    <defaultValue xsi:type="ResourceModel:IntegerValue" value="0"/>
    <localValue xsi:type="ResourceModel:StringValue" value="0"/>
    <globalValue xsi:type="ResourceModel:IntegerValue" value="1"/>
    <toolTipHelpDescription>Click to Bypass Dimming Engine,
channel brightness is only determined by the channel intensity level.</toolTipHelpDescription>
    <item name="Bypass" evalFunction="&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;              function ForwardMapping()&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;              {&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;var Res = SCM.getResource(&quot;bccuchannelhw/chconfig/dbp&quot;);&#x9;&#x9;&#x9;&#x9;                &#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;var value = SCM.getIntValue(currentResource);&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;              &#xD;&#xA;&#x9;&#x9;&#x9;&#x9;                if (value == 1 ) {&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;                  SCM.setIntValue(Res,1);       &#xD;&#xA;&#x9;&#x9;&#x9;&#x9;                } else if (value === 0) {&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;                  SCM.setIntValue(Res,0);&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;                }             &#xD;&#xA;&#x9;&#x9;&#x9;&#x9;              }&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;              function BackwardMapping()&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;              {&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;                var Res = SCM.getResource(&quot;bccuchannelhw/chconfig/dbp&quot;); &#xD;&#xA;&#x9;&#x9;&#x9;&#x9;                var value = SCM.getIntValue(Res); &#xD;&#xA;&#x9;&#x9;&#x9;&#x9;                if (value === 1 ) { &#xD;&#xA;&#x9;&#x9;&#x9;&#x9;                  SCM.setIntValue(currentResource,1);&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;                } else if (value == -1 ){&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;                  SCM.setIntValue(currentResource,0);&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;                }&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;                else {&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;                  SCM.setIntValue(currentResource,0);&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;                }&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;              }&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;" URI="http://www.infineon.com/1.0.10/app/bccuch01/5/bccuch_dbp/0" downWardmappedList="//@consumed.22" maxValue="1" minValue="0">
      <defaultValue xsi:type="ResourceModel:IntegerValue" value="0"/>
      <localValue xsi:type="ResourceModel:StringValue" value="1"/>
      <globalValue xsi:type="ResourceModel:IntegerValue" value="1"/>
      <toolTipHelpDescription>Click to Bypass Dimming Engine,
channel brightness is only determined by the channel intensity level.</toolTipHelpDescription>
    </item>
  </provided>
  <provided xsi:type="ResourceModel:EnumerationParameter" name="Forced Trigger Selection" evalFunction=" &#xD;&#xA;          function ForwardMapping(){&#xD;&#xA;              var Res = SCM.getResource(&quot;bccuchannelhw/chconfig/enft&quot;); &#xD;&#xA;              var value = SCM.getIntValue(currentResource);&#xD;&#xA;              SCM.setIntValue(Res,value);&#xD;&#xA;          }&#xD;&#xA;          function BackwardMapping(){&#xD;&#xA;              var Res = SCM.getResource(&quot;bccuchannelhw/chconfig/enft&quot;); &#xD;&#xA;              var value = SCM.getIntValue(Res); &#xD;&#xA;              SCM.setIntValue(currentResource,value);&#xD;&#xA;          }&#xD;&#xA;&#x9;&#x9;" URI="http://www.infineon.com/1.0.10/app/bccuch01/5/bccuch_enft" downWardmappedList="//@consumed.26" multipleSelections="true">
    <defaultValue xsi:type="ResourceModel:IntegerValue" value="0"/>
    <localValue xsi:type="ResourceModel:StringValue" value="0"/>
    <globalValue xsi:type="ResourceModel:IntegerValue" value="0"/>
    <toolTipHelpDescription>Enable to allow a trigger  to be generated if the output of the sigma-delta modulator has not changed state for 256 bit times.</toolTipHelpDescription>
    <item name="Enable" evalFunction="&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;              function ForwardMapping()&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;              {&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;var Res = SCM.getResource(&quot;bccuchannelhw/chconfig/enft&quot;);&#x9;&#x9;&#x9;&#x9;                &#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;var value = SCM.getIntValue(currentResource);&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;                &#xD;&#xA;&#x9;&#x9;&#x9;&#x9;                if (value == 1 ) {&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;                   SCM.setIntValue(Res,1);   &#xD;&#xA;&#x9;&#x9;&#x9;&#x9;                } else if (value === 0) {&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;                  SCM.setIntValue(Res,0);&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;                }             &#xD;&#xA;&#x9;&#x9;&#x9;&#x9;              }&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;              function BackwardMapping()&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;              {&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;                var Res = SCM.getResource(&quot;bccuchannelhw/chconfig/enft&quot;); &#xD;&#xA;&#x9;&#x9;&#x9;&#x9;                var value = SCM.getIntValue(Res); &#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;var Res1 = SCM.getResource(&quot;bccuchannelhw/chconfig/pen&quot;);&#x9;&#x9;&#x9;&#x9;                &#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;var value1 = SCM.getIntValue(Res1);&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;                if (value === 1 ) { &#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#xD;&#xA;                                if(value1 == 1)&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;{&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;SCM.setIntValue(currentResource,0); &#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;}else&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;{ SCM.setIntValue(currentResource,1);}&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;                 &#xD;&#xA;&#x9;&#x9;&#x9;&#x9;                } else if (value == -1 ){&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;                  SCM.setIntValue(currentResource,0);&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;                }&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;                else {&#xD;&#xA;&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;                  SCM.setIntValue(currentResource,0);&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;                }&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;              }&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;" URI="http://www.infineon.com/1.0.10/app/bccuch01/5/bccuch_enft/0" downWardmappedList="//@consumed.26" maxValue="1" minValue="0">
      <localValue xsi:type="ResourceModel:StringValue" value="0"/>
      <globalValue xsi:type="ResourceModel:IntegerValue" value="0"/>
      <toolTipHelpDescription>Click to enable force trigger.
 The trigger generator generates a trigger if the output of the sigma-delta modulator has not changed state for 256 bit times.
 only takes effect if the packer is disabled (PEN=0).</toolTipHelpDescription>
    </item>
  </provided>
  <provided xsi:type="ResourceModel:EnumerationParameter" name="Flicker Watchdog" evalFunction=" &#xD;&#xA;          function ForwardMapping(){&#xD;&#xA;              var Res = SCM.getResource(&quot;bccuchannelhw/chconfig/wen&quot;); &#xD;&#xA;              var value = SCM.getIntValue(currentResource);&#xD;&#xA;              SCM.setIntValue(Res,value);&#xD;&#xA;          }&#xD;&#xA;          function BackwardMapping(){&#xD;&#xA;              var Res = SCM.getResource(&quot;bccuchannelhw/chconfig/wen&quot;); &#xD;&#xA;              var value = SCM.getIntValue(Res); &#xD;&#xA;              SCM.setIntValue(currentResource,value);&#xD;&#xA;          }&#xD;&#xA;&#x9;&#x9;" URI="http://www.infineon.com/1.0.10/app/bccuch01/5/bccuch_wen" downWardmappedList="//@consumed.24" multipleSelections="true">
    <defaultValue xsi:type="ResourceModel:IntegerValue" value="0"/>
    <localValue xsi:type="ResourceModel:StringValue" value="0"/>
    <globalValue xsi:type="ResourceModel:IntegerValue" value="0"/>
    <toolTipHelpDescription>Click to enable Flicker Watchdog.</toolTipHelpDescription>
    <item name="Enable" evalFunction="&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;              function ForwardMapping()&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;              {&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;var Res = SCM.getResource(&quot;bccuchannelhw/chconfig/wen&quot;);&#x9;&#x9;&#x9;&#x9;                &#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;var value = SCM.getIntValue(currentResource);&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;                &#xD;&#xA;&#x9;&#x9;&#x9;&#x9;                if (value == 1 ) {&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;                  SCM.setIntValue(Res,1);       &#xD;&#xA;&#x9;&#x9;&#x9;&#x9;                } else if (value === 0) {&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;                  SCM.setIntValue(Res,0);&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;                }             &#xD;&#xA;&#x9;&#x9;&#x9;&#x9;              }&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;              function BackwardMapping()&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;              {&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;                var Res = SCM.getResource(&quot;bccuchannelhw/chconfig/wen&quot;); &#xD;&#xA;&#x9;&#x9;&#x9;&#x9;                var value = SCM.getIntValue(Res); &#xD;&#xA;&#x9;&#x9;&#x9;&#x9;                if (value === 1 ) { &#xD;&#xA;&#x9;&#x9;&#x9;&#x9;                  SCM.setIntValue(currentResource,1);&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;                } else if (value == -1 ){&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;                  SCM.setIntValue(currentResource,0);&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;                }&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;                else {&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;                  SCM.setIntValue(currentResource,0);&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;                }&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;              }&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;" URI="http://www.infineon.com/1.0.10/app/bccuch01/5/bccuch_wen/0" downWardmappedList="//@consumed.24" maxValue="1" minValue="0">
      <localValue xsi:type="ResourceModel:StringValue" value="0"/>
      <globalValue xsi:type="ResourceModel:IntegerValue" value="0"/>
      <toolTipHelpDescription>Click to enable Flicker Watchdog.</toolTipHelpDescription>
    </item>
  </provided>
  <provided xsi:type="ResourceModel:EnumerationParameter" name="Output Gating" evalFunction=" &#xD;&#xA;          function ForwardMapping(){&#xD;&#xA;            var Res = SCM.getResource(&quot;bccuchannelhw/chconfig/gen&quot;);&#xD;&#xA;            var value = SCM.getIntValue(currentResource);&#x9;&#x9;      &#xD;&#xA;              SCM.setIntValue(Res,value);&#xD;&#xA;          }&#xD;&#xA;          function BackwardMapping(){&#xD;&#xA;              var Res = SCM.getResource(&quot;bccuchannelhw/chconfig/gen&quot;); &#xD;&#xA;              var value = SCM.getIntValue(Res); &#xD;&#xA;              SCM.setIntValue(currentResource,value);&#xD;&#xA;          }&#xD;&#xA;               " URI="http://www.infineon.com/1.0.10/app/bccuch01/5/bccuch_gen" downWardmappedList="//@consumed.23" multipleSelections="true">
    <defaultValue xsi:type="ResourceModel:IntegerValue" value="0"/>
    <localValue xsi:type="ResourceModel:StringValue" value="0"/>
    <globalValue xsi:type="ResourceModel:IntegerValue" value="0"/>
    <toolTipHelpDescription>Click to Enable Gating Function.</toolTipHelpDescription>
    <item name="Enable" evalFunction="&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;              function ForwardMapping()&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;              {&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;                var value = SCM.getIntValue(currentResource);&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;                var Res = SCM.getResource(&quot;bccuchannelhw/chconfig/gen&quot;);&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;                if (value == 1 ) {&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;                  SCM.setIntValue(Res,1);       &#xD;&#xA;&#x9;&#x9;&#x9;&#x9;                } else if (value === 0) {&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;                  SCM.setIntValue(Res,0);&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;                }             &#xD;&#xA;&#x9;&#x9;&#x9;&#x9;              }&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;              function BackwardMapping()&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;              {&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;                var Res = SCM.getResource(&quot;bccuchannelhw/chconfig/gen&quot;); &#xD;&#xA;&#x9;&#x9;&#x9;&#x9;                var value = SCM.getIntValue(Res); &#xD;&#xA;&#x9;&#x9;&#x9;&#x9;                if (value === 1 ) { &#xD;&#xA;&#x9;&#x9;&#x9;&#x9;                  SCM.setIntValue(currentResource,1);&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;                } else if (value == -1 ){&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;                  SCM.setIntValue(currentResource,0);&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;                }&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;                else {&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;                  SCM.setIntValue(currentResource,0);&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;                }&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;              }&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;" URI="http://www.infineon.com/1.0.10/app/bccuch01/5/bccuch_gen/0" downWardmappedList="//@consumed.23" maxValue="1" minValue="0">
      <localValue xsi:type="ResourceModel:StringValue" value="0"/>
      <globalValue xsi:type="ResourceModel:IntegerValue" value="0"/>
    </item>
  </provided>
  <provided xsi:type="ResourceModel:EnumerationParameter" name="Output Enable" evalFunction="&#xD;&#xA;            function ForwardMapping()&#xD;&#xA;            {&#xD;&#xA;              var Res = SCM.getResource(&quot;bccuch01_directoutputpadenabledummy&quot;);&#xD;&#xA;              var value = SCM.getIntValue(currentResource);&#xD;&#xA;              SCM.setIntValue(Res, value);&#xD;&#xA;             }&#xD;&#xA;            function BackwardMapping()&#xD;&#xA;            {&#xD;&#xA;              var Res = SCM.getResource(&quot;bccuch01_directoutputpadenabledummy&quot;);&#xD;&#xA;              var value = SCM.getIntValue(Res);&#xD;&#xA;              SCM.setIntValue(currentResource,value);&#xD;&#xA;            }&#xD;&#xA;    " URI="http://www.infineon.com/1.0.10/app/bccuch01/5/bccuch01_erwdirectoutputpadenable" downWardmappedList="//@consumed.7" multipleSelections="true">
    <localValue xsi:type="ResourceModel:StringValue" value="-1"/>
    <globalValue xsi:type="ResourceModel:IntegerValue" value="1"/>
    <toolTipHelpDescription>Enables the Direct Output Pin and Consumes the Pin. If&#xD;
    not enabled then Port Pin is not consumed</toolTipHelpDescription>
    <item name="Enable" evalFunction="&#xD;&#xA;               function ForwardMapping()&#xD;&#xA;                {&#xD;&#xA;                  var Res = SCM.getResource(&quot;bccuch01_directoutputpadenabledummy&quot;);&#xD;&#xA;                  var value = SCM.getIntValue(currentResource);&#xD;&#xA;                  if(value == 1 || value == -1)&#xD;&#xA;                  {&#xD;&#xA;                      SCM.setIntValue(Res, 1);&#xD;&#xA;                  }&#xD;&#xA;                  else&#xD;&#xA;                  {&#xD;&#xA;                      SCM.setIntValue(Res, 0);&#xD;&#xA;                  }&#xD;&#xA;&#xD;&#xA;                }&#xD;&#xA;                function BackwardMapping()&#xD;&#xA;                {&#xD;&#xA;                  var Res = SCM.getResource(&quot;bccuch01_directoutputpadenabledummy&quot;);&#xD;&#xA;                  var value = SCM.getIntValue(Res);&#xD;&#xA;                  if(value == 1 )&#xD;&#xA;                  {&#xD;&#xA;                      SCM.setIntValue(currentResource, 1);&#xD;&#xA;                  }&#xD;&#xA;                  else {&#xD;&#xA;                      SCM.setIntValue(currentResource, 0);&#xD;&#xA;                  }&#xD;&#xA;                }&#xD;&#xA;     " URI="http://www.infineon.com/1.0.10/app/bccuch01/5/bccuch01_erwdirectoutputpadenable/0" downWardmappedList="//@consumed.7" maxValue="1" minValue="0">
      <defaultValue xsi:type="ResourceModel:IntegerValue" value="1"/>
      <localValue xsi:type="ResourceModel:StringValue" value="1"/>
      <globalValue xsi:type="ResourceModel:IntegerValue" value="1"/>
      <toolTipHelpDescription>Output Pin is enabled and consumed</toolTipHelpDescription>
    </item>
  </provided>
  <provided xsi:type="ResourceModel:EnumerationParameter" name="Output Characteristics" evalFunction="&#xD;&#xA;            function ForwardMapping()&#xD;&#xA;            {&#xD;&#xA;              var Res = SCM.getResource(&quot;bccuch01_directoutputpadchardummy&quot;);&#xD;&#xA;              var value = SCM.getIntValue(currentResource);&#xD;&#xA;              SCM.setIntValue(Res, value);&#xD;&#xA;             }&#xD;&#xA;            function BackwardMapping()&#xD;&#xA;            {&#xD;&#xA;              var Res = SCM.getResource(&quot;bccuch01_directoutputpadchardummy&quot;);&#xD;&#xA;              var value = SCM.getIntValue(Res);&#xD;&#xA;              SCM.setIntValue(currentResource,value);&#xD;&#xA;            }&#xD;&#xA;            " URI="http://www.infineon.com/1.0.10/app/bccuch01/5/bccuch01_erwdirectoutputpadchar" downWardmappedList="//@consumed.8">
    <localValue xsi:type="ResourceModel:StringValue" value="-1"/>
    <globalValue xsi:type="ResourceModel:IntegerValue" value="0"/>
    <toolTipHelpDescription>Select Pad Output characteristics for Direct Output Pin</toolTipHelpDescription>
    <item name="Push Pull" evalFunction="&#xD;&#xA;               function ForwardMapping()&#xD;&#xA;                {&#xD;&#xA;                  var Res = SCM.getResource(&quot;bccuch01_directoutputpadchardummy&quot;);&#xD;&#xA;                  var value = SCM.getIntValue(currentResource);&#xD;&#xA;                  if(value == 1 || value == -1)&#xD;&#xA;                  {&#xD;&#xA;                      SCM.setIntValue(Res, 0);&#xD;&#xA;                  }&#xD;&#xA;                }&#xD;&#xA;                function BackwardMapping()&#xD;&#xA;                {&#xD;&#xA;                  var Res = SCM.getResource(&quot;bccuch01_directoutputpadchardummy&quot;);&#xD;&#xA;                  var value = SCM.getIntValue(Res);&#xD;&#xA;                  if(value == 0 || value == -1)&#xD;&#xA;                  {&#xD;&#xA;                      SCM.setIntValue(currentResource, 1);&#xD;&#xA;                  }&#xD;&#xA;                  else {&#xD;&#xA;                      SCM.setIntValue(currentResource, 0);&#xD;&#xA;                  }&#xD;&#xA;                }&#xD;&#xA;                " URI="http://www.infineon.com/1.0.10/app/bccuch01/5/bccuch01_erwdirectoutputpadchar/0" downWardmappedList="//@consumed.8" maxValue="1" minValue="0">
      <defaultValue xsi:type="ResourceModel:IntegerValue" value="1"/>
      <localValue xsi:type="ResourceModel:StringValue" value="1"/>
      <globalValue xsi:type="ResourceModel:IntegerValue" value="1"/>
      <toolTipHelpDescription>Direct Output Pin characteristics is Push Pull</toolTipHelpDescription>
    </item>
    <item name="Open Drain" evalFunction="&#xD;&#xA;               function ForwardMapping()&#xD;&#xA;                {&#xD;&#xA;                  var Res = SCM.getResource(&quot;bccuch01_directoutputpadchardummy&quot;);&#xD;&#xA;                  var value = SCM.getIntValue(currentResource);&#xD;&#xA;                  if(value == 1)&#xD;&#xA;                  {&#xD;&#xA;                      SCM.setIntValue(Res, 1);&#xD;&#xA;                  }&#xD;&#xA;                }&#xD;&#xA;                function BackwardMapping()&#xD;&#xA;                {&#xD;&#xA;                  var Res = SCM.getResource(&quot;bccuch01_directoutputpadchardummy&quot;);&#xD;&#xA;                  var value = SCM.getIntValue(Res);&#xD;&#xA;                  if(value == 1)&#xD;&#xA;                  {&#xD;&#xA;                      SCM.setIntValue(currentResource, 1);&#xD;&#xA;                  }&#xD;&#xA;                  else {&#xD;&#xA;                      SCM.setIntValue(currentResource, 0);&#xD;&#xA;                  }&#xD;&#xA;                }&#xD;&#xA;                " URI="http://www.infineon.com/1.0.10/app/bccuch01/5/bccuch01_erwdirectoutputpadchar/1" maxValue="1" minValue="0">
      <defaultValue xsi:type="ResourceModel:IntegerValue" value="0"/>
      <localValue xsi:type="ResourceModel:StringValue" value="0"/>
      <globalValue xsi:type="ResourceModel:StringValue" value="0"/>
      <toolTipHelpDescription>Direct Output pin characteristic is Open Drain</toolTipHelpDescription>
    </item>
  </provided>
  <consumed xsi:type="ResourceModel:ProxyResource" evalFunction="function resourceCondition()&#xD;&#xA;        {&#xD;&#xA;          var Res0 = Solver.getResource(&quot;bccuch01_erwdirectoutputpadenable&quot;);&#xD;&#xA;          var OutputEnable = Solver.getIntValue(Res0);&#xD;&#xA;          if (OutputEnable == 1)&#xD;&#xA;          {&#xD;&#xA;            return true;&#xD;&#xA;          }&#xD;&#xA;          return false;&#xD;&#xA;        }" URI="http://www.infineon.com/1.0.10/app/bccuch01/5/iohw">
    <downWardmappedList xsi:type="ResourceModel:ResourceGroup" href="../../P0/P0_0.dd#//@provided.4"/>
    <requiredResource uriString="port/p/0/pad/6" uriType="LOCALTYPE"/>
  </consumed>
  <consumed xsi:type="ResourceModel:ProxyResource" URI="http://www.infineon.com/1.0.10/app/bccuch01/5/bccuch_lin_walk_time_dummy" upWardMappingList="//@provided.5 //@provided.6 //@provided.7" isSystemDefined="true">
    <localValue xsi:type="ResourceModel:IntegerValue" value="0"/>
    <globalValue xsi:type="ResourceModel:IntegerValue" value="0"/>
    <requiredResource uriString="" uriType="LOCALTYPE"/>
  </consumed>
  <consumed xsi:type="ResourceModel:ProxyResource" URI="http://www.infineon.com/1.0.10/app/bccuch01/5/bccuch_dimsel_bytoplevelapp_dummy" upWardMappingList="//@provided.14/@item.0" isSystemDefined="true">
    <requiredResource uriString="" uriType="LOCALTYPE"/>
  </consumed>
  <consumed xsi:type="ResourceModel:ProxyResource" URI="http://www.infineon.com/1.0.10/app/bccuch01/5/bccuch_lin_walk_time_actualdummy" upWardMappingList="//@provided.6" isSystemDefined="true">
    <localValue xsi:type="ResourceModel:IntegerValue" value="0"/>
    <globalValue xsi:type="ResourceModel:IntegerValue" value="0"/>
    <requiredResource uriString="" uriType="LOCALTYPE"/>
  </consumed>
  <consumed xsi:type="ResourceModel:ProxyResource" URI="http://www.infineon.com/1.0.10/app/bccuch01/5/bccuch_chconfig_linpres_dummy" upWardMappingList="//@provided.7" isSystemDefined="true">
    <localValue xsi:type="ResourceModel:IntegerValue" value="0"/>
    <globalValue xsi:type="ResourceModel:IntegerValue" value="0"/>
    <requiredResource uriString="" uriType="LOCALTYPE"/>
  </consumed>
  <consumed xsi:type="ResourceModel:ProxyResource" URI="http://www.infineon.com/1.0.10/app/bccuch01/5/bccuch01_dummyenable_at_init" upWardMappingList="//@provided.21 //@provided.21/@item.0" isSystemDefined="true">
    <localValue xsi:type="ResourceModel:IntegerValue" value="1"/>
    <globalValue xsi:type="ResourceModel:IntegerValue" value="1"/>
    <requiredResource uriString="" uriType="LOCALTYPE"/>
  </consumed>
  <consumed xsi:type="ResourceModel:ProxyResource" URI="http://www.infineon.com/1.0.10/app/bccuch01/5/bccuch_outsignalsel_bytoplevelapp_dummy" isSystemDefined="true">
    <requiredResource uriString="" uriType="LOCALTYPE"/>
  </consumed>
  <consumed xsi:type="ResourceModel:ProxyResource" URI="http://www.infineon.com/1.0.10/app/bccuch01/5/bccuch01_directoutputpadenabledummy" upWardMappingList="//@provided.26 //@provided.26/@item.0" isSystemDefined="true">
    <localValue xsi:type="ResourceModel:IntegerValue" value="1"/>
    <globalValue xsi:type="ResourceModel:IntegerValue" value="1"/>
    <requiredResource uriString="" uriType="LOCALTYPE"/>
  </consumed>
  <consumed xsi:type="ResourceModel:ProxyResource" URI="http://www.infineon.com/1.0.10/app/bccuch01/5/bccuch01_directoutputpadchardummy" upWardMappingList="//@provided.27 //@provided.27/@item.0" isSystemDefined="true">
    <localValue xsi:type="ResourceModel:IntegerValue" value="0"/>
    <globalValue xsi:type="ResourceModel:IntegerValue" value="0"/>
    <requiredResource uriString="" uriType="LOCALTYPE"/>
  </consumed>
  <consumed xsi:type="ResourceModel:ProxyResource" URI="http://www.infineon.com/1.0.10/app/bccuch01/5/bccuglobalapp">
    <downWardmappedList xsi:type="ResourceModel:App" href="../../BCCUGLOBAL/1.0.12/bccuglobal_0.app#/"/>
    <requiredResource uriString="app/bccuglobal/*" uriType="LOCALTYPE"/>
  </consumed>
  <consumed xsi:type="ResourceModel:ProxyResource" evalFunction="function resourceCondition() {&#xD;&#xA;&#x9;          var Res = Solver.getResource(&quot;bccuch_de_slelectdummy&quot;);&#xD;&#xA;&#x9;          var value = Solver.getIntValue(Res);&#xD;&#xA;&#x9;          if (value == 1) {&#xD;&#xA;&#x9;            return true; &#xD;&#xA;&#x9;          } &#xD;&#xA;&#x9;          return false;&#xD;&#xA;&#x9;        }" URI="http://www.infineon.com/1.0.10/app/bccuch01/5/bccudimapp" upWardMappingList="//@provided.14 //@provided.14/@item.0 //@provided.14/@item.1 //@provided.14/@item.2">
    <localValue xsi:type="ResourceModel:StringValue" value="DependentApp"/>
    <globalValue xsi:type="ResourceModel:StringValue" value="DependentApp"/>
    <requiredResource uriString="app/bccudim01/*" uriType="LOCALTYPE"/>
  </consumed>
  <consumed xsi:type="ResourceModel:ProxyResource" URI="http://www.infineon.com/1.0.10/app/bccuch01/5/bccuchannelhw">
    <downWardmappedList xsi:type="ResourceModel:ResourceGroup" href="../../BCCU0/BCCU0_0.dd#//@provided.95"/>
    <requiredResource uriString="peripheral/bccu/0/channel/*" uriType="LOCALTYPE"/>
  </consumed>
  <consumed xsi:type="ResourceModel:ProxyResource" URI="http://www.infineon.com/1.0.10/app/bccuch01/5/bccuch_de_slelectdummy" upWardMappingList="//@provided.14 //@provided.14/@item.0 //@provided.14/@item.1 //@provided.14/@item.2" isSystemDefined="true">
    <localValue xsi:type="ResourceModel:IntegerValue" value="2"/>
    <globalValue xsi:type="ResourceModel:IntegerValue" value="2"/>
    <requiredResource uriString="" uriType="LOCALTYPE"/>
  </consumed>
  <consumed xsi:type="ResourceModel:ProxyResource" URI="http://www.infineon.com/1.0.10/app/bccuch01/5/bccuchannelhw/in" isSystemDefined="true">
    <downWardmappedList xsi:type="ResourceModel:SignalDeclaration" href="../../BCCU0/BCCU0_0.dd#//@provided.96"/>
  </consumed>
  <consumed xsi:type="ResourceModel:ProxyResource" URI="http://www.infineon.com/1.0.10/app/bccuch01/5/iohw/pad" isSystemDefined="true">
    <downWardmappedList xsi:type="ResourceModel:SignalDeclaration" href="../../P0/P0_0.dd#//@provided.5"/>
  </consumed>
  <consumed xsi:type="ResourceModel:ProxyResource" URI="http://www.infineon.com/1.0.10/app/bccuch01/5/bccuchannelhw/dimin" isSystemDefined="true">
    <downWardmappedList xsi:type="ResourceModel:SignalDeclaration" href="../../BCCU0/BCCU0_0.dd#//@provided.97"/>
  </consumed>
  <consumed xsi:type="ResourceModel:ProxyResource" URI="http://www.infineon.com/1.0.10/app/bccuch01/5/bccuchannelhw/out" isSystemDefined="true">
    <downWardmappedList xsi:type="ResourceModel:SignalDeclaration" href="../../BCCU0/BCCU0_0.dd#//@provided.98"/>
  </consumed>
  <consumed xsi:type="ResourceModel:ProxyResource" URI="http://www.infineon.com/1.0.10/app/bccuch01/5/bccuchannelhw/ints/tchint" upWardMappingList="//@provided.8" isSystemDefined="true">
    <localValue xsi:type="ResourceModel:IntegerValue" value="15"/>
    <downWardmappedList xsi:type="ResourceModel:BitField" href="../../BCCU0/BCCU0_0.dd#//@provided.99"/>
    <globalValue xsi:type="ResourceModel:IntegerValue" value="15"/>
  </consumed>
  <consumed xsi:type="ResourceModel:ProxyResource" URI="http://www.infineon.com/1.0.10/app/bccuch01/5/bccuchannelhw/int/chint" isSystemDefined="true">
    <localValue xsi:type="ResourceModel:IntegerValue" value="0"/>
    <downWardmappedList xsi:type="ResourceModel:BitField" href="../../BCCU0/BCCU0_0.dd#//@provided.100"/>
    <globalValue xsi:type="ResourceModel:IntegerValue" value="0"/>
  </consumed>
  <consumed xsi:type="ResourceModel:ProxyResource" URI="http://www.infineon.com/1.0.10/app/bccuch01/5/bccuchannelhw/chconfig/pkth" upWardMappingList="//@provided.11" isSystemDefined="true">
    <localValue xsi:type="ResourceModel:IntegerValue" value="2"/>
    <downWardmappedList xsi:type="ResourceModel:BitField" href="../../BCCU0/BCCU0_0.dd#//@provided.101"/>
    <globalValue xsi:type="ResourceModel:IntegerValue" value="2"/>
  </consumed>
  <consumed xsi:type="ResourceModel:ProxyResource" URI="http://www.infineon.com/1.0.10/app/bccuch01/5/bccuchannelhw/chconfig/pen" upWardMappingList="//@provided.17 //@provided.17/@item.0 //@provided.23/@item.0" isSystemDefined="true">
    <localValue xsi:type="ResourceModel:IntegerValue" value="0"/>
    <downWardmappedList xsi:type="ResourceModel:BitField" href="../../BCCU0/BCCU0_0.dd#//@provided.102"/>
    <globalValue xsi:type="ResourceModel:IntegerValue" value="0"/>
  </consumed>
  <consumed xsi:type="ResourceModel:ProxyResource" URI="http://www.infineon.com/1.0.10/app/bccuch01/5/bccuchannelhw/chconfig/dsel" isSystemDefined="true">
    <localValue xsi:type="ResourceModel:IntegerValue" value="0"/>
    <downWardmappedList xsi:type="ResourceModel:BitField" href="../../BCCU0/BCCU0_0.dd#//@provided.103"/>
    <globalValue xsi:type="ResourceModel:IntegerValue" value="0"/>
  </consumed>
  <consumed xsi:type="ResourceModel:ProxyResource" URI="http://www.infineon.com/1.0.10/app/bccuch01/5/bccuchannelhw/chconfig/dbp" upWardMappingList="//@provided.22 //@provided.22/@item.0" isSystemDefined="true">
    <localValue xsi:type="ResourceModel:IntegerValue" value="1"/>
    <downWardmappedList xsi:type="ResourceModel:BitField" href="../../BCCU0/BCCU0_0.dd#//@provided.104"/>
    <globalValue xsi:type="ResourceModel:IntegerValue" value="1"/>
  </consumed>
  <consumed xsi:type="ResourceModel:ProxyResource" URI="http://www.infineon.com/1.0.10/app/bccuch01/5/bccuchannelhw/chconfig/gen" upWardMappingList="//@provided.25 //@provided.25/@item.0" isSystemDefined="true">
    <localValue xsi:type="ResourceModel:IntegerValue" value="0"/>
    <downWardmappedList xsi:type="ResourceModel:BitField" href="../../BCCU0/BCCU0_0.dd#//@provided.105"/>
    <globalValue xsi:type="ResourceModel:IntegerValue" value="0"/>
  </consumed>
  <consumed xsi:type="ResourceModel:ProxyResource" URI="http://www.infineon.com/1.0.10/app/bccuch01/5/bccuchannelhw/chconfig/wen" upWardMappingList="//@provided.24 //@provided.24/@item.0" isSystemDefined="true">
    <localValue xsi:type="ResourceModel:IntegerValue" value="0"/>
    <downWardmappedList xsi:type="ResourceModel:BitField" href="../../BCCU0/BCCU0_0.dd#//@provided.106"/>
    <globalValue xsi:type="ResourceModel:IntegerValue" value="0"/>
  </consumed>
  <consumed xsi:type="ResourceModel:ProxyResource" URI="http://www.infineon.com/1.0.10/app/bccuch01/5/bccuchannelhw/chconfig/tred" upWardMappingList="//@provided.15 //@provided.15/@item.0 //@provided.15/@item.1" isSystemDefined="true">
    <localValue xsi:type="ResourceModel:IntegerValue" value="0"/>
    <downWardmappedList xsi:type="ResourceModel:BitField" href="../../BCCU0/BCCU0_0.dd#//@provided.107"/>
    <globalValue xsi:type="ResourceModel:IntegerValue" value="0"/>
  </consumed>
  <consumed xsi:type="ResourceModel:ProxyResource" URI="http://www.infineon.com/1.0.10/app/bccuch01/5/bccuchannelhw/chconfig/enft" upWardMappingList="//@provided.23 //@provided.23/@item.0" isSystemDefined="true">
    <localValue xsi:type="ResourceModel:IntegerValue" value="0"/>
    <downWardmappedList xsi:type="ResourceModel:BitField" href="../../BCCU0/BCCU0_0.dd#//@provided.108"/>
    <globalValue xsi:type="ResourceModel:IntegerValue" value="0"/>
  </consumed>
  <consumed xsi:type="ResourceModel:ProxyResource" URI="http://www.infineon.com/1.0.10/app/bccuch01/5/bccuchannelhw/chconfig/linpres" upWardMappingList="//@provided.5" isSystemDefined="true">
    <localValue xsi:type="ResourceModel:IntegerValue" value="0"/>
    <downWardmappedList xsi:type="ResourceModel:BitField" href="../../BCCU0/BCCU0_0.dd#//@provided.109"/>
    <globalValue xsi:type="ResourceModel:IntegerValue" value="0"/>
  </consumed>
  <consumed xsi:type="ResourceModel:ProxyResource" URI="http://www.infineon.com/1.0.10/app/bccuch01/5/bccuchannelhw/chocon/chop" upWardMappingList="//@provided.16 //@provided.16/@item.0 //@provided.16/@item.1" isSystemDefined="true">
    <localValue xsi:type="ResourceModel:IntegerValue" value="0"/>
    <globalValue xsi:type="ResourceModel:IntegerValue" value="0"/>
  </consumed>
  <consumed xsi:type="ResourceModel:ProxyResource" URI="http://www.infineon.com/1.0.10/app/bccuch01/5/bccuchannelhw/chocon/chtpe" upWardMappingList="//@provided.18 //@provided.18/@item.0" isSystemDefined="true">
    <localValue xsi:type="ResourceModel:IntegerValue" value="0"/>
    <globalValue xsi:type="ResourceModel:IntegerValue" value="0"/>
  </consumed>
  <consumed xsi:type="ResourceModel:ProxyResource" URI="http://www.infineon.com/1.0.10/app/bccuch01/5/bccuchannelhw/chtrig/tos" upWardMappingList="//@provided.20 //@provided.20/@item.0 //@provided.20/@item.1" isSystemDefined="true">
    <localValue xsi:type="ResourceModel:IntegerValue" value="0"/>
    <globalValue xsi:type="ResourceModel:IntegerValue" value="0"/>
  </consumed>
  <consumed xsi:type="ResourceModel:ProxyResource" URI="http://www.infineon.com/1.0.10/app/bccuch01/5/bccuchannelhw/chtrig/chte" upWardMappingList="//@provided.19 //@provided.19/@item.0" isSystemDefined="true">
    <localValue xsi:type="ResourceModel:IntegerValue" value="0"/>
    <globalValue xsi:type="ResourceModel:IntegerValue" value="0"/>
  </consumed>
  <consumed xsi:type="ResourceModel:ProxyResource" URI="http://www.infineon.com/1.0.10/app/bccuch01/5/bccuchannelhw/pkcmp/oncmp" upWardMappingList="//@provided.9" isSystemDefined="true">
    <localValue xsi:type="ResourceModel:IntegerValue" value="27"/>
    <downWardmappedList xsi:type="ResourceModel:BitField" href="../../BCCU0/BCCU0_0.dd#//@provided.110"/>
    <globalValue xsi:type="ResourceModel:IntegerValue" value="27"/>
  </consumed>
  <consumed xsi:type="ResourceModel:ProxyResource" URI="http://www.infineon.com/1.0.10/app/bccuch01/5/bccuchannelhw/pkcmp/offcmp" upWardMappingList="//@provided.10" isSystemDefined="true">
    <localValue xsi:type="ResourceModel:IntegerValue" value="ff"/>
    <downWardmappedList xsi:type="ResourceModel:BitField" href="../../BCCU0/BCCU0_0.dd#//@provided.111"/>
    <globalValue xsi:type="ResourceModel:IntegerValue" value="ff"/>
  </consumed>
  <consumed xsi:type="ResourceModel:ProxyResource" URI="http://www.infineon.com/1.0.10/app/bccuch01/5/bccuchannelhw/pkcntr/oncntval" isSystemDefined="true">
    <localValue xsi:type="ResourceModel:IntegerValue" value="0"/>
    <downWardmappedList xsi:type="ResourceModel:BitField" href="../../BCCU0/BCCU0_0.dd#//@provided.112"/>
    <globalValue xsi:type="ResourceModel:IntegerValue" value="0"/>
  </consumed>
  <consumed xsi:type="ResourceModel:ProxyResource" URI="http://www.infineon.com/1.0.10/app/bccuch01/5/bccuchannelhw/pkcntr/offcntval" isSystemDefined="true">
    <localValue xsi:type="ResourceModel:IntegerValue" value="0"/>
    <downWardmappedList xsi:type="ResourceModel:BitField" href="../../BCCU0/BCCU0_0.dd#//@provided.113"/>
    <globalValue xsi:type="ResourceModel:IntegerValue" value="0"/>
  </consumed>
  <consumed xsi:type="ResourceModel:ProxyResource" URI="http://www.infineon.com/1.0.10/app/bccuch01/5/bccudimapp/bccuch_dls_tdlev" isSystemDefined="true">
    <localValue xsi:type="ResourceModel:IntegerValue" value="0"/>
    <globalValue xsi:type="ResourceModel:IntegerValue" value="0"/>
  </consumed>
  <consumed xsi:type="ResourceModel:ProxyResource" URI="http://www.infineon.com/1.0.10/app/bccuch01/5/bccudimapp/enable_at_init" isSystemDefined="true">
    <localValue xsi:type="ResourceModel:IntegerValue" value="0"/>
    <globalValue xsi:type="ResourceModel:IntegerValue" value="0"/>
  </consumed>
  <consumed xsi:type="ResourceModel:ProxyResource" URI="http://www.infineon.com/1.0.10/app/bccuch01/5/bccuglobalapp/bccuglobal_realfclk" upWardMappingList="//@provided.5 //@provided.6 //@provided.7" isSystemDefined="true">
    <localValue xsi:type="ResourceModel:IntegerValue" value="c3500"/>
    <downWardmappedList xsi:type="ResourceModel:IntegerParameter" href="../../BCCUGLOBAL/1.0.12/bccuglobal_0.app#//@provided.9"/>
    <globalValue xsi:type="ResourceModel:IntegerValue" value="c3500"/>
  </consumed>
  <consumed xsi:type="ResourceModel:ProxyResource" URI="http://www.infineon.com/1.0.10/app/bccuch01/5/bccuglobalapp/bccuglobal_maxbitno" isSystemDefined="true">
    <localValue xsi:type="ResourceModel:IntegerValue" value="c8"/>
    <downWardmappedList xsi:type="ResourceModel:IntegerParameter" href="../../BCCUGLOBAL/1.0.12/bccuglobal_0.app#//@provided.19"/>
    <globalValue xsi:type="ResourceModel:IntegerValue" value="c8"/>
  </consumed>
  <propertyConstants name="uridevice" value="device/">
    <propertyConstants name="uri_bccuglobal" value="app/bccuglobal/">
      <propertyConstants name="uri_bccudimapp" value="app/bccudim01/">
        <propertyConstants name="uri_bccuchannel" value="peripheral/bccu/0/channel"/>
      </propertyConstants>
    </propertyConstants>
  </propertyConstants>
  <categoryDescription description="This app configures the Channel registers of the Brightness and Color Control&#xA; Unit (BCCU). It also provides dynamic APIs to high level &#xA;apps such as DALI, White Lamp, Color Lamp (RBG, RBGWAF)." name="Channel Configuration"/>
  <manifestInfo version="1.0.10">
    <keywords>Channel</keywords>
    <keywords>BCCU</keywords>
    <keywords>Lighting</keywords>
    <keywords>Dimming</keywords>
    <properties xsi:type="ResourceModel:AppProperties_1_0" initProvider="true" isIOApp="true"/>
  </manifestInfo>
  <datagenerate fileName="BCCUCH01.h" fileType="HFILE" templateFileName="BCCUCH01h.hdt" templateEngine="NONE" fileAction="COPY"/>
  <datagenerate fileName="BCCUCH01.c" templateFileName="BCCUCH01c.cdt" templateEngine="NONE" fileAction="COPY"/>
  <datagenerate fileName="BCCUCH01_Conf.c" templateFileName="BCCUCH01_Confc.jet"/>
  <datagenerate fileName="BCCUCH01_Conf.h" fileType="HFILE" templateFileName="BCCUCH01_Confh.jet"/>
  <datagenerate fileName="BCCUCH01_Extern.h" fileType="HFILE" templateFileName="BCCUCH01_Externh.jet"/>
  <connections sourceSignal="app/bccuch01/5/bccuch01_out_vs" targetSignal="app/bccuch01/5/bccuch01_pad_vs"/>
  <connections sourceSignal="app/bccuch01/5/bccudimapp/bccudim01_dimout_vs" targetSignal="app/bccuch01/5/bccuch01_dimin_vs" constraintFunction="&#xD;&#xA;          function resourceCondition(){&#xD;&#xA;              var Res = Solver.getResource(&quot;bccuch_de_slelectdummy&quot;);&#xD;&#xA;              var value = Solver.getIntValue(Res);&#xD;&#xA;              if (value == 1 ) {&#xD;&#xA;              return true;&#xD;&#xA;              }&#xD;&#xA;              return false;&#xD;&#xA;          }&#xD;&#xA;        "/>
  <connections sourceSignal="app/bccuch01/5/bccuglobalapp/bccuglobal_globdim_vs" targetSignal="app/bccuch01/5/bccuch01_dimin_vs" constraintFunction="&#xD;&#xA;          function resourceCondition(){&#xD;&#xA;              var Res = Solver.getResource(&quot;bccuch_de_slelectdummy&quot;);&#xD;&#xA;              var value = Solver.getIntValue(Res);&#xD;&#xA;              if (value == 2) {&#xD;&#xA;              return true;&#xD;&#xA;              }&#xD;&#xA;              return false;&#xD;&#xA;          }&#xD;&#xA;        "/>
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
