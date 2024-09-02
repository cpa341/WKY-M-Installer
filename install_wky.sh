#!/bin/bash

# 更新系统包列表
echo "更新系统包列表..."
sudo apt update

# 安装Git
echo "安装Git..."
sudo apt install git -y

# 删除旧的WKY-M目录
echo "删除旧的WKY-M目录..."
sudo rm -r WKY-M

# 克隆WKY-M仓库
echo "克隆WKY-M仓库..."
git clone https://githubfast.com/cpa341/WKY-M

# 创建firmware目录
echo "创建firmware目录..."
sudo mkdir /boot/firmware/

# 复制PPPwn到firmware目录
echo "复制PPPwn到firmware目录..."
sudo cp -r WKY-M/PPPwn /boot/firmware/

# 切换到PPPwn目录
cd /boot/firmware/PPPwn || exit

# 给予权限
echo "给予权限..."
sudo chmod 777 *

# 执行安装脚本
echo "执行安装脚本..."
sudo bash install_ch.sh

echo "安装完成!"
