FROM ubuntu:14.04
MAINTAINER Justin Garrison <justinleegarrison@gmail.com>

# Install software from https://github.com/xbmc/xbmc/blob/master/docs/README.android

RUN apt-get update && apt-get install -m -y build-essential default-jdk git curl autoconf\
  unzip zip zlib1g-dev gawk gperf cmake lib32stdc++6 lib32z1 lib32z1-dev openjdk-6-jdk

# SETUP ANDROID SDK

RUN mkdir -p /opt/ && curl http://dl.google.com/android/android-sdk_r23.0.2-linux.tgz | tar xz -C /opt/

ENV ANDROID_HOME /opt/android-sdk-linux

RUN ( sleep 5 && while [ 1 ]; do sleep 1; echo y; done ) | \
  /opt/android-sdk-linux/tools/android update sdk --no-ui -u -t platform,platform-tool

# SETUP ANDROID NDK
RUN curl --location http://dl.google.com/android/ndk/android-ndk-r9-linux-x86.tar.bz2 | \
  tar xz -C /opt/ && \
  /opt/android-ndk-r9/build/tools/make-standalone-toolchain.sh --ndk-dir=../../ \
  --install-dir=/opt/x86-linux-4.8-vanilla/android-14 --platform=android-14 \
  --toolchain=x86-4.8 --arch=x86 --system=linux-x86_64

