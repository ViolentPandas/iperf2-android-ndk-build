# iperf2-android-ndk-build

# 本项目仅供学习使用！！！

目的：使用ndk编译iperf 2源码，生成可执行文件   
iperf2源码版本：V2.1.4   
源码来源：https://sourceforge.net/p/iperf2/code/ci/2-1-4/tree/   

## 编译方法
已测试ndk版本：r21e/r22b/r23b(window环境)
```
cd iperf2-android-ndk-build/
ndk-build
```

## 伸手党使用方法：下载output目录中的压缩文件。  
## 使用命令（参考）   
```
##查看abi版本
adb shell getprop ro.product.cpu.abi
## 推送文件到手机,按照abi版本调整本地文件路径
adb push /path/to/file/arm64-v8a/iperf2 /data/local/tmp/iperf
## 增加可执行权限
adb shell chmod +x /data/local/tmp/iperf
## 创建server端
adb shell /data/local/tmp/iperf -s -i 1
```
