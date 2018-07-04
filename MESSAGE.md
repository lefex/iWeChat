微信的消息类型非常多，那么每一种消息是如何设计的呢？数据结构是咋样设计的呢？

通过下面对微信消息的分析可以得出以下结论：
微信消息类型主要分为：

- 系统消息：1000
- 文本消息，包含小表情：1
- 图片消息，相机中的照片和配置有不同，从相册中发送的消息中会保留一个 MMAsset，如同 PAAset：3
- 位置消息： 48
- 语音消息：34
- 名片消息，公众号名片和普通名片用的是同一种类型：42
- 大表情：47
- 分享消息，这种消息会含有多种类型，比如分享的收藏，分享的小程序，微信红包等等。这种消息类型可以避免不断添加多种消息类型，像这种预先定义一种消息类型，预留一些字段，这样产品添加消息类型的时候，UI 可以任意组合：49

### 系统消息

```
type: 1000
content: 你邀请武卓、田向阳、memory、刘运新加入了群聊
```


### 文本消息

```
type: 1
content: 测试个东西，不要发消息[微笑]
```

### 图片消息

```
type: 3
content:

<msg>
  <img 
  hdlength="0" 
  length="25739" 
  cdnbigimgurl=""
  cdnmidimgurl="加密过的 url" 
  aeskey="7dae3aef046a444d88a5cc679738c10b" 
  cdnthumburl="加密过的 url" 
  cdnthumblength="3312" 
  cdnthumbwidth="120" 
  cdnthumbheight="70" 
  cdnthumbaeskey="7dae3aef046a444d88a5cc679738c10b" 
  encryver="1" 
  md5="69b3f7f0554618cc5ad94b0924dcb79d"/>
  
  <MMAsset>
    <m_assetUrlForSystem><![CDATA[34340C09-0423-4DDC-AEC7-5AEABD083C28/L0/001]]></m_assetUrlForSystem>
    <m_isNeedOriginImage>0</m_isNeedOriginImage>
    <m_isFailedFromIcloud>0</m_isFailedFromIcloud>
    <m_isLoadingFromIcloud>0</m_isLoadingFromIcloud>
  </MMAsset>
</msg>
```

###相机图片

```
type：3
content: 

<msg>
  <img 
  hdlength="590953" 
  length="61171" 
  cdnbigimgurl="加密过的 url" 
  cdnmidimgurl="加密过的 url"
   aeskey="6d7f1c6d4e4d4bd3a2f94994646ebc17" 
   cdnthumburl="加密过的 url" 
   cdnthumblength="3540" 
   cdnthumbwidth="67" 
   cdnthumbheight="120" 
   cdnthumbaeskey="6d7f1c6d4e4d4bd3a2f94994646ebc17" 
   encryver="1" 
   md5="e8510edd66d6594c560fcd32be886ad5"/>
</msg>
```

### 位置消息：

```
type: 48
content:

<msg>
<location 
x="39.955407" 
y="116.458604" 
scale="15.010000" 
label="北京市朝阳区三元桥天元港中心(东三环北路)" 
poiname="朝阳区三元桥天元港中心(东三环北路)" 
maptype="roadmap" 
infourl="" 
fromusername="" />
</msg>
```

### 微信红包（发）
type: 49
content: 

