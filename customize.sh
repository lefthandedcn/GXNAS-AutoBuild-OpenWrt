#!/bin/bash
#1. Modify default IP
#sed -i 's/192.168.1.1/192.168.1.11/g' package/base-files/files/bin/config_generate

#修改opentomcat主题为默认主题
sed -i '/exit 0/i uci batch <<-EOF' package/lean/default-settings/files/zzz-default-settings
sed -i '/exit 0/i    set luci.themes.opentomcat=/luci-static/opentomcat' package/lean/default-settings/files/zzz-default-settings
sed -i '/exit 0/i    set luci.main.mediaurlbase=/luci-static/opentomcat' package/lean/default-settings/files/zzz-default-settings
sed -i '/exit 0/i    commit luci' package/lean/default-settings/files/zzz-default-settings
sed -i '/exit 0/i EOF' package/lean/default-settings/files/zzz-default-settings
