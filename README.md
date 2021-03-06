[RIP] docker-kodi_build
=================

This project was abandoned after finding easier ways to build and modidy Kodi software.
========

Kept here for reference or forks only!

Docker container for compiling kodi. If you are not modifying any code and just want to
download the automatic nightly build you should check out the available builds at
http://mirrors.xbmc.org/nightlies/

*NOTE* This container doesn't have any GUI apps or IDE for writing or modifying the code. 
It is designed as a container just to simplify the build process.

## How to use this container

```
git checkout https://github.com/rothgar/docker-kodi_build
cd docker-kodi_build
docker build .
docker run -v /kodi/source:/kodi kodi-build
```

## More container information

Container is based on [instructions for building Kodi on Ubuntu.] [1]
The container will install required packages and scripts will automatically install
the android SDK and NDK.

The container will not checkout the kodi code from GitHub but instead it is better if you
checkout the code yourself and share the volume with `docker run -v /source:/destination kodi-build`

 [1]: https://github.com/xbmc/xbmc/blob/master/docs/README.android
