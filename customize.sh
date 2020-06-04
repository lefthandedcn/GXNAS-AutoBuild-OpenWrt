#!/bin/bash
#1. Modify default IP
#sed -i 's/192.168.1.1/192.168.1.11/g' package/base-files/files/bin/config_generate
#sed -i 's/luci-theme-bootstrap/luci-theme-argon/g' package/feeds/luci/luci/Makefile
sed -i '/uci commit luci/i\uci set luci.main.mediaurlbase=/luci-static/opentomcat' package/lean/default-settings/files/default-settings
