---
layout: post
title: 自定义Chrome DevTools的样式
---

疲倦了[白色](http://i.imgur.com/KMUjc.png)的皮肤了吧，Chrome DevTools的样式其实只是由[User Data Directory](http://www.chromium.org/user-experience/user-data-directory)中的css文件的控制的。

扔一个<code>Custom.css</code>至以下路径就ok了 ;)

* Windows 7/Vista

  * Google Chrome:   
  
		C:\Users\<username>\AppData\Local\Google\Chrome\User Data\Default\User StyleSheets\Custom.css
    
  * Chromium: 
  
		C:\Users\<username>\AppData\Local\Chromium\User Data\Default\User StyleSheets\Custom.css
    
* Mac OS X:

  * Google Chrome: 
  
		~/Library/Application Support/Google/Chrome/Default/User StyleSheets/Custom.css
    
  * Chromium: 
  
		~/Library/Application Support/Chromium/Default/User StyleSheets/Custom.css
  
* Linux

  * Google Chrome: 
  
		~/.config/google-chrome/Default/User StyleSheets/Custom.css
    
  * Chromium: 
  
		~/.config/chromium/Default/User StyleSheets/Custom.css      

### 皮肤们

* [IR_Black Theme by Ben Truyman](https://gist.github.com/1150520) [preview](http://i.imgur.com/OcO26.png)
 
* [Darcy Clarke' skin](http://darcyclarke.me/dev/inspectorskin/Custom.css) [preview](http://i.imgur.com/p2KAL.png)

* [tomorrow-theme](https://github.com/chriskempson/tomorrow-theme/tree/master/Web%20Inspector)

	在Github上搜<code>Custom.css</code>有惊喜噢。


### 如何自定义

想自己动手写css来配置的同学可以自行用Chrome打开<code>chrome-devtools://devtools/devTools.css</code>研究。
