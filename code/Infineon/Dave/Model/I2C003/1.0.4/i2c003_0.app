<?xml version="1.0" encoding="ASCII"?>
<ResourceModel:App xmi:version="2.0" xmlns:xmi="http://www.omg.org/XMI" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xmlns:ResourceModel="http://www.infineon.com/Davex/Resource.ecore" name="I2C003" description="I2C003 Slave App provides non reentrant APIs &#xA;which can be used in a Non -RTOS environment &#xA;to configure the USIC channel as IIC slave" descriptionURL="/doc/html/group___i2_c003_app.html" URI="http://www.infineon.com/1.0.4/app/i2c003/0">
  <provided xsi:type="ResourceModel:VirtualSignal" name="Transmit Shift Interrupt" URI="http://www.infineon.com/1.0.4/app/i2c003/0/i2c003_tsi_vs" requiredSignalResource="channel/transmit_shift_int">
    <localValue xsi:type="ResourceModel:StringValue" value="-1"/>
    <globalValue xsi:type="ResourceModel:StringValue" value="-1"/>
  </provided>
  <provided xsi:type="ResourceModel:VirtualSignal" name="Transmit Buffer Interrupt" URI="http://www.infineon.com/1.0.4/app/i2c003/0/i2c003_tbi_vs" requiredSignalResource="channel/transmit_buffer_int">
    <localValue xsi:type="ResourceModel:StringValue" value="-1"/>
    <globalValue xsi:type="ResourceModel:StringValue" value="-1"/>
  </provided>
  <provided xsi:type="ResourceModel:VirtualSignal" name="Receive Start Interrupt" URI="http://www.infineon.com/1.0.4/app/i2c003/0/i2c003_rsi_vs" requiredSignalResource="channel/receive_start_int">
    <localValue xsi:type="ResourceModel:StringValue" value="-1"/>
    <globalValue xsi:type="ResourceModel:StringValue" value="-1"/>
  </provided>
  <provided xsi:type="ResourceModel:VirtualSignal" name="Standard Receive Interrupt" URI="http://www.infineon.com/1.0.4/app/i2c003/0/i2c003_sri_vs" requiredSignalResource="channel/standard_receive_int">
    <localValue xsi:type="ResourceModel:StringValue" value="-1"/>
    <globalValue xsi:type="ResourceModel:StringValue" value="-1"/>
  </provided>
  <provided xsi:type="ResourceModel:VirtualSignal" name="Alternative Receive Interrupt" URI="http://www.infineon.com/1.0.4/app/i2c003/0/i2c003_altri_vs" requiredSignalResource="channel/alternate_receive_int">
    <localValue xsi:type="ResourceModel:StringValue" value="-1"/>
    <globalValue xsi:type="ResourceModel:StringValue" value="-1"/>
  </provided>
  <provided xsi:type="ResourceModel:VirtualSignal" name="Protocol Specific Interrupt" URI="http://www.infineon.com/1.0.4/app/i2c003/0/i2c003_prtsi_vs" requiredSignalResource="channel/protocol_specific_int">
    <localValue xsi:type="ResourceModel:StringValue" value="-1"/>
    <globalValue xsi:type="ResourceModel:StringValue" value="-1"/>
  </provided>
  <provided xsi:type="ResourceModel:VirtualSignal" name="FIFO Standard Transmit Buffer Interrupt" URI="http://www.infineon.com/1.0.4/app/i2c003/0/i2c003_stbi_vs" requiredSignalResource="channel/standard_transmit_buffer_int">
    <localValue xsi:type="ResourceModel:StringValue" value="-1"/>
    <globalValue xsi:type="ResourceModel:StringValue" value="-1"/>
  </provided>
  <provided xsi:type="ResourceModel:VirtualSignal" name="FIFO Transmit Buffer Error Interrupt" URI="http://www.infineon.com/1.0.4/app/i2c003/0/i2c003_tberi_vs" requiredSignalResource="channel/transmit_buffer_error_int">
    <localValue xsi:type="ResourceModel:StringValue" value="-1"/>
    <globalValue xsi:type="ResourceModel:StringValue" value="-1"/>
  </provided>
  <provided xsi:type="ResourceModel:VirtualSignal" name="FIFO Standard Receive Buffer Interrupt" URI="http://www.infineon.com/1.0.4/app/i2c003/0/i2c003_srbi_vs" requiredSignalResource="channel/standard_receive_buffer_int">
    <localValue xsi:type="ResourceModel:StringValue" value="-1"/>
    <globalValue xsi:type="ResourceModel:StringValue" value="-1"/>
  </provided>
  <provided xsi:type="ResourceModel:VirtualSignal" name="FIFO Receive Buffer Error Interrupt" URI="http://www.infineon.com/1.0.4/app/i2c003/0/i2c003_rberi_vs" requiredSignalResource="channel/receive_buffer_error_int">
    <localValue xsi:type="ResourceModel:StringValue" value="-1"/>
    <globalValue xsi:type="ResourceModel:StringValue" value="-1"/>
  </provided>
  <provided xsi:type="ResourceModel:VirtualSignal" name="FIFO Alternative Receive Buffer Interrupt" URI="http://www.infineon.com/1.0.4/app/i2c003/0/i2c003_altrbi_vs" requiredSignalResource="channel/alternate_receive_buffer_int">
    <localValue xsi:type="ResourceModel:StringValue" value="-1"/>
    <globalValue xsi:type="ResourceModel:StringValue" value="-1"/>
  </provided>
  <provided xsi:type="ResourceModel:VirtualSignal" name="Data Lost Interrupt" URI="http://www.infineon.com/1.0.4/app/i2c003/0/i2c003_dli_vs" requiredSignalResource="channel/data_lost_int">
    <localValue xsi:type="ResourceModel:StringValue" value="-1"/>
    <globalValue xsi:type="ResourceModel:StringValue" value="-1"/>
  </provided>
  <provided xsi:type="ResourceModel:VirtualSignal" name="Baud Rate Generator Interrupt" URI="http://www.infineon.com/1.0.4/app/i2c003/0/i2c003_bri_vs" requiredSignalResource="channel/baud_rate_int">
    <localValue xsi:type="ResourceModel:StringValue" value="-1"/>
    <globalValue xsi:type="ResourceModel:StringValue" value="-1"/>
  </provided>
  <provided xsi:type="ResourceModel:VirtualSignal" name="I2C DX0 Input Stage" URI="http://www.infineon.com/1.0.4/app/i2c003/0/i2c003_rx_vs" requiredSignalResource="channel/dx0ins" canExpose="false">
    <localValue xsi:type="ResourceModel:StringValue" value="-1"/>
    <globalValue xsi:type="ResourceModel:StringValue" value="-1"/>
  </provided>
  <provided xsi:type="ResourceModel:VirtualSignal" name="I2C Tx Pin" URI="http://www.infineon.com/1.0.4/app/i2c003/0/i2c003_tx_vs" requiredSignalResource="channel/dout0" canExpose="false">
    <localValue xsi:type="ResourceModel:StringValue" value="-1"/>
    <globalValue xsi:type="ResourceModel:StringValue" value="-1"/>
  </provided>
  <provided xsi:type="ResourceModel:VirtualSignal" name="I2C Clockin" URI="http://www.infineon.com/1.0.4/app/i2c003/0/i2c003_clockin_vs" requiredSignalResource="channel/dx1ins" canExpose="false">
    <localValue xsi:type="ResourceModel:StringValue" value="-1"/>
    <globalValue xsi:type="ResourceModel:StringValue" value="-1"/>
  </provided>
  <provided xsi:type="ResourceModel:VirtualSignal" name="I2C Clockout" URI="http://www.infineon.com/1.0.4/app/i2c003/0/i2c003_clockout_vs" requiredSignalResource="channel/sclkout" canExpose="false">
    <localValue xsi:type="ResourceModel:StringValue" value="-1"/>
    <globalValue xsi:type="ResourceModel:StringValue" value="-1"/>
  </provided>
  <provided xsi:type="ResourceModel:VirtualSignal" name="SCL Pin" URI="http://www.infineon.com/1.0.4/app/i2c003/0/i2c003_scl_vs" requiredSignalResource="i2c_scl/pad" canExpose="false">
    <localValue xsi:type="ResourceModel:StringValue" value="-1"/>
    <globalValue xsi:type="ResourceModel:StringValue" value="-1"/>
  </provided>
  <provided xsi:type="ResourceModel:VirtualSignal" name="SDA Pin" URI="http://www.infineon.com/1.0.4/app/i2c003/0/i2c003_sda_vs" requiredSignalResource="i2c_sda/pad" canExpose="false">
    <localValue xsi:type="ResourceModel:StringValue" value="-1"/>
    <globalValue xsi:type="ResourceModel:StringValue" value="-1"/>
  </provided>
  <provided xsi:type="ResourceModel:EnumerationParameter" name="Addressing Mode" evalFunction="&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;function ForwardMapping()&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;{&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;var Res = SCM.getResource(&quot;I2C003_AddressModeDummy&quot;);&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;var value = SCM.getIntValue(currentResource);  &#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;SCM.setIntValue(Res,value);&#xD;&#xA;&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;}&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;function BackwardMapping()&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;{&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;var Res = SCM.getResource(&quot;I2C003_AddressModeDummy&quot;); &#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;var value = SCM.getIntValue(Res); &#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;if (value == -1) {&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;SCM.setIntValue(currentResource,0);&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;} else {&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;SCM.setIntValue(currentResource,value);&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;}&#x9;&#x9;&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;}&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;" URI="http://www.infineon.com/1.0.4/app/i2c003/0/i2c003_erwaddressmode" downWardmappedList="//@consumed.7">
    <localValue xsi:type="ResourceModel:StringValue" value="-1"/>
    <globalValue xsi:type="ResourceModel:IntegerValue" value="2"/>
    <toolTipHelpDescription></toolTipHelpDescription>
    <item name="7 bit" evalFunction="&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;function ForwardMapping()&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;{&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;var value = SCM.getIntValue(currentResource);&#xD;&#xA; &#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;var Res = SCM.getResource(&quot;I2C003_AddressModeDummy&quot;);&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;if (value == 1 ) {&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;SCM.setIntValue(Res,1);&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;} else if (value === 0 ) {&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;SCM.setIntValue(Res,1);&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;}&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;}&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;function BackwardMapping()&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;{&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;var Res = SCM.getResource(&quot;I2C003_AddressModeDummy&quot;); &#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;var value = SCM.getIntValue(Res); &#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;if (value === 1 ) {&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;SCM.setIntValue(currentResource,1);&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;} else if (value == -1) {&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;SCM.setIntValue(currentResource,1);&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;}else {&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;SCM.setIntValue(currentResource,0);&#x9;&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;}&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;}&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;" URI="http://www.infineon.com/1.0.4/app/i2c003/0/i2c003_erwaddressmode/0" downWardmappedList="//@consumed.7" maxValue="1" minValue="0">
      <defaultValue xsi:type="ResourceModel:IntegerValue" value="1"/>
      <localValue xsi:type="ResourceModel:IntegerValue" value="0"/>
      <globalValue xsi:type="ResourceModel:IntegerValue" value="0"/>
      <toolTipHelpDescription>This selection enables 7 bit addressing mode mode</toolTipHelpDescription>
    </item>
    <item name="10 bit" evalFunction="&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;function ForwardMapping()&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;{&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;var value = SCM.getIntValue(currentResource);&#xD;&#xA; &#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;var Res = SCM.getResource(&quot;I2C003_AddressModeDummy&quot;);&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;if (value == 1 ) {&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;SCM.setIntValue(Res,2);&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;} else if (value === 0 ) {&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;SCM.setIntValue(Res,1);&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;}&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;}&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;function BackwardMapping()&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;{&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;var Res = SCM.getResource(&quot;I2C003_AddressModeDummy&quot;); &#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;var value = SCM.getIntValue(Res); &#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;if (value == 2 ) {&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;SCM.setIntValue(currentResource,1);&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;} else if (value == -1) {&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;SCM.setIntValue(currentResource,0);&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;}else {&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;SCM.setIntValue(currentResource,0);&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;}&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;}&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;" URI="http://www.infineon.com/1.0.4/app/i2c003/0/i2c003_erwaddressmode/1" downWardmappedList="//@consumed.7" maxValue="1" minValue="0">
      <defaultValue xsi:type="ResourceModel:IntegerValue" value="0"/>
      <localValue xsi:type="ResourceModel:StringValue" value="1"/>
      <globalValue xsi:type="ResourceModel:IntegerValue" value="1"/>
      <toolTipHelpDescription>This selection enables 10 bit addressing mode</toolTipHelpDescription>
    </item>
  </provided>
  <provided xsi:type="ResourceModel:IntegerParameter" name="Slave Address" evalFunction="&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;function ForwardMapping()&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;{&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;var Res = SCM.getResource(&quot;I2C003_SlaveAddressDummy&quot;); &#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;var Intvalue = SCM.getIntValue(currentResource);&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;SCM.setIntValue(Res,Intvalue);&#x9;&#x9;&#x9;&#x9;&#x9;&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;}&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;function BackwardMapping()&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;{&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;var Res1 = SCM.getResource(&quot;I2C003_AddressModeDummy&quot;);&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;var Intvalue1 = SCM.getIntValue(Res1);&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;var Res = SCM.getResource(&quot;I2C003_SlaveAddressDummy&quot;); &#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;var Intvalue = SCM.getIntValue(Res); &#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;SCM.setIntValue(currentResource,Intvalue);&#xD;&#xA; &#x9;&#x9;&#x9;&#x9;&#x9;var MinVal = 0;&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;var MaxVal;&#x9;&#x9;&#x9;&#x9;&#x9;&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;if(Intvalue1 == 2)&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;{&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;MaxVal = 1023;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;}else{&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;MaxVal = 127;&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;}&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;SCM.setMinMaxValue(currentResource,MinVal,MaxVal,1);&#x9;&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;}" URI="http://www.infineon.com/1.0.4/app/i2c003/0/i2c003_irwslaveaddress" downWardmappedList="//@consumed.8" maxValue="3ff" minValue="0">
    <defaultValue xsi:type="ResourceModel:IntegerValue" value="0"/>
    <localValue xsi:type="ResourceModel:StringValue" value="15E"/>
    <globalValue xsi:type="ResourceModel:IntegerValue" value="15e"/>
    <toolTipHelpDescription>This field configures the slave address.</toolTipHelpDescription>
  </provided>
  <provided xsi:type="ResourceModel:IntegerParameter" name="Selects desired Bit Rate(kHz)" evalFunction="&#xD;&#xA;&#x9;&#x9;&#x9;function ForwardMapping()&#xD;&#xA;&#x9;&#x9;&#x9;{&#x9;&#x9;&#x9;&#x9;&#x9;&#xD;&#xA;                var XMC1000=SCM.getSoftwareId().substring(0,1).compareTo(&quot;1&quot;);  &#xD;&#xA;            &#x9;if(XMC1000==0)&#xD;&#xA;                {&#xD;&#xA;                  var Res1 = SCM.getResource(&quot;clockapp_XMC1000/clk002_irMCLK&quot;);&#xD;&#xA;                  var clock = SCM.getDoubleValue(Res1);&#xD;&#xA;                }&#xD;&#xA;                else&#xD;&#xA;                {&#xD;&#xA;                  var Res1 = SCM.getResource(&quot;clockapp_XMC4000/clk001_iroActualFreqPB&quot;);&#xD;&#xA;                  var clock = SCM.getIntValue(Res1);&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;}&#xD;&#xA;                var bpdiv = 0;                  &#xD;&#xA;                var BaudEntered = SCM.getIntValue(currentResource); &#xD;&#xA;                if(BaudEntered &lt;= 100)&#xD;&#xA;                {&#xD;&#xA;                  var ratio1 = (((clock * 1000000)/(10*1024*BaudEntered * 1000))*500);&#xD;&#xA;                }&#xD;&#xA;                else&#xD;&#xA;                {&#xD;&#xA;                  var ratio1 = (((clock * 1000000)/(25*1024*BaudEntered*1000))*500); &#xD;&#xA;                }   &#xD;&#xA;                if(ratio1 &lt;= 1) &#xD;&#xA;                {&#xD;&#xA;                  bpdiv = 0;&#xD;&#xA;                }  &#xD;&#xA;                else &#xD;&#xA;                {&#xD;&#xA;                  bpdiv =  (Math.round(ratio1)-1);&#xD;&#xA;                  if( bpdiv > 1023)&#xD;&#xA;                  {&#xD;&#xA;                    bpdiv = 1023;&#xD;&#xA;                  }&#xD;&#xA;                }  &#xD;&#xA;                var Res = SCM.getResource(&quot;channel/brg/pdiv&quot;);                     &#xD;&#xA;                SCM.setIntValue(Res,bpdiv);&#xD;&#xA;                if(BaudEntered &lt;= 100)&#xD;&#xA;                {&#xD;&#xA;                  var step= Math.round((BaudEntered * 1000 * 10 * 1024 * (1+ bpdiv))/(clock * 1000000));&#xD;&#xA;                }&#xD;&#xA;                else&#xD;&#xA;                {&#xD;&#xA;                  var step= Math.round((BaudEntered * 1000 * 25 * 1024 * (1+ bpdiv))/(clock * 1000000));&#xD;&#xA;                }&#xD;&#xA;                if(step > 1023)&#xD;&#xA;                {&#xD;&#xA;                  step = 1023;&#xD;&#xA;                }&#xD;&#xA;                var Resstep = SCM.getResource(&quot;channel/fdr/step&quot;); &#xD;&#xA;                SCM.setIntValue(Resstep,step);&#xD;&#xA;                var tempRes = SCM.getResource(&quot;I2C003_DesBitrateTemp&quot;);&#xD;&#xA;                SCM.setIntValue(tempRes,BaudEntered);&#xD;&#xA;&#x9;&#x9;&#x9;}&#xD;&#xA;&#x9;&#x9;&#x9;function BackwardMapping()&#xD;&#xA;&#x9;&#x9;&#x9;{&#xD;&#xA;               var tempRes = SCM.getResource(&quot;I2C003_DesBitrateTemp&quot;);&#xD;&#xA;               var value = SCM.getIntValue(tempRes);&#xD;&#xA;&#x9;&#x9;&#x9;   SCM.setIntValue(currentResource,value);&#xD;&#xA;            }&#xD;&#xA;&#x9;&#x9;&#x9;" URI="http://www.infineon.com/1.0.4/app/i2c003/0/i2c003_irwbitrate" downWardmappedList="//@consumed.26 //@consumed.27 //@consumed.6" maxValue="190" minValue="0">
    <defaultValue xsi:type="ResourceModel:IntegerValue" value="64"/>
    <localValue xsi:type="ResourceModel:StringValue" value="64"/>
    <globalValue xsi:type="ResourceModel:IntegerValue" value="64"/>
    <toolTipHelpDescription>Enter the desired bit rate in 
