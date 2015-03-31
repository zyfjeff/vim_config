#!/bin/bash
# vim配置文件安装

if [ -e "/etc/redhat-release" ];then
    #是 redhat系列
    which ctags &>/dev/null
    if [ ! $? -eq 0 ];then
        #不存在ctags可以直接安装
        yum install ctags -y
        if [ $? -eq 0 ];then
            mkdir -p ~/.vim/ &>/dev/null
            \cp -rf ./.vimrc ~/ &>/dev/null
            \cp -rf ./* ~/.vim/ &>/dev/null
            echo -e "\033[42m恭喜您安装完成\033[0m"
        else
            echo -e "\033[31m安装失败!需要手动安装ctags\033[0m"
        fi

    fi
else
    #是 ubuntu系列
    which ctags &>/dev/null
    if [ ! $? -eq 0 ];then
        sudo apt-get install ctags -y
        if [ $? -eq 0 ];then
            mkdir -p ~/.vim/ &>/dev/null
            \cp -rf ./.vimrc ~/ &>/dev/null
            \cp -rf ./* ~/.vim/ &>/dev/null
            echo -e "\033[42m恭喜您安装完成\033[0m"
        else
            echo -e "\033[31m安装失败!需要手动安装ctags\033[0m"
        fi
    fi

fi
