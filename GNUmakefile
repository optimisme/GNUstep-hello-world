CC=clang
OBJC = clang
ADDITIONAL_OBJCFLAGS += -fobjc-arc
ADDITIONAL_OBJCFLAGS += -DGNS
#ADDITIONAL_CPPFLAGS += -DGNS

include $(GNUSTEP_MAKEFILES)/common.make

APP_NAME = Hello
Hello_APPLICATION_ICON=AppIcon.png

Hello_HEADERS = \
  AppDelegate.h \

Hello_OBJC_FILES = \
  main.m \
  AppDelegate.m \

Hello_RESOURCE_FILES = \
  Resources/*.png \

-include GNUmakefile.preamble
include $(GNUSTEP_MAKEFILES)/application.make
-include GNUmakefile.postamble