the range of 1 kbit/s to 400 kbit/s.</toolTipHelpDescription>
  </provided>
  <provided xsi:type="ResourceModel:IntegerParameter" name="Real Bit rate (kHz)" evalFunction="&#xD;&#xA;                    function ForwardMapping(){  &#xD;&#xA;&#x9;                  var XMC1000=SCM.getSoftwareId().substring(0,1).compareTo(&quot;1&quot;);  &#xD;&#xA;                      if(XMC1000==0)&#xD;&#xA;&#x9;                  {&#xD;&#xA;                         var Res1 = SCM.getResource(&quot;clockapp_XMC1000/clk002_irMCLK&quot;);&#xD;&#xA;                         var value1 = SCM.getDoubleValue(Res1);&#xD;&#xA;&#x9;                  }&#xD;&#xA;                      else&#xD;&#xA;&#x9;                  {&#xD;&#xA;                &#x9;  &#x9; var Res1 = SCM.getResource(&quot;clockapp_XMC4000/clk001_iroActualFreqPB&quot;);&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;     var value1 = SCM.getIntValue(Res1);&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;  }&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;  var Res0 = SCM.getResource(&quot;I2C003_DesBitrateTemp&quot;);   &#xD;&#xA;                      var value0 = SCM.getIntValue(Res0);          &#xD;&#xA;                    }&#xD;&#xA;                    function BackwardMapping(){&#xD;&#xA;                        var XMC1000=SCM.getSoftwareId().substring(0,1).compareTo(&quot;1&quot;);  &#xD;&#xA;                    &#x9;if(XMC1000==0)&#xD;&#xA;&#x9;                    {&#xD;&#xA;                          var Res1 = SCM.getResource(&quot;clockapp_XMC1000/clk002_irMCLK&quot;);&#xD;&#xA;                          var clock = SCM.getDoubleValue(Res1);&#xD;&#xA;&#x9;                    }&#xD;&#xA;                        else&#xD;&#xA;&#x9;                    {&#xD;&#xA;                          var Res1 = SCM.getResource(&quot;clockapp_XMC4000/clk001_iroActualFreqPB&quot;);                      &#x9;&#x9;&#xD;&#xA;                &#x9;&#x9;  var clock = SCM.getIntValue(Res1);&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;}&#xD;&#xA;                        var bpdiv = 0;&#xD;&#xA;                &#x9;&#x9;var Res2 = SCM.getResource(&quot;I2C003_DesBitrateTemp&quot;);   &#xD;&#xA;                        var BaudEntered = SCM.getIntValue(Res2); &#xD;&#xA;                        if(BaudEntered &lt;= 100)&#xD;&#xA;                        {&#xD;&#xA;                          var ratio1 = (((clock * 1000000)/(10*1024*BaudEntered * 1000))*500);&#xD;&#xA;                        }&#xD;&#xA;                        else&#xD;&#xA;                        {&#xD;&#xA;                          var ratio1 = (((clock * 1000000)/(25*1024*BaudEntered*1000))*500); &#xD;&#xA;                        }&#x9;&#x9;&#x9;&#x9;&#x9;&#xD;&#xA;                        if( ratio1 &lt;= 1)&#xD;&#xA;                        {&#xD;&#xA;                          bpdiv = 0;&#xD;&#xA;                        }&#xD;&#xA;                        else {&#xD;&#xA;                        bpdiv =  (Math.round(ratio1) -1);&#xD;&#xA;                        if( bpdiv > 1023)&#xD;&#xA;                        {&#xD;&#xA;                          bpdiv = 1023;&#xD;&#xA;                        }&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;}&#xD;&#xA;                        if(BaudEntered &lt;= 100)&#xD;&#xA;                        {&#xD;&#xA;                          var step= Math.round((BaudEntered * 1000 * 10 * 1024 * (1+ bpdiv))/(clock * 1000000));&#xD;&#xA;                        }&#xD;&#xA;                        else&#xD;&#xA;                        {&#xD;&#xA;                          var step= Math.round((BaudEntered * 1000 * 25 * 1024 * (1+ bpdiv))/(clock * 1000000));&#xD;&#xA;                        }&#xD;&#xA;                        if(step > 1023)&#xD;&#xA;                        {&#xD;&#xA;                          step = 1023;&#xD;&#xA;                        }&#xD;&#xA;                        if(BaudEntered &lt;= 100)&#xD;&#xA;                        {&#xD;&#xA;                          var calBaud = Math.round((clock*1000000*step)/(1000*10*1024*(1+bpdiv)));&#xD;&#xA;                        }&#xD;&#xA;                        else &#xD;&#xA;                        {&#xD;&#xA;                &#x9;      var calBaud = Math.round((clock*1000000*step)/(1000*25*1024*(1+bpdiv)));&#xD;&#xA;                        }&#xD;&#xA;                &#x9;&#x9;SCM.setIntValue(currentResource, calBaud);&#xD;&#xA;                        }&#xD;&#xA;                        " URI="http://www.infineon.com/1.0.4/app/i2c003/0/i2c003_irocalbaudrate" maxValue="200" minValue="0">
    <defaultValue xsi:type="ResourceModel:IntegerValue" value="0"/>
    <localValue xsi:type="ResourceModel:StringValue" value="0"/>
    <globalValue xsi:type="ResourceModel:IntegerValue" value="64"/>
    <toolTipHelpDescription>The real bit rate is calculated as per 
the value entered for the desired bit rate.</toolTipHelpDescription>
  </provided>
  <provided xsi:type="ResourceModel:IntegerParameter" name="Peripheral Clock" evalFunction="&#xD;&#xA;                        function ForwardMapping(){&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;              var XMC1000=SCM.getSoftwareId().substring(0,1).compareTo(&quot;1&quot;);  &#xD;&#xA;&#x9;&#x9;&#x9;&#x9;   &#x9;          if(XMC1000==0)&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;          {&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;                var Res0 = SCM.getResource(&quot;clockapp_XMC1000/clk002_irMCLK&quot;);&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;                var value0 = SCM.getDoubleValue(Res0);                   &#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;          }else{&#xD;&#xA;&#x9;                            var Res0 = SCM.getResource(&quot;clockapp_XMC4000/clk001_iroActualFreqPB&quot;);&#xD;&#xA;                                var value0 = SCM.getIntValue(Res0);  &#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;      }              &#xD;&#xA;                        }&#xD;&#xA;                        function BackwardMapping(){ &#xD;&#xA;&#x9;&#x9;&#x9;&#x9;             var XMC1000=SCM.getSoftwareId().substring(0,1).compareTo(&quot;1&quot;);  &#xD;&#xA;&#x9;&#x9;&#x9;&#x9;   &#x9;         if(XMC1000==0)&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;         {&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;           var Res1 = SCM.getResource(&quot;clockapp_XMC1000/clk002_irMCLK&quot;);&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;               var clock = SCM.getDoubleValue(Res1);  &#xD;&#xA;&#x9;&#x9;&#x9;&#x9;               SCM.setDoubleValue(currentResource, clock);&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;         }&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;         else&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;         {                    &#x9;&#x9;&#xD;&#xA;&#x9;                          var Res1 = SCM.getResource(&quot;clockapp_XMC4000/clk001_iroActualFreqPB&quot;);&#xD;&#xA;                              var value1 = SCM.getIntValue(Res1);&#xD;&#xA;                              SCM.setDoubleValue(currentResource, value1);  &#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9; }   &#xD;&#xA;                        }&#xD;&#xA;                        " URI="http://www.infineon.com/1.0.4/app/i2c003/0/i2c003_iroclock" maxValue="61A80" minValue="0">
    <defaultValue xsi:type="ResourceModel:IntegerValue" value="0"/>
    <localValue xsi:type="ResourceModel:StringValue" value="0"/>
    <globalValue xsi:type="ResourceModel:IntegerValue" value="20"/>
    <toolTipHelpDescription>The peripheral clock value is configured 
