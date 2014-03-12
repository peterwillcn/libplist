LOCAL_PATH := $(call my-dir)

include $(CLEAR_VARS)
LOCAL_C_INCLUDES += $(LOCAL_PATH)/include $(LOCAL_PATH)/libcnary/include
LOCAL_C_INCLUDES += $(LOCAL_PATH)/../libxml2/include

LOCAL_SRC_FILES := \
	libcnary/iterator.c \
	libcnary/list.c \
	libcnary/node.c \
	libcnary/node_iterator.c \
	libcnary/node_list.c \
	src/plist.c \
	src/hashtable.c \
	src/bytearray.c \
	src/ptrarray.c \
	src/bplist.c \
	src/base64.c \
	src/xplist.c

LOCAL_STATIC_LIBRARIES += xml2

LOCAL_ARM_NEON := true
LOCAL_MODULE := plist
include $(BUILD_SHARED_LIBRARY)
