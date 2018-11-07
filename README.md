![](https://github.com/lefex/iWeChat/blob/master/image/bannel.png?raw=true)

## 初衷

**我们一起还原微信，探索微信的奥妙之处**。微信作为 IM 领域的佼佼者，更是 APP 中的翘楚。它里面有很多值得开发者借鉴的地方，小到某个 View 的设计，大到整个APP的架构，一系列隐藏在背后的技术手段或交互设计需要我们挖掘。所以，希望通过 iWeChat 这个项目能够勾勒出微信的设计，使用到的技术手段等。最重要的是，从这个项目中，你可以学到如何分析一个第三方 APP。

## 规划

### 砸壳 - ipa 获取

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

### 头文件

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


### 第三方库

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

### UI 

除了头文件外，研究第三方 APP 另一个比较重要的点就是查看 UI。可以使用 Reveal 查看视图层级。使用 `MonkeyDev` 可以在非越狱的手机上运行 Reveal。

MonkeyDev 默认集成是最新版本，需要把自己的 `RevealServer.framework`放到`/opt/MonkeyDev/frameworks`下（打开 Reveal，点击 reveal - help - show reveal in finder 即可找到 RevealServer.framework），这样就可以查看时图层级。

如果 Reveal 过期了，直接修改电脑时间为可以继续使用。

![reveal.png](https://upload-images.jianshu.io/upload_images/1664496-77c7d397deb1bea3.png?imageMogr2/auto-orient/strip%7CimageView2/2/w/1240)

### 继承层级

使用 python 脚本轻松找出继承层级，比如我想找出 `UIWindow` 的继承层级结构，在这里可以找到 [python脚本](https://github.com/lefex/iWeChat/tree/master/python)：

<img src="https://raw.githubusercontent.com/lefex/iWeChat/master/image/iwc_inherit.jpeg" title="继承" width="300"/>


### 数据库设计

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

### 沙盒目录

沙盒目录结构是什么，每个文件夹下面保存了那些数据。

![](https://github.com/lefex/iWeChat/blob/master/image/wc_sandbox.png?raw=true)

### 还原某些UI的设计

分析某个 View 是如何设计的并实现它，比如典型的 `ActionSheet`，可以根据头文件来还原它的实现；聊天中的气泡有很多，有非常多的 Cell，那么这种结构是如何设计的呢？

### 探索各个模块业务逻辑

PM 常说，按照微信的加好友逻辑实现就行，擦，你有考虑到微信加好友背后还有哪些你所不知道的逻辑吗？

### 文件说明


- `iConsoleWindow` 显示的主 Window
- `WAWeb` 为微信小程序类
- `YYWAWebView : WKWebView` 为微信小程序的 WebView

### 消息类型

[微信消息类型](https://github.com/lefex/iWeChat/blob/master/MESSAGE.md)

## 好文推荐

已经有不少同学对微信有一些探索，把我们认为比较好的文章推荐到这里：
