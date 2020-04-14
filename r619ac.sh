#!/bin/bash
#=================================================
# Description: DIY script
# Lisence: MIT
# Author: P3TERX
# Blog: https://p3terx.com
#=================================================
# Modify default IP
#sed -i 's/192.168.1.1/192.168.50.5/g' package/base-files/files/bin/config_generate
git clone https://github.com/ElonH/Rclone-OpenWrt                 package/rclone
git clone https://github.com/frainzy1477/luci-app-clash           package/luci-app-clash
git clone https://github.com/jerrykuku/luci-theme-argon           package/luci-theme-argon
git clone https://github.com/pymumu/luci-app-smartdns                      package/luci-app-smartdns
git clone https://github.com/pymumu/openwrt-smartdns                       package/openwrt-smartdns
cd package
mkdir openwrt-packages
cd openwrt-packages
git clone https://github.com/tzxiaozhen88/koolproxyR.git
git clone https://github.com/rufengsuixing/luci-app-adguardhome.git
git clone https://github.com/Lienol/openwrt-package.git
git clone https://github.com/vernesong/OpenClash.git
git clone https://github.com/pymumu/luci-app-smartdns                   
git clone https://github.com/pymumu/openwrt-smartdns
git clone https://github.com/frainzy1477/luci-app-clash     
