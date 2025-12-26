#!/bin/bash
#
# https://github.com/P3TERX/Actions-OpenWrt
# File name: diy-part2.sh
# Description: OpenWrt DIY script part 2 (After Update feeds)
#
# Copyright (c) 2019-2024 P3TERX <https://p3terx.com>
#
# This is free software, licensed under the MIT License.
# See /LICENSE for more information.
#

# Modify default IP
#sed -i 's/192.168.1.1/192.168.50.5/g' package/base-files/files/bin/config_generate

# Modify default theme
#sed -i 's/luci-theme-bootstrap/luci-theme-argon/g' feeds/luci/collections/luci/Makefile

# Modify hostname
#sed -i 's/OpenWrt/P3TERX-Router/g' package/base-files/files/bin/config_generate


# 1. 进入 OpenWrt 源码的 package 目录
cd $GITHUB_WORKSPACE/openwrt/package

# 2. 克隆 qosmate 源码到 package 下（命名为 luci-app-qosmate 便于识别）
git clone https://github.com/hudra0/qosmate.git luci-app-qosmate

# 3. （可选）若 qosmate 依赖其他包，添加依赖（如 luci 基础库，一般已包含）
# sed -i '$a CONFIG_PACKAGE_luci-compat=y' ../.config

