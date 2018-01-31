LOCAL_PATH := $(call my-dir)
include $(CLEAR_VARS)

LOCAL_CLANG := true
LOCAL_MODULE := libusbmuxdcommon
LOCAL_SRC_FILES := \
	socket.c \
	collection.c
LOCAL_CFLAGS := \
	-Wall -Wextra -Wmissing-declarations -Wredundant-decls -Wshadow -Wpointer-arith \
	-Wwrite-strings -Wswitch-default -Wno-unused-parameter -fvisibility=default
LOCAL_CFLAGS += -DANDROID

include $(BUILD_SHARED_LIBRARY)
