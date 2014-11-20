curl --location http://dl.google.com/android/android-sdk_r23.0.2-linux.tgz | tar -x -z -C $HOME
export ANDROID_HOME=$HOME/android-sdk-linux
export PATH=$PATH:$ANDROID_HOME/tools:$ANDROID_HOME/platform-tools
( sleep 5 && while [ 1 ]; do sleep 1; echo y; done ) | android update sdk --no-ui --filter platform-tool,android-19,sysimg-19,build-tools-19.0.1
