# Copyright (C) 2021 thomaswcy
# Copyright (C) 2008 Jerrykuku
# Copyright (C) 2019 sirpdboy
# http://www.github.com/thomaswcy/luci-theme-rubik
# This is free software, licensed under the Apache License, Version 2.0 .

include $(TOPDIR)/rules.mk

THEME_NAME:=rubik
THEME_TITLE:=rubik Theme

PKG_NAME:=luci-theme-$(THEME_NAME)
PKG_VERSION:=0.9
PKG_RELEASE:=20210919

include $(INCLUDE_DIR)/package.mk

include $(TOPDIR)/feeds/luci/luci.mk

define Package/luci-theme-rubik/postinst
#!/bin/sh

rm -Rf /var/luci-modulecache
rm -Rf /var/luci-indexcache
exit 0

endef
# call BuildPackage - OpenWrt buildroot signature
