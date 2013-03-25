LOCAL_PATH:= $(call my-dir)

# second lib, which will depend on and include the first one
#
include $(CLEAR_VARS)

LOCAL_MODULE    	:= libtwolib-second
LOCAL_C_INCLUDES	:= \
	$(MY_BASE_JNI_PATH)/module_add/include
LOCAL_SRC_FILES 	:= \
	$(subst $(MY_BASE_JNI_PATH)/,,$(wildcard $(MY_BASE_JNI_PATH)/*.c*))

LOCAL_STATIC_LIBRARIES := \
	module_add

include $(BUILD_SHARED_LIBRARY)
