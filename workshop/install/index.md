---
layout: default
title: 安装TidalCycles
---

# 安装软件

If you don't understand Chinese, please refer to this [english guide](https://tidalcycles.org/getting_started.html).

我们的Workshop需要使用TidalCycles和它依赖的相关软件，安装过程可能花费你30分钟到1小时的时间。很抱歉目前没有更好的办法可以方便的一次安装所有的软件，但是它会变得越来越好。

如果有任何安装问题，请邮件至<iseansay@gmail.com>。


# 开始安装

要使用TidalCycles，你还需要其他软件：SuperCollider（负责声音合成），Atom（编辑器，是你输入代码的地方），SuperDirt（是SuperCollider的一个扩展）。

# 安装TidalCycles

你可以在MacOS、Windows和Linux下安装**TidalCycles**

* [macOS](#macos)
* [Windows](#windows)
* [Linux](#linux)

## macOS

### 1. 第一步

你需要首先安装以下软件：Haskell, Atom, SuperCollider。你可以从他们的网站下载，点击以下链接去安装每个软件。

* [Haskell](https://www.haskell.org/platform/)
* [Atom](https://atom.io/)
* [SuperCollider](http://supercollider.github.io/download) (最新版本3.9.3)
* 你可能需要安装 [Git](https://git-scm.com/)

<!-- You will need the SuperCollider sc3-plugins for using many of the synths included in
SuperDirt. Most of the examples in the documentation will still work, so you could
skip this step and return to it later. You can install the latest version from
[github](https://github.com/supercollider/sc3-plugins) according to
the instructions there. -->

### 2. 安装 TidalCycles

#### 标准macOS安装:

打开终端输入以下命令安装TidalCycles:

~~~~bash
cabal install tidal
~~~~

> 如果你不知道如何打开终端
> 在Mac OS下是 "应用程序 -> 实用工具 -> 终端"
> 英文操作系统为 "Applications -> Utilities -> Terminal"


### 3. 安装SuperDirt

打开SuperCollider，在编辑器窗口复制以下代码：

~~~~c
include("SuperDirt")
~~~~

通过一下方式执行这行代码：确保指针在这行代码所在的行，然后按下shift的同时按回车（enter）。

它会下载 SuperDirt以及大量的内置声音采样文件，所以他通常会需要一段时间（取决于你的网速，可能10到20分钟），请稍稍耐心等待。

在结束时你会看到右下角的窗口显示：

~~~~c
... the class library may have to be recompiled.
-> SuperDirt
~~~~

此时，你需要重启SuperCollider(或者，点击 "Language" 下的 "Recompile Class Library").

如果你看到这条信息：

~~~~c
  "ERROR: Quarks requires git to be installed"
~~~~

你需要在此安装Git：
[https://git-scm.com/downloads](https://git-scm.com/downloads) 。

安装完成后回到 SuperCollider 再次执行 `include("SuperDirt")` 。

### 4. 安装TidalCycles的Atom插件

开启 Atom 编辑器，在菜单中选择 `Atom > Preferences > Install` , 然后在搜索框中输入 `tidalcycles`，点击 `Install` 按钮。

## Windows

### 1. 第一步

你需要首先安装以下软件：Haskell, Atom, SuperCollider和Git。你可以从他们的网站下载，点击以下链接去安装每个软件。

* [Haskell](https://www.haskell.org/platform/)
* [Atom](https://atom.io/)
* [SuperCollider](http://supercollider.github.io/download) (最新版本3.9.3)
* [Git](https://git-scm.com/)

**重要:** 确保你执行[Haskell安装]((https://www.haskell.org/platform/#windows).)步骤种的第2步


<!-- **重要:** When installing SuperCollider, you must also download the `sc3-plugins`
zip file. Run SuperCollider once in order to create user directories. Then open
the zip file and extract the `SC3plugins` directory to
`C:\Users\<username>\AppData\Local\SuperCollider\Extensions`. You may have to
manually create the `Extensions` directory. Restart SuperCollider so that it finds
the `SC3plugins` directory. -->

### 2. 安装 TidalCycles

打开终端输入以下命令安装TidalCycles:

~~~~bash
cabal install tidal 
~~~~

> 如果你不知道如何打开终端窗口:
> 在 Windows 下是 Accessories 中的 "command prompt"

### 3. 安装SuperDirt

打开SuperCollider，在编辑器窗口复制以下代码：

~~~~c
include("SuperDirt")
~~~~

通过一下方式执行这行代码：确保指针在这行代码所在的行，然后按下shift的同时按回车（enter）。

它会下载 SuperDirt以及大量的内置声音采样文件，所以他通常会需要一段时间（取决于你的网速，可能10到20分钟），请稍稍耐心等待。

在结束时你会看到右下角的窗口显示：

~~~~c
... the class library may have to be recompiled.
-> SuperDirt
~~~~

此时，你需要重启SuperCollider(或者，点击 "Language" 下的 "Recompile Class Library").

如果你看到这条信息：

~~~~c
  "ERROR: Quarks requires git to be installed"
~~~~

你需要在此安装Git：
[https://git-scm.com/downloads](https://git-scm.com/downloads)，然后回到 SuperCollider 去执行 `include("SuperDirt")` 。

### 4. 安装TidalCycles的Atom插件

开启 Atom 编辑器，在菜单中选择 `Atom > Preferences > Install` , 然后在搜索框中输入 `tidalcycles`，点击 `Install` 按钮。

## Linux

### 1. 第一步

你需要首先安装以下软件：

[Haskell Stack](https://www.haskellstack.org/),
[Atom](https://atom.io/),
[SuperCollider](http://supercollider.github.io/download) and
[Git](https://git-scm.com/).

很可能你的Linux发行版已经把这些软件放在包管理器中，使你更容易安装。例如，如果你在使用新版的Ubuntu或者类似操作系统，你可以通过在终端中输入以下命令来安装 SuperCollider 和 Haskell ：

```
sudo apt-get install supercollider sc3-plugins haskell-stack git
```

请确保你的 SuperCollider 版本是 3.7 或以后的版本。
Make sure the supercollider version is 3.7 or later. If it isn't
available in your Linux distribution, then you may have to compile a
newer version yourself, or upgrade your distribution.


### 2. 安装TidalCycles

打开终端输入以下命令安装TidalCycles:

~~~~bash
stack install tidal
~~~~

> 如果你不确定如何在Linux下打开终端：
> 在不同的发行版中会不太一样，但是通常会出现在菜单中的 "Terminal"(中文："终端")

~~~~c
include("SuperDirt")
~~~~

通过一下方式执行这行代码：确保指针在这行代码所在的行，然后按下shift的同时按回车（enter）。

它会下载 SuperDirt以及大量的内置声音采样文件，所以他通常会需要一段时间（取决于你的网速，可能10到20分钟），请稍稍耐心等待。

在结束时你会看到右下角的窗口显示：

~~~~c
... the class library may have to be recompiled.
-> SuperDirt
~~~~

此时，你需要重启SuperCollider(或者，点击 `Language` 下的 `Recompile Class Library`).

如果你看到这条信息：

~~~~c
  "ERROR: Quarks requires git to be installed"
~~~~

此时你需要通过你的发行版的包管理器去安装 `git`，在 Ubuntu 中是执行 `sudo apt-get install git` 。

### 4. 安装TidalCycles的Atom插件

开启 Atom 编辑器，在菜单中选择 `Atom > Preferences > Install` , 然后在搜索框中输入 `tidalcycles`，点击 `Install` 按钮。

此时有一个配置选项需要更改。进入偏好设置 `Atom > Preferences `，在 `Packages` 找到 `tidalcycles`，并点击 `Settings` 进入它的设置页面。更改 **Ghci path** 这个选项为: `stack ghci`。设置完成后，重启 Atom 。

**完成！** 现在你终于完成了安装！
