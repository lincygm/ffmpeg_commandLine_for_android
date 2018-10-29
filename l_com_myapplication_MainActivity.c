#include <stdio.h>
#include "l_com_myapplication_MainActivity.h"
#include "ffmpeg.h"
#include "string.h"
#include "logjam.h"
JNIEXPORT jint JNICALL Java_sdd_time_com_myapplication_MainActivity_run
(JNIEnv *env, jclass obj, jobjectArray commands){
    //FFmpeg av_log() callback
    int argc = (*env)->GetArrayLength(env, commands);
    char *argv[argc];
    LOGD("Kit argc %d\n", argc);
    int i;
    for (i = 0; i < argc; i++) {
        jstring js = (jstring) (*env)->GetObjectArrayElement(env, commands, i);
        argv[i] = (char*) (*env)->GetStringUTFChars(env, js, 0);
        LOGD("Kit argv %s\n", argv[i]);
    }
    return run(argc, argv);
}
