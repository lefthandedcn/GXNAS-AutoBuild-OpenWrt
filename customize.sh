#!/bin/bash
# Modify default IP
#sed -i 's/192.168.1.1/192.168.50.5/g' package/base-files/files/bin/config_generate
#修改版本号
#sed -i 's/OpenWrt/Bin AutoBuild $(TZ=UTC-8 date "+%Y.%m.%d") @ OpenWrt/g' package/lean/default-settings/files/zzz-default-settings
sed -i '$a \       ' feeds/luci/modules/luci-base/po/zh-cn/base.po
sed -i '$a #首页显示编译时间' feeds/luci/modules/luci-base/po/zh-cn/base.po
sed -i '$a msgid "Compile_time"' feeds/luci/modules/luci-base/po/zh-cn/base.po
sed -i '$a msgstr "固件编译时间"' feeds/luci/modules/luci-base/po/zh-cn/base.po
sed -i '$d' package/lean/default-settings/files/zzz-default-settings
sed -i '$d' package/lean/default-settings/files/zzz-default-settings
echo "echo \"`date "+%Y-%m-%d %H:%M"` (commit:`git log -1 --format=format:'%C(bold white)%h%C(reset)'`)\" >> /etc/Compile_time" >> package/lean/default-settings/files/zzz-default-settings
echo "exit 0" >> package/lean/default-settings/files/zzz-default-settings
