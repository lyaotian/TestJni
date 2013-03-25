MY_BASE_JNI_PATH := $(CURDIR)/${NDK_APP_PROJECT_PATH}/jni
APP_MODULES      := \
	module_add \
	libtwolib-second
	
APP_STL := gnustl_shared
APP_PLATFORM := android-8
APP_ABI := armeabi armeabi-v7a
