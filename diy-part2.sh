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

# Modify ROM
sed -i 's/4000000/7000000/g' target/linux/mediatek/dts/mt7981b-cudy-tr3000-v1.dts

# Modify default IP
sed -i 's/192.168.1.1/192.168.199.1/g' package/base-files/files/bin/config_generate

# Modify default theme
#sed -i 's/luci-theme-bootstrap/luci-theme-argon/g' feeds/luci/collections/luci/Makefile

# Modify hostname
sed -i 's/ImmortalWrt/TR3000/g' package/base-files/files/bin/config_generate

# Modify timezone
sed -i 's/GMT0/CST-8/g' package/base-files/files/bin/config_generate

# Modify Zonename
sed -i 's/UTC/Asia\/Shanghai/g' package/base-files/files/bin/config_generate
