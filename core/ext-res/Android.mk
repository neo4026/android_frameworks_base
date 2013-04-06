LOCAL_PATH:= $(call my-dir)
include $(CLEAR_VARS)

LOCAL_MODULE_TAGS := optional

LOCAL_AAPT_FLAGS := -x

LOCAL_EXPORT_PACKAGE_RESOURCES := true

LOCAL_MODULE_PATH := $(TARGET_OUT_JAVA_LIBRARIES)

LOCAL_PACKAGE_NAME := framework-ext-res

LOCAL_CERTIFICATE := platform

# Make sure that framework-res is installed when framework is.
$(LOCAL_INSTALLED_MODULE): | $(dir $(LOCAL_INSTALLED_MODULE))framework-res.apk

include $(BUILD_PACKAGE)

# Use the following include to make our test apk.
include $(call all-makefiles-under,$(LOCAL_PATH))
