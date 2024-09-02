#!/bin/bash
# 安装Git
sudo apt update
sudo apt install git -y

# 删除旧的WKY-M目录
sudo rm -r WKY-M

# 克隆新的WKY-M仓库
git clone https://github.com/cpa341/WKY-M

# 创建firmware目录
sudo mkdir /boot/firmware/

# 复制PPPwn到firmware目录
sudo cp -r WKY-M/PPPwn /boot/firmware/

# 切换到PPPwn目录
cd /boot/firmware/PPPwn

# 给予权限
sudo chmod 777 *

# 执行安装脚本
sudo bash install_ch.sh
