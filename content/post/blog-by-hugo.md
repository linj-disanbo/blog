---
title: "用hugo + github.io 搭建个人博客"
date: 2020-09-17T11:33:36+08:00
tags: ["hugo", "blog", "github.io"] 
draft: false
notoc: false
---


# 用hugo + github.io 搭建个人博客

## 安装hugo

```
$ sudo aptitude install hugo
$ hugo version
Hugo Static Site Generator v0.16-DEV BuildDate: 2016-02-07T01:14:17+08:00
```

我使用的机器是 ubuntu 16, 所以下载的hugo 版本过久

可以从github 直接下载最新的包

网站 https://github.com/gohugoio/hugo/releases, 选择deb 安装包下载

```
$ wget https://github.com/gohugoio/hugo/releases/download/v0.75.1/hugo_0.75.1_Linux-64bit.deb
$ wget https://github.com/gohugoio/hugo/releases/download/v0.75.1/hugo_extended_0.75.1_Linux-64bit.deb
$ sudo dpkg -i hugo_0.75.1_Linux-64bit.deb
$ sudo dpkg -i hugo_extended_0.75.1_Linux-64bit.deb
```

版本也不一定要求最新, 但后续步骤主体对版本是有要求的, 如果过低需要安装新的版本. 



## 用hugo 生成博客

```
$ hugo new site linj-blog


$ ls linj-blog/
archetypes  config.toml  content  data  layouts  static  themes

```

## 主题选择

```
https://themes.gohugo.io/
```

### 选择主题并按主题的提示进行设置

```
$ cd linj-blog/
$ git clone https://github.com/vaga/hugo-theme-m10c.git themes/m10c
$ ls themes/
m10c
$ echo 'theme = "m10c"' >> config.toml
```

## 创建博客

```
$ hugo new post/blog.md
$ cat content/post/blog.md 
---
title: "Blog"
date: 2020-09-17T11:33:36+08:00
draft: true
---

```

写对应的博客, 我把记录如何搭建blog作为我的第一篇博客

```
$ cat ~/blog-by-hugo.md  >> content/post/blog.md
$ head content/post/blog.md 
---
title: "Blog"
date: 2020-09-17T11:33:36+08:00
draft: true
---

# 用hugo + github.io 搭建个人博客


## 安装hugo


```

## 启动本地服务

```
$ hugo server -t m10c --buildDrafts

``` 

用浏览器打开看效果, 地址为 http://localhost:1313/ 

## 和github.io 进行关联

我的github.io 仓库为 github.com:linj-disanbo/linj-disanbo.github.io, 对应的博客地址为 linj-disanbo.github.io

hugo 生成的文件在 public 目录

按下面的步骤将文件上传到github.io, 在浏览器打开 linj-disanbo.github.io 看效果

```
$ git clone git@github.com:linj-disanbo/linj-disanbo.github.io.git  public
$ hugo --theme=m10c --baseUrl="https://linj-disanbo.github.io" --buildDrafts
$ cd public/
$ git add . 
$ git commit  
$ git push 
```

用浏览器打开看效果, 地址为 https://linj-disanbo.github.io/

## 后续完善

### 目录结构

```
.
├── archetypes
│   └── default.md
├── config.toml 	# 配置文件
├── content		
│   └── post		# 原始的markdown格式的内容目录
├── data
├── layouts
├── public		# 生成, 上传到 github.io的目录
│   ├── 404.html
│   ├── avatar.jpg
│   ├── categories
│   ├── css
│   ├── index.html
│   ├── index.xml
│   ├── page
│   ├── post
│   ├── sitemap.xml
│   └── tags
├── resources
│   └── _gen
├── static		# 头像在这目录下
└── themes		# 主题放到这目录下
    └── m10c

```


### 主题的选择和配置

对应主题下的配置文件, 可以对照的配置和参考主题的README介绍

```
themes/m10c/exampleSite/config.toml
```

```
baseURL = "http://linj-disanbo.github.io/"
languageCode = "cn"
title = "linjing's blog"
theme = "m10c"


[params]
  description = "记录, 总结, 避免遗忘"
  avatar = "me.jpg"

[[params.social]]
  name = "github"
  url = "https://github.com/linj-disanbo"

```

 1. me.jpg 需要放到 themes/m10c/static/ 目录 (可能不同的主题位置不一样)

### 添加文章目录

```
# themes/m10c/layouts/_default/single.html
    <div id="toc" class="well col-md-4 col-sm-6">
      {{ .TableOfContents }}
    </div>
```

问题: 本来想添加在右边的, 但窗口适配没弄好. 现在加在标题下放.


### 将原始的博客文本管理起来

 1. 可以建立另外一个github repo, 如 https://github.com/linj-disanbo/docs
 1. 将原始的博客文本加入到repo中
 1. 进一步可以添加一些实用的脚本, 如生成站点文件, 上传等
 
## 可能遇到问题

### 版本过低可能遇到的问题
```
$ hugo new post/blog.md
ERROR: 2020/09/17 10:51:47 hugo.go:449: Current theme does not support Hugo version 0.16. Minimum version required is 0.55
ERROR: 2020/09/17 10:51:47 content.go:137: Unable to find archetypes directory for theme : m10c in /home/linj/work/src/github.com/linj-disanbo/linj-blog/themes/m10c/archetypes
```

### 未安装hugo extended

```
$ hugo --theme=m10c --baseUrl="https://linj-disanbo.github.io" --buildDrafts
Error: Error building site: TOCSS: failed to transform "css/main.scss" (text/x-scss): resource "scss/linj-disanbo/linj-disanbo.github.io/css/main.scss_e86386c8bae1cd02295de71a1be078d6" not found in file cache
```