from the underlying clock app.</toolTipHelpDescription>
  </provided>
  <provided xsi:type="ResourceModel:EnumerationParameter" name="Enable Transmit FIFO Buffer Configuration" evalFunction="&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;function ForwardMapping()&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;{&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;    var Res0 = SCM.getResource(&quot;I2C003_TxBuffConfigEnDummy&quot;);&#x9;&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;var value = SCM.getIntValue(currentResource); &#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;    var Res1 = SCM.getResource(&quot;channel/tbctr_size&quot;);&#x9;&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;    if(value == 1)&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;{&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;SCM.setIntValue(Res1,1);&#x9;&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;}else if(value == 0){&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;SCM.setIntValue(Res1,0);&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;}&#x9;&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;SCM.setIntValue(Res0,value);&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;}&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;function BackwardMapping()&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;{&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;var Res0 = SCM.getResource(&quot;I2C003_TxBuffConfigEnDummy&quot;);&#x9;&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;var value0 = SCM.getIntValue(Res0);&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;SCM.setIntValue(currentResource,value0);&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;}" URI="http://www.infineon.com/1.0.4/app/i2c003/0/i2c003_erwenbletxfifo" downWardmappedList="//@consumed.25 //@consumed.9" multipleSelections="true">
    <defaultValue xsi:type="ResourceModel:IntegerValue" value="0"/>
    <localValue xsi:type="ResourceModel:StringValue" value="0"/>
    <globalValue xsi:type="ResourceModel:IntegerValue" value="1"/>
    <item name="Enable Transmit FIFO Buffer" evalFunction="&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;function ForwardMapping()&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;{&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;    var Res0 = SCM.getResource(&quot;I2C003_TxBuffConfigEnDummy&quot;);&#x9;&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;var value = SCM.getIntValue(currentResource); &#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;    var Res1 = SCM.getResource(&quot;channel/tbctr_size&quot;);&#x9;&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;    var Res2 = SCM.getResource(&quot;channel/tbctr/limit&quot;);&#x9;&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;    if(value == 1)&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;{&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;SCM.setIntValue(Res1,1);&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;SCM.setIntValue(Res2,0);&#xD;&#xA;&#x9;&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;}else if(value == 0){&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;SCM.setIntValue(Res1,0);&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;SCM.setIntValue(Res2,0);&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;}&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;SCM.setIntValue(Res0,value);&#x9;&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;}&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;function BackwardMapping()&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;{&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;var Res0 = SCM.getResource(&quot;I2C003_TxBuffConfigEnDummy&quot;);&#x9;&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;var value0 = SCM.getIntValue(Res0);&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;SCM.setIntValue(currentResource,value0);&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;}" URI="http://www.infineon.com/1.0.4/app/i2c003/0/i2c003_erwenbletxfifo/0" downWardmappedList="//@consumed.25 //@consumed.24 //@consumed.9" maxValue="1" minValue="0">
      <defaultValue xsi:type="ResourceModel:IntegerValue" value="0"/>
      <localValue xsi:type="ResourceModel:StringValue" value="1"/>
      <globalValue xsi:type="ResourceModel:IntegerValue" value="1"/>
      <toolTipHelpDescription>Enables additional Transmit FIFO buffer capability.</toolTipHelpDescription>
    </item>
  </provided>
  <provided xsi:type="ResourceModel:EnumerationParameter" name="Transmit FIFO size" URI="http://www.infineon.com/1.0.4/app/i2c003/0/i2c003_erwtxfifosize">
    <localValue xsi:type="ResourceModel:StringValue" value="-1"/>
    <globalValue xsi:type="ResourceModel:StringValue" value="-1"/>
    <toolTipHelpDescription>It defines the number of FIFO entries 
assigned to the transmit buffer.</toolTipHelpDescription>
    <item name="0" evalFunction="&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;function ForwardMapping()&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;{&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;var value = SCM.getIntValue(currentResource);&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;var Res = SCM.getResource(&quot;channel/tbctr_size&quot;);&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;if (value == 1 ) {&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;SCM.setIntValue(Res,0);&#x9;&#x9;&#x9;&#x9;&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;} else if (value === 0){&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;    SCM.setIntValue(Res,0);&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;}&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;}&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;function BackwardMapping()&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;{&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;var Res = SCM.getResource(&quot;channel/tbctr_size&quot;); &#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;var value = SCM.getIntValue(Res); &#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;if (value === 0 ) { &#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;SCM.setIntValue(currentResource,1);&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;} else if (value == -1 ){&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;SCM.setIntValue(currentResource,1);&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;}&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;else {&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;SCM.setIntValue(currentResource,0);&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;}&#xD;&#xA;&#xD;&#xA;                               var Res0 = SCM.getResource(&quot;I2C003_TxBuffConfigEnDummy&quot;);&#xD;&#xA;                               var value0 = SCM.getIntValue(Res0);&#xD;&#xA;                               if(value0 == 1)&#xD;&#xA;                               {&#xD;&#xA;                                 var reserved = SCM.getReserverd();&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;             SCM.setValue(currentResource,reserved);&#xD;&#xA;                               }&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;}&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;" URI="http://www.infineon.com/1.0.4/app/i2c003/0/i2c003_erwtxfifosize/0" downWardmappedList="//@consumed.25" maxValue="1" minValue="0">
      <defaultValue xsi:type="ResourceModel:IntegerValue" value="0"/>
      <localValue xsi:type="ResourceModel:StringValue" value="0"/>
      <globalValue xsi:type="ResourceModel:Reserved" value="Reserved"/>
      <toolTipHelpDescription>Transmit FIFO size '0' has been selected.</toolTipHelpDescription>
    </item>
    <item name="2" evalFunction="&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;function ForwardMapping()&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;{&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;var value = SCM.getIntValue(currentResource);&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;var Res = SCM.getResource(&quot;channel/tbctr_size&quot;);&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;if (value == 1 ) {&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;SCM.setIntValue(Res,1);&#x9;&#x9;&#x9;&#x9;&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;} else if (value === 0){&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;    SCM.setIntValue(Res,0);&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;}&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;}&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;function BackwardMapping()&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;{&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;var Res = SCM.getResource(&quot;channel/tbctr_size&quot;); &#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;var value = SCM.getIntValue(Res); &#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;if (value === 1 ) { &#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;SCM.setIntValue(currentResource,1);&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;} else if (value == -1 ){&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;SCM.setIntValue(currentResource,0);&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;}&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;else {&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;SCM.setIntValue(currentResource,0);&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;}&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;}&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;" URI="http://www.infineon.com/1.0.4/app/i2c003/0/i2c003_erwtxfifosize/1" downWardmappedList="//@consumed.25" maxValue="1" minValue="0">
      <defaultValue xsi:type="ResourceModel:IntegerValue" value="0"/>
      <localValue xsi:type="ResourceModel:StringValue" value="0"/>
      <globalValue xsi:type="ResourceModel:IntegerValue" value="1"/>
      <toolTipHelpDescription>Transmit FIFO size '2' has been selected.</toolTipHelpDescription>
    </item>
    <item name="4" evalFunction="&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;function ForwardMapping()&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;{&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;var value = SCM.getIntValue(currentResource);&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;var Res = SCM.getResource(&quot;channel/tbctr_size&quot;);&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;if (value == 1 ) {&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;SCM.setIntValue(Res,2);&#x9;&#x9;&#x9;&#x9;&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;}  else if (value === 0){&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;    SCM.setIntValue(Res,0);&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;}&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;}&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;function BackwardMapping()&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;{&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;var Res = SCM.getResource(&quot;channel/tbctr_size&quot;); &#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;var value = SCM.getIntValue(Res); &#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;if (value === 2 ) { &#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;SCM.setIntValue(currentResource,1);&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;} else if (value == -1 ){&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;SCM.setIntValue(currentResource,0);&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;}else {&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;SCM.setIntValue(currentResource,0);&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;}&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;}&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;" URI="http://www.infineon.com/1.0.4/app/i2c003/0/i2c003_erwtxfifosize/2" downWardmappedList="//@consumed.25" maxValue="1" minValue="0">
      <defaultValue xsi:type="ResourceModel:IntegerValue" value="0"/>
      <localValue xsi:type="ResourceModel:StringValue" value="0"/>
      <globalValue xsi:type="ResourceModel:IntegerValue" value="0"/>
      <toolTipHelpDescription>Transmit FIFO size '4' has been selected.</toolTipHelpDescription>
    </item>
    <item name="8" evalFunction="&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;function ForwardMapping()&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;{&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;var value = SCM.getIntValue(currentResource);&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;var Res = SCM.getResource(&quot;channel/tbctr_size&quot;);&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;if (value == 1 ) {&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;SCM.setIntValue(Res,3);&#x9;&#x9;&#x9;&#x9;&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;} else if (value === 0){&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;    SCM.setIntValue(Res,0);&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;} &#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;}&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;function BackwardMapping()&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;{&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;var Res = SCM.getResource(&quot;channel/tbctr_size&quot;); &#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;var value = SCM.getIntValue(Res); &#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;if (value === 3 ) { &#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;SCM.setIntValue(currentResource,1);&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;} else if (value == -1 ){&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;SCM.setIntValue(currentResource,0);&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;}else {&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;SCM.setIntValue(currentResource,0);&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;}&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;}&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;" URI="http://www.infineon.com/1.0.4/app/i2c003/0/i2c003_erwtxfifosize/3" downWardmappedList="//@consumed.25" maxValue="1" minValue="0">
      <defaultValue xsi:type="ResourceModel:IntegerValue" value="0"/>
      <localValue xsi:type="ResourceModel:StringValue" value="0"/>
      <globalValue xsi:type="ResourceModel:IntegerValue" value="0"/>
      <toolTipHelpDescription>Transmit FIFO size '8' has been selected.</toolTipHelpDescription>
    </item>
    <item name="16" evalFunction="&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;function ForwardMapping()&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;{&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;var value = SCM.getIntValue(currentResource);&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;var Res = SCM.getResource(&quot;channel/tbctr_size&quot;);&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;if (value == 1 ) {&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;SCM.setIntValue(Res,4);&#x9;&#x9;&#x9;&#x9;&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;} else if (value === 0){&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;    SCM.setIntValue(Res,0);&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;} &#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;}&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;function BackwardMapping()&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;{&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;var Res = SCM.getResource(&quot;channel/tbctr_size&quot;); &#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;var value = SCM.getIntValue(Res); &#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;if (value === 4 ) { &#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;SCM.setIntValue(currentResource,1);&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;} else if (value == -1 ){&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;SCM.setIntValue(currentResource,0);&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;}else {&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;SCM.setIntValue(currentResource,0);&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;}&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;}&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;" URI="http://www.infineon.com/1.0.4/app/i2c003/0/i2c003_erwtxfifosize/4" downWardmappedList="//@consumed.25" maxValue="1" minValue="0">
      <defaultValue xsi:type="ResourceModel:IntegerValue" value="0"/>
      <localValue xsi:type="ResourceModel:StringValue" value="0"/>
      <globalValue xsi:type="ResourceModel:IntegerValue" value="0"/>
      <toolTipHelpDescription>Transmit FIFO size '16' has been selected.</toolTipHelpDescription>
    </item>
    <item name="32" evalFunction="&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;function ForwardMapping()&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;{&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;var value = SCM.getIntValue(currentResource);&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;var Res = SCM.getResource(&quot;channel/tbctr_size&quot;);&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;if (value == 1 ) {&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;SCM.setIntValue(Res,5);&#x9;&#x9;&#x9;&#x9;&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;} else if (value === 0){&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;    SCM.setIntValue(Res,0);&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;} &#x9;&#x9;&#x9;&#x9;&#x9;&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;}&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;function BackwardMapping()&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;{&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;var Res = SCM.getResource(&quot;channel/tbctr_size&quot;); &#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;var value = SCM.getIntValue(Res); &#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;if (value === 5 ) { &#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;SCM.setIntValue(currentResource,1);&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;} else if (value == -1 ){&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;SCM.setIntValue(currentResource,0);&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;}else {&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;SCM.setIntValue(currentResource,0);&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;}&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;}&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;" URI="http://www.infineon.com/1.0.4/app/i2c003/0/i2c003_erwtxfifosize/5" downWardmappedList="//@consumed.25" maxValue="1" minValue="0">
      <defaultValue xsi:type="ResourceModel:IntegerValue" value="0"/>
      <localValue xsi:type="ResourceModel:StringValue" value="0"/>
      <globalValue xsi:type="ResourceModel:IntegerValue" value="0"/>
      <toolTipHelpDescription>Transmit FIFO size '32' has been selected.</toolTipHelpDescription>
    </item>
    <item name="64" evalFunction="&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;function ForwardMapping()&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;{&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;var value = SCM.getIntValue(currentResource);&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;var Res = SCM.getResource(&quot;channel/tbctr_size&quot;);&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;if (value == 1 ) {&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;SCM.setIntValue(Res,6);&#x9;&#x9;&#x9;&#x9;&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;} else if (value === 0){&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;    SCM.setIntValue(Res,0);&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;}&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;}&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;function BackwardMapping()&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;{&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;var Res = SCM.getResource(&quot;channel/tbctr_size&quot;); &#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;var value = SCM.getIntValue(Res); &#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;if (value === 6 ) { &#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;SCM.setIntValue(currentResource,1);&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;} else if (value == -1 ){&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;SCM.setIntValue(currentResource,0);&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;}else {&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;SCM.setIntValue(currentResource,0);&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;}&#xD;&#xA;                               var FIFO_Rx = SCM.getResource(&quot;channel/rbctr_size&quot;);&#xD;&#xA;                               var FIFO_Rx_Value = SCM.getIntValue(FIFO_Rx);&#xD;&#xA;                               if(FIFO_Rx_Value > 0)&#xD;&#xA;                               {&#xD;&#xA;                                 var reserved = SCM.getReserverd();&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;             SCM.setValue(currentResource,reserved);&#xD;&#xA;                               }&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;}&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;" URI="http://www.infineon.com/1.0.4/app/i2c003/0/i2c003_erwtxfifosize/6" downWardmappedList="//@consumed.25" maxValue="1" minValue="0">
      <defaultValue xsi:type="ResourceModel:IntegerValue" value="0"/>
      <localValue xsi:type="ResourceModel:StringValue" value="0"/>
      <globalValue xsi:type="ResourceModel:Reserved" value="Reserved"/>
      <toolTipHelpDescription>Transmit FIFO size '64' has been selected.</toolTipHelpDescription>
    </item>
  </provided>
  <provided xsi:type="ResourceModel:EnumerationParameter" name="Enable Receive FIFO Buffer Configuration" evalFunction="&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;function ForwardMapping()&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;{&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;    var Res0 = SCM.getResource(&quot;I2C003_RxBuffConfigEnDummy&quot;);&#x9;&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;var value = SCM.getIntValue(currentResource); &#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;    var Res1 = SCM.getResource(&quot;channel/rbctr_size&quot;);&#x9;&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;    if(value == 1)&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;{&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;SCM.setIntValue(Res1,1);&#x9;&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;}else if(value == 0){&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;SCM.setIntValue(Res1,0);&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;}&#x9;&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;SCM.setIntValue(Res0,value);&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;}&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;function BackwardMapping()&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;{&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;var Res0 = SCM.getResource(&quot;I2C003_RxBuffConfigEnDummy&quot;);&#x9;&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;var value0 = SCM.getIntValue(Res0);&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;SCM.setIntValue(currentResource,value0);&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;}" URI="http://www.infineon.com/1.0.4/app/i2c003/0/i2c003_erwenblerxfifo" downWardmappedList="//@consumed.23 //@consumed.10" multipleSelections="true">
    <defaultValue xsi:type="ResourceModel:IntegerValue" value="0"/>
    <localValue xsi:type="ResourceModel:StringValue" value="0"/>
    <globalValue xsi:type="ResourceModel:IntegerValue" value="1"/>
    <item name="Enable Receive FIFO Buffer" evalFunction="&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;function ForwardMapping()&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;{&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;    var Res0 = SCM.getResource(&quot;I2C003_RxBuffConfigEnDummy&quot;);&#x9;&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;var value = SCM.getIntValue(currentResource); &#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;    var Res1 = SCM.getResource(&quot;channel/rbctr_size&quot;);&#x9;&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;    if(value == 1)&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;{&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;SCM.setIntValue(Res1,1);&#x9;&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;}else if(value == 0){&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;SCM.setIntValue(Res1,0);&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;}&#x9;&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;SCM.setIntValue(Res0,value);&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;}&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;function BackwardMapping()&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;{&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;var Res0 = SCM.getResource(&quot;I2C003_RxBuffConfigEnDummy&quot;);&#x9;&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;var value0 = SCM.getIntValue(Res0);&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;SCM.setIntValue(currentResource,value0);&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;}" URI="http://www.infineon.com/1.0.4/app/i2c003/0/i2c003_erwenblerxfifo/0" downWardmappedList="//@consumed.23 //@consumed.10" maxValue="1" minValue="0">
      <defaultValue xsi:type="ResourceModel:IntegerValue" value="0"/>
      <localValue xsi:type="ResourceModel:StringValue" value="1"/>
      <globalValue xsi:type="ResourceModel:IntegerValue" value="1"/>
      <toolTipHelpDescription>Enables additional Receive FIFO buffer capability.</toolTipHelpDescription>
    </item>
  </provided>
  <provided xsi:type="ResourceModel:EnumerationParameter" name="Receive FIFO size" URI="http://www.infineon.com/1.0.4/app/i2c003/0/i2c003_irwrxfifosize">
    <localValue xsi:type="ResourceModel:StringValue" value="-1"/>
    <globalValue xsi:type="ResourceModel:StringValue" value="-1"/>
    <toolTipHelpDescription>It defines the number of FIFO entries 
