THEOS_DEVICE_IP = localhost
ARCHS = arm64 arm64e
TARGET = iphone:clang:14.5:15.0
include $(THEOS)/makefiles/common.mk

TWEAK_NAME = MyTweak
MyTweak_FILES = Tweak.xm
MyTweak_FRAMEWORKS = UIKit
MyTweak_PRIVATE_FRAMEWORKS = SpringBoardServices
MyTweak_INSTALL_PATH = /Library/MobileSubstrate/DynamicLibraries
MyTweak_CFLAGS = -fobjc-arc

include $(THEOS_MAKE_PATH)/tweak.mk

after-install::
	install.exec "killall -9 SpringBoard"
