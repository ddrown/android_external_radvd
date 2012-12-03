LOCAL_PATH := $(call my-dir)
include $(CLEAR_VARS)

LOCAL_SRC_FILES := log.c recv.c socket.c util.c device-common.c interface.c process.c radvd.c send.c timer.c device-linux.c netlink.c privsep-linux.c gram.c scanner.c

LOCAL_MODULE := radvd

LOCAL_CFLAGS := -O2 -g -W -Wall -DINET6=1 -DPATH_RADVD_CONF=\"$(PATH_RADVD_CONF)\" 
LOCAL_SYSTEM_SHARED_LIBRARIES := libc
LOCAL_MODULE_TAGS := debug

include $(BUILD_EXECUTABLE)
