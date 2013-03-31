LOCAL_PATH:= $(call my-dir)

# first lib, which will be built statically
#
include $(CLEAR_VARS)
MY_MODULE_DIR 			:= module1

LOCAL_MODULE    		:= $(MY_MODULE_DIR)
LOCAL_SRC_FILES 		:= \
	$(subst $(MY_BASE_JNI_PATH)/$(MY_MODULE_DIR)/,,$(wildcard $(MY_BASE_JNI_PATH)/$(MY_MODULE_DIR)/*.c*))
LOCAL_C_INCLUDES := \
	${MY_BASE_JNI_PATH}/${MY_MODULE_DIR}/include

include $(BUILD_STATIC_LIBRARY)
