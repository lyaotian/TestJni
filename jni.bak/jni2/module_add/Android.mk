LOCAL_PATH := $(call my-dir)

include $(CLEAR_VARS)

MY_MODULE_DIR := module_add

LOCAL_MODULE := ${MY_MODULE_DIR}
LOCAL_SRC_FILES 		:= \
	$(subst $(MY_BASE_JNI_PATH)/$(MY_MODULE_DIR)/,,$(wildcard $(MY_BASE_JNI_PATH)/$(MY_MODULE_DIR)/*.c*))
LOCAL_C_INCLUDES 		:= \
	$(MY_BASE_JNI_PATH)/$(MY_MODULE_DIR)/include
	
include $(BUILD_STATIC_LIBRARY)