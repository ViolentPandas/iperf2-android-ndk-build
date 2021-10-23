APP_ABI := arm64-v8a armeabi-v7a
#ndk有getifaddrs()和freeifaddrs()函数的定义，但是却必须在API>=24下才能使用这两个函数
APP_PLATFORM := android-24