assigned to the receive buffer.</toolTipHelpDescription>
    <item name="0" evalFunction="&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;function ForwardMapping()&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;{&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;var value = SCM.getIntValue(currentResource);&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;var Res = SCM.getResource(&quot;channel/rbctr_size&quot;);&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;if (value == 1 ) {&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;SCM.setIntValue(Res,0);&#x9;&#x9;&#x9;&#x9;&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;} else if (value === 0) {&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;SCM.setIntValue(Res,0);&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;}&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;}&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;function BackwardMapping()&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;{&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;var Res = SCM.getResource(&quot;channel/rbctr_size&quot;); &#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;var value = SCM.getIntValue(Res); &#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;if (value === 0 ) { &#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;SCM.setIntValue(currentResource,1);&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;} else if (value == -1 ){&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;SCM.setIntValue(currentResource,1);&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;}&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;else {&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;SCM.setIntValue(currentResource,0);&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;}&#xD;&#xA;&#xD;&#xA;                               var Res0 = SCM.getResource(&quot;I2C003_RxBuffConfigEnDummy&quot;);&#xD;&#xA;                               var value0 = SCM.getIntValue(Res0);&#xD;&#xA;                               if(value0 == 1)&#xD;&#xA;                               {&#xD;&#xA;                                 var reserved = SCM.getReserverd();&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;             SCM.setValue(currentResource,reserved);&#xD;&#xA;                               }&#x9;&#x9;&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;}&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;" URI="http://www.infineon.com/1.0.4/app/i2c003/0/i2c003_irwrxfifosize/0" downWardmappedList="//@consumed.23" maxValue="1" minValue="0">
      <defaultValue xsi:type="ResourceModel:IntegerValue" value="0"/>
      <localValue xsi:type="ResourceModel:StringValue" value="0"/>
      <globalValue xsi:type="ResourceModel:Reserved" value="Reserved"/>
      <toolTipHelpDescription>Transmit FIFO size '0' has been selected.</toolTipHelpDescription>
    </item>
    <item name="2" evalFunction="&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;function ForwardMapping()&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;{&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;var value = SCM.getIntValue(currentResource);&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;var Res = SCM.getResource(&quot;channel/rbctr_size&quot;);&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;if (value == 1 ) {&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;SCM.setIntValue(Res,1);&#x9;&#x9;&#x9;&#x9;&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;} else if (value === 0) {&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;SCM.setIntValue(Res,0);&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;}&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;}&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;function BackwardMapping()&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;{&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;var Res = SCM.getResource(&quot;channel/rbctr_size&quot;); &#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;var value = SCM.getIntValue(Res); &#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;if (value === 1 ) { &#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;SCM.setIntValue(currentResource,1);&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;} else if (value == -1 ){&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;SCM.setIntValue(currentResource,0);&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;}&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;else {&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;SCM.setIntValue(currentResource,0);&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;}&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;}&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;" URI="http://www.infineon.com/1.0.4/app/i2c003/0/i2c003_irwrxfifosize/1" downWardmappedList="//@consumed.23" maxValue="1" minValue="0">
      <defaultValue xsi:type="ResourceModel:IntegerValue" value="0"/>
      <localValue xsi:type="ResourceModel:StringValue" value="1"/>
      <globalValue xsi:type="ResourceModel:IntegerValue" value="1"/>
      <toolTipHelpDescription>Transmit FIFO size '2' has been selected.</toolTipHelpDescription>
    </item>
    <item name="4" evalFunction="&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;function ForwardMapping()&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;{&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;var value = SCM.getIntValue(currentResource);&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;var Res = SCM.getResource(&quot;channel/rbctr_size&quot;);&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;if (value == 1 ) {&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;SCM.setIntValue(Res,2);&#x9;&#x9;&#x9;&#x9;&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;} else if (value === 0) {&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;SCM.setIntValue(Res,0);&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;}&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;}&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;function BackwardMapping()&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;{&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;var Res = SCM.getResource(&quot;channel/rbctr_size&quot;); &#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;var value = SCM.getIntValue(Res); &#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;if (value === 2 ) { &#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;SCM.setIntValue(currentResource,1);&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;} else if (value == -1 ){&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;SCM.setIntValue(currentResource,0);&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;}&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;else {&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;SCM.setIntValue(currentResource,0);&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;}&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;}&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;" URI="http://www.infineon.com/1.0.4/app/i2c003/0/i2c003_irwrxfifosize/2" downWardmappedList="//@consumed.23" maxValue="1" minValue="0">
      <defaultValue xsi:type="ResourceModel:IntegerValue" value="0"/>
      <localValue xsi:type="ResourceModel:IntegerValue" value="0"/>
      <globalValue xsi:type="ResourceModel:IntegerValue" value="0"/>
      <toolTipHelpDescription>Transmit FIFO size '4' has been selected.</toolTipHelpDescription>
    </item>
    <item name="8" evalFunction="&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;function ForwardMapping()&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;{&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;var value = SCM.getIntValue(currentResource);&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;var Res = SCM.getResource(&quot;channel/rbctr_size&quot;);&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;if (value == 1 ) {&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;SCM.setIntValue(Res,3);&#x9;&#x9;&#x9;&#x9;&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;} else if (value === 0) {&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;SCM.setIntValue(Res,0);&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;}&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;}&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;function BackwardMapping()&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;{&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;var Res = SCM.getResource(&quot;channel/rbctr_size&quot;); &#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;var value = SCM.getIntValue(Res); &#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;if (value === 3 ) { &#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;SCM.setIntValue(currentResource,1);&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;} else if (value == -1 ){&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;SCM.setIntValue(currentResource,0);&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;}&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;else {&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;SCM.setIntValue(currentResource,0);&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;}&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;}&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;" URI="http://www.infineon.com/1.0.4/app/i2c003/0/i2c003_irwrxfifosize/3" downWardmappedList="//@consumed.23" maxValue="1" minValue="0">
      <defaultValue xsi:type="ResourceModel:IntegerValue" value="0"/>
      <localValue xsi:type="ResourceModel:StringValue" value="0"/>
      <globalValue xsi:type="ResourceModel:IntegerValue" value="0"/>
      <toolTipHelpDescription>Transmit FIFO size '8' has been selected.</toolTipHelpDescription>
    </item>
    <item name="16" evalFunction="&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;function ForwardMapping()&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;{&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;var value = SCM.getIntValue(currentResource);&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;var Res = SCM.getResource(&quot;channel/rbctr_size&quot;);&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;if (value == 1 ) {&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;SCM.setIntValue(Res,4);&#x9;&#x9;&#x9;&#x9;&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;} else if (value === 0) {&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;SCM.setIntValue(Res,0);&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;}&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;}&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;function BackwardMapping()&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;{&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;var Res = SCM.getResource(&quot;channel/rbctr_size&quot;); &#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;var value = SCM.getIntValue(Res); &#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;if (value === 4 ) { &#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;SCM.setIntValue(currentResource,1);&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;} else if (value == -1 ){&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;SCM.setIntValue(currentResource,0);&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;}&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;else {&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;SCM.setIntValue(currentResource,0);&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;}&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;}&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;" URI="http://www.infineon.com/1.0.4/app/i2c003/0/i2c003_irwrxfifosize/4" downWardmappedList="//@consumed.23" maxValue="1" minValue="0">
      <defaultValue xsi:type="ResourceModel:IntegerValue" value="0"/>
      <localValue xsi:type="ResourceModel:StringValue" value="0"/>
      <globalValue xsi:type="ResourceModel:IntegerValue" value="0"/>
      <toolTipHelpDescription>Transmit FIFO size '16' has been selected.</toolTipHelpDescription>
    </item>
    <item name="32" evalFunction="&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;function ForwardMapping()&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;{&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;var value = SCM.getIntValue(currentResource);&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;var Res = SCM.getResource(&quot;channel/rbctr_size&quot;);&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;if (value == 1 ) {&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;SCM.setIntValue(Res,5);&#x9;&#x9;&#x9;&#x9;&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;} else if (value === 0) {&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;SCM.setIntValue(Res,0);&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;}&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;}&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;function BackwardMapping()&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;{&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;var Res = SCM.getResource(&quot;channel/rbctr_size&quot;); &#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;var value = SCM.getIntValue(Res); &#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;if (value === 5 ) { &#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;SCM.setIntValue(currentResource,1);&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;} else if (value == -1 ){&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;SCM.setIntValue(currentResource,0);&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;}&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;else {&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;SCM.setIntValue(currentResource,0);&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;}&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;}&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;" URI="http://www.infineon.com/1.0.4/app/i2c003/0/i2c003_irwrxfifosize/5" downWardmappedList="//@consumed.23" maxValue="1" minValue="0">
      <defaultValue xsi:type="ResourceModel:IntegerValue" value="0"/>
      <localValue xsi:type="ResourceModel:StringValue" value="0"/>
      <globalValue xsi:type="ResourceModel:IntegerValue" value="0"/>
      <toolTipHelpDescription>Transmit FIFO size '32' has been selected.</toolTipHelpDescription>
    </item>
    <item name="64" evalFunction="&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;function ForwardMapping()&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;{&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;var value = SCM.getIntValue(currentResource);&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;var Res = SCM.getResource(&quot;channel/rbctr_size&quot;);&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;if (value == 1 ) {&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;SCM.setIntValue(Res,6);&#x9;&#x9;&#x9;&#x9;&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;} else if (value === 0) {&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;SCM.setIntValue(Res,0);&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;}&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;}&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;function BackwardMapping()&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;{&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;var Res = SCM.getResource(&quot;channel/rbctr_size&quot;); &#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;var value = SCM.getIntValue(Res); &#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;if (value === 6 ) { &#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;SCM.setIntValue(currentResource,1);&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;} else if (value == -1 ){&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;SCM.setIntValue(currentResource,0);&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;}&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;else {&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;SCM.setIntValue(currentResource,0);&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;}&#xD;&#xA;                                var FIFO_Tx = SCM.getResource(&quot;channel/tbctr_size&quot;);&#xD;&#xA;                                var FIFO_Tx_Value = SCM.getIntValue(FIFO_Tx);&#xD;&#xA;                                if(FIFO_Tx_Value > 0)&#xD;&#xA;                                {&#xD;&#xA;                                   var reserved = SCM.getReserverd();&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;               SCM.setValue(currentResource,reserved);&#xD;&#xA;                                }&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;}&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;" URI="http://www.infineon.com/1.0.4/app/i2c003/0/i2c003_irwrxfifosize/6" downWardmappedList="//@consumed.23" maxValue="1" minValue="0">
      <defaultValue xsi:type="ResourceModel:IntegerValue" value="0"/>
      <localValue xsi:type="ResourceModel:StringValue" value="0"/>
      <globalValue xsi:type="ResourceModel:Reserved" value="Reserved"/>
      <toolTipHelpDescription>Transmit FIFO size '64' has been selected.</toolTipHelpDescription>
    </item>
  </provided>
  <provided xsi:type="ResourceModel:IntegerParameter" name="Transmit FIFO trigger limit" evalFunction="&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;function ForwardMapping()&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;{&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;var Res = SCM.getResource(&quot;channel/tbctr/limit&quot;); &#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;var Intvalue = SCM.getIntValue(currentResource); &#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;SCM.setIntValue(Res,Intvalue);&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;}&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;function BackwardMapping()&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;{&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;var Res = SCM.getResource(&quot;channel/tbctr/limit&quot;); &#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;var Intvalue = SCM.getIntValue(Res); &#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;SCM.setIntValue(currentResource,Intvalue);&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;}" URI="http://www.infineon.com/1.0.4/app/i2c003/0/i2c003_irwtxfifotrigger" downWardmappedList="//@consumed.24" maxValue="1F" minValue="0">
    <defaultValue xsi:type="ResourceModel:IntegerValue" value="0"/>
    <localValue xsi:type="ResourceModel:StringValue" value="0"/>
    <globalValue xsi:type="ResourceModel:IntegerValue" value="0"/>
    <toolTipHelpDescription>Enter the value less than the 
 selected transmit FIFO size.</toolTipHelpDescription>
  </provided>
  <provided xsi:type="ResourceModel:IntegerParameter" name="Receive FIFO trigger limit" evalFunction="&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;function ForwardMapping()&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;{&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;var Res = SCM.getResource(&quot;channel/rbctr/limit&quot;); &#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;var Intvalue = SCM.getIntValue(currentResource); &#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;SCM.setIntValue(Res,Intvalue);&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;}&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;function BackwardMapping()&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;{&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;var Res = SCM.getResource(&quot;channel/rbctr/limit&quot;); &#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;var Intvalue = SCM.getIntValue(Res); &#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;SCM.setIntValue(currentResource,Intvalue);&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;}" URI="http://www.infineon.com/1.0.4/app/i2c003/0/i2c003_irwrxfifotrigger" downWardmappedList="//@consumed.22" maxValue="1F" minValue="0">
    <defaultValue xsi:type="ResourceModel:IntegerValue" value="0"/>
    <localValue xsi:type="ResourceModel:StringValue" value="0"/>
    <globalValue xsi:type="ResourceModel:IntegerValue" value="0"/>
    <toolTipHelpDescription>Enter the value less than the 
 selected receive FIFO size.</toolTipHelpDescription>
  </provided>
  <provided xsi:type="ResourceModel:StringParameter" name="*Note" evalFunction="&#xD;&#xA;&#x9;            function ForwardMapping()&#xD;&#xA;&#x9;            {&#xD;&#xA;&#x9;            }&#xD;&#xA;&#x9;            function BackwardMapping()&#xD;&#xA;&#x9;            {&#xD;&#xA;&#x9;            }" URI="http://www.infineon.com/1.0.4/app/i2c003/0/i2c003_notefifosize">
    <defaultValue xsi:type="ResourceModel:StringValue" value="The available channels of the USIC module share the 64 data word buffer (FIFO)."/>
    <localValue xsi:type="ResourceModel:StringValue" value="The available channels of the USIC module share the 64 data word buffer (FIFO)."/>
    <globalValue xsi:type="ResourceModel:StringValue" value="The available channels of the USIC module share the 64 data word buffer (FIFO)."/>
  </provided>
  <provided xsi:type="ResourceModel:EnumerationParameter" name="Enable start condition received interrupt" evalFunction="&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;function ForwardMapping()&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;{&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;var Res0 = SCM.getResource(&quot;I2C003_StartCondRecvIntDummy&quot;);&#x9;&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;var value = SCM.getIntValue(currentResource); &#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;SCM.setIntValue(Res0,value);&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;}&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;function BackwardMapping()&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;{&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;var Res0 = SCM.getResource(&quot;I2C003_StartCondRecvIntDummy&quot;);&#x9;&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;var value0 = SCM.getIntValue(Res0);&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;SCM.setIntValue(currentResource,value0);&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;}" URI="http://www.infineon.com/1.0.4/app/i2c003/0/i2c003_erwstartcondrecvint" downWardmappedList="//@consumed.11" multipleSelections="true">
    <defaultValue xsi:type="ResourceModel:IntegerValue" value="0"/>
    <localValue xsi:type="ResourceModel:StringValue" value="0"/>
    <globalValue xsi:type="ResourceModel:IntegerValue" value="1"/>
    <item name="Enable start condition received interrupt" evalFunction="&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;function ForwardMapping()&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;{&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;var Res0 = SCM.getResource(&quot;I2C003_StartCondRecvIntDummy&quot;);&#x9;&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;var value = SCM.getIntValue(currentResource); &#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;SCM.setIntValue(Res0,value);&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;}&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;function BackwardMapping()&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;{&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;var Res0 = SCM.getResource(&quot;I2C003_StartCondRecvIntDummy&quot;);&#x9;&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;var value0 = SCM.getIntValue(Res0);&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;SCM.setIntValue(currentResource,value0);&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;}" URI="http://www.infineon.com/1.0.4/app/i2c003/0/i2c003_erwstartcondrecvint/0" downWardmappedList="//@consumed.11" maxValue="1" minValue="0">
      <defaultValue xsi:type="ResourceModel:IntegerValue" value="0"/>
      <localValue xsi:type="ResourceModel:StringValue" value="1"/>
      <globalValue xsi:type="ResourceModel:IntegerValue" value="1"/>
      <toolTipHelpDescription>Select to enable the start condition received 
 interrupt &amp; also connect the protocol specific 
