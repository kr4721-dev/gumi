THEOS_DEVICE_IP = localhost
ARCHS = arm64 arm64e
TARGET = iphone:clang:14.5:15.0
include $(THEOS)/makefiles/common.mk
TWEAK_NAME = MyTweak
MyTweak_FILES = Tweak.xm
include $(THEOS_MAKE_PATH)/tweak.mk