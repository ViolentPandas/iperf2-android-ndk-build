

常见的问题：
一、
Condition.h:146:7: error: expected '=', ',', ';', 'asm' or '__attribute__' before '.' token
第145行  gettimeofday(&t1, NULL); 少个\

二、
In file included from jni/src/Server.cpp:58:0:
jni/include/headers.h:98:0: note: this is the location of the previous definition
 # define bool _Bool
 ^
In file included from D:/Android/android-ndk-r10e/sources/cxx-stl/gnu-libstdc++/4.9/include/cmath:42:0,
                 from jni/src/Server.cpp:68:
D:/Android/android-ndk-r10e/sources/cxx-stl/gnu-libstdc++/4.9/include/bits/cpp_type_traits.h:213:12: error: redefinition of 'struct std::__is_integer<int>'
     struct __is_integer<int>
            ^
D:/Android/android-ndk-r10e/sources/cxx-stl/gnu-libstdc++/4.9/include/bits/cpp_type_traits.h:146:12: error: previous definition of 'struct std::__is_integer<int>'
     struct __is_integer<bool>
            ^
make.exe: *** [obj/local/arm64-v8a/objs/iperf2/src/Server.o] Error 1
Application.mk中不要加APP_STL := gnustl_static