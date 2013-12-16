ifeq ($(strip $(QCOM_AUDIOD_ENABLED)),true)
LOCAL_PATH:= $(call my-dir)

include $(CLEAR_VARS)

LOCAL_SRC_FILES:= \
	audiod_main.cpp \
	AudioDaemon.cpp \

LOCAL_CFLAGS += -DGL_GLEXT_PROTOTYPES -DEGL_EGLEXT_PROTOTYPES

LOCAL_SHARED_LIBRARIES := \
	libcutils \
	libutils \
	libbinder \
	libmedia \

LOCAL_ADDITIONAL_DEPENDENCIES += $(TARGET_OUT_INTERMEDIATES)/KERNEL_OBJ/usr

LOCAL_MODULE:= audiod
LOCAL_MODULE_TAGS:= debug

include $(BUILD_EXECUTABLE)
endif