interrupt signal to the NVIC node.</toolTipHelpDescription>
    </item>
  </provided>
  <provided xsi:type="ResourceModel:EnumerationParameter" name="Enable repeated start condition received interrupt" evalFunction="&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;function ForwardMapping()&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;{&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;var Res0 = SCM.getResource(&quot;I2C003_RepStartCondRecvIntDummy&quot;);&#x9;&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;var value = SCM.getIntValue(currentResource); &#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;SCM.setIntValue(Res0,value);&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;}&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;function BackwardMapping()&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;{&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;var Res0 = SCM.getResource(&quot;I2C003_RepStartCondRecvIntDummy&quot;);&#x9;&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;var value0 = SCM.getIntValue(Res0);&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;SCM.setIntValue(currentResource,value0);&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;}" URI="http://www.infineon.com/1.0.4/app/i2c003/0/i2c003_erwrepstartcondrecvint" downWardmappedList="//@consumed.12" multipleSelections="true">
    <defaultValue xsi:type="ResourceModel:IntegerValue" value="0"/>
    <localValue xsi:type="ResourceModel:StringValue" value="0"/>
    <globalValue xsi:type="ResourceModel:IntegerValue" value="0"/>
    <item name="Enable repeated start condition received interrupt" evalFunction="&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;function ForwardMapping()&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;{&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;var Res0 = SCM.getResource(&quot;I2C003_RepStartCondRecvIntDummy&quot;);&#x9;&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;var value = SCM.getIntValue(currentResource); &#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;SCM.setIntValue(Res0,value);&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;}&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;function BackwardMapping()&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;{&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;var Res0 = SCM.getResource(&quot;I2C003_RepStartCondRecvIntDummy&quot;);&#x9;&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;var value0 = SCM.getIntValue(Res0);&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;SCM.setIntValue(currentResource,value0);&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;}" URI="http://www.infineon.com/1.0.4/app/i2c003/0/i2c003_erwrepstartcondrecvint/0" downWardmappedList="//@consumed.12" maxValue="1" minValue="0">
      <defaultValue xsi:type="ResourceModel:IntegerValue" value="0"/>
      <localValue xsi:type="ResourceModel:StringValue" value="0"/>
      <globalValue xsi:type="ResourceModel:IntegerValue" value="0"/>
      <toolTipHelpDescription>Select to enable the repeated start condition received 
 interrupt &amp; also connect the protocol specific 
interrupt signal to the NVIC node.</toolTipHelpDescription>
    </item>
  </provided>
  <provided xsi:type="ResourceModel:EnumerationParameter" name="Enable stop condition transferred interrupt" evalFunction="&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;function ForwardMapping()&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;{&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;var Res0 = SCM.getResource(&quot;I2C003_StopCondRecvIntEn&quot;);&#x9;&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;var value = SCM.getIntValue(currentResource); &#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;SCM.setIntValue(Res0,value);&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;}&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;function BackwardMapping()&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;{&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;var Res0 = SCM.getResource(&quot;I2C003_StopCondRecvIntEn&quot;);&#x9;&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;var value0 = SCM.getIntValue(Res0);&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;SCM.setIntValue(currentResource,value0);&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;}" URI="http://www.infineon.com/1.0.4/app/i2c003/0/i2c003_erwstopcondrecvint" multipleSelections="true">
    <defaultValue xsi:type="ResourceModel:IntegerValue" value="0"/>
    <localValue xsi:type="ResourceModel:StringValue" value="0"/>
    <globalValue xsi:type="ResourceModel:StringValue" value="0"/>
    <item name="Enable stop condition transferred interrupt" evalFunction="&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;function ForwardMapping()&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;{&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;var Res0 = SCM.getResource(&quot;I2C003_StopCondRecvIntEn&quot;);&#x9;&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;var value = SCM.getIntValue(currentResource); &#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;SCM.setIntValue(Res0,value);&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;}&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;function BackwardMapping()&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;{&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;var Res0 = SCM.getResource(&quot;I2C003_StopCondRecvIntEn&quot;);&#x9;&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;var value0 = SCM.getIntValue(Res0);&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;SCM.setIntValue(currentResource,value0);&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;}" URI="http://www.infineon.com/1.0.4/app/i2c003/0/i2c003_erwstopcondrecvint/0" maxValue="1" minValue="0">
      <defaultValue xsi:type="ResourceModel:IntegerValue" value="0"/>
      <localValue xsi:type="ResourceModel:StringValue" value="0"/>
      <globalValue xsi:type="ResourceModel:StringValue" value="0"/>
      <toolTipHelpDescription>Select to enable the stop condition transferred 
 interrupt &amp; also connect the protocol specific 
