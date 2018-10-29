#ifndef LOGJAM_H
#define LOGJAM_H

#include <android/log.h> 

#define LOGTAG "FFmpegLog"

#define LOGV(...) __android_log_print(ANDROID_LOG_VERBOSE, LOGTAG, __VA_ARGS__) 
#define LOGD(...) __android_log_print(ANDROID_LOG_DEBUG  , LOGTAG, __VA_ARGS__) 
#define LOGI(...) __android_log_print(ANDROID_LOG_INFO   , LOGTAG, __VA_ARGS__) 
#define LOGW(...) __android_log_print(ANDROID_LOG_WARN   , LOGTAG, __VA_ARGS__) 
#define LOGE(...) __android_log_print(ANDROID_LOG_ERROR  , LOGTAG, __VA_ARGS__) 	
#endif

#ifdef ANDROID 
#ifndef LOG_TAG 
#define  LOG_TAG    "FFmpegLog" 
#endif 
#define  XLOGD(...)  __android_log_print(ANDROID_LOG_INFO,LOG_TAG,__VA_ARGS__) 
#define  XLOGE(...)  __android_log_print(ANDROID_LOG_ERROR,LOG_TAG,__VA_ARGS__) 
#else 
#include <stdio.h> 
#define XLOGE(format, ...)  fprintf(stdout, LOG_TAG ": " format "\n", ##__VA_ARGS__) 
#define XLOGI(format, ...)  fprintf(stderr, LOG_TAG ": " format "\n", ##__VA_ARGS__) 
#endif 