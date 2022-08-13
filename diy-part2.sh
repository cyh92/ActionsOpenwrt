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
#设置版本为当前时间
# date=`date +%Y-%m-%d.%H:%M`
#date=`date +%m.%d.%Y`
#date=`date +%Y.%m.%d_%H%M%S`
TEMP=$(date +"OpenWrt_%Y%m%d_%H%M%S")
#sed -i -e "/\(# \)\?REVISION:=/c\REVISION:=$date" -e '/VERSION_CODE:=/c\VERSION_CODE:=$(REVISION)' include/version.mk
sed -i "s/OpenWrt /v${TEMP:8}\/ /g" openwrt/package/lean/default-settings/files/zzz-default-settings
