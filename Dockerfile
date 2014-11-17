FROM ubuntu:14.04
MAINTAINER Justin Garrison <justinleegarrison@gmail.com>

# Install software from https://github.com/xbmc/xbmc/blob/master/docs/README.android

RUN apt-get update && apt-get install -m -y build-essential default-jdk git curl autoconf\
  unzip zip zlib1g-dev gawk gperf cmake lib32stdc++6 lib32z1 lib32z1-dev openjdk-6-jdk


