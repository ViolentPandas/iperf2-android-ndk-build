LOCAL_PATH:=$(call my-dir)
include $(CLEAR_VARS)
#include $(call all-subdir-makefiles)
LOCAL_MODULE := iperf2
LOCAL_SRC_FILES := \
	src/Client.cpp \
	src/Extractor.c \
	src/isochronous.cpp \
	src/Launch.cpp \
	src/active_hosts.cpp \
	src/Listener.cpp \
	src/Locale.c \
	src/PerfSocket.cpp \
	src/Reporter.c \
	src/Reports.c \
	src/ReportOutputs.c \
	src/Server.cpp \
	src/Settings.cpp \
	src/SocketAddr.c \
	src/gnu_getopt.c \
	src/gnu_getopt_long.c \
	src/histogram.c \
	src/main.cpp \
	src/service.c \
	src/sockets.c \
	src/stdio.c \
	src/packet_ring.c \
	src/tcp_window_size.c \
	src/pdfs.c \
	compat/Thread.c \
	compat/error.c \
	compat/delay.c \
	compat/gettimeofday.c \
	compat/inet_ntop.c \
	compat/inet_pton.c \
	compat/signal.c \
	compat/snprintf.c \
	compat/string.c 

LOCAL_C_INCLUDES += \
	$(LOCAL_PATH) \
	$(LOCAL_PATH)/include \
	$(LOCAL_PATH)/src \
	$(LOCAL_PATH)/compat

LOCAL_CFLAGS := -DHAVE_CONFIG_H
include $(BUILD_EXECUTABLE)