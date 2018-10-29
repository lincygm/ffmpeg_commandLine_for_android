LOCAL_PATH := $(call my-dir)
include $(CLEAR_VARS)
LOCAL_MODULE := avcodec
LOCAL_SRC_FILES := libavcodec.so
LOCAL_C_INCLUDES := $(LOCAL_PATH)/include/libavcodec
include $(PREBUILT_SHARED_LIBRARY)

include $(CLEAR_VARS)
LOCAL_MODULE := avdevice
LOCAL_SRC_FILES := libavdevice.so
LOCAL_C_INCLUDES := $(LOCAL_PATH)/include/libavdevice
include $(PREBUILT_SHARED_LIBRARY)

include $(CLEAR_VARS)
LOCAL_MODULE := avfilter
LOCAL_SRC_FILES := libavfilter.so
LOCAL_C_INCLUDES := $(LOCAL_PATH)/include/libavfilter
include $(PREBUILT_SHARED_LIBRARY)

include $(CLEAR_VARS)
LOCAL_MODULE := avformat
LOCAL_SRC_FILES := libavformat.so
LOCAL_C_INCLUDES := $(LOCAL_PATH)/include/libavformat
include $(PREBUILT_SHARED_LIBRARY)

include $(CLEAR_VARS)
LOCAL_MODULE := avutil
LOCAL_SRC_FILES := libavutil.so
LOCAL_C_INCLUDES := $(LOCAL_PATH)/include/libavutil
include $(PREBUILT_SHARED_LIBRARY)


include $(CLEAR_VARS)
LOCAL_MODULE := postproc
LOCAL_SRC_FILES := libpostproc.so
LOCAL_C_INCLUDES := $(LOCAL_PATH)/include/libpostproc
include $(PREBUILT_SHARED_LIBRARY)


include $(CLEAR_VARS)
LOCAL_MODULE := swresample
LOCAL_SRC_FILES := libswresample.so
LOCAL_C_INCLUDES := $(LOCAL_PATH)/include/libswresample
include $(PREBUILT_SHARED_LIBRARY)

include $(CLEAR_VARS)
LOCAL_MODULE := swscale
LOCAL_SRC_FILES := libswscale.so
LOCAL_C_INCLUDES := $(LOCAL_PATH)/include/libswscale
include $(PREBUILT_SHARED_LIBRARY)

include $(CLEAR_VARS)
LOCAL_MODULE := ffmpeginvoke
LOCAL_SRC_FILES := l_com_myapplication_MainActivity.c ffmpeg.c ffmpeg_opt.c cmdutils.c ffmpeg_filter.c
LOCAL_C_INCLUDES := $(LOCAL_PATH)/ffmpeg-3.2.4/
LOCAL_LDLIBS := -llog -lz -ldl  
LOCAL_SHARED_LIBRARIES := avcodec avdevice avfilter  avformat avutil postproc swresample swscale
include $(BUILD_SHARED_LIBRARY)