```
<msg>
  <appmsg appid="" sdkver="0">
    <title>微信红包</title>
    <des>我给你发了一个红包，赶紧去拆! 祝：恭喜发财，大吉大利！</des>
    <action/>
    <type>2001</type>
    <showtype>0</showtype>
    <soundtype>0</soundtype>
    <mediatagname/>
    <messageext/>
    <messageaction/>
    <content/>
    <contentattr>0</contentattr>
    <url>https://wxapp.tenpay.com/mmpayhb/wxhb_personalreceive?showwxpaytitle=1&msgtype=1&channelid=1&sendid=1000039401201707207016154830099</url>
    <lowurl/>
    <dataurl/>
    <lowdataurl/>
    <appattach>
      <totallen>0</totallen>
      <attachid/>
      <emoticonmd5/>
      <fileext/>
      <cdnthumbaeskey/>
      <aeskey/>
    </appattach>
    <extinfo/>
    <sourceusername/>
    <sourcedisplayname/>
    <thumburl>http://wx.gtimg.com/hongbao/1701/hb.png</thumburl>
    <md5/>
    <statextstr/>
    <wcpayinfo>
      <paysubtype>10001</paysubtype>
      <feedesc><![CDATA[(null)]]></feedesc>
      <transcationid><![CDATA[(null)]]></transcationid>
      <transferid><![CDATA[(null)]]></transferid>
      <invalidtime>0</invalidtime>
      <effectivedate>0</effectivedate>
      <begintransfertime>0</begintransfertime>
      <templateid>7</templateid>
      <url><![CDATA[https://wxapp.tenpay.com/mmpayhb/wxhb_personalreceive?showwxpaytitle=1&msgtype=1&channelid=1&sendid=1000039401201707207016154830099]]></url>
      <nativeurl><![CDATA[wxpay://c2cbizmessagehandler/hongbao/receivehongbao?msgtype=1&channelid=1&sendid=1000039401201707207016154830099&sendusername=wxid_5lg2yjtnadtk21&transid=8fb3e6d42021e3496f471c0e9652f1f0e80f669946d0e33b9e5b2d5f2412a3442ffacce6c5f2cc4a291fb39ff52acdd8]]></nativeurl>
      <iconurl><![CDATA[http://wx.gtimg.com/hongbao/1701/hb.png]]></iconurl>
      <locallogoicon><![CDATA[c2c_hongbao_icon_cn]]></locallogoicon>
      <receivertitle><![CDATA[恭喜发财，大吉大利]]></receivertitle>
      <sendertitle><![CDATA[红包已被领完]]></sendertitle>
      <hinttext><![CDATA[(null)]]></hinttext>
      <scenetext><![CDATA[微信红包]]></scenetext>
      <sceneid>1002</sceneid>
      <redenvelopetype>-1</redenvelopetype>
      <redenvelopereceiveamount>-1</redenvelopereceiveamount>
      <senderdes><![CDATA[查看详情]]></senderdes>
      <receiverdes><![CDATA[领取红包]]></receiverdes>
      <total_fee><![CDATA[(null)]]></total_fee>
      <fee_type><![CDATA[(null)]]></fee_type>
      <innertype>0</innertype>
      <paymsgid><![CDATA[1000039401201707207016154830099]]></paymsgid>
      <pay_memo><![CDATA[(null)]]></pay_memo>
      <imageid><![CDATA[]]></imageid>
      <imageaeskey><![CDATA[]]></imageaeskey>
      <imagelength>0</imagelength>
      <newaa>
        <billno><![CDATA[(null)]]></billno>
        <newaatype>0</newaatype>
        <launchertitle><![CDATA[(null)]]></launchertitle>
        <receivertitle><![CDATA[(null)]]></receivertitle>
        <receiverlist><![CDATA[(null)]]></receiverlist>
        <payertitle><![CDATA[(null)]]></payertitle>
        <payerlist><![CDATA[(null)]]></payerlist>
        <notinertitle><![CDATA[(null)]]></notinertitle>
        <launcherusername><![CDATA[(null)]]></launcherusername>
      </newaa>
    </wcpayinfo>
  </appmsg>
  <fromusername>wxid_5lg2yjtnadtk21</fromusername>
  <appinfo>
    <version>0</version>
    <appname/>
    <isforceupdate>1</isforceupdate>
  </appinfo>
</msg>
```

### 好友领取红包

```
type: 1000
content:

![](SystemMessages_HongbaoIcon.png)  xxx领取了你的<_wc_custom_link_ color="#FD9931" href="weixin://weixinhongbao/opendetail?sendid=1000039401201707207016154830099">红包</_wc_custom_link_>

![](SystemMessages_HongbaoIcon.png)  xxx领取了你的<_wc_custom_link_ color="#FD9931" href="weixin://weixinhongbao/opendetail?sendid=1000039401201707207016154830099">红包</_wc_custom_link_>

![](SystemMessages_HongbaoIcon.png)  xxx领取了你的<_wc_custom_link_ color="#FD9931" href="weixin://weixinhongbao/opendetail?sendid=1000039401201707207016154830099">红包</_wc_custom_link_>，你的红包已被领完 

```

### 语音消息

```
type: 34
content:
<msg>
<voicemsg voicelength="3920" voiceformat="4" forwardflag="0" />
</msg>

```

### 名片消息

```
type: 42
content:

<msg 
username="wxid_0td2kgz84pg921" 
nickname="memory" 
fullpy="memory" 
shortpy="" 
alias="xuehaoxia1111" 
imagestatus="3" 
scene="17" 
province="山东" 
city="中国" 
sign="" 
sex="2" 
certflag="0" 
certinfo="" 
brandIconUrl="" 
brandHomeUrl="" 
brandSubscriptConfigUrl="" 
brandFlags="0" 
regionCode="CN_Shandong_Yantai"/>

```

### 转发收藏消息

```
type:
content: 和 微信红包（发）消息格式一样

```

### 大表情

```
type: 47
content:
<msg>
  <emoji 
  md5="11454a2b7038f07a5512f9c62daac0cf" 
  type="2" 
  len="14732"
  productid="com.tencent.xin.emoticon.person.stiker_14749712227df9bdb9bfc1cd40" 
  width="240" 
  height="240"/>
  <gameext type="0" content="0"/>
</msg>
```

### 分享小程序

```
type: 49
content: 和 微信红包（发）消息格式一样
```

### 公众号名片

```
type: 42
content: 和普通名片消息的结构一样
```

> **文件说明**


- `iConsoleWindow` 显示的主 Window
- `WAWeb` 为微信小程序类
- `YYWAWebView : WKWebView` 为微信小程序的 WebView