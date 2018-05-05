**我们一起还原微信，探索微信的奥妙之处**

## 初衷

微信作为 IM 领域的佼佼者，更是 APP 中的翘楚。它里面有很多值得开发者借鉴的地方，小到某个 View 的设计，大到整个APP的架构，一系列隐藏在背后的技术手段或交互设计需要我们挖掘。所以，希望通过 iWeChat 这个项目能过勾勒出微信的设计，使用到的技术手段等。

## 规划

**头文件分类**

把头文件按模块来划分，最后能勾勒出微信的整体项目结构放到主工程中。

**第三方库**

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

**继承层级**

View 层、Model 层，VC 层，各层是否有继承结构呢？有的话，是什么样的继承方式呢？

**数据库设计**

数据库的结构是什么，各个表之间是如何关联的，表中保持的数据是什么。

**沙盒目录**

沙盒目录结构是什么，每个文件夹下面保持了那些数据。

**资源结构**

bundle 中的资源都有哪些；

**NSUserDefault**

UserDefault 中保存了哪些数据。

**还原某些UI的设计**

分析某个 View 是如何设计的并实现它，比如典型的 `ActionSheet`，可以根据头文件来还原它的实现；聊天中的气泡有很多，有非常多的 Cell，那么这种结构是如何设计的呢？

**探索各个模块业务逻辑**

PM 常说，按照微信的加好友逻辑实现就行，擦，你有考虑到微信加好友背后还有哪些你所不知道的逻辑吗？

**消息结构**

微信的消息类型非常多，那么每一种消息是如何设计的呢？数据结构是咋样设计的呢？

**文件说明**

`iConsoleWindow` 显示的主 Window

## 加入我们

如果你是一个微信粉，希望研究微信，不管是UI设计、开发、交互、PM 都可以加入到这个项目中，贡献自己的力量（**只要有想法**）。如果你有兴趣，不防先加个微信：wsy9871，我们聊聊。


## 好文推荐

已经有不少同学对微信有一些探索，把我们认为比较好的文章推荐到这里：