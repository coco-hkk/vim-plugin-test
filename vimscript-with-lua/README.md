## 使用lua编写vim插件

vimscript脚本调用lua脚本，lua脚本调用C动态库。

不同语言打印不同信息。

## 环境

1. ubuntu18.04

2. lua5.2

3. vim8.2

## vim指令

:Welcome naruto

## C动态库

1. 下载[lua5.2源码](http://www.lua.org/ftp/lua-5.2.4.tar.gz)

2. 编译

```
make linux CFLAGS="-fPIC -DLUA_USE_LINUX"
```
3. 拷贝liblua.a到本目录

4. 编译cprint.c

```
gcc -shared -fPIE -o cprint.so cprint.c -L. -llua -I/usr/include/lua5.2
```
