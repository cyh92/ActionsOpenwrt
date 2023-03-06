#!/bin/bash
#
# Copyright (c) 2019-2020 P3TERX <https://p3terx.com>
#
# This is free software, licensed under the MIT License.
# See /LICENSE for more information.
#
# https://github.com/P3TERX/Actions-OpenWrt
# File name: diy-part1.sh
# Description: OpenWrt DIY script part 1 (Before Update feeds)
#

# Uncomment a feed source
#sed -i 's/^#\(.*helloworld\)/\1/' feeds.conf.default

# Add a feed source
#echo 'src-git helloworld https://github.com/fw876/helloworld' >>feeds.conf.default
#echo 'src-git passwall https://github.com/xiaorouji/openwrt-passwall' >>feeds.conf.default
#git clone -b v1.7.2 --depth=1 https://github.com/jerrykuku/luci-theme-argon package/luci-theme-argon
# 删除自定义源默认的 argon 主题
rm -rf package/lean/luci-theme-argon
# 部分第三方源自带 argon 主题，上面命令删除不掉的请运行下面命令
find ./ -name luci-theme-argon | xargs rm -rf;
#拉取 argon的源码
#git clone --depth=1 https://github.com/cyh92/luci-theme-argon package/luci-theme-argon

git clone --depth=1 https://github.com/jerrykuku/luci-theme-argon package/luci-theme-argon
#全能推送
git clone https://github.com/cyh92/luci-app-pushbot package/luci-app-pushbot
#设置向导
find ./ -name luci-app-wizard | xargs rm -rf;
#git clone https://github.com/sirpdboy/luci-app-wizard package/luci-app-wizard


#git clone https://github.com/kiddin9/luci-app-wizard package/luci-app-wizard
