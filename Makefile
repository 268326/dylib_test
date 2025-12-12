# 目标架构：iPhone 目前主要是 arm64
ARCHS = arm64

# 指定 SDK 版本，这里用最新版即可
TARGET := iphone:clang:latest:14.0

# 你的插件名字
TWEAK_NAME = VipHack

# 源码文件名
VipHack_FILES = Tweak.x

# 依赖的系统库
VipHack_FRAMEWORKS = UIKit Foundation

# 【重要】绕过 CydiaSubstrate 检查，专为注入 IPA 设计
GO_EASY_ON_ME = 1

include $(THEOS)/makefiles/common.mk
include $(THEOS_MAKE_PATH)/tweak.mk
