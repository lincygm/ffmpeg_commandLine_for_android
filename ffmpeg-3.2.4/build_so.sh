#!/bin/bash
ADDI_CFLAGS="-marm"
API=24
PLATFORM=arm-linux-androideabi
CPU=armv7-a
NDK=/Users/gaomou/workspace/c_c++/android-ndk-r14b # 修改成自己本地的ndk路径
SYSROOT=$NDK/platforms/android-$API/arch-arm/
ISYSROOT=$NDK/sysroot
ASM=$ISYSROOT/usr/include/$PLATFORM
TOOLCHAIN=$NDK/toolchains/$PLATFORM-4.9/prebuilt/darwin-x86_64 #这个路径非常关键，windows下是windows-x86_64
function build_one
{
./configure \
--prefix=$OUTPUT \
--enable-shared \
--disable-static \
--disable-doc \
--enable-ffmpeg \
--enable-ffplay \
--disable-ffprobe \
--enable-avdevice \
--disable-doc \
--disable-symver \
--cross-prefix=$TOOLCHAIN/bin/arm-linux-androideabi- \
--target-os=android \
--arch=arm \
--enable-jni \
--enable-cross-compile \
--sysroot=$SYSROOT \
--extra-cflags="-I$ASM -isysroot $ISYSROOT -Os -fpic -marm" \
--extra-ldflags="-marm" \
--enable-gpl \
$ADDITIONAL_CONFIGURE_FLAG
  make clean
  make 
  make install
}

echo "开始编译ffmpeg..."
build_one