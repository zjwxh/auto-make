#!/bin/bash
#=================================================
# Description: DIY script
# Lisence: MIT
# Author: P3TERX
# Blog: https://p3terx.com
#=================================================
# Modify default IP
#sed -i 's/192.168.1.1/192.168.50.5/g' package/base-files/files/bin/config_generate
# svn co https://github.com/fw876/helloworld/trunk/luci-app-ssr-plus package/luci-app-ssr-plus
# svn co https://github.com/zjwxh/lienol-openwrt-package/trunk/lienol/luci-app-passwall package/luci-app-passwall
cd package
mkdir openwrt-packages
cd openwrt-packages
git clone https://github.com/tzxiaozhen88/koolproxyR.git
git clone https://github.com/rufengsuixing/luci-app-adguardhome.git
# git clone https://github.com/vernesong/OpenClash.git
# git clone https://github.com/fw876/helloworld.git
# git clone https://github.com/zjwxh/lienol-openwrt-package.git
# git clone https://github.com/Lienol/openwrt-package.git
