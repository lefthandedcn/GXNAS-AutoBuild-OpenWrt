#!/bin/bash
#1. Modify default IP
#sed -i 's/192.168.1.1/192.168.1.11/g' package/base-files/files/bin/config_generate
sed -i 's/luci-theme-bootstrap/opentomcat/g' package/feeds/luci/luci/Makefile
