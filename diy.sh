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
git clone https://github.com/tzxiaozhen88/koolproxyR.git
git clone https://github.com/rufengsuixing/luci-app-adguardhome.git
git remote add -f origin https://github.com/vernesong/OpenClash.git
git config core.sparsecheckout true
./scripts/feeds update -a
./scripts/feeds install -a
