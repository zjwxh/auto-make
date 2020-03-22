#!/bin/bash
#=================================================
# Description: DIY script
# Lisence: MIT
# Author: P3TERX
# Blog: https://p3terx.com
#=================================================
# Modify default IP
#sed -i 's/192.168.1.1/192.168.50.5/g' package/base-files/files/bin/config_generate
src-git lienol https://github.com/Lienol/openwrt-package
./scripts/feeds update -a
./scripts/feeds install -a
if [ ! -d "./package/myapp" ];then
mkdir ./package/myapp
fi
cd ./package/myapp

echo "koolproxyR"
if [ ! -d "./koolproxyR" ];then
git clone https://github.com/tzxiaozhen88/koolproxyR.git
else
cd koolproxyR
git pull
cd ..
fi

echo "luci-app-adguardhome"
if [ ! -d "./luci-app-adguardhome" ];then
git clone https://github.com/rufengsuixing/luci-app-adguardhome.git
else
cd luci-app-adguardhome
git pull
cd ..
fi

echo "luci-app-serverchan"
if [ ! -d "./luci-app-serverchan" ];then
svn checkout https://github.com/project-openwrt/openwrt/trunk/package/ctcgfw/luci-app-serverchan
else
cd luci-app-serverchan
svn update
cd ..
fi

echo "luci-app-openclash"
if [ ! -d "./OpenClash" ];then
mkdir ./OpenClash
cd ./OpenClash
git init
git remote add -f origin https://github.com/vernesong/OpenClash.git
git config core.sparsecheckout true
echo "luci-app-openclash" >> .git/info/sparse-checkout
git pull origin master
git branch --set-upstream-to=origin/master master
cd ..
else
cd ./OpenClash/luci-app-openclash
git pull origin master
cd ..
cd ..
fi
