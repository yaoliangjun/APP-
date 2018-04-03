# OTA部署安装App

* 原理:使用苹果提供的协议：itms-services。
safari浏览器解析协议 + 构建好的plist文件：
itms-services:///?action=download-manifest&url=https://raw.githubusercontent.com/yaoliangjun/appUpgrade/master/Install/install.plist

* 先建立Git仓库，文件结构自行参考master分支。
注意：Git默认不显示网页，需要到建好的仓库找到 Settings->GitHub Pages指定master分之为web源码发布，之后会出现一个主页地址。
Your site is published at https://yaoliangjun.github.io/appUpgrade/ 之后访问这个地址即可安装自己上传的IPA包。

* 文件介绍
    * index.html：在App判断需要更新版本的地方访问该页面，[[UIApplication sharedApplication] openURL:[NSURL URLWithString:@"http://p55vy8x23.bkt.clouddn.com/index.html"]];

    * AppIcon.png：安装过程中显示的图标
    * BBTrade.ipa：签过名的安装包
    * install.plist：安装App的配置文件，注意：bundleId一定要和签名后的ipa包保持一致，并且plist文件需要放到支持https的服务器上

