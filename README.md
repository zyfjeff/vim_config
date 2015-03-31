# vim_config
我的vim配置文件

## 安装步骤
注意: 只支持redhat系列和ubuntu系列,需要联网安装ctags

### 功能:
    -自用的Python C/C++ IDE
    -文件浏览窗口，函数列表窗口
    -python tab键自动补全，语法着色，代码折叠
    -C/C++ 补全等等
    -文档后续不断完善

### 使用方法:
    主题更改:
        vim ~/.vimrc 修改colo darkblue的值，这里是darkblue，你可以选择其它主题
        系统默认自带很多主题，在/usr/share/vim/vim74/color下,你可以选择其中的任何
        一个主题

    代码折叠:
        在正常模式下输入下面的命令即可实现对python代码的折叠等功能
        zo: 打开光标位置的折叠代码；
        zc: 折叠光标位置的代码；
        zr: 将文件中所有折叠的代码打开；
        zm: 将文件中所有打开的代码折叠；
        zR: 作用和 zr 类似，但会打开子折叠（折叠中的折叠）；
        zM: 作用和 zm 类似，但会关闭子折叠；
        zi: 折叠与打开操作之间的切换命令；

    C/C++功能:
        参考中文:http://blog.csdn.net/guolb57/article/details/7013076
        参考英文:http://lug.fh-swf.de/vim/vim-doc/csupport.html

    python代表补全:
        直接按tab键

    多窗口视图:
        正常模式下按ctrl+w 即可打开多文档视图

    函数跳转
        参考ctags文档

    taglist窗口设置
        <CR>          跳到光标下tag所定义的位置，用鼠标双击此tag功能也一样
        o             在一个新打开的窗口中显示光标下tag
        <Space>       显示光标下tag的原型定义
        u             更新taglist窗口中的tag
        s             更改排序方式，在按名字排序和按出现顺序排序间切换
        x             taglist窗口放大和缩小，方便查看较长的tag
        +             打开一个折叠，同zo
        -             将tag折叠起来，同zc
        *             打开所有的折叠，同zR
        =             将所有tag折叠起来，同zM
        [[            跳到前一个文件
        ]]            跳到后一个文件
        q             关闭taglist窗口
        <F1>          显示帮助 

### setp1:
    git clone https://github.com/zyfjeff/vim_config.git

### setp2:
    cd vim_config
    bash install.sh

### setp3:
    ubuntu系列会提示输入密码，输入密码即可
    主机需要联网，如果没有联网需要自己百度安装ctags，否则安装的时候会提示
    "安装失败!需要手动安装ctags"
    安装成功会提示"恭喜您安装完成"
