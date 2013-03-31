LOCAL_PATH:= $(call my-dir)

# second lib, which will depend on and include the first one
#
include $(CLEAR_VARS)

MY_MODULE_DIR			:= module_main

LOCAL_MODULE    		:= ${MY_MODULE_DIR}
LOCAL_SRC_FILES 		:= \
	$(subst $(MY_BASE_JNI_PATH)/${MY_MODULE_DIR}/,,$(wildcard $(MY_BASE_JNI_PATH)/${MY_MODULE_DIR}/*.c*))
LOCAL_C_INCLUDES		:= \
	$(MY_BASE_JNI_PATH)/${MY_MODULE_DIR}/include \
	$(MY_BASE_JNI_PATH)/module_add/include
LOCAL_STATIC_LIBRARIES 	:= \
	module_add

include $(BUILD_SHARED_LIBRARY)