interrupt signal to the NVIC node.</toolTipHelpDescription>
    </item>
  </provided>
  <provided xsi:type="ResourceModel:EnumerationParameter" name="Enable slave read requested interrupt" evalFunction="&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;function ForwardMapping()&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;{&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;var Res0 = SCM.getResource(&quot;I2C003_SlaveReadReqIntDummy&quot;);&#x9;&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;var value = SCM.getIntValue(currentResource); &#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;SCM.setIntValue(Res0,value);&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;}&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;function BackwardMapping()&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;{&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;var Res0 = SCM.getResource(&quot;I2C003_SlaveReadReqIntDummy&quot;);&#x9;&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;var value0 = SCM.getIntValue(Res0);&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;SCM.setIntValue(currentResource,value0);&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;}" URI="http://www.infineon.com/1.0.4/app/i2c003/0/i2c003_erwslavereadreqint" downWardmappedList="//@consumed.13" multipleSelections="true">
    <defaultValue xsi:type="ResourceModel:IntegerValue" value="0"/>
    <localValue xsi:type="ResourceModel:StringValue" value="0"/>
    <globalValue xsi:type="ResourceModel:IntegerValue" value="1"/>
    <item name="Enable slave read requested interrupt" evalFunction="&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;function ForwardMapping()&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;{&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;var Res0 = SCM.getResource(&quot;I2C003_SlaveReadReqIntDummy&quot;);&#x9;&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;var value = SCM.getIntValue(currentResource); &#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;SCM.setIntValue(Res0,value);&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;}&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;function BackwardMapping()&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;{&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;var Res0 = SCM.getResource(&quot;I2C003_SlaveReadReqIntDummy&quot;);&#x9;&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;var value0 = SCM.getIntValue(Res0);&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;SCM.setIntValue(currentResource,value0);&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;}" URI="http://www.infineon.com/1.0.4/app/i2c003/0/i2c003_erwslavereadreqint/0" downWardmappedList="//@consumed.13" maxValue="1" minValue="0">
      <defaultValue xsi:type="ResourceModel:IntegerValue" value="0"/>
      <localValue xsi:type="ResourceModel:StringValue" value="1"/>
      <globalValue xsi:type="ResourceModel:IntegerValue" value="1"/>
      <toolTipHelpDescription>Select to enable the slave read requested 
interrupt &amp; also connect the protocol specific 
interrupt signal to the NVIC node.</toolTipHelpDescription>
    </item>
  </provided>
  <provided xsi:type="ResourceModel:EnumerationParameter" name="Enable error interrupt" evalFunction="&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;function ForwardMapping()&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;{&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;var Res0 = SCM.getResource(&quot;I2C003_ErrorIntDummy&quot;);&#x9;&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;var value = SCM.getIntValue(currentResource); &#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;SCM.setIntValue(Res0,value);&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;}&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;function BackwardMapping()&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;{&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;var Res0 = SCM.getResource(&quot;I2C003_ErrorIntDummy&quot;);&#x9;&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;var value0 = SCM.getIntValue(Res0);&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;SCM.setIntValue(currentResource,value0);&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;}" URI="http://www.infineon.com/1.0.4/app/i2c003/0/i2c003_erwerrorint" downWardmappedList="//@consumed.14" multipleSelections="true">
    <defaultValue xsi:type="ResourceModel:IntegerValue" value="0"/>
    <localValue xsi:type="ResourceModel:StringValue" value="0"/>
    <globalValue xsi:type="ResourceModel:IntegerValue" value="0"/>
    <item name="Enable protocol error interrupt" evalFunction="&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;function ForwardMapping()&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;{&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;var Res0 = SCM.getResource(&quot;I2C003_ErrorIntDummy&quot;);&#x9;&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;var value = SCM.getIntValue(currentResource); &#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;SCM.setIntValue(Res0,value);&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;}&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;function BackwardMapping()&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;{&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;var Res0 = SCM.getResource(&quot;I2C003_ErrorIntDummy&quot;);&#x9;&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;var value0 = SCM.getIntValue(Res0);&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;SCM.setIntValue(currentResource,value0);&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;}" URI="http://www.infineon.com/1.0.4/app/i2c003/0/i2c003_erwerrorint/0" downWardmappedList="//@consumed.14" maxValue="1" minValue="0">
      <defaultValue xsi:type="ResourceModel:IntegerValue" value="0"/>
      <localValue xsi:type="ResourceModel:StringValue" value="0"/>
      <globalValue xsi:type="ResourceModel:IntegerValue" value="0"/>
      <toolTipHelpDescription>Select to enable the error interrupt &amp; 
