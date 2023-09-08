#!/bin/bash
#
# Copyright (c) 2019-2020 P3TERX <https://p3terx.com>
#
# This is free software, licensed under the MIT License.
# See /LICENSE for more information.
#
# https://github.com/P3TERX/Actions-OpenWrt
# File name: diy-part2.sh
# Description: OpenWrt DIY script part 2 (After Update feeds)
#

# Modify default IP
#sed -i 's/192.168.1.1/192.168.50.5/g' package/base-files/files/bin/config_generate
go version
sudo -i
cd
sudo rm -rf /usr/local/go
sudo rm -rf /usr/bin/go
#wget https://go.dev/dl/go1.21.0.linux-amd64.tar.gz
#sudo tar -C /usr/local -xzf go1.21.0.linux-amd64.tar.gz
#echo "export PATH=$PATH:/usr/local/go/bin" >> ~/.profile
#source ~/.profile
#go version
su runner
cd
go version
wget https://go.dev/dl/go1.21.0.linux-amd64.tar.gz
sudo tar -C /usr/local -xzf go1.21.0.linux-amd64.tar.gz
echo "export PATH=$PATH:/usr/local/go/bin" >> ~/.profile
source ~/.profile
go version
cd ~/work/OpenWrt-86x_64-firmware/OpenWrt-86x_64-firmware
curl ip.sb
df -hT $PWD
