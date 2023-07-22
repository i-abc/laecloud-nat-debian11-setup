#!/bin/bash
echo "本脚本是莱云NAT服务器Debian11的快捷开始脚本
会将软件源更换为清华大学软件源、开启用户登录、更新软件源并安装常用软件"
read -p "如要继续请输入y并回车，如要退出请输入其他字母并回车：" decision
[ $decision != y ] && exit

echo "将软件源更换为清华大学源"
cp /etc/apt/sources.list /etc/apt/sources.list.backup &> /dev/null
echo "# 默认注释了源码镜像以提高 apt update 速度，如有需要可自行取消注释
deb https://mirrors.tuna.tsinghua.edu.cn/debian/ bullseye main contrib non-free
# deb-src https://mirrors.tuna.tsinghua.edu.cn/debian/ bullseye main contrib non-free

deb https://mirrors.tuna.tsinghua.edu.cn/debian/ bullseye-updates main contrib non-free
# deb-src https://mirrors.tuna.tsinghua.edu.cn/debian/ bullseye-updates main contrib non-free

deb https://mirrors.tuna.tsinghua.edu.cn/debian/ bullseye-backports main contrib non-free
# deb-src https://mirrors.tuna.tsinghua.edu.cn/debian/ bullseye-backports main contrib non-free

# deb https://mirrors.tuna.tsinghua.edu.cn/debian-security bullseye-security main contrib non-free
# # deb-src https://mirrors.tuna.tsinghua.edu.cn/debian-security bullseye-security main contrib non-free

deb https://security.debian.org/debian-security bullseye-security main contrib non-free
# deb-src https://security.debian.org/debian-security bullseye-security main contrib non-free" > /etc/apt/sources.list
echo "软件源更换成功"

echo "PermitRootLogin yes" >> /etc/ssh/sshd_config
echo "用户登录开启成功"

echo "更新软件，并安装常用软件"
apt-get -y update
apt-get -y install curl sudo vim
echo "成功更新软件并安装常用软件"

echo "alias rm='rm -i'
alias cp='cp -i'
alias mv='mv -i'" >> /root/.bashrc

echo "一切就绪，服务器马上将要重启一次
重启后即可在您的SSH客户端连接本服务器并使用"

sudo reboot
