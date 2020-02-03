#!/bin/sh

INCLUDE=$JAVA_HOME/include
PACKAGE=org/chasen/mecab

build_lib_macos() {
    mkdir -p $PACKAGE/native/macos
    g++ -O1 -c -fpic MeCab_wrap.cxx  $(mecab-config --cflags) -I$INCLUDE -I$INCLUDE/darwin
    g++ -dynamiclib MeCab_wrap.o -o $PACKAGE/native/macos/libMeCabWrapper.dylib -Wl,-rpath,/tmp $(mecab-config --libs)
    install_name_tool -id "@rpath/libMeCabWrapper.dylib" $PACKAGE/native/macos/libMeCabWrapper.dylib
    install_name_tool -change /usr/local/lib/libmecab.2.dylib @rpath/libmecab.dylib $PACKAGE/native/macos/libMeCabWrapper.dylib
}

build_lib_macos