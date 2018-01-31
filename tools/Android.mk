LOCAL_PATH := $(call my-dir)
include $(CLEAR_VARS)

LOCAL_CLANG := true
LOCAL_MODULE := iproxy
LOCAL_SRC_FILES := \
	iproxy.c
LOCAL_C_INCLUDES := \
	$(LOCAL_PATH)/../include \
	$(LOCAL_PATH)/../common \
	device/nexell/solution/carlife/libplist/include
LOCAL_CFLAGS += -DANDROID
LOCAL_SHARED_LIBRARIES := \
	libusbmuxd \
	libusbmuxdcommon \
	libplist

include $(BUILD_EXECUTABLE)