also connect the protocol specific 
interrupt signal to the NVIC node.</toolTipHelpDescription>
    </item>
  </provided>
  <provided xsi:type="ResourceModel:EnumerationParameter" name="SDA Output characteristics" evalFunction="&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;function ForwardMapping()&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;{&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;var Res = SCM.getResource(&quot;i2c_sda/iocr_po&quot;); &#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;var value = SCM.getIntValue(currentResource);  &#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;SCM.setIntValue(Res,value);&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;}&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;function BackwardMapping()&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;{&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;var Res = SCM.getResource(&quot;i2c_sda/iocr_po&quot;); &#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;var value = SCM.getIntValue(Res); &#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;if (value == -1) {&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;SCM.setIntValue(currentResource,0);&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;} else {&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;SCM.setIntValue(currentResource,value);&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;}&#x9;&#x9;&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;}&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;" URI="http://www.infineon.com/1.0.4/app/i2c003/0/i2c003_erwsdaoutputchar" downWardmappedList="//@consumed.41">
    <localValue xsi:type="ResourceModel:StringValue" value="-1"/>
    <globalValue xsi:type="ResourceModel:IntegerValue" value="1"/>
    <toolTipHelpDescription></toolTipHelpDescription>
    <item name="Push Pull" evalFunction="&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;function ForwardMapping()&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;{&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;var value = SCM.getIntValue(currentResource);&#xD;&#xA; &#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;var Res = SCM.getResource(&quot;i2c_sda/iocr_po&quot;);&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;if (value == 1 ) {&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;SCM.setIntValue(Res,0);&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;} else if (value === 0 ) {&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;SCM.setIntValue(Res,1);&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;}&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;}&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;function BackwardMapping()&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;{&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;var Res = SCM.getResource(&quot;i2c_sda/iocr_po&quot;); &#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;var value = SCM.getIntValue(Res); &#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;if (value === 0 ) {&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;SCM.setIntValue(currentResource,1);&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;} else if (value == 1) {&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;SCM.setIntValue(currentResource,0);&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;} else if (value == -1) {&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;SCM.setIntValue(currentResource,1);&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;}&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;}&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;" URI="http://www.infineon.com/1.0.4/app/i2c003/0/i2c003_erwsdaoutputchar/0" downWardmappedList="//@consumed.41" maxValue="1" minValue="0">
      <defaultValue xsi:type="ResourceModel:IntegerValue" value="0"/>
      <localValue xsi:type="ResourceModel:StringValue" value="0"/>
      <globalValue xsi:type="ResourceModel:IntegerValue" value="0"/>
      <toolTipHelpDescription>This selection enables Push Pull mode</toolTipHelpDescription>
    </item>
    <item name="Open Drain" evalFunction="&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;function ForwardMapping()&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;{&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;var value = SCM.getIntValue(currentResource);&#xD;&#xA; &#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;var Res = SCM.getResource(&quot;i2c_sda/iocr_po&quot;);&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;if (value == 1 ) {&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;SCM.setIntValue(Res,1);&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;} else if (value === 0 ) {&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;SCM.setIntValue(Res,0);&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;}&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;}&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;function BackwardMapping()&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;{&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;var Res = SCM.getResource(&quot;i2c_sda/iocr_po&quot;); &#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;var value = SCM.getIntValue(Res); &#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;if (value == 1 ) {&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;SCM.setIntValue(currentResource,1);&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;} else if ( value === 0) {&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;SCM.setIntValue(currentResource,0);&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;} else if (value == -1) {&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;SCM.setIntValue(currentResource,0);&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;}&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;}&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;" URI="http://www.infineon.com/1.0.4/app/i2c003/0/i2c003_erwsdaoutputchar/1" downWardmappedList="//@consumed.41" maxValue="1" minValue="0">
      <defaultValue xsi:type="ResourceModel:IntegerValue" value="1"/>
      <localValue xsi:type="ResourceModel:StringValue" value="1"/>
      <globalValue xsi:type="ResourceModel:IntegerValue" value="1"/>
      <toolTipHelpDescription>This selection enables Open Drain mode</toolTipHelpDescription>
    </item>
  </provided>
  <provided xsi:type="ResourceModel:EnumerationParameter" name="SCL Output Characteristics" evalFunction="&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;function ForwardMapping()&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;{&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;var Res = SCM.getResource(&quot;i2c_scl/iocr_po&quot;); &#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;var value = SCM.getIntValue(currentResource);  &#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;SCM.setIntValue(Res,value);&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;}&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;function BackwardMapping()&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;{&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;var Res = SCM.getResource(&quot;i2c_scl/iocr_po&quot;); &#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;var value = SCM.getIntValue(Res); &#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;if (value == -1) {&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;SCM.setIntValue(currentResource,0);&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;} else {&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;SCM.setIntValue(currentResource,value);&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;}&#x9;&#x9;&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;}&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;" URI="http://www.infineon.com/1.0.4/app/i2c003/0/i2c003_erwscloutputchar" downWardmappedList="//@consumed.42">
    <localValue xsi:type="ResourceModel:StringValue" value="-1"/>
    <globalValue xsi:type="ResourceModel:IntegerValue" value="1"/>
    <toolTipHelpDescription></toolTipHelpDescription>
    <item name="Push Pull" evalFunction="&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;function ForwardMapping()&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;{&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;var value = SCM.getIntValue(currentResource);&#xD;&#xA; &#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;var Res = SCM.getResource(&quot;i2c_scl/iocr_po&quot;);&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;if (value == 1 ) {&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;SCM.setIntValue(Res,0);&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;} else if (value === 0 ) {&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;SCM.setIntValue(Res,1);&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;}&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;}&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;function BackwardMapping()&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;{&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;var Res = SCM.getResource(&quot;i2c_scl/iocr_po&quot;); &#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;var value = SCM.getIntValue(Res); &#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;if (value === 0 ) {&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;SCM.setIntValue(currentResource,1);&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;} else if (value == 1) {&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;SCM.setIntValue(currentResource,0);&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;} else if (value == -1) {&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;SCM.setIntValue(currentResource,0);&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;}&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;}&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;" URI="http://www.infineon.com/1.0.4/app/i2c003/0/i2c003_erwscloutputchar/0" downWardmappedList="//@consumed.42" maxValue="1" minValue="0">
      <defaultValue xsi:type="ResourceModel:IntegerValue" value="0"/>
      <localValue xsi:type="ResourceModel:StringValue" value="0"/>
      <globalValue xsi:type="ResourceModel:IntegerValue" value="0"/>
      <toolTipHelpDescription>This selection enables Push Pull mode</toolTipHelpDescription>
    </item>
    <item name="Open Drain" evalFunction="&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;function ForwardMapping()&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;{&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;var value = SCM.getIntValue(currentResource);&#xD;&#xA; &#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;var Res = SCM.getResource(&quot;i2c_scl/iocr_po&quot;);&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;if (value == 1 ) {&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;SCM.setIntValue(Res,1);&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;} else if (value === 0 ) {&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;SCM.setIntValue(Res,0);&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;}&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;}&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;function BackwardMapping()&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;{&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;var Res = SCM.getResource(&quot;i2c_scl/iocr_po&quot;); &#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;var value = SCM.getIntValue(Res); &#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;if (value == 1 ) {&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;SCM.setIntValue(currentResource,1);&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;} else if ( value === 0) {&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;SCM.setIntValue(currentResource,0);&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;} else if (value == -1) {&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;SCM.setIntValue(currentResource,1);&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;}&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;}&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;" URI="http://www.infineon.com/1.0.4/app/i2c003/0/i2c003_erwscloutputchar/1" downWardmappedList="//@consumed.42" maxValue="1" minValue="0">
      <defaultValue xsi:type="ResourceModel:IntegerValue" value="1"/>
      <localValue xsi:type="ResourceModel:StringValue" value="1"/>
      <globalValue xsi:type="ResourceModel:IntegerValue" value="1"/>
      <toolTipHelpDescription>This selection enables Open Drain mode</toolTipHelpDescription>
    </item>
  </provided>
  <provided xsi:type="ResourceModel:API" description="Initializes the App based on User provide configuration." URI="http://www.infineon.com/1.0.4/app/i2c003/0/i2c003_init" APIName="I2C003_Init">
    <localValue xsi:type="ResourceModel:StringValue" value="-1"/>
    <globalValue xsi:type="ResourceModel:StringValue" value="-1"/>
  </provided>
  <provided xsi:type="ResourceModel:API" description="This function initializes the Local Data structure allocated by&#xD;&#xA;                the Task/App with the configured values." URI="http://www.infineon.com/1.0.4/app/i2c003/0/i2c003_configure" APIName="I2C003_Configure">
    <localValue xsi:type="ResourceModel:StringValue" value="-1"/>
    <globalValue xsi:type="ResourceModel:StringValue" value="-1"/>
  </provided>
  <provided xsi:type="ResourceModel:API" description="This function reads the data. The function reads the data &#xD;&#xA;                available in the FIFO buffer." URI="http://www.infineon.com/1.0.4/app/i2c003/0/i2c003_readdatafifo" APIName="I2C003_ReadDataFIFO">
    <localValue xsi:type="ResourceModel:StringValue" value="-1"/>
    <globalValue xsi:type="ResourceModel:StringValue" value="-1"/>
  </provided>
  <provided xsi:type="ResourceModel:API" description="This function starts the I2C Transmission." URI="http://www.infineon.com/1.0.4/app/i2c003/0/i2c003_writedatafifo" APIName="I2C003_WriteDataFIFO">
    <localValue xsi:type="ResourceModel:StringValue" value="-1"/>
    <globalValue xsi:type="ResourceModel:StringValue" value="-1"/>
  </provided>
  <provided xsi:type="ResourceModel:API" description="This function gets the values in status register" URI="http://www.infineon.com/1.0.4/app/i2c003/0/i2c003_getflagstatus" APIName="I2C003_GetFlagStatus">
    <localValue xsi:type="ResourceModel:StringValue" value="-1"/>
    <globalValue xsi:type="ResourceModel:StringValue" value="-1"/>
  </provided>
  <provided xsi:type="ResourceModel:API" description="This function clears the values set in status register as&#xD;&#xA;                configured by the user." URI="http://www.infineon.com/1.0.4/app/i2c003/0/i2c003_clearflag" APIName="I2C003_ClearFlag">
    <localValue xsi:type="ResourceModel:StringValue" value="-1"/>
    <globalValue xsi:type="ResourceModel:StringValue" value="-1"/>
  </provided>
  <consumed xsi:type="ResourceModel:ProxyResource" evalFunction="function resourceCondition() {&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;  var value = Solver.getSoftwareId();&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;  if ((value == &quot;45.0.1&quot;)||(value == &quot;45.0.2&quot;)||(value == &quot;45.0.3&quot;)||(value == &quot;45.2.3&quot;)||(value == &quot;45.4.2&quot;)||(value == &quot;45.4.3&quot;)) {&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;          var constr = &quot;reserved([peripheral,usic,UU,channel,_],chres1) \n uri_element_range(UU,[0,1]) \n register_value(chres1,rbctr_size,-1) \n register_value(chres1,tbctr_size,-1)&quot;;&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;          Solver.setConstraintString(constr);&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;      } else {&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;          var constr = &quot;reserved([peripheral,usic,UU,channel,_],chres1) \n uri_element_range(UU,[0,1,2]) \n register_value(chres1,rbctr_size,-1) \n register_value(chres1,tbctr_size,-1)&quot;;&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;          Solver.setConstraintString(constr);&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;      } &#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;  return true;&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;}" URI="http://www.infineon.com/1.0.4/app/i2c003/0/channel">
    <downWardmappedList xsi:type="ResourceModel:ResourceGroup" href="../../USIC0/USIC0_0.dd#//@provided.35"/>
    <requiredResource uriString="peripheral/usic/*/channel/*" uriType="LOCALTYPE"/>
  </consumed>
  <consumed xsi:type="ResourceModel:ProxyResource" name="I2C SCL" URI="http://www.infineon.com/1.0.4/app/i2c003/0/i2c_scl">
    <downWardmappedList xsi:type="ResourceModel:ResourceGroup" href="../../P2/P2_2.dd#//@provided.34"/>
    <requiredResource uriString="port/p/2/pad/11" uriType="LOCALTYPE"/>
  </consumed>
  <consumed xsi:type="ResourceModel:ProxyResource" name="I2C SDA" URI="http://www.infineon.com/1.0.4/app/i2c003/0/i2c_sda">
    <downWardmappedList xsi:type="ResourceModel:ResourceGroup" href="../../P2/P2_2.dd#//@provided.37"/>
    <requiredResource uriString="port/p/2/pad/10" uriType="LOCALTYPE"/>
  </consumed>
  <consumed xsi:type="ResourceModel:ProxyResource" evalFunction="function resourceCondition() {&#xD;&#xA;&#x9;&#x9;&#x9;&#x9; var value1 = Solver.getSoftwareId().substring(0,1).compareTo(&quot;1&quot;);&#xD;&#xA;&#x9;&#x9;&#x9;&#x9; if((value1  == 0 )) {&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;  return false;&#xD;&#xA;&#x9;&#x9;&#x9;&#x9; }&#xD;&#xA;&#x9;&#x9;&#x9;&#x9; return true;&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;}" URI="http://www.infineon.com/1.0.4/app/i2c003/0/clockapp_xmc4000">
    <requiredResource uriString="app/clk001/*" uriType="LOCALTYPE"/>
  </consumed>
  <consumed xsi:type="ResourceModel:ProxyResource" evalFunction="function resourceCondition() {&#xD;&#xA;&#x9;&#x9;&#x9;&#x9; var value1 = Solver.getSoftwareId().substring(0,1).compareTo(&quot;1&quot;);&#xD;&#xA;&#x9;&#x9;&#x9;&#x9; if((value1  == 0 )) {&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;  return true;&#xD;&#xA;&#x9;&#x9;&#x9;&#x9; }&#xD;&#xA;&#x9;&#x9;&#x9;&#x9; return false;&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;}" URI="http://www.infineon.com/1.0.4/app/i2c003/0/clockapp_xmc1000">
    <downWardmappedList xsi:type="ResourceModel:App" href="../../CLK002/1.0.8/clk002_0.app#/"/>
    <requiredResource uriString="app/clk002/*" uriType="LOCALTYPE"/>
  </consumed>
  <consumed xsi:type="ResourceModel:ProxyResource" evalFunction="function resourceCondition() {&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;var value1 = Solver.getSoftwareId().substring(0,1).compareTo(&quot;1&quot;);&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;if(value1  == 0 ) {&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;  return false;&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;}&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;return true;&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;}" URI="http://www.infineon.com/1.0.4/app/i2c003/0/resetapp1">
    <requiredResource uriString="app/reset001/*" uriType="LOCALTYPE"/>
  </consumed>
  <consumed xsi:type="ResourceModel:ProxyResource" URI="http://www.infineon.com/1.0.4/app/i2c003/0/i2c003_desbitratetemp" upWardMappingList="//@provided.21 //@provided.22" isSystemDefined="true">
    <localValue xsi:type="ResourceModel:IntegerValue" value="64"/>
    <globalValue xsi:type="ResourceModel:IntegerValue" value="64"/>
    <requiredResource uriString="" uriType="LOCALTYPE"/>
  </consumed>
  <consumed xsi:type="ResourceModel:ProxyResource" URI="http://www.infineon.com/1.0.4/app/i2c003/0/i2c003_addressmodedummy" upWardMappingList="//@provided.19 //@provided.19/@item.0 //@provided.19/@item.1 //@provided.20" isSystemDefined="true">
    <localValue xsi:type="ResourceModel:IntegerValue" value="2"/>
    <globalValue xsi:type="ResourceModel:IntegerValue" value="2"/>
    <requiredResource uriString="" uriType="LOCALTYPE"/>
  </consumed>
  <consumed xsi:type="ResourceModel:ProxyResource" URI="http://www.infineon.com/1.0.4/app/i2c003/0/i2c003_slaveaddressdummy" upWardMappingList="//@provided.20" isSystemDefined="true">
    <localValue xsi:type="ResourceModel:IntegerValue" value="15e"/>
    <globalValue xsi:type="ResourceModel:IntegerValue" value="15e"/>
    <requiredResource uriString="" uriType="LOCALTYPE"/>
  </consumed>
  <consumed xsi:type="ResourceModel:ProxyResource" URI="http://www.infineon.com/1.0.4/app/i2c003/0/i2c003_txbuffconfigendummy" upWardMappingList="//@provided.24 //@provided.24/@item.0 //@provided.25/@item.0" isSystemDefined="true">
    <localValue xsi:type="ResourceModel:IntegerValue" value="1"/>
    <globalValue xsi:type="ResourceModel:IntegerValue" value="1"/>
    <requiredResource uriString="" uriType="LOCALTYPE"/>
  </consumed>
  <consumed xsi:type="ResourceModel:ProxyResource" URI="http://www.infineon.com/1.0.4/app/i2c003/0/i2c003_rxbuffconfigendummy" upWardMappingList="//@provided.26 //@provided.26/@item.0 //@provided.27/@item.0" isSystemDefined="true">
    <localValue xsi:type="ResourceModel:IntegerValue" value="1"/>
    <globalValue xsi:type="ResourceModel:IntegerValue" value="1"/>
    <requiredResource uriString="" uriType="LOCALTYPE"/>
  </consumed>
  <consumed xsi:type="ResourceModel:ProxyResource" URI="http://www.infineon.com/1.0.4/app/i2c003/0/i2c003_startcondrecvintdummy" upWardMappingList="//@provided.31 //@provided.31/@item.0" isSystemDefined="true">
    <localValue xsi:type="ResourceModel:IntegerValue" value="1"/>
    <globalValue xsi:type="ResourceModel:IntegerValue" value="1"/>
    <requiredResource uriString="" uriType="LOCALTYPE"/>
  </consumed>
  <consumed xsi:type="ResourceModel:ProxyResource" URI="http://www.infineon.com/1.0.4/app/i2c003/0/i2c003_repstartcondrecvintdummy" upWardMappingList="//@provided.32 //@provided.32/@item.0" isSystemDefined="true">
    <localValue xsi:type="ResourceModel:IntegerValue" value="0"/>
    <globalValue xsi:type="ResourceModel:IntegerValue" value="0"/>
    <requiredResource uriString="" uriType="LOCALTYPE"/>
  </consumed>
  <consumed xsi:type="ResourceModel:ProxyResource" URI="http://www.infineon.com/1.0.4/app/i2c003/0/i2c003_slavereadreqintdummy" upWardMappingList="//@provided.34 //@provided.34/@item.0" isSystemDefined="true">
    <localValue xsi:type="ResourceModel:IntegerValue" value="1"/>
    <globalValue xsi:type="ResourceModel:IntegerValue" value="1"/>
    <requiredResource uriString="" uriType="LOCALTYPE"/>
  </consumed>
  <consumed xsi:type="ResourceModel:ProxyResource" URI="http://www.infineon.com/1.0.4/app/i2c003/0/i2c003_errorintdummy" upWardMappingList="//@provided.35 //@provided.35/@item.0" isSystemDefined="true">
    <localValue xsi:type="ResourceModel:IntegerValue" value="0"/>
    <globalValue xsi:type="ResourceModel:IntegerValue" value="0"/>
    <requiredResource uriString="" uriType="LOCALTYPE"/>
  </consumed>
  <consumed xsi:type="ResourceModel:ProxyResource" URI="http://www.infineon.com/1.0.4/app/i2c003/0/i2c003_sdapadclassdummy" isSystemDefined="true">
    <requiredResource uriString="" uriType="LOCALTYPE"/>
  </consumed>
  <consumed xsi:type="ResourceModel:ProxyResource" URI="http://www.infineon.com/1.0.4/app/i2c003/0/channel/transmit_buffer_int" isSystemDefined="true">
    <downWardmappedList xsi:type="ResourceModel:SignalDeclaration" href="../../USIC0/USIC0_0.dd#//@provided.36"/>
  </consumed>
  <consumed xsi:type="ResourceModel:ProxyResource" URI="http://www.infineon.com/1.0.4/app/i2c003/0/channel/dx1ins" isSystemDefined="true">
    <downWardmappedList xsi:type="ResourceModel:SignalDeclaration" href="../../USIC0/USIC0_0.dd#//@provided.37"/>
  </consumed>
  <consumed xsi:type="ResourceModel:ProxyResource" URI="http://www.infineon.com/1.0.4/app/i2c003/0/channel/data_lost_int" isSystemDefined="true">
    <downWardmappedList xsi:type="ResourceModel:SignalDeclaration" href="../../USIC0/USIC0_0.dd#//@provided.38"/>
  </consumed>
  <consumed xsi:type="ResourceModel:ProxyResource" URI="http://www.infineon.com/1.0.4/app/i2c003/0/channel/baud_rate_int" isSystemDefined="true">
    <downWardmappedList xsi:type="ResourceModel:SignalDeclaration" href="../../USIC0/USIC0_0.dd#//@provided.39"/>
  </consumed>
  <consumed xsi:type="ResourceModel:ProxyResource" URI="http://www.infineon.com/1.0.4/app/i2c003/0/channel/standard_transmit_buffer_int" isSystemDefined="true">
    <downWardmappedList xsi:type="ResourceModel:SignalDeclaration" href="../../USIC0/USIC0_0.dd#//@provided.40"/>
  </consumed>
  <consumed xsi:type="ResourceModel:ProxyResource" URI="http://www.infineon.com/1.0.4/app/i2c003/0/channel/transmit_shift_int" isSystemDefined="true">
    <downWardmappedList xsi:type="ResourceModel:SignalDeclaration" href="../../USIC0/USIC0_0.dd#//@provided.41"/>
  </consumed>
  <consumed xsi:type="ResourceModel:ProxyResource" URI="http://www.infineon.com/1.0.4/app/i2c003/0/channel/rbctr/limit" upWardMappingList="//@provided.29" isSystemDefined="true">
    <localValue xsi:type="ResourceModel:IntegerValue" value="0"/>
    <downWardmappedList xsi:type="ResourceModel:BitField" href="../../USIC0/USIC0_0.dd#//@provided.42"/>
    <globalValue xsi:type="ResourceModel:IntegerValue" value="0"/>
  </consumed>
  <consumed xsi:type="ResourceModel:ProxyResource" URI="http://www.infineon.com/1.0.4/app/i2c003/0/channel/rbctr_size" upWardMappingList="//@provided.25/@item.6 //@provided.26 //@provided.26/@item.0 //@provided.27/@item.0 //@provided.27/@item.1 //@provided.27/@item.2 //@provided.27/@item.3 //@provided.27/@item.4 //@provided.27/@item.5 //@provided.27/@item.6" isSystemDefined="true">
    <localValue xsi:type="ResourceModel:IntegerValue" value="1"/>
    <downWardmappedList xsi:type="ResourceModel:BitField" href="../../USIC0/USIC0_0.dd#//@provided.43"/>
    <globalValue xsi:type="ResourceModel:IntegerValue" value="1"/>
  </consumed>
  <consumed xsi:type="ResourceModel:ProxyResource" URI="http://www.infineon.com/1.0.4/app/i2c003/0/channel/tbctr/limit" upWardMappingList="//@provided.24/@item.0 //@provided.28" isSystemDefined="true">
    <localValue xsi:type="ResourceModel:IntegerValue" value="0"/>
    <downWardmappedList xsi:type="ResourceModel:BitField" href="../../USIC0/USIC0_0.dd#//@provided.44"/>
    <globalValue xsi:type="ResourceModel:IntegerValue" value="0"/>
  </consumed>
  <consumed xsi:type="ResourceModel:ProxyResource" URI="http://www.infineon.com/1.0.4/app/i2c003/0/channel/tbctr_size" upWardMappingList="//@provided.24 //@provided.24/@item.0 //@provided.25/@item.0 //@provided.25/@item.1 //@provided.25/@item.2 //@provided.25/@item.3 //@provided.25/@item.4 //@provided.25/@item.5 //@provided.25/@item.6 //@provided.27/@item.6" isSystemDefined="true">
    <localValue xsi:type="ResourceModel:IntegerValue" value="1"/>
    <downWardmappedList xsi:type="ResourceModel:BitField" href="../../USIC0/USIC0_0.dd#//@provided.45"/>
    <globalValue xsi:type="ResourceModel:IntegerValue" value="1"/>
  </consumed>
  <consumed xsi:type="ResourceModel:ProxyResource" URI="http://www.infineon.com/1.0.4/app/i2c003/0/channel/brg/pdiv" upWardMappingList="//@provided.21" isSystemDefined="true">
    <localValue xsi:type="ResourceModel:IntegerValue" value="f"/>
    <downWardmappedList xsi:type="ResourceModel:BitField" href="../../USIC0/USIC0_0.dd#//@provided.46"/>
    <globalValue xsi:type="ResourceModel:IntegerValue" value="f"/>
  </consumed>
  <consumed xsi:type="ResourceModel:ProxyResource" URI="http://www.infineon.com/1.0.4/app/i2c003/0/channel/fdr/step" upWardMappingList="//@provided.21" isSystemDefined="true">
    <localValue xsi:type="ResourceModel:IntegerValue" value="200"/>
    <downWardmappedList xsi:type="ResourceModel:BitField" href="../../USIC0/USIC0_0.dd#//@provided.47"/>
    <globalValue xsi:type="ResourceModel:IntegerValue" value="200"/>
  </consumed>
  <consumed xsi:type="ResourceModel:ProxyResource" URI="http://www.infineon.com/1.0.4/app/i2c003/0/channel/transmit_buffer_error_int" isSystemDefined="true">
    <downWardmappedList xsi:type="ResourceModel:SignalDeclaration" href="../../USIC0/USIC0_0.dd#//@provided.48"/>
  </consumed>
  <consumed xsi:type="ResourceModel:ProxyResource" URI="http://www.infineon.com/1.0.4/app/i2c003/0/channel/standard_receive_buffer_int" isSystemDefined="true">
    <downWardmappedList xsi:type="ResourceModel:SignalDeclaration" href="../../USIC0/USIC0_0.dd#//@provided.49"/>
  </consumed>
  <consumed xsi:type="ResourceModel:ProxyResource" URI="http://www.infineon.com/1.0.4/app/i2c003/0/channel/receive_buffer_error_int" isSystemDefined="true">
    <downWardmappedList xsi:type="ResourceModel:SignalDeclaration" href="../../USIC0/USIC0_0.dd#//@provided.50"/>
  </consumed>
  <consumed xsi:type="ResourceModel:ProxyResource" URI="http://www.infineon.com/1.0.4/app/i2c003/0/channel/receive_start_int" isSystemDefined="true">
    <downWardmappedList xsi:type="ResourceModel:SignalDeclaration" href="../../USIC0/USIC0_0.dd#//@provided.51"/>
  </consumed>
  <consumed xsi:type="ResourceModel:ProxyResource" URI="http://www.infineon.com/1.0.4/app/i2c003/0/channel/standard_receive_int" isSystemDefined="true">
    <downWardmappedList xsi:type="ResourceModel:SignalDeclaration" href="../../USIC0/USIC0_0.dd#//@provided.52"/>
  </consumed>
  <consumed xsi:type="ResourceModel:ProxyResource" URI="http://www.infineon.com/1.0.4/app/i2c003/0/channel/alternate_receive_int" isSystemDefined="true">
    <downWardmappedList xsi:type="ResourceModel:SignalDeclaration" href="../../USIC0/USIC0_0.dd#//@provided.53"/>
  </consumed>
  <consumed xsi:type="ResourceModel:ProxyResource" URI="http://www.infineon.com/1.0.4/app/i2c003/0/channel/protocol_specific_int" isSystemDefined="true">
    <downWardmappedList xsi:type="ResourceModel:SignalDeclaration" href="../../USIC0/USIC0_0.dd#//@provided.54"/>
  </consumed>
  <consumed xsi:type="ResourceModel:ProxyResource" URI="http://www.infineon.com/1.0.4/app/i2c003/0/channel/alternate_receive_buffer_int" isSystemDefined="true">
    <downWardmappedList xsi:type="ResourceModel:SignalDeclaration" href="../../USIC0/USIC0_0.dd#//@provided.55"/>
  </consumed>
  <consumed xsi:type="ResourceModel:ProxyResource" URI="http://www.infineon.com/1.0.4/app/i2c003/0/channel/dx0ins" isSystemDefined="true">
    <downWardmappedList xsi:type="ResourceModel:SignalDeclaration" href="../../USIC0/USIC0_0.dd#//@provided.56"/>
  </consumed>
  <consumed xsi:type="ResourceModel:ProxyResource" URI="http://www.infineon.com/1.0.4/app/i2c003/0/channel/dout0" isSystemDefined="true">
    <downWardmappedList xsi:type="ResourceModel:SignalDeclaration" href="../../USIC0/USIC0_0.dd#//@provided.57"/>
  </consumed>
  <consumed xsi:type="ResourceModel:ProxyResource" URI="http://www.infineon.com/1.0.4/app/i2c003/0/channel/sclkout" isSystemDefined="true">
    <downWardmappedList xsi:type="ResourceModel:SignalDeclaration" href="../../USIC0/USIC0_0.dd#//@provided.58"/>
  </consumed>
  <consumed xsi:type="ResourceModel:ProxyResource" URI="http://www.infineon.com/1.0.4/app/i2c003/0/clockapp_xmc4000/clk001_iroactualfreqpb" isSystemDefined="true"/>
  <consumed xsi:type="ResourceModel:ProxyResource" URI="http://www.infineon.com/1.0.4/app/i2c003/0/clockapp_xmc1000/clk002_irmclk" upWardMappingList="//@provided.21 //@provided.22 //@provided.23" isSystemDefined="true">
    <localValue xsi:type="ResourceModel:IntegerValue" value="20"/>
    <downWardmappedList xsi:type="ResourceModel:IntegerParameter" href="../../CLK002/1.0.8/clk002_0.app#//@provided.6"/>
    <globalValue xsi:type="ResourceModel:IntegerValue" value="20"/>
  </consumed>
  <consumed xsi:type="ResourceModel:ProxyResource" URI="http://www.infineon.com/1.0.4/app/i2c003/0/i2c_sda/iocr_po" upWardMappingList="//@provided.36 //@provided.36/@item.0 //@provided.36/@item.1" isSystemDefined="true">
    <localValue xsi:type="ResourceModel:IntegerValue" value="1"/>
    <downWardmappedList xsi:type="ResourceModel:BitField" href="../../P2/P2_2.dd#//@provided.38"/>
    <globalValue xsi:type="ResourceModel:IntegerValue" value="1"/>
  </consumed>
  <consumed xsi:type="ResourceModel:ProxyResource" URI="http://www.infineon.com/1.0.4/app/i2c003/0/i2c_scl/iocr_po" upWardMappingList="//@provided.37 //@provided.37/@item.0 //@provided.37/@item.1" isSystemDefined="true">
    <localValue xsi:type="ResourceModel:IntegerValue" value="1"/>
    <downWardmappedList xsi:type="ResourceModel:BitField" href="../../P2/P2_2.dd#//@provided.35"/>
    <globalValue xsi:type="ResourceModel:IntegerValue" value="1"/>
  </consumed>
  <consumed xsi:type="ResourceModel:ProxyResource" URI="http://www.infineon.com/1.0.4/app/i2c003/0/i2c_sda/pad" isSystemDefined="true">
    <downWardmappedList xsi:type="ResourceModel:SignalDeclaration" href="../../P2/P2_2.dd#//@provided.39"/>
  </consumed>
  <consumed xsi:type="ResourceModel:ProxyResource" URI="http://www.infineon.com/1.0.4/app/i2c003/0/i2c_scl/pad" isSystemDefined="true">
    <downWardmappedList xsi:type="ResourceModel:SignalDeclaration" href="../../P2/P2_2.dd#//@provided.36"/>
  </consumed>
  <consumed xsi:type="ResourceModel:ProxyResource" URI="http://www.infineon.com/1.0.4/app/i2c003/0/SignalConfigurator_1995282112" bindingMode="READ" isSystemDefined="true">
    <downWardmappedList xsi:type="ResourceModel:App" href="../../NVIC002/1.0.26/nvic002_1.app#/"/>
    <requiredResource uriString="app/nvic002/1" uriType="LOCALTYPE"/>
  </consumed>
  <consumed xsi:type="ResourceModel:ProxyResource" URI="http://www.infineon.com/1.0.4/app/i2c003/0/SignalConfigurator_245268570" bindingMode="READ" isSystemDefined="true">
    <downWardmappedList xsi:type="ResourceModel:App" href="../../NVIC002/1.0.26/nvic002_2.app#/"/>
    <requiredResource uriString="app/nvic002/2" uriType="LOCALTYPE"/>
  </consumed>
  <propertyConstants name="uridevice" value="device/">
    <propertyConstants name="uriperi_i2c003" value="peripheral/usic/">
      <propertyConstants name="uri_clockapp_XMC4000" value="app/clk001/">
        <propertyConstants name="uri_clockapp_XMC1000" value="app/clk002/">
          <propertyConstants name="uri_resetapp" value="app/reset001/"/>
        </propertyConstants>
      </propertyConstants>
    </propertyConstants>
  </propertyConstants>
  <categoryDescription description="Peripheral Specific Apps" name="Peripheral Specific Apps">
    <subCategory description="Communication" name="Communication">
      <subCategory description="Universal Serial Interface Channel (USIC)" name="Universal Serial Interface Channel (USIC)"/>
    </subCategory>
  </categoryDescription>
  <categoryDescription description="Basic Applications" name="Basic Applications">
    <subCategory description="Communication" name="Communication">
      <subCategory description="IIC" name="IIC"/>
    </subCategory>
  </categoryDescription>
  <manifestInfo version="1.0.4">
    <keywords>Communication</keywords>
    <keywords>I2C</keywords>
    <keywords>USIC</keywords>
    <keywords>IIC</keywords>
    <properties xsi:type="ResourceModel:AppProperties_1_0" initProvider="true" isIOApp="true"/>
  </manifestInfo>
  <datagenerate fileName="I2C003.h" fileType="HFILE" templateFileName="I2C003.hdt" templateEngine="NONE" fileAction="COPY"/>
  <datagenerate fileName="Usic.h" fileType="HFILE" templateFileName="Usic.hdt" templateEngine="NONE" fileAction="COPY"/>
  <datagenerate fileName="I2C003.c" templateFileName="I2C003.cdt" templateEngine="NONE" fileAction="COPY"/>
  <datagenerate fileName="I2C003_Conf.c" templateFileName="I2C003_Confc.jet"/>
  <datagenerate fileName="I2C003_Conf.h" fileType="HFILE" templateFileName="I2C003_Confh.jet"/>
  <datagenerate fileName="I2C003_Extern.h" fileType="HFILE" templateFileName="I2C003_Externh.jet"/>
  <connections sourceSignal="app/i2c003/0/i2c003_tx_vs" targetSignal="app/i2c003/0/i2c003_sda_vs"/>
  <connections sourceSignal="app/i2c003/0/i2c003_sda_vs" targetSignal="app/i2c003/0/i2c003_rx_vs"/>
  <connections sourceSignal="app/i2c003/0/i2c003_clockout_vs" targetSignal="app/i2c003/0/i2c003_scl_vs"/>
  <connections sourceSignal="app/i2c003/0/i2c003_scl_vs" targetSignal="app/i2c003/0/i2c003_clockin_vs"/>
  <connections sourceSignal="app/i2c003/0/i2c003_srbi_vs" targetSignal="SignalConfigurator_1995282112/nvic002_vs" isSystemDefined="false"/>
  <connections sourceSignal="app/i2c003/0/i2c003_prtsi_vs" targetSignal="SignalConfigurator_245268570/nvic002_vs" isSystemDefined="false"/>
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
  <softwareIdList>42.0200.5</softwareIdList>
  <softwareIdList>42.0208.6</softwareIdList>
  <softwareIdList>42.0204.5</softwareIdList>
  <softwareIdList>42.0204.6</softwareIdList>
  <softwareIdList>42.0200.6</softwareIdList>
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
