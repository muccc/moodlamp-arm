<?xml version="1.0" encoding="ASCII"?>
<ResourceModel:App xmi:version="2.0" xmlns:xmi="http://www.omg.org/XMI" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xmlns:ResourceModel="http://www.infineon.com/Davex/Resource.ecore" name="COLORLAMP01" description="Creates a virtual lamp with up to 6 channels by &#xA;consuming up to 6 BCCUCH01 apps and optionally 1 BCCUDIM01 app. &#xA;The 6 channels are Red, Green, Blue, White, Amber and Freecolour.  &#xA;The app provides color and dimming level changing functions for the lamp." descriptionURL="/doc/html/group___c_o_l_o_r_l_a_m_p01_app.html" URI="http://www.infineon.com/1.0.7/app/colorlamp01/0">
  <provided xsi:type="ResourceModel:IntegerParameter" name="Consumed Apps Configuration (Don't add this into UI Model)" evalFunction="&#xD;&#xA;                    function ForwardMapping(){ &#xD;&#xA;&#x9;&#x9;             var Res1 = SCM.getResource(&quot;globalapp/bccuglobal_bclksel&quot;);&#xD;&#xA;&#x9;&#x9;             SCM.setIntValue(Res1,0);&#xD;&#xA;&#x9;                  var RedlmpRes =  SCM.getResource(&quot;redlmpchapp/bccuch_de_slelect&quot;);&#xD;&#xA;&#x9;                  var GreenlmpRes =  SCM.getResource(&quot;greenlmpchapp/bccuch_de_slelect&quot;);&#xD;&#xA;&#x9;                  var BluelmpRes =  SCM.getResource(&quot;bluelmpchapp/bccuch_de_slelect&quot;);&#xD;&#xA;&#x9;                  var WhitelmpRes =  SCM.getResource(&quot;whitelmpchapp/bccuch_de_slelect&quot;);&#xD;&#xA;&#x9;                  var AmberlmpRes =  SCM.getResource(&quot;amberlmpchapp/bccuch_de_slelect&quot;);&#xD;&#xA;&#x9;                  var FreelmpRes =  SCM.getResource(&quot;freelmpchapp/bccuch_de_slelect&quot;);&#xD;&#xA;&#x9;                  SCM.setIntValue(RedlmpRes,0);&#xD;&#xA;&#x9;                  SCM.setIntValue(GreenlmpRes,0);&#xD;&#xA;&#x9;                  SCM.setIntValue(BluelmpRes,0);&#xD;&#xA;&#x9;                  SCM.setIntValue(WhitelmpRes,0);&#xD;&#xA;&#x9;                  SCM.setIntValue(AmberlmpRes,0);&#xD;&#xA;&#x9;                  SCM.setIntValue(FreelmpRes,0);&#xD;&#xA;&#x9;                  var RedlmpdimselRes =  SCM.getResource(&quot;redlmpchapp/bccuch_dimsel_bytoplevelapp_dummy&quot;);&#xD;&#xA;&#x9;                  var GreenlmpdimselRes =  SCM.getResource(&quot;greenlmpchapp/bccuch_dimsel_bytoplevelapp_dummy&quot;);&#xD;&#xA;&#x9;                  var BluelmpdimselRes =  SCM.getResource(&quot;bluelmpchapp/bccuch_dimsel_bytoplevelapp_dummy&quot;);&#xD;&#xA;&#x9;                  var WhitelmpdimselRes =  SCM.getResource(&quot;whitelmpchapp/bccuch_dimsel_bytoplevelapp_dummy&quot;);&#xD;&#xA;&#x9;                  var AmberlmpdimselRes =  SCM.getResource(&quot;amberlmpchapp/bccuch_dimsel_bytoplevelapp_dummy&quot;);&#xD;&#xA;&#x9;                  var FreelmpdimselRes =  SCM.getResource(&quot;freelmpchapp/bccuch_dimsel_bytoplevelapp_dummy&quot;);&#xD;&#xA;&#x9;                  SCM.setIntValue(RedlmpdimselRes,1);&#xD;&#xA;&#x9;                  SCM.setIntValue(GreenlmpdimselRes,1);&#xD;&#xA;&#x9;                  SCM.setIntValue(BluelmpdimselRes,1);&#xD;&#xA;&#x9;                  SCM.setIntValue(WhitelmpdimselRes,1);&#xD;&#xA;&#x9;                  SCM.setIntValue(AmberlmpdimselRes,1);&#xD;&#xA;&#x9;                  SCM.setIntValue(FreelmpdimselRes,1);&#xD;&#xA;&#x9;                  var chinstcntres =  SCM.getResource(&quot;colorlamp01_chinstcntdummy&quot;);&#xD;&#xA;                    var chinstcntval = SCM.getInstanceCount(&quot;app/bccuch01/&quot;);&#xD;&#xA;                    SCM.setIntValue(chinstcntres,chinstcntval);&#xD;&#xA;                    }&#xD;&#xA;                    function BackwardMapping(){   &#xD;&#xA;            &#x9;&#x9;SCM.setIntValue(currentResource,0);    &#xD;&#xA;                    }&#xD;&#xA;                    " URI="http://www.infineon.com/1.0.7/app/colorlamp01/0/colorlamp01_consappsconfig" downWardmappedList="//@consumed.72 //@consumed.18 //@consumed.27 //@consumed.36 //@consumed.45 //@consumed.54 //@consumed.63 //@consumed.75 //@consumed.76 //@consumed.77 //@consumed.78 //@consumed.79 //@consumed.80 //@consumed.17" maxValue="0" minValue="0">
    <defaultValue xsi:type="ResourceModel:IntegerValue" value="0"/>
    <localValue xsi:type="ResourceModel:StringValue" value="0"/>
    <globalValue xsi:type="ResourceModel:IntegerValue" value="0"/>
    <toolTipHelpDescription>Don't use this</toolTipHelpDescription>
  </provided>
  <provided xsi:type="ResourceModel:EnumerationParameter" name="Red" evalFunction="&#xD;&#xA;        function ForwardMapping()&#xD;&#xA;        {&#xD;&#xA;        var value = SCM.getIntValue(currentResource);&#xD;&#xA;        var Res = SCM.getResource(&quot;colorlamp01_redlampseldummy&quot;);&#xD;&#xA;        SCM.setIntValue(Res,value);        &#xD;&#xA;&#x9;&#x9;var dep = &quot;DependentApp&quot;;&#xD;&#xA;&#x9;&#x9;var DepRes0 = SCM.getResource(&quot;redlmpchapp&quot;); &#xD;&#xA;&#x9;&#x9;SCM.setStringValue(DepRes0,dep);&#xD;&#xA;        }&#xD;&#xA;        function BackwardMapping()&#xD;&#xA;        {&#xD;&#xA;        var Res = SCM.getResource(&quot;colorlamp01_redlampseldummy&quot;);&#xD;&#xA;        var value = SCM.getIntValue(Res);&#xD;&#xA;        SCM.setIntValue(currentResource,value);&#xD;&#xA;        }&#xD;&#xA;        " URI="http://www.infineon.com/1.0.7/app/colorlamp01/0/colorlamp01_redlampsel" downWardmappedList="//@consumed.10 //@consumed.2" multipleSelections="true">
    <defaultValue xsi:type="ResourceModel:IntegerValue" value="1"/>
    <localValue xsi:type="ResourceModel:StringValue" value="1"/>
    <globalValue xsi:type="ResourceModel:IntegerValue" value="1"/>
    <toolTipHelpDescription>Red Lamp Selection</toolTipHelpDescription>
    <item name="Red" evalFunction="&#xD;&#xA;              function ForwardMapping()&#xD;&#xA;              {&#xD;&#xA;                var value = SCM.getIntValue(currentResource);&#xD;&#xA;                var Res = SCM.getResource(&quot;colorlamp01_redlampseldummy&quot;);&#xD;&#xA;                if (value == 1 ) {&#xD;&#xA;                  SCM.setIntValue(Res,1);       &#xD;&#xA;                } else if (value === 0) {&#xD;&#xA;                  SCM.setIntValue(Res,0);&#xD;&#xA;                }             &#xD;&#xA;&#x9;&#x9;&#x9;&#x9;var dep = &quot;DependentApp&quot;;&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;var DepRes0 = SCM.getResource(&quot;redlmpchapp&quot;); &#xD;&#xA;&#x9;&#x9;&#x9;&#x9;SCM.setStringValue(DepRes0,dep);&#xD;&#xA;              }&#xD;&#xA;              function BackwardMapping()&#xD;&#xA;              {&#xD;&#xA;                var Res = SCM.getResource(&quot;colorlamp01_redlampseldummy&quot;); &#xD;&#xA;                var value = SCM.getIntValue(Res); &#xD;&#xA;                if (value === 1 ) { &#xD;&#xA;                  SCM.setIntValue(currentResource,1);&#xD;&#xA;                } else if (value == -1 ){&#xD;&#xA;                  SCM.setIntValue(currentResource,0);&#xD;&#xA;                }&#xD;&#xA;                else {&#xD;&#xA;                  SCM.setIntValue(currentResource,0);&#xD;&#xA;                }&#xD;&#xA;              }&#xD;&#xA;            " URI="http://www.infineon.com/1.0.7/app/colorlamp01/0/colorlamp01_redlampsel/1" downWardmappedList="//@consumed.10 //@consumed.2" maxValue="1" minValue="0">
      <defaultValue xsi:type="ResourceModel:IntegerValue" value="1"/>
      <localValue xsi:type="ResourceModel:StringValue" value="1"/>
      <globalValue xsi:type="ResourceModel:IntegerValue" value="1"/>
      <toolTipHelpDescription>Red Lamp</toolTipHelpDescription>
    </item>
  </provided>
  <provided xsi:type="ResourceModel:EnumerationParameter" name="Green" evalFunction="&#xD;&#xA;        function ForwardMapping()&#xD;&#xA;        {&#xD;&#xA;        var value = SCM.getIntValue(currentResource);&#xD;&#xA;        var Res = SCM.getResource(&quot;colorlamp01_greenlampseldummy&quot;);&#xD;&#xA;        SCM.setIntValue(Res,value);        &#xD;&#xA;&#x9;&#x9;var dep = &quot;DependentApp&quot;;&#xD;&#xA;&#x9;&#x9;var DepRes0 = SCM.getResource(&quot;greenlmpchapp&quot;); &#xD;&#xA;&#x9;&#x9;SCM.setStringValue(DepRes0,dep);&#xD;&#xA;        }&#xD;&#xA;        function BackwardMapping()&#xD;&#xA;        {&#xD;&#xA;        var Res = SCM.getResource(&quot;colorlamp01_greenlampseldummy&quot;);&#xD;&#xA;        var value = SCM.getIntValue(Res);&#xD;&#xA;        SCM.setIntValue(currentResource,value);&#xD;&#xA;        }&#xD;&#xA;        " URI="http://www.infineon.com/1.0.7/app/colorlamp01/0/colorlamp01_greenlampsel" downWardmappedList="//@consumed.11 //@consumed.3" multipleSelections="true">
    <defaultValue xsi:type="ResourceModel:IntegerValue" value="1"/>
    <localValue xsi:type="ResourceModel:StringValue" value="1"/>
    <globalValue xsi:type="ResourceModel:IntegerValue" value="1"/>
    <toolTipHelpDescription>Green Lamp Selection</toolTipHelpDescription>
    <item name="Green" evalFunction="&#xD;&#xA;              function ForwardMapping()&#xD;&#xA;              {&#xD;&#xA;                var value = SCM.getIntValue(currentResource);&#xD;&#xA;                var Res = SCM.getResource(&quot;colorlamp01_greenlampseldummy&quot;);&#xD;&#xA;                if (value == 1 ) {&#xD;&#xA;                  SCM.setIntValue(Res,1);       &#xD;&#xA;                } else if (value === 0) {&#xD;&#xA;                  SCM.setIntValue(Res,0);&#xD;&#xA;                }             &#xD;&#xA;&#x9;&#x9;&#x9;&#x9;var dep = &quot;DependentApp&quot;;&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;var DepRes0 = SCM.getResource(&quot;greenlmpchapp&quot;); &#xD;&#xA;&#x9;&#x9;&#x9;&#x9;SCM.setStringValue(DepRes0,dep);&#xD;&#xA;              }&#xD;&#xA;              function BackwardMapping()&#xD;&#xA;              {&#xD;&#xA;                var Res = SCM.getResource(&quot;colorlamp01_greenlampseldummy&quot;); &#xD;&#xA;                var value = SCM.getIntValue(Res); &#xD;&#xA;                if (value === 1 ) { &#xD;&#xA;                  SCM.setIntValue(currentResource,1);&#xD;&#xA;                } else if (value == -1 ){&#xD;&#xA;                  SCM.setIntValue(currentResource,0);&#xD;&#xA;                }&#xD;&#xA;                else {&#xD;&#xA;                  SCM.setIntValue(currentResource,0);&#xD;&#xA;                }&#xD;&#xA;              }&#xD;&#xA;            " URI="http://www.infineon.com/1.0.7/app/colorlamp01/0/colorlamp01_greenlampsel/1" downWardmappedList="//@consumed.11 //@consumed.3" maxValue="1" minValue="0">
      <defaultValue xsi:type="ResourceModel:IntegerValue" value="1"/>
      <localValue xsi:type="ResourceModel:StringValue" value="1"/>
      <globalValue xsi:type="ResourceModel:IntegerValue" value="1"/>
      <toolTipHelpDescription>Green Lamp</toolTipHelpDescription>
    </item>
  </provided>
  <provided xsi:type="ResourceModel:EnumerationParameter" name="Blue" evalFunction="&#xD;&#xA;        function ForwardMapping()&#xD;&#xA;        {&#xD;&#xA;        var value = SCM.getIntValue(currentResource);&#xD;&#xA;        var Res = SCM.getResource(&quot;colorlamp01_bluelampseldummy&quot;);&#xD;&#xA;        SCM.setIntValue(Res,value);        &#xD;&#xA;&#x9;&#x9;var dep = &quot;DependentApp&quot;;&#xD;&#xA;&#x9;&#x9;var DepRes0 = SCM.getResource(&quot;bluelmpchapp&quot;); &#xD;&#xA;&#x9;&#x9;SCM.setStringValue(DepRes0,dep);&#xD;&#xA;        }&#xD;&#xA;        function BackwardMapping()&#xD;&#xA;        {&#xD;&#xA;        var Res = SCM.getResource(&quot;colorlamp01_bluelampseldummy&quot;);&#xD;&#xA;        var value = SCM.getIntValue(Res);&#xD;&#xA;        SCM.setIntValue(currentResource,value);&#xD;&#xA;        }&#xD;&#xA;        " URI="http://www.infineon.com/1.0.7/app/colorlamp01/0/colorlamp01_bluelampsel" downWardmappedList="//@consumed.12 //@consumed.4" multipleSelections="true">
    <defaultValue xsi:type="ResourceModel:IntegerValue" value="1"/>
    <localValue xsi:type="ResourceModel:StringValue" value="1"/>
    <globalValue xsi:type="ResourceModel:IntegerValue" value="1"/>
    <toolTipHelpDescription>Blue Lamp Selection</toolTipHelpDescription>
    <item name="Blue" evalFunction="&#xD;&#xA;              function ForwardMapping()&#xD;&#xA;              {&#xD;&#xA;                var value = SCM.getIntValue(currentResource);&#xD;&#xA;                var Res = SCM.getResource(&quot;colorlamp01_bluelampseldummy&quot;);&#xD;&#xA;                if (value == 1 ) {&#xD;&#xA;                  SCM.setIntValue(Res,1);       &#xD;&#xA;                } else if (value === 0) {&#xD;&#xA;                  SCM.setIntValue(Res,0);&#xD;&#xA;                }             &#xD;&#xA;&#x9;&#x9;&#x9;&#x9;var dep = &quot;DependentApp&quot;;&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;var DepRes0 = SCM.getResource(&quot;bluelmpchapp&quot;);&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;SCM.setStringValue(DepRes0,dep);&#xD;&#xA;              }&#xD;&#xA;              function BackwardMapping()&#xD;&#xA;              {&#xD;&#xA;                var Res = SCM.getResource(&quot;colorlamp01_bluelampseldummy&quot;); &#xD;&#xA;                var value = SCM.getIntValue(Res); &#xD;&#xA;                if (value === 1 ) { &#xD;&#xA;                  SCM.setIntValue(currentResource,1);&#xD;&#xA;                } else if (value == -1 ){&#xD;&#xA;                  SCM.setIntValue(currentResource,0);&#xD;&#xA;                }&#xD;&#xA;                else {&#xD;&#xA;                  SCM.setIntValue(currentResource,0);&#xD;&#xA;                }&#xD;&#xA;              }&#xD;&#xA;            " URI="http://www.infineon.com/1.0.7/app/colorlamp01/0/colorlamp01_bluelampsel/1" downWardmappedList="//@consumed.12 //@consumed.4" maxValue="1" minValue="0">
      <defaultValue xsi:type="ResourceModel:IntegerValue" value="1"/>
      <localValue xsi:type="ResourceModel:StringValue" value="1"/>
      <globalValue xsi:type="ResourceModel:IntegerValue" value="1"/>
      <toolTipHelpDescription>Blue Lamp</toolTipHelpDescription>
    </item>
  </provided>
  <provided xsi:type="ResourceModel:EnumerationParameter" name="White" evalFunction="&#xD;&#xA;        function ForwardMapping()&#xD;&#xA;        {&#xD;&#xA;        var value = SCM.getIntValue(currentResource);&#xD;&#xA;        var Res = SCM.getResource(&quot;colorlamp01_whitelampseldummy&quot;);&#xD;&#xA;        SCM.setIntValue(Res,value);        &#xD;&#xA;&#x9;&#x9;var dep = &quot;DependentApp&quot;;&#xD;&#xA;&#x9;&#x9;var DepRes0 = SCM.getResource(&quot;whitelmpchapp&quot;); &#xD;&#xA;&#x9;&#x9;SCM.setStringValue(DepRes0,dep);&#xD;&#xA;        }&#xD;&#xA;        function BackwardMapping()&#xD;&#xA;        {&#xD;&#xA;        var Res = SCM.getResource(&quot;colorlamp01_whitelampseldummy&quot;);&#xD;&#xA;        var value = SCM.getIntValue(Res);&#xD;&#xA;        SCM.setIntValue(currentResource,value);&#xD;&#xA;        }&#xD;&#xA;        " URI="http://www.infineon.com/1.0.7/app/colorlamp01/0/colorlamp01_whitelampsel" downWardmappedList="//@consumed.13 //@consumed.5" multipleSelections="true">
    <defaultValue xsi:type="ResourceModel:IntegerValue" value="0"/>
    <localValue xsi:type="ResourceModel:StringValue" value="0"/>
    <globalValue xsi:type="ResourceModel:IntegerValue" value="0"/>
    <toolTipHelpDescription>White Lamp Selection</toolTipHelpDescription>
    <item name="White" evalFunction="&#xD;&#xA;              function ForwardMapping()&#xD;&#xA;              {&#xD;&#xA;                var value = SCM.getIntValue(currentResource);&#xD;&#xA;                var Res = SCM.getResource(&quot;colorlamp01_whitelampseldummy&quot;);&#xD;&#xA;                if (value == 1 ) {&#xD;&#xA;                  SCM.setIntValue(Res,1);       &#xD;&#xA;                } else if (value === 0) {&#xD;&#xA;                  SCM.setIntValue(Res,0);&#xD;&#xA;                }             &#xD;&#xA;&#x9;&#x9;&#x9;&#x9;var dep = &quot;DependentApp&quot;;&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;var DepRes0 = SCM.getResource(&quot;whitelmpchapp&quot;); &#xD;&#xA;&#x9;&#x9;&#x9;&#x9;SCM.setStringValue(DepRes0,dep);&#xD;&#xA;              }&#xD;&#xA;              function BackwardMapping()&#xD;&#xA;              {&#xD;&#xA;                var Res = SCM.getResource(&quot;colorlamp01_whitelampseldummy&quot;); &#xD;&#xA;                var value = SCM.getIntValue(Res); &#xD;&#xA;                if (value === 1 ) { &#xD;&#xA;                  SCM.setIntValue(currentResource,1);&#xD;&#xA;                } else if (value == -1 ){&#xD;&#xA;                  SCM.setIntValue(currentResource,0);&#xD;&#xA;                }&#xD;&#xA;                else {&#xD;&#xA;                  SCM.setIntValue(currentResource,0);&#xD;&#xA;                }&#xD;&#xA;              }&#xD;&#xA;            " URI="http://www.infineon.com/1.0.7/app/colorlamp01/0/colorlamp01_whitelampsel/1" downWardmappedList="//@consumed.13 //@consumed.5" maxValue="1" minValue="0">
      <defaultValue xsi:type="ResourceModel:IntegerValue" value="0"/>
      <localValue xsi:type="ResourceModel:StringValue" value="0"/>
      <globalValue xsi:type="ResourceModel:IntegerValue" value="0"/>
      <toolTipHelpDescription>White Lamp</toolTipHelpDescription>
    </item>
  </provided>
  <provided xsi:type="ResourceModel:EnumerationParameter" name="Amber" evalFunction="&#xD;&#xA;        function ForwardMapping()&#xD;&#xA;        {&#xD;&#xA;        var value = SCM.getIntValue(currentResource);&#xD;&#xA;        var Res = SCM.getResource(&quot;colorlamp01_amberlampseldummy&quot;);&#xD;&#xA;        SCM.setIntValue(Res,value);        &#xD;&#xA;&#x9;&#x9;var dep = &quot;DependentApp&quot;;&#xD;&#xA;&#x9;&#x9;var DepRes0 = SCM.getResource(&quot;amberlmpchapp&quot;); &#xD;&#xA;&#x9;&#x9;SCM.setStringValue(DepRes0,dep);&#xD;&#xA;        }&#xD;&#xA;        function BackwardMapping()&#xD;&#xA;        {&#xD;&#xA;        var Res = SCM.getResource(&quot;colorlamp01_amberlampseldummy&quot;);&#xD;&#xA;        var value = SCM.getIntValue(Res);&#xD;&#xA;        SCM.setIntValue(currentResource,value);&#xD;&#xA;        }&#xD;&#xA;        " URI="http://www.infineon.com/1.0.7/app/colorlamp01/0/colorlamp01_amberlampsel" downWardmappedList="//@consumed.14 //@consumed.6" multipleSelections="true">
    <defaultValue xsi:type="ResourceModel:IntegerValue" value="0"/>
    <localValue xsi:type="ResourceModel:StringValue" value="0"/>
    <globalValue xsi:type="ResourceModel:IntegerValue" value="0"/>
    <toolTipHelpDescription>Amber Lamp Selection</toolTipHelpDescription>
    <item name="Amber" evalFunction="&#xD;&#xA;              function ForwardMapping()&#xD;&#xA;              {&#xD;&#xA;                var value = SCM.getIntValue(currentResource);&#xD;&#xA;                var Res = SCM.getResource(&quot;colorlamp01_amberlampseldummy&quot;);&#xD;&#xA;                if (value == 1 ) {&#xD;&#xA;                  SCM.setIntValue(Res,1);       &#xD;&#xA;                } else if (value === 0) {&#xD;&#xA;                  SCM.setIntValue(Res,0);&#xD;&#xA;                }             &#xD;&#xA;&#x9;&#x9;&#x9;&#x9;var dep = &quot;DependentApp&quot;;&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;var DepRes0 = SCM.getResource(&quot;amberlmpchapp&quot;);&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;SCM.setStringValue(DepRes0,dep); &#xD;&#xA;              }&#xD;&#xA;              function BackwardMapping()&#xD;&#xA;              {&#xD;&#xA;                var Res = SCM.getResource(&quot;colorlamp01_amberlampseldummy&quot;); &#xD;&#xA;                var value = SCM.getIntValue(Res); &#xD;&#xA;                if (value === 1 ) { &#xD;&#xA;                  SCM.setIntValue(currentResource,1);&#xD;&#xA;                } else if (value == -1 ){&#xD;&#xA;                  SCM.setIntValue(currentResource,0);&#xD;&#xA;                }&#xD;&#xA;                else {&#xD;&#xA;                  SCM.setIntValue(currentResource,0);&#xD;&#xA;                }&#xD;&#xA;              }&#xD;&#xA;            " URI="http://www.infineon.com/1.0.7/app/colorlamp01/0/colorlamp01_amberlampsel/1" downWardmappedList="//@consumed.14 //@consumed.6" maxValue="1" minValue="0">
      <defaultValue xsi:type="ResourceModel:IntegerValue" value="0"/>
      <localValue xsi:type="ResourceModel:StringValue" value="0"/>
      <globalValue xsi:type="ResourceModel:IntegerValue" value="0"/>
      <toolTipHelpDescription>Amber Lamp</toolTipHelpDescription>
    </item>
  </provided>
  <provided xsi:type="ResourceModel:EnumerationParameter" name="Free" evalFunction="&#xD;&#xA;        function ForwardMapping()&#xD;&#xA;        {&#xD;&#xA;        var value = SCM.getIntValue(currentResource);&#xD;&#xA;        var Res = SCM.getResource(&quot;colorlamp01_freelampseldummy&quot;);&#xD;&#xA;        SCM.setIntValue(Res,value);        &#xD;&#xA;&#x9;&#x9;var dep = &quot;DependentApp&quot;;&#xD;&#xA;&#x9;&#x9;var DepRes0 = SCM.getResource(&quot;freelmpchapp&quot;); &#xD;&#xA;&#x9;&#x9;SCM.setStringValue(DepRes0,dep);&#xD;&#xA;        }&#xD;&#xA;        function BackwardMapping()&#xD;&#xA;        {&#xD;&#xA;        var Res = SCM.getResource(&quot;colorlamp01_freelampseldummy&quot;);&#xD;&#xA;        var value = SCM.getIntValue(Res);&#xD;&#xA;        SCM.setIntValue(currentResource,value);&#xD;&#xA;        }&#xD;&#xA;        " URI="http://www.infineon.com/1.0.7/app/colorlamp01/0/colorlamp01_freelampsel" downWardmappedList="//@consumed.15 //@consumed.7" multipleSelections="true">
    <defaultValue xsi:type="ResourceModel:IntegerValue" value="1"/>
    <localValue xsi:type="ResourceModel:StringValue" value="1"/>
    <globalValue xsi:type="ResourceModel:IntegerValue" value="0"/>
    <toolTipHelpDescription>Free Lamp Selection</toolTipHelpDescription>
    <item name="Free" evalFunction="&#xD;&#xA;              function ForwardMapping()&#xD;&#xA;              {&#xD;&#xA;                var value = SCM.getIntValue(currentResource);&#xD;&#xA;                var Res = SCM.getResource(&quot;colorlamp01_freelampseldummy&quot;);&#xD;&#xA;                if (value == 1 ) {&#xD;&#xA;                  SCM.setIntValue(Res,1);       &#xD;&#xA;                } else if (value === 0) {&#xD;&#xA;                  SCM.setIntValue(Res,0);&#xD;&#xA;                }             &#xD;&#xA;&#x9;&#x9;&#x9;&#x9;var dep = &quot;DependentApp&quot;;&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;var DepRes0 = SCM.getResource(&quot;freelmpchapp&quot;);&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;SCM.setStringValue(DepRes0,dep); &#xD;&#xA;              }&#xD;&#xA;              function BackwardMapping()&#xD;&#xA;              {&#xD;&#xA;                var Res = SCM.getResource(&quot;colorlamp01_freelampseldummy&quot;); &#xD;&#xA;                var value = SCM.getIntValue(Res); &#xD;&#xA;                if (value === 1 ) { &#xD;&#xA;                  SCM.setIntValue(currentResource,1);&#xD;&#xA;                } else if (value == -1 ){&#xD;&#xA;                  SCM.setIntValue(currentResource,0);&#xD;&#xA;                }&#xD;&#xA;                else {&#xD;&#xA;                  SCM.setIntValue(currentResource,0);&#xD;&#xA;                }&#xD;&#xA;              }&#xD;&#xA;            " URI="http://www.infineon.com/1.0.7/app/colorlamp01/0/colorlamp01_freelampsel/1" downWardmappedList="//@consumed.15 //@consumed.7" maxValue="1" minValue="0">
      <defaultValue xsi:type="ResourceModel:IntegerValue" value="0"/>
      <localValue xsi:type="ResourceModel:StringValue" value="0"/>
      <globalValue xsi:type="ResourceModel:IntegerValue" value="0"/>
      <toolTipHelpDescription>Free Lamp</toolTipHelpDescription>
    </item>
  </provided>
  <provided xsi:type="ResourceModel:EnumerationParameter" name="Source of Dimming" evalFunction="&#xD;&#xA;        function ForwardMapping()&#xD;&#xA;        {&#xD;&#xA;        var value = SCM.getIntValue(currentResource);&#xD;&#xA;        var Res = SCM.getResource(&quot;colorlamp01_dimseldummy&quot;);&#xD;&#xA;        SCM.setIntValue(Res,value);        &#xD;&#xA;&#x9;&#x9;var dep = &quot;DependentApp&quot;;&#xD;&#xA;&#x9;&#x9;var DepRes0 = SCM.getResource(&quot;dimapp&quot;); &#xD;&#xA;&#x9;&#x9;SCM.setStringValue(DepRes0,dep);&#xD;&#xA;        }&#xD;&#xA;        function BackwardMapping()&#xD;&#xA;        {&#xD;&#xA;        var Res = SCM.getResource(&quot;colorlamp01_dimseldummy&quot;);&#xD;&#xA;        var value = SCM.getIntValue(Res);&#xD;&#xA;        SCM.setIntValue(currentResource,value);&#xD;&#xA;        }&#xD;&#xA;        " URI="http://www.infineon.com/1.0.7/app/colorlamp01/0/colorlamp01_dimsel" downWardmappedList="//@consumed.16 //@consumed.1">
    <defaultValue xsi:type="ResourceModel:IntegerValue" value="0"/>
    <localValue xsi:type="ResourceModel:StringValue" value="0"/>
    <globalValue xsi:type="ResourceModel:IntegerValue" value="1"/>
    <toolTipHelpDescription>Source of Dimming</toolTipHelpDescription>
    <item name="Dimming Engine" evalFunction="&#xD;&#xA;              function ForwardMapping()&#xD;&#xA;              {&#xD;&#xA;                var value = SCM.getIntValue(currentResource);&#xD;&#xA;                var Res = SCM.getResource(&quot;colorlamp01_dimseldummy&quot;);&#xD;&#xA;                if (value == 1 ) {&#xD;&#xA;                  SCM.setIntValue(Res,1);&#xD;&#xA;                } else if (value === 0) {&#xD;&#xA;                  SCM.setIntValue(Res,1);&#xD;&#xA;                }             &#xD;&#xA;&#x9;&#x9;&#x9;&#x9;var dep = &quot;DependentApp&quot;;&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;var DepRes0 = SCM.getResource(&quot;dimapp&quot;); &#xD;&#xA;&#x9;&#x9;&#x9;&#x9;SCM.setStringValue(DepRes0,dep);&#xD;&#xA;              }&#xD;&#xA;              function BackwardMapping()&#xD;&#xA;              {&#xD;&#xA;                var Res = SCM.getResource(&quot;colorlamp01_dimseldummy&quot;); &#xD;&#xA;                var value = SCM.getIntValue(Res); &#xD;&#xA;                if (value === 1 ) { &#xD;&#xA;                  SCM.setIntValue(currentResource,1);&#xD;&#xA;                } else if (value == -1 ){&#xD;&#xA;                  SCM.setIntValue(currentResource,1);&#xD;&#xA;                }&#xD;&#xA;                else {&#xD;&#xA;                  SCM.setIntValue(currentResource,0);&#xD;&#xA;                }&#xD;&#xA;              }&#xD;&#xA;            " URI="http://www.infineon.com/1.0.7/app/colorlamp01/0/colorlamp01_dimsel/0" downWardmappedList="//@consumed.16 //@consumed.1" maxValue="1" minValue="0">
      <defaultValue xsi:type="ResourceModel:IntegerValue" value="1"/>
      <localValue xsi:type="ResourceModel:StringValue" value="1"/>
      <globalValue xsi:type="ResourceModel:IntegerValue" value="1"/>
      <toolTipHelpDescription>Dimming Engine</toolTipHelpDescription>
    </item>
    <item name="Global Dimming" evalFunction="&#xD;&#xA;              function ForwardMapping()&#xD;&#xA;              {&#xD;&#xA;                var value = SCM.getIntValue(currentResource);&#xD;&#xA;                var Res = SCM.getResource(&quot;colorlamp01_dimseldummy&quot;);&#xD;&#xA;                if (value == 1 ) {&#xD;&#xA;                  SCM.setIntValue(Res,2);       &#xD;&#xA;                } else if (value === 0) {&#xD;&#xA;                  SCM.setIntValue(Res,1);&#xD;&#xA;                }             &#xD;&#xA;&#x9;&#x9;&#x9;&#x9;var dep = &quot;DependentApp&quot;;&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;var DepRes0 = SCM.getResource(&quot;dimapp&quot;); &#xD;&#xA;&#x9;&#x9;&#x9;&#x9;SCM.setStringValue(DepRes0,dep);&#xD;&#xA;              }&#xD;&#xA;              function BackwardMapping()&#xD;&#xA;              {&#xD;&#xA;                var Res = SCM.getResource(&quot;colorlamp01_dimseldummy&quot;); &#xD;&#xA;                var value = SCM.getIntValue(Res); &#xD;&#xA;                if (value === 2 ) { &#xD;&#xA;                  SCM.setIntValue(currentResource,1);&#xD;&#xA;                } else if (value == -1 ){&#xD;&#xA;                  SCM.setIntValue(currentResource,0);&#xD;&#xA;                }&#xD;&#xA;                else {&#xD;&#xA;                  SCM.setIntValue(currentResource,0);&#xD;&#xA;                }&#xD;&#xA;              }&#xD;&#xA;            " URI="http://www.infineon.com/1.0.7/app/colorlamp01/0/colorlamp01_dimsel/1" downWardmappedList="//@consumed.16 //@consumed.1" maxValue="1" minValue="0">
      <defaultValue xsi:type="ResourceModel:IntegerValue" value="0"/>
      <localValue xsi:type="ResourceModel:StringValue" value="0"/>
      <globalValue xsi:type="ResourceModel:IntegerValue" value="0"/>
      <toolTipHelpDescription>Global Dimming</toolTipHelpDescription>
    </item>
  </provided>
  <provided xsi:type="ResourceModel:Parameter" name="To Control low level apps from upper level apps." evalFunction="        &#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;function ForwardMapping()&#xD;&#xA;&#x9;&#x9;&#x9;        {&#xD;&#xA;&#x9;                    &#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;var holdvalue = SCM.getIntValue(currentResource);&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;if (holdvalue >= 1)&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;{&#x9;              &#xD;&#xA;           &#x9;          &#xD;&#xA;                      var bccuch0ety =  SCM.getResource(&quot;redlmpchapp/bccuch_chtrig_ety&quot;);&#xD;&#xA;&#x9;&#x9;               SCM.setIntValue(bccuch0ety,0);&#xD;&#xA;&#x9;                  var bccuch1ety =  SCM.getResource(&quot;greenlmpchapp/bccuch_chtrig_ety&quot;);&#xD;&#xA;&#x9;&#x9;               SCM.setIntValue(bccuch1ety,0);&#xD;&#xA;&#x9;                  var bccuch2ety =  SCM.getResource(&quot;bluelmpchapp/bccuch_chtrig_ety&quot;);&#xD;&#xA;&#x9;&#x9;               SCM.setIntValue(bccuch2ety,0);&#xD;&#xA;&#x9;                  var bccuch3ety =  SCM.getResource(&quot;whitelmpchapp/bccuch_chtrig_ety&quot;);&#xD;&#xA;&#x9;&#x9;               SCM.setIntValue(bccuch3ety,0);&#xD;&#xA;&#x9;                  var bccuch4ety =  SCM.getResource(&quot;amberlmpchapp/bccuch_chtrig_ety&quot;);&#xD;&#xA;&#x9;&#x9;               SCM.setIntValue(bccuch4ety,0);&#xD;&#xA;&#x9;                  var bccuch5ety =  SCM.getResource(&quot;freelmpchapp/bccuch_chtrig_ety&quot;);&#xD;&#xA;&#x9;&#x9;               SCM.setIntValue(bccuch5ety,0);               &#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;}else&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;{&#xD;&#xA;&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;  var bccuch0ety =  SCM.getResource(&quot;redlmpchapp/bccuch_chtrig_ety&quot;);&#xD;&#xA;&#x9;&#x9;               SCM.setIntValue(bccuch0ety,1);&#xD;&#xA;&#x9;                  var bccuch1ety =  SCM.getResource(&quot;greenlmpchapp/bccuch_chtrig_ety&quot;);&#xD;&#xA;&#x9;&#x9;               SCM.setIntValue(bccuch1ety,1);&#xD;&#xA;&#x9;                  var bccuch2ety =  SCM.getResource(&quot;bluelmpchapp/bccuch_chtrig_ety&quot;);&#xD;&#xA;&#x9;&#x9;               SCM.setIntValue(bccuch2ety,1);&#xD;&#xA;&#x9;                  var bccuch3ety =  SCM.getResource(&quot;whitelmpchapp/bccuch_chtrig_ety&quot;);&#xD;&#xA;&#x9;&#x9;               SCM.setIntValue(bccuch3ety,1);&#xD;&#xA;&#x9;                  var bccuch4ety =  SCM.getResource(&quot;amberlmpchapp/bccuch_chtrig_ety&quot;);&#xD;&#xA;&#x9;&#x9;               SCM.setIntValue(bccuch4ety,1);&#xD;&#xA;&#x9;                  var bccuch5ety =  SCM.getResource(&quot;freelmpchapp/bccuch_chtrig_ety&quot;);&#xD;&#xA;&#x9;&#x9;               SCM.setIntValue(bccuch5ety,1);&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;}&#xD;&#xA;&#x9;&#x9;&#x9;        }&#xD;&#xA;&#x9;&#x9;&#x9;        function BackwardMapping()&#xD;&#xA;&#x9;&#x9;&#x9;        {&#xD;&#xA;   &#x9;&#x9;&#x9;                       &#xD;&#xA;                  var bccuch0ety =  SCM.getResource(&quot;redlmpchapp/bccuch_chtrig_ety&quot;); &#xD;&#xA;                  var bccuch1ety =  SCM.getResource(&quot;greenlmpchapp/bccuch_chtrig_ety&quot;);&#xD;&#xA;                  var bccuch2ety =  SCM.getResource(&quot;bluelmpchapp/bccuch_chtrig_ety&quot;);&#xD;&#xA;                  var bccuch3ety =  SCM.getResource(&quot;whitelmpchapp/bccuch_chtrig_ety&quot;);&#xD;&#xA;                  var bccuch4ety =  SCM.getResource(&quot;amberlmpchapp/bccuch_chtrig_ety&quot;);&#xD;&#xA;                  var bccuch5ety =  SCM.getResource(&quot;freelmpchapp/bccuch_chtrig_ety&quot;);&#xD;&#xA;&#x9;             &#xD;&#xA;&#x9;&#x9;&#x9;        }    &#xD;&#xA;&#x9;&#x9;&#x9;&#x9;" URI="http://www.infineon.com/1.0.7/app/colorlamp01/0/colorlamp01_bccuch_bccutrigdisable_bytoplevelapp_dummy" downWardmappedList="//@consumed.20 //@consumed.29 //@consumed.38 //@consumed.47 //@consumed.56 //@consumed.65">
    <defaultValue xsi:type="ResourceModel:IntegerValue" value="0"/>
    <localValue xsi:type="ResourceModel:StringValue" value="0"/>
    <globalValue xsi:type="ResourceModel:IntegerValue" value="0"/>
  </provided>
  <provided xsi:type="ResourceModel:Parameter" name="To Control low level apps from upper level apps." evalFunction="        &#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;function ForwardMapping()&#xD;&#xA;&#x9;&#x9;&#x9;        {&#xD;&#xA;&#x9;                    &#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;var holdvalue = SCM.getIntValue(currentResource);&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;if (holdvalue >= 1)&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;{&#x9;              &#xD;&#xA;                   var bccuch0pen =  SCM.getResource(&quot;redlmpchapp/bccuch_pen&quot;);&#xD;&#xA;&#x9;               SCM.setIntValue(bccuch0pen,1); &#xD;&#xA;                   var bccuch0nit =  SCM.getResource(&quot;redlmpchapp/enable_at_init&quot;);&#xD;&#xA;&#x9;               SCM.setIntValue(bccuch0nit,1);&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;var bccuch0wen =  SCM.getResource(&quot;redlmpchapp/bccuch_wen&quot;);&#xD;&#xA;&#x9;               SCM.setIntValue(bccuch0wen,1);&#xD;&#xA;&#xD;&#xA;                  var bccuch1pen =  SCM.getResource(&quot;greenlmpchapp/bccuch_pen&quot;);&#xD;&#xA;&#x9;               SCM.setIntValue(bccuch1pen,1);&#xD;&#xA;                   var bccuch1nit =  SCM.getResource(&quot;greenlmpchapp/enable_at_init&quot;);&#xD;&#xA;&#x9;               SCM.setIntValue(bccuch1nit,1);&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;var bccuch1wen =  SCM.getResource(&quot;greenlmpchapp/bccuch_wen&quot;);&#xD;&#xA;&#x9;               SCM.setIntValue(bccuch1wen,1);&#xD;&#xA;&#xD;&#xA;                  var bccuch2pen =  SCM.getResource(&quot;bluelmpchapp/bccuch_pen&quot;);&#xD;&#xA;&#x9;               SCM.setIntValue(bccuch2pen,1); &#xD;&#xA;                   var bccuch2nit =  SCM.getResource(&quot;bluelmpchapp/enable_at_init&quot;);&#xD;&#xA;&#x9;               SCM.setIntValue(bccuch2nit,1);&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;var bccuch2wen =  SCM.getResource(&quot;bluelmpchapp/bccuch_wen&quot;);&#xD;&#xA;&#x9;               SCM.setIntValue(bccuch2wen,1);&#xD;&#xA;&#xD;&#xA;                  var bccuch3pen =  SCM.getResource(&quot;whitelmpchapp/bccuch_pen&quot;);&#xD;&#xA;&#x9;               SCM.setIntValue(bccuch3pen,1); &#xD;&#xA;                   var bccuch3nit =  SCM.getResource(&quot;whitelmpchapp/enable_at_init&quot;);&#xD;&#xA;&#x9;               SCM.setIntValue(bccuch3nit,1);&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;var bccuch3wen =  SCM.getResource(&quot;whitelmpchapp/bccuch_wen&quot;);&#xD;&#xA;&#x9;               SCM.setIntValue(bccuch3wen,1);&#xD;&#xA;&#xD;&#xA;                  var bccuch4pen =  SCM.getResource(&quot;amberlmpchapp/bccuch_pen&quot;);&#xD;&#xA;&#x9;               SCM.setIntValue(bccuch4pen,1); &#xD;&#xA;                   var bccuch4nit =  SCM.getResource(&quot;amberlmpchapp/enable_at_init&quot;);&#xD;&#xA;&#x9;               SCM.setIntValue(bccuch4nit,1);&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;var bccuch4wen =  SCM.getResource(&quot;amberlmpchapp/bccuch_wen&quot;);&#xD;&#xA;&#x9;               SCM.setIntValue(bccuch4wen,1);&#xD;&#xA;&#xD;&#xA;                  var bccuch5pen =  SCM.getResource(&quot;freelmpchapp/bccuch_pen&quot;);&#xD;&#xA;&#x9;               SCM.setIntValue(bccuch5pen,1); &#xD;&#xA;                   var bccuch5nit =  SCM.getResource(&quot;freelmpchapp/enable_at_init&quot;);&#xD;&#xA;&#x9;               SCM.setIntValue(bccuch5nit,1);&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;var bccuch5wen =  SCM.getResource(&quot;freelmpchapp/bccuch_wen&quot;);&#xD;&#xA;&#x9;               SCM.setIntValue(bccuch5wen,1);&#xD;&#xA;&#xD;&#xA;               &#xD;&#xA;&#xD;&#xA;               var Resdummy = SCM.getResource(&quot;colorlamp01_bccuch_bccutrigdisable_bytoplevelapp_dummy&quot;); &#xD;&#xA;            &#x9;var Resdummyval = SCM.getIntValue(Resdummy); &#xD;&#xA;                  if(Resdummyval == 0)&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;{  &#xD;&#xA;                  var bccuch0ety =  SCM.getResource(&quot;redlmpchapp/bccuch_chtrig_ety&quot;);&#xD;&#xA;&#x9;               SCM.setIntValue(bccuch0ety,1);       &#xD;&#xA;                  var bccuch1ety =  SCM.getResource(&quot;greenlmpchapp/bccuch_chtrig_ety&quot;);&#xD;&#xA;&#x9;               SCM.setIntValue(bccuch1ety,1);      &#xD;&#xA;                  var bccuch2ety =  SCM.getResource(&quot;bluelmpchapp/bccuch_chtrig_ety&quot;);&#xD;&#xA;&#x9;               SCM.setIntValue(bccuch2ety,1);      &#xD;&#xA;                  var bccuch3ety =  SCM.getResource(&quot;whitelmpchapp/bccuch_chtrig_ety&quot;);&#xD;&#xA;&#x9;               SCM.setIntValue(bccuch3ety,1);      &#xD;&#xA;                  var bccuch4ety =  SCM.getResource(&quot;amberlmpchapp/bccuch_chtrig_ety&quot;);&#xD;&#xA;&#x9;               SCM.setIntValue(bccuch4ety,1);     &#xD;&#xA;                  var bccuch5ety =  SCM.getResource(&quot;freelmpchapp/bccuch_chtrig_ety&quot;);&#xD;&#xA;&#x9;               SCM.setIntValue(bccuch5ety,1); &#x9;&#x9;&#x9;&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;}else&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;{&#xD;&#xA;                  var bccuch0ety =  SCM.getResource(&quot;redlmpchapp/bccuch_chtrig_ety&quot;);&#xD;&#xA;&#x9;               SCM.setIntValue(bccuch0ety,0);       &#xD;&#xA;                  var bccuch1ety =  SCM.getResource(&quot;greenlmpchapp/bccuch_chtrig_ety&quot;);&#xD;&#xA;&#x9;               SCM.setIntValue(bccuch1ety,0);      &#xD;&#xA;                  var bccuch2ety =  SCM.getResource(&quot;bluelmpchapp/bccuch_chtrig_ety&quot;);&#xD;&#xA;&#x9;               SCM.setIntValue(bccuch2ety,0);      &#xD;&#xA;                  var bccuch3ety =  SCM.getResource(&quot;whitelmpchapp/bccuch_chtrig_ety&quot;);&#xD;&#xA;&#x9;               SCM.setIntValue(bccuch3ety,0);      &#xD;&#xA;                  var bccuch4ety =  SCM.getResource(&quot;amberlmpchapp/bccuch_chtrig_ety&quot;);&#xD;&#xA;&#x9;               SCM.setIntValue(bccuch4ety,0);     &#xD;&#xA;                  var bccuch5ety =  SCM.getResource(&quot;freelmpchapp/bccuch_chtrig_ety&quot;);&#xD;&#xA;&#x9;               SCM.setIntValue(bccuch5ety,0); &#x9;&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;}&#xD;&#xA;var bccuch2 =  SCM.getResource(&quot;redlmpchapp/bccuch_outsignalsel_bytoplevelapp_dummy&quot;);&#xD;&#xA;&#x9;               SCM.setIntValue(bccuch2,1);&#xD;&#xA;var bccuch3 =  SCM.getResource(&quot;greenlmpchapp/bccuch_outsignalsel_bytoplevelapp_dummy&quot;);&#xD;&#xA;&#x9;               SCM.setIntValue(bccuch3,1);&#xD;&#xA;var bccuch4 =  SCM.getResource(&quot;bluelmpchapp/bccuch_outsignalsel_bytoplevelapp_dummy&quot;);&#xD;&#xA;&#x9;               SCM.setIntValue(bccuch4,1);&#xD;&#xA;var bccuch5 =  SCM.getResource(&quot;whitelmpchapp/bccuch_outsignalsel_bytoplevelapp_dummy&quot;);&#xD;&#xA;&#x9;               SCM.setIntValue(bccuch5,1);&#xD;&#xA;var bccuch6 =  SCM.getResource(&quot;amberlmpchapp/bccuch_outsignalsel_bytoplevelapp_dummy&quot;);&#xD;&#xA;&#x9;               SCM.setIntValue(bccuch6,1);&#xD;&#xA;var bccuch7 =  SCM.getResource(&quot;freelmpchapp/bccuch_outsignalsel_bytoplevelapp_dummy&quot;);&#xD;&#xA;&#x9;               SCM.setIntValue(bccuch7,1);&#xD;&#xA;&#xD;&#xA; var Resdimlvl=SCM.getResource(&quot;dimapp/bccuch_dls_tdlev&quot;);&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;var Resdimena=SCM.getResource(&quot;dimapp/enable_at_init&quot;);&#xD;&#xA;&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;var Rchpon00=SCM.getResource(&quot;redlmpchapp/bccuch_pkcmp_oncmp&quot;);&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;var Rchpon01=SCM.getResource(&quot;greenlmpchapp/bccuch_pkcmp_oncmp&quot;);&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;var Rchpon02=SCM.getResource(&quot;bluelmpchapp/bccuch_pkcmp_oncmp&quot;);&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;var Rchpon03=SCM.getResource(&quot;whitelmpchapp/bccuch_pkcmp_oncmp&quot;);&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;var Rchpon04=SCM.getResource(&quot;amberlmpchapp/bccuch_pkcmp_oncmp&quot;);&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;var Rchpon05=SCM.getResource(&quot;freelmpchapp/bccuch_pkcmp_oncmp&quot;);&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;var Rchpoff00=SCM.getResource(&quot;redlmpchapp/bccuch_pkcmp_offcmp&quot;);&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;var Rchpoff01=SCM.getResource(&quot;greenlmpchapp/bccuch_pkcmp_offcmp&quot;);&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;var Rchpoff02=SCM.getResource(&quot;bluelmpchapp/bccuch_pkcmp_offcmp&quot;);&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;var Rchpoff03=SCM.getResource(&quot;whitelmpchapp/bccuch_pkcmp_offcmp&quot;);&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;var Rchpoff04=SCM.getResource(&quot;amberlmpchapp/bccuch_pkcmp_offcmp&quot;);&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;var Rchpoff05=SCM.getResource(&quot;freelmpchapp/bccuch_pkcmp_offcmp&quot;);&#xD;&#xA;&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;var Reschint00=SCM.getResource(&quot;redlmpchapp/bccuch_ints_tchint&quot;);&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;var Reschint01=SCM.getResource(&quot;greenlmpchapp/bccuch_ints_tchint&quot;);&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;var Reschint02=SCM.getResource(&quot;bluelmpchapp/bccuch_ints_tchint&quot;);&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;var Reschint03=SCM.getResource(&quot;whitelmpchapp/bccuch_ints_tchint&quot;);&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;var Reschint04=SCM.getResource(&quot;amberlmpchapp/bccuch_ints_tchint&quot;);&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;var Reschint05=SCM.getResource(&quot;freelmpchapp/bccuch_ints_tchint&quot;);&#xD;&#xA;&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;var Rchpcoff00=SCM.getResource(&quot;redlmpchapp/bccuch_pkcmp_offcntval&quot;);&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;var Rchpcoff01=SCM.getResource(&quot;greenlmpchapp/bccuch_pkcmp_offcntval&quot;);&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;var Rchpcoff02=SCM.getResource(&quot;bluelmpchapp/bccuch_pkcmp_offcntval&quot;);&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;var Rchpcoff03=SCM.getResource(&quot;whitelmpchapp/bccuch_pkcmp_offcntval&quot;);&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;var Rchpcoff04=SCM.getResource(&quot;amberlmpchapp/bccuch_pkcmp_offcntval&quot;);&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;var Rchpcoff05=SCM.getResource(&quot;freelmpchapp/bccuch_pkcmp_offcntval&quot;);&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#xD;&#xA;                    var Red1=SCM.getResource(&quot;colorlamp01_redlampseldummy&quot;);&#xD;&#xA;                    var Red1value = SCM.getIntValue(Red1); &#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;var Green1=SCM.getResource(&quot;colorlamp01_greenlampseldummy&quot;);&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;var Green1value = SCM.getIntValue(Green1); &#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;var Blue1=SCM.getResource(&quot;colorlamp01_bluelampseldummy&quot;);&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;var Blue1value = SCM.getIntValue(Blue1); &#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;var White1=SCM.getResource(&quot;colorlamp01_whitelampseldummy&quot;);&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;var White1value = SCM.getIntValue(White1); &#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;var Amber1=SCM.getResource(&quot;colorlamp01_amberlampseldummy&quot;);&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;var Amber1value = SCM.getIntValue(Amber1); &#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;var Free1=SCM.getResource(&quot;colorlamp01_freelampseldummy&quot;);&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;var Free1value = SCM.getIntValue(Free1); &#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;SCM.setIntValue(Rchpon00,4);  &#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;SCM.setIntValue(Rchpon01,4); &#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;SCM.setIntValue(Rchpon02,4); &#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;SCM.setIntValue(Rchpon03,4); &#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;SCM.setIntValue(Rchpon04,4); &#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;SCM.setIntValue(Rchpon05,4); &#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;SCM.setIntValue(Rchpoff00,60);  &#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;SCM.setIntValue(Rchpoff01,60); &#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;SCM.setIntValue(Rchpoff02,60); &#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;SCM.setIntValue(Rchpoff03,60); &#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;SCM.setIntValue(Rchpoff04,60); &#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;SCM.setIntValue(Rchpoff05,60); &#xD;&#xA;&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;SCM.setIntValue(Reschint00,4095);  &#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;SCM.setIntValue(Reschint01,4095); &#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;SCM.setIntValue(Reschint02,4095); &#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;SCM.setIntValue(Reschint03,4095); &#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;SCM.setIntValue(Reschint04,4095); &#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;SCM.setIntValue(Reschint05,4095); &#xD;&#xA;&#xD;&#xA;                    var holddata = new Array();&#xD;&#xA;           &#xD;&#xA; &#x9;&#x9;&#x9;&#x9;&#x9;var holdvalue = SCM.getIntValue(currentResource);&#xD;&#xA;                    var v1=(holdvalue - 1) * 15;&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;var v2=(holdvalue - 2) * 15;&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;var v3=(holdvalue - 3) * 15;&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;var v4=(holdvalue - 4) * 15;&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;var v5=(holdvalue - 5) * 15;&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;var v6=(holdvalue - 6) * 15;&#xD;&#xA;                    holddata[0] = v1;&#xD;&#xA;&#x9;&#x9;            holddata[1] = v2;&#xD;&#xA;&#x9;&#x9;            holddata[2] = v3;&#xD;&#xA;&#x9;&#x9;            holddata[3] = v4;&#x9;&#x9;&#x9;&#x9;&#x9;&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;holddata[4] = v5;&#xD;&#xA;&#x9;&#x9;            holddata[5] = v6;&#xD;&#xA;                    var count= 0;&#xD;&#xA;&#x9;&#x9;            if (Red1value == 1 )&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;{&#xD;&#xA;                    SCM.setIntValue(Rchpcoff00,holddata[count]);&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;count = count + 1; &#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;} &#xD;&#xA;&#xD;&#xA;&#x9;&#x9;            if (Green1value == 1 )&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;{&#xD;&#xA;                    SCM.setIntValue(Rchpcoff01,holddata[count]);&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;count = count + 1; &#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;} &#xD;&#xA;&#x9;&#x9;            if (Blue1value == 1 )&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;{&#xD;&#xA;                    SCM.setIntValue(Rchpcoff02,holddata[count]);&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;count = count + 1; &#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;} &#xD;&#xA;&#x9;&#x9;            if (White1value == 1 )&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;{&#xD;&#xA;                    SCM.setIntValue(Rchpcoff03,holddata[count]);&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;count = count + 1; &#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;} &#xD;&#xA;&#x9;&#x9;            if (Amber1value == 1 )&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;{&#xD;&#xA;                    SCM.setIntValue(Rchpcoff04,holddata[count]);&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;count = count + 1; &#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;} &#xD;&#xA;&#x9;&#x9;            if (Free1value == 1 )&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;{&#xD;&#xA;                    SCM.setIntValue(Rchpcoff05,holddata[count]);&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;count = count + 1; &#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;} &#xD;&#xA;//&#x9;&#x9;&#x9;&#x9;&#x9;SCM.setIntValue(Rchpcoff01,v2); &#xD;&#xA;//&#x9;&#x9;&#x9;&#x9;&#x9;SCM.setIntValue(Rchpcoff02,v3); &#xD;&#xA;//&#x9;&#x9;&#x9;&#x9;&#x9;SCM.setIntValue(Rchpcoff03,v4); &#xD;&#xA;//&#x9;&#x9;&#x9;&#x9;&#x9;SCM.setIntValue(Rchpcoff04,v5); &#xD;&#xA;//&#x9;&#x9;&#x9;&#x9;&#x9;SCM.setIntValue(Rchpcoff05,v6); &#x9;&#x9;&#x9;&#xD;&#xA;&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;SCM.setIntValue(Resdimlvl,2047); &#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;SCM.setIntValue(Resdimena,1);&#xD;&#xA;                  &#xD;&#xA;                  &#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;}else &#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;{&#xD;&#xA;&#x9;  &#x9;&#x9;&#x9;&#x9;&#x9;var bccuch0pen =  SCM.getResource(&quot;redlmpchapp/bccuch_pen&quot;);&#xD;&#xA;&#x9;               SCM.setIntValue(bccuch0pen,0);       &#xD;&#xA;                  var bccuch0ety =  SCM.getResource(&quot;redlmpchapp/bccuch_chtrig_ety&quot;);&#xD;&#xA;&#x9;               SCM.setIntValue(bccuch0ety,0);&#xD;&#xA;                   var bccuch0nit =  SCM.getResource(&quot;redlmpchapp/enable_at_init&quot;);&#xD;&#xA;&#x9;               SCM.setIntValue(bccuch0nit,0);&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;var bccuch0wen =  SCM.getResource(&quot;redlmpchapp/bccuch_wen&quot;);&#xD;&#xA;&#x9;               SCM.setIntValue(bccuch0wen,0);&#xD;&#xA;&#xD;&#xA;                  var bccuch1pen =  SCM.getResource(&quot;greenlmpchapp/bccuch_pen&quot;);&#xD;&#xA;&#x9;               SCM.setIntValue(bccuch1pen,0);       &#xD;&#xA;                  var bccuch1ety =  SCM.getResource(&quot;greenlmpchapp/bccuch_chtrig_ety&quot;);&#xD;&#xA;&#x9;               SCM.setIntValue(bccuch1ety,0);&#xD;&#xA;                   var bccuch1nit =  SCM.getResource(&quot;greenlmpchapp/enable_at_init&quot;);&#xD;&#xA;&#x9;               SCM.setIntValue(bccuch1nit,0);&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;var bccuch1wen =  SCM.getResource(&quot;greenlmpchapp/bccuch_wen&quot;);&#xD;&#xA;&#x9;               SCM.setIntValue(bccuch1wen,0);&#xD;&#xA;&#xD;&#xA;                  var bccuch2pen =  SCM.getResource(&quot;bluelmpchapp/bccuch_pen&quot;);&#xD;&#xA;&#x9;               SCM.setIntValue(bccuch2pen,0);       &#xD;&#xA;                  var bccuch2ety =  SCM.getResource(&quot;bluelmpchapp/bccuch_chtrig_ety&quot;);&#xD;&#xA;&#x9;               SCM.setIntValue(bccuch2ety,0);&#xD;&#xA;                   var bccuch2nit =  SCM.getResource(&quot;bluelmpchapp/enable_at_init&quot;);&#xD;&#xA;&#x9;               SCM.setIntValue(bccuch2nit,0);&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;var bccuch2wen =  SCM.getResource(&quot;bluelmpchapp/bccuch_wen&quot;);&#xD;&#xA;&#x9;               SCM.setIntValue(bccuch2wen,0);&#xD;&#xA;&#xD;&#xA;                  var bccuch3pen =  SCM.getResource(&quot;whitelmpchapp/bccuch_pen&quot;);&#xD;&#xA;&#x9;               SCM.setIntValue(bccuch3pen,0);       &#xD;&#xA;                  var bccuch3ety =  SCM.getResource(&quot;whitelmpchapp/bccuch_chtrig_ety&quot;);&#xD;&#xA;&#x9;               SCM.setIntValue(bccuch3ety,0);&#xD;&#xA;                   var bccuch3nit =  SCM.getResource(&quot;whitelmpchapp/enable_at_init&quot;);&#xD;&#xA;&#x9;               SCM.setIntValue(bccuch3nit,0);&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;var bccuch3wen =  SCM.getResource(&quot;whitelmpchapp/bccuch_wen&quot;);&#xD;&#xA;&#x9;               SCM.setIntValue(bccuch3wen,0);&#xD;&#xA;&#xD;&#xA;                  var bccuch4pen =  SCM.getResource(&quot;amberlmpchapp/bccuch_pen&quot;);&#xD;&#xA;&#x9;               SCM.setIntValue(bccuch4pen,0);       &#xD;&#xA;                  var bccuch4ety =  SCM.getResource(&quot;amberlmpchapp/bccuch_chtrig_ety&quot;);&#xD;&#xA;&#x9;               SCM.setIntValue(bccuch4ety,0);&#xD;&#xA;                   var bccuch4nit =  SCM.getResource(&quot;amberlmpchapp/enable_at_init&quot;);&#xD;&#xA;&#x9;               SCM.setIntValue(bccuch4nit,0);&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;var bccuch4wen =  SCM.getResource(&quot;amberlmpchapp/bccuch_wen&quot;);&#xD;&#xA;&#x9;               SCM.setIntValue(bccuch4wen,0);&#xD;&#xA;&#xD;&#xA;                  var bccuch5pen =  SCM.getResource(&quot;freelmpchapp/bccuch_pen&quot;);&#xD;&#xA;&#x9;               SCM.setIntValue(bccuch5pen,0);       &#xD;&#xA;                  var bccuch5ety =  SCM.getResource(&quot;freelmpchapp/bccuch_chtrig_ety&quot;);&#xD;&#xA;&#x9;               SCM.setIntValue(bccuch5ety,0);&#xD;&#xA;                   var bccuch5nit =  SCM.getResource(&quot;freelmpchapp/enable_at_init&quot;);&#xD;&#xA;&#x9;               SCM.setIntValue(bccuch5nit,0);&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;var bccuch5wen =  SCM.getResource(&quot;freelmpchapp/bccuch_wen&quot;);&#xD;&#xA;&#x9;               SCM.setIntValue(bccuch5wen,0);&#xD;&#xA;&#xD;&#xA;                 &#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#xD;&#xA;var bccuch2 =  SCM.getResource(&quot;redlmpchapp/bccuch_outsignalsel_bytoplevelapp_dummy&quot;);&#xD;&#xA;&#x9;               SCM.setIntValue(bccuch2,0);&#xD;&#xA;var bccuch3 =  SCM.getResource(&quot;greenlmpchapp/bccuch_outsignalsel_bytoplevelapp_dummy&quot;);&#xD;&#xA;&#x9;               SCM.setIntValue(bccuch3,0);&#xD;&#xA;var bccuch4 =  SCM.getResource(&quot;bluelmpchapp/bccuch_outsignalsel_bytoplevelapp_dummy&quot;);&#xD;&#xA;&#x9;               SCM.setIntValue(bccuch4,0);&#xD;&#xA;var bccuch5 =  SCM.getResource(&quot;whitelmpchapp/bccuch_outsignalsel_bytoplevelapp_dummy&quot;);&#xD;&#xA;&#x9;               SCM.setIntValue(bccuch5,0);&#xD;&#xA;var bccuch6 =  SCM.getResource(&quot;amberlmpchapp/bccuch_outsignalsel_bytoplevelapp_dummy&quot;);&#xD;&#xA;&#x9;               SCM.setIntValue(bccuch6,0);&#xD;&#xA;var bccuch7 =  SCM.getResource(&quot;freelmpchapp/bccuch_outsignalsel_bytoplevelapp_dummy&quot;);&#xD;&#xA;&#x9;               SCM.setIntValue(bccuch7,0);&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;}&#xD;&#xA;&#xD;&#xA;&#x9;&#x9;&#x9;        }&#xD;&#xA;&#x9;&#x9;&#x9;        function BackwardMapping()&#xD;&#xA;&#x9;&#x9;&#x9;        {&#xD;&#xA;   &#x9;&#x9;&#x9;&#x9;&#x9;&#x9;var bccuch2 =  SCM.getResource(&quot;redlmpchapp/bccuch_outsignalsel_bytoplevelapp_dummy&quot;);&#xD;&#xA;&#x9;             &#xD;&#xA;var bccuch3 =  SCM.getResource(&quot;greenlmpchapp/bccuch_outsignalsel_bytoplevelapp_dummy&quot;);&#xD;&#xA;&#x9;               &#xD;&#xA;var bccuch4 =  SCM.getResource(&quot;bluelmpchapp/bccuch_outsignalsel_bytoplevelapp_dummy&quot;);&#xD;&#xA;&#x9;              &#xD;&#xA;var bccuch5 =  SCM.getResource(&quot;whitelmpchapp/bccuch_outsignalsel_bytoplevelapp_dummy&quot;);&#xD;&#xA;&#x9;               &#xD;&#xA;var bccuch6 =  SCM.getResource(&quot;amberlmpchapp/bccuch_outsignalsel_bytoplevelapp_dummy&quot;);&#xD;&#xA;&#x9;            &#xD;&#xA;var bccuch7 =  SCM.getResource(&quot;freelmpchapp/bccuch_outsignalsel_bytoplevelapp_dummy&quot;);&#xD;&#xA;&#x9;             &#xD;&#xA;&#x9;             &#xD;&#xA;&#x9;&#x9;&#x9;        }    &#xD;&#xA;&#x9;&#x9;&#x9;&#x9;" URI="http://www.infineon.com/1.0.7/app/colorlamp01/0/colorlamp01_bccuch_outsignalsel_bytoplevelapp_dummy" downWardmappedList="//@consumed.19 //@consumed.20 //@consumed.21 //@consumed.22 //@consumed.28 //@consumed.29 //@consumed.30 //@consumed.31 //@consumed.37 //@consumed.38 //@consumed.39 //@consumed.40 //@consumed.46 //@consumed.47 //@consumed.48 //@consumed.49 //@consumed.55 //@consumed.56 //@consumed.57 //@consumed.58 //@consumed.64 //@consumed.65 //@consumed.66 //@consumed.67 //@consumed.26 //@consumed.35 //@consumed.44 //@consumed.53 //@consumed.62 //@consumed.71">
    <defaultValue xsi:type="ResourceModel:IntegerValue" value="0"/>
    <localValue xsi:type="ResourceModel:StringValue" value="0"/>
    <globalValue xsi:type="ResourceModel:IntegerValue" value="0"/>
  </provided>
  <consumed xsi:type="ResourceModel:ProxyResource" URI="http://www.infineon.com/1.0.7/app/colorlamp01/0/globalapp">
    <downWardmappedList xsi:type="ResourceModel:App" href="../../BCCUGLOBAL/1.0.12/bccuglobal_0.app#/"/>
    <requiredResource uriString="app/bccuglobal/*" uriType="LOCALTYPE"/>
  </consumed>
  <consumed xsi:type="ResourceModel:ProxyResource" evalFunction="function resourceCondition() {&#xD;&#xA;&#x9;          var Res = Solver.getResource(&quot;colorlamp01_dimseldummy&quot;);&#xD;&#xA;&#x9;          var value = Solver.getIntValue(Res);&#xD;&#xA;&#x9;          if (value == 1) {&#xD;&#xA;&#x9;            return true; &#xD;&#xA;&#x9;          } &#xD;&#xA;&#x9;          return false;&#xD;&#xA;&#x9;        }" URI="http://www.infineon.com/1.0.7/app/colorlamp01/0/dimapp" upWardMappingList="//@provided.7 //@provided.7/@item.0 //@provided.7/@item.1">
    <localValue xsi:type="ResourceModel:StringValue" value="DependentApp"/>
    <downWardmappedList xsi:type="ResourceModel:App" href="../../BCCUDIM01/1.0.8/bccudim01_0.app#/"/>
    <globalValue xsi:type="ResourceModel:StringValue" value="DependentApp"/>
    <requiredResource uriString="app/bccudim01/*" uriType="LOCALTYPE"/>
  </consumed>
  <consumed xsi:type="ResourceModel:ProxyResource" evalFunction="function resourceCondition() {&#xD;&#xA;&#x9;          var Res = Solver.getResource(&quot;colorlamp01_redlampseldummy&quot;);&#xD;&#xA;&#x9;          var value = Solver.getIntValue(Res);&#xD;&#xA;&#x9;          if (value == 1) {&#xD;&#xA;&#x9;            return true; &#xD;&#xA;&#x9;          } &#xD;&#xA;&#x9;          return false;&#xD;&#xA;&#x9;        }" URI="http://www.infineon.com/1.0.7/app/colorlamp01/0/redlmpchapp" upWardMappingList="//@provided.1 //@provided.1/@item.0">
    <localValue xsi:type="ResourceModel:StringValue" value="DependentApp"/>
    <downWardmappedList xsi:type="ResourceModel:App" href="../../BCCUCH01/1.0.10/bccuch01_0.app#/"/>
    <globalValue xsi:type="ResourceModel:StringValue" value="DependentApp"/>
    <requiredResource uriString="app/bccuch01/*" uriType="LOCALTYPE"/>
  </consumed>
  <consumed xsi:type="ResourceModel:ProxyResource" evalFunction="function resourceCondition() {&#xD;&#xA;&#x9;          var Res = Solver.getResource(&quot;colorlamp01_greenlampseldummy&quot;);&#xD;&#xA;&#x9;          var value = Solver.getIntValue(Res);&#xD;&#xA;&#x9;          if (value == 1) {&#xD;&#xA;&#x9;            return true; &#xD;&#xA;&#x9;          } &#xD;&#xA;&#x9;          return false;&#xD;&#xA;&#x9;        }" URI="http://www.infineon.com/1.0.7/app/colorlamp01/0/greenlmpchapp" upWardMappingList="//@provided.2 //@provided.2/@item.0">
    <localValue xsi:type="ResourceModel:StringValue" value="DependentApp"/>
    <downWardmappedList xsi:type="ResourceModel:App" href="../../BCCUCH01/1.0.10/bccuch01_1.app#/"/>
    <globalValue xsi:type="ResourceModel:StringValue" value="DependentApp"/>
    <requiredResource uriString="app/bccuch01/*" uriType="LOCALTYPE"/>
  </consumed>
  <consumed xsi:type="ResourceModel:ProxyResource" evalFunction="function resourceCondition() {&#xD;&#xA;&#x9;          var Res = Solver.getResource(&quot;colorlamp01_bluelampseldummy&quot;);&#xD;&#xA;&#x9;          var value = Solver.getIntValue(Res);&#xD;&#xA;&#x9;          if (value == 1) {&#xD;&#xA;&#x9;            return true; &#xD;&#xA;&#x9;          } &#xD;&#xA;&#x9;          return false;&#xD;&#xA;&#x9;        }" URI="http://www.infineon.com/1.0.7/app/colorlamp01/0/bluelmpchapp" upWardMappingList="//@provided.3 //@provided.3/@item.0">
    <localValue xsi:type="ResourceModel:StringValue" value="DependentApp"/>
    <downWardmappedList xsi:type="ResourceModel:App" href="../../BCCUCH01/1.0.10/bccuch01_2.app#/"/>
    <globalValue xsi:type="ResourceModel:StringValue" value="DependentApp"/>
    <requiredResource uriString="app/bccuch01/*" uriType="LOCALTYPE"/>
  </consumed>
  <consumed xsi:type="ResourceModel:ProxyResource" evalFunction="function resourceCondition() {&#xD;&#xA;&#x9;          var Res = Solver.getResource(&quot;colorlamp01_whitelampseldummy&quot;);&#xD;&#xA;&#x9;          var value = Solver.getIntValue(Res);&#xD;&#xA;&#x9;          if (value == 1) {&#xD;&#xA;&#x9;            return true; &#xD;&#xA;&#x9;          } &#xD;&#xA;&#x9;          return false;&#xD;&#xA;&#x9;        }" URI="http://www.infineon.com/1.0.7/app/colorlamp01/0/whitelmpchapp" upWardMappingList="//@provided.4 //@provided.4/@item.0">
    <localValue xsi:type="ResourceModel:StringValue" value="DependentApp"/>
    <globalValue xsi:type="ResourceModel:StringValue" value="DependentApp"/>
    <requiredResource uriString="app/bccuch01/*" uriType="LOCALTYPE"/>
  </consumed>
  <consumed xsi:type="ResourceModel:ProxyResource" evalFunction="function resourceCondition() {&#xD;&#xA;&#x9;          var Res = Solver.getResource(&quot;colorlamp01_amberlampseldummy&quot;);&#xD;&#xA;&#x9;          var value = Solver.getIntValue(Res);&#xD;&#xA;&#x9;          if (value == 1) {&#xD;&#xA;&#x9;            return true; &#xD;&#xA;&#x9;          } &#xD;&#xA;&#x9;          return false;&#xD;&#xA;&#x9;        }" URI="http://www.infineon.com/1.0.7/app/colorlamp01/0/amberlmpchapp" upWardMappingList="//@provided.5 //@provided.5/@item.0">
    <localValue xsi:type="ResourceModel:StringValue" value="DependentApp"/>
    <globalValue xsi:type="ResourceModel:StringValue" value="DependentApp"/>
    <requiredResource uriString="app/bccuch01/*" uriType="LOCALTYPE"/>
  </consumed>
  <consumed xsi:type="ResourceModel:ProxyResource" evalFunction="function resourceCondition() {&#xD;&#xA;&#x9;          var Res = Solver.getResource(&quot;colorlamp01_freelampseldummy&quot;);&#xD;&#xA;&#x9;          var value = Solver.getIntValue(Res);&#xD;&#xA;&#x9;          if (value == 1) {&#xD;&#xA;&#x9;            return true; &#xD;&#xA;&#x9;          } &#xD;&#xA;&#x9;          return false;&#xD;&#xA;&#x9;        }" URI="http://www.infineon.com/1.0.7/app/colorlamp01/0/freelmpchapp" upWardMappingList="//@provided.6 //@provided.6/@item.0">
    <localValue xsi:type="ResourceModel:StringValue" value="DependentApp"/>
    <globalValue xsi:type="ResourceModel:StringValue" value="DependentApp"/>
    <requiredResource uriString="app/bccuch01/*" uriType="LOCALTYPE"/>
  </consumed>
  <consumed xsi:type="ResourceModel:ProxyResource" URI="http://www.infineon.com/1.0.7/app/colorlamp01/0/colorlamp01_lampseldummy" isSystemDefined="true">
    <requiredResource uriString="" uriType="LOCALTYPE"/>
  </consumed>
  <consumed xsi:type="ResourceModel:ProxyResource" URI="http://www.infineon.com/1.0.7/app/colorlamp01/0/colorlamp01_fromupperuidisable" isSystemDefined="true">
    <requiredResource uriString="" uriType="LOCALTYPE"/>
  </consumed>
  <consumed xsi:type="ResourceModel:ProxyResource" URI="http://www.infineon.com/1.0.7/app/colorlamp01/0/colorlamp01_redlampseldummy" upWardMappingList="//@provided.1 //@provided.1/@item.0" isSystemDefined="true">
    <localValue xsi:type="ResourceModel:IntegerValue" value="1"/>
    <globalValue xsi:type="ResourceModel:IntegerValue" value="1"/>
    <requiredResource uriString="" uriType="LOCALTYPE"/>
  </consumed>
  <consumed xsi:type="ResourceModel:ProxyResource" URI="http://www.infineon.com/1.0.7/app/colorlamp01/0/colorlamp01_greenlampseldummy" upWardMappingList="//@provided.2 //@provided.2/@item.0" isSystemDefined="true">
    <localValue xsi:type="ResourceModel:IntegerValue" value="1"/>
    <globalValue xsi:type="ResourceModel:IntegerValue" value="1"/>
    <requiredResource uriString="" uriType="LOCALTYPE"/>
  </consumed>
  <consumed xsi:type="ResourceModel:ProxyResource" URI="http://www.infineon.com/1.0.7/app/colorlamp01/0/colorlamp01_bluelampseldummy" upWardMappingList="//@provided.3 //@provided.3/@item.0" isSystemDefined="true">
    <localValue xsi:type="ResourceModel:IntegerValue" value="1"/>
    <globalValue xsi:type="ResourceModel:IntegerValue" value="1"/>
    <requiredResource uriString="" uriType="LOCALTYPE"/>
  </consumed>
  <consumed xsi:type="ResourceModel:ProxyResource" URI="http://www.infineon.com/1.0.7/app/colorlamp01/0/colorlamp01_whitelampseldummy" upWardMappingList="//@provided.4 //@provided.4/@item.0" isSystemDefined="true">
    <localValue xsi:type="ResourceModel:IntegerValue" value="0"/>
    <globalValue xsi:type="ResourceModel:IntegerValue" value="0"/>
    <requiredResource uriString="" uriType="LOCALTYPE"/>
  </consumed>
  <consumed xsi:type="ResourceModel:ProxyResource" URI="http://www.infineon.com/1.0.7/app/colorlamp01/0/colorlamp01_amberlampseldummy" upWardMappingList="//@provided.5 //@provided.5/@item.0" isSystemDefined="true">
    <localValue xsi:type="ResourceModel:IntegerValue" value="0"/>
    <globalValue xsi:type="ResourceModel:IntegerValue" value="0"/>
    <requiredResource uriString="" uriType="LOCALTYPE"/>
  </consumed>
  <consumed xsi:type="ResourceModel:ProxyResource" URI="http://www.infineon.com/1.0.7/app/colorlamp01/0/colorlamp01_freelampseldummy" upWardMappingList="//@provided.6 //@provided.6/@item.0" isSystemDefined="true">
    <localValue xsi:type="ResourceModel:IntegerValue" value="0"/>
    <globalValue xsi:type="ResourceModel:IntegerValue" value="0"/>
    <requiredResource uriString="" uriType="LOCALTYPE"/>
  </consumed>
  <consumed xsi:type="ResourceModel:ProxyResource" URI="http://www.infineon.com/1.0.7/app/colorlamp01/0/colorlamp01_dimseldummy" upWardMappingList="//@provided.7 //@provided.7/@item.0 //@provided.7/@item.1" isSystemDefined="true">
    <localValue xsi:type="ResourceModel:IntegerValue" value="1"/>
    <globalValue xsi:type="ResourceModel:IntegerValue" value="1"/>
    <requiredResource uriString="" uriType="LOCALTYPE"/>
  </consumed>
  <consumed xsi:type="ResourceModel:ProxyResource" URI="http://www.infineon.com/1.0.7/app/colorlamp01/0/colorlamp01_chinstcntdummy" upWardMappingList="//@provided.0" isSystemDefined="true">
    <localValue xsi:type="ResourceModel:IntegerValue" value="0"/>
    <globalValue xsi:type="ResourceModel:IntegerValue" value="0"/>
    <requiredResource uriString="" uriType="LOCALTYPE"/>
  </consumed>
  <consumed xsi:type="ResourceModel:ProxyResource" URI="http://www.infineon.com/1.0.7/app/colorlamp01/0/redlmpchapp/bccuch_de_slelect" upWardMappingList="//@provided.0" isSystemDefined="true">
    <localValue xsi:type="ResourceModel:IntegerValue" value="0"/>
    <downWardmappedList xsi:type="ResourceModel:EnumerationParameter" href="../../BCCUCH01/1.0.10/bccuch01_0.app#//@provided.14"/>
    <globalValue xsi:type="ResourceModel:IntegerValue" value="0"/>
  </consumed>
  <consumed xsi:type="ResourceModel:ProxyResource" URI="http://www.infineon.com/1.0.7/app/colorlamp01/0/redlmpchapp/bccuch_pen" upWardMappingList="//@provided.9" isSystemDefined="true">
    <localValue xsi:type="ResourceModel:IntegerValue" value="0"/>
    <downWardmappedList xsi:type="ResourceModel:EnumerationParameter" href="../../BCCUCH01/1.0.10/bccuch01_0.app#//@provided.17"/>
    <globalValue xsi:type="ResourceModel:IntegerValue" value="1"/>
  </consumed>
  <consumed xsi:type="ResourceModel:ProxyResource" URI="http://www.infineon.com/1.0.7/app/colorlamp01/0/redlmpchapp/bccuch_chtrig_ety" upWardMappingList="//@provided.8 //@provided.9" isSystemDefined="true">
    <localValue xsi:type="ResourceModel:IntegerValue" value="0"/>
    <downWardmappedList xsi:type="ResourceModel:EnumerationParameter" href="../../BCCUCH01/1.0.10/bccuch01_0.app#//@provided.19"/>
    <globalValue xsi:type="ResourceModel:IntegerValue" value="0"/>
  </consumed>
  <consumed xsi:type="ResourceModel:ProxyResource" URI="http://www.infineon.com/1.0.7/app/colorlamp01/0/redlmpchapp/enable_at_init" upWardMappingList="//@provided.9" isSystemDefined="true">
    <localValue xsi:type="ResourceModel:IntegerValue" value="0"/>
    <downWardmappedList xsi:type="ResourceModel:EnumerationParameter" href="../../BCCUCH01/1.0.10/bccuch01_0.app#//@provided.21"/>
    <globalValue xsi:type="ResourceModel:IntegerValue" value="1"/>
  </consumed>
  <consumed xsi:type="ResourceModel:ProxyResource" URI="http://www.infineon.com/1.0.7/app/colorlamp01/0/redlmpchapp/bccuch_wen" upWardMappingList="//@provided.9" isSystemDefined="true">
    <localValue xsi:type="ResourceModel:IntegerValue" value="0"/>
    <downWardmappedList xsi:type="ResourceModel:EnumerationParameter" href="../../BCCUCH01/1.0.10/bccuch01_0.app#//@provided.24"/>
    <globalValue xsi:type="ResourceModel:IntegerValue" value="1"/>
  </consumed>
  <consumed xsi:type="ResourceModel:ProxyResource" URI="http://www.infineon.com/1.0.7/app/colorlamp01/0/redlmpchapp/bccuch_ints_tchint" isSystemDefined="true">
    <localValue xsi:type="ResourceModel:IntegerValue" value="0"/>
    <downWardmappedList xsi:type="ResourceModel:IntegerParameter" href="../../BCCUCH01/1.0.10/bccuch01_0.app#//@provided.8"/>
    <globalValue xsi:type="ResourceModel:IntegerValue" value="0"/>
  </consumed>
  <consumed xsi:type="ResourceModel:ProxyResource" URI="http://www.infineon.com/1.0.7/app/colorlamp01/0/redlmpchapp/bccuch_pkcmp_oncmp" isSystemDefined="true">
    <localValue xsi:type="ResourceModel:IntegerValue" value="27"/>
    <downWardmappedList xsi:type="ResourceModel:IntegerParameter" href="../../BCCUCH01/1.0.10/bccuch01_0.app#//@provided.9"/>
    <globalValue xsi:type="ResourceModel:IntegerValue" value="3"/>
  </consumed>
  <consumed xsi:type="ResourceModel:ProxyResource" URI="http://www.infineon.com/1.0.7/app/colorlamp01/0/redlmpchapp/bccuch_pkcmp_offcmp" isSystemDefined="true">
    <localValue xsi:type="ResourceModel:IntegerValue" value="ff"/>
    <downWardmappedList xsi:type="ResourceModel:IntegerParameter" href="../../BCCUCH01/1.0.10/bccuch01_0.app#//@provided.10"/>
    <globalValue xsi:type="ResourceModel:IntegerValue" value="c7"/>
  </consumed>
  <consumed xsi:type="ResourceModel:ProxyResource" URI="http://www.infineon.com/1.0.7/app/colorlamp01/0/redlmpchapp/bccuch_outsignalsel_bytoplevelapp_dummy" upWardMappingList="//@provided.9" isSystemDefined="true">
    <localValue xsi:type="ResourceModel:IntegerValue" value="0"/>
    <downWardmappedList xsi:type="ResourceModel:ProxyResource" href="../../BCCUCH01/1.0.10/bccuch01_0.app#//@consumed.6"/>
    <globalValue xsi:type="ResourceModel:IntegerValue" value="0"/>
  </consumed>
  <consumed xsi:type="ResourceModel:ProxyResource" URI="http://www.infineon.com/1.0.7/app/colorlamp01/0/greenlmpchapp/bccuch_de_slelect" upWardMappingList="//@provided.0" isSystemDefined="true">
    <localValue xsi:type="ResourceModel:IntegerValue" value="0"/>
    <downWardmappedList xsi:type="ResourceModel:EnumerationParameter" href="../../BCCUCH01/1.0.10/bccuch01_1.app#//@provided.14"/>
    <globalValue xsi:type="ResourceModel:IntegerValue" value="0"/>
  </consumed>
  <consumed xsi:type="ResourceModel:ProxyResource" URI="http://www.infineon.com/1.0.7/app/colorlamp01/0/greenlmpchapp/bccuch_pen" upWardMappingList="//@provided.9" isSystemDefined="true">
    <localValue xsi:type="ResourceModel:IntegerValue" value="0"/>
    <downWardmappedList xsi:type="ResourceModel:EnumerationParameter" href="../../BCCUCH01/1.0.10/bccuch01_1.app#//@provided.17"/>
    <globalValue xsi:type="ResourceModel:IntegerValue" value="1"/>
  </consumed>
  <consumed xsi:type="ResourceModel:ProxyResource" URI="http://www.infineon.com/1.0.7/app/colorlamp01/0/greenlmpchapp/bccuch_chtrig_ety" upWardMappingList="//@provided.8 //@provided.9" isSystemDefined="true">
    <localValue xsi:type="ResourceModel:IntegerValue" value="0"/>
    <downWardmappedList xsi:type="ResourceModel:EnumerationParameter" href="../../BCCUCH01/1.0.10/bccuch01_1.app#//@provided.19"/>
    <globalValue xsi:type="ResourceModel:IntegerValue" value="0"/>
  </consumed>
  <consumed xsi:type="ResourceModel:ProxyResource" URI="http://www.infineon.com/1.0.7/app/colorlamp01/0/greenlmpchapp/enable_at_init" upWardMappingList="//@provided.9" isSystemDefined="true">
    <localValue xsi:type="ResourceModel:IntegerValue" value="0"/>
    <downWardmappedList xsi:type="ResourceModel:EnumerationParameter" href="../../BCCUCH01/1.0.10/bccuch01_1.app#//@provided.21"/>
    <globalValue xsi:type="ResourceModel:IntegerValue" value="1"/>
  </consumed>
  <consumed xsi:type="ResourceModel:ProxyResource" URI="http://www.infineon.com/1.0.7/app/colorlamp01/0/greenlmpchapp/bccuch_wen" upWardMappingList="//@provided.9" isSystemDefined="true">
    <localValue xsi:type="ResourceModel:IntegerValue" value="0"/>
    <downWardmappedList xsi:type="ResourceModel:EnumerationParameter" href="../../BCCUCH01/1.0.10/bccuch01_1.app#//@provided.24"/>
    <globalValue xsi:type="ResourceModel:IntegerValue" value="1"/>
  </consumed>
  <consumed xsi:type="ResourceModel:ProxyResource" URI="http://www.infineon.com/1.0.7/app/colorlamp01/0/greenlmpchapp/bccuch_ints_tchint" isSystemDefined="true">
    <localValue xsi:type="ResourceModel:IntegerValue" value="0"/>
    <downWardmappedList xsi:type="ResourceModel:IntegerParameter" href="../../BCCUCH01/1.0.10/bccuch01_1.app#//@provided.8"/>
    <globalValue xsi:type="ResourceModel:IntegerValue" value="0"/>
  </consumed>
  <consumed xsi:type="ResourceModel:ProxyResource" URI="http://www.infineon.com/1.0.7/app/colorlamp01/0/greenlmpchapp/bccuch_pkcmp_oncmp" isSystemDefined="true">
    <localValue xsi:type="ResourceModel:IntegerValue" value="27"/>
    <downWardmappedList xsi:type="ResourceModel:IntegerParameter" href="../../BCCUCH01/1.0.10/bccuch01_1.app#//@provided.9"/>
    <globalValue xsi:type="ResourceModel:IntegerValue" value="3"/>
  </consumed>
  <consumed xsi:type="ResourceModel:ProxyResource" URI="http://www.infineon.com/1.0.7/app/colorlamp01/0/greenlmpchapp/bccuch_pkcmp_offcmp" isSystemDefined="true">
    <localValue xsi:type="ResourceModel:IntegerValue" value="ff"/>
    <downWardmappedList xsi:type="ResourceModel:IntegerParameter" href="../../BCCUCH01/1.0.10/bccuch01_1.app#//@provided.10"/>
    <globalValue xsi:type="ResourceModel:IntegerValue" value="c7"/>
  </consumed>
  <consumed xsi:type="ResourceModel:ProxyResource" URI="http://www.infineon.com/1.0.7/app/colorlamp01/0/greenlmpchapp/bccuch_outsignalsel_bytoplevelapp_dummy" upWardMappingList="//@provided.9" isSystemDefined="true">
    <localValue xsi:type="ResourceModel:IntegerValue" value="0"/>
    <downWardmappedList xsi:type="ResourceModel:ProxyResource" href="../../BCCUCH01/1.0.10/bccuch01_1.app#//@consumed.6"/>
    <globalValue xsi:type="ResourceModel:IntegerValue" value="0"/>
  </consumed>
  <consumed xsi:type="ResourceModel:ProxyResource" URI="http://www.infineon.com/1.0.7/app/colorlamp01/0/bluelmpchapp/bccuch_de_slelect" upWardMappingList="//@provided.0" isSystemDefined="true">
    <localValue xsi:type="ResourceModel:IntegerValue" value="0"/>
    <downWardmappedList xsi:type="ResourceModel:EnumerationParameter" href="../../BCCUCH01/1.0.10/bccuch01_2.app#//@provided.14"/>
    <globalValue xsi:type="ResourceModel:IntegerValue" value="0"/>
  </consumed>
  <consumed xsi:type="ResourceModel:ProxyResource" URI="http://www.infineon.com/1.0.7/app/colorlamp01/0/bluelmpchapp/bccuch_pen" upWardMappingList="//@provided.9" isSystemDefined="true">
    <localValue xsi:type="ResourceModel:IntegerValue" value="0"/>
    <downWardmappedList xsi:type="ResourceModel:EnumerationParameter" href="../../BCCUCH01/1.0.10/bccuch01_2.app#//@provided.17"/>
    <globalValue xsi:type="ResourceModel:IntegerValue" value="1"/>
  </consumed>
  <consumed xsi:type="ResourceModel:ProxyResource" URI="http://www.infineon.com/1.0.7/app/colorlamp01/0/bluelmpchapp/bccuch_chtrig_ety" upWardMappingList="//@provided.8 //@provided.9" isSystemDefined="true">
    <localValue xsi:type="ResourceModel:IntegerValue" value="0"/>
    <downWardmappedList xsi:type="ResourceModel:EnumerationParameter" href="../../BCCUCH01/1.0.10/bccuch01_2.app#//@provided.19"/>
    <globalValue xsi:type="ResourceModel:IntegerValue" value="0"/>
  </consumed>
  <consumed xsi:type="ResourceModel:ProxyResource" URI="http://www.infineon.com/1.0.7/app/colorlamp01/0/bluelmpchapp/enable_at_init" upWardMappingList="//@provided.9" isSystemDefined="true">
    <localValue xsi:type="ResourceModel:IntegerValue" value="0"/>
    <downWardmappedList xsi:type="ResourceModel:EnumerationParameter" href="../../BCCUCH01/1.0.10/bccuch01_2.app#//@provided.21"/>
    <globalValue xsi:type="ResourceModel:IntegerValue" value="1"/>
  </consumed>
  <consumed xsi:type="ResourceModel:ProxyResource" URI="http://www.infineon.com/1.0.7/app/colorlamp01/0/bluelmpchapp/bccuch_wen" upWardMappingList="//@provided.9" isSystemDefined="true">
    <localValue xsi:type="ResourceModel:IntegerValue" value="0"/>
    <downWardmappedList xsi:type="ResourceModel:EnumerationParameter" href="../../BCCUCH01/1.0.10/bccuch01_2.app#//@provided.24"/>
    <globalValue xsi:type="ResourceModel:IntegerValue" value="1"/>
  </consumed>
  <consumed xsi:type="ResourceModel:ProxyResource" URI="http://www.infineon.com/1.0.7/app/colorlamp01/0/bluelmpchapp/bccuch_ints_tchint" isSystemDefined="true">
    <localValue xsi:type="ResourceModel:IntegerValue" value="0"/>
    <downWardmappedList xsi:type="ResourceModel:IntegerParameter" href="../../BCCUCH01/1.0.10/bccuch01_2.app#//@provided.8"/>
    <globalValue xsi:type="ResourceModel:IntegerValue" value="0"/>
  </consumed>
  <consumed xsi:type="ResourceModel:ProxyResource" URI="http://www.infineon.com/1.0.7/app/colorlamp01/0/bluelmpchapp/bccuch_pkcmp_oncmp" isSystemDefined="true">
    <localValue xsi:type="ResourceModel:IntegerValue" value="27"/>
    <downWardmappedList xsi:type="ResourceModel:IntegerParameter" href="../../BCCUCH01/1.0.10/bccuch01_2.app#//@provided.9"/>
    <globalValue xsi:type="ResourceModel:IntegerValue" value="3"/>
  </consumed>
  <consumed xsi:type="ResourceModel:ProxyResource" URI="http://www.infineon.com/1.0.7/app/colorlamp01/0/bluelmpchapp/bccuch_pkcmp_offcmp" isSystemDefined="true">
    <localValue xsi:type="ResourceModel:IntegerValue" value="ff"/>
    <downWardmappedList xsi:type="ResourceModel:IntegerParameter" href="../../BCCUCH01/1.0.10/bccuch01_2.app#//@provided.10"/>
    <globalValue xsi:type="ResourceModel:IntegerValue" value="c7"/>
  </consumed>
  <consumed xsi:type="ResourceModel:ProxyResource" URI="http://www.infineon.com/1.0.7/app/colorlamp01/0/bluelmpchapp/bccuch_outsignalsel_bytoplevelapp_dummy" upWardMappingList="//@provided.9" isSystemDefined="true">
    <localValue xsi:type="ResourceModel:IntegerValue" value="0"/>
    <downWardmappedList xsi:type="ResourceModel:ProxyResource" href="../../BCCUCH01/1.0.10/bccuch01_2.app#//@consumed.6"/>
    <globalValue xsi:type="ResourceModel:IntegerValue" value="0"/>
  </consumed>
  <consumed xsi:type="ResourceModel:ProxyResource" URI="http://www.infineon.com/1.0.7/app/colorlamp01/0/whitelmpchapp/bccuch_de_slelect" upWardMappingList="//@provided.0" isSystemDefined="true">
    <localValue xsi:type="ResourceModel:IntegerValue" value="0"/>
    <globalValue xsi:type="ResourceModel:IntegerValue" value="0"/>
  </consumed>
  <consumed xsi:type="ResourceModel:ProxyResource" URI="http://www.infineon.com/1.0.7/app/colorlamp01/0/whitelmpchapp/bccuch_pen" upWardMappingList="//@provided.9" isSystemDefined="true">
    <localValue xsi:type="ResourceModel:IntegerValue" value="0"/>
    <globalValue xsi:type="ResourceModel:IntegerValue" value="0"/>
  </consumed>
  <consumed xsi:type="ResourceModel:ProxyResource" URI="http://www.infineon.com/1.0.7/app/colorlamp01/0/whitelmpchapp/bccuch_chtrig_ety" upWardMappingList="//@provided.8 //@provided.9" isSystemDefined="true">
    <localValue xsi:type="ResourceModel:IntegerValue" value="0"/>
    <globalValue xsi:type="ResourceModel:IntegerValue" value="0"/>
  </consumed>
  <consumed xsi:type="ResourceModel:ProxyResource" URI="http://www.infineon.com/1.0.7/app/colorlamp01/0/whitelmpchapp/enable_at_init" upWardMappingList="//@provided.9" isSystemDefined="true">
    <localValue xsi:type="ResourceModel:IntegerValue" value="0"/>
    <globalValue xsi:type="ResourceModel:IntegerValue" value="0"/>
  </consumed>
  <consumed xsi:type="ResourceModel:ProxyResource" URI="http://www.infineon.com/1.0.7/app/colorlamp01/0/whitelmpchapp/bccuch_wen" upWardMappingList="//@provided.9" isSystemDefined="true">
    <localValue xsi:type="ResourceModel:IntegerValue" value="0"/>
    <globalValue xsi:type="ResourceModel:IntegerValue" value="0"/>
  </consumed>
  <consumed xsi:type="ResourceModel:ProxyResource" URI="http://www.infineon.com/1.0.7/app/colorlamp01/0/whitelmpchapp/bccuch_ints_tchint" isSystemDefined="true"/>
  <consumed xsi:type="ResourceModel:ProxyResource" URI="http://www.infineon.com/1.0.7/app/colorlamp01/0/whitelmpchapp/bccuch_pkcmp_oncmp" isSystemDefined="true"/>
  <consumed xsi:type="ResourceModel:ProxyResource" URI="http://www.infineon.com/1.0.7/app/colorlamp01/0/whitelmpchapp/bccuch_pkcmp_offcmp" isSystemDefined="true"/>
  <consumed xsi:type="ResourceModel:ProxyResource" URI="http://www.infineon.com/1.0.7/app/colorlamp01/0/whitelmpchapp/bccuch_outsignalsel_bytoplevelapp_dummy" upWardMappingList="//@provided.9" isSystemDefined="true">
    <localValue xsi:type="ResourceModel:IntegerValue" value="0"/>
    <globalValue xsi:type="ResourceModel:IntegerValue" value="0"/>
  </consumed>
  <consumed xsi:type="ResourceModel:ProxyResource" URI="http://www.infineon.com/1.0.7/app/colorlamp01/0/amberlmpchapp/bccuch_de_slelect" upWardMappingList="//@provided.0" isSystemDefined="true">
    <localValue xsi:type="ResourceModel:IntegerValue" value="0"/>
    <globalValue xsi:type="ResourceModel:IntegerValue" value="0"/>
  </consumed>
  <consumed xsi:type="ResourceModel:ProxyResource" URI="http://www.infineon.com/1.0.7/app/colorlamp01/0/amberlmpchapp/bccuch_pen" upWardMappingList="//@provided.9" isSystemDefined="true">
    <localValue xsi:type="ResourceModel:IntegerValue" value="0"/>
    <globalValue xsi:type="ResourceModel:IntegerValue" value="0"/>
  </consumed>
  <consumed xsi:type="ResourceModel:ProxyResource" URI="http://www.infineon.com/1.0.7/app/colorlamp01/0/amberlmpchapp/bccuch_chtrig_ety" upWardMappingList="//@provided.8 //@provided.9" isSystemDefined="true">
    <localValue xsi:type="ResourceModel:IntegerValue" value="0"/>
    <globalValue xsi:type="ResourceModel:IntegerValue" value="0"/>
  </consumed>
  <consumed xsi:type="ResourceModel:ProxyResource" URI="http://www.infineon.com/1.0.7/app/colorlamp01/0/amberlmpchapp/enable_at_init" upWardMappingList="//@provided.9" isSystemDefined="true">
    <localValue xsi:type="ResourceModel:IntegerValue" value="0"/>
    <globalValue xsi:type="ResourceModel:IntegerValue" value="0"/>
  </consumed>
  <consumed xsi:type="ResourceModel:ProxyResource" URI="http://www.infineon.com/1.0.7/app/colorlamp01/0/amberlmpchapp/bccuch_wen" upWardMappingList="//@provided.9" isSystemDefined="true">
    <localValue xsi:type="ResourceModel:IntegerValue" value="0"/>
    <globalValue xsi:type="ResourceModel:IntegerValue" value="0"/>
  </consumed>
  <consumed xsi:type="ResourceModel:ProxyResource" URI="http://www.infineon.com/1.0.7/app/colorlamp01/0/amberlmpchapp/bccuch_ints_tchint" isSystemDefined="true"/>
  <consumed xsi:type="ResourceModel:ProxyResource" URI="http://www.infineon.com/1.0.7/app/colorlamp01/0/amberlmpchapp/bccuch_pkcmp_oncmp" isSystemDefined="true"/>
  <consumed xsi:type="ResourceModel:ProxyResource" URI="http://www.infineon.com/1.0.7/app/colorlamp01/0/amberlmpchapp/bccuch_pkcmp_offcmp" isSystemDefined="true"/>
  <consumed xsi:type="ResourceModel:ProxyResource" URI="http://www.infineon.com/1.0.7/app/colorlamp01/0/amberlmpchapp/bccuch_outsignalsel_bytoplevelapp_dummy" upWardMappingList="//@provided.9" isSystemDefined="true">
    <localValue xsi:type="ResourceModel:IntegerValue" value="0"/>
    <globalValue xsi:type="ResourceModel:IntegerValue" value="0"/>
  </consumed>
  <consumed xsi:type="ResourceModel:ProxyResource" URI="http://www.infineon.com/1.0.7/app/colorlamp01/0/freelmpchapp/bccuch_de_slelect" upWardMappingList="//@provided.0" isSystemDefined="true">
    <localValue xsi:type="ResourceModel:IntegerValue" value="0"/>
    <globalValue xsi:type="ResourceModel:IntegerValue" value="0"/>
  </consumed>
  <consumed xsi:type="ResourceModel:ProxyResource" URI="http://www.infineon.com/1.0.7/app/colorlamp01/0/freelmpchapp/bccuch_pen" upWardMappingList="//@provided.9" isSystemDefined="true">
    <localValue xsi:type="ResourceModel:IntegerValue" value="0"/>
    <globalValue xsi:type="ResourceModel:IntegerValue" value="0"/>
  </consumed>
  <consumed xsi:type="ResourceModel:ProxyResource" URI="http://www.infineon.com/1.0.7/app/colorlamp01/0/freelmpchapp/bccuch_chtrig_ety" upWardMappingList="//@provided.8 //@provided.9" isSystemDefined="true">
    <localValue xsi:type="ResourceModel:IntegerValue" value="0"/>
    <globalValue xsi:type="ResourceModel:IntegerValue" value="0"/>
  </consumed>
  <consumed xsi:type="ResourceModel:ProxyResource" URI="http://www.infineon.com/1.0.7/app/colorlamp01/0/freelmpchapp/enable_at_init" upWardMappingList="//@provided.9" isSystemDefined="true">
    <localValue xsi:type="ResourceModel:IntegerValue" value="0"/>
    <globalValue xsi:type="ResourceModel:IntegerValue" value="0"/>
  </consumed>
  <consumed xsi:type="ResourceModel:ProxyResource" URI="http://www.infineon.com/1.0.7/app/colorlamp01/0/freelmpchapp/bccuch_wen" upWardMappingList="//@provided.9" isSystemDefined="true">
    <localValue xsi:type="ResourceModel:IntegerValue" value="0"/>
    <globalValue xsi:type="ResourceModel:IntegerValue" value="0"/>
  </consumed>
  <consumed xsi:type="ResourceModel:ProxyResource" URI="http://www.infineon.com/1.0.7/app/colorlamp01/0/freelmpchapp/bccuch_ints_tchint" isSystemDefined="true"/>
  <consumed xsi:type="ResourceModel:ProxyResource" URI="http://www.infineon.com/1.0.7/app/colorlamp01/0/freelmpchapp/bccuch_pkcmp_oncmp" isSystemDefined="true"/>
  <consumed xsi:type="ResourceModel:ProxyResource" URI="http://www.infineon.com/1.0.7/app/colorlamp01/0/freelmpchapp/bccuch_pkcmp_offcmp" isSystemDefined="true"/>
  <consumed xsi:type="ResourceModel:ProxyResource" URI="http://www.infineon.com/1.0.7/app/colorlamp01/0/freelmpchapp/bccuch_outsignalsel_bytoplevelapp_dummy" upWardMappingList="//@provided.9" isSystemDefined="true">
    <localValue xsi:type="ResourceModel:IntegerValue" value="0"/>
    <globalValue xsi:type="ResourceModel:IntegerValue" value="0"/>
  </consumed>
  <consumed xsi:type="ResourceModel:ProxyResource" URI="http://www.infineon.com/1.0.7/app/colorlamp01/0/globalapp/bccuglobal_bclksel" upWardMappingList="//@provided.0" isSystemDefined="true">
    <localValue xsi:type="ResourceModel:IntegerValue" value="0"/>
    <downWardmappedList xsi:type="ResourceModel:EnumerationParameter" href="../../BCCUGLOBAL/1.0.12/bccuglobal_0.app#//@provided.14"/>
    <globalValue xsi:type="ResourceModel:IntegerValue" value="0"/>
  </consumed>
  <consumed xsi:type="ResourceModel:ProxyResource" URI="http://www.infineon.com/1.0.7/app/colorlamp01/0/dimapp/bccuch_dls_tdlev" isSystemDefined="true">
    <localValue xsi:type="ResourceModel:IntegerValue" value="0"/>
    <downWardmappedList xsi:type="ResourceModel:IntegerParameter" href="../../BCCUDIM01/1.0.8/bccudim01_0.app#//@provided.1"/>
    <globalValue xsi:type="ResourceModel:IntegerValue" value="fff"/>
  </consumed>
  <consumed xsi:type="ResourceModel:ProxyResource" URI="http://www.infineon.com/1.0.7/app/colorlamp01/0/dimapp/enable_at_init" isSystemDefined="true">
    <localValue xsi:type="ResourceModel:IntegerValue" value="0"/>
    <downWardmappedList xsi:type="ResourceModel:EnumerationParameter" href="../../BCCUDIM01/1.0.8/bccudim01_0.app#//@provided.6"/>
    <globalValue xsi:type="ResourceModel:IntegerValue" value="1"/>
  </consumed>
  <consumed xsi:type="ResourceModel:ProxyResource" URI="http://www.infineon.com/1.0.7/app/colorlamp01/0/redlmpchapp/bccuch_dimsel_bytoplevelapp_dummy" upWardMappingList="//@provided.0" isSystemDefined="true">
    <localValue xsi:type="ResourceModel:IntegerValue" value="1"/>
    <downWardmappedList xsi:type="ResourceModel:ProxyResource" href="../../BCCUCH01/1.0.10/bccuch01_0.app#//@consumed.2"/>
    <globalValue xsi:type="ResourceModel:IntegerValue" value="1"/>
  </consumed>
  <consumed xsi:type="ResourceModel:ProxyResource" URI="http://www.infineon.com/1.0.7/app/colorlamp01/0/greenlmpchapp/bccuch_dimsel_bytoplevelapp_dummy" upWardMappingList="//@provided.0" isSystemDefined="true">
    <localValue xsi:type="ResourceModel:IntegerValue" value="1"/>
    <downWardmappedList xsi:type="ResourceModel:ProxyResource" href="../../BCCUCH01/1.0.10/bccuch01_1.app#//@consumed.2"/>
    <globalValue xsi:type="ResourceModel:IntegerValue" value="1"/>
  </consumed>
  <consumed xsi:type="ResourceModel:ProxyResource" URI="http://www.infineon.com/1.0.7/app/colorlamp01/0/bluelmpchapp/bccuch_dimsel_bytoplevelapp_dummy" upWardMappingList="//@provided.0" isSystemDefined="true">
    <localValue xsi:type="ResourceModel:IntegerValue" value="1"/>
    <downWardmappedList xsi:type="ResourceModel:ProxyResource" href="../../BCCUCH01/1.0.10/bccuch01_2.app#//@consumed.2"/>
    <globalValue xsi:type="ResourceModel:IntegerValue" value="1"/>
  </consumed>
  <consumed xsi:type="ResourceModel:ProxyResource" URI="http://www.infineon.com/1.0.7/app/colorlamp01/0/whitelmpchapp/bccuch_dimsel_bytoplevelapp_dummy" upWardMappingList="//@provided.0" isSystemDefined="true">
    <localValue xsi:type="ResourceModel:IntegerValue" value="1"/>
    <globalValue xsi:type="ResourceModel:IntegerValue" value="1"/>
  </consumed>
  <consumed xsi:type="ResourceModel:ProxyResource" URI="http://www.infineon.com/1.0.7/app/colorlamp01/0/amberlmpchapp/bccuch_dimsel_bytoplevelapp_dummy" upWardMappingList="//@provided.0" isSystemDefined="true">
    <localValue xsi:type="ResourceModel:IntegerValue" value="1"/>
    <globalValue xsi:type="ResourceModel:IntegerValue" value="1"/>
  </consumed>
  <consumed xsi:type="ResourceModel:ProxyResource" URI="http://www.infineon.com/1.0.7/app/colorlamp01/0/freelmpchapp/bccuch_dimsel_bytoplevelapp_dummy" upWardMappingList="//@provided.0" isSystemDefined="true">
    <localValue xsi:type="ResourceModel:IntegerValue" value="1"/>
    <globalValue xsi:type="ResourceModel:IntegerValue" value="1"/>
  </consumed>
  <consumed xsi:type="ResourceModel:ProxyResource" URI="http://www.infineon.com/1.0.7/app/colorlamp01/0/redlmpchapp/bccuch_pkcmp_offcntval" isSystemDefined="true">
    <localValue xsi:type="ResourceModel:StringValue" value="0"/>
    <downWardmappedList xsi:type="ResourceModel:IntegerParameter" href="../../BCCUCH01/1.0.10/bccuch01_0.app#//@provided.13"/>
    <globalValue xsi:type="ResourceModel:StringValue" value="0"/>
  </consumed>
  <consumed xsi:type="ResourceModel:ProxyResource" URI="http://www.infineon.com/1.0.7/app/colorlamp01/0/greenlmpchapp/bccuch_pkcmp_offcntval" isSystemDefined="true">
    <localValue xsi:type="ResourceModel:StringValue" value="0"/>
    <downWardmappedList xsi:type="ResourceModel:IntegerParameter" href="../../BCCUCH01/1.0.10/bccuch01_1.app#//@provided.13"/>
    <globalValue xsi:type="ResourceModel:StringValue" value="42"/>
  </consumed>
  <consumed xsi:type="ResourceModel:ProxyResource" URI="http://www.infineon.com/1.0.7/app/colorlamp01/0/bluelmpchapp/bccuch_pkcmp_offcntval" isSystemDefined="true">
    <localValue xsi:type="ResourceModel:StringValue" value="0"/>
    <downWardmappedList xsi:type="ResourceModel:IntegerParameter" href="../../BCCUCH01/1.0.10/bccuch01_2.app#//@provided.13"/>
    <globalValue xsi:type="ResourceModel:StringValue" value="84"/>
  </consumed>
  <consumed xsi:type="ResourceModel:ProxyResource" URI="http://www.infineon.com/1.0.7/app/colorlamp01/0/whitelmpchapp/bccuch_pkcmp_offcntval" isSystemDefined="true"/>
  <consumed xsi:type="ResourceModel:ProxyResource" URI="http://www.infineon.com/1.0.7/app/colorlamp01/0/amberlmpchapp/bccuch_pkcmp_offcntval" isSystemDefined="true"/>
  <consumed xsi:type="ResourceModel:ProxyResource" URI="http://www.infineon.com/1.0.7/app/colorlamp01/0/freelmpchapp/bccuch_pkcmp_offcntval" isSystemDefined="true"/>
  <propertyConstants name="uridevice" value="device/">
    <propertyConstants name="uri_channelapp" value="app/bccuch01/">
      <propertyConstants name="uri_dimapp" value="app/bccudim01/">
        <propertyConstants name="uri_bccuglobalapp" value="app/bccuglobal/">
          <propertyConstants name="uri_bccudimapp" value="app/bccudim01/"/>
        </propertyConstants>
      </propertyConstants>
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
  <manifestInfo version="1.0.5">
    <keywords>BCCU</keywords>
    <keywords>Dimming</keywords>
    <keywords>Lighting</keywords>
    <keywords>COLOR</keywords>
    <keywords>LED</keywords>
    <keywords>LAMP</keywords>
    <properties xsi:type="ResourceModel:AppProperties_1_0" initProvider="true"/>
  </manifestInfo>
  <datagenerate fileName="COLORLAMP01.h" fileType="HFILE" templateFileName="COLORLAMP01h.jet"/>
  <datagenerate fileName="COLORLAMP01.c" templateFileName="COLORLAMP01c.jet"/>
  <datagenerate fileName="COLORLAMP01_Conf.c" templateFileName="COLORLAMP01_Confc.jet"/>
  <datagenerate fileName="COLORLAMP01_Conf.h" fileType="HFILE" templateFileName="COLORLAMP01_Confh.jet"/>
  <connections sourceSignal="app/colorlamp01/0/dimapp/bccudim01_dimout_vs" targetSignal="app/colorlamp01/0/redlmpchapp/bccuch01_dimin_vs" constraintFunction="&#xD;&#xA;          function resourceCondition(){&#xD;&#xA;              var Res = Solver.getResource(&quot;colorlamp01_dimseldummy&quot;);&#xD;&#xA;              var value = Solver.getIntValue(Res);&#xD;&#xA;              if (value == 1 ) {&#xD;&#xA;              return true;&#xD;&#xA;              }&#xD;&#xA;              return false;&#xD;&#xA;          }&#xD;&#xA;        "/>
  <connections sourceSignal="app/colorlamp01/0/dimapp/bccudim01_dimout_vs" targetSignal="app/colorlamp01/0/greenlmpchapp/bccuch01_dimin_vs" constraintFunction="&#xD;&#xA;          function resourceCondition(){&#xD;&#xA;              var Res = Solver.getResource(&quot;colorlamp01_dimseldummy&quot;);&#xD;&#xA;              var value = Solver.getIntValue(Res);&#xD;&#xA;              if (value == 1 ) {&#xD;&#xA;              return true;&#xD;&#xA;              }&#xD;&#xA;              return false;&#xD;&#xA;          }&#xD;&#xA;        "/>
  <connections sourceSignal="app/colorlamp01/0/dimapp/bccudim01_dimout_vs" targetSignal="app/colorlamp01/0/bluelmpchapp/bccuch01_dimin_vs" constraintFunction="&#xD;&#xA;          function resourceCondition(){&#xD;&#xA;              var Res = Solver.getResource(&quot;colorlamp01_dimseldummy&quot;);&#xD;&#xA;              var value = Solver.getIntValue(Res);&#xD;&#xA;              if (value == 1 ) {&#xD;&#xA;              return true;&#xD;&#xA;              }&#xD;&#xA;              return false;&#xD;&#xA;          }&#xD;&#xA;        "/>
  <connections sourceSignal="app/colorlamp01/0/dimapp/bccudim01_dimout_vs" targetSignal="app/colorlamp01/0/whitelmpchapp/bccuch01_dimin_vs" constraintFunction="&#xD;&#xA;          function resourceCondition(){&#xD;&#xA;              var Res = Solver.getResource(&quot;colorlamp01_dimseldummy&quot;);&#xD;&#xA;              var value = Solver.getIntValue(Res);&#xD;&#xA;              if (value == 1 ) {&#xD;&#xA;              return true;&#xD;&#xA;              }&#xD;&#xA;              return false;&#xD;&#xA;          }&#xD;&#xA;        "/>
  <connections sourceSignal="app/colorlamp01/0/dimapp/bccudim01_dimout_vs" targetSignal="app/colorlamp01/0/amberlmpchapp/bccuch01_dimin_vs" constraintFunction="&#xD;&#xA;          function resourceCondition(){&#xD;&#xA;              var Res = Solver.getResource(&quot;colorlamp01_dimseldummy&quot;);&#xD;&#xA;              var value = Solver.getIntValue(Res);&#xD;&#xA;              if (value == 1 ) {&#xD;&#xA;              return true;&#xD;&#xA;              }&#xD;&#xA;              return false;&#xD;&#xA;          }&#xD;&#xA;        "/>
  <connections sourceSignal="app/colorlamp01/0/dimapp/bccudim01_dimout_vs" targetSignal="app/colorlamp01/0/freelmpchapp/bccuch01_dimin_vs" constraintFunction="&#xD;&#xA;          function resourceCondition(){&#xD;&#xA;              var Res = Solver.getResource(&quot;colorlamp01_dimseldummy&quot;);&#xD;&#xA;              var value = Solver.getIntValue(Res);&#xD;&#xA;              if (value == 1 ) {&#xD;&#xA;              return true;&#xD;&#xA;              }&#xD;&#xA;              return false;&#xD;&#xA;          }&#xD;&#xA;        "/>
  <connections sourceSignal="app/colorlamp01/0/globalapp/bccuglobal_globdim_vs" targetSignal="app/colorlamp01/0/redlmpchapp/bccuch01_dimin_vs" constraintFunction="&#xD;&#xA;          function resourceCondition(){&#xD;&#xA;              var Res = Solver.getResource(&quot;colorlamp01_dimseldummy&quot;);&#xD;&#xA;              var value = Solver.getIntValue(Res);&#xD;&#xA;              if (value == 2) {&#xD;&#xA;              return true;&#xD;&#xA;              }&#xD;&#xA;              return false;&#xD;&#xA;          }&#xD;&#xA;        "/>
  <connections sourceSignal="app/colorlamp01/0/globalapp/bccuglobal_globdim_vs" targetSignal="app/colorlamp01/0/greenlmpchapp/bccuch01_dimin_vs" constraintFunction="&#xD;&#xA;          function resourceCondition(){&#xD;&#xA;              var Res = Solver.getResource(&quot;colorlamp01_dimseldummy&quot;);&#xD;&#xA;              var value = Solver.getIntValue(Res);&#xD;&#xA;              if (value == 2) {&#xD;&#xA;              return true;&#xD;&#xA;              }&#xD;&#xA;              return false;&#xD;&#xA;          }&#xD;&#xA;        "/>
  <connections sourceSignal="app/colorlamp01/0/globalapp/bccuglobal_globdim_vs" targetSignal="app/colorlamp01/0/bluelmpchapp/bccuch01_dimin_vs" constraintFunction="&#xD;&#xA;          function resourceCondition(){&#xD;&#xA;              var Res = Solver.getResource(&quot;colorlamp01_dimseldummy&quot;);&#xD;&#xA;              var value = Solver.getIntValue(Res);&#xD;&#xA;              if (value == 2) {&#xD;&#xA;              return true;&#xD;&#xA;              }&#xD;&#xA;              return false;&#xD;&#xA;          }&#xD;&#xA;        "/>
  <connections sourceSignal="app/colorlamp01/0/globalapp/bccuglobal_globdim_vs" targetSignal="app/colorlamp01/0/whitelmpchapp/bccuch01_dimin_vs" constraintFunction="&#xD;&#xA;          function resourceCondition(){&#xD;&#xA;              var Res = Solver.getResource(&quot;colorlamp01_dimseldummy&quot;);&#xD;&#xA;              var value = Solver.getIntValue(Res);&#xD;&#xA;              if (value == 2) {&#xD;&#xA;              return true;&#xD;&#xA;              }&#xD;&#xA;              return false;&#xD;&#xA;          }&#xD;&#xA;        "/>
  <connections sourceSignal="app/colorlamp01/0/globalapp/bccuglobal_globdim_vs" targetSignal="app/colorlamp01/0/amberlmpchapp/bccuch01_dimin_vs" constraintFunction="&#xD;&#xA;          function resourceCondition(){&#xD;&#xA;              var Res = Solver.getResource(&quot;colorlamp01_dimseldummy&quot;);&#xD;&#xA;              var value = Solver.getIntValue(Res);&#xD;&#xA;              if (value == 2) {&#xD;&#xA;              return true;&#xD;&#xA;              }&#xD;&#xA;              return false;&#xD;&#xA;          }&#xD;&#xA;        "/>
  <connections sourceSignal="app/colorlamp01/0/globalapp/bccuglobal_globdim_vs" targetSignal="app/colorlamp01/0/freelmpchapp/bccuch01_dimin_vs" constraintFunction="&#xD;&#xA;          function resourceCondition(){&#xD;&#xA;              var Res = Solver.getResource(&quot;colorlamp01_dimseldummy&quot;);&#xD;&#xA;              var value = Solver.getIntValue(Res);&#xD;&#xA;              if (value == 2) {&#xD;&#xA;              return true;&#xD;&#xA;              }&#xD;&#xA;              return false;&#xD;&#xA;          }&#xD;&#xA;        "/>
  <softwareIdList>12.00.7</softwareIdList>
  <softwareIdList>13.02.7</softwareIdList>
  <softwareIdList>12.0100.7</softwareIdList>
  <softwareIdList>13.0102.7</softwareIdList>
  <softwareIdList>12.0102.9</softwareIdList>
  <softwareIdList>12.0102.8</softwareIdList>
</ResourceModel:App>
