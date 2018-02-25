LOCAL_PATH := $(call my-dir)

###########################
#
# guisan shared library
#
###########################

include $(CLEAR_VARS)

LOCAL_MODULE := guisan
LOCAL_SHARED_LIBRARIES := SDL2

LOCAL_C_INCLUDES := $(LOCAL_PATH)/include
LOCAL_EXPORT_C_INCLUDES := $(LOCAL_C_INCLUDES)

LOCAL_SRC_FILES := \
	$(subst $(LOCAL_PATH)/,, \
	$(wildcard $(LOCAL_PATH)/src/*.cpp) \
	$(wildcard $(LOCAL_PATH)/src/opengl/*.cpp) \
	$(wildcard $(LOCAL_PATH)/src/sdl/*.cpp) \
	$(wildcard $(LOCAL_PATH)/src/widgets/*.cpp))

LOCAL_CPP_FEATURES := exceptions rtti

cmd-strip := 

include $(BUILD_SHARED_LIBRARY)