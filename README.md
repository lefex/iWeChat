![](https://github.com/lefex/iWeChat/blob/master/image/bannel.png?raw=true)

## 初衷

**我们一起还原微信，探索微信的奥妙之处**。微信作为 IM 领域的佼佼者，更是 APP 中的翘楚。它里面有很多值得开发者借鉴的地方，小到某个 View 的设计，大到整个APP的架构，一系列隐藏在背后的技术手段或交互设计需要我们挖掘。所以，希望通过 iWeChat 这个项目能够勾勒出微信的设计，使用到的技术手段等。

## 规划

#### 头文件分类

把头文件按模块来划分，最后能勾勒出微信的整体项目结构放到主工程中。目前已经勾勒出微信的目录结构，不过不是很全。[参考](https://everettjf.com/2016/11/23/little-game-list-wechat-directory-tree/)

<img src="https://raw.githubusercontent.com/lefex/iWeChat/master/image/wechat_catagory.png" title="继承" width="300"/>


#### 第三方库

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

#### 继承层级

使用 python 脚本轻松找出继承层级，比如我想找出 `UIWindow` 的继承层级结构，在这里可以找到 [python脚本](https://github.com/lefex/iWeChat/tree/master/python)：

<img src="https://raw.githubusercontent.com/lefex/iWeChat/master/image/iwc_inherit.jpeg" title="继承" width="300"/>


#### 数据库设计

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

#### 沙盒目录

沙盒目录结构是什么，每个文件夹下面保存了那些数据。

![](https://github.com/lefex/iWeChat/blob/master/image/wc_sandbox.png?raw=true)

#### 还原某些UI的设计

分析某个 View 是如何设计的并实现它，比如典型的 `ActionSheet`，可以根据头文件来还原它的实现；聊天中的气泡有很多，有非常多的 Cell，那么这种结构是如何设计的呢？

#### 探索各个模块业务逻辑

PM 常说，按照微信的加好友逻辑实现就行，擦，你有考虑到微信加好友背后还有哪些你所不知道的逻辑吗？

#### 文件说明


- `iConsoleWindow` 显示的主 Window
- `WAWeb` 为微信小程序类
- `YYWAWebView : WKWebView` 为微信小程序的 WebView


## 好文推荐

已经有不少同学对微信有一些探索，把我们认为比较好的文章推荐到这里：