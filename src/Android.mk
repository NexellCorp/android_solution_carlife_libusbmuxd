LOCAL_PATH := $(call my-dir)
include $(CLEAR_VARS)

LOCAL_CLANG := true
LOCAL_MODULE := libusbmuxd
LOCAL_SRC_FILES := \
	libusbmuxd.c
LOCAL_C_INCLUDES := \
	$(LOCAL_PATH)/../include \
	$(LOCAL_PATH)/../common \
	device/nexell/solution/carlife/libplist/include
LOCAL_CFLAGS := \
	-Wall -Wextra -Wmissing-declarations -Wredundant-decls -Wshadow -Wpointer-arith \
	-Wwrite-strings -Wswitch-default -Wno-unused-parameter -fvisibility=default
LOCAL_CFLAGS += -DANDROID
LOCAL_SHARED_LIBRARIES := \
	libusbmuxdcommon \
	libplist

include $(BUILD_SHARED_LIBRARY)
