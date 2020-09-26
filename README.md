![](https://github.com/lefex/iWeChat/blob/master/image/bannel.png?raw=true)



- [🐶初衷](https://github.com/lefex/iWeChat#%E5%88%9D%E8%A1%B7)

- [🐱APP信息](https://github.com/lefex/iWeChat#app%E4%BF%A1%E6%81%AF)
  - [💯砸壳 - ipa 获取](https://github.com/lefex/iWeChat#app%E4%BF%A1%E6%81%AF)
  - [💯手机越狱]()
  - [💯头文件](https://github.com/lefex/iWeChat#%E5%A4%B4%E6%96%87%E4%BB%B6)
  - [💯第三方库](https://github.com/lefex/iWeChat#%E7%AC%AC%E4%B8%89%E6%96%B9%E5%BA%93)
  - [💯UI](https://github.com/lefex/iWeChat#ui)
  - [💯继承层级](https://github.com/lefex/iWeChat#%E7%BB%A7%E6%89%BF%E5%B1%82%E7%BA%A7)
  - [💯数据库设计](https://github.com/lefex/iWeChat#%E6%95%B0%E6%8D%AE%E5%BA%93%E8%AE%BE%E8%AE%A1)
  - [💯沙盒目录](https://github.com/lefex/iWeChat#%E6%B2%99%E7%9B%92%E7%9B%AE%E5%BD%95)
  - [💯Pod 集成](https://github.com/lefex/iWeChat#pod-%E9%9B%86%E6%88%90)
  - [💯查看网络请求数据](https://github.com/lefex/iWeChat#%E6%9F%A5%E7%9C%8B%E7%BD%91%E7%BB%9C%E8%AF%B7%E6%B1%82%E6%95%B0%E6%8D%AE)
  - [💯查看动态库](https://github.com/lefex/iWeChat#%E6%9F%A5%E7%9C%8B%E5%8A%A8%E6%80%81%E5%BA%93)

- [🐰工具使用说明](https://github.com/lefex/iWeChat#%E5%B7%A5%E5%85%B7%E4%BD%BF%E7%94%A8%E8%AF%B4%E6%98%8E)
  - [💯CaptainHook Hook 代码](https://github.com/lefex/iWeChat#captainhook-hook-%E4%BB%A3%E7%A0%81)
  - [💯Logos 语法](https://github.com/lefex/iWeChat#logos-%E8%AF%AD%E6%B3%95)
  - [💯查找可执行文件技巧](https://github.com/lefex/iWeChat#%E6%9F%A5%E6%89%BE%E5%8F%AF%E6%89%A7%E8%A1%8C%E6%96%87%E4%BB%B6%E6%8A%80%E5%B7%A7)
  - [💯class-dump 使用](https://github.com/lefex/iWeChat#class-dump-%E4%BD%BF%E7%94%A8)
  - [💯Cycript调试程序](https://github.com/lefex/iWeChat#cycript%E8%B0%83%E8%AF%95%E7%A8%8B%E5%BA%8F)
  - [💯MachOView](https://github.com/lefex/iWeChat#machoview)
  - [💯在 Cycript 和 LLDB 中使用私有的方法调试 iOS](https://github.com/lefex/iWeChat#%E5%9C%A8-cycript-%E5%92%8C-lldb-%E4%B8%AD%E4%BD%BF%E7%94%A8%E7%A7%81%E6%9C%89%E7%9A%84%E6%96%B9%E6%B3%95%E8%B0%83%E8%AF%95-ios)
  - [💯使用 NSInvocation 调用方法](https://github.com/lefex/iWeChat#%E4%BD%BF%E7%94%A8-nsinvocation-%E8%B0%83%E7%94%A8%E6%96%B9%E6%B3%95)
  - [💯 查看App中的字符串]()
  - [💯 UIDebug 工具](https://github.com/lefex/iWeChat#-uidebug-%E5%B7%A5%E5%85%B7)

- [🐼业务逻辑](https://github.com/lefex/iWeChat#%E4%B8%9A%E5%8A%A1%E9%80%BB%E8%BE%91)
  - [💯还原某些UI的设计](https://github.com/lefex/iWeChat#%E8%BF%98%E5%8E%9F%E6%9F%90%E4%BA%9Bui%E7%9A%84%E8%AE%BE%E8%AE%A1)
  - [💯探索各个模块业务逻辑](https://github.com/lefex/iWeChat#%E6%8E%A2%E7%B4%A2%E5%90%84%E4%B8%AA%E6%A8%A1%E5%9D%97%E4%B8%9A%E5%8A%A1%E9%80%BB%E8%BE%91)
  - [💯消息类型](https://github.com/lefex/iWeChat#%E6%B6%88%E6%81%AF%E7%B1%BB%E5%9E%8B)
  - [💯文件说明](https://github.com/lefex/iWeChat#%E6%96%87%E4%BB%B6%E8%AF%B4%E6%98%8E)

- [🦁错误总结](https://github.com/lefex/iWeChat#%E9%94%99%E8%AF%AF%E6%80%BB%E7%BB%93)
  - [新建文件后报错]()
  - [修改电脑时间运行报错]()

- [🙈相关推荐](https://github.com/lefex/iWeChat#%E5%A5%BD%E6%96%87%E6%8E%A8%E8%8D%90)

- [🐯联系信息](https://github.com/lefex/iWeChat#%E8%81%94%E7%B3%BB%E4%BF%A1%E6%81%AF)

## 🐶初衷

通过这个项目学会如何分析一个第三方 APP。关于我的更多信息，扫码关注 素燕：

![](https://upload-images.jianshu.io/upload_images/1664496-1471f633bfc7d877.png?imageMogr2/auto-orient/strip%7CimageView2/2/w/1240)

## 🐱APP信息

#### 💯砸壳 - ipa 获取

首先第一步是获取一个破解的 ipa 包，我们可以通过下面这几种方式获取：

- 方式一：iTunes

苹果既然在高版本的 iTunes 取消了获取 ipa 包的入口，那我们就想办法降级处理。需要下载低版本的 iTunes。 [下载](http://secure-appldnld.apple.com/itunes12/091-33628-20170922-EF8F0FE4-9FEF-11E7-B113-91CF9A97A551/iTunes12.6.3.dmg)。

下载完后，安装，第一次启动的时候按住 option 键，这样才不会报错，安装完成后，即可下载应用的 ipa 包。下载完成后，在应用的图标上按右键，show in finder 即可找到 ipa 包。

![](https://github.com/awesome-tips/iOS-Tips/blob/master/images/2018/06/4-1.jpg)

- 方式二：pp助手

电脑安装一个 pp助手客户端，直接下载越狱应用，下载完成后，即可在“本地应用”中找打 APP 的 ipa 包。需要强调一点，这种方式下载的应用是解密后的 ipa。

![](https://github.com/awesome-tips/iOS-Tips/blob/master/images/2018/06/4-2.jpg)

- 方式三：抓包

在 Mac 中的 iTunes 中下载应用，通过 Charles 抓包获取到 ipa 包的下载地址，直接在浏览器中下载，下载地址是在 p52-buy.itunes 这个域名下。

获取到 ipa 包后就需要砸壳。如果从越狱助手上下载的则不需要砸壳。

#### 💯手机越狱

我使用的是[叉叉越狱助手](https://jb.xxzhushou.cn/)，按照他的流程，即可完成越狱。安装完成会出现 Cydia 这个应用，你可以理解成它是越狱应用商店。有时候比较坑，越狱时可能会出现黑屏。

需要安装 [Cydia Impactor](http://www.cydiaimpactor.com/) 这里用来安装软件，下载完成后，需要把你所需要的安装包拖到 Cydia Impactor，安装过程中如果没有出现错误，说明安装成功。

```js
// 应用会报错到这个目录下
/var/mobile/Containers/Data/Application/
```



登录

```
安装 OpenSSL(在Cydia中安装)
sudo ssh root@172.24.94.140
<!--修改密码默认为 alpine 为 (q--4)-->
TCZYde-iPhone:~ root# passwd
```

#### 💯头文件

**头文件导出**

> This is a command-line utility for examining the Objective-C runtime information stored in Mach-O files. It generates declarations for the classes, categories and protocols. This is the same information provided by using ‘otool -ov’, but presented as normal Objective-C declarations, so it is much more compact and readable.


[class-dump](https://github.com/nygard/class-dump) 这个工具用来查看某个APP的头文件。只需要找到第三方APP的 xxx.app 文件，然后执行 class-dump 命令即可。不过在执行 class-dump 命令前，需要确保 xxx.app 是砸过壳的，从 APPStore下载的 xxx.app 文件是经过加密处理的，可以直接从各大越狱市场上下载第三方 xxx.app 文件，从越狱市场下载的 xxx.app 已被破解。可以直接使用 class-dump 导出头文件。



下载 class-dump 后把 class-dump 导入 `/usr/local/bi` 目录下，并执行下列命令：

```
sudo chmod 777/usr/local/bin/class-dump
```

执行 class-dump 命令：

```
class-dump -H [xxx.app所在的位置] -o [头文件导出的位置]

比如：
class-dump -H Lefex.app -o lefexheader

class-dump -H /Users/daredos/Desktop/微信-6.3.23\(越狱应用\)/Payload/WeChat.app  -o /Users/daredos/Desktop/w
```

使用 class-dump 命令导出头文件有以下特点：

- 不管 .h 还是 .m 文件中的属性和方法都会被导出；
- 某个类的类别中的方法也会被导出，导出到源文件中，比如 ViewController (Navigation) 中的方法被导出到 ViewController 中；
- 实现的协议也会被导出，比如 ViewControllerDelegate 的方法被导出到 ViewController 中，如果 ViewController 不实现 ViewControllerDelegate 协议讲不会被导出；
- 协议中定义的方法不会被导出，只会导出到实现协议的类中；

**头文件分类**

有时候为了分析方便，需要把所有的头文件分成不同的文件夹存放。也就是说把他组织成我们开发 APP 时的目录结构。而微信的目录结构大致如下：

把头文件按模块来划分，最后能勾勒出微信的整体项目结构放到主工程中。目前已经勾勒出微信的目录结构，不过不是很全。[参考](https://everettjf.com/2016/11/23/little-game-list-wechat-directory-tree/)

<img src="https://raw.githubusercontent.com/lefex/iWeChat/master/image/wechat_catagory.png" title="继承" width="300"/>

**MonkeyDev自动导出头文件**

工程已集成class-dump导出可执行文件OC头文件的功能，可在build settings最下面开启该功能，在 User-Defined 下添加 MONKEYDEV_CLASS_DUMP 值为 YES。

#### 💯第三方库

**基于脚本**

研究某个APP时，需要了解其使用的第三方库，使用 class-dump 导出的头文件非常多，刚靠肉眼查看时，耗时耗力。为了解决这个痛点，便发明了这个工具。下面是获取微信使用的第三方库，可以查看 pod 库的 star 数，源地址。

本工具基于 python 写的，在[这里](https://github.com/lefex/iWeChat/blob/master/python)可以找到源码。下载源码后修改 `file_catagory.py ` 文件的 `IPA_HEADER_PATH` 为 class-dump 导出的头文件目录。执行 `python file_catagory.py `

```
IPA_HEADER_PATH = '/Users/lefex/Desktop/header/xxx'
```

- [pop](https://github.com/facebook/pop.git) - (18872)
- [GPUImage](https://github.com/BradLarson/GPUImage.git) - (17338)
- [WebViewJavascriptBridge](https://github.com/marcuswestin/WebViewJavascriptBridge.git) - (10649)
- [FBSDKCoreKit](https://github.com/facebook/facebook-ios-sdk.git) - (5894)
- [WCDB](https://github.com/Tencent/wcdb) - (5700)
- [GCDWebServer](https://github.com/swisspol/GCDWebServer.git) - (4011)
- [EGOTableViewPullRefresh](https://github.com/enormego/EGOTableViewPullRefresh.git) - (3336)
- [KSCrash](https://github.com/kstenerud/KSCrash.git) - (1942)
- [OpenUDID](https://github.com/ylechelle/OpenUDID.git) - (1909)
- [YYImage](https://github.com/ibireme/YYImage.git) - (1193)
- [SKBounceAnimation](https://github.com/khanlou/SKBounceAnimation.git) - (912)
- [YYAsyncLayer](https://github.com/ibireme/YYAsyncLayer.git) - (405)
- [NSTimer-Blocks](https://github.com/jivadevoe/NSTimer-Blocks.git) - (269)

如果还有没发现的第三方库欢迎提 [issues](https://github.com/lefex/iWeChat/issues)

**通过头文件搜索**

如果APP使用了三方库，可以输入`PodsDummy`来快速找到使用的第三方库和私有库；

<img src="https://raw.githubusercontent.com/lefex/iWeChat/master/image/PodsDummy.png" title="三方库" width="300"/>

#### 💯UI 

除了头文件外，研究第三方 APP 另一个比较重要的点就是查看 UI。可以使用 Reveal 查看视图层级。使用 `MonkeyDev` 可以在非越狱的手机上运行 Reveal。

MonkeyDev 默认集成是最新版本，需要把自己的 `RevealServer.framework`放到`/opt/MonkeyDev/frameworks`下（打开 Reveal，点击 reveal - help - show reveal in finder 即可找到 RevealServer.framework），这样就可以查看时图层级。

如果 Reveal 过期了，直接修改电脑时间为可以继续使用。

![reveal.png](https://upload-images.jianshu.io/upload_images/1664496-77c7d397deb1bea3.png?imageMogr2/auto-orient/strip%7CimageView2/2/w/1240)



#### 💯继承层级

使用 python 脚本轻松找出继承层级，比如我想找出 `UIWindow` 的继承层级结构，在这里可以找到 [python脚本](https://github.com/lefex/iWeChat/tree/master/python)：

<img src="https://raw.githubusercontent.com/lefex/iWeChat/master/image/iwc_inherit.jpeg" title="继承" width="300"/>

#### 💯数据库设计

数据库的结构是什么，各个表之间是如何关联的，表中保存的数据是什么。

**好友表（Friend）**：每个好友，包含群主，公众号都会保存到这张表中

```
CREATE TABLE Friend (
    userName           TEXT    PRIMARY KEY,
    type               INTEGER DEFAULT 0,
    certificationFlag  INTEGER DEFAULT 0,
    imgStatus          INTEGER DEFAULT 0,
    encodeUserName     TEXT,
    dbContactLocal     BLOB,
    dbContactOther     BLOB,
    dbContactRemark    BLOB,
    dbContactHeadImage BLOB,
    dbContactProfile   BLOB,
    dbContactSocial    BLOB,
    dbContactChatRoom  BLOB,
    dbContactBrand     BLOB
);
```

**消息表（Chat_xxxxxxxxxxxx）**： 每一个会话会生成一张表

````
CREATE TABLE Chat_099cc67071b64517d719cdb9430037d8 (
    TableVer   INTEGER DEFAULT 1,
    MesLocalID INTEGER PRIMARY KEY AUTOINCREMENT,
    MesSvrID   INTEGER DEFAULT 0,
    CreateTime INTEGER DEFAULT 0,
    Message    TEXT,
    Status     INTEGER DEFAULT 0,
    ImgStatus  INTEGER DEFAULT 0,
    Type       INTEGER,
    Des        INTEGER
);
````

**消息撤回表（RevokeMsgTable）**

```
CREATE TABLE RevokeMsgTable (
    MSG_REVOKE_COL_SVRID   INTEGER DEFAULT 0
                                   PRIMARY KEY,
    MSG_REVOKE_COL_CONTENT TEXT,
    MSG_REVOKE_COL_INTRES1 INTEGER DEFAULT 0,
    MSG_REVOKE_COL_INTRES2 INTEGER DEFAULT 0,
    MSG_REVOKE_COL_INTRES3 INTEGER DEFAULT 0,
    MSG_REVOKE_COL_STRRES1 TEXT,
    MSG_REVOKE_COL_STRRES2 TEXT,
    MSG_REVOKE_COL_STRRES3 TEXT
);
```

#### 💯沙盒目录

沙盒目录结构是什么，每个文件夹下面保存了那些数据。非越狱手机，通过Xcode直接导出（windows->devices and simulators - 设置按钮 - Download Container ...），这个时间比较长，需要耐心等待。

![](https://github.com/lefex/iWeChat/blob/master/image/wc_sandbox.png?raw=true)

**使用iFunBox工具**

这个工具比较强大，可以直接把越狱设备的内容拷贝到电脑上，一图胜千言，直接看图吧。

![](https://github.com/lefex/iWeChat/blob/master/image/ifunbox.png?raw=true)



#### 💯Pod 集成

如果想使用第三方库咋么办？直接通过 `pod init`，然后在 `Podfile` 里添加你想使用的第三方库即可。

```
target 'xxxDylib' do
  # Uncomment the next line if you're using Swift or would like to use dynamic frameworks
  # use_frameworks!

  # Pods for KuaiXuoyeDylib
  pod 'xxx'


end
```

#### 💯查看网络请求数据

有时候想快速地查看某个 APP 中的网络请求结果，抓包可能是一个不错的选择，但是遇到HTTPS的请求，就比较费事。其实我们可以通过逆向来查看网络请求，主要有两种方式：

- 找到某个应用中网络请求的统一出口，然后 Hook 掉这个方法，直接拿到数据。不过找到 APP 网络请求封装的类有时候比较难。教你一招，非常容易，找到某个页面中含有网络请求的类，使用 Hopper 工具查看伪代码，非常容易定位具体的网络请求类；
- 使用网络工具直接集成到第三方APP中，通过工具查看网络请求，推荐[Flex](https://github.com/Flipboard/FLEX)，它可以查看网络请求；

#### 💯查看动态库

通过 `otool` 可以查看App使用的动态库，那么我们看看微信使用了哪些动态库，在终端执行命令 `otool -L WeChat ->~/Desktop/wechat.log`，在桌面打开 `wechat.log` 文件，即可看到微信使用的所有动态库。[参考知识小集](<https://m.weibo.cn/1645958062/4321387470442189>)。

意外发现了 [Matrix.framework]( https://github.com/Tencent/matrix) 这个动态库，刚好前几天微信团队开源了 [Matrix]( https://github.com/Tencent/matrix)，看它的描述：

> **Matrix** 是一款微信研发并日常使用的 APM（Application Performance Manage），当前主要运行在 Android 平台上。
> Matrix 的目标是建立统一的应用性能接入框架，通过各种性能监控方案，对性能监控项的异常数据进行采集和分析，输出相应的问题分析、定位与优化建议，从而帮助开发者开发出更高质量的应用。

说明iOS中也用了[Matrix]( https://github.com/Tencent/matrix)，仔细看了下它的文档发现，有个[SQLite Lint]( https://github.com/Tencent/matrix#sqlite-lint-1) 用来测试 SQL 语句的性能隐患，它底层是 C++ 实现，支持多平台扩展。--- (**纯属猜测**)

**第三方**

```ruby
@rpath/TXLiteAVSDK_Smart_No_VOD.framework/TXLiteAVSDK_Smart_No_VOD
@rpath/Matrix.framework/Matrix
@rpath/YTFaceProSDK.framework/YTFaceProSDK 
@rpath/GPUImage.framework/GPUImage
@rpath/WCDB.framework/WCDB
@rpath/MMCommon.framework/MMCommon 
@rpath/MultiMedia.framework/MultiMedia 
@rpath/QBar.framework/QBar 
@rpath/QMapKit.framework/QMapKit
@rpath/ConfSDK.framework/ConfSDK
@rpath/mars.framework/mars 
```

**系统 Framework**

```ruby
/System/Library/Frameworks/
Contacts.framework/Contacts
CallKit.framework/CallKit
Accelerate.framework/Accelerate
Intents.framework/Intents
JavaScriptCore.framework/JavaScriptCore
MultipeerConnectivity.framework/MultipeerConnectivity
UserNotifications.framework/UserNotifications
WatchKit.framework/WatchKit
VideoToolbox.framework/VideoToolbox
CoreSpotlight.framework/CoreSpotlight
PushKit.framework/PushKit
WebKit.framework/WebKit
WatchConnectivity.framework/WatchConnectivity
NetworkExtension.framework/NetworkExtension
ContactsUI.framework/ContactsUI
HealthKit.framework/HealthKit
LocalAuthentication.framework/LocalAuthentication
Photos.framework/Photos
AdSupport.framework/AdSupport
ExternalAccessory.framework/ExternalAccessory
CoreBluetooth.framework/CoreBluetooth
Security.framework/Security
OpenAL.framework/OpenAL
CoreText.framework/CoreText
CoreTelephony.framework/CoreTelephony
StoreKit.framework/StoreKit
Accounts.framework/Accounts
Social.framework/Social
GLKit.framework/GLKit
MediaPlayer.framework/MediaPlayer
CoreMotion.framework/CoreMotion
ImageIO.framework/ImageIO
AssetsLibrary.framework/AssetsLibrary
AVFoundation.framework/AVFoundation
MessageUI.framework/MessageUI
Foundation.framework/Foundation
UIKit.framework/UIKit
AddressBookUI.framework/AddressBookUI
AddressBook.framework/AddressBook
CoreLocation.framework/CoreLocation
CoreVideo.framework/CoreVideo
CFNetwork.framework/CFNetwork
MobileCoreServices.framework/MobileCoreServices
CoreGraphics.framework/CoreGraphics
CoreMedia.framework/CoreMedia
QuartzCore.framework/QuartzCore
SystemConfiguration.framework/SystemConfiguration
AudioToolbox.framework/AudioToolbox
OpenGLES.framework/OpenGLES
MapKit.framework/MapKit
CoreFoundation.framework/CoreFoundation
CoreImage.framework/CoreImage
```

**dylib**

```ruby
/usr/lib/libxml2.2.dylib
/usr/lib/libc++.1.dylib
/usr/lib/libsqlite3.dylib
/usr/lib/libbz2.1.0.dylib
/usr/lib/libresolv.9.dylib
/usr/lib/libiconv.2.dylib
/usr/lib/libz.1.dylib
/usr/lib/libicucore.A.dylib
/usr/lib/libobjc.A.dylib
/usr/lib/libSystem.B.dylib
```





## 🐰工具使用说明

#### 💯CaptainHook Hook 代码

```objective-c
// 无参数
CHDeclareClass(WCActionSheet)
CHOptimizedMethod0(self, NSArray *, WCActionSheet, buttonTitleList){
    NSArray *titles = CHSuper0(WCActionSheet, buttonTitleList);
    return titles;
}

CHConstructor{
    CHLoadLateClass(WCActionSheet);
    CHClassHook0(WCActionSheet, buttonTitleList);
}
```

```objective-c
// 一个参数
CHDeclareClass(MMUIImageView);
CHOptimizedMethod1(self, void, MMUIImageView, setImage, NSString *, imageurl){
    NSLog(@"setImage: %@", imageurl);
    CHSuper1(MMUIImageView, setImage, imageurl);
}
CHConstructor{    
    CHLoadLateClass(MMUIImageView);
    CHClassHook1(MMUIImageView, setImage);
}
```

```objective-c
@interface Lefex : NSObject
@property (nonatomic, copy) NSString *city;
+ (Lefex *)empty;
- (void)updateNickName:(NSString *)nickName;
- (void)updateNickName:(NSString *)nickName age:(int)age;
- (void)requestNickNameForId:(NSString *)userId completion:(void(^)(NSString *))block;

@end
```

```objective-c
@synthesize city = _city;

@implementation Lefex

+ (Lefex *)empty {
    NSLog(@"orgin - %@", NSStringFromSelector(_cmd));
    return [Lefex new];
}

- (void)updateNickName:(NSString *)nickName {
    NSLog(@"orgin - %@", NSStringFromSelector(_cmd));
}

- (void)updateNickName:(NSString *)nickName age:(int)age {
    NSLog(@"orgin - %@", NSStringFromSelector(_cmd));
}

- (void)requestNickNameForId:(NSString *)userId completion:(void(^)(NSString *))block {
    NSLog(@"orgin - %@", NSStringFromSelector(_cmd));
    if (block) {
        block(@"lefe_x");
    }
}

- (void)setCity:(NSString *)city {
    _city = city;
}

- (NSString *)city {
    return _city;
}

@end
```



```objective-c
typedef void(^RequestBlock)(NSString *);

// hook某个类时需要先声明
CHDeclareClass(Lefex)

// Hook 类方法
CHOptimizedClassMethod0(self, Lefex *, Lefex, empty){
    Lefex *me = CHSuper0(Lefex, empty);
    NSLog(@"Hook empty");
    return me;
}

// Hook 一个参数的方法
CHOptimizedMethod1(self, void, Lefex, updateNickName, NSString *, name) {
    CHSuper1(Lefex, updateNickName, name);
    NSLog(@"hook updateNickName");
}

// Hook属性，hook对应的get和set方法
// hook set 方法
CHOptimizedMethod1(self, void, Lefex, setCity, NSString *, city) {
    CHSuper1(Lefex, setCity, @"BeiJing");
    NSLog(@"hook setCity");
}

// hook get 方法
CHOptimizedMethod0(self, void, Lefex, city) {
    NSLog(@"hook city");
    return CHSuper0(Lefex, city);
}

// Hook 两个参数的方法
CHOptimizedMethod2(self, void, Lefex, updateNickName, NSString *, name, age, int, age) {
    CHSuper2(Lefex, updateNickName, name, age, age);
    NSLog(@"hook updateNickName: age");
}

// Hook 带有block的方法，需要知道 block 中的参数个数
CHOptimizedMethod2(self, void, Lefex, requestNickNameForId, NSString *, userId, completion, RequestBlock, block) {
    RequestBlock nicknameBlock = ^(NSString *nickname) {
        NSLog(@"hook callback :%@", nickname);
        if (block) {
            block(nickname);
        }
    };
    
    CHSuper2(Lefex, requestNickNameForId, userId, completion, nicknameBlock);
    NSLog(@"hook requestNickNameForId: age");
}

// Hook 参数是二级指针的方法
CHOptimizedMethod1(self, void, Lefex, queryLocation, NSString **, name) {
    CHSuper1(Lefex, queryLocation, name);
    NSLog(@"hook queryLocation: %@", *name);
}

CHConstructor {
    // 导入类才能够使用
    // linkable
    CHLoadClass(Lefex);
    // un linkable
//    CHLoadLateClass(Lefex);

    CHClassHook1(Lefex, setCity);
    CHClassHook0(Lefex, city);
    CHClassHook0(Lefex, empty);
    CHClassHook1(Lefex, updateNickName);
    CHClassHook2(Lefex, updateNickName, age);
    CHClassHook2(Lefex, requestNickNameForId, completion);
    CHClassHook1(Lefex, queryLocation);
}
```

```verilog
2018-12-12 21:03:13.378534+0800 CaptainDemo[43777:862109] orgin - empty
2018-12-12 21:03:13.378682+0800 CaptainDemo[43777:862109] Hook empty
2018-12-12 21:03:13.378822+0800 CaptainDemo[43777:862109] orgin - updateNickName:
2018-12-12 21:03:13.378919+0800 CaptainDemo[43777:862109] hook updateNickName
2018-12-12 21:03:13.379002+0800 CaptainDemo[43777:862109] orgin - updateNickName:age:
2018-12-12 21:03:13.379097+0800 CaptainDemo[43777:862109] hook updateNickName: age
2018-12-12 21:03:13.379220+0800 CaptainDemo[43777:862109] orgin - requestNickNameForId:completion:
2018-12-12 21:03:13.379299+0800 CaptainDemo[43777:862109] hook callback :lefe_x
2018-12-12 21:03:13.379374+0800 CaptainDemo[43777:862109] orgin callback lefe_x
2018-12-12 21:03:13.379440+0800 CaptainDemo[43777:862109] hook requestNickNameForId: age
2018-12-12 21:03:13.379513+0800 CaptainDemo[43777:862109] orgin - queryLocation:
2018-12-12 21:03:13.379582+0800 CaptainDemo[43777:862109] hook queryLocation: BeiJing
2018-12-12 21:03:13.379670+0800 CaptainDemo[43777:862109] orgin loction: BeiJing
2019-04-02 10:20:10.415550+0800 CaptainDemo[3253:27954] orgin loction: BeiJing
2019-04-02 10:20:10.415732+0800 CaptainDemo[3253:27954] hook setCity
2019-04-02 10:20:10.415941+0800 CaptainDemo[3253:27954] hook city
```

#### 💯Logos 语法

http://iphonedevwiki.net/index.php/Logos

```objective-c
// 要 hook 的类
%hook ClassName

// hook 类方法
+ (id)sharedInstance
{
	%log;
	return %orig; // 调用原实现
}

- (void)messageWithNoReturnAndOneArgument:(id)originalArgument
{
	%log;
    // 调用原实现，可以修改参数
	%orig(originalArgument);
}

- (id)messageWithReturnAndNoArguments
{
	%log;

    // 调用原实现，查看返回值，修改返回值
	id originalReturnOfMessage = %orig;
	return originalReturnOfMessage;
}
// 要有结束标签
%end
```
#### 💯调用带有参数为block的方法

```objective-c
@interface NetworkTask : NSObject

- (void)requestComplete:(void(^)(NSString *name))completion;
- (void)requestID:(NSString *)docId domplete:(void(^)(NSString *name))completion failed:(void(^)(NSError *error))failed;

@end

// 方法一：只支持一个参数
- (void)runTaskForPerform {
    NSObject *task = [objc_getClass("NetworkTask") new];
    void(^completeBlock)(NSString *) = ^(NSString *name) {
        NSLog(@"block: %@", name);
    };
    [task performSelector:@selector(requestComplete:) withObject:completeBlock];
}

// 方法二：支持多个参数
- (void)runTask {
    NSObject *task = [objc_getClass("NetworkTask") new];
    SEL selector = NSSelectorFromString(@"requestID:domplete:failed:");
    NSInvocation *invocation = [NSInvocation invocationWithMethodSignature:[objc_getClass("NetworkTask") instanceMethodSignatureForSelector:selector]];
    [invocation setSelector:selector];
    [invocation setTarget:task];
    NSString *docId = @"123";
    [invocation setArgument:&docId atIndex:2];

    void(^completeBlock)(NSString *) = ^(NSString *name) {
        NSLog(@"block invocation: %@", name);
    };
    [invocation setArgument:&completeBlock atIndex:3];

    void(^fliedBlock)(NSError *) = ^(NSError *error) {
        NSLog(@"block invocation error: %@", error);
    };
    [invocation setArgument:&fliedBlock atIndex:4];
    [invocation invoke];
}

// 方法三：支持多个参数
- (void)runTaskForMsgSend {
    NSString *docId = @"123";
    
    void(^completeBlock)(NSString *) = ^(NSString *name) {
        NSLog(@"block objc_msgSend: %@", name);
    };
    
    void(^filedBlock)(NSError *) = ^(NSError *error) {
        NSLog(@"block objc_msgSend error: %@", error);
    };
    NSObject *task = [objc_getClass("NetworkTask") new];
    SEL selector = NSSelectorFromString(@"requestID:domplete:failed:");

    ((void (*)(id, SEL, id, id, id, id))objc_msgSend)(task, selector, docId, completeBlock, filedBlock, NULL);
}
```

#### 💯查找可执行文件技巧

显示包内容后，按 size 大小排列文件，可执行文件一般比较大，名字和app包名字一致（有时候不一致）；

#### 💯class-dump 使用

有时候在开发的过程中需要些黑科技，“偷窥”第三方APP使用了哪些第三方库，或猜猜它是如何实现的，咋么办？

其实我们可以使用 class-dump 这个工具查看某个APP的头文件。只需要找到第三方APP的 xxx.app 文件，然后执行 class-dump 命令即可。不过在执行 class-dump 命令前，需要确保 xxx.app 是砸过壳的，从 APPStore下载的 xxx.app 文件是经过加密处理的，可以直接从各大越狱市场上下载第三方 xxx.app 文件，从越狱市场下载的 xxx.app 已被破解。可以直接使用 class-dump 导出头文件。

创建一个Demo，然后打包导出 ipa 包，找到 xxx.app，这里 xxx.app 是未经过加密的。具体代码如下：

```
@protocol ViewControllerDelegate<NSObject>
- (void)didRefreshDataSuccess;
@end

@interface ViewController : UIViewController

@property (nonatomic, weak) id<ViewControllerDelegate> delegate;
@property (nonatomic, copy) NSString *pubName;

- (void)pubLoadDataWithAlbumID:(NSString *)albumID count:(NSInteger *)count;

@end

@interface ViewController (Navigation)

- (void)setRightBarItemWithTitle:(NSString *)title;

@end
```

执行 class-dump 命令：

```
class-dump -H [xxx.app所在的位置] -o [头文件导出的位置]

比如：
class-dump -H Lefex.app -o lefexheader
```

最终导出的头文件如下：

```
@class NSString;
@protocol ViewControllerDelegate;

@interface ViewController : UIViewController
{
    id <ViewControllerDelegate> _delegate;
    NSString *_pubName;
    NSString *_priName;
}

@property(copy, nonatomic) NSString *priName; // @synthesize priName=_priName;
@property(copy, nonatomic) NSString *pubName; // @synthesize pubName=_pubName;
@property(nonatomic) __weak id <ViewControllerDelegate> delegate; // @synthesize delegate=_delegate;
- (void).cxx_destruct;
- (void)didRefreshDataSuccess;
- (void)priLoadDataWithAlbumID:(id)arg1 count:(long long *)arg2;
- (void)pubLoadDataWithAlbumID:(id)arg1 count:(long long *)arg2;
- (void)viewDidLoad;
- (void)setRightBarItemWithTitle:(id)arg1;

@end
```

总结：

使用 class-dump 命令导出头文件有以下特点：

- 不管 .h 还是 .m 文件中的属性和方法都会被导出；
- 某个类的类别中的方法也会被导出，导出到源文件中，比如 ViewController (Navigation) 中的方法被导出到 ViewController 中；
- 实现的协议也会被导出，比如 ViewControllerDelegate 的方法被导出到 ViewController 中，如果 ViewController 不实现 ViewControllerDelegate 协议讲不会被导出；
- 协议中定义的方法不会被导出，只会导出到实现协议的类中；

参考：http://stevenygard.com/projects/class-dump/

#### 💯Cycript调试程序

试想一种场景，我想知道某个第三方 APP 当前页面对应的是哪个 VC，想让某个实例执行某个函数后的效果，打印当前的视图层级，咋么办？

其实使用 Cycript 即可解决这几个问题，Cycript是一门脚本语言，可以把某段代码注入到某个进程中。比如我可以把用 Cycript 编写的代码植入到一个运行的 APP 中，这样 APP 就可以执行注入的代码。下面的测试需要安装 MonkeyDev。 

安装 Cycript 非常简单，直接下载 Cycript，并进入 Cycript 目录下，执行：

`./cycript -r 192.168.10.111:6666`

192.168.10.111:6666 是手机ip地址，6666是默认的端口。连接成功后，控制台会有：cy#。需要注意手机和电脑需要使用同一Wifi。

1.当前页面对应的是哪个 VC?

获取当前页面是哪个页面时，可以用到响应链的知识。假如SubjectViewController有一个 UITableView， 它的内存地址是 0x106a05c00 ，那么我可以通过下列命令找到当前的VC。

```
cy# [#0x106a05c00 nextResponder]
#"<UIView: 0x105d839d0; frame = (0 0; 375 667); autoresize = W+H; layer = <CALayer: 0x1c0635460>>"
cy# [#0x105d839d0 nextResponder]
#"<SubjectViewController: 0x106a0a200>"
```

2.某个实例执行某个函数后的效果？

`SubjectViewController` 的内存地址是 `0x106a0a200`，直接执行下面的这条指令，`SubjectViewController` 的标题会立刻变为 `Lefe_x`。

`cy# [#0x106a0a200 setTitle: @"Lefe_x"]`

3.打印当前的视图层级

直接执行下列指令即可。

`[[UIApp keyWindow]recursiveDescription].toString()`

[参考](http://www.cycript.org/)

#### 💯MachOView

Mach-O格式全称为Mach Object文件格式的缩写，是mac上可执行文件的格式，类似于windows上的PE格式 (Portable Executable ), linux上的elf格式 (Executable and Linking Format)。

MachOView工具可Mac平台中可查看MachO文件格式信息，IOS系统中可执行程序属于Mach-O文件格式

[MachOView下载地址](https://sourceforge.net/projects/machoview/)

[github](https://github.com/gdbinit/MachOView)



#### 💯在 Cycript 和 LLDB 中使用私有的方法调试 iOS

下面这些方法对于使用 `Cycript` 和 `LLDB` 调试第三方应用非常方便，比如想打印当前的视图层级结构，打印某个类的属性，方法，找到当前显示的 `ViewController` 等。当然，在非逆向的环境中，可以使用 `performSelector:` 执行，可以查看到同样的效果，下面的例子通过 `performSelector:` 方法获取。

- `recursiveDescription`：打印某个视图的层级关系；

```
<UIWindow: 0x7fdc86411aa0; frame = (0 0; 375 812); gestureRecognizers = <NSArray: 0x600000248a60>; layer = <UIWindowLayer: 0x600000239e80>>
```

- `_printHierarchy`：直接获取当前显示的 `ViewController`，不必使用 `[view nextResponder]` 获取当前显示的 viewController；

```
<ViewController 0x7fdc86411270>, state: appeared, view: <UIView 0x7fdc867085e0>
```

- `_autolayoutTrace`：是 recursiveDescription 的精简版，忽略了关于 View 的描述信息；

```
UIWindow:0x7fdc86411aa0
|   UIView:0x7fdc867085e0
```

- `_ivarDescription`：打印某个实例的所有变量名和值；

```
<Lefex: 0x604000005a80>:
in Lefex:
	_name (NSString*): @"wsy"
in NSObject:
	isa (Class): Lefex (isa, 0x10cde9038)
```

- `_methodDescription`：打印某个类的所有属性，实例方法，类方法。

```
<Lefex: 0x604000005a80>:
in Lefex:
	Class Methods:
		+ (id) trueName; (0x10cde6590)
	Properties:
		@property (copy, nonatomic) NSString* name;  (@synthesize name = _name;)
	Instance Methods:
		- (void) changeName; (0x10cde6580)
		- (void) .cxx_destruct; (0x10cde6620)
		- (id) name; (0x10cde65b0)
		- (void) setName:(id)arg1; (0x10cde65e0)
in NSObject:
	Class Methods:
	省略......
```

[参考](http://iosre.com/t/powerful-private-methods-for-debugging-in-cycript-lldb/3414)

#### 💯使用 NSInvocation 调用方法

在逆向中想要调用原APP中已有类的方法时，需要通过 NSInvocation 的方式调用，不能直接调用。

```objective-c
// 调用某个类方法
NSString *title = [NSClassFromString(@"TTool") invoke:@"getFormatString:" arguments:@[item.title ?: @""]];

// 调用类方法，并模拟进入某个页面
UIViewController *detailVC = [@"LEFEBookDetailsViewController" invokeClassMethod:@"alloc"];
[detailVC invoke:@"initWithBookId:type:" args:dataItem.bookId, @(dataItem.bookType), nil];
[detailVC invoke:@"view"];
[detailVC invoke:@"viewWillAppear:" args:@(0), nil];
[detailVC invoke:@"viewDidAppear:" args:@(0), nil];
```

[RuntimeInvoker](https://github.com/cyanzhong/RuntimeInvoker)

#### 💯 资源文件需要添加到主文件夹中

```objective-c
NSString *filePath = [[NSBundle mainBundle] pathForResource:@"word" ofType:@"json"];
// 如果添加到 xxxDylib 中，资源文件将找不到
```

#### 💯 命令行

```objective-c
1.查看可执行文件 Macch-O的架构
➜  ~ file ~/Desktop/Mach-ODemo
/Users/wangsuyan/Desktop/Mach-ODemo: Mach-O universal binary with 2 architectures: [arm_v7:Mach-O executable arm_v7] [arm64:Mach-O 64-bit executable arm64]
/Users/wangsuyan/Desktop/Mach-ODemo (for architecture armv7):	Mach-O executable arm_v7
/Users/wangsuyan/Desktop/Mach-ODemo (for architecture arm64):	Mach-O 64-bit executable arm64

2.通过 --arch 指定所使用CPU的架构
class-dump -a ~/Desktop/Mach-ODemo --arch armv7

3.查看Mach-O中某个类中的头文件
class-dump -C ViewController ~/Desktop/Mach-ODemo

4.查找Mach-O中某个方法
class-dump -f name lefex ~/Desktop/Mach-ODemo
```

#### 💯 查看App中的字符串

有时候我们想查看App中的一些字符串的值，比如下面的代码：

```objective-c
static NSString *kName = @"name lefex";
static const NSString *kNameConst = @"name lefex const";

NSString *name = [NSString stringWithFormat:@"%@ - %@", kName, kNameConst];
NSLog(@"name --- %@", name);

- (void)lefex {
    NSLog(@"Hello lefex");
}

__attribute__((constructor(101)))
void before101() {
    NSLog(@"before101");
}
```

使用命令`xcrun otool -v -s __TEXT __cstring ~/Desktop/Mach-ODemo`，可以看到控制台输出了上面代码中定义的字符串。这条命令的作用是查看可执行文件`__TEXT`段内名为`__cstring`的内容，`~/Desktop/Mach-ODemo`是可执行文件的路径，获取可执行文件的方式非常多，可以查看以往的小集。如果你只是想看看效果，可以从自己项目的ipa文件中找到可执行文件。:

```objective-c
/Users/lefex/Desktop/Mach-ODemo (architecture armv7):
Contents of (__TEXT,__cstring) section
0000b67d  Hello lefex
0000b689  before101
0000b693  before103
0000b69d  before102
0000b6a7  Hello destory
0000b6b5  %@
0000b6b8  Hello load
0000b6c3  name lefex
0000b6ce  name lefex const
```

这是目前我觉得最简单的一种方式。如果代码中有比较铭感的内容，切记要经过特殊处理。可执行文件中还有好多有趣的内容。感兴趣的可以深入了解可执行文件究竟都保存了哪些信息。

查看微信的可执行文件字符串内容：`➜  ~ xcrun otool -v -s __TEXT __cstring ~/Desktop/WeChat ->~/Desktop/wechts.log`

#### 💯 UIDebug 工具

把 [**lib/LEFETopViewControllerMark.{h,m}**](https://github.com/lefex/iWeChat/tree/master/lib) 文件导入到用 MonkeyDev 创建的项目中，要添加到 `xxxDylib`中。然后添加个事件，当事件触发时调用方法

` [LEFETopViewControllerMark  revealTopestViewControllerAndFrame]`

<img src="https://raw.githubusercontent.com/lefex/iWeChat/master/image/uidebug2.png" title="继承" width="300"/>

## 🐼业务逻辑

#### 💯还原某些UI的设计

分析某个 View 是如何设计的并实现它，比如典型的 `ActionSheet`，可以根据头文件来还原它的实现；聊天中的气泡有很多，有非常多的 Cell，那么这种结构是如何设计的呢？

#### 💯探索各个模块业务逻辑

PM 常说，按照微信的加好友逻辑实现就行，擦，你有考虑到微信加好友背后还有哪些你所不知道的逻辑吗？

#### 💯消息类型

[微信消息类型](https://github.com/lefex/iWeChat/blob/master/MESSAGE.md)

#### 💯文件说明


- `iConsoleWindow` 显示的主 Window
- `WAWeb` 为微信小程序类
- `YYWAWebView : WKWebView` 为微信小程序的 WebView



## 🦁错误总结

- **新建文件后报错**

```verilog
entry point (_main) undefined. for architecture arm64
// 新建文件时，需要把文件建到 xxxDylib 中，不能选择 Target
```

- **修改电脑时间运行报错**

```objective-c
CodeSign /Users/wangsuyan/Library/Developer/Xcode/DerivedData/TVideo-hamzrgdkjpjxzwaloktqyzqrckpm/Build/Products/Debug-iphoneos/libTVideoDylib.dylib
    cd /Users/wangsuyan/Desktop/baidu/reverse/TVideo
    export CODESIGN_ALLOCATE=/Users/wangsuyan/Desktop/Xcode9.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/codesign_allocate
    export PATH="/Users/wangsuyan/Desktop/Xcode9.app/Contents/Developer/Platforms/iPhoneOS.platform/Developer/usr/bin:/Users/wangsuyan/Desktop/Xcode9.app/Contents/Developer/usr/bin:/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin"
    
Signing Identity:     "iPhone Developer: xx (xxx)"

    /usr/bin/codesign --force --sign CE05AADAA82C40AD173C44316B410B221A24C9AB --entitlements /Users/wangsuyan/Library/Developer/Xcode/DerivedData/TVideo-hamzrgdkjpjxzwaloktqyzqrckpm/Build/Intermediates.noindex/TVideo.build/Debug-iphoneos/TVideoDylib.build/libTVideoDylib.dylib.xcent --timestamp=none /Users/wangsuyan/Library/Developer/Xcode/DerivedData/TVideo-hamzrgdkjpjxzwaloktqyzqrckpm/Build/Products/Debug-iphoneos/libTVideoDylib.dylib

CE05AADAA82C40AD173C44316B410B221A24C9AB: no identity found
Command /usr/bin/codesign failed with exit code 1
// 这个错误是修改了电脑时间
```



## 🙈好文推荐

已经有不少同学对微信有一些探索，把我们认为比较好的文章推荐到这里：

- [**WeChatRedEnvelop 抢红包**  ](https://github.com/buginux/WeChatRedEnvelop)
- [**WeChatPlugin-MacOS Mac微信插件**  ](https://github.com/TKkk-iOSer/WeChatPlugin-MacOS)
- [**MonkeyDev**](https://github.com/AloneMonkey/MonkeyDev/wiki/%E9%9D%9E%E8%B6%8A%E7%8B%B1App%E9%9B%86%E6%88%90)
- [**给微信添加聊天记录截图功能**](https://mp.weixin.qq.com/s/TpwZtPu0DKOwm2d6B9fTmg)
- [**深入iOS系统底层之汇编语言**](https://www.jianshu.com/p/365ed6c385e5)


## 免责声明

本项目旨在学习微信的设计，不可用于商业和个人其他意图。若使用不当，请使用者自行承担。逆向微信时可能会有被封号的危险，遇到微信的提醒后建议立即停止使